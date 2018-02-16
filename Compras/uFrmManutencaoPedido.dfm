inherited FrmManutencaoPedido: TFrmManutencaoPedido
  Caption = 'Manuten'#231#227'o Pedido de Compra'
  ClientHeight = 571
  ClientWidth = 876
  ExplicitWidth = 892
  ExplicitHeight = 609
  PixelsPerInch = 96
  TextHeight = 13
  inherited Bevel1: TBevel
    Top = 567
    Width = 876
    Visible = False
    ExplicitTop = 496
    ExplicitWidth = 881
  end
  inherited PagAbas: TCPageControl
    Top = 26
    Width = 876
    Height = 510
    TabOrder = 1
    OnChange = PagAbasChange
    ExplicitTop = 26
    ExplicitWidth = 876
    ExplicitHeight = 510
    inherited TabAbas: TTabSheet
      Caption = 'Consulta'
      ExplicitLeft = 4
      ExplicitTop = 25
      ExplicitWidth = 868
      ExplicitHeight = 481
      object CGroupBox1: TCGroupBox
        Left = 3
        Top = 3
        Width = 654
        Height = 134
        Caption = 'Consulta Pedidos de Compra'
        TabOrder = 0
        object lbl1: TCLabel
          Left = 12
          Top = 72
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
        object lbl2: TCLabel
          Left = 132
          Top = 72
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
        object lbl3: TCLabel
          Left = 13
          Top = 22
          Width = 37
          Height = 13
          Alignment = taRightJustify
          Caption = 'Fornec.'
        end
        object lbl6: TCLabel
          Left = 394
          Top = 22
          Width = 47
          Height = 13
          Alignment = taRightJustify
          Caption = 'Pedido de'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object lbl7: TCLabel
          Left = 523
          Top = 22
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
        object lbl19: TCLabel
          Left = 12
          Top = 47
          Width = 38
          Height = 13
          Alignment = taRightJustify
          Caption = 'Produto'
          Transparent = True
        end
        object CLookUp1: TCLookUp
          Left = 454
          Top = 44
          Width = 187
          Height = 19
          Alignment = taLeftJustify
          BevelInner = bvSpace
          BevelOuter = bvLowered
          Color = 14149350
          ParentBackground = False
          TabOrder = 7
          Visible = False
          Key.Strings = (
            'idFornecedor')
          LookUpKey.Strings = (
            'idFornecedor')
          DataSource = dsPadrao
          ValidaCampoObrigatorio = False
          CampoObrigatorio = True
          LookUpTable = 'vCadFornecedorContabil'
          ReturnField = 'descCadFornecedor'
        end
        object DBEdtFinal: TCDBEdit
          Left = 155
          Top = 69
          Width = 70
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
          TabOrder = 9
          DecimalControl = True
          KeyMode = kmDate
        end
        object DBEdtInicial: TCDBEdit
          Left = 56
          Top = 69
          Width = 70
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
          TabOrder = 8
          DecimalControl = True
          KeyMode = kmDate
        end
        object DBEidFornecedor: TCDBEdit
          Left = 56
          Top = 19
          Width = 70
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'idFornecedor'
          DataSource = dsPadrao
          TabOrder = 0
          Find = dmFind.FindFornecedor
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEidPedidoFim: TCDBEdit
          Left = 545
          Top = 19
          Width = 70
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'idPedidoFim'
          DataSource = dsPadrao
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEidPedidoIni: TCDBEdit
          Left = 447
          Top = 19
          Width = 70
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'idPedidoIni'
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
        object LookRazao: TCLookUp
          Left = 132
          Top = 19
          Width = 256
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
          DataSource = dsPadrao
          ValidaCampoObrigatorio = False
          CampoObrigatorio = True
          LookUpTable = 'vCadFornecedorContabil'
          ReturnField = 'descCadFornecedor'
        end
        object DBEidProduto: TCDBEdit
          Left = 56
          Top = 44
          Width = 53
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'idProduto'
          DataSource = dsPadrao
          TabOrder = 3
          Find = dmFind.FindProduto
          AcaoCad = frmPrincipal.actCadProduto
          DecimalControl = True
          KeyMode = kmNormal
        end
        object LookProduto: TCLookUp
          Left = 118
          Top = 44
          Width = 279
          Height = 19
          Alignment = taLeftJustify
          BevelInner = bvSpace
          BevelOuter = bvLowered
          Color = 14149350
          ParentBackground = False
          TabOrder = 5
          Key.Strings = (
            'idProduto')
          LookUpKey.Strings = (
            'idProduto')
          ClientDataSet = cdsLookUp
          DataSource = dsPadrao
          ValidaCampoObrigatorio = False
          CampoObrigatorio = True
          LookUpTable = 'Produto'
          ReturnField = 'descProduto'
        end
        object LookProdMedida: TCLookUp
          Left = 403
          Top = 44
          Width = 45
          Height = 19
          Alignment = taLeftJustify
          BevelInner = bvSpace
          BevelOuter = bvLowered
          Color = 14149350
          ParentBackground = False
          TabOrder = 6
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
        object BitBtnPesquisar: TCBitBtn
          Left = 13
          Top = 94
          Width = 75
          Height = 25
          Caption = '&Pesquisar'
          Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            2000000000000004000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000B8824DFFB882
            4DFFB8824DFFB8824DFFB8824DFFB8824DFF000000000000000000000000B882
            4DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFF00000000B8824DFFB882
            4DFFB8824DFFB8824DFFB8824DFFB8824DFF000000000000000000000000B882
            4DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFF00000000B8824DFF4A34
            1F66B8824DFFB8824DFFB8824DFFB8824DFF000000000000000000000000B882
            4DFFB8824DFFB8824DFFB8824DFF4A341F66B8824DFF00000000B8824DFF4A34
            1F66B8824DFFB8824DFFB8824DFFB8824DFF000000000000000000000000B882
            4DFFB8824DFFB8824DFFB8824DFF4A341F66B8824DFF00000000B8824DFF4A34
            1F66B8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB882
            4DFFB8824DFFB8824DFFB8824DFF4A341F66B8824DFF00000000B8824DFF4A34
            1F66B8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB882
            4DFFB8824DFFB8824DFFB8824DFF4A341F66B8824DFF00000000B8824DFFB882
            4DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFF00000000B8824DFFB882
            4DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFF0000000000000000B882
            4DFF4A341F66B8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB882
            4DFFB8824DFFB8824DFF4A341F66B8824DFF000000000000000000000000B882
            4DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFF00000000B8824DFFB882
            4DFFB8824DFFB8824DFFB8824DFFB8824DFF0000000000000000000000000000
            0000B8824DFF4A341F66B8824DFFB8824DFFB8824DFF00000000B8824DFFB882
            4DFFB8824DFF4A341F66B8824DFF000000000000000000000000000000000000
            0000B8824DFF4A341F66B8824DFFB8824DFFB8824DFF00000000B8824DFFB882
            4DFFB8824DFF4A341F66B8824DFF000000000000000000000000000000000000
            0000B8824DFFB8824DFFB8824DFFB8824DFFB8824DFF00000000B8824DFFB882
            4DFFB8824DFFB8824DFFB8824DFF000000000000000000000000000000000000
            000000000000B8824DFFB8824DFFB8824DFF000000000000000000000000B882
            4DFFB8824DFFB8824DFF00000000000000000000000000000000000000000000
            000000000000B8824DFFB8824DFFB8824DFF000000000000000000000000B882
            4DFFB8824DFFB8824DFF00000000000000000000000000000000}
          TabOrder = 10
          OnClick = BitBtnPesquisarClick
        end
        object BitBtnFechar: TCBitBtn
          Left = 540
          Top = 94
          Width = 75
          Height = 25
          Caption = '&Fechar'
          Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            2000000000000004000000000000000000000000000000000000000000030000
            000B000000120000001300000013000000140000001400000014000000140000
            0014000000140000001500000015000000140000000D000000030000000B1C11
            6CC3261796FF271696FF261695FF261594FF251594FF251594FF241394FF2412
            93FF241292FF231292FF231192FF231191FF190C68C50000000C0000000F2B1C
            9BFF384AD3FF2637CEFF3042D2FF4254D9FF3646D4FF2437CCFF2434CCFF3444
            D3FF3C4ED6FF2A3ACEFF202FC9FF1E2CC9FF251595FF000000120000000F3121
            A0FF4356D7FF374BD5FF3F4BCBFF2827ABFF363CBEFF3E4FD6FF3D4ED5FF353A
            BEFF2827ABFF3B45C9FF2F41D0FF2332CCFF291A99FF000000120000000E3529
            A5FF4E62DBFF444FCCFF605DBDFFEDEDF8FF8B89CEFF383CBCFF383CBBFF8B89
            CEFFEDEDF8FF5F5DBDFF3D47C9FF293ACEFF2D1F9EFF000000110000000D392F
            ABFF596FDFFF2722A5FFECE7ECFFF5EBE4FFF8F2EEFF9491D1FF9491D1FFF8F1
            EDFFF3E9E2FFECE6EBFF2721A5FF2F42D1FF3326A3FF0000000F0000000C4036
            B1FF657AE2FF3135B7FF8070ADFFEBDBD3FFF4EAE4FFF7F2EDFFF8F1EDFFF4E9
            E2FFEADAD1FF7F6FACFF2E31B6FF3549D5FF372CA9FF0000000E0000000B453D
            B6FF6E83E5FF485EDCFF393BB7FF8A7FB9FFF6ECE7FFF5ECE6FFF4EBE5FFF6EB
            E5FF897DB8FF3739B6FF4054D9FF3D51D7FF3C33AFFF0000000D0000000A4A44
            BCFF788FE8FF6077E3FF4B4BBBFF9189C7FFF7EFE9FFF6EEE9FFF6EFE8FFF7ED
            E8FF9087C5FF4949BAFF596FDFFF4359DAFF423AB4FF0000000C00000009504C
            C2FF92A7EEFF5655BCFF8F89CAFFFBF6F4FFF7F1ECFFEDE1D9FFEDE0D9FFF7F0
            EAFFFAF5F2FF8F89CAFF5453BCFF6278E2FF4943B9FF0000000B000000086B6A
            D0FFADC1F4FF2A1E9BFFE5DADEFFF6EEEBFFEDDFDAFF816EA9FF816EA9FFEDDF
            D8FFF4ECE7FFE5D9DCFF2A1D9BFF8B9EEBFF6563C9FF0000000A000000077577
            D6FFB1C6F5FF6E77D1FF5747A1FFCCB6BCFF7A68A8FF4E4CB7FF4F4EB8FF7A68
            A8FFCBB5BCFF5746A1FF6B75D0FF8EA1ECFF706ED0FF0000000900000006797B
            DAFFB5CAF6FF93A7EEFF7079D2FF2E229BFF5453BBFF93A7EEFF93A7EEFF5555
            BCFF2E219BFF6F77D1FF91A4EDFF90A3EDFF7475D4FF00000008000000057D80
            DEFFB9CDF6FFB9CDF6FFB9CCF6FFB9CCF6FFB9CDF6FFB8CCF6FFB8CCF6FFB7CC
            F6FFB7CBF6FFB6CBF6FFB5C9F6FFB5C9F6FF787AD8FF00000006000000036062
            A6C08184E1FF8183E0FF8083E0FF7F83DFFF7F83DFFF7F82DFFF7E81DFFF7E81
            DEFF7D81DEFF7D80DEFF7D7FDEFF7C7FDDFF5C5EA3C100000004000000000000
            0002000000030000000400000004000000040000000400000004000000040000
            0004000000040000000400000005000000050000000300000001}
          TabOrder = 11
          OnClick = BitBtnFecharClick
        end
      end
      object CGroupBox2: TCGroupBox
        Left = 3
        Top = 143
        Width = 654
        Height = 312
        Caption = 'Listagem de Pedidos de Compra'
        TabOrder = 1
        object DBGridConsulta: TCDBGrid
          Left = 6
          Top = 14
          Width = 640
          Height = 291
          DataSource = dsGridConsulta
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection]
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          OnDblClick = DBGridConsultaDblClick
          UtilizaOrdenar = False
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
              Width = 50
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'idFornecedor'
              Title.Caption = 'Fornecedor'
              Width = 70
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'nrPedidoOriginal'
              Title.Caption = 'nrOriginal'
              Width = 90
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'idPedidoCompra'
              Title.Caption = 'nrPedido'
              Width = 70
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'idProduto'
              Title.Caption = 'Produto'
              Width = 70
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'dtPedido'
              Title.Caption = 'Data Pedido'
              Width = 100
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'obsPedido'
              Visible = False
            end
            item
              Expanded = False
              FieldName = 'stPedido'
              Title.Caption = 'Status'
              Width = 80
              Visible = True
            end>
        end
      end
    end
    object TabAbas2: TTabSheet
      Caption = 'Pedido'
      ImageIndex = 1
      object CGroupBox3: TCGroupBox
        Left = 3
        Top = 3
        Width = 854
        Height = 70
        Caption = 'Dados Gerais'
        TabOrder = 0
        object lbl4: TCLabel
          Left = 414
          Top = 24
          Width = 64
          Height = 13
          Alignment = taRightJustify
          Caption = 'Data Emiss'#227'o'
        end
        object lbl5: TCLabel
          Left = 24
          Top = 49
          Width = 46
          Height = 13
          Alignment = taRightJustify
          Caption = 'Nr Pedido'
        end
        object lbl10: TCLabel
          Left = 15
          Top = 24
          Width = 55
          Height = 13
          Alignment = taRightJustify
          Caption = 'Fornecedor'
        end
        object lbl8: TCLabel
          Left = 234
          Top = 49
          Width = 50
          Height = 13
          Alignment = taRightJustify
          Caption = 'Nr Original'
        end
        object DBEdtPedido: TCDBEdit
          Left = 484
          Top = 21
          Width = 84
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          Color = 14149350
          DataField = 'dtPedido'
          DataSource = dsPedido
          MaxLength = 10
          ReadOnly = True
          TabOrder = 1
          DecimalControl = True
          KeyMode = kmDate
        end
        object DBEidPedidoCompra: TCDBEdit
          Left = 76
          Top = 46
          Width = 130
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          Color = 14149350
          DataField = 'idPedidoCompra'
          DataSource = dsPedido
          ReadOnly = True
          TabOrder = 0
          DecimalControl = True
          KeyMode = kmNormal
        end
        object LookRazao2: TCLookUp
          Left = 152
          Top = 21
          Width = 256
          Height = 19
          Alignment = taLeftJustify
          BevelInner = bvSpace
          BevelOuter = bvLowered
          Color = 14149350
          ParentBackground = False
          TabOrder = 2
          Key.Strings = (
            'idFornecedor')
          LookUpKey.Strings = (
            'idFornecedor')
          ClientDataSet = cdsLookUp
          DataSource = dsPedido
          ValidaCampoObrigatorio = False
          CampoObrigatorio = True
          LookUpTable = 'vCadFornecedorContabil'
          ReturnField = 'descCadFornecedor'
        end
        object DBEidFornecedor2: TCDBEdit
          Left = 76
          Top = 21
          Width = 70
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          Color = 14149350
          DataField = 'idFornecedor'
          DataSource = dsPedido
          ReadOnly = True
          TabOrder = 3
          Find = dmFind.FindFornecedor
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEnrPedidoOriginal: TCDBEdit
          Left = 290
          Top = 46
          Width = 130
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          Color = 14149350
          DataField = 'nrPedidoOriginal'
          DataSource = dsPedido
          ReadOnly = True
          TabOrder = 4
          DecimalControl = True
          KeyMode = kmNormal
        end
      end
      object CGroupBox4: TCGroupBox
        Left = 3
        Top = 79
        Width = 854
        Height = 197
        Caption = 'Produtos lan'#231'ados no Pedido'
        TabOrder = 1
        object DBGridPedido: TCDBGrid
          Left = 8
          Top = 17
          Width = 833
          Height = 177
          DataSource = dsGridPedidoProd
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection]
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          OnDblClick = DBGridPedidoDblClick
          UtilizaOrdenar = False
          Columns = <
            item
              Expanded = False
              FieldName = 'idPedidoCompra'
              Title.Caption = 'Pedido'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'idProduto'
              Title.Caption = 'Produto'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'descProduto'
              Title.Caption = 'Descri'#231#227'o'
              Width = 180
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'descAbreviada'
              Title.Caption = 'Medida'
              Width = 40
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'qtPedida'
              Title.Caption = 'Qtde Pedida'
              Width = 68
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'qtAtendida'
              Title.Caption = 'Qtde Atendida'
              Width = 74
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'qtRetirada'
              Title.Caption = 'Qtde Retirada'
              Width = 72
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'qtSaldo'
              Title.Caption = 'Saldo'
              Width = 72
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'vlProduto'
              Title.Caption = 'Valor Produto'
              Width = 76
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'vlTotal'
              Title.Caption = 'Valor Total'
              Width = 76
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'idMaquina'
              Visible = False
            end
            item
              Expanded = False
              FieldName = 'marca'
              Visible = False
            end
            item
              Expanded = False
              FieldName = 'qtDiasEntrega'
              Visible = False
            end
            item
              Expanded = False
              FieldName = 'dtEntrega'
              Visible = False
            end
            item
              Expanded = False
              FieldName = 'stPedidoProd'
              Visible = False
            end
            item
              Expanded = False
              FieldName = 'obsProduto'
              Visible = False
            end>
        end
      end
    end
  end
  inherited PanBotoes: TCPanelGradient
    Top = 536
    Width = 876
    TabOrder = 2
    Visible = False
    ExplicitTop = 536
    ExplicitWidth = 876
    inherited BtnSalvar: TCBitBtn
      Visible = False
    end
    inherited BtnFechar: TCBitBtn
      Left = 399
      Visible = False
      ExplicitLeft = 399
    end
  end
  object PanEmpresa: TCPanelGradient [3]
    Left = 0
    Top = 0
    Width = 876
    Height = 26
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
      Visible = False
    end
    object lblInscricao: TCLabel
      Left = 191
      Top = 30
      Width = 72
      Height = 13
      Alignment = taRightJustify
      Caption = 'Inscr. Estadual'
      Transparent = True
      Visible = False
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
      TabOrder = 0
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
      TabOrder = 1
      DecimalControl = True
      KeyMode = kmNormal
    end
    object LookdescCadEmpresa: TCLookUp
      Left = 163
      Top = 5
      Width = 250
      Height = 19
      Alignment = taLeftJustify
      BevelInner = bvSpace
      BevelOuter = bvLowered
      Color = 14149350
      ParentBackground = False
      TabOrder = 2
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
      Left = 419
      Top = 5
      Width = 165
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
      ReturnField = 'descAbreviada'
    end
    object lookidCnpjCpf: TCLookUp
      Left = 59
      Top = 27
      Width = 126
      Height = 19
      Alignment = taLeftJustify
      BevelInner = bvSpace
      BevelOuter = bvLowered
      Color = 14149350
      ParentBackground = False
      TabOrder = 4
      Visible = False
      Key.Strings = (
        'idEmpresa'
        'idCadEmpresa')
      LookUpKey.Strings = (
        'idEmpresa'
        'idCadEmpresa')
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
      TabOrder = 5
      Visible = False
      Key.Strings = (
        'idEmpresa'
        'idCadEmpresa')
      LookUpKey.Strings = (
        'idEmpresa'
        'idCadEmpresa')
      ValidaCampoObrigatorio = True
      CampoObrigatorio = True
      LookUpTable = 'vCadEmpresaFiscal'
      ReturnField = 'idInscEstadual'
    end
  end
  inherited imgIcones: TImageList
    Left = 560
    Top = 280
    Bitmap = {
      494C010107000900600010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000002000000001002000000000000020
      000000000000000000000000000000000000000000008E8E8E008E8E8E008E8E
      8E00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FEFEFEFF8F98A1FFBBBDBEFF000000000000000000000000000000000000
      000000000000000000000000000000000000BAAEABFFCDCDCDFF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000008E8E8E00CBCBCB00BABA
      BA00A5A5A500A2A2A20094949400858585007E7E7E0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FEFE
      FEFF3F5B78FF517DAAFF406892FFBDBFC0FF0000000000000000000000000000
      00000000000000000000AEC7CCFF6F807CFFDC5B35FFA53915FFC4C4C4FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000008E8E8E00D8D8D800D4D4
      D400CFCFCF00C9C9C900C5C5C500BEBEBE00ABABAB00A1A1A100949494008787
      87009595950000000000000000000000000000000000F4F5F5FF000000000000
      000000000000000000000000000000000000000000000000000000000000445F
      7DFF4F7BA8FF86A4C1FFADC3D9FF929BA4FF0000000000000000000000000000
      000000000000ABC1C6FF849B9AFF879990FFAD5639FFDC6A49FFA93C1AFFC4C4
      C4FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000008E8E8E00DCDCDC00D8D8
      D800D3D3D300CDCDCD00C8C8C800C2C2C200BDBDBD00B9B9B900B6B6B600B8B8
      B800B1B1B1009E9E9E008E8E8E0000000000BAADACFFA6422BFF844D40FF856F
      6EFFACACACFFE6E6E6FFFEFEFEFFF9F9F9FF00000000E6E5E5FF44546AFF4E7C
      AAFF7F9EBCFFC8D6E5FF667D95FFFDFDFDFF0000000000000000000000000000
      000000000000679EA2FFB73A14FFD67A5FFFE88363FFE68566FFD6633EFFAE40
      1DFFC4C4C4FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000008E8E8E00DEDEDE00DBDB
      DB00D7D7D700D2D2D200CDCDCD00C7C7C700C2C2C200B2B2B200B9B9B900B6B6
      B600B6B6B600AEAEAE008E8E8E0000000000B09E9CFFD0724EFFD7713EFFDA72
      3EFFD06132FFA76D63FFB0A2A3FFCAACA9FFB39FA0FF9D8F90FFC0AEADFF7287
      9EFFC7D7E8FF6C819AFFFEFEFEFF00000000000000000000000000000000AEC7
      CCFF717C78FFB58871FFB0998AFFE27E60FFE48367FFE57F5FFFD26846FFF7AD
      94FFAB3916FFC4C4C4FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000008E8E8E00DEDEDE00DDDD
      DD00DADADA00D7D7D700D2D2D200CCCCCC00C7C7C700686868009B9B9B00B8B8
      B800B6B6B600B1B1B1008E8E8E0000000000AD9694FFD38267FFD17444FFCF68
      35FFCFA99FFFDFBBAFFFF0C6B3FFFADED0FFF1C7B4FFDAAC9FFFAD9A9CFFE0D9
      D6FF727F8FFFFEFEFEFF00000000000000000000000000000000ABC1C6FF849B
      9AFF879A90FFAE5337FFEC8669FFE4886EFFE48161FFE48163FFE57E5CFFD686
      63FFFFC2A9FFAD3C19FFC7C7C7FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000008E8E8E00DEDEDE00DDDD
      DD00DDDDDD00DBDBDB00D6D6D600D1D1D100CBCBCB00BEBEBE0068686800BCBC
      BC00B8B8B800B4B4B4008E8E8E0000000000AB8F8CFFE5A187FFCF7D59FFD59D
      83FFDCB7AAFFF1C7B0FFF4D7C5FFF4DAC9FFF4D7C7FFF2CBB3FFD9A89AFFA186
      7FFFE7D6D4FF0000000000000000000000000000000000000000679EA3FFB73B
      16FFD67D66FFE8896DFFE48870FFE58365FFE5896DFFE6876AFFCF6341FFF5C4
      A0FFFFEDD2FFFA8463FF9D8888FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000008E8E8E00DDDDDD00DDDD
      DD00DDDDDD00DDDDDD00D9D9D900D5D5D500D0D0D000C9C9C900787878006868
      6800BBBBBB00B5B5B5008E8E8E0000000000A68985FFF3B89EFFCD8269FFDFC7
      C2FFE29F7EFFEFC4ABFFEFC6AEFFEFC8B2FFF0C7B0FFEFC2A8FFE5A484FFB6A0
      9FFFC27D66FF000000000000000000000000CAE2E6FF6B7773FFB58974FFB097
      87FFE28165FFE4886FFFE58569FFCF7E68FFD9876FFFD66B46FFFFD0AEFFFFEC
      D2FFFCA286FFA46D5DFF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000008E8E8E00E0E0E000DDDD
      DD00DDDDDD009898980070707000D9D9D900D5D5D500D5D5D5007C7C7C006868
      6800BFBFBF00B9B9B9008E8E8E0000000000AD8883FFF3C2AAFFD3907AFFE0C8
      BFFFEEC1AAFFF3D4C2FFF3D6C5FFEDBDA3FFEBB699FFEBB393FFE7A17CFFC5B2
      B3FFBF673BFFF8F2F2FF0000000000000000D2D7D4FF7F9289FFAD5033FFEB86
      6AFFE48D75FFE79882FFECAB98FFCC9489FFB96C5AFF71A1C4FF7892A8FFF99C
      79FFA46C5DFF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000008E8E8E00F6F6F600EDED
      ED00D2D2D2007575750075757500D6D6D600D5D5D500707070007E7E7E006868
      6800C3C3C300BDBDBD008E8E8E0000000000AA8580FFF7CDB5FFDB9F8AFFDCC7
      C6FFEBBFAAFFF4D8C7FFF3D8C8FFF4D8C8FFEDBEA2FFEDBB9EFFDF916CFFC1B2
      B2FFD78860FFD7A79BFF0000000000000000E3A794FFEE9D87FFF2B9ABFFEEB9
      ACFFEFB9A9FFEFBAABFFF2BFB1FFCE775DFF76BEE5FF08B8FFFF1F8FFFFF4D50
      69FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000008E8E8E00949494009494
      9400686868008A8A8A006C6C6C006C6C6C007070700088888800686868007070
      7000C8C8C800C1C1C1008E8E8E0000000000B18781FFF8D5C1FFF1C7B2FFDDB2
      A4FFDFBDB1FFF8E0D3FFF6E0D3FFF6E0D3FFF7E2D6FFF9E4D8FFDCB3A7FFC9A7
      9CFFE9BBA4FFD5987FFFFDFCFCFF00000000F6F4F3FFDE8469FFEFC0B2FFF3CD
      C3FFF3CCC3FFF5D3C9FFD58167FFFFD9C7FF1BEAFFFF02CAFFFF05B3FEFF2997
      FFFF647D96FFFDFDFDFF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000008E8E8E00C1C1C1009191
      910081818100B2B2B2008F8F8F007E7E7E00727272007575750068686800D3D3
      D300CDCDCD00C5C5C5008E8E8E0000000000B78B85FFFADDCBFFF3CFBDFFF1C7
      B1FFE4CEC7FFDFBEB4FFEECBBAFFF6DED3FFEDCABAFFDFBDB3FFDCD0CEFFEBCA
      B7FFF2D1C0FFF0CBB8FFE8D1CDFF0000000000000000C18D7EFFFAD9D2FFF3D2
      C7FFFAE9E6FFD58871FFF4DCCDFFFFFFFCFFBEBAAAFF17FAFFFF05CAFFFF05B3
      FEFF2D98FFFF647D96FFFCFCFCFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000008E8E8E00DEDEDE006868
      6800A2A2A200AEAEAE0091919100686868006868680068686800DBDBDB00D7D7
      D700D2D2D200CBCBCB008E8E8E0000000000BA9089FFFCE6D6FFF4D8C8FFF3D2
      C0FFF2C9B4FFE9C7B9FFE3CFCAFFDFC3BBFFE1CBC6FFD9A999FFD6927BFFB47D
      74FFCEADA7FFD8ABA0FFC08075FF0000000000000000FAFAFAFFE9987FFFFFFF
      FFFFDC8265FFF7ECE8FFFFFFFFFFFDAF92FFA86660FFBCD4D6FF20FFFFFF05C9
      FFFF05B3FEFF2D98FFFF5C748EFFFDFDFDFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000008E8E8E00E1E1E100B1B1
      B100686868007D7D7D007A7A7A0068686800A5A5A500E5E5E500E1E1E100D6D6
      D600DBDBDB00CBCBCB008E8E8E0000000000C0918CFFFFEEE1FFF8E0D1FFF6DA
      CAFFF4D4C4FFF7D2BFFFF9C9B2FFF6C4ABFFF4BEA3FFF0B89BFFF4B698FF8758
      51FF000000000000000000000000000000000000000000000000C39E93FFE294
      7BFFBFA2A0FFEF9775FFFCB399FFA2695DFF0000000000000000BCD3D5FF1DFF
      FFFF05C9FFFF02B4FFFF40B0FFFF959FA6FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000008E8E8E00CECECE00DEDE
      DE00CBCBCB00767676007D7D7D0068686800686868008B8B8B008E8E8E008E8E
      8E008E8E8E008E8E8E008E8E8E0000000000B09C9BFFFFF0E4FFFFEFE1FFFDE9
      DAFFFFE5D5FFAE7B75FFB8ABABFFAD9795FFA98984FFAD8078FFBF7D70FF9976
      73FF00000000000000000000000000000000000000000000000000000000F3F2
      F2FF00000000D2C1BCFFBC9081FF00000000000000000000000000000000C2D9
      DBFF0FFAFFFF1FB6E5FF4C7A90FFF7F7F7FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000008E8E8E008E8E
      8E008E8E8E008E8E8E008E8E8E00000000000000000000000000000000000000
      000000000000000000000000000000000000FEFEFEFFBFAAA9FFC0A6A3FFCBA8
      A3FFC89D97FFF5F4F4FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000E6FDFFFF85BFE2FFF4F5F5FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000824B4B004E1E1F0000000000000000000000
      00000000000000000000000000000000000000000000C7BCB7FFC9BDB8FFC8BF
      BCFFC5C5C5FFC5C5C6FFC5C4C3FFC5C3C2FFC5C3C2FFC5C3C2FFC5C1BFFFC8BB
      B6FFC8BDB8FFC9BEB9FFC8BCB7FFE6E6E6FF00000000E8E8E8FFBFBFBFFFF4F4
      F4FF00000000F9F9F9FFDFDFDFFFCACACAFFBEBEBEFFBCBCBCFFB6B6B6FF9898
      98FFA5A5A5FFA2A2A2FF00000000000000000000000000000000000000000000
      000049455100978683009F7F7700643D3300A97D7300A97D7300643D33000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000824B4B00824B4B00A64B4B00A94D4D004E1E1F0000000000000000000000
      000000000000000000000000000000000000FDF9F7FFE26C2FFFED8444FFC77B
      58FFD6CEC6FFD58C5EFFCBC0B8FFCFD1D2FFCCCCCCFFC9CBCDFFC4AC9CFFEC7E
      3FFFCF5B28FFEB8346FFF18042FFB5A39CFFEAEAEAFFE1E1E0FF9F9E9EFF7F7F
      7FFF959595FF919191FFBCBDBDFFDCDEDDFFEBEDEEFFE2E3E4FFC5C5C5FFB7B7
      B7FF9C9C9CFFABABABFF7F7F7FFFBCBCBCFF0000000000000000000000004945
      51007A717100DED3D300F7E6E700FCE8E5002B64D1003D79E70070616100B1AC
      AE00A47D73005A484B0000000000000000000000000000000000824B4B00824B
      4B00B64F5000C24F5000C54D4E00B24D4E004E1E1F00824B4B00824B4B00824B
      4B00824B4B00824B4B00824B4B0000000000FCF9F8FFE1793BFFED8E50FFC680
      5EFFD5C6BBFFDB7C3AFFCDBCAFFFD8D9D9FFD1D1D1FFCED0D1FFC3AF9FFFD880
      44FFC55F2EFFEB8E52FFF18D4FFFB8A8A1FFE9E9E9FF939392FFC1C1C0FF9E9E
      9DFF888A89FFC3BBB8FFC0A79FFFCBAA9EFFD5B7ACFFDABCB1FFCFCAC9FFD8D8
      D8FFCDCDCDFFC8C8C8FFD9D9D9FFB8B8B8FF0000000000000000494551007D74
      74006C646B00E5DADE00FAE7E600FDF0F0002961CC004C7CE10084625F00F7E6
      E700F9EAEC005A484B0000000000000000000000000000000000824B4B00D458
      5900CB555600C9545500C9525300B74F52004E1E1F00FE8B8C00FB9A9C00F8AA
      AB00F7B5B600F7B5B600824B4B0000000000FCF9F7FFE1793CFFE88B4EFFBE7E
      5FFFDECEC3FFD97938FFD5C4B7FFE4E6E7FFDFDFDFFFDADCDEFFCBB6A7FFD880
      43FFBA582BFFE2894EFFF18D4FFFB8A8A0FFE7E7E7FF9E9E9FFFA1A2A1FFC5C8
      C7FF937064FFB3552EFFB86F4EFFC4937DFFDCBEB0FFDCC1B3FFC7C6C6FFC0C0
      C0FFCBCBCBFFD1D1D1FFDBDBDBFFD8D8D8FF0000000049455100887F7E007D74
      74006A5F6200E0D5D600FAE7E600FDF0F0002455B4004C78D4006A5F6200F7E6
      E700FAEAEB005A484B0000000000000000000000000000000000824B4B00D75C
      5D00D05A5B00CF595A00CF575800BD5356004E1E1F0023B54A0013C1480016BD
      48000CBC4100F7B5B600824B4B0000000000FCF9F8FFE3793BFFD98349FFBF7F
      5FFFEDEBE7FFD2966CFFE5E0DCFFF5FCFFFFEFF5F8FFEBF3F7FFD2C0B3FFD67A
      3FFFBA5829FFD5834AFFEF8C4DFFB8A8A1FFEEEEEEFFB2B2B1FF7E7F7EFFDADB
      DCFFA29087FFBE7B5BFFC5896BFFD4A995FFE2CCBFFFE7D0C5FFC0BBB8FFB1B2
      B3FFE2E2E2FFE1E2E3FFE7E8E8FFAEAEAEFF0000000049455100887F7E007B6D
      6D0041435000EADEE200FAEDEF00FAEBEE001F4284001F3E780049455100F7E6
      E700FAEBEE005A484B0000000000000000000000000000000000824B4B00DD63
      6400D75F6000D55E5F00D55C5D00C2575A004E1E1F002AB44D001CBF4C001EBC
      4C0013BC4500F7B5B600824B4B0000000000FCF9F8FFDA7439FFD8864DFFC561
      2CFFB86C4AFFBA6F50FFBA6C49FFBE6C47FFBE6B47FFBA6B47FFB5552AFFB74C
      1CFFC45F2CFFD8854CFFE48549FFB8A8A1FFF8F8F8FFCACAC9FF7B7C7BFFC6C6
      C6FFC8C7C6FFC38568FFCE9173FFDAB09AFFE9D3C7FFEED9CEFFDBBAABFFCFC1
      B8FFD6DEE1FFB87458FFF9F6F5FF0000000000000000494551007D7474006A5F
      62004143500036292F00FBEEEF00FEF0F800B0B1B20096858400F6E5E600FAEA
      EB00FDF0F1005A484B0000000000000000000000000000000000824B4B00E368
      6900DD656600DA636400DE666700C6595B004E1E1F0026B1490016BC48001BBB
      490010BB4300F7B5B600824B4B0000000000FDF9F8FFD37237FFD1753EFFC7A0
      8EFFCFA593FFCDA592FFCFA592FFCEA492FFCEA492FFCFA592FFCEA695FFCEA8
      97FFC89E8CFFD2753DFFDE8248FFB8A8A1FFFDFDFDFFD9D9DAFF828382FFADAF
      ADFFE3E7E9FFAB6F51FFCB8E70FFE4B9A4FFECD6C9FFEBD6CDFFE0BCA8FFD498
      7BFFD29A7EFFC66F49FFFDF9F8FF0000000000000000494551006C616500333D
      54001B3665002034580053474E00FDF2F300AE918C009ED8D30084625F00FEFD
      FD00FDF1F500948584001A315F00000000000000000000000000824B4B00EB6D
      6E00E2676800E67E7F00FAD3D400CC6E70004E1E1F00A5D8970050D16F0042C9
      66002DC75800F7B5B600824B4B0000000000FDF9F8FFD07036FFC66B3BFFEEF9
      FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFE9F4FAFFC76936FFDD8247FFB8A8A0FF00000000D4D4D4FF9A9B9AFF9FA0
      9FFFD4D7D9FFA57660FFCE9071FFD6AC97FFEDD6CBFFEBD6CDFFE3BEADFFD29B
      7EFFD19172FFC86E46FFFCF9F8FF0000000000000000494551003D4251001934
      65001B3665001D3B6800243E6C00B1ACAE00887F7E009ED8D30084625F00FEFD
      FD0080777D001A315F0000000000000000000000000000000000824B4B00F273
      7400E96C6D00EB818200FCD1D300CF6E70004E1E1F00FFF2CC00FFFFD700FFFF
      D400E6FCC700F7B5B600824B4B0000000000FDF9F8FFD17036FFC56A3AFFF0F7
      FBFFF5F5F5FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF5F5
      F5FFEBF3F7FFC76834FFDD8247FFB8A8A0FF00000000E2E2E2FFACACACFF9C9D
      9CFFBFC2C3FFA47A65FFD09272FFD9AF9AFFEAD3C7FFEFDAD0FFE4BFADFFD59C
      7FFFCF9072FFC96E45FFFCF9F8FF00000000000000004446540019315D001D39
      67001D3866001D3B68001D3A68002E3B5600DBD2D200FEF8FC00FEFDFD004143
      50001A315F000000000000000000000000000000000000000000824B4B00F878
      7900F0757600EE727300F0737400D16566004E1E1F00FCEFC700FFFFD500FFFF
      D300FFFFD700F7B5B600824B4B0000000000FDF9F8FFD47137FFC46A3AFFEFF6
      FAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFEAF2F6FFC76834FFDE8347FFB8A8A1FF00000000FAFAFAFFB3B3B3FFA6A7
      A6FFA9ADAEFFA9785FFFC98A6CFFD6AB95FFF0D7CCFFF4DED3FFE8C3B2FFDAA1
      83FFD49575FFC9734DFFFCF9F8FF00000000000000001D325C001B3665001D38
      6600223D6B00203D6C001E3C6A00203E760049455100D6D4D200050206001A31
      5F00000000000000000000000000000000000000000000000000824B4B00FE7F
      8000F77A7B00F6797A00F7777900D76B6B004E1E1F00FCEFC700FFFFD500FFFF
      D300FFFFD500F7B5B600824B4B0000000000FCF9F8FFDB7439FFC46A3AFFF0F7
      FBFFF5F5F5FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF5F5
      F5FFEBF2F6FFC76834FFE5854AFFB8A8A1FF0000000000000000E2E1E1FFDDDC
      DDFF949190FFB36C49FFA2745DFFAC9185FFBBADA7FFC0B5AFFFB6A198FFAC81
      6EFFAE7457FFBF6641FFFDFAF8FF0000000000000000000000001A3565001B36
      65001D3B6800223D6B00244170002441700023416E00203458001A315F000000
      0000000000000000000000000000000000000000000000000000824B4B00FF83
      8400FC7F8000FB7E7F00FE7F8000DA6E6F004E1E1F00FCEFC700FFFFD500FFFF
      D300FFFFD500F7B5B600824B4B0000000000FCF9F8FFE37A3CFFC76B3AFFEFF6
      FAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFEAF2F6FFC56734FFEF8C4DFFB8A8A1FF0000000000000000FEFEFEFFF4F4
      F4FF857067FFA1A4A5FFB9BCBEFFCBCCCCFFD6D7D8FFDEDDDDFFD3D5D4FFC2C6
      C7FFB0B5B6FF897D78FFC6C3C2FF000000000000000000000000000000001B36
      6500234075001E3C6A002441700025417300203E76001A315F00000000000000
      0000000000000000000000000000000000000000000000000000824B4B00FF88
      8900FF828300FF818200FF828300E07374004E1E1F00FCEFC700FFFFD500FFFF
      D300FFFFD500F7B5B600824B4B0000000000FCF9F8FFE77A39FFD26F3DFFEFF7
      FBFFF5F5F5FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF5F5
      F5FFEBF2F6FFD16D38FFF49050FFB8A8A0FF000000000000000000000000FDFD
      FDFFAAABACFFB2A29AFFC8B9B3FFC6C6C5FFDBDADAFFBEBCBCFFC9C8C8FFD1D1
      D1FFC6BEB9FFBEBCBBFFA5A5A5FF000000000000000000000000000000000000
      0000223D6B001E3C6A0024417000223D6B001A315F0000000000000000000000
      0000000000000000000000000000000000000000000000000000824B4B00824B
      4B00E2757600FE818200FF868700E57677004E1E1F00FAEBC500FCFBD100FCFB
      CF00FCFBD100F7B5B600824B4B0000000000FEFAF7FF966252FFAF684FFFF3FB
      FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFECF4F9FFC25D2EFFCD6435FFB9A9A1FF000000000000000000000000FEFE
      FEFFDDDFDFFF928F8DFFBDBCBDFFC0C0C0FFC4C4C4FFD9D9D9FFD5D5D5FFD7D7
      D7FFB1ADABFFD1D0D1FFC9C9CAFF000000000000000000000000000000000000
      00000000000025407400203E76001A315F000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000824B4B009C565700CB6C6D00CF6E6E004E1E1F00824B4B00824B4B00824B
      4B00824B4B00824B4B00824B4B0000000000FDF9F7FF903617FFAD512CFFD1CB
      C8FFD9CEC8FFD9CDC7FFD9CDC7FFD9CDC7FFD9CDC7FFD9CDC7FFD9CDC7FFDACE
      C8FFCCC7C5FFC55A26FFCC5B27FFB4A39AFF0000000000000000000000000000
      0000FDFDFCFFF1F0EFFFD3D4D4FFA4A4A4FFC0C0C0FFD5D5D5FFD8D8D8FFE1E0
      E1FFF3F3F4FFF4F3F2FF00000000000000000000000000000000000000000000
      000000000000000000001A315F00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000824B4B00824B4B004E1E1F0000000000000000000000
      00000000000000000000000000000000000000000000FBF2EDFFFAF0ECFFFAEF
      EAFFFAEFEAFFFAEFEAFFFAEFEAFFFAEFEAFFFAEFEAFFFAEFEAFFFAEFEAFFFAEF
      EAFFFAEFEAFFFAF0ECFFFBF0ECFFFDFDFDFF0000000000000000000000000000
      0000000000000000000000000000FFFFFFFFF1F1F1FFF2F2F2FFFEFEFEFF0000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000200000000100010000000000000100000000000000000000
      000000000000000000000000FFFFFF008FFFFFF1FF3F0000807FFFE0FC1F0000
      8007BFE0F80F000080010080F807000080010001E003000080010003C0010000
      80010007C00100008001000700030000800100030007000080010003000F0000
      8001000100030000800100018001000080010001800000008001000FC0C00000
      8001000FE9E00000C1FF03FFFFF10000FFFFFE7F80008803F01FF07F00000000
      E003C00100000000C003C001000000008003C001000000008003C00100000001
      8003C001000000018001C001000080018003C001000080018007C00100008001
      800FC0010000C001C01FC0010000C001E03FC0010000E001F07FC0010000E001
      F8FFF0010000F003FDFFFC7F8000FE1F00000000000000000000000000000000
      000000000000}
  end
  inherited Acao: TActionList
    Left = 528
    Top = 280
  end
  object cdsEmpresa: TClientDataSet
    Aggregates = <>
    CommandText = 'select * from vCadEmpresaFiscal'
    Params = <>
    ProviderName = 'dspEmpresa'
    Left = 488
    Top = 224
    object cdsEmpresaidEmpresa: TIntegerField
      FieldName = 'idEmpresa'
    end
    object cdsEmpresaidCadEmpresa: TIntegerField
      FieldName = 'idCadEmpresa'
    end
  end
  object dsEmpresa: TDataSource
    DataSet = cdsEmpresa
    Left = 520
    Top = 224
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
      'Raz'#227'o Social'
      'Nome Fantasia'
      'Cnpj/Cpf')
    TypeFind = fFindNormal
    Left = 560
    Top = 224
  end
  object cdsLookUp: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspLookUp'
    Left = 392
    Top = 224
  end
  object dspLookUp: TDataSetProvider
    DataSet = dmPadrao.sdsLookup
    Options = [poPropogateChanges, poAllowCommandText]
    Left = 360
    Top = 224
  end
  object dsPadrao: TDataSource
    DataSet = cdsPadrao
    Left = 424
    Top = 256
  end
  object cdsPadrao: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPadrao'
    Left = 392
    Top = 256
    object cdsPadraoidEmpresa: TIntegerField
      FieldName = 'idEmpresa'
    end
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
    object cdsPadraoidPedidoIni: TIntegerField
      FieldName = 'idPedidoIni'
    end
    object cdsPadraoidPedidoFim: TIntegerField
      FieldName = 'idPedidoFim'
    end
    object cdsPadraoidProduto: TIntegerField
      FieldName = 'idProduto'
    end
  end
  object dspPadrao: TDataSetProvider
    DataSet = sdsPadrao
    Options = [poAllowMultiRecordUpdates, poPropogateChanges, poAllowCommandText, poUseQuoteChar]
    Left = 360
    Top = 256
  end
  object sdsPadrao: TSQLDataSet
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmPadrao.dbConexao
    Left = 328
    Top = 256
  end
  object dsPedido: TDataSource
    DataSet = cdsPedido
    Left = 141
    Top = 296
  end
  object dspPedido: TDataSetProvider
    DataSet = sdsPedido
    Options = [poAllowMultiRecordUpdates, poPropogateChanges, poAllowCommandText, poUseQuoteChar]
    Left = 77
    Top = 296
  end
  object sdsPedido: TSQLDataSet
    SchemaName = 'sa'
    CommandText = 
      'SELECT idFornecedor, idPedidoCompra, nrPedidoOriginal, dtPedido ' +
      'FROM PedidoCompra'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmPadrao.dbConexao
    Left = 44
    Top = 296
  end
  object sdsGridPedidoProd: TSQLDataSet
    SchemaName = 'sa'
    GetMetadata = False
    CommandText = 
      'SELECT p.idPedidoCompra, p.idProduto, prod.descProduto, pm.descA' +
      'breviada, p.qtPedida,  p.qtAtendida, p.qtRetirada, p.vlProduto, ' +
      'p.vlTotal, (p.qtPedida-p.qtAtendida-p.qtRetirada) as qtSaldo, p.' +
      'idMaquina, p.marca, p.qtDiasEntrega, p.dtEntrega, p.stPedidoProd' +
      ', p.obsProduto FROM PedidoCompraProd p INNER JOIN Produto prod O' +
      'N p.idProduto = prod.idProduto INNER JOIN ProdMedida pm ON prod.' +
      'idProdMedida = pm.idProdMedida WHERE 1=2 ORDER BY p.idPedidoComp' +
      'ra'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmPadrao.dbConexao
    Left = 44
    Top = 344
  end
  object dspGridPedidoProd: TDataSetProvider
    DataSet = sdsGridPedidoProd
    Options = [poAllowMultiRecordUpdates, poPropogateChanges, poAllowCommandText, poUseQuoteChar]
    Left = 77
    Top = 344
  end
  object cdsGridPedidoProd: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    CommandText = 
      'SELECT p.idPedidoCompra, p.idProduto, prod.descProduto, pm.descA' +
      'breviada, p.qtPedida,  p.qtAtendida, p.qtRetirada, p.vlProduto, ' +
      'p.vlTotal, (p.qtPedida-p.qtAtendida-p.qtRetirada) as qtSaldo, p.' +
      'idMaquina, p.marca, p.qtDiasEntrega, p.dtEntrega, p.stPedidoProd' +
      ', p.obsProduto FROM PedidoCompraProd p INNER JOIN Produto prod O' +
      'N p.idProduto = prod.idProduto INNER JOIN ProdMedida pm ON prod.' +
      'idProdMedida = pm.idProdMedida WHERE 1=2 ORDER BY p.idPedidoComp' +
      'ra'
    Params = <>
    ProviderName = 'dspGridPedidoProd'
    Left = 109
    Top = 344
    object cdsGridPedidoProdidPedidoCompra: TIntegerField
      FieldName = 'idPedidoCompra'
      Required = True
    end
    object cdsGridPedidoProdidProduto: TIntegerField
      FieldName = 'idProduto'
      Required = True
    end
    object cdsGridPedidoProddescProduto: TStringField
      FieldName = 'descProduto'
      Required = True
      Size = 50
    end
    object cdsGridPedidoProddescAbreviada: TStringField
      FieldName = 'descAbreviada'
      Required = True
      Size = 5
    end
    object cdsGridPedidoProdqtPedida: TFMTBCDField
      FieldName = 'qtPedida'
      Required = True
      DisplayFormat = '#,0.000'
      Precision = 18
      Size = 3
    end
    object cdsGridPedidoProdqtAtendida: TFMTBCDField
      FieldName = 'qtAtendida'
      Required = True
      DisplayFormat = '#,0.000'
      Precision = 18
      Size = 3
    end
    object cdsGridPedidoProdqtRetirada: TFMTBCDField
      FieldName = 'qtRetirada'
      DisplayFormat = '#,0.000'
      Precision = 18
      Size = 3
    end
    object cdsGridPedidoProdvlProduto: TFMTBCDField
      FieldName = 'vlProduto'
      DisplayFormat = '#,0.00'
      Precision = 18
      Size = 4
    end
    object cdsGridPedidoProdvlTotal: TFMTBCDField
      FieldName = 'vlTotal'
      DisplayFormat = '#,0.00'
      Precision = 18
      Size = 2
    end
    object cdsGridPedidoProdqtSaldo: TFMTBCDField
      FieldName = 'qtSaldo'
      DisplayFormat = '#,0.000'
      Precision = 20
      Size = 3
    end
    object cdsGridPedidoProdidMaquina: TIntegerField
      FieldName = 'idMaquina'
    end
    object cdsGridPedidoProdmarca: TStringField
      FieldName = 'marca'
      Size = 40
    end
    object cdsGridPedidoProdqtDiasEntrega: TSmallintField
      FieldName = 'qtDiasEntrega'
    end
    object cdsGridPedidoProddtEntrega: TSQLTimeStampField
      FieldName = 'dtEntrega'
    end
    object cdsGridPedidoProdstPedidoProd: TStringField
      FieldName = 'stPedidoProd'
      Size = 15
    end
    object cdsGridPedidoProdobsProduto: TStringField
      FieldName = 'obsProduto'
      Size = 250
    end
  end
  object dsGridPedidoProd: TDataSource
    DataSet = cdsGridPedidoProd
    Left = 141
    Top = 344
  end
  object dsGridConsulta: TDataSource
    DataSet = cdsGridConsulta
    Left = 141
    Top = 392
  end
  object cdsGridConsulta: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    CommandText = 'EXEC spConsPedido 1,5,0,'#39'01/01/2016'#39','#39'31/12/2016'#39',0,0,0'
    Params = <>
    ProviderName = 'dspGridConsulta'
    Left = 109
    Top = 392
    object cdsGridConsultaidEmpresa: TIntegerField
      FieldName = 'idEmpresa'
    end
    object cdsGridConsultaidCadEmpresa: TIntegerField
      FieldName = 'idCadEmpresa'
    end
    object cdsGridConsultaidFornecedor: TIntegerField
      FieldName = 'idFornecedor'
    end
    object cdsGridConsultaidPedidoCompra: TIntegerField
      FieldName = 'idPedidoCompra'
    end
    object cdsGridConsultaidProduto: TIntegerField
      FieldName = 'idProduto'
    end
    object cdsGridConsultadtPedido: TSQLTimeStampField
      FieldName = 'dtPedido'
    end
    object cdsGridConsultaobsPedido: TStringField
      FieldName = 'obsPedido'
      Size = 250
    end
    object cdsGridConsultastPedido: TStringField
      FieldName = 'stPedido'
      Size = 15
    end
    object cdsGridConsultanrPedidoOriginal: TStringField
      FieldName = 'nrPedidoOriginal'
      Size = 70
    end
  end
  object dspGridConsulta: TDataSetProvider
    DataSet = sdsGridConsulta
    Options = [poAllowMultiRecordUpdates, poPropogateChanges, poAllowCommandText, poUseQuoteChar]
    Left = 77
    Top = 392
  end
  object sdsGridConsulta: TSQLDataSet
    SchemaName = 'sa'
    CommandText = 'EXEC spConsPedido 1,5,0,'#39'01/01/2016'#39','#39'31/12/2016'#39',0,0,0'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmPadrao.dbConexao
    Left = 44
    Top = 392
  end
  object cdsPedido: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    CommandText = 
      'SELECT idFornecedor, idPedidoCompra, nrPedidoOriginal, dtPedido ' +
      'FROM PedidoCompra'
    Params = <>
    ProviderName = 'dspPedido'
    Left = 109
    Top = 296
    object cdsPedidoidFornecedor: TIntegerField
      FieldName = 'idFornecedor'
      Required = True
    end
    object cdsPedidoidPedidoCompra: TIntegerField
      FieldName = 'idPedidoCompra'
      Required = True
    end
    object cdsPedidonrPedidoOriginal: TStringField
      FieldName = 'nrPedidoOriginal'
    end
    object cdsPedidodtPedido: TSQLTimeStampField
      FieldName = 'dtPedido'
      Required = True
    end
  end
end
