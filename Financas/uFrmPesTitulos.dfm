inherited FrmPesTitulos: TFrmPesTitulos
  ActiveControl = EDsomaReceber
  Caption = 'Pesquisa a Titulos e Previs'#245'es'
  ClientHeight = 489
  ClientWidth = 756
  FormStyle = fsMDIChild
  Icon.Data = {
    0000010001001010000001002000680400001600000028000000100000002000
    0000010020000000000000040000000000000000000000000000000000000000
    00000000000F0000003400000052000000620000006F0101027B040506800405
    0780010102790000006C0000005D0000004A0000002900000000000000000000
    0000000000380000008F000000B11D242CD1576472EA8494A5F999AABDFF9AAA
    BDFF8695A6F95C6773EA21262CD1000000AC000000770000001E000000000000
    00000000000B06090D5C55585FE0ADAAB1FFCACED9FFCED6E3FFCED9E9FFCCDB
    EEFFC9DBF0FFC0D7EFFFA1B8D4FF546374E0090B0D5200000000000000000000
    00000F182420486281D1BAADB3FFF6CBB4FFF0D0BEFFEAC8B7FFE3C1B1FFDBBB
    AFFFD4BAB2FFCDB9B5FFBFB9C0FF9AB5D6FF516986D618233025000000000000
    00002E4B6EB95F8CC1FFAE9CA1FFF2C7ACFFF3DFCCFFF4DAC3FFF9DABFFFF4D4
    BAFFF2CDB3FFF1C7AAFFDCA88EFF869FC2FF6691C2FF345173C000000000192F
    4959376194FF4A80C0FF947C81FFE9B494FFF1DAC2FFE8D0BAFFB6B8BFFFEACD
    B3FFECCEB1FFEECDAEFFD29678FF617FABFF4F82BEFF396397FF19304A62203C
    5EAE396BA8FF3772B7FF85696FFFE6AD8BFFD0C9C3FF7898C3FF3F7ECBFFB1B0
    B7FFEFCCAAFFE8C6A6FFC98767FF4B6C9EFF3C73B4FF3A6CA9FF213E61B62648
    70E1396EACFF336FB2FF81666AFFE4AD8DFF94AECCFF4981C5FF8FA4C1FF5386
    C3FFCDBFB5FFEFCEAEFFC88666FF47689AFF376FB0FF3A6DACFF274A73E3274B
    76F0396DABFF326DB0FF7F6469FFE0AE92FFE1DAD2FFC7C5C7FFE2D1C2FF6791
    C4FF5782B9FFC3AD9EFFBC7E60FF466798FF366EADFF396DABFF294D79F02546
    6EE1386CA9FF326CAEFF7E6367FFDCAE95FFE0DEDAFFE2D8CEFFE5D8CAFFC1C2
    C8FF4179B5FF44729AFF7B5142FF416394FF386EADFF396BA8FF264871E31F3A
    5BAE3666A0FF316BADFF7C6065FFDAB09AFFDDE2E3FFDCDAD7FFDCD8D3FFE3D9
    CFFFA2B4CAFF4C9ED1FF6388A1FF3F649AFF356BAAFF3767A1FF203C5EB6172D
    46592D5687FF356EAEFF81676CFFD6A38AFFD9CEC9FFD9CEC9FFDAD2CEFFDBD2
    CEFFDDD4CDFFCAC6C7FF96AEB0FF4C8DBBFF406EA8FF2D5789FF182E47620000
    00001A3759B94976ABFFA49193FFD88F6CFFD39274FFD49275FFD49478FFD499
    7FFFD69E85FFDCA48BFFCD9379FF95A7BBFF6A7FACFF1A375ABF000000000000
    000012263E21375272D3BDBDC7FFE5CBC1FFDDC3BAFFDEC1B6FFDFC0B5FFE0C0
    B3FFE1BFB0FFE4BEAEFFE6C5B8FFACBAD1FF3E5676D812263E25000000000000
    00000000000010233A1C4E6178AFBDC9D7FFE6EFF9FFEFF7FEFFEEF5FCFFEEF5
    FCFFF1F6FDFFEBF0F7FFC5CDD7FF536579B410243B2000000000000000000000
    00000000000000000000000000001F3249465B6A7DA08D99A7D6A5AFBBF0A5AF
    BBF08E9AA8D85D6C7FA221334B4A000000000000000000000000000000008003
    0000800100008003000080010000800100000000000000000000000000000000
    00000000000000000000000000008001000080010000C0030000F00F0000}
  Position = poDefault
  Visible = True
  ExplicitWidth = 772
  ExplicitHeight = 528
  PixelsPerInch = 96
  TextHeight = 13
  inherited GrupoGrid: TCGroupBox
    Top = 178
    Width = 756
    Height = 311
    TabOrder = 2
    ExplicitTop = 178
    ExplicitWidth = 756
    ExplicitHeight = 311
    inherited DBGrid: TCDBGrid
      Width = 752
      Height = 294
      OnDrawColumnCell = DBGridDrawColumnCell
      UtilizaOrdenar = True
      Columns = <
        item
          Expanded = False
          FieldName = 'idEmpresa'
          Title.Caption = 'Emp.'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'idCadEmpresa'
          Title.Caption = 'Fil.'
          Width = 20
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'idDocSerie'
          Title.Caption = 'Serie'
          Width = 30
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'nrTitulo'
          Title.Caption = 'Nr.Titulo'
          Width = 60
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'idParcela'
          Title.Caption = 'Parc.'
          Width = 26
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'descAbreviada'
          Title.Caption = 'Cliente / Fornecedor'
          Width = 120
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'vlParcela'
          Title.Caption = 'Valor'
          Width = 70
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'vlPago'
          Title.Caption = 'Vl. Baixado'
          Width = 60
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Saldo'
          Width = 70
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'dtEmissao'
          Title.Caption = 'Emiss'#227'o'
          Width = 70
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'dtVencimento'
          Title.Caption = 'Vencimento'
          Width = 70
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'stParcela'
          Title.Caption = 'Status'
          Width = 60
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'tpConsulta'
          Title.Caption = 'Tipo'
          Width = 30
          Visible = True
        end>
    end
  end
  inherited PanBotoes: TCPanelGradient
    Left = 757
    Top = 229
    Width = 99
    Height = 362
    Align = alNone
    Visible = False
    ExplicitLeft = 757
    ExplicitTop = 229
    ExplicitWidth = 99
    ExplicitHeight = 362
    inherited BtnExecutar: TCBitBtn
      Tag = 1
      Left = 6
      Top = 6
      ExplicitLeft = 6
      ExplicitTop = 6
    end
    inherited BtnFechar: TCBitBtn
      Left = 6
      Top = 48
      ExplicitLeft = 6
      ExplicitTop = 48
    end
  end
  inherited PanTopo: TCPanelGradient
    Width = 756
    Height = 178
    TabOrder = 0
    ExplicitWidth = 756
    ExplicitHeight = 178
    object Bevel2: TBevel [0]
      Left = 1
      Top = 62
      Width = 754
      Height = 4
      Align = alTop
      Shape = bsFrame
      Style = bsRaised
      ExplicitLeft = 0
      ExplicitTop = 102
      ExplicitWidth = 653
    end
    object Bevel1: TBevel [1]
      Left = 1
      Top = 1
      Width = 754
      Height = 4
      Align = alTop
      Shape = bsFrame
      Style = bsRaised
      ExplicitLeft = 0
      ExplicitTop = 92
      ExplicitWidth = 573
    end
    inherited PanEmpresa: TCPanelGradient
      Top = 5
      Width = 754
      Height = 26
      ExplicitTop = 5
      ExplicitWidth = 754
      ExplicitHeight = 26
      inherited lblEmpresa: TCLabel
        Top = 7
        ExplicitTop = 7
      end
      inherited LookdescCadEmpresa: TCLookUp
        Width = 194
        ExplicitWidth = 194
      end
      inherited LookdescAbreviada: TCLookUp
        Left = 363
        Width = 106
        ExplicitLeft = 363
        ExplicitWidth = 106
      end
      inherited lookidCnpjCpf: TCLookUp
        Left = 704
        Top = 2
        TabOrder = 5
        ExplicitLeft = 704
        ExplicitTop = 2
      end
      inherited LookidInscEstadual: TCLookUp
        TabOrder = 4
      end
      object DBCKconsolidaemp: TCDBCheckBox
        Left = 474
        Top = 6
        Width = 116
        Height = 17
        Caption = 'Consolida Empresa?'
        Color = 14212576
        DataField = 'consolidaemp'
        DataSource = dsPadrao
        ParentColor = False
        TabOrder = 6
        ValueChecked = 'S'
        ValueUnchecked = 'N'
      end
      object DBCKconsolidafilial: TCDBCheckBox
        Left = 596
        Top = 6
        Width = 64
        Height = 17
        Caption = 'Filiais?'
        DataField = 'consolidafilial'
        DataSource = dsPadrao
        TabOrder = 7
        ValueChecked = 'S'
        ValueUnchecked = 'N'
      end
    end
    object PanCliente: TCPanelGradient
      Left = 1
      Top = 31
      Width = 754
      Height = 31
      Align = alTop
      TabOrder = 1
      CaptionNo = 0
      HintNo = 0
      BackgroundGradientColor = 12306636
      BackgroundGradientDirection = gdVertical
      TextColor = clBlack
      GradientColor = clBlack
      RegularButtonColor = clBlack
      SelectedButtonColor = clBlack
      ButtonOptions = []
      object CLabel14: TCLabel
        Left = 8
        Top = 114
        Width = 62
        Height = 13
        Alignment = taRightJustify
        Caption = 'Romaneio de'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object CLabel15: TCLabel
        Left = 164
        Top = 114
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
      object CLabel16: TCLabel
        Left = 298
        Top = 114
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
      object CLabel17: TCLabel
        Left = 430
        Top = 114
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
      object CLabel18: TCLabel
        Left = 21
        Top = 61
        Width = 33
        Height = 13
        Alignment = taRightJustify
        Caption = 'Cliente'
        Transparent = True
      end
      object CLabel19: TCLabel
        Left = 6
        Top = 83
        Width = 48
        Height = 13
        Alignment = taRightJustify
        Caption = 'CNPJ/CPF'
        Transparent = True
      end
      object CLabel20: TCLabel
        Left = 192
        Top = 83
        Width = 72
        Height = 13
        Alignment = taRightJustify
        Caption = 'Inscr. Estadual'
        Transparent = True
      end
      object Bevel3: TBevel
        Left = 1
        Top = 1
        Width = 752
        Height = 4
        Align = alTop
        Shape = bsFrame
        Style = bsRaised
        ExplicitLeft = 0
        ExplicitTop = 92
        ExplicitWidth = 573
      end
      object Bevel4: TBevel
        Left = 0
        Top = 104
        Width = 606
        Height = 4
        Shape = bsFrame
        Style = bsRaised
      end
      object CLabel7: TCLabel
        Left = 6
        Top = 11
        Width = 63
        Height = 13
        Alignment = taRightJustify
        Caption = 'Cliente/Forn.'
        Transparent = True
      end
      object CLabel9: TCLabel
        Left = 418
        Top = 12
        Width = 48
        Height = 13
        Alignment = taRightJustify
        Caption = 'CNPJ/CPF'
        Transparent = True
      end
      object DBEidCliente: TCDBEdit
        Left = 75
        Top = 10
        Width = 46
        Height = 19
        BevelKind = bkTile
        BorderStyle = bsNone
        DataField = 'idCliente'
        DataSource = dsPadrao
        TabOrder = 0
        Find = FindCliente
        AcaoCad = frmPrincipal.actCadCliente
        DecimalControl = True
        KeyMode = kmNormal
      end
      object LookDescCadCliente: TCLookUp
        Left = 127
        Top = 8
        Width = 285
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
        ClientDataSet = cdsLookUp
        DataSource = dsPadrao
        ValidaCampoObrigatorio = False
        CampoObrigatorio = True
        LookUpTable = 'vCadClienteContabil'
        ReturnField = 'descCadCliente'
      end
      object LookidCnpjCpfCliente: TCLookUp
        Left = 472
        Top = 9
        Width = 126
        Height = 19
        Alignment = taLeftJustify
        BevelInner = bvSpace
        BevelOuter = bvLowered
        Color = 14149350
        ParentBackground = False
        TabOrder = 2
        Key.Strings = (
          'idCliente')
        LookUpKey.Strings = (
          'idCliente')
        ClientDataSet = cdsLookUp
        DataSource = dsPadrao
        ValidaCampoObrigatorio = False
        CampoObrigatorio = True
        LookUpTable = 'vCadClienteContabil'
        ReturnField = 'idCnpjCpf'
      end
    end
    object PanRomaneio: TCPanelGradient
      Left = 1
      Top = 66
      Width = 754
      Height = 111
      Align = alTop
      TabOrder = 2
      CaptionNo = 0
      HintNo = 0
      BackgroundGradientColor = 15201011
      BackgroundGradientDirection = gdVertical
      TextColor = clBlack
      GradientColor = clBlack
      RegularButtonColor = clBlack
      SelectedButtonColor = clBlack
      ButtonOptions = []
      object CLabel8: TCLabel
        Left = 28
        Top = 7
        Width = 41
        Height = 13
        Alignment = taRightJustify
        Caption = 'Titulo de'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object CLabel4: TCLabel
        Left = 151
        Top = 7
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
      object CLabel5: TCLabel
        Left = 16
        Top = 29
        Width = 53
        Height = 13
        Alignment = taRightJustify
        Caption = 'Emiss'#227'o de'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object CLabel6: TCLabel
        Left = 161
        Top = 29
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
      object CLabel11: TCLabel
        Left = 249
        Top = 7
        Width = 24
        Height = 13
        Alignment = taRightJustify
        Caption = 'S'#233'rie'
      end
      object CLabel3: TCLabel
        Left = 313
        Top = 29
        Width = 70
        Height = 13
        Alignment = taRightJustify
        Caption = 'Vencimento de'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object CLabel10: TCLabel
        Left = 475
        Top = 29
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
      object CLabel30: TCLabel
        Left = 17
        Top = 91
        Width = 77
        Height = 13
        Alignment = taRightJustify
        Caption = 'Saldo a Pagar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object CLabel12: TCLabel
        Left = 183
        Top = 91
        Width = 91
        Height = 13
        Alignment = taRightJustify
        Caption = 'Saldo a Receber'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object CLabel13: TCLabel
        Left = 363
        Top = 91
        Width = 57
        Height = 13
        Alignment = taRightJustify
        Caption = 'Resultado'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object DBEidTituloIni: TCDBEdit
        Left = 75
        Top = 4
        Width = 70
        Height = 19
        BevelKind = bkTile
        BorderStyle = bsNone
        DataField = 'idTituloIni'
        DataSource = dsPadrao
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        DecimalControl = True
        KeyMode = kmNormal
      end
      object DBEidTituloFim: TCDBEdit
        Left = 173
        Top = 4
        Width = 70
        Height = 19
        BevelKind = bkTile
        BorderStyle = bsNone
        DataField = 'idTituloFim'
        DataSource = dsPadrao
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        DecimalControl = True
        KeyMode = kmNormal
      end
      object DBEdtEmissaoIni: TCDBEdit
        Left = 75
        Top = 26
        Width = 80
        Height = 19
        BevelKind = bkTile
        BorderStyle = bsNone
        DataField = 'dtEmissaoIni'
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
      object DBEdtEmissaoFim: TCDBEdit
        Left = 183
        Top = 26
        Width = 80
        Height = 19
        BevelKind = bkTile
        BorderStyle = bsNone
        DataField = 'dtEmissaoFim'
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
      object DBEidDocSerie: TCDBEdit
        Left = 279
        Top = 4
        Width = 56
        Height = 19
        BevelKind = bkTile
        BorderStyle = bsNone
        DataField = 'idDocSerie'
        DataSource = dsPadrao
        TabOrder = 3
        AcaoCad = frmPrincipal.actCadDocSerie
        DecimalControl = True
        KeyMode = kmUSUpper
      end
      object LookDocSerie: TCLookUp
        Left = 341
        Top = 4
        Width = 236
        Height = 19
        Alignment = taLeftJustify
        BevelInner = bvSpace
        BevelOuter = bvLowered
        Color = 14149350
        ParentBackground = False
        TabOrder = 4
        Key.Strings = (
          'idDocSerie')
        LookUpKey.Strings = (
          'idDocSerie')
        AlternateSQL.Strings = (
          
            'SELECT descDocSerie FROM DocSerie WHERE idTipoDocSerie = 1 AND i' +
            'dDocSerie = ?')
        ClientDataSet = cdsLookUp
        DataSource = dsPadrao
        ValidaCampoObrigatorio = True
        CampoObrigatorio = True
        LookUpTable = 'DocSerie'
        ReturnField = 'descDocSerie'
      end
      object CGroupBox1: TCGroupBox
        Left = 16
        Top = 49
        Width = 276
        Height = 34
        Caption = 'Status dos t'#237'tulos/previs'#245'es da consulta'
        TabOrder = 10
        object DBCKstEstornado: TCDBCheckBox
          Left = 196
          Top = 14
          Width = 70
          Height = 17
          Caption = 'Estornado'
          DataField = 'stEstornado'
          DataSource = dsPadrao
          TabOrder = 3
        end
        object DBCKstLiquidado: TCDBCheckBox
          Left = 120
          Top = 14
          Width = 69
          Height = 17
          Caption = 'Liquidado'
          DataField = 'stLiquidado'
          DataSource = dsPadrao
          TabOrder = 2
        end
        object DBCKstAberto: TCDBCheckBox
          Left = 61
          Top = 14
          Width = 55
          Height = 17
          Caption = 'Aberto'
          DataField = 'stAberto'
          DataSource = dsPadrao
          TabOrder = 1
        end
        object DBCKstAtivo: TCDBCheckBox
          Left = 6
          Top = 14
          Width = 48
          Height = 17
          Caption = 'Ativo'
          DataField = 'stAtivo'
          DataSource = dsPadrao
          TabOrder = 0
        end
      end
      object CGroupBox2: TCGroupBox
        Left = 303
        Top = 49
        Width = 131
        Height = 34
        Caption = 'Buscar Titulos'
        TabOrder = 11
        object DBCKtitReceber: TCDBCheckBox
          Left = 65
          Top = 14
          Width = 60
          Height = 17
          Caption = 'Receber'
          DataField = 'titReceber'
          DataSource = dsPadrao
          TabOrder = 1
        end
        object DBCKtitPagar: TCDBCheckBox
          Left = 7
          Top = 14
          Width = 52
          Height = 17
          Caption = 'Pagar'
          DataField = 'titPagar'
          DataSource = dsPadrao
          TabOrder = 0
        end
      end
      object DBEdtVencimentoIni: TCDBEdit
        Left = 389
        Top = 26
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
        Left = 497
        Top = 26
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
      object CGroupBox3: TCGroupBox
        Left = 587
        Top = 4
        Width = 88
        Height = 103
        TabOrder = 5
        object BtnPesquisar: TCBitBtn
          Tag = 1
          Left = 6
          Top = 20
          Width = 75
          Height = 25
          Action = actPesquisar
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
          TabOrder = 0
        end
        object BtnFechar1: TCBitBtn
          Left = 6
          Top = 67
          Width = 75
          Height = 25
          Action = actFechar
          Caption = '&Fechar'
          Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            2000000000000004000000000000000000000000000000000000FDFDFF00CED7
            EF00AEB8E000AEB8E000B0B9E100B0B9E100B0B9E100AFBAE200ADB9E300ADB9
            E300ACB7E300ABB6E300ABB6E300AAB5E100CDD6ED00FDFDFF00CED8F3003F5B
            C9001234BA001638BD001C3CBC001C3CBC00183BBE00183BBF001439C1001137
            C3000B33C2000831C200022DC2000029BC003752B900CDD6ED00AEBBF100143B
            D700214ADF002B50DE003255DE002F53DE002F54DF002B53DF00244FE0001F4F
            E400164AE3000F45E500073CE2000236DC000029BC00AAB5E100B0BEF4001D44
            DF002D53E200365AE3004161E4004B6AE6008AA0F000ADC0F600A9BBF4007B97
            F0002A5BE900144CE9000B42E600063CE200032DC200ABB6E300B2BFF400264B
            E000395EE5004465E5007E93ED00DDE3FA00D8DFF900B3C2F500B3C3F600D5DF
            FB00D2DDFA00537EEF001049E9000A41E500052FC300ABB7E300B4C1F4003054
            E1004463E5005975E800DDE3FA00BEC9F600637EEA004368E7003E67E8004D76
            EC00B9C9F700D0DAFA002154E8001146E3000C35C400ADB8E300B7C4F5003659
            E3004C69E5009AABF100D6DCF900637DE9004A69E600C1CDF700BBC9F7002E5C
            E800466EEA00D2DBFA007593EF00194CE4001338C200AEB9E300BAC6F5004061
            E5005370E700C1CBF700B3BEF500516EE7004968E600C1CBF600BBC8F6002F57
            E3002957E700A9BAF500A3B7F4001E4DE100193CC000B0BBE300BCC7F5004967
            E5005B76E800C4CDF700B3BEF500516EE7004766E500C1CBF600BBC7F6002F55
            E2002954E500A8B8F300A7B9F400254DDE001D3EBF00B1BBE300BEC9F600516E
            E600627CE900A7B5F200D6DDF900637DE9004766E500C1CBF600BAC6F5002F54
            E2004367E700D0D9F9007E95EE002B4FDE002141C000B2BCE200BFCAF6005974
            E7006D86EA00758CEB00E0E8FC00B9C4F5005F79E8004563E5003C5EE3004B6B
            E600B4C2F400D7DEFA003B5DE4002D52DE002443C000B3BCE200C2CCF600647E
            E900778FEC006D86EA0091A3EF00E6EAFB00D3DAF900ABB9F400A9B8F300CFD8
            F800D9E2FA006A84EA003055E2002F53DE002443C000B3BCE200C4CEF7007089
            EB008DA1EF007E94ED006C86EA00728AEB00A6B4F300C5CEF700C3CDF60098A9
            F0005772E7004262E4003B5DE3003254DE001E3EBE00B1BBE200C7D1F7007D93
            ED009CADF100899DEF00788FEC006E86EA006982EA00647EE900627BE9005D77
            E8005672E8004D6BE6004161E4003255DE001D3DBE00B0BAE100DAE3FA00869B
            EE00788FEC006B84EA005E79E8005974E7005470E700506DE6004E6BE6004867
            E5004464E5003E5FE4003055E200264BDB004963CD00D0D9F000FEFEFF00DAE2
            FA00C7D0F700C5CEF700C1CCF600BFCBF600BECAF600BECAF600BDC9F600BBC7
            F500BAC6F500BAC6F500B6C3F500B4C0F200D1DBF500FEFEFF00}
          TabOrder = 1
        end
      end
      object EDsomaPagar: TCEdit
        Left = 100
        Top = 88
        Width = 77
        Height = 19
        TabStop = False
        Alignment = taRightJustify
        BorderStyle = bsNone
        BevelKind = bkTile
        Color = 14149350
        ReadOnly = True
        TabOrder = 13
        Text = ''
        DataType = ftUnknown
        KeyMode = kmFormaTtedNumber
        Decimals = 2
      end
      object EDsomaReceber: TCEdit
        Left = 280
        Top = 88
        Width = 77
        Height = 19
        TabStop = False
        Alignment = taRightJustify
        BorderStyle = bsNone
        BevelKind = bkTile
        Color = 14149350
        ReadOnly = True
        TabOrder = 14
        Text = ''
        DataType = ftUnknown
        KeyMode = kmFormaTtedNumber
        Decimals = 2
      end
      object EDsomaResultado: TCEdit
        Left = 426
        Top = 88
        Width = 77
        Height = 19
        TabStop = False
        Alignment = taRightJustify
        BorderStyle = bsNone
        BevelKind = bkTile
        Color = 14149350
        ReadOnly = True
        TabOrder = 15
        Text = ''
        DataType = ftUnknown
        KeyMode = kmFormaTtedNumber
        Decimals = 2
      end
      object CGroupBox4: TCGroupBox
        Left = 440
        Top = 49
        Width = 137
        Height = 34
        Caption = 'Buscar Previs'#245'es'
        TabOrder = 12
        object DBCKprevPagar: TCDBCheckBox
          Left = 10
          Top = 14
          Width = 55
          Height = 17
          Caption = 'Pagar'
          DataField = 'prevPagar'
          DataSource = dsPadrao
          TabOrder = 0
        end
        object DBCKprevReceber: TCDBCheckBox
          Left = 71
          Top = 14
          Width = 62
          Height = 17
          Caption = 'Receber'
          DataField = 'prevReceber'
          DataSource = dsPadrao
          TabOrder = 1
        end
      end
      object DBEidTitulo: TCDBEdit
        Left = 618
        Top = -1
        Width = 94
        Height = 19
        TabStop = False
        BevelKind = bkTile
        BorderStyle = bsNone
        Color = 14149350
        DataField = 'id'
        DataSource = dsGrid
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
        Visible = False
        DecimalControl = True
        KeyMode = kmNormal
      end
    end
  end
  inherited imgIcones: TImageList
    Left = 328
    Top = 272
    Bitmap = {
      494C0101020004003C0010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
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
  inherited Acao: TActionList
    Left = 296
    Top = 272
    inherited actPesquisar: TAction
      Tag = 1
    end
  end
  inherited cdsPadrao: TClientDataSet
    AfterInsert = cdsPadraoAfterInsert
    object cdsPadraoidCliente: TIntegerField
      FieldName = 'idCliente'
    end
    object cdsPadraoidDocSerie: TStringField
      FieldName = 'idDocSerie'
      Size = 5
    end
    object cdsPadraodtEmissaoIni: TDateTimeField
      FieldName = 'dtEmissaoIni'
    end
    object cdsPadraodtEmissaoFim: TDateTimeField
      FieldName = 'dtEmissaoFim'
    end
    object cdsPadraodtVencimentoIni: TDateTimeField
      FieldName = 'dtVencimentoIni'
    end
    object cdsPadraodtVencimentoFim: TDateTimeField
      FieldName = 'dtVencimentoFim'
    end
    object cdsPadraostAtivo: TBooleanField
      FieldName = 'stAtivo'
    end
    object cdsPadraostAberto: TBooleanField
      FieldName = 'stAberto'
    end
    object cdsPadraostLiquidado: TBooleanField
      FieldName = 'stLiquidado'
    end
    object cdsPadraostEstornado: TBooleanField
      FieldName = 'stEstornado'
    end
    object cdsPadraotitPagar: TBooleanField
      FieldName = 'titPagar'
    end
    object cdsPadraotitReceber: TBooleanField
      FieldName = 'titReceber'
    end
    object cdsPadraoprevPagar: TBooleanField
      FieldName = 'prevPagar'
    end
    object cdsPadraoprevReceber: TBooleanField
      FieldName = 'prevReceber'
    end
    object cdsPadraoidTituloIni: TStringField
      FieldName = 'idTituloIni'
    end
    object cdsPadraoidTituloFim: TStringField
      FieldName = 'idTituloFim'
    end
    object cdsPadraoconsolidaemp: TStringField
      FieldName = 'consolidaemp'
      Size = 1
    end
    object cdsPadraoconsolidafilial: TStringField
      FieldName = 'consolidafilial'
      Size = 1
    end
  end
  inherited cdsGrid: TClientDataSet
    AggregatesActive = True
    CommandText = 'SELECT * FROM vConsultaTitulos'
  end
  inherited sdsGrid: TSQLDataSet
    CommandText = 'SELECT * FROM vConsultaTitulos'
  end
  object FindCliente: TCFind
    SelectClause.Strings = (
      
        'SELECT  idCliente, descCadCliente, descAbreviada, idCnpjCpf FROM' +
        ' vCadClienteContabil')
    JoinClause.Strings = (
      'WHERE StCadGeral = '#39'ATIVO'#39)
    OrderByClause.Strings = (
      'ORDER BY descCadCliente')
    FindField = 'descCadCliente'
    SQLConnection = dmPadrao.dbConexao
    ValueField = 'idCliente'
    CarregaDados = True
    CollumNames.Strings = (
      'C'#243'digo'
      'Raz'#227'o Social'
      'Nome Fantasia'
      'CNPJ/CPF')
    TypeFind = fFindNormal
    Left = 224
    Top = 240
  end
  object sdsConfigFinancCons: TSQLDataSet
    CommandText = 'SELECT * FROM ConfigFinancCons'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmPadrao.dbConexao
    Left = 128
    Top = 336
  end
  object dspConfigFinancCons: TDataSetProvider
    DataSet = sdsConfigFinancCons
    Options = [poAllowMultiRecordUpdates, poPropogateChanges, poAllowCommandText, poUseQuoteChar]
    Left = 160
    Top = 336
  end
  object cdsConfigFinancCons: TClientDataSet
    Aggregates = <>
    CommandText = 'SELECT * FROM ConfigFinancCons'
    Params = <>
    ProviderName = 'dspConfigFinancCons'
    AfterOpen = cdsPadraoAfterOpen
    Left = 192
    Top = 336
    object cdsConfigFinancConsidEmpresa: TIntegerField
      FieldName = 'idEmpresa'
      Required = True
    end
    object cdsConfigFinancConsCorTREC: TStringField
      FieldName = 'CorTREC'
      FixedChar = True
      Size = 50
    end
    object cdsConfigFinancConsCorTPAG: TStringField
      FieldName = 'CorTPAG'
      FixedChar = True
      Size = 50
    end
    object cdsConfigFinancConsCorPREC: TStringField
      FieldName = 'CorPREC'
      FixedChar = True
      Size = 50
    end
    object cdsConfigFinancConsCorPPAG: TStringField
      FieldName = 'CorPPAG'
      FixedChar = True
      Size = 50
    end
    object cdsConfigFinancConsCorREC: TStringField
      FieldName = 'CorREC'
      FixedChar = True
      Size = 50
    end
    object cdsConfigFinancConsCorPAG: TStringField
      FieldName = 'CorPAG'
      FixedChar = True
      Size = 50
    end
  end
end
