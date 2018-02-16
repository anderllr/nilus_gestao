inherited FrmDistribuiNF: TFrmDistribuiNF
  Caption = 'Distribui NF'
  ClientHeight = 446
  ClientWidth = 639
  ExplicitWidth = 655
  ExplicitHeight = 485
  PixelsPerInch = 96
  TextHeight = 13
  inherited GrupoGrid: TCGroupBox
    Top = 83
    Width = 639
    Height = 325
    ExplicitTop = 83
    ExplicitWidth = 639
    ExplicitHeight = 325
    inherited DBGrid: TCDBGrid
      Width = 635
      Height = 308
      TabStop = False
      Columns = <
        item
          Expanded = False
          FieldName = 'idEmpresa'
          Title.Caption = 'Empresa'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'idCadEmpresa'
          Title.Caption = 'Filial'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'idFornecedor'
          Title.Caption = 'Fornecedor'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'idDocSerie'
          Title.Caption = 'DocSerie'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'idNfe'
          Title.Caption = 'Nr. Nfe'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'qtde'
          Title.Caption = 'Qtde'
          Visible = True
        end>
    end
  end
  inherited PanBotoes: TCPanelGradient
    Top = 408
    Width = 639
    Height = 38
    Align = alBottom
    ExplicitTop = 408
    ExplicitWidth = 639
    ExplicitHeight = 38
    object CLabel1: TCLabel [0]
      Left = 100
      Top = 13
      Width = 63
      Height = 13
      Alignment = taRightJustify
      Caption = 'Qtde. Pedido'
      Transparent = True
    end
    object CLabel7: TCLabel [1]
      Left = 247
      Top = 13
      Width = 46
      Height = 13
      Alignment = taRightJustify
      Caption = 'Qtde. Nf.'
      Transparent = True
    end
    object CLabel8: TCLabel [2]
      Left = 378
      Top = 13
      Width = 26
      Height = 13
      Alignment = taRightJustify
      Caption = 'Saldo'
      Transparent = True
    end
    inherited BtnExecutar: TCBitBtn
      Left = 617
      Top = 20
      Action = nil
      Visible = False
      OnClick = nil
      ExplicitLeft = 617
      ExplicitTop = 20
    end
    inherited BtnFechar: TCBitBtn
      Left = 536
      Top = 6
      Action = nil
      OnClick = BtnFecharClick
      ExplicitLeft = 536
      ExplicitTop = 6
    end
    object BtnGerar: TCBitBtn
      Left = 19
      Top = 7
      Width = 75
      Height = 25
      Caption = '&Gerar'
      Glyph.Data = {
        36060000424D3606000000000000360000002800000020000000100000000100
        18000000000000060000120B0000120B00000000000000000000FF00FFFF00FF
        FF00FFFF00FF000364000364FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF909090909090FF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FF00046D0118BC0216A4000364FF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF9494949A9A9AA4A4A4909090FF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FF00046F5673F80220D50219AA000364FF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF959595E7E7E7B8B8B8A7A7A790
        9090FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FF0003645673F8021FD30219AA000364FF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF909090E7E7E7B7B7B7A7
        A7A7909090FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FF0003645673F8021FD10219AA000364FF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF909090E7E7E7B7
        B7B7A7A7A7909090FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FF0003645673F8021FD10218A6000364FF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF909090E7
        E7E7B7B7B7A6A6A6909090FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FF0003645673F8021FD00217A6000364FF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF90
        9090E7E7E7B6B6B6A5A5A5909090FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FF3C63CD0081BDFF00FFFF00FFFF00FF0003645673F8021FD00216A70003
        64FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFB074B0989898FF00FFFF00FFFF
        00FF909090E7E7E7B6B6B6A6A6A6909090FF00FFFF00FFFF00FFFF00FFFF00FF
        097CBF00A6E600A6E60081BDFF00FFFF00FFFF00FF0003645673F80111A00030
        98005FB6FF00FFFF00FFFF00FFFF00FF9C939CBCBCBCBCBCBC989898FF00FFFF
        00FFFF00FF909090E7E7E78E8E8E898989959595FF00FFFF00FFFF00FFFF00FF
        FF00FF0081BD0081BDFF00FFFF00FFFF00FFFF00FFFF00FF0003640049A900C5
        FE0090CE0081BDFF00FFFF00FFFF00FFFF00FF989898989898FF00FFFF00FFFF
        00FFFF00FFFF00FF9090908F8F8FB1B1B19E9E9E989898FF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FF0081BDFF00FF0081BDFF00FFFF00FF0086D50090
        CE00C5FE0081BDFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF989898FF
        00FF989898FF00FFFF00FFA1A1A19E9E9EB1B1B1989898FF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FF0081BD0081BD0081BDFF00FFFF00FFFF00FF0081
        BD0081BDFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF98989898
        9898989898FF00FFFF00FFFF00FF989898989898FF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FF0081BD00BAFB00BDFF00B1F20081BDFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF989898C4C4C4C5
        C5C5C0C0C0989898FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FF0081BD0081BD0081BD00ADEE0087C40081BD0081BDFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF989898989898989898BF
        BFBF9A9A9A989898989898FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FF0081BD00ADEE0081BDFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF989898BF
        BFBF989898FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FF0081BDFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF98
        9898FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
      NumGlyphs = 2
      TabOrder = 2
      OnClick = BtnGerarClick
    end
    object DBEqtProduto: TCDBEdit
      Left = 169
      Top = 11
      Width = 72
      Height = 18
      TabStop = False
      BevelKind = bkTile
      BorderStyle = bsNone
      Color = 14149350
      DataField = 'qtde'
      DataSource = FrmPesRecepcao.dsDistribuiNf
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 3
      DecimalControl = True
      KeyMode = kmNormal
    end
    object DBEqtTotal: TCDBEdit
      Left = 299
      Top = 11
      Width = 72
      Height = 18
      TabStop = False
      BevelKind = bkTile
      BorderStyle = bsNone
      Color = 14149350
      DataField = 'qtTotal'
      DataSource = dsGrid
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 4
      DecimalControl = True
      KeyMode = kmNormal
    end
    object CDBEdit2: TCDBEdit
      Left = 410
      Top = 11
      Width = 72
      Height = 18
      TabStop = False
      BevelKind = bkTile
      BorderStyle = bsNone
      Color = 14149350
      DataField = 'qtSaldo'
      DataSource = dsGrid
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 5
      DecimalControl = True
      KeyMode = kmNormal
    end
  end
  inherited PanTopo: TCPanelGradient
    Width = 639
    Height = 83
    ExplicitWidth = 639
    ExplicitHeight = 83
    object CLabel5: TCLabel
      Left = 24
      Top = 11
      Width = 32
      Height = 13
      Alignment = taRightJustify
      Caption = 'Pedido'
    end
    object CLabel11: TCLabel
      Left = 19
      Top = 36
      Width = 37
      Height = 13
      Alignment = taRightJustify
      Caption = 'Fornec.'
    end
    object CLabel2: TCLabel
      Left = 120
      Top = 11
      Width = 38
      Height = 13
      Alignment = taRightJustify
      Caption = 'Produto'
    end
    object CLabel3: TCLabel
      Left = 416
      Top = 61
      Width = 28
      Height = 13
      Alignment = taRightJustify
      Caption = 'Qtde.'
      Transparent = True
    end
    object CLabel4: TCLabel
      Left = 303
      Top = 61
      Width = 41
      Height = 13
      Alignment = taRightJustify
      Caption = 'Nr. Nota'
      Transparent = True
    end
    object CLabel6: TCLabel
      Left = 32
      Top = 61
      Width = 24
      Height = 13
      Alignment = taRightJustify
      Caption = 'S'#233'rie'
    end
    object DBEidPedido: TCDBEdit
      Left = 62
      Top = 8
      Width = 52
      Height = 19
      TabStop = False
      BevelKind = bkTile
      BorderStyle = bsNone
      Color = 14149350
      DataField = 'idPedido'
      DataSource = FrmPesRecepcao.dsDistribuiNf
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
      DecimalControl = True
      KeyMode = kmNormal
    end
    object DBEidFornecedor: TCDBEdit
      Left = 62
      Top = 33
      Width = 52
      Height = 19
      BevelKind = bkTile
      BorderStyle = bsNone
      DataField = 'idFornecedor'
      DataSource = FrmPesRecepcao.dsDistribuiNf
      TabOrder = 3
      OnExit = DBEidFornecedorExit
      Find = dmFind.FindFornecedor
      DecimalControl = True
      KeyMode = kmNormal
    end
    object LookRazao: TCLookUp
      Left = 120
      Top = 33
      Width = 395
      Height = 19
      Alignment = taLeftJustify
      BevelInner = bvSpace
      BevelOuter = bvLowered
      Color = 14149350
      ParentBackground = False
      TabOrder = 4
      Key.Strings = (
        'idFornecedor')
      LookUpKey.Strings = (
        'idFornecedor')
      ClientDataSet = cdsLookUp
      DataSource = FrmPesRecepcao.dsDistribuiNf
      ValidaCampoObrigatorio = False
      CampoObrigatorio = True
      LookUpTable = 'vCadFornecedorContabil'
      ReturnField = 'descCadFornecedor'
    end
    object DBEidProduto: TCDBEdit
      Left = 167
      Top = 8
      Width = 53
      Height = 19
      TabStop = False
      BevelKind = bkTile
      BorderStyle = bsNone
      Color = 14149350
      DataField = 'idProduto'
      DataSource = FrmPesRecepcao.dsDistribuiNf
      ReadOnly = True
      TabOrder = 1
      Find = dmFind.FindFornecedor
      DecimalControl = True
      KeyMode = kmNormal
    end
    object CLookUp: TCLookUp
      Left = 226
      Top = 8
      Width = 263
      Height = 19
      Alignment = taLeftJustify
      BevelInner = bvSpace
      BevelOuter = bvLowered
      Color = 14149350
      ParentBackground = False
      TabOrder = 2
      Key.Strings = (
        'idProduto')
      LookUpKey.Strings = (
        'idProduto')
      ClientDataSet = cdsLookUp
      DataSource = FrmPesRecepcao.dsDistribuiNf
      ValidaCampoObrigatorio = False
      CampoObrigatorio = True
      LookUpTable = 'Produto'
      ReturnField = 'descProduto'
    end
    object BtnConfirmar: TCBitBtn
      Left = 521
      Top = 32
      Width = 90
      Height = 25
      Caption = '&Confirmar'
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FF006600006600FF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0066001EB2311FB13300
        6600FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FF00660031C24F22B7381AB02D21B437006600FF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FF00660047D36D3BCB5E25A83B0066001B
        A92E1DB132006600FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF006600
        4FD67953DE7F31B54D006600FF00FF006600179D271EAE31006600FF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FF00660041C563006600FF00FFFF00FFFF
        00FFFF00FF00660019AA2B006600FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FF006600FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF006600149D210066
        00FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FF006600006600FF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FF006600006600FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
      TabOrder = 9
      OnClick = BtnConfirmarClick
    end
    object EDQtdeParc: TCEdit
      Left = 449
      Top = 58
      Width = 66
      Height = 19
      BorderStyle = bsNone
      BevelKind = bkTile
      TabOrder = 8
      Text = ''
      DataType = ftUnknown
      KeyMode = kmNormal
      Decimals = 0
    end
    object DBEidDocSerie: TCDBEdit
      Left = 62
      Top = 58
      Width = 52
      Height = 19
      BevelKind = bkTile
      BorderStyle = bsNone
      CharCase = ecUpperCase
      DataField = 'idDocSerie'
      DataSource = FrmPesRecepcao.dsDistribuiNf
      TabOrder = 5
      Find = dmFind.FindSerieEntrada
      DecimalControl = True
      KeyMode = kmNormal
    end
    object LookDocSerie: TCLookUp
      Left = 120
      Top = 58
      Width = 177
      Height = 19
      Alignment = taLeftJustify
      BevelInner = bvSpace
      BevelOuter = bvLowered
      Color = 14149350
      ParentBackground = False
      TabOrder = 6
      Key.Strings = (
        'idDocSerie')
      LookUpKey.Strings = (
        'idDocSerie')
      ClientDataSet = cdsLookUp
      DataSource = FrmPesRecepcao.dsDistribuiNf
      ValidaCampoObrigatorio = True
      CampoObrigatorio = True
      LookUpTable = 'DocSerie'
      ReturnField = 'descDocSerie'
    end
    object EDNfE: TCEdit
      Left = 350
      Top = 58
      Width = 60
      Height = 19
      Alignment = taRightJustify
      BorderStyle = bsNone
      BevelKind = bkTile
      TabOrder = 7
      Text = ''
      OnExit = EDNfEExit
      DataType = ftUnknown
      KeyMode = kmNumber
      Decimals = 0
    end
  end
  inherited cdsPadrao: TClientDataSet
    ProviderName = ''
    object cdsPadraoidEmpresa: TIntegerField
      FieldName = 'idEmpresa'
    end
    object cdsPadraoidPedido: TIntegerField
      FieldName = 'idPedido'
    end
    object cdsPadraoidProduto: TIntegerField
      FieldName = 'idProduto'
    end
    object cdsPadraoqtde: TFloatField
      FieldName = 'qtde'
    end
    object cdsPadraoidFornecedor: TIntegerField
      FieldName = 'idFornecedor'
    end
    object cdsPadraoidCadEmpresa: TIntegerField
      FieldName = 'idCadEmpresa'
    end
  end
  inherited cdsGrid: TClientDataSet
    AggregatesActive = True
    ProviderName = ''
    AfterScroll = cdsPadraoAfterOpen
    OnCalcFields = cdsGridCalcFields
    object cdsGrididCadEmpresa: TIntegerField
      FieldName = 'idCadEmpresa'
    end
    object cdsGrididEmpresa: TIntegerField
      FieldName = 'idEmpresa'
    end
    object cdsGrididFornecedor: TIntegerField
      FieldName = 'idFornecedor'
    end
    object cdsGrididNfe: TIntegerField
      FieldName = 'idNfe'
    end
    object cdsGrididPedido: TIntegerField
      FieldName = 'idPedido'
    end
    object cdsGrididProduto: TIntegerField
      FieldName = 'idProduto'
    end
    object cdsGridqtProduto: TFloatField
      FieldName = 'qtProduto'
    end
    object cdsGridqtde: TFloatField
      FieldName = 'qtde'
    end
    object cdsGrididDocSerie: TStringField
      FieldName = 'idDocSerie'
    end
    object cdsGrididMaquina: TIntegerField
      FieldName = 'idMaquina'
    end
    object cdsGrididPedidoProd: TIntegerField
      FieldName = 'idPedidoProd'
    end
    object cdsGridqtSaldo: TFloatField
      FieldKind = fkCalculated
      FieldName = 'qtSaldo'
      Calculated = True
    end
    object cdsGridqtTotal: TAggregateField
      FieldName = 'qtTotal'
      Active = True
      DisplayName = ''
      Expression = 'SUM(qtde)'
    end
  end
  inherited sdsGrid: TSQLDataSet
    CommandText = ''
  end
  object cdsTmp: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    CommandText = 'select * from "tmpGeraNfE"'
    Params = <>
    ProviderName = 'dspTmp'
    AfterOpen = cdsPadraoAfterOpen
    Left = 192
    Top = 200
    object cdsTmpidEmpresa: TIntegerField
      FieldName = 'idEmpresa'
      Required = True
    end
    object cdsTmpidCadEmpresa: TIntegerField
      FieldName = 'idCadEmpresa'
      Required = True
    end
    object cdsTmpidPedido: TIntegerField
      FieldName = 'idPedido'
      Required = True
    end
    object cdsTmpidProduto: TIntegerField
      FieldName = 'idProduto'
      Required = True
    end
    object cdsTmpidFornecedor: TIntegerField
      FieldName = 'idFornecedor'
      Required = True
    end
    object cdsTmpqtde: TFMTBCDField
      FieldName = 'qtde'
      Required = True
      Precision = 18
      Size = 3
    end
    object cdsTmpidNfE: TIntegerField
      FieldName = 'idNfE'
    end
    object cdsTmpidDocSerie: TStringField
      FieldName = 'idDocSerie'
      Size = 5
    end
    object cdsTmpidPedidoProd: TSmallintField
      FieldName = 'idPedidoProd'
    end
    object cdsTmpidMaquina: TIntegerField
      FieldName = 'idMaquina'
    end
  end
  object sdsTmp: TSQLDataSet
    SchemaName = 'dbo'
    CommandText = 'select * from "tmpGeraNfE"'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmPadrao.dbConexao
    Left = 128
    Top = 200
  end
  object dspTmp: TDataSetProvider
    DataSet = sdsTmp
    Options = [poAllowMultiRecordUpdates, poPropogateChanges, poAllowCommandText, poUseQuoteChar]
    Left = 160
    Top = 200
  end
end
