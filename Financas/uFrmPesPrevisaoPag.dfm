inherited FrmPesPrevisaoPag: TFrmPesPrevisaoPag
  Caption = 'Pesquisa Previsao a Pagar'
  ClientHeight = 474
  ClientWidth = 736
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
  ExplicitWidth = 752
  ExplicitHeight = 513
  PixelsPerInch = 96
  TextHeight = 13
  inherited GrupoGrid: TCGroupBox
    Top = 168
    Width = 736
    Height = 306
    TabOrder = 2
    ExplicitTop = 168
    ExplicitWidth = 736
    ExplicitHeight = 306
    inherited DBGrid: TCDBGrid
      Width = 732
      Height = 289
      Columns = <
        item
          Expanded = False
          FieldName = 'idDocSerie'
          Title.Caption = 'S'#233'rie'
          Width = 64
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'nrPrevisaoPag'
          Title.Caption = 'Nr.Previsao'
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'idFornecedor'
          Title.Caption = 'Fornecedor'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'descAbreviada'
          Title.Caption = 'Descri'#231#227'o'
          Width = 240
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'dtEmissao'
          Title.Caption = 'Emiss'#227'o'
          Width = 90
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'vlPrevisaoPag'
          Title.Caption = 'Valor'
          Width = 90
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'stPrevisaoPag'
          Title.Caption = 'Status'
          Width = 95
          Visible = True
        end>
    end
  end
  inherited PanBotoes: TCPanelGradient
    Top = 135
    Width = 736
    ExplicitTop = 135
    ExplicitWidth = 736
    inherited BtnExecutar: TCBitBtn
      Tag = 1
    end
    inherited BtnFechar: TCBitBtn
      Left = 652
      ExplicitLeft = 652
    end
  end
  inherited PanTopo: TCPanelGradient
    Width = 736
    Height = 135
    TabOrder = 0
    ExplicitWidth = 736
    ExplicitHeight = 135
    object Bevel2: TBevel [0]
      Left = 1
      Top = 67
      Width = 734
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
      Width = 734
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
      Width = 734
      Height = 28
      ExplicitTop = 5
      ExplicitWidth = 734
      ExplicitHeight = 28
      inherited LookdescAbreviada: TCLookUp
        Width = 173
        ExplicitWidth = 173
      end
      inherited lookidCnpjCpf: TCLookUp
        Left = 600
        Top = 5
        ExplicitLeft = 600
        ExplicitTop = 5
      end
    end
    object PanFornecedor: TCPanelGradient
      Left = 1
      Top = 33
      Width = 734
      Height = 34
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
        Left = -1
        Top = 61
        Width = 55
        Height = 13
        Alignment = taRightJustify
        Caption = 'Fornecedor'
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
        Width = 732
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
        Left = 16
        Top = 11
        Width = 37
        Height = 13
        Alignment = taRightJustify
        Caption = 'Fornec.'
        Transparent = True
      end
      object CLabel9: TCLabel
        Left = 546
        Top = 11
        Width = 48
        Height = 13
        Alignment = taRightJustify
        Caption = 'CNPJ/CPF'
        Transparent = True
      end
      object DBEidFornecedor: TCDBEdit
        Left = 59
        Top = 8
        Width = 46
        Height = 19
        BevelKind = bkTile
        BorderStyle = bsNone
        DataField = 'idFornecedor'
        DataSource = dsPadrao
        TabOrder = 0
        Find = FindFornecedor
        DecimalControl = True
        KeyMode = kmNormal
      end
      object LookDescCadFornecedor: TCLookUp
        Left = 111
        Top = 8
        Width = 250
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
        ClientDataSet = cdsLookUp
        DataSource = dsPadrao
        ValidaCampoObrigatorio = False
        CampoObrigatorio = True
        LookUpTable = 'vCadFornecedorContabil'
        ReturnField = 'descCadFornecedor'
      end
      object LookDescAbreviadaFornecedor: TCLookUp
        Left = 367
        Top = 8
        Width = 173
        Height = 19
        Alignment = taLeftJustify
        BevelInner = bvSpace
        BevelOuter = bvLowered
        Color = 14149350
        ParentBackground = False
        TabOrder = 2
        Key.Strings = (
          'idFornecedor')
        LookUpKey.Strings = (
          'idFornecedor')
        ClientDataSet = cdsLookUp
        DataSource = dsPadrao
        ValidaCampoObrigatorio = False
        CampoObrigatorio = True
        LookUpTable = 'vCadFornecedorContabil'
        ReturnField = 'descAbreviada'
      end
      object LookidCnpjCpfFornecedor: TCLookUp
        Left = 600
        Top = 8
        Width = 126
        Height = 19
        Alignment = taLeftJustify
        BevelInner = bvSpace
        BevelOuter = bvLowered
        Color = 14149350
        ParentBackground = False
        TabOrder = 3
        Key.Strings = (
          'idFornecedor')
        LookUpKey.Strings = (
          'idFornecedor')
        ClientDataSet = cdsLookUp
        DataSource = dsPadrao
        ValidaCampoObrigatorio = False
        CampoObrigatorio = True
        LookUpTable = 'vCadFornecedorContabil'
        ReturnField = 'idCnpjCpf'
      end
    end
    object PanRomaneio: TCPanelGradient
      Left = 1
      Top = 71
      Width = 734
      Height = 63
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
        Left = 12
        Top = 8
        Width = 41
        Height = 13
        Alignment = taRightJustify
        Caption = 'Previs'#227'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object CLabel4: TCLabel
        Left = 135
        Top = 8
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
      object CLabel6: TCLabel
        Left = 634
        Top = 8
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
        Left = 233
        Top = 7
        Width = 24
        Height = 13
        Alignment = taRightJustify
        Caption = 'S'#233'rie'
      end
      object DBEidPrevisaoPagIni: TCDBEdit
        Left = 59
        Top = 5
        Width = 70
        Height = 19
        BevelKind = bkTile
        BorderStyle = bsNone
        DataField = 'idPrevisaoPagIni'
        DataSource = dsPadrao
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        DecimalControl = True
        KeyMode = kmNormal
      end
      object DBEidPrevisaoPagFim: TCDBEdit
        Left = 157
        Top = 5
        Width = 70
        Height = 19
        BevelKind = bkTile
        BorderStyle = bsNone
        DataField = 'idPrevisaoPagFim'
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
      object DBEdtInicial: TCDBEdit
        Left = 558
        Top = 5
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
        TabOrder = 4
        DecimalControl = True
        KeyMode = kmDate
      end
      object DBEdtFinal: TCDBEdit
        Left = 656
        Top = 5
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
        TabOrder = 5
        DecimalControl = True
        KeyMode = kmDate
      end
      object DBEidDocSerie: TCDBEdit
        Left = 263
        Top = 4
        Width = 56
        Height = 19
        BevelKind = bkTile
        BorderStyle = bsNone
        DataField = 'idDocSerie'
        DataSource = dsPadrao
        TabOrder = 2
        DecimalControl = True
        KeyMode = kmUSUpper
      end
      object LookDocSerie: TCLookUp
        Left = 325
        Top = 4
        Width = 183
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
        Left = 60
        Top = 26
        Width = 285
        Height = 34
        TabOrder = 6
        object DBCKstCancelada: TCDBCheckBox
          Left = 131
          Top = 11
          Width = 73
          Height = 17
          Caption = 'Cancelada'
          DataField = 'stCancelada'
          DataSource = dsPadrao
          TabOrder = 0
        end
        object DBCKstBaixada: TCDBCheckBox
          Left = 61
          Top = 11
          Width = 56
          Height = 17
          Caption = 'Baixada'
          DataField = 'stBaixada'
          DataSource = dsPadrao
          TabOrder = 1
        end
        object DBCKstAtivo: TCDBCheckBox
          Left = 8
          Top = 11
          Width = 48
          Height = 17
          Caption = 'Ativo'
          DataField = 'stAtivo'
          DataSource = dsPadrao
          TabOrder = 2
        end
      end
    end
  end
  inherited imgIcones: TImageList
    Left = 328
    Top = 272
  end
  inherited Acao: TActionList
    Left = 296
    Top = 272
    inherited actPesquisar: TAction
      Tag = 1
    end
  end
  inherited cdsPadrao: TClientDataSet
    object cdsPadraoidFornecedor: TIntegerField
      FieldName = 'idFornecedor'
    end
    object cdsPadraoidPrevisaoPagIni: TIntegerField
      FieldName = 'idPrevisaoPagIni'
    end
    object cdsPadraoidPrevisaoPagFim: TIntegerField
      FieldName = 'idPrevisaoPagFim'
    end
    object cdsPadraoidDocSerie: TStringField
      FieldName = 'idDocSerie'
      Size = 5
    end
    object cdsPadraodtInicial: TDateTimeField
      FieldName = 'dtInicial'
    end
    object cdsPadraodtFinal: TDateTimeField
      FieldName = 'dtFinal'
    end
    object cdsPadraostAtivo: TBooleanField
      FieldName = 'stAtivo'
    end
    object cdsPadraostBaixada: TBooleanField
      FieldName = 'stBaixada'
    end
    object cdsPadraostCancelada: TBooleanField
      FieldName = 'stCancelada'
    end
  end
  inherited cdsGrid: TClientDataSet
    CommandText = 
      'SELECT tit.idFornecedor, cad.descAbreviada, nrPrevisaoPag, idDoc' +
      'Serie, idPrevisaoPag, dtEmissao, vlPrevisaoPag, stPrevisaoPag FR' +
      'OM PrevisaoPag tit, vCadFornecedorContabil cad WHERE tit.idForne' +
      'cedor = cad.idFornecedor'
    object cdsGrididFornecedor: TIntegerField
      FieldName = 'idFornecedor'
      Required = True
    end
    object cdsGriddescAbreviada: TStringField
      FieldName = 'descAbreviada'
      Required = True
      FixedChar = True
      Size = 30
    end
    object cdsGridnrPrevisaoPag: TStringField
      FieldName = 'nrPrevisaoPag'
      Required = True
      FixedChar = True
    end
    object cdsGrididDocSerie: TStringField
      FieldName = 'idDocSerie'
      Required = True
      FixedChar = True
      Size = 5
    end
    object cdsGriddtEmissao: TSQLTimeStampField
      FieldName = 'dtEmissao'
      Required = True
    end
    object cdsGridvlPrevisaoPag: TFMTBCDField
      FieldName = 'vlPrevisaoPag'
      Required = True
      Precision = 10
      Size = 2
    end
    object cdsGridstPrevisaoPag: TStringField
      FieldName = 'stPrevisaoPag'
      Required = True
      FixedChar = True
      Size = 15
    end
    object cdsGrididPrevisaoPag: TIntegerField
      FieldName = 'idPrevisaoPag'
      Required = True
    end
  end
  inherited sdsGrid: TSQLDataSet
    CommandText = 
      'SELECT tit.idFornecedor, cad.descAbreviada, nrPrevisaoPag, idDoc' +
      'Serie, idPrevisaoPag, dtEmissao, vlPrevisaoPag, stPrevisaoPag FR' +
      'OM PrevisaoPag tit, vCadFornecedorContabil cad WHERE tit.idForne' +
      'cedor = cad.idFornecedor'
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
    Left = 224
    Top = 240
  end
end
