inherited FrmCadAplicacao: TFrmCadAplicacao
  Caption = 'Aplica'#231#227'o de Produtos'
  ClientHeight = 525
  ClientWidth = 1126
  Icon.Data = {
    0000010001001010000001002000680400001600000028000000100000002000
    0000010020000000000000040000000000000000000000000000000000000000
    000000000000000000000000000000000000FCFCFC09EEEEEE36DFDFDF4ACFCF
    CF4DCDCDCD40CACACA35C1C1C13DB6B6B648C1C2C23E00000000000000000000
    00000000000000000000F9F9F911D2D1D18CB9B8B5EBBFBDB9FF979692FFAFB8
    B7FFC3CAC9FFCAD0CFFFCFD4D3FED3D7D6FDA5ABAAEBF3F3F30B000000000000
    000000000000EEEEEE2EB0AFAEDFB5B3ADFFCDCBC5FFDDDBD5FFBAB8B3FF6F72
    71FF929594FF8F9291FF8B8E8DFF898B8AFEAAAEADFEB9BBBB4D000000000000
    0000F4F4F41BA5A5A2E6ACAAA4FFC8C6C0FFD5D3CDFFBCBBB3FFC8C8C2FFBDBD
    B8FFC7C7C3FFCCCCC8FFD2D3CFFFAFB0ABFF888C8BFEA0A4A4A1000000000000
    0000B8B7B7AC9F9D97FFBAB8B2FFCBC9C3FFD0CEC8FFC9C7C1FFDFDFDBFFFDFD
    FDFFFCFDFDFFFDFDFDFFFDFDFDFFF3F3F2FF686E69FF878E8DEAF4F4F40AEFEF
    EF2694938FFBA6A49EFFBFBDB7FFC8C6C0FFCBC9C3FFCBC9C3FFC2C1BBFFFEFE
    FEFFFCFCFCFFFBFBFBFFFBFBFAFFFAFAFAFF858884FF838C8AFFBBBDBD4BCECE
    CE7093918BFFA6A49EFFBEBCB6FFC6C4BEFFC6C4BEFFC7C5BFFFB6B4ACFFF1F1
    F0FFF9F9F9FFEFF0EEFFEFEFEEFFEFEFEDFFB8B9B5FF4B5756FF888F8E9DBEBE
    BD9593918BFFA4A29CFFB5B3ADFFC2C0BAFFC6C4BEFFC6C4BEFFC5C3BDFFC8C7
    C2FFF8F8F8FFD5D5D3FFE4E4E2FFE4E4E1FFE3E3E1FF5A5F5CFFD1D3D272BCBC
    BB9893918BFFA09E98FFAFADA7FFB9B7B1FFC3C1BBFFC5C3BDFFC6C4BEFFB0AE
    A6FF595EDAFF1D1D8FFFB6B6B2FFD4D4D0FFD6D6D2FF8A8A84FFD0D0D058C7C7
    C77E93918BFF9E9C96FFB4B2ACFFCDCBC5FFCAC8C2FFC3C1BBFFC3C1BBFF4F74
    C0FF0029FEFF0000D7FF202075FFABABA5FFD6D6D2FFC3C3C1FFECECEC38E3E3
    E33E91908CFFA2A09AFFECEBE7FFFFFEFDFFF9F9F6FFCCCAC4FFB0B5BEFF5587
    D8FF0044FFFF0000DFFF26269CFF9B9A9BFFB7B6AEFFBDBDBCECFCFCFC0AFDFD
    FD03A3A3A2D0A8A6A0FFFEFDFBFFFFFFFFFFFFFFFFFFD7D5CFFFB6B4AEFFBAB8
    B2FF0053FFFF0000DBFF5B5A88FFC5C3BDFFB7B5B1FFD1D1D18D000000000000
    0000E3E3E33E989895FAE7E6E2FFFFFEFEFFF9F8F6FFBEBCB6FFACAAA4FFAFAD
    A7FF0053FFFF0000DCFF545381FFADACA7FFADADADE0F9F9F911000000000000
    000000000000D2D2D2649D9C9AFAB7B5AFFFADABA5FF9F9D97FFA09E98FFA2A0
    9AFF3457DBFF3332C8FF737291FFA2A2A1E7ECECEC2F00000000000000000000
    00000000000000000000E2E2E240A3A3A2D0908F8CFF93918CFF94928CFF9492
    8DFF93928EFF91918FFCB3B3B3AFF3F3F31D0000000000000000000000000000
    0000000000000000000000000000FDFDFD03E3E3E33FC6C6C681B9B9B99DBBBB
    BB99CCCCCC72ECECEC290000000000000000000000000000000000000000F803
    0000E0010000C001000080010000800000000000000000000000000000000000
    000000000000000000000001000080010000C0030000E0070000F01F0000}
  Position = poDefault
  ExplicitWidth = 1142
  ExplicitHeight = 563
  PixelsPerInch = 96
  TextHeight = 13
  inherited Bevel1: TBevel
    Top = 490
    Width = 1126
    ExplicitTop = 444
    ExplicitWidth = 715
  end
  inherited Bevel2: TBevel
    Width = 1126
    ExplicitWidth = 715
  end
  inherited PagAbas: TCPageControl
    Width = 1126
    Height = 454
    ActivePage = TSProduto
    OnChange = PagAbasChange
    ExplicitWidth = 1126
    ExplicitHeight = 454
    inherited TabAbas: TTabSheet
      Caption = 'Aplica'#231#227'o'
      ExplicitWidth = 1118
      ExplicitHeight = 425
      object GrpAplicacao: TCGroupBox
        Left = 6
        Top = 6
        Width = 566
        Height = 195
        Caption = 'Aplica'#231#227'o de Produtos'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        object CLabel4: TCLabel
          Left = 35
          Top = 23
          Width = 37
          Height = 13
          Alignment = taRightJustify
          Caption = 'Numero'
        end
        object CLabel9: TCLabel
          Left = 227
          Top = 23
          Width = 23
          Height = 13
          Alignment = taRightJustify
          Caption = 'Data'
        end
        object CLabel13: TCLabel
          Left = 398
          Top = 23
          Width = 31
          Height = 13
          Alignment = taRightJustify
          Caption = 'Status'
        end
        object CLabel23: TCLabel
          Left = 46
          Top = 45
          Width = 26
          Height = 13
          Alignment = taRightJustify
          Caption = 'Safra'
        end
        object CLabel3: TCLabel
          Left = 24
          Top = 67
          Width = 48
          Height = 13
          Alignment = taRightJustify
          Caption = 'Resultado'
        end
        object CLabel8: TCLabel
          Left = 14
          Top = 137
          Width = 58
          Height = 13
          Alignment = taRightJustify
          Caption = 'Observa'#231#227'o'
        end
        object CLabel10: TCLabel
          Left = 30
          Top = 89
          Width = 42
          Height = 13
          Alignment = taRightJustify
          Caption = 'Dep'#243'sito'
        end
        object CLabel2: TCLabel
          Left = 25
          Top = 112
          Width = 47
          Height = 13
          Alignment = taRightJustify
          Caption = 'SubGrupo'
        end
        object DBEstAplicacao: TCDBEdit
          Tag = 2
          Left = 435
          Top = 20
          Width = 114
          Height = 19
          TabStop = False
          BevelKind = bkTile
          BorderStyle = bsNone
          Color = 14149350
          DataField = 'stAplicacao'
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
        object DBEidAplicacao: TCDBEdit
          Left = 78
          Top = 20
          Width = 76
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'idAplicacao'
          DataSource = dsPadrao
          TabOrder = 0
          OnExit = DBEidAplicacaoExit
          OnKeyDown = DBEidAplicacaoKeyDown
          Find = FindAplicacao
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEdtAplicacao: TCDBEdit
          Tag = 1
          Left = 256
          Top = 20
          Width = 80
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'dtAplicacao'
          DataSource = dsPadrao
          MaxLength = 10
          TabOrder = 1
          DecimalControl = True
          KeyMode = kmDate
        end
        object DBEidSafra: TCDBEdit
          Left = 78
          Top = 42
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
          Left = 132
          Top = 42
          Width = 314
          Height = 19
          Alignment = taLeftJustify
          BevelInner = bvSpace
          BevelOuter = bvLowered
          Color = 14149350
          ParentBackground = False
          TabOrder = 4
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
          Left = 452
          Top = 42
          Width = 96
          Height = 19
          Action = frmPrincipal.actCadSafra
          Caption = '&Safra'
          TabOrder = 5
          TabStop = False
        end
        object DBEidResultado: TCDBEdit
          Left = 78
          Top = 64
          Width = 48
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'idResultado'
          DataSource = dsPadrao
          TabOrder = 6
          OnEnter = DBEidResultadoEnter
          Find = FindResultado
          AcaoCad = frmPrincipal.actCadResultado
          DecimalControl = True
          KeyMode = kmNormal
        end
        object LookResultado: TCLookUp
          Left = 132
          Top = 64
          Width = 314
          Height = 19
          Alignment = taLeftJustify
          BevelInner = bvSpace
          BevelOuter = bvLowered
          Color = 14149350
          ParentBackground = False
          TabOrder = 7
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
          Left = 452
          Top = 64
          Width = 96
          Height = 19
          Action = frmPrincipal.actCadResultado
          Caption = '&Resultado'
          TabOrder = 8
          TabStop = False
        end
        object DBMobsAplicacao: TCDBMemo
          Tag = 4
          Left = 78
          Top = 134
          Width = 470
          Height = 53
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'obsAplicacao'
          DataSource = dsPadrao
          MaxLength = 500
          ScrollBars = ssVertical
          TabOrder = 13
          OnExit = DBMobsAplicacaoExit
          KeyMemo = kmmNormal
        end
        object DBEidProdDeposito: TCDBEdit
          Left = 78
          Top = 86
          Width = 48
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'idProdDeposito'
          DataSource = dsPadrao
          TabOrder = 9
          Find = FindProdDeposito
          AcaoCad = frmPrincipal.actCadProdDeposito
          DecimalControl = True
          KeyMode = kmNormal
        end
        object LookProdDeposito: TCLookUp
          Left = 132
          Top = 86
          Width = 314
          Height = 19
          Alignment = taLeftJustify
          BevelInner = bvSpace
          BevelOuter = bvLowered
          Color = 14149350
          ParentBackground = False
          TabOrder = 10
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
        object CBitBtn2: TCBitBtn
          Left = 452
          Top = 87
          Width = 96
          Height = 19
          Action = frmPrincipal.actCadProdDeposito
          Caption = 'Dep'#243'sito'
          TabOrder = 11
          TabStop = False
        end
        object DBEidSubGrupo: TCDBEdit
          Left = 78
          Top = 109
          Width = 48
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'idSubGrupo'
          DataSource = dsPadrao
          TabOrder = 12
          Find = dmFind.FindSubGrupoAplic
          AcaoCad = frmPrincipal.actCadProdDeposito
          DecimalControl = True
          KeyMode = kmNormal
        end
        object CLookUp1: TCLookUp
          Left = 132
          Top = 109
          Width = 314
          Height = 19
          Alignment = taLeftJustify
          BevelInner = bvSpace
          BevelOuter = bvLowered
          Color = 14149350
          ParentBackground = False
          TabOrder = 14
          Key.Strings = (
            'idSubGrupo')
          LookUpKey.Strings = (
            'AplicacaoSubGrupo')
          ClientDataSet = cdsLookup
          DataSource = dsPadrao
          ValidaCampoObrigatorio = True
          CampoObrigatorio = True
          LookUpTable = 'AplicacaoSubGrupo'
          ReturnField = 'descSubGrupo'
        end
      end
    end
    object TSProduto: TTabSheet
      Caption = 'Produtos'
      ImageIndex = 1
      object CGroupBox2: TCGroupBox
        Left = 3
        Top = 4
        Width = 714
        Height = 63
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        object CLabel7: TCLabel
          Left = 29
          Top = 16
          Width = 38
          Height = 13
          Alignment = taRightJustify
          Caption = 'Produto'
        end
        object CLabel16: TCLabel
          Left = 430
          Top = 16
          Width = 28
          Height = 13
          Alignment = taRightJustify
          Caption = 'Qtde.'
        end
        object lblSaldo: TCLabel
          Left = 314
          Top = 38
          Width = 123
          Height = 13
          Alignment = taRightJustify
          Caption = 'Saldo em 01/01/2010'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object CLabel11: TCLabel
          Left = 550
          Top = 16
          Width = 59
          Height = 13
          Alignment = taRightJustify
          Caption = 'Custo M'#233'dio'
        end
        object CLabel1: TCLabel
          Left = 43
          Top = 38
          Width = 24
          Height = 13
          Alignment = taRightJustify
          Caption = 'Valor'
        end
        object CLabel5: TCLabel
          Left = 545
          Top = 38
          Width = 64
          Height = 13
          Alignment = taRightJustify
          Caption = 'Saldo Atual'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object DBEidProduto: TCDBEdit
          Left = 73
          Top = 13
          Width = 46
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'idProduto'
          DataSource = dsAplicacaoProd
          TabOrder = 0
          OnEnter = DBEidProdutoEnter
          OnExit = DBEidProdutoExit
          Find = FindProduto
          AcaoCad = frmPrincipal.actCadProduto
          DecimalControl = True
          KeyMode = kmNormal
        end
        object LookProduto: TCLookUp
          Left = 125
          Top = 13
          Width = 251
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
          DataSource = dsAplicacaoProd
          ValidaCampoObrigatorio = True
          CampoObrigatorio = True
          LookUpTable = 'Produto'
          ReturnField = 'descProduto'
        end
        object LookProdMedida: TCLookUp
          Left = 382
          Top = 13
          Width = 42
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
          DataSource = dsAplicacaoProd
          ValidaCampoObrigatorio = False
          CampoObrigatorio = True
          LookUpTable = 'Produto'
          ReturnField = 'descAbreviada'
        end
        object DBEqtAplicacao: TCDBEdit
          Left = 464
          Top = 13
          Width = 80
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'qtAplicacao'
          DataSource = dsAplicacaoProd
          TabOrder = 3
          OnEnter = DBEqtAplicacaoEnter
          OnExit = DBEqtAplicacaoExit
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEvlTotal: TCDBEdit
          Left = 73
          Top = 35
          Width = 97
          Height = 19
          TabStop = False
          BevelKind = bkTile
          BorderStyle = bsNone
          Color = 14149350
          DataField = 'vlTotal'
          DataSource = dsAplicacaoProd
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 5
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEqtSaldoAtual: TCDBEdit
          Tag = 2
          Left = 443
          Top = 35
          Width = 92
          Height = 19
          TabStop = False
          BevelKind = bkTile
          BorderStyle = bsNone
          Color = 14149350
          DataField = 'qtSaldoAtual'
          DataSource = dsAplicacaoProd
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 6
          DecimalControl = True
          KeyMode = kmUSUpper
        end
        object DBEvlAplicacao: TCDBEdit
          Tag = 2
          Left = 615
          Top = 13
          Width = 92
          Height = 19
          TabStop = False
          BevelKind = bkTile
          BorderStyle = bsNone
          Color = 14149350
          DataField = 'vlAplicacao'
          DataSource = dsAplicacaoProd
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
        object DBEqtSaldoData: TCDBEdit
          Tag = 2
          Left = 615
          Top = 35
          Width = 92
          Height = 19
          TabStop = False
          BevelKind = bkTile
          BorderStyle = bsNone
          Color = 14149350
          DataField = 'qtSaldoData'
          DataSource = dsAplicacaoProd
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 7
          DecimalControl = True
          KeyMode = kmUSUpper
        end
      end
      object CGroupBox14: TCGroupBox
        Left = 3
        Top = 200
        Width = 616
        Height = 202
        TabOrder = 2
        object DBProdutos: TCDBGrid
          Left = 2
          Top = 15
          Width = 612
          Height = 185
          TabStop = False
          Align = alClient
          DataSource = dsAplicacaoProd
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection]
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          OnCellClick = DBProdutosCellClick
          UtilizaOrdenar = False
          Columns = <
            item
              Expanded = False
              FieldName = 'idProduto'
              Title.Caption = 'C'#243'digo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'descProduto'
              Title.Caption = 'Descri'#231#227'o'
              Width = 300
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'qtAplicacao'
              Title.Caption = 'Qtde.'
              Width = 60
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'vlTotal'
              Title.Caption = 'Valor Total'
              Width = 90
              Visible = True
            end>
        end
      end
      object CGroupBox12: TCGroupBox
        Left = 625
        Top = 202
        Width = 92
        Height = 200
        TabOrder = 3
        object CLabel14: TCLabel
          Left = 20
          Top = 145
          Width = 52
          Height = 13
          Alignment = taRightJustify
          Caption = 'Total Geral'
        end
        object BtnSalvarProd: TCBitBtn
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
          OnClick = BtnSalvarProdClick
        end
        object BtnCancelarProd: TCBitBtn
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
          OnClick = BtnSalvarProdClick
        end
        object BtnExcluirProd: TCBitBtn
          Left = 8
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
          OnClick = BtnSalvarProdClick
        end
        object BtnNovoProd: TCBitBtn
          Left = 8
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
          OnClick = BtnSalvarProdClick
        end
        object DBEvlTotalProd: TCDBEdit
          Left = 8
          Top = 164
          Width = 78
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          Color = 14149350
          DataField = 'vlTotalProd'
          DataSource = dsAplicacaoProd
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
      object EDDoc: TCEdit
        Left = 928
        Top = 272
        Width = 65
        Height = 19
        BorderStyle = bsNone
        BevelKind = bkTile
        TabOrder = 4
        Text = 'APL'
        Visible = False
        DataType = ftString
        KeyMode = kmUSUpper
        Decimals = 0
      end
      object EDPar: TCEdit
        Left = 951
        Top = 320
        Width = 65
        Height = 19
        BorderStyle = bsNone
        BevelKind = bkTile
        TabOrder = 5
        Text = 'SEL'
        Visible = False
        DataType = ftString
        KeyMode = kmUSUpper
        Decimals = 0
      end
      object Group: TCGroupBox
        Left = 3
        Top = 71
        Width = 714
        Height = 125
        Caption = 'Aplicados'
        TabOrder = 1
        object DBGridAplicados: TCDBGrid
          Left = 2
          Top = 15
          Width = 710
          Height = 108
          Align = alClient
          DataSource = dsAplicacaoProdDep
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs]
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
              FieldName = 'idAplicacaoProdDeposito'
              Title.Caption = 'C'#243'digo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'idEmpresa'
              Visible = False
            end
            item
              Expanded = False
              FieldName = 'idCadEmpresa'
              Title.Caption = 'Filial'
              Width = 50
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'descCadEmpresa'
              Title.Caption = 'Descri'#231#227'o'
              Width = 300
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'idAplicacao'
              Visible = False
            end
            item
              Expanded = False
              FieldName = 'idProduto'
              Visible = False
            end
            item
              Expanded = False
              FieldName = 'qtProduto'
              Title.Caption = 'Qtde.'
              Width = 100
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'descAbreviada'
              Visible = False
            end>
        end
        object DBGridSaldos: TCDBGrid
          Left = 2
          Top = 15
          Width = 710
          Height = 108
          Align = alClient
          DataSource = dsDeposito
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs]
          TabOrder = 1
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          OnCellClick = DBGridSaldosCellClick
          OnColEnter = DBGridSaldosColEnter
          OnDrawColumnCell = DBGridSaldosDrawColumnCell
          OnKeyDown = DBGridSaldosKeyDown
          OnKeyPress = DBGridSaldosKeyPress
          UtilizaOrdenar = False
          Columns = <
            item
              Expanded = False
              FieldName = 'sel'
              Title.Caption = '?'
              Width = 64
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'idEmpresa'
              Visible = False
            end
            item
              Expanded = False
              FieldName = 'idCadEmpresa'
              Title.Caption = 'Filial'
              Width = 50
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'descEmpresa'
              Visible = False
            end
            item
              Expanded = False
              FieldName = 'descCadEmpresa'
              Title.Caption = 'Descri'#231#227'o'
              Width = 250
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'idCnpjCpf'
              Visible = False
            end
            item
              Expanded = False
              FieldName = 'idInscEstadual'
              Visible = False
            end
            item
              Expanded = False
              FieldName = 'idProdDeposito'
              Visible = False
            end
            item
              Expanded = False
              FieldName = 'descProdDeposito'
              Visible = False
            end
            item
              Expanded = False
              FieldName = 'idProduto'
              Visible = False
            end
            item
              Expanded = False
              FieldName = 'descProduto'
              Visible = False
            end
            item
              Expanded = False
              FieldName = 'codFabricante'
              Visible = False
            end
            item
              Expanded = False
              FieldName = 'vlCustoMedio'
              Visible = False
            end
            item
              Expanded = False
              FieldName = 'qtProduto'
              Title.Caption = 'Saldo'
              Width = 100
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'vlTotal'
              Visible = False
            end
            item
              Expanded = False
              FieldName = 'idGrupo'
              Visible = False
            end
            item
              Expanded = False
              FieldName = 'qtAplicado'
              Title.Caption = 'Qtde'
              Width = 100
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'fator'
              Visible = False
            end
            item
              Expanded = False
              FieldName = 'qtAplic'
              Visible = False
            end>
        end
      end
      object EDCadEmpresa: TCEdit
        Left = 902
        Top = 219
        Width = 65
        Height = 19
        BorderStyle = bsNone
        BevelKind = bkTile
        TabOrder = 6
        Text = '1'
        Visible = False
        DataType = ftInteger
        KeyMode = kmNormal
        Decimals = 0
      end
    end
    object TSRateio: TTabSheet
      Caption = 'Rateio'
      ImageIndex = 2
      TabVisible = False
      object GrpRateioProduto: TCGroupBox
        Left = 3
        Top = 3
        Width = 586
        Height = 311
        Caption = 'Rateio no Produto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        Visible = False
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
        object CGroupBox1: TCGroupBox
          Left = 9
          Top = 13
          Width = 470
          Height = 106
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          object CLabel34: TCLabel
            Left = 19
            Top = 80
            Width = 51
            Height = 13
            Alignment = taRightJustify
            Caption = 'Percentual'
          end
          object CLabel35: TCLabel
            Left = 140
            Top = 80
            Width = 24
            Height = 13
            Alignment = taRightJustify
            Caption = 'Valor'
          end
          object CLabel33: TCLabel
            Left = 8
            Top = 58
            Width = 62
            Height = 13
            Alignment = taRightJustify
            Caption = 'C. Resultado'
          end
          object CLabel19: TCLabel
            Left = 29
            Top = 15
            Width = 41
            Height = 13
            Alignment = taRightJustify
            Caption = 'Op'#231#245'es'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object CLabel20: TCLabel
            Left = 267
            Top = 80
            Width = 28
            Height = 13
            Alignment = taRightJustify
            Caption = 'Qtde.'
          end
          object CLabel18: TCLabel
            Left = 32
            Top = 37
            Width = 38
            Height = 13
            Alignment = taRightJustify
            Caption = 'Produto'
          end
          object DBEprRateio: TCDBEdit
            Left = 76
            Top = 77
            Width = 57
            Height = 19
            BevelKind = bkTile
            BorderStyle = bsNone
            DataField = 'prRateio'
            DataSource = dsAplicacaoRat
            TabOrder = 8
            DecimalControl = True
            KeyMode = kmNormal
          end
          object DBEvlRateio: TCDBEdit
            Left = 170
            Top = 77
            Width = 91
            Height = 19
            BevelKind = bkTile
            BorderStyle = bsNone
            Color = 14149350
            DataField = 'vlRateioProd'
            DataSource = dsAplicacaoRat
            ReadOnly = True
            TabOrder = 9
            DecimalControl = True
            KeyMode = kmNormal
          end
          object RBRatTitulo2: TCRadioButton
            Left = 76
            Top = 14
            Width = 113
            Height = 17
            Caption = 'Rateio no Total'
            TabOrder = 1
          end
          object RBRatParcela2: TCRadioButton
            Left = 194
            Top = 14
            Width = 112
            Height = 17
            Caption = 'Rateio no Produto'
            Checked = True
            TabOrder = 2
            TabStop = True
          end
          object DBEidResultadoR: TCDBEdit
            Left = 76
            Top = 55
            Width = 57
            Height = 19
            BevelKind = bkTile
            BorderStyle = bsNone
            Color = 14149350
            DataField = 'idResultado'
            DataSource = dsAplicacaoRat
            TabOrder = 6
            Find = FindResultado
            DecimalControl = True
            KeyMode = kmNormal
          end
          object LookResultadoR: TCLookUp
            Left = 139
            Top = 55
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
            DataSource = dsPadrao
            ValidaCampoObrigatorio = True
            CampoObrigatorio = True
            LookUpTable = 'Resultado'
            ReturnField = 'descResultado'
          end
          object DBEqtRateio: TCDBEdit
            Left = 301
            Top = 77
            Width = 91
            Height = 19
            BevelKind = bkTile
            BorderStyle = bsNone
            Color = 14149350
            DataField = 'qtRateio'
            DataSource = dsAplicacaoRat
            ReadOnly = True
            TabOrder = 10
            DecimalControl = True
            KeyMode = kmNormal
          end
          object DBEidProdutoRat: TCDBEdit
            Left = 76
            Top = 34
            Width = 46
            Height = 18
            BevelKind = bkTile
            BorderStyle = bsNone
            Color = 14149350
            DataField = 'idProduto'
            DataSource = dsAplicacaoRat
            ReadOnly = True
            TabOrder = 3
            OnExit = DBEidProdutoExit
            Find = FindProduto
            DecimalControl = True
            KeyMode = kmNormal
          end
          object LookProdutoRat: TCLookUp
            Left = 128
            Top = 34
            Width = 251
            Height = 18
            Alignment = taLeftJustify
            BevelInner = bvSpace
            BevelOuter = bvLowered
            Color = 14149350
            ParentBackground = False
            TabOrder = 4
            Key.Strings = (
              'idProduto')
            LookUpKey.Strings = (
              'idProduto')
            ClientDataSet = cdsLookup
            DataSource = dsAplicacaoProd
            ValidaCampoObrigatorio = True
            CampoObrigatorio = True
            LookUpTable = 'Produto'
            ReturnField = 'descProduto'
          end
          object CLookUp3: TCLookUp
            Left = 385
            Top = 34
            Width = 42
            Height = 18
            Alignment = taLeftJustify
            BevelInner = bvSpace
            BevelOuter = bvLowered
            Color = 14149350
            ParentBackground = False
            TabOrder = 5
            Key.Strings = (
              'idProduto')
            LookUpKey.Strings = (
              'idProduto')
            AlternateSQL.Strings = (
              
                'SELECT ProdMedida.descAbreviada FROM Produto, ProdMedida WHERE P' +
                'roduto.idProdMedida = ProdMedida.idProdMedida AND Produto.idProd' +
                'uto = ?')
            ClientDataSet = cdsLookup
            DataSource = dsAplicacaoProd
            ValidaCampoObrigatorio = False
            CampoObrigatorio = True
            LookUpTable = 'Produto'
            ReturnField = 'descAbreviada'
          end
          object CBitBtn9: TCBitBtn
            Left = 312
            Top = 12
            Width = 93
            Height = 19
            Caption = '&Gerar Rateio'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Glyph.Data = {
              36080000424D3608000000000000360000002800000020000000100000000100
              2000000000000008000000000000000000000000000000000000FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00D9D9DAFFFF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00E3E3E3FFFF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00ABA9A8FFDCDCDCFF8C8B8DFFEEEE
              EEFFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00CACACAFFFFFFFFFFB4B4B4FFF2F2
              F2FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00DFDFDFFFF0EDE9FFE7E5DEFFB5B3B0FFD2D1
              D2FFC1C0C1FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00E7E7E7FFFFFFFFFFFFFFFFFFF0F0F0FFFFFF
              FFFFD1D1D1FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00D4CBC2FFE4E1D9FFE5E2DAFFE5E0D8FFD1C9
              C1FFDDDCDCFF8D8C8DFFE9E9E9FFFF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFBCBCBCFFEFEFEFFFFF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00A19A94FFE1DAD3FFE5E0D8FFE3DCD5FFDDD6CEFFDCD2
              C8FFD5C9BDFFB1ADA9FFDFDFDFFFB1B0B1FFFF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00C2C2C2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFEAEAEAFFFFFFFFFFC6C6C6FFFF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00D1D0D1FFE3DBD3FFDCD3C9FFDAD1C8FFDDD3CAFFDDD3C9FFD4C8
              BDFFCEC0B3FFCCBCADFFB1A297FFE6E6E6FFC5C4C5FFFF00FF00FF00FF00FF00
              FF00FF00FF00DDDDDDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFDFDFDFFF9F9F9FFE0E0E0FFFFFFFFFFD7D7D7FFFF00FF00FF00FF00FF00
              FF00F6F6F6FFC9BAB0FFCEC1B4FFD2C6BAFFD9CEC2FFD6CBBFFFD1C5B9FFD2C4
              B7FFCEBEB0FFC2B1A4FFBDAA9EFFB9A59AFFFF00FF00FF00FF00FF00FF00FF00
              FF00F8F8F8FFF9F9F9FFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFCFCFCFFEFEFEFFFE9E9E9FFE4E4E4FFFF00FF00FF00FF00FF00FF00FF00
              FF0093847FFFC6B6A9FFCCBCADFFCFC1B2FFCDBEB0FFCFC0B2FFD1C2B4FFC9B9
              ABFFB6ABA0FFB6807DFFBCA89DFFD4C8C2FFFF00FF00FF00FF00FF00FF00FF00
              FF00B8B8B8FFF4F4F4FFF9F9F9FFFDFDFDFFFBFBFBFFFDFDFDFFFFFFFFFFF7F7
              F7FFE8E8E8FFD3D3D3FFE8E8E8FFE5E5E5FFFF00FF00FF00FF00FF00FF00BEBC
              BDFFCFC1BAFFC2B0A3FFC1B0A3FFC4B3A6FFCABAACFFC9B8AAFFC4B3A5FFB6AB
              A2FFF2736CFFFDBBA1FFA18385FFFF00FF00FF00FF00FF00FF00FF00FF00CFCF
              CFFFFFFFFFFFEEEEEEFFEEEEEEFFF1F1F1FFF7F7F7FFF6F6F6FFF1F1F1FFE9E9
              E9FFE3E3E3FFFFFFFFFFBEBEBEFFFF00FF00FF00FF00FF00FF00F4F4F4FFC3B5
              B0FFBCA9A0FFBEADA3FFC5B4AAFFC9B8AEFFC7B7ACFFC6B6ABFFB7AFA4FFEA16
              1BFFFE584BFFFF6B5CFFFD3A32FFCCD0E3FFFF00FF00FF00FF00F7F7F7FFF6F6
              F6FFEAEAEAFFECECECFFF4F4F4FFF8F8F8FFF6F6F6FFF5F5F5FFEAEAEAFFAEAE
              AEFFD5D5D5FFE0E0E0FFC7C7C7FFEBEBEBFFFF00FF00FF00FF00F6F4F4FFC3B3
              AEFFC6B6B0FFCDBEB7FFCEC0BAFFD1C4BDFFD5C8C2FFCBC8BEFFC00314FFE501
              0AFFF61615FFF81E1BFFF1080BFFD2000FFFC9D4E7FFFF00FF00FFFFFFFFE6E6
              E6FFF7F7F7FFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF929292FFA0A0
              A0FFB2B2B2FFB6B6B6FFA9A9A9FF989898FFECECECFFFF00FF00FF00FF00FF00
              FF00D7CDCAFFD5CAC7FFD9CFCAFFDCD2CEFFDED4D0FFD197A0FFD41821FFD624
              2DFFFF5146FFFF554AFFC22636FFB32E41FFAC2E46FFFF00FF00FF00FF00FF00
              FF00FDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEEEEEEFFA6A6A6FFAEAE
              AEFFD3D3D3FFD5D5D5FFA3A3A3FF9E9E9EFF9A9A9AFFFF00FF00FF00FF00FF00
              FF00FF00FF00FBFAFAFFE7E3E3FFE8E5E5FFEBE9E8FFEEEBEBFFF9F9F9FFF9FA
              F9FFFF7E6DFFFF8774FFB6A3CBFFFF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFEAEAEAFFEEEEEEFFD0D0D0FFFF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00F2F0F0FFFAFAFAFFF4F3F3FFFDFDFDFFD4DD
              DCFFFEA696FFF6C8C0FFBCB4CBFFFF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5F5
              F5FFFFFFFFFFFFFFFFFFD8D8D8FFFF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FCFCFCFFFF00FF00FEFEFEFFFF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FFFFFFFFFF00FF00FFFFFFFFFF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
            Margin = 5
            NumGlyphs = 2
            ParentFont = False
            TabOrder = 0
          end
        end
        object CGroupBox4: TCGroupBox
          Left = 9
          Top = 125
          Width = 470
          Height = 178
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 2
          object CDBGrid1: TCDBGrid
            Left = 8
            Top = 14
            Width = 451
            Height = 156
            TabStop = False
            DataSource = dsAplicacaoRat
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
        object CGroupBox28: TCGroupBox
          Left = 487
          Top = 13
          Width = 92
          Height = 290
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
          object CLabel158: TCLabel
            Left = 7
            Top = 246
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
          object CLabel15: TCLabel
            Left = 8
            Top = 202
            Width = 78
            Height = 13
            Alignment = taCenter
            AutoSize = False
            Caption = 'Total'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object BtnSalvarRat: TCBitBtn
            Left = 7
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
          end
          object BtnExcluirRat: TCBitBtn
            Left = 8
            Top = 73
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
          end
          object BtnNovoRat: TCBitBtn
            Left = 8
            Top = 104
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
          end
          object DBEvlRestante: TCDBEdit
            Left = 6
            Top = 264
            Width = 80
            Height = 19
            TabStop = False
            BevelKind = bkTile
            BorderStyle = bsNone
            Color = 14149350
            DataField = 'vlRestante'
            DataSource = dsAplicacaoRat
            MaxLength = 10
            ReadOnly = True
            TabOrder = 5
            DecimalControl = False
            KeyMode = kmNormal
          end
          object DBEvlTotalRateio2: TCDBEdit
            Left = 6
            Top = 221
            Width = 80
            Height = 19
            TabStop = False
            BevelKind = bkTile
            BorderStyle = bsNone
            Color = 14149350
            DataField = 'vlTotalRateio'
            DataSource = dsAplicacaoRat
            MaxLength = 10
            ReadOnly = True
            TabOrder = 4
            DecimalControl = False
            KeyMode = kmNormal
          end
        end
      end
      object GrpRateioAplicacao: TCGroupBox
        Left = 3
        Top = 3
        Width = 586
        Height = 310
        Caption = 'Rateio no total da Aplica'#231#227'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
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
          Height = 92
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          object CLabel41: TCLabel
            Left = 174
            Top = 20
            Width = 41
            Height = 13
            Alignment = taRightJustify
            Caption = 'Op'#231#245'es'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object CLabel42: TCLabel
            Left = 12
            Top = 42
            Width = 62
            Height = 13
            Alignment = taRightJustify
            Caption = 'C. Resultado'
          end
          object CLabel44: TCLabel
            Left = 23
            Top = 64
            Width = 51
            Height = 13
            Alignment = taRightJustify
            Caption = 'Percentual'
          end
          object CLabel45: TCLabel
            Left = 144
            Top = 64
            Width = 24
            Height = 13
            Alignment = taRightJustify
            Caption = 'Valor'
          end
          object CLabel157: TCLabel
            Left = 11
            Top = 20
            Width = 63
            Height = 13
            Alignment = taCenter
            AutoSize = False
            Caption = 'Valor Total'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object DBEidResultadoRT: TCDBEdit
            Left = 80
            Top = 39
            Width = 57
            Height = 19
            BevelKind = bkTile
            BorderStyle = bsNone
            Color = 14149350
            DataField = 'idResultado'
            DataSource = dsAplicacaoRat
            TabOrder = 3
            Find = FindResultado
            DecimalControl = True
            KeyMode = kmNormal
          end
          object DBEprRateioRT: TCDBEdit
            Left = 80
            Top = 61
            Width = 57
            Height = 19
            BevelKind = bkTile
            BorderStyle = bsNone
            DataField = 'prRateio'
            DataSource = dsAplicacaoRat
            TabOrder = 5
            DecimalControl = True
            KeyMode = kmNormal
          end
          object RBRatAplicacao: TCRadioButton
            Left = 221
            Top = 19
            Width = 113
            Height = 17
            Caption = 'Rateio Total'
            Checked = True
            TabOrder = 1
            TabStop = True
          end
          object RBRatProduto: TCRadioButton
            Left = 340
            Top = 19
            Width = 113
            Height = 17
            Caption = 'Rateio no Produto'
            TabOrder = 2
          end
          object LookResultadoRT: TCLookUp
            Left = 143
            Top = 39
            Width = 314
            Height = 19
            Alignment = taLeftJustify
            BevelInner = bvSpace
            BevelOuter = bvLowered
            Color = 14149350
            ParentBackground = False
            TabOrder = 4
            Key.Strings = (
              'idResultado')
            LookUpKey.Strings = (
              'idResultado')
            AlternateSQL.Strings = (
              
                'SELECT descResultado FROM Resultado WHERE idEmpresa = [DBEidEmpr' +
                'esa] AND idResultado = ?')
            ClientDataSet = cdsLookup
            ValidaCampoObrigatorio = True
            CampoObrigatorio = True
            LookUpTable = 'Resultado'
            ReturnField = 'descResultado'
          end
          object DBEvlRateioRT: TCDBEdit
            Left = 174
            Top = 61
            Width = 91
            Height = 19
            BevelKind = bkTile
            BorderStyle = bsNone
            DataField = 'vlRateio'
            DataSource = dsAplicacaoRat
            TabOrder = 6
            DecimalControl = True
            KeyMode = kmNormal
          end
          object DBEvlTotalRateio: TCDBEdit
            Left = 80
            Top = 17
            Width = 80
            Height = 19
            TabStop = False
            BevelKind = bkTile
            BorderStyle = bsNone
            Color = 14149350
            DataField = 'vlTotalRateio'
            DataSource = dsAplicacaoRat
            MaxLength = 10
            ReadOnly = True
            TabOrder = 0
            DecimalControl = False
            KeyMode = kmNormal
          end
          object BtnGerarRateio: TCBitBtn
            Left = 271
            Top = 61
            Width = 93
            Height = 19
            Caption = '&Gerar Rateio'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Glyph.Data = {
              36080000424D3608000000000000360000002800000020000000100000000100
              2000000000000008000000000000000000000000000000000000FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00D9D9DAFFFF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00E3E3E3FFFF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00ABA9A8FFDCDCDCFF8C8B8DFFEEEE
              EEFFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00CACACAFFFFFFFFFFB4B4B4FFF2F2
              F2FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00DFDFDFFFF0EDE9FFE7E5DEFFB5B3B0FFD2D1
              D2FFC1C0C1FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00E7E7E7FFFFFFFFFFFFFFFFFFF0F0F0FFFFFF
              FFFFD1D1D1FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00D4CBC2FFE4E1D9FFE5E2DAFFE5E0D8FFD1C9
              C1FFDDDCDCFF8D8C8DFFE9E9E9FFFF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFBCBCBCFFEFEFEFFFFF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00A19A94FFE1DAD3FFE5E0D8FFE3DCD5FFDDD6CEFFDCD2
              C8FFD5C9BDFFB1ADA9FFDFDFDFFFB1B0B1FFFF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00C2C2C2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFEAEAEAFFFFFFFFFFC6C6C6FFFF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00D1D0D1FFE3DBD3FFDCD3C9FFDAD1C8FFDDD3CAFFDDD3C9FFD4C8
              BDFFCEC0B3FFCCBCADFFB1A297FFE6E6E6FFC5C4C5FFFF00FF00FF00FF00FF00
              FF00FF00FF00DDDDDDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFDFDFDFFF9F9F9FFE0E0E0FFFFFFFFFFD7D7D7FFFF00FF00FF00FF00FF00
              FF00F6F6F6FFC9BAB0FFCEC1B4FFD2C6BAFFD9CEC2FFD6CBBFFFD1C5B9FFD2C4
              B7FFCEBEB0FFC2B1A4FFBDAA9EFFB9A59AFFFF00FF00FF00FF00FF00FF00FF00
              FF00F8F8F8FFF9F9F9FFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFCFCFCFFEFEFEFFFE9E9E9FFE4E4E4FFFF00FF00FF00FF00FF00FF00FF00
              FF0093847FFFC6B6A9FFCCBCADFFCFC1B2FFCDBEB0FFCFC0B2FFD1C2B4FFC9B9
              ABFFB6ABA0FFB6807DFFBCA89DFFD4C8C2FFFF00FF00FF00FF00FF00FF00FF00
              FF00B8B8B8FFF4F4F4FFF9F9F9FFFDFDFDFFFBFBFBFFFDFDFDFFFFFFFFFFF7F7
              F7FFE8E8E8FFD3D3D3FFE8E8E8FFE5E5E5FFFF00FF00FF00FF00FF00FF00BEBC
              BDFFCFC1BAFFC2B0A3FFC1B0A3FFC4B3A6FFCABAACFFC9B8AAFFC4B3A5FFB6AB
              A2FFF2736CFFFDBBA1FFA18385FFFF00FF00FF00FF00FF00FF00FF00FF00CFCF
              CFFFFFFFFFFFEEEEEEFFEEEEEEFFF1F1F1FFF7F7F7FFF6F6F6FFF1F1F1FFE9E9
              E9FFE3E3E3FFFFFFFFFFBEBEBEFFFF00FF00FF00FF00FF00FF00F4F4F4FFC3B5
              B0FFBCA9A0FFBEADA3FFC5B4AAFFC9B8AEFFC7B7ACFFC6B6ABFFB7AFA4FFEA16
              1BFFFE584BFFFF6B5CFFFD3A32FFCCD0E3FFFF00FF00FF00FF00F7F7F7FFF6F6
              F6FFEAEAEAFFECECECFFF4F4F4FFF8F8F8FFF6F6F6FFF5F5F5FFEAEAEAFFAEAE
              AEFFD5D5D5FFE0E0E0FFC7C7C7FFEBEBEBFFFF00FF00FF00FF00F6F4F4FFC3B3
              AEFFC6B6B0FFCDBEB7FFCEC0BAFFD1C4BDFFD5C8C2FFCBC8BEFFC00314FFE501
              0AFFF61615FFF81E1BFFF1080BFFD2000FFFC9D4E7FFFF00FF00FFFFFFFFE6E6
              E6FFF7F7F7FFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF929292FFA0A0
              A0FFB2B2B2FFB6B6B6FFA9A9A9FF989898FFECECECFFFF00FF00FF00FF00FF00
              FF00D7CDCAFFD5CAC7FFD9CFCAFFDCD2CEFFDED4D0FFD197A0FFD41821FFD624
              2DFFFF5146FFFF554AFFC22636FFB32E41FFAC2E46FFFF00FF00FF00FF00FF00
              FF00FDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEEEEEEFFA6A6A6FFAEAE
              AEFFD3D3D3FFD5D5D5FFA3A3A3FF9E9E9EFF9A9A9AFFFF00FF00FF00FF00FF00
              FF00FF00FF00FBFAFAFFE7E3E3FFE8E5E5FFEBE9E8FFEEEBEBFFF9F9F9FFF9FA
              F9FFFF7E6DFFFF8774FFB6A3CBFFFF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFEAEAEAFFEEEEEEFFD0D0D0FFFF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00F2F0F0FFFAFAFAFFF4F3F3FFFDFDFDFFD4DD
              DCFFFEA696FFF6C8C0FFBCB4CBFFFF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5F5
              F5FFFFFFFFFFFFFFFFFFD8D8D8FFFF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FCFCFCFFFF00FF00FEFEFEFFFF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FFFFFFFFFF00FF00FFFFFFFFFF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
            Margin = 5
            NumGlyphs = 2
            ParentFont = False
            TabOrder = 7
          end
        end
        object CGroupBox10: TCGroupBox
          Left = 9
          Top = 107
          Width = 470
          Height = 194
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          object CDBGrid3: TCDBGrid
            Left = 8
            Top = 14
            Width = 451
            Height = 171
            TabStop = False
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
        object CGroupBox3: TCGroupBox
          Left = 485
          Top = 13
          Width = 92
          Height = 288
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
          object CLabel17: TCLabel
            Left = 8
            Top = 241
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
          object CBitBtn1: TCBitBtn
            Left = 7
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
          end
          object CBitBtn3: TCBitBtn
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
          end
          object CBitBtn6: TCBitBtn
            Left = 8
            Top = 73
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
          end
          object CBitBtn8: TCBitBtn
            Left = 8
            Top = 104
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
          end
          object DBEvlRestante2: TCDBEdit
            Left = 7
            Top = 260
            Width = 80
            Height = 19
            TabStop = False
            BevelKind = bkTile
            BorderStyle = bsNone
            Color = 14149350
            DataField = 'vlRestante'
            DataSource = dsAplicacaoRat
            MaxLength = 10
            ReadOnly = True
            TabOrder = 4
            DecimalControl = False
            KeyMode = kmNormal
          end
        end
      end
    end
  end
  inherited PanBotoes: TCPanelGradient
    Top = 494
    Width = 1126
    ExplicitTop = 494
    ExplicitWidth = 1126
    inherited BtnFechar: TCBitBtn
      Left = 993
      Anchors = []
      TabOrder = 6
      ExplicitLeft = 993
    end
    inherited BtnNovo: TCBitBtn
      Left = 332
      TabOrder = 4
      ExplicitLeft = 332
    end
    inherited BtnPesquisar: TCBitBtn
      Left = 411
      TabOrder = 5
      ExplicitLeft = 411
    end
    object BtnExcluirAplic: TCBitBtn
      Left = 251
      Top = 2
      Width = 75
      Height = 25
      Caption = '&Excluir'
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFF5CA99F6D1A1F5CB99F3
        C18BF2C088F3C38EFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFCF0CCFEF6D5FCE6BEF6D5A6FCC696FFC495FDD6AEFFE2BFFEE2BAF4C5
        90FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFEFBDDFEF9D8FCE4BBF0D6A7BB
        C8889CBD6F43A73672BA5EEFF6D4FDEECCF2BF89FF00FFFF00FFFF00FFFF00FF
        F1B87FF6D0A1FDF4D1FDEBC5FCDBB344AB380094020E9A0F10970B57B64EFEF5
        DBF4C28CFF00FFFF00FFFF00FFFF00FFF2BD87F1BA81F3C18AF8D5A6FFE1BE47
        AD3A00880084CD85FFF4EF63B552B6C079FDC08DFF00FFFF00FFFF00FFFF00FF
        F5C492F5C796F4C390F4BE89FCC59693C47B5CB95C89CB83FFFFFFF7FEFCCBCA
        92F6BC85FF00FFFF00FFFF00FFFF00FFF9D0A8FBD2ADFAD0A9FACEA6F6CDA1D0
        DFB8FFFFFFE2F2DF71C26E66C066C8CB92FAC18EFF00FFFF00FFFF00FFF8D4A8
        FDDEBFFDDEBEFDDBBBFDDBBBFFDEC578BB6198D498E7F5E63EAD3B008A009AC1
        76FFCCA6F2BE87FF00FFFF00FFF8D4A8FFEFD1FEEACBFEE9C9FEE7C8FFE7C9E2
        E2BE169A142BA12908970800920090C478FFD9BCF2BE87FF00FFFF00FFFBE5BD
        FFFCDFFFF7D8FFF6D6FFF4D5FFF3D2FFF5DCC5DFAD42AB3B43AE3BAFD79EC5DC
        AAFFE7C9F5C793FF00FFFF00FFFDF3D1FFFFE1FFFCDDFFFDDEFFFCDDFFFCDEFF
        FDDEFFFFE8FFFFF0FFFFEDFFFFE7FFFAE0FFF7D7F6CE9DFF00FFFF00FFFEF7D7
        FFFFE5FFFFE2FFFFE2FFFFE3FFFEE0FEF8D8FAE3B6F7CE95F7CF97F9E1B6FEF5
        D2FFFFE5F6D5A7FF00FFFF00FFF7D8ABFAE6C0FAE5BEF9E1B9F8DAAEF6CD98F3
        BE80F0B16AF0B067F0B370F4BE88FBCE9EFDDDB4FBCEA0FF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFF1B66FF3BD82F9CB9BFBCD
        9FFBCB9BFBCB9BFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFBCE9FFBCE9FFBCE9FFF00FFFF00FF}
      TabOrder = 3
      OnClick = BtnExcluirAplicClick
    end
  end
  inherited PanEmpresa: TCPanelGradient
    Width = 1126
    ExplicitWidth = 1126
  end
  inherited imgIcones: TImageList
    Left = 792
    Top = 80
    Bitmap = {
      494C010100000800900110001000FFFFFFFFFF00FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000}
  end
  inherited Acao: TActionList
    Left = 856
    Top = 80
    inherited actCancelar: TAction
      OnExecute = nil
    end
  end
  inherited cdsPadrao: TClientDataSet
    CommandText = 'select * from Aplicacao'
    Left = 824
    Top = 144
    object cdsPadraoidEmpresa: TIntegerField
      FieldName = 'idEmpresa'
      Required = True
    end
    object cdsPadraoidAplicacao: TIntegerField
      FieldName = 'idAplicacao'
      Required = True
    end
    object cdsPadraodtAplicacao: TSQLTimeStampField
      FieldName = 'dtAplicacao'
      Required = True
    end
    object cdsPadraoidSafra: TIntegerField
      FieldName = 'idSafra'
      Required = True
    end
    object cdsPadraoidResultado: TIntegerField
      FieldName = 'idResultado'
    end
    object cdsPadraoidRateio: TSmallintField
      FieldName = 'idRateio'
    end
    object cdsPadraoidProdDeposito: TSmallintField
      FieldName = 'idProdDeposito'
      Required = True
    end
    object cdsPadraostAplicacao: TStringField
      FieldName = 'stAplicacao'
      Required = True
      Size = 15
    end
    object cdsPadraoidSubGrupo: TIntegerField
      FieldName = 'idSubGrupo'
    end
    object cdsPadraoobsAplicacao: TStringField
      FieldName = 'obsAplicacao'
      Size = 500
    end
  end
  inherited dspPadrao: TDataSetProvider
    DataSet = sdsAplicacao
    Left = 792
    Top = 144
  end
  inherited dsPadrao: TDataSource
    Left = 856
    Top = 144
  end
  inherited ImgBotoes: TImageList
    Left = 824
    Top = 80
    Bitmap = {
      494C010100000800900120001000FFFFFFFFFF00FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000800000001000000001002000000000000020
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000080000000100000000100010000000000000100000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000}
  end
  inherited cdsLookup: TClientDataSet
    Left = 824
    Top = 112
  end
  inherited dspLookup: TDataSetProvider
    DataSet = dmPadrao.sdsLookup
    Left = 792
    Top = 112
  end
  inherited sdsLookup: TSQLDataSet
    SchemaName = 'gesys'
  end
  inherited cdsEmpresa: TClientDataSet
    Left = 824
    Top = 40
  end
  inherited dsEmpresa: TDataSource
    Left = 856
    Top = 40
  end
  inherited FindEmpresa: TCFind
    Left = 808
  end
  object dsAplicacaoProd: TDataSource
    DataSet = cdsAplicacaoProd
    OnStateChange = dsAplicacaoProdStateChange
    Left = 856
    Top = 240
  end
  object dspAplicacaoProd: TDataSetProvider
    DataSet = sdsAplicacaoProd
    Options = [poAllowMultiRecordUpdates, poPropogateChanges, poAllowCommandText, poUseQuoteChar]
    BeforeUpdateRecord = dspAplicacaoProdBeforeUpdateRecord
    Left = 792
    Top = 240
  end
  object cdsAplicacaoProd: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    CommandText = 'SELECT * FROM AplicacaoProd'
    Params = <>
    ProviderName = 'dspAplicacaoProd'
    AfterOpen = cdsPadraoAfterOpen
    AfterEdit = cdsAplicacaoProdAfterEdit
    OnCalcFields = cdsAplicacaoProdCalcFields
    OnReconcileError = cdsPadraoReconcileError
    Left = 824
    Top = 240
    object cdsAplicacaoProddescProduto: TStringField
      FieldKind = fkLookup
      FieldName = 'descProduto'
      LookupDataSet = cdsProduto
      LookupKeyFields = 'idProduto'
      LookupResultField = 'descProduto'
      KeyFields = 'idProduto'
      Size = 50
      Lookup = True
    end
    object cdsAplicacaoProdvlTotal: TCurrencyField
      FieldKind = fkInternalCalc
      FieldName = 'vlTotal'
    end
    object cdsAplicacaoProdidEmpresa: TIntegerField
      FieldName = 'idEmpresa'
      Required = True
    end
    object cdsAplicacaoProdidAplicacao: TIntegerField
      FieldName = 'idAplicacao'
      Required = True
    end
    object cdsAplicacaoProdidProduto: TIntegerField
      FieldName = 'idProduto'
      Required = True
    end
    object cdsAplicacaoProdqtAplicacao: TFMTBCDField
      FieldName = 'qtAplicacao'
      Required = True
      Precision = 10
      Size = 3
    end
    object cdsAplicacaoProdvlAplicacao: TFMTBCDField
      FieldName = 'vlAplicacao'
      Precision = 18
      Size = 4
    end
    object cdsAplicacaoProdqtSaldoAtual: TFMTBCDField
      FieldName = 'qtSaldoAtual'
      Required = True
      Precision = 10
      Size = 3
    end
    object cdsAplicacaoProdqtSaldoData: TFMTBCDField
      FieldName = 'qtSaldoData'
      Precision = 10
      Size = 3
    end
    object cdsAplicacaoProdvlTotalProd: TAggregateField
      FieldName = 'vlTotalProd'
      Visible = True
      Active = True
      DisplayName = 'vlTotalProd'
      DisplayFormat = '###,##0.00'
      Expression = 'SUM(vlTotal)*1'
    end
  end
  object cdsAplicacaoRat: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    CommandText = 'SELECT * FROM AplicacaoRateio'
    Params = <>
    ProviderName = 'dspAplicacaoRat'
    AfterOpen = cdsPadraoAfterOpen
    OnReconcileError = cdsPadraoReconcileError
    Left = 824
    Top = 272
    object cdsAplicacaoRatidEmpresa: TIntegerField
      FieldName = 'idEmpresa'
      Required = True
    end
    object cdsAplicacaoRatidAplicacao: TIntegerField
      FieldName = 'idAplicacao'
      Required = True
    end
    object cdsAplicacaoRatidResultado: TIntegerField
      FieldName = 'idResultado'
      Required = True
    end
    object cdsAplicacaoRatidProduto: TIntegerField
      FieldName = 'idProduto'
      Required = True
    end
    object cdsAplicacaoRatqtRateio: TBCDField
      FieldName = 'qtRateio'
      Precision = 10
      Size = 3
    end
    object cdsAplicacaoRatprRateio: TBCDField
      FieldName = 'prRateio'
      Required = True
      Precision = 6
      Size = 3
    end
    object cdsAplicacaoRatvlRateio: TBCDField
      FieldName = 'vlRateio'
      Required = True
      Precision = 10
      Size = 2
    end
    object cdsAplicacaoRatvlRestante: TCurrencyField
      FieldKind = fkInternalCalc
      FieldName = 'vlRestante'
    end
    object cdsAplicacaoRatvlTotalRateio: TAggregateField
      FieldName = 'vlTotalRateio'
      Visible = True
      Active = True
      DisplayName = ''
      Expression = 'SUM(vlRateio)*1'
    end
    object cdsAplicacaoRatvlRateioProd: TAggregateField
      FieldName = 'vlRateioProd'
      DisplayName = ''
    end
  end
  object dspAplicacaoRat: TDataSetProvider
    DataSet = sdsAplicacaoRat
    Options = [poAllowMultiRecordUpdates, poPropogateChanges, poAllowCommandText, poUseQuoteChar]
    BeforeUpdateRecord = dspAplicacaoProdBeforeUpdateRecord
    Left = 792
    Top = 272
  end
  object dsAplicacaoRat: TDataSource
    DataSet = cdsAplicacaoRat
    Left = 856
    Top = 272
  end
  object FindRateio: TCFind
    SelectClause.Strings = (
      'SELECT  idRateio, descRateio, stRateio FROM Rateio')
    JoinClause.Strings = (
      'WHERE idEmpresa = [DBEidEmpresa]')
    OrderByClause.Strings = (
      'ORDER BY descRateio')
    FindField = 'descRateio'
    SQLConnection = dmPadrao.dbConexao
    ValueField = 'idRateio'
    CarregaDados = True
    CollumNames.Strings = (
      'C'#243'digo'
      'Descri'#231#227'o'
      'Status')
    TypeFind = fFindNormal
    Left = 792
    Top = 176
  end
  object FindResultado: TCFind
    SelectClause.Strings = (
      
        'SELECT  idResultado, descResultado, Talhao, stResultado FROM Res' +
        'ultado')
    JoinClause.Strings = (
      
        'WHERE idEmpresa = [DBEidEmpresa] AND idResultado IN (SELECT idRe' +
        'sultado FROM SafraTalhao WHERE idEmpresa = [DBEidEmpresa] AND id' +
        'Safra = [DBEidSafra])')
    OrderByClause.Strings = (
      'ORDER BY descResultado')
    FindField = 'descResultado'
    SQLConnection = dmPadrao.dbConexao
    ValueField = 'idResultado'
    CarregaDados = True
    CollumNames.Strings = (
      'C'#243'digo'
      'Descri'#231#227'o'
      #201' Talh'#227'o'
      'Status')
    TypeFind = fFindNormal
    Left = 856
    Top = 176
  end
  object FindProdDeposito: TCFind
    SelectClause.Strings = (
      
        'SELECT pm.idProdDeposito, pm.descProdDeposito, pm.stProdDeposito' +
        ' FROM ProdDeposito pm')
    JoinClause.Strings = (
      'WHERE stProdDeposito = '#39'ATIVO'#39)
    OrderByClause.Strings = (
      'ORDER BY descProdDeposito')
    FindField = 'descProdDeposito'
    SQLConnection = dmPadrao.dbConexao
    ValueField = 'idProdDeposito'
    CarregaDados = True
    CollumNames.Strings = (
      'Deposito'
      'Descri'#231#227'o'
      'Status')
    TypeFind = fFindNormal
    Left = 792
    Top = 208
  end
  object FindProduto: TCFind
    SelectClause.Strings = (
      
        'SELECT idProduto, descProduto, qtEstoque, idProdDeposito FROM vC' +
        'onsProdutoEstoque')
    JoinClause.Strings = (
      
        'WHERE stProduto = '#39'ATIVO'#39' AND idProdDeposito = [DBEidProdDeposit' +
        'o] AND idEmpresa = [DBEidEmpresa]')
    OrderByClause.Strings = (
      'ORDER BY descProduto')
    FindField = 'descProduto'
    SQLConnection = dmPadrao.dbConexao
    ValueField = 'idProduto'
    CarregaDados = True
    CollumNames.Strings = (
      'C'#243'digo'
      'Descri'#231#227'o'
      'Estoque'
      'Dep'#243'sito')
    TypeFind = fFindNormal
    Left = 992
    Top = 464
  end
  object FindSafra: TCFind
    SelectClause.Strings = (
      'SELECT idSafra, descSafra, dtInicial  FROM Safra')
    JoinClause.Strings = (
      'WHERE stSafra = '#39'ATIVO'#39' AND idEmpresa = [DBEidEmpresa]')
    OrderByClause.Strings = (
      'ORDER BY descSafra')
    FindField = 'descSafra'
    SQLConnection = dmPadrao.dbConexao
    ValueField = 'idSafra'
    CarregaDados = True
    CollumNames.Strings = (
      'Safra'
      'Descri'#231#227'o'
      'Data Inicial')
    TypeFind = fFindNormal
    Left = 824
    Top = 176
  end
  object sdsAplicacao: TSQLDataSet
    SchemaName = 'gesys'
    GetMetadata = False
    CommandText = 'select * from Aplicacao'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmPadrao.dbConexao
    Left = 760
    Top = 144
  end
  object sdsAplicacaoProd: TSQLDataSet
    SchemaName = 'gesys'
    GetMetadata = False
    CommandText = 'SELECT * FROM AplicacaoProd'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmPadrao.dbConexao
    Left = 760
    Top = 240
  end
  object sdsAplicacaoRat: TSQLDataSet
    SchemaName = 'gesys'
    GetMetadata = False
    CommandText = 'SELECT * FROM AplicacaoRateio'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmPadrao.dbConexao
    Left = 760
    Top = 272
  end
  object cdsProduto: TClientDataSet
    Aggregates = <>
    CommandText = 'SELECT * FROM Produto'
    Params = <>
    ProviderName = 'dspLookUp'
    Left = 856
    Top = 112
  end
  object cdsResultado: TClientDataSet
    Aggregates = <>
    CommandText = 'SELECT * FROM Resultado'
    Params = <>
    ProviderName = 'dspLookUp'
    Left = 896
    Top = 112
  end
  object FindAplicacao: TCFind
    SelectClause.Strings = (
      
        'Select idAplicacao, dtAplicacao, obsAplicacao, stAplicacao From ' +
        'Aplicacao')
    JoinClause.Strings = (
      'WHERE stAplicacao = '#39'ATIVO'#39)
    OrderByClause.Strings = (
      'ORDER BY dtAplicacao')
    FindField = 'Numero'
    SQLConnection = dmPadrao.dbConexao
    ValueField = 'idAplicacao'
    CarregaDados = True
    CollumNames.Strings = (
      'Numero'
      'Data'
      'Obs.'
      'Status')
    TypeFind = fFindNormal
    Left = 856
    Top = 208
  end
  object cdsAplicacaoProdDep: TClientDataSet
    Aggregates = <>
    CommandText = 
      'SELECT A.idEmpresa, A.idCadEmpresa, A.idAplicacao, A.idProduto, ' +
      'A.idAplicacaoProdDeposito, A.qtProduto, Cad.descCadEmpresa, Cad.' +
      'descAbreviada FROM AplicacaoProdDeposito A INNER JOIN vCadEmpres' +
      'aFiscal Cad ON A.idEmpresa = Cad.idEmpresa AND A.idCadEmpresa = ' +
      'Cad.idCadEmpresa'
    Params = <>
    ProviderName = 'dspAplicacaoProdDep'
    OnReconcileError = cdsPadraoReconcileError
    Left = 824
    Top = 320
  end
  object dsAplicacaoProdDep: TDataSource
    DataSet = cdsAplicacaoProdDep
    Left = 856
    Top = 320
  end
  object dspAplicacaoProdDep: TDataSetProvider
    DataSet = sdsAplicacaoProdDep
    Options = [poAllowMultiRecordUpdates, poPropogateChanges, poAllowCommandText, poUseQuoteChar]
    Left = 792
    Top = 320
  end
  object sdsAplicacaoProdDep: TSQLDataSet
    SchemaName = 'gesys'
    GetMetadata = False
    CommandText = 
      'SELECT A.idEmpresa, A.idCadEmpresa, A.idAplicacao, A.idProduto, ' +
      'A.idAplicacaoProdDeposito, A.qtProduto, Cad.descCadEmpresa, Cad.' +
      'descAbreviada FROM AplicacaoProdDeposito A INNER JOIN vCadEmpres' +
      'aFiscal Cad ON A.idEmpresa = Cad.idEmpresa AND A.idCadEmpresa = ' +
      'Cad.idCadEmpresa'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmPadrao.dbConexao
    Left = 760
    Top = 320
  end
  object cdsDeposito: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    CommandText = 'EXEC spRelEstoque 1, 1, 0, 1, 1, '#39#39', '#39#39', 0, '#39'N'#39', '#39'S'#39', '#39'N'#39', '#39'N'#39
    Params = <>
    OnReconcileError = cdsPadraoReconcileError
    Left = 792
    Top = 392
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
    object cdsDepositosel: TStringField
      FieldName = 'sel'
    end
    object cdsDepositoqtAplicado: TFloatField
      FieldName = 'qtAplicado'
    end
    object cdsDepositofator: TIntegerField
      FieldName = 'fator'
    end
    object cdsDepositoqtAplic: TFloatField
      FieldName = 'qtAplic'
    end
    object cdsDepositoSomaqtAplicado: TAggregateField
      FieldName = 'SomaqtAplicado'
      Active = True
      DisplayName = ''
      Expression = 'SUM(qtAplicado*fator)'
    end
  end
  object dsDeposito: TDataSource
    DataSet = cdsDeposito
    Left = 856
    Top = 400
  end
  object cdsAplicProdDep: TClientDataSet
    Aggregates = <>
    CommandText = 'SELECT * FROM AplicacaoProdDeposito'
    Params = <>
    ProviderName = 'dspAplicProdDep'
    OnReconcileError = cdsPadraoReconcileError
    Left = 824
    Top = 360
  end
  object dsAplicProdDep: TDataSource
    DataSet = cdsAplicProdDep
    Left = 856
    Top = 360
  end
  object dspAplicProdDep: TDataSetProvider
    DataSet = sdsAplicProdDep
    Options = [poAllowMultiRecordUpdates, poPropogateChanges, poAllowCommandText, poUseQuoteChar]
    Left = 792
    Top = 360
  end
  object sdsAplicProdDep: TSQLDataSet
    SchemaName = 'gesys'
    GetMetadata = False
    CommandText = 'SELECT * FROM AplicacaoProdDeposito'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmPadrao.dbConexao
    Left = 760
    Top = 360
  end
  object FindProdutoSafra: TCFind
    SelectClause.Strings = (
      
        'SELECT idProduto, descProduto, qtEstoque, idProdDeposito FROM vC' +
        'onsProdutoEstoque')
    JoinClause.Strings = (
      
        'WHERE stProduto = '#39'ATIVO'#39' AND idProdDeposito = [DBEidProdDeposit' +
        'o] AND idEmpresa = [DBEidEmpresa] AND idSafra = [DBEidSafra]')
    OrderByClause.Strings = (
      'ORDER BY descProduto')
    FindField = 'descProduto'
    SQLConnection = dmPadrao.dbConexao
    ValueField = 'idProduto'
    CarregaDados = True
    CollumNames.Strings = (
      'C'#243'digo'
      'Descri'#231#227'o'
      'Estoque'
      'Dep'#243'sito')
    TypeFind = fFindNormal
    Left = 1072
    Top = 464
  end
end
