inherited FrmLayout: TFrmLayout
  Caption = 'Nota Fiscal - Armazem'
  ClientHeight = 328
  ClientWidth = 571
  ExplicitWidth = 579
  ExplicitHeight = 355
  PixelsPerInch = 96
  TextHeight = 13
  inherited Bevel1: TBevel
    Top = 324
    Width = 571
    ExplicitTop = 336
    ExplicitWidth = 572
  end
  inherited Bevel2: TBevel
    Width = 571
  end
  object CLabel76: TCLabel [2]
    Left = 29
    Top = 67
    Width = 24
    Height = 13
    Alignment = taRightJustify
    Caption = 'S'#233'rie'
  end
  inherited PagAbas: TCPageControl
    Top = 96
    Width = 810
    Height = 645
    Align = alCustom
    ExplicitTop = 96
    ExplicitWidth = 810
    ExplicitHeight = 645
    inherited TabAbas: TTabSheet
      Caption = ''
      ExplicitWidth = 802
      ExplicitHeight = 616
      object DBGLayout: TCDBGrid
        Left = 3
        Top = 0
        Width = 562
        Height = 166
        DataSource = dsLayout
        Options = [dgRowLines, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        UtilizaOrdenar = False
      end
    end
  end
  inherited PanBotoes: TCPanelGradient
    Top = 293
    Width = 571
    ExplicitTop = 293
    ExplicitWidth = 571
    inherited BtnFechar: TCBitBtn
      Left = 494
      ExplicitLeft = 494
    end
    object BtnVisualizar: TCBitBtn
      Left = 413
      Top = 1
      Width = 75
      Height = 25
      Caption = '&Visualizar'
      TabOrder = 6
      OnClick = actCancelarExecute
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000C40E0000C40E00000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000505050000000000000FFFFFF
        FAFAFAFCFCFCFCFCFCFCFCFCFBFBFBFBFBFBFAFAFAF9F9F9F9F9F9FFFFFF4343
        430000003D3D3D000000000000FFFFFFF8F8F8FAFAFAFAFAFAF9F9F9F9F9F9F8
        F8F8F7F7F7F7F7F7FFFFFF444444767676000000000000000000000000FFFFFF
        F7F7F7F6F6F6FFFFFFFFFFFFFFFFFFFFFFFFF5F5F5FFFFFF4646467C7C7C5F5F
        5F000000000000000000000000FFFFFFFFFFFFFFFFFF979797989898969696AE
        AEAED5D5D55D5D5D838383626262FFFFFF000000000000000000000000FFFFFF
        989898C3C3C3DDDDDDE2E2E2DADADABDBDBD7D7D7D9B9B9B707070FFFFFFFFFF
        FF000000000000000000000000525252CECECEE7E7E7EBEBEBECECECE9E9E9E6
        E6E6CECECE898989D1D1D1FFFFFFFFFFFF0000000000000000000000005C5C5C
        E1E1E1E9E9E9ECECECEEEEEEEAEAEAE7E7E7E1E1E1ADADADA3A3A3FFFFFFFFFF
        FF0000000000000000000000003A3A3ADEDEDEE2E2E2E7E7E7EAEAEAE4E4E4E0
        E0E0DDDDDDC1C1C1868686FFFFFFFFFFFF0000000000000000000000002B2B2B
        D9D9D9DDDDDDE4E4E4E5E5E5DCDCDCD8D8D8D6D6D6BCBCBC7B7B7BFFFFFFFFFF
        FF000000000000000000000000303030D6D6D6E0E0E0E7E7E7E6E6E6DFDFDFD5
        D5D5CCCCCC8B8B8B606060FFFFFFFFFFFF000000000000000000000000777777
        DBDBDBE3E3E3E5E5E5E6E6E6E3E3E3D6D6D6C4C4C4787878C1C1C1FFFFFFFFFF
        FF0000000000000000000000008B8B8BD9D9D9E7E7E7E8E8E8E8E8E8E3E3E3D6
        D6D6ABABAB848484FFFFFFFFFFFFFFFFFF0000000000000000000000005F5F5F
        A1A1A1CCCCCCDFDFDFE2E2E2D2D2D2ADADADFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FF00000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
    end
  end
  inherited PanEmpresa: TCPanelGradient
    Width = 571
    ExplicitWidth = 571
    inherited LookdescAbreviada: TCLookUp
      Width = 174
      ExplicitWidth = 174
    end
    inherited LookidInscEstadual: TCLookUp
      Width = 134
      ExplicitWidth = 134
    end
  end
  object DBEidDocSerieT: TCDBEdit [6]
    Left = 59
    Top = 64
    Width = 56
    Height = 19
    BevelKind = bkTile
    BorderStyle = bsNone
    DataField = 'idDocSerie'
    TabOrder = 3
    Find = FindSerie
    AcaoCad = actNovo
    DecimalControl = True
    KeyMode = kmUSUpper
  end
  object CLookUp3: TCLookUp [7]
    Left = 121
    Top = 61
    Width = 247
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
    ValidaCampoObrigatorio = True
    CampoObrigatorio = True
    LookUpTable = 'DocSerie'
    ReturnField = 'descDocSerie'
  end
  inherited imgIcones: TImageList
    Left = 448
    Top = 256
  end
  inherited Acao: TActionList
    Left = 512
    Top = 256
  end
  inherited cdsPadrao: TClientDataSet
    CommandText = 'EXEC spRetNfLayout 1,3'
    Left = 480
    Top = 192
  end
  inherited dspPadrao: TDataSetProvider
    DataSet = dmPadrao.sdsRelatorio
    Left = 448
    Top = 192
  end
  inherited dsPadrao: TDataSource
    Left = 512
    Top = 192
  end
  inherited cdsLookUp: TClientDataSet
    Left = 480
    Top = 160
  end
  inherited dspLookUp: TDataSetProvider
    Left = 448
    Top = 160
  end
  inherited ImgBotoes: TImageList
    Left = 480
    Top = 256
  end
  inherited cdsEmpresa: TClientDataSet
    Left = 624
    Top = 24
  end
  inherited dsEmpresa: TDataSource
    Left = 656
    Top = 24
  end
  object FindSerie: TCFind
    SelectClause.Strings = (
      'SELECT idDocSerie, descDocSerie FROM DocSerie')
    JoinClause.Strings = (
      'WHERE idTipoDocSerie = 3')
    OrderByClause.Strings = (
      'ORDER BY descDocSerie')
    FindField = 'descDocSerie'
    SQLConnection = dmPadrao.dbConexao
    ValueField = 'idDocSerie'
    CarregaDados = True
    CollumNames.Strings = (
      'S'#233'rie'
      'Descri'#231#227'o')
    TypeFind = fFindNormal
    Left = 416
    Top = 256
  end
  object cdsnfLayout: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspTituloRecParc'
    AfterOpen = cdsPadraoAfterOpen
    OnReconcileError = cdsPadraoReconcileError
    Left = 480
    Top = 224
  end
  object dspNfLayout: TDataSetProvider
    DataSet = cdsnfLayout
    Options = [poAllowMultiRecordUpdates, poPropogateChanges, poAllowCommandText, poUseQuoteChar]
    Left = 448
    Top = 224
  end
  object sdsLayout: TSQLDataSet
    SchemaName = 'gesys'
    GetMetadata = False
    DbxCommandType = 'Dbx.SQL'
    DataSource = dsPadrao
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmPadrao.dbConexao
    Left = 416
    Top = 216
  end
  object dsLayout: TDataSource
    DataSet = cdsnfLayout
    Left = 512
    Top = 224
  end
end
