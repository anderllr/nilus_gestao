inherited FrmPesContratoTituloPag: TFrmPesContratoTituloPag
  Caption = 'Contratos de Compra X T'#237'tulos a Pagar'
  ClientHeight = 635
  ClientWidth = 714
  FormStyle = fsMDIChild
  Icon.Data = {
    0000010001001010000001002000680400001600000028000000100000002000
    0000010020000000000000040000000000000000000000000000000000000000
    000000000000000000000000000000000000000000000000000022536A7D1331
    3F68000000030000000000000000000000000000000000000000000000000000
    000000000000000000000000000000000000000000001E4E624B407388FB4170
    84FD1E485CA60000001300000000000000000000000000000000000000000000
    00000000000000000000000000000000000011333B1E367593E777521DFF8048
    06FF566B69FF29607BD7091B2438000000000000000000000000000000000000
    0000000000000000000000000000000000062E6D8DBC6C6243FF965201FF9853
    01FF935001FF675B3EFF2D6887F31432426F0000000400000000000000000000
    0000000000000000000000000000285E7A7F58706DFEA35902FFAC5E02FFAF5F
    02FFAA5D02FF361D00FF0B6E71FF31849FFE204C62AB00000016000000000000
    000000000000000000001E4C62432F6E8EF9623B0AFFB66401FFC76C02FFCC6F
    02FF743F01FF005350FF02C3BDFF03A8A3FF288C9FFF2A627EDC0C1D2A3C0000
    0000000000000A2A3518307197E20D1CA5FF01002FFF4D2A00FFD77602FFC169
    02FF072E2AFF02E6E0FF02D2CCFF01B9B3FF00A39DFF27879DFF275E789A0000
    0000000000042E6B8AB61838ADFF0202CCFF0202E3FF01016FFF2B1803FF251F
    0AFF02D3D3FF02FBF7FF02DCD5FF01BFB9FF0F9EA3FF307596D70F1F2F100000
    0000285D79782658A4FE0101B3FF0202CDFF0202EDFF0202FDFF000044FF0719
    0BFF019797FF02F8F3FF02DDD6FF06B9B7FF30809FF41E465A33000000002656
    6C3B31739BF8040997FF0101AFFF0202C6FF0202E2FF01019BFF2A5A01FF6BDC
    02FF1B3C01FF005451FF02C2BCFF2991ABFE265B756A00000000000000003447
    4E27407994CA24538BFE030897FF0101BAFF0101AEFF0E1F0AFF62DA02FF6AEC
    02FF63DC02FF2B6000FF1E5566FF2D6B8AA80000000200000000000000000000
    00002222220F406C8296336D96FA0B198BFF020521FF449701FF5AC702FF5BCA
    02FF59C502FF4CAB28FF337896DA0E1C2A120000000000000000000000000000
    000000000000000000023A596A5B3F7FA0EA2B624BFF48A002FF4EAE01FF4FB0
    01FF4BA80DFF37818EF61F475D39000000000000000000000000000000000000
    00000000000000000000000000003042482A407792C632726DFE3D880AFF459B
    01FF3B8874FE275D797300000000000000000000000000000000000000000000
    000000000000000000000000000000000000152A2A0C406A808F38778BFA3579
    5CFF2E6C8BB10000000300000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000002395867543975
    94C60B2E3916000000000000000000000000000000000000000000000000FE3F
    0000FC1F0000F80F0000F0030000F0010000E0000000C0000000800000008001
    0000000300000003000080070000C00F0000F01F0000F81F0000FC3F0000}
  Position = poDefault
  Visible = True
  ExplicitWidth = 730
  ExplicitHeight = 674
  PixelsPerInch = 96
  TextHeight = 13
  inherited GrupoGrid: TCGroupBox
    Width = 714
    Height = 335
    TabOrder = 2
    ExplicitWidth = 714
    ExplicitHeight = 335
    inherited DBGrid: TCDBGrid
      Width = 710
      Height = 318
      OnCellClick = DBGridCellClick
      UtilizaOrdenar = True
      Columns = <
        item
          Expanded = False
          FieldName = 'sel'
          Title.Caption = '   ?'
          Width = 25
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'idEmpresa'
          Title.Caption = 'Emp.'
          Width = 25
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'idCadEmpresa'
          Title.Caption = 'Fil.'
          Width = 20
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'idDocSerie'
          Title.Caption = 'Serie'
          Width = 30
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'nrTitulo'
          Title.Caption = 'Nr.Titulo'
          Width = 60
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'idParcela'
          Title.Caption = 'Parc.'
          Width = 26
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'descAbreviada'
          Title.Caption = 'Cliente / Fornecedor'
          Width = 120
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'vlParcela'
          Title.Caption = 'Valor'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'vlPago'
          Title.Caption = 'Vl. Baixado'
          Width = 60
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Saldo'
          Width = 70
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'dtEmissao'
          Title.Caption = 'Emiss'#227'o'
          Width = 70
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'dtVencimento'
          Title.Caption = 'Vencimento'
          Width = 70
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'stParcela'
          Title.Caption = 'Status'
          Width = 60
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'tpConsulta'
          Title.Caption = 'Tipo'
          Width = 30
          Visible = True
        end>
    end
  end
  inherited PanBotoes: TCPanelGradient
    Left = 757
    Top = 229
    Width = 99
    Height = 362
    Align = alNone
    Visible = False
    ExplicitLeft = 757
    ExplicitTop = 229
    ExplicitWidth = 99
    ExplicitHeight = 362
    inherited BtnExecutar: TCBitBtn
      Tag = 1
      Left = 6
      Top = 6
      ExplicitLeft = 6
      ExplicitTop = 6
    end
    inherited BtnFechar: TCBitBtn
      Left = 6
      Top = 48
      ExplicitLeft = 6
      ExplicitTop = 48
    end
  end
  inherited PanTopo: TCPanelGradient
    Width = 714
    Height = 140
    TabOrder = 0
    ExplicitWidth = 714
    ExplicitHeight = 140
    object Bevel2: TBevel [0]
      Left = 1
      Top = 134
      Width = 712
      Height = 4
      Align = alTop
      Shape = bsFrame
      Style = bsRaised
      ExplicitLeft = 0
      ExplicitTop = 111
      ExplicitWidth = 754
    end
    object Bevel1: TBevel [1]
      Left = 1
      Top = 1
      Width = 712
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
      Width = 712
      Height = 26
      ExplicitTop = 5
      ExplicitWidth = 712
      ExplicitHeight = 26
      inherited lblEmpresa: TCLabel
        Top = 7
        ExplicitTop = 7
      end
      inherited LookdescCadEmpresa: TCLookUp
        Width = 194
        ExplicitWidth = 194
      end
      inherited LookdescAbreviada: TCLookUp
        Left = 363
        Width = 106
        ExplicitLeft = 363
        ExplicitWidth = 106
      end
      inherited lookidCnpjCpf: TCLookUp
        Left = 704
        Top = 2
        TabOrder = 5
        ExplicitLeft = 704
        ExplicitTop = 2
      end
      inherited LookidInscEstadual: TCLookUp
        TabOrder = 4
      end
      object DBCKconsolidaemp: TCDBCheckBox
        Left = 475
        Top = 6
        Width = 116
        Height = 17
        Caption = 'Consolida Empresa?'
        Color = 14212576
        DataField = 'consolidaemp'
        DataSource = dsPadrao
        ParentColor = False
        TabOrder = 6
        ValueChecked = 'S'
        ValueUnchecked = 'N'
      end
      object DBCKconsolidafilial: TCDBCheckBox
        Left = 583
        Top = 6
        Width = 64
        Height = 17
        Caption = 'Filiais?'
        DataField = 'consolidafilial'
        DataSource = dsPadrao
        TabOrder = 7
        ValueChecked = 'S'
        ValueUnchecked = 'N'
      end
    end
    object PanCliente: TCPanelGradient
      Left = 1
      Top = 31
      Width = 712
      Height = 66
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
      object Bevel3: TBevel
        Left = 1
        Top = 1
        Width = 710
        Height = 4
        Align = alTop
        Shape = bsFrame
        Style = bsRaised
        ExplicitLeft = 0
        ExplicitTop = 92
        ExplicitWidth = 573
      end
      object lblCliFor: TCLabel
        Left = 14
        Top = 14
        Width = 76
        Height = 13
        Alignment = taRightJustify
        Caption = 'Forn./Vendedor'
      end
      object CLookUp3: TCLookUp
        Left = 415
        Top = 11
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
      object CLookUp2: TCLookUp
        Left = 197
        Top = 11
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
      object DBEidCadFornecedor: TCDBEdit
        Left = 163
        Top = 11
        Width = 28
        Height = 19
        BevelKind = bkTile
        BorderStyle = bsNone
        DataField = 'idCadFornecedor'
        DataSource = dsPadrao
        TabOrder = 1
        OnKeyDown = DBEidFornecedorKeyDown
        OnKeyPress = DBEidFornecedorKeyPress
        DecimalControl = True
        KeyMode = kmNormal
      end
      object DBEidFornecedor: TCDBEdit
        Left = 96
        Top = 11
        Width = 61
        Height = 19
        BevelKind = bkTile
        BorderStyle = bsNone
        DataField = 'idFornecedor'
        DataSource = dsPadrao
        TabOrder = 0
        OnKeyDown = DBEidFornecedorKeyDown
        OnKeyPress = DBEidFornecedorKeyPress
        DecimalControl = True
        KeyMode = kmNormal
      end
      object DBCKstAberto: TCDBCheckBox
        Left = 73
        Top = 36
        Width = 56
        Height = 17
        Caption = 'Aberto'
        DataField = 'stAberto'
        DataSource = dsPadrao
        TabOrder = 5
        ValueChecked = 'S'
        ValueUnchecked = 'N'
      end
      object DBCKstLiquidado: TCDBCheckBox
        Left = 139
        Top = 36
        Width = 73
        Height = 17
        Caption = 'Liquidado'
        DataField = 'stLiquidado'
        DataSource = dsPadrao
        TabOrder = 6
        ValueChecked = 'S'
        ValueUnchecked = 'N'
      end
      object DBCKstAtivo: TCDBCheckBox
        Left = 16
        Top = 36
        Width = 48
        Height = 17
        Caption = 'Ativo'
        DataField = 'stAtivo'
        DataSource = dsPadrao
        TabOrder = 4
        ValueChecked = 'S'
        ValueUnchecked = 'N'
      end
      object DBCKlistaTitContrato: TCDBCheckBox
        Left = 379
        Top = 36
        Width = 187
        Height = 17
        Caption = 'Listar t'#237'tulos j'#225' em contratos?'
        DataField = 'listaTitContrato'
        DataSource = dsPadrao
        TabOrder = 7
        ValueChecked = 'S'
        ValueUnchecked = 'N'
      end
    end
    object CGroupBox3: TCGroupBox
      Left = 1
      Top = 97
      Width = 712
      Height = 37
      Align = alTop
      TabOrder = 2
      object BtnPesquisar: TCBitBtn
        Tag = 1
        Left = 12
        Top = 6
        Width = 75
        Height = 25
        Action = actPesquisar
        Caption = '&Pesquisar'
        TabOrder = 0
      end
      object BtnFechar1: TCBitBtn
        Left = 610
        Top = 6
        Width = 75
        Height = 25
        Action = actFechar
        Caption = '&Fechar'
        TabOrder = 1
      end
    end
  end
  object CGroupBox1: TCGroupBox [3]
    Left = 0
    Top = 547
    Width = 714
    Height = 88
    Align = alBottom
    TabOrder = 3
    object CLabel7: TCLabel
      Left = 8
      Top = 6
      Width = 238
      Height = 13
      Alignment = taRightJustify
      Caption = 'Selecionar contrato para anexar os t'#237'tulos'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object CLabel12: TCLabel
      Left = 8
      Top = 28
      Width = 83
      Height = 13
      Alignment = taRightJustify
      Caption = 'Contrato Compra'
    end
    object BtnAnexar: TCBitBtn
      Left = 574
      Top = 52
      Width = 128
      Height = 25
      Caption = '&Anexar ao Contrato'
      Glyph.Data = {
        36060000424D3606000000000000360000002800000020000000100000000100
        18000000000000060000120B0000120B00000000000000000000FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFBD4C00BD4C00
        BD4C00BD4C00BD4C00BD4C00BD4C00BD4C00BD4C00BD4C00BD4C00BD4C00BD4C
        00BD4C00BD4C00BD4C00A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7
        A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7BD4C00FFEDD9
        FFEAD3FFE7CE811E00FEE1C0FEDDBBFEDAB4811E00FED5A9FED3A4FFD09F811E
        00FECC98FECB96BD4C00A7A7A7F5F5F5F5F5F5F5F5F5959595F5F5F5F5F5F5F4
        F4F4959595F0F0F0EFEFEFEEEEEE8B8B8BEBEBEBEBEBEBA7A7A7BD4C00FFEFDE
        FFEDD8FEEAD1811E00FEE3C5FEE0C0FEDDB8811E00FED8ACFED4A9FFD3A3811E
        00FECF9AFECC98BD4C00A7A7A7F5F5F5F5F5F5F5F5F5959595F5F5F5F5F5F5F5
        F5F5959595F2F2F2F0F0F0EFEFEF8B8B8BECECECEBEBEBA7A7A7BD4C00FFF0E2
        FEEEDDFEEBD7811E00FEE5CAFEE2C2FEDEBD811E00FEDAB2FED5ABFED4A7811E
        00FFD09EFECE99BD4C00A7A7A7F5F5F5F5F5F5F5F5F5959595F5F5F5F5F5F5F5
        F5F5959595F3F3F3F1F1F1F0F0F08B8B8BEEEEEEECECECA7A7A7BD4C00811E00
        811E00811E00811E00811E00811E00811E00811E00811E00811E00811E00811E
        00811E00811E00BD4C00A7A7A795959595959595959595959595959595959595
        9595959595959595959595959595959595959595959595A7A7A7BD4C00FFF6ED
        FFF3E6FFEFE1811E00FFEAD4FFE7CEFEE5C6811E00FEDEBBFEDAB5FFD8AF811E
        00FED3A5FED0A0BD4C00A7A7A7F5F5F5F5F5F5F5F5F5959595F5F5F5F5F5F5F5
        F5F5959595F5F5F5F4F4F4F2F2F2959595F0F0F0EEEEEEA7A7A7BD4C00FFF8F0
        FFF6EAFFF3E5811E00FFEDD9FFEAD3FFE6CC811E00FEE1BFFFDDB8FED9B2811E
        00FED4A7FFD3A4BD4C00A7A7A7F5F5F5F5F5F5F5F5F5959595F5F5F5F5F5F5F5
        F5F5959595F5F5F5F5F5F5F3F3F3959595F0F0F0F0F0F0A7A7A7BD4C00FFFAF3
        FFF7EEFFF6EA811E00FEEFDDFFEBD7FFE9D0811E00FFE2C5FFE0BDFEDDB8811E
        00FED7ACFED4A6BD4C00A7A7A7F5F5F5F5F5F5F5F5F5959595F5F5F5F5F5F5F5
        F5F5959595F5F5F5F5F5F5F5F5F5959595F2F2F2F0F0F0A7A7A7BD4C00811E00
        811E00811E00811E00811E00811E00811E00811E00811E00811E00811E00811E
        00811E00811E00BD4C00A7A7A795959595959595959595959595959595959595
        9595959595959595959595959595959595959595959595A7A7A7BD4C00FFFCFA
        FFFAF6FFF8F2811E00FFF4E7FFF0E1FFEDDA811E00FFE7CEFFE3C7FFE1C1811E
        00FEDAB5FED9AFBD4C00A7A7A7F5F5F5F5F5F5F5F5F5959595F5F5F5F5F5F5F5
        F5F58B8B8BF5F5F5F5F5F5F5F5F5959595F4F4F4F2F2F2A7A7A7BD4C00FFFFFC
        FFFCF8FFFAF6811E00FFF6EAFEF3E6FFF0DE811E00FFEAD3FFE6CCFEE3C6811E
        00FEDDBAFEDAB4BD4C00A7A7A7F5F5F5F5F5F5F5F5F5959595F5F5F5F5F5F5F5
        F5F58B8B8BF5F5F5F5F5F5F5F5F5959595F5F5F5F4F4F4A7A7A7BD4C00FFFFFF
        FFFEFCFFFCF8811E00FEF7EFFFF4EAFFF2E3811E00FFEDD7FFE9D1FFE6CB811E
        00FEE0BDFFDDB8BD4C00A7A7A7F5F5F5F5F5F5F5F5F5959595F5F5F5F5F5F5F5
        F5F58B8B8BF5F5F5F5F5F5F5F5F5959595F5F5F5F5F5F5A7A7A7BD4C00BD4C00
        BD4C00BD4C00BD4C00BD4C00BD4C00BD4C00BD4C00BD4C00BD4C00BD4C00BD4C
        00BD4C00BD4C00BD4C00A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7
        A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7BD4C00BD4C00
        BD4C00BD4C00BD4C00BD4C00BD4C00BD4C00BD4C00BD4C00BD4C00BD4C00BD4C
        00BD4C00BD4C00BD4C00A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7
        A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
      Margin = 5
      NumGlyphs = 2
      TabOrder = 0
      OnClick = BtnAnexarClick
    end
    object DBEidContratoCompra: TCDBEdit
      Left = 97
      Top = 25
      Width = 104
      Height = 19
      BevelKind = bkTile
      BorderStyle = bsNone
      DataField = 'idContratoCompra'
      DataSource = dsContrato
      TabOrder = 1
      OnEnter = DBEidContratoCompraEnter
      OnExit = DBEidContratoCompraExit
      OnKeyDown = DBEidContratoCompraKeyDown
      DecimalControl = True
      KeyMode = kmUSUpper
    end
    object LookNrOriginal: TCLookUp
      Left = 607
      Top = 25
      Width = 80
      Height = 19
      Alignment = taLeftJustify
      BevelInner = bvSpace
      BevelOuter = bvLowered
      Color = 14149350
      ParentBackground = False
      TabOrder = 2
      Key.Strings = (
        'idContratoCompra')
      LookUpKey.Strings = (
        'idContratoCompra')
      AlternateSQL.Strings = (
        
          'SELECT nrOriginal FROM ContratoCompra WHERE idEmpresa = [DBEidEm' +
          'presa] AND idCadEmpresa = [DBEidCadEmpresa] AND idFornecedor = [' +
          'DBEidFornecedor]  AND idCadFornecedor = [DBEidCadFornecedor] AND' +
          ' idContratoCompra = ?')
      ClientDataSet = cdsLookUp
      DataSource = dsContrato
      ValidaCampoObrigatorio = True
      CampoObrigatorio = True
      LookUpTable = 'ContratoCompra'
      ReturnField = 'nrOriginal'
    end
    object LookContratoVenda: TCLookUp
      Left = 293
      Top = 25
      Width = 308
      Height = 19
      Alignment = taLeftJustify
      BevelInner = bvSpace
      BevelOuter = bvLowered
      Color = 14149350
      ParentBackground = False
      TabOrder = 3
      Key.Strings = (
        'idContratoCompra')
      LookUpKey.Strings = (
        'idContratoCompra')
      AlternateSQL.Strings = (
        
          'SELECT obsContratoCompra FROM ContratoCompra WHERE idEmpresa = [' +
          'DBEidEmpresa] AND idCadEmpresa = [DBEidCadEmpresa] AND idFornece' +
          'dor = [DBEidFornecedor]  AND idCadFornecedor = [DBEidCadForneced' +
          'or] AND idContratoCompra = ?')
      ClientDataSet = cdsLookUp
      DataSource = dsContrato
      ValidaCampoObrigatorio = True
      CampoObrigatorio = True
      LookUpTable = 'ContratoCompra'
      ReturnField = 'obsContratoCompra'
    end
    object LookEmissaoVenda: TCLookUp
      Left = 207
      Top = 25
      Width = 80
      Height = 19
      Alignment = taLeftJustify
      BevelInner = bvSpace
      BevelOuter = bvLowered
      Color = 14149350
      ParentBackground = False
      TabOrder = 4
      Key.Strings = (
        'idContratoCompra')
      LookUpKey.Strings = (
        'idContratoCompra')
      AlternateSQL.Strings = (
        
          'SELECT dtEmissao FROM ContratoCompra WHERE idEmpresa = [DBEidEmp' +
          'resa] AND idCadEmpresa = [DBEidCadEmpresa] AND idFornecedor = [D' +
          'BEidFornecedor]  AND idCadFornecedor = [DBEidCadFornecedor] AND ' +
          'idContratoCompra = ?')
      ClientDataSet = cdsLookUp
      DataSource = dsContrato
      ValidaCampoObrigatorio = True
      CampoObrigatorio = True
      LookUpTable = 'ContratoCompra'
      ReturnField = 'dtEmissao'
    end
  end
  object CPanelGradient1: TCPanelGradient [4]
    Left = 0
    Top = 475
    Width = 714
    Height = 36
    Align = alBottom
    TabOrder = 4
    CaptionNo = 0
    HintNo = 0
    BackgroundGradientColor = 12306636
    BackgroundGradientDirection = gdVertical
    TextColor = clBlack
    GradientColor = clBlack
    RegularButtonColor = clBlack
    SelectedButtonColor = clBlack
    ButtonOptions = []
    object Bevel4: TBevel
      Left = 1
      Top = 1
      Width = 712
      Height = 4
      Align = alTop
      Shape = bsFrame
      Style = bsRaised
      ExplicitLeft = 0
      ExplicitTop = 92
      ExplicitWidth = 573
    end
    object CLabel8: TCLabel
      Left = 551
      Top = 15
      Width = 54
      Height = 13
      Alignment = taRightJustify
      Caption = 'Diferen'#231'a'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object CLabel9: TCLabel
      Left = 400
      Top = 15
      Width = 38
      Height = 13
      Alignment = taRightJustify
      Caption = 'T'#237'tulos'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object CLabel10: TCLabel
      Left = 44
      Top = 15
      Width = 83
      Height = 13
      Alignment = taRightJustify
      Caption = 'Valor Entregue'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object CLabel2: TCLabel
      Left = 231
      Top = 15
      Width = 65
      Height = 13
      Alignment = taRightJustify
      Caption = 'Quantidade'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object DBEvlEntregue: TCDBEdit
      Left = 133
      Top = 12
      Width = 92
      Height = 19
      TabStop = False
      BevelKind = bkTile
      BiDiMode = bdRightToLeft
      BorderStyle = bsNone
      Color = 14149350
      DataField = 'vlEntregue'
      DataSource = dsDados
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentBiDiMode = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
      DecimalControl = True
      KeyMode = kmNormal
    end
    object DBEvlDifEntregue: TCDBEdit
      Left = 611
      Top = 12
      Width = 92
      Height = 19
      TabStop = False
      BevelKind = bkTile
      BiDiMode = bdRightToLeft
      BorderStyle = bsNone
      Color = 14149350
      DataField = 'vlDifEntregue'
      DataSource = dsDados
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentBiDiMode = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 1
      DecimalControl = True
      KeyMode = kmNormal
    end
    object DBEvlSomaTitulo: TCDBEdit
      Left = 444
      Top = 12
      Width = 92
      Height = 19
      TabStop = False
      BevelKind = bkTile
      BiDiMode = bdRightToLeft
      BorderStyle = bsNone
      Color = 14149350
      DataField = 'vlSomaTitulo'
      DataSource = dsGrid
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentBiDiMode = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 2
      DecimalControl = True
      KeyMode = kmNormal
    end
    object DBEqtPesoEntregue: TCDBEdit
      Left = 302
      Top = 12
      Width = 92
      Height = 19
      TabStop = False
      BevelKind = bkTile
      BiDiMode = bdRightToLeft
      BorderStyle = bsNone
      Color = 14149350
      DataField = 'qtPesoEntregue'
      DataSource = dsDados
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentBiDiMode = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 3
      DecimalControl = True
      KeyMode = kmNormal
    end
  end
  object CPanelGradient2: TCPanelGradient [5]
    Left = 0
    Top = 511
    Width = 714
    Height = 36
    Align = alBottom
    TabOrder = 5
    CaptionNo = 0
    HintNo = 0
    BackgroundGradientColor = 12306636
    BackgroundGradientDirection = gdVertical
    TextColor = clBlack
    GradientColor = clBlack
    RegularButtonColor = clBlack
    SelectedButtonColor = clBlack
    ButtonOptions = []
    object Bevel5: TBevel
      Left = 1
      Top = 1
      Width = 712
      Height = 4
      Align = alTop
      Shape = bsFrame
      Style = bsRaised
      ExplicitLeft = 0
      ExplicitTop = 92
      ExplicitWidth = 573
    end
    object CLabel11: TCLabel
      Left = 551
      Top = 14
      Width = 54
      Height = 13
      Alignment = taRightJustify
      Caption = 'Diferen'#231'a'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object CLabel13: TCLabel
      Left = 400
      Top = 14
      Width = 38
      Height = 13
      Alignment = taRightJustify
      Caption = 'T'#237'tulos'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object CLabel14: TCLabel
      Left = 31
      Top = 14
      Width = 96
      Height = 13
      Alignment = taRightJustify
      Caption = 'Valor Contratado'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object CLabel1: TCLabel
      Left = 231
      Top = 14
      Width = 65
      Height = 13
      Alignment = taRightJustify
      Caption = 'Quantidade'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object DBEvlContratoCompra: TCDBEdit
      Left = 133
      Top = 11
      Width = 92
      Height = 19
      TabStop = False
      BevelKind = bkTile
      BiDiMode = bdRightToLeft
      BorderStyle = bsNone
      Color = 14149350
      DataField = 'vlContratoCompra'
      DataSource = dsDados
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentBiDiMode = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
      DecimalControl = True
      KeyMode = kmNormal
    end
    object DBEvlDifContrato: TCDBEdit
      Left = 611
      Top = 11
      Width = 92
      Height = 19
      TabStop = False
      BevelKind = bkTile
      BiDiMode = bdRightToLeft
      BorderStyle = bsNone
      Color = 14149350
      DataField = 'vlDifContrato'
      DataSource = dsDados
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentBiDiMode = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 1
      DecimalControl = True
      KeyMode = kmNormal
    end
    object DBEvlSomaTitulo2: TCDBEdit
      Left = 444
      Top = 11
      Width = 92
      Height = 19
      TabStop = False
      BevelKind = bkTile
      BiDiMode = bdRightToLeft
      BorderStyle = bsNone
      Color = 14149350
      DataField = 'vlSomaTitulo'
      DataSource = dsGrid
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentBiDiMode = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 2
      DecimalControl = True
      KeyMode = kmNormal
    end
    object DBEqtContrato: TCDBEdit
      Left = 302
      Top = 11
      Width = 92
      Height = 19
      TabStop = False
      BevelKind = bkTile
      BiDiMode = bdRightToLeft
      BorderStyle = bsNone
      Color = 14149350
      DataField = 'qtContrato'
      DataSource = dsDados
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentBiDiMode = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 3
      DecimalControl = True
      KeyMode = kmNormal
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
    AfterInsert = cdsPadraoAfterInsert
    object cdsPadraoidFornecedor: TIntegerField
      FieldName = 'idFornecedor'
    end
    object cdsPadraoidCadFornecedor: TIntegerField
      FieldName = 'idCadFornecedor'
    end
    object cdsPadraostAtivo: TStringField
      FieldName = 'stAtivo'
      Size = 1
    end
    object cdsPadraostAberto: TStringField
      FieldName = 'stAberto'
      Size = 1
    end
    object cdsPadraostLiquidado: TStringField
      FieldName = 'stLiquidado'
      Size = 1
    end
    object cdsPadraoconsolidaemp: TStringField
      FieldName = 'consolidaemp'
      Size = 1
    end
    object cdsPadraoconsolidafilial: TStringField
      FieldName = 'consolidafilial'
      Size = 1
    end
    object cdsPadraolistaTitContrato: TStringField
      FieldName = 'listaTitContrato'
      Size = 1
    end
  end
  inherited cdsGrid: TClientDataSet
    AggregatesActive = True
    CommandText = 
      'SELECT CONVERT(BIT, 0) sel, idEmpresa, idCadEmpresa, id, idDocSe' +
      'rie, nrTitulo, idParcela, descAbreviada, vlParcela, vlPago, Sald' +
      'o, dtEmissao, dtVencimento, stParcela, tpConsulta FROM vConsulta' +
      'Titulos'
    object cdsGridsel: TBooleanField
      FieldName = 'sel'
      OnGetText = cdsGridselGetText
    end
    object cdsGrididEmpresa: TIntegerField
      FieldName = 'idEmpresa'
      Required = True
    end
    object cdsGrididCadEmpresa: TSmallintField
      FieldName = 'idCadEmpresa'
      Required = True
    end
    object cdsGridid: TIntegerField
      FieldName = 'id'
      Required = True
    end
    object cdsGrididDocSerie: TStringField
      FieldName = 'idDocSerie'
      Required = True
      Size = 5
    end
    object cdsGridnrTitulo: TStringField
      FieldName = 'nrTitulo'
      Required = True
    end
    object cdsGrididParcela: TSmallintField
      FieldName = 'idParcela'
      Required = True
    end
    object cdsGriddescAbreviada: TStringField
      FieldName = 'descAbreviada'
      Required = True
      Size = 30
    end
    object cdsGridvlParcela: TFMTBCDField
      FieldName = 'vlParcela'
      Required = True
      Precision = 10
      Size = 2
    end
    object cdsGridvlPago: TFMTBCDField
      FieldName = 'vlPago'
      Precision = 19
      Size = 4
    end
    object cdsGridSaldo: TFMTBCDField
      FieldName = 'Saldo'
      Precision = 19
      Size = 4
    end
    object cdsGriddtEmissao: TSQLTimeStampField
      FieldName = 'dtEmissao'
      Required = True
    end
    object cdsGriddtVencimento: TSQLTimeStampField
      FieldName = 'dtVencimento'
      Required = True
    end
    object cdsGridstParcela: TStringField
      FieldName = 'stParcela'
      Required = True
      Size = 15
    end
    object cdsGridtpConsulta: TStringField
      FieldName = 'tpConsulta'
      Required = True
      Size = 4
    end
    object cdsGridvlSomaTitulo: TAggregateField
      FieldName = 'vlSomaTitulo'
      Active = True
      currency = True
      DisplayName = ''
      Expression = 'SUM(vlParcela)'
    end
  end
  inherited sdsGrid: TSQLDataSet
    CommandText = 
      'SELECT CONVERT(BIT, 0) sel, idEmpresa, idCadEmpresa, id, idDocSe' +
      'rie, nrTitulo, idParcela, descAbreviada, vlParcela, vlPago, Sald' +
      'o, dtEmissao, dtVencimento, stParcela, tpConsulta FROM vConsulta' +
      'Titulos'
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
    Left = 224
    Top = 240
  end
  object cdsDados: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    CommandText = 'SELECT * FROM vContratoCompraValor WHERE 1=2'
    Params = <>
    ProviderName = 'dspDados'
    AfterOpen = cdsPadraoAfterOpen
    OnCalcFields = cdsDadosCalcFields
    Left = 280
    Top = 360
    object cdsDadosidEmpresa: TIntegerField
      FieldName = 'idEmpresa'
      Required = True
    end
    object cdsDadosidCadEmpresa: TSmallintField
      FieldName = 'idCadEmpresa'
      Required = True
    end
    object cdsDadosvlProduto: TFMTBCDField
      FieldName = 'vlProduto'
      Required = True
      currency = True
      Precision = 18
      Size = 4
    end
    object cdsDadosqtContrato: TFMTBCDField
      FieldName = 'qtContrato'
      Required = True
      DisplayFormat = '#,###0.000'
      EditFormat = '#,###0.000'
      Precision = 18
      Size = 3
    end
    object cdsDadosqtPesoEntregue: TIntegerField
      FieldName = 'qtPesoEntregue'
      DisplayFormat = '#,###0.000'
      EditFormat = '#,###0.000'
    end
    object cdsDadosvlEntregue: TFMTBCDField
      FieldName = 'vlEntregue'
      currency = True
      Precision = 29
      Size = 4
    end
    object cdsDadosvlDifEntregue: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'vlDifEntregue'
      Calculated = True
    end
    object cdsDadosvlDifContrato: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'vlDifContrato'
      Calculated = True
    end
    object cdsDadosidFornecedor: TIntegerField
      FieldName = 'idFornecedor'
      Required = True
    end
    object cdsDadosidCadFornecedor: TSmallintField
      FieldName = 'idCadFornecedor'
      Required = True
    end
    object cdsDadosidContratoCompra: TStringField
      FieldName = 'idContratoCompra'
      Required = True
      Size = 30
    end
    object cdsDadosvlContratoCompra: TFMTBCDField
      FieldName = 'vlContratoCompra'
      Required = True
      Precision = 19
      Size = 4
    end
  end
  object dsDados: TDataSource
    DataSet = cdsDados
    Left = 360
    Top = 360
  end
  object dspDados: TDataSetProvider
    DataSet = sdsDados
    Options = [poAllowMultiRecordUpdates, poPropogateChanges, poAllowCommandText, poUseQuoteChar]
    Left = 200
    Top = 360
  end
  object sdsDados: TSQLDataSet
    CommandText = 'SELECT * FROM vContratoCompraValor WHERE 1=2'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmPadrao.dbConexao
    Left = 128
    Top = 360
  end
  object cdsContrato: TClientDataSet
    Aggregates = <>
    Params = <>
    AfterOpen = cdsPadraoAfterOpen
    Left = 256
    Top = 592
    object cdsContratoidContratoCompra: TStringField
      FieldName = 'idContratoCompra'
      Size = 30
    end
  end
  object dsContrato: TDataSource
    DataSet = cdsContrato
    Left = 320
    Top = 592
  end
end
