inherited FrmPesSerContrato: TFrmPesSerContrato
  Caption = 'Pesquisa de Contratos de Servi'#231'os'
  ClientWidth = 1065
  ExplicitWidth = 1081
  ExplicitHeight = 489
  PixelsPerInch = 96
  TextHeight = 13
  inherited BevGrid: TBevel
    Top = 65
    Width = 1065
  end
  inherited BevTop: TBevel
    Width = 1065
    Height = 35
    ExplicitTop = 30
    ExplicitWidth = 1065
    ExplicitHeight = 35
  end
  object lblEmpresa: TCLabel [2]
    Left = 37
    Top = 42
    Width = 41
    Height = 13
    Alignment = taRightJustify
    Caption = 'Empresa'
    Transparent = True
  end
  inherited PanTopo: TCPanelGradient
    Top = 69
    Width = 1065
    Height = 89
    ExplicitTop = 75
    ExplicitWidth = 1065
    ExplicitHeight = 89
    object CLabel7: TCLabel [0]
      Left = 34
      Top = 11
      Width = 33
      Height = 13
      Alignment = taRightJustify
      Caption = 'Cliente'
      Transparent = True
    end
    object CLabel9: TCLabel [1]
      Left = 546
      Top = 11
      Width = 48
      Height = 13
      Alignment = taRightJustify
      Caption = 'CNPJ/CPF'
      Transparent = True
    end
    object CLabel8: TCLabel [2]
      Left = 439
      Top = 35
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
    object CLabel4: TCLabel [3]
      Left = 565
      Top = 35
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
    object CLabel5: TCLabel [4]
      Left = 663
      Top = 35
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
    object CLabel6: TCLabel [5]
      Left = 788
      Top = 35
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
    object CLabel10: TCLabel [6]
      Left = 482
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
    object CLabel12: TCLabel [7]
      Left = 311
      Top = 61
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
    object CLabel1: TCLabel [8]
      Left = 29
      Top = 35
      Width = 38
      Height = 13
      Alignment = taRightJustify
      Caption = 'Produto'
    end
    object CLabel3: TCLabel [9]
      Left = 706
      Top = 11
      Width = 35
      Height = 13
      Alignment = taRightJustify
      Caption = 'Servi'#231'o'
    end
    inherited BtnExecutar: TCBitBtn
      Left = 618
      Top = 56
      ExplicitLeft = 618
      ExplicitTop = 56
    end
    object DBEidCliente: TCDBEdit
      Left = 73
      Top = 8
      Width = 46
      Height = 19
      BevelKind = bkTile
      BorderStyle = bsNone
      DataField = 'idCliente'
      DataSource = dsPadrao
      TabOrder = 1
      Find = dmFind.FindFornecedor
      DecimalControl = True
      KeyMode = kmNormal
    end
    object LookDescCadCliente: TCLookUp
      Left = 125
      Top = 8
      Width = 236
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
      ReturnField = 'descCadCliente'
    end
    object LookDescAbreviadaCliente: TCLookUp
      Left = 367
      Top = 8
      Width = 173
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
      ValidaCampoObrigatorio = False
      CampoObrigatorio = True
      LookUpTable = 'vCadClienteContabil'
      ReturnField = 'descAbreviada'
    end
    object LookidCnpjCpfCliente: TCLookUp
      Left = 600
      Top = 8
      Width = 100
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
      ClientDataSet = cdsLookUp
      DataSource = dsPadrao
      ValidaCampoObrigatorio = False
      CampoObrigatorio = True
      LookUpTable = 'vCadClienteContabil'
      ReturnField = 'idCnpjCpf'
    end
    object DBEidContratoIni: TCDBEdit
      Left = 503
      Top = 32
      Width = 60
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
      TabOrder = 5
      DecimalControl = True
      KeyMode = kmUSUpper
    end
    object DBEidContratoFim: TCDBEdit
      Left = 587
      Top = 32
      Width = 60
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
      TabOrder = 6
      DecimalControl = True
      KeyMode = kmUSUpper
    end
    object DBEdtInicial: TCDBEdit
      Left = 707
      Top = 32
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
      TabOrder = 7
      DecimalControl = True
      KeyMode = kmDate
    end
    object DBEdtFinal: TCDBEdit
      Left = 810
      Top = 32
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
      TabOrder = 8
      DecimalControl = True
      KeyMode = kmDate
    end
    object DBCKstAtivo: TCDBCheckBox
      Left = 73
      Top = 60
      Width = 48
      Height = 17
      Caption = 'Ativo'
      DataField = 'stAtivo'
      DataSource = dsPadrao
      TabOrder = 9
    end
    object DBCKstCancelado: TCDBCheckBox
      Left = 232
      Top = 60
      Width = 70
      Height = 17
      Caption = 'Cancelado'
      DataField = 'stCancelado'
      DataSource = dsPadrao
      TabOrder = 10
    end
    object DBCKstEncerrado: TCDBCheckBox
      Left = 144
      Top = 60
      Width = 73
      Height = 17
      Caption = 'Encerrado'
      DataField = 'stEncerrado'
      DataSource = dsPadrao
      TabOrder = 11
    end
    object DBEnrOrigFim: TCDBEdit
      Left = 505
      Top = 58
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
      TabOrder = 12
      DecimalControl = True
      KeyMode = kmNormal
    end
    object DBEnrOrigIni: TCDBEdit
      Left = 374
      Top = 58
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
      TabOrder = 13
      DecimalControl = True
      KeyMode = kmNormal
    end
    object CLookUp1: TCLookUp
      Left = 139
      Top = 32
      Width = 246
      Height = 19
      Alignment = taLeftJustify
      BevelInner = bvSpace
      BevelOuter = bvLowered
      Color = 14149350
      ParentBackground = False
      TabOrder = 14
      Key.Strings = (
        'idProduto')
      LookUpKey.Strings = (
        'idProduto')
      AlternateSQL.Strings = (
        'SELECT descProduto WHERE idProdCategoria <> 3 AND idProduto = ?')
      ClientDataSet = cdsLookUp
      DataSource = dsPadrao
      ValidaCampoObrigatorio = True
      CampoObrigatorio = True
      LookUpTable = 'Produto'
      ReturnField = 'descProduto'
    end
    object LookProdMedida: TCLookUp
      Left = 391
      Top = 32
      Width = 42
      Height = 19
      Alignment = taLeftJustify
      BevelInner = bvSpace
      BevelOuter = bvLowered
      Color = 14149350
      ParentBackground = False
      TabOrder = 15
      Key.Strings = (
        'idProduto')
      LookUpKey.Strings = (
        'idProduto')
      AlternateSQL.Strings = (
        
          'SELECT ProdMedida.descAbreviada FROM Produto, ProdMedida WHERE P' +
          'roduto.idProdMedida = ProdMedida.idProdMedida AND Produto.idProd' +
          'uto = ?')
      ClientDataSet = cdsLookUp
      DataSource = dsPadrao
      ValidaCampoObrigatorio = False
      CampoObrigatorio = True
      LookUpTable = 'Produto'
      ReturnField = 'descAbreviada'
    end
    object CDBEdit1: TCDBEdit
      Left = 73
      Top = 32
      Width = 60
      Height = 19
      BevelKind = bkTile
      BorderStyle = bsNone
      DataField = 'idProduto'
      DataSource = dsPadrao
      TabOrder = 16
      Find = dmFind.FindProduto
      AcaoCad = frmPrincipal.actCadProduto
      DecimalControl = True
      KeyMode = kmNormal
    end
    object DBEidServico: TCDBEdit
      Left = 748
      Top = 8
      Width = 60
      Height = 19
      BevelKind = bkTile
      BorderStyle = bsNone
      DataField = 'idServico'
      DataSource = dsPadrao
      TabOrder = 17
      Find = dmFind.FindServico
      AcaoCad = frmPrincipal.actCadProduto
      DecimalControl = True
      KeyMode = kmNormal
    end
    object LookProdMedidaSer: TCLookUp
      Left = 1030
      Top = 8
      Width = 30
      Height = 19
      Alignment = taLeftJustify
      BevelInner = bvSpace
      BevelOuter = bvLowered
      Color = 14149350
      ParentBackground = False
      TabOrder = 18
      Key.Strings = (
        'idServico')
      LookUpKey.Strings = (
        'idProduto')
      AlternateSQL.Strings = (
        
          'SELECT ProdMedida.descAbreviada FROM Produto, ProdMedida WHERE P' +
          'roduto.idProdMedida = ProdMedida.idProdMedida AND Produto.idProd' +
          'uto = ?')
      ClientDataSet = cdsLookUp
      DataSource = dsPadrao
      ValidaCampoObrigatorio = False
      CampoObrigatorio = True
      LookUpTable = 'Produto'
      ReturnField = 'descAbreviada'
    end
    object LookServico: TCLookUp
      Left = 814
      Top = 8
      Width = 210
      Height = 19
      Alignment = taLeftJustify
      BevelInner = bvSpace
      BevelOuter = bvLowered
      Color = 14149350
      ParentBackground = False
      TabOrder = 19
      Key.Strings = (
        'idServico')
      LookUpKey.Strings = (
        'idProduto')
      AlternateSQL.Strings = (
        'SELECT descProduto WHERE idProdCategoria = 3 AND idProduto = ?')
      ClientDataSet = cdsLookUp
      DataSource = dsPadrao
      ValidaCampoObrigatorio = True
      CampoObrigatorio = True
      LookUpTable = 'Produto'
      ReturnField = 'descProduto'
    end
  end
  inherited PanTop: TCPanelGradient
    Width = 1065
    inherited BtnFechar: TCBitBtn
      Left = 979
    end
  end
  inherited cxGrid: TcxGrid
    Top = 158
    Width = 1065
    Height = 292
    inherited DBView: TcxGridDBTableView
      object DBViewidEmpresa: TcxGridDBColumn
        Caption = 'Empresa'
        DataBinding.FieldName = 'idEmpresa'
        Width = 49
      end
      object DBViewidCadEmpresa: TcxGridDBColumn
        Caption = 'Filial'
        DataBinding.FieldName = 'idCadEmpresa'
        Width = 34
      end
      object DBViewidSerContrato: TcxGridDBColumn
        Caption = 'C'#243'digo'
        DataBinding.FieldName = 'idSerContrato'
        Width = 42
      end
      object DBViewidFornecedor: TcxGridDBColumn
        Caption = 'Fornecedor'
        DataBinding.FieldName = 'idFornecedor'
        Width = 73
      end
      object DBViewdtSerContrato: TcxGridDBColumn
        Caption = 'Data Contrato'
        DataBinding.FieldName = 'dtSerContrato'
        Width = 74
      end
      object DBViewidSerTpContrato: TcxGridDBColumn
        DataBinding.FieldName = 'idSerTpContrato'
        Visible = False
      end
      object DBViewdtVencimento: TcxGridDBColumn
        Caption = 'Data Vencimento'
        DataBinding.FieldName = 'dtVencimento'
        Width = 98
      end
      object DBViewdiaBase: TcxGridDBColumn
        DataBinding.FieldName = 'diaBase'
        Visible = False
      end
      object DBViewvlSerContrato: TcxGridDBColumn
        Caption = 'Valor Contrato'
        DataBinding.FieldName = 'vlSerContrato'
        Width = 98
      end
      object DBViewidIndice: TcxGridDBColumn
        DataBinding.FieldName = 'idIndice'
        Visible = False
      end
      object DBViewidComissionado: TcxGridDBColumn
        DataBinding.FieldName = 'idComissionado'
        Visible = False
      end
      object DBViewprComissao: TcxGridDBColumn
        DataBinding.FieldName = 'prComissao'
        Visible = False
      end
      object DBViewvlComissao: TcxGridDBColumn
        DataBinding.FieldName = 'vlComissao'
        Visible = False
      end
      object DBViewgeraNFSe: TcxGridDBColumn
        Caption = 'Gera NFSe?'
        DataBinding.FieldName = 'geraNFSe'
        Width = 87
      end
      object DBViewidServico: TcxGridDBColumn
        DataBinding.FieldName = 'idServico'
        Visible = False
      end
      object DBViewgeraNFe: TcxGridDBColumn
        Caption = 'Gera NFe?'
        DataBinding.FieldName = 'geraNFe'
        Width = 65
      end
      object DBViewidProduto: TcxGridDBColumn
        DataBinding.FieldName = 'idProduto'
        Visible = False
      end
      object DBViewobsSerContrato: TcxGridDBColumn
        Caption = 'Obs.'
        DataBinding.FieldName = 'obsSerContrato'
        Width = 379
      end
      object DBViewstSerContrato: TcxGridDBColumn
        Caption = 'Situa'#231#227'o'
        DataBinding.FieldName = 'stSerContrato'
        Width = 52
      end
    end
  end
  object DBEidEmpresa: TCDBEdit [6]
    Left = 84
    Top = 39
    Width = 46
    Height = 19
    TabStop = False
    BevelKind = bkTile
    BorderStyle = bsNone
    DataField = 'idEmpresa'
    DataSource = dsPadrao
    TabOrder = 3
    DecimalControl = True
    KeyMode = kmNormal
  end
  object DBEidCadEmpresa: TCDBEdit [7]
    Left = 136
    Top = 39
    Width = 46
    Height = 19
    TabStop = False
    BevelKind = bkTile
    BorderStyle = bsNone
    DataField = 'idCadEmpresa'
    DataSource = dsPadrao
    TabOrder = 4
    DecimalControl = True
    KeyMode = kmNormal
  end
  object LookdescCadEmpresa: TCLookUp [8]
    Left = 188
    Top = 39
    Width = 214
    Height = 19
    Alignment = taLeftJustify
    BevelInner = bvSpace
    BevelOuter = bvLowered
    Color = 14149350
    ParentBackground = False
    TabOrder = 5
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
  object LookdescAbreviada: TCLookUp [9]
    Left = 408
    Top = 39
    Width = 151
    Height = 19
    Alignment = taLeftJustify
    BevelInner = bvSpace
    BevelOuter = bvLowered
    Color = 14149350
    ParentBackground = False
    TabOrder = 6
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
  object lookidCnpjCpf: TCLookUp [10]
    Left = 235
    Top = 36
    Width = 126
    Height = 19
    Alignment = taLeftJustify
    BevelInner = bvSpace
    BevelOuter = bvLowered
    Color = 14149350
    ParentBackground = False
    TabOrder = 7
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
  object DBCKconsolidafilial: TCDBCheckBox [11]
    Left = 687
    Top = 40
    Width = 64
    Height = 17
    Caption = 'Filiais?'
    DataField = 'consolidafilial'
    DataSource = dsPadrao
    TabOrder = 8
    ValueChecked = 'S'
    ValueUnchecked = 'N'
  end
  object DBCKconsolidaemp: TCDBCheckBox [12]
    Left = 565
    Top = 40
    Width = 116
    Height = 17
    Caption = 'Consolida Empresa?'
    Color = clBtnFace
    DataField = 'consolidaemp'
    DataSource = dsPadrao
    ParentColor = False
    TabOrder = 9
    ValueChecked = 'S'
    ValueUnchecked = 'N'
  end
  inherited cdsPadrao: TClientDataSet
    object cdsPadraoidCadEmpresa: TIntegerField
      FieldName = 'idCadEmpresa'
    end
    object cdsPadraoidFornecedor: TIntegerField
      FieldName = 'idFornecedor'
    end
    object cdsPadraoidProduto: TIntegerField
      FieldName = 'idProduto'
    end
    object cdsPadraoidServico: TIntegerField
      FieldName = 'idServico'
    end
    object cdsPadraodtInicial: TDateTimeField
      FieldName = 'dtInicial'
    end
    object cdsPadraodtFinal: TDateTimeField
      FieldName = 'dtFinal'
    end
    object cdsPadraoidContratoIni: TIntegerField
      FieldName = 'idContratoIni'
    end
    object cdsPadraoidContratoFim: TIntegerField
      FieldName = 'idContratoFim'
    end
    object cdsPadraostAtivo: TStringField
      FieldName = 'stAtivo'
      Size = 50
    end
    object cdsPadraostEncerrado: TStringField
      FieldName = 'stEncerrado'
      Size = 50
    end
    object cdsPadraostCancelado: TStringField
      FieldName = 'stCancelado'
      Size = 50
    end
  end
  inherited sdsGrid: TSQLDataSet
    CommandText = 'SELECT * FROM SerContrato'
  end
  inherited cdsGrid: TClientDataSet
    CommandText = 'SELECT * FROM SerContrato'
    object cdsGrididEmpresa: TIntegerField
      FieldName = 'idEmpresa'
      Required = True
    end
    object cdsGrididCadEmpresa: TSmallintField
      FieldName = 'idCadEmpresa'
      Required = True
    end
    object cdsGrididSerContrato: TIntegerField
      FieldName = 'idSerContrato'
      Required = True
    end
    object cdsGrididFornecedor: TIntegerField
      FieldName = 'idFornecedor'
      Required = True
    end
    object cdsGriddtSerContrato: TSQLTimeStampField
      FieldName = 'dtSerContrato'
      Required = True
    end
    object cdsGrididSerTpContrato: TSmallintField
      FieldName = 'idSerTpContrato'
      Required = True
    end
    object cdsGriddtVencimento: TSQLTimeStampField
      FieldName = 'dtVencimento'
    end
    object cdsGriddiaBase: TByteField
      FieldName = 'diaBase'
    end
    object cdsGridvlSerContrato: TFMTBCDField
      FieldName = 'vlSerContrato'
      Required = True
      Precision = 15
      Size = 2
    end
    object cdsGrididIndice: TSmallintField
      FieldName = 'idIndice'
      Required = True
    end
    object cdsGrididComissionado: TIntegerField
      FieldName = 'idComissionado'
    end
    object cdsGridprComissao: TFMTBCDField
      FieldName = 'prComissao'
      Precision = 4
      Size = 2
    end
    object cdsGridvlComissao: TFMTBCDField
      FieldName = 'vlComissao'
      Precision = 19
      Size = 4
    end
    object cdsGridgeraNFSe: TStringField
      FieldName = 'geraNFSe'
      Required = True
      FixedChar = True
      Size = 1
    end
    object cdsGrididServico: TIntegerField
      FieldName = 'idServico'
    end
    object cdsGridgeraNFe: TStringField
      FieldName = 'geraNFe'
      Required = True
      FixedChar = True
      Size = 1
    end
    object cdsGrididProduto: TIntegerField
      FieldName = 'idProduto'
    end
    object cdsGridobsSerContrato: TStringField
      FieldName = 'obsSerContrato'
      Size = 500
    end
    object cdsGridstSerContrato: TStringField
      FieldName = 'stSerContrato'
      Required = True
      Size = 15
    end
  end
  inherited StyleRepository: TcxStyleRepository
    PixelsPerInch = 96
  end
end
