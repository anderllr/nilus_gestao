inherited FrmRelbalancete: TFrmRelbalancete
  Caption = 'Balancete'
  ClientWidth = 844
  ExplicitWidth = 852
  ExplicitHeight = 466
  PixelsPerInch = 96
  TextHeight = 13
  inherited Bevel1: TBevel
    Width = 844
  end
  inherited PanBotoes: TCPanelGradient
    Width = 844
  end
  object PanEmpresa: TCPanelGradient [2]
    Left = 0
    Top = 0
    Width = 844
    Height = 32
    Align = alTop
    Caption = 'PanEmpresa'
    TabOrder = 1
    CaptionNo = 0
    HintNo = 0
    BackgroundGradientColor = 15201011
    BackgroundGradientDirection = gdVertical
    TextColor = clBlack
    GradientColor = clBlack
    RegularButtonColor = clBlack
    SelectedButtonColor = clBlack
    ButtonOptions = []
    ExplicitWidth = 842
    object CLabel2: TCLabel
      Left = 12
      Top = 10
      Width = 41
      Height = 13
      Alignment = taRightJustify
      Caption = 'Empresa'
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
      TabOrder = 0
      DecimalControl = True
      KeyMode = kmNormal
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
      TabOrder = 1
      Key.Strings = (
        'idEmpresa')
      LookUpKey.Strings = (
        'idEmpresa')
      DataSource = dsEmpresa
      ValidaCampoObrigatorio = True
      CampoObrigatorio = True
      LookUpTable = 'vCadEmpresaContabil'
      ReturnField = 'descCadEmpresa'
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
      TabOrder = 2
      Key.Strings = (
        'idEmpresa')
      LookUpKey.Strings = (
        'idEmpresa')
      DataSource = dsEmpresa
      ValidaCampoObrigatorio = False
      CampoObrigatorio = True
      LookUpTable = 'vCadEmpresaContabil'
      ReturnField = 'descAbreviada'
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
      TabOrder = 3
      Key.Strings = (
        'idEmpresa')
      LookUpKey.Strings = (
        'idEmpresa')
      DataSource = dsEmpresa
      ValidaCampoObrigatorio = False
      CampoObrigatorio = True
      LookUpTable = 'vCadEmpresaContabil'
      ReturnField = 'idCnpjCpf'
    end
  end
  object CGroupBox1: TCGroupBox [3]
    Left = 8
    Top = 32
    Width = 585
    Height = 357
    TabOrder = 2
    object DBRGtpPlanoConta: TCDBRadioGroup
      Left = 12
      Top = 15
      Width = 562
      Height = 44
      Caption = 'Tipo do Plano de Contas'
      Columns = 2
      DataField = 'tpPlanoConta'
      DataSource = dsPadrao
      Items.Strings = (
        'Fiscal'
        'Gerencial')
      ParentBackground = True
      TabOrder = 0
      Values.Strings = (
        'F'
        'G')
    end
  end
  inherited imgIcones: TImageList
    Left = 624
    Top = 112
  end
  inherited Acao: TActionList
    Left = 592
    Top = 112
  end
  inherited dspRelatorio: TDataSetProvider
    Left = 656
    Top = 112
  end
  inherited cdsRelatorio: TClientDataSet
    Left = 688
    Top = 112
  end
  inherited frxDBX: TfrxDBXComponents
    Left = 592
    Top = 144
  end
  inherited frxJPEGExport1: TfrxJPEGExport
    Left = 592
    Top = 176
  end
  inherited frxTIFFExport1: TfrxTIFFExport
    Left = 624
    Top = 176
  end
  inherited frxRTFExport1: TfrxRTFExport
    Left = 656
    Top = 176
  end
  inherited frxSimpleTextExport1: TfrxSimpleTextExport
    Left = 688
    Top = 176
  end
  inherited frxHTMLExport1: TfrxHTMLExport
    Left = 592
    Top = 208
  end
  inherited frxXLSExport1: TfrxXLSExport
    Left = 624
    Top = 208
  end
  inherited frxXMLExport1: TfrxXMLExport
    Left = 656
    Top = 208
  end
  inherited frxPDFExport1: TfrxPDFExport
    Left = 688
    Top = 208
  end
  inherited frxODSExport1: TfrxODSExport
    Left = 592
    Top = 240
  end
  inherited frxODTExport1: TfrxODTExport
    Left = 624
    Top = 240
  end
  inherited frxMailExport1: TfrxMailExport
    Left = 688
    Top = 240
  end
  inherited frxCSVExport1: TfrxCSVExport
    Left = 657
    Top = 240
  end
  inherited frxDataset: TfrxDBDataset
    Left = 656
    Top = 144
  end
  inherited dsPadrao: TDataSource
    Left = 688
    Top = 272
  end
  inherited cdsPadrao: TClientDataSet
    Left = 656
    Top = 272
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
    Left = 688
  end
  object dsEmpresa: TDataSource
    DataSet = cdsEmpresa
    Left = 656
  end
  object cdsEmpresa: TClientDataSet
    Aggregates = <>
    CommandText = 'SELECT * FROM vCadEmpresaContabil'
    Params = <>
    ProviderName = 'dspEmpresa'
    Left = 624
  end
  object dspEmpresa: TDataSetProvider
    DataSet = dmPadrao.sdsEmpresa
    Options = [poPropogateChanges, poAllowCommandText]
    Left = 592
  end
end
