inherited FrmCadSerContrato: TFrmCadSerContrato
  Caption = 'Cadastro do Contrato de Servi'#231'os'
  ClientHeight = 403
  ClientWidth = 1001
  Icon.Data = {
    0000010001001010000001002000680400001600000028000000100000002000
    0000010020000000000000040000000000000000000000000000000000000000
    000000000000451F04FF451F04FF451F04FF451F04FF451F04FF451F04FF451F
    04FF451F04FF451F04FF451F04FF451F04FF451F04FF00000000000000000000
    000000000000451F04FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
    FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF451F04FF00000000000000000000
    000000000000451F04FFFFFCFAFFFFFFFFFFFFFFFFFFFFFFFFFFF8F0EAFFF1E3
    D9FFD7A47FFFF3F1F0FFF1ECE9FFFEFEFEFF451F04FF00000000000000000000
    000000000000451F04FFFFFCFBFFFFFFFFFFFFFFFFFFF8F3EEFFDB905BFFD18E
    5EFFEB9D66FFD78952FFD68F5BFFF9F9F9FF451F04FF00000000000000000000
    000000000000451F04FFFFFBF9FFFFFFFFFFFFFFFFFFDFB699FFF7B383FFF9AC
    75FFF5A76FFFEA9C64FFD68850FFDDB396FF451F04FF00000000000000000000
    000000000000451F04FFFFF8F3FFFFFFFFFFFFFFFFFFF9CDAEFFFFB988FFFDC5
    9DFFC3763FFFD1834BFFD88A52FFE0B08EFF451F04FF00000000000000000000
    000000000000451F04FFFFF4EEFFFFFFFFFFFFFFFFFFFDF4EDFFF9B482FFFCCD
    ABFFBB703AFFE4965EFFE0A77EFFFCF0E9FF451F04FF00000000000000000000
    000000000000451F04FFFFF0E7FFFFFFFFFFFFFFFFFFFFF4EEFFFDE3D1FFF9CD
    AFFFAF6632FFF7D2B9FFF5DDCDFFFFF1E8FF451F04FF00000000000000000000
    000000000000451F04FFFFEDE1FFFFFFFFFFFFFFFFFFFFF0E6FFFFEBDEFFFFEB
    DFFFFFEBDEFFFFEBDEFFFFEBDEFFFFEDE2FF451F04FF00000000000000000000
    000000000000451F04FFFFE9DBFFFFFEFEFFFFFFFFFFFFECE0FFFFE7D7FFFFE7
    D7FFFFE7D7FFFFE7D7FFFFE5D4FFFFE9DBFF451F04FF00000000000000000000
    000000000000451F04FFFFE5D5FFFFFDFCFFFFFEFEFFFFE6D6FFFFDFCAFFFFDF
    CAFFFFDFCAFFFFDFCAFFFFDFCAFFFFE4D2FF451F04FF00000000000000000000
    000000000000451F04FFFFE1CDFFFFF9F7FFFFFDFCFFFFDEC8FFFFD7BBFFFFD6
    B9FFFFD7BCFFFFD6BAFFFFD6BAFFFFDFCAFF451F04FF00000000000000000000
    000000000000451F04FFFFDEC7FFFFF7F3FFFFF9F6FFFFD5B9FFFFCCAAFFFFCC
    A8FFFFCCA9FFFFCDABFFF9CFB2FF451F04FF451F04FF00000000000000000000
    000000000000451F04FFFFD7BDFFFFF2EAFFFFF3EDFFFFC9A4FFFFBE91FFFFBE
    91FFFFBF92FFFFC094FFFFEADBFFFFF9F6FFF7F6F55C00000000000000000000
    000000000000451F04FFFFCFAEFFFFE8D9FFFFE7D7FFFBB888FFF9AB75FFF8AB
    74FFF9AC75FFFAAD76FFFDE3D0FFF8F8F85C0000000000000000000000000000
    000000000000451F04FF451F04FF451F04FF451F04FF451F04FF451F04FF451F
    04FF451F04FF451F04FFEAE2DC3800000000000000000000000000000000C003
    0000C0030000C0030000C0030000C0030000C0030000C0030000C0030000C003
    0000C0030000C0030000C0030000C0030000C0030000C0070000C00F0000}
  ExplicitLeft = -253
  ExplicitWidth = 1017
  ExplicitHeight = 442
  PixelsPerInch = 96
  TextHeight = 13
  inherited Bevel1: TBevel
    Top = 368
    Width = 1001
    ExplicitLeft = 8
    ExplicitTop = 495
    ExplicitWidth = 897
  end
  inherited Bevel2: TBevel
    Width = 1001
    ExplicitTop = 52
    ExplicitWidth = 942
  end
  inherited PagAbas: TCPageControl
    Width = 1001
    Height = 315
    ExplicitWidth = 1001
    ExplicitHeight = 315
    inherited TabAbas: TTabSheet
      Caption = 'Dados do Contrato'
      ExplicitLeft = 4
      ExplicitTop = 25
      ExplicitWidth = 993
      ExplicitHeight = 286
      object CGroupBox1: TCGroupBox
        Left = 3
        Top = 0
        Width = 686
        Height = 176
        Caption = 'Dados Gerais'
        TabOrder = 0
        object CLabel7: TCLabel
          Left = 174
          Top = 16
          Width = 38
          Height = 13
          Alignment = taRightJustify
          Caption = 'Emiss'#227'o'
        end
        object CLabel1: TCLabel
          Left = 535
          Top = 60
          Width = 55
          Height = 13
          Alignment = taRightJustify
          Caption = 'Vencimento'
        end
        object CLabel14: TCLabel
          Left = 541
          Top = 16
          Width = 31
          Height = 13
          Alignment = taRightJustify
          Caption = 'Status'
          Transparent = True
        end
        object CLabel5: TCLabel
          Left = 49
          Top = 16
          Width = 33
          Height = 13
          Alignment = taRightJustify
          Caption = 'C'#243'digo'
          Transparent = True
        end
        object lblCliFor: TCLabel
          Left = 27
          Top = 38
          Width = 55
          Height = 13
          Alignment = taRightJustify
          Caption = 'Fornecedor'
        end
        object CLabel2: TCLabel
          Left = 341
          Top = 16
          Width = 99
          Height = 13
          Alignment = taRightJustify
          Caption = 'Valor do Contrato'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object CLabel11: TCLabel
          Left = 272
          Top = 148
          Width = 38
          Height = 13
          Alignment = taRightJustify
          Caption = 'Produto'
        end
        object CLabel12: TCLabel
          Left = 16
          Top = 60
          Width = 66
          Height = 13
          Alignment = taRightJustify
          Caption = 'Tipo Contrato'
        end
        object CLabel13: TCLabel
          Left = 17
          Top = 104
          Width = 65
          Height = 13
          Alignment = taRightJustify
          Caption = 'Comissionado'
        end
        object CLabel15: TCLabel
          Left = 440
          Top = 104
          Width = 64
          Height = 13
          Alignment = taRightJustify
          Caption = 'Valor Comiss.'
        end
        object CLabel16: TCLabel
          Left = 323
          Top = 82
          Width = 40
          Height = 13
          Alignment = taRightJustify
          Caption = 'Cota'#231#227'o'
        end
        object CLabel17: TCLabel
          Left = 53
          Top = 82
          Width = 29
          Height = 13
          Alignment = taRightJustify
          Caption = #205'ndice'
        end
        object CLabel30: TCLabel
          Left = 443
          Top = 60
          Width = 41
          Height = 13
          Alignment = taRightJustify
          Caption = 'Dia Base'
          Transparent = True
        end
        object CLabel10: TCLabel
          Left = 578
          Top = 104
          Width = 51
          Height = 13
          Alignment = taRightJustify
          Caption = '% Comiss.'
        end
        object CLabel3: TCLabel
          Left = 275
          Top = 126
          Width = 35
          Height = 13
          Alignment = taRightJustify
          Caption = 'Servi'#231'o'
        end
        object DBEdtSerContrato: TCDBEdit
          Left = 218
          Top = 13
          Width = 80
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'dtSerContrato'
          DataSource = dsPadrao
          MaxLength = 10
          TabOrder = 1
          DecimalControl = True
          KeyMode = kmDate
        end
        object DBEdtVencimento: TCDBEdit
          Left = 596
          Top = 57
          Width = 80
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'dtVencimento'
          DataSource = dsPadrao
          MaxLength = 10
          TabOrder = 9
          DecimalControl = True
          KeyMode = kmDate
        end
        object DBEstSerContrato: TCDBEdit
          Left = 578
          Top = 13
          Width = 98
          Height = 19
          TabStop = False
          BevelKind = bkTile
          BorderStyle = bsNone
          Color = 14149350
          DataField = 'stSerContrato'
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
        object DBEidSerContrato: TCDBEdit
          Left = 88
          Top = 13
          Width = 80
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'idSerContrato'
          DataSource = dsPadrao
          TabOrder = 0
          OnExit = DBEidSerContratoExit
          OnKeyDown = DBEidSerContratoKeyDown
          DecimalControl = True
          KeyMode = kmNormal
        end
        object CBitBtn3: TCBitBtn
          Left = 440
          Top = 35
          Width = 103
          Height = 19
          Action = frmPrincipal.actCadCliente
          Caption = 'Clientes/Fornec.'
          TabOrder = 5
          TabStop = False
        end
        object DBEidFornecedor: TCDBEdit
          Left = 88
          Top = 35
          Width = 62
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'idFornecedor'
          DataSource = dsPadrao
          TabOrder = 4
          Find = dmFind.FindFornecedor
          AcaoCad = frmPrincipal.actCadCliente
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEvlContratoVenda: TCDBEdit
          Left = 446
          Top = 13
          Width = 89
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'vlSerContrato'
          DataSource = dsPadrao
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 2
          DecimalControl = True
          KeyMode = kmNormal
        end
        object LookProduto: TCLookUp
          Left = 382
          Top = 148
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
          ValidaCampoObrigatorio = False
          CampoObrigatorio = False
          LookUpTable = 'Produto'
          ReturnField = 'descProduto'
        end
        object LookProdMedida: TCLookUp
          Left = 634
          Top = 145
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
          Left = 316
          Top = 145
          Width = 60
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
        object DBEidSerTpContrato: TCDBEdit
          Left = 88
          Top = 57
          Width = 46
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'idSerTpContrato'
          DataSource = dsPadrao
          TabOrder = 6
          Find = dmFind.FindSerTpContrato
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEidComissionado: TCDBEdit
          Left = 88
          Top = 101
          Width = 62
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'idComissionado'
          DataSource = dsPadrao
          TabOrder = 14
          Find = dmFind.FindFornecedor
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEvlComissao: TCDBEdit
          Left = 510
          Top = 101
          Width = 62
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'vlComissao'
          DataSource = dsPadrao
          TabOrder = 16
          AcaoCad = frmPrincipal.actCadSafra
          DecimalControl = True
          KeyMode = kmNormal
        end
        object LookSerTpContrato: TCLookUp
          Left = 140
          Top = 57
          Width = 294
          Height = 19
          Alignment = taLeftJustify
          BevelInner = bvSpace
          BevelOuter = bvLowered
          Color = 14149350
          ParentBackground = False
          TabOrder = 7
          Key.Strings = (
            'idSerTpContrato')
          LookUpKey.Strings = (
            'idSerTpContrato')
          ClientDataSet = cdsLookup
          DataSource = dsPadrao
          ValidaCampoObrigatorio = True
          CampoObrigatorio = True
          LookUpTable = 'SerTpContrato'
          ReturnField = 'descSerTpContrato'
        end
        object LookRepresen: TCLookUp
          Left = 156
          Top = 101
          Width = 278
          Height = 19
          Alignment = taLeftJustify
          BevelInner = bvSpace
          BevelOuter = bvLowered
          Color = 14149350
          ParentBackground = False
          TabOrder = 15
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
        object CBitBtn2: TCBitBtn
          Left = 440
          Top = 79
          Width = 91
          Height = 19
          Action = frmPrincipal.actIndice
          Caption = #205'ndices'
          TabOrder = 13
          TabStop = False
        end
        object LookLancamento: TCLookUp
          Left = 369
          Top = 79
          Width = 65
          Height = 19
          Alignment = taRightJustify
          BevelInner = bvSpace
          BevelOuter = bvLowered
          Color = 14149350
          ParentBackground = False
          TabOrder = 12
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
          Top = 79
          Width = 177
          Height = 19
          Alignment = taLeftJustify
          BevelInner = bvSpace
          BevelOuter = bvLowered
          Color = 14149350
          ParentBackground = False
          TabOrder = 11
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
          Top = 79
          Width = 46
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'idIndice'
          DataSource = dsPadrao
          TabOrder = 10
          Find = dmFind.FindIndice
          AcaoCad = frmPrincipal.actIndice
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEdiaBase: TCDBEdit
          Left = 488
          Top = 57
          Width = 41
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'diaBase'
          DataSource = dsPadrao
          TabOrder = 8
          DecimalControl = True
          KeyMode = kmInteger
        end
        object DBEprComissao: TCDBEdit
          Left = 635
          Top = 101
          Width = 41
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'prComissao'
          DataSource = dsPadrao
          TabOrder = 17
          AcaoCad = frmPrincipal.actCadSafra
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBCKmostraContas: TCDBCheckBox
          Left = 88
          Top = 125
          Width = 168
          Height = 17
          Caption = 'Gera Nota Fiscal de Servi'#231'os?'
          DataField = 'geraNFSe'
          DataSource = dsPadrao
          TabOrder = 18
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
        object DBEidServico: TCDBEdit
          Left = 316
          Top = 123
          Width = 60
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'idServico'
          DataSource = dsPadrao
          TabOrder = 19
          Find = dmFind.FindServico
          AcaoCad = frmPrincipal.actCadProduto
          DecimalControl = True
          KeyMode = kmNormal
        end
        object LookProdMedidaSer: TCLookUp
          Left = 634
          Top = 123
          Width = 42
          Height = 19
          Alignment = taLeftJustify
          BevelInner = bvSpace
          BevelOuter = bvLowered
          Color = 14149350
          ParentBackground = False
          TabOrder = 21
          Key.Strings = (
            'idServico')
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
        object LookServico: TCLookUp
          Left = 382
          Top = 123
          Width = 246
          Height = 19
          Alignment = taLeftJustify
          BevelInner = bvSpace
          BevelOuter = bvLowered
          Color = 14149350
          ParentBackground = False
          TabOrder = 20
          Key.Strings = (
            'idServico')
          LookUpKey.Strings = (
            'idProduto')
          ClientDataSet = cdsLookup
          DataSource = dsPadrao
          ValidaCampoObrigatorio = False
          CampoObrigatorio = False
          LookUpTable = 'Produto'
          ReturnField = 'descProduto'
        end
        object CDBCheckBox1: TCDBCheckBox
          Left = 88
          Top = 147
          Width = 168
          Height = 17
          Caption = 'Gera Nota Fiscal de Produtos?'
          DataField = 'geraNFe'
          DataSource = dsPadrao
          TabOrder = 22
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
        object LookFornecedor: TCLookUp
          Left = 156
          Top = 35
          Width = 278
          Height = 19
          Alignment = taLeftJustify
          BevelInner = bvSpace
          BevelOuter = bvLowered
          Color = 14149350
          ParentBackground = False
          TabOrder = 26
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
      end
      object CGroupBox2: TCGroupBox
        Left = 3
        Top = 182
        Width = 686
        Height = 99
        Caption = 'Observa'#231#245'es'
        TabOrder = 1
        object DBMobsSerContrato: TCDBMemo
          Left = 9
          Top = 17
          Width = 667
          Height = 72
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'obsSerContrato'
          DataSource = dsPadrao
          MaxLength = 1000
          ScrollBars = ssVertical
          TabOrder = 0
          KeyMemo = kmmUSUpper
        end
      end
    end
  end
  inherited PanBotoes: TCPanelGradient
    Top = 372
    Width = 1001
    ExplicitTop = 372
    ExplicitWidth = 1001
    inherited BtnSalvar: TCBitBtn
      Left = 5
      Width = 71
      ExplicitLeft = 5
      ExplicitWidth = 71
    end
    inherited BtnFechar: TCBitBtn
      Left = 618
      ExplicitLeft = 618
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
  end
  inherited PanEmpresa: TCPanelGradient
    Width = 1001
    ExplicitWidth = 1001
  end
  inherited imgIcones: TImageList
    Left = 776
    Top = 80
    Bitmap = {
      494C010101000500040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
      0000000000000000000000000000000000000000000000000000451F04FF451F
      04FF451F04FF451F04FF451F04FF451F04FF451F04FF451F04FF451F04FF451F
      04FF451F04FF451F04FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000451F04FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF451F04FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000451F04FFFFFC
      FAFFFFFFFFFFFFFFFFFFFFFFFFFFF8F0EAFFF1E3D9FFD7A47FFFF3F1F0FFF1EC
      E9FFFEFEFEFF451F04FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000451F04FFFFFC
      FBFFFFFFFFFFFFFFFFFFF8F3EEFFDB905BFFD18E5EFFEB9D66FFD78952FFD68F
      5BFFF9F9F9FF451F04FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000451F04FFFFFB
      F9FFFFFFFFFFFFFFFFFFDFB699FFF7B383FFF9AC75FFF5A76FFFEA9C64FFD688
      50FFDDB396FF451F04FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000451F04FFFFF8
      F3FFFFFFFFFFFFFFFFFFF9CDAEFFFFB988FFFDC59DFFC3763FFFD1834BFFD88A
      52FFE0B08EFF451F04FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000451F04FFFFF4
      EEFFFFFFFFFFFFFFFFFFFDF4EDFFF9B482FFFCCDABFFBB703AFFE4965EFFE0A7
      7EFFFCF0E9FF451F04FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000451F04FFFFF0
      E7FFFFFFFFFFFFFFFFFFFFF4EEFFFDE3D1FFF9CDAFFFAF6632FFF7D2B9FFF5DD
      CDFFFFF1E8FF451F04FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000451F04FFFFED
      E1FFFFFFFFFFFFFFFFFFFFF0E6FFFFEBDEFFFFEBDFFFFFEBDEFFFFEBDEFFFFEB
      DEFFFFEDE2FF451F04FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000451F04FFFFE9
      DBFFFFFEFEFFFFFFFFFFFFECE0FFFFE7D7FFFFE7D7FFFFE7D7FFFFE7D7FFFFE5
      D4FFFFE9DBFF451F04FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000451F04FFFFE5
      D5FFFFFDFCFFFFFEFEFFFFE6D6FFFFDFCAFFFFDFCAFFFFDFCAFFFFDFCAFFFFDF
      CAFFFFE4D2FF451F04FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000451F04FFFFE1
      CDFFFFF9F7FFFFFDFCFFFFDEC8FFFFD7BBFFFFD6B9FFFFD7BCFFFFD6BAFFFFD6
      BAFFFFDFCAFF451F04FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000451F04FFFFDE
      C7FFFFF7F3FFFFF9F6FFFFD5B9FFFFCCAAFFFFCCA8FFFFCCA9FFFFCDABFFF9CF
      B2FF451F04FF451F04FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000451F04FFFFD7
      BDFFFFF2EAFFFFF3EDFFFFC9A4FFFFBE91FFFFBE91FFFFBF92FFFFC094FFFFEA
      DBFFFFF9F6FFFCFBFB5C00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000451F04FFFFCF
      AEFFFFE8D9FFFFE7D7FFFBB888FFF9AB75FFF8AB74FFF9AC75FFFAAD76FFFDE3
      D0FFFCFCFC5C0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000451F04FF451F
      04FF451F04FF451F04FF451F04FF451F04FF451F04FF451F04FF451F04FFFAF8
      F738000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF00C003000000000000C003000000000000
      C003000000000000C003000000000000C003000000000000C003000000000000
      C003000000000000C003000000000000C003000000000000C003000000000000
      C003000000000000C003000000000000C003000000000000C003000000000000
      C007000000000000C00F00000000000000000000000000000000000000000000
      000000000000}
  end
  inherited Acao: TActionList
    Left = 505
    Top = 24
  end
  inherited cdsPadrao: TClientDataSet
    CommandText = 'SELECT * FROM SerContrato'
    Left = 968
    Top = 200
    object cdsPadraoidEmpresa: TIntegerField
      FieldName = 'idEmpresa'
    end
    object cdsPadraoidCadEmpresa: TSmallintField
      FieldName = 'idCadEmpresa'
    end
    object cdsPadraoidSerContrato: TIntegerField
      FieldName = 'idSerContrato'
      Required = True
    end
    object cdsPadraoidFornecedor: TIntegerField
      FieldName = 'idFornecedor'
      Required = True
    end
    object cdsPadraodtSerContrato: TSQLTimeStampField
      FieldName = 'dtSerContrato'
      Required = True
    end
    object cdsPadraoidSerTpContrato: TSmallintField
      FieldName = 'idSerTpContrato'
      Required = True
    end
    object cdsPadraodtVencimento: TSQLTimeStampField
      FieldName = 'dtVencimento'
    end
    object cdsPadraodiaBase: TByteField
      FieldName = 'diaBase'
    end
    object cdsPadraovlSerContrato: TFMTBCDField
      FieldName = 'vlSerContrato'
      Required = True
      Precision = 15
      Size = 2
    end
    object cdsPadraoidIndice: TSmallintField
      FieldName = 'idIndice'
      Required = True
    end
    object cdsPadraoidComissionado: TIntegerField
      FieldName = 'idComissionado'
    end
    object cdsPadraoprComissao: TFMTBCDField
      FieldName = 'prComissao'
      Precision = 4
      Size = 2
    end
    object cdsPadraovlComissao: TFMTBCDField
      FieldName = 'vlComissao'
      Precision = 19
      Size = 4
    end
    object cdsPadraogeraNFSe: TStringField
      FieldName = 'geraNFSe'
      Required = True
      FixedChar = True
      Size = 1
    end
    object cdsPadraoidServico: TIntegerField
      FieldName = 'idServico'
    end
    object cdsPadraogeraNFe: TStringField
      FieldName = 'geraNFe'
      Required = True
      FixedChar = True
      Size = 1
    end
    object cdsPadraoidProduto: TIntegerField
      FieldName = 'idProduto'
    end
    object cdsPadraoobsSerContrato: TStringField
      FieldName = 'obsSerContrato'
      Size = 500
    end
    object cdsPadraostSerContrato: TStringField
      FieldName = 'stSerContrato'
      Required = True
      Size = 15
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
    Left = 832
    Top = 80
  end
  inherited cdsLookup: TClientDataSet
    Left = 1056
    Top = 8
  end
  inherited dspLookup: TDataSetProvider
    Left = 992
    Top = 8
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
    CommandText = 'SELECT * FROM SerContrato'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmPadrao.dbConexao
    Left = 809
    Top = 200
  end
end
