inherited FrmPesRelaciona454: TFrmPesRelaciona454
  Left = 44
  Top = 279
  Caption = 'Pesquisa Relacionamento Cont'#225'bil X Financeiro'
  ClientHeight = 452
  ClientWidth = 909
  FormStyle = fsMDIChild
  Position = poDefault
  Visible = True
  ExplicitWidth = 917
  ExplicitHeight = 485
  PixelsPerInch = 96
  TextHeight = 13
  inherited GrupoGrid: TCGroupBox
    Top = 177
    Width = 909
    Height = 275
    ExplicitTop = 265
    ExplicitWidth = 1172
    ExplicitHeight = 274
    inherited DBGrid: TCDBGrid
      Width = 905
      Height = 258
      Columns = <
        item
          Expanded = False
          FieldName = 'descMovFinanceira'
          Title.Caption = 'Mov. Financeira'
          Width = 250
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'descGerencial'
          Title.Caption = 'Gerencial'
          Width = 224
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'descResultado'
          Title.Caption = 'Resultado'
          Width = 303
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'descContHistorico'
          Title.Caption = 'Hist'#243'rico'
          Width = 164
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'cdPlanoContaDeb'
          Title.Caption = 'D'#233'bito'
          Width = 37
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'cdPlanoContaCre'
          Title.Caption = 'Cr'#233'dito'
          Width = 42
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'tpPlanoConta'
          Title.Caption = 'Origem'
          Width = 60
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'naturezaPlanoConta'
          Title.Caption = 'Natureza'
          Width = 48
          Visible = True
        end>
    end
  end
  inherited PanBotoes: TCPanelGradient
    Width = 909
    Height = 142
    ExplicitWidth = 682
    ExplicitHeight = 142
    object CLabel10: TCLabel [0]
      Left = 15
      Top = 51
      Width = 76
      Height = 13
      Alignment = taRightJustify
      Caption = 'Mov. Financeira'
      Transparent = True
    end
    object CLabel13: TCLabel [1]
      Left = 343
      Top = 51
      Width = 44
      Height = 13
      Alignment = taRightJustify
      Caption = 'Gerencial'
      Transparent = True
    end
    object CLabel11: TCLabel [2]
      Left = 43
      Top = 73
      Width = 48
      Height = 13
      Alignment = taRightJustify
      Caption = 'Resultado'
      Transparent = True
    end
    object CLabel1: TCLabel [3]
      Left = 393
      Top = 74
      Width = 41
      Height = 13
      Alignment = taRightJustify
      Caption = 'Hist'#243'rico'
      Transparent = True
    end
    object CLabel3: TCLabel [4]
      Left = 60
      Top = 95
      Width = 31
      Height = 13
      Alignment = taRightJustify
      Caption = 'D'#233'bito'
      Transparent = True
    end
    object CLabel4: TCLabel [5]
      Left = 56
      Top = 117
      Width = 35
      Height = 13
      Alignment = taRightJustify
      Caption = 'Cr'#233'dito'
      Transparent = True
    end
    inherited BtnExecutar: TCBitBtn
      Left = 481
      Top = 100
      ExplicitLeft = 481
      ExplicitTop = 100
    end
    inherited BtnFechar: TCBitBtn
      Left = 1089
      Top = 12
      ExplicitLeft = 1089
      ExplicitTop = 12
    end
    object RadioGroup1: TRadioGroup
      Left = 9
      Top = 4
      Width = 664
      Height = 41
      Caption = 'Origem'
      Columns = 2
      ItemIndex = 0
      Items.Strings = (
        '&Gerencial'
        '&Fiscal')
      TabOrder = 2
    end
    object DBEidMovFinanceira: TCDBEdit
      Left = 97
      Top = 48
      Width = 48
      Height = 19
      BevelKind = bkTile
      BorderStyle = bsNone
      DataField = 'idMovFinanceira'
      DataSource = dsPadrao
      TabOrder = 3
      Find = FindMovFinanceira
      AcaoCad = frmPrincipal.actCadMovFinanceira
      DecimalControl = True
      KeyMode = kmNormal
    end
    object DBEidGerencial: TCDBEdit
      Left = 393
      Top = 49
      Width = 48
      Height = 19
      BevelKind = bkTile
      BorderStyle = bsNone
      DataField = 'idGerencial'
      DataSource = dsPadrao
      TabOrder = 4
      Find = FindGerenciaP
      AcaoCad = frmPrincipal.actCadGerencial
      DecimalControl = True
      KeyMode = kmNormal
    end
    object LookGerencial: TCLookUp
      Left = 444
      Top = 49
      Width = 229
      Height = 19
      Alignment = taLeftJustify
      BevelInner = bvSpace
      BevelOuter = bvLowered
      Color = 14149350
      ParentBackground = False
      TabOrder = 5
      Key.Strings = (
        'idGerencial')
      LookUpKey.Strings = (
        'idGerencial')
      AlternateSQL.Strings = (
        
          'SELECT DISTINCT descGerencial FROM vGerencial WHERE StGerencial ' +
          '= '#39'ATIVO'#39' AND tpGerencial = '#39'SAIDAS'#39' AND idEmpresa = [DBEidEmpre' +
          'sa] AND idGerencial = ?')
      ClientDataSet = cdsLookUp
      DataSource = dsPadrao
      ValidaCampoObrigatorio = False
      CampoObrigatorio = True
      LookUpTable = 'vGerencial'
      ReturnField = 'descGerencial'
    end
    object LookMovFinanceira: TCLookUp
      Left = 148
      Top = 48
      Width = 189
      Height = 19
      Alignment = taLeftJustify
      BevelInner = bvSpace
      BevelOuter = bvLowered
      Color = 14149350
      ParentBackground = False
      TabOrder = 6
      Key.Strings = (
        'idMovFinanceira')
      LookUpKey.Strings = (
        'idMovFinanceira')
      ClientDataSet = cdsLookUp
      DataSource = dsPadrao
      ValidaCampoObrigatorio = True
      CampoObrigatorio = True
      LookUpTable = 'MovFinanceira'
      ReturnField = 'descMovFinanceira'
    end
    object DBEidResultado: TCDBEdit
      Left = 97
      Top = 70
      Width = 48
      Height = 19
      BevelKind = bkTile
      BorderStyle = bsNone
      DataField = 'idResultado'
      DataSource = dsPadrao
      TabOrder = 7
      Find = FindResultado
      AcaoCad = frmPrincipal.actCadResultado
      DecimalControl = True
      KeyMode = kmNormal
    end
    object LookResultado: TCLookUp
      Left = 148
      Top = 70
      Width = 239
      Height = 19
      Alignment = taLeftJustify
      BevelInner = bvSpace
      BevelOuter = bvLowered
      Color = 14149350
      ParentBackground = False
      TabOrder = 8
      Key.Strings = (
        'idResultado')
      LookUpKey.Strings = (
        'idResultado')
      AlternateSQL.Strings = (
        
          'SELECT descResultado FROM Resultado WHERE idEmpresa = [DBEidEmpr' +
          'esa] AND idResultado = ?')
      ClientDataSet = cdsLookUp
      DataSource = dsPadrao
      ValidaCampoObrigatorio = False
      CampoObrigatorio = True
      LookUpTable = 'Resultado'
      ReturnField = 'descResultado'
    end
    object DBEidHistorico: TCDBEdit
      Left = 440
      Top = 71
      Width = 48
      Height = 19
      BevelKind = bkTile
      BorderStyle = bsNone
      DataField = 'idContHistorico'
      DataSource = dsPadrao
      TabOrder = 9
      Find = FindContHistorico
      AcaoCad = frmPrincipal.actCadHistorico
      DecimalControl = True
      KeyMode = kmNormal
    end
    object LookHistorico: TCLookUp
      Left = 491
      Top = 71
      Width = 182
      Height = 19
      Alignment = taLeftJustify
      BevelInner = bvSpace
      BevelOuter = bvLowered
      Color = 14149350
      ParentBackground = False
      TabOrder = 10
      Key.Strings = (
        'idContHistorico')
      LookUpKey.Strings = (
        'idContHistorico')
      ClientDataSet = cdsLookUp
      DataSource = dsPadrao
      ValidaCampoObrigatorio = False
      CampoObrigatorio = True
      LookUpTable = 'ContHistorico'
      ReturnField = 'descContHistorico'
    end
    object DBEcdPlanoContaDeb: TCDBEdit
      Left = 97
      Top = 92
      Width = 48
      Height = 19
      BevelKind = bkTile
      BorderStyle = bsNone
      DataField = 'cdPlanoContaDeb'
      DataSource = dsPadrao
      TabOrder = 11
      Find = FindPlanoContaDeb
      DecimalControl = True
      KeyMode = kmNormal
    end
    object LookdescPlanoContaDeb: TCLookUp
      Left = 148
      Top = 91
      Width = 314
      Height = 19
      Alignment = taLeftJustify
      BevelInner = bvSpace
      BevelOuter = bvLowered
      Color = 14149350
      ParentBackground = False
      TabOrder = 12
      Key.Strings = (
        'cdPlanoContaDeb'
        'tpPlanoConta')
      LookUpKey.Strings = (
        'cdPlanoConta'
        'tpPlanoConta')
      AlternateSQL.Strings = (
        
          'SELECT descPlanoConta FROM vPlanoConta WHERE idEmpresa = [DBEidE' +
          'mpresa] AND  naturezaPlanoConta = '#39'D'#39' AND cdPlanoConta = ? AND t' +
          'pPlanoConta = ?')
      ClientDataSet = cdsLookUp
      DataSource = dsPadrao
      ValidaCampoObrigatorio = False
      CampoObrigatorio = True
      LookUpTable = 'vPlanoConta'
      ReturnField = 'descPlanoConta'
    end
    object DBEcdPlanoContaCre: TCDBEdit
      Left = 97
      Top = 114
      Width = 48
      Height = 19
      BevelKind = bkTile
      BorderStyle = bsNone
      DataField = 'cdPlanoContaCre'
      DataSource = dsPadrao
      TabOrder = 13
      Find = FindPlanoContaCre
      DecimalControl = True
      KeyMode = kmNormal
    end
    object LookdescPlanoContaCre: TCLookUp
      Left = 148
      Top = 113
      Width = 314
      Height = 19
      Alignment = taLeftJustify
      BevelInner = bvSpace
      BevelOuter = bvLowered
      Color = 14149350
      ParentBackground = False
      TabOrder = 14
      Key.Strings = (
        'cdPlanoContaCre'
        'tpPlanoConta')
      LookUpKey.Strings = (
        'cdPlanoConta'
        'tpPlanoConta')
      AlternateSQL.Strings = (
        
          'SELECT descPlanoConta FROM vPlanoConta WHERE idEmpresa = [DBEidE' +
          'mpresa] AND  naturezaPlanoConta = '#39'C'#39' AND cdPlanoConta = ? AND t' +
          'pPlanoConta = ?')
      ClientDataSet = cdsLookUp
      DataSource = dsPadrao
      ValidaCampoObrigatorio = False
      CampoObrigatorio = True
      LookUpTable = 'vPlanoConta'
      ReturnField = 'descPlanoConta'
    end
  end
  inherited PanTopo: TCPanelGradient
    Width = 909
    ExplicitWidth = 1172
    object PanEmpresa: TCPanelGradient
      Left = 1
      Top = 1
      Width = 907
      Height = 32
      Align = alTop
      Caption = 'PanEmpresa'
      TabOrder = 0
      CaptionNo = 0
      HintNo = 0
      BackgroundGradientColor = 15201011
      BackgroundGradientDirection = gdVertical
      TextColor = clBlack
      GradientColor = clBlack
      RegularButtonColor = clBlack
      SelectedButtonColor = clBlack
      ButtonOptions = []
      ExplicitWidth = 1170
      object CLabel2: TCLabel
        Left = 12
        Top = 10
        Width = 41
        Height = 13
        Alignment = taRightJustify
        Caption = 'Empresa'
      end
      object lookidCnpjCpf: TCLookUp
        Left = 479
        Top = 7
        Width = 114
        Height = 19
        Alignment = taLeftJustify
        BevelInner = bvSpace
        BevelOuter = bvLowered
        Color = 14149350
        ParentBackground = False
        TabOrder = 0
        Key.Strings = (
          'idEmpresa')
        LookUpKey.Strings = (
          'idEmpresa')
        ClientDataSet = cdsLookUp
        DataSource = dsEmpresa
        ValidaCampoObrigatorio = False
        CampoObrigatorio = True
        LookUpTable = 'vCadEmpresaContabil'
        ReturnField = 'idCnpjCpf'
      end
      object LookdescAbreviada: TCLookUp
        Left = 319
        Top = 7
        Width = 154
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
        ClientDataSet = cdsLookUp
        DataSource = dsEmpresa
        ValidaCampoObrigatorio = False
        CampoObrigatorio = True
        LookUpTable = 'vCadEmpresaContabil'
        ReturnField = 'descAbreviada'
      end
      object LookdescCadEmpresa: TCLookUp
        Left = 111
        Top = 7
        Width = 202
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
        ClientDataSet = cdsLookUp
        DataSource = dsEmpresa
        ValidaCampoObrigatorio = True
        CampoObrigatorio = True
        LookUpTable = 'vCadEmpresaContabil'
        ReturnField = 'descCadEmpresa'
      end
      object DBEidEmpresa: TCDBEdit
        Left = 59
        Top = 7
        Width = 46
        Height = 19
        TabStop = False
        BevelKind = bkTile
        BorderStyle = bsNone
        DataField = 'idEmpresa'
        DataSource = dsEmpresa
        TabOrder = 3
        Find = FindEmpresa
        DecimalControl = True
        KeyMode = kmNormal
      end
    end
  end
  inherited imgIcones: TImageList
    Left = 192
    Top = 336
  end
  inherited Acao: TActionList
    Left = 160
    Top = 336
  end
  inherited cdsPadrao: TClientDataSet
    ProviderName = ''
    object cdsPadraoidMovFinanceira: TIntegerField
      FieldName = 'idMovFinanceira'
    end
    object cdsPadraoidResultado: TIntegerField
      FieldName = 'idResultado'
    end
    object cdsPadraocdPlanoContaDeb: TIntegerField
      FieldName = 'cdPlanoContaDeb'
    end
    object cdsPadraocdPlanoContaCre: TIntegerField
      FieldName = 'cdPlanoContaCre'
    end
    object cdsPadraotpPlanoConta: TStringField
      FieldName = 'tpPlanoConta'
      Size = 0
    end
    object cdsPadraoidContHistorico: TIntegerField
      FieldName = 'idContHistorico'
    end
    object cdsPadraoidGerencial: TIntegerField
      FieldName = 'idGerencial'
    end
  end
  inherited cdsGrid: TClientDataSet
    CommandText = 'SELECT * FROM vPesRelaciona'
  end
  inherited sdsPadrao: TSQLDataSet
    SchemaName = 'dbo'
  end
  inherited sdsGrid: TSQLDataSet
    CommandText = 'SELECT * FROM vPesRelaciona'
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
    Left = 792
  end
  object dsEmpresa: TDataSource
    DataSet = cdsEmpresa
    Left = 760
  end
  object cdsEmpresa: TClientDataSet
    Aggregates = <>
    CommandText = 'SELECT * FROM vCadEmpresaContabil'
    Params = <>
    ProviderName = 'dspEmpresa'
    Left = 728
    object cdsEmpresaidEmpresa: TIntegerField
      FieldName = 'idEmpresa'
      Required = True
    end
    object cdsEmpresadescCadEmpresa: TStringField
      FieldName = 'descCadEmpresa'
      Required = True
      FixedChar = True
      Size = 50
    end
    object cdsEmpresadescAbreviada: TStringField
      FieldName = 'descAbreviada'
      Required = True
      FixedChar = True
      Size = 30
    end
    object cdsEmpresaidCnpjCpf: TStringField
      FieldName = 'idCnpjCpf'
      FixedChar = True
      Size = 18
    end
  end
  object dspEmpresa: TDataSetProvider
    DataSet = dmPadrao.sdsEmpresa
    Options = [poPropogateChanges, poAllowCommandText]
    Left = 696
  end
  object FindMovFinanceira: TCFind
    SelectClause.Strings = (
      'SELECT  idMovFinanceira, descMovFinanceira FROM MovFinanceira')
    JoinClause.Strings = (
      'WHERE StMovFinanceira = '#39'ATIVO'#39)
    OrderByClause.Strings = (
      'ORDER BY descMovFinanceira')
    FindField = 'descMovFinanceira'
    SQLConnection = dmPadrao.dbConexao
    ValueField = 'idMovFinanceira'
    CarregaDados = True
    CollumNames.Strings = (
      'C'#243'digo'
      'Descri'#231#227'o')
    TypeFind = fFindNormal
    Left = 760
    Top = 42
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
    Left = 728
    Top = 42
  end
  object FindResultado: TCFind
    SelectClause.Strings = (
      'SELECT idResultado, descResultado, StResultado FROM Resultado')
    JoinClause.Strings = (
      'WHERE stResultado = '#39'ATIVO'#39' AND idEmpresa = [DBEidEmpresa]')
    OrderByClause.Strings = (
      'ORDER BY descResultado')
    FindField = 'descResultado'
    SQLConnection = dmPadrao.dbConexao
    ValueField = 'idResultado'
    CarregaDados = True
    CollumNames.Strings = (
      'C'#243'digo'
      'Descri'#231#227'o'
      'Status')
    TypeFind = fFindNormal
    Left = 792
    Top = 42
  end
  object FindPlanoContaCre: TCFind
    SelectClause.Strings = (
      
        'SELECT DISTINCT cdPlanoConta, classificacao, descPlanoConta FROM' +
        ' vPlanoConta')
    JoinClause.Strings = (
      
        'WHERE stPlanoConta = '#39'ATIVO'#39' AND tpPlanoConta = [EDtpPlanoConta]' +
        ' AND idEmpresa = [DBEidEmpresa] AND naturezaPlanoConta = '#39'C'#39)
    OrderByClause.Strings = (
      'ORDER BY descPlanoConta')
    FindField = 'descPlanoConta'
    SQLConnection = dmPadrao.dbConexao
    ValueField = 'cdPlanoConta'
    CarregaDados = True
    CollumNames.Strings = (
      'C'#243'digo'
      'Classifica'#231#227'o'
      'Descri'#231#227'o')
    TypeFind = fFindNormal
    Left = 728
    Top = 74
  end
  object FindContHistorico: TCFind
    SelectClause.Strings = (
      
        'SELECT idContHistorico, descContHistorico, stContHistorico FROM ' +
        'ContHistorico')
    JoinClause.Strings = (
      'WHERE stContHistorico = '#39'ATIVO'#39)
    OrderByClause.Strings = (
      'ORDER BY descContHistorico')
    FindField = 'descContHistorico'
    SQLConnection = dmPadrao.dbConexao
    ValueField = 'idContHistorico'
    CarregaDados = True
    CollumNames.Strings = (
      'C'#243'digo'
      'Descri'#231#227'o'
      'Status')
    TypeFind = fFindNormal
    Left = 696
    Top = 42
  end
  object FindPlanoContaDeb: TCFind
    SelectClause.Strings = (
      
        'SELECT DISTINCT cdPlanoConta, classificacao, descPlanoConta FROM' +
        ' vPlanoConta')
    JoinClause.Strings = (
      
        'WHERE stPlanoConta = '#39'ATIVO'#39' AND tpPlanoConta = [EDtpPlanoConta]' +
        ' AND idEmpresa = [DBEidEmpresa] AND naturezaPlanoConta = '#39'D'#39)
    OrderByClause.Strings = (
      'ORDER BY descPlanoConta')
    FindField = 'descPlanoConta'
    SQLConnection = dmPadrao.dbConexao
    ValueField = 'cdPlanoConta'
    CarregaDados = True
    CollumNames.Strings = (
      'C'#243'digo'
      'Classifica'#231#227'o'
      'Descri'#231#227'o')
    TypeFind = fFindNormal
    Left = 696
    Top = 74
  end
  object FindContRelaciona: TCFind
    SelectClause.Strings = (
      
        'SELECT DISTINCT cr.idEmpresa,emp.descCadEmpresa FROM ContRelacio' +
        'na cr, vCadEmpresaContabil emp')
    JoinClause.Strings = (
      'WHERE cr.idEmpresa = emp.idEmpresa')
    OrderByClause.Strings = (
      'ORDER BY emp.descCadEmpresa')
    FindField = 'idEmpresa'
    SQLConnection = dmPadrao.dbConexao
    ValueField = 'idEmpresa'
    CarregaDados = True
    CollumNames.Strings = (
      'C'#243'digo'
      'Descri'#231#227'o')
    TypeFind = fFindNormal
    Left = 760
    Top = 74
  end
end
