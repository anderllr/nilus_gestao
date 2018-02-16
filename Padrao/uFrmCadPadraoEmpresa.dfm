inherited FrmCadPadraoEmpresa: TFrmCadPadraoEmpresa
  Caption = 'FrmCadPadraoEmpresa'
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel3: TBevel [1]
    Left = 0
    Top = 0
    Width = 665
    Height = 33
    Align = alTop
  end
  object CLabel1: TCLabel [2]
    Left = 8
    Top = 11
    Width = 41
    Height = 13
    Alignment = taRightJustify
    Caption = 'Empresa'
  end
  inherited PagAbas: TCPageControl
    Top = 33
    Height = 232
    ExplicitTop = 28
    ExplicitHeight = 237
    inherited TabAbas: TTabSheet
      ExplicitHeight = 208
    end
  end
  object LookRazao: TCLookUp [5]
    Left = 118
    Top = 8
    Width = 234
    Height = 19
    Alignment = taLeftJustify
    BevelInner = bvSpace
    BevelOuter = bvLowered
    Color = 14149350
    ParentBackground = False
    TabOrder = 2
    Key.Strings = (
      'cd_empresa')
    LookUpKey.Strings = (
      'cd_empresa')
    ClientDataSet = cdsLookUp
    DataSource = dsEmpresa
    ValidaCampoObrigatorio = False
    CampoObrigatorio = True
    LookUpTable = 'vCadastroEmpresa'
    ReturnField = 'razao'
  end
  object LookFantasia: TCLookUp [6]
    Left = 358
    Top = 8
    Width = 169
    Height = 19
    Alignment = taLeftJustify
    BevelInner = bvSpace
    BevelOuter = bvLowered
    Color = 14149350
    ParentBackground = False
    TabOrder = 3
    Key.Strings = (
      'cd_empresa')
    LookUpKey.Strings = (
      'cd_empresa')
    ClientDataSet = cdsLookUp
    DataSource = dsEmpresa
    ValidaCampoObrigatorio = False
    CampoObrigatorio = True
    LookUpTable = 'vCadastroEmpresa'
    ReturnField = 'fantasia'
  end
  object cd_empresa: TCEdit [7]
    Left = 55
    Top = 8
    Width = 57
    Height = 19
    Alignment = taRightJustify
    BorderStyle = bsNone
    BevelKind = bkTile
    TabOrder = 4
    OnExit = cd_empresaExit
    DataType = ftUnknown
    Find = FindEmpresa
    KeyMode = kmInteger
    Decimals = 0
  end
  object dspEmpresa: TDataSetProvider
    DataSet = dmPadrao.sdsEmpresa
    Options = [poPropogateChanges, poAllowCommandText]
    Left = 160
    Top = 40
  end
  object cdsEmpresa: TClientDataSet
    Aggregates = <>
    CommandText = 'SELECT cd_empresa, razao, fantasia FROM vCadastroEmpresa'
    Params = <>
    ProviderName = 'dspEmpresa'
    BeforeClose = cdsPadraoBeforeClose
    AfterPost = cdsPadraoAfterPost
    BeforeCancel = cdsPadraoBeforeCancel
    Left = 192
    Top = 40
  end
  object dsEmpresa: TDataSource
    DataSet = cdsEmpresa
    OnStateChange = dsPadraoStateChange
    Left = 224
    Top = 40
  end
  object FindEmpresa: TCFind
    SelectClause.Strings = (
      'SELECT  cd_empresa, razao, fantasia FROM vCadastroEmpresa')
    OrderByClause.Strings = (
      'ORDER BY razao')
    FindField = 'razao'
    SQLConnection = dmPadrao.dbConexao
    CarregaDados = True
    CollumNames.Strings = (
      'C'#243'digo'
      'Raz'#227'o Social'
      'Nome Fantasia')
    TypeFind = fFindNormal
    Left = 256
    Top = 40
  end
end
