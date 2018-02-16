inherited FrmCadPedidoCompra: TFrmCadPedidoCompra
  Caption = 'Lan'#231'amento de Pedidos de Compra'
  ClientHeight = 466
  ClientWidth = 917
  Icon.Data = {
    0000010001001010000001002000680400001600000028000000100000002000
    0000010020000000000000040000000000000000000000000000000000000000
    000000000000000000002F2F2F0A1F1F1F0F1F1F1F0F1F1F1F0F1F1F1F0F1F1F
    1F0F1F1F1F0F1F1F1F0F1F1F1F0D1F1F1F0B0000000000000000000000000000
    0000070707135353538F8D8D8DCB8C8C8CCE8B8B8BCE8A8A8ACE888888CE8686
    86CE858585CE848484CE838383CC838383C9727272A59D9D9D19000000000303
    031719191972CBCBCBFEE2E2E2FEDDDDDDFED6D6D6FECFCFCFFEC8C8C8FEC5C5
    C5FEC2C2C2FEC0C0C0FEC0C0C0FEBEBEBEFEBCBCBCFEACACACA1000000000000
    003E2424248EC6C6C6FEDEDEDEFED4D4D4FEC8C8C8FEBBBBBBFEB7B7B7FEB7B7
    B7FEB6B6B6FEBBB9B8FEBEBEBEFEBDBDBDFEBBBBBBFEADADADCC000000000707
    07102A2A2A53BFBFBFFECDCDCDFEBFBEBDFEB5B4B4FEC0C0C0FEC9C9C9FEBEBD
    BEFEB2B0ACFEAAA7A1FEB2B2B2FEAFAFAFFEB9B9B9FEAFAFAFD7E0E0E0140000
    00004D4D4D3EBDBDBDFEC5C4C3FEB3B0B1FEA3A2ABFECFCFD0FECDCDCDFED0D0
    D0FED1D1D1FECFCFCFFEC1C1C1FEC4C4C4FEBEBEBEFEB4B4B4D7E1E1E1340000
    00005252523EBCBCBCFEC4C4C4FEC0BFC0FEB2B1B7FED9D9D9FECCCCCCFECFCF
    CFFED0CFD0FED3D3D3FED3D3D3FEC9CBCBFEC9C9C9FEBEBEBED7D5D5D5500000
    00005353533EBCBCBCFEC8C8C8FEC1C1C5FEC2C2C7FEDBDBDBFED3D3D3FED3D3
    D3FED2D2D2FED0D0D0FEDADADAFEB0B0B3FED4D4D4FEC9C9C9D7BEBEBE6F0000
    00005353533EC0C0C0FEC9C9C9FEC5C4C5FED3D3D5FEDEDEDEFEDFDFDFFEDEDE
    DEFEDDDDDDFEDBDBDBFEE0E0E2FEA8A8C3FEDBDBDDFED2D2D2D7BBBBBB8F0000
    00005151513EC5C5C5FEC0C0C0FEC9C9C9FEE5E5E5FEE3E3E3FEE1E2E1FEE3E4
    E3FEE3E3E3FEE7E7E7FED7D7E4FEA7A7D3FED5D5E2FEDDDDDDD7C0C0C09E0000
    00005151513DCACACAFEB8B8B8FE969696FED6D6D6FED4D4D4FED1D1D1FECECE
    CEFEC8C8C8FEC8C8C8FE9ABDCBFE5F94A8FE92A9A5FECACACAB1D2D2D2330000
    00007272723ED2D2D2FED2D2D2FEB4B4B4FEF7F7F7FEF7F7F7FEECECECFEEFEF
    EFFEF7F7F7FEF7F7F7FE9CD3DAFE65A9ADFE3D645DFEDCDCDCA8000000000000
    0000D9D9D937E2E2E2FDEAEAEAFEE2E2E2FEC2B7B1FEDDC7BFFEF6F2F1FEFEFE
    FEFEFEFEFEFEEEF2F1FE6CAEACFE61BDC3FE134443FEDEDFDFE4000000000000
    000000000000ECECEC18EDEDED1BCCCCCC1C544742AE9A644FFE886459FEBDEC
    F4FE7FDCEDFE87C4C4FE0D635AFE4F9EA1FE0E2B27FECDD4D2FDE1E1E1200000
    0000000000000000000000000000000000004C4A4A53B2978FD0908281A1C2E0
    E5F823C4DFFE5CCFDEFE8CACA5FEBCC1BFF7DEDEDEC6DFDFDF8BECECEC1E0000
    000000000000000000000000000000000000000000000000000000000000B5B5
    B5BAE0E0E1B6E3E3E37BE0E0E03FE9E9E90A000000000000000000000000E007
    0000800100000001000000010000000000008000000080000000800000008000
    000080000000800000008001000080010000C0000000F8000000FF070000}
  ExplicitWidth = 933
  ExplicitHeight = 504
  PixelsPerInch = 96
  TextHeight = 13
  inherited Bevel1: TBevel
    Top = 431
    Width = 917
    ExplicitTop = 392
    ExplicitWidth = 798
  end
  inherited Bevel2: TBevel
    Top = 28
    Width = 917
    ExplicitTop = 28
    ExplicitWidth = 791
  end
  inherited PagAbas: TCPageControl
    Top = 32
    Width = 917
    Height = 399
    ActivePage = TabProdutos
    OnChange = PagAbasChange
    ExplicitTop = 32
    ExplicitWidth = 917
    ExplicitHeight = 399
    inherited TabAbas: TTabSheet
      Caption = 'Cadastro'
      ExplicitLeft = 4
      ExplicitTop = 25
      ExplicitWidth = 909
      ExplicitHeight = 370
      object CGroupBox13: TCGroupBox
        Left = 4
        Top = 3
        Width = 640
        Height = 246
        Caption = 'Dados Gerais'
        TabOrder = 0
        object CLabel2: TCLabel
          Left = 209
          Top = 15
          Width = 23
          Height = 13
          Alignment = taRightJustify
          Caption = 'Data'
        end
        object CLabel14: TCLabel
          Left = 33
          Top = 15
          Width = 37
          Height = 13
          Alignment = taRightJustify
          Caption = 'N'#250'mero'
        end
        object CLabel25: TCLabel
          Left = 483
          Top = 18
          Width = 31
          Height = 13
          Alignment = taRightJustify
          Caption = 'Status'
        end
        object CLabel4: TCLabel
          Left = 7
          Top = 186
          Width = 63
          Height = 13
          Alignment = taRightJustify
          Caption = 'Observa'#231#245'es'
        end
        object CLabel11: TCLabel
          Left = 15
          Top = 40
          Width = 55
          Height = 13
          Alignment = taRightJustify
          Caption = 'Fornecedor'
        end
        object CLabel6: TCLabel
          Left = 335
          Top = 15
          Width = 24
          Height = 13
          Alignment = taRightJustify
          Caption = 'Valor'
        end
        object CLabel23: TCLabel
          Left = 354
          Top = 40
          Width = 64
          Height = 13
          Alignment = taRightJustify
          Caption = 'Cond. Pagto.'
        end
        object CLabel13: TCLabel
          Left = 31
          Top = 65
          Width = 39
          Height = 13
          Alignment = taRightJustify
          Caption = 'Contato'
        end
        object CLabel15: TCLabel
          Left = 354
          Top = 65
          Width = 51
          Height = 13
          Alignment = taRightJustify
          Caption = 'Nr.Original'
        end
        object CLabel22: TCLabel
          Left = 325
          Top = 90
          Width = 40
          Height = 13
          Alignment = taRightJustify
          Caption = 'Cota'#231#227'o'
        end
        object CLabel21: TCLabel
          Left = 41
          Top = 90
          Width = 29
          Height = 13
          Alignment = taRightJustify
          Caption = #205'ndice'
        end
        object CLabel72: TCLabel
          Left = 44
          Top = 115
          Width = 26
          Height = 13
          Alignment = taRightJustify
          Caption = 'Safra'
        end
        object CLabel24: TCLabel
          Left = 15
          Top = 161
          Width = 55
          Height = 13
          Alignment = taRightJustify
          Caption = 'Vencimento'
        end
        object DBEdtPedido: TCDBEdit
          Left = 238
          Top = 12
          Width = 84
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'dtPedido'
          DataSource = dsPadrao
          MaxLength = 10
          TabOrder = 1
          DecimalControl = True
          KeyMode = kmDate
        end
        object DBEidPedidoCompra: TCDBEdit
          Left = 76
          Top = 12
          Width = 98
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'idPedidoCompra'
          DataSource = dsPadrao
          TabOrder = 0
          OnExit = DBEidPedidoCompraExit
          OnKeyDown = DBEidPedidoCompraKeyDown
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEstPedido: TCDBEdit
          Left = 520
          Top = 12
          Width = 109
          Height = 19
          TabStop = False
          BevelKind = bkTile
          BorderStyle = bsNone
          Color = 14149350
          DataField = 'stPedido'
          DataSource = dsPadrao
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 3
          DecimalControl = True
          KeyMode = kmUSUpper
        end
        object DBMobsPedido: TCDBMemo
          Left = 76
          Top = 183
          Width = 553
          Height = 36
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'obsPedido'
          DataSource = dsPadrao
          ScrollBars = ssVertical
          TabOrder = 20
          OnExit = DBMobsPedidoExit
          KeyMemo = kmmUSUpper
        end
        object LookRazao: TCLookUp
          Left = 135
          Top = 37
          Width = 213
          Height = 19
          Alignment = taLeftJustify
          BevelInner = bvSpace
          BevelOuter = bvLowered
          Color = 14149350
          ParentBackground = False
          TabOrder = 5
          Key.Strings = (
            'idFornecedor')
          LookUpKey.Strings = (
            'idFornecedor')
          ClientDataSet = cdsLookup
          DataSource = dsPadrao
          ValidaCampoObrigatorio = False
          CampoObrigatorio = True
          LookUpTable = 'vCadFornecedorContabil'
          ReturnField = 'descCadFornecedor'
        end
        object DBEidFornecedor: TCDBEdit
          Left = 76
          Top = 37
          Width = 53
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'idFornecedor'
          DataSource = dsPadrao
          TabOrder = 4
          Find = dmFind.FindFornecedor
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEvlPedido: TCDBEdit
          Left = 365
          Top = 12
          Width = 92
          Height = 19
          TabStop = False
          BevelKind = bkTile
          BorderStyle = bsNone
          Color = 14149350
          DataField = 'vlTotalPed'
          DataSource = dsPedidoProd
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 2
          DecimalControl = True
          KeyMode = kmUSUpper
        end
        object CLookUp2: TCLookUp
          Left = 483
          Top = 37
          Width = 146
          Height = 19
          HelpType = htKeyword
          Alignment = taLeftJustify
          BevelInner = bvSpace
          BevelOuter = bvLowered
          Color = 14149350
          ParentBackground = False
          TabOrder = 7
          Key.Strings = (
            'idCondicaoPgto')
          LookUpKey.Strings = (
            'idCondicaoPgto')
          ClientDataSet = cdsLookup
          DataSource = dsPadrao
          ValidaCampoObrigatorio = True
          CampoObrigatorio = True
          LookUpTable = 'CondicaoPgto'
          ReturnField = 'descCondicaoPgto'
        end
        object DBEidCondicaoPgtoF: TCDBEdit
          Left = 424
          Top = 37
          Width = 53
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'idCondicaoPgto'
          DataSource = dsPadrao
          TabOrder = 6
          Find = dmFind.FindCondicaoPgto
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEdescContato: TCDBEdit
          Left = 76
          Top = 62
          Width = 272
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'descContato'
          DataSource = dsPadrao
          TabOrder = 8
          OnEnter = DBEvlProdutoEnter
          OnExit = DBEvlProdutoExit
          DecimalControl = True
          KeyMode = kmNormal
        end
        object BtnEncerrar: TCBitBtn
          Left = 512
          Top = 62
          Width = 117
          Height = 21
          Caption = '&Encerrar Pedido'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Glyph.Data = {
            36060000424D3606000000000000360000002800000020000000100000000100
            18000000000000060000120B0000120B00000000000000000000FF00FFFF00FF
            FF00FFFF00FF000364000364FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF909090909090FF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FF00046D0118BC0216A4000364FF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF9494949A9A9AA4A4A4909090FF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FF00046F5673F80220D50219AA000364FF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF959595E7E7E7B8B8B8A7A7A790
            9090FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FF0003645673F8021FD30219AA000364FF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF909090E7E7E7B7B7B7A7
            A7A7909090FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FF0003645673F8021FD10219AA000364FF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF909090E7E7E7B7
            B7B7A7A7A7909090FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FF0003645673F8021FD10218A6000364FF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF909090E7
            E7E7B7B7B7A6A6A6909090FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FF0003645673F8021FD00217A6000364FF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF90
            9090E7E7E7B6B6B6A5A5A5909090FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FF3C63CD0081BDFF00FFFF00FFFF00FF0003645673F8021FD00216A70003
            64FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFB074B0989898FF00FFFF00FFFF
            00FF909090E7E7E7B6B6B6A6A6A6909090FF00FFFF00FFFF00FFFF00FFFF00FF
            097CBF00A6E600A6E60081BDFF00FFFF00FFFF00FF0003645673F80111A00030
            98005FB6FF00FFFF00FFFF00FFFF00FF9C939CBCBCBCBCBCBC989898FF00FFFF
            00FFFF00FF909090E7E7E78E8E8E898989959595FF00FFFF00FFFF00FFFF00FF
            FF00FF0081BD0081BDFF00FFFF00FFFF00FFFF00FFFF00FF0003640049A900C5
            FE0090CE0081BDFF00FFFF00FFFF00FFFF00FF989898989898FF00FFFF00FFFF
            00FFFF00FFFF00FF9090908F8F8FB1B1B19E9E9E989898FF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FF0081BDFF00FF0081BDFF00FFFF00FF0086D50090
            CE00C5FE0081BDFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF989898FF
            00FF989898FF00FFFF00FFA1A1A19E9E9EB1B1B1989898FF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FF0081BD0081BD0081BDFF00FFFF00FFFF00FF0081
            BD0081BDFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF98989898
            9898989898FF00FFFF00FFFF00FF989898989898FF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FF0081BD00BAFB00BDFF00B1F20081BDFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF989898C4C4C4C5
            C5C5C0C0C0989898FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FF0081BD0081BD0081BD00ADEE0087C40081BD0081BDFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF989898989898989898BF
            BFBF9A9A9A989898989898FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FF0081BD00ADEE0081BDFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF989898BF
            BFBF989898FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FF0081BDFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF98
            9898FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
          NumGlyphs = 2
          ParentFont = False
          TabOrder = 10
          OnClick = BtnEncerrarClick
        end
        object DBEnrPedidoOriginal: TCDBEdit
          Left = 411
          Top = 62
          Width = 95
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'nrPedidoOriginal'
          DataSource = dsPadrao
          TabOrder = 9
          OnEnter = DBEvlProdutoEnter
          OnExit = DBEvlProdutoExit
          DecimalControl = True
          KeyMode = kmNormal
        end
        object LookLancamento: TCLookUp
          Left = 371
          Top = 87
          Width = 73
          Height = 19
          Alignment = taRightJustify
          BevelInner = bvSpace
          BevelOuter = bvLowered
          Color = 14149350
          ParentBackground = False
          TabOrder = 13
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
        object CBitBtn2: TCBitBtn
          Left = 450
          Top = 87
          Width = 96
          Height = 19
          Action = frmPrincipal.actIndice
          Caption = #205'ndices'
          TabOrder = 14
          TabStop = False
        end
        object LookIndice: TCLookUp
          Left = 130
          Top = 87
          Width = 189
          Height = 19
          Alignment = taLeftJustify
          BevelInner = bvSpace
          BevelOuter = bvLowered
          Color = 14149350
          ParentBackground = False
          TabOrder = 12
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
          Left = 76
          Top = 87
          Width = 48
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'idIndice'
          DataSource = dsPadrao
          TabOrder = 11
          Find = dmFind.FindIndice
          AcaoCad = frmPrincipal.actIndice
          DecimalControl = True
          KeyMode = kmNormal
        end
        object LookSafra: TCLookUp
          Left = 128
          Top = 112
          Width = 316
          Height = 19
          Alignment = taLeftJustify
          BevelInner = bvSpace
          BevelOuter = bvLowered
          Color = 14149350
          ParentBackground = False
          TabOrder = 16
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
          Left = 450
          Top = 112
          Width = 96
          Height = 19
          Action = frmPrincipal.actCadSafra
          Caption = '&Safra'
          TabOrder = 17
          TabStop = False
        end
        object DBEidSafra: TCDBEdit
          Left = 76
          Top = 112
          Width = 46
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'idSafra'
          DataSource = dsPadrao
          TabOrder = 15
          Find = dmFind.FindSafra
          AcaoCad = frmPrincipal.actCadSafra
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBCKmostraFluxo: TCDBCheckBox
          Left = 76
          Top = 137
          Width = 261
          Height = 16
          Caption = 'Mostrar esse pedido no fluxo de caixa sint'#233'tico?'
          DataField = 'mostraFluxo'
          DataSource = dsPadrao
          TabOrder = 18
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
        object DBEdtVencimento: TCDBEdit
          Left = 76
          Top = 158
          Width = 84
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'dtVencimento'
          DataSource = dsPadrao
          MaxLength = 10
          TabOrder = 19
          DecimalControl = True
          KeyMode = kmDate
        end
      end
      object CGroupBox3: TCGroupBox
        Left = 4
        Top = 255
        Width = 527
        Height = 66
        Caption = 'Reabertura de pedido j'#225' recebido'
        TabOrder = 1
        object CLabel28: TCLabel
          Left = 21
          Top = 23
          Width = 23
          Height = 13
          Alignment = taRightJustify
          Caption = 'Data'
        end
        object CLabel26: TCLabel
          Left = 142
          Top = 23
          Width = 32
          Height = 13
          Alignment = taRightJustify
          Caption = 'Motivo'
        end
        object CLabel27: TCLabel
          Left = 9
          Top = 45
          Width = 36
          Height = 13
          Alignment = taRightJustify
          Caption = 'Usu'#225'rio'
        end
        object DBEdtReabertura: TCDBEdit
          Left = 50
          Top = 20
          Width = 85
          Height = 19
          TabStop = False
          BevelKind = bkTile
          BorderStyle = bsNone
          Color = 14149350
          DataField = 'dtReabertura'
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
          DecimalControl = True
          KeyMode = kmDate
        end
        object DBEdescMotivoReab: TCDBEdit
          Left = 180
          Top = 20
          Width = 326
          Height = 19
          TabStop = False
          BevelKind = bkTile
          BorderStyle = bsNone
          Color = 14149350
          DataField = 'descMotivoReab'
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
          KeyMode = kmUSUpper
        end
        object DBEdescUsuarioReab: TCDBEdit
          Left = 51
          Top = 42
          Width = 368
          Height = 19
          TabStop = False
          BevelKind = bkTile
          BorderStyle = bsNone
          Color = 14149350
          DataField = 'descUsuarioReab'
          DataSource = dsPadrao
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 2
          DecimalControl = True
          KeyMode = kmUSUpper
        end
      end
      object CGroupBox5: TCGroupBox
        Left = 537
        Top = 255
        Width = 107
        Height = 66
        TabOrder = 2
        object BtnReabrir: TCBitBtn
          Left = 16
          Top = 4
          Width = 75
          Height = 59
          Caption = '&Reabrir'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Glyph.Data = {
            B60D0000424DB60D000000000000360000002800000030000000180000000100
            180000000000800D0000120B0000120B00000000000000000000FF00FF1C98CE
            1C98CE1E9ACFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FF848484848484868686FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FF1595CB4BB6DD35B2DD1FA0D31395CC0B8CC61C
            9DD0FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF7F7F7FA5A5A59A9A9A8888
            887E7E7E757575858585FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF1592CA
            A6E0F0ABFFFF73F3FF72E9FA5CD5EF46C4E634B2DD21A1D41393CC0C8CC70989
            C5FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FF7E7E7ED6D6D6DEDEDEC5C5C5C3C3C3B5B5B5A6A6A69999998A8A8A
            7E7E7E777777737373FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FF0D8EC966BDDECFFFFF72FAFF7EFBFF80FCFF82
            FAFF7FF8FF79F0FF6DE2F84ECAEB35B5DE23A4D51597CE0E90CA0888C5FF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF787878B3B3B3ECECECC5C5
            C5CACACACBCBCBCCCCCCCBCBCBC8C8C8C0C0C0ACACAC9A9A9A8C8C8C80808079
            7979727272FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0D8FC7
            2FA3D3C7F7FC81FFFF78F7FF7AF6FF79F4FF79F4FF79F4FF79F4FF7BF4FF7BF4
            FF75EFFF6DE5FA5AD5F243C2E733B4DE1C9FD30E90CAFF00FFFF00FFFF00FFFF
            00FFFF00FF787878929292E8E8E8CCCCCCC8C8C8C9C9C9C8C8C8C8C8C8C8C8C8
            C8C8C8C9C9C9C9C9C9C6C6C6C1C1C1B5B5B5A5A5A5999999878787797979FF00
            FFFF00FFFF00FFFF00FFFF00FF1496CC2CA5D586D1E9A7FFFF72F6FF7AF6FF79
            F4FF77F4FF77F3FF77F2FF75EFFF75EFFF75EFFF74EFFF76EEFF78F2FF79F0FF
            56D3F8189AD1FF00FFFF00FFFF00FFFF00FFFF00FF7F7F7F919191C5C5C5DCDC
            DCC5C5C5C9C9C9C8C8C8C7C7C7C7C7C7C7C7C7C6C6C6C6C6C6C6C6C6C6C6C6C7
            C7C7C8C8C8C8C8C8B5B5B5848484FF00FFFF00FFFF00FFFF00FFA46669A36668
            56B1D01B84B6B8E6E679E2E780DEE77FDDE77EDDE77EDCE77EDCE775EFFF74EF
            FF74EFFF72EEFE72EBFE72EAFE72EAFE5DD8FB3DBCE90F91C9FF00FFFF00FFFF
            00FF9B9B9B9B9B9BA6A6A67A7A7ADADADABFBFBFC2C2C2C2C2C2C1C1C1C1C1C1
            C1C1C1C6C6C6C6C6C6C6C6C6C4C4C4C4C4C4C4C4C4C4C4C4BABABAA2A2A27A7A
            7AFF00FFFF00FFFF00FFA46669F7DDBD77D8E62193BFB2E3E691F4ED87EBEB88
            EBEA87EBEA87EBEB7FDDE775EFFF74EFFF74EFFF72EEFE72EBFE72EAFE72EBFE
            55D0F860DAFA1A9DCFFF00FFFF00FFFF00FF9B9B9BE2E2E2BEBEBE828282D7D7
            D7CFCFCFC7C7C7C7C7C7C7C7C7C7C7C7C2C2C2C6C6C6C6C6C6C6C6C6C4C4C4C4
            C4C4C4C4C4C4C4C4B5B5B5BBBBBB848484FF00FFFF00FFFF00FFA0675BFEEDD0
            F3D9B849BAD42395C0AAF7EE82EDED89EDEB87EDEB88EDEB7FDEE775EFFF74EF
            FF74EFFF72EEFE72EBFE72EAFE72EBFE51CCF76DE6FE34B6DEFF00FFFF00FFFF
            00FF959595ECECECDFDFDFA1A1A1838383DADADAC5C5C5C8C8C8C7C7C7C8C8C8
            C2C2C2C6C6C6C6C6C6C6C6C6C4C4C4C4C4C4C4C4C4C4C4C4B2B2B2C2C2C29999
            99FF00FFFF00FFFF00FFA7756BFFF0DDF4DDC453C6DC2296C1C4F7F080F0EF89
            EDED89EDEB88EDEB7FDEE775EFFF74EFFF74EFFF72EEFE72EBFE72EAFE72EBFE
            51CCF76DE5FF5BD8F20F91CAFF00FFFF00FF9F9F9FF2F2F2E4E4E4A9A9A98383
            83E5E5E5C6C6C6C8C8C8C8C8C8C8C8C8C2C2C2C6C6C6C6C6C6C6C6C6C4C4C4C4
            C4C4C4C4C4C4C4C4B2B2B2C3C3C3B5B5B57A7A7AFF00FFFF00FFBC8268FFF8EA
            F7E3CF86F0F256BAD8C5E6EAA4F7F07FEEEE82EDED83EBEB7BDDE770E9FF6BDC
            FF69D3FF65CCFE64C9FE66CCFE69D7FE4FC6F767DEFC79F0FF1C9FD3FF00FFFF
            00FFA6A6A6F7F7F7E9E9E9C9C9C9A9A9A9E0E0E0D8D8D8C4C4C4C5C5C5C5C5C5
            C0C0C0C4C4C4C2C2C2C1C1C1BEBEBEBEBEBEBFBFBFC0C0C0B1B1B1BFBFBFC8C8
            C8878787FF00FFFF00FFBC8268FFFFF8F8EBDDF6E5D03FB2D42397C4C6E9EBBF
            F0EFB8F0EEB7F3EDA6E5E77AD8FF68D1FB69D0F36CD4F26CD1F269CCF266CAF7
            4BB2F85CCEFA84FAFF3BBDE20B8CC6FF00FFA6A6A6FCFCFCEFEFEFE9E9E99B9B
            9B858585E1E1E1E0E0E0DEDEDEDEDEDED3D3D3C9C9C9BFBFBFBCBCBCBDBDBDBD
            BDBDBCBCBCBCBCBCB0B0B0B9B9B9CDCDCD9F9F9F757575FF00FFD1926DFFFFFF
            FCF3EBF8EBDDF7E5CF57C9E02FA0CA2195C12193C02295BF3487C2A7CCEFA6E6
            F381EDF47BE6F67AE1F682E9F676DDF24EB5EB5BC0F879E6FF6EE7FA1496CCFF
            00FFB1B1B1FFFFFFF6F6F6EFEFEFE9E9E9ACACAC8F8F8F838383828282828282
            8E8E8ED6D6D6D7D7D7C8C8C8C6C6C6C5C5C5C9C9C9C2C2C2ACACACB8B8B8C8C8
            C8C1C1C17F7F7FFF00FFDA9D75FFFFFFFEFBF8FBF3EBF7EBDEF6E5D0F4DEC4F3
            D7B7F2D3ABE6D3AB2C88BFAAA9BF47ADCFC5F3EE8CE9EA7ADEE77FE6EE82EFFC
            5ECCF05BC2EE6DD1FF7FF3FF2DB1DCFF00FFB8B8B8FFFFFFFCFCFCF6F6F6EFEF
            EFE9E9E9E4E4E4DEDEDED9D9D9D4D4D4888888C4C4C49E9E9EE4E4E4C9C9C9C0
            C0C0C4C4C4CBCBCBB6B6B6B4B4B4C3C3C3CBCBCB959595FF00FFE7AB79FFFFFF
            FFFFFFFFFBF8FBF3EAF8EBDCF7E3CFFAE5C9FAE3C1E6D3ABAB7470FFFFD5259D
            C635A4C9C2E9EBBBF2EDA3EBEA9EEEEE7BDAF477D4EF7AD5F882E6FF5AD5F20D
            8FC7BFBFBFFFFFFFFFFFFFFCFCFCF5F5F5EFEFEFE9E9E9E8E8E8E5E5E5D4D4D4
            A3A3A3EFEFEF878787929292E0E0E0DFDFDFD3D3D3D2D2D2C5C5C5C1C1C1C6C6
            C6CCCCCCB5B5B5787878E7AB79FFFFFFFFFFFFFFFFFFFEFBF8FBF3EAFBEDDEEE
            D8C2C9AF9EA49187A06A6DFFFFDDFFFFCF28A1CB239AC650B1D0A6D5E0AAD1D9
            B5D7DEC0E3EDA9CCEAACD1FABBEDF81B98CEBFBFBFFFFFFFFFFFFFFFFFFFFCFC
            FCF5F5F5F1F1F1E1E1E1C3C3C3AAAAAA9C9C9CF2F2F2ECECEC8B8B8B868686A3
            A3A3D0D0D0CFCFCFD5D5D5DFDFDFD5D5D5DCDCDCE2E2E2848484E7AB79FFFFFF
            FFFFFFFFFFFFFFFFFFFFFCFAFCF7EEA36669A36669A36669A36669FCFFFEFFFF
            D8FFFFD3AFAF934BBBD51E91BC1A89B41F8EB61D91C51180C00D7BCC1B97CB0F
            91C9BFBFBFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDF7F7F79B9B9B9B9B9B9B9B9B
            9B9B9BFEFEFEF0F0F0EEEEEEB4B4B4A2A2A27F7F7F7979797D7D7D8282827878
            787A7A7A8383837A7A7AE7AB79FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFAFAA3
            6669D99855BB7E60BBD0E3FAFEFFFFFFF6FFFFD8B5B5993B3C3B373834887F65
            D8A36EAAA5C0484AAC2F2EFFFF00FFFF00FFBFBFBFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFBFBFB9B9B9BA9A9A9A2A2A2DADADAFDFDFDFBFBFBF0F0F0B9B9B955
            55554F4F4F8F8F8FB4B4B4C3C3C3909090A3A3A3FF00FFFF00FFD1926DFBF4F0
            FAF2EDF8F0EBF7EFEBF7F2EEF2EAE9A36669BB7E606E6DEAD3C9DCFFFFFFFFFF
            FFFFFFF3FFFFD9D7D7B056574CA39373FFD092E6D5B84141BA2F2EFFFF00FFFF
            00FFB1B1B1F8F8F8F6F6F6F5F5F5F4F4F4F5F5F5F1F1F19B9B9BA2A2A2BBBBBB
            DCDCDCFFFFFFFFFFFFFAFAFAF0F0F0D0D0D06C6C6CA1A1A1D3D3D3DADADA9292
            92A3A3A3FF00FFFF00FFD1926DD1926DD1926DD1926DD1926DD1926DD1926DD1
            926D6DEDF86A6AFB8F89D3FFFFF4FFFFFFFFFFFFFFFFFBFFFFEFE7E7C7565447
            BDB08A908BBB3939E5FF00FFFF00FFFF00FFB1B1B1B1B1B1B1B1B1B1B1B1B1B1
            B1B1B1B1B1B1B1B1B1B1C0C0C0C0C0C0BEBEBEFBFBFBFFFFFFFFFFFFFDFDFDF9
            F9F9E0E0E0696969B6B6B6B6B6B69F9F9FFF00FFFF00FFFF00FFFF00FFFF00FF
            1293CB5FC2E282E1F07EE1F386E7F692F0FB5ACEEA4141FF6968EDBAAFCFFFFF
            F4FFFFFFFCFFFFF8FCFFFFFFFFFEFCCFADACB44142D42F2EFFFF00FFFF00FFFF
            00FFFF00FFFF00FF7D7D7DB1B1B1C7C7C7C6C6C6CACACAD2D2D2B2B2B2ADADAD
            B9B9B9CDCDCDFBFBFBFFFFFFFEFEFEFCFCFCFFFFFFECECECC1C1C19D9D9DA3A3
            A3FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0C8CC71290C91492C91695CB18
            95CB1392CA0D8EC94646FF5C5CED938CD4E3DDDEE3EEEBCBE3EFEAE9EE9797D8
            4242E03030FCFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF7676767C7C
            7C7D7D7D8080808181817D7D7D787878B0B0B0B4B4B4C0C0C0E7E7E7EEEEEEE5
            E5E5F0F0F0C6C6C6A2A2A2A3A3A3FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF3333FF4242
            FA4B49E9625EE1605EE24444E92F2FF72626FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFA5A5A5ACACACA9A9A9B0B0B0B1B1B1A6A6A6A0A0A09E9E9EFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FF1C1CFF1B1BFF1818FF1717FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF98989897979795
            9595949494FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
          Layout = blGlyphTop
          NumGlyphs = 2
          ParentFont = False
          Spacing = 10
          TabOrder = 0
          OnClick = BtnReabrirClick
        end
      end
    end
    object TabProdutos: TTabSheet
      Caption = 'Produtos'
      ImageIndex = 2
      object CGroupBox4: TCGroupBox
        Left = 3
        Top = 3
        Width = 542
        Height = 169
        Caption = 'Lan'#231'amento dos itens do pedido'
        TabOrder = 0
        object CLabel3: TCLabel
          Left = 420
          Top = 48
          Width = 28
          Height = 13
          Alignment = taRightJustify
          Caption = 'Qtde.'
        end
        object CLabel5: TCLabel
          Left = 32
          Top = 23
          Width = 38
          Height = 13
          Alignment = taRightJustify
          Caption = 'Produto'
        end
        object CLabel7: TCLabel
          Left = 19
          Top = 48
          Width = 51
          Height = 13
          Alignment = taRightJustify
          Caption = 'M'#225'q./Ve'#237'c.'
        end
        object CLabel1: TCLabel
          Left = 23
          Top = 125
          Width = 47
          Height = 13
          Alignment = taRightJustify
          Caption = 'Descritivo'
        end
        object CLabel8: TCLabel
          Left = 46
          Top = 73
          Width = 24
          Height = 13
          Alignment = taRightJustify
          Caption = 'Valor'
        end
        object CLabel9: TCLabel
          Left = 160
          Top = 73
          Width = 24
          Height = 13
          Alignment = taRightJustify
          Caption = 'Total'
        end
        object CLabel10: TCLabel
          Left = 274
          Top = 73
          Width = 29
          Height = 13
          Alignment = taRightJustify
          Caption = 'Marca'
        end
        object CLabel12: TCLabel
          Left = 9
          Top = 98
          Width = 61
          Height = 13
          Alignment = taRightJustify
          Caption = 'Dias Entrega'
        end
        object CLabel16: TCLabel
          Left = 131
          Top = 97
          Width = 79
          Height = 13
          Alignment = taRightJustify
          Caption = 'Data de Entrega'
        end
        object CLabel18: TCLabel
          Left = 306
          Top = 97
          Width = 72
          Height = 13
          Alignment = taRightJustify
          Caption = 'Status Produto'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object DBEqtPedida: TCDBEdit
          Left = 454
          Top = 45
          Width = 78
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'qtPedida'
          DataSource = dsPedidoProd
          TabOrder = 6
          OnEnter = DBEqtPedidaEnter
          OnExit = DBEqtPedidaExit
          DecimalControl = True
          KeyMode = kmNormal
        end
        object LookProduto: TCLookUp
          Left = 135
          Top = 20
          Width = 262
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
          ClientDataSet = cdsLookup
          DataSource = dsPedidoProd
          ValidaCampoObrigatorio = False
          CampoObrigatorio = True
          LookUpTable = 'Produto'
          ReturnField = 'descProduto'
        end
        object DBEidProduto: TCDBEdit
          Left = 76
          Top = 20
          Width = 53
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'idProduto'
          DataSource = dsPedidoProd
          TabOrder = 0
          OnExit = DBEidProdutoExit
          OnKeyDown = DBEidProdutoKeyDown
          Find = dmFind.FindProduto
          AcaoCad = frmPrincipal.actCadProduto
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEidMaquina: TCDBEdit
          Left = 76
          Top = 45
          Width = 53
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'idMaquina'
          DataSource = dsPedidoProd
          TabOrder = 4
          OnExit = DBEidMaquinaExit
          Find = dmFind.FindMaquina
          AcaoCad = frmPrincipal.actCadCidade
          DecimalControl = True
          KeyMode = kmNormal
        end
        object LookMaquina: TCLookUp
          Left = 135
          Top = 45
          Width = 279
          Height = 19
          Alignment = taLeftJustify
          BevelInner = bvSpace
          BevelOuter = bvLowered
          Color = 14149350
          ParentBackground = False
          TabOrder = 5
          Key.Strings = (
            'idMaquina')
          LookUpKey.Strings = (
            'idMaquina')
          ClientDataSet = cdsLookup
          DataSource = dsPedidoProd
          ValidaCampoObrigatorio = False
          CampoObrigatorio = True
          LookUpTable = 'Maquina'
          ReturnField = 'descMaquina'
        end
        object DBMobsProduto: TCDBMemo
          Left = 76
          Top = 122
          Width = 456
          Height = 35
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'obsProduto'
          DataSource = dsPedidoProd
          ScrollBars = ssVertical
          TabOrder = 13
          KeyMemo = kmmNormal
        end
        object LookProdMedida: TCLookUp
          Left = 403
          Top = 20
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
          ClientDataSet = cdsLookup
          DataSource = dsPedidoProd
          ValidaCampoObrigatorio = False
          CampoObrigatorio = True
          LookUpTable = 'Produto'
          ReturnField = 'descAbreviada'
        end
        object DBEvlProduto: TCDBEdit
          Left = 76
          Top = 70
          Width = 78
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'vlProduto'
          DataSource = dsPedidoProd
          TabOrder = 7
          OnEnter = DBEvlProdutoEnter
          OnExit = DBEvlProdutoExit
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEvlTotal: TCDBEdit
          Left = 190
          Top = 70
          Width = 78
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'vlTotal'
          DataSource = dsPedidoProd
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 8
          OnEnter = DBEvlTotalEnter
          OnExit = DBEvlTotalExit
          DecimalControl = True
          KeyMode = kmNormal
        end
        object CBitBtn8: TCBitBtn
          Left = 454
          Top = 20
          Width = 78
          Height = 19
          Action = frmPrincipal.actCadProduto
          Caption = '&Produtos'
          TabOrder = 3
          TabStop = False
        end
        object DBEmarca: TCDBEdit
          Left = 309
          Top = 70
          Width = 124
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'marca'
          DataSource = dsPedidoProd
          TabOrder = 9
          OnEnter = DBEvlProdutoEnter
          OnExit = DBEvlProdutoExit
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEqtDiasEntrega: TCDBEdit
          Left = 76
          Top = 95
          Width = 49
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'qtDiasEntrega'
          DataSource = dsPedidoProd
          TabOrder = 10
          OnEnter = DBEqtPedidaEnter
          OnExit = DBEqtDiasEntregaExit
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEdtEntrega: TCDBEdit
          Left = 216
          Top = 95
          Width = 84
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'dtEntrega'
          DataSource = dsPedidoProd
          MaxLength = 10
          TabOrder = 11
          OnExit = DBEdtEntregaExit
          DecimalControl = True
          KeyMode = kmDate
        end
        object DBEstPedidoProd: TCDBEdit
          Left = 384
          Top = 95
          Width = 109
          Height = 19
          TabStop = False
          BevelKind = bkTile
          BorderStyle = bsNone
          Color = 14149350
          DataField = 'stPedidoProd'
          DataSource = dsPedidoProd
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 12
          DecimalControl = True
          KeyMode = kmUSUpper
        end
      end
      object CGroupBox1: TCGroupBox
        Left = 551
        Top = 3
        Width = 92
        Height = 169
        TabOrder = 1
        object BtnAdicionarProd: TCBitBtn
          Left = 9
          Top = 11
          Width = 75
          Height = 25
          Caption = '&Adicionar'
          Glyph.Data = {
            36060000424D3606000000000000360000002800000020000000100000000100
            18000000000000060000120B0000120B00000000000000000000FF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFBD4C00BD4C00
            BD4C00BD4C00BD4C00BD4C00BD4C00BD4C00BD4C00BD4C00BD4C00BD4C00BD4C
            00BD4C00BD4C00BD4C00A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7
            A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7BD4C00FFEDD9
            FFEAD3FFE7CE811E00FEE1C0FEDDBBFEDAB4811E00FED5A9FED3A4FFD09F811E
            00FECC98FECB96BD4C00A7A7A7F5F5F5F5F5F5F5F5F5959595F5F5F5F5F5F5F4
            F4F4959595F0F0F0EFEFEFEEEEEE8B8B8BEBEBEBEBEBEBA7A7A7BD4C00FFEFDE
            FFEDD8FEEAD1811E00FEE3C5FEE0C0FEDDB8811E00FED8ACFED4A9FFD3A3811E
            00FECF9AFECC98BD4C00A7A7A7F5F5F5F5F5F5F5F5F5959595F5F5F5F5F5F5F5
            F5F5959595F2F2F2F0F0F0EFEFEF8B8B8BECECECEBEBEBA7A7A7BD4C00FFF0E2
            FEEEDDFEEBD7811E00FEE5CAFEE2C2FEDEBD811E00FEDAB2FED5ABFED4A7811E
            00FFD09EFECE99BD4C00A7A7A7F5F5F5F5F5F5F5F5F5959595F5F5F5F5F5F5F5
            F5F5959595F3F3F3F1F1F1F0F0F08B8B8BEEEEEEECECECA7A7A7BD4C00811E00
            811E00811E00811E00811E00811E00811E00811E00811E00811E00811E00811E
            00811E00811E00BD4C00A7A7A795959595959595959595959595959595959595
            9595959595959595959595959595959595959595959595A7A7A7BD4C00FFF6ED
            FFF3E6FFEFE1811E00FFEAD4FFE7CEFEE5C6811E00FEDEBBFEDAB5FFD8AF811E
            00FED3A5FED0A0BD4C00A7A7A7F5F5F5F5F5F5F5F5F5959595F5F5F5F5F5F5F5
            F5F5959595F5F5F5F4F4F4F2F2F2959595F0F0F0EEEEEEA7A7A7BD4C00FFF8F0
            FFF6EAFFF3E5811E00FFEDD9FFEAD3FFE6CC811E00FEE1BFFFDDB8FED9B2811E
            00FED4A7FFD3A4BD4C00A7A7A7F5F5F5F5F5F5F5F5F5959595F5F5F5F5F5F5F5
            F5F5959595F5F5F5F5F5F5F3F3F3959595F0F0F0F0F0F0A7A7A7BD4C00FFFAF3
            FFF7EEFFF6EA811E00FEEFDDFFEBD7FFE9D0811E00FFE2C5FFE0BDFEDDB8811E
            00FED7ACFED4A6BD4C00A7A7A7F5F5F5F5F5F5F5F5F5959595F5F5F5F5F5F5F5
            F5F5959595F5F5F5F5F5F5F5F5F5959595F2F2F2F0F0F0A7A7A7BD4C00811E00
            811E00811E00811E00811E00811E00811E00811E00811E00811E00811E00811E
            00811E00811E00BD4C00A7A7A795959595959595959595959595959595959595
            9595959595959595959595959595959595959595959595A7A7A7BD4C00FFFCFA
            FFFAF6FFF8F2811E00FFF4E7FFF0E1FFEDDA811E00FFE7CEFFE3C7FFE1C1811E
            00FEDAB5FED9AFBD4C00A7A7A7F5F5F5F5F5F5F5F5F5959595F5F5F5F5F5F5F5
            F5F58B8B8BF5F5F5F5F5F5F5F5F5959595F4F4F4F2F2F2A7A7A7BD4C00FFFFFC
            FFFCF8FFFAF6811E00FFF6EAFEF3E6FFF0DE811E00FFEAD3FFE6CCFEE3C6811E
            00FEDDBAFEDAB4BD4C00A7A7A7F5F5F5F5F5F5F5F5F5959595F5F5F5F5F5F5F5
            F5F58B8B8BF5F5F5F5F5F5F5F5F5959595F5F5F5F4F4F4A7A7A7BD4C00FFFFFF
            FFFEFCFFFCF8811E00FEF7EFFFF4EAFFF2E3811E00FFEDD7FFE9D1FFE6CB811E
            00FEE0BDFFDDB8BD4C00A7A7A7F5F5F5F5F5F5F5F5F5959595F5F5F5F5F5F5F5
            F5F58B8B8BF5F5F5F5F5F5F5F5F5959595F5F5F5F5F5F5A7A7A7BD4C00BD4C00
            BD4C00BD4C00BD4C00BD4C00BD4C00BD4C00BD4C00BD4C00BD4C00BD4C00BD4C
            00BD4C00BD4C00BD4C00A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7
            A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7BD4C00BD4C00
            BD4C00BD4C00BD4C00BD4C00BD4C00BD4C00BD4C00BD4C00BD4C00BD4C00BD4C
            00BD4C00BD4C00BD4C00A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7
            A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7FF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
          Margin = 5
          NumGlyphs = 2
          TabOrder = 0
          OnClick = BtnAdicionarProdClick
        end
        object BtnCancelarProd: TCBitBtn
          Left = 9
          Top = 42
          Width = 75
          Height = 25
          Caption = '&Desfazer'
          Glyph.Data = {
            36060000424D3606000000000000360000002800000020000000100000000100
            18000000000000060000120B0000120B00000000000000000000FF00FFFF00FF
            FF00FFFF00FFFF00FF05720A05720A05720A05720A05720A05720A05720A0572
            0A05720A05720A05720AFF00FFFF00FFFF00FFFF00FFFF00FFAAAAAAAAAAAAAA
            AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA7F7AB88384
            B88384B88384B8838405720AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFF05720AAFAFAFB7B7B7B7B7B7B7B7B7B7B7B7AAAAAAF5F5F5F5
            F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5AAAAAAAD827BFCEBCE
            F7DFBFF4DAB3F3D6AB05720AFFFFFFFFFFFF006600006600006600FFFFFFFFFF
            FFFFFFFFFFFFFF05720AB1B1B1EAEAEAE3E3E3DDDDDDDADADAAAAAAAF5F5F5F5
            F5F5959595959595959595F5F5F5F5F5F5F5F5F5F5F5F5AAAAAAB1857CFDEDD5
            F5DFC5F4DBBBF2D7B205720AFFFFFFFFFFFFFFFFFFFFFFFF077D0E006600F3F8
            F4FFFFFFFFFFFF05720AB2B2B2EDEDEDE4E4E4E0E0E0DCDCDCAAAAAAF5F5F5F5
            F5F5F5F5F5F5F5F59F9F9F959595F5F5F5F5F5F5F5F5F5AAAAAAB6897EFEF2DE
            F7E5CEF5E0C5F4DCBC05720AFFFFFFFFFFFFFFFFFFFFFFFF2B9733006600FFFF
            FFFFFFFFFFFFFF05720AB5B5B5F0F0F0E8E8E8E4E4E4E1E1E1AAAAAAF5F5F5F5
            F5F5F5F5F5F5F5F5B5B5B5959595F5F5F5F5F5F5F5F5F5AAAAAABA8D80FFF7E8
            F8E8D6F6E4CDF5E0C405720AFFFFFFFFFFFF00660000660024902E19A32B0066
            00006600FFFFFF05720AB7B7B7F4F4F4EBEBEBE7E7E7E3E3E3AAAAAAF5F5F5F5
            F5F5959595959595B0B0B0B3B3B3959595959595F5F5F5AAAAAABF9183FFFCF2
            F9EDDFF7E8D6F6E4CD05720AFFFFFFFFFFFF006600168B233DBE5F3AC95B199D
            29006600FFFFFF05720ABABABAF5F5F5EFEFEFEAEAEAE7E7E7AAAAAAF5F5F5F5
            F5F5959595A9A9A9C9C9C9CBCBCBB1B1B1959595F5F5F5AAAAAAC49685FFFFFC
            FAF1E8F9ECDEF8E8D505720AFFFFFFFFFFFFFFFFFF00660033AF5053E0810066
            00FFFFFFFFFFFF05720ABCBCBCF5F5F5F2F2F2EEEEEEEAEAEAAAAAAAF5F5F5F5
            F5F5F5F5F5959595C0C0C0DCDCDC959595F5F5F5F5F5F5AAAAAAC99B87FFFFFF
            FDF7F2FBF1E8FAEEDF05720AFFFFFFFFFFFFFFFFFFFFFFFF006600006600FFFF
            FFFFFFFFFFFFFF05720ABFBFBFF5F5F5F5F5F5F2F2F2EFEFEFAAAAAAF5F5F5F5
            F5F5F5F5F5F5F5F5959595959595F5F5F5F5F5F5F5F5F5AAAAAACD9E8AFFFFFF
            FFFCFBFEF7F1FBF2E705720AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFF05720AC1C1C1F5F5F5F5F5F5F5F5F5F2F2F2AAAAAAF5F5F5F5
            F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5AAAAAAD1A38BFFFFFF
            FFFFFFFFFDFBFDF7F105720A05720A05720A05720A05720A05720A05720A0572
            0A05720A05720A05720AC3C3C3F5F5F5F5F5F5F5F5F5F5F5F5AAAAAAAAAAAAAA
            AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAD6A78DFFFFFF
            FFFFFFFFFFFFFFFDFBFDF7F1FBF1E6FAEDDEFDF0DDEADDCAC7BFB0B88384FF00
            FFFF00FFFF00FFFF00FFC5C5C5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F1F1F1EF
            EFEFEFEFEFE2E2E2CCCCCCB7B7B7FF00FFFF00FFFF00FFFF00FFD9AA8FFFFFFF
            FFFFFFFFFFFFFFFFFFFEFDFBFDF8F0FBF3E7B88384B88384B88384B88384FF00
            FFFF00FFFF00FFFF00FFC7C7C7F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F2
            F2F2B7B7B7B7B7B7B7B7B7B7B7B7FF00FFFF00FFFF00FFFF00FFDDAC91FFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFDF7F0ECB88384E9B676F3AE52CA8A6AFF00
            FFFF00FFFF00FFFF00FFC9C9C9F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F2
            F2F2B7B7B7C4C4C4BBBBBBB5B5B5FF00FFFF00FFFF00FFFF00FFDFAF92FFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFAFEB88384EBB87AD09877FF00FFFF00
            FFFF00FFFF00FFFF00FFCACACAF5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5
            F5F5B7B7B7C6C6C6BBBBBBFF00FFFF00FFFF00FFFF00FFFF00FFDBA685DBA685
            DBA685DBA685DBA685DBA685DBA685DBA685B88384CA9784FF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFC4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4
            C4C4B7B7B7BEBEBEFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
          Margin = 5
          NumGlyphs = 2
          TabOrder = 1
          OnClick = BtnAdicionarProdClick
        end
        object BtnRetirarProd: TCBitBtn
          Left = 9
          Top = 104
          Width = 75
          Height = 25
          Caption = '&Retirar'
          Glyph.Data = {
            36060000424D3606000000000000360000002800000020000000100000000100
            18000000000000060000120B0000120B00000000000000000000FF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FF92635DA46769A46769A46769A46769A46769A467
            69A46769A46769A46769FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF9A9A9AA6
            A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6FF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FF96655EFFFBD1FADEB4F8D9A6F4D197F3CB8AF0C7
            81F0C781FCD5869F6F60FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF9C9C9CF7
            F7F7E9E9E9E3E3E3DBDBDBD5D5D5D0D0D0D0D0D0D7D7D7A1A1A1FF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FF9A685EFFF3D9F2D9BBF2D4AFEECCA1015503EAC0
            89E7BC80F3C9829F6F60FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF9E9E9EFA
            FAFAE9E9E9E4E4E4DDDDDD6C6C6CD1D1D1CCCCCCD2D2D2A1A1A1FF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FF9F6C5FFFFBE9F4E0C6F3DABA0155032CC5580155
            03EAC187F3CA819F6F60FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFA0A0A0FF
            FFFFEFEFEFE9E9E96C6C6CBDBDBD6C6C6CD0D0D0D1D1D1A1A1A1FF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFA57060FFFFF8F7E5D401550330BD5741E07522B6
            3E015503F4CE8A9F6F60FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFA3A3A3FF
            FFFFF5F5F56C6C6CBCBCBCD3D3D3B1B1B16C6C6CD6D6D6A1A1A1FF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFAC7562FFFFFF015503067F141A922F27BB45149A
            260C88160155039F6F60FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFA7A7A7FF
            FFFF6C6C6C8585859D9D9DB6B6B69C9C9C8E8E8E6C6C6CA1A1A1FF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFB47A63FFFFFFFCF7F2FAEEE301550315A5280155
            03F2D3ACFBDCA79F6F60FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFAAAAAAFF
            FFFFFFFFFFFCFCFC6B6B6BA1A1A16C6C6CE3E3E3E5E5E5A1A1A1FF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFBB7F64FFFFFFFFFEFEFEF7F20360070996130155
            03FBE6C4EEDCB29F6F60FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFAEAEAEFF
            FFFFFFFFFFFFFFFF7474749191916C6C6CF0F0F0E4E4E4A1A1A1FF00FF92635D
            A46769A46769A46769A46769A46769A46769FFFFFF036E0704780A058C0D0155
            03CBA693AC8E84A16B6DFF00FF9090909C9C9C9C9C9C9C9C9C9C9C9C9C9C9C9C
            9C9CFFFFFF7B7B7B8080808A8A8A6C6C6CCACACAB7B7B7A7A7A7FF00FF97675E
            FFEBC4F7DCB4F4D7AAF4D4A3E6BD9301550301550301770705840C026606DAC1
            BBA96A54D98A409F675BFF00FF929292E8E8E8DEDEDED9D9D9D6D6D6CACACA6C
            6C6C6C6C6C7C7C7C868686757575E0E0E09F9F9FA8A8A89E9E9EFF00FFA06D60
            FBEACEDD9644DD9644DD9644E2BD99A46769FFFFFFFFFFFFFFFFFFFFFFFFD8C5
            C79F675BE09A5BFF00FFFF00FF979797EAEAEAA3A3A3A3A3A3A3A3A3CBCBCB9C
            9C9CFFFFFFFFFFFFFFFFFFFFFFFFE3E3E39E9E9EB8B8B8FF00FFFF00FFAA7462
            FCF0DCF6E2CAF4DDC0F4D9B7E6C2A4A46769CF8E68CF8E68CF8E68CF8E68CF8E
            689F675BFF00FFFF00FFFF00FF9C9C9CF0F0F0E7E7E7E2E2E2DFDFDFD1D1D19C
            9C9CB8B8B8B8B8B8B8B8B8B8B8B8B8B8B89E9E9EFF00FFFF00FFFF00FFB57B64
            FEF7EBDD9644DD9644FBE9CCE3CAB1A46769FF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFA1A1A1F5F5F5A3A3A3A3A3A3EAEAEAD6D6D69C
            9C9CFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFC08266
            FFFEF8FBF0E5FAEFDEA46769A46769A46769FF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFA7A7A7F5F5F5F3F3F3F0F0F09C9C9C9C9C9C9C
            9C9CFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFC98967
            FFFFFFFFFFFEFEFBF7A46769E09A5BFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFABABABF5F5F5F5F5F5F5F5F59C9C9CAEAEAEFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFCF8E68
            CF8E68CF8E68CF8E68A46769FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFAEAEAEAEAEAEAEAEAEAEAEAE9C9C9CFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
          Margin = 5
          NumGlyphs = 2
          TabOrder = 3
          OnClick = BtnAdicionarProdClick
        end
        object BtnNovoProd: TCBitBtn
          Left = 9
          Top = 135
          Width = 75
          Height = 25
          Caption = '&Novo'
          Glyph.Data = {
            36060000424D3606000000000000360000002800000020000000100000000100
            18000000000000060000120B0000120B00000000000000000000FF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFCC6701CC6701
            CC6701CC6701CC6701CC6701CC6701CC6701CC6701FF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FF98989898989898989898989898989898989898989898
            9898989898FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFFFEFCFFFBF7
            FEF8F0FFF5E8FFF0E1FEEDD9FEEAD2FEE7CCCC6701FF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEA
            EAEA989898FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFFFEFDFFFCF9
            FFF9F3FFF6ECFFF2E4FEEEDCFEEBD4FEE8CDCC6701FF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEA
            EAEA989898FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFFFFFFFFFDFB
            FFFAF5FEF7EEFEF4E6FEF0DEFEECD7FEE9D0CC6701FF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEA
            EAEA989898FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF993300993300
            993300993300993300993300993300993300993300993300993300CC6701FF00
            FF006600FF00FFFF00FF7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E
            7E7E7E7E7E7E7E7E7E7E7E989898FF00FF656565FF00FFFF00FFFFFFFEFFFCFA
            FFFBF5FFF8F0FEF5EAFFF2E4FEEFDEFEEDD8FEEAD3FEE8CDFEE6C9CC6701FF00
            FF006600006600FF00FFEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEA
            EAEAEAEAEAEAEAEAEAEAEA838383FF00FF656565656565FF00FFFFFEFEFFFDFB
            FEFBF6FFF9F2FFF6ECFFF3E6FEF1E0FFEEDAFEEBD4FEE8CFFEE6CACC6701FF00
            FF00660066FE9A006600EAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEA
            EAEAEAEAEAEAEAEAEAEAEA838383FF00FF656565E4E4E4656565FFFFFFFFFDFC
            FFFBF8FFF9F3FEF7EDFFF4E7FFF1E2FEEEDCFEEBD5FEE9D0FEE7CBCC6701FF00
            FF006600006600FF00FFEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEA
            EAEAEAEAEAEAEAEAEAEAEA838383FF00FF656565656565FF00FF993300993300
            993300993300993300993300993300993300993300993300993300CC6701FF00
            FF006600FF00FFFF00FF7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E
            7E7E7E7E7E7E7E7E7E7E7E989898FF00FF656565FF00FFFF00FFFFFFFFFFFDFB
            FFFAF5FFF7EDFFF2E5FFEFDCFEEBD4FEE8CCCC6701FF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEA
            EAEA989898FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFFFFFFFFFEFE
            FFFBF8FFF8F0FFF4E8FEF0DFFFECD7FEE8D0CC6701FF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEA
            EAEA989898FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFFFFFFFFFFFF
            FFFDFAFFFAF4FEF6ECFEF2E4FEEEDAFEEBD2CC6701FF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEA
            EAEA989898FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFCC6701CC6701
            CC6701CC6701CC6701CC6701CC6701CC6701CC6701FF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FF98989898989898989898989898989898989898989898
            9898989898FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
          Margin = 5
          NumGlyphs = 2
          Spacing = 5
          TabOrder = 4
          OnClick = BtnAdicionarProdClick
        end
        object BtnCancelarP: TCBitBtn
          Left = 9
          Top = 73
          Width = 75
          Height = 25
          Caption = '&Cancelar'
          Glyph.Data = {
            36060000424D3606000000000000360000002800000020000000100000000100
            18000000000000060000120B0000120B00000000000000000000FF00FFFF00FF
            FF00FFFF00FFFF00FF013002014103025104025104014303013302FF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF7474747A7A7A7F
            7F7F7F7F7F7B7B7B757575FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FF014503014503037808039C0B039F0C039F0C039D0C027E09014D04014D
            04FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF7B7B7B7B7B7B8B8B8B94949496
            96969696969595958C8C8C7E7E7E7E7E7EFF00FFFF00FFFF00FFFF00FFFF00FF
            034F0903650904A30D03A60C03A00B029E0A039F0C03A00C03A50C03A60C0269
            06013402FF00FFFF00FFFF00FFFF00FF80808086868697979797979796969694
            9494969696969696979797979797878787757575FF00FFFF00FFFF00FF044F09
            066B110AAB1F07A415049E0D029D0A54C45CAAE3B010A61B039E0C03A00C03A7
            0C026A06024C04FF00FFFF00FF8080808A8A8A9C9C9C999999969696949494BD
            BDBDDCDCDC9E9E9E9595959696969797978787877E7E7EFF00FFFF00FF044F09
            10AC300DAB2809A41C039E0F3EBC48EEFAEFFFFFFF90DA97049F0D039E0C039F
            0C03A70C024C04FF00FFFF00FF808080A0A0A09E9E9E9A9A9A969696B4B4B4F1
            F1F1F6F6F6D3D3D39696969595959696969797977E7E7EFF00FF0357060D8223
            17B6410EA92D05A01341BD4BF3FBF4FFFFFFFFFFFFFFFFFF7ED486049F0D039E
            0C03A50C037B08014203828282939393A5A5A59E9E9E979797B5B5B5F3F3F3F6
            F6F6F6F6F6F6F6F6CDCDCD9696969595959797978C8C8C7A7A7A03570617A341
            18B54A11AB344CC158F4FCF6FCFEFCF6FCF7FCFEFCF8FCF8FFFFFF75D17D05A0
            0F03A10C03960A014203828282A0A0A0A5A5A5A0A0A0BABABAF3F3F3F5F5F5F3
            F3F3F5F5F5F4F4F4F6F6F6CACACA9797979696969393937A7A7A06680D21B151
            1EB75120B54FEBF8EFFFFFFF84D99AB7E9C5FFFFFF69CC72DCF4DEFFFFFF7FD4
            8703A00C039F0C014A04888888A8A8A8A8A8A8A8A8A8F0F0F0F6F6F6D0D0D0E0
            E0E0F6F6F6C5C5C5EBEBEBF6F6F6CDCDCD9696969696967D7D7D0874123EBD69
            2ABA5C21B553DEF6E798E1B422B655BAEBCEFFFFFF2CB53735B841F2FBF398DD
            9E03A00C039F0C0252058D8D8DB5B5B5ADADADA9A9A9EDEDEDD6D6D6A9A9A9E1
            E1E1F6F6F6ACACACB1B1B1F2F2F2D6D6D69696969696967F7F7F06780E54C57A
            44C6741CB24E36BD6626B75822B554BBEBCCFFFFFF41C05B0CA62721B03913AA
            2C07A518039D0C0146038D8D8DBDBDBDB9B9B9A6A6A6B2B2B2ABABABA9A9A9E2
            E2E2F6F6F6B7B7B79C9C9CA8A8A8A0A0A09999999494947C7C7C06780E4CBD69
            83DDA722B6551CB24E22B55422B554BCEBCEFFFFFF46C2670FAA300FAA2E0CA6
            2706A716038C0A0146038D8D8DB9B9B9D0D0D0A9A9A9A6A6A6A9A9A9A9A9A9E2
            E2E2F6F6F6B8B8B89F9F9F9F9F9F9C9C9C9A9A9A9090907C7C7CFF00FF21A336
            AAE7C568D08E16AF481BB14C22B554BDEBCFFFFFFF4CC56F10A9310EA7290BA4
            2009AF1C036B0AFF00FFFF00FFA4A4A4DCDCDCC6C6C6A3A3A3A5A5A5A9A9A9E2
            E2E2F6F6F6BBBBBB9F9F9F9D9D9D9B9B9B9D9D9D888888FF00FFFF00FF21A336
            56C573C5F0D866CF8C20B45219B14CBFEDD0FFFFFF4CC67513AC3C12AA340FB0
            2D0A991F036B0AFF00FFFF00FFA4A4A4BEBEBEE5E5E5C5C5C5A8A8A8A5A5A5E3
            E3E3F6F6F6BBBBBBA1A1A1A0A0A0A0A0A0989898888888FF00FFFF00FFFF00FF
            1399236ACC88D0F4E39AE1B650C77A38BD672CBA5D30BB602FBC5D23BC4F11A3
            3006620FFF00FFFF00FFFF00FFFF00FF9C9C9CC6C6C6E9E9E9D7D7D7BDBDBDB3
            B3B3AEAEAEAFAFAFAFAFAFABABAB9D9D9D878787FF00FFFF00FFFF00FFFF00FF
            FF00FF4BBF674BBF6798E1B5BDEED4A7E7C490E0B178D99F49C7791B9D3D1B9D
            3DFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFB9B9B9B9B9B9D6D6D6E3E3E3DC
            DCDCD4D4D4CCCCCCBBBBBBA0A0A0A0A0A0FF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FF1DA43538B45446BC6642B8632BA649138C2AFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFA3A3A3B1B1B1B7
            B7B7B5B5B5A9A9A9999999FF00FFFF00FFFF00FFFF00FFFF00FF}
          Margin = 5
          NumGlyphs = 2
          TabOrder = 2
          OnClick = BtnCancelarPClick
        end
      end
      object CGroupBox2: TCGroupBox
        Left = 3
        Top = 171
        Width = 640
        Height = 172
        TabOrder = 2
        object CDBGrid1: TCDBGrid
          Left = 7
          Top = 14
          Width = 625
          Height = 147
          TabStop = False
          DataSource = dsPedidoProd
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
              FieldName = 'idProduto'
              Title.Caption = 'Produto'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'codFabricante'
              Title.Caption = 'C'#243'd. Fab.'
              Width = 60
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'descProduto'
              Title.Caption = 'Descri'#231#227'o'
              Width = 190
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'qtPedida'
              Title.Caption = 'Qtde.'
              Width = 60
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'qtAtendida'
              Title.Caption = 'Atend.'
              Width = 50
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'vlProduto'
              Title.Caption = 'Valor'
              Width = 80
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'vlTotal'
              Title.Caption = 'Total'
              Width = 80
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'descBem'
              Title.Caption = 'M'#225'quina'
              Width = 250
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'stPedidoProd'
              Title.Caption = 'Status'
              Visible = True
            end>
        end
      end
    end
    object TabPrevisao: TTabSheet
      Caption = 'Dados da Previs'#227'o'
      ImageIndex = 1
      object PagTituloPag: TCPageControl
        Left = 3
        Top = 3
        Width = 627
        Height = 167
        ActivePage = TabTituloPag
        Images = imgIcones
        MultiLine = True
        TabOrder = 0
        TabPosition = tpLeft
        TabStop = False
        object TabTituloPag: TTabSheet
          Caption = 'Dados'
          ImageIndex = 6
          object CLabel84: TCLabel
            Left = 22
            Top = 140
            Width = 41
            Height = 13
            Alignment = taRightJustify
            Caption = 'Hist'#243'rico'
          end
          object CLabel124: TCLabel
            Left = 12
            Top = 118
            Width = 51
            Height = 13
            Alignment = taRightJustify
            Caption = 'Multa (%) '
          end
          object CLabel125: TCLabel
            Left = 150
            Top = 118
            Width = 51
            Height = 13
            Alignment = taRightJustify
            Caption = 'Juros (%) '
          end
          object CLabel126: TCLabel
            Left = 298
            Top = 118
            Width = 191
            Height = 13
            Alignment = taRightJustify
            Caption = 'Desconto para pagamento pontual (%) '
          end
          object CLabel127: TCLabel
            Left = 400
            Top = 96
            Width = 92
            Height = 13
            Alignment = taRightJustify
            Caption = 'Dias entre parcelas'
          end
          object CLabel128: TCLabel
            Left = 130
            Top = 96
            Width = 78
            Height = 13
            Alignment = taRightJustify
            Caption = 'Primeira vencto.'
          end
          object CLabel129: TCLabel
            Left = 23
            Top = 96
            Width = 40
            Height = 13
            Alignment = taRightJustify
            Caption = 'Parcelas'
          end
          object CLabel131: TCLabel
            Left = 441
            Top = 28
            Width = 40
            Height = 13
            Alignment = taRightJustify
            Caption = 'Cota'#231#227'o'
          end
          object CLabel130: TCLabel
            Left = 153
            Top = 28
            Width = 29
            Height = 13
            Alignment = taRightJustify
            Caption = #205'ndice'
          end
          object CLabel117: TCLabel
            Left = 34
            Top = 28
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
          object CLabel80: TCLabel
            Left = 435
            Top = 6
            Width = 37
            Height = 13
            Alignment = taRightJustify
            Caption = 'N'#250'mero'
          end
          object CLabel76: TCLabel
            Left = 39
            Top = 6
            Width = 24
            Height = 13
            Alignment = taRightJustify
            Caption = 'S'#233'rie'
          end
          object CLabel19: TCLabel
            Left = 34
            Top = 51
            Width = 29
            Height = 13
            Alignment = taRightJustify
            Caption = 'Banco'
          end
          object CLabel20: TCLabel
            Left = 19
            Top = 73
            Width = 44
            Height = 13
            Alignment = taRightJustify
            Caption = 'Gerencial'
          end
          object DBEobsTituloPag: TCDBEdit
            Left = 69
            Top = 137
            Width = 491
            Height = 19
            BevelKind = bkTile
            BorderStyle = bsNone
            DataField = 'obsPrevisaoPag'
            DataSource = dsPrevisaoPag
            TabOrder = 19
            DecimalControl = True
            KeyMode = kmUSUpper
          end
          object DBEprMulta: TCDBEdit
            Left = 69
            Top = 115
            Width = 66
            Height = 19
            BevelKind = bkTile
            BorderStyle = bsNone
            DataField = 'prMulta'
            DataSource = dsPrevisaoPag
            TabOrder = 16
            DecimalControl = True
            KeyMode = kmNormal
          end
          object DBEprJuros: TCDBEdit
            Left = 207
            Top = 115
            Width = 65
            Height = 19
            BevelKind = bkTile
            BorderStyle = bsNone
            DataField = 'prJuros'
            DataSource = dsPrevisaoPag
            TabOrder = 17
            DecimalControl = True
            KeyMode = kmNormal
          end
          object DBEprDescontoT: TCDBEdit
            Left = 495
            Top = 115
            Width = 65
            Height = 19
            BevelKind = bkTile
            BorderStyle = bsNone
            DataField = 'prDesconto'
            DataSource = dsPrevisaoPag
            TabOrder = 18
            DecimalControl = True
            KeyMode = kmNormal
          end
          object DBEdiasVencimento: TCDBEdit
            Left = 498
            Top = 93
            Width = 62
            Height = 19
            BevelKind = bkTile
            BorderStyle = bsNone
            DataField = 'diasVencimento'
            DataSource = dsPrevisaoPag
            TabOrder = 15
            DecimalControl = True
            KeyMode = kmNormal
          end
          object DBCKincMes: TCDBCheckBox
            Left = 300
            Top = 96
            Width = 88
            Height = 16
            Caption = 'Mesmo Dia?'
            DataField = 'incMes'
            DataSource = dsPrevisaoPag
            TabOrder = 14
            ValueChecked = 'S'
            ValueUnchecked = 'N'
            OnExit = DBCKincMesExit
          end
          object DBEdtVencimentoIni: TCDBEdit
            Left = 214
            Top = 93
            Width = 80
            Height = 19
            BevelKind = bkTile
            BorderStyle = bsNone
            DataField = 'dtVencimentoIni'
            DataSource = dsPrevisaoPag
            MaxLength = 10
            TabOrder = 13
            DecimalControl = True
            KeyMode = kmDate
          end
          object DBEqtParcelas: TCDBEdit
            Left = 69
            Top = 93
            Width = 48
            Height = 19
            BevelKind = bkTile
            BorderStyle = bsNone
            DataField = 'qtParcelas'
            DataSource = dsPrevisaoPag
            TabOrder = 12
            DecimalControl = True
            KeyMode = kmNormal
          end
          object CLookUp1: TCLookUp
            Left = 487
            Top = 25
            Width = 73
            Height = 19
            Alignment = taRightJustify
            BevelInner = bvSpace
            BevelOuter = bvLowered
            Color = 14149350
            ParentBackground = False
            TabOrder = 6
            Key.Strings = (
              'idIndice')
            LookUpKey.Strings = (
              'idIndice')
            AlternateSQL.Strings = (
              
                'SELECT vlLancamento FROM indicelancamento WHERE dtLancamento = (' +
                'SELECT MAX(ind.dtLancamento) FROM indicelancamento ind WHERE ind' +
                '.idIndice = indicelancamento.idIndice) AND idIndice = ?')
            ClientDataSet = cdsLookup
            DataSource = dsPrevisaoPag
            ValidaCampoObrigatorio = False
            CampoObrigatorio = True
            LookUpTable = 'IndiceLancamento'
            ReturnField = 'vlLancamento'
          end
          object CLookUp3: TCLookUp
            Left = 240
            Top = 25
            Width = 195
            Height = 19
            Alignment = taLeftJustify
            BevelInner = bvSpace
            BevelOuter = bvLowered
            Color = 14149350
            ParentBackground = False
            TabOrder = 5
            Key.Strings = (
              'idIndice')
            LookUpKey.Strings = (
              'idIndice')
            ClientDataSet = cdsLookup
            DataSource = dsPrevisaoPag
            ValidaCampoObrigatorio = True
            CampoObrigatorio = True
            LookUpTable = 'Indice'
            ReturnField = 'descIndice'
          end
          object DBEidIndice1: TCDBEdit
            Left = 187
            Top = 25
            Width = 48
            Height = 19
            BevelKind = bkTile
            BorderStyle = bsNone
            DataField = 'idIndice'
            DataSource = dsPrevisaoPag
            TabOrder = 4
            Find = dmFind.FindIndice
            AcaoCad = frmPrincipal.actIndice
            DecimalControl = True
            KeyMode = kmNormal
          end
          object DBEvlPrevisaoPag: TCDBEdit
            Left = 69
            Top = 25
            Width = 81
            Height = 19
            BevelKind = bkTile
            BorderStyle = bsNone
            DataField = 'vlPrevisaoPag'
            DataSource = dsPrevisaoPag
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 3
            DecimalControl = True
            KeyMode = kmNormal
          end
          object DBEnrTituloPag: TCDBEdit
            Left = 478
            Top = 3
            Width = 82
            Height = 19
            BevelKind = bkTile
            BorderStyle = bsNone
            Color = 14149350
            DataField = 'nrPrevisaoPag'
            DataSource = dsPrevisaoPag
            ReadOnly = True
            TabOrder = 2
            DecimalControl = True
            KeyMode = kmInteger
          end
          object CLookUp7: TCLookUp
            Left = 131
            Top = 3
            Width = 247
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
              
                'SELECT descDocSerie FROM DocSerie WHERE idTipoDocSerie = 6 AND i' +
                'dDocSerie = ?')
            ClientDataSet = cdsLookup
            DataSource = dsPrevisaoPag
            ValidaCampoObrigatorio = True
            CampoObrigatorio = True
            LookUpTable = 'DocSerie'
            ReturnField = 'descDocSerie'
          end
          object DBEidDocSerieT: TCDBEdit
            Left = 69
            Top = 3
            Width = 56
            Height = 19
            BevelKind = bkTile
            BorderStyle = bsNone
            DataField = 'idDocSerie'
            DataSource = dsPrevisaoPag
            TabOrder = 0
            Find = FindSerieTit
            DecimalControl = True
            KeyMode = kmUSUpper
          end
          object DBEidBanco: TCDBEdit
            Left = 69
            Top = 48
            Width = 48
            Height = 19
            BevelKind = bkTile
            BorderStyle = bsNone
            DataField = 'idBanco'
            DataSource = dsPrevisaoPag
            TabOrder = 7
            Find = dmFind.FindBanco
            DecimalControl = True
            KeyMode = kmNormal
          end
          object LookBanco: TCLookUp
            Left = 123
            Top = 48
            Width = 233
            Height = 19
            Alignment = taLeftJustify
            BevelInner = bvSpace
            BevelOuter = bvLowered
            Color = 14149350
            ParentBackground = False
            TabOrder = 8
            Key.Strings = (
              'idBanco')
            LookUpKey.Strings = (
              'idBanco')
            AlternateSQL.Strings = (
              
                'SELECT descBanco FROM Banco WHERE ehPortador = '#39'S'#39' AND idBanco =' +
                ' ?')
            ClientDataSet = cdsLookup
            DataSource = dsPrevisaoPag
            ValidaCampoObrigatorio = True
            CampoObrigatorio = True
            LookUpTable = 'Banco'
            ReturnField = 'descBanco'
          end
          object LookGerencialP: TCLookUp
            Left = 123
            Top = 70
            Width = 314
            Height = 19
            Alignment = taLeftJustify
            BevelInner = bvSpace
            BevelOuter = bvLowered
            Color = 14149350
            ParentBackground = False
            TabOrder = 11
            Key.Strings = (
              'idGerencial')
            LookUpKey.Strings = (
              'idGerencial')
            AlternateSQL.Strings = (
              
                'SELECT DISTINCT descGerencial FROM vGerencial WHERE StGerencial ' +
                '= '#39'ATIVO'#39' AND tpGerencial = '#39'SAIDAS'#39' AND idEmpresa = [DBEidEmpre' +
                'sa] AND idGerencial = ?')
            ClientDataSet = cdsLookup
            DataSource = dsPrevisaoPag
            ValidaCampoObrigatorio = True
            CampoObrigatorio = True
            LookUpTable = 'vGerencial'
            ReturnField = 'descGerencial'
          end
          object DBEidGerencial: TCDBEdit
            Left = 69
            Top = 70
            Width = 48
            Height = 19
            BevelKind = bkTile
            BorderStyle = bsNone
            DataField = 'idGerencial'
            DataSource = dsPrevisaoPag
            TabOrder = 10
            Find = FindGerencial
            AcaoCad = frmPrincipal.actCadGerencial
            DecimalControl = True
            KeyMode = kmNormal
          end
          object CBitBtn1: TCBitBtn
            Left = 362
            Top = 48
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
            TabOrder = 9
            TabStop = False
          end
        end
        object TabParcelas: TTabSheet
          Caption = 'Parcelas'
          ImageIndex = 8
          object CGroupBox21: TCGroupBox
            Left = 3
            Top = 3
            Width = 586
            Height = 38
            TabOrder = 0
            object CLabel133: TCLabel
              Left = 8
              Top = 14
              Width = 35
              Height = 13
              Alignment = taRightJustify
              Caption = 'Parcela'
            end
            object CLabel134: TCLabel
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
            object CLabel135: TCLabel
              Left = 284
              Top = 14
              Width = 55
              Height = 13
              Alignment = taRightJustify
              Caption = 'Vencimento'
            end
            object CLabel136: TCLabel
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
            object DBEdtVencimentoP: TCDBEdit
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
            object DBEstTituloPagParc: TCDBEdit
              Left = 468
              Top = 11
              Width = 109
              Height = 19
              TabStop = False
              BevelKind = bkTile
              BorderStyle = bsNone
              Color = 14149350
              DataField = 'stTituloPagParc'
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
          object CGroupBox22: TCGroupBox
            Left = 3
            Top = 47
            Width = 488
            Height = 259
            TabOrder = 1
            object CDBGrid3: TCDBGrid
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
          object GrpBtnParcelas: TCGroupBox
            Left = 497
            Top = 47
            Width = 92
            Height = 259
            TabOrder = 2
            object CLabel137: TCLabel
              Left = 7
              Top = 157
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
            object CLabel138: TCLabel
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
            object LblRestante: TCLabel
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
            end
          end
        end
      end
    end
  end
  inherited PanBotoes: TCPanelGradient
    Top = 435
    Width = 917
    ExplicitTop = 435
    ExplicitWidth = 917
    inherited BtnFechar: TCBitBtn
      Left = 832
      Anchors = [akRight, akBottom]
      TabOrder = 7
      ExplicitLeft = 832
    end
    object BtnImprimir: TCBitBtn
      Left = 413
      Top = 2
      Width = 75
      Height = 25
      Caption = '&Imprimir'
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FF9F9D9EFF00FFFF00FFFF00FF8281818281818E8A
        8BFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF9F9D9E9F9D9ED4D1D196
        93933B393A545253999797C5C2C4D7D5D5828181FF00FFFF00FFFF00FFFF00FF
        9F9D9E9F9D9EFAFAFAFFFFFFD7D4D59E9C9C4443451C1C1E1C1C1F3534356766
        678281818E8A8BFF00FF918E8F9F9D9EF0EEEFFFFFFFEEEBEBCAC9C99F9D9E8E
        8A8A9793958786866463633C3B3D1F2022201F21747273FF00FF9C9899E9E7E7
        E5E5E5BDBBBBA6A4A4B4B1B1C2C1C1A4A1A19692939290909793959A98988E8A
        8B6B6A6A828181FF00FF959192ADABACA4A1A1B0AFAFC9C9C9D1D3D3EDEDEBF0
        EEF0DCDADAC5C4C4ADABAB9A98999390909793958E8A8BFF00FF918E8FAFADAF
        C9C7C7CECECEC9C9C9E2E2E2D1CFCFA1ABA1BDBCBCCBCECFD5D5D5D3D3D3C6C5
        C5B6B6B6989797FF00FFFF00FF9C999AD0D1D1CFCFCFDCDCDCC9C6C6B5B0B4A5
        D1A7BAC4BCC5A7A1ADA4A3A9A6A7B4B1B2C2C1C1A9A6A7FF00FFFF00FFFF00FF
        9C999AC1BFBFAFADADB1B0B0E3E3E3F6F3F3EEEDEEEDE1DEDCD8D8CCCCCCB4B4
        B4939091FF00FFFF00FFFF00FFFF00FFFF00FF9C999AD8DADACACACB9D9FA0BB
        BFC1D3D5D7D4D9D9D5D5D5C6C5C6AFADADFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFBE5E1F8E0D4E9C9BDE3C7BDE2CCC7DED3CED0CECC959295FF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFCE9F9DFFDECEFFCFBDFF
        C4AFFFBAA3FFB199FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFCE9F9DFFDDCEFFCCBCFEC2B0FFBBA4F7A992FF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFCE9F9DFFDDCEFFCCBCFE
        C2B0FEB8A3FAB099FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFCE9F9DFAE0D5FFDACCFFCEBDFFC6B1FCB8A3F8AD99FF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFCE9F9DCE9F9DCE9F9DCE9F9DF3
        AD9DF3AD9DFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
      Spacing = 10
      TabOrder = 5
      OnClick = BtnImprimirClick
    end
    object BtnExcluir2: TCBitBtn
      Left = 494
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
      TabOrder = 6
      OnClick = BtnExcluir2Click
    end
  end
  inherited PanEmpresa: TCPanelGradient
    Width = 917
    Height = 28
    ExplicitWidth = 917
    ExplicitHeight = 28
    inherited lblCNPJ: TCLabel
      Left = 557
      Top = 7
      Visible = False
      ExplicitLeft = 557
      ExplicitTop = 7
    end
    inherited lblInscricao: TCLabel
      Left = 743
      Top = 7
      Visible = False
      ExplicitLeft = 743
      ExplicitTop = 7
    end
    inherited DBEidEmpresa: TCDBEdit
      TabOrder = 1
    end
    inherited DBEidCadEmpresa: TCDBEdit
      TabOrder = 2
    end
    inherited LookdescCadEmpresa: TCLookUp
      TabOrder = 3
    end
    inherited LookdescAbreviada: TCLookUp
      TabOrder = 4
    end
    inherited lookidCnpjCpf: TCLookUp
      Left = 611
      Top = 5
      Visible = False
      ExplicitLeft = 611
      ExplicitTop = 5
    end
    inherited LookidInscEstadual: TCLookUp
      Left = 821
      Top = 4
      TabOrder = 0
      Visible = False
      ExplicitLeft = 821
      ExplicitTop = 4
    end
  end
  inherited imgIcones: TImageList
    Left = 640
    Top = 72
    Bitmap = {
      494C0101010005002C0010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
      000000000000000000000000000000000000000000000000000000000000F6F6
      F60AF1F1F10FF1F1F10FF1F1F10FF1F1F10FF1F1F10FF1F1F10FF1F1F10FF3F3
      F30DF5F5F50B0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000ECECEC139E9E9E8FA4A4
      A4CBA2A2A2CEA1A1A1CEA0A0A0CE9E9E9ECE9D9D9DCE9C9C9CCE9B9B9BCE9B9B
      9BCC9D9D9DC9A3A3A3A5F5F5F519000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E8E8E81798989872CBCBCBFEE2E2
      E2FEDDDDDDFED6D6D6FECFCFCFFEC8C8C8FEC5C5C5FEC2C2C2FEC0C0C0FEC0C0
      C0FEBEBEBEFEBCBCBCFECACACAA1000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C1C1C13E8585858EC6C6C6FEDEDE
      DEFED4D4D4FEC8C8C8FEBBBBBBFEB7B7B7FEB7B7B7FEB6B6B6FEBBB9B8FEBEBE
      BEFEBDBDBDFEBBBBBBFEBDBDBDCC000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000EFEFEF10B9B9B953BFBFBFFECDCD
      CDFEBFBEBDFEB5B4B4FEC0C0C0FEC9C9C9FEBEBDBEFEB2B0ACFEAAA7A1FEB2B2
      B2FEAFAFAFFEB9B9B9FEBBBBBBD7FCFCFC140000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000D3D3D33EBDBDBDFEC5C4
      C3FEB3B0B1FEA3A2ABFECFCFD0FECDCDCDFED0D0D0FED1D1D1FECFCFCFFEC1C1
      C1FEC4C4C4FEBEBEBEFEBFBFBFD7F8F8F8340000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000D4D4D43EBCBCBCFEC4C4
      C4FEC0BFC0FEB2B1B7FED9D9D9FECCCCCCFECFCFCFFED0CFD0FED3D3D3FED3D3
      D3FEC9CBCBFEC9C9C9FEC8C8C8D7F1F1F1500000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000D5D5D53EBCBCBCFEC8C8
      C8FEC1C1C5FEC2C2C7FEDBDBDBFED3D3D3FED3D3D3FED2D2D2FED0D0D0FEDADA
      DAFEB0B0B3FED4D4D4FED1D1D1D7E2E2E26F0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000D5D5D53EC0C0C0FEC9C9
      C9FEC5C4C5FED3D3D5FEDEDEDEFEDFDFDFFEDEDEDEFEDDDDDDFEDBDBDBFEE0E0
      E2FEA8A8C3FEDBDBDDFED9D9D9D7D8D8D88F0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000D4D4D43EC5C5C5FEC0C0
      C0FEC9C9C9FEE5E5E5FEE3E3E3FEE1E2E1FEE3E4E3FEE3E3E3FEE7E7E7FED7D7
      E4FEA7A7D3FED5D5E2FEE2E2E2D7D7D7D79E0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000D5D5D53DCACACAFEB8B8
      B8FE969696FED6D6D6FED4D4D4FED1D1D1FECECECEFEC8C8C8FEC8C8C8FE9ABD
      CBFE5F94A8FE92A9A5FEDADADAB1F6F6F6330000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000DCDCDC3ED2D2D2FED2D2
      D2FEB4B4B4FEF7F7F7FEF7F7F7FEECECECFEEFEFEFFEF7F7F7FEF7F7F7FE9CD3
      DAFE65A9ADFE3D645DFEE7E7E7A8000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F6F6F637E2E2E2FDEAEA
      EAFEE2E2E2FEC2B7B1FEDDC7BFFEF6F2F1FEFEFEFEFEFEFEFEFEEEF2F1FE6CAE
      ACFE61BDC3FE134443FEE1E2E2E4000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FDFDFD18FDFD
      FD1BF9F9F91C8A817EAE9A644FFE886459FEBDECF4FE7FDCEDFE87C4C4FE0D63
      5AFE4F9EA1FE0E2B27FECDD4D2FDFBFBFB200000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C4C4C453C0AAA3D0B8B0AFA1C3E0E5F823C4DFFE5CCFDEFE8CAC
      A5FEBEC2C1F7E5E5E5C6EDEDED8BFCFCFC1E0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C9C9C9BAE8E8E9B6F1F1F17BF7F7
      F73FFEFEFE0A0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF00E0070000000000008001000000000000
      0001000000000000000100000000000000000000000000008000000000000000
      8000000000000000800000000000000080000000000000008000000000000000
      800000000000000080010000000000008001000000000000C000000000000000
      F800000000000000FF0700000000000000000000000000000000000000000000
      000000000000}
  end
  inherited Acao: TActionList
    Left = 704
    Top = 72
    object actCadCidade: TAction
      Caption = '&Cidades'
      ImageIndex = 6
    end
  end
  inherited cdsPadrao: TClientDataSet
    CommandText = 'SELECT * FROM PedidoCompra'
    Left = 704
    Top = 136
  end
  inherited dspPadrao: TDataSetProvider
    DataSet = sdsPedidoCompra
    Left = 672
    Top = 136
  end
  inherited dsPadrao: TDataSource
    Left = 736
    Top = 136
  end
  inherited ImgBotoes: TImageList
    Left = 672
    Top = 72
    Bitmap = {
      494C010108000D002C0020001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000800000003000000001002000000000000060
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
      000000000000000000000000000000000000BDADAD00CECECE00000000000000
      0000FFFFFF008C9CA500BDBDBD00000000000000000000000000000000000000
      000000000000000000000000000000000000B5B5B500CECECE00000000000000
      0000FFFFFF0094949400BDBDBD00000000000000000000000000000000000000
      0000000000000000000000000000846363008442420000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000A5A5A5008484840000000000000000000000
      0000000000000000000000000000000000000000000000000000426363008484
      8400002163000021630000216300848484008463630042212100000000000000
      0000000000004221420000214200000000000000000000000000A5A5A5000000
      000084848400848484008463630000000000A5A5A50042636300424242004242
      4200424242008463630042636300424242000000000000000000000000000000
      000000000000000043000000430000003C000000370000003600000036000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000007F7F7F007F7F7F007D7D7D007C7C7C007B7B7B007B7B7B000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000ADC6CE006B847B00DE5A3100A5391000C6C6C600FFFF
      FF00395A7B00527BAD00426B9400BDBDC6000000000000000000000000000000
      00000000000000000000BDBDBD00737373007B7B7B0052525200C6C6C600FFFF
      FF005A5A5A007B7B7B006B6B6B00BDBDBD000000000000000000000000000000
      00008463630084636300C6636300C66363008442420000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000A5A5A500A5A5A50084848400A5A5A5008484840000000000000000000000
      0000000000000000000000000000000000000000000000000000848484000000
      00008484C6000063C6000042A500000000008484840000000000422121004242
      4200848484008484A5004242630000000000000000000000000000000000FFFF
      FF00C6DEC60000000000A5A5A500FFFFFF000000000042636300426363008484
      8400000000000000000084848400424242000000000000000000000000000000
      93000000930000028400151889002B2D8C002A2A83000F0F6200000040000000
      3A0000003A000000000000000000000000000000000000000000000000009292
      92009292920090909000A0A0A000A9A9A900A6A6A600949494007E7E7E007C7C
      7C007C7C7C0000000000000000000000000000000000F7F7F700000000000000
      000000000000ADC6C600849C9C00849C9400AD523900DE6B4A00AD3918003152
      73004A7BAD0084A5C600ADC6DE00949CA50000000000F7F7F700000000000000
      000000000000BDBDBD008C8C8C008C8C8C006B6B6B008C8C8C00525252005252
      52007B7B7B00A5A5A500C6C6C6009C9C9C000000000000000000846363008463
      6300C6636300C6636300C6636300C66363008442420084636300846363008463
      6300846363008463630084636300000000000000000000000000A5A5A500A5A5
      A500A5A5A500A5A5A500A5A5A500A5A5A50084848400A5A5A500A5A5A500A5A5
      A500A5A5A500A5A5A500A5A5A500000000000000000000000000848484000000
      0000C6A5E7004284E7000042A500000000008484840042636300A5A5A500A5A5
      A500A5A5A5008484A5004242630000000000000000000000000000000000FFFF
      FF00FFFFFF0000000000A5A5A500FFFFFF0000000000A5A5A500C6DEC600C6DE
      C600C6DEC60000000000848484004242420000000000000000000004B3000104
      A7003D45C300B3B7EA00FFFFFF00FFFFFF00FFFFFF00FFFFFF00A0A2CC002D2D
      740000003A0000004E0000000000000000000000000000000000999999009999
      9900B9B9B900DBDBDB00EDEDED00EDEDED00EDEDED00EDEDED00D3D3D300A4A4
      A4007D7D7D00828282000000000000000000BDADAD00A5422900844A4200846B
      6B00ADADAD005A8C9400B5391000D6735A00EF846300CE7B5A0039394A004A7B
      AD007B9CBD00CED6E700637B9400FFFFFF00B5B5B5005A5A5A005A5A5A007373
      7300ADADAD007B7B7B005A5A5A008C8C8C009C9C9C008C8C8C00424242007B7B
      7B009C9C9C00D6D6D6007B7B7B00FFFFFF00000000000000000084636300C684
      8400C6848400C6638400C6636300C663630084424200F7CEA500F7CEA500F7CE
      A500F7CEA500F7CEA50084636300000000000000000000000000A5A5A500A5A5
      A500A5A5A500A5A5A500A5A5A500A5A5A50084848400C6DEC600C6DEC600C6DE
      C600C6DEC600C6DEC600A5A5A50000000000002142000021630084638400C6DE
      C60084A5C6004284C6004263A500C6DEC6008484A50084638400A5A5A500A5A5
      A500A5A5A5008484A5004242630000000000846363008463630000000000FFFF
      FF00F7FFFF0000000000A5A5A500FFFFFF000000000000000000F7FFFF00C6DE
      C600C6DEC600000000008484840042424200000000000005CC000107BA007F89
      E200FFFFFF00FFFFFF009B9CDB005E5EB7005F5FB600ADADDD00FFFFFF00FFFF
      FF005E5E9B0000003A000000430000000000000000009D9D9D009C9C9C00CFCF
      CF00EDEDED00EDEDED00D4D4D400C0C0C000C0C0C000D8D8D800EDEDED00EDED
      ED00BABABA007D7D7D007F7F7F0000000000B59C9C00D6734A00D6733900DE73
      3900D6633100A56B6300AD9C9C00CEADAD00B59494009C7B7B00C6ADAD007384
      9C00C6D6EF0063738C00FFFFFF0000000000A5A5A50084848400848484008484
      84007B7B7B007B7B7B009C9C9C00B5B5B5009C9C9C0084848400B5B5B5008484
      8400D6D6D60073737300FFFFFF0000000000000000000000000084636300C684
      8400C6848400C6848400C6848400C66384008442420042C6630042C6630042C6
      630000C66300F7CEA50084636300000000000000000000000000A5A5A500A5A5
      A500A5A5A500A5A5A500A5A5A500A5A5A5008484840084848400848484008484
      840084848400C6DEC600A5A5A50000000000002142004242A50042638400C6DE
      C600F7FFFF000000000000000000F7FFFF008484A5004221840084638400A5A5
      A500A5A5A5008484A500424263000000000084636300A5A5A500A5A5A500FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000008484840000000000F7FF
      FF00C6DEC600000000008484840042424200000000000005CC006472E500FFFF
      FF00D7DAF5002427B30000008300000072000000680000006A0031319C00E6E6
      F700FFFFFF0036367D000000430000000000000000009D9D9D00CACACA00EDED
      ED00E4E4E400AEAEAE008F8F8F008B8B8B008888880089898900AEAEAE00E7E7
      E700EDEDED00A9A9A9007F7F7F0000000000AD949400D6846300D6734200CE6B
      3100CEAD9C00DEBDAD00F7C6B500FFDED600F7C6B500DEAD9C00AD9C9C00E7DE
      D60073738400AD391800C6C6C600000000009C9C9C0094949400848484007B7B
      7B00B5B5B500C6C6C600CECECE00E7E7E700CECECE00B5B5B5009C9C9C00DEDE
      DE007B7B7B005A5A5A00C6C6C60000000000000000000000000084636300C684
      8400C6848400C6848400C6848400C68484008442420042C6630042C6630042C6
      630042C66300F7CEA50084636300000000000000000000000000A5A5A500C6C6
      C600A5A5A500A5A5A500A5A5A500A5A5A50084848400A5A5A500A5A5A500A5A5
      A50084848400C6DEC600A5A5A5000000000000216300424284008463C6008484
      A50084A5C600A5A5A500A5A5A5008484A5004221A50042218400A5A5A500A5A5
      A500A5A5A5008484A500424263000000000084636300A5A5A500C6DEC6000000
      0000F7FFFF00F7FFFF00F7FFFF0000000000A5A5A50084848400F7FFFF00F7FF
      FF00F7FFFF000000000084848400424242000007E8000B1BD800F8F8FF00F2F3
      FC001621C40000009F0004079C00898FD800797BCD0001027500000061002626
      9500FFFFFF00C3C3DB000101500000004B00A2A2A200AAAAAA00EBEBEB00EAEA
      EA00ACACAC00959595009A9A9A00D0D0D000CACACA008F8F8F0087878700A9A9
      A900EDEDED00DCDCDC008686860081818100AD8C8C00E7A58400CE7B5A00D69C
      8400DEB5AD00F7C6B500F7D6C600F7DECE00F7D6C600F7CEB500DEAD9C00A584
      7B00E7CEBD00FF8463009C8C8C00000000009C9C9C00ADADAD008C8C8C00A5A5
      A500BDBDBD00CECECE00DEDEDE00DEDEDE00DEDEDE00CECECE00B5B5B5008C8C
      8C00CECECE00A5A5A5008C8C8C0000000000000000000000000084636300C684
      8400C6848400C6848400C6848400C68484008442420042C6630042C6630042C6
      630042C66300F7CEA50084636300000000000000000000000000A5A5A500C6C6
      C600C6C6C600C6C6C600C6C6C600A5A5A500848484008484840084848400A5A5
      A50084848400C6DEC600A5A5A5000000000000000000002142004263840084A5
      E7004263E7004242C6004221C6000021C600002184008484A500000000000000
      0000A5A5A5008484A50042426300000000000000000084636300A5A5A500FFFF
      FF00C6DEC6000000000000000000A5A5A50084848400C6DEC600FFFFFF00F7FF
      FF00F7FFFF000000000084848400424242000007E8004358F000FFFFFF006476
      ED000002C4000001B6000407AE00E8EDFD00CACFF0000001800000006E000000
      66008484C900FFFFFF002727880000004B00A2A2A200C3C3C300EDEDED00CBCB
      CB009C9C9C00999999009D9D9D00E8E8E800E1E1E100909090008A8A8A008888
      8800CCCCCC00EDEDED00A7A7A700818181008C7B7B00F7BD9C00CE846B00DEC6
      C600E79C7B00EFC6AD00EFC6AD00EFCEB500F7C6B500EFC6AD00E7A58400B5A5
      9C00C6634200A56B5A00000000000000000084848400C6C6C60094949400CECE
      CE00ADADAD00CECECE00CECECE00CECECE00CECECE00C6C6C600ADADAD00A5A5
      A5007B7B7B007B7B7B000000000000000000000000000000000084636300C684
      8400C6848400C6A5A500F7FFFF00C684840084424200C6DEC60084E7840042E7
      840042E78400F7CEA50084636300000000000000000000000000A5A5A500C6C6
      C600C6C6C600C6C6C600F7FFFF00C6C6C60084848400C6DEC600C6C6C600A5A5
      A500A5A5A500C6DEC600A5A5A500000000000000000000000000422121008484
      A5008484E7004263E7004242C6000021A5008484A50000000000000000000000
      0000000000008484A50042426300000000000000000000000000426363000000
      0000FFFFFF00C6DEC60000000000A5A5A50000000000FFFFFF00FFFFFF00FFFF
      FF00F7FFFF00C6DEC60084848400424242000009F3007F94FA00FFFFFF001932
      F0000512E0007587EA00979CE800F3F5FD00EBEDF8009194DB006A6DC7000202
      78002D2E9E00FFFFFF005558BE0000004A00A4A4A400D4D4D400EDEDED00B5B5
      B500A7A7A700CFCFCF00D5D5D500EAEAEA00E8E8E800D2D2D200C6C6C6009090
      9000ADADAD00EDEDED00BFBFBF00818181009C7B7300F7C6AD00D6947B00E7CE
      BD00EFC6AD00F7D6C600F7D6C600EFBDA500EFB59C00EFB59400E7A57B00C6B5
      B500AD4A1800FFF7F700000000000000000084848400CECECE009C9C9C00CECE
      CE00C6C6C600D6D6D600D6D6D600C6C6C600BDBDBD00BDBDBD00ADADAD00B5B5
      B5005A5A5A00F7F7F7000000000000000000000000000000000084636300C684
      8400C6848400F7CEA500F7FFFF00C684840084424200FFFFFF00FFFFFF00FFFF
      FF00F7FFFF00F7CEA50084636300000000000000000000000000A5A5A500C6C6
      C600C6C6C600C6C6C600F7FFFF00C6C6C60084848400F7FFFF00F7FFFF00F7FF
      FF00F7FFFF00C6DEC600A5A5A500000000000000000000000000000000004263
      6300C6A5E7008484E700002184008484A500C6DEC60000000000000000000000
      000000000000A5A5A5004242630000000000000000000000000042636300A5A5
      A500FFFFFF00F7FFFF008484840000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00C6DEC60084848400424242000218FD00A6B4FD00FFFFFF00112C
      FD000B20F500F7FAFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00DFE0F5000405
      8B002024A000FFFFFF006267C30000007800AAAAAA00DCDCDC00EDEDED00B4B4
      B400AFAFAF00EBEBEB00EDEDED00EDEDED00EDEDED00EDEDED00E5E5E5009696
      9600A9A9A900EDEDED00C3C3C3008C8C8C00A56B5A00F7CEB500DE9C8C00DEC6
      C600EFBDAD00F7DEC600F7DECE00F7DECE00EFBDA500EFBD9C00DE946B00BDB5
      B500D68C6300D6A59C0000000000000000007B7B7B00D6D6D600ADADAD00CECE
      CE00C6C6C600DEDEDE00DEDEDE00DEDEDE00C6C6C600C6C6C6009C9C9C00B5B5
      B50094949400B5B5B5000000000000000000000000000000000084636300F7CE
      A500C6848400C6848400C6848400C684840084424200FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00F7CEA50084636300000000000000000000000000A5A5A500C6C6
      C600C6C6C600C6C6C600C6C6C600A5A5A50084848400F7FFFF00F7FFFF00F7FF
      FF00F7FFFF00C6DEC600A5A5A500000000000000000000000000424242000000
      0000C6A5C6004263A500C6A5C600F7FFFF00C6DEC600C6DEC600000000000000
      0000A5A5A5008484A5004242630000000000000000000000000084848400FFFF
      FF00F7FFFF0000000000F7FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00F7FFFF00C6DEC60084848400424242001735FF00A4B6FF00FFFFFF002C4A
      FF00000FFF00142FF8002B3EED00E6EBFD00D2D7F700232DCA00121EB9000000
      9300464DBE00FFFFFF004A4EBD0000007F00B6B6B600DCDCDC00EDEDED00BFBF
      BF00A7A7A700B4B4B400BBBBBB00E8E8E800E3E3E300B2B2B200A8A8A8009292
      9200BBBBBB00EDEDED00BCBCBC008E8E8E00AD847B00FFD6C600F7C6B500DEB5
      A500DEBDB500FFE7D600F7E7D600F7E7D600F7E7D600FFE7DE00DEB5A500C6A5
      9C00D6AD9400D6947B00FFFFFF000000000094949400DEDEDE00CECECE00BDBD
      BD00C6C6C600E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700BDBDBD00ADAD
      AD00B5B5B500A5A5A500FFFFFF0000000000000000000000000084636300F7CE
      A500F7CEA500F7CEA500F7CEA500C684840084424200FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00F7CEA50084636300000000000000000000000000A5A5A500C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C60084848400F7FFFF00F7FFFF00F7FF
      FF00F7FFFF00C6DEC600A5A5A50000000000000000000000000084848400FFFF
      FF00FFFFFF00FFFFFF00F7FFFF00F7FFFF0000000000A5A5A500426384008484
      84008484A5004284A5004263840000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F7FFFF00A5A5A5000000
      00000000000000000000A5A5A500424242000318FF0091A6FF00FFFFFF00A9B9
      FF00000EFF000008FF000515F800EBF0FF00CFD5F7000108C7000001B3000206
      AE00C3C7EF00FCFCFD001017AA0000007F00AAAAAA00D8D8D800EDEDED00DDDD
      DD00A7A7A700A6A6A600ABABAB00E9E9E900E3E3E3009E9E9E00999999009B9B
      9B00DFDFDF00EBEBEB00A4A4A4008E8E8E00B58C8400FFDECE00F7CEBD00F7C6
      B500E7CEC600DEBDB500EFCEBD00F7DED600EFCEBD00DEBDB500DED6CE00EFCE
      B500E7CEC600E7C6AD00E7CECE00000000009C9C9C00DEDEDE00D6D6D600CECE
      CE00D6D6D600C6C6C600CECECE00E7E7E700CECECE00C6C6C600D6D6D600CECE
      CE00CECECE00C6C6C600D6D6D60000000000000000000000000084636300F7CE
      A500F7CEA500F7CEA500F7CEA500C684840084424200FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00F7CEA50084636300000000000000000000000000A5A5A500C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C60084848400F7FFFF00F7FFFF00F7FF
      FF00F7FFFF00C6DEC600A5A5A50000000000000000000000000084848400FFFF
      FF00FFFFFF00FFFFFF00F7FFFF0000000000426384004284C60084C6E70084A5
      C60084C6E70084C6E7004263840000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00A5A5A500C6DEC600F7FFFF00C6DE
      C600FFFFFF00FFFFFF00A5A5A50042424200000000005F7AFF00FFFFFF00FFFF
      FF005C75FF00000BFF00000EFF001E3BFF001A35F3000007DB000006CC007684
      E800FFFFFF008F97E200000198000000000000000000CDCDCD00EDEDED00EDED
      ED00CCCCCC00A6A6A600A6A6A600B9B9B900B6B6B600A0A0A0009F9F9F00CFCF
      CF00EDEDED00D3D3D3009393930000000000BD948C00FFE7D600F7DECE00F7D6
      C600F7CEB500EFC6BD00E7CECE00DEC6BD00E7CEC600DEAD9C00D6947B00A57B
      73008494A500BD9CA500AD6B6300FFFFFF009C9C9C00E7E7E700DEDEDE00D6D6
      D600CECECE00CECECE00D6D6D600CECECE00CECECE00B5B5B500A5A5A5008484
      840094949400ADADAD007B7B7B00FFFFFF00000000000000000084636300F7CE
      A500F7CEA500F7CEA500F7CEA500C684840084424200FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00F7CEA50084636300000000000000000000000000A5A5A500C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C60084848400F7FFFF00F7FFFF00F7FF
      FF00F7FFFF00C6DEC600A5A5A50000000000000000000000000084848400FFFF
      FF00F7FFFF00000000008484A5008484A50084A5C6008484A50084E7E70084E7
      E70084848400424242000021420000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF000000000000000000F7FFFF0000000000FFFFFF00FFFF
      FF000000000084848400426363000000000000000000425FFF00C4CFFF00FFFF
      FF00FFFFFF008B9FFF00162FFF000414FF000515FD002037F3009FADF700FFFF
      FF00E2E5FA00101ABA00000198000000000000000000C5C5C500E2E2E200EDED
      ED00EDEDED00D7D7D700B6B6B600ACACAC00ACACAC00B8B8B800DADADA00EDED
      ED00E6E6E600A7A7A7009393930000000000C6948C00FFEFE700FFE7D600F7DE
      CE00F7D6C600F7D6BD00FFCEB500F7C6AD00F7BDA500F7BD9C00F7B59C005A5A
      520000CEFF0000B5FF0042B5FF00949CA500A5A5A500EFEFEF00E7E7E700DEDE
      DE00D6D6D600D6D6D600D6D6D600CECECE00C6C6C600C6C6C600C6C6C6005252
      52008C8C8C008C8C8C00A5A5A5009C9C9C000000000000000000846363008463
      6300C6848400F7CEA500F7CEA500C684A50084424200FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00F7CEA50084636300000000000000000000000000A5A5A500A5A5
      A500C6C6C600C6C6C600C6C6C600C6C6C60084848400F7FFFF00F7FFFF00F7FF
      FF00F7FFFF00C6DEC600A5A5A500000000000000000000000000846363000000
      0000426384008484C60084C6E7008484A5004242630000214200000000000000
      0000426363000000000000000000000000000000000000000000A5A5A500FFFF
      FF000000000000000000FFFFFF00000000008484840084636300426363004263
      6300A5A5A50042424200424242000000000000000000000000005975FF00D7DF
      FF00FFFFFF00FFFFFF00FCFCFF00D1DBFF00D4DFFF00FFFFFF00FFFFFF00C6CD
      F7001825CD000001B00000000000000000000000000000000000CBCBCB00E5E5
      E500EDEDED00EDEDED00ECECEC00E4E4E400E5E5E500EDEDED00EDEDED00E1E1
      E100AEAEAE00989898000000000000000000B59C9C00FFF7E700FFEFE700FFEF
      DE00FFE7D600A5736B008C635A00AD949400AD8C8400AD847B00BD7B73007B63
      630008FFFF0018B5E7004A7B9400F7F7F700A5A5A500EFEFEF00EFEFEF00E7E7
      E700E7E7E700848484006B6B6B009C9C9C00949494008C8C8C00949494006B6B
      6B00949494008C8C8C006B6B6B00F7F7F7000000000000000000000000000000
      000084636300C6848400C6848400C68484008442420084636300846363008463
      6300846363008463630084636300000000000000000000000000000000000000
      0000A5A5A500A5A5A500A5A5A500C6C6C60084848400A5A5A500A5A5A500A5A5
      A500A5A5A500A5A5A500A5A5A500000000000000000000000000424242004263
      840084C6E70084A5C60000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000084848400A5A5
      A500FFFFFF00C6DEC60042424200424242004242420000000000000000000000
      0000000000000000000000000000000000000000000000000000000000005C76
      FF0097A9FD00DAE0FF00FFFFFF00FFFFFF00FFFFFF00D4DBFD00596FF0000514
      D7000001B000000000000000000000000000000000000000000000000000CCCC
      CC00D9D9D900E6E6E600EDEDED00EDEDED00EDEDED00E5E5E500C9C9C900A5A5
      A50098989800000000000000000000000000FFFFFF00BDADAD00C6A5A500CEAD
      A500CE9C9400F7F7F70000000000000000000000000000000000000000000000
      0000E7FFFF0084BDE700F7F7F70000000000FFFFFF00B5B5B500ADADAD00B5B5
      B500ADADAD00F7F7F70000000000000000000000000000000000000000000000
      0000F7F7F700B5B5B500F7F7F700000000000000000000000000000000000000
      0000000000000000000084636300846363008442420000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000A5A5A500A5A5A5008484840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000004221
      2100422142000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000424242004263
      6300846363004242420000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000005C75FF005C79FF00627DFF004A66FD00203CF5000619E5000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000CCCCCC00CCCCCC00CECECE00C7C7C700B9B9B900A9A9A9000000
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
      2800000080000000300000000100010000000000000300000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FF31FF31FE7FFE7FC000D100F81FF81F
      FC00FC00F07FF07FD100E48CE007E007B800B800C001C001D100E484C003C003
      00000000C001C001000024C48001800100010001C001C001060000A480018001
      00010001C001C001000011040000000000010001C001C0018030860400000000
      00030003C001C001C078D2800000000000030003C001C001C078C10000000000
      00030003C001C001D030C4000000000000010001C001C001C080E01C00000000
      00010001C001C001C100E0008001800100000000C001C001C401E34980018001
      00000000C001C001D001CD01C003C00300000000F001F001C07FC07FE007E007
      03F103F1FC7FFC7FC3FFC3FFF81FF81FC001C0018FFF8FFF88038803FF3FFF3F
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
    Left = 704
    Top = 104
  end
  inherited dspLookup: TDataSetProvider
    Left = 672
    Top = 104
  end
  inherited sdsLookup: TSQLDataSet
    CommandText = 'SELECT * FROM Produto'
  end
  inherited cdsEmpresa: TClientDataSet
    Left = 592
    Top = 0
    inherited cdsEmpresaidCadEmpresa: TIntegerField
      OnValidate = cdsEmpresaidEmpresaValidate
    end
  end
  inherited dsEmpresa: TDataSource
    Left = 624
    Top = 0
  end
  object sdsPedidoCompra: TSQLDataSet
    SchemaName = 'gesys'
    CommandText = 'SELECT * FROM PedidoCompra'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmPadrao.dbConexao
    Left = 640
    Top = 136
  end
  object sdsPedidoProd: TSQLDataSet
    SchemaName = 'gesys'
    GetMetadata = False
    CommandText = 'SELECT * FROM PedidoCompraProd'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmPadrao.dbConexao
    Left = 640
    Top = 168
  end
  object dspPedidoProd: TDataSetProvider
    DataSet = sdsPedidoProd
    Options = [poAllowMultiRecordUpdates, poPropogateChanges, poAllowCommandText, poUseQuoteChar]
    BeforeUpdateRecord = dspPedidoProdBeforeUpdateRecord
    Left = 672
    Top = 168
  end
  object cdsPedidoProd: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    CommandText = 'SELECT * FROM PedidoCompraProd'
    Params = <>
    ProviderName = 'dspPedidoProd'
    AfterOpen = cdsPadraoAfterOpen
    AfterInsert = cdsPedidoProdAfterInsert
    AfterEdit = cdsPedidoProdAfterEdit
    OnReconcileError = cdsPadraoReconcileError
    Left = 704
    Top = 168
    object cdsPedidoProdidEmpresa: TIntegerField
      FieldName = 'idEmpresa'
      Required = True
    end
    object cdsPedidoProdidCadEmpresa: TSmallintField
      FieldName = 'idCadEmpresa'
      Required = True
    end
    object cdsPedidoProdidPedidoCompra: TIntegerField
      FieldName = 'idPedidoCompra'
      Required = True
    end
    object cdsPedidoProdidPedidoProd: TSmallintField
      FieldName = 'idPedidoProd'
      Required = True
    end
    object cdsPedidoProdidProduto: TIntegerField
      FieldName = 'idProduto'
      Required = True
    end
    object cdsPedidoProdqtPedida: TFMTBCDField
      FieldName = 'qtPedida'
      Required = True
      Precision = 18
      Size = 3
    end
    object cdsPedidoProdqtAtendida: TFMTBCDField
      FieldName = 'qtAtendida'
      Required = True
      Precision = 18
      Size = 3
    end
    object cdsPedidoProdvlProduto: TFMTBCDField
      FieldName = 'vlProduto'
      Required = True
      Precision = 19
      Size = 4
    end
    object cdsPedidoProdvlTotal: TFMTBCDField
      FieldName = 'vlTotal'
      Required = True
      Precision = 19
      Size = 2
    end
    object cdsPedidoProdcodFabricante: TStringField
      FieldKind = fkLookup
      FieldName = 'codFabricante'
      LookupDataSet = cdsProduto
      LookupKeyFields = 'idProduto'
      LookupResultField = 'codFabricante'
      KeyFields = 'idProduto'
      Size = 30
      Lookup = True
    end
    object cdsPedidoProddescProduto: TStringField
      FieldKind = fkLookup
      FieldName = 'descProduto'
      LookupDataSet = cdsProduto
      LookupKeyFields = 'idProduto'
      LookupResultField = 'descProduto'
      KeyFields = 'idProduto'
      Size = 50
      Lookup = True
    end
    object cdsPedidoProddescMaquina: TStringField
      FieldKind = fkLookup
      FieldName = 'descMaquina'
      LookupDataSet = cdsMaquina
      LookupKeyFields = 'idMaquina'
      LookupResultField = 'descMaquina'
      KeyFields = 'idMaquina'
      Size = 60
      Lookup = True
    end
    object cdsPedidoProdobsProduto: TStringField
      FieldName = 'obsProduto'
      Size = 250
    end
    object cdsPedidoProdmarca: TStringField
      FieldName = 'marca'
      Size = 40
    end
    object cdsPedidoProdqtDiasEntrega: TSmallintField
      FieldName = 'qtDiasEntrega'
    end
    object cdsPedidoProdidMaquina: TIntegerField
      FieldName = 'idMaquina'
    end
    object cdsPedidoProddtEntrega: TSQLTimeStampField
      FieldName = 'dtEntrega'
    end
    object cdsPedidoProdstPedidoProd: TStringField
      FieldName = 'stPedidoProd'
      Size = 15
    end
    object cdsPedidoProdqtRetirada: TFMTBCDField
      FieldName = 'qtRetirada'
      Precision = 18
      Size = 3
    end
    object cdsPedidoProdvlTotalPed: TAggregateField
      FieldName = 'vlTotalPed'
      Active = True
      DisplayName = ''
      DisplayFormat = '#,##0.00'
      Expression = 'SUM(vlTotal)'
    end
  end
  object dsPedidoProd: TDataSource
    DataSet = cdsPedidoProd
    OnStateChange = dsPedidoProdStateChange
    Left = 736
    Top = 168
  end
  object cdsProduto: TClientDataSet
    Aggregates = <>
    CommandText = 'SELECT * FROM Produto'
    Params = <>
    ProviderName = 'dspLookUp'
    Left = 736
    Top = 104
    object cdsProdutoidProduto: TIntegerField
      FieldName = 'idProduto'
      Required = True
    end
    object cdsProdutodescProduto: TStringField
      FieldName = 'descProduto'
      Required = True
      Size = 50
    end
    object cdsProdutoidProdCategoria: TSmallintField
      FieldName = 'idProdCategoria'
      Required = True
    end
    object cdsProdutoidProdMedida: TSmallintField
      FieldName = 'idProdMedida'
      Required = True
    end
    object cdsProdutoidProdGrupo: TSmallintField
      FieldName = 'idProdGrupo'
    end
    object cdsProdutoidProdSubGrupo: TSmallintField
      FieldName = 'idProdSubGrupo'
    end
    object cdsProdutodtCadastro: TSQLTimeStampField
      FieldName = 'dtCadastro'
      Required = True
    end
    object cdsProdutoobsProduto: TStringField
      FieldName = 'obsProduto'
      Size = 250
    end
    object cdsProdutostProduto: TStringField
      FieldName = 'stProduto'
      Required = True
      Size = 15
    end
    object cdsProdutoidIndice: TSmallintField
      FieldName = 'idIndice'
    end
    object cdsProdutoidCultura: TSmallintField
      FieldName = 'idCultura'
    end
    object cdsProdutoidFabricante: TIntegerField
      FieldName = 'idFabricante'
    end
    object cdsProdutocodFabricante: TStringField
      FieldName = 'codFabricante'
      Size = 30
    end
    object cdsProdutodescAplicacao: TStringField
      FieldName = 'descAplicacao'
      Size = 250
    end
    object cdsProdutoNcm: TStringField
      FieldName = 'Ncm'
      Size = 15
    end
    object cdsProdutoqtSacas: TFMTBCDField
      FieldName = 'qtSacas'
      Precision = 15
      Size = 3
    end
    object cdsProdutoqtArrobas: TFMTBCDField
      FieldName = 'qtArrobas'
      Precision = 15
      Size = 3
    end
    object cdsProdutoCombustivel: TStringField
      FieldName = 'Combustivel'
      FixedChar = True
      Size = 1
    end
    object cdsProdutolocacao: TStringField
      FieldName = 'locacao'
      Size = 10
    end
    object cdsProdutoproducao: TStringField
      FieldName = 'producao'
      Required = True
      FixedChar = True
      Size = 1
    end
    object cdsProdutoidProdOrigem: TSmallintField
      FieldName = 'idProdOrigem'
      Required = True
    end
  end
  object cdsMaquina: TClientDataSet
    Aggregates = <>
    CommandText = 'SELECT * FROM Maquina'
    Params = <>
    ProviderName = 'dspLookUp'
    Left = 736
    Top = 72
  end
  object dsPrevisaoPag: TDataSource
    DataSet = cdsPrevisaoPag
    Left = 736
    Top = 224
  end
  object cdsPrevisaoPag: TClientDataSet
    Aggregates = <>
    CommandText = 'SELECT * FROM PrevisaoPag'
    Params = <>
    ProviderName = 'dspPrevisaoPag'
    AfterOpen = cdsPadraoAfterOpen
    AfterInsert = cdsPrevisaoPagAfterInsert
    AfterEdit = cdsPrevisaoPagAfterEdit
    OnReconcileError = cdsPadraoReconcileError
    Left = 704
    Top = 224
    object cdsPrevisaoPagidPrevisaoPag: TIntegerField
      FieldName = 'idPrevisaoPag'
      Required = True
    end
    object cdsPrevisaoPagidEmpresa: TIntegerField
      FieldName = 'idEmpresa'
      Required = True
    end
    object cdsPrevisaoPagidFornecedor: TIntegerField
      FieldName = 'idFornecedor'
      Required = True
    end
    object cdsPrevisaoPagnrPrevisaoPag: TStringField
      FieldName = 'nrPrevisaoPag'
      Required = True
    end
    object cdsPrevisaoPagidDocSerie: TStringField
      FieldName = 'idDocSerie'
      Required = True
      Size = 5
    end
    object cdsPrevisaoPagtpDocumento: TStringField
      FieldName = 'tpDocumento'
    end
    object cdsPrevisaoPagdtEmissao: TSQLTimeStampField
      FieldName = 'dtEmissao'
      Required = True
    end
    object cdsPrevisaoPagidSafra: TIntegerField
      FieldName = 'idSafra'
      Required = True
    end
    object cdsPrevisaoPagidBanco: TIntegerField
      FieldName = 'idBanco'
      Required = True
    end
    object cdsPrevisaoPagidIndice: TSmallintField
      FieldName = 'idIndice'
      Required = True
    end
    object cdsPrevisaoPagidMovFinanceira: TIntegerField
      FieldName = 'idMovFinanceira'
      Required = True
    end
    object cdsPrevisaoPagidResultado: TIntegerField
      FieldName = 'idResultado'
    end
    object cdsPrevisaoPagidRateio: TSmallintField
      FieldName = 'idRateio'
    end
    object cdsPrevisaoPagidGerencial: TIntegerField
      FieldName = 'idGerencial'
      Required = True
    end
    object cdsPrevisaoPagobsPrevisaoPag: TStringField
      FieldName = 'obsPrevisaoPag'
      Size = 250
    end
    object cdsPrevisaoPagvlPrevisaoPag: TFMTBCDField
      FieldName = 'vlPrevisaoPag'
      Required = True
      Precision = 10
      Size = 2
    end
    object cdsPrevisaoPagqtParcelas: TSmallintField
      FieldName = 'qtParcelas'
      Required = True
    end
    object cdsPrevisaoPagdtVencimentoIni: TSQLTimeStampField
      FieldName = 'dtVencimentoIni'
      Required = True
    end
    object cdsPrevisaoPagdiasVencimento: TSmallintField
      FieldName = 'diasVencimento'
      Required = True
    end
    object cdsPrevisaoPagprMulta: TFMTBCDField
      FieldName = 'prMulta'
      Required = True
      Precision = 5
      Size = 3
    end
    object cdsPrevisaoPagprDesconto: TFMTBCDField
      FieldName = 'prDesconto'
      Required = True
      Precision = 5
      Size = 3
    end
    object cdsPrevisaoPagprJuros: TFMTBCDField
      FieldName = 'prJuros'
      Required = True
      Precision = 5
      Size = 3
    end
    object cdsPrevisaoPagincMes: TStringField
      FieldName = 'incMes'
      Required = True
      FixedChar = True
      Size = 1
    end
    object cdsPrevisaoPagstPrevisaoPag: TStringField
      FieldName = 'stPrevisaoPag'
      Required = True
      Size = 15
    end
    object cdsPrevisaoPagidCadEmpresa: TSmallintField
      FieldName = 'idCadEmpresa'
      Required = True
    end
  end
  object dspPrevisaoPag: TDataSetProvider
    DataSet = sdsPrevisaoPag
    Options = [poAllowMultiRecordUpdates, poPropogateChanges, poAllowCommandText, poUseQuoteChar]
    BeforeUpdateRecord = dspPrevisaoPagBeforeUpdateRecord
    Left = 672
    Top = 224
  end
  object sdsPrevisaoPag: TSQLDataSet
    SchemaName = 'gesys'
    GetMetadata = False
    CommandText = 'SELECT * FROM PrevisaoPag'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmPadrao.dbConexao
    Left = 640
    Top = 224
  end
  object sdsPrevisaoPagParc: TSQLDataSet
    SchemaName = 'gesys'
    GetMetadata = False
    CommandText = 'SELECT * FROM PrevisaoPagParc'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmPadrao.dbConexao
    Left = 640
    Top = 256
  end
  object dspPrevisaoPagParc: TDataSetProvider
    DataSet = sdsPrevisaoPagParc
    Options = [poAllowMultiRecordUpdates, poPropogateChanges, poAllowCommandText, poUseQuoteChar]
    Left = 672
    Top = 256
  end
  object cdsPrevisaoPagParc: TClientDataSet
    Aggregates = <>
    CommandText = 'SELECT * FROM PrevisaoPagParc'
    Params = <>
    ProviderName = 'dspPrevisaoPagParc'
    AfterOpen = cdsPadraoAfterOpen
    OnReconcileError = cdsPadraoReconcileError
    Left = 704
    Top = 256
  end
  object dsPrevisaoPagParc: TDataSource
    DataSet = cdsPrevisaoPagParc
    Left = 736
    Top = 256
  end
  object FindSerieTit: TCFind
    SelectClause.Strings = (
      'SELECT  idDocSerie, descDocSerie FROM DocSerie')
    JoinClause.Strings = (
      'WHERE idTipoDocSerie = 6')
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
    Left = 776
    Top = 208
  end
  object FindGerencial: TCFind
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
    Left = 872
    Top = 200
  end
  object dsPedidoFinanc: TDataSource
    DataSet = cdsPedidoFinanc
    Left = 728
    Top = 296
  end
  object cdsPedidoFinanc: TClientDataSet
    Aggregates = <>
    CommandText = 'SELECT * FROM PedidoCompraFinanc'
    Params = <>
    ProviderName = 'dspPedidoFinanc'
    AfterOpen = cdsPadraoAfterOpen
    OnReconcileError = cdsPadraoReconcileError
    Left = 696
    Top = 296
    object cdsPedidoFinancidEmpresa: TIntegerField
      FieldName = 'idEmpresa'
      Required = True
    end
    object cdsPedidoFinancidCadEmpresa: TSmallintField
      FieldName = 'idCadEmpresa'
      Required = True
    end
    object cdsPedidoFinancidPedidoCompra: TIntegerField
      FieldName = 'idPedidoCompra'
      Required = True
    end
    object cdsPedidoFinancidPrevisaoPag: TIntegerField
      FieldName = 'idPrevisaoPag'
    end
  end
  object dspPedidoFinanc: TDataSetProvider
    DataSet = sdsPedidoFinanc
    Options = [poAllowMultiRecordUpdates, poPropogateChanges, poAllowCommandText, poUseQuoteChar]
    Left = 664
    Top = 296
  end
  object sdsPedidoFinanc: TSQLDataSet
    SchemaName = 'gesys'
    GetMetadata = False
    CommandText = 'SELECT * FROM PrevisaoPagParc'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmPadrao.dbConexao
    Left = 632
    Top = 296
  end
end
