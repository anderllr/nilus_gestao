inherited FrmPesContratoCompra: TFrmPesContratoCompra
  Caption = 'Pesquisa de Contratos de Compra'
  ClientWidth = 1084
  FormStyle = fsNormal
  Position = poMainFormCenter
  Visible = False
  ExplicitWidth = 1100
  ExplicitHeight = 489
  PixelsPerInch = 96
  TextHeight = 13
  inherited BevGrid: TBevel
    Top = 185
    Width = 1084
    ExplicitTop = 185
    ExplicitWidth = 899
  end
  inherited BevTop: TBevel
    Top = 58
    Width = 1084
    ExplicitTop = 58
    ExplicitWidth = 899
  end
  inherited PanTopo: TCPanelGradient
    Top = 62
    Width = 1084
    Height = 123
    ExplicitTop = 60
    ExplicitWidth = 1084
    ExplicitHeight = 123
    object CLabel7: TCLabel [0]
      Left = 12
      Top = 11
      Width = 55
      Height = 13
      Alignment = taRightJustify
      Caption = 'Fornecedor'
      Transparent = True
    end
    object CLabel9: TCLabel [1]
      Left = 589
      Top = 11
      Width = 48
      Height = 13
      Alignment = taRightJustify
      Caption = 'CNPJ/CPF'
      Transparent = True
    end
    object CLabel23: TCLabel [2]
      Left = 775
      Top = 11
      Width = 26
      Height = 13
      Alignment = taRightJustify
      Caption = 'Safra'
    end
    object CLabel11: TCLabel [3]
      Left = 29
      Top = 35
      Width = 38
      Height = 13
      Alignment = taRightJustify
      Caption = 'Produto'
    end
    object CLabel8: TCLabel [4]
      Left = 9
      Top = 61
      Width = 58
      Height = 13
      Alignment = taRightJustify
      Caption = 'Contrato de'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object CLabel4: TCLabel [5]
      Left = 175
      Top = 61
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
    object CLabel5: TCLabel [6]
      Left = 303
      Top = 61
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
    object CLabel6: TCLabel [7]
      Left = 428
      Top = 61
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
    object CLabel10: TCLabel [8]
      Left = 181
      Top = 86
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
    object CLabel12: TCLabel [9]
      Left = 10
      Top = 86
      Width = 57
      Height = 13
      Alignment = taRightJustify
      Caption = 'Nr. Orig. de'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object CLabel27: TCLabel [10]
      Left = 410
      Top = 35
      Width = 75
      Height = 13
      Alignment = taRightJustify
      Caption = 'Local Embarque'
    end
    inherited BtnExecutar: TCBitBtn
      Left = 380
      Top = 83
      TabOrder = 22
      ExplicitLeft = 380
      ExplicitTop = 83
    end
    object LookidCnpjCpfCliente: TCLookUp
      Left = 643
      Top = 8
      Width = 126
      Height = 19
      Alignment = taLeftJustify
      BevelInner = bvSpace
      BevelOuter = bvLowered
      Color = 14149350
      ParentBackground = False
      TabOrder = 4
      Key.Strings = (
        'idFornecedor'
        'idCadFornecedor')
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
    object DBEidSafra: TCDBEdit
      Left = 807
      Top = 8
      Width = 46
      Height = 19
      BevelKind = bkTile
      BorderStyle = bsNone
      DataField = 'idSafra'
      DataSource = dsPadrao
      TabOrder = 5
      Find = dmFind.FindSafra
      AcaoCad = frmPrincipal.actCadSafra
      DecimalControl = True
      KeyMode = kmNormal
    end
    object LookSafra: TCLookUp
      Left = 859
      Top = 8
      Width = 193
      Height = 19
      Alignment = taLeftJustify
      BevelInner = bvSpace
      BevelOuter = bvLowered
      Color = 14149350
      ParentBackground = False
      TabOrder = 6
      Key.Strings = (
        'idEmpresa'
        'idSafra')
      LookUpKey.Strings = (
        'idEmpresa'
        'idSafra')
      ClientDataSet = cdsLookUp
      DataSource = dsPadrao
      ValidaCampoObrigatorio = True
      CampoObrigatorio = True
      LookUpTable = 'Safra'
      ReturnField = 'descSafra'
    end
    object DBEidProduto: TCDBEdit
      Left = 73
      Top = 32
      Width = 89
      Height = 19
      BevelKind = bkTile
      BorderStyle = bsNone
      DataField = 'idProduto'
      DataSource = dsPadrao
      TabOrder = 7
      Find = dmFind.FindProduto
      AcaoCad = frmPrincipal.actCadProduto
      DecimalControl = True
      KeyMode = kmNormal
    end
    object LookProduto: TCLookUp
      Left = 168
      Top = 32
      Width = 227
      Height = 19
      Alignment = taLeftJustify
      BevelInner = bvSpace
      BevelOuter = bvLowered
      Color = 14149350
      ParentBackground = False
      TabOrder = 8
      Key.Strings = (
        'idProduto')
      LookUpKey.Strings = (
        'idProduto')
      ClientDataSet = cdsLookUp
      ValidaCampoObrigatorio = True
      CampoObrigatorio = True
      LookUpTable = 'Produto'
      ReturnField = 'descProduto'
    end
    object DBEidContratoIni: TCDBEdit
      Left = 73
      Top = 58
      Width = 89
      Height = 19
      BevelKind = bkTile
      BorderStyle = bsNone
      DataField = 'idContratoIni'
      DataSource = dsPadrao
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 13
      DecimalControl = True
      KeyMode = kmUSUpper
    end
    object DBEidContratoFim: TCDBEdit
      Left = 197
      Top = 58
      Width = 89
      Height = 19
      BevelKind = bkTile
      BorderStyle = bsNone
      DataField = 'idContratoFim'
      DataSource = dsPadrao
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 14
      DecimalControl = True
      KeyMode = kmUSUpper
    end
    object DBEdtInicial: TCDBEdit
      Left = 347
      Top = 58
      Width = 75
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
      TabOrder = 15
      DecimalControl = True
      KeyMode = kmDate
    end
    object DBEdtFinal: TCDBEdit
      Left = 450
      Top = 58
      Width = 75
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
      TabOrder = 16
      DecimalControl = True
      KeyMode = kmDate
    end
    object DBCKstAtivo: TCDBCheckBox
      Left = 546
      Top = 60
      Width = 48
      Height = 17
      Caption = 'Ativo'
      DataField = 'stAtivo'
      DataSource = dsPadrao
      TabOrder = 17
    end
    object DBCKstCancelado: TCDBCheckBox
      Left = 705
      Top = 60
      Width = 70
      Height = 17
      Caption = 'Cancelado'
      DataField = 'stCancelado'
      DataSource = dsPadrao
      TabOrder = 19
    end
    object DBCKstEncerrado: TCDBCheckBox
      Left = 617
      Top = 60
      Width = 73
      Height = 17
      Caption = 'Encerrado'
      DataField = 'stEncerrado'
      DataSource = dsPadrao
      TabOrder = 18
    end
    object DBEnrOrigFim: TCDBEdit
      Left = 203
      Top = 83
      Width = 102
      Height = 19
      BevelKind = bkTile
      BorderStyle = bsNone
      DataField = 'nrOrigFim'
      DataSource = dsPadrao
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 21
      DecimalControl = True
      KeyMode = kmNormal
    end
    object DBEnrOrigIni: TCDBEdit
      Left = 73
      Top = 83
      Width = 102
      Height = 19
      BevelKind = bkTile
      BorderStyle = bsNone
      DataField = 'nrOrigIni'
      DataSource = dsPadrao
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 20
      DecimalControl = True
      KeyMode = kmNormal
    end
    object DBEidFornecedor: TCDBEdit
      Left = 73
      Top = 8
      Width = 89
      Height = 19
      BevelKind = bkTile
      BorderStyle = bsNone
      DataField = 'idFornecedor'
      DataSource = dsPadrao
      TabOrder = 0
      OnKeyDown = DBEidFornecedorKeyDown
      OnKeyPress = DBEidFornecedorKeyPress
      AcaoCad = frmPrincipal.actCadSafra
      DecimalControl = True
      KeyMode = kmNormal
    end
    object DBEidCadFornecedor: TCDBEdit
      Left = 168
      Top = 8
      Width = 28
      Height = 19
      BevelKind = bkTile
      BorderStyle = bsNone
      DataField = 'idCadFornecedor'
      DataSource = dsPadrao
      TabOrder = 1
      AcaoCad = frmPrincipal.actCadSafra
      DecimalControl = True
      KeyMode = kmNormal
    end
    object CLookUp2: TCLookUp
      Left = 202
      Top = 8
      Width = 212
      Height = 19
      Alignment = taLeftJustify
      BevelInner = bvSpace
      BevelOuter = bvLowered
      Color = 14149350
      ParentBackground = False
      TabOrder = 2
      Key.Strings = (
        'idFornecedor'
        'idCadFornecedor')
      LookUpKey.Strings = (
        'idCliente'
        'idCadCliente')
      ClientDataSet = cdsLookUp
      DataSource = dsPadrao
      ValidaCampoObrigatorio = True
      CampoObrigatorio = True
      LookUpTable = 'vCadClienteFiscal'
      ReturnField = 'descCadCliente'
    end
    object CLookUp3: TCLookUp
      Left = 420
      Top = 8
      Width = 151
      Height = 19
      Alignment = taLeftJustify
      BevelInner = bvSpace
      BevelOuter = bvLowered
      Color = 14149350
      ParentBackground = False
      TabOrder = 3
      Key.Strings = (
        'idFornecedor'
        'idCadFornecedor')
      LookUpKey.Strings = (
        'idCliente'
        'idCadCliente')
      ClientDataSet = cdsLookUp
      DataSource = dsPadrao
      ValidaCampoObrigatorio = True
      CampoObrigatorio = True
      LookUpTable = 'vCadClienteFiscal'
      ReturnField = 'descAbreviada'
    end
    object DBEidEmbarque: TCDBEdit
      Left = 491
      Top = 32
      Width = 83
      Height = 19
      BevelKind = bkTile
      BorderStyle = bsNone
      DataField = 'idEmbarque'
      DataSource = dsPadrao
      TabOrder = 9
      OnKeyDown = DBEidEmbarqueKeyDown
      OnKeyPress = DBEidEmbarqueKeyPress
      AcaoCad = frmPrincipal.actCadSafra
      DecimalControl = True
      KeyMode = kmNormal
    end
    object CLookUp1: TCLookUp
      Left = 832
      Top = 32
      Width = 151
      Height = 19
      Alignment = taLeftJustify
      BevelInner = bvSpace
      BevelOuter = bvLowered
      Color = 14149350
      ParentBackground = False
      TabOrder = 12
      Key.Strings = (
        'idEmbarque'
        'idCadEmbarque')
      LookUpKey.Strings = (
        'idCliente'
        'idCadCliente')
      ClientDataSet = cdsLookUp
      DataSource = dsPadrao
      ValidaCampoObrigatorio = True
      CampoObrigatorio = True
      LookUpTable = 'vCadClienteFiscal'
      ReturnField = 'descAbreviada'
    end
    object LookDescarga: TCLookUp
      Left = 614
      Top = 32
      Width = 212
      Height = 19
      Alignment = taLeftJustify
      BevelInner = bvSpace
      BevelOuter = bvLowered
      Color = 14149350
      ParentBackground = False
      TabOrder = 11
      Key.Strings = (
        'idEmbarque'
        'idCadEmbarque')
      LookUpKey.Strings = (
        'idCliente'
        'idCadCliente')
      ClientDataSet = cdsLookUp
      DataSource = dsPadrao
      ValidaCampoObrigatorio = True
      CampoObrigatorio = True
      LookUpTable = 'vCadClienteFiscal'
      ReturnField = 'descCadCliente'
    end
    object DBEidCadEmbarque: TCDBEdit
      Left = 580
      Top = 32
      Width = 28
      Height = 19
      BevelKind = bkTile
      BorderStyle = bsNone
      DataField = 'idCadEmbarque'
      DataSource = dsPadrao
      TabOrder = 10
      OnKeyDown = DBEidEmbarqueKeyDown
      OnKeyPress = DBEidEmbarqueKeyPress
      AcaoCad = frmPrincipal.actCadSafra
      DecimalControl = True
      KeyMode = kmNormal
    end
  end
  inherited PanTop: TCPanelGradient
    Width = 1084
    ExplicitWidth = 1084
    inherited BtnFechar: TCBitBtn
      Left = 998
      ExplicitLeft = 998
    end
  end
  inherited cxGrid: TcxGrid
    Top = 189
    Width = 1084
    Height = 261
    ExplicitTop = 189
    ExplicitWidth = 1084
    ExplicitHeight = 261
    inherited DBView: TcxGridDBTableView
      OnCellDblClick = DBViewCellDblClick
      DataController.KeyFieldNames = 'idContratoCompra'
      DataController.Summary.DefaultGroupSummaryItems = <
        item
          Kind = skSum
          Position = spFooter
          Column = DBViewidEmpresa
        end
        item
          Kind = skSum
          Position = spFooter
          Column = DBViewvlContratoCompra
        end
        item
          Kind = skSum
          Position = spFooter
          Column = DBViewqtProduto
        end
        item
          Format = 'R$ ,0.00;-R$ ,0.00'
          Kind = skSum
          Position = spFooter
          Column = DBViewvlFrete
        end
        item
          Format = 'R$ ,0.00;-R$ ,0.00'
          Kind = skSum
          Position = spFooter
          Column = DBViewvlIcmsFrete
        end
        item
          Format = 'R$ ,0.00;-R$ ,0.00'
          Kind = skSum
          Position = spFooter
          Column = DBViewvlOutrosImp
        end
        item
          Format = 'R$ ,0.00;-R$ ,0.00'
          Kind = skSum
          Position = spFooter
          Column = DBViewvlImposto
        end
        item
          Format = 'R$ ,0.00;-R$ ,0.00'
          Kind = skSum
          Position = spFooter
          Column = DBViewvlIcms
        end
        item
          Format = 'R$ ,0.00;-R$ ,0.00'
          Kind = skSum
          Position = spFooter
          Column = DBViewvlComissao
        end
        item
          Format = ',0.00; ,0.00'
          Kind = skSum
          Position = spFooter
          Column = DBViewqtArrobas
        end
        item
          Format = ',0.00; ,0.00'
          Kind = skSum
          Position = spFooter
          Column = DBViewqtSacas
        end
        item
          Format = 'R$ ,0.00;-R$ ,0.00'
          Kind = skSum
          Position = spFooter
          Column = DBViewvlTotalProdutos
        end>
      DataController.Summary.FooterSummaryItems = <
        item
          Format = ',0.00; ,0.00'
          Kind = skSum
          Column = DBViewqtProduto
        end
        item
          Format = 'R$ ,0.00;-R$ ,0.00'
          Kind = skSum
          Column = DBViewvlContratoCompra
        end
        item
          Format = 'R$ ,0.00;-R$ ,0.00'
          Kind = skSum
          Column = DBViewvlFrete
        end
        item
          Format = 'R$ ,0.00;-R$ ,0.00'
          Kind = skSum
          Column = DBViewvlIcmsFrete
        end
        item
          Format = 'R$ ,0.00;-R$ ,0.00'
          Kind = skSum
          Column = DBViewvlOutrosImp
        end
        item
          Format = 'R$ ,0.00;-R$ ,0.00'
          Kind = skSum
          Column = DBViewvlImposto
        end
        item
          Format = 'R$ ,0.00;-R$ ,0.00'
          Kind = skSum
          Column = DBViewvlIcms
        end
        item
          Format = 'R$ ,0.00;-R$ ,0.00'
          Kind = skSum
          Column = DBViewvlComissao
        end
        item
          Format = ',0.00; ,0.00'
          Kind = skSum
          Column = DBViewqtArrobas
        end
        item
          Format = ',0.00; ,0.00'
          Kind = skSum
          Column = DBViewqtSacas
        end
        item
          Format = 'R$ ,0.00;-R$ ,0.00'
          Kind = skSum
          Column = DBViewvlTotalProdutos
        end>
      OptionsData.CancelOnExit = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsView.NoDataToDisplayInfoText = '<Sem Dados Para Listar>'
      OptionsView.Footer = True
      OptionsView.GroupFooters = gfAlwaysVisible
      object DBViewidEmpresa: TcxGridDBColumn
        Caption = 'Empresa'
        DataBinding.FieldName = 'idEmpresa'
        Width = 62
      end
      object DBViewidCadEmpresa: TcxGridDBColumn
        Caption = 'Filial'
        DataBinding.FieldName = 'idCadEmpresa'
        Width = 62
      end
      object DBViewidFornecedor: TcxGridDBColumn
        Caption = 'Fornecedor'
        DataBinding.FieldName = 'idFornecedor'
        Visible = False
        GroupIndex = 0
      end
      object DBViewdescAbreviada: TcxGridDBColumn
        Caption = 'Descri'#231#227'o'
        DataBinding.FieldName = 'descAbreviada'
        Width = 250
      end
      object DBViewidContratoCompra: TcxGridDBColumn
        Caption = 'Contrato'
        DataBinding.FieldName = 'idContratoCompra'
        Width = 100
      end
      object DBViewdescSafra: TcxGridDBColumn
        Caption = 'Safra'
        DataBinding.FieldName = 'descSafra'
        Width = 230
      end
      object DBViewdtEmissao: TcxGridDBColumn
        Caption = 'Emiss'#227'o'
        DataBinding.FieldName = 'dtEmissao'
        Width = 80
      end
      object DBViewstContratoCompra: TcxGridDBColumn
        Caption = 'Status'
        DataBinding.FieldName = 'stContratoCompra'
        Width = 80
      end
      object DBViewqtProduto: TcxGridDBColumn
        Caption = 'Qtde. Produto'
        DataBinding.FieldName = 'qtProduto'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.DisplayFormat = ',0.00; ,0.00'
        Width = 80
      end
      object DBViewvlProduto: TcxGridDBColumn
        Caption = 'Vlr. Produto'
        DataBinding.FieldName = 'vlProduto'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Width = 75
      end
      object DBViewvlTotalProdutos: TcxGridDBColumn
        Caption = 'Vlr. Total Prod.'
        DataBinding.FieldName = 'vlTotalProdutos'
        Width = 170
      end
      object DBViewvlFrete: TcxGridDBColumn
        Caption = 'Vlr. Frete'
        DataBinding.FieldName = 'vlFrete'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Width = 80
      end
      object DBViewvlIcmsFrete: TcxGridDBColumn
        Caption = 'Vlr. Icms Frete'
        DataBinding.FieldName = 'vlIcmsFrete'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Width = 75
      end
      object DBViewvlOutrosImp: TcxGridDBColumn
        Caption = 'Vlr. Outros Imp.'
        DataBinding.FieldName = 'vlOutrosImp'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Width = 75
      end
      object DBViewvlImposto: TcxGridDBColumn
        Caption = 'Vlr. Imposto'
        DataBinding.FieldName = 'vlImposto'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Width = 75
      end
      object DBViewvlIcms: TcxGridDBColumn
        Caption = 'Vrl. Icms'
        DataBinding.FieldName = 'vlIcms'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Width = 75
      end
      object DBViewvlComissao: TcxGridDBColumn
        Caption = 'Vlr. Comiss'#227'o'
        DataBinding.FieldName = 'vlComissao'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Width = 75
      end
      object DBViewqtArrobas: TcxGridDBColumn
        Caption = 'Arrobas'
        DataBinding.FieldName = 'qtArrobas'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.DisplayFormat = ',0.00; ,0.00'
        Width = 75
      end
      object DBViewqtSacas: TcxGridDBColumn
        Caption = 'Sacas'
        DataBinding.FieldName = 'qtSacas'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.DisplayFormat = ',0.00; ,0.00'
        Width = 80
      end
      object DBViewvlContratoCompra: TcxGridDBColumn
        Caption = 'Valor'
        DataBinding.FieldName = 'vlContratoCompra'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Width = 80
      end
    end
  end
  object PanEmpresa: TCPanelGradient [5]
    Left = 0
    Top = 30
    Width = 1084
    Height = 28
    Align = alTop
    Caption = 'PanEmpresa'
    TabOrder = 3
    CaptionNo = 0
    HintNo = 0
    BackgroundGradientColor = 15201011
    BackgroundGradientDirection = gdVertical
    TextColor = clBlack
    GradientColor = clBlack
    RegularButtonColor = clBlack
    SelectedButtonColor = clBlack
    ButtonOptions = []
    object lblEmpresa: TCLabel
      Left = 12
      Top = 8
      Width = 41
      Height = 13
      Alignment = taRightJustify
      Caption = 'Empresa'
      Transparent = True
    end
    object lblCNPJ: TCLabel
      Left = 5
      Top = 30
      Width = 48
      Height = 13
      Alignment = taRightJustify
      Caption = 'CNPJ/CPF'
      Transparent = True
    end
    object lblInscricao: TCLabel
      Left = 191
      Top = 30
      Width = 72
      Height = 13
      Alignment = taRightJustify
      Caption = 'Inscr. Estadual'
      Transparent = True
    end
    object DBEidEmpresa: TCDBEdit
      Left = 59
      Top = 5
      Width = 46
      Height = 19
      TabStop = False
      BevelKind = bkTile
      BorderStyle = bsNone
      DataField = 'idEmpresa'
      DataSource = dsPadrao
      TabOrder = 1
      DecimalControl = True
      KeyMode = kmNormal
    end
    object DBEidCadEmpresa: TCDBEdit
      Left = 111
      Top = 5
      Width = 46
      Height = 19
      TabStop = False
      BevelKind = bkTile
      BorderStyle = bsNone
      DataField = 'idCadEmpresa'
      DataSource = dsPadrao
      TabOrder = 2
      DecimalControl = True
      KeyMode = kmNormal
    end
    object LookdescCadEmpresa: TCLookUp
      Left = 163
      Top = 5
      Width = 214
      Height = 19
      Alignment = taLeftJustify
      BevelInner = bvSpace
      BevelOuter = bvLowered
      Color = 14149350
      ParentBackground = False
      TabOrder = 3
      Key.Strings = (
        'idEmpresa'
        'idCadEmpresa')
      LookUpKey.Strings = (
        'idEmpresa'
        'idCadEmpresa')
      ClientDataSet = cdsLookUp
      DataSource = dsPadrao
      ValidaCampoObrigatorio = True
      CampoObrigatorio = True
      LookUpTable = 'vCadEmpresaFiscal'
      ReturnField = 'descCadEmpresa'
    end
    object LookdescAbreviada: TCLookUp
      Left = 383
      Top = 5
      Width = 151
      Height = 19
      Alignment = taLeftJustify
      BevelInner = bvSpace
      BevelOuter = bvLowered
      Color = 14149350
      ParentBackground = False
      TabOrder = 4
      Key.Strings = (
        'idEmpresa'
        'idCadEmpresa')
      LookUpKey.Strings = (
        'idEmpresa'
        'idCadEmpresa')
      ClientDataSet = cdsLookUp
      DataSource = dsPadrao
      ValidaCampoObrigatorio = True
      CampoObrigatorio = True
      LookUpTable = 'vCadEmpresaFiscal'
      ReturnField = 'descAbreviada'
    end
    object lookidCnpjCpf: TCLookUp
      Left = 210
      Top = 2
      Width = 126
      Height = 19
      Alignment = taLeftJustify
      BevelInner = bvSpace
      BevelOuter = bvLowered
      Color = 14149350
      ParentBackground = False
      TabOrder = 0
      Visible = False
      Key.Strings = (
        'idEmpresa'
        'idCadEmpresa')
      LookUpKey.Strings = (
        'idEmpresa'
        'idCadEmpresa')
      ClientDataSet = cdsLookUp
      ValidaCampoObrigatorio = True
      CampoObrigatorio = True
      LookUpTable = 'vCadEmpresaFiscal'
      ReturnField = 'idCnpjCpf'
    end
    object LookidInscEstadual: TCLookUp
      Left = 269
      Top = 27
      Width = 126
      Height = 19
      Alignment = taLeftJustify
      BevelInner = bvSpace
      BevelOuter = bvLowered
      Color = 14149350
      ParentBackground = False
      TabOrder = 7
      Key.Strings = (
        'idEmpresa'
        'idCadEmpresa')
      LookUpKey.Strings = (
        'idEmpresa'
        'idCadEmpresa')
      ClientDataSet = cdsLookUp
      ValidaCampoObrigatorio = True
      CampoObrigatorio = True
      LookUpTable = 'vCadEmpresaFiscal'
      ReturnField = 'idInscEstadual'
    end
    object DBCKconsolidafilial: TCDBCheckBox
      Left = 662
      Top = 6
      Width = 64
      Height = 17
      Caption = 'Filiais?'
      DataField = 'consolidafilial'
      DataSource = dsPadrao
      TabOrder = 6
      ValueChecked = 'S'
      ValueUnchecked = 'N'
    end
    object DBCKconsolidaemp: TCDBCheckBox
      Left = 540
      Top = 6
      Width = 116
      Height = 17
      Caption = 'Consolida Empresa?'
      Color = clBtnFace
      DataField = 'consolidaemp'
      DataSource = dsPadrao
      ParentColor = False
      TabOrder = 5
      ValueChecked = 'S'
      ValueUnchecked = 'N'
    end
  end
  inherited imgIcones: TImageList
    Bitmap = {
      494C0101030004003C0010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
      000000000000000000000000000000000000FDFDFF00CED7EF00AEB8E000AEB8
      E000B0B9E100B0B9E100B0B9E100AFBAE200ADB9E300ADB9E300ACB7E300ABB6
      E300ABB6E300AAB5E100CDD6ED00FDFDFF0000000000C2C2C2FF404040FF1E1E
      1EFF252525FF252525FF252525FF252525FF252525FF252525FF252525FF2525
      25FF1E1E1EFF353535FF8A8A8AFFFEFEFEFF0000000000000001000000200000
      001E0000001B00000019000000170000001600000016000000180000001A0000
      001D0000001E0000001900000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CED8F3003F5BC9001234BA001638
      BD001C3CBC001C3CBC00183BBE00183BBF001439C1001137C3000B33C2000831
      C200022DC2000029BC003752B900CDD6ED0000000000C4C4C4FFFCFCFCFFFBFB
      FBFFFBFBFBFFFBFBFBFFFBFBFBFFFAFAFAFFFAFAFAFFF9F9F9FFF9F9F9FFF8F8
      F8FFCBCBCBFF434343FF505050FFB8B8B8FF00000000050505300C0C0C113131
      31425151515178787889A1A1A1A9B4B4B4C6AAAAAABC8F8F8F986B6B6B814545
      4558181818181919191A00000008000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000AEBBF100143BD700214ADF002B50
      DE003255DE002F53DE002F54DF002B53DF00244FE0001F4FE400164AE3000F45
      E500073CE2000236DC000029BC00AAB5E10000000000C6C6C6FFFAFAFAFFFCFC
      FCFFFCFCFCFFFCFCFCFFFBFBFBFFFBFBFBFFFAFAFAFFF9F9F9FFF9F9F9FFC9C9
      C9FF434343FF6F6F6FFF4E4E4EFFD4D4D4FF000000000505052F131313263A3A
      3A3A46464674BABABABA818181B3F0F0F0F0D6D6D6E29B9B9BC88E8E8E9C5757
      5759313131531A1A1A1B00000008000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B0BEF4001D44DF002D53E200365A
      E3004161E4004B6AE6008AA0F000ADC0F600A9BBF4007B97F0002A5BE900144C
      E9000B42E600063CE200032DC200ABB6E30000000000C6C6C6FFF8F8F8FFFAFA
      FAFFFAFAFAFFF9F9F9FFF9F9F9FFF8F8F8FFF7F7F7FFF7F7F7FFC6C6C6FF4444
      44FF767676FF5C5C5CFF979797FF00000000000000000505052E0C0C0C134444
      446587878787929292B1929292A5F1F1F1F1A7A7A7AD8E8E8E8E6A6A6A8A5959
      595A333333531B1B1B1B00000008000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B2BFF400264BE000395EE5004465
      E5007E93ED00DDE3FA00D8DFF900B3C2F500B3C3F600D5DFFB00D2DDFA00537E
      EF001049E9000A41E500052FC300ABB7E30000000000C6C6C6FFF7F7F7FFF6F6
      F6FFF2F2F1FFEAEAEAFFECECECFFF2F2F2FFF5F5F5FFCACACAFF464646FF7C7C
      7CFF5F5F5FFFD0D0D0FFB1B1B1FF00000000000000000505052F0B0B0B136189
      80DD807F7F8E939292B0919091A3F1F1F1F1999898B4888888A3939393934C4C
      4C6F1919191B1B1B1B1C00000008000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B4C1F4003054E1004463E5005975
      E800DDE3FA00BEC9F600637EEA004368E7003E67E8004D76EC00B9C9F700D0DA
      FA002154E8001146E3000C35C400ADB8E30000000000C6C6C6FFE7E7E7FFABAB
      ABFF979797FF989898FF969696FFAEAEAEFFD5D5D5FF5D5D5DFF838383FF6262
      62FFD2D2D2FFEBEBEBFFB1B1B1FF00000000000000000505052F1213131F3A3A
      3A44719B90F3D7F7EFFF8AB1A8FFFBFFFFFFACDDD2FF747474AD949494946161
      616A2F2F2F521A1A1A1B00000008000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B7C4F5003659E3004C69E5009AAB
      F100D6DCF900637DE9004A69E600C1CDF700BBC9F7002E5CE800466EEA00D2DB
      FA007593EF00194CE4001338C200AEB9E30000000000B4B4B4FF989898FFC3C3
      C3FFDDDDDDFFE2E2E2FFDADADAFFBDBDBDFF7D7D7DFF9B9B9BFF707070FFD1D1
      D1FFEBEBEBFFE2E2E2FFB1B1B1FF00000000000000000505052F0C0C0C0F3131
      3141505050506C6B6B898E9090B6999C9BCDB1D4CCF491D6C6FF607F77C23D3A
      3B591D1D1D1F1B1B1B1C00000008000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000BAC6F5004061E5005370E700C1CB
      F700B3BEF500516EE7004968E600C1CBF600BBC8F6002F57E3002957E700A9BA
      F500A3B7F4001E4DE100193CC000B0BBE300F6F6F6FF898989FFCECECEFFE7E7
      E7FFEBEBEBFFECECECFFE9E9E9FFE6E6E6FFCECECEFF898989FFD1D1D1FFE9E9
      E9FFE1E1E1FFD3D3D3FFB1B1B1FF00000000000000000505052F090909093233
      33454A494955757474789B9A9A9DB1B0B1B9A6A5A5AF8A9694BC6BC0ADFB3AB8
      9AFF35584F981515151B00000008000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000BCC7F5004967E5005B76E800C4CD
      F700B3BEF500516EE7004766E500C1CBF600BBC7F6002F55E2002954E500A8B8
      F300A7B9F400254DDE001D3EBF00B1BBE300B8B8B8FF9D9D9DFFE1E1E1FFE9E9
      E9FFECECECFFEEEEEEFFEAEAEAFFE7E7E7FFE1E1E1FFADADADFFA3A3A3FFE2E2
      E2FFD5D5D5FFC6C6C6FFB6B6B6FF00000000000000000505052F090909092A29
      2A2C727E7BA1D4E9E3F8DCF2EDFED9EBE7FAC8E9E1FD8585859C615E5F633736
      363B171717191B1B1B1C00000008000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000BEC9F600516EE600627CE900A7B5
      F200D6DDF900637DE9004766E500C1CBF600BAC6F5002F54E2004367E700D0D9
      F9007E95EE002B4FDE002141C000B2BCE200A9A9A9FFAEAEAEFFDEDEDEFFE2E2
      E2FFE7E7E7FFEAEAEAFFE4E4E4FFE0E0E0FFDDDDDDFFC1C1C1FF868686FFD3D3
      D3FFC6C6C6FFAFAFAFFFBBBBBBFF00000000000000000505052F090909092D2D
      2D2D53535353787878799A99999DBABABABAA2A1A1B39DB2ADD280B7AAE2586A
      66921C1C1C1D1B1B1B1C00000008000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000BFCAF6005974E7006D86EA00758C
      EB00E0E8FC00B9C4F5005F79E8004563E5003C5EE3004B6BE600B4C2F400D7DE
      FA003B5DE4002D52DE002443C000B3BCE200ACACACFFB3B3B3FFD9D9D9FFDDDD
      DDFFE4E4E4FFE5E5E5FFDCDCDCFFD8D8D8FFD6D6D6FFBCBCBCFF7B7B7BFFB0B0
      B0FFAFAFAFFF959595FFC1C1C1FF00000000000000000505052F090909092D2D
      2D2D535353537B7B7B7B9F9F9F9FBBBBBBBBB0B0B0B08F8F8F8F686868684141
      41411E1E1E1E1B1B1B1C00000008000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C2CCF600647EE900778FEC006D86
      EA0091A3EF00E6EAFB00D3DAF900ABB9F400A9B8F300CFD8F800D9E2FA006A84
      EA003055E2002F53DE002443C000B3BCE200B6B6B6FFB1B1B1FFD6D6D6FFE0E0
      E0FFE7E7E7FFE6E6E6FFDFDFDFFFD5D5D5FFCCCCCCFF8B8B8BFF606060FF7D7D
      7DFF949494FFA2A2A2FFD8D8D8FF00000000000000000505052F090909092D2D
      2D2D535353537B7B7B7B9F9F9F9FBBBBBBBBB0B0B0B090909090696969694141
      41411C1C1C1C1A1A1A1B00000008000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C4CEF7007089EB008DA1EF007E94
      ED006C86EA00728AEB00A6B4F300C5CEF700C3CDF60098A9F0005772E7004262
      E4003B5DE3003254DE001E3EBE00B1BBE200BFBFBFFFB1B1B1FFDBDBDBFFE3E3
      E3FFE5E5E5FFE6E6E6FFE3E3E3FFD6D6D6FFC4C4C4FF787878FFC1C1C1FFFBFB
      FBFFDFDFDFFFAEAEAEFFEBEBEBFF00000000000000000505052F090909092D2D
      2D2D535353537B7B7B7B9F9F9F9FBBBBBBBBB0B0B0B0909090906B6B6B856161
      617A5B5B5B7F5A5A5A9700000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C7D1F7007D93ED009CADF100899D
      EF00788FEC006E86EA006982EA00647EE900627BE9005D77E8005672E8004D6B
      E6004161E4003255DE001D3DBE00B0BAE100E1E1E1FFA4A4A4FFD9D9D9FFE7E7
      E7FFE8E8E8FFE8E8E8FFE3E3E3FFD6D6D6FFABABABFF848484FFF7F7F7FFDFDF
      DFFFABABABFFE0E0E0FF0000000000000000000000000505052F090909092D2D
      2D2D535353537B7B7B7B9F9F9F9FBBBBBBBBB0B0B0B08F8F8F8F767676959B9B
      9B9BC3C3C3CB0000000600000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000DAE3FA00869BEE00788FEC006B84
      EA005E79E8005974E7005470E700506DE6004E6BE6004867E5004464E5003E5F
      E4003055E200264BDB004963CD00D0D9F00000000000B5B5B5FFA1A1A1FFCCCC
      CCFFDFDFDFFFE2E2E2FFD2D2D2FFADADADFFB2B2B2FFBBBBBBFFDFDFDFFFAFAF
      AFFFE1E1E1FF000000000000000000000000000000000505052F090909092D2D
      2D2D535353537B7B7B7B9F9F9F9FBBBBBBBBB0B0B0B08F8F8F8F808080A2C9C9
      C9D3000000050000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FEFEFF00DAE2FA00C7D0F700C5CE
      F700C1CCF600BFCBF600BECAF600BECAF600BDC9F600BBC7F500BAC6F500BAC6
      F500B6C3F500B4C0F200D1DBF500FEFEFF0000000000DADADAFFB7B7B7FF9E9E
      9EFFA3A3A3FF9A9A9AFF939393FFA6A6A6FFB5B5B5FFB9B9B9FFC6C6C6FFE7E7
      E7FF000000000000000000000000000000000000000001010120292929323A3A
      3A494E4E4E626262627B76767693848484A57F7F7F9E6D6D6D88717171A60000
      0003000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF0000008000800100000000800080010000
      0000800080010000000080018001000000008001800100000000800180010000
      0000800180010000000000018001000000000001800100000000000180010000
      0000000180010000000000018001000000000001800100000000000380030000
      00008007800700000000800F800F000000000000000000000000000000000000
      000000000000}
  end
  inherited cdsPadrao: TClientDataSet
    AfterInsert = cdsPadraoAfterInsert
    object cdsPadraoidCadEmpresa: TIntegerField
      FieldName = 'idCadEmpresa'
    end
    object cdsPadraoidFornecedor: TIntegerField
      FieldName = 'idFornecedor'
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
    object cdsPadraoconsolidaemp: TStringField
      FieldName = 'consolidaemp'
      Size = 1
    end
    object cdsPadraoconsolidafilial: TStringField
      FieldName = 'consolidafilial'
      Size = 1
    end
    object cdsPadraostCancelado: TBooleanField
      FieldName = 'stCancelado'
    end
    object cdsPadraostEncerrado: TBooleanField
      FieldName = 'stEncerrado'
    end
    object cdsPadraoidSafra: TIntegerField
      FieldName = 'idSafra'
    end
    object cdsPadraoidProduto: TIntegerField
      FieldName = 'idProduto'
    end
    object cdsPadraonrOrigIni: TStringField
      FieldName = 'nrOrigIni'
    end
    object cdsPadraonrOrigFim: TStringField
      FieldName = 'nrOrigFim'
    end
    object cdsPadraoidContratoIni: TStringField
      FieldName = 'idContratoIni'
    end
    object cdsPadraoidContratoFim: TStringField
      FieldName = 'idContratoFim'
    end
    object cdsPadraoidCadFornecedor: TIntegerField
      FieldName = 'idCadFornecedor'
    end
    object cdsPadraoidEmbarque: TIntegerField
      FieldName = 'idEmbarque'
    end
    object cdsPadraoidCadEmbarque: TSmallintField
      FieldName = 'idCadEmbarque'
    end
  end
  inherited sdsGrid: TSQLDataSet
    CommandText = 
      'SELECT con.idEmpresa, con.idCadEmpresa, con.idFornecedor, con.id' +
      'CadFornecedor, cad.descAbreviada,  idContratoCompra, dtEmissao, ' +
      'vlContratoCompra, stContratoCompra, con.qtProduto,  con.vlProdut' +
      'o, con.qtArrobas, con.qtSacas, vlIcms, vlImposto, vlOutrosImp, v' +
      'lIcmsFrete,  vlFrete, vlComissao, CONVERT(MONEY, SUM(con.vlProdu' +
      'to*con.qtProduto)) vlTotalProdutos,s.descSafra FROM ContratoComp' +
      'ra con  INNER JOIN vCadClienteContabil cad ON con.idFornecedor =' +
      ' cad.idCliente INNER JOIN Safra s  ON con.idSafra = s.idSafra AN' +
      'D con.idEmpresa = s.idEmpresa  WHERE 1=1  GROUP BY con.idEmpresa' +
      ', con.idCadEmpresa, con.idFornecedor, con.idCadFornecedor, cad.d' +
      'escAbreviada, idContratoCompra, dtEmissao, vlContratoCompra, stC' +
      'ontratoCompra, con.qtProduto,  con.vlProduto, con.qtArrobas, con' +
      '.qtSacas, vlIcms, vlImposto, vlOutrosImp, vlIcmsFrete,  vlFrete,' +
      ' vlComissao, s.descSafra'
  end
  inherited cdsGrid: TClientDataSet
    CommandText = 
      'SELECT con.idEmpresa, con.idCadEmpresa, con.idFornecedor, con.id' +
      'CadFornecedor, cad.descAbreviada,  idContratoCompra, dtEmissao, ' +
      'vlContratoCompra, stContratoCompra, con.qtProduto,  con.vlProdut' +
      'o, con.qtArrobas, con.qtSacas, vlIcms, vlImposto, vlOutrosImp, v' +
      'lIcmsFrete,  vlFrete, vlComissao, CONVERT(MONEY, SUM(con.vlProdu' +
      'to*con.qtProduto)) vlTotalProdutos,s.descSafra FROM ContratoComp' +
      'ra con  INNER JOIN vCadClienteContabil cad ON con.idFornecedor =' +
      ' cad.idCliente INNER JOIN Safra s  ON con.idSafra = s.idSafra AN' +
      'D con.idEmpresa = s.idEmpresa  WHERE 1=1  GROUP BY con.idEmpresa' +
      ', con.idCadEmpresa, con.idFornecedor, con.idCadFornecedor, cad.d' +
      'escAbreviada, idContratoCompra, dtEmissao, vlContratoCompra, stC' +
      'ontratoCompra, con.qtProduto,  con.vlProduto, con.qtArrobas, con' +
      '.qtSacas, vlIcms, vlImposto, vlOutrosImp, vlIcmsFrete,  vlFrete,' +
      ' vlComissao, s.descSafra '
    object cdsGrididEmpresa: TIntegerField
      FieldName = 'idEmpresa'
      Required = True
    end
    object cdsGrididCadEmpresa: TSmallintField
      FieldName = 'idCadEmpresa'
      Required = True
    end
    object cdsGriddescAbreviada: TStringField
      FieldName = 'descAbreviada'
      Required = True
      Size = 30
    end
    object cdsGriddtEmissao: TSQLTimeStampField
      FieldName = 'dtEmissao'
      Required = True
    end
    object cdsGridqtProduto: TFMTBCDField
      FieldName = 'qtProduto'
      Required = True
      Precision = 18
      Size = 3
    end
    object cdsGridvlProduto: TFMTBCDField
      FieldName = 'vlProduto'
      Required = True
      Precision = 19
      Size = 4
    end
    object cdsGridqtArrobas: TFMTBCDField
      FieldName = 'qtArrobas'
      Precision = 15
      Size = 3
    end
    object cdsGridqtSacas: TFMTBCDField
      FieldName = 'qtSacas'
      Precision = 15
      Size = 3
    end
    object cdsGridvlIcms: TFMTBCDField
      FieldName = 'vlIcms'
      Precision = 19
      Size = 4
    end
    object cdsGridvlImposto: TFMTBCDField
      FieldName = 'vlImposto'
      Required = True
      Precision = 19
      Size = 4
    end
    object cdsGridvlOutrosImp: TFMTBCDField
      FieldName = 'vlOutrosImp'
      Precision = 19
      Size = 4
    end
    object cdsGridvlIcmsFrete: TFMTBCDField
      FieldName = 'vlIcmsFrete'
      Precision = 19
      Size = 4
    end
    object cdsGridvlFrete: TFMTBCDField
      FieldName = 'vlFrete'
      Required = True
      Precision = 19
      Size = 4
    end
    object cdsGridvlComissao: TFMTBCDField
      FieldName = 'vlComissao'
      Precision = 19
      Size = 4
    end
    object cdsGridvlTotalProdutos: TFMTBCDField
      DisplayWidth = 80
      FieldName = 'vlTotalProdutos'
      currency = True
      Precision = 19
      Size = 4
    end
    object cdsGriddescSafra: TStringField
      FieldName = 'descSafra'
      Required = True
      Size = 50
    end
    object cdsGrididFornecedor: TIntegerField
      FieldName = 'idFornecedor'
      Required = True
    end
    object cdsGrididContratoCompra: TStringField
      FieldName = 'idContratoCompra'
      Required = True
      Size = 30
    end
    object cdsGridvlContratoCompra: TFMTBCDField
      FieldName = 'vlContratoCompra'
      Required = True
      Precision = 19
      Size = 4
    end
    object cdsGridstContratoCompra: TStringField
      FieldName = 'stContratoCompra'
      Required = True
      Size = 15
    end
    object cdsGrididCadFornecedor: TSmallintField
      FieldName = 'idCadFornecedor'
      Required = True
    end
  end
  inherited StyleRepository: TcxStyleRepository
    PixelsPerInch = 96
  end
end
