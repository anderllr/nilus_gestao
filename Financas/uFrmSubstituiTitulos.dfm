inherited FrmSubstituiTitulos: TFrmSubstituiTitulos
  Tag = 1
  Caption = 'Substitui'#231#227'o de t'#237'tulos a pagar ou receber'
  ClientHeight = 560
  ClientWidth = 841
  FormStyle = fsMDIChild
  Position = poDefaultPosOnly
  Visible = True
  ExplicitWidth = 857
  ExplicitHeight = 598
  PixelsPerInch = 96
  TextHeight = 13
  inherited GrupoGrid: TCGroupBox
    Top = 146
    Width = 841
    Height = 159
    Align = alTop
    TabOrder = 2
    ExplicitTop = 146
    ExplicitWidth = 841
    ExplicitHeight = 159
    inherited DBGrid: TCDBGrid
      Width = 837
      Height = 142
      OnCellClick = DBGridCellClick
      OnColEnter = DBGridColEnter
      OnDrawColumnCell = DBGridDrawColumnCell
      OnDblClick = nil
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
          FieldName = 'idTitulo'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'idEmpresa'
          Title.Caption = 'Emp.'
          Width = 40
          Visible = True
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
          FieldName = 'nrTitulo'
          Title.Caption = 'Nr.Titulo'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'idDocSerie'
          Title.Caption = 'Doc. S'#233'rie'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'idCliente'
          Title.Caption = 'Fronecedor'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'descCliente'
          Title.Caption = 'Descri'#231#227'o'
          Width = 200
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'vlTitulo'
          Title.Caption = 'Valor'
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'dtEmissao'
          Title.Caption = 'Dt. Emiss'#227'o'
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'stTitulo'
          Title.Caption = 'Status'
          Width = 80
          Visible = True
        end>
    end
  end
  inherited PanBotoes: TCPanelGradient
    Top = 113
    Width = 841
    ExplicitTop = 113
    ExplicitWidth = 841
    inherited BtnFechar: TCBitBtn
      Left = 750
      ExplicitLeft = 750
    end
  end
  inherited PanTopo: TCPanelGradient
    Width = 841
    Height = 113
    TabOrder = 0
    ExplicitWidth = 841
    ExplicitHeight = 113
    object CLabel11: TCLabel [0]
      Left = 46
      Top = 66
      Width = 24
      Height = 13
      Alignment = taRightJustify
      Caption = 'S'#233'rie'
      Transparent = True
    end
    object Label1: TLabel [1]
      Left = 354
      Top = 66
      Width = 46
      Height = 13
      Alignment = taRightJustify
      Caption = 'Titulos de'
    end
    object Label2: TLabel [2]
      Left = 492
      Top = 66
      Width = 16
      Height = 13
      Alignment = taRightJustify
      Caption = 'at'#233
    end
    object CLabel14: TCLabel [3]
      Left = 17
      Top = 91
      Width = 53
      Height = 13
      Alignment = taRightJustify
      Caption = 'Emiss'#227'o de'
    end
    object CLabel15: TCLabel [4]
      Left = 162
      Top = 91
      Width = 16
      Height = 13
      Alignment = taRightJustify
      Caption = 'at'#233
    end
    object CLabel16: TCLabel [5]
      Left = 270
      Top = 91
      Width = 70
      Height = 13
      Alignment = taRightJustify
      Caption = 'Vencimento de'
    end
    object CLabel17: TCLabel [6]
      Left = 432
      Top = 91
      Width = 16
      Height = 13
      Alignment = taRightJustify
      Caption = 'at'#233
    end
    inherited PanEmpresa: TCPanelGradient
      Width = 839
      Height = 24
      ExplicitWidth = 839
      ExplicitHeight = 24
      inherited DBEidEmpresa: TCDBEdit
        TabOrder = 2
      end
      inherited DBEidCadEmpresa: TCDBEdit
        TabOrder = 3
      end
      inherited LookdescCadEmpresa: TCLookUp
        TabOrder = 4
      end
      inherited LookdescAbreviada: TCLookUp
        TabOrder = 5
      end
      inherited lookidCnpjCpf: TCLookUp
        TabOrder = 6
      end
      inherited LookidInscEstadual: TCLookUp
        TabOrder = 7
      end
      object DBCKconsolidaemp: TCDBCheckBox
        Left = 591
        Top = 4
        Width = 127
        Height = 17
        Caption = 'Consolida Empresas?'
        DataField = 'consolidaEmp'
        DataSource = dsPadrao
        TabOrder = 0
        ValueChecked = 'S'
        ValueUnchecked = 'N'
      end
      object DBCKconsolidafilial: TCDBCheckBox
        Left = 724
        Top = 4
        Width = 127
        Height = 17
        Caption = 'Consolida Filiais?'
        DataField = 'consolidaFilial'
        DataSource = dsPadrao
        TabOrder = 1
        ValueChecked = 'S'
        ValueUnchecked = 'N'
      end
    end
    object PanCliente: TCPanelGradient
      Left = 1
      Top = 25
      Width = 839
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
      object CLabel4: TCLabel
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
      object CLabel5: TCLabel
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
      object CLabel6: TCLabel
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
      object CLabel8: TCLabel
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
      object CLabel9: TCLabel
        Left = 21
        Top = 61
        Width = 33
        Height = 13
        Alignment = taRightJustify
        Caption = 'Cliente'
        Transparent = True
      end
      object CLabel10: TCLabel
        Left = 6
        Top = 83
        Width = 48
        Height = 13
        Alignment = taRightJustify
        Caption = 'CNPJ/CPF'
        Transparent = True
      end
      object CLabel12: TCLabel
        Left = 192
        Top = 83
        Width = 72
        Height = 13
        Alignment = taRightJustify
        Caption = 'Inscr. Estadual'
        Transparent = True
      end
      object Bevel1: TBevel
        Left = 1
        Top = 1
        Width = 837
        Height = 4
        Align = alTop
        Shape = bsFrame
        Style = bsRaised
        ExplicitLeft = 0
        ExplicitTop = 92
        ExplicitWidth = 573
      end
      object Bevel2: TBevel
        Left = 0
        Top = 104
        Width = 606
        Height = 4
        Shape = bsFrame
        Style = bsRaised
      end
      object CLabel7: TCLabel
        Left = 38
        Top = 11
        Width = 31
        Height = 13
        Alignment = taRightJustify
        Caption = 'Cli/For'
        Transparent = True
      end
      object CLabel13: TCLabel
        Left = 536
        Top = 11
        Width = 48
        Height = 13
        Alignment = taRightJustify
        Caption = 'CNPJ/CPF'
        Transparent = True
      end
      object DBEidCliente: TCDBEdit
        Left = 75
        Top = 8
        Width = 46
        Height = 19
        BevelKind = bkTile
        BorderStyle = bsNone
        DataField = 'idCliente'
        DataSource = dsPadrao
        TabOrder = 0
        OnEnter = DBEidClienteEnter
        Find = FindCliente
        DecimalControl = True
        KeyMode = kmInteger
      end
      object LookDescCadCliente: TCLookUp
        Left = 127
        Top = 8
        Width = 232
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
      object CLookUp1: TCLookUp
        Left = 365
        Top = 8
        Width = 165
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
        ValidaCampoObrigatorio = True
        CampoObrigatorio = True
        LookUpTable = 'vCadClienteContabil'
        ReturnField = 'descAbreviada'
      end
      object CLookUp2: TCLookUp
        Left = 590
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
          'idCliente')
        LookUpKey.Strings = (
          'idCliente')
        ClientDataSet = cdsLookUp
        DataSource = dsPadrao
        ValidaCampoObrigatorio = True
        CampoObrigatorio = True
        LookUpTable = 'vCadClienteContabil'
        ReturnField = 'idCnpjCpf'
      end
    end
    object LookDocSerie: TCLookUp
      Left = 133
      Top = 63
      Width = 215
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
      ClientDataSet = cdsLookUp
      DataSource = dsPadrao
      ValidaCampoObrigatorio = True
      CampoObrigatorio = True
      LookUpTable = 'DocSerie'
      ReturnField = 'descDocSerie'
    end
    object DBEidDocSerie: TCDBEdit
      Left = 76
      Top = 63
      Width = 51
      Height = 19
      BevelKind = bkTile
      BorderStyle = bsNone
      DataField = 'idDocSerie'
      DataSource = dsPadrao
      TabOrder = 2
      Find = FindSerie
      DecimalControl = True
      KeyMode = kmUSUpper
    end
    object DBEnrTituloIni: TCDBEdit
      Left = 406
      Top = 63
      Width = 80
      Height = 19
      BevelKind = bkTile
      BorderStyle = bsNone
      DataField = 'nrTituloIni'
      DataSource = dsPadrao
      TabOrder = 4
      OnEnter = DBEidEmpresaEnter
      OnExit = DBEidEmpresaExit
      DecimalControl = True
      KeyMode = kmNormal
    end
    object DBEnrTituloFim: TCDBEdit
      Left = 514
      Top = 63
      Width = 79
      Height = 19
      BevelKind = bkTile
      BorderStyle = bsNone
      DataField = 'nrTituloFim'
      DataSource = dsPadrao
      TabOrder = 5
      OnEnter = DBEidEmpresaEnter
      OnExit = DBEidEmpresaExit
      DecimalControl = True
      KeyMode = kmNormal
    end
    object DBEdtEmissaoIni: TCDBEdit
      Left = 76
      Top = 88
      Width = 80
      Height = 19
      BevelKind = bkTile
      BorderStyle = bsNone
      DataField = 'dtEmissaoIni'
      DataSource = dsPadrao
      MaxLength = 10
      TabOrder = 6
      DecimalControl = True
      KeyMode = kmDate
    end
    object DBEdtEmissaoFim: TCDBEdit
      Left = 184
      Top = 88
      Width = 80
      Height = 19
      BevelKind = bkTile
      BorderStyle = bsNone
      DataField = 'dtEmissaoFim'
      DataSource = dsPadrao
      MaxLength = 10
      TabOrder = 7
      DecimalControl = True
      KeyMode = kmDate
    end
    object DBEdtVencimentoIni: TCDBEdit
      Left = 346
      Top = 88
      Width = 80
      Height = 19
      BevelKind = bkTile
      BorderStyle = bsNone
      DataField = 'dtVencimentoIni'
      DataSource = dsPadrao
      MaxLength = 10
      TabOrder = 8
      DecimalControl = True
      KeyMode = kmDate
    end
    object DBEdtVencimentoFim: TCDBEdit
      Left = 454
      Top = 88
      Width = 80
      Height = 19
      BevelKind = bkTile
      BorderStyle = bsNone
      DataField = 'dtVencimentoFim'
      DataSource = dsPadrao
      MaxLength = 10
      TabOrder = 9
      DecimalControl = True
      KeyMode = kmDate
    end
    object DBCKrec: TCDBCheckBox
      Left = 699
      Top = 90
      Width = 71
      Height = 17
      Caption = #193' Receber'
      DataField = 'rec'
      DataSource = dsPadrao
      TabOrder = 12
      ValueChecked = 'S'
      ValueUnchecked = 'N'
      Visible = False
    end
    object DBCKpag: TCDBCheckBox
      Left = 776
      Top = 90
      Width = 61
      Height = 17
      Caption = #193' Pagar'
      DataField = 'pag'
      DataSource = dsPadrao
      TabOrder = 13
      ValueChecked = 'S'
      ValueUnchecked = 'N'
      Visible = False
    end
    object DBCKAtivo: TCDBCheckBox
      Left = 540
      Top = 90
      Width = 61
      Height = 17
      Caption = 'Ativo'
      DataField = 'Ativo'
      DataSource = dsPadrao
      TabOrder = 10
      ValueChecked = 'S'
      ValueUnchecked = 'N'
    end
    object DBCKAberto: TCDBCheckBox
      Left = 610
      Top = 90
      Width = 61
      Height = 17
      Caption = 'Aberto'
      DataField = 'Aberto'
      DataSource = dsPadrao
      TabOrder = 11
      ValueChecked = 'S'
      ValueUnchecked = 'N'
    end
  end
  object CGroupBox1: TCGroupBox [3]
    Left = 0
    Top = 335
    Width = 841
    Height = 163
    Align = alTop
    TabOrder = 4
    object DBGridSel: TCDBGrid
      Left = 2
      Top = 15
      Width = 837
      Height = 146
      Align = alClient
      DataSource = dsGridSel
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnCellClick = DBGridSelCellClick
      OnColEnter = DBGridSelColEnter
      OnDrawColumnCell = DBGridSelDrawColumnCell
      UtilizaOrdenar = False
      Columns = <
        item
          Expanded = False
          FieldName = 'idTitulo'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'idEmpresa'
          Title.Caption = 'Emp.'
          Width = 50
          Visible = True
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
          FieldName = 'nrTitulo'
          Title.Caption = 'NrTitulo'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'idDocSerie'
          Title.Caption = 'Doc. S'#233'rie'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'idCliente'
          Title.Caption = 'Cliente'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'descCliente'
          Title.Caption = 'Descri'#231#227'o'
          Width = 200
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'dtEmissao'
          Title.Caption = 'Dt. Emiss'#227'o'
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'vlTitulo'
          Title.Caption = 'Valor'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'stTitulo'
          Title.Caption = 'Status'
          Visible = True
        end>
    end
  end
  object CPanelGradient1: TCPanelGradient [4]
    Left = 0
    Top = 498
    Width = 841
    Height = 62
    Align = alBottom
    BevelOuter = bvNone
    Caption = 'PanBotoes'
    TabOrder = 5
    CaptionNo = 0
    HintNo = 0
    BackgroundGradientColor = 13099746
    BackgroundGradientDirection = gdVertical
    TextColor = clBlack
    GradientColor = clBlack
    RegularButtonColor = clBlack
    SelectedButtonColor = clBlack
    ButtonOptions = []
    object CLabel3: TCLabel
      Left = 16
      Top = 31
      Width = 49
      Height = 13
      Caption = 'Nr. Titulos'
    end
    object CLabel1: TCLabel
      Left = 41
      Top = 6
      Width = 24
      Height = 13
      Alignment = taRightJustify
      Caption = 'S'#233'rie'
      Transparent = True
    end
    object CLabel2: TCLabel
      Left = 349
      Top = 6
      Width = 51
      Height = 13
      Caption = 'Valor Total'
    end
    object CLabel18: TCLabel
      Left = 187
      Top = 31
      Width = 49
      Height = 13
      Caption = 'Data Base'
    end
    object BtnSubstituir: TCBitBtn
      Left = 358
      Top = 25
      Width = 145
      Height = 25
      Caption = '&Substituir T'#237'tulos'
      DoubleBuffered = True
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000D5773930000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000D87C3C8FD87C3D400000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000DB813F20D87C3CDFD577391000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000D7793ACFD576398000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000D474378FD7743AEFCD6B3110000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000D06E3270DB753EFFCC682E60000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000CD682E40DD783EFFCC662EAFD05F29FFD05F
        29FFD05F29FFD05F29FFD05F29FFD05F29FFD05F29FFC85923CF000000000000
        0000000000000000000000000000CB622A50DE783EFFCD642EBFD05F29FFDA76
        45FFD8713CFFD9713AFFDD6F36FFDC6932FFC95722CFC6572010000000000000
        0000000000000000000000000000C85D2780E47B41FFCC622CCFD05F29FFD672
        40FFD36B35FFD76F39FFDF7947FFC95926DFC3501C1000000000000000000000
        0000000000000000000000000000C95C27CFE57A40FFC95B28BFD05F29FFD671
        40FFD77442FFD56D38FFDD7A47FFD16534FFC757253000000000000000000000
        00000000000000000000C65A2750D56935FFE37941FFC65B29AFD05F29FFDB82
        56FFDF8A62FFDD8053FFD56C37FFDE7B4AFFD16635EFC7562470000000000000
        000000000000C5582540CD5F2DEFE37841FFD86C38FFC1552560D05F29FFDD8D
        67FFC95B2EEFD7794FFFDC7F50FFD46C36FFDE7A49FFD76E3DFFCD5D2CDFCC5B
        29BFCC5C2ACFD46633FFE0743EFFE0743EFFC85929EFBC4A1A10D05F29FFC95E
        32CFC4512210C857288FD47247FFDE8357FFD7713EFFD76F3AFFDC7440FFDE72
        3DFFDD713BFFDB703AFFDE723CFFCF602FFFBF4F205000000000D05F29CCC550
        22100000000000000000C7522250CE6336DFDA7A4FFFDD7E50FFDB7645FFDA72
        3FFFDC703CFFD86735FFC95829EFC05022500000000000000000D05F29120000
        000000000000000000000000000000000000C6512160C9582AAFCB5D2FBFCA5B
        2CBFC75627BFC0502170C04F2010000000000000000000000000}
      ParentDoubleBuffered = False
      TabOrder = 3
      OnClick = BtnSubstituirClick
    end
    object DBEnrTitulo: TCDBEdit
      Left = 71
      Top = 28
      Width = 110
      Height = 19
      BevelKind = bkTile
      BorderStyle = bsNone
      DataField = 'nrTitulo'
      DataSource = dsTmp
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      MaxLength = 10
      ParentFont = False
      TabOrder = 4
      DecimalControl = True
      KeyMode = kmNormal
    end
    object CLookUp3: TCLookUp
      Left = 128
      Top = 4
      Width = 215
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
      ClientDataSet = cdsLookUp
      DataSource = dsTmp
      ValidaCampoObrigatorio = True
      CampoObrigatorio = True
      LookUpTable = 'DocSerie'
      ReturnField = 'descDocSerie'
    end
    object DBEidDocSerie1: TCDBEdit
      Left = 71
      Top = 4
      Width = 51
      Height = 19
      BevelKind = bkTile
      BorderStyle = bsNone
      DataField = 'idDocSerie'
      DataSource = dsTmp
      TabOrder = 0
      Find = FindSerie
      DecimalControl = True
      KeyMode = kmUSUpper
    end
    object DBEdtBase: TCDBEdit
      Left = 242
      Top = 28
      Width = 110
      Height = 19
      BevelKind = bkTile
      BorderStyle = bsNone
      DataField = 'dtBase'
      DataSource = dsTmp
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      MaxLength = 10
      ParentFont = False
      TabOrder = 5
      OnExit = DBEdtBaseExit
      DecimalControl = True
      KeyMode = kmDate
    end
    object DBEvlTotal: TCDBEdit
      Left = 406
      Top = 4
      Width = 70
      Height = 19
      BevelKind = bkTile
      BorderStyle = bsNone
      DataField = 'vlTotal'
      DataSource = dsTmp
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      MaxLength = 10
      ParentFont = False
      TabOrder = 2
      DecimalControl = True
      KeyMode = kmNormal
    end
  end
  object CPanelGradient2: TCPanelGradient [5]
    Left = 0
    Top = 305
    Width = 841
    Height = 30
    Align = alTop
    BevelOuter = bvNone
    Caption = 'PanBotoes'
    TabOrder = 3
    CaptionNo = 0
    HintNo = 0
    BackgroundGradientColor = 13099746
    BackgroundGradientDirection = gdVertical
    TextColor = clBlack
    GradientColor = clBlack
    RegularButtonColor = clBlack
    SelectedButtonColor = clBlack
    ButtonOptions = []
    object BtnAdicionar: TCBitBtn
      Left = 431
      Top = 1
      Width = 77
      Height = 25
      Caption = '&Adicionar'
      DoubleBuffered = True
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        200000000000000400000000000000000000000000000000000000000000ADAD
        ADFF8F8F8FFF878787FF878787FF878787FF878787FF878787FF878787FF8787
        87FF878787FF878787FF878787FF878787FF000000000000000000000000B6B6
        B6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF878787FF000000000000000000000000B6B6
        B6FFFFFFFFFFF9F9F9FFF9F9F9FFF9F9F9FFF9F9F9FFF9F9F9FFF9F9F9FFF9F9
        F9FFF9F9F9FFFAFAFAFFFFFFFFFF878787FF000000000000000000000000B6B6
        B6FFFFFFFFFFFAFAFAFFFAFAFAFFFAFAFAFFFAFAFAFFFAFAFAFFFAFAFAFFFAFA
        FAFFFAFAFAFFFBFBFBFFFFFFFFFF878787FF000000000000000000000000B6B6
        B6FFFFFFFFFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFC
        FCFFFCFCFCFFFDFDFDFFFFFFFFFF878787FF000000000000000000000000B6B6
        B6FFFFFFFFFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFD
        FDFFFDFDFDFFFEFEFEFFFFFFFFFF878787FF000000000000000000000000B6B6
        B6FFFFFFFFFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFE
        FEFFFEFEFEFFFEFEFEFFFFFFFFFF878787FF000000000000000000000000B6B6
        B6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF878787FF000000000000000000000000B6B6
        B6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF878787FF000000000000000000000000B6B6
        B6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF878787FF000000000000000000000000B6B6
        B6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF8A8A8AFF000000000000000000000000B6B6
        B6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8888
        88FF878787FF878787FF878787FF9D9D9DFF000000000000000000000000B6B6
        B6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA5A5
        A5FFFFFFFFFFFDFDFDFFDDDDDDFFABABABEF000000000000000000000000B6B6
        B6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB6B6
        B6FFFDFDFDFFDDDDDDFFABABABEF22222230000000000000000000000000B6B6
        B6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB6B6
        B6FFDDDDDDFFABABABEF2222223000000000000000000000000000000000B6B6
        B6FFB6B6B6FFB6B6B6FFB6B6B6FFB6B6B6FFB6B6B6FFB6B6B6FFB6B6B6FFB6B6
        B6FFABABABEF2222223000000000000000000000000000000000}
      ParentDoubleBuffered = False
      TabOrder = 0
      OnClick = BtnAdicionarClick
    end
    object BtnLimpaSelecao: TCBitBtn
      Left = 640
      Top = 2
      Width = 105
      Height = 25
      Caption = '&Limpar Sele'#231#227'o'
      DoubleBuffered = True
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        00000808648F0C0C7BAF02020B10000000000000000000000000000000000000
        00000000000002020B101D1D8AAF1A1A768F0000000000000000000000000808
        6F9F0606B7FF0909BAFF101092CF02020B100000000000000000000000000000
        000002020B102020A1CF3838EEFF4040F7FF2121889F000000001F1F6B8F0707
        B5FF0606B7FF0909BAFF0C0CBDFF111193CF02020B1000000000000000000202
        0B101C1C9DCF2F2FE4FF3636ECFF3B3BF2FF3D3DF4FF1A1A758F2F2F87AF5454
        CEFF0909B7FF0808B9FF0B0BBCFF0E0EC0FF121295CF02020B1002020B101919
        9ACF2626DAFF2C2CE0FF3131E6FF3535EBFF3636ECFF1C1C89AF02020B103838
        9FCF5555CFFF0B0BB9FF0A0ABBFF0D0DBFFF1111C3FF131395CF161698CF1E1E
        D1FF2323D6FF2727DBFF2B2BE0FF2E2EE3FF1F1FA0CF02020B10000000000202
        0B1038389FCF5555D0FF0C0CBBFF0C0CBEFF0F0FC1FF1313C5FF1717C9FF1B1B
        CEFF1F1FD2FF2222D6FF2525D9FF1C1C9DCF02020B1000000000000000000000
        000002020B1039399FCF5656D0FF0E0EBCFF0E0EBFFF1111C3FF1414C6FF1717
        CAFF1A1ACDFF1E1ED1FF18189ACF02020B100000000000000000000000000000
        00000000000002020B103939A0CF4D4DCFFF0C0CBDFF0E0EC0FF1111C3FF1414
        C6FF1616C9FF161697CF02020B10000000000000000000000000000000000000
        00000000000002020B101E1E95CF2E2EC4FF1D1DC1FF0E0EBEFF0E0EC0FF1010
        C2FF1313C5FF131395CF02020B10000000000000000000000000000000000000
        000002020B101F1F96CF3434C4FF3232C5FF3030C5FF2F2FC6FF2828C5FF2020
        C4FF1F1FC5FF1F1FC6FF1C1C97CF02020B100000000000000000000000000202
        0B10202096CF3939C4FF3636C4FF3434C4FF3232C5FF3030C5FF6868D7FF3131
        C7FF2E2EC7FF2E2EC8FF2D2DC9FF1C1C96CF02020B100000000001010B102323
        97CF3E3EC5FF3B3BC5FF3939C4FF3636C4FF3434C4FF1E1E95CF4040A2CF7070
        D9FF3232C6FF2F2FC6FF2E2EC6FF2E2EC7FF1D1D96CF02020B1039398BAF5454
        CCFF4141C6FF3E3EC5FF3B3BC5FF3939C4FF1F1F96CF02020B1002020B104141
        A2CF7171D8FF3333C5FF3030C5FF3030C5FF3030C5FF19197EAF3838758F9898
        E6FF5353CCFF4141C6FF3E3EC5FF202096CF02020B1000000000000000000202
        0B104141A2CF7272D8FF3535C5FF3232C4FF3232C4FF1616688F000000004141
        849F9898E6FF5454CCFF232397CF02020B100000000000000000000000000000
        000002020B104141A2CF7474D8FF3838C4FF1A1A759F00000000000000000000
        00003838758F39398BAF01010B10000000000000000000000000000000000000
        00000000000002020B10373789AF29296E8F0000000000000000}
      ParentDoubleBuffered = False
      TabOrder = 1
      OnClick = BtnLimpaSelecaoClick
    end
    object BtnRetirar: TCBitBtn
      Left = 535
      Top = 2
      Width = 75
      Height = 25
      Caption = '&Retirar'
      DoubleBuffered = True
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        000000000000000000009191912092929270959595BF979797BF9A9A9ABF9C9C
        9CBF9F9F9F70A1A1A12000000000000000000000000000000000000000000000
        0000000000008E8E8E80939393FFA4A4A4FFB2B2B2FFBCBCBCFFC5C5C5FFCECE
        CEFFBFBFBFFFA7A7A7FFA4A4A480000000000000000000000000000000000000
        00008B8B8B9F9E9E9EFFC2C2C2FFB0B0BBFF7B7BBEFF6F6FC8FF7878D2FF9A9A
        DEFFDFDFEAFFEFEFEFFFBBBBBBFFA7A7A79F0000000000000000000000008888
        88809E9E9EFFD1D1D1FF7F7FC1FF1414BAFF0E0EC0FF1515C7FF1D1DD0FF2727
        DBFF3D3DE8FFB1B1F5FFFCFCFCFFBBBBBBFFA4A4A48000000000878787208D8D
        8DFFD7D7D7FF8585C7FF0505B6FF7575D8FF3C3CCCFF1515C7FF1D1DD0FF4F4F
        E1FF8C8CF3FF3D3DF4FFB1B1F5FFEFEFEFFFA7A7A7FFA1A1A12087878770B1B1
        B1FFD1D1DCFF0F0FB5FF7272D5FFFFFFFFFFF0F0FBFF4040D1FF4545D7FFF1F1
        FCFFFFFFFFFF8C8CF3FF3D3DE8FFE0E0EBFFBFBFBFFF9F9F9F70878787BFD2D2
        D2FF8F8FD1FF0202B2FF3333C2FFEFEFFAFFFFFFFFFFF0F0FBFFF0F0FCFFFFFF
        FFFFF1F1FCFF4F4FE1FF2727DBFF9A9ADEFFCECECEFF9C9C9CBF878787BFD5D5
        D5FF8686D2FF0606B3FF0303B3FF3434C3FFF0F0FBFFFFFFFFFFFFFFFFFFF0F0
        FCFF4545D7FF1D1DD0FF1D1DD0FF7979D2FFC5C5C5FF9A9A9ABF878787BFD8D8
        D8FF9C9CDAFF4242C5FF1A1AB9FF3333C2FFEFEFFBFFFFFFFFFFFFFFFFFFF0F0
        FBFF4040D1FF1515C7FF1515C7FF6F6FC8FFBCBCBCFF979797BF878787BFDCDC
        DCFFB5B5E2FF4949C7FF6767D0FFF3F3FBFFFFFFFFFFEFEFFBFFF0F0FBFFFFFF
        FFFFF0F0FBFF3C3CCCFF0E0EC0FF7C7CBEFFB3B3B3FF959595BF87878770BBBB
        BBFFECECF4FF5858CBFF9999DFFFFFFFFFFFF3F3FBFF5F5FCFFF5D5DCFFFF3F3
        FBFFFFFFFFFF8383DCFF2D2DC1FFAFAFBAFFA4A4A4FF92929270878787208F8F
        8FFFF5F5F5FFB8B8E5FF4E4EC8FF9999DFFF6767D0FF3F3FC5FF3C3CC4FF5F5F
        CFFF9090DEFF3838C5FF9191C6FFC2C2C2FF939393FF91919120000000008787
        8780A5A5A5FFFCFCFCFFB8B8E5FF5858CBFF4949C7FF4646C6FF4343C5FF4040
        C5FF4848C6FF9A9ACDFFD0D0D0FF9D9D9DFF8E8E8E8000000000000000000000
        00008787879FA5A5A5FFF5F5F5FFECECF4FFB5B5E2FF9C9CDAFF9898D7FFA8A8
        D8FFD5D5DDFFD7D7D7FF9E9E9EFF8B8B8B9F0000000000000000000000000000
        000000000000878787808F8F8FFFBABABAFFDCDCDCFFD8D8D8FFD5D5D5FFD2D2
        D2FFB1B1B1FF8D8D8DFF88888880000000000000000000000000000000000000
        000000000000000000008787872087878770878787BF878787BF878787BF8787
        87BF878787708787872000000000000000000000000000000000}
      ParentDoubleBuffered = False
      TabOrder = 2
      OnClick = BtnRetirarClick
    end
  end
  inherited imgIcones: TImageList
    Bitmap = {
      494C010102000400340010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
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
    object cdsPadraoidCliente: TIntegerField
      FieldName = 'idCliente'
    end
    object cdsPadraoidDocSerie: TStringField
      FieldName = 'idDocSerie'
      Size = 10
    end
    object cdsPadraonrTituloIni: TStringField
      FieldName = 'nrTituloIni'
    end
    object cdsPadraonrTituloFim: TStringField
      FieldName = 'nrTituloFim'
    end
    object cdsPadraodtEmissaoIni: TDateField
      FieldName = 'dtEmissaoIni'
    end
    object cdsPadraodtEmissaoFim: TDateField
      FieldName = 'dtEmissaoFim'
    end
    object cdsPadraodtVencimentoIni: TDateField
      FieldName = 'dtVencimentoIni'
    end
    object cdsPadraodtVencimentoFim: TDateField
      FieldName = 'dtVencimentoFim'
    end
    object cdsPadraoAtivo: TStringField
      FieldName = 'Ativo'
    end
    object cdsPadraoAberto: TStringField
      FieldName = 'Aberto'
    end
    object cdsPadraorec: TStringField
      FieldName = 'rec'
    end
    object cdsPadraopag: TStringField
      FieldName = 'pag'
    end
    object cdsPadraoconsolidaemp: TStringField
      FieldName = 'consolidaemp'
      Size = 30
    end
    object cdsPadraoconsolidafilial: TStringField
      FieldName = 'consolidafilial'
      Size = 30
    end
  end
  inherited cdsGrid: TClientDataSet
    CommandText = 
      'SELECT '#39'N'#39' AS sel, t.idTituloPag idTitulo, t.idEmpresa, t.idCadE' +
      'mpresa, t.nrTituloPag nrTitulo, t.idDocSerie, t.idFornecedor idC' +
      'liente, t.stTituloPag stTitulo, '#9'   t.dtEmissao, t.vlTituloPag v' +
      'lTitulo, f.descCadFornecedor descCliente FROM TituloPag t INNER ' +
      'JOIN vCadFornecedorContabil f '#9'ON t.idFornecedor = f.idFornecedo' +
      'r WHERE 1=1'
    object cdsGridsel2: TStringField
      FieldName = 'sel'
      Required = True
      Size = 1
    end
    object cdsGrididTitulo: TIntegerField
      FieldName = 'idTitulo'
      Required = True
    end
    object cdsGrididEmpresa: TIntegerField
      FieldName = 'idEmpresa'
      Required = True
    end
    object cdsGrididCadEmpresa: TSmallintField
      FieldName = 'idCadEmpresa'
      Required = True
    end
    object cdsGridnrTitulo: TStringField
      FieldName = 'nrTitulo'
      Required = True
    end
    object cdsGrididDocSerie: TStringField
      FieldName = 'idDocSerie'
      Required = True
      Size = 5
    end
    object cdsGrididCliente: TIntegerField
      FieldName = 'idCliente'
      Required = True
    end
    object cdsGridstTitulo: TStringField
      FieldName = 'stTitulo'
      Required = True
      Size = 15
    end
    object cdsGriddtEmissao: TSQLTimeStampField
      FieldName = 'dtEmissao'
      Required = True
    end
    object cdsGridvlTitulo: TFMTBCDField
      FieldName = 'vlTitulo'
      Required = True
      Precision = 10
      Size = 2
    end
    object cdsGriddescCliente: TStringField
      FieldName = 'descCliente'
      Required = True
      Size = 50
    end
  end
  inherited sdsGrid: TSQLDataSet
    CommandText = 
      'SELECT '#39'N'#39' AS sel, t.idTituloPag idTitulo, t.idEmpresa, t.idCadE' +
      'mpresa, t.nrTituloPag nrTitulo, t.idDocSerie, t.idFornecedor idC' +
      'liente, t.stTituloPag stTitulo, '#9'   t.dtEmissao, t.vlTituloPag v' +
      'lTitulo, f.descCadFornecedor descCliente FROM TituloPag t INNER ' +
      'JOIN vCadFornecedorContabil f '#9'ON t.idFornecedor = f.idFornecedo' +
      'r WHERE 1=1'
  end
  object dsGridSel: TDataSource
    DataSet = cdsGridSel
    Left = 224
    Top = 368
  end
  object cdsGridSel: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    CommandText = 'SELECT * FROM TituloPag'
    Params = <>
    AfterOpen = cdsPadraoAfterOpen
    Left = 192
    Top = 368
    object cdsGridSelsel: TStringField
      FieldName = 'sel'
      Required = True
      Size = 1
    end
    object cdsGridSelidTitulo: TIntegerField
      FieldName = 'idTitulo'
      Required = True
    end
    object cdsGridSelidEmpresa: TIntegerField
      FieldName = 'idEmpresa'
      Required = True
    end
    object cdsGridSelidCadEmpresa: TSmallintField
      FieldName = 'idCadEmpresa'
      Required = True
    end
    object cdsGridSelnrTitulo: TStringField
      FieldName = 'nrTitulo'
      Required = True
    end
    object cdsGridSelidDocSerie: TStringField
      FieldName = 'idDocSerie'
      Required = True
      Size = 5
    end
    object cdsGridSelidCliente: TIntegerField
      FieldName = 'idCliente'
      Required = True
    end
    object cdsGridSelstTitulo: TStringField
      FieldName = 'stTitulo'
      Required = True
      Size = 15
    end
    object cdsGridSeldtEmissao: TSQLTimeStampField
      FieldName = 'dtEmissao'
      Required = True
    end
    object cdsGridSelvlTitulo: TFMTBCDField
      FieldName = 'vlTitulo'
      Required = True
      Precision = 10
      Size = 2
    end
    object cdsGridSeldescCliente: TStringField
      FieldName = 'descCliente'
      Required = True
      Size = 50
    end
    object cdsGridSelfator: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'fator'
    end
    object cdsGridSelvlTotal: TAggregateField
      FieldName = 'vlTotal'
      Active = True
      currency = True
      Expression = 'SUM(vlTitulo*fator)'
    end
  end
  object cdsTmp: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    CommandText = 'SELECT * FROM TituloPag'
    Params = <>
    ProviderName = 'dspGrid'
    AfterOpen = cdsPadraoAfterOpen
    Left = 408
    Top = 392
    object cdsTmpidDocSerie: TStringField
      FieldName = 'idDocSerie'
    end
    object cdsTmpnrTitulo: TStringField
      FieldName = 'nrTitulo'
    end
    object cdsTmpdtBase: TDateField
      FieldName = 'dtBase'
    end
    object cdsTmpvlTotal: TCurrencyField
      FieldName = 'vlTotal'
    end
  end
  object dsTmp: TDataSource
    DataSet = cdsTmp
    Left = 444
    Top = 392
  end
  object FindSerie: TCFind
    SelectClause.Strings = (
      'SELECT  idDocSerie, descDocSerie FROM DocSerie')
    JoinClause.Strings = (
      'WHERE idTipoDocSerie = 1')
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
    Left = 656
    Top = 40
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
    Left = 688
    Top = 40
  end
  object FindSeriePag: TCFind
    SelectClause.Strings = (
      'SELECT  idDocSerie, descDocSerie FROM DocSerie')
    JoinClause.Strings = (
      'WHERE idTipoDocSerie = 2')
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
    Left = 656
    Top = 96
  end
end
