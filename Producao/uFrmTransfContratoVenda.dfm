inherited FrmTransfContratoVenda: TFrmTransfContratoVenda
  BorderIcons = [biSystemMenu]
  Caption = 'Transfer'#234'ncia entre Contratos de Venda'
  ClientHeight = 521
  ClientWidth = 945
  FormStyle = fsMDIChild
  Icon.Data = {
    0000010001001010000001002000680400001600000028000000100000002000
    0000010020000000000000040000000000000000000000000000000000000400
    000104000001040000090301032E05050A4601000029000000140100000E0200
    001E04000016040000090400001C0400001E0400000D04000004040000020400
    00050300001B0100004A181D2D93445086F12D355DD91E233DB5121525960504
    0B790100004D0000003200000035010000310400002604000017040000090400
    000D0300002C000000333A4557787285BDFF3E498AFF404B88FF404C82FF3D49
    76F82D3659E31D213BC8131727A606060A72020000440400001C0400000C0400
    00080400001200000005505F72818FA7CFFF3C4684FF3B437DFF435F91FF6EC2
    D8FF537296FF323767FF37406BFF1F2439BA010000250300000D040000050000
    00000000000002030509697D8DA5A4C4E0FF445292FF3C4784FF425F94FF75C5
    E1FF5D779BFF323766FF343A64FF2D3454D50706091300000000000000000000
    0000000000001D37415F799BD0F5A9B6C5FF50619BFF465C9CFF404A83FF4555
    88FF3C4578FF4A6F95FF47698DFF343D63F80E0F184000000000000000000000
    0000000000001A303A49647FD3F6B1B2B8FF5B6695FF404F8FFF45508AFF4148
    80FF3D487BFF67BDD7FF71C7DBFF363E67FF191C2D7700000000000000000000
    000000000000040412135C6BB8D7B8BEBDFF6C7396FF404E91FF46528CFF444F
    87FF3D457BFF597BA1FF537A9DFF363E6AFF252B47B400000000000000000000
    000003030205315973966E82D3F9BBBDB6FF767B94FF3D519BFF405192FF424E
    8BFF404C85FF3A4076FF303165FF353F6CFF2F375CED08060A1B000000000000
    000003050209417996C284A1FAFFC1C7D5FF8B95AEFF6775ACFF5A6391FF545E
    91FF4D538CFF4D6B9AFF68B2CCFF485F88FF343B6CFF11142158000000000000
    00000000000011162038323D696B3941707246517F805B63849A696B6FBA6367
    74BA585982B0567C99C38AEEF2F2486B769D101224620C0C1544000000000000
    00000000000000000000182F314A386467890000000100000000020100010303
    040604070C120105080826393B45070B09060000000000000000000000000000
    000000000000000000002C56617B7EC7DAEC1B20212B08101321060B0C13070C
    0F185FA5ADBF426A6F7E00000000000000000000000000000000000000000000
    00000000000000000000070B0D1220282B3609070812539BAAC65F9296A8080D
    10176FC3C8D1629FA1B101010103000000000000000000000000000000000000
    0000000000000000000000000000000000000000000641747F8E54868D9B0303
    0209091112170F18182303010102000000000000000000000000000000000000
    0000000000000000000000000000000000000000000006040305030303050000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000C0030000C0030000C0030000C00300008001
    000080010000C0010000E2070000E01F0000E00F0000F80F0000FCFF0000}
  Position = poDesigned
  Visible = True
  ExplicitWidth = 961
  ExplicitHeight = 560
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel5: TBevel [0]
    Left = 0
    Top = 481
    Width = 945
    Height = 4
    Align = alBottom
    Shape = bsFrame
    Style = bsRaised
    ExplicitLeft = -157
    ExplicitTop = 422
    ExplicitWidth = 893
  end
  inherited GrupoGrid: TCGroupBox
    Top = 170
    Width = 449
    Height = 311
    Align = alLeft
    TabOrder = 2
    ExplicitTop = 170
    ExplicitWidth = 449
    ExplicitHeight = 311
    inherited DBGrid: TCDBGrid
      Width = 445
      Height = 264
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs]
      OnCellClick = DBGridCellClick
      OnColEnter = DBGridColEnter
      OnDrawColumnCell = DBGridDrawColumnCell
      OnKeyPress = DBGridKeyPress
      Columns = <
        item
          Expanded = False
          FieldName = 'sel'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'idEmpresa'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'idCadEmpresa'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'idCadGeral'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'idCadAdicional'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'idContrato'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'dtEmissao'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'descContratado'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'vlSaca'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'vlProduto'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'idProduto'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'descProduto'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'idEmbarque'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'idCadEmbarque'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'descCadEmbarque'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'descEntrega'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'vlContrato'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'idComissionado'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'descComissionado'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'idRomaneio'
          Title.Caption = 'Rom.'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'idNf'
          Title.Caption = 'Nf'
          Width = 65
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'dtRomaneio'
          Title.Caption = 'Data'
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'placa'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'qtPesoSaida'
          Title.Caption = 'Qt.Sa'#237'da'
          Width = 60
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'qtPesoDesconto'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'qtPesoLiquido'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'dtEntrega'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'dtPagamento'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'vlNf'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'vlTitulo'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'qtContrato'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'qtAcumulado'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'qtEmbarcado'
          Title.Caption = 'Embarcado'
          Width = 65
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'qtEntregue'
          Title.Caption = 'Entregue'
          Width = 65
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'qtAEntregar'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'vlEmbarcado'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'vlEntregue'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'idSafra'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'descSafra'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'qtPesoOri'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'qtDescontoOri'
          Visible = False
        end>
    end
    object CPanelGradient3: TCPanelGradient
      Left = 2
      Top = 279
      Width = 445
      Height = 30
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 1
      CaptionNo = 0
      HintNo = 0
      BackgroundGradientColor = 13099746
      BackgroundGradientDirection = gdVertical
      TextColor = clBlack
      GradientColor = clBlack
      RegularButtonColor = clBlack
      SelectedButtonColor = clBlack
      ButtonOptions = []
      object CLabel10: TCLabel
        Left = 4
        Top = 11
        Width = 50
        Height = 13
        Alignment = taRightJustify
        Caption = 'Contrato'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object CLabel6: TCLabel
        Left = 156
        Top = 11
        Width = 41
        Height = 13
        Alignment = taRightJustify
        Caption = 'T.Sa'#237'da'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object CLabel7: TCLabel
        Left = 294
        Top = 11
        Width = 61
        Height = 13
        Alignment = taRightJustify
        Caption = 'T.Entregue'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object DBEqtContrato: TCDBEdit
        Left = 60
        Top = 8
        Width = 80
        Height = 19
        TabStop = False
        BevelKind = bkTile
        BiDiMode = bdRightToLeft
        BorderStyle = bsNone
        Color = 14149350
        DataField = 'qtContrato'
        DataSource = dsGrid
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
      object DBEqtSomaSaida: TCDBEdit
        Left = 203
        Top = 8
        Width = 80
        Height = 19
        TabStop = False
        BevelKind = bkTile
        BiDiMode = bdRightToLeft
        BorderStyle = bsNone
        Color = 14149350
        DataField = 'qtSomaSaida'
        DataSource = dsGrid
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
      object DBEqtSomaEntrega: TCDBEdit
        Left = 361
        Top = 8
        Width = 80
        Height = 19
        TabStop = False
        BevelKind = bkTile
        BiDiMode = bdRightToLeft
        BorderStyle = bsNone
        Color = 14149350
        DataField = 'qtSomaEntrega'
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
    end
  end
  inherited PanBotoes: TCPanelGradient
    Top = 37
    Width = 945
    Height = 133
    ExplicitTop = 37
    ExplicitWidth = 945
    ExplicitHeight = 133
    object CLabel1: TCLabel [0]
      Left = 224
      Top = 109
      Width = 40
      Height = 13
      Alignment = taRightJustify
      Caption = 'Marcar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object CLabel2: TCLabel [1]
      Left = 6
      Top = 6
      Width = 127
      Height = 16
      Caption = 'Contrato de Origem'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object CLabel3: TCLabel [2]
      Left = 502
      Top = 6
      Width = 131
      Height = 16
      Caption = 'Contrato de Destino'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object lblCliFor: TCLabel [3]
      Left = 56
      Top = 30
      Width = 33
      Height = 13
      Alignment = taRightJustify
      Caption = 'Cliente'
    end
    object CLabel12: TCLabel [4]
      Left = 13
      Top = 55
      Width = 76
      Height = 13
      Alignment = taRightJustify
      Caption = 'Contrato Venda'
    end
    object CLabel4: TCLabel [5]
      Left = 509
      Top = 55
      Width = 76
      Height = 13
      Alignment = taRightJustify
      Caption = 'Contrato Venda'
    end
    object CLabel5: TCLabel [6]
      Left = 552
      Top = 30
      Width = 33
      Height = 13
      Alignment = taRightJustify
      Caption = 'Cliente'
    end
    inherited BtnExecutar: TCBitBtn
      Tag = 1
      Left = 13
      Top = 102
      TabOrder = 6
      ExplicitLeft = 13
      ExplicitTop = 102
    end
    inherited BtnFechar: TCBitBtn
      Left = 303
      Top = 189
      TabOrder = 16
      Visible = False
      ExplicitLeft = 303
      ExplicitTop = 189
    end
    object BtnTodos: TCBitBtn
      Tag = 1
      Left = 351
      Top = 102
      Width = 75
      Height = 25
      Caption = '&Todos'
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FF7A2D067A2D067A2D067A2D06FF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF7A2D06E9AD68
        E2751F7A2D06FF00FF0000000000000000000000000000000000000000000000
        00000000000000FF00FF7A2D0642C555F4CFA47A2D06FF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF7A2D067A2D06
        7A2D067A2D06FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF7A2D067A2D06
        7A2D067A2D06FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FF7A2D06E9AD68E2751F7A2D06FF00FF00000000000000
        0000000000000000000000000000000000000000000000FF00FF7A2D0642C555
        F4CFA47A2D06FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FF7A2D067A2D067A2D067A2D06FF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FF7A2D067A2D067A2D067A2D06FF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF7A2D06E9AD68
        E2751F7A2D06FF00FF0000000000000000000000000000000000000000000000
        00000000000000FF00FF7A2D0642C555F4CFA47A2D06FF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF7A2D067A2D06
        7A2D067A2D06FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
      TabOrder = 8
      TabStop = False
      OnClick = BtnTodosClick
    end
    object BtnNenhum: TCBitBtn
      Tag = 1
      Left = 270
      Top = 102
      Width = 75
      Height = 25
      Caption = '&Nenhum'
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
        96675E9F6F609F6F609F6F609F6F609F6F609F6F609F6F609F6F609F6F609F6F
        609F6F609F6F60FF00FFFF00FFFF00FF99695FF6E0BFF4DDB8F3DAB4F3D7ADF2
        D5A7F0D3A3F0D09EEECC99EECA93EDC990EDC68C9F6F60FF00FFFF00FFFF00FF
        9D6C60F6E3C6F6E1C1F4DDBBF3DCB4008100F2D5AAF0D3A4F0CF9FEFCC99EFCB
        95EEC9909F6F60FF00FFFF00FFFF00FFA16E60F7E6CEF6E5C7F4E1C100810000
        8100008100F3D5ABF0D3A5EFD19FEFCE9AEFCB969F6F60FF00FFFF00FFFF00FF
        A67262F8EAD4F7E7CE008100307A2A5F924B00810050883CF2D5ABF0D3A5F0D0
        A0EFCF9C9F6F60FF00FFFF00FFFF00FFAB7663FAEEDAFAEBD5008100EFE2C2F6
        E2C2A7B883008100008100EDD4A9F0D4A6F0D1A19F6F60FF00FFFF00FFFF00FF
        B07864FAF0E2FAEEDCF8EBD5F8E9D0F7E6CAF6E3C5E6D8B4008100008100F2D7
        ADF2D4A79F6F60FF00FFFF00FFFF00FFB57D64FCF3E7FBF0E3FAEFDDFAEDD8F7
        E9D1F8E6CBF6E3C5F6E1C0F4DEBAF4DAB5F3D7AD9F6F60FF00FFFF00FFFF00FF
        BB8065FCF7EDD58127D58127D58127D58127D58127D58127D58127D58127D581
        27F3DAB69F6F60FF00FFFF00FFFF00FFC08366FCF8F3FCF7EFFCF4EAFBF2E5FB
        EFDEF8EDD9F8EBD4F8E7CEF7E3C7F6E1C2F4DEBB9F6F60FF00FFFF00FFFF00FF
        C48767FEFBF8FEFAF3FEF7EFFCF4EAFBF2E6FAEFE0F8EDDAF8EAD4F7E9CFF7E5
        C9F6E2C49F6F60FF00FFFF00FFFF00FFC98967FEFCFBD58127D58127D58127D5
        8127D58127D58127D58127D58127D58127F7E5CA9F6F60FF00FFFF00FFFF00FF
        CC8B68FFFFFFFFFEFCFEFCFAFEFBF4FEF8F0FCF6EDFCF4E7FAF2E2FAEFDCF8ED
        D7F8EAD19F6F60FF00FFFF00FFFF00FFCF8E68FFFFFFFFFFFFFFFFFCFFFCFAFE
        FBF6FEF8F0FCF7EEFBF4E9FBF2E3FBEFDDF8EDD89F6F60FF00FFFF00FFFF00FF
        CF8E68CF8E68CF8E68CF8E68CF8E68CF8E68CF8E68CF8E68CF8E68CF8E68CF8E
        68CF8E68CF8E68FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
      TabOrder = 7
      TabStop = False
      OnClick = BtnNenhumClick
    end
    object CPanelGradient2: TCPanelGradient
      Left = 449
      Top = -2
      Width = 47
      Height = 376
      BevelOuter = bvNone
      Caption = 'PanBotoes'
      TabOrder = 17
      CaptionNo = 0
      HintNo = 0
      BackgroundGradientColor = 13099746
      BackgroundGradientDirection = gdVertical
      TextColor = clBlack
      GradientColor = clBlack
      RegularButtonColor = clBlack
      SelectedButtonColor = clBlack
      ButtonOptions = []
    end
    object DBEidCliente: TCDBEdit
      Left = 95
      Top = 27
      Width = 62
      Height = 19
      BevelKind = bkTile
      BorderStyle = bsNone
      DataField = 'idCliente'
      DataSource = dsPadrao
      TabOrder = 0
      Find = dmFind.FindFornecedor
      AcaoCad = frmPrincipal.actCadCliente
      DecimalControl = True
      KeyMode = kmNormal
    end
    object LookCliente: TCLookUp
      Left = 163
      Top = 27
      Width = 278
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
      ValidaCampoObrigatorio = True
      CampoObrigatorio = True
      LookUpTable = 'vCadClienteContabil'
      ReturnField = 'descCadCliente'
    end
    object DBEidContratoVenda: TCDBEdit
      Left = 95
      Top = 52
      Width = 104
      Height = 19
      BevelKind = bkTile
      BorderStyle = bsNone
      DataField = 'idContratoVenda'
      DataSource = dsPadrao
      TabOrder = 2
      OnKeyDown = DBEidContratoVendaKeyDown
      AcaoCad = frmPrincipal.actCadSafra
      DecimalControl = True
      KeyMode = kmUSUpper
    end
    object LookEmissaoVenda: TCLookUp
      Left = 205
      Top = 52
      Width = 80
      Height = 19
      Alignment = taLeftJustify
      BevelInner = bvSpace
      BevelOuter = bvLowered
      Color = 14149350
      ParentBackground = False
      TabOrder = 3
      Key.Strings = (
        'idEmpresa'
        'idCadEmpresa'
        'idCliente'
        'idContratoVenda')
      LookUpKey.Strings = (
        'idEmpresa'
        'idCadEmpresa'
        'idCliente'
        'idContratoVenda')
      ClientDataSet = cdsLookUp
      DataSource = dsPadrao
      ValidaCampoObrigatorio = False
      CampoObrigatorio = False
      LookUpTable = 'ContratoVenda'
      ReturnField = 'dtEmissao'
    end
    object LookContratoVenda: TCLookUp
      Left = 95
      Top = 77
      Width = 346
      Height = 19
      Alignment = taLeftJustify
      BevelInner = bvSpace
      BevelOuter = bvLowered
      Color = 14149350
      ParentBackground = False
      TabOrder = 5
      Key.Strings = (
        'idEmpresa'
        'idCadEmpresa'
        'idCliente'
        'idContratoVenda')
      LookUpKey.Strings = (
        'idEmpresa'
        'idCadEmpresa'
        'idCliente'
        'idContratoVenda')
      ClientDataSet = cdsLookUp
      DataSource = dsPadrao
      ValidaCampoObrigatorio = False
      CampoObrigatorio = False
      LookUpTable = 'ContratoVenda'
      ReturnField = 'obsContratoVenda'
    end
    object LookNrOriginal: TCLookUp
      Left = 291
      Top = 52
      Width = 80
      Height = 19
      Alignment = taLeftJustify
      BevelInner = bvSpace
      BevelOuter = bvLowered
      Color = 14149350
      ParentBackground = False
      TabOrder = 4
      Key.Strings = (
        'idEmpresa'
        'idCadEmpresa'
        'idCliente'
        'idContratoVenda')
      LookUpKey.Strings = (
        'idEmpresa'
        'idCadEmpresa'
        'idCliente'
        'idContratoVenda')
      ClientDataSet = cdsLookUp
      DataSource = dsPadrao
      ValidaCampoObrigatorio = False
      CampoObrigatorio = False
      LookUpTable = 'ContratoVenda'
      ReturnField = 'nrOriginal'
    end
    object DBEidContratoVendaDes: TCDBEdit
      Left = 591
      Top = 52
      Width = 104
      Height = 19
      BevelKind = bkTile
      BorderStyle = bsNone
      DataField = 'idContratoVendaDes'
      DataSource = dsPadrao
      TabOrder = 11
      OnKeyDown = DBEidContratoVendaDesKeyDown
      AcaoCad = frmPrincipal.actCadSafra
      DecimalControl = True
      KeyMode = kmUSUpper
    end
    object CLookUp1: TCLookUp
      Left = 591
      Top = 77
      Width = 346
      Height = 19
      Alignment = taLeftJustify
      BevelInner = bvSpace
      BevelOuter = bvLowered
      Color = 14149350
      ParentBackground = False
      TabOrder = 14
      Key.Strings = (
        'idEmpresa'
        'idCadEmpresa'
        'idClienteDes'
        'idContratoVendaDes')
      LookUpKey.Strings = (
        'idEmpresa'
        'idCadEmpresa'
        'idCliente'
        'idContratoVenda')
      ClientDataSet = cdsLookUp
      DataSource = dsPadrao
      ValidaCampoObrigatorio = True
      CampoObrigatorio = True
      LookUpTable = 'ContratoVenda'
      ReturnField = 'obsContratoVenda'
    end
    object CLookUp2: TCLookUp
      Left = 787
      Top = 52
      Width = 80
      Height = 19
      Alignment = taLeftJustify
      BevelInner = bvSpace
      BevelOuter = bvLowered
      Color = 14149350
      ParentBackground = False
      TabOrder = 13
      Key.Strings = (
        'idEmpresa'
        'idCadEmpresa'
        'idClienteDes'
        'idContratoVendaDes')
      LookUpKey.Strings = (
        'idEmpresa'
        'idCadEmpresa'
        'idCliente'
        'idContratoVenda')
      ClientDataSet = cdsLookUp
      DataSource = dsPadrao
      ValidaCampoObrigatorio = True
      CampoObrigatorio = True
      LookUpTable = 'ContratoVenda'
      ReturnField = 'nrOriginal'
    end
    object CLookUp3: TCLookUp
      Left = 701
      Top = 52
      Width = 80
      Height = 19
      Alignment = taLeftJustify
      BevelInner = bvSpace
      BevelOuter = bvLowered
      Color = 14149350
      ParentBackground = False
      TabOrder = 12
      Key.Strings = (
        'idEmpresa'
        'idCadEmpresa'
        'idClienteDes'
        'idContratoVendaDes')
      LookUpKey.Strings = (
        'idEmpresa'
        'idCadEmpresa'
        'idCliente'
        'idContratoVenda')
      ClientDataSet = cdsLookUp
      DataSource = dsPadrao
      ValidaCampoObrigatorio = True
      CampoObrigatorio = True
      LookUpTable = 'ContratoVenda'
      ReturnField = 'dtEmissao'
    end
    object CLookUp4: TCLookUp
      Left = 659
      Top = 27
      Width = 278
      Height = 19
      Alignment = taLeftJustify
      BevelInner = bvSpace
      BevelOuter = bvLowered
      Color = 14149350
      ParentBackground = False
      TabOrder = 10
      Key.Strings = (
        'idClienteDes')
      LookUpKey.Strings = (
        'idCliente')
      ClientDataSet = cdsLookUp
      DataSource = dsPadrao
      ValidaCampoObrigatorio = True
      CampoObrigatorio = True
      LookUpTable = 'vCadClienteContabil'
      ReturnField = 'descCadCliente'
    end
    object DBEidClienteDes: TCDBEdit
      Left = 591
      Top = 27
      Width = 62
      Height = 19
      BevelKind = bkTile
      BorderStyle = bsNone
      DataField = 'idClienteDes'
      DataSource = dsPadrao
      TabOrder = 9
      Find = dmFind.FindFornecedor
      AcaoCad = frmPrincipal.actCadCliente
      DecimalControl = True
      KeyMode = kmNormal
    end
    object BtnPesquisar2: TCBitBtn
      Tag = 1
      Left = 509
      Top = 100
      Width = 75
      Height = 25
      Caption = '&Pesquisar'
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000FF00FF00C2C2
        C2FF404040FF1E1E1EFF252525FF252525FF252525FF252525FF252525FF2525
        25FF252525FF252525FF1E1E1EFF353535FF8A8A8AFFFEFEFEFFFF00FF00C4C4
        C4FFFCFCFCFFFBFBFBFFFBFBFBFFFBFBFBFFFBFBFBFFFAFAFAFFFAFAFAFFF9F9
        F9FFF9F9F9FFF8F8F8FFCBCBCBFF434343FF505050FFB8B8B8FFFF00FF00C6C6
        C6FFFAFAFAFFFCFCFCFFFCFCFCFFFCFCFCFFFBFBFBFFFBFBFBFFFAFAFAFFF9F9
        F9FFF9F9F9FFC9C9C9FF434343FF6F6F6FFF4E4E4EFFD4D4D4FFFF00FF00C6C6
        C6FFF8F8F8FFFAFAFAFFFAFAFAFFF9F9F9FFF9F9F9FFF8F8F8FFF7F7F7FFF7F7
        F7FFC6C6C6FF444444FF767676FF5C5C5CFF979797FFFF00FF00FF00FF00C6C6
        C6FFF7F7F7FFF6F6F6FFF2F2F1FFEAEAEAFFECECECFFF2F2F2FFF5F5F5FFCACA
        CAFF464646FF7C7C7CFF5F5F5FFFD0D0D0FFB1B1B1FFFF00FF00FF00FF00C6C6
        C6FFE7E7E7FFABABABFF979797FF989898FF969696FFAEAEAEFFD5D5D5FF5D5D
        5DFF838383FF626262FFD2D2D2FFEBEBEBFFB1B1B1FFFF00FF00FF00FF00B4B4
        B4FF989898FFC3C3C3FFDDDDDDFFE2E2E2FFDADADAFFBDBDBDFF7D7D7DFF9B9B
        9BFF707070FFD1D1D1FFEBEBEBFFE2E2E2FFB1B1B1FFFF00FF00F6F6F6FF8989
        89FFCECECEFFE7E7E7FFEBEBEBFFECECECFFE9E9E9FFE6E6E6FFCECECEFF8989
        89FFD1D1D1FFE9E9E9FFE1E1E1FFD3D3D3FFB1B1B1FFFF00FF00B8B8B8FF9D9D
        9DFFE1E1E1FFE9E9E9FFECECECFFEEEEEEFFEAEAEAFFE7E7E7FFE1E1E1FFADAD
        ADFFA3A3A3FFE2E2E2FFD5D5D5FFC6C6C6FFB6B6B6FFFF00FF00A9A9A9FFAEAE
        AEFFDEDEDEFFE2E2E2FFE7E7E7FFEAEAEAFFE4E4E4FFE0E0E0FFDDDDDDFFC1C1
        C1FF868686FFD3D3D3FFC6C6C6FFAFAFAFFFBBBBBBFFFF00FF00ACACACFFB3B3
        B3FFD9D9D9FFDDDDDDFFE4E4E4FFE5E5E5FFDCDCDCFFD8D8D8FFD6D6D6FFBCBC
        BCFF7B7B7BFFB0B0B0FFAFAFAFFF959595FFC1C1C1FFFF00FF00B6B6B6FFB1B1
        B1FFD6D6D6FFE0E0E0FFE7E7E7FFE6E6E6FFDFDFDFFFD5D5D5FFCCCCCCFF8B8B
        8BFF606060FF7D7D7DFF949494FFA2A2A2FFD8D8D8FFFF00FF00BFBFBFFFB1B1
        B1FFDBDBDBFFE3E3E3FFE5E5E5FFE6E6E6FFE3E3E3FFD6D6D6FFC4C4C4FF7878
        78FFC1C1C1FFFBFBFBFFDFDFDFFFAEAEAEFFEBEBEBFFFF00FF00E1E1E1FFA4A4
        A4FFD9D9D9FFE7E7E7FFE8E8E8FFE8E8E8FFE3E3E3FFD6D6D6FFABABABFF8484
        84FFF7F7F7FFDFDFDFFFABABABFFE0E0E0FFFF00FF00FF00FF00FF00FF00B5B5
        B5FFA1A1A1FFCCCCCCFFDFDFDFFFE2E2E2FFD2D2D2FFADADADFFB2B2B2FFBBBB
        BBFFDFDFDFFFAFAFAFFFE1E1E1FFFF00FF00FF00FF00FF00FF00FF00FF00DADA
        DAFFB7B7B7FF9E9E9EFFA3A3A3FF9A9A9AFF939393FFA6A6A6FFB5B5B5FFB9B9
        B9FFC6C6C6FFE7E7E7FFFF00FF00FF00FF00FF00FF00FF00FF00}
      TabOrder = 15
      OnClick = BtnPesquisar2Click
    end
  end
  inherited PanTopo: TCPanelGradient
    Width = 945
    Height = 37
    TabOrder = 0
    ExplicitWidth = 945
    ExplicitHeight = 37
    object Bevel2: TBevel [0]
      Left = 1
      Top = 33
      Width = 943
      Height = 4
      Align = alTop
      Shape = bsFrame
      Style = bsRaised
      ExplicitLeft = 6
      ExplicitTop = 58
      ExplicitWidth = 1032
    end
    object Bevel1: TBevel [1]
      Left = 1
      Top = 1
      Width = 943
      Height = 4
      Align = alTop
      Shape = bsFrame
      Style = bsRaised
      ExplicitTop = 0
    end
    inherited PanEmpresa: TCPanelGradient
      Top = 5
      Width = 943
      Height = 28
      ExplicitTop = 5
      ExplicitWidth = 943
      ExplicitHeight = 28
      inherited LookdescCadEmpresa: TCLookUp
        Width = 214
        ExplicitWidth = 214
      end
      inherited LookdescAbreviada: TCLookUp
        Left = 383
        Width = 151
        ExplicitLeft = 383
        ExplicitWidth = 151
      end
      inherited lookidCnpjCpf: TCLookUp
        Left = 269
        Top = 11
        Visible = False
        ExplicitLeft = 269
        ExplicitTop = 11
      end
      inherited LookidInscEstadual: TCLookUp
        Visible = False
      end
    end
  end
  object PanConfirmacao: TCPanelGradient [4]
    Left = 0
    Top = 485
    Width = 945
    Height = 36
    Align = alBottom
    BevelOuter = bvNone
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
    object CBitBtn1: TCBitBtn
      Left = 862
      Top = 6
      Width = 75
      Height = 25
      Action = actFechar
      Caption = '&Fechar'
      TabOrder = 0
    end
  end
  object CGroupBox1: TCGroupBox [5]
    Left = 496
    Top = 170
    Width = 449
    Height = 311
    Align = alRight
    TabOrder = 4
    object CPanelGradient4: TCPanelGradient
      Left = 2
      Top = 279
      Width = 445
      Height = 30
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 0
      CaptionNo = 0
      HintNo = 0
      BackgroundGradientColor = 13099746
      BackgroundGradientDirection = gdVertical
      TextColor = clBlack
      GradientColor = clBlack
      RegularButtonColor = clBlack
      SelectedButtonColor = clBlack
      ButtonOptions = []
      object CLabel8: TCLabel
        Left = 4
        Top = 11
        Width = 50
        Height = 13
        Alignment = taRightJustify
        Caption = 'Contrato'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object CLabel9: TCLabel
        Left = 156
        Top = 11
        Width = 41
        Height = 13
        Alignment = taRightJustify
        Caption = 'T.Sa'#237'da'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object CLabel11: TCLabel
        Left = 294
        Top = 11
        Width = 61
        Height = 13
        Alignment = taRightJustify
        Caption = 'T.Entregue'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object DBEqtContrato2: TCDBEdit
        Left = 60
        Top = 8
        Width = 80
        Height = 19
        TabStop = False
        BevelKind = bkTile
        BiDiMode = bdRightToLeft
        BorderStyle = bsNone
        Color = 14149350
        DataField = 'qtContrato'
        DataSource = dsGrid2
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
      object DBEqtSomaSaida2: TCDBEdit
        Left = 203
        Top = 8
        Width = 80
        Height = 19
        TabStop = False
        BevelKind = bkTile
        BiDiMode = bdRightToLeft
        BorderStyle = bsNone
        Color = 14149350
        DataField = 'qtSomaSaida'
        DataSource = dsGrid2
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
      object DBEqtSomaEntrega2: TCDBEdit
        Left = 361
        Top = 8
        Width = 80
        Height = 19
        TabStop = False
        BevelKind = bkTile
        BiDiMode = bdRightToLeft
        BorderStyle = bsNone
        Color = 14149350
        DataField = 'qtSomaEntrega'
        DataSource = dsGrid2
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
    end
    object DBGrid2: TCDBGrid
      Left = 2
      Top = 15
      Width = 445
      Height = 264
      Align = alClient
      DataSource = dsGrid2
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs]
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      UtilizaOrdenar = False
      Columns = <
        item
          Expanded = False
          FieldName = 'idEmpresa'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'idCadEmpresa'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'idCadGeral'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'idCadAdicional'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'idContrato'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'dtEmissao'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'descContratado'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'vlSaca'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'vlProduto'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'idProduto'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'descProduto'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'idEmbarque'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'idCadEmbarque'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'descCadEmbarque'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'descEntrega'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'vlContrato'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'idComissionado'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'descComissionado'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'idRomaneio'
          Title.Caption = 'Rom.'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'idNf'
          Title.Caption = 'Nf'
          Width = 65
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'dtRomaneio'
          Title.Caption = 'Data'
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'placa'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'qtPesoSaida'
          Title.Caption = 'Qt.Sa'#237'da'
          Width = 60
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'qtPesoDesconto'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'qtPesoLiquido'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'dtEntrega'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'dtPagamento'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'vlNf'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'vlTitulo'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'qtContrato'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'qtAcumulado'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'qtEmbarcado'
          Title.Caption = 'Embarcado'
          Width = 65
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'qtEntregue'
          Title.Caption = 'Entregue'
          Width = 65
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'qtAEntregar'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'vlEmbarcado'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'vlEntregue'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'idSafra'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'descSafra'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'qtPesoOri'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'qtDescontoOri'
          Visible = False
        end>
    end
  end
  object CPanelGradient1: TCPanelGradient [6]
    Left = 449
    Top = 170
    Width = 47
    Height = 311
    Align = alClient
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
    object BtnConfirmar: TCBitBtn
      Left = 11
      Top = 112
      Width = 32
      Height = 31
      Glyph.Data = {
        B60D0000424DB60D000000000000360000002800000030000000180000000100
        180000000000800D0000120B0000120B00000000000000000000FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0132020132020135020140030140
        03013502013302013202FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF757575757575
        7676767A7A7A7A7A7A767676767676757575FF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF012F0101
        3302014403026A06037F09038709038709038109027007014B04013502013202
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FF7474747676767C7C7C8787878D8D8D8F8F8F8F8F8F8E8E8E8989897D
        7D7D767676757575FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FF024604014303027507039A0B03A70C03A40C03A10C03A1
        0C03A40C03A70C039E0C027E08024E04013502FF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FF7C7C7C7B7B7B8A8A8A959595989898
        9797979797979797979797979898989595958C8C8C7F7F7F767676FF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF034F07025606039D0D03
        A60C03A10C039E0C039E0C039E0C039E0C039E0C039E0C039F0C03A60C03A10C
        026606013602FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF8080
        8082828295959598989897979795959595959595959595959595959595959596
        9696989898979797868686777777FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FF04540B055F0C07A91805A512049E0D039E0C039E0B019C08019C07039E
        0B039E0C039E0C039E0C039E0C03A10C03A70C026C07013602FF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FF8282828686869B9B9B999999969696959595959595
        9494949494949595959595959595959595959595959797979898988888887777
        77FF00FFFF00FFFF00FFFF00FFFF00FF023D04055F0E0CAD2709A61D07A11706
        A012039E0D029D0A039E0C039E0C039E0C039E0C039E0C039E0C039E0C039E0C
        039F0C03A70C026A06013502FF00FFFF00FFFF00FFFF00FF7979798686869E9E
        9E9B9B9B99999998989896969694949496969695959595959595959595959595
        9595959595959595969696989898878787767676FF00FFFF00FFFF00FFFF00FF
        0341060FA62C0FB02D0BA52309A61D07A317029D0C039E0C039E0C64CB6CEDF8
        EDEDF8ED97DD9D07A111039E0C039E0C039E0C03A00C03A40C014904FF00FFFF
        00FFFF00FFFF00FF7C7C7C9E9E9EA0A0A09C9C9C9B9B9B999999949494969696
        959595C4C4C4F1F1F1F1F1F1D6D6D69898989595959595959595959696969797
        977D7D7DFF00FFFF00FFFF00FF034D050A761C14B83C10AA300DA9280AA41F04
        9F11059F0F039E0C039E0C6ECF77FFFFFFFFFFFFFFFFFF9ADEA007A111039E0C
        039E0C039E0C03A70C037B09013502FF00FFFF00FF7F7F7F8F8F8FA5A5A5A0A0
        A09E9E9E9B9B9B979797979797969696959595C8C8C8F7F7F7F7F7F7F7F7F7D7
        D7D79898989595959595959595959898988C8C8C767676FF00FFFF00FF034E06
        15A63C18B14113AC370EA72A05A014049F0E049F0D049E0D039E0C0AA31392DC
        99FFFFFFFFFFFFFFFFFF93DC9A06A00F039E0C039E0C039F0C03A00C014403FF
        00FFFF00FF808080A1A1A1A4A4A4A1A1A19E9E9E989898979797979797969696
        9595959A9A9AD4D4D4F7F7F7F7F7F7F7F7F7D4D4D49898989595959595959696
        969696967C7C7CFF00FF0255040767131CB85017B04616AD3E0CA72907A11303
        9E0C039E0C039E0C039E0C039E0C039E0C7ED486FEFFFEFFFFFFFFFFFF8CD993
        059F0E039E0C039E0C03A70C025E05013802818181898989A8A8A8A4A4A4A3A3
        A39D9D9D999999969696969696969696969696969696969696CDCDCDF6F6F6F7
        F7F7F7F7F7D2D2D29797979595959595959898988383837777770256040D8023
        21BA561BB24C14AF412DB8522DB64321AF2D26B23728B43B23B13124B13423B0
        321FAD2AA5E2AAFFFFFFFFFFFFFFFFFF84D78B039E0C039E0B03A70C02750701
        3802818181939393AAAAAAA6A6A6A3A3A3AFAFAFAEAEAEA7A7A7AAAAAAACACAC
        A9A9A9A9A9A9A9A9A9A7A7A7DADADAF7F7F7F7F7F7F7F7F7CFCFCF9595959595
        959898988A8A8A777777035D0613902F2ABF601EB55022B653DDF4E6F8FCFAF7
        FCF8F7FCFAF7FCFAF7FCFAF7FCFAF8FCFAF3FBF4EEFAEFFFFFFFFFFFFFFFFFFF
        FFFFFF77D17F039E0B03A70C037F090136028484849A9A9AAFAFAFA8A8A8AAAA
        AAECECECF4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F3F3F3F1F1F1F7
        F7F7F7F7F7F7F7F7F7F7F7CBCBCB9595959898988D8D8D7777770366071D9A39
        43C57326B65721B553FEFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEEFAEF039E0C03A40C03810901
        4604878787A1A1A1B9B9B9ABABABA9A9A9F6F6F6F7F7F7F7F7F7F7F7F7F7F7F7
        F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F1F1F19696
        969797978E8E8E7C7C7C046D081D9A395CD08939BF6821B553BAEACCDDF4E6DC
        F4E6DCF4E6DCF4E6DCF4E6DCF4E6DCF4E3CFF0D5DEF4E1FFFFFFFFFFFFFFFFFF
        F3FBF44AC157049F0F03A70D037F09013802898989A1A1A1C3C3C3B4B4B4A9A9
        A9E2E2E2ECECECECECECECECECECECECECECECECECECECECECE8E8E8ECECECF7
        F7F7F7F7F7F7F7F7F3F3F3BABABA9797979898988D8D8D7777770375091A9630
        6DD5975ACE8620B45123B65528B75928B75928B75928B75928B75821B44C13AC
        382DB84DC1EDCCFFFFFFFFFFFFEEFAF247C1620DA72906A11403A70D02700701
        38028B8B8B9E9E9EC9C9C9C2C2C2A9A9A9AAAAAAACACACACACACACACACACACAC
        ACACACA9A9A9A1A1A1AEAEAEE4E4E4F7F7F7F7F7F7F2F2F2B9B9B99E9E9E9898
        98989898898989777777FF00FF0E8B1C6CD49588DCA63BC46D16AF4A22B55421
        B55321B55321B55322B5541FB45042C26AD3F2DCFFFFFFFFFFFFE6F7EB40C05E
        0DA92C0AA52105A01203A70C015905FF00FFFF00FF979797C8C8C8D1D1D1B6B6
        B6A3A3A3A9A9A9A9A9A9A9A9A9A9A9A9A9A9A9A8A8A8B8B8B8E9E9E9F7F7F7F7
        F7F7EFEFEFB6B6B69E9E9E9B9B9B979797989898828282FF00FFFF00FF0F921C
        49C16CA7E6C076D59829B85915B0481FB55121B55321B55321B55358CA81EFFB
        F3FFFFFFFFFFFFE0F6E636BB530CA7260BA52108A31906A415049E0F014003FF
        00FFFF00FF999999B9B9B9DCDCDCCBCBCBADADADA3A3A3A9A9A9A9A9A9A9A9A9
        A9A9A9C0C0C0F2F2F2F7F7F7F7F7F7EDEDEDB2B2B29D9D9D9C9C9C9A9A9A9999
        999797977A7A7AFF00FFFF00FFFF00FF1BA0319AE3BAB1E9C65DCB8623B55414
        AF461FB45121B55321B553A1E3BBFFFFFFFFFFFFD7F3E034BA5610A92F0FA92B
        0CA7240AA41F09B01C04750DFF00FFFF00FFFF00FFFF00FFA1A1A1D8D8D8DFDF
        DFC2C2C2AAAAAAA3A3A3A8A8A8A9A9A9A9A9A9DADADAF7F7F7F7F7F7EBEBEBB1
        B1B19F9F9F9E9E9E9D9D9D9B9B9B9D9D9D8C8C8CFF00FFFF00FFFF00FFFF00FF
        28A13249C16CB5EACEB1E9C659CB8229B85916AF491FB45121B5534DC678E2F7
        EABDEBCF2DB85713AC3E13AB3611AA310FA92B0CAD270AA51F024405FF00FFFF
        00FFFF00FFFF00FFA7A7A7B9B9B9E0E0E0DFDFDFC1C1C1ADADADA3A3A3A8A8A8
        A9A9A9BCBCBCEEEEEEE3E3E3AFAFAFA1A1A1A1A1A1A0A0A09E9E9E9E9E9E9B9B
        9B7C7C7CFF00FFFF00FFFF00FFFF00FFFF00FF149C246BD18BC5EFD5BDEDD073
        D4983EC06C1FB4511CB24E28B85A21B5531AB14C1BB24C19B04518B14116AC3A
        12AD340FB02D055F0FFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF9E9E9EC7C7
        C7E5E5E5E3E3E3CACACAB6B6B6A8A8A8A6A6A6ADADADA9A9A9A6A6A6A6A6A6A5
        A5A5A4A4A4A3A3A3A1A1A1A0A0A0868686FF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FF1597246CD495C5EFD5D0F2DDA4E3BC6FD39350C67939BF6830BC
        6235BC6437BF6737BF672EBA5A20B74C16B23D076713FF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FF9D9D9DC8C8C8E5E5E5E9E9E9DADADAC9C9C9
        BDBDBDB4B4B4B0B0B0B2B2B2B3B3B3B3B3B3AFAFAFA9A9A9A4A4A4898989FF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF1C9E284FC4739A
        E3BABDEDD0C5EFD5B2E9C99DE1B78CDCAA81D9A473D49858CC843BC46D1FAF49
        076914FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFA1A1A1BCBCBCD8D8D8E3E3E3E5E5E5DFDFDFD8D8D8D3D3D3CFCFCFCACACAC1
        C1C1B6B6B6A7A7A78A8A8AFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FF1C9E2819A33150C67981D9A495E2B595E2B58ADE
        AC76D89D5ACE8635BC64169132055F0CFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFA1A1A1A1A1A1BDBDBDCFCFCF
        D6D6D6D6D6D6D3D3D3CCCCCCC2C2C2B2B2B29C9C9C868686FF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FF1C9E2819A02F26A94326A94328A94623A14014912B06700FFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFA1A1A1A1A1A1A8A8A8A8A8A8A9A9A9A5A5A59B9B9B8C
        8C8CFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
      NumGlyphs = 2
      TabOrder = 0
      OnClick = BtnConfirmarClick
    end
  end
  inherited imgIcones: TImageList
    Left = 384
    Top = 272
    Bitmap = {
      494C010102000400500110001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
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
  inherited Acao: TActionList
    Left = 296
    Top = 272
    inherited actPesquisar: TAction
      Tag = 1
    end
  end
  inherited dspLookUp: TDataSetProvider
    Left = 104
    Top = 248
  end
  inherited cdsLookUp: TClientDataSet
    Left = 168
    Top = 248
  end
  inherited dspPadrao: TDataSetProvider
    Left = 208
    Top = 400
  end
  inherited cdsPadrao: TClientDataSet
    Left = 280
    Top = 400
    object cdsPadraoidCliente: TIntegerField
      FieldName = 'idCliente'
    end
    object cdsPadraoidContratoVenda: TStringField
      FieldName = 'idContratoVenda'
      Size = 30
    end
    object cdsPadraoidClienteDes: TIntegerField
      FieldName = 'idClienteDes'
    end
    object cdsPadraoidContratoVendaDes: TStringField
      FieldName = 'idContratoVendaDes'
      Size = 30
    end
  end
  inherited dsPadrao: TDataSource
    Left = 352
    Top = 400
  end
  inherited cdsGrid: TClientDataSet
    AggregatesActive = True
    CommandText = 
      'EXEC spRelContratoResumo 9999, 5, 1010377, 1, '#39'130054/14'#39', '#39'V'#39', ' +
      #39'S'#39
    Left = 280
    Top = 336
    object cdsGrididEmpresa: TIntegerField
      FieldName = 'idEmpresa'
    end
    object cdsGrididCadEmpresa: TSmallintField
      FieldName = 'idCadEmpresa'
    end
    object cdsGrididCadGeral: TIntegerField
      FieldName = 'idCadGeral'
    end
    object cdsGrididCadAdicional: TSmallintField
      FieldName = 'idCadAdicional'
    end
    object cdsGrididContrato: TStringField
      FieldName = 'idContrato'
      Size = 30
    end
    object cdsGriddtEmissao: TSQLTimeStampField
      FieldName = 'dtEmissao'
    end
    object cdsGriddescContratado: TStringField
      FieldName = 'descContratado'
      Size = 60
    end
    object cdsGridvlSaca: TFMTBCDField
      FieldName = 'vlSaca'
      Precision = 18
      Size = 3
    end
    object cdsGridvlProduto: TFMTBCDField
      FieldName = 'vlProduto'
      Precision = 18
      Size = 4
    end
    object cdsGrididProduto: TIntegerField
      FieldName = 'idProduto'
    end
    object cdsGriddescProduto: TStringField
      FieldName = 'descProduto'
      Size = 50
    end
    object cdsGrididEmbarque: TIntegerField
      FieldName = 'idEmbarque'
    end
    object cdsGrididCadEmbarque: TSmallintField
      FieldName = 'idCadEmbarque'
    end
    object cdsGriddescCadEmbarque: TStringField
      FieldName = 'descCadEmbarque'
      Size = 30
    end
    object cdsGriddescEntrega: TStringField
      FieldName = 'descEntrega'
      Size = 25
    end
    object cdsGridvlContrato: TFMTBCDField
      FieldName = 'vlContrato'
      Precision = 19
      Size = 4
    end
    object cdsGrididComissionado: TIntegerField
      FieldName = 'idComissionado'
    end
    object cdsGriddescComissionado: TStringField
      FieldName = 'descComissionado'
      Size = 60
    end
    object cdsGrididRomaneio: TIntegerField
      FieldName = 'idRomaneio'
    end
    object cdsGrididNf: TIntegerField
      FieldName = 'idNf'
    end
    object cdsGriddtRomaneio: TSQLTimeStampField
      FieldName = 'dtRomaneio'
    end
    object cdsGridplaca: TStringField
      FieldName = 'placa'
      Size = 8
    end
    object cdsGridqtPesoSaida: TIntegerField
      FieldName = 'qtPesoSaida'
    end
    object cdsGridqtPesoDesconto: TIntegerField
      FieldName = 'qtPesoDesconto'
    end
    object cdsGridqtPesoLiquido: TIntegerField
      FieldName = 'qtPesoLiquido'
    end
    object cdsGriddtEntrega: TSQLTimeStampField
      FieldName = 'dtEntrega'
    end
    object cdsGriddtPagamento: TSQLTimeStampField
      FieldName = 'dtPagamento'
    end
    object cdsGridvlNf: TFMTBCDField
      FieldName = 'vlNf'
      Precision = 19
      Size = 4
    end
    object cdsGridvlTitulo: TFMTBCDField
      FieldName = 'vlTitulo'
      Precision = 19
      Size = 4
    end
    object cdsGridqtContrato: TIntegerField
      FieldName = 'qtContrato'
      DisplayFormat = '#,###0'
    end
    object cdsGridqtAcumulado: TIntegerField
      FieldName = 'qtAcumulado'
    end
    object cdsGridqtEmbarcado: TIntegerField
      FieldName = 'qtEmbarcado'
    end
    object cdsGridqtEntregue: TIntegerField
      FieldName = 'qtEntregue'
    end
    object cdsGridqtAEntregar: TIntegerField
      FieldName = 'qtAEntregar'
    end
    object cdsGridvlEmbarcado: TFMTBCDField
      FieldName = 'vlEmbarcado'
      Precision = 19
      Size = 4
    end
    object cdsGridvlEntregue: TFMTBCDField
      FieldName = 'vlEntregue'
      Precision = 19
      Size = 4
    end
    object cdsGrididSafra: TIntegerField
      FieldName = 'idSafra'
    end
    object cdsGriddescSafra: TStringField
      FieldName = 'descSafra'
      Size = 50
    end
    object cdsGridqtPesoOri: TIntegerField
      FieldName = 'qtPesoOri'
    end
    object cdsGridqtDescontoOri: TIntegerField
      FieldName = 'qtDescontoOri'
    end
    object cdsGridsel: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'sel'
      Size = 1
    end
    object cdsGridvlTituloTotal: TFMTBCDField
      FieldName = 'vlTituloTotal'
      Precision = 19
      Size = 4
    end
    object cdsGridqtSomaSaida: TAggregateField
      FieldName = 'qtSomaSaida'
      Active = True
      DisplayName = ''
      DisplayFormat = '#,###0'
      Expression = 'SUM(qtPesoSaida)'
    end
    object cdsGridqtSomaEntrega: TAggregateField
      FieldName = 'qtSomaEntrega'
      Active = True
      DisplayName = ''
      DisplayFormat = '#,###0'
      Expression = 'SUM(qtEntregue)'
    end
  end
  inherited dsGrid: TDataSource
    Left = 352
    Top = 336
  end
  inherited dspGrid: TDataSetProvider
    Left = 208
    Top = 336
  end
  inherited sdsPadrao: TSQLDataSet
    Left = 136
    Top = 400
  end
  inherited sdsGrid: TSQLDataSet
    CommandText = 
      'EXEC spRelContratoResumo 9999, 5, 1010377, 1, '#39'130054/14'#39', '#39'V'#39', ' +
      #39'S'#39
    Left = 136
    Top = 336
  end
  inherited dsEmpresa: TDataSource
    Left = 600
    Top = 65528
  end
  object cdsGrid2: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    CommandText = 
      'EXEC spRelContratoResumo 9999, 5, 1010377, 1, '#39'130054/14'#39', '#39'V'#39', ' +
      #39'S'#39
    Params = <>
    ProviderName = 'dspGrid2'
    AfterOpen = cdsPadraoAfterOpen
    Left = 728
    Top = 328
    object cdsGrid2idEmpresa: TIntegerField
      FieldName = 'idEmpresa'
    end
    object cdsGrid2idCadEmpresa: TSmallintField
      FieldName = 'idCadEmpresa'
    end
    object cdsGrid2idCadGeral: TIntegerField
      FieldName = 'idCadGeral'
    end
    object cdsGrid2idCadAdicional: TSmallintField
      FieldName = 'idCadAdicional'
    end
    object cdsGrid2idContrato: TStringField
      FieldName = 'idContrato'
      Size = 30
    end
    object cdsGrid2dtEmissao: TSQLTimeStampField
      FieldName = 'dtEmissao'
    end
    object cdsGrid2descContratado: TStringField
      FieldName = 'descContratado'
      Size = 60
    end
    object cdsGrid2vlSaca: TFMTBCDField
      FieldName = 'vlSaca'
      Precision = 18
      Size = 3
    end
    object cdsGrid2vlProduto: TFMTBCDField
      FieldName = 'vlProduto'
      Precision = 18
      Size = 4
    end
    object cdsGrid2idProduto: TIntegerField
      FieldName = 'idProduto'
    end
    object cdsGrid2descProduto: TStringField
      FieldName = 'descProduto'
      Size = 50
    end
    object cdsGrid2idEmbarque: TIntegerField
      FieldName = 'idEmbarque'
    end
    object cdsGrid2idCadEmbarque: TSmallintField
      FieldName = 'idCadEmbarque'
    end
    object cdsGrid2descCadEmbarque: TStringField
      FieldName = 'descCadEmbarque'
      Size = 30
    end
    object cdsGrid2descEntrega: TStringField
      FieldName = 'descEntrega'
      Size = 25
    end
    object cdsGrid2vlContrato: TFMTBCDField
      FieldName = 'vlContrato'
      Precision = 19
      Size = 4
    end
    object cdsGrid2idComissionado: TIntegerField
      FieldName = 'idComissionado'
    end
    object cdsGrid2descComissionado: TStringField
      FieldName = 'descComissionado'
      Size = 60
    end
    object cdsGrid2idRomaneio: TIntegerField
      FieldName = 'idRomaneio'
    end
    object cdsGrid2idNf: TIntegerField
      FieldName = 'idNf'
    end
    object cdsGrid2dtRomaneio: TSQLTimeStampField
      FieldName = 'dtRomaneio'
    end
    object cdsGrid2placa: TStringField
      FieldName = 'placa'
      Size = 8
    end
    object cdsGrid2qtPesoSaida: TIntegerField
      FieldName = 'qtPesoSaida'
    end
    object cdsGrid2qtPesoDesconto: TIntegerField
      FieldName = 'qtPesoDesconto'
    end
    object cdsGrid2qtPesoLiquido: TIntegerField
      FieldName = 'qtPesoLiquido'
    end
    object cdsGrid2dtEntrega: TSQLTimeStampField
      FieldName = 'dtEntrega'
    end
    object cdsGrid2dtPagamento: TSQLTimeStampField
      FieldName = 'dtPagamento'
    end
    object cdsGrid2vlNf: TFMTBCDField
      FieldName = 'vlNf'
      Precision = 19
      Size = 4
    end
    object cdsGrid2vlTitulo: TFMTBCDField
      FieldName = 'vlTitulo'
      Precision = 19
      Size = 4
    end
    object cdsGrid2qtContrato: TIntegerField
      FieldName = 'qtContrato'
    end
    object cdsGrid2qtAcumulado: TIntegerField
      FieldName = 'qtAcumulado'
    end
    object cdsGrid2qtEmbarcado: TIntegerField
      FieldName = 'qtEmbarcado'
    end
    object cdsGrid2qtEntregue: TIntegerField
      FieldName = 'qtEntregue'
    end
    object cdsGrid2qtAEntregar: TIntegerField
      FieldName = 'qtAEntregar'
    end
    object cdsGrid2vlEmbarcado: TFMTBCDField
      FieldName = 'vlEmbarcado'
      Precision = 19
      Size = 4
    end
    object cdsGrid2vlEntregue: TFMTBCDField
      FieldName = 'vlEntregue'
      Precision = 19
      Size = 4
    end
    object cdsGrid2idSafra: TIntegerField
      FieldName = 'idSafra'
    end
    object cdsGrid2descSafra: TStringField
      FieldName = 'descSafra'
      Size = 50
    end
    object cdsGrid2qtPesoOri: TIntegerField
      FieldName = 'qtPesoOri'
    end
    object cdsGrid2qtDescontoOri: TIntegerField
      FieldName = 'qtDescontoOri'
    end
    object cdsGrid2vlTituloTotal: TFMTBCDField
      FieldName = 'vlTituloTotal'
      Precision = 19
      Size = 4
    end
    object cdsGrid2qtSomaSaida: TAggregateField
      FieldName = 'qtSomaSaida'
      Active = True
      DisplayName = ''
      DisplayFormat = '#,###0'
      Expression = 'SUM(qtPesoSaida)'
    end
    object cdsGrid2qtSomaEntrega: TAggregateField
      FieldName = 'qtSomaEntrega'
      Active = True
      DisplayName = ''
      DisplayFormat = '#,###0'
      Expression = 'SUM(qtEntregue)'
    end
  end
  object dsGrid2: TDataSource
    DataSet = cdsGrid2
    Left = 800
    Top = 328
  end
  object dspGrid2: TDataSetProvider
    DataSet = sdsGrid2
    Options = [poAllowMultiRecordUpdates, poPropogateChanges, poAllowCommandText, poUseQuoteChar]
    Left = 656
    Top = 328
  end
  object sdsGrid2: TSQLDataSet
    CommandText = 
      'EXEC spRelContratoResumo 9999, 5, 1010377, 1, '#39'130054/14'#39', '#39'V'#39', ' +
      #39'S'#39
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmPadrao.dbConexao
    Left = 584
    Top = 328
  end
end
