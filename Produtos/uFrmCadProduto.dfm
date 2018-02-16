inherited FrmCadProduto: TFrmCadProduto
  Caption = 'Cadastro de Produtos'
  ClientHeight = 549
  ClientWidth = 1253
  Icon.Data = {
    0000010001001010000001002000680400001600000028000000100000002000
    0000010020000000000000040000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0003000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000004030202210F0E10552525288E47494DC5595D
    62E12B2A2CB611101275050304350000000D0000000000000000000000000000
    000002000008030000211F1F208D676D72FA8B9399FEAAB5BBFFCAD7DEFFDFEB
    EFFF86888BFF787879FE58595AFC232222B30200004E03000011020000010300
    000503000019030000395B6164C4A8B4BBFFB8C6CDFFC6D4DCFFDBEAF0FFEDF6
    F9FF909496FF8C8D8EFF7D7E7EFF595959E70200007303000031040000070100
    0001020000060300001062686BB8ACB9C0FFBCCAD2FFCAD9E1FFDFEDF4FFF0F7
    FAFF93979AFF8F9191FF808181FF606060E40300003403000015030000030000
    00000000000000000000636A6EB4AFBDC4FFC0CFD7FFCEDEE7FFE4F1F7FFF2F9
    FBFF979B9DFF939494FF838485FF646464E10100000100000000000000000000
    00000000000000000000646B6FB6AFBDC4FFC5D4DCFFD3E4EDFFE8F5FAFFF5FA
    FCFF999EA1FF909192FF868888FF676768E40000000000000000000000000000
    0000000000000000000061686BB9769AA7FF3E97B2FF7ABDD3FFECF8FDFFF6FB
    FDFF9DA1A4FF7B7D7FFF8A8C8CFF6A6A6BE60000000000000000000000000000
    0000000000000000000062676AC19CA9AEFF3CA0BDFFCAE2EDFFF0FCFEFFF8FC
    FDFF9FA3A7FF797A7DFF8E9090FF6D6E6EE80000000000000000000000000000
    0000000000000404040C7D8283DDB5C0C4FFB3CED9FFE2F5FCFFF0FAFBFFF3F6
    F7FFA0A5A9FF7C7E81FF919394FF707172EA0000000000000000000000000000
    00000000000000000000717A7FBEAAB6BCFFB3BFC5FFC8D5D9FFE8EEEFFFECEF
    F0FF9EADA6FF809294FF7A837FFF7A7E7DED0000000000000000000000000000
    00000000000000000000808A8FC5C8D8E0FFDBEDF4FFEFFDFDFFFDFFFFFFFCFE
    FFFFA0A8AAFF767A7DFF66696AFF767879EF0000000000000000000000000000
    00000000000000000000859096C7D4E6F0FFE7FAFEFFF9FFFFFFFFFFFFFFFDFF
    FFFFB0B7BAFFAAAEAFFF989B9CFF77797AF20000000000000000000000000000
    00000000000000000000818C90A9EEFBFDFFFCFEFFFFFEFFFFFFFFFFFFFFFBFB
    FBFFD0D4D6FFD7DEE1FFC1C8CAFF8A8F90DD0000000000000000000000000000
    000000000000000000000708080E3035374B363B3D55393D3F553B3F40563135
    3655484B4C55434748553D4041531415151E0000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    000000000000000000000000000000000000000000000000000000000000FF7F
    0000E0070000800000000000000000000000E0030000E0070000E0070000E007
    0000C0070000E0070000E0070000E0070000E0070000E0070000FFFF0000}
  ExplicitTop = -24
  ExplicitWidth = 1269
  ExplicitHeight = 587
  PixelsPerInch = 96
  TextHeight = 13
  inherited Bevel1: TBevel
    Top = 514
    Width = 1253
    ExplicitLeft = 104
    ExplicitTop = 520
    ExplicitWidth = 1253
  end
  object CLabel37: TCLabel [1]
    Left = 126
    Top = 195
    Width = 76
    Height = 13
    Alignment = taRightJustify
    Caption = '% Faturamento'
  end
  inherited PagAbas: TCPageControl
    Width = 1253
    Height = 514
    OnChange = PagAbasChange
    ExplicitWidth = 1253
    ExplicitHeight = 514
    inherited TabAbas: TTabSheet
      Caption = 'Lan'#231'amento dos Produtos'
      ExplicitLeft = 4
      ExplicitTop = 25
      ExplicitWidth = 1245
      ExplicitHeight = 485
      object CGroupBox1: TCGroupBox
        Left = 4
        Top = 0
        Width = 549
        Height = 381
        Caption = 'Dados Gerais'
        TabOrder = 0
        object CLabel2: TCLabel
          Left = 23
          Top = 46
          Width = 46
          Height = 13
          Alignment = taRightJustify
          Caption = 'Descri'#231#227'o'
        end
        object CLabel4: TCLabel
          Left = 407
          Top = 46
          Width = 44
          Height = 13
          Alignment = taRightJustify
          Caption = 'Cadastro'
        end
        object CLabel1: TCLabel
          Left = 36
          Top = 24
          Width = 33
          Height = 13
          Alignment = taRightJustify
          Caption = 'C'#243'digo'
        end
        object CLabel14: TCLabel
          Left = 384
          Top = 24
          Width = 31
          Height = 13
          Alignment = taRightJustify
          Caption = 'Status'
        end
        object CLabel3: TCLabel
          Left = 22
          Top = 90
          Width = 47
          Height = 13
          Alignment = taRightJustify
          Caption = 'Categoria'
        end
        object CLabel5: TCLabel
          Left = 35
          Top = 112
          Width = 34
          Height = 13
          Alignment = taRightJustify
          Caption = 'Medida'
        end
        object CLabel6: TCLabel
          Left = 40
          Top = 134
          Width = 29
          Height = 13
          Alignment = taRightJustify
          Caption = 'Grupo'
        end
        object CLabel7: TCLabel
          Left = 19
          Top = 156
          Width = 50
          Height = 13
          Alignment = taRightJustify
          Caption = 'Sub Grupo'
        end
        object CLabel8: TCLabel
          Left = 11
          Top = 318
          Width = 58
          Height = 13
          Alignment = taRightJustify
          Caption = 'Observa'#231#227'o'
        end
        object CLabel29: TCLabel
          Left = 40
          Top = 178
          Width = 29
          Height = 13
          Alignment = taRightJustify
          Caption = 'Indice'
        end
        object CLabel30: TCLabel
          Left = 34
          Top = 200
          Width = 35
          Height = 13
          Alignment = taRightJustify
          Caption = 'Cultura'
        end
        object CLabel31: TCLabel
          Left = 18
          Top = 222
          Width = 51
          Height = 13
          Alignment = taRightJustify
          Caption = 'Fabricante'
        end
        object CLabel32: TCLabel
          Left = 361
          Top = 222
          Width = 74
          Height = 13
          Alignment = taRightJustify
          Caption = 'C'#243'd.Fabricante'
        end
        object CLabel33: TCLabel
          Left = 24
          Top = 272
          Width = 45
          Height = 13
          Alignment = taRightJustify
          Caption = 'Aplica'#231#227'o'
        end
        object CLabel36: TCLabel
          Left = 442
          Top = 90
          Width = 20
          Height = 13
          Alignment = taRightJustify
          Caption = 'Ncm'
        end
        object CLabel41: TCLabel
          Left = 41
          Top = 247
          Width = 28
          Height = 13
          Alignment = taRightJustify
          Caption = 'Sacas'
        end
        object CLabel42: TCLabel
          Left = 152
          Top = 247
          Width = 38
          Height = 13
          Alignment = taRightJustify
          Caption = 'Arrobas'
        end
        object CLabel46: TCLabel
          Left = 396
          Top = 247
          Width = 39
          Height = 13
          Alignment = taRightJustify
          Caption = 'Loca'#231#227'o'
        end
        object CLabel49: TCLabel
          Left = 35
          Top = 68
          Width = 34
          Height = 13
          Alignment = taRightJustify
          Caption = 'Origem'
        end
        object DBEdescProduto: TCDBEdit
          Left = 75
          Top = 43
          Width = 326
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'descProduto'
          DataSource = dsPadrao
          TabOrder = 2
          DecimalControl = True
          KeyMode = kmUSUpper
        end
        object DBEdtCadastro: TCDBEdit
          Left = 457
          Top = 43
          Width = 82
          Height = 19
          TabStop = False
          BevelKind = bkTile
          BorderStyle = bsNone
          Color = 14149350
          DataField = 'dtCadastro'
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
          KeyMode = kmDate
        end
        object DBEidProduto: TCDBEdit
          Left = 75
          Top = 21
          Width = 71
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'idProduto'
          DataSource = dsPadrao
          TabOrder = 0
          OnExit = DBEidProdutoExit
          OnKeyDown = DBEidProdutoKeyDown
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEstProduto: TCDBEdit
          Left = 421
          Top = 21
          Width = 118
          Height = 19
          TabStop = False
          BevelKind = bkTile
          BorderStyle = bsNone
          Color = 14149350
          DataField = 'stProduto'
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
        object DBEidProdCategoria: TCDBEdit
          Left = 75
          Top = 87
          Width = 55
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'idProdCategoria'
          DataSource = dsPadrao
          TabOrder = 6
          Find = FindCategoria
          DecimalControl = True
          KeyMode = kmNormal
        end
        object LookCategoria: TCLookUp
          Left = 136
          Top = 87
          Width = 209
          Height = 19
          Alignment = taLeftJustify
          BevelInner = bvSpace
          BevelOuter = bvLowered
          Color = 14149350
          ParentBackground = False
          TabOrder = 7
          Key.Strings = (
            'idProdCategoria')
          LookUpKey.Strings = (
            'idProdCategoria')
          ClientDataSet = cdsLookup
          DataSource = dsPadrao
          ValidaCampoObrigatorio = True
          CampoObrigatorio = True
          LookUpTable = 'ProdCategoria'
          ReturnField = 'descProdCategoria'
        end
        object DBEidProdMedida: TCDBEdit
          Left = 75
          Top = 109
          Width = 55
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'idProdMedida'
          DataSource = dsPadrao
          TabOrder = 10
          Find = FindMedida
          DecimalControl = True
          KeyMode = kmNormal
        end
        object LookMedida: TCLookUp
          Left = 136
          Top = 109
          Width = 184
          Height = 19
          Alignment = taLeftJustify
          BevelInner = bvSpace
          BevelOuter = bvLowered
          Color = 14149350
          ParentBackground = False
          TabOrder = 11
          Key.Strings = (
            'idProdMedida')
          LookUpKey.Strings = (
            'idProdMedida')
          ClientDataSet = cdsLookup
          DataSource = dsPadrao
          ValidaCampoObrigatorio = True
          CampoObrigatorio = True
          LookUpTable = 'ProdMedida'
          ReturnField = 'descProdMedida'
        end
        object DBEidProdGrupo: TCDBEdit
          Left = 75
          Top = 131
          Width = 55
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'idProdGrupo'
          DataSource = dsPadrao
          TabOrder = 14
          Find = FindGrupo
          DecimalControl = True
          KeyMode = kmNormal
        end
        object LookGrupo: TCLookUp
          Left = 136
          Top = 131
          Width = 248
          Height = 19
          Alignment = taLeftJustify
          BevelInner = bvSpace
          BevelOuter = bvLowered
          Color = 14149350
          ParentBackground = False
          TabOrder = 15
          Key.Strings = (
            'idProdGrupo')
          LookUpKey.Strings = (
            'idProdGrupo')
          ClientDataSet = cdsLookup
          DataSource = dsPadrao
          ValidaCampoObrigatorio = True
          CampoObrigatorio = True
          LookUpTable = 'ProdGrupo'
          ReturnField = 'descProdGrupo'
        end
        object DBEidProdSubGrupo: TCDBEdit
          Left = 75
          Top = 153
          Width = 55
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'idProdSubGrupo'
          DataSource = dsPadrao
          TabOrder = 17
          Find = FindSubGrupo
          DecimalControl = True
          KeyMode = kmNormal
        end
        object LookSubGrupo: TCLookUp
          Left = 136
          Top = 153
          Width = 248
          Height = 19
          Alignment = taLeftJustify
          BevelInner = bvSpace
          BevelOuter = bvLowered
          Color = 14149350
          ParentBackground = False
          TabOrder = 18
          Key.Strings = (
            'idProdSubGrupo')
          LookUpKey.Strings = (
            'idProdSubGrupo')
          ClientDataSet = cdsLookup
          DataSource = dsPadrao
          ValidaCampoObrigatorio = False
          CampoObrigatorio = False
          LookUpTable = 'ProdSubGrupo'
          ReturnField = 'descProdSubGrupo'
        end
        object DBMobsProduto: TCDBMemo
          Left = 75
          Top = 315
          Width = 464
          Height = 52
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'obsProduto'
          DataSource = dsPadrao
          ScrollBars = ssVertical
          TabOrder = 33
          KeyMemo = kmmNormal
        end
        object BtnCadProdMedida: TCBitBtn
          Left = 390
          Top = 109
          Width = 149
          Height = 19
          Action = frmPrincipal.actCadProdMedida
          Caption = 'Unidade de Medida'
          TabOrder = 13
          TabStop = False
        end
        object BtnCadProdSubGrupo: TCBitBtn
          Left = 390
          Top = 153
          Width = 149
          Height = 19
          Action = frmPrincipal.actCadProdSubGrupo
          Caption = 'Sub-Grupo de Produtos'
          TabOrder = 19
          TabStop = False
        end
        object BtnCadProdGrupo: TCBitBtn
          Left = 390
          Top = 131
          Width = 149
          Height = 19
          Action = frmPrincipal.actCadProdGrupo
          Caption = 'Grupo de Produto'
          TabOrder = 16
          TabStop = False
        end
        object LookAbreviacao: TCLookUp
          Left = 326
          Top = 109
          Width = 58
          Height = 19
          Alignment = taLeftJustify
          BevelInner = bvSpace
          BevelOuter = bvLowered
          Color = 14149350
          ParentBackground = False
          TabOrder = 12
          Key.Strings = (
            'idProdMedida')
          LookUpKey.Strings = (
            'idProdMedida')
          ClientDataSet = cdsLookup
          DataSource = dsPadrao
          ValidaCampoObrigatorio = True
          CampoObrigatorio = True
          LookUpTable = 'ProdMedida'
          ReturnField = 'descAbreviada'
        end
        object DBEidIndice: TCDBEdit
          Left = 75
          Top = 175
          Width = 55
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'idIndice'
          DataSource = dsPadrao
          TabOrder = 20
          Find = FindIndice
          DecimalControl = True
          KeyMode = kmNormal
        end
        object LookIndice: TCLookUp
          Left = 136
          Top = 175
          Width = 248
          Height = 19
          Alignment = taLeftJustify
          BevelInner = bvSpace
          BevelOuter = bvLowered
          Color = 14149350
          ParentBackground = False
          TabOrder = 21
          Key.Strings = (
            'idIndice')
          LookUpKey.Strings = (
            'idIndice')
          ClientDataSet = cdsLookup
          DataSource = dsPadrao
          ValidaCampoObrigatorio = False
          CampoObrigatorio = False
          LookUpTable = 'Indice'
          ReturnField = 'descIndice'
        end
        object BtnIndice: TCBitBtn
          Left = 390
          Top = 175
          Width = 149
          Height = 19
          Action = frmPrincipal.actIndice
          Caption = #205'ndices'
          TabOrder = 22
          TabStop = False
        end
        object DBEidCultura: TCDBEdit
          Left = 75
          Top = 197
          Width = 55
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'idCultura'
          DataSource = dsPadrao
          TabOrder = 23
          Find = FindCultura
          DecimalControl = True
          KeyMode = kmNormal
        end
        object LookCultura: TCLookUp
          Left = 136
          Top = 197
          Width = 248
          Height = 19
          Alignment = taLeftJustify
          BevelInner = bvSpace
          BevelOuter = bvLowered
          Color = 14149350
          ParentBackground = False
          TabOrder = 24
          Key.Strings = (
            'idCultura')
          LookUpKey.Strings = (
            'idCultura')
          AlternateSQL.Strings = (
            'Select descCultura From Cultura Where idCultura = ?')
          ClientDataSet = cdsLookup
          DataSource = dsPadrao
          ValidaCampoObrigatorio = True
          CampoObrigatorio = True
          LookUpTable = 'Cultura'
          ReturnField = 'descCultura'
        end
        object BtnCadCultura: TCBitBtn
          Left = 390
          Top = 197
          Width = 149
          Height = 19
          Action = frmPrincipal.actCadCultura
          Caption = 'Cultura'
          TabOrder = 25
          TabStop = False
        end
        object LookFabricante: TCLookUp
          Left = 136
          Top = 219
          Width = 217
          Height = 19
          Alignment = taLeftJustify
          BevelInner = bvSpace
          BevelOuter = bvLowered
          Color = 14149350
          ParentBackground = False
          TabOrder = 27
          Key.Strings = (
            'idFabricante')
          LookUpKey.Strings = (
            'idFabricante')
          ClientDataSet = cdsLookup
          DataSource = dsPadrao
          ValidaCampoObrigatorio = True
          CampoObrigatorio = True
          LookUpTable = 'Fabricante'
          ReturnField = 'descFabricante'
        end
        object DBEidFabricante: TCDBEdit
          Left = 75
          Top = 219
          Width = 55
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'idFabricante'
          DataSource = dsPadrao
          TabOrder = 26
          Find = dmFind.FindFabricante
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEcodFabricante: TCDBEdit
          Left = 441
          Top = 219
          Width = 98
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'codFabricante'
          DataSource = dsPadrao
          TabOrder = 28
          DecimalControl = True
          KeyMode = kmUSUpper
        end
        object DBMdescAplicacao: TCDBMemo
          Left = 75
          Top = 269
          Width = 464
          Height = 43
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'descAplicacao'
          DataSource = dsPadrao
          ScrollBars = ssVertical
          TabOrder = 32
          KeyMemo = kmmNormal
        end
        object DBENcm: TCDBEdit
          Left = 468
          Top = 87
          Width = 71
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'Ncm'
          DataSource = dsPadrao
          TabOrder = 9
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEqtSacas: TCDBEdit
          Left = 75
          Top = 244
          Width = 71
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'qtSacas'
          DataSource = dsPadrao
          TabOrder = 29
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEqtArrobas: TCDBEdit
          Left = 196
          Top = 244
          Width = 71
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'qtArrobas'
          DataSource = dsPadrao
          TabOrder = 30
          DecimalControl = True
          KeyMode = kmNormal
        end
        object chkCombustivel: TCDBCheckBox
          Left = 273
          Top = 246
          Width = 96
          Height = 17
          Caption = 'Combustivel?'
          DataField = 'Combustivel'
          DataSource = dsPadrao
          TabOrder = 31
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
        object DBElocacao: TCDBEdit
          Left = 441
          Top = 244
          Width = 98
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'locacao'
          DataSource = dsPadrao
          TabOrder = 34
          DecimalControl = True
          KeyMode = kmUSUpper
        end
        object DBCKproducao: TCDBCheckBox
          Left = 351
          Top = 89
          Width = 74
          Height = 17
          Hint = 'Marca se '#233' um item de produ'#231#227'o pr'#243'pria'
          Caption = 'Produ'#231#227'o?'
          DataField = 'producao'
          DataSource = dsPadrao
          TabOrder = 8
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
        object DBEidProdOrigem: TCDBEdit
          Left = 75
          Top = 65
          Width = 55
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'idProdOrigem'
          DataSource = dsPadrao
          TabOrder = 4
          Find = dmFind.FindProdOrigem
          DecimalControl = True
          KeyMode = kmNormal
        end
        object LookOrigem: TCLookUp
          Left = 136
          Top = 65
          Width = 209
          Height = 19
          Alignment = taLeftJustify
          BevelInner = bvSpace
          BevelOuter = bvLowered
          Color = 14149350
          ParentBackground = False
          TabOrder = 5
          Key.Strings = (
            'idProdOrigem')
          LookUpKey.Strings = (
            'idProdOrigem')
          ClientDataSet = cdsLookup
          DataSource = dsPadrao
          ValidaCampoObrigatorio = True
          CampoObrigatorio = True
          LookUpTable = 'ProdOrigem'
          ReturnField = 'descProdOrigem'
        end
      end
    end
    object TabSimilar: TTabSheet
      Caption = 'Similares'
      ImageIndex = 9
      object CGroupBox13: TCGroupBox
        Left = 3
        Top = 3
        Width = 406
        Height = 48
        Caption = 'Inclus'#227'o dos Produtos Similares'
        TabOrder = 0
        object CLabel35: TCLabel
          Left = 18
          Top = 23
          Width = 38
          Height = 13
          Alignment = taRightJustify
          Caption = 'Produto'
        end
        object LookProduto: TCLookUp
          Left = 121
          Top = 20
          Width = 279
          Height = 19
          Alignment = taLeftJustify
          BevelInner = bvSpace
          BevelOuter = bvLowered
          Color = 14149350
          ParentBackground = False
          TabOrder = 1
          Key.Strings = (
            'idProdutoSimilar')
          LookUpKey.Strings = (
            'idProduto')
          ClientDataSet = cdsLookup
          DataSource = dsProdutoSimilar
          ValidaCampoObrigatorio = False
          CampoObrigatorio = True
          LookUpTable = 'Produto'
          ReturnField = 'descProduto'
        end
        object DBEidProdutoSimilar: TCDBEdit
          Left = 62
          Top = 20
          Width = 53
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'idProdutoSimilar'
          DataSource = dsProdutoSimilar
          TabOrder = 0
          OnExit = DBEidProdutoSimilarExit
          Find = dmFind.FindProduto
          DecimalControl = True
          KeyMode = kmNormal
        end
      end
      object CGroupBox14: TCGroupBox
        Left = 415
        Top = 3
        Width = 92
        Height = 332
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
          Caption = '&Cancelar'
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
          Top = 73
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
          TabOrder = 2
          OnClick = BtnAdicionarProdClick
        end
        object BtnNovoProd: TCBitBtn
          Left = 9
          Top = 104
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
          TabOrder = 3
          OnClick = BtnAdicionarProdClick
        end
      end
      object CGroupBox15: TCGroupBox
        Left = 3
        Top = 57
        Width = 406
        Height = 278
        TabOrder = 2
        object GridProdutoSimilar: TCDBGrid
          Left = 7
          Top = 14
          Width = 393
          Height = 251
          TabStop = False
          DataSource = dsProdutoSimilar
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
              FieldName = 'idProdutoSimilar'
              Title.Caption = 'Produto'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'descProduto'
              Title.Caption = 'Descri'#231#227'o'
              Width = 300
              Visible = True
            end>
        end
      end
    end
    object TabFornecedor: TTabSheet
      Caption = 'Fornecedores'
      ImageIndex = 5
      object CGroupBox16: TCGroupBox
        Left = 3
        Top = 3
        Width = 406
        Height = 67
        Caption = 'Inclus'#227'o dos Fornecedores'
        TabOrder = 0
        object CLabel34: TCLabel
          Left = 9
          Top = 23
          Width = 55
          Height = 13
          Alignment = taRightJustify
          Caption = 'Fornecedor'
        end
        object CLabel55: TCLabel
          Left = 8
          Top = 44
          Width = 56
          Height = 13
          Alignment = taRightJustify
          Caption = 'C'#243'digo For.'
        end
        object LookFornecedor: TCLookUp
          Left = 129
          Top = 20
          Width = 271
          Height = 19
          Alignment = taLeftJustify
          BevelInner = bvSpace
          BevelOuter = bvLowered
          Color = 14149350
          ParentBackground = False
          TabOrder = 1
          Key.Strings = (
            'idFornecedor')
          LookUpKey.Strings = (
            'idFornecedor')
          ClientDataSet = cdsLookup
          DataSource = dsFornecedor
          ValidaCampoObrigatorio = False
          CampoObrigatorio = True
          LookUpTable = 'vCadFornecedorContabil'
          ReturnField = 'descCadFornecedor'
        end
        object DBEidFornecedor: TCDBEdit
          Left = 70
          Top = 20
          Width = 53
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'idFornecedor'
          DataSource = dsFornecedor
          TabOrder = 0
          OnExit = DBEidFornecedorExit
          Find = dmFind.FindFornecedor
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEcodFornecedor: TCDBEdit
          Left = 70
          Top = 42
          Width = 168
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'codFornecedor'
          DataSource = dsFornecedor
          TabOrder = 2
          DecimalControl = True
          KeyMode = kmUSUpper
        end
      end
      object CGroupBox17: TCGroupBox
        Left = 415
        Top = 3
        Width = 92
        Height = 327
        TabOrder = 1
        object BtnAdicionarFor: TCBitBtn
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
          OnClick = BtnAdicionarForClick
        end
        object BtnCancelarFor: TCBitBtn
          Left = 9
          Top = 42
          Width = 75
          Height = 25
          Caption = '&Cancelar'
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
          OnClick = BtnAdicionarForClick
        end
        object BtnRetirarFor: TCBitBtn
          Left = 9
          Top = 73
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
          TabOrder = 2
          OnClick = BtnAdicionarForClick
        end
        object BtnNovoFor: TCBitBtn
          Left = 9
          Top = 104
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
          TabOrder = 3
          OnClick = BtnAdicionarForClick
        end
      end
      object CGroupBox18: TCGroupBox
        Left = 3
        Top = 76
        Width = 406
        Height = 254
        TabOrder = 2
        object CDBGrid3: TCDBGrid
          Left = 7
          Top = 14
          Width = 393
          Height = 227
          TabStop = False
          DataSource = dsFornecedor
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
              FieldName = 'idFornecedor'
              Title.Caption = 'C'#243'digo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'descFornecedor'
              Title.Caption = 'Fornecedor'
              Width = 300
              Visible = True
            end>
        end
      end
    end
    object TabImpostos: TTabSheet
      Caption = '&Impostos'
      ImageIndex = 1
      object CGroupBox2: TCGroupBox
        Left = 3
        Top = 3
        Width = 600
        Height = 47
        Caption = 'Dados Gerais'
        TabOrder = 0
        object CLabel11: TCLabel
          Left = 6
          Top = 22
          Width = 44
          Height = 13
          Alignment = taRightJustify
          Caption = 'Natureza'
        end
        object CLabel12: TCLabel
          Left = 430
          Top = 22
          Width = 28
          Height = 13
          Alignment = taRightJustify
          Caption = '% Iss'
        end
        object CLabel13: TCLabel
          Left = 512
          Top = 22
          Width = 34
          Height = 13
          Alignment = taRightJustify
          Caption = '% Inss'
        end
        object DBEidNatureza: TCDBEdit
          Left = 56
          Top = 19
          Width = 46
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'idNatureza'
          DataSource = dsProdImposto
          TabOrder = 0
          OnEnter = DBEidNaturezaOEnter
          OnExit = DBEidNaturezaExit
          Find = FindNatureza
          DecimalControl = True
          KeyMode = kmNormal
        end
        object LookNatureza: TCLookUp
          Left = 108
          Top = 19
          Width = 246
          Height = 19
          Alignment = taLeftJustify
          BevelInner = bvSpace
          BevelOuter = bvLowered
          Color = 14149350
          ParentBackground = False
          TabOrder = 1
          Key.Strings = (
            'idNatureza')
          LookUpKey.Strings = (
            'idNatureza')
          AlternateSQL.Strings = (
            'SELECT descNatureza FROM vNatureza WHERE idNatureza = ?')
          ClientDataSet = cdsLookup
          DataSource = dsProdImposto
          ValidaCampoObrigatorio = False
          CampoObrigatorio = True
          LookUpTable = 'vNatureza'
          ReturnField = 'descNatureza'
        end
        object LookIdCfop: TCLookUp
          Left = 360
          Top = 19
          Width = 64
          Height = 19
          Alignment = taLeftJustify
          BevelInner = bvSpace
          BevelOuter = bvLowered
          Color = 14149350
          ParentBackground = False
          TabOrder = 2
          Key.Strings = (
            'idNatureza')
          LookUpKey.Strings = (
            'idNatureza')
          AlternateSQL.Strings = (
            'SELECT idCfop FROM vNatureza WHERE idNatureza = ?')
          ClientDataSet = cdsLookup
          DataSource = dsProdImposto
          ValidaCampoObrigatorio = False
          CampoObrigatorio = True
          LookUpTable = 'vNatureza'
          ReturnField = 'idCfop'
        end
        object DBEprIss: TCDBEdit
          Left = 464
          Top = 19
          Width = 40
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'prIss'
          DataSource = dsProdImposto
          TabOrder = 3
          Find = FindNatureza
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEprInss: TCDBEdit
          Left = 552
          Top = 19
          Width = 40
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'prInss'
          DataSource = dsProdImposto
          TabOrder = 4
          Find = FindNatureza
          DecimalControl = True
          KeyMode = kmNormal
        end
      end
      object CGroupBox3: TCGroupBox
        Left = 3
        Top = 56
        Width = 622
        Height = 241
        Caption = 'Dados do Icms'
        TabOrder = 1
        object CLabel17: TCLabel
          Left = 7
          Top = 84
          Width = 56
          Height = 13
          Alignment = taRightJustify
          Caption = '% Redu'#231#227'o'
        end
        object CLabel18: TCLabel
          Left = 121
          Top = 84
          Width = 36
          Height = 13
          Alignment = taRightJustify
          Caption = '% Icms'
        end
        object CLabel15: TCLabel
          Left = 13
          Top = 18
          Width = 50
          Height = 13
          Alignment = taRightJustify
          Caption = 'UF Origem'
        end
        object CLabel16: TCLabel
          Left = 318
          Top = 18
          Width = 52
          Height = 13
          Alignment = taRightJustify
          Caption = 'UF Destino'
        end
        object CLabel9: TCLabel
          Left = 12
          Top = 40
          Width = 51
          Height = 13
          Alignment = taRightJustify
          Caption = 'Tributa'#231#227'o'
        end
        object CLabel25: TCLabel
          Left = 299
          Top = 84
          Width = 28
          Height = 13
          Alignment = taRightJustify
          Caption = 'Pauta'
        end
        object CLabel26: TCLabel
          Left = 215
          Top = 84
          Width = 26
          Height = 13
          Alignment = taRightJustify
          Caption = '% Ipi'
        end
        object CLabel39: TCLabel
          Left = 504
          Top = 84
          Width = 44
          Height = 13
          Alignment = taRightJustify
          Caption = '% Cofins'
        end
        object CLabel38: TCLabel
          Left = 416
          Top = 84
          Width = 27
          Height = 13
          Alignment = taRightJustify
          Caption = '% Pis'
        end
        object CLabel47: TCLabel
          Left = 28
          Top = 62
          Width = 35
          Height = 13
          Alignment = taRightJustify
          Caption = 'CST Pis'
        end
        object CLabel48: TCLabel
          Left = 318
          Top = 62
          Width = 52
          Height = 13
          Alignment = taRightJustify
          Caption = 'CST Cofins'
        end
        object CLabel92: TCLabel
          Left = 325
          Top = 40
          Width = 48
          Height = 13
          Alignment = taRightJustify
          Caption = 'Modal. BC'
        end
        object CLabel50: TCLabel
          Left = 24
          Top = 154
          Width = 39
          Height = 13
          Alignment = taRightJustify
          Caption = 'Obs. NF'
        end
        object CLabel53: TCLabel
          Left = 315
          Top = 129
          Width = 93
          Height = 13
          Alignment = taRightJustify
          Caption = '% Cr'#233'd. Presumido'
        end
        object CLabel54: TCLabel
          Left = 466
          Top = 129
          Width = 96
          Height = 13
          Alignment = taRightJustify
          Caption = '% Cr'#233'd. Outorgado'
        end
        object DBEprReducao: TCDBEdit
          Left = 69
          Top = 81
          Width = 44
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'prReducao'
          DataSource = dsProdImposto
          TabOrder = 12
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEprIcms: TCDBEdit
          Left = 163
          Top = 81
          Width = 46
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'prIcms'
          DataSource = dsProdImposto
          TabOrder = 13
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEidEstadoOri: TCDBEdit
          Left = 69
          Top = 15
          Width = 44
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'idEstadoOri'
          DataSource = dsProdImposto
          TabOrder = 0
          Find = FindEstado
          DecimalControl = True
          KeyMode = kmUSUpper
        end
        object LookEstadoOri: TCLookUp
          Left = 119
          Top = 15
          Width = 193
          Height = 19
          Alignment = taLeftJustify
          BevelInner = bvSpace
          BevelOuter = bvLowered
          Color = 14149350
          ParentBackground = False
          TabOrder = 1
          Key.Strings = (
            'idEstadoOri')
          LookUpKey.Strings = (
            'idEstado')
          ClientDataSet = cdsLookup
          DataSource = dsProdImposto
          ValidaCampoObrigatorio = False
          CampoObrigatorio = True
          LookUpTable = 'Estado'
          ReturnField = 'descEstado'
        end
        object DBEidEstadoDes: TCDBEdit
          Left = 376
          Top = 15
          Width = 44
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'idEstadoDes'
          DataSource = dsProdImposto
          TabOrder = 2
          OnExit = DBEidEstadoDesExit
          Find = FindEstado
          DecimalControl = True
          KeyMode = kmUSUpper
        end
        object LookEstadoDes: TCLookUp
          Left = 426
          Top = 15
          Width = 188
          Height = 19
          Alignment = taLeftJustify
          BevelInner = bvSpace
          BevelOuter = bvLowered
          Color = 14149350
          ParentBackground = False
          TabOrder = 3
          Key.Strings = (
            'idEstadoDes')
          LookUpKey.Strings = (
            'idEstado')
          ClientDataSet = cdsLookup
          DataSource = dsProdImposto
          ValidaCampoObrigatorio = False
          CampoObrigatorio = True
          LookUpTable = 'Estado'
          ReturnField = 'descEstado'
        end
        object DBEidStTributaria: TCDBEdit
          Left = 69
          Top = 37
          Width = 44
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'idStTributaria'
          DataSource = dsProdImposto
          TabOrder = 4
          Find = FindTributacao
          DecimalControl = True
          KeyMode = kmNormal
        end
        object LookTributacao: TCLookUp
          Left = 119
          Top = 37
          Width = 193
          Height = 19
          Alignment = taLeftJustify
          BevelInner = bvSpace
          BevelOuter = bvLowered
          Color = 14149350
          ParentBackground = False
          TabOrder = 5
          Key.Strings = (
            'idStTributaria')
          LookUpKey.Strings = (
            'idStTributaria')
          ClientDataSet = cdsLookup
          DataSource = dsProdImposto
          ValidaCampoObrigatorio = True
          CampoObrigatorio = True
          LookUpTable = 'StTributaria'
          ReturnField = 'descStTributaria'
        end
        object DBEvlPauta: TCDBEdit
          Left = 333
          Top = 81
          Width = 77
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'vlPauta'
          DataSource = dsProdImposto
          TabOrder = 15
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEprIpi: TCDBEdit
          Left = 247
          Top = 81
          Width = 46
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'prIpi'
          DataSource = dsProdImposto
          TabOrder = 14
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEprCofins: TCDBEdit
          Left = 556
          Top = 81
          Width = 58
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'prCofins'
          DataSource = dsProdImposto
          TabOrder = 17
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEprPis: TCDBEdit
          Left = 449
          Top = 81
          Width = 44
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'prPis'
          DataSource = dsProdImposto
          TabOrder = 16
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEidCSTPis: TCDBEdit
          Left = 69
          Top = 59
          Width = 44
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'idCSTPis'
          DataSource = dsProdImposto
          TabOrder = 8
          Find = dmFind.FindCSTPisCofins
          DecimalControl = True
          KeyMode = kmNormal
        end
        object LookPis: TCLookUp
          Left = 119
          Top = 59
          Width = 193
          Height = 19
          Alignment = taLeftJustify
          BevelInner = bvSpace
          BevelOuter = bvLowered
          Color = 14149350
          ParentBackground = False
          TabOrder = 9
          Key.Strings = (
            'idCSTPis')
          LookUpKey.Strings = (
            'idCST')
          ClientDataSet = cdsLookup
          DataSource = dsProdImposto
          ValidaCampoObrigatorio = True
          CampoObrigatorio = True
          LookUpTable = 'CSTPisCofins'
          ReturnField = 'descCST'
        end
        object DBEidCSTCofins: TCDBEdit
          Left = 376
          Top = 59
          Width = 44
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'idCSTCofins'
          DataSource = dsProdImposto
          TabOrder = 10
          Find = dmFind.FindCSTPisCofins
          DecimalControl = True
          KeyMode = kmNormal
        end
        object CLookUp3: TCLookUp
          Left = 426
          Top = 59
          Width = 188
          Height = 19
          Alignment = taLeftJustify
          BevelInner = bvSpace
          BevelOuter = bvLowered
          Color = 14149350
          ParentBackground = False
          TabOrder = 11
          Key.Strings = (
            'idCSTCofins')
          LookUpKey.Strings = (
            'idCST')
          ClientDataSet = cdsLookup
          DataSource = dsProdImposto
          ValidaCampoObrigatorio = True
          CampoObrigatorio = True
          LookUpTable = 'CSTPisCofins'
          ReturnField = 'descCST'
        end
        object DBEidModBC: TCDBEdit
          Left = 376
          Top = 37
          Width = 44
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'idModBC'
          DataSource = dsProdImposto
          TabOrder = 6
          Find = dmFind.FindModBC
          DecimalControl = True
          KeyMode = kmNormal
        end
        object CLookUp8: TCLookUp
          Left = 426
          Top = 37
          Width = 188
          Height = 19
          Alignment = taLeftJustify
          BevelInner = bvSpace
          BevelOuter = bvLowered
          Color = 14149350
          ParentBackground = False
          TabOrder = 7
          Key.Strings = (
            'idModBC')
          LookUpKey.Strings = (
            'idModBC')
          ClientDataSet = cdsLookup
          DataSource = dsProdImposto
          ValidaCampoObrigatorio = True
          CampoObrigatorio = True
          LookUpTable = 'ModBC'
          ReturnField = 'descModBC'
        end
        object DBMobsNF: TCDBMemo
          Left = 69
          Top = 151
          Width = 545
          Height = 83
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'obsNF'
          DataSource = dsProdImposto
          ScrollBars = ssVertical
          TabOrder = 21
          KeyMemo = kmmNormal
        end
        object DBRGtpCredito: TCDBRadioGroup
          Left = 13
          Top = 106
          Width = 296
          Height = 39
          Caption = 'Tipo de Cr'#233'dito'
          Columns = 3
          DataField = 'tpCredito'
          DataSource = dsProdImposto
          Items.Strings = (
            'Presumido'
            'Outorgado'
            'Nenhum')
          TabOrder = 18
          Values.Strings = (
            'P'
            'O'
            'N')
          OnEnter = DBRGtpCreditoEnter
          OnExit = DBRGtpCreditoExit
        end
        object DBEprCredPresumido: TCDBEdit
          Left = 414
          Top = 126
          Width = 46
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'prCredPresumido'
          DataSource = dsProdImposto
          TabOrder = 19
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEprCredOutorgado: TCDBEdit
          Left = 568
          Top = 126
          Width = 46
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'prCredOutorgado'
          DataSource = dsProdImposto
          TabOrder = 20
          DecimalControl = True
          KeyMode = kmNormal
        end
      end
      object CGroupBox4: TCGroupBox
        Left = 3
        Top = 303
        Width = 622
        Height = 160
        TabOrder = 3
        object DBGrid: TCDBGrid
          Left = 8
          Top = 11
          Width = 606
          Height = 143
          TabStop = False
          DataSource = dsProdImposto
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
              FieldName = 'idNatureza'
              Title.Caption = 'Natur.'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'idEstadoOri'
              Title.Caption = 'Orig.'
              Width = 35
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'idEstadoDes'
              Title.Caption = 'Dest.'
              Width = 35
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'idStTributaria'
              Title.Caption = 'St.'
              Width = 25
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'prReducao'
              Title.Caption = '% Red.'
              Width = 45
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'prIcms'
              Title.Caption = '% Icms'
              Width = 45
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'prIss'
              Title.Caption = '% Iss'
              Width = 45
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'prInss'
              Title.Caption = '% Inss'
              Width = 45
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'vlPauta'
              Title.Caption = 'Vl. Pauta'
              Width = 80
              Visible = True
            end>
        end
      end
      object CGroupBox5: TCGroupBox
        Left = 631
        Top = 58
        Width = 92
        Height = 405
        TabOrder = 2
        object BtnSalvarImp: TCBitBtn
          Left = 9
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
          OnClick = BtnSalvarImpClick
        end
        object BtnCancelarImp: TCBitBtn
          Left = 9
          Top = 42
          Width = 75
          Height = 25
          Caption = '&Cancelar'
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
          OnClick = BtnSalvarImpClick
        end
        object BtnExcluirImp: TCBitBtn
          Left = 9
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
          OnClick = BtnSalvarImpClick
        end
        object BtnNovoImp: TCBitBtn
          Left = 9
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
          OnClick = BtnSalvarImpClick
        end
      end
    end
    object TabOutros: TTabSheet
      Caption = 'Outros Impostos'
      ImageIndex = 2
      object CGroupBox6: TCGroupBox
        Left = 3
        Top = 3
        Width = 584
        Height = 47
        Caption = 'Dados Gerais'
        TabOrder = 0
        object CLabel10: TCLabel
          Left = 6
          Top = 22
          Width = 44
          Height = 13
          Alignment = taRightJustify
          Caption = 'Natureza'
        end
        object DBEidNaturezaO: TCDBEdit
          Left = 56
          Top = 19
          Width = 46
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'idNatureza'
          DataSource = dsProdImpostoOutro
          TabOrder = 0
          OnEnter = DBEidNaturezaOEnter
          OnExit = DBEidNaturezaOExit
          Find = FindNatureza
          DecimalControl = True
          KeyMode = kmNormal
        end
        object LookNaturezaO: TCLookUp
          Left = 108
          Top = 19
          Width = 246
          Height = 19
          Alignment = taLeftJustify
          BevelInner = bvSpace
          BevelOuter = bvLowered
          Color = 14149350
          ParentBackground = False
          TabOrder = 1
          Key.Strings = (
            'idNatureza')
          LookUpKey.Strings = (
            'idNatureza')
          AlternateSQL.Strings = (
            
              'SELECT descNatureza FROM vNatureza WHERE tpNatureza = '#39'SAIDA'#39' AN' +
              'D idNatureza = ?')
          ClientDataSet = cdsLookup
          DataSource = dsProdImpostoOutro
          ValidaCampoObrigatorio = False
          CampoObrigatorio = True
          LookUpTable = 'vNatureza'
          ReturnField = 'descNatureza'
        end
        object LookCfopO: TCLookUp
          Left = 360
          Top = 19
          Width = 64
          Height = 19
          Alignment = taLeftJustify
          BevelInner = bvSpace
          BevelOuter = bvLowered
          Color = 14149350
          ParentBackground = False
          TabOrder = 2
          Key.Strings = (
            'idNatureza')
          LookUpKey.Strings = (
            'idNatureza')
          AlternateSQL.Strings = (
            
              'SELECT idCfop FROM vNatureza WHERE tpNatureza = '#39'SAIDA'#39' AND idNa' +
              'tureza = ?')
          ClientDataSet = cdsLookup
          DataSource = dsProdImpostoOutro
          ValidaCampoObrigatorio = False
          CampoObrigatorio = True
          LookUpTable = 'vNatureza'
          ReturnField = 'idCfop'
        end
      end
      object CGroupBox8: TCGroupBox
        Left = 3
        Top = 193
        Width = 486
        Height = 184
        TabOrder = 3
        object CDBGrid1: TCDBGrid
          Left = 8
          Top = 11
          Width = 466
          Height = 163
          TabStop = False
          DataSource = dsProdImpostoOutro
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
              FieldName = 'descImpostoOutro'
              Title.Caption = 'Descri'#231#227'o do Imposto'
              Width = 64
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'idEstadoOri'
              Title.Caption = 'Orig.'
              Width = 40
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'idEstadoDes'
              Title.Caption = 'Dest.'
              Width = 40
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'prFaturamento'
              Title.Caption = '% Fat.'
              Width = 45
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'prQtdeProduto'
              Title.Caption = '% Prod.'
              Width = 45
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'vlQtdeProduto'
              Title.Caption = 'Vl. Prod.'
              Width = 45
              Visible = True
            end>
        end
      end
      object CGroupBox9: TCGroupBox
        Left = 495
        Top = 56
        Width = 92
        Height = 321
        TabOrder = 2
        object BtnSalvarOut: TCBitBtn
          Left = 9
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
          OnClick = BtnSalvarOutClick
        end
        object BtnCancelarOut: TCBitBtn
          Left = 9
          Top = 42
          Width = 75
          Height = 25
          Caption = '&Cancelar'
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
          OnClick = BtnSalvarOutClick
        end
        object BtnExcluirOut: TCBitBtn
          Left = 9
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
          OnClick = BtnSalvarOutClick
        end
        object BtnNovoOut: TCBitBtn
          Left = 9
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
          OnClick = BtnSalvarOutClick
        end
      end
      object CGroupBox7: TCGroupBox
        Left = 3
        Top = 56
        Width = 486
        Height = 131
        Caption = 'Dados do Imposto'
        TabOrder = 1
        object CLabel19: TCLabel
          Left = 22
          Top = 86
          Width = 76
          Height = 13
          Alignment = taRightJustify
          Caption = '% Faturamento'
        end
        object CLabel20: TCLabel
          Left = 160
          Top = 86
          Width = 83
          Height = 13
          Alignment = taRightJustify
          Caption = '% Qtde. Produto'
        end
        object CLabel21: TCLabel
          Left = 13
          Top = 42
          Width = 85
          Height = 13
          Alignment = taRightJustify
          Caption = 'Estado de Origem'
        end
        object CLabel22: TCLabel
          Left = 11
          Top = 64
          Width = 87
          Height = 13
          Alignment = taRightJustify
          Caption = 'Estado de Destino'
        end
        object CLabel23: TCLabel
          Left = 59
          Top = 20
          Width = 39
          Height = 13
          Alignment = taRightJustify
          Caption = 'Imposto'
        end
        object CLabel24: TCLabel
          Left = 297
          Top = 86
          Width = 99
          Height = 13
          Alignment = taRightJustify
          Caption = 'Valor  Qtde. Produto'
        end
        object CLabel51: TCLabel
          Left = 12
          Top = 108
          Width = 83
          Height = 13
          Alignment = taRightJustify
          Caption = 'Valor  X Tonelada'
        end
        object CLabel52: TCLabel
          Left = 179
          Top = 108
          Width = 62
          Height = 13
          Alignment = taRightJustify
          Caption = 'Valor  X Saca'
        end
        object DBEprFaturamento: TCDBEdit
          Left = 104
          Top = 83
          Width = 46
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'prFaturamento'
          DataSource = dsProdImpostoOutro
          TabOrder = 8
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEprQtdeProduto: TCDBEdit
          Left = 245
          Top = 83
          Width = 46
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'prQtdeProduto'
          DataSource = dsProdImpostoOutro
          TabOrder = 9
          Find = FindNatureza
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEidEstadoOriO: TCDBEdit
          Left = 104
          Top = 39
          Width = 44
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'idEstadoOri'
          DataSource = dsProdImpostoOutro
          TabOrder = 2
          Find = FindEstado
          DecimalControl = True
          KeyMode = kmUSUpper
        end
        object LookEstadoOriO: TCLookUp
          Left = 154
          Top = 39
          Width = 266
          Height = 19
          Alignment = taLeftJustify
          BevelInner = bvSpace
          BevelOuter = bvLowered
          Color = 14149350
          ParentBackground = False
          TabOrder = 3
          Key.Strings = (
            'idEstadoOri')
          LookUpKey.Strings = (
            'idEstado')
          ClientDataSet = cdsLookup
          DataSource = dsProdImpostoOutro
          ValidaCampoObrigatorio = False
          CampoObrigatorio = True
          LookUpTable = 'Estado'
          ReturnField = 'descEstado'
        end
        object DBEidEstadoDesO: TCDBEdit
          Left = 104
          Top = 61
          Width = 44
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'idEstadoDes'
          DataSource = dsProdImpostoOutro
          TabOrder = 5
          OnExit = DBEidEstadoDesOExit
          Find = FindEstado
          DecimalControl = True
          KeyMode = kmUSUpper
        end
        object LookEstadoDesO: TCLookUp
          Left = 154
          Top = 61
          Width = 266
          Height = 19
          Alignment = taLeftJustify
          BevelInner = bvSpace
          BevelOuter = bvLowered
          Color = 14149350
          ParentBackground = False
          TabOrder = 6
          Key.Strings = (
            'idEstadoDes')
          LookUpKey.Strings = (
            'idEstado')
          ClientDataSet = cdsLookup
          DataSource = dsProdImpostoOutro
          ValidaCampoObrigatorio = False
          CampoObrigatorio = True
          LookUpTable = 'Estado'
          ReturnField = 'descEstado'
        end
        object CHKidEstadoOriO: TCCheckBox
          Left = 426
          Top = 40
          Width = 55
          Height = 17
          Caption = 'Todos'
          TabOrder = 4
          OnClick = CHKidEstadoOriOClick
        end
        object CHKidEstadoDesO: TCCheckBox
          Left = 426
          Top = 63
          Width = 55
          Height = 17
          Caption = 'Todos'
          TabOrder = 7
          OnClick = CHKidEstadoDesOClick
        end
        object DBEidImpostoOutro: TCDBEdit
          Left = 104
          Top = 17
          Width = 44
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'idImpostoOutro'
          DataSource = dsProdImpostoOutro
          TabOrder = 0
          Find = FindImpostoOutro
          DecimalControl = True
          KeyMode = kmNormal
        end
        object LookidImpostoOutro: TCLookUp
          Left = 154
          Top = 17
          Width = 266
          Height = 19
          Alignment = taLeftJustify
          BevelInner = bvSpace
          BevelOuter = bvLowered
          Color = 14149350
          ParentBackground = False
          TabOrder = 1
          Key.Strings = (
            'idImpostoOutro')
          LookUpKey.Strings = (
            'idImpostoOutro')
          ClientDataSet = cdsLookup
          DataSource = dsProdImpostoOutro
          ValidaCampoObrigatorio = True
          CampoObrigatorio = True
          LookUpTable = 'ImpostoOutro'
          ReturnField = 'descImpostoOutro'
        end
        object DBEvlQtdeProduto: TCDBEdit
          Left = 405
          Top = 83
          Width = 69
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'vlQtdeProduto'
          DataSource = dsProdImpostoOutro
          TabOrder = 10
          Find = FindNatureza
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEvlTonelada: TCDBEdit
          Left = 104
          Top = 105
          Width = 69
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'vlTonelada'
          DataSource = dsProdImpostoOutro
          TabOrder = 11
          Find = FindNatureza
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEvlSaca: TCDBEdit
          Left = 250
          Top = 105
          Width = 69
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'vlSaca'
          DataSource = dsProdImpostoOutro
          TabOrder = 12
          Find = FindNatureza
          DecimalControl = True
          KeyMode = kmNormal
        end
      end
    end
    object TabGerencial: TTabSheet
      Caption = 'Gerencial'
      ImageIndex = 3
      object CGroupBox10: TCGroupBox
        Left = 3
        Top = 3
        Width = 502
        Height = 112
        TabOrder = 0
        object CLabel27: TCLabel
          Left = 32
          Top = 15
          Width = 41
          Height = 13
          Alignment = taRightJustify
          Caption = 'Empresa'
        end
        object CLabel28: TCLabel
          Left = 6
          Top = 38
          Width = 67
          Height = 13
          Alignment = taRightJustify
          Caption = 'Gerencial Ent.'
        end
        object CLabel43: TCLabel
          Left = 25
          Top = 90
          Width = 48
          Height = 13
          Alignment = taRightJustify
          Caption = 'Resultado'
        end
        object CLabel44: TCLabel
          Left = 8
          Top = 65
          Width = 65
          Height = 13
          Alignment = taRightJustify
          Caption = 'Gerencial Sai.'
        end
        object DBEidEmpresa: TCDBEdit
          Left = 81
          Top = 12
          Width = 46
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'idEmpresa'
          DataSource = dsProdGerencial
          TabOrder = 0
          OnExit = DBEidEmpresaExit
          Find = FindEmpresa
          DecimalControl = True
          KeyMode = kmNormal
        end
        object LookdescCadEmpresa: TCLookUp
          Left = 134
          Top = 12
          Width = 247
          Height = 19
          Alignment = taLeftJustify
          BevelInner = bvSpace
          BevelOuter = bvLowered
          Color = 14149350
          ParentBackground = False
          TabOrder = 1
          Key.Strings = (
            'idEmpresa')
          LookUpKey.Strings = (
            'idEmpresa')
          ClientDataSet = cdsLookup
          DataSource = dsProdGerencial
          ValidaCampoObrigatorio = True
          CampoObrigatorio = True
          LookUpTable = 'vCadEmpresaContabil'
          ReturnField = 'descCadEmpresa'
        end
        object lookidCnpjCpf: TCLookUp
          Left = 387
          Top = 12
          Width = 108
          Height = 19
          Alignment = taLeftJustify
          BevelInner = bvSpace
          BevelOuter = bvLowered
          Color = 14149350
          ParentBackground = False
          TabOrder = 2
          Key.Strings = (
            'idEmpresa')
          LookUpKey.Strings = (
            'idEmpresa')
          ClientDataSet = cdsLookup
          DataSource = dsProdGerencial
          ValidaCampoObrigatorio = False
          CampoObrigatorio = True
          LookUpTable = 'vCadEmpresaContabil'
          ReturnField = 'idCnpjCpf'
        end
        object DBEidGerencial: TCDBEdit
          Left = 81
          Top = 37
          Width = 46
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'idGerencial'
          DataSource = dsProdGerencial
          TabOrder = 3
          Find = FindGerencialR
          DecimalControl = True
          KeyMode = kmNormal
        end
        object LookGerencial: TCLookUp
          Left = 133
          Top = 37
          Width = 259
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
              '= '#39'ENTRADAS'#39' AND idEmpresa = [DBEidEmpresa] AND idGerencial = ?')
          ClientDataSet = cdsLookup
          DataSource = dsProdGerencial
          ValidaCampoObrigatorio = True
          CampoObrigatorio = True
          LookUpTable = 'vGerencial'
          ReturnField = 'descGerencial'
        end
        object CBitBtn8: TCBitBtn
          Left = 398
          Top = 37
          Width = 97
          Height = 19
          Caption = '&Gerencial'
          Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            2000000000000004000000000000000000000000000000000000FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00CA680000CA680000CA680000CA680000CA680000CA680000CA680000CA68
            0000CA680000CA680000CA680000CA680000FF00FF00FF00FF00FF00FF00CA68
            0000FFE9CF00FFE5C900FEE2C100FEDEBC00FEDAB500FED9B000FED5AA00FFD3
            A500FED0A000FECF9D00FECC9900FECB9600CA680000FF00FF00FF00FF00CA68
            0000FFEBD700FEE7CF00FFE5C900FEE2C200FEDEBB00FEDCB500FED9B000FED5
            AB00FED3A500FED0A000FECF9D00FECC9800CA680000FF00FF00FF00FF00CA68
            0000FFEEDC000081000000810000008100000081000000810000008100000081
            0000008100000081000000810000FECE9C00CA680000FF00FF00FF00FF00CA68
            0000FEF2E300FEEEDD00FEEBD500FFE9CF00FFE5C900FEE2C100FEDEBC00FEDA
            B600FED8AF00FED5AA00FED3A500FED0A000CA680000FF00FF00FF00FF00CA68
            0000FFF4E900008100000081000000810000008100000081000000810000FEDE
            BC00FFDCB600FED9AF00FED5AA00FED3A500CA680000FF00FF00FF00FF00CA68
            0000FFF7EE00FFF4E900FEF2E200FFEFDD00FFEBD700FFE9D000FFE5C900FFE1
            C200FEDEBB00FEDCB600FFD8AF00FED5AA00CA680000FF00FF00FF00FF00CA68
            0000FFFAF4000081000000810000008100000081000000810000008100000081
            0000008100000081000000810000FED8AF00CA680000FF00FF00FF00FF00CA68
            0000FFFBF800FFFAF300FFF7EF00FFF4E700FEF0E200FFEEDC00FFEBD700FEE9
            D000FEE5C900FEE1C100FEDEBC00FEDCB600CA680000FF00FF00FF00FF00CA68
            0000FFFCFB00008100000081000000810000008100000081000000810000FFEB
            D500FEE7D000FEE5C900FFE1C200FFDEBB00CA680000FF00FF00FF00FF00CA68
            0000FFFFFF00FFFEFC00FFFCF700FFFAF300FFF7EE00FFF4E900FFF2E200FFEF
            DD00FFEAD700FEE9D000FEE5C900FEE1C200CA680000FF00FF00FF00FF00CA68
            0000FFFFFF000081000000810000008100000081000000810000008100000081
            0000008100000081000000810000FFE5C900CA680000FF00FF00FF00FF00CA68
            0000FFFFFF00FFFFFF00FFFFFF00FFFCFC00FFFCF700FFFAF300FFF7EE00FFF4
            E900FFF2E200FFEFDD00FFEBD500FEE9CF00CA680000FF00FF00FF00FF00FF00
            FF00CA680000CA680000CA680000CA680000CA680000CA680000CA680000CA68
            0000CA680000CA680000CA680000CA680000FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
          TabOrder = 5
          TabStop = False
        end
        object DBEidResultado: TCDBEdit
          Left = 81
          Top = 87
          Width = 46
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'idResultado'
          DataSource = dsProdGerencial
          TabOrder = 9
          Find = dmFind.FindResultado
          DecimalControl = True
          KeyMode = kmNormal
        end
        object LookTalhao: TCLookUp
          Left = 133
          Top = 87
          Width = 259
          Height = 19
          Alignment = taLeftJustify
          BevelInner = bvSpace
          BevelOuter = bvLowered
          Color = 14149350
          ParentBackground = False
          TabOrder = 10
          Key.Strings = (
            'idResultado')
          LookUpKey.Strings = (
            'idResultado')
          AlternateSQL.Strings = (
            
              'SELECT descResultado FROM Resultado WHERE idEmpresa = [DBEidEmpr' +
              'esa] AND idResultado = ?')
          ClientDataSet = cdsLookup
          DataSource = dsProdGerencial
          ValidaCampoObrigatorio = True
          CampoObrigatorio = True
          LookUpTable = 'Resultado'
          ReturnField = 'descResultado'
        end
        object CBitBtn5: TCBitBtn
          Left = 398
          Top = 87
          Width = 98
          Height = 19
          Action = frmPrincipal.actCadResultado
          Caption = '&Resultado'
          TabOrder = 11
          TabStop = False
        end
        object DBEidGerencialSaida: TCDBEdit
          Left = 81
          Top = 62
          Width = 46
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'idGerencialSaida'
          DataSource = dsProdGerencial
          TabOrder = 6
          Find = FindGerenciaP
          DecimalControl = True
          KeyMode = kmNormal
        end
        object CLookUp1: TCLookUp
          Left = 133
          Top = 62
          Width = 259
          Height = 19
          Alignment = taLeftJustify
          BevelInner = bvSpace
          BevelOuter = bvLowered
          Color = 14149350
          ParentBackground = False
          TabOrder = 7
          Key.Strings = (
            'idGerencialSaida')
          LookUpKey.Strings = (
            'idGerencial')
          AlternateSQL.Strings = (
            
              'SELECT DISTINCT descGerencial FROM vGerencial WHERE tpGerencial ' +
              '= '#39'SAIDAS'#39' AND idEmpresa = [DBEidEmpresa] AND idGerencial = ?')
          ClientDataSet = cdsLookup
          DataSource = dsProdGerencial
          ValidaCampoObrigatorio = True
          CampoObrigatorio = True
          LookUpTable = 'vGerencial'
          ReturnField = 'descGerencial'
        end
        object CBitBtn1: TCBitBtn
          Left = 398
          Top = 63
          Width = 98
          Height = 19
          Caption = '&Gerencial'
          Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            2000000000000004000000000000000000000000000000000000FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00CA680000CA680000CA680000CA680000CA680000CA680000CA680000CA68
            0000CA680000CA680000CA680000CA680000FF00FF00FF00FF00FF00FF00CA68
            0000FFE9CF00FFE5C900FEE2C100FEDEBC00FEDAB500FED9B000FED5AA00FFD3
            A500FED0A000FECF9D00FECC9900FECB9600CA680000FF00FF00FF00FF00CA68
            0000FFEBD700FEE7CF00FFE5C900FEE2C200FEDEBB00FEDCB500FED9B000FED5
            AB00FED3A500FED0A000FECF9D00FECC9800CA680000FF00FF00FF00FF00CA68
            0000FFEEDC000081000000810000008100000081000000810000008100000081
            0000008100000081000000810000FECE9C00CA680000FF00FF00FF00FF00CA68
            0000FEF2E300FEEEDD00FEEBD500FFE9CF00FFE5C900FEE2C100FEDEBC00FEDA
            B600FED8AF00FED5AA00FED3A500FED0A000CA680000FF00FF00FF00FF00CA68
            0000FFF4E900008100000081000000810000008100000081000000810000FEDE
            BC00FFDCB600FED9AF00FED5AA00FED3A500CA680000FF00FF00FF00FF00CA68
            0000FFF7EE00FFF4E900FEF2E200FFEFDD00FFEBD700FFE9D000FFE5C900FFE1
            C200FEDEBB00FEDCB600FFD8AF00FED5AA00CA680000FF00FF00FF00FF00CA68
            0000FFFAF4000081000000810000008100000081000000810000008100000081
            0000008100000081000000810000FED8AF00CA680000FF00FF00FF00FF00CA68
            0000FFFBF800FFFAF300FFF7EF00FFF4E700FEF0E200FFEEDC00FFEBD700FEE9
            D000FEE5C900FEE1C100FEDEBC00FEDCB600CA680000FF00FF00FF00FF00CA68
            0000FFFCFB00008100000081000000810000008100000081000000810000FFEB
            D500FEE7D000FEE5C900FFE1C200FFDEBB00CA680000FF00FF00FF00FF00CA68
            0000FFFFFF00FFFEFC00FFFCF700FFFAF300FFF7EE00FFF4E900FFF2E200FFEF
            DD00FFEAD700FEE9D000FEE5C900FEE1C200CA680000FF00FF00FF00FF00CA68
            0000FFFFFF000081000000810000008100000081000000810000008100000081
            0000008100000081000000810000FFE5C900CA680000FF00FF00FF00FF00CA68
            0000FFFFFF00FFFFFF00FFFFFF00FFFCFC00FFFCF700FFFAF300FFF7EE00FFF4
            E900FFF2E200FFEFDD00FFEBD500FEE9CF00CA680000FF00FF00FF00FF00FF00
            FF00CA680000CA680000CA680000CA680000CA680000CA680000CA680000CA68
            0000CA680000CA680000CA680000CA680000FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
          TabOrder = 8
          TabStop = False
        end
      end
      object CGroupBox11: TCGroupBox
        Left = 3
        Top = 119
        Width = 503
        Height = 174
        TabOrder = 2
        object CDBGrid2: TCDBGrid
          Left = 2
          Top = 15
          Width = 499
          Height = 157
          TabStop = False
          Align = alClient
          DataSource = dsProdGerencial
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
              FieldName = 'idGerencial'
              Title.Caption = 'Entrada'
              Width = 50
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'descGerencial'
              Title.Caption = 'Descri'#231#227'o'
              Width = 200
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'idGerencialSaida'
              Title.Caption = 'Saida'
              Width = 50
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'descGerencialSaida'
              Title.Caption = 'Descri'#231#227'o Saida'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'idResultado'
              Title.Caption = 'Resultado'
              Width = 55
              Visible = True
            end>
        end
      end
      object CGroupBox12: TCGroupBox
        Left = 512
        Top = 3
        Width = 92
        Height = 294
        TabOrder = 1
        object BtnSalvarGer: TCBitBtn
          Left = 9
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
          OnClick = BtnSalvarGerClick
        end
        object BtnCancelarGer: TCBitBtn
          Left = 9
          Top = 42
          Width = 75
          Height = 25
          Caption = '&Cancelar'
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
          OnClick = BtnSalvarGerClick
        end
        object BtnExcluirGer: TCBitBtn
          Left = 9
          Top = 73
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
          OnClick = BtnSalvarGerClick
        end
        object BtnNovoGer: TCBitBtn
          Left = 9
          Top = 104
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
          OnClick = BtnSalvarGerClick
        end
      end
    end
    object TabVariedade: TTabSheet
      Caption = 'Variedades'
      ImageIndex = 4
      object CGroupBox19: TCGroupBox
        Left = 3
        Top = 3
        Width = 406
        Height = 48
        Caption = 'Inclus'#227'o dos Produtos Similares'
        TabOrder = 0
        object CLabel40: TCLabel
          Left = 8
          Top = 23
          Width = 48
          Height = 13
          Alignment = taRightJustify
          Caption = 'Variedade'
        end
        object DBEidVariedade: TCDBEdit
          Left = 62
          Top = 20
          Width = 53
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'idVariedade'
          DataSource = dsVariedade
          TabOrder = 0
          OnExit = DBEidVariedadeExit
          Find = dmFind.FindVariedade
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEdescVariedade: TCDBEdit
          Left = 121
          Top = 20
          Width = 278
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'descVariedade'
          DataSource = dsVariedade
          TabOrder = 1
          DecimalControl = True
          KeyMode = kmUSUpper
        end
      end
      object CGroupBox20: TCGroupBox
        Left = 415
        Top = 3
        Width = 92
        Height = 332
        TabOrder = 1
        object BtnAdicionarVar: TCBitBtn
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
          OnClick = BtnAdicionarVarClick
        end
        object BtnCancelarVar: TCBitBtn
          Left = 9
          Top = 42
          Width = 75
          Height = 25
          Caption = '&Cancelar'
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
          OnClick = BtnAdicionarVarClick
        end
        object BtnRetirarVar: TCBitBtn
          Left = 9
          Top = 73
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
          TabOrder = 2
          OnClick = BtnAdicionarVarClick
        end
        object BtnNovoVar: TCBitBtn
          Left = 9
          Top = 104
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
          TabOrder = 3
          OnClick = BtnAdicionarVarClick
        end
      end
      object CGroupBox21: TCGroupBox
        Left = 3
        Top = 57
        Width = 406
        Height = 278
        TabOrder = 2
        object CDBGrid4: TCDBGrid
          Left = 7
          Top = 14
          Width = 392
          Height = 251
          TabStop = False
          DataSource = dsVariedade
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
              FieldName = 'idVariedade'
              Title.Caption = 'C'#243'digo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'descVariedade'
              Title.Caption = 'Descri'#231#227'o'
              Width = 300
              Visible = True
            end>
        end
      end
    end
    object TabEstoque: TTabSheet
      Caption = 'Estoque'
      ImageIndex = 7
      object Group1: TCGroupBox
        Left = 15
        Top = 4
        Width = 534
        Height = 45
        TabOrder = 0
        object CLabel45: TCLabel
          Left = 13
          Top = 19
          Width = 26
          Height = 13
          Alignment = taRightJustify
          Caption = 'Prod.'
        end
        object CDBEdit1: TCDBEdit
          Left = 45
          Top = 16
          Width = 47
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          Color = 14149350
          DataField = 'idProduto'
          DataSource = dsPadrao
          ReadOnly = True
          TabOrder = 0
          OnExit = DBEidProdutoExit
          Find = dmFind.FindProduto
          AcaoCad = frmPrincipal.actCadProduto
          DecimalControl = True
          KeyMode = kmNormal
        end
        object CLookUp2: TCLookUp
          Left = 98
          Top = 16
          Width = 201
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
          DataSource = dsPadrao
          ValidaCampoObrigatorio = False
          CampoObrigatorio = True
          LookUpTable = 'Produto'
          ReturnField = 'descProduto'
        end
        object LookProdMedida: TCLookUp
          Left = 305
          Top = 16
          Width = 36
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
          DataSource = dsPadrao
          ValidaCampoObrigatorio = False
          CampoObrigatorio = True
          LookUpTable = 'Produto'
          ReturnField = 'descAbreviada'
        end
        object BtnReculculaEstoque: TCBitBtn
          Left = 347
          Top = 12
          Width = 127
          Height = 25
          Caption = '&Recalcular Estoque'
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
          TabOrder = 3
          OnClick = BtnReculculaEstoqueClick
        end
      end
      object CGroupBox22: TCGroupBox
        Left = 15
        Top = 48
        Width = 534
        Height = 201
        TabOrder = 1
        object cxGrid: TcxGrid
          Left = 2
          Top = 15
          Width = 530
          Height = 184
          Align = alClient
          TabOrder = 0
          object DBView: TcxGridDBTableView
            Navigator.Buttons.CustomButtons = <>
            DataController.DataSource = dsDeposito
            DataController.KeyFieldNames = 'idProduto'
            DataController.Options = [dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoGroupsAlwaysExpanded]
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsBehavior.FocusCellOnTab = True
            OptionsData.CancelOnExit = False
            OptionsData.Deleting = False
            OptionsData.DeletingConfirmation = False
            OptionsData.Editing = False
            OptionsData.Inserting = False
            OptionsSelection.MultiSelect = True
            OptionsView.NoDataToDisplayInfoText = '<Sem Dados Para Listar>'
            OptionsView.ColumnAutoWidth = True
            OptionsView.GroupFooters = gfVisibleWhenExpanded
            OptionsView.GroupSummaryLayout = gslAlignWithColumns
            OptionsView.Indicator = True
            object DBViewidProdDeposito: TcxGridDBColumn
              Caption = 'Deposito'
              DataBinding.FieldName = 'idProdDeposito'
            end
            object DBViewdescProdDeposito: TcxGridDBColumn
              Caption = 'Descri'#231#227'o'
              DataBinding.FieldName = 'descProdDeposito'
            end
            object DBViewvlCustoMedio: TcxGridDBColumn
              Caption = 'Custo M'#233'dio'
              DataBinding.FieldName = 'vlCustoMedio'
            end
            object DBViewqtProduto: TcxGridDBColumn
              Caption = 'Qtde. Estoque'
              DataBinding.FieldName = 'qtProduto'
            end
            object DBViewidProduto: TcxGridDBColumn
              Caption = 'Produto'
              DataBinding.FieldName = 'idProduto'
              Visible = False
              GroupIndex = 0
            end
          end
          object Nivel1: TcxGridLevel
            GridView = DBView
            MaxDetailHeight = 200
          end
        end
      end
      object CGroupBox23: TCGroupBox
        Left = 15
        Top = 255
        Width = 534
        Height = 201
        TabOrder = 2
        object cxGrid1: TcxGrid
          Left = 2
          Top = 15
          Width = 530
          Height = 184
          Align = alClient
          TabOrder = 0
          object cxGridDBTableView1: TcxGridDBTableView
            Navigator.Buttons.CustomButtons = <>
            DataController.DataSource = dsDepEmpresa
            DataController.KeyFieldNames = 'idProdDeposito'
            DataController.Options = [dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoGroupsAlwaysExpanded]
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsBehavior.FocusCellOnTab = True
            OptionsData.CancelOnExit = False
            OptionsData.Deleting = False
            OptionsData.DeletingConfirmation = False
            OptionsData.Editing = False
            OptionsData.Inserting = False
            OptionsSelection.MultiSelect = True
            OptionsView.NoDataToDisplayInfoText = '<Sem Dados Para Listar>'
            OptionsView.CellAutoHeight = True
            OptionsView.ColumnAutoWidth = True
            OptionsView.GroupFooters = gfVisibleWhenExpanded
            OptionsView.GroupSummaryLayout = gslAlignWithColumns
            OptionsView.Indicator = True
            object cxGridDBTableView1idEmpresa: TcxGridDBColumn
              Caption = 'Emp.'
              DataBinding.FieldName = 'idEmpresa'
              MinWidth = 30
              Width = 44
            end
            object cxGridDBTableView1idCadEmpresa: TcxGridDBColumn
              Caption = 'Filial'
              DataBinding.FieldName = 'idCadEmpresa'
              MinWidth = 40
              Width = 44
            end
            object cxGridDBTableView1idProdDeposito: TcxGridDBColumn
              Caption = 'Dep.'
              DataBinding.FieldName = 'idProdDeposito'
              Width = 57
            end
            object cxGridDBTableView1descProdDeposito: TcxGridDBColumn
              Caption = 'Descri'#231#227'o'
              DataBinding.FieldName = 'descProdDeposito'
              Width = 210
            end
            object cxGridDBTableView1vlCustoMedio: TcxGridDBColumn
              Caption = 'Custo M'#233'dio'
              DataBinding.FieldName = 'vlCustoMedio'
              Width = 76
            end
            object cxGridDBTableView1qtProduto: TcxGridDBColumn
              Caption = 'Qtde. Produto'
              DataBinding.FieldName = 'qtProduto'
              Width = 85
            end
            object cxGridDBTableView1idProduto: TcxGridDBColumn
              Caption = 'Produto'
              DataBinding.FieldName = 'idProduto'
              Visible = False
              GroupIndex = 0
            end
          end
          object cxGridLevel1: TcxGridLevel
            GridView = cxGridDBTableView1
            MaxDetailHeight = 200
          end
        end
      end
      object BtnHistorico: TCBitBtn
        Left = 363
        Top = 457
        Width = 127
        Height = 25
        Caption = 'Historico do Produto'
        Glyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000071533CFF5740
          2EFF57402EFF57402EFF57402EFF57402EFF57402EFF57402EFF57402EFF5740
          2EFF57402EFF57402EFF57402EFF57402EFF57402EFF57402EFF8E694BFFD9CB
          B5FFDACCB7FFDACCB7FFD9CCB6FFD9CCB6FFD9CCB6FFD8CBB5FFD7C9B3FFD5C7
          B0FFD4C6AFFFD3C4AEFFD3C4ADFFD3C5AEFFD1C4ACFF57402EFF8E694BFFDACC
          B6FFA88753FFA78552FFA88753FFA58450FFA58550FFA3824DFF9F7E47FF9E7D
          46FF9C7B44FF99763FFF96733CFF937139FFD2C3ACFF57402EFF8E694BFFDDCF
          B9FFAD8D59FFAD8C5AFFAC8B59FFAD8D5AFFA78652FFA68551FFA48550FFA17F
          4AFFA07F4AFF9E7E48FF9C7B45FF96743DFFD3C5AEFF57402EFF8E694BFFBFAE
          ABFF664137FF694539FF634035FF664538FF67483AFF6B4D3DFF6A4D3DFF664A
          3AFF5D4433FF614836FF614A36FF5A4631FFB8B1A8FF57402EFF8E694BFFC9BB
          B4FF7E5C4BFF8E6C5CFF886656FFA1796AFF845F50FF7F5D4CFF7F5C4CFF8F6C
          5CFFA57F71FF997666FF947161FF947061FFD2C4BDFF57402EFF8E694BFFF8EE
          E9FFEFD6C9FFEFDACFFFF0DCD3FFE5C9C1FFEACFC5FFDEC1B3FFD6B8A9FFE9CD
          C3FFE9D0C8FFE9D0C9FFEDD5CBFFECD4C9FFF7ECE7FF57402EFF8E694BFFFBF2
          EAFFF9EEE6FFF8ECE4FFF2D8C5FFEBC9B2FFEED5C9FFF5E2D6FFF5E3D7FFF7E5
          D9FFF4E0D3FFF3DFD2FFF0D8C9FFF4E1D5FFF8EDE8FF57402EFF8E694BFFFBEC
          E0FFF9E8DCFFF7E2D3FFF4C399FFF3BE90FFF0C099FFF1D3BCFFF1D6C2FFEFCD
          B4FFF0C39EFFF3C59DFFF5C59CFFF6DDC5FFFDF7F0FF57402EFF8E694BFFFCE1
          C7FFF8CEA8FFF8C18EFFF8C08AFFF8C08AFFF8C08AFFF8C08AFFF7BE8AFFF9C2
          8EFFF8C08AFFF8C08AFFF8C08AFFFAE3C8FFFCF3E8FF57402EFF8E694BFFF2D5
          B9FFF2D5B9FFF2D5B9FFF2D5B9FFF2D5B9FFF2D5B9FFF2D5B9FFF2D5B9FFF2D5
          B9FFF2D5B9FFF2D5B9FFF2D5B9FFF2D5B9FFF1D3B8FF57402EFF8E694BFF8E69
          4BFF8E694BFF8E694BFF8E694BFF8E694BFF8E694BFF8E694BFF8E694BFF8E69
          4BFF8E694BFF8E694BFF8E694BFF8E694BFF8E694BFF76573EFF8E694B008E69
          4B008E694B008E694B008E694B008E694B008E694B008E694B008E694B008E69
          4B008E694B008E694B008E694B008E694B008E694B008E694B00000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Margin = 5
        TabOrder = 3
        OnClick = BtnHistoricoClick
      end
    end
  end
  inherited PanBotoes: TCPanelGradient
    Top = 518
    Width = 1253
    ExplicitTop = 518
    ExplicitWidth = 1253
    DesignSize = (
      1253
      31)
    inherited BtnFechar: TCBitBtn
      Left = 1160
      Anchors = [akRight, akBottom]
      ExplicitLeft = 1160
    end
  end
  inherited imgIcones: TImageList
    Left = 920
    Top = 56
    Bitmap = {
      494C010105000900140010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000002000000001002000000000000020
      00000000000000000000000000000000000000000000FEFEFE01F4F4F40CE5E5
      E51AEAEAEA15F7F7F709FDFDFD02000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F1F1F10FB8B0AC5EB1A1
      9789A29A9679AEADAC54CBCBCB34E3E3E31CF4F4F40CFDFDFD03000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C7BDB854EDCAB3BDFDEF
      D6BFF9E7CFBEE5CBB5BABEA798A7A3989087A7A5A360C3C3C33CDDDDDD22F0F0
      F00FFBFBFB05FEFEFE0100000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C6B2A96EFCDBC4BEFFF2
      DABFFFFAE4BFFFFEEBBFFEFCEABFFCF0DCBFEED8C2BDCBB3A1AEA9999091A39F
      9C6BBABABA45D8D8D827F3F3F30DFEFEFE010000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C5B2AA68F9E1D4BEFDEE
      DEBFFFF8E7BFFFFBE7BFFFFDE9BFFFFEEFBFFFFEF1BFFFFDEDBFFDF4E0BFF4DF
      C7BED7BCA8B4A5968D92B8B8B847F4F4F40C0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C5B2A876F7DCC4BFFBE7
      CEBFFBE1C9BFFBE3D2BFFCECDEBFFFFBEEBFFFFEEFBFFFFCE8BFFFFCE6BFFFFB
      E4BFFFF9E0BFF4D8BFBE9C908A85E2E2E21D0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000CFC0B968FDE4CEBFEDD8
      C1CDE8D9BFDDE8DAC1D8E7D6BFCDEFD9C3C2F9E0CCBFFBE5D6BFFDF0E2BFFEF6
      E5BFFFEDD8BFF5D0B8BEA3928A88EAEAEA170000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E4E0DE37F6D9C5BDE9CA
      B2DFFFEED1EFFFF6D9EFFAECD5EEF2E1CBEBE6D8BFDCEDE4CDC6FAE9D0BFF9DE
      C6BFF6DBCABED7AB97BAB5B3B14FFDFDFD040000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FBFBFB0AE9C7B3B4EACF
      B7D8FFF0D3EFFFF5D8EFE0D1B9D4EAD8C0DCFFF8DBEFF2DABEECE6D2BBCDFFEE
      D6BFF6DAC1BEA68C7F9BE3E3E320000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CFB5AA8AECD5
      BDCDFDECD0EEFEF2D5EFE5D9C5CEECD6C0DCFEF7E0EEFFECD0EFE1C0A7DCFEE7
      D0BFDCB5A0B9B9B5B44FFDFDFD03000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000DFD2CD54F4DD
      C7C3F4D6BAEEFBE8CBEEE7DDCBCCEEEDDBC4EEE2CDCDF1DBC6DBEED9C2C9EEC8
      B1BDAFA6A16AF8F8F80A00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F3F0EF22F3CE
      B8BDEDCAB0E5F7D6B9EEE1D8C3CCECC7AAECEAD4B8E3ECDBC3CBF7D8C1BEAE9B
      9385F5F5F50E0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FEFEFE01E0B4
      A2A8EFCCB5CEF7D2B9EEDAB79CE0FBD5B7EEF1C9ADEAF0D2BBC4BA9B8D9BEBEB
      EB18000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000ECE2
      DF47F9D3BFBBF1C7B0CFF1C5ABE3F0C9B1E1EFC9B1CACBA08EABDDDCDC280000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FBFAF914F0E6E345E2CEC574E2BFAFA0D0AD9F98D8D6D532000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FCFCFCFF00000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FFEAEAEAFFA6A5A6FF7F7C88FF726E82FF7D7A89FFA09FA2FFE0E0
      E0FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FBFB
      FBFFDEDEDEFFAFAEAFFF858587FF707275FF6C7074FF676668FF919192FFCBCA
      CAFFF2F2F2FF000000000000000000000000000000FF000000FF000000FFFDFD
      FDFFBBBBBBFFAEAEAEFFE8E8E8FFE5E5E5FFDEDEDEFFD9D9D9FFD2D2D2FFD0D0
      D0FFCECECEFFD8D8D8FFEEEEEEFFF8F8F8FF000000FF000000FF000000FF0000
      00FFA7A6A4FF4E4265FF3C258DFF3D1FA1FF4020A5FF3F1FA4FF371D95FF3F34
      6CFF9F9FA1FFFDFDFDFF000000FF000000FF0000000000000000CA680000CA68
      0000CA680000CA680000CA680000CA680000CA680000CA680000CA680000CA68
      0000CA680000CA680000000000000000000000000000F7F7F7FFDEDEDEFF8383
      83FF696F74FF8B9399FFAAB5BBFFCAD7DEFFDFEBEFFF86888BFF787879FF595A
      5BFF646363FFB1B1B1FFEEEEEEFFFEFEFEFFFCFCFCFFEBEBEBFFCBCBCBFF9E9E
      9EFF818181FFF1FAFCFF989A9BFF777777FF787777FF969696FFD3D3D3FFFBFB
      FBFFF9F9F9FFF8F8F8FFF9F9F9FFFDFDFDFF000000FF000000FFFEFEFEFF8481
      80FF503B7BFF4226ABFF4333B4FF4157C3FF466DD3FF4569CEFF434DC2FF472E
      B2FF4F477FFF828284FFFBFBFBFF000000FF00000000CA680000FFE9CF00FFE5
      C900FEE2C100FEDEBC00FEDAB500FED9B000FED5AA00FFD3A500FED0A000FECF
      9D00FECC9900FECB9600CA68000000000000FAFAFAFFE6E6E6FFC6C6C6FF8085
      87FFA8B4BBFFB8C6CDFFC6D4DCFFDBEAF0FFEDF6F9FF909496FF8C8D8EFF7D7E
      7EFF686868FF8C8C8CFFCECECEFFF8F8F8FFFBFBFBFFF2F2F2FFE2E2E2FFCFCF
      CFFFAAACACFFDEE6E8FF9FA3A4FFC4CBCDFFC1C9CBFFB1B7BAFF9EA4A6FFF1F1
      F1FF000000FF000000FF000000FF000000FF000000FF000000FF9A9996FF5E4B
      7BFF4932ACFF444BBDFF3D90E0FF389BE5FF416ECDFF4060C5FF3D77D4FF5F8B
      D9FF9D98D5FF696391FF9E9E9FFF000000FF00000000CA680000FFEBD700FEE7
      CF00FFE5C900FEE2C200FEDEBB00FEDCB500FED9B000FED5AB00FED3A500FED0
      A000FECF9D00FECC9800CA68000000000000FEFEFEFFF9F9F9FFEFEFEFFF8D92
      94FFACB9C0FFBCCAD2FFCAD9E1FFDFEDF4FFF0F7FAFF93979AFF8F9191FF8081
      81FF707070FFCBCBCBFFEAEAEAFFFCFCFCFF000000FF000000FF000000FF0000
      00FFC3C7C8FFDDE4E7FF3A5571FFA4AFABFFBCC4C6FFB0B7B8FF999E9FFFEEEE
      EEFFFBFBFBFF000000FF000000FF000000FF000000FFE6E6E6FF5E5159FF4C3C
      9AFF4246A8FF429BE3FF4373CDFF426CCDFF403FB5FF3915A0FF3E1CA5FF7194
      DBFF9AB6E9FF9687D5FF565269FFEEEEEEFF00000000CA680000FFEEDC000081
      0000008100000081000000810000008100000081000000810000008100000081
      000000810000FECE9C00CA680000000000000000000000000000000000009095
      98FFAFBDC4FFC0CFD7FFCEDEE7FFE4F1F7FFF2F9FBFF979B9DFF939494FF8384
      85FF767676FFFEFEFEFF0000000000000000000000FF000000FF000000FF0000
      00FFF7FEFEFFDFE7EAFF65836BFF1E5421FFA0AAA9FFB1B8BAFFA3A4A5FF0000
      00FF000000FF000000FF000000FF000000FF000000FF999895FF66547CFF3F2F
      9CFF4478CBFF3F80D1FF47379CFF6163BAFF5E79C9FF493FAFFF4852BBFF829D
      DCFF96ADE3FF9AA4E7FF594E86FFB4B4B4FF00000000CA680000FEF2E300FEEE
      DD00FEEBD500FFE9CF00FFE5C900FEE2C100FEDEBC00FEDAB600FED8AF00FED5
      AA00FED3A500FED0A000CA680000000000000000000000000000000000009095
      98FFAFBDC4FFC5D4DCFFD3E4EDFFE8F5FAFFF5FAFCFF999EA1FF909192FF8688
      88FF777777FF000000000000000000000000000000FF000000FF000000FF0000
      00FFF9FFFFFFDEE7E9FFD3DBDEFF2D572FFF1F5422FFA7AFB0FFC1C1C1FF0000
      00FF000000FF000000FF000000FF000000FF000000FF67615CFF665290FF3D3A
      A6FF4392DEFF4348A9FF6556ADFF9695CEFF94BDEBFF899FDBFF7C80CBFF8EA5
      E2FF95B1E5FF96B1E7FF5B4FA2FF808083FF00000000CA680000FFF4E9000081
      00000081000000810000008100000081000000810000FEDEBC00FFDCB600FED9
      AF00FED5AA00FED3A500CA680000000000000000000000000000000000008C91
      93FF769AA7FF3E97B2FF7ABDD3FFECF8FDFFF6FBFDFF9DA1A4FF7B7D7FFF8A8C
      8CFF787879FF000000000000000000000000000000FF000000FF000000FFF9F9
      F9FFF6FEFFFFE3ECEEFFD7DFE1FFCBD3D6FF164A17FF1F5122FFF1F1F1FF0000
      00FF000000FF000000FF000000FF000000FF000000FF594D49FF614D93FF3F43
      A9FF3E95DCFF4655B4FF7E75C1FF9AADE5FF909FDDFF9199DBFF8B74C5FF8F96
      D8FF9090D4FF90A9E4FF4A3CA6FF6E6C72FF00000000CA680000FFF7EE00FFF4
      E900FEF2E200FFEFDD00FFEBD700FFE9D000FFE5C900FFE1C200FEDEBB00FEDC
      B600FFD8AF00FED5AA00CA68000000000000000000000000000000000000888B
      8EFF9CA9AEFF3CA0BDFFCAE2EDFFF0FCFEFFF8FCFDFF9FA3A7FF797A7DFF8E90
      90FF7A7B7BFF000000000000000000000000000000FF000000FF000000FFCFCF
      CFFFEEF6F9FFE3ECEEFFDAE2E5FFCED6D9FFC2CACCFF0D480EFF1D4C21FF0000
      00FF000000FF000000FF000000FF000000FF000000FF544843FF7C6BA0FF787C
      C1FF7EA8DDFF698ED2FF728AD4FF8B81CCFF8B7BCAFF93A7E0FF9297D7FF94A8
      E1FF9284CFFF8793DBFF3D2E9AFF716F73FF00000000CA680000FFFAF4000081
      0000008100000081000000810000008100000081000000810000008100000081
      000000810000FED8AF00CA680000000000000000000000000000F3F3F3FF8E92
      93FFB5C0C4FFB3CED9FFE2F5FCFFF0FAFBFFF3F6F7FFA0A5A9FF7C7E81FF9193
      94FF7B7C7DFF000000000000000000000000000000FF000000FF000000FFBEBE
      BEFFEBF4F6FFE2EAEDFFD8E0E2FFCBD4D6FFBDC5C7FFAEB6B8FF084809FF2048
      22FF000000FF000000FF000000FF000000FF000000FF5A504BFFA695AEFF9190
      CEFF96AEE6FF9191D5FF8DB4E6FF9090D5FF8B7FCCFF7D92D7FF8894D9FF949B
      DAFF97A9E0FF6489D9FF3C2A8AFF888686FF00000000CA680000FFFBF800FFFA
      F300FFF7EF00FFF4E700FEF0E200FFEEDC00FFEBD700FEE9D000FEE5C900FEE1
      C100FEDEBC00FEDCB600CA68000000000000000000000000000000000000959B
      9FFFAAB6BCFFB3BFC5FFC8D5D9FFE8EEEFFFECEFF0FF9EADA6FF809294FF7A83
      7FFF838786FF000000000000000000000000000000FF000000FF000000FFBABB
      BBFFEAF2F5FFE1EAECFFD7DFE1FFC8D0D3FFBEC6C8FFB1B8BBFFE0E0E0FF0A4C
      0AFF2B4C2DFF000000FF000000FF000000FF000000FF7A7674FFA38D94FF9384
      CDFF919DDDFF939EDCFF9296D7FF9198D9FF99AFE7FF6D6CC2FF535BBFFF6768
      C4FF608CD9FF4960CEFF412B62FFBDBDBCFF00000000CA680000FFFCFB000081
      00000081000000810000008100000081000000810000FFEBD500FEE7D000FEE5
      C900FFE1C200FFDEBB00CA680000000000000000000000000000000000009CA4
      A8FFC8D8E0FFDBEDF4FFEFFDFDFFFDFFFFFFFCFEFFFFA0A8AAFF767A7DFF6669
      6AFF7E8081FF000000000000000000000000000000FF000000FF000000FFC0C2
      C2FFEBF3F6FFE1E9ECFFD5DEE0FFC9D1D4FFBBC4C6FFA6AEB0FF000000FFB7B9
      B6FF105411FF415641FF000000FF000000FF000000FFC5C5C5FF705D56FFA590
      BFFF7C70C8FF97B2E7FF949FDCFF8F7FCCFF999EDCFF797AC7FF6079D1FF5572
      CAFF3D74D7FF533EA3FF564D50FFF7F7F7FF00000000CA680000FFFFFF00FFFE
      FC00FFFCF700FFFAF300FFF7EE00FFF4E900FFF2E200FFEFDD00FFEAD700FEE9
      D000FEE5C900FEE1C200CA680000000000000000000000000000000000009FA8
      ADFFD4E6F0FFE7FAFEFFF9FFFFFFFFFFFFFFFDFFFFFFB0B7BAFFAAAEAFFF989B
      9CFF7D7F80FF000000000000000000000000000000FF000000FF000000FFB1B3
      B4FFC8CED0FFBFC5C7FFB5BBBDFFAAB0B2FF9EA4A6FF8E9192FF000000FF0000
      00FF798478FF175B19FF616D61FF000000FF000000FFFEFEFEFF66625FFFA189
      8AFF775FB0FF534BB9FF6F9AE1FF87A7E4FF89A5E2FF5D78D1FF4E6DCEFF4373
      D5FF574FB0FF5D475AFFA8A8A6FF000000FF00000000CA680000FFFFFF000081
      0000008100000081000000810000008100000081000000810000008100000081
      000000810000FFE5C900CA68000000000000000000000000000000000000ABB2
      B5FFEEFBFDFFFCFEFFFFFEFFFFFFFFFFFFFFFBFBFBFFD0D4D6FFD7DEE1FFC1C8
      CAFF999D9EFF000000000000000000000000000000FF000000FF000000FFB6B6
      B6FF9EA2A3FFADB2B3FF9DA2A3FFA2A8A9FF959A9CFF8A8E8EFF000000FF0000
      00FF000000FF3F5C3FFF173817FF000000FF000000FF000000FFE4E4E4FF4F49
      45FFA08884FF9174AFFF4B3CADFF4550BDFF4860CAFF4167CCFF4958C0FF6F5B
      A4FF68515AFF7C7B78FF000000FF000000FF00000000CA680000FFFFFF00FFFF
      FF00FFFFFF00FFFCFC00FFFCF700FFFAF300FFF7EE00FFF4E900FFF2E200FFEF
      DD00FFEBD500FEE9CF00CA68000000000000000000000000000000000000F1F1
      F1FFC2C3C4FFBCBDBEFFBDBEBFFFBCBEBEFFBABBBCFFC2C3C3FFC0C1C2FFBFC0
      C1FFE3E3E3FF000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FFDADA
      DAFF595653FF746258FFA1878FFF987A9EFF9071A2FF8E6D98FF836779FF5A4B
      46FF908F8DFF000000FF000000FF000000FF0000000000000000CA680000CA68
      0000CA680000CA680000CA680000CA680000CA680000CA680000CA680000CA68
      0000CA680000CA68000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FFFBFBFBFFA8A8A8FF64625EFF534B43FF53473DFF5B524CFF7C7977FFCBCB
      CBFF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000200000000100010000000000000100000000000000000000
      000000000000000000000000FFFFFF0081FF000000000000803F000000000000
      8003000000000000800000000000000080000000000000008000000000000000
      800000000000000080000000000000008001000000000000C001000000000000
      C003000000000000C007000000000000C00F000000000000E01F000000000000
      F03F000000000000FFFF000000000000FF7FFFFFF80FFFFFE007E000F003C003
      80000000C00180010000000FC00180010000F00780008001E003F01F80008001
      E007F01F80008001E007E01F80008001E007E01F80008001C007E00F80008001
      E007E00780008001E007E02380008001E007E03180018001E007E039C0038001
      E007FFFFE007C003FFFFFFFFF00FFFFF00000000000000000000000000000000
      000000000000}
  end
  inherited Acao: TActionList
    Left = 984
    Top = 56
    object actCadCidade: TAction
      Caption = '&Cidades'
      ImageIndex = 6
    end
  end
  inherited cdsPadrao: TClientDataSet
    CommandText = 'SELECT * FROM Produto'
    Left = 984
    Top = 120
    object cdsPadraoidProduto: TIntegerField
      FieldName = 'idProduto'
      Required = True
    end
    object cdsPadraodescProduto: TStringField
      FieldName = 'descProduto'
      Required = True
      Size = 50
    end
    object cdsPadraoidProdCategoria: TSmallintField
      FieldName = 'idProdCategoria'
      Required = True
    end
    object cdsPadraoidProdMedida: TSmallintField
      FieldName = 'idProdMedida'
      Required = True
    end
    object cdsPadraoidProdGrupo: TSmallintField
      FieldName = 'idProdGrupo'
    end
    object cdsPadraoidProdSubGrupo: TSmallintField
      FieldName = 'idProdSubGrupo'
    end
    object cdsPadraodtCadastro: TSQLTimeStampField
      FieldName = 'dtCadastro'
      Required = True
    end
    object cdsPadraoobsProduto: TStringField
      FieldName = 'obsProduto'
      Size = 250
    end
    object cdsPadraostProduto: TStringField
      FieldName = 'stProduto'
      Required = True
      Size = 15
    end
    object cdsPadraoidIndice: TSmallintField
      FieldName = 'idIndice'
    end
    object cdsPadraoidCultura: TSmallintField
      FieldName = 'idCultura'
    end
    object cdsPadraoidFabricante: TIntegerField
      FieldName = 'idFabricante'
    end
    object cdsPadraocodFabricante: TStringField
      FieldName = 'codFabricante'
      Size = 30
    end
    object cdsPadraodescAplicacao: TStringField
      FieldName = 'descAplicacao'
      Size = 250
    end
    object cdsPadraoNcm: TStringField
      FieldName = 'Ncm'
      Size = 15
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
    object cdsPadraoCombustivel: TStringField
      FieldName = 'Combustivel'
      FixedChar = True
      Size = 1
    end
    object cdsPadraolocacao: TStringField
      FieldName = 'locacao'
      Size = 10
    end
    object cdsPadraoproducao: TStringField
      FieldName = 'producao'
      Required = True
      FixedChar = True
      Size = 1
    end
    object cdsPadraoidProdOrigem: TSmallintField
      FieldName = 'idProdOrigem'
      Required = True
    end
  end
  inherited dspPadrao: TDataSetProvider
    DataSet = sdsCadGeral
    BeforeApplyUpdates = dspVariedadeBeforeApplyUpdates
    Left = 952
    Top = 120
  end
  inherited dsPadrao: TDataSource
    Left = 1016
    Top = 120
  end
  inherited ImgBotoes: TImageList
    Left = 952
    Top = 56
    Bitmap = {
      494C010107000900140020001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000800000002000000001002000000000000040
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
      0000000000000000000000000000000000000000000000000000848484000000
      00008484C6000063C6000042A500000000008484840000000000422121004242
      4200848484008484A5004242630000000000000000000000000000000000FFFF
      FF00C6DEC60000000000A5A5A500FFFFFF000000000042636300426363008484
      8400000000000000000084848400424242000000000000000000000000000000
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
      A500A5A5A500A5A5A500A5A5A500000000000000000000000000848484000000
      0000C6A5E7004284E7000042A500000000008484840042636300A5A5A500A5A5
      A500A5A5A5008484A5004242630000000000000000000000000000000000FFFF
      FF00FFFFFF0000000000A5A5A500FFFFFF0000000000A5A5A500C6DEC600C6DE
      C600C6DEC6000000000084848400424242000000000000000000000000000000
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
      C600C6DEC600C6DEC600A5A5A50000000000002142000021630084638400C6DE
      C60084A5C6004284C6004263A500C6DEC6008484A50084638400A5A5A500A5A5
      A500A5A5A5008484A5004242630000000000846363008463630000000000FFFF
      FF00F7FFFF0000000000A5A5A500FFFFFF000000000000000000F7FFFF00C6DE
      C600C6DEC6000000000084848400424242000000000000000000000000000000
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
      840084848400C6DEC600A5A5A50000000000002142004242A50042638400C6DE
      C600F7FFFF000000000000000000F7FFFF008484A5004221840084638400A5A5
      A500A5A5A5008484A500424263000000000084636300A5A5A500A5A5A500FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000008484840000000000F7FF
      FF00C6DEC6000000000084848400424242000000000000000000000000000000
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
      A50084848400C6DEC600A5A5A5000000000000216300424284008463C6008484
      A50084A5C600A5A5A500A5A5A5008484A5004221A50042218400A5A5A500A5A5
      A500A5A5A5008484A500424263000000000084636300A5A5A500C6DEC6000000
      0000F7FFFF00F7FFFF00F7FFFF0000000000A5A5A50084848400F7FFFF00F7FF
      FF00F7FFFF000000000084848400424242000000000000000000000000000000
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
      A50084848400C6DEC600A5A5A5000000000000000000002142004263840084A5
      E7004263E7004242C6004221C6000021C600002184008484A500000000000000
      0000A5A5A5008484A50042426300000000000000000084636300A5A5A500FFFF
      FF00C6DEC6000000000000000000A5A5A50084848400C6DEC600FFFFFF00F7FF
      FF00F7FFFF000000000084848400424242000000000000000000000000000000
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
      A500A5A5A500C6DEC600A5A5A500000000000000000000000000422121008484
      A5008484E7004263E7004242C6000021A5008484A50000000000000000000000
      0000000000008484A50042426300000000000000000000000000426363000000
      0000FFFFFF00C6DEC60000000000A5A5A50000000000FFFFFF00FFFFFF00FFFF
      FF00F7FFFF00C6DEC60084848400424242000000000000000000000000000000
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
      FF00F7FFFF00C6DEC600A5A5A500000000000000000000000000000000004263
      6300C6A5E7008484E700002184008484A500C6DEC60000000000000000000000
      000000000000A5A5A5004242630000000000000000000000000042636300A5A5
      A500FFFFFF00F7FFFF008484840000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00C6DEC60084848400424242000000000000000000000000000000
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
      FF00F7FFFF00C6DEC600A5A5A500000000000000000000000000424242000000
      0000C6A5C6004263A500C6A5C600F7FFFF00C6DEC600C6DEC600000000000000
      0000A5A5A5008484A5004242630000000000000000000000000084848400FFFF
      FF00F7FFFF0000000000F7FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00F7FFFF00C6DEC60084848400424242000000000000000000000000000000
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
      FF00F7FFFF00C6DEC600A5A5A50000000000000000000000000084848400FFFF
      FF00FFFFFF00FFFFFF00F7FFFF00F7FFFF0000000000A5A5A500426384008484
      84008484A5004284A5004263840000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F7FFFF00A5A5A5000000
      00000000000000000000A5A5A500424242000000000000000000000000000000
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
      FF00F7FFFF00C6DEC600A5A5A50000000000000000000000000084848400FFFF
      FF00FFFFFF00FFFFFF00F7FFFF0000000000426384004284C60084C6E70084A5
      C60084C6E70084C6E7004263840000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00A5A5A500C6DEC600F7FFFF00C6DE
      C600FFFFFF00FFFFFF00A5A5A500424242000000000000000000000000000000
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
      FF00F7FFFF00C6DEC600A5A5A50000000000000000000000000084848400FFFF
      FF00F7FFFF00000000008484A5008484A50084A5C6008484A50084E7E70084E7
      E70084848400424242000021420000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF000000000000000000F7FFFF0000000000FFFFFF00FFFF
      FF00000000008484840042636300000000000000000000000000000000000000
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
      FF00F7FFFF00C6DEC600A5A5A500000000000000000000000000846363000000
      0000426384008484C60084C6E7008484A5004242630000214200000000000000
      0000426363000000000000000000000000000000000000000000A5A5A500FFFF
      FF000000000000000000FFFFFF00000000008484840084636300426363004263
      6300A5A5A5004242420042424200000000000000000000000000000000000000
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
      A500A5A5A500A5A5A500A5A5A500000000000000000000000000424242004263
      840084C6E70084A5C60000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000084848400A5A5
      A500FFFFFF00C6DEC60042424200424242004242420000000000000000000000
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
      0000000000000000000000000000000000000000000000000000000000004221
      2100422142000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000424242004263
      6300846363004242420000000000000000000000000000000000000000000000
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
      000000000000000000000000FFFFFF00FF31FF31FE7FFE7FC000D10000000000
      FC00FC00F07FF07FD100E48C00000000B800B800C001C001D100E48400000000
      00000000C001C001000024C40000000000010001C001C001060000A400000000
      00010001C001C001000011040000000000010001C001C0018030860400000000
      00030003C001C001C078D2800000000000030003C001C001C078C10000000000
      00030003C001C001D030C4000000000000010001C001C001C080E01C00000000
      00010001C001C001C100E0000000000000000000C001C001C401E34900000000
      00000000C001C001D001CD010000000000000000F001F001C07FC07F00000000
      03F103F1FC7FFC7FC3FFC3FF00000000C001C0018FFF8FFF88038803FF3FFF3F
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
  inherited cdsTmp: TClientDataSet
    Left = 1160
    Top = 8
  end
  inherited dspTmp: TDataSetProvider
    Left = 1120
    Top = 8
  end
  inherited sdsTmp: TSQLDataSet
    Left = 1072
    Top = 8
  end
  inherited cdsLookup: TClientDataSet
    Left = 984
    Top = 88
  end
  inherited dspLookup: TDataSetProvider
    Left = 952
    Top = 88
  end
  inherited sdsLookup: TSQLDataSet
    CommandText = 'SELECT * FROM ImpostoOutro'
    Left = 1072
    Top = 72
  end
  object sdsCadGeral: TSQLDataSet
    SchemaName = 'gesys'
    CommandText = 'SELECT * FROM Produto'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmPadrao.dbConexao
    Left = 920
    Top = 120
  end
  object FindCategoria: TCFind
    SelectClause.Strings = (
      'SELECT idProdCategoria, descProdCategoria FROM ProdCategoria')
    OrderByClause.Strings = (
      'ORDER BY descProdCategoria')
    FindField = 'descProdCategoria'
    SQLConnection = dmPadrao.dbConexao
    ValueField = 'idProdCategoria'
    CarregaDados = True
    CollumNames.Strings = (
      'C'#243'digo'
      'Descri'#231#227'o')
    TypeFind = fFindNormal
    Left = 920
    Top = 89
  end
  object FindMedida: TCFind
    SelectClause.Strings = (
      'SELECT idProdMedida, descProdMedida FROM ProdMedida')
    OrderByClause.Strings = (
      'ORDER BY descProdMedida')
    FindField = 'descProdMedida'
    SQLConnection = dmPadrao.dbConexao
    ValueField = 'idProdMedida'
    CarregaDados = True
    CollumNames.Strings = (
      'C'#243'digo'
      'Descri'#231#227'o')
    TypeFind = fFindNormal
    Left = 920
    Top = 25
  end
  object FindGrupo: TCFind
    SelectClause.Strings = (
      'SELECT idProdGrupo, descProdGrupo FROM ProdGrupo')
    JoinClause.Strings = (
      'WHERE stProdGrupo = '#39'ATIVO'#39)
    OrderByClause.Strings = (
      'ORDER BY descProdGrupo')
    FindField = 'descProdGrupo'
    SQLConnection = dmPadrao.dbConexao
    ValueField = 'idProdGrupo'
    CarregaDados = True
    CollumNames.Strings = (
      'C'#243'digo'
      'Descri'#231#227'o')
    TypeFind = fFindNormal
    Left = 952
    Top = 25
  end
  object FindSubGrupo: TCFind
    SelectClause.Strings = (
      'SELECT idProdSubGrupo, descProdSubGrupo FROM ProdSubGrupo')
    JoinClause.Strings = (
      'WHERE stProdSubGrupo = '#39'ATIVO'#39)
    OrderByClause.Strings = (
      'ORDER BY descProdSubGrupo')
    FindField = 'descProdSubGrupo'
    SQLConnection = dmPadrao.dbConexao
    ValueField = 'idProdSubGrupo'
    CarregaDados = True
    CollumNames.Strings = (
      'C'#243'digo'
      'Descri'#231#227'o')
    TypeFind = fFindNormal
    Left = 984
    Top = 25
  end
  object FindProduto: TCFind
    SelectClause.Strings = (
      'SELECT idProduto, descProduto, stProduto FROM Produto')
    OrderByClause.Strings = (
      'ORDER BY descProduto')
    FindField = 'descProduto'
    SQLConnection = dmPadrao.dbConexao
    ValueField = 'idProduto'
    CarregaDados = True
    CollumNames.Strings = (
      'C'#243'digo'
      'Descri'#231#227'o'
      'Status')
    TypeFind = fFindNormal
    Left = 1016
    Top = 57
  end
  object FindTributacao: TCFind
    SelectClause.Strings = (
      'SELECT idStTributaria, descStTributaria FROM StTributaria')
    OrderByClause.Strings = (
      'ORDER BY descStTributaria')
    FindField = 'descStTributaria'
    SQLConnection = dmPadrao.dbConexao
    ValueField = 'idStTributaria'
    CarregaDados = True
    CollumNames.Strings = (
      'C'#243'digo'
      'Descri'#231#227'o')
    TypeFind = fFindNormal
    Left = 1016
    Top = 89
  end
  object FindNatureza: TCFind
    SelectClause.Strings = (
      'SELECT idNatureza, descNatureza, idCfop, descCfop FROM vNatureza')
    OrderByClause.Strings = (
      'ORDER BY descNatureza')
    FindField = 'descNatureza'
    SQLConnection = dmPadrao.dbConexao
    ValueField = 'idNatureza'
    CarregaDados = True
    CollumNames.Strings = (
      'C'#243'digo'
      'Natureza'
      'Cfop'
      'Descri'#231#227'o do Cfop')
    TypeFind = fFindNormal
    Left = 1016
    Top = 24
  end
  object sdsProdImposto: TSQLDataSet
    SchemaName = 'gesys'
    GetMetadata = False
    CommandText = 'SELECT * FROM ProdImposto'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmPadrao.dbConexao
    Left = 920
    Top = 152
  end
  object dspProdImposto: TDataSetProvider
    DataSet = sdsProdImposto
    Options = [poAllowMultiRecordUpdates, poPropogateChanges, poAllowCommandText, poUseQuoteChar]
    BeforeUpdateRecord = dspProdImpostoBeforeUpdateRecord
    BeforeApplyUpdates = dspVariedadeBeforeApplyUpdates
    Left = 952
    Top = 152
  end
  object cdsProdImposto: TClientDataSet
    Aggregates = <>
    CommandText = 'SELECT * FROM ProdImposto'
    Params = <>
    ProviderName = 'dspProdImposto'
    AfterOpen = cdsPadraoAfterOpen
    AfterInsert = cdsProdImpostoAfterInsert
    AfterEdit = cdsProdImpostoAfterEdit
    AfterScroll = cdsProdImpostoAfterScroll
    OnReconcileError = cdsPadraoReconcileError
    Left = 984
    Top = 152
  end
  object dsProdImposto: TDataSource
    DataSet = cdsProdImposto
    OnStateChange = dsProdImpostoStateChange
    Left = 1016
    Top = 152
  end
  object cdsStTributaria: TClientDataSet
    Aggregates = <>
    CommandText = 'SELECT * FROM StTributaria'
    Params = <>
    ProviderName = 'dspLookUp'
    Left = 1016
    Top = 216
  end
  object sdsProdImpostoOutro: TSQLDataSet
    SchemaName = 'gesys'
    GetMetadata = False
    CommandText = 'SELECT * FROM ProdImpostoOutro'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmPadrao.dbConexao
    Left = 920
    Top = 184
  end
  object dspProdImpostoOutro: TDataSetProvider
    DataSet = sdsProdImpostoOutro
    Options = [poAllowMultiRecordUpdates, poPropogateChanges, poAllowCommandText, poUseQuoteChar]
    BeforeUpdateRecord = dspProdImpostoBeforeUpdateRecord
    BeforeApplyUpdates = dspVariedadeBeforeApplyUpdates
    Left = 952
    Top = 184
  end
  object cdsProdImpostoOutro: TClientDataSet
    Aggregates = <>
    CommandText = 'SELECT * FROM ProdImpostoOutro'
    Params = <>
    ProviderName = 'dspProdImpostoOutro'
    AfterOpen = cdsPadraoAfterOpen
    AfterInsert = cdsProdImpostoAfterInsert
    AfterEdit = cdsProdImpostoAfterEdit
    AfterScroll = cdsProdImpostoOutroAfterScroll
    OnReconcileError = cdsPadraoReconcileError
    Left = 984
    Top = 184
    object cdsProdImpostoOutrodescImpostoOutro: TStringField
      FieldKind = fkLookup
      FieldName = 'descImpostoOutro'
      LookupDataSet = cdsImpostoOutro
      LookupKeyFields = 'idImpostoOutro'
      LookupResultField = 'descImpostoOutro'
      KeyFields = 'idImpostoOutro'
      Size = 50
      Lookup = True
    end
    object cdsProdImpostoOutroidProduto: TIntegerField
      FieldName = 'idProduto'
      Required = True
    end
    object cdsProdImpostoOutroidNatureza: TSmallintField
      FieldName = 'idNatureza'
      Required = True
    end
    object cdsProdImpostoOutroidImpostoOutro: TSmallintField
      FieldName = 'idImpostoOutro'
      Required = True
    end
    object cdsProdImpostoOutroidProdImpostoOutro: TIntegerField
      FieldName = 'idProdImpostoOutro'
      Required = True
    end
    object cdsProdImpostoOutroidEstadoOri: TStringField
      FieldName = 'idEstadoOri'
      FixedChar = True
      Size = 2
    end
    object cdsProdImpostoOutroidEstadoDes: TStringField
      FieldName = 'idEstadoDes'
      FixedChar = True
      Size = 2
    end
    object cdsProdImpostoOutroprFaturamento: TFMTBCDField
      FieldName = 'prFaturamento'
      Required = True
      Precision = 5
      Size = 3
    end
    object cdsProdImpostoOutroprQtdeProduto: TFMTBCDField
      FieldName = 'prQtdeProduto'
      Required = True
      Precision = 5
      Size = 3
    end
    object cdsProdImpostoOutrovlQtdeProduto: TFMTBCDField
      FieldName = 'vlQtdeProduto'
      Required = True
      Precision = 19
      Size = 4
    end
    object cdsProdImpostoOutrovlTonelada: TFMTBCDField
      FieldName = 'vlTonelada'
      Precision = 18
      Size = 4
    end
    object cdsProdImpostoOutrovlSaca: TFMTBCDField
      FieldName = 'vlSaca'
      Precision = 18
      Size = 4
    end
  end
  object dsProdImpostoOutro: TDataSource
    DataSet = cdsProdImpostoOutro
    OnStateChange = dsProdImpostoOutroStateChange
    Left = 1016
    Top = 184
  end
  object cdsImpostoOutro: TClientDataSet
    Aggregates = <>
    CommandText = 'SELECT * FROM ImpostoOutro'
    Params = <>
    ProviderName = 'dspLookUp'
    Left = 984
    Top = 216
  end
  object FindImpostoOutro: TCFind
    SelectClause.Strings = (
      
        'SELECT idImpostoOutro, descImpostoOutro, dtInicio, stImpostoOutr' +
        'o FROM ImpostoOutro')
    OrderByClause.Strings = (
      'ORDER BY descImpostoOutro')
    FindField = 'descImpostoOutro'
    SQLConnection = dmPadrao.dbConexao
    ValueField = 'idImpostoOutro'
    CarregaDados = True
    CollumNames.Strings = (
      'C'#243'digo'
      'Descri'#231#227'o'
      'Data Inicio'
      'Status')
    TypeFind = fFindNormal
    Left = 920
    Top = 217
  end
  object FindEstado: TCFind
    SelectClause.Strings = (
      'SELECT idEstado, descEstado FROM Estado')
    OrderByClause.Strings = (
      'ORDER BY descEstado')
    FindField = 'descEstado'
    SQLConnection = dmPadrao.dbConexao
    ValueField = 'idEstado'
    CarregaDados = True
    CollumNames.Strings = (
      'Uf'
      'Descri'#231#227'o')
    TypeFind = fFindNormal
    Left = 952
    Top = 217
  end
  object sdsProdGerencial: TSQLDataSet
    SchemaName = 'gesys'
    GetMetadata = False
    CommandText = 'SELECT * FROM ProdGerencial'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmPadrao.dbConexao
    Left = 920
    Top = 248
  end
  object dspProdGerencial: TDataSetProvider
    DataSet = sdsProdGerencial
    Options = [poAllowMultiRecordUpdates, poPropogateChanges, poAllowCommandText, poUseQuoteChar]
    BeforeUpdateRecord = dspProdImpostoBeforeUpdateRecord
    BeforeApplyUpdates = dspVariedadeBeforeApplyUpdates
    Left = 952
    Top = 248
  end
  object cdsProdGerencial: TClientDataSet
    Aggregates = <>
    CommandText = 'SELECT * FROM ProdGerencial'
    Params = <>
    ProviderName = 'dspProdGerencial'
    AfterOpen = cdsPadraoAfterOpen
    AfterInsert = cdsProdImpostoAfterInsert
    AfterEdit = cdsProdImpostoAfterEdit
    AfterScroll = cdsProdGerencialAfterScroll
    OnCalcFields = cdsProdGerencialCalcFields
    OnReconcileError = cdsPadraoReconcileError
    Left = 984
    Top = 248
    object cdsProdGerencialidProduto: TIntegerField
      FieldName = 'idProduto'
      Required = True
    end
    object cdsProdGerencialidEmpresa: TIntegerField
      FieldName = 'idEmpresa'
      Required = True
    end
    object cdsProdGerencialidGerencial: TIntegerField
      FieldName = 'idGerencial'
      Required = True
    end
    object cdsProdGerencialdescGerencial: TStringField
      FieldKind = fkCalculated
      FieldName = 'descGerencial'
      Size = 50
      Calculated = True
    end
    object cdsProdGerencialidResultado: TIntegerField
      FieldName = 'idResultado'
    end
    object cdsProdGerencialidGerencialSaida: TIntegerField
      FieldName = 'idGerencialSaida'
    end
    object cdsProdGerencialdescGerencialSaida: TStringField
      FieldKind = fkCalculated
      FieldName = 'descGerencialSaida'
      Size = 100
      Calculated = True
    end
  end
  object dsProdGerencial: TDataSource
    DataSet = cdsProdGerencial
    OnStateChange = dsProdGerencialStateChange
    Left = 1016
    Top = 248
  end
  object FindGerencial: TCFind
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
    Left = 920
    Top = 280
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
      'Nome / Raz'#227'o Social'
      'Descri'#231#227'o Abreviada / Fantasia'
      'CPF / CNPJ')
    TypeFind = fFindNormal
    Left = 984
    Top = 280
  end
  object FindIndice: TCFind
    SelectClause.Strings = (
      'SELECT idIndice, descIndice, descSimbolo From Indice')
    OrderByClause.Strings = (
      'ORDER BY descIndice')
    FindField = 'descIndice'
    SQLConnection = dmPadrao.dbConexao
    ValueField = 'idIndice'
    CarregaDados = True
    CollumNames.Strings = (
      'C'#243'digo'
      'Descri'#231#227'o'
      'Simbolo')
    TypeFind = fFindNormal
    Left = 952
    Top = 281
  end
  object FindCultura: TCFind
    SelectClause.Strings = (
      'SELECT idCultura, descCultura FROM Cultura')
    OrderByClause.Strings = (
      'ORDER BY descCultura')
    FindField = 'descCultura'
    SQLConnection = dmPadrao.dbConexao
    ValueField = 'idCultura'
    CarregaDados = True
    CollumNames.Strings = (
      'C'#243'digo'
      'Descri'#231#227'o')
    TypeFind = fFindNormal
    Left = 1016
    Top = 280
  end
  object dsProdutoSimilar: TDataSource
    DataSet = cdsProdutoSimilar
    OnStateChange = dsProdutoSimilarStateChange
    Left = 1016
    Top = 312
  end
  object cdsProdutoSimilar: TClientDataSet
    Aggregates = <>
    CommandText = 'SELECT * FROM ProdutoSimilar'
    Params = <>
    ProviderName = 'dspProdutoSimilar'
    AfterOpen = cdsPadraoAfterOpen
    AfterInsert = cdsProdImpostoAfterEdit
    AfterEdit = cdsProdImpostoAfterEdit
    OnReconcileError = cdsPadraoReconcileError
    Left = 984
    Top = 312
    object cdsProdutoSimilaridProduto: TIntegerField
      FieldName = 'idProduto'
      Required = True
    end
    object cdsProdutoSimilaridProdutoSimilar: TIntegerField
      FieldName = 'idProdutoSimilar'
      Required = True
    end
    object cdsProdutoSimilardescProduto: TStringField
      FieldKind = fkLookup
      FieldName = 'descProduto'
      LookupDataSet = cdsProduto
      LookupKeyFields = 'idProduto'
      LookupResultField = 'descProduto'
      KeyFields = 'idProdutoSimilar'
      Size = 50
      Lookup = True
    end
  end
  object dspProdutoSimilar: TDataSetProvider
    DataSet = sdsProdutoSimilar
    Options = [poAllowMultiRecordUpdates, poPropogateChanges, poAllowCommandText, poUseQuoteChar]
    BeforeUpdateRecord = dspProdImpostoBeforeUpdateRecord
    BeforeApplyUpdates = dspVariedadeBeforeApplyUpdates
    Left = 952
    Top = 312
  end
  object sdsProdutoSimilar: TSQLDataSet
    SchemaName = 'gesys'
    GetMetadata = False
    CommandText = 'SELECT * FROM ProdutoSimilar'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmPadrao.dbConexao
    Left = 920
    Top = 312
  end
  object cdsProduto: TClientDataSet
    Aggregates = <>
    CommandText = 'SELECT * FROM Produto'
    Params = <>
    ProviderName = 'dspLookUp'
    Left = 888
    Top = 312
  end
  object dsFornecedor: TDataSource
    DataSet = cdsFornecedor
    OnStateChange = dsFornecedorStateChange
    Left = 1200
    Top = 368
  end
  object cdsFornecedor: TClientDataSet
    Aggregates = <>
    CommandText = 'SELECT * FROM ProdutoFornecedor'
    Params = <>
    ProviderName = 'dspFornecedor'
    AfterOpen = cdsPadraoAfterOpen
    AfterInsert = cdsProdImpostoAfterEdit
    AfterEdit = cdsProdImpostoAfterEdit
    OnReconcileError = cdsPadraoReconcileError
    Left = 1104
    Top = 368
    object cdsFornecedoridProduto: TIntegerField
      FieldName = 'idProduto'
      Required = True
    end
    object cdsFornecedoridFornecedor: TIntegerField
      FieldName = 'idFornecedor'
      Required = True
    end
    object cdsFornecedordescFornecedor: TStringField
      FieldKind = fkLookup
      FieldName = 'descFornecedor'
      LookupDataSet = cdsCadFornecedor
      LookupKeyFields = 'idFornecedor'
      LookupResultField = 'descCadFornecedor'
      KeyFields = 'idFornecedor'
      Size = 50
      Lookup = True
    end
    object cdsFornecedorcodFornecedor: TStringField
      FieldName = 'codFornecedor'
      Size = 60
    end
  end
  object dspFornecedor: TDataSetProvider
    DataSet = sdsFornecedor
    Options = [poAllowMultiRecordUpdates, poPropogateChanges, poAllowCommandText, poUseQuoteChar]
    BeforeUpdateRecord = dspProdImpostoBeforeUpdateRecord
    BeforeApplyUpdates = dspVariedadeBeforeApplyUpdates
    Left = 1016
    Top = 368
  end
  object sdsFornecedor: TSQLDataSet
    SchemaName = 'gesys'
    GetMetadata = False
    CommandText = 'SELECT * FROM ProdutoFornecedor'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmPadrao.dbConexao
    Left = 928
    Top = 368
  end
  object cdsCadFornecedor: TClientDataSet
    Aggregates = <>
    CommandText = 'SELECT * FROM vCadFornecedorContabil'
    Params = <>
    ProviderName = 'dspLookUp'
    Left = 824
    Top = 368
  end
  object cdsVariedade: TClientDataSet
    Aggregates = <>
    CommandText = 'SELECT * FROM ProdutoVariedade'
    Params = <>
    ProviderName = 'dspVariedade'
    AfterOpen = cdsPadraoAfterOpen
    AfterInsert = cdsProdImpostoAfterEdit
    AfterEdit = cdsProdImpostoAfterEdit
    OnReconcileError = cdsPadraoReconcileError
    Left = 1104
    Top = 416
    object cdsVariedadeidProduto: TIntegerField
      FieldName = 'idProduto'
      Required = True
    end
    object cdsVariedadeidVariedade: TSmallintField
      FieldName = 'idVariedade'
      Required = True
    end
    object cdsVariedadedescVariedade: TStringField
      FieldName = 'descVariedade'
      Required = True
      Size = 50
    end
  end
  object dsVariedade: TDataSource
    DataSet = cdsVariedade
    OnStateChange = dsVariedadeStateChange
    Left = 1200
    Top = 416
  end
  object dspVariedade: TDataSetProvider
    DataSet = sdsVariedade
    Options = [poAllowMultiRecordUpdates, poPropogateChanges, poAllowCommandText, poUseQuoteChar]
    BeforeUpdateRecord = dspProdImpostoBeforeUpdateRecord
    BeforeApplyUpdates = dspVariedadeBeforeApplyUpdates
    Left = 1016
    Top = 416
  end
  object sdsVariedade: TSQLDataSet
    SchemaName = 'gesys'
    GetMetadata = False
    CommandText = 'SELECT * FROM ProdutoVariedade'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmPadrao.dbConexao
    Left = 928
    Top = 416
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
    Left = 1080
    Top = 216
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
    Left = 904
    Top = 216
  end
  object dsDeposito: TDataSource
    DataSet = cdsDeposito
    OnStateChange = dsProdutoSimilarStateChange
    Left = 1192
    Top = 456
  end
  object cdsDeposito: TClientDataSet
    Aggregates = <>
    CommandText = 'EXEC spRelEstoque 1, 1, 0, 1, 1, '#39#39', '#39#39', 0, '#39'N'#39', '#39'S'#39', '#39'N'#39', '#39'N'#39
    Params = <>
    ProviderName = 'dspDeposito'
    AfterOpen = cdsPadraoAfterOpen
    AfterInsert = cdsProdImpostoAfterEdit
    AfterEdit = cdsProdImpostoAfterEdit
    OnReconcileError = cdsPadraoReconcileError
    Left = 1160
    Top = 456
    object cdsDepositoidEmpresa: TIntegerField
      FieldName = 'idEmpresa'
    end
    object cdsDepositoidCadEmpresa: TSmallintField
      FieldName = 'idCadEmpresa'
    end
    object cdsDepositodescEmpresa: TStringField
      FieldName = 'descEmpresa'
      Size = 50
    end
    object cdsDepositodescCadEmpresa: TStringField
      FieldName = 'descCadEmpresa'
      Size = 30
    end
    object cdsDepositoidCnpjCpf: TStringField
      FieldName = 'idCnpjCpf'
      Size = 18
    end
    object cdsDepositoidInscEstadual: TStringField
      FieldName = 'idInscEstadual'
    end
    object cdsDepositoidProdDeposito: TSmallintField
      FieldName = 'idProdDeposito'
    end
    object cdsDepositodescProdDeposito: TStringField
      FieldName = 'descProdDeposito'
      Size = 50
    end
    object cdsDepositoidProduto: TIntegerField
      FieldName = 'idProduto'
    end
    object cdsDepositodescProduto: TStringField
      FieldName = 'descProduto'
      Size = 50
    end
    object cdsDepositocodFabricante: TStringField
      FieldName = 'codFabricante'
      Size = 30
    end
    object cdsDepositovlCustoMedio: TFMTBCDField
      FieldName = 'vlCustoMedio'
      Precision = 19
      Size = 4
    end
    object cdsDepositoqtProduto: TFMTBCDField
      FieldName = 'qtProduto'
      Precision = 10
      Size = 3
    end
    object cdsDepositovlTotal: TFMTBCDField
      FieldName = 'vlTotal'
      Precision = 19
      Size = 4
    end
    object cdsDepositoidGrupo: TStringField
      FieldName = 'idGrupo'
    end
    object cdsDepositolocacao: TStringField
      FieldName = 'locacao'
      Size = 10
    end
  end
  object dspDeposito: TDataSetProvider
    DataSet = sdsDeposito
    Options = [poAllowMultiRecordUpdates, poPropogateChanges, poAllowCommandText, poUseQuoteChar]
    BeforeUpdateRecord = dspProdImpostoBeforeUpdateRecord
    Left = 1128
    Top = 456
  end
  object sdsDeposito: TSQLDataSet
    SchemaName = 'gesys'
    GetMetadata = False
    CommandText = 'EXEC spRelEstoque 1, 1, 0, 1, 1, '#39#39', '#39#39', 0, '#39'N'#39', '#39'S'#39', '#39'N'#39', '#39'N'#39
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmPadrao.dbConexao
    Left = 1096
    Top = 456
  end
  object dsDepEmpresa: TDataSource
    DataSet = cdsDepEmpresa
    OnStateChange = dsProdutoSimilarStateChange
    Left = 1032
    Top = 464
  end
  object cdsDepEmpresa: TClientDataSet
    Aggregates = <>
    CommandText = 'EXEC spRelEstoque 1, 1, 0, 1, 1, '#39#39', '#39#39', 0, '#39'N'#39', '#39'S'#39', '#39'N'#39', '#39'N'#39
    Params = <>
    ProviderName = 'dspDepEmpresa'
    AfterOpen = cdsPadraoAfterOpen
    AfterInsert = cdsProdImpostoAfterEdit
    AfterEdit = cdsProdImpostoAfterEdit
    OnReconcileError = cdsPadraoReconcileError
    Left = 1000
    Top = 464
    object IntegerField1: TIntegerField
      FieldName = 'idEmpresa'
    end
    object SmallintField1: TSmallintField
      FieldName = 'idCadEmpresa'
    end
    object StringField1: TStringField
      FieldName = 'descEmpresa'
      Size = 50
    end
    object StringField2: TStringField
      FieldName = 'descCadEmpresa'
      Size = 30
    end
    object StringField3: TStringField
      FieldName = 'idCnpjCpf'
      Size = 18
    end
    object StringField4: TStringField
      FieldName = 'idInscEstadual'
    end
    object SmallintField2: TSmallintField
      FieldName = 'idProdDeposito'
    end
    object StringField5: TStringField
      FieldName = 'descProdDeposito'
      Size = 50
    end
    object IntegerField2: TIntegerField
      FieldName = 'idProduto'
    end
    object StringField6: TStringField
      FieldName = 'descProduto'
      Size = 50
    end
    object StringField7: TStringField
      FieldName = 'codFabricante'
      Size = 30
    end
    object FMTBCDField1: TFMTBCDField
      FieldName = 'vlCustoMedio'
      Precision = 19
      Size = 4
    end
    object FMTBCDField2: TFMTBCDField
      FieldName = 'qtProduto'
      Precision = 10
      Size = 3
    end
    object FMTBCDField3: TFMTBCDField
      FieldName = 'vlTotal'
      Precision = 19
      Size = 4
    end
    object StringField8: TStringField
      FieldName = 'idGrupo'
    end
    object cdsDepEmpresalocacao: TStringField
      FieldName = 'locacao'
      Size = 10
    end
  end
  object dspDepEmpresa: TDataSetProvider
    DataSet = sdsDepEmpresa
    Options = [poAllowMultiRecordUpdates, poPropogateChanges, poAllowCommandText, poUseQuoteChar]
    BeforeUpdateRecord = dspProdImpostoBeforeUpdateRecord
    Left = 968
    Top = 464
  end
  object sdsDepEmpresa: TSQLDataSet
    SchemaName = 'gesys'
    GetMetadata = False
    CommandText = 'EXEC spRelEstoque 1, 1, 0, 1, 1, '#39#39', '#39#39', 0, '#39'N'#39', '#39'S'#39', '#39'N'#39', '#39'N'#39
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmPadrao.dbConexao
    Left = 936
    Top = 464
  end
end
