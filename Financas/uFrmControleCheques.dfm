inherited FrmControleCheques: TFrmControleCheques
  Caption = 'Dep'#243'sito de Cheques Recebidos'
  ClientHeight = 473
  ClientWidth = 775
  FormStyle = fsMDIChild
  Position = poDefault
  Visible = True
  ExplicitWidth = 791
  ExplicitHeight = 512
  PixelsPerInch = 96
  TextHeight = 13
  inherited GrupoGrid: TCGroupBox
    Top = 149
    Width = 775
    Height = 324
    TabOrder = 2
    ExplicitTop = 149
    ExplicitWidth = 775
    ExplicitHeight = 324
    inherited DBGrid: TCDBGrid
      Width = 771
      Height = 228
      OnCellClick = DBGridCellClick
      OnColEnter = DBGridColEnter
      OnDrawColumnCell = DBGridDrawColumnCell
      Columns = <
        item
          Expanded = False
          FieldName = 'sel'
          Title.Caption = '?'
          Width = 15
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'emitente'
          Title.Caption = 'Emitente'
          Width = 280
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'idChequeRec'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'idCliente'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'idBanco'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'Comp'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'nrAgencia'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'nrConta'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'nrCheque'
          Title.Caption = 'Cheque'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'dtLancamento'
          Title.Caption = 'Data'
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'dtVencimento'
          Title.Caption = 'Vencimento'
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'vlCheque'
          Title.Caption = 'Valor'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'stChequeRec'
          Title.Caption = 'Status'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'dtEmissao'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'idCaixa'
          Visible = False
        end>
    end
    object CPanelGradient1: TCPanelGradient
      Left = 2
      Top = 268
      Width = 771
      Height = 54
      Align = alBottom
      BevelOuter = bvNone
      Caption = 'PanBotoes'
      TabOrder = 1
      CaptionNo = 0
      HintNo = 0
      BackgroundGradientColor = 13099746
      BackgroundGradientDirection = gdVertical
      TextColor = clBlack
      GradientColor = clBlack
      RegularButtonColor = clBlack
      SelectedButtonColor = clBlack
      ButtonOptions = []
      object CLabel82: TCLabel
        Left = 18
        Top = 7
        Width = 99
        Height = 13
        Alignment = taRightJustify
        Caption = 'Conta Para Dep'#243'sito'
      end
      object CLabel1: TCLabel
        Left = 9
        Top = 32
        Width = 108
        Height = 13
        Caption = 'Data da Compensa'#231#227'o'
      end
      object CBitBtn2: TCBitBtn
        Left = 688
        Top = 27
        Width = 75
        Height = 25
        Action = actFechar
        Caption = '&Fechar'
        TabOrder = 0
      end
      object DBEidConta: TCDBEdit
        Left = 123
        Top = 4
        Width = 48
        Height = 19
        BevelKind = bkTile
        BorderStyle = bsNone
        DataField = 'idConta'
        DataSource = dsPadrao
        TabOrder = 1
        Find = FindConta
        AcaoCad = frmPrincipal.actCadConta
        DecimalControl = True
        KeyMode = kmNormal
      end
      object LookAgencia: TCLookUp
        Left = 177
        Top = 4
        Width = 52
        Height = 19
        Alignment = taLeftJustify
        BevelInner = bvSpace
        BevelOuter = bvLowered
        Color = 14149350
        ParentBackground = False
        TabOrder = 2
        Key.Strings = (
          'idConta')
        LookUpKey.Strings = (
          'idConta')
        AlternateSQL.Strings = (
          
            'SELECT idAgencia FROM vConta WHERE idEmpresa = [DBEidEmpresa] AN' +
            'D idConta = ?')
        ClientDataSet = cdsLookUp
        DataSource = dsPadrao
        ValidaCampoObrigatorio = False
        CampoObrigatorio = True
        LookUpTable = 'vConta'
        ReturnField = 'idAgencia'
      end
      object LookContaCorrente: TCLookUp
        Left = 235
        Top = 4
        Width = 81
        Height = 19
        Alignment = taLeftJustify
        BevelInner = bvSpace
        BevelOuter = bvLowered
        Color = 14149350
        ParentBackground = False
        TabOrder = 3
        Key.Strings = (
          'idConta')
        LookUpKey.Strings = (
          'idConta')
        AlternateSQL.Strings = (
          
            'SELECT idContaCorrente FROM vConta WHERE idEmpresa = [DBEidEmpre' +
            'sa] AND idConta = ?')
        ClientDataSet = cdsLookUp
        DataSource = dsPadrao
        ValidaCampoObrigatorio = False
        CampoObrigatorio = True
        LookUpTable = 'vConta'
        ReturnField = 'idContaCorrente'
      end
      object LookdescConta: TCLookUp
        Left = 322
        Top = 4
        Width = 319
        Height = 19
        Alignment = taLeftJustify
        BevelInner = bvSpace
        BevelOuter = bvLowered
        Color = 14149350
        ParentBackground = False
        TabOrder = 4
        Key.Strings = (
          'idConta')
        LookUpKey.Strings = (
          'idConta')
        AlternateSQL.Strings = (
          
            'SELECT descConta FROM vConta WHERE idEmpresa = [DBEidEmpresa] AN' +
            'D idConta = ?')
        ClientDataSet = cdsLookUp
        DataSource = dsPadrao
        ValidaCampoObrigatorio = False
        CampoObrigatorio = True
        LookUpTable = 'vConta'
        ReturnField = 'descConta'
      end
      object DBEdtCompensacao: TCDBEdit
        Left = 123
        Top = 29
        Width = 70
        Height = 19
        BevelKind = bkTile
        BorderStyle = bsNone
        DataField = 'dtCompensacao'
        DataSource = dsPadrao
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        MaxLength = 10
        ParentFont = False
        TabOrder = 5
        OnExit = DBEdtCompensacaoExit
        DecimalControl = True
        KeyMode = kmDate
      end
      object BtnDepositar: TCBitBtn
        Left = 199
        Top = 27
        Width = 75
        Height = 25
        Caption = '&Depositar'
        Glyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000080000000D00000028000000540000
          001E000000000000000000000000000000000000000000000000000000000000
          0000000000000101010B14141458292929A63F4040B9171611AA211F18E70000
          0082000000130000000000000000000000000000000000000000000000000000
          0000000000000B0B0B5E717171FF6F6F6FFF515153FF27241FFF393325FF0606
          05E6000000660000000A00000000000000000000000000000000000000000000
          000000000000393939A78C8C8CFF818181FF333333FF373838FF181611FF1715
          0DFF000000D60000004E00000003000000000000000000000000000000000000
          00000302023A8C8C8CF2858587FF343333FF989897FFFFFFFFFF5C5C5DFF1D1D
          1AFF161614FF000000A600000010000000000000000000000000000000000000
          00133F3F3FCD6C6C6CFF424241FFCACACAFFC5C5C5FF4B4B4BFFA6A6A6FF6565
          66FF575757FF4C4C4CF00B0B0B750000000600000000000000000101010B3333
          33A7434343FF696968FFE1E1E1FF888889FF1D1D1DFF0A0A0AFFDBDBDBFFEEEE
          EEFF505050FF797979FF9B9B9BFF404040B70C0C0C40000000011717184C3F3F
          3EFF8A8A89FFDEDEDEFF6E6E6EFF515151FF151515FF525252FFFFFFFFFFFFFF
          FFFFE3E3E3FF4A4A4AFF7E7E7EFFC6C6C6FF636363BE0000000137373643AEAE
          ADFFC6C6C6FF797979FFA8A8A8FF666564FF242424FFC3C3C3FFFFFFFFFFFFFF
          FFFFFFFFFFFFD3D3D3FF474646FF919191FF383838A70000000D2B2B2A155D5D
          5DA5999999FFDFDFDFFFC8C9CAFF101314FF6C6C6CFFFCFCFCFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFCACACAFF454545FF373533EC0100003F000000020000
          00065A5A5A7BEBE8E6F73C4854FF173852FFC1C3C4FFFFFFFFFFFBFBFBFFFEFE
          FEFFFEFEFEFFFEFEFEFFFFFFFFFFC3C3C3FF1A1814E40000002B000000010000
          00000000000037343376142730FF798B97FFF4F4F4FFF0F0F0FFF3F3F3FFF6F6
          F6FFF7F7F7FFF7F7F7FFF8F8F8FFFFFFFFFFA8A9A9DD1818180D000000000000
          000000000000010B11AE223740DE898380C5E2E2E2FFDEDEDEFFE1E1E1FFE6E6
          E6FFE8E8E8FFECECECFFE8E8E8FFCACACAD9B1B1B167A3A3A305000000000000
          00000001013909202AFF090B0D533534330C777777A4C5C5C5FFD0D1D1FFD5D5
          D5FFD7D7D7FFC4C4C4EEA1A1A18A919191180000000000000000000000000307
          0801010C11A8020D11A40000000000000000000000006A6A697AA8A8A8FDABAB
          ABF98989899A8989892900000000000000000000000000000000000000003C9D
          BC0D15465C880000000F00000000000000000000000000000000535352496C6C
          6C3A000000000000000000000000000000000000000000000000}
        TabOrder = 6
        OnClick = BtnDepositarClick
      end
      object BtnImprimirBordero: TCBitBtn
        Left = 337
        Top = 27
        Width = 112
        Height = 25
        Caption = '&Imprimir Border'#244
        Glyph.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
          A46769A46769A46769A46769A46769A46769A46769A46769A46769A46769A467
          69A46769A46769FF00FFFF00FFFF00FFB79184FEE9C7F4DAB5F3D5AAF2D0A0EF
          CB96EFC68BEDC182EBC17FEBC180EBC180F2C782A46769FF00FFFF00FFFF00FF
          B79187FCEACEF3DABCF2D5B1F0D0A7EECB9EEDC793EDC28BE9BD81E9BD7FE9BD
          7FEFC481A46769FF00FFFF00FFFF00FFB7938AFEEFDAF6E0C6F2DABCF2D5B2EF
          D0A9EECB9EEDC796EBC28CE9BD82E9BD7FEFC481A46769FF00FFFF00FFFF00FF
          BA978FFFF4E5F7E5CFF4E0C5F3DABBF2D5B1F0D0A6EECB9EEDC795EBC28AEABF
          81EFC480A46769FF00FFFF00FFFF00FFC09E95FFFBF0F8EADCF6E3CFF4E0C6F2
          D9BCF2D5B1F0D0A9EDCB9EEDC695EBC28AEFC583A46769FF00FFFF00FFFF00FF
          C6A49AFFFFFCFAF0E6F8EADAF7E5CFF4E0C5F2DABAF2D5B1F0D0A7EECB9DEBC7
          93F2C98CA46769FF00FFFF00FFFF00FFCBA99EFFFFFFFEF7F2FAEFE6F8EAD9F7
          E3CFF6E0C5F2DABBF2D4B1F0D0A7EECC9EF3CE97A46769FF00FFFF00FFFF00FF
          CFAC9FFFFFFFFFFEFCFCF6F0FAEFE6F7EADAF6E3CFF4E0C5F3D9BBF3D4B0F0D0
          A6F6D3A0A46769FF00FFFF00FFFF00FFD4B0A1FFFFFFFFFFFFFFFEFCFEF7F0FA
          EFE5F8EAD9F7E5CEF6DEC4F3D9B8F4D8B1EBCFA4A46769FF00FFFF00FFFF00FF
          D9B5A1FFFFFFFFFFFFFFFFFFFFFEFCFCF7F0FAEFE5F8E9D9F8E7D1FBEACEDECE
          B4B6AA93A46769FF00FFFF00FFFF00FFDDB7A4FFFFFFFFFFFFFFFFFFFFFFFFFF
          FEFCFCF6EFFCF3E6EDD8C9B68A7BA17B6F9C7667A46769FF00FFFF00FFFF00FF
          E2BCA5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFBFFFEF7DAC1BAAD735BE19E
          55E68F31B56D4DFF00FFFF00FFFF00FFE6BFA7FFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFDCC7C5B88265F8B55CBF7A5CFF00FFFF00FFFF00FFFF00FF
          E4BCA4FBF4F0FBF4EFFAF3EFFAF3EFF8F2EFF7F2EFF7F2EFD8C2C0B77F62C183
          6CFF00FFFF00FFFF00FFFF00FFFF00FFE8C4ADEBCBB7EBCBB7EACBB7EACAB6EA
          CAB6EACAB6EACAB6E3C2B1A56B5FFF00FFFF00FFFF00FFFF00FF}
        TabOrder = 7
        Visible = False
        OnClick = BtnImprimirBorderoClick
      end
    end
    object CPanelGradient2: TCPanelGradient
      Left = 2
      Top = 243
      Width = 771
      Height = 25
      Align = alBottom
      BevelOuter = bvNone
      Caption = 'PanBotoes'
      TabOrder = 2
      CaptionNo = 0
      HintNo = 0
      BackgroundGradientColor = 13099746
      BackgroundGradientDirection = gdVertical
      TextColor = clBlack
      GradientColor = clBlack
      RegularButtonColor = clBlack
      SelectedButtonColor = clBlack
      ButtonOptions = []
      object CLabel2: TCLabel
        Left = 487
        Top = 6
        Width = 51
        Height = 13
        Caption = 'Valor Total'
      end
      object DBEvlCheque: TCDBEdit
        Left = 544
        Top = 3
        Width = 105
        Height = 19
        TabStop = False
        BevelKind = bkTile
        BorderStyle = bsNone
        Color = 14149350
        DataField = 'vlTotalCheque'
        DataSource = dsTmp
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
    end
  end
  inherited PanBotoes: TCPanelGradient
    Top = 116
    Width = 775
    Visible = False
    ExplicitTop = 116
    ExplicitWidth = 775
    inherited BtnExecutar: TCBitBtn
      Left = 24
      Top = 3
      ExplicitLeft = 24
      ExplicitTop = 3
    end
  end
  inherited PanTopo: TCPanelGradient
    Width = 775
    Height = 116
    TabOrder = 0
    ExplicitWidth = 775
    ExplicitHeight = 116
    object CLabel5: TCLabel [0]
      Left = 514
      Top = 8
      Width = 38
      Height = 13
      Alignment = taRightJustify
      Caption = 'Data de'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object CLabel3: TCLabel [1]
      Left = 546
      Top = 11
      Width = 48
      Height = 13
      Alignment = taRightJustify
      Caption = 'CNPJ/CPF'
      Transparent = True
    end
    object CLabel4: TCLabel [2]
      Left = 31
      Top = 70
      Width = 23
      Height = 13
      Caption = 'Data'
    end
    object CLabel6: TCLabel [3]
      Left = 135
      Top = 69
      Width = 17
      Height = 13
      Caption = 'At'#233
    end
    object CLabel10: TCLabel [4]
      Left = 372
      Top = 70
      Width = 16
      Height = 13
      Alignment = taRightJustify
      Caption = 'at'#233
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object CLabel8: TCLabel [5]
      Left = 235
      Top = 69
      Width = 48
      Height = 13
      Alignment = taRightJustify
      Caption = 'Vencto de'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object CLabel7: TCLabel [6]
      Left = 12
      Top = 37
      Width = 42
      Height = 13
      Alignment = taRightJustify
      Caption = 'Emitente'
      Transparent = True
    end
    object CLabel9: TCLabel [7]
      Left = 371
      Top = 37
      Width = 37
      Height = 13
      Alignment = taRightJustify
      Caption = 'Cheque'
      Transparent = True
    end
    object Bevel1: TBevel [8]
      Left = 696
      Top = -22
      Width = 26
      Height = 49
      Align = alCustom
      Shape = bsFrame
      Style = bsRaised
    end
    object Bevel2: TBevel [9]
      Left = 680
      Top = 34
      Width = 4
      Height = 82
      Shape = bsFrame
      Style = bsRaised
    end
    object Bevel3: TBevel [10]
      Left = 1
      Top = 28
      Width = 773
      Height = 4
      Align = alTop
      Shape = bsFrame
      Style = bsRaised
      ExplicitTop = 50
      ExplicitWidth = 949
    end
    object CLabel74: TCLabel [11]
      Left = 27
      Top = 95
      Width = 27
      Height = 13
      Alignment = taRightJustify
      Caption = 'Caixa'
    end
    object Bevel4: TBevel [12]
      Left = 2
      Top = 58
      Width = 679
      Height = 4
      Align = alCustom
      Shape = bsFrame
      Style = bsRaised
    end
    inherited PanEmpresa: TCPanelGradient
      Width = 773
      Height = 27
      ExplicitWidth = 773
      ExplicitHeight = 27
    end
    object DBEdtInicial: TCDBEdit
      Left = 60
      Top = 67
      Width = 70
      Height = 19
      BevelKind = bkTile
      BorderStyle = bsNone
      DataField = 'dtInicial'
      DataSource = dsPadrao
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      MaxLength = 10
      ParentFont = False
      TabOrder = 6
      DecimalControl = True
      KeyMode = kmDate
    end
    object DBEdtFinal: TCDBEdit
      Left = 159
      Top = 67
      Width = 70
      Height = 19
      BevelKind = bkTile
      BorderStyle = bsNone
      DataField = 'dtFinal'
      DataSource = dsPadrao
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      MaxLength = 10
      ParentFont = False
      TabOrder = 7
      DecimalControl = True
      KeyMode = kmDate
    end
    object DBEdtVencimentoIni: TCDBEdit
      Left = 287
      Top = 67
      Width = 80
      Height = 19
      BevelKind = bkTile
      BorderStyle = bsNone
      DataField = 'dtVencimentoIni'
      DataSource = dsPadrao
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      MaxLength = 10
      ParentFont = False
      TabOrder = 8
      DecimalControl = True
      KeyMode = kmDate
    end
    object DBEdtVencimentoFim: TCDBEdit
      Left = 393
      Top = 67
      Width = 80
      Height = 19
      BevelKind = bkTile
      BorderStyle = bsNone
      DataField = 'dtVencimentoFim'
      DataSource = dsPadrao
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      MaxLength = 10
      ParentFont = False
      TabOrder = 9
      DecimalControl = True
      KeyMode = kmDate
    end
    object DBEidFornecedor: TCDBEdit
      Left = 60
      Top = 34
      Width = 305
      Height = 19
      BevelKind = bkTile
      BorderStyle = bsNone
      CharCase = ecUpperCase
      DataField = 'descEmitente'
      DataSource = dsPadrao
      TabOrder = 1
      DecimalControl = True
      KeyMode = kmNormal
    end
    object DBEidCheque: TCDBEdit
      Left = 413
      Top = 34
      Width = 99
      Height = 19
      BevelKind = bkTile
      BorderStyle = bsNone
      DataField = 'idCheque'
      DataSource = dsPadrao
      TabOrder = 2
      DecimalControl = True
      KeyMode = kmNormal
    end
    object DBCKdevolucao: TCDBCheckBox
      Left = 572
      Top = 35
      Width = 91
      Height = 17
      Caption = '1.a Devolu'#231#227'o'
      DataField = 'devolucao'
      DataSource = dsPadrao
      TabOrder = 4
      ValueChecked = 'S'
      ValueUnchecked = 'N'
    end
    object DBCKativo: TCDBCheckBox
      Left = 518
      Top = 35
      Width = 48
      Height = 17
      Caption = 'Ativo'
      DataField = 'ativo'
      DataSource = dsPadrao
      TabOrder = 3
      ValueChecked = 'S'
      ValueUnchecked = 'N'
    end
    object LookCaixa: TCLookUp
      Left = 114
      Top = 92
      Width = 259
      Height = 19
      Alignment = taLeftJustify
      BevelInner = bvSpace
      BevelOuter = bvLowered
      Color = 14149350
      ParentBackground = False
      TabOrder = 11
      Key.Strings = (
        'idCaixa')
      LookUpKey.Strings = (
        'idCaixa')
      AlternateSQL.Strings = (
        
          'SELECT descCaixa FROM Caixa WHERE idEmpresa = [DBEidEmpresa] AND' +
          ' idCaixa = ?')
      ClientDataSet = cdsLookUp
      DataSource = dsPadrao
      ValidaCampoObrigatorio = True
      CampoObrigatorio = True
      LookUpTable = 'Caixa'
      ReturnField = 'descCaixa'
    end
    object DBEidCaixa: TCDBEdit
      Left = 60
      Top = 92
      Width = 48
      Height = 19
      BevelKind = bkTile
      BorderStyle = bsNone
      DataField = 'idCaixa'
      DataSource = dsPadrao
      TabOrder = 10
      Find = FindCaixa
      AcaoCad = frmPrincipal.actCadCaixa
      DecimalControl = True
      KeyMode = kmNormal
    end
    object BtnPesquisar: TCBitBtn
      Left = 690
      Top = 64
      Width = 75
      Height = 25
      Caption = '&Pesquisar'
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000FF00FF00C2C2
        C2FF404040FF1E1E1EFF252525FF252525FF252525FF252525FF252525FF2525
        25FF252525FF252525FF1E1E1EFF353535FF8A8A8AFFFEFEFEFFFF00FF00C4C4
        C4FFFCFCFCFFFBFBFBFFFBFBFBFFFBFBFBFFFBFBFBFFFAFAFAFFFAFAFAFFF9F9
        F9FFF9F9F9FFF8F8F8FFCBCBCBFF434343FF505050FFB8B8B8FFFF00FF00C6C6
        C6FFFAFAFAFFFCFCFCFFFCFCFCFFFCFCFCFFFBFBFBFFFBFBFBFFFAFAFAFFF9F9
        F9FFF9F9F9FFC9C9C9FF434343FF6F6F6FFF4E4E4EFFD4D4D4FFFF00FF00C6C6
        C6FFF8F8F8FFFAFAFAFFFAFAFAFFF9F9F9FFF9F9F9FFF8F8F8FFF7F7F7FFF7F7
        F7FFC6C6C6FF444444FF767676FF5C5C5CFF979797FFFF00FF00FF00FF00C6C6
        C6FFF7F7F7FFF6F6F6FFF2F2F1FFEAEAEAFFECECECFFF2F2F2FFF5F5F5FFCACA
        CAFF464646FF7C7C7CFF5F5F5FFFD0D0D0FFB1B1B1FFFF00FF00FF00FF00C6C6
        C6FFE7E7E7FFABABABFF979797FF989898FF969696FFAEAEAEFFD5D5D5FF5D5D
        5DFF838383FF626262FFD2D2D2FFEBEBEBFFB1B1B1FFFF00FF00FF00FF00B4B4
        B4FF989898FFC3C3C3FFDDDDDDFFE2E2E2FFDADADAFFBDBDBDFF7D7D7DFF9B9B
        9BFF707070FFD1D1D1FFEBEBEBFFE2E2E2FFB1B1B1FFFF00FF00F6F6F6FF8989
        89FFCECECEFFE7E7E7FFEBEBEBFFECECECFFE9E9E9FFE6E6E6FFCECECEFF8989
        89FFD1D1D1FFE9E9E9FFE1E1E1FFD3D3D3FFB1B1B1FFFF00FF00B8B8B8FF9D9D
        9DFFE1E1E1FFE9E9E9FFECECECFFEEEEEEFFEAEAEAFFE7E7E7FFE1E1E1FFADAD
        ADFFA3A3A3FFE2E2E2FFD5D5D5FFC6C6C6FFB6B6B6FFFF00FF00A9A9A9FFAEAE
        AEFFDEDEDEFFE2E2E2FFE7E7E7FFEAEAEAFFE4E4E4FFE0E0E0FFDDDDDDFFC1C1
        C1FF868686FFD3D3D3FFC6C6C6FFAFAFAFFFBBBBBBFFFF00FF00ACACACFFB3B3
        B3FFD9D9D9FFDDDDDDFFE4E4E4FFE5E5E5FFDCDCDCFFD8D8D8FFD6D6D6FFBCBC
        BCFF7B7B7BFFB0B0B0FFAFAFAFFF959595FFC1C1C1FFFF00FF00B6B6B6FFB1B1
        B1FFD6D6D6FFE0E0E0FFE7E7E7FFE6E6E6FFDFDFDFFFD5D5D5FFCCCCCCFF8B8B
        8BFF606060FF7D7D7DFF949494FFA2A2A2FFD8D8D8FFFF00FF00BFBFBFFFB1B1
        B1FFDBDBDBFFE3E3E3FFE5E5E5FFE6E6E6FFE3E3E3FFD6D6D6FFC4C4C4FF7878
        78FFC1C1C1FFFBFBFBFFDFDFDFFFAEAEAEFFEBEBEBFFFF00FF00E1E1E1FFA4A4
        A4FFD9D9D9FFE7E7E7FFE8E8E8FFE8E8E8FFE3E3E3FFD6D6D6FFABABABFF8484
        84FFF7F7F7FFDFDFDFFFABABABFFE0E0E0FFFF00FF00FF00FF00FF00FF00B5B5
        B5FFA1A1A1FFCCCCCCFFDFDFDFFFE2E2E2FFD2D2D2FFADADADFFB2B2B2FFBBBB
        BBFFDFDFDFFFAFAFAFFFE1E1E1FFFF00FF00FF00FF00FF00FF00FF00FF00DADA
        DAFFB7B7B7FF9E9E9EFFA3A3A3FF9A9A9AFF939393FFA6A6A6FFB5B5B5FFB9B9
        B9FFC6C6C6FFE7E7E7FFFF00FF00FF00FF00FF00FF00FF00FF00}
      TabOrder = 5
      OnClick = BtnPesquisarClick
    end
  end
  inherited imgIcones: TImageList
    Bitmap = {
      494C010102000400840010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
      000000000000000000000000000000000000FDFDFF00CED7EF00AEB8E000AEB8
      E000B0B9E100B0B9E100B0B9E100AFBAE200ADB9E300ADB9E300ACB7E300ABB6
      E300ABB6E300AAB5E100CDD6ED00FDFDFF0000000000C2C2C2FF404040FF1E1E
      1EFF252525FF252525FF252525FF252525FF252525FF252525FF252525FF2525
      25FF1E1E1EFF353535FF8A8A8AFFFEFEFEFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CED8F3003F5BC9001234BA001638
      BD001C3CBC001C3CBC00183BBE00183BBF001439C1001137C3000B33C2000831
      C200022DC2000029BC003752B900CDD6ED0000000000C4C4C4FFFCFCFCFFFBFB
      FBFFFBFBFBFFFBFBFBFFFBFBFBFFFAFAFAFFFAFAFAFFF9F9F9FFF9F9F9FFF8F8
      F8FFCBCBCBFF434343FF505050FFB8B8B8FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000AEBBF100143BD700214ADF002B50
      DE003255DE002F53DE002F54DF002B53DF00244FE0001F4FE400164AE3000F45
      E500073CE2000236DC000029BC00AAB5E10000000000C6C6C6FFFAFAFAFFFCFC
      FCFFFCFCFCFFFCFCFCFFFBFBFBFFFBFBFBFFFAFAFAFFF9F9F9FFF9F9F9FFC9C9
      C9FF434343FF6F6F6FFF4E4E4EFFD4D4D4FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B0BEF4001D44DF002D53E200365A
      E3004161E4004B6AE6008AA0F000ADC0F600A9BBF4007B97F0002A5BE900144C
      E9000B42E600063CE200032DC200ABB6E30000000000C6C6C6FFF8F8F8FFFAFA
      FAFFFAFAFAFFF9F9F9FFF9F9F9FFF8F8F8FFF7F7F7FFF7F7F7FFC6C6C6FF4444
      44FF767676FF5C5C5CFF979797FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B2BFF400264BE000395EE5004465
      E5007E93ED00DDE3FA00D8DFF900B3C2F500B3C3F600D5DFFB00D2DDFA00537E
      EF001049E9000A41E500052FC300ABB7E30000000000C6C6C6FFF7F7F7FFF6F6
      F6FFF2F2F1FFEAEAEAFFECECECFFF2F2F2FFF5F5F5FFCACACAFF464646FF7C7C
      7CFF5F5F5FFFD0D0D0FFB1B1B1FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B4C1F4003054E1004463E5005975
      E800DDE3FA00BEC9F600637EEA004368E7003E67E8004D76EC00B9C9F700D0DA
      FA002154E8001146E3000C35C400ADB8E30000000000C6C6C6FFE7E7E7FFABAB
      ABFF979797FF989898FF969696FFAEAEAEFFD5D5D5FF5D5D5DFF838383FF6262
      62FFD2D2D2FFEBEBEBFFB1B1B1FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B7C4F5003659E3004C69E5009AAB
      F100D6DCF900637DE9004A69E600C1CDF700BBC9F7002E5CE800466EEA00D2DB
      FA007593EF00194CE4001338C200AEB9E30000000000B4B4B4FF989898FFC3C3
      C3FFDDDDDDFFE2E2E2FFDADADAFFBDBDBDFF7D7D7DFF9B9B9BFF707070FFD1D1
      D1FFEBEBEBFFE2E2E2FFB1B1B1FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000BAC6F5004061E5005370E700C1CB
      F700B3BEF500516EE7004968E600C1CBF600BBC8F6002F57E3002957E700A9BA
      F500A3B7F4001E4DE100193CC000B0BBE300F6F6F6FF898989FFCECECEFFE7E7
      E7FFEBEBEBFFECECECFFE9E9E9FFE6E6E6FFCECECEFF898989FFD1D1D1FFE9E9
      E9FFE1E1E1FFD3D3D3FFB1B1B1FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000BCC7F5004967E5005B76E800C4CD
      F700B3BEF500516EE7004766E500C1CBF600BBC7F6002F55E2002954E500A8B8
      F300A7B9F400254DDE001D3EBF00B1BBE300B8B8B8FF9D9D9DFFE1E1E1FFE9E9
      E9FFECECECFFEEEEEEFFEAEAEAFFE7E7E7FFE1E1E1FFADADADFFA3A3A3FFE2E2
      E2FFD5D5D5FFC6C6C6FFB6B6B6FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000BEC9F600516EE600627CE900A7B5
      F200D6DDF900637DE9004766E500C1CBF600BAC6F5002F54E2004367E700D0D9
      F9007E95EE002B4FDE002141C000B2BCE200A9A9A9FFAEAEAEFFDEDEDEFFE2E2
      E2FFE7E7E7FFEAEAEAFFE4E4E4FFE0E0E0FFDDDDDDFFC1C1C1FF868686FFD3D3
      D3FFC6C6C6FFAFAFAFFFBBBBBBFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000BFCAF6005974E7006D86EA00758C
      EB00E0E8FC00B9C4F5005F79E8004563E5003C5EE3004B6BE600B4C2F400D7DE
      FA003B5DE4002D52DE002443C000B3BCE200ACACACFFB3B3B3FFD9D9D9FFDDDD
      DDFFE4E4E4FFE5E5E5FFDCDCDCFFD8D8D8FFD6D6D6FFBCBCBCFF7B7B7BFFB0B0
      B0FFAFAFAFFF959595FFC1C1C1FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C2CCF600647EE900778FEC006D86
      EA0091A3EF00E6EAFB00D3DAF900ABB9F400A9B8F300CFD8F800D9E2FA006A84
      EA003055E2002F53DE002443C000B3BCE200B6B6B6FFB1B1B1FFD6D6D6FFE0E0
      E0FFE7E7E7FFE6E6E6FFDFDFDFFFD5D5D5FFCCCCCCFF8B8B8BFF606060FF7D7D
      7DFF949494FFA2A2A2FFD8D8D8FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C4CEF7007089EB008DA1EF007E94
      ED006C86EA00728AEB00A6B4F300C5CEF700C3CDF60098A9F0005772E7004262
      E4003B5DE3003254DE001E3EBE00B1BBE200BFBFBFFFB1B1B1FFDBDBDBFFE3E3
      E3FFE5E5E5FFE6E6E6FFE3E3E3FFD6D6D6FFC4C4C4FF787878FFC1C1C1FFFBFB
      FBFFDFDFDFFFAEAEAEFFEBEBEBFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C7D1F7007D93ED009CADF100899D
      EF00788FEC006E86EA006982EA00647EE900627BE9005D77E8005672E8004D6B
      E6004161E4003255DE001D3DBE00B0BAE100E1E1E1FFA4A4A4FFD9D9D9FFE7E7
      E7FFE8E8E8FFE8E8E8FFE3E3E3FFD6D6D6FFABABABFF848484FFF7F7F7FFDFDF
      DFFFABABABFFE0E0E0FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000DAE3FA00869BEE00788FEC006B84
      EA005E79E8005974E7005470E700506DE6004E6BE6004867E5004464E5003E5F
      E4003055E200264BDB004963CD00D0D9F00000000000B5B5B5FFA1A1A1FFCCCC
      CCFFDFDFDFFFE2E2E2FFD2D2D2FFADADADFFB2B2B2FFBBBBBBFFDFDFDFFFAFAF
      AFFFE1E1E1FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FEFEFF00DAE2FA00C7D0F700C5CE
      F700C1CCF600BFCBF600BECAF600BECAF600BDC9F600BBC7F500BAC6F500BAC6
      F500B6C3F500B4C0F200D1DBF500FEFEFF0000000000DADADAFFB7B7B7FF9E9E
      9EFFA3A3A3FF9A9A9AFF939393FFA6A6A6FFB5B5B5FFB9B9B9FFC6C6C6FFE7E7
      E7FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF0000008000000000000000800000000000
      0000800000000000000080010000000000008001000000000000800100000000
      0000800100000000000000010000000000000001000000000000000100000000
      0000000100000000000000010000000000000001000000000000000300000000
      00008007000000000000800F0000000000000000000000000000000000000000
      000000000000}
  end
  inherited cdsPadrao: TClientDataSet
    AfterInsert = cdsPadraoAfterInsert
    object cdsPadraodescEmitente: TStringField
      FieldName = 'descEmitente'
      Size = 80
    end
    object cdsPadraoidCheque: TIntegerField
      FieldName = 'idCheque'
    end
    object cdsPadraodtInicial: TDateField
      FieldName = 'dtInicial'
    end
    object cdsPadraodtFinal: TDateField
      FieldName = 'dtFinal'
    end
    object cdsPadraodtVencimentoIni: TDateField
      FieldName = 'dtVencimentoIni'
    end
    object cdsPadraodtVencimentoFim: TDateField
      FieldName = 'dtVencimentoFim'
    end
    object cdsPadraoidCaixa: TIntegerField
      FieldName = 'idCaixa'
    end
    object cdsPadraoativo: TStringField
      FieldName = 'ativo'
      Size = 1
    end
    object cdsPadraodevolucao: TStringField
      FieldName = 'devolucao'
      Size = 1
    end
    object cdsPadraoidConta: TIntegerField
      FieldName = 'idConta'
    end
    object cdsPadraodtCompensacao: TDateField
      FieldName = 'dtCompensacao'
    end
  end
  inherited cdsGrid: TClientDataSet
    AggregatesActive = True
    CommandText = 'SELECT * FROM vBuscaCheques WHERE 1=1'
    object cdsGrididChequeRec: TIntegerField
      FieldName = 'idChequeRec'
      Required = True
    end
    object cdsGrididCliente: TIntegerField
      FieldName = 'idCliente'
      Required = True
    end
    object cdsGrididBanco: TIntegerField
      FieldName = 'idBanco'
      Required = True
    end
    object cdsGridemitente: TStringField
      FieldName = 'emitente'
      Required = True
      Size = 50
    end
    object cdsGridvlCheque: TFMTBCDField
      FieldName = 'vlCheque'
      Required = True
      Precision = 19
      Size = 4
    end
    object cdsGriddtLancamento: TSQLTimeStampField
      FieldName = 'dtLancamento'
      Required = True
    end
    object cdsGriddtVencimento: TSQLTimeStampField
      FieldName = 'dtVencimento'
      Required = True
    end
    object cdsGridstChequeRec: TStringField
      FieldName = 'stChequeRec'
      Required = True
      Size = 15
    end
    object cdsGriddtEmissao: TSQLTimeStampField
      FieldName = 'dtEmissao'
    end
    object cdsGrididCaixa: TIntegerField
      FieldName = 'idCaixa'
    end
    object cdsGridsel: TStringField
      FieldName = 'sel'
      Required = True
      Size = 1
    end
    object cdsGrididMovConta: TIntegerField
      FieldName = 'idMovConta'
      Required = True
    end
    object cdsGrididConta: TIntegerField
      FieldName = 'idConta'
    end
    object cdsGriddtMovimento: TSQLTimeStampField
      FieldName = 'dtMovimento'
    end
    object cdsGrididAlinea: TIntegerField
      FieldName = 'idAlinea'
    end
    object cdsGridstOcorrencia: TStringField
      FieldName = 'stOcorrencia'
      Size = 15
    end
    object cdsGrididChequeRecMov: TIntegerField
      FieldName = 'idChequeRecMov'
      Required = True
    end
    object cdsGridnrCheque: TIntegerField
      FieldName = 'nrCheque'
      Required = True
    end
    object cdsGridnrAgencia: TStringField
      FieldName = 'nrAgencia'
      Required = True
    end
    object cdsGridnrConta: TStringField
      FieldName = 'nrConta'
      Size = 30
    end
    object cdsGridvlTotal: TAggregateField
      FieldName = 'vlTotal'
      Active = True
      DisplayName = ''
      Expression = 'SUM(vlCheque)'
    end
  end
  inherited sdsGrid: TSQLDataSet
    CommandText = 'SELECT * FROM vBuscaCheques WHERE 1=1'
  end
  inherited FindEmpresa: TCFind
    Left = 664
    Top = 8
  end
  object FindCaixa: TCFind
    SelectClause.Strings = (
      'SELECT  idCaixa, descCaixa FROM Caixa')
    JoinClause.Strings = (
      'WHERE StCaixa = '#39'ATIVO'#39' AND idEmpresa = [DBEidEmpresa]')
    OrderByClause.Strings = (
      'ORDER BY descCaixa')
    FindField = 'descCaixa'
    SQLConnection = dmPadrao.dbConexao
    ValueField = 'idCaixa'
    CarregaDados = True
    CollumNames.Strings = (
      'C'#243'digo'
      'Descri'#231#227'o')
    TypeFind = fFindNormal
    Left = 648
    Top = 112
  end
  object cdsMovConta: TClientDataSet
    Aggregates = <>
    CommandText = 'SELECT * FROM MovConta'
    Params = <>
    ProviderName = 'dspMovConta'
    AfterOpen = cdsPadraoAfterOpen
    Left = 368
    Top = 272
  end
  object dsMovConta: TDataSource
    DataSet = cdsMovConta
    Left = 400
    Top = 272
  end
  object dspMovConta: TDataSetProvider
    DataSet = sdsMovConta
    Options = [poAllowMultiRecordUpdates, poPropogateChanges, poAllowCommandText, poUseQuoteChar]
    Left = 336
    Top = 272
  end
  object sdsMovConta: TSQLDataSet
    SchemaName = 'gesys'
    GetMetadata = False
    CommandText = 'SELECT * FROM MovConta'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmPadrao.dbConexao
    Left = 304
    Top = 272
  end
  object sdsChequeRecMov: TSQLDataSet
    CommandText = 'SELECT * FROM ChequeRec'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmPadrao.dbConexao
    Left = 304
    Top = 312
  end
  object dspChequeRecMov: TDataSetProvider
    DataSet = sdsChequeRecMov
    Options = [poAllowMultiRecordUpdates, poPropogateChanges, poAllowCommandText, poUseQuoteChar]
    Left = 336
    Top = 312
  end
  object cdsChequeRecMov: TClientDataSet
    Aggregates = <>
    CommandText = 'SELECT * FROM ChequeRec'
    Params = <>
    ProviderName = 'dspChequeRecMov'
    AfterOpen = cdsPadraoAfterOpen
    Left = 368
    Top = 312
    object cdsChequeRecMovidChequeRec: TIntegerField
      FieldName = 'idChequeRec'
      Required = True
    end
    object cdsChequeRecMovidCliente: TIntegerField
      FieldName = 'idCliente'
      Required = True
    end
    object cdsChequeRecMovidBanco: TIntegerField
      FieldName = 'idBanco'
      Required = True
    end
    object cdsChequeRecMovComp: TIntegerField
      FieldName = 'Comp'
    end
    object cdsChequeRecMovnrAgencia: TStringField
      FieldName = 'nrAgencia'
      Required = True
    end
    object cdsChequeRecMovnrConta: TStringField
      FieldName = 'nrConta'
      Size = 30
    end
    object cdsChequeRecMovnrCheque: TIntegerField
      FieldName = 'nrCheque'
      Required = True
    end
    object cdsChequeRecMovemitente: TStringField
      FieldName = 'emitente'
      Required = True
      Size = 50
    end
    object cdsChequeRecMovvlCheque: TFMTBCDField
      FieldName = 'vlCheque'
      Required = True
      Precision = 19
      Size = 4
    end
    object cdsChequeRecMovdtLancamento: TSQLTimeStampField
      FieldName = 'dtLancamento'
      Required = True
    end
    object cdsChequeRecMovdtVencimento: TSQLTimeStampField
      FieldName = 'dtVencimento'
      Required = True
    end
    object cdsChequeRecMovstChequeRec: TStringField
      FieldName = 'stChequeRec'
      Required = True
      Size = 15
    end
    object cdsChequeRecMovdtEmissao: TSQLTimeStampField
      FieldName = 'dtEmissao'
    end
    object cdsChequeRecMovidCaixa: TIntegerField
      FieldName = 'idCaixa'
    end
  end
  object dsChequeRecMov: TDataSource
    DataSet = cdsChequeRecMov
    Left = 400
    Top = 312
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
  object FrxDataset: TfrxDBDataset
    UserName = 'Cheque'
    CloseDataSource = False
    FieldAliases.Strings = (
      'idChequeRec=idChequeRec'
      'idCliente=idCliente'
      'idBanco=idBanco'
      'Comp=Comp'
      'nrAgencia=nrAgencia'
      'nrConta=nrConta'
      'nrCheque=nrCheque'
      'emitente=emitente'
      'vlCheque=vlCheque'
      'dtLancamento=dtLancamento'
      'dtVencimento=dtVencimento'
      'stChequeRec=stChequeRec'
      'dtEmissao=dtEmissao'
      'idCaixa=idCaixa')
    DataSource = dsBordero
    BCDToCurrency = False
    Left = 600
    Top = 344
  end
  object cdsBordero: TClientDataSet
    Aggregates = <>
    CommandText = 'SELECT * FROM ChequeRec'
    Params = <>
    AfterOpen = cdsPadraoAfterOpen
    Left = 368
    Top = 368
    object cdsBorderoidChequeRec: TIntegerField
      FieldName = 'idChequeRec'
      Required = True
    end
    object cdsBorderoidCliente: TIntegerField
      FieldName = 'idCliente'
      Required = True
    end
    object cdsBorderoidBanco: TIntegerField
      FieldName = 'idBanco'
      Required = True
    end
    object cdsBorderoComp: TIntegerField
      FieldName = 'Comp'
    end
    object cdsBorderonrAgencia: TStringField
      FieldName = 'nrAgencia'
      Required = True
    end
    object cdsBorderonrConta: TStringField
      FieldName = 'nrConta'
      Size = 30
    end
    object cdsBorderonrCheque: TIntegerField
      FieldName = 'nrCheque'
      Required = True
    end
    object cdsBorderoemitente: TStringField
      FieldName = 'emitente'
      Required = True
      Size = 50
    end
    object cdsBorderovlCheque: TFMTBCDField
      FieldName = 'vlCheque'
      Required = True
      Precision = 19
      Size = 4
    end
    object cdsBorderodtLancamento: TSQLTimeStampField
      FieldName = 'dtLancamento'
      Required = True
    end
    object cdsBorderodtVencimento: TSQLTimeStampField
      FieldName = 'dtVencimento'
      Required = True
    end
    object cdsBorderostChequeRec: TStringField
      FieldName = 'stChequeRec'
      Required = True
      Size = 15
    end
    object cdsBorderodtEmissao: TSQLTimeStampField
      FieldName = 'dtEmissao'
    end
    object cdsBorderoidCaixa: TIntegerField
      FieldName = 'idCaixa'
    end
  end
  object dsBordero: TDataSource
    DataSet = cdsBordero
    Left = 408
    Top = 368
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
    ReportOptions.LastChange = 41185.703838009250000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    Left = 664
    Top = 344
    Datasets = <
      item
        DataSet = FrxDataset
        DataSetName = 'Cheque'
      end>
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
        Height = 134.842610000000000000
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
        object Shape2: TfrxShapeView
          Left = 393.692913390000000000
          Top = 55.692949999999990000
          Width = 211.653680000000000000
          Height = 45.354360000000000000
          ShowHint = False
        end
        object Memo9: TfrxMemoView
          Left = 400.661720000000000000
          Top = 58.252010000000000000
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
          Left = 400.897960000000000000
          Top = 74.370130000000000000
          Width = 196.535560000000000000
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
        object Memo1: TfrxMemoView
          Left = 3.779530000000000000
          Top = 109.606370000000000000
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
            '[Conta]')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 532.252320000000000000
          Top = 109.606370000000000000
          Width = 166.299320000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[Data]')
          ParentFont = False
        end
        object Line2: TfrxLineView
          Top = 133.283550000000000000
          Width = 718.110700000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
        end
        object Memo20: TfrxMemoView
          Left = 389.291590000000000000
          Width = 306.141930000000000000
          Height = 45.354360000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -29
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Border'#244' de Dep'#243'sito')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        Height = 22.677180000000000000
        Top = 264.567100000000000000
        Width = 718.110700000000000000
        DataSet = FrxDataset
        DataSetName = 'Cheque'
        RowCount = 0
        object Memo15: TfrxMemoView
          Left = 7.559060000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[(<Cheque."nrCheque">)]')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 128.504020000000000000
          Width = 257.008040000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[(<Cheque."emitente">)]')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Left = 396.850650000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[(<Cheque."vlCheque">)]')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Left = 627.401980000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[(<Cheque."stChequeRec">)]')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Left = 514.016080000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[(<Cheque."dtLancamento">)]')
          ParentFont = False
        end
      end
      object GroupHeader1: TfrxGroupHeader
        Height = 26.456710000000000000
        Top = 215.433210000000000000
        Width = 718.110700000000000000
        Condition = 'Cheque."idCaixa"'
        object Memo8: TfrxMemoView
          Left = 7.559060000000000000
          Top = 3.000000000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Cheque')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 128.504020000000000000
          Top = 3.000000000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Emitente')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 396.850650000000000000
          Top = 3.000000000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Valor')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 627.401980000000000000
          Top = 3.000000000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Status')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 514.016080000000000000
          Top = 3.000000000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Data')
          ParentFont = False
        end
        object Line3: TfrxLineView
          Top = 0.220470000000006000
          Width = 718.110700000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
        end
        object Line4: TfrxLineView
          Top = 26.456709999999990000
          Width = 718.110700000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
        end
      end
    end
  end
  object cdsTmp: TClientDataSet
    Aggregates = <>
    Params = <>
    AfterOpen = cdsPadraoAfterOpen
    Left = 304
    Top = 368
    object cdsTmpvlTotalCheque: TCurrencyField
      FieldName = 'vlTotalCheque'
    end
  end
  object dsTmp: TDataSource
    DataSet = cdsTmp
    Left = 328
    Top = 368
  end
end
