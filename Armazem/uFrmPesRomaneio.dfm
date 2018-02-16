inherited FrmPesRomaneio: TFrmPesRomaneio
  Caption = 'Pesquisa de romaneios'
  ClientHeight = 472
  ClientWidth = 645
  ExplicitWidth = 653
  ExplicitHeight = 499
  PixelsPerInch = 96
  TextHeight = 13
  inherited GrupoGrid: TCGroupBox
    Top = 217
    Width = 645
    Height = 255
    TabOrder = 2
    ExplicitTop = 217
    ExplicitWidth = 645
    ExplicitHeight = 255
    inherited DBGrid: TCDBGrid
      Width = 641
      Height = 238
      Columns = <
        item
          Expanded = False
          FieldName = 'idRomaneio'
          Title.Caption = 'C'#243'digo'
          Width = 41
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'dtRomaneio'
          Title.Caption = 'Data'
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'descAbreviada'
          Title.Caption = 'Cliente'
          Width = 175
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'descProduto'
          Title.Caption = 'Produto'
          Width = 150
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'tpRomaneio'
          Title.Caption = 'Tipo'
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'stRomaneio'
          Title.Caption = 'Status'
          Width = 80
          Visible = True
        end>
    end
  end
  inherited PanBotoes: TCPanelGradient
    Top = 182
    Width = 645
    Height = 35
    ExplicitTop = 182
    ExplicitWidth = 645
    ExplicitHeight = 35
    inherited BtnExecutar: TCBitBtn
      Tag = 1
    end
    inherited BtnFechar: TCBitBtn
      Left = 511
      Top = 6
      ExplicitLeft = 511
      ExplicitTop = 6
    end
  end
  inherited PanTopo: TCPanelGradient
    Width = 645
    Height = 182
    TabOrder = 0
    ExplicitWidth = 645
    ExplicitHeight = 182
    object Bevel3: TBevel [0]
      Left = 1
      Top = 1
      Width = 643
      Height = 4
      Align = alTop
      Shape = bsFrame
      Style = bsRaised
      ExplicitLeft = 0
      ExplicitTop = 92
      ExplicitWidth = 573
    end
    object Bevel1: TBevel [1]
      Left = 1
      Top = 107
      Width = 643
      Height = 4
      Align = alTop
      Shape = bsFrame
      Style = bsRaised
      ExplicitLeft = 0
      ExplicitTop = 104
      ExplicitWidth = 606
    end
    inherited PanEmpresa: TCPanelGradient
      Top = 5
      Width = 643
      ExplicitTop = 5
      ExplicitWidth = 643
      inherited DBEidEmpresa: TCDBEdit
        DataSource = dsPadrao
        Find = FindEmpresa
      end
      inherited DBEidCadEmpresa: TCDBEdit
        DataSource = dsPadrao
      end
    end
    object PanRomaneio: TCPanelGradient
      Left = 1
      Top = 111
      Width = 643
      Height = 70
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
        Left = 8
        Top = 8
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
      object CLabel4: TCLabel
        Left = 164
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
        Left = 298
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
        Left = 430
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
      object DBEidRomaneioIni: TCDBEdit
        Left = 76
        Top = 5
        Width = 82
        Height = 19
        BevelKind = bkTile
        BorderStyle = bsNone
        DataField = 'idRomaneioIni'
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
      object idRomaneioFim: TCDBEdit
        Left = 186
        Top = 5
        Width = 82
        Height = 19
        BevelKind = bkTile
        BorderStyle = bsNone
        DataField = 'idRomaneioFim'
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
      object DBEdtRomaneioIni: TCDBEdit
        Left = 342
        Top = 5
        Width = 82
        Height = 19
        BevelKind = bkTile
        BorderStyle = bsNone
        DataField = 'dtRomaneioIni'
        DataSource = dsPadrao
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        MaxLength = 10
        ParentFont = False
        TabOrder = 2
        DecimalControl = True
        KeyMode = kmDate
      end
      object DBEdtRomaneioFim: TCDBEdit
        Left = 452
        Top = 5
        Width = 82
        Height = 19
        BevelKind = bkTile
        BorderStyle = bsNone
        DataField = 'dtRomaneioFim'
        DataSource = dsPadrao
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        MaxLength = 10
        ParentFont = False
        TabOrder = 3
        DecimalControl = True
        KeyMode = kmDate
      end
      object GrpTipo: TCGroupBox
        Left = 5
        Top = 28
        Width = 236
        Height = 34
        Caption = 'Tipo de Pesagem'
        TabOrder = 4
        object DBCKtpDeposito: TCDBCheckBox
          Left = 16
          Top = 14
          Width = 73
          Height = 17
          Caption = 'Dep'#243'sito'
          DataField = 'tpDeposito'
          DataSource = dsPadrao
          TabOrder = 0
          ValueChecked = 'True'
          ValueUnchecked = 'False'
        end
        object DBCKtpRetirada: TCDBCheckBox
          Left = 95
          Top = 14
          Width = 64
          Height = 17
          Caption = 'Retirada'
          DataField = 'tpRetirada'
          DataSource = dsPadrao
          TabOrder = 1
          ValueChecked = 'True'
          ValueUnchecked = 'False'
        end
        object DBCKtpAvulso: TCDBCheckBox
          Left = 170
          Top = 14
          Width = 64
          Height = 17
          Caption = 'Avulsa'
          DataField = 'tpAvulso'
          DataSource = dsPadrao
          TabOrder = 2
          ValueChecked = 'True'
          ValueUnchecked = 'False'
        end
      end
      object GrpStatus: TCGroupBox
        Left = 286
        Top = 28
        Width = 298
        Height = 34
        Caption = 'Status'
        TabOrder = 5
        object DBCKstAtivo: TCDBCheckBox
          Left = 16
          Top = 14
          Width = 57
          Height = 17
          Caption = 'Ativo'
          DataField = 'stAtivo'
          DataSource = dsPadrao
          TabOrder = 0
          ValueChecked = 'True'
          ValueUnchecked = 'False'
        end
        object DBCKstLiberado: TCDBCheckBox
          Left = 71
          Top = 14
          Width = 64
          Height = 17
          Caption = 'Liberado'
          DataField = 'stLiberado'
          DataSource = dsPadrao
          TabOrder = 1
          ValueChecked = 'True'
          ValueUnchecked = 'False'
        end
        object DBCKstFinalizado: TCDBCheckBox
          Left = 144
          Top = 14
          Width = 73
          Height = 17
          Caption = 'Finalizado'
          DataField = 'stFinalizado'
          DataSource = dsPadrao
          TabOrder = 2
          ValueChecked = 'True'
          ValueUnchecked = 'False'
        end
        object DBCKstCancelado: TCDBCheckBox
          Left = 216
          Top = 14
          Width = 73
          Height = 17
          Caption = 'Cancelado'
          DataField = 'stCancelado'
          DataSource = dsPadrao
          TabOrder = 3
          ValueChecked = 'True'
          ValueUnchecked = 'False'
        end
      end
    end
    object PanCliente: TCPanelGradient
      Left = 1
      Top = 54
      Width = 643
      Height = 53
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
      object Bevel2: TBevel
        Left = 1
        Top = 1
        Width = 641
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
        Left = 21
        Top = 11
        Width = 33
        Height = 13
        Alignment = taRightJustify
        Caption = 'Cliente'
        Transparent = True
      end
      object CLabel9: TCLabel
        Left = 6
        Top = 33
        Width = 48
        Height = 13
        Alignment = taRightJustify
        Caption = 'CNPJ/CPF'
        Transparent = True
      end
      object CLabel10: TCLabel
        Left = 192
        Top = 36
        Width = 72
        Height = 13
        Alignment = taRightJustify
        Caption = 'Inscr. Estadual'
        Transparent = True
      end
      object CLookUp9: TCLookUp
        Left = 164
        Top = 58
        Width = 250
        Height = 19
        Alignment = taLeftJustify
        BevelInner = bvSpace
        BevelOuter = bvLowered
        Color = 14149350
        ParentBackground = False
        TabOrder = 6
        Key.Strings = (
          'idCliente'
          'idCadCliente')
        LookUpKey.Strings = (
          'idCliente'
          'idCadCliente')
        ClientDataSet = cdsLookUp
        DataSource = dsPadrao
        ValidaCampoObrigatorio = False
        CampoObrigatorio = True
        LookUpTable = 'vCadClienteFiscal'
        ReturnField = 'descCadCliente'
      end
      object CLookUp10: TCLookUp
        Left = 420
        Top = 58
        Width = 165
        Height = 19
        Alignment = taLeftJustify
        BevelInner = bvSpace
        BevelOuter = bvLowered
        Color = 14149350
        ParentBackground = False
        TabOrder = 7
        Key.Strings = (
          'idCliente'
          'idCadCliente')
        LookUpKey.Strings = (
          'idCliente'
          'idCadCliente')
        ClientDataSet = cdsLookUp
        DataSource = dsPadrao
        ValidaCampoObrigatorio = False
        CampoObrigatorio = True
        LookUpTable = 'vCadClienteFiscal'
        ReturnField = 'descAbreviada'
      end
      object CLookUp11: TCLookUp
        Left = 60
        Top = 80
        Width = 126
        Height = 19
        Alignment = taLeftJustify
        BevelInner = bvSpace
        BevelOuter = bvLowered
        Color = 14149350
        ParentBackground = False
        TabOrder = 8
        Key.Strings = (
          'idCliente'
          'idCadCliente')
        LookUpKey.Strings = (
          'idCliente'
          'idCadCliente')
        ClientDataSet = cdsLookUp
        DataSource = dsPadrao
        ValidaCampoObrigatorio = False
        CampoObrigatorio = True
        LookUpTable = 'vCadClienteFiscal'
        ReturnField = 'idCnpjCpf'
      end
      object CLookUp12: TCLookUp
        Left = 270
        Top = 80
        Width = 126
        Height = 19
        Alignment = taLeftJustify
        BevelInner = bvSpace
        BevelOuter = bvLowered
        Color = 14149350
        ParentBackground = False
        TabOrder = 9
        Key.Strings = (
          'idCliente'
          'idCadCliente')
        LookUpKey.Strings = (
          'idCliente'
          'idCadCliente')
        ClientDataSet = cdsLookUp
        DataSource = dsPadrao
        ValidaCampoObrigatorio = False
        CampoObrigatorio = True
        LookUpTable = 'vCadClienteFiscal'
        ReturnField = 'idInscEstadual'
      end
      object DBEidCliente: TCDBEdit
        Left = 60
        Top = 8
        Width = 60
        Height = 19
        BevelKind = bkTile
        BorderStyle = bsNone
        DataField = 'idCliente'
        DataSource = dsPadrao
        TabOrder = 0
        OnKeyDown = DBEidClienteKeyDown
        DecimalControl = True
        KeyMode = kmNormal
      end
      object LookDescCadCliente: TCLookUp
        Left = 178
        Top = 8
        Width = 277
        Height = 19
        Alignment = taLeftJustify
        BevelInner = bvSpace
        BevelOuter = bvLowered
        Color = 14149350
        ParentBackground = False
        TabOrder = 2
        Key.Strings = (
          'idCliente'
          'idCadCliente')
        LookUpKey.Strings = (
          'idCliente'
          'idCadCliente')
        AlternateSQL.Strings = (
          'Select descCadCliente From vCadClienteFiscal Where idCliente = ?')
        ClientDataSet = cdsLookUp
        DataSource = dsPadrao
        ValidaCampoObrigatorio = False
        CampoObrigatorio = True
        LookUpTable = 'vCadClienteFiscal'
        ReturnField = 'descCadCliente'
      end
      object LookDescAbreviadaCliente: TCLookUp
        Left = 465
        Top = 8
        Width = 161
        Height = 19
        Alignment = taLeftJustify
        BevelInner = bvSpace
        BevelOuter = bvLowered
        Color = 14149350
        ParentBackground = False
        TabOrder = 3
        Key.Strings = (
          'idCliente'
          'idCadCliente')
        LookUpKey.Strings = (
          'idCliente'
          'idCadCliente')
        AlternateSQL.Strings = (
          'Select descAbreviada From vCadClienteFiscal Where idCliente = ?')
        ClientDataSet = cdsLookUp
        DataSource = dsPadrao
        ValidaCampoObrigatorio = False
        CampoObrigatorio = True
        LookUpTable = 'vCadClienteFiscal'
        ReturnField = 'descAbreviada'
      end
      object LookidCnpjCpfCliente: TCLookUp
        Left = 60
        Top = 30
        Width = 126
        Height = 19
        Alignment = taLeftJustify
        BevelInner = bvSpace
        BevelOuter = bvLowered
        Color = 14149350
        ParentBackground = False
        TabOrder = 4
        Key.Strings = (
          'idCliente')
        LookUpKey.Strings = (
          'idCliente')
        AlternateSQL.Strings = (
          'Select idCnpjCpf  From vCadClienteFiscal Where idCliente = ?')
        ClientDataSet = cdsLookUp
        DataSource = dsPadrao
        ValidaCampoObrigatorio = False
        CampoObrigatorio = True
        LookUpTable = 'vCadClienteFiscal'
        ReturnField = 'idCnpjCpf'
      end
      object LookidInscEstadualCliente: TCLookUp
        Left = 270
        Top = 30
        Width = 126
        Height = 19
        Alignment = taLeftJustify
        BevelInner = bvSpace
        BevelOuter = bvLowered
        Color = 14149350
        ParentBackground = False
        TabOrder = 5
        Key.Strings = (
          'idCliente')
        LookUpKey.Strings = (
          'idCliente')
        AlternateSQL.Strings = (
          
            'Select idInscEstadual  From vCadClienteFiscal Where idCliente = ' +
            '?')
        ClientDataSet = cdsLookUp
        DataSource = dsPadrao
        ValidaCampoObrigatorio = False
        CampoObrigatorio = True
        LookUpTable = 'vCadClienteFiscal'
        ReturnField = 'idInscEstadual'
      end
      object DBEidCadCliente: TCDBEdit
        Left = 126
        Top = 8
        Width = 46
        Height = 19
        BevelKind = bkTile
        BorderStyle = bsNone
        DataField = 'idCadCliente'
        DataSource = dsPadrao
        TabOrder = 1
        OnKeyDown = DBEidClienteKeyDown
        DecimalControl = True
        KeyMode = kmNormal
      end
    end
  end
  inherited Acao: TActionList
    inherited actPesquisar: TAction
      Tag = 1
    end
  end
  inherited dspLookUp: TDataSetProvider
    Left = 40
    Top = 360
  end
  inherited cdsLookUp: TClientDataSet
    Left = 72
    Top = 360
  end
  inherited dspPadrao: TDataSetProvider
    Left = 40
    Top = 392
  end
  inherited cdsPadrao: TClientDataSet
    Left = 72
    Top = 392
    object cdsPadraoidCliente: TIntegerField
      FieldName = 'idCliente'
    end
    object cdsPadraoidCadCliente: TIntegerField
      FieldName = 'idCadCliente'
    end
    object cdsPadraoidRomaneioIni: TIntegerField
      FieldName = 'idRomaneioIni'
    end
    object cdsPadraoidRomaneioFim: TIntegerField
      FieldName = 'idRomaneioFim'
    end
    object cdsPadraodtRomaneioIni: TDateField
      FieldName = 'dtRomaneioIni'
    end
    object cdsPadraodtRomaneioFim: TDateField
      FieldName = 'dtRomaneioFim'
    end
    object cdsPadraotpDeposito: TBooleanField
      FieldName = 'tpDeposito'
    end
    object cdsPadraotpRetirada: TBooleanField
      FieldName = 'tpRetirada'
    end
    object cdsPadraotpAvulso: TBooleanField
      FieldName = 'tpAvulso'
    end
    object cdsPadraostAtivo: TBooleanField
      FieldName = 'stAtivo'
    end
    object cdsPadraostLiberado: TBooleanField
      FieldName = 'stLiberado'
    end
    object cdsPadraostFinalizado: TBooleanField
      FieldName = 'stFinalizado'
    end
    object cdsPadraostCancelado: TBooleanField
      FieldName = 'stCancelado'
    end
  end
  inherited dsPadrao: TDataSource
    Left = 104
    Top = 392
  end
  inherited cdsGrid: TClientDataSet
    CommandText = 
      'SELECT Romaneio.idRomaneio, Romaneio.dtRomaneio, CadAdicional.de' +
      'scAbreviada, Produto.descProduto, Romaneio.tpRomaneio, Romaneio.' +
      'stRomaneio FROM Romaneio, CadAdicional, Produto WHERE Romaneio.i' +
      'dProduto = Produto.idProduto AND Romaneio.idCliente = CadAdicion' +
      'al.idCadGeral AND Romaneio.idCadCliente = CadAdicional.idCadAdic' +
      'ional'
    Left = 72
    Top = 424
    object cdsGrididRomaneio: TIntegerField
      FieldName = 'idRomaneio'
      Required = True
    end
    object cdsGriddtRomaneio: TSQLTimeStampField
      FieldName = 'dtRomaneio'
      Required = True
    end
    object cdsGriddescAbreviada: TStringField
      FieldName = 'descAbreviada'
      Required = True
      FixedChar = True
      Size = 30
    end
    object cdsGriddescProduto: TStringField
      FieldName = 'descProduto'
      Required = True
      FixedChar = True
      Size = 50
    end
    object cdsGridtpRomaneio: TStringField
      FieldName = 'tpRomaneio'
      Required = True
      FixedChar = True
    end
    object cdsGridstRomaneio: TStringField
      FieldName = 'stRomaneio'
      Required = True
      FixedChar = True
      Size = 15
    end
  end
  inherited dsGrid: TDataSource
    Left = 104
    Top = 424
  end
  inherited dspGrid: TDataSetProvider
    Left = 40
    Top = 424
  end
  inherited sdsPadrao: TSQLDataSet
    Left = 8
    Top = 392
  end
  inherited sdsGrid: TSQLDataSet
    CommandText = 
      'SELECT Romaneio.idRomaneio, Romaneio.dtRomaneio, CadAdicional.de' +
      'scAbreviada, Produto.descProduto, Romaneio.tpRomaneio, Romaneio.' +
      'stRomaneio FROM Romaneio, CadAdicional, Produto WHERE Romaneio.i' +
      'dProduto = Produto.idProduto AND Romaneio.idCliente = CadAdicion' +
      'al.idCadGeral AND Romaneio.idCadCliente = CadAdicional.idCadAdic' +
      'ional'
    Left = 8
    Top = 424
  end
  object FindEmpresa: TCFind
    SelectClause.Strings = (
      
        'SELECT  idEmpresa,idCadEmpresa, descCadEmpresa, descAbreviada, i' +
        'dCnpjCpf FROM vCadEmpresaFiscal')
    OrderByClause.Strings = (
      'ORDER BY descCadEmpresa')
    FindField = 'descCadEmpresa'
    SQLConnection = dmPadrao.dbConexao
    ValueField = 'idEmpresa,idCadEmpresa'
    CarregaDados = True
    CollumNames.Strings = (
      'C'#243'digo'
      'Nome / Raz'#227'o Social'
      'Descri'#231#227'o Abreviada / Fantasia'
      'CPF / CNPJ')
    TypeFind = fFindNormal
    Left = 560
  end
end
