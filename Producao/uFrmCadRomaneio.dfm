inherited FrmCadRomaneio: TFrmCadRomaneio
  Caption = 'Lan'#231'amento do Romaneio de Produ'#231#227'o'
  ClientHeight = 745
  ClientWidth = 1012
  Icon.Data = {
    0000010001001010000001002000680400001600000028000000100000002000
    0000010020000000000000040000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000020000000B0000000B0000000B0000000B0000000B0000000B0000
    000B0000000B0000000B0000000B0000000B0000000B00000002000000000000
    00000400002B2F1606A230180AA0301A0CA0321B0DA0311B0FA02F1B10A02F1C
    0EA02F1B0EA0311B0CA031190AA02F1708A02E1506A20400002B000000000000
    00000600004AC57F41FFCE9059FFD5A06FFFDEAF84FFCDAC8FFFC6A992FFC5A7
    90FFC0A186FFDBA97BFFD19762FFC98548FFC17432FF0700004A000000000000
    000006000045BA7335FFBF7D40FFC2844AFFC88D58FFAF835BFFA57A5AFFA57A
    58FFA17753FFC68850FFBE7C40FFBB7636FFB76D2AFF06000044000000000000
    00000400003ABA7230FFBD793AFFBE7C3FFFC28044FFA16B3BFF955D32FF965C
    30FF925C31FFC17E3FFFBC7738FFBB7431FFB86D2AFF0400003A000000000000
    0000342D2B3AB9712FFFBE7937FFBE7B3BFFC37F3FFF9D622EFF91501EFF9251
    1DFF8E5422FFC17E3DFFBD7837FFBD7734FFB8712FFF3831303A000000000000
    0000E1D9D639B67333FFC2803FFFC17F40FFC58241FF9A5D27FF8D450DFF9047
    0EFF8B4C18FFC48141FFC07E3DFFC17E3DFFBA7534FF9C94903A000000000000
    020C00000870BF7E3EFFCC8C4CFFC88A4DFFC88A4DFFBA7F46FFAF773FFFAE76
    3DFFB1773EFFCE955EFFD4A272FFD9AA79FFC3986AFF000A339A2C2C30070000
    000013295D655069A3FF99785CFFC0864BFFCD9153FFCE9155FFCE9559FFD8A7
    76FFE4BF9AFFE5C4A1FFCFB295FFA5A6B4FF4170C8F04A526626000000000000
    0000000000001B2F565387B7FFFFA9BEE2FFBEB7B5FFE0C7ACFFEED6BDFFECD4
    BBFFD7C4B1FFB2B7C6FFA8C5F8FF5F8EE2F04349592200000000000000000000
    000000000000000000001B2D4F51A7C8FFFFC8DFFFFFBED0F0FFCECED2FFC7CD
    D9FFBED4F9FFCEE4FFFF769BDCEE424757210000000000000000000000000000
    00000000000000000000000000001C2B4B4CB5CEFAFFE4F0FFFFDCEAFFFFDDEA
    FFFFEAF5FFFF7A9AD0E8464B591D000000000000000000000000000000000000
    0000000000000000000000000000000000002F3B553CB8CDF1FBF7FBFFFFFCFF
    FFFF7895C4DE62666E1200000000000000000000000000000000000000000000
    00000000000000000000000000000000000000000000333F5333C8DAF9FD88A1
    C9DE686D730E0000000000000000000000000000000000000000000000000000
    00000000000000000000000000000000000000000000000000000004101E1316
    1B0D00000000000000000000000000000000000000000000000000000000FFFF
    0000800100008001000080010000800100008001000080010000800100000000
    000080010000C0030000E0070000F00F0000F81F0000FC3F0000FE7F0000}
  OnKeyDown = FormKeyDown
  ExplicitWidth = 1028
  ExplicitHeight = 783
  PixelsPerInch = 96
  TextHeight = 13
  inherited Bevel1: TBevel
    Top = 710
    Width = 1012
    ExplicitLeft = 8
    ExplicitTop = 495
    ExplicitWidth = 897
  end
  inherited Bevel2: TBevel
    Top = 27
    Width = 1012
    ExplicitTop = 27
    ExplicitWidth = 897
  end
  inherited PagAbas: TCPageControl
    Top = 31
    Width = 1012
    Height = 679
    OnChange = PagAbasChange
    ExplicitTop = 31
    ExplicitWidth = 1012
    ExplicitHeight = 679
    inherited TabAbas: TTabSheet
      Caption = 'Dados do Romaneio'
      ExplicitLeft = 4
      ExplicitTop = 25
      ExplicitWidth = 1004
      ExplicitHeight = 650
      object CGroupBox1: TCGroupBox
        Left = 3
        Top = 0
        Width = 630
        Height = 139
        Caption = 'Dados Gerais'
        TabOrder = 0
        object CLabel7: TCLabel
          Left = 59
          Top = 39
          Width = 23
          Height = 13
          Alignment = taRightJustify
          Caption = 'Data'
        end
        object CLabel14: TCLabel
          Left = 477
          Top = 14
          Width = 31
          Height = 13
          Alignment = taRightJustify
          Caption = 'Status'
          Transparent = True
        end
        object CLabel5: TCLabel
          Left = 49
          Top = 14
          Width = 33
          Height = 13
          Alignment = taRightJustify
          Caption = 'C'#243'digo'
          Transparent = True
        end
        object lblCliFor: TCLabel
          Left = 10
          Top = 89
          Width = 72
          Height = 13
          Alignment = taRightJustify
          Caption = 'Armaz'#233'm/Local'
        end
        object CLabel3: TCLabel
          Left = 175
          Top = 39
          Width = 86
          Height = 13
          Alignment = taRightJustify
          Caption = 'Romaneio Original'
          Transparent = True
        end
        object CLabel10: TCLabel
          Left = 40
          Top = 64
          Width = 42
          Height = 13
          Alignment = taRightJustify
          Caption = 'Dep'#243'sito'
        end
        object CLabel19: TCLabel
          Left = 155
          Top = 14
          Width = 47
          Height = 13
          Alignment = taRightJustify
          Caption = 'Opera'#231#227'o'
        end
        object CLabel31: TCLabel
          Left = 372
          Top = 114
          Width = 28
          Height = 13
          Alignment = taRightJustify
          Caption = 'N'#186' NF'
          Transparent = True
        end
        object CLabel65: TCLabel
          Left = 58
          Top = 114
          Width = 24
          Height = 13
          Alignment = taRightJustify
          Caption = 'S'#233'rie'
        end
        object DBEdtRomaneio: TCDBEdit
          Left = 88
          Top = 36
          Width = 80
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'dtRomaneio'
          DataSource = dsPadrao
          MaxLength = 10
          TabOrder = 4
          DecimalControl = True
          KeyMode = kmDate
        end
        object DBEstRomaneio: TCDBEdit
          Left = 514
          Top = 11
          Width = 107
          Height = 19
          TabStop = False
          BevelKind = bkTile
          BorderStyle = bsNone
          Color = 14149350
          DataField = 'stRomaneio'
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
        object DBEidRomaneio: TCDBEdit
          Left = 88
          Top = 11
          Width = 61
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'idRomaneio'
          DataSource = dsPadrao
          TabOrder = 0
          OnExit = DBEidRomaneioExit
          OnKeyDown = DBEidRomaneioKeyDown
          DecimalControl = True
          KeyMode = kmNormal
        end
        object LookCliente: TCLookUp
          Left = 156
          Top = 86
          Width = 330
          Height = 19
          Alignment = taLeftJustify
          BevelInner = bvSpace
          BevelOuter = bvLowered
          Color = 14149350
          ParentBackground = False
          TabOrder = 10
          Key.Strings = (
            'idArmazem')
          LookUpKey.Strings = (
            'idCliente')
          ClientDataSet = cdsLookup
          DataSource = dsPadrao
          ValidaCampoObrigatorio = True
          CampoObrigatorio = True
          LookUpTable = 'vCadClienteContabil'
          ReturnField = 'descCadCliente'
        end
        object DBEidArmazem: TCDBEdit
          Left = 88
          Top = 86
          Width = 62
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'idArmazem'
          DataSource = dsPadrao
          TabOrder = 9
          OnEnter = DBEidArmOperacaoEnter
          OnExit = DBEidArmazemExit
          Find = dmFind.FindFornecedor
          AcaoCad = frmPrincipal.actCadCliente
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEidRomaneioArm: TCDBEdit
          Left = 267
          Top = 36
          Width = 80
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'idRomaneioArm'
          DataSource = dsPadrao
          TabOrder = 5
          DecimalControl = True
          KeyMode = kmNormal
        end
        object CBitBtn1: TCBitBtn
          Left = 383
          Top = 61
          Width = 103
          Height = 19
          Action = frmPrincipal.actCadProdDeposito
          Caption = 'Dep'#243'sito'
          TabOrder = 8
          TabStop = False
        end
        object LookProdDeposito: TCLookUp
          Left = 140
          Top = 61
          Width = 237
          Height = 19
          Alignment = taLeftJustify
          BevelInner = bvSpace
          BevelOuter = bvLowered
          Color = 14149350
          ParentBackground = False
          TabOrder = 7
          Key.Strings = (
            'idProdDeposito')
          LookUpKey.Strings = (
            'idProdDeposito')
          ClientDataSet = cdsLookup
          DataSource = dsPadrao
          ValidaCampoObrigatorio = True
          CampoObrigatorio = True
          LookUpTable = 'ProdDeposito'
          ReturnField = 'descProdDeposito'
        end
        object DBEidProdDeposito: TCDBEdit
          Left = 88
          Top = 61
          Width = 46
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'idProdDeposito'
          DataSource = dsPadrao
          TabOrder = 6
          OnEnter = DBEidArmOperacaoEnter
          OnExit = DBEidProdDepositoExit
          Find = dmFind.FindProdDeposito
          AcaoCad = frmPrincipal.actCadProdDeposito
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEidArmOperacao: TCDBEdit
          Left = 208
          Top = 11
          Width = 53
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'idArmOperacao'
          DataSource = dsPadrao
          TabOrder = 1
          OnEnter = DBEidArmOperacaoEnter
          OnExit = DBEidArmOperacaoExit
          Find = dmFind.FindArmOperacao
          DecimalControl = True
          KeyMode = kmNormal
        end
        object LookOperacao: TCLookUp
          Left = 267
          Top = 11
          Width = 204
          Height = 19
          Alignment = taLeftJustify
          BevelInner = bvSpace
          BevelOuter = bvLowered
          Color = 14149350
          ParentBackground = False
          TabOrder = 2
          Key.Strings = (
            'idArmOperacao')
          LookUpKey.Strings = (
            'idArmOperacao')
          ClientDataSet = cdsLookup
          DataSource = dsPadrao
          ValidaCampoObrigatorio = True
          CampoObrigatorio = True
          LookUpTable = 'ArmOperacao'
          ReturnField = 'descArmOperacao'
        end
        object DBEidNF: TCDBEdit
          Left = 406
          Top = 111
          Width = 80
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'idNF'
          DataSource = dsPadrao
          TabOrder = 13
          OnEnter = DBEidArmOperacaoEnter
          OnExit = DBEidNFExit
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEidDocSerie: TCDBEdit
          Left = 88
          Top = 111
          Width = 46
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'idDocSerie'
          DataSource = dsPadrao
          TabOrder = 11
          Find = dmFind.FindDocSerieNf
          AcaoCad = frmPrincipal.actCadDocSerie
          DecimalControl = True
          KeyMode = kmUSUpper
        end
        object LookDocSerie: TCLookUp
          Left = 140
          Top = 111
          Width = 226
          Height = 19
          Alignment = taLeftJustify
          BevelInner = bvSpace
          BevelOuter = bvLowered
          Color = 14149350
          ParentBackground = False
          TabOrder = 12
          Key.Strings = (
            'idDocSerie')
          LookUpKey.Strings = (
            'idDocSerie')
          AlternateSQL.Strings = (
            
              'SELECT descDocSerie FROM DocSerie WHERE idTipoDocSerie = 3 AND i' +
              'dDocSerie = ?')
          ClientDataSet = cdsLookup
          DataSource = dsPadrao
          ValidaCampoObrigatorio = True
          CampoObrigatorio = True
          LookUpTable = 'DocSerie'
          ReturnField = 'descDocSerie'
        end
      end
      object LookTpArmOperacao: TCLookUp
        Left = 723
        Top = 218
        Width = 30
        Height = 19
        Alignment = taLeftJustify
        BevelInner = bvSpace
        BevelOuter = bvLowered
        Color = 14149350
        ParentBackground = False
        TabOrder = 3
        Visible = False
        Key.Strings = (
          'idArmOperacao')
        LookUpKey.Strings = (
          'idArmOperacao')
        ClientDataSet = cdsLookup
        DataSource = dsPadrao
        ValidaCampoObrigatorio = True
        CampoObrigatorio = True
        LookUpTable = 'ArmOperacao'
        ReturnField = 'tpArmOperacao'
      end
      object EDvlFinanc: TCEdit
        Left = 664
        Top = 296
        Width = 81
        Height = 19
        BorderStyle = bsNone
        BevelKind = bkTile
        TabOrder = 5
        Text = ''
        Visible = False
        DataType = ftUnknown
        KeyMode = kmNormal
        Decimals = 0
      end
      object EDPar: TCEdit
        Left = 903
        Top = 346
        Width = 65
        Height = 19
        BorderStyle = bsNone
        BevelKind = bkTile
        TabOrder = 7
        Text = 'SEL'
        Visible = False
        DataType = ftString
        KeyMode = kmUSUpper
        Decimals = 0
      end
      object EDDoc: TCEdit
        Left = 704
        Top = 353
        Width = 65
        Height = 19
        BorderStyle = bsNone
        BevelKind = bkTile
        TabOrder = 6
        Text = 'ROM'
        Visible = False
        DataType = ftString
        KeyMode = kmUSUpper
        Decimals = 0
      end
      object CGroupBox7: TCGroupBox
        Left = 3
        Top = 238
        Width = 630
        Height = 135
        Color = 15201011
        ParentColor = False
        TabOrder = 2
        object CLabel23: TCLabel
          Left = 56
          Top = 36
          Width = 26
          Height = 13
          Alignment = taRightJustify
          Caption = 'Safra'
        end
        object CLabel11: TCLabel
          Left = 44
          Top = 62
          Width = 38
          Height = 13
          Alignment = taRightJustify
          Caption = 'Produto'
        end
        object CLabel2: TCLabel
          Left = 34
          Top = 87
          Width = 48
          Height = 13
          Alignment = taRightJustify
          Caption = 'Variedade'
        end
        object CLabel4: TCLabel
          Left = 12
          Top = 112
          Width = 70
          Height = 13
          Alignment = taRightJustify
          Caption = 'Result./Talh'#227'o'
        end
        object CLabel6: TCLabel
          Left = 40
          Top = 12
          Width = 42
          Height = 13
          Alignment = taRightJustify
          Caption = 'Produtor'
        end
        object LookSafra: TCLookUp
          Left = 140
          Top = 34
          Width = 294
          Height = 19
          Alignment = taLeftJustify
          BevelInner = bvSpace
          BevelOuter = bvLowered
          Color = 14149350
          ParentBackground = False
          TabOrder = 3
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
          Top = 34
          Width = 103
          Height = 19
          Action = frmPrincipal.actCadSafra
          Caption = '&Safra'
          TabOrder = 4
          TabStop = False
        end
        object DBEidSafra: TCDBEdit
          Left = 88
          Top = 34
          Width = 46
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'idSafra'
          DataSource = dsPadrao
          TabOrder = 2
          Find = dmFind.FindSafra
          AcaoCad = frmPrincipal.actCadSafra
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEidProduto: TCDBEdit
          Left = 88
          Top = 59
          Width = 46
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'idProduto'
          DataSource = dsPadrao
          TabOrder = 5
          OnEnter = DBEidProdutoEnter
          OnExit = DBEidProdutoExit
          Find = dmFind.FindProduto
          AcaoCad = frmPrincipal.actCadProduto
          DecimalControl = True
          KeyMode = kmNormal
        end
        object LookProdMedida: TCLookUp
          Left = 392
          Top = 59
          Width = 42
          Height = 19
          Alignment = taLeftJustify
          BevelInner = bvSpace
          BevelOuter = bvLowered
          Color = 14149350
          ParentBackground = False
          TabOrder = 7
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
        object LookProduto: TCLookUp
          Left = 140
          Top = 59
          Width = 246
          Height = 19
          Alignment = taLeftJustify
          BevelInner = bvSpace
          BevelOuter = bvLowered
          Color = 14149350
          ParentBackground = False
          TabOrder = 6
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
        object CBitBtn2: TCBitBtn
          Left = 440
          Top = 59
          Width = 103
          Height = 19
          Action = frmPrincipal.actCadProduto
          Caption = '&Produtos'
          TabOrder = 8
          TabStop = False
        end
        object DBEidVariedade: TCDBEdit
          Left = 88
          Top = 84
          Width = 46
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'idVariedade'
          DataSource = dsPadrao
          TabOrder = 9
          Find = dmFind.FindVariedade
          AcaoCad = frmPrincipal.actCadProduto
          DecimalControl = True
          KeyMode = kmNormal
        end
        object LookVariedade: TCLookUp
          Left = 140
          Top = 84
          Width = 294
          Height = 19
          Alignment = taLeftJustify
          BevelInner = bvSpace
          BevelOuter = bvLowered
          Color = 14149350
          ParentBackground = False
          TabOrder = 10
          Key.Strings = (
            'idProduto'
            'idVariedade')
          LookUpKey.Strings = (
            'idProduto'
            'idVariedade')
          ClientDataSet = cdsLookup
          DataSource = dsPadrao
          ValidaCampoObrigatorio = False
          CampoObrigatorio = True
          LookUpTable = 'ProdutoVariedade'
          ReturnField = 'descVariedade'
        end
        object CLookUp2: TCLookUp
          Left = 140
          Top = 109
          Width = 294
          Height = 19
          Alignment = taLeftJustify
          BevelInner = bvSpace
          BevelOuter = bvLowered
          Color = 14149350
          ParentBackground = False
          TabOrder = 12
          Key.Strings = (
            'idSafra'
            'idResultado')
          LookUpKey.Strings = (
            'idResultado')
          AlternateSQL.Strings = (
            
              'SELECT descResultado FROM Resultado WHERE idEmpresa = [DBEidEmpr' +
              'esa] AND idResultado IN (SELECT idResultado FROM SafraTalhao WHE' +
              'RE idEmpresa = [DBEidEmpresa] AND idSafra = ? ) AND idResultado ' +
              '= ?')
          ClientDataSet = cdsLookup
          DataSource = dsPadrao
          ValidaCampoObrigatorio = True
          CampoObrigatorio = True
          LookUpTable = 'Resultado'
          ReturnField = 'descResultado'
        end
        object CBitBtn4: TCBitBtn
          Left = 440
          Top = 109
          Width = 103
          Height = 19
          Action = frmPrincipal.actCadResultado
          Caption = '&Resultado'
          TabOrder = 13
          TabStop = False
        end
        object DBEidResultado: TCDBEdit
          Left = 88
          Top = 109
          Width = 46
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'idResultado'
          DataSource = dsPadrao
          TabOrder = 11
          Find = dmFind.FindResultadoTalhao
          AcaoCad = frmPrincipal.actCadResultado
          DecimalControl = True
          KeyMode = kmNormal
        end
        object LookProdutor: TCLookUp
          Left = 140
          Top = 9
          Width = 294
          Height = 19
          Alignment = taLeftJustify
          BevelInner = bvSpace
          BevelOuter = bvLowered
          Color = 14149350
          ParentBackground = False
          TabOrder = 1
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
        object DBEidProdutor: TCDBEdit
          Left = 88
          Top = 9
          Width = 46
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'idProdutor'
          DataSource = dsPadrao
          TabOrder = 0
          Find = dmFind.FindFornecedor
          AcaoCad = frmPrincipal.actCadSafra
          DecimalControl = True
          KeyMode = kmNormal
        end
      end
      object CGroupBox2: TCGroupBox
        Left = 3
        Top = 379
        Width = 630
        Height = 51
        Caption = 'Observa'#231#245'es'
        Color = 15201011
        ParentColor = False
        TabOrder = 4
        object DBMobsRomaneio: TCDBMemo
          Left = 10
          Top = 14
          Width = 611
          Height = 33
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'obsRomaneio'
          DataSource = dsPadrao
          MaxLength = 1000
          ScrollBars = ssVertical
          TabOrder = 0
          OnExit = DBMobsRomaneioExit
          KeyMemo = kmmUSUpper
        end
      end
      object CGroupBox8: TCGroupBox
        Left = 3
        Top = 145
        Width = 630
        Height = 87
        Caption = 'Dados da Venda / Destino'
        Color = 15201011
        ParentColor = False
        TabOrder = 1
        object CLabel32: TCLabel
          Left = 15
          Top = 41
          Width = 91
          Height = 13
          Alignment = taRightJustify
          Caption = 'Contrato de Venda'
        end
        object CLabel45: TCLabel
          Left = 73
          Top = 19
          Width = 33
          Height = 13
          Alignment = taRightJustify
          Caption = 'Cliente'
        end
        object CLabel54: TCLabel
          Left = 27
          Top = 63
          Width = 79
          Height = 13
          Alignment = taRightJustify
          Caption = 'Data de Entrega'
        end
        object CLabel55: TCLabel
          Left = 198
          Top = 63
          Width = 103
          Height = 13
          Alignment = taRightJustify
          Caption = 'Data de Recebimento'
        end
        object CLookUp1: TCLookUp
          Left = 280
          Top = 38
          Width = 246
          Height = 19
          Alignment = taLeftJustify
          BevelInner = bvSpace
          BevelOuter = bvLowered
          Color = 14149350
          ParentBackground = False
          TabOrder = 4
          Key.Strings = (
            'idEmpresa'
            'idCadEmpresa'
            'idCliente'
            'idContratoVenda')
          LookUpKey.Strings = (
            'idEmpresa'
            'idCadEmpresa'
            'idCliente'
            'idContratoVenda')
          ClientDataSet = cdsLookup
          DataSource = dsPadrao
          ValidaCampoObrigatorio = True
          CampoObrigatorio = True
          LookUpTable = 'vClienteContratoVenda'
          ReturnField = 'descCadCliente'
        end
        object DBEidContratoVenda: TCDBEdit
          Left = 112
          Top = 38
          Width = 82
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'idContratoVenda'
          DataSource = dsPadrao
          TabOrder = 2
          OnEnter = DBEidArmOperacaoEnter
          OnExit = DBEidContratoVendaExit
          OnKeyDown = DBEidContratoVendaKeyDown
          AcaoCad = frmPrincipal.actCadSafra
          DecimalControl = True
          KeyMode = kmUSUpper
        end
        object CLookUp4: TCLookUp
          Left = 200
          Top = 38
          Width = 74
          Height = 19
          Alignment = taLeftJustify
          BevelInner = bvSpace
          BevelOuter = bvLowered
          Color = 14149350
          ParentBackground = False
          TabOrder = 3
          Key.Strings = (
            'idContratoVenda')
          LookUpKey.Strings = (
            'idContratoVenda')
          AlternateSQL.Strings = (
            
              'SELECT dtEmissao FROM ContratoVenda WHERE idEmpresa = [DBEidEmpr' +
              'esa] AND idCadEmpresa = [DBEidCadEmpresa] AND idCliente = [DBEid' +
              'Cliente] AND  idContratoVenda = ?')
          ClientDataSet = cdsLookup
          DataSource = dsPadrao
          ValidaCampoObrigatorio = True
          CampoObrigatorio = True
          LookUpTable = 'ContratoVenda'
          ReturnField = 'dtEmissao'
        end
        object CLookUp5: TCLookUp
          Left = 532
          Top = 38
          Width = 88
          Height = 19
          Alignment = taLeftJustify
          BevelInner = bvSpace
          BevelOuter = bvLowered
          Color = 14149350
          ParentBackground = False
          TabOrder = 5
          Key.Strings = (
            'idEmpresa'
            'idCadEmpresa'
            'idCliente'
            'idContratoVenda')
          LookUpKey.Strings = (
            'idEmpresa'
            'idCadEmpresa'
            'idCliente'
            'idContratoVenda')
          ClientDataSet = cdsLookup
          DataSource = dsPadrao
          ValidaCampoObrigatorio = True
          CampoObrigatorio = True
          LookUpTable = 'ContratoVenda'
          ReturnField = 'vlContratoVenda'
        end
        object CLookUp11: TCLookUp
          Left = 200
          Top = 16
          Width = 326
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
        object DBEidCliente: TCDBEdit
          Left = 112
          Top = 16
          Width = 82
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'idCliente'
          DataSource = dsPadrao
          TabOrder = 0
          OnEnter = DBEidArmOperacaoEnter
          OnExit = DBEidClienteExit
          Find = dmFind.FindFornecedor
          AcaoCad = frmPrincipal.actCadCliente
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEdtEntrega: TCDBEdit
          Left = 112
          Top = 60
          Width = 80
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'dtEntrega'
          DataSource = dsPadrao
          MaxLength = 10
          TabOrder = 6
          DecimalControl = True
          KeyMode = kmDate
        end
        object DBEdtRecebimento: TCDBEdit
          Left = 307
          Top = 60
          Width = 80
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'dtRecebimento'
          DataSource = dsPadrao
          MaxLength = 10
          TabOrder = 7
          DecimalControl = True
          KeyMode = kmDate
        end
        object BtnFinanceiroRom: TCBitBtn
          Left = 393
          Top = 58
          Width = 104
          Height = 22
          Caption = '&Financeiro [F7]'
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
          TabOrder = 8
          TabStop = False
          OnClick = BtnFinanceiroRomClick
        end
      end
      object lookgeraEstoque: TCLookUp
        Left = 759
        Top = 218
        Width = 30
        Height = 19
        Alignment = taLeftJustify
        BevelInner = bvSpace
        BevelOuter = bvLowered
        Color = 14149350
        ParentBackground = False
        TabOrder = 8
        Visible = False
        Key.Strings = (
          'idArmOperacao')
        LookUpKey.Strings = (
          'idArmOperacao')
        ClientDataSet = cdsLookup
        DataSource = dsPadrao
        ValidaCampoObrigatorio = True
        CampoObrigatorio = True
        LookUpTable = 'ArmOperacao'
        ReturnField = 'geraEstoque'
      end
    end
    object TabFinanceiro: TTabSheet
      Caption = 'Dados Complementares'
      ImageIndex = 1
      object CGroupBox5: TCGroupBox
        Left = 6
        Top = 3
        Width = 630
        Height = 72
        Caption = 'Dados da Pesagem'
        TabOrder = 0
        object CLabel13: TCLabel
          Left = 12
          Top = 20
          Width = 26
          Height = 13
          Alignment = taRightJustify
          Caption = 'Bruto'
        end
        object CLabel15: TCLabel
          Left = 120
          Top = 20
          Width = 22
          Height = 13
          Alignment = taRightJustify
          Caption = 'Tara'
        end
        object CLabel16: TCLabel
          Left = 227
          Top = 20
          Width = 64
          Height = 13
          Alignment = taRightJustify
          Caption = 'Peso Produto'
        end
        object CLabel17: TCLabel
          Left = 376
          Top = 20
          Width = 50
          Height = 13
          Alignment = taRightJustify
          Caption = 'Descontos'
        end
        object CLabel18: TCLabel
          Left = 511
          Top = 20
          Width = 33
          Height = 13
          Alignment = taRightJustify
          Caption = 'L'#237'quido'
        end
        object CLabel27: TCLabel
          Left = 153
          Top = 45
          Width = 38
          Height = 13
          Alignment = taRightJustify
          Caption = 'Arrobas'
        end
        object CLabel28: TCLabel
          Left = 10
          Top = 45
          Width = 28
          Height = 13
          Alignment = taRightJustify
          Caption = 'Sacas'
        end
        object CLabel29: TCLabel
          Left = 473
          Top = 45
          Width = 51
          Height = 13
          Alignment = taRightJustify
          Caption = 'Valor Total'
        end
        object lbl1: TCLabel
          Left = 308
          Top = 45
          Width = 64
          Height = 13
          Alignment = taRightJustify
          Caption = 'Valor Unitario'
        end
        object DBEqtPesoBruto: TCDBEdit
          Left = 44
          Top = 17
          Width = 70
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'qtPesoBruto'
          DataSource = dsPadrao
          TabOrder = 0
          OnEnter = DBEidArmOperacaoEnter
          OnExit = DBEqtPesoBrutoExit
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEqtPesoTara: TCDBEdit
          Left = 148
          Top = 17
          Width = 70
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'qtPesoTara'
          DataSource = dsPadrao
          TabOrder = 1
          OnEnter = DBEidArmOperacaoEnter
          OnExit = DBEqtPesoBrutoExit
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEqtPesoProduto: TCDBEdit
          Left = 297
          Top = 17
          Width = 70
          Height = 19
          TabStop = False
          BevelKind = bkTile
          BorderStyle = bsNone
          Color = 14149350
          DataField = 'qtPesoProduto'
          DataSource = dsPadrao
          ReadOnly = True
          TabOrder = 2
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEqtPesoDesconto: TCDBEdit
          Left = 432
          Top = 17
          Width = 70
          Height = 19
          TabStop = False
          BevelKind = bkTile
          BorderStyle = bsNone
          Color = 14149350
          DataField = 'qtPesoDesconto'
          DataSource = dsPadrao
          ReadOnly = True
          TabOrder = 3
          OnEnter = DBEidArmOperacaoEnter
          OnExit = DBEqtPesoBrutoExit
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEqtPesoLiquido: TCDBEdit
          Left = 550
          Top = 17
          Width = 70
          Height = 19
          TabStop = False
          BevelKind = bkTile
          BorderStyle = bsNone
          Color = 14149350
          DataField = 'qtPesoLiquido'
          DataSource = dsPadrao
          ReadOnly = True
          TabOrder = 4
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEqtArrobas: TCDBEdit
          Left = 197
          Top = 42
          Width = 100
          Height = 19
          TabStop = False
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'qtArrobas'
          DataSource = dsPadrao
          MaxLength = 10
          ReadOnly = True
          TabOrder = 6
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEqtSacas: TCDBEdit
          Left = 44
          Top = 42
          Width = 98
          Height = 19
          TabStop = False
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'qtSacas'
          DataSource = dsPadrao
          MaxLength = 10
          ReadOnly = True
          TabOrder = 5
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEvlTotal: TCDBEdit
          Left = 530
          Top = 42
          Width = 90
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'vlTotal'
          DataSource = dsPadrao
          TabOrder = 8
          OnEnter = DBEvlTotalEnter
          OnExit = DBEvlTotalExit
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEvlUnitario: TCDBEdit
          Left = 378
          Top = 42
          Width = 83
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'vlUnitario'
          DataSource = dsPadrao
          TabOrder = 7
          OnEnter = DBEidArmOperacaoEnter
          OnExit = DBEqtPesoBrutoExit
          DecimalControl = True
          KeyMode = kmNormal
        end
      end
      object CGroupBox6: TCGroupBox
        Left = 6
        Top = 79
        Width = 630
        Height = 37
        Caption = 'Valores'
        TabOrder = 1
        object CLabel21: TCLabel
          Left = 13
          Top = 16
          Width = 25
          Height = 13
          Alignment = taRightJustify
          Caption = 'ICMS'
        end
        object CLabel22: TCLabel
          Left = 118
          Top = 16
          Width = 54
          Height = 13
          Alignment = taRightJustify
          Caption = 'ICMS Frete'
        end
        object CLabel24: TCLabel
          Left = 252
          Top = 16
          Width = 57
          Height = 13
          Alignment = taRightJustify
          Caption = 'Cont. Social'
        end
        object CLabel25: TCLabel
          Left = 391
          Top = 16
          Width = 47
          Height = 13
          Alignment = taRightJustify
          Caption = 'Out. Imp.'
        end
        object CLabel26: TCLabel
          Left = 511
          Top = 16
          Width = 38
          Height = 13
          Alignment = taRightJustify
          Caption = 'Val. Liq.'
        end
        object DBEvlIcms: TCDBEdit
          Left = 44
          Top = 13
          Width = 68
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'vlIcms'
          DataSource = dsPadrao
          TabOrder = 0
          OnEnter = DBEidArmOperacaoEnter
          OnExit = DBEqtPesoBrutoExit
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEvlIcmsFrete: TCDBEdit
          Left = 178
          Top = 13
          Width = 68
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'vlIcmsFrete'
          DataSource = dsPadrao
          TabOrder = 1
          OnEnter = DBEidArmOperacaoEnter
          OnExit = DBEqtPesoBrutoExit
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEvlOutrosImp: TCDBEdit
          Left = 444
          Top = 13
          Width = 61
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'vlOutrosImp'
          DataSource = dsPadrao
          TabOrder = 3
          OnEnter = DBEidArmOperacaoEnter
          OnExit = DBEqtPesoBrutoExit
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEvlLiquido: TCDBEdit
          Left = 555
          Top = 13
          Width = 70
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'vlLiquido'
          DataSource = dsPadrao
          TabOrder = 4
          OnEnter = DBEidArmOperacaoEnter
          OnExit = DBEqtPesoBrutoExit
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEvlContribSocial: TCDBEdit
          Left = 315
          Top = 13
          Width = 70
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'vlContribSocial'
          DataSource = dsPadrao
          TabOrder = 2
          OnEnter = DBEidArmOperacaoEnter
          OnExit = DBEqtPesoBrutoExit
          DecimalControl = True
          KeyMode = kmNormal
        end
      end
      object CGroupBox3: TCGroupBox
        Left = 6
        Top = 122
        Width = 630
        Height = 167
        Caption = 'Dados de Transporte'
        Color = 15201011
        ParentColor = False
        TabOrder = 2
        object CLabel9: TCLabel
          Left = 57
          Top = 16
          Width = 25
          Height = 13
          Alignment = taRightJustify
          Caption = 'Placa'
        end
        object CLabel8: TCLabel
          Left = 179
          Top = 16
          Width = 75
          Height = 13
          Alignment = taRightJustify
          Caption = 'Motorista/Forn.'
        end
        object CLabel1: TCLabel
          Left = 376
          Top = 41
          Width = 72
          Height = 13
          Alignment = taRightJustify
          Caption = 'Contrato Frete'
        end
        object CLabel20: TCLabel
          Left = 37
          Top = 41
          Width = 45
          Height = 13
          Alignment = taRightJustify
          Caption = 'Condutor'
        end
        object CLabel30: TCLabel
          Left = 181
          Top = 116
          Width = 68
          Height = 13
          Alignment = taRightJustify
          Caption = 'Valor de Frete'
        end
        object CLabel46: TCLabel
          Left = 6
          Top = 116
          Width = 76
          Height = 13
          Alignment = taRightJustify
          Caption = 'Ordem de Frete'
        end
        object CLabel69: TCLabel
          Left = 322
          Top = 116
          Width = 53
          Height = 13
          Alignment = taRightJustify
          Caption = 'Frete Total'
        end
        object CLabel68: TCLabel
          Left = 461
          Top = 116
          Width = 67
          Height = 13
          Alignment = taRightJustify
          Caption = 'Adiantamento'
        end
        object CLabel66: TCLabel
          Left = 147
          Top = 141
          Width = 68
          Height = 13
          Alignment = taRightJustify
          Caption = 'Tarifa (Class.)'
        end
        object CLabel67: TCLabel
          Left = 48
          Top = 141
          Width = 34
          Height = 13
          Alignment = taRightJustify
          Caption = 'Seguro'
        end
        object DBEplaca: TCDBEdit
          Left = 88
          Top = 13
          Width = 85
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'placa'
          DataSource = dsPadrao
          TabOrder = 0
          DecimalControl = True
          KeyMode = kmUSUpper
        end
        object DBEdescMotorista: TCDBEdit
          Left = 88
          Top = 38
          Width = 282
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'descMotorista'
          DataSource = dsPadrao
          TabOrder = 3
          DecimalControl = True
          KeyMode = kmUSUpper
        end
        object DBEidMotorista: TCDBEdit
          Left = 260
          Top = 13
          Width = 53
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'idMotorista'
          DataSource = dsPadrao
          TabOrder = 1
          OnEnter = DBEidArmOperacaoEnter
          OnExit = DBEidMotoristaExit
          Find = dmFind.FindFornecedor
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEidContratoFrete: TCDBEdit
          Left = 454
          Top = 38
          Width = 46
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'idContratoFrete'
          DataSource = dsPadrao
          TabOrder = 4
          OnExit = DBEidContratoFreteExit
          OnKeyDown = DBEidContratoFreteKeyDown
          AcaoCad = frmPrincipal.actCadSafra
          DecimalControl = True
          KeyMode = kmNormal
        end
        object LookEmissaoFrete: TCLookUp
          Left = 506
          Top = 38
          Width = 114
          Height = 19
          Alignment = taLeftJustify
          BevelInner = bvSpace
          BevelOuter = bvLowered
          Color = 14149350
          ParentBackground = False
          TabOrder = 5
          Key.Strings = (
            'idContratoFrete')
          LookUpKey.Strings = (
            'idContratoFrete')
          ClientDataSet = cdsLookup
          DataSource = dsPadrao
          ValidaCampoObrigatorio = True
          CampoObrigatorio = True
          LookUpTable = 'ContratoFrete'
          ReturnField = 'dtEmissao'
        end
        object LookMotorista: TCLookUp
          Left = 319
          Top = 13
          Width = 301
          Height = 19
          Alignment = taLeftJustify
          BevelInner = bvSpace
          BevelOuter = bvLowered
          Color = 14149350
          ParentBackground = False
          TabOrder = 2
          Key.Strings = (
            'idMotorista')
          LookUpKey.Strings = (
            'idCliente')
          ClientDataSet = cdsLookup
          DataSource = dsPadrao
          ValidaCampoObrigatorio = True
          CampoObrigatorio = True
          LookUpTable = 'vCadClienteContabil'
          ReturnField = 'descCadCliente'
        end
        object DBRGtpContratoFrete: TCDBRadioGroup
          Left = 88
          Top = 60
          Width = 533
          Height = 47
          Caption = 'Tipo da Cobran'#231'a do Contrato do Frete'
          Columns = 3
          DataField = 'tpContratoFrete'
          DataSource = dsPadrao
          Items.Strings = (
            'Cobran'#231'a por Tonelada'
            'Cobran'#231'a por Saca 60 Kg'
            'Cobran'#231'a por Carga/Viagem')
          TabOrder = 6
          Values.Strings = (
            'T'
            'S'
            'C')
        end
        object DBEvlFrete: TCDBEdit
          Left = 255
          Top = 113
          Width = 61
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'vlFrete'
          DataSource = dsPadrao
          TabOrder = 8
          OnEnter = DBEvlTotalEnter
          OnExit = DBEvlFreteExit
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEnrCartaFrete: TCDBEdit
          Left = 88
          Top = 113
          Width = 87
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'nrCartaFrete'
          DataSource = dsPadrao
          MaxLength = 10
          TabOrder = 7
          DecimalControl = True
          KeyMode = kmInteger
        end
        object DBEvlFreteTotal: TCDBEdit
          Left = 381
          Top = 113
          Width = 74
          Height = 19
          TabStop = False
          BevelKind = bkTile
          BorderStyle = bsNone
          Color = 14149350
          DataField = 'vlFreteTotal'
          DataSource = dsPadrao
          ReadOnly = True
          TabOrder = 9
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEvlAdiantamento: TCDBEdit
          Left = 534
          Top = 113
          Width = 76
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'vlAdiantamento'
          DataSource = dsPadrao
          TabOrder = 10
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEvlSeguro: TCDBEdit
          Left = 88
          Top = 138
          Width = 53
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'vlSeguro'
          DataSource = dsPadrao
          TabOrder = 11
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEvlTarifaClassif: TCDBEdit
          Left = 221
          Top = 138
          Width = 53
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'vlTarifaClassif'
          DataSource = dsPadrao
          TabOrder = 12
          DecimalControl = True
          KeyMode = kmNormal
        end
        object BtnOrdemFrete: TCBitBtn
          Left = 280
          Top = 138
          Width = 146
          Height = 22
          Caption = '&Abrir Ordem de Frete'
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
          TabOrder = 13
          TabStop = False
          OnClick = BtnOrdemFreteClick
        end
      end
    end
    object TabDesembarque: TTabSheet
      Caption = 'Desembarque/Classifica'#231#227'o'
      ImageIndex = 3
      object CGroupBox12: TCGroupBox
        Left = 3
        Top = 11
        Width = 529
        Height = 67
        Caption = 'Dados do Desconto'
        Color = 15201011
        ParentColor = False
        TabOrder = 0
        object CLabel42: TCLabel
          Left = 24
          Top = 21
          Width = 45
          Height = 13
          Alignment = taRightJustify
          Caption = 'Desconto'
        end
        object CLabel48: TCLabel
          Left = 130
          Top = 43
          Width = 59
          Height = 13
          Alignment = taRightJustify
          Caption = '% Desconto'
        end
        object CLabel43: TCLabel
          Left = 250
          Top = 43
          Width = 55
          Height = 13
          Alignment = taRightJustify
          Caption = 'Qtde.Desc.'
        end
        object CLabel52: TCLabel
          Left = 21
          Top = 43
          Width = 48
          Height = 13
          Alignment = taRightJustify
          Caption = '% Medido'
        end
        object CLabel53: TCLabel
          Left = 387
          Top = 43
          Width = 62
          Height = 13
          Alignment = taRightJustify
          Caption = 'Peso Destino'
        end
        object DBEidDesconto: TCDBEdit
          Left = 75
          Top = 18
          Width = 37
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'idDesconto'
          DataSource = dsClassificacao
          TabOrder = 0
          OnExit = DBEidDescontoExit
          Find = dmFind.FindDesconto
          AcaoCad = frmPrincipal.actCadSafra
          DecimalControl = True
          KeyMode = kmNormal
        end
        object CLookUp18: TCLookUp
          Left = 118
          Top = 18
          Width = 247
          Height = 19
          Alignment = taLeftJustify
          BevelInner = bvSpace
          BevelOuter = bvLowered
          Color = 14149350
          ParentBackground = False
          TabOrder = 1
          Key.Strings = (
            'idDesconto')
          LookUpKey.Strings = (
            'idDesconto')
          ClientDataSet = cdsLookup
          DataSource = dsClassificacao
          ValidaCampoObrigatorio = True
          CampoObrigatorio = True
          LookUpTable = 'Desconto'
          ReturnField = 'descDesconto'
          object lookalteraQtde: TCLookUp
            Left = 214
            Top = 0
            Width = 31
            Height = 19
            Alignment = taLeftJustify
            BevelInner = bvSpace
            BevelOuter = bvLowered
            Color = 14149350
            ParentBackground = False
            TabOrder = 0
            Visible = False
            Key.Strings = (
              'idDesconto')
            LookUpKey.Strings = (
              'idDesconto')
            ClientDataSet = cdsLookup
            DataSource = dsClassificacao
            ValidaCampoObrigatorio = True
            CampoObrigatorio = True
            LookUpTable = 'Desconto'
            ReturnField = 'alteraQtde'
          end
        end
        object DBEprDesconto: TCDBEdit
          Left = 195
          Top = 40
          Width = 49
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'prDesconto'
          DataSource = dsClassificacao
          TabOrder = 3
          OnEnter = DBEidArmOperacaoEnter
          OnExit = DBEprDescontoExit
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEqtDesconto: TCDBEdit
          Left = 311
          Top = 40
          Width = 70
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'qtDesconto'
          DataSource = dsClassificacao
          TabOrder = 4
          OnEnter = DBEidArmOperacaoEnter
          OnExit = DBEqtDescontoExit
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEprMedido: TCDBEdit
          Left = 75
          Top = 40
          Width = 49
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'prMedido'
          DataSource = dsClassificacao
          TabOrder = 2
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEqtDestino: TCDBEdit
          Left = 455
          Top = 40
          Width = 70
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'qtDestino'
          DataSource = dsClassificacao
          TabOrder = 5
          OnEnter = DBEidArmOperacaoEnter
          OnExit = DBEqtDescontoExit
          DecimalControl = True
          KeyMode = kmNormal
        end
      end
      object CGroupBox13: TCGroupBox
        Left = 3
        Top = 84
        Width = 529
        Height = 222
        TabOrder = 1
        object CDBGrid2: TCDBGrid
          Left = 3
          Top = 4
          Width = 519
          Height = 212
          TabStop = False
          DataSource = dsClassificacao
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
              FieldName = 'idDesconto'
              Title.Caption = 'C'#243'digo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'descDesconto'
              Title.Caption = 'Desconto'
              Width = 210
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'prMedido'
              Title.Caption = '% Medido'
              Width = 70
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'prDesconto'
              Title.Caption = '% Desconto'
              Width = 70
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'qtDesconto'
              Title.Caption = 'Qtde. Desconto'
              Width = 85
              Visible = True
            end>
        end
      end
      object CGroupBox14: TCGroupBox
        Left = 538
        Top = 11
        Width = 92
        Height = 295
        TabOrder = 2
        object BtnAdicionarClas: TCBitBtn
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
          OnClick = BtnAdicionarClasClick
        end
        object BtnCancelarClas: TCBitBtn
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
          OnClick = BtnAdicionarClasClick
        end
        object BtnRetirarClas: TCBitBtn
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
          OnClick = BtnAdicionarClasClick
        end
        object BtnNovoClas: TCBitBtn
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
          OnClick = BtnAdicionarClasClick
        end
        object BtnAjustar: TCBitBtn
          Left = 9
          Top = 135
          Width = 75
          Height = 25
          Caption = '&Ajustar'
          Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            2000000000000004000000000000000000000000000000000000FF00FF00CEC6
            C1FEA99D96FF85756CFF6F5C52FF655046FF5B463CFF564036FF634D44FF6852
            49FF675148FF665147FF69564DFF7A6A62FF9C8F89FE857E7F7BE2DAD4FE726E
            55FF765648FF7C5D50FF7A5B4DFF795A4DFF77574CFF74564BFF73544AFF7253
            48FF715148FF6B4C42FF7D5D54FFAC8480FF4C4E35FFBFB6B4FDAE7B6EFFD9AD
            9DFFD5AA9CFFD1A79AFFCEA498FFCBA196FFC89F93FFC49C92FFC09990FFBC96
            8EFFB9938DFF95776AFF7A5C47FFD4A891FF232709FFA39B97FFAE7B6EFFEFE7
            DEFFFFEEDDFFFFEAD6FFFFE6CDFFFFE3C8FFFFDFBEFFFFDCB9FFFFD8B2FFFFD4
            A9FFFFD0A2FFD9AAA8FF6E503EFFB08876FF281F0BFF544B48FFDDD6D0FFC28F
            79FFFFF2E5FFFFEEDDFF6A9D58FFFFE6CDFFFFE3C8FFFFDFBEFFFFDCB9FFFFD8
            B2FFFFD4A9FFF7BFB0FF7C5E4FFF906D5DFF4D3127FF463835FFECE8E3FFC895
            7CFFFEF5EBFFFFF2E5FF2D842BFF7FA86AFFFFE6CDFFFFE3C8FFFFDFBEFFFFDC
            B9FFFFD8B2FFFFCFAEFF997970FF745547FF533E31FF4A3935FFFF00FF00CF9C
            80FFF3EFEAFFFFF5ECFF2D842BFF2D842BFFB1C194FFFFE6CDFFFFE3C8FFFFDF
            BEFFFFDCB9FFFFD8B2FFDDA5A1FF6B4C3DFF55372DFF4B3934FF2D842BFF2D84
            2BFF2D842BFF2D842BFF2D842BFF1EB73CFF0D8212FFE9DFC4FFFFE6CDFFFFE3
            C8FFFFDFBEFFFFDCB9FFF7B9ACFF7D5E51FF52362BFF4B3934FF339039FF55EF
            88FF47E17BFF39D36CFF31CA63FF21BB44FF10A821FF248020FFFFEAD6FFFFE6
            CDFFFFE3C8FFFFDFBEFFFFD2B7FF9D8075FF44281DFF4A3732FF339039FF48D9
            73FF3CCD67FF31C25CFF2BBD57FF25BE4BFF12A525FF2D842BFFFFEEDDFFFFEA
            D6FFFFE6CDFFFFE3C8FFFFDFBEFFE1A29BFF402418FF503B33FFFF00FF00FF00
            FF00CF9C80FFC8D1BBFF2B8C34FF27BF4EFF268528FFFFF5ECFFFFF2E5FFFFEE
            DDFFFFEAD6FFFFE6CDFFFFE3C8FFF8B3A8FF65493CFF4E382FFFFF00FF00FF00
            FF00D7AC8BFFCF9C80FF32903BFF1E8628FFF7F9F4FFFFF8F1FFFFF5ECFFFFF2
            E5FFFFEEDDFFFFE4D3FFFFDEC9FFFFC4B6FF937469FF442D23FFFF00FF00FF00
            FF00FF00FF00DCA987FF2F812FFFDBE9DBFFFFFFFFFFFFFDFBFFFFF8F1FFFFF5
            ECFFF8E6D7FFDBA383FFD69671FFD08E6CFFBD9A80FF5C4841FFFF00FF00FF00
            FF00FF00FF00DCA987FFF9F2EBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFBFFFFF8
            F1FFFDF3E9FFDCA987FFFFB34EFFE0A86CFF997269FFA3928FFFFF00FF00FF00
            FF00FF00FF00FBF8F1FFDCA987FFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD
            FBFFFFF8F1FFDCA987FFE6BB93FF6A6546FF7C8768FFECEBE7FBFF00FF00FF00
            FF00FF00FF00FF00FF00DCA987FFDCA987FFDCA987FFDCA987FFDCA987FFDCA9
            87FFDCA987FFDCA987FFE5DFDAFFF2F1F0FFF7F5F5FBCCB2A956}
          Margin = 5
          TabOrder = 4
          OnClick = BtnAjustarClick
        end
      end
      object CGroupBox15: TCGroupBox
        Left = 3
        Top = 312
        Width = 627
        Height = 34
        TabOrder = 3
        object CLabel49: TCLabel
          Left = 15
          Top = 12
          Width = 61
          Height = 13
          Alignment = taRightJustify
          Caption = 'Peso Bruto'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object CLabel50: TCLabel
          Left = 194
          Top = 12
          Width = 99
          Height = 13
          Alignment = taRightJustify
          Caption = 'Total Descontado'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object CLabel51: TCLabel
          Left = 437
          Top = 12
          Width = 70
          Height = 13
          Alignment = taRightJustify
          Caption = 'Peso L'#237'quido'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object DBEqtPesoProdutoD: TCDBEdit
          Left = 82
          Top = 9
          Width = 93
          Height = 19
          TabStop = False
          BevelKind = bkTile
          BorderStyle = bsNone
          Color = 14149350
          DataField = 'qtPesoProduto'
          DataSource = dsPadrao
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 0
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEqtTotalDesconto: TCDBEdit
          Left = 299
          Top = 9
          Width = 93
          Height = 19
          TabStop = False
          BevelKind = bkTile
          BorderStyle = bsNone
          Color = 14149350
          DataField = 'qtTotalDesconto'
          DataSource = dsClassificacao
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
        object DBEqtPesoLiquidoD: TCDBEdit
          Left = 513
          Top = 9
          Width = 93
          Height = 19
          TabStop = False
          BevelKind = bkTile
          BorderStyle = bsNone
          Color = 14149350
          DataField = 'qtPesoLiquido'
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
          KeyMode = kmNormal
        end
      end
      object panAjuste: TPanel
        Left = 24
        Top = 419
        Width = 585
        Height = 260
        Color = 10724259
        ParentBackground = False
        TabOrder = 4
        Visible = False
        object CGroupBox20: TCGroupBox
          Left = 11
          Top = 11
          Width = 566
          Height = 102
          Caption = 'Dados do Ajuste'
          Color = 15201011
          ParentColor = False
          TabOrder = 0
          object CLabel72: TCLabel
            Left = 282
            Top = 23
            Width = 69
            Height = 13
            Alignment = taRightJustify
            Caption = 'Desc. Anterior'
          end
          object CLabel73: TCLabel
            Left = 137
            Top = 23
            Width = 80
            Height = 13
            Alignment = taRightJustify
            Caption = '% Desc.Anterior'
          end
          object CLabel70: TCLabel
            Left = 21
            Top = 23
            Width = 23
            Height = 13
            Alignment = taRightJustify
            Caption = 'Data'
          end
          object CLabel71: TCLabel
            Left = 12
            Top = 48
            Width = 32
            Height = 13
            Alignment = taRightJustify
            Caption = 'Motivo'
          end
          object CLabel74: TCLabel
            Left = 8
            Top = 73
            Width = 36
            Height = 13
            Alignment = taRightJustify
            Caption = 'Usu'#225'rio'
          end
          object DBEqtDescontoAnt: TCDBEdit
            Left = 357
            Top = 20
            Width = 70
            Height = 19
            TabStop = False
            BevelKind = bkTile
            BorderStyle = bsNone
            Color = 14149350
            DataField = 'qtDescontoAnt'
            DataSource = dsAjuste
            ReadOnly = True
            TabOrder = 2
            OnEnter = DBEidArmOperacaoEnter
            OnExit = DBEqtDescontoCDExit
            DecimalControl = True
            KeyMode = kmNormal
          end
          object DBEprDescontoAnt: TCDBEdit
            Left = 223
            Top = 20
            Width = 49
            Height = 19
            TabStop = False
            BevelKind = bkTile
            BorderStyle = bsNone
            Color = 14149350
            DataField = 'prDescontoAnt'
            DataSource = dsAjuste
            ReadOnly = True
            TabOrder = 1
            DecimalControl = True
            KeyMode = kmNormal
          end
          object DBEdtAjuste: TCDBEdit
            Left = 50
            Top = 20
            Width = 80
            Height = 19
            TabStop = False
            BevelKind = bkTile
            BorderStyle = bsNone
            Color = 14149350
            DataField = 'dtAjuste'
            DataSource = dsAjuste
            MaxLength = 10
            ReadOnly = True
            TabOrder = 0
            DecimalControl = True
            KeyMode = kmDate
          end
          object DBCKalteraOrdemFrete: TCDBCheckBox
            Left = 433
            Top = 22
            Width = 131
            Height = 17
            Caption = 'Altera ordem de Frete?'
            DataField = 'alteraOrdemFrete'
            DataSource = dsAjuste
            TabOrder = 3
            ValueChecked = 'S'
            ValueUnchecked = 'N'
            Visible = False
          end
          object DBEdescMotivo: TCDBEdit
            Left = 50
            Top = 45
            Width = 510
            Height = 19
            BevelKind = bkTile
            BorderStyle = bsNone
            DataField = 'descMotivo'
            DataSource = dsAjuste
            TabOrder = 4
            DecimalControl = True
            KeyMode = kmUSUpper
          end
          object DBEidUsuario: TCDBEdit
            Left = 50
            Top = 70
            Width = 46
            Height = 19
            TabStop = False
            BevelKind = bkTile
            BorderStyle = bsNone
            Color = 14149350
            DataField = 'idUsuario'
            DataSource = dsAjuste
            ReadOnly = True
            TabOrder = 5
            DecimalControl = True
            KeyMode = kmUSUpper
          end
          object DBEdescUsuario: TCDBEdit
            Left = 102
            Top = 70
            Width = 338
            Height = 19
            TabStop = False
            BevelKind = bkTile
            BorderStyle = bsNone
            Color = 14149350
            DataField = 'descUsuario'
            DataSource = dsAjuste
            ReadOnly = True
            TabOrder = 6
            DecimalControl = True
            KeyMode = kmUSUpper
          end
          object BtnConfirmaAjuste: TCBitBtn
            Left = 446
            Top = 70
            Width = 114
            Height = 25
            Caption = '&Confirmar'
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
            TabOrder = 7
            OnClick = BtnConfirmaAjusteClick
          end
        end
        object CGroupBox21: TCGroupBox
          Left = 11
          Top = 119
          Width = 566
          Height = 133
          TabOrder = 1
          object gridAjuste: TCDBGrid
            Left = 3
            Top = 4
            Width = 557
            Height = 125
            TabStop = False
            DataSource = dsAjuste
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
                FieldName = 'idAjuste'
                Title.Caption = 'ID'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'dtAjuste'
                Title.Caption = 'Data'
                Width = 80
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'prDescontoAnt'
                Title.Caption = '%Desc.Ant.'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'prDescontoNovo'
                Title.Caption = '%Desc.Novo'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'qtDescontoAnt'
                Title.Caption = 'Qtde.Ant.'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'qtDescontoNovo'
                Title.Caption = 'Qtde.Novo'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'alteraOrdemFrete'
                Title.Caption = 'Frete?'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'descMotivo'
                Title.Caption = 'Motivo'
                Width = 150
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'idUsuario'
                Title.Caption = 'Usuario'
                Width = 45
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'descUsuario'
                Title.Caption = 'Nome Usu'#225'rio'
                Width = 150
                Visible = True
              end>
          end
        end
      end
      object BtnVerAjuste: TCBitBtn
        Left = 455
        Top = 360
        Width = 175
        Height = 25
        Caption = '&Visualizar ajustes efetuados'
        Glyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000FF00FF00CEC6
          C1FEA99D96FF85756CFF6F5C52FF655046FF5B463CFF564036FF634D44FF6852
          49FF675148FF665147FF69564DFF7A6A62FF9C8F89FE857E7F7BE2DAD4FE726E
          55FF765648FF7C5D50FF7A5B4DFF795A4DFF77574CFF74564BFF73544AFF7253
          48FF715148FF6B4C42FF7D5D54FFAC8480FF4C4E35FFBFB6B4FDAE7B6EFFD9AD
          9DFFD5AA9CFFD1A79AFFCEA498FFCBA196FFC89F93FFC49C92FFC09990FFBC96
          8EFFB9938DFF95776AFF7A5C47FFD4A891FF232709FFA39B97FFAE7B6EFFEFE7
          DEFFFFEEDDFFFFEAD6FFFFE6CDFFFFE3C8FFFFDFBEFFFFDCB9FFFFD8B2FFFFD4
          A9FFFFD0A2FFD9AAA8FF6E503EFFB08876FF281F0BFF544B48FFDDD6D0FFC28F
          79FFFFF2E5FFFFEEDDFF6A9D58FFFFE6CDFFFFE3C8FFFFDFBEFFFFDCB9FFFFD8
          B2FFFFD4A9FFF7BFB0FF7C5E4FFF906D5DFF4D3127FF463835FFECE8E3FFC895
          7CFFFEF5EBFFFFF2E5FF2D842BFF7FA86AFFFFE6CDFFFFE3C8FFFFDFBEFFFFDC
          B9FFFFD8B2FFFFCFAEFF997970FF745547FF533E31FF4A3935FFFF00FF00CF9C
          80FFF3EFEAFFFFF5ECFF2D842BFF2D842BFFB1C194FFFFE6CDFFFFE3C8FFFFDF
          BEFFFFDCB9FFFFD8B2FFDDA5A1FF6B4C3DFF55372DFF4B3934FF2D842BFF2D84
          2BFF2D842BFF2D842BFF2D842BFF1EB73CFF0D8212FFE9DFC4FFFFE6CDFFFFE3
          C8FFFFDFBEFFFFDCB9FFF7B9ACFF7D5E51FF52362BFF4B3934FF339039FF55EF
          88FF47E17BFF39D36CFF31CA63FF21BB44FF10A821FF248020FFFFEAD6FFFFE6
          CDFFFFE3C8FFFFDFBEFFFFD2B7FF9D8075FF44281DFF4A3732FF339039FF48D9
          73FF3CCD67FF31C25CFF2BBD57FF25BE4BFF12A525FF2D842BFFFFEEDDFFFFEA
          D6FFFFE6CDFFFFE3C8FFFFDFBEFFE1A29BFF402418FF503B33FFFF00FF00FF00
          FF00CF9C80FFC8D1BBFF2B8C34FF27BF4EFF268528FFFFF5ECFFFFF2E5FFFFEE
          DDFFFFEAD6FFFFE6CDFFFFE3C8FFF8B3A8FF65493CFF4E382FFFFF00FF00FF00
          FF00D7AC8BFFCF9C80FF32903BFF1E8628FFF7F9F4FFFFF8F1FFFFF5ECFFFFF2
          E5FFFFEEDDFFFFE4D3FFFFDEC9FFFFC4B6FF937469FF442D23FFFF00FF00FF00
          FF00FF00FF00DCA987FF2F812FFFDBE9DBFFFFFFFFFFFFFDFBFFFFF8F1FFFFF5
          ECFFF8E6D7FFDBA383FFD69671FFD08E6CFFBD9A80FF5C4841FFFF00FF00FF00
          FF00FF00FF00DCA987FFF9F2EBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFBFFFFF8
          F1FFFDF3E9FFDCA987FFFFB34EFFE0A86CFF997269FFA3928FFFFF00FF00FF00
          FF00FF00FF00FBF8F1FFDCA987FFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD
          FBFFFFF8F1FFDCA987FFE6BB93FF6A6546FF7C8768FFECEBE7FBFF00FF00FF00
          FF00FF00FF00FF00FF00DCA987FFDCA987FFDCA987FFDCA987FFDCA987FFDCA9
          87FFDCA987FFDCA987FFE5DFDAFFF2F1F0FFF7F5F5FBCCB2A956}
        Margin = 5
        TabOrder = 5
        Visible = False
        OnClick = BtnVerAjusteClick
      end
    end
    object TabContratoCompra: TTabSheet
      Caption = 'Contrato de Compra'
      ImageIndex = 2
      object CGroupBox9: TCGroupBox
        Left = 3
        Top = 3
        Width = 630
        Height = 172
        Caption = 'Dados da Compra / Origem'
        Color = 15201011
        ParentColor = False
        TabOrder = 0
        object CLabel33: TCLabel
          Left = 8
          Top = 41
          Width = 98
          Height = 13
          Alignment = taRightJustify
          Caption = 'Contrato de Compra'
        end
        object CLabel38: TCLabel
          Left = 68
          Top = 85
          Width = 38
          Height = 13
          Alignment = taRightJustify
          Caption = 'Produto'
        end
        object CLabel40: TCLabel
          Left = 510
          Top = 85
          Width = 24
          Height = 13
          Alignment = taRightJustify
          Caption = 'Valor'
        end
        object CLabel12: TCLabel
          Left = 405
          Top = 130
          Width = 56
          Height = 13
          Alignment = taRightJustify
          Caption = 'Quantidade'
        end
        object CLabel44: TCLabel
          Left = 30
          Top = 19
          Width = 76
          Height = 13
          Alignment = taRightJustify
          Caption = 'Forn./Vendedor'
        end
        object CLabel34: TCLabel
          Left = 508
          Top = 64
          Width = 26
          Height = 13
          Alignment = taRightJustify
          Caption = 'Saldo'
        end
        object CLabel35: TCLabel
          Left = 370
          Top = 64
          Width = 41
          Height = 13
          Alignment = taRightJustify
          Caption = 'Retirado'
        end
        object CLabel36: TCLabel
          Left = 231
          Top = 64
          Width = 28
          Height = 13
          Alignment = taRightJustify
          Caption = 'Qtde.'
        end
        object CLabel47: TCLabel
          Left = 31
          Top = 107
          Width = 75
          Height = 13
          Alignment = taRightJustify
          Caption = 'Local Embarque'
        end
        object CLabel56: TCLabel
          Left = 188
          Top = 130
          Width = 50
          Height = 13
          Alignment = taRightJustify
          Caption = 'Descontos'
        end
        object CLabel57: TCLabel
          Left = 54
          Top = 130
          Width = 52
          Height = 13
          Alignment = taRightJustify
          Caption = 'Peso Bruto'
        end
        object BtnDesconto: TSpeedButton
          Left = 313
          Top = 126
          Width = 88
          Height = 19
          Caption = 'Desc. [F8]'
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
          NumGlyphs = 2
          OnClick = BtnDescontoClick
        end
        object DBEidContratoCompra: TCDBEdit
          Left = 112
          Top = 38
          Width = 99
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'idContratoCompra'
          DataSource = dsCompra
          TabOrder = 4
          OnExit = DBEidContratoCompraExit
          OnKeyDown = DBEidContratoCompraKeyDown
          AcaoCad = frmPrincipal.actCadSafra
          DecimalControl = True
          KeyMode = kmUSUpper
        end
        object LookProdutoCompra: TCLookUp
          Left = 181
          Top = 82
          Width = 268
          Height = 19
          Alignment = taLeftJustify
          BevelInner = bvSpace
          BevelOuter = bvLowered
          Color = 14149350
          ParentBackground = False
          TabOrder = 5
          Key.Strings = (
            'idContratoCompra')
          LookUpKey.Strings = (
            'idContratoCompra')
          AlternateSQL.Strings = (
            
              'SELECT descProduto FROM vClienteContratoCompra WHERE idEmpresa =' +
              ' [DBEidEmpresa] AND idCadEmpresa = [DBEidCadEmpresa] AND idForne' +
              'cedor = [DBEidFornecedor] AND idContratoCompra = ?')
          ClientDataSet = cdsLookup
          DataSource = dsCompra
          ValidaCampoObrigatorio = True
          CampoObrigatorio = True
          LookUpTable = 'vClienteContratoCompra'
          ReturnField = 'descProduto'
        end
        object LookValorProdutoCompra: TCLookUp
          Left = 540
          Top = 82
          Width = 80
          Height = 19
          Alignment = taLeftJustify
          BevelInner = bvSpace
          BevelOuter = bvLowered
          Color = 14149350
          ParentBackground = False
          TabOrder = 6
          Key.Strings = (
            'idContratoCompra')
          LookUpKey.Strings = (
            'idContratoCompra')
          AlternateSQL.Strings = (
            
              'SELECT vlProduto FROM vClienteContratoCompra WHERE idEmpresa = [' +
              'DBEidEmpresa] AND idCadEmpresa = [DBEidCadEmpresa] AND idFornece' +
              'dor = [DBEidFornecedor] AND idContratoCompra = ?')
          ClientDataSet = cdsLookup
          DataSource = dsCompra
          ValidaCampoObrigatorio = True
          CampoObrigatorio = True
          LookUpTable = 'vClienteContratoCompra'
          ReturnField = 'vlProduto'
        end
        object CLookUp6: TCLookUp
          Left = 112
          Top = 82
          Width = 63
          Height = 19
          Alignment = taLeftJustify
          BevelInner = bvSpace
          BevelOuter = bvLowered
          Color = 14149350
          ParentBackground = False
          TabOrder = 13
          Key.Strings = (
            'idContratoCompra')
          LookUpKey.Strings = (
            'idContratoCompra')
          AlternateSQL.Strings = (
            
              'SELECT idProduto FROM vClienteContratoCompra WHERE idEmpresa = [' +
              'DBEidEmpresa] AND idCadEmpresa = [DBEidCadEmpresa] AND idFornece' +
              'dor = [DBEidFornecedor] AND idContratoCompra = ?')
          ClientDataSet = cdsLookup
          DataSource = dsCompra
          ValidaCampoObrigatorio = True
          CampoObrigatorio = True
          LookUpTable = 'vClienteContratoCompra'
          ReturnField = 'idProduto'
        end
        object CLookUp10: TCLookUp
          Left = 455
          Top = 82
          Width = 42
          Height = 19
          Alignment = taLeftJustify
          BevelInner = bvSpace
          BevelOuter = bvLowered
          Color = 14149350
          ParentBackground = False
          TabOrder = 14
          Key.Strings = (
            'idContratoCompra')
          LookUpKey.Strings = (
            'idContratoCompra')
          AlternateSQL.Strings = (
            
              'SELECT ProdMedida.descAbreviada FROM vClienteContratoCompra INNE' +
              'R JOIN Produto ON vClienteContratoCompra.idProduto = Produto.idP' +
              'roduto INNER JOIN ProdMedida ON Produto.idProdMedida = ProdMedid' +
              'a.idProdMedida WHERE vClienteContratoCompra.idEmpresa = [DBEidEm' +
              'presa] AND vClienteContratoCompra.idCadEmpresa = [DBEidCadEmpres' +
              'a] AND vClienteContratoCompra.idFornecedor = [DBEidFornecedor] A' +
              'ND vClienteContratoCompra.idContratoCompra = ?')
          ClientDataSet = cdsLookup
          DataSource = dsCompra
          ValidaCampoObrigatorio = False
          CampoObrigatorio = True
          LookUpTable = 'Produto'
          ReturnField = 'descAbreviada'
        end
        object DBEqtProduto: TCDBEdit
          Left = 467
          Top = 127
          Width = 70
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'qtProduto'
          DataSource = dsCompra
          TabOrder = 15
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBCKaceitaClassifDestino: TCDBCheckBox
          Left = 112
          Top = 149
          Width = 179
          Height = 17
          Caption = 'Aceita Classifica'#231#227'o do Destino?'
          DataField = 'aceitaClassifDestino'
          DataSource = dsCompra
          TabOrder = 16
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
        object DBEidFornecedor: TCDBEdit
          Left = 112
          Top = 16
          Width = 72
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'idFornecedor'
          DataSource = dsCompra
          TabOrder = 0
          OnKeyDown = DBEidFornecedorKeyDown
          OnKeyPress = DBEidFornecedorKeyPress
          AcaoCad = frmPrincipal.actCadSafra
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEidCadFornecedor: TCDBEdit
          Left = 190
          Top = 16
          Width = 28
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'idCadFornecedor'
          DataSource = dsCompra
          TabOrder = 1
          OnKeyDown = DBEidFornecedorKeyDown
          OnKeyPress = DBEidFornecedorKeyPress
          AcaoCad = frmPrincipal.actCadSafra
          DecimalControl = True
          KeyMode = kmNormal
        end
        object CLookUp3: TCLookUp
          Left = 442
          Top = 16
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
          DataSource = dsCompra
          ValidaCampoObrigatorio = True
          CampoObrigatorio = True
          LookUpTable = 'vCadClienteFiscal'
          ReturnField = 'descAbreviada'
        end
        object CLookUp12: TCLookUp
          Left = 224
          Top = 16
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
          DataSource = dsCompra
          ValidaCampoObrigatorio = True
          CampoObrigatorio = True
          LookUpTable = 'vCadClienteFiscal'
          ReturnField = 'descCadCliente'
        end
        object BtnVerFinanceiro: TCBitBtn
          Left = 543
          Top = 124
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
          TabOrder = 17
          TabStop = False
        end
        object CLookUp7: TCLookUp
          Left = 265
          Top = 61
          Width = 80
          Height = 19
          Alignment = taLeftJustify
          BevelInner = bvSpace
          BevelOuter = bvLowered
          Color = 14149350
          ParentBackground = False
          TabOrder = 18
          Key.Strings = (
            'idContratoCompra')
          LookUpKey.Strings = (
            'idContratoCompra')
          AlternateSQL.Strings = (
            
              'SELECT qtProduto FROM vSaldoContratoCompra WHERE idEmpresa = [DB' +
              'EidEmpresa] AND idCadEmpresa = [DBEidCadEmpresa] AND idFornecedo' +
              'r = [DBEidFornecedor] AND idCadFornecedor = [DBEidCadFornecedor]' +
              ' AND idContratoCompra = ?')
          ClientDataSet = cdsLookup
          DataSource = dsCompra
          ValidaCampoObrigatorio = True
          CampoObrigatorio = True
          LookUpTable = 'vSaldoContratoCompra'
          ReturnField = 'qtProduto'
        end
        object CLookUp8: TCLookUp
          Left = 540
          Top = 61
          Width = 80
          Height = 19
          Alignment = taLeftJustify
          BevelInner = bvSpace
          BevelOuter = bvLowered
          Color = 14149350
          ParentBackground = False
          TabOrder = 19
          Key.Strings = (
            'idContratoCompra')
          LookUpKey.Strings = (
            'idContratoCompra')
          AlternateSQL.Strings = (
            
              'SELECT qtSaldo FROM vSaldoContratoCompra WHERE idEmpresa = [DBEi' +
              'dEmpresa] AND idCadEmpresa = [DBEidCadEmpresa] AND idFornecedor ' +
              '= [DBEidFornecedor] AND idCadFornecedor = [DBEidCadFornecedor] A' +
              'ND idContratoCompra = ?')
          ClientDataSet = cdsLookup
          DataSource = dsCompra
          ValidaCampoObrigatorio = True
          CampoObrigatorio = True
          LookUpTable = 'vSaldoContratoCompra'
          ReturnField = 'qtSaldo'
        end
        object CLookUp9: TCLookUp
          Left = 417
          Top = 61
          Width = 80
          Height = 19
          Alignment = taLeftJustify
          BevelInner = bvSpace
          BevelOuter = bvLowered
          Color = 14149350
          ParentBackground = False
          TabOrder = 20
          Key.Strings = (
            'idContratoCompra')
          LookUpKey.Strings = (
            'idContratoCompra')
          AlternateSQL.Strings = (
            
              'SELECT qtRetirado FROM vSaldoContratoCompra WHERE idEmpresa = [D' +
              'BEidEmpresa] AND idCadEmpresa = [DBEidCadEmpresa] AND idForneced' +
              'or = [DBEidFornecedor] AND idCadFornecedor = [DBEidCadFornecedor' +
              '] AND idContratoCompra = ?')
          ClientDataSet = cdsLookup
          DataSource = dsCompra
          ValidaCampoObrigatorio = True
          CampoObrigatorio = True
          LookUpTable = 'vSaldoContratoCompra'
          ReturnField = 'qtRetirado'
        end
        object lookInscricaoCompra: TCLookUp
          Left = 112
          Top = 61
          Width = 113
          Height = 19
          Alignment = taLeftJustify
          BevelInner = bvSpace
          BevelOuter = bvLowered
          Color = 14149350
          ParentBackground = False
          TabOrder = 21
          Key.Strings = (
            'idContratoCompra')
          LookUpKey.Strings = (
            'idContratoCompra')
          AlternateSQL.Strings = (
            
              'SELECT idInscEstadual FROM vClienteContratoCompra WHERE idEmpres' +
              'a = [DBEidEmpresa] AND idCadEmpresa = [DBEidCadEmpresa] AND idFo' +
              'rnecedor = [DBEidFornecedor] AND idCadFornecedor = [DBEidCadForn' +
              'ecedor] AND idContratoCompra = ?')
          ClientDataSet = cdsLookup
          DataSource = dsCompra
          ValidaCampoObrigatorio = True
          CampoObrigatorio = True
          LookUpTable = 'vClienteContratoCompra'
          ReturnField = 'idInscEstadual'
        end
        object LookCnpjCompra: TCLookUp
          Left = 488
          Top = 39
          Width = 132
          Height = 19
          Alignment = taLeftJustify
          BevelInner = bvSpace
          BevelOuter = bvLowered
          Color = 14149350
          ParentBackground = False
          TabOrder = 22
          Key.Strings = (
            'idContratoCompra')
          LookUpKey.Strings = (
            'idContratoCompra')
          AlternateSQL.Strings = (
            
              'SELECT idCnpjCpf FROM vClienteContratoCompra WHERE idEmpresa = [' +
              'DBEidEmpresa] AND idCadEmpresa = [DBEidCadEmpresa] AND idFornece' +
              'dor = [DBEidFornecedor] AND idCadFornecedor = [DBEidCadFornecedo' +
              'r] AND idContratoCompra = ?')
          ClientDataSet = cdsLookup
          DataSource = dsCompra
          ValidaCampoObrigatorio = True
          CampoObrigatorio = True
          LookUpTable = 'vClienteContratoCompra'
          ReturnField = 'idCnpjCpf'
        end
        object lookFornecedor: TCLookUp
          Left = 217
          Top = 39
          Width = 265
          Height = 19
          Alignment = taLeftJustify
          BevelInner = bvSpace
          BevelOuter = bvLowered
          Color = 14149350
          ParentBackground = False
          TabOrder = 23
          Key.Strings = (
            'idContratoCompra')
          LookUpKey.Strings = (
            'idContratoCompra')
          AlternateSQL.Strings = (
            
              'SELECT descCadFornecedor FROM vClienteContratoCompra WHERE idEmp' +
              'resa = [DBEidEmpresa] AND idCadEmpresa = [DBEidCadEmpresa] AND i' +
              'dFornecedor = [DBEidFornecedor] AND idCadFornecedor = [DBEidCadF' +
              'ornecedor] AND idContratoCompra = ?')
          ClientDataSet = cdsLookup
          DataSource = dsCompra
          ValidaCampoObrigatorio = True
          CampoObrigatorio = True
          LookUpTable = 'vClienteContratoCompra'
          ReturnField = 'descCadFornecedor'
        end
        object LookDescarga: TCLookUp
          Left = 224
          Top = 104
          Width = 212
          Height = 19
          Alignment = taLeftJustify
          BevelInner = bvSpace
          BevelOuter = bvLowered
          Color = 14149350
          ParentBackground = False
          TabOrder = 9
          Key.Strings = (
            'idEmbarque'
            'idCadEmbarque')
          LookUpKey.Strings = (
            'idCliente'
            'idCadCliente')
          ClientDataSet = cdsLookup
          DataSource = dsCompra
          ValidaCampoObrigatorio = True
          CampoObrigatorio = True
          LookUpTable = 'vCadClienteFiscal'
          ReturnField = 'descCadCliente'
        end
        object CLookUp13: TCLookUp
          Left = 442
          Top = 104
          Width = 151
          Height = 19
          Alignment = taLeftJustify
          BevelInner = bvSpace
          BevelOuter = bvLowered
          Color = 14149350
          ParentBackground = False
          TabOrder = 10
          Key.Strings = (
            'idEmbarque'
            'idCadEmbarque')
          LookUpKey.Strings = (
            'idCliente'
            'idCadCliente')
          ClientDataSet = cdsLookup
          DataSource = dsCompra
          ValidaCampoObrigatorio = True
          CampoObrigatorio = True
          LookUpTable = 'vCadClienteFiscal'
          ReturnField = 'descAbreviada'
        end
        object DBEidCadEmbarque: TCDBEdit
          Left = 190
          Top = 104
          Width = 28
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'idCadEmbarque'
          DataSource = dsCompra
          TabOrder = 8
          OnKeyDown = DBEidEmbarqueKeyDown
          OnKeyPress = DBEidEmbarqueKeyPress
          AcaoCad = frmPrincipal.actCadSafra
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEidEmbarque: TCDBEdit
          Left = 112
          Top = 104
          Width = 72
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'idEmbarque'
          DataSource = dsCompra
          TabOrder = 7
          OnKeyDown = DBEidEmbarqueKeyDown
          OnKeyPress = DBEidEmbarqueKeyPress
          AcaoCad = frmPrincipal.actCadSafra
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEqtDescontoC: TCDBEdit
          Left = 244
          Top = 127
          Width = 70
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'qtDesconto'
          DataSource = dsCompra
          TabOrder = 12
          OnEnter = DBEidArmOperacaoEnter
          OnExit = DBEqtDescontoCExit
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEqtPesoBrutoC: TCDBEdit
          Left = 112
          Top = 127
          Width = 70
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'qtPesoBruto'
          DataSource = dsCompra
          TabOrder = 11
          OnEnter = DBEidArmOperacaoEnter
          OnExit = DBEqtPesoBrutoCExit
          DecimalControl = True
          KeyMode = kmNormal
        end
      end
      object CGroupBox10: TCGroupBox
        Left = 541
        Top = 181
        Width = 92
        Height = 162
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
      object CGroupBox11: TCGroupBox
        Left = 3
        Top = 181
        Width = 521
        Height = 162
        TabOrder = 2
        object CDBGrid1: TCDBGrid
          Left = 6
          Top = 7
          Width = 502
          Height = 146
          TabStop = False
          DataSource = dsCompra
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
              FieldName = 'idContratoCompra'
              Title.Caption = 'Contrato'
              Width = 64
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'descCadFornecedor'
              Title.Caption = 'Fornecedor / Produtor'
              Width = 250
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'qtProduto'
              Title.Caption = 'Qtde.'
              Width = 70
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'aceitaClassifDestino'
              Title.Caption = 'Class.?'
              Width = 40
              Visible = True
            end>
        end
      end
      object CGroupBox4: TCGroupBox
        Left = 3
        Top = 349
        Width = 630
        Height = 34
        TabOrder = 3
        object CLabel37: TCLabel
          Left = 6
          Top = 12
          Width = 70
          Height = 13
          Alignment = taRightJustify
          Caption = 'Peso L'#237'quido'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object CLabel39: TCLabel
          Left = 186
          Top = 12
          Width = 82
          Height = 13
          Alignment = taRightJustify
          Caption = 'Total Contrato'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object CLabel41: TCLabel
          Left = 373
          Top = 12
          Width = 110
          Height = 13
          Alignment = taRightJustify
          Caption = 'Saldo NF/Romaneio'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object DBEqtPesoLiquidoC: TCDBEdit
          Left = 82
          Top = 9
          Width = 93
          Height = 19
          TabStop = False
          BevelKind = bkTile
          BorderStyle = bsNone
          Color = 14149350
          DataField = 'qtPesoLiquido'
          DataSource = dsPadrao
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 0
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEqtProdutoTotal: TCDBEdit
          Left = 274
          Top = 9
          Width = 93
          Height = 19
          TabStop = False
          BevelKind = bkTile
          BorderStyle = bsNone
          Color = 14149350
          DataField = 'qtProdutoTotal'
          DataSource = dsCompra
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
        object DBEqtSaldoTotal: TCDBEdit
          Left = 489
          Top = 9
          Width = 93
          Height = 19
          TabStop = False
          BevelKind = bkTile
          BorderStyle = bsNone
          Color = 14149350
          DataField = 'qtSaldoTotal'
          DataSource = dsCompra
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 2
          DecimalControl = True
          KeyMode = kmNormal
        end
      end
      object panDesconto: TPanel
        Left = 85
        Top = 389
        Width = 508
        Height = 307
        Color = clGray
        ParentBackground = False
        TabOrder = 4
        Visible = False
        object BtnConfirmar: TCBitBtn
          Left = 385
          Top = 271
          Width = 114
          Height = 25
          Caption = '&Confirmar [ESC]'
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
          TabOrder = 3
          OnClick = BtnConfirmarClick
        end
        object CGroupBox16: TCGroupBox
          Left = 11
          Top = 19
          Width = 390
          Height = 67
          Caption = 'Dados do Desconto'
          Color = 15201011
          ParentColor = False
          TabOrder = 0
          object CLabel58: TCLabel
            Left = 24
            Top = 21
            Width = 45
            Height = 13
            Alignment = taRightJustify
            Caption = 'Desconto'
          end
          object CLabel59: TCLabel
            Left = 130
            Top = 43
            Width = 59
            Height = 13
            Alignment = taRightJustify
            Caption = '% Desconto'
          end
          object CLabel60: TCLabel
            Left = 250
            Top = 43
            Width = 55
            Height = 13
            Alignment = taRightJustify
            Caption = 'Qtde.Desc.'
          end
          object CLabel61: TCLabel
            Left = 21
            Top = 43
            Width = 48
            Height = 13
            Alignment = taRightJustify
            Caption = '% Medido'
          end
          object DBEidDescontoC: TCDBEdit
            Left = 75
            Top = 18
            Width = 37
            Height = 19
            BevelKind = bkTile
            BorderStyle = bsNone
            DataField = 'idDesconto'
            DataSource = dsCompraDesc
            TabOrder = 0
            OnExit = DBEidDescontoCExit
            Find = dmFind.FindDesconto
            AcaoCad = frmPrincipal.actCadSafra
            DecimalControl = True
            KeyMode = kmNormal
          end
          object lookDescontoC: TCLookUp
            Left = 118
            Top = 18
            Width = 263
            Height = 19
            Alignment = taLeftJustify
            BevelInner = bvSpace
            BevelOuter = bvLowered
            Color = 14149350
            ParentBackground = False
            TabOrder = 1
            Key.Strings = (
              'idDesconto')
            LookUpKey.Strings = (
              'idDesconto')
            ClientDataSet = cdsLookup
            DataSource = dsCompraDesc
            ValidaCampoObrigatorio = True
            CampoObrigatorio = True
            LookUpTable = 'Desconto'
            ReturnField = 'descDesconto'
          end
          object DBEprDescontoC: TCDBEdit
            Left = 195
            Top = 40
            Width = 49
            Height = 19
            BevelKind = bkTile
            BorderStyle = bsNone
            DataField = 'prDesconto'
            DataSource = dsCompraDesc
            TabOrder = 3
            OnEnter = DBEidArmOperacaoEnter
            OnExit = DBEprDescontoCExit
            DecimalControl = True
            KeyMode = kmNormal
          end
          object DBEqtDescontoCD: TCDBEdit
            Left = 311
            Top = 40
            Width = 70
            Height = 19
            BevelKind = bkTile
            BorderStyle = bsNone
            DataField = 'qtDesconto'
            DataSource = dsCompraDesc
            TabOrder = 4
            OnEnter = DBEidArmOperacaoEnter
            OnExit = DBEqtDescontoCDExit
            DecimalControl = True
            KeyMode = kmNormal
          end
          object DBEprMedidoC: TCDBEdit
            Left = 75
            Top = 40
            Width = 49
            Height = 19
            BevelKind = bkTile
            BorderStyle = bsNone
            DataField = 'prMedido'
            DataSource = dsCompraDesc
            TabOrder = 2
            DecimalControl = True
            KeyMode = kmNormal
          end
        end
        object CGroupBox17: TCGroupBox
          Left = 11
          Top = 92
          Width = 390
          Height = 133
          TabOrder = 1
          object CDBGrid3: TCDBGrid
            Left = 3
            Top = 4
            Width = 378
            Height = 125
            TabStop = False
            DataSource = dsCompraDesc
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
                FieldName = 'descDesconto'
                Title.Caption = 'Desconto'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'prMedido'
                Title.Caption = '% Medido'
                Width = 55
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'prDesconto'
                Title.Caption = '% Desconto'
                Width = 65
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'qtDesconto'
                Title.Caption = 'Qt. Desconto'
                Width = 70
                Visible = True
              end>
          end
        end
        object CGroupBox18: TCGroupBox
          Left = 407
          Top = 19
          Width = 92
          Height = 206
          TabOrder = 2
          object BtnAdicionarDesc: TCBitBtn
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
            OnClick = BtnAdicionarDescClick
          end
          object BtnCancelarDesc: TCBitBtn
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
            OnClick = BtnAdicionarDescClick
          end
          object BtnRetirarDesc: TCBitBtn
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
            OnClick = BtnAdicionarDescClick
          end
          object BtnNovoDesc: TCBitBtn
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
            OnClick = BtnAdicionarDescClick
          end
        end
        object CGroupBox19: TCGroupBox
          Left = 11
          Top = 231
          Width = 488
          Height = 34
          TabOrder = 4
          object CLabel62: TCLabel
            Left = 8
            Top = 11
            Width = 31
            Height = 13
            Alignment = taRightJustify
            Caption = 'Bruto'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object CLabel63: TCLabel
            Left = 144
            Top = 11
            Width = 53
            Height = 13
            Alignment = taRightJustify
            Caption = 'Desconto'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object CLabel64: TCLabel
            Left = 305
            Top = 11
            Width = 70
            Height = 13
            Alignment = taRightJustify
            Caption = 'Peso L'#237'quido'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object DBEqtPesoBrutoCD: TCDBEdit
            Left = 45
            Top = 8
            Width = 93
            Height = 19
            TabStop = False
            BevelKind = bkTile
            BorderStyle = bsNone
            Color = 14149350
            DataField = 'qtPesoBruto'
            DataSource = dsCompra
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            ReadOnly = True
            TabOrder = 0
            DecimalControl = True
            KeyMode = kmNormal
          end
          object DBEqtTotDesconto: TCDBEdit
            Left = 203
            Top = 8
            Width = 93
            Height = 19
            TabStop = False
            BevelKind = bkTile
            BorderStyle = bsNone
            Color = 14149350
            DataField = 'qtTotDesconto'
            DataSource = dsCompraDesc
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
          object DBEqtProdutoC: TCDBEdit
            Left = 381
            Top = 8
            Width = 93
            Height = 19
            TabStop = False
            BevelKind = bkTile
            BorderStyle = bsNone
            Color = 14149350
            DataField = 'qtProduto'
            DataSource = dsCompra
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            ReadOnly = True
            TabOrder = 2
            DecimalControl = True
            KeyMode = kmNormal
          end
        end
      end
    end
  end
  inherited PanBotoes: TCPanelGradient
    Top = 714
    Width = 1012
    ExplicitTop = 714
    ExplicitWidth = 1012
    inherited BtnFechar: TCBitBtn
      Left = 562
      ExplicitLeft = 562
    end
  end
  inherited PanEmpresa: TCPanelGradient
    Width = 1012
    Height = 27
    ExplicitWidth = 1012
    ExplicitHeight = 27
    inherited lblCNPJ: TCLabel
      Left = 541
      Top = 8
      Visible = False
      ExplicitLeft = 541
      ExplicitTop = 8
    end
    inherited lblInscricao: TCLabel
      Left = 727
      Top = 8
      Visible = False
      ExplicitLeft = 727
      ExplicitTop = 8
    end
    inherited lookidCnpjCpf: TCLookUp
      Left = 595
      Top = 6
      Visible = False
      ExplicitLeft = 595
      ExplicitTop = 6
    end
    inherited LookidInscEstadual: TCLookUp
      Left = 805
      Top = 5
      Visible = False
      ExplicitLeft = 805
      ExplicitTop = 5
    end
  end
  inherited imgIcones: TImageList
    Left = 552
    Top = 32
    Bitmap = {
      494C010104000900300010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000002000000001002000000000000020
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000092AAB57D9EAAB068FCFCFC03000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FDFDFD02F4F4F40BF4F4
      F40BF4F4F40BF4F4F40BF4F4F40BF4F4F40BF4F4F40BF4F4F40BF4F4F40BF4F4
      F40BF4F4F40BF4F4F40BFDFDFD02000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000BCCAD04B427589FB427184FD6C8794A6ECECEC130000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000D4D4D42B7A6A60A27D6E
      65A07D6F66A07E6F67A07D6F68A07C6F69A07C7067A07C6F67A07D6F66A07D6E
      65A07C6D64A07A6A60A2D4D4D42B0000000000000000020202030808080D0E0E
      0E161313131D1414141F2020203120202030202020301A1A1A281313131D1313
      131D0A0A0A0F0303030500000000000000000000000000000000000000000000
      000000000000E3E7E71E48819DE777521DFF804806FF566B69FF4A788FD7C8CC
      CE38000000000000000000000000000000000156030001560300015603000156
      0300000000000000820000008200000082000000820000008200000082000000
      82000000820000008200000082000000820000000000B6B5B54AC57F41FFCE90
      59FFD5A06FFFDEAF84FFCDAC8FFFC6A992FFC5A790FFC0A186FFDBA97BFFD197
      62FFC98548FFC17432FFB7B5B54A000000002A2A2940243A5FF5294062F92A41
      63FB2A4263FC2A4266FE2A4266FD2A4266FD2A4266FD2A4266FE2A4266FD2A42
      63FC2A4063FA283F61F5484D5393000000010000000000000000000000000000
      0000F9F9F9066493AABC6C6243FF965201FF985301FF935001FF675B3EFF366F
      8CF398A5AC6FFBFBFB040000000000000000015603002DC651001DB236000156
      03000000000000008200011EF3000527FB001337FB003052FC005F7DFE00A1B4
      FF00F2F6FF0000000000000000000000820000000000BBBABA45BA7335FFBF7D
      40FFC2844AFFC88D58FFAF835BFFA57A5AFFA57A58FFA17753FFC68850FFBE7C
      40FFBB7636FFB76D2AFFBCBBBB440000000000000000062454FF0B15243F195A
      95C90D2138550A16263E1C61A1D90B16253E1444729C12395F860B15243D1D62
      A2D90A16253C14305AC3041E43C5000000000000000000000000000000000000
      000093AEBC7F58706DFEA35902FFAC5E02FFAF5F02FFAA5D02FF361D00FF0B6E
      71FF31849FFE698695ABE9E9E91600000000015603003FD96D0030C956000156
      030000000000000082000120FB000528FC001438FC003154FE00607FFF00A5B7
      FF00F6FAFF0000000000000000000000820000000000C5C5C53ABA7230FFBD79
      3AFFBE7C3FFFC28044FFA16B3BFF955D32FF965C30FF925C31FFC17E3FFFBC77
      38FFBB7431FFB86D2AFFC5C5C53A00000000000000000B2B5EFF000000001081
      D4FF011F364400030608178DE2FF00000000000000000000000000000000188E
      E1FF000000000208122F072148C500000000000000000000000000000000C3CF
      D543337190F9623B0AFFB66401FFC76C02FFCC6F02FF743F01FF005350FF02C3
      BDFF03A8A3FF288C9FFF47778FDCC5C9CC3C0156030001560300015603000156
      0300000000000000820000008200000082000000820000008200000082000000
      82000000820000008200000082000000820000000000D0CFCE3AB9712FFFBE79
      37FFBE7B3BFFC37F3FFF9D622EFF91501EFF92511DFF8E5422FFC17E3DFFBD78
      37FFBD7734FFB8712FFFD1D0CF3A00000000000000000D2F63FF000000001281
      D4FF01243E4E00000000051E386700000000076CB8EA055490B7000000001A94
      EAFF000000000209132F0A254EC5000000000000000000000000E7EAEB184781
      A2E20D1CA5FF01002FFF4D2A00FFD77602FFC16902FF072E2AFF02E6E0FF02D2
      CCFF01B9B3FF00A39DFF27879DFF7C9DAD9A0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F8F6F539B67333FFC280
      3FFFC17F40FFC58241FF9A5D27FF8D450DFF90470EFF8B4C18FFC48141FFC07E
      3DFFC17E3DFFBA7534FFE8E6E53A00000000000000000F336BFF000000000940
      6F9A000B1318000000001485D8FF000000000562A6D7044C83A7000000000E5A
      97C700000000020A152F0B2854C50000000000000000FBFBFB046995ABB61838
      ADFF0202CCFF0202E3FF01016FFF2B1803FF251F0AFF02D3D3FF02FBF7FF02DC
      D5FF01BFB9FF0F9EA3FF508AA6D7EFF0F1100000000000000000000000000156
      0300015603000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F3F3F30C8F8F9270BF7E3EFFCC8C
      4CFFC88A4DFFC88A4DFFBA7F46FFAF773FFFAE763DFFB1773EFFCE955EFFD4A2
      72FFD9AA79FFC3986AFF656B839AF9F9F90700000000113772FF00000000128A
      E0FF01264253000306081993E8FF000000000771C1EF055897BC000000001A95
      EBFF000000000209142C0D2B58C5000000000000000099B2BF782658A4FE0101
      B3FF0202CDFF0202EDFF0202FDFF000044FF07190BFF019797FF02F8F3FF02DD
      D6FF06B9B7FF3885A3F4D2DADE330000000000000000000000000156030041E0
      740028AC47000156030001560300000000000000000000000000000000000000
      000000000000035A0500015603000000000000000000A1AABE655069A3FF9978
      5CFFC0864BFFCD9153FFCE9155FFCE9559FFD8A776FFE4BF9AFFE5C4A1FFCFB2
      95FFA5A6B4FF4C78CBF0E4E5E8260000000000000000123A77FF173E7BFF1735
      6CF7173872FD183C77FF163971FE173E7AFF18346AF517366CF7173D7AFF1639
      71FE183C78FF163F79FF0D2E5FC500000000CCD7DC3B36769DF8040997FF0101
      AFFF0202C6FF0202E2FF01019BFF2A5A01FF6BDC02FF1B3C01FF005451FF02C2
      BCFF2991ABFEA4BAC56A00000000000000000000000000000000015603002DC4
      500035CE5D00188F2C0001560300000000000000000000000000000000000000
      0000045F0900188E2B0001560300000000000000000000000000B4BBC75387B7
      FFFFA9BEE2FFBEB7B5FFE0C7ACFFEED6BDFFECD4BBFFD7C4B1FFB2B7C6FFA8C5
      F8FF6894E3F0E5E6E822000000000000000000000000133F7FFF000000000941
      7096000A12160005090B1892E6FF00000000032A485D02213847000000001892
      E8FF00000000030C192F0F3164C500000000DFE2E3276794AACA24538BFE0308
      97FF0101BAFF0101AEFF0E1F0AFF62DA02FF6AEC02FF63DC02FF2B6000FF1E55
      66FF749DB1A8FDFDFD02000000000000000000000000015603000E8F1C0019AB
      310022B53E00035E070000000000000000000000000000000000000000000563
      0A002DB75000015603000000000000000000000000000000000000000000B6BC
      C751A7C8FFFFC8DFFFFFBED0F0FFCECED2FFC7CDD9FFBED4F9FFCEE4FFFF7FA1
      DEEEE6E7E92100000000000000000000000000000000174386FF000000000F88
      DCFF011A2D3F000000001691E6FF000000000668B0DE054D84AB000000001794
      E9FF00000000081C386B113468C50000000000000000F2F2F20F8EA8B596376F
      98FA0B198BFF020521FF449701FF5AC702FF5BCA02FF59C502FF4CAB28FF508B
      A5DAEDEEEF120000000000000000000000000000000001560300015603000365
      070011A3220016A42900046007000258040001570400045F08000E7819002FBC
      5500015603000000000000000000000000000000000000000000000000000000
      0000BBBFC94CB5CEFAFFE4F0FFFFDCEAFFFFDDEAFFFFEAF5FFFF85A3D4E8E9EA
      EC1D00000000000000000000000000000000000000003461A5FF315FA2FF315F
      A2FF315FA2FF315FA2FF315FA2FF315FA2FF315FA1FF315FA1FF315FA2FF315F
      A2FF315FA2FF315FA2FF16315991000000000000000000000000FDFDFD02B8C3
      C95B4E89A7EA2B624BFF48A002FF4EAE01FF4FB001FF4BA80DFF3E8591F6CCD5
      DA39000000000000000000000000000000000000000000000000000000000156
      0300026305000A9815000FA01F000D891A00108E1F001CA634002ABD4A000156
      0300000000000000000000000000000000000000000000000000000000000000
      000000000000CED0D73CB9CDF1FBF7FBFFFFFCFFFFFF89A2CBDEF3F4F4120000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000DCDFE02A6A95AAC632726DFE3D880AFF459B01FF3B8874FE9DB5C2730000
      0000000000000000000000000000000000000000000000000000000000000000
      0000015603000156030005840C00088E11000D971A000D971A00015603000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000D6D8DC33C8DAF9FD97ADCFDEF6F6F70E000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000F3F4F40C93ABB78F3B798DFA35795CFF6D98AEB1FCFCFC030000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000001560300015603000156030001560300000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000E1E1E21EF2F3F30D00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FDFDFD02BDC7CC546593ABC6E9ECED16000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000200000000100010000000000000100000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FFFFFFFFFE3FFFFF8001FFFFFC1FFFFF
      80010000F80F080080010000F003080680018001F001080680018021E0000800
      80018021C000FFFF800180218000E7FF000080018001C1F9800180010003C1F1
      C0038021000383E3E007800180078007F00F8001C00FE00FF81FFFFFF01FF01F
      FC3FFFFFF81FFC3FFE7FFFFFFC3FFFFF00000000000000000000000000000000
      000000000000}
  end
  inherited Acao: TActionList
    Left = 472
    Top = 32
  end
  inherited cdsPadrao: TClientDataSet
    CommandText = 'SELECT * FROM Romaneio'
    Left = 848
    Top = 80
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
    object cdsPadraoidRomaneio: TIntegerField
      FieldName = 'idRomaneio'
      Required = True
    end
    object cdsPadraoidArmOperacao: TSmallintField
      FieldName = 'idArmOperacao'
      Required = True
    end
    object cdsPadraoidRomaneioArm: TIntegerField
      FieldName = 'idRomaneioArm'
    end
    object cdsPadraodtRomaneio: TSQLTimeStampField
      FieldName = 'dtRomaneio'
      Required = True
    end
    object cdsPadraoidArmazem: TIntegerField
      FieldName = 'idArmazem'
    end
    object cdsPadraoidProdDeposito: TSmallintField
      FieldName = 'idProdDeposito'
    end
    object cdsPadraoidMotorista: TIntegerField
      FieldName = 'idMotorista'
    end
    object cdsPadraodescMotorista: TStringField
      FieldName = 'descMotorista'
      Size = 50
    end
    object cdsPadraoidContratoFrete: TIntegerField
      FieldName = 'idContratoFrete'
    end
    object cdsPadraoidProduto: TIntegerField
      FieldName = 'idProduto'
      Required = True
    end
    object cdsPadraoidVariedade: TSmallintField
      FieldName = 'idVariedade'
    end
    object cdsPadraoidSafra: TIntegerField
      FieldName = 'idSafra'
      Required = True
    end
    object cdsPadraoidResultado: TIntegerField
      FieldName = 'idResultado'
    end
    object cdsPadraoidCliente: TIntegerField
      FieldName = 'idCliente'
    end
    object cdsPadraoqtPesoBruto: TIntegerField
      FieldName = 'qtPesoBruto'
    end
    object cdsPadraoqtPesoTara: TIntegerField
      FieldName = 'qtPesoTara'
    end
    object cdsPadraoqtPesoProduto: TIntegerField
      FieldName = 'qtPesoProduto'
    end
    object cdsPadraoqtPesoDesconto: TIntegerField
      FieldName = 'qtPesoDesconto'
    end
    object cdsPadraoqtPesoLiquido: TIntegerField
      FieldName = 'qtPesoLiquido'
    end
    object cdsPadraoobsRomaneio: TStringField
      FieldName = 'obsRomaneio'
      Size = 500
    end
    object cdsPadraostRomaneio: TStringField
      FieldName = 'stRomaneio'
      Required = True
      Size = 15
    end
    object cdsPadraovlLiquido: TFMTBCDField
      FieldName = 'vlLiquido'
      Precision = 19
      Size = 4
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
    object cdsPadraoqtSacas: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'qtSacas'
      currency = True
    end
    object cdsPadraoqtArrobas: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'qtArrobas'
      currency = True
    end
    object cdsPadraovlTotal: TFMTBCDField
      FieldName = 'vlTotal'
      Precision = 19
      Size = 4
    end
    object cdsPadraoidProdutor: TIntegerField
      FieldName = 'idProdutor'
    end
    object cdsPadraoidCadEmpresaFilial: TSmallintField
      FieldName = 'idCadEmpresaFilial'
    end
    object cdsPadraotpContratoFrete: TStringField
      FieldName = 'tpContratoFrete'
      FixedChar = True
      Size = 1
    end
    object cdsPadraovlFrete: TFMTBCDField
      FieldName = 'vlFrete'
      Precision = 19
      Size = 4
    end
    object cdsPadraoidNF: TIntegerField
      FieldName = 'idNF'
    end
    object cdsPadraoplaca: TStringField
      FieldName = 'placa'
      Size = 8
    end
    object cdsPadraovlUnitario: TFMTBCDField
      FieldName = 'vlUnitario'
      Precision = 18
      Size = 4
    end
    object cdsPadraonrCartaFrete: TIntegerField
      FieldName = 'nrCartaFrete'
    end
    object cdsPadraodtEntrega: TSQLTimeStampField
      FieldName = 'dtEntrega'
    end
    object cdsPadraodtRecebimento: TSQLTimeStampField
      FieldName = 'dtRecebimento'
    end
    object cdsPadraoidDocSerie: TStringField
      FieldName = 'idDocSerie'
      Size = 5
    end
    object cdsPadraovlFreteTotal: TFMTBCDField
      FieldName = 'vlFreteTotal'
      Precision = 19
      Size = 4
    end
    object cdsPadraovlAdiantamento: TFMTBCDField
      FieldName = 'vlAdiantamento'
      Precision = 19
      Size = 4
    end
    object cdsPadraovlSeguro: TFMTBCDField
      FieldName = 'vlSeguro'
      Precision = 19
      Size = 4
    end
    object cdsPadraovlTarifaClassif: TFMTBCDField
      FieldName = 'vlTarifaClassif'
      Precision = 19
      Size = 4
    end
  end
  inherited dspPadrao: TDataSetProvider
    DataSet = sdsRomaneio
    Left = 768
    Top = 80
  end
  inherited dsPadrao: TDataSource
    Left = 928
    Top = 80
  end
  inherited ImgBotoes: TImageList
    Left = 640
    Top = 32
    Bitmap = {
      494C010106000800740020001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
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
  inherited cdsTmp: TClientDataSet
    Left = 1208
  end
  inherited dspTmp: TDataSetProvider
    Left = 1168
  end
  inherited sdsTmp: TSQLDataSet
    Left = 1120
  end
  inherited cdsLookup: TClientDataSet
    Left = 856
    Top = 328
  end
  inherited dspLookup: TDataSetProvider
    Left = 776
    Top = 328
  end
  inherited sdsLookup: TSQLDataSet
    CommandText = 'SELECT * FROM vCadClienteContabil'
    Left = 1120
  end
  inherited cdsEmpresa: TClientDataSet
    Left = 792
    Top = 8
  end
  inherited dsEmpresa: TDataSource
    Left = 864
    Top = 8
  end
  inherited FindEmpresa: TCFind
    Left = 728
    Top = 8
  end
  object sdsRomaneio: TSQLDataSet
    SchemaName = 'gesys'
    GetMetadata = False
    CommandText = 'SELECT * FROM Romaneio'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmPadrao.dbConexao
    Left = 688
    Top = 80
  end
  object FindVariedade: TCFind
    SelectClause.Strings = (
      'SELECT idVariedade, descVariedade FROM ProdutoVariedade')
    JoinClause.Strings = (
      'WHERE idProduto = [DBEidProduto]')
    OrderByClause.Strings = (
      'ORDER BY descVariedade')
    FindField = 'descVariedade'
    SQLConnection = dmPadrao.dbConexao
    ValueField = 'idVariedade'
    CarregaDados = True
    CollumNames.Strings = (
      'C'#243'digo'
      'Descri'#231#227'o')
    TypeFind = fFindNormal
    Left = 680
    Top = 384
  end
  object cdsCompra: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    CommandText = 'SELECT * FROM RomaneioContratoCompra'
    Params = <>
    ProviderName = 'dspCompra'
    AfterOpen = cdsPadraoAfterOpen
    AfterInsert = cdsCompraAfterInsert
    AfterEdit = cdsCompraAfterInsert
    OnCalcFields = cdsCompraCalcFields
    OnReconcileError = cdsPadraoReconcileError
    Left = 853
    Top = 124
    object cdsCompraidEmpresa: TIntegerField
      FieldName = 'idEmpresa'
      Required = True
    end
    object cdsCompraidCadEmpresa: TSmallintField
      FieldName = 'idCadEmpresa'
      Required = True
    end
    object cdsCompraidRomaneio: TIntegerField
      FieldName = 'idRomaneio'
      Required = True
    end
    object cdsCompraidContratoCompra: TStringField
      FieldName = 'idContratoCompra'
      Required = True
      Size = 30
    end
    object cdsCompraqtProduto: TIntegerField
      FieldName = 'qtProduto'
      Required = True
    end
    object cdsCompraaceitaClassifDestino: TStringField
      FieldName = 'aceitaClassifDestino'
      FixedChar = True
      Size = 1
    end
    object cdsCompradescCadFornecedor: TStringField
      FieldKind = fkLookup
      FieldName = 'descCadFornecedor'
      LookupDataSet = cdsFornecedor
      LookupKeyFields = 'idCliente'
      LookupResultField = 'descCadCliente'
      KeyFields = 'idFornecedor'
      Size = 60
      Lookup = True
    end
    object cdsCompraqtSaldoTotal: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'qtSaldoTotal'
      Calculated = True
    end
    object cdsCompraidFornecedor: TIntegerField
      FieldName = 'idFornecedor'
      Required = True
    end
    object cdsCompraidCadFornecedor: TSmallintField
      FieldName = 'idCadFornecedor'
      Required = True
    end
    object cdsCompraidEmbarque: TIntegerField
      FieldName = 'idEmbarque'
    end
    object cdsCompraidCadEmbarque: TSmallintField
      FieldName = 'idCadEmbarque'
    end
    object cdsCompraqtDesconto: TIntegerField
      FieldName = 'qtDesconto'
      Required = True
    end
    object cdsCompraqtPesoBruto: TIntegerField
      FieldName = 'qtPesoBruto'
    end
    object cdsCompraqtProdutoTotal: TAggregateField
      FieldName = 'qtProdutoTotal'
      Active = True
      DisplayName = ''
      Expression = 'SUM(qtProduto)'
    end
  end
  object dsCompra: TDataSource
    DataSet = cdsCompra
    OnStateChange = dsCompraStateChange
    Left = 931
    Top = 124
  end
  object dspCompra: TDataSetProvider
    DataSet = sdsCompra
    Options = [poAllowMultiRecordUpdates, poPropogateChanges, poAllowCommandText, poUseQuoteChar]
    BeforeUpdateRecord = dspCompraBeforeUpdateRecord
    Left = 768
    Top = 124
  end
  object sdsCompra: TSQLDataSet
    SchemaName = 'gesys'
    GetMetadata = False
    CommandText = 'SELECT * FROM RomaneioContratoCompra'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmPadrao.dbConexao
    Left = 688
    Top = 124
  end
  object cdsFornecedor: TClientDataSet
    Aggregates = <>
    CommandText = 'SELECT * FROM vCadClienteContabil'
    Params = <>
    ProviderName = 'dspLookup'
    Left = 776
    Top = 392
  end
  object cdsClassificacao: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    CommandText = 'SELECT * FROM RomaneioClassificacao'
    Params = <>
    ProviderName = 'dspClassificacao'
    AfterOpen = cdsPadraoAfterOpen
    AfterInsert = cdsClassificacaoAfterInsert
    AfterEdit = cdsClassificacaoAfterInsert
    AfterScroll = cdsClassificacaoAfterScroll
    OnReconcileError = cdsPadraoReconcileError
    Left = 853
    Top = 172
    object cdsClassificacaoidEmpresa: TIntegerField
      FieldName = 'idEmpresa'
      Required = True
    end
    object cdsClassificacaoidCadEmpresa: TSmallintField
      FieldName = 'idCadEmpresa'
      Required = True
    end
    object cdsClassificacaoidRomaneio: TIntegerField
      FieldName = 'idRomaneio'
      Required = True
    end
    object cdsClassificacaoidDesconto: TSmallintField
      FieldName = 'idDesconto'
      Required = True
    end
    object cdsClassificacaoprDesconto: TFMTBCDField
      FieldName = 'prDesconto'
      Required = True
      Precision = 5
      Size = 3
    end
    object cdsClassificacaoqtDesconto: TIntegerField
      FieldName = 'qtDesconto'
      Required = True
    end
    object cdsClassificacaodescDesconto: TStringField
      FieldKind = fkLookup
      FieldName = 'descDesconto'
      LookupDataSet = cdsDesconto
      LookupKeyFields = 'idDesconto'
      LookupResultField = 'descDesconto'
      KeyFields = 'idDesconto'
      Size = 40
      Lookup = True
    end
    object cdsClassificacaoprMedido: TFMTBCDField
      FieldName = 'prMedido'
      Precision = 5
      Size = 3
    end
    object cdsClassificacaoqtDestino: TIntegerField
      FieldName = 'qtDestino'
    end
    object cdsClassificacaoqtTotalDesconto: TAggregateField
      FieldName = 'qtTotalDesconto'
      Active = True
      DisplayName = ''
      Expression = 'SUM(qtDesconto)'
    end
  end
  object dsClassificacao: TDataSource
    DataSet = cdsClassificacao
    OnStateChange = dsClassificacaoStateChange
    Left = 931
    Top = 172
  end
  object dspClassificacao: TDataSetProvider
    DataSet = sdsClassificacao
    Options = [poAllowMultiRecordUpdates, poPropogateChanges, poAllowCommandText, poUseQuoteChar]
    BeforeUpdateRecord = dspCompraBeforeUpdateRecord
    Left = 768
    Top = 172
  end
  object sdsClassificacao: TSQLDataSet
    SchemaName = 'gesys'
    GetMetadata = False
    CommandText = 'SELECT * FROM RomaneioClassificacao'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmPadrao.dbConexao
    Left = 688
    Top = 172
  end
  object cdsDesconto: TClientDataSet
    Aggregates = <>
    CommandText = 'SELECT * FROM Desconto'
    Params = <>
    ProviderName = 'dspLookup'
    Left = 856
    Top = 392
  end
  object dspFinanc: TDataSetProvider
    DataSet = sdsFinanc
    Options = [poAllowMultiRecordUpdates, poPropogateChanges, poAllowCommandText, poUseQuoteChar]
    BeforeApplyUpdates = dspPadraoBeforeApplyUpdates
    Left = 776
    Top = 464
  end
  object sdsFinanc: TSQLDataSet
    SchemaName = 'gesys'
    GetMetadata = False
    CommandText = 'SELECT * FROM RomaneioFinanc'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmPadrao.dbConexao
    Left = 697
    Top = 464
  end
  object cdsFinanc: TClientDataSet
    Aggregates = <>
    CommandText = 'SELECT * FROM RomaneioFinanc'
    Params = <>
    ProviderName = 'dspFinanc'
    AfterOpen = cdsPadraoAfterOpen
    OnReconcileError = cdsPadraoReconcileError
    Left = 856
    Top = 464
    object cdsFinancidEmpresa: TIntegerField
      FieldName = 'idEmpresa'
      Required = True
    end
    object cdsFinancidCadEmpresa: TSmallintField
      FieldName = 'idCadEmpresa'
      Required = True
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
    object cdsFinancidRomaneio: TIntegerField
      FieldName = 'idRomaneio'
      Required = True
    end
  end
  object dsFinanc: TDataSource
    DataSet = cdsFinanc
    Left = 923
    Top = 464
  end
  object cdsCompraDesc: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    CommandText = 'SELECT * FROM RomaneioCompraClassif'
    Params = <>
    ProviderName = 'dspCompraDesc'
    AfterOpen = cdsPadraoAfterOpen
    AfterInsert = cdsClassificacaoAfterInsert
    AfterEdit = cdsClassificacaoAfterInsert
    OnReconcileError = cdsPadraoReconcileError
    Left = 853
    Top = 228
    object cdsCompraDescidEmpresa: TIntegerField
      FieldName = 'idEmpresa'
      Required = True
    end
    object cdsCompraDescidCadEmpresa: TSmallintField
      FieldName = 'idCadEmpresa'
      Required = True
    end
    object cdsCompraDescidRomaneio: TIntegerField
      FieldName = 'idRomaneio'
      Required = True
    end
    object cdsCompraDescidFornecedor: TIntegerField
      FieldName = 'idFornecedor'
      Required = True
    end
    object cdsCompraDescidCadFornecedor: TSmallintField
      FieldName = 'idCadFornecedor'
      Required = True
    end
    object cdsCompraDescidContratoCompra: TStringField
      FieldName = 'idContratoCompra'
      Required = True
      Size = 30
    end
    object cdsCompraDescidDesconto: TSmallintField
      FieldName = 'idDesconto'
      Required = True
    end
    object cdsCompraDescprMedido: TFMTBCDField
      FieldName = 'prMedido'
      Precision = 5
      Size = 3
    end
    object cdsCompraDescprDesconto: TFMTBCDField
      FieldName = 'prDesconto'
      Required = True
      Precision = 5
      Size = 3
    end
    object cdsCompraDescqtDesconto: TIntegerField
      FieldName = 'qtDesconto'
      Required = True
    end
    object cdsCompraDescdescDesconto: TStringField
      FieldKind = fkLookup
      FieldName = 'descDesconto'
      LookupDataSet = cdsDesconto
      LookupKeyFields = 'idDesconto'
      LookupResultField = 'descDesconto'
      KeyFields = 'idDesconto'
      Size = 40
      Lookup = True
    end
    object cdsCompraDescqtTotDesconto: TAggregateField
      FieldName = 'qtTotDesconto'
      Active = True
      DisplayName = ''
      Expression = 'SUM(qtDesconto)'
    end
  end
  object dsCompraDesc: TDataSource
    DataSet = cdsCompraDesc
    OnStateChange = dsCompraDescStateChange
    Left = 931
    Top = 228
  end
  object dspCompraDesc: TDataSetProvider
    DataSet = sdsCompraDesc
    Options = [poAllowMultiRecordUpdates, poPropogateChanges, poAllowCommandText, poUseQuoteChar]
    BeforeUpdateRecord = dspCompraBeforeUpdateRecord
    Left = 768
    Top = 228
  end
  object sdsCompraDesc: TSQLDataSet
    SchemaName = 'gesys'
    GetMetadata = False
    CommandText = 'SELECT * FROM RomaneioCompraClassif'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmPadrao.dbConexao
    Left = 688
    Top = 228
  end
  object cdsAjuste: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    CommandText = 'SELECT * FROM RomaneioClassAjuste'
    Params = <>
    ProviderName = 'dspAjuste'
    AfterOpen = cdsPadraoAfterOpen
    AfterScroll = cdsAjusteAfterScroll
    OnReconcileError = cdsPadraoReconcileError
    Left = 853
    Top = 284
    object cdsAjusteidEmpresa: TIntegerField
      FieldName = 'idEmpresa'
      Required = True
    end
    object cdsAjusteidCadEmpresa: TSmallintField
      FieldName = 'idCadEmpresa'
      Required = True
    end
    object cdsAjusteidRomaneio: TIntegerField
      FieldName = 'idRomaneio'
      Required = True
    end
    object cdsAjusteidDesconto: TSmallintField
      FieldName = 'idDesconto'
      Required = True
    end
    object cdsAjusteidAjuste: TSmallintField
      FieldName = 'idAjuste'
      Required = True
    end
    object cdsAjustedtAjuste: TSQLTimeStampField
      FieldName = 'dtAjuste'
      Required = True
    end
    object cdsAjusteprDescontoAnt: TFMTBCDField
      FieldName = 'prDescontoAnt'
      Required = True
      Precision = 5
      Size = 3
    end
    object cdsAjusteprDescontoNovo: TFMTBCDField
      FieldName = 'prDescontoNovo'
      Required = True
      Precision = 5
      Size = 3
    end
    object cdsAjusteqtDescontoAnt: TIntegerField
      FieldName = 'qtDescontoAnt'
      Required = True
    end
    object cdsAjusteqtDescontoNovo: TIntegerField
      FieldName = 'qtDescontoNovo'
      Required = True
    end
    object cdsAjustealteraOrdemFrete: TStringField
      FieldName = 'alteraOrdemFrete'
      Required = True
      FixedChar = True
      Size = 1
    end
    object cdsAjustedescMotivo: TStringField
      FieldName = 'descMotivo'
      Required = True
      Size = 100
    end
    object cdsAjusteidUsuario: TSmallintField
      FieldName = 'idUsuario'
      Required = True
    end
    object cdsAjustedescUsuario: TStringField
      FieldName = 'descUsuario'
      Required = True
      Size = 50
    end
  end
  object dsAjuste: TDataSource
    DataSet = cdsAjuste
    OnStateChange = dsCompraDescStateChange
    Left = 931
    Top = 284
  end
  object dspAjuste: TDataSetProvider
    DataSet = sdsAjuste
    Options = [poAllowMultiRecordUpdates, poPropogateChanges, poAllowCommandText, poUseQuoteChar]
    BeforeUpdateRecord = dspCompraBeforeUpdateRecord
    Left = 768
    Top = 284
  end
  object sdsAjuste: TSQLDataSet
    SchemaName = 'gesys'
    GetMetadata = False
    CommandText = 'SELECT * FROM RomaneioClassAjuste'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmPadrao.dbConexao
    Left = 688
    Top = 284
  end
end
