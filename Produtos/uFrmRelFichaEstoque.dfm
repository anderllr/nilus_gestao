inherited FrmRelFichaEstoque: TFrmRelFichaEstoque
  Caption = 'Ficha de Estoque'
  ClientHeight = 632
  ClientWidth = 914
  Icon.Data = {
    0000010001001010000001002000680400001600000028000000100000002000
    0000010020000000000000040000000000000000000000000000000000000000
    000000000000000000000000000000000000030000160300000E000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    00000400000103000006030000160300003B44434392676868B6313131900705
    0562020000460300002C03000010030000010000000000000000000000000000
    000004000004030000100300002303000039979A9BBAEEF5F6FFE0E6E8FED6DC
    DEF9A3A8A9E2707273C9434344AF080505410300000700000000000000000000
    0000000000000000000004000001040000039DA0A1AFE1E6E8FFD0D5D6FFD5DB
    DCFFCCD2D4FFC1C6C8FFB3B8BAFF0F0C0C380300001704000006040000010000
    000000000000000000000000000000000000ABAEAFBAE0E6E8FFD1D7D8FFCDD3
    D4FFC7CDCEFFBEC3C5FFB1B6B7FB060202060400000204000001000000000000
    000000000000000000000000000000000000C3C7C8D2E1E6E8FFD0D6D8FFCACF
    D1FFC5CBCCFFBCC1C3FFA7ABADEB000000000000000000000000000000000000
    000000000000000000000000000000000000DDE3E4EDE1E7E9FFD1D7D9FFC9CF
    D1FFC2C7C9FFB9BFC0FF9A9EA0D8000000000000000000000000000000000000
    00000000000000000000000000000A070709F4FAFBFDEAF1F3FFDDE3E5FFD3D9
    DBFFC8CED0FFBFC5C6FF8D9192C5000000000000000000000000000000000000
    00000000000000000000000000002E2B2B2EFEFEFEFEF7FBFCFFEAF1F3FFE1E9
    EBFFD5DBDDFFC7CDCFFF828586B1000000000000000000000000000000000000
    000000000000000000000000000063616164FFFFFFFFFEFFFFFFF8FDFEFFEBF2
    F4FFDCE3E5FFCCD3D5FF787A7C9F000000000000000000000000000000000000
    00000000000000000000000000009B9A9A9DFFFFFFFFFDFEFEFFFAFDFEFFEFF7
    F9FFDBE2E4FFD1D8DAFF6C6E6F8B000000000000000000000000000000000000
    0000000000000000000000000000BFBFBFC5FAFCFCFFF8FBFBFFF4F9FAFFEBF2
    F4FFDFE7E9FFD3DADCFF5F606178000000000000000000000000000000000000
    0000000000000000000000000000929393BFC0C3C4FFC0C4C5FFBFC3C4FFBDC1
    C2FFB8BCBEFFB2B7B8FF50505176000000000000000000000000000000000000
    00000000000000000000000000002F2D2D56565555A05D5D5DA86B6B6CAE7273
    74B67D7E7FBE808383C64645466D000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    000000000000000000000000000000000000000000000000000000000000F9FF
    00008007000080030000E0000000F8010000F80F0000F80F0000F00F0000F00F
    0000F00F0000F00F0000F00F0000F00F0000F00F0000FFFF0000FFFF0000}
  ExplicitWidth = 930
  ExplicitHeight = 671
  PixelsPerInch = 96
  TextHeight = 13
  inherited BevGrid: TBevel
    Top = 118
    Width = 914
    ExplicitTop = 118
    ExplicitWidth = 763
  end
  inherited BevTop: TBevel
    Top = 0
    Width = 914
    ExplicitTop = -2
    ExplicitWidth = 655
  end
  inherited PanTopo: TCPanelGradient
    Width = 914
    Height = 84
    ExplicitWidth = 914
    ExplicitHeight = 84
    DesignSize = (
      914
      84)
    object Bevel3: TBevel [0]
      Left = 1
      Top = 1
      Width = 912
      Height = 4
      Align = alTop
      Shape = bsFrame
      Style = bsRaised
      ExplicitLeft = 0
      ExplicitTop = -1
      ExplicitWidth = 814
    end
    object CLabel3: TCLabel [1]
      Left = 526
      Top = 42
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
    object CLabel7: TCLabel [2]
      Left = 656
      Top = 42
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
    object Bevel1: TBevel [3]
      Left = 1
      Top = 31
      Width = 912
      Height = 4
      Align = alTop
      Shape = bsFrame
      Style = bsRaised
      ExplicitLeft = 2
      ExplicitTop = 37
    end
    object CLabel12: TCLabel [4]
      Left = 28
      Top = 42
      Width = 42
      Height = 13
      Alignment = taRightJustify
      Caption = 'Dep'#243'sito'
      Transparent = True
    end
    object CLabel13: TCLabel [5]
      Left = 32
      Top = 64
      Width = 38
      Height = 13
      Alignment = taRightJustify
      Caption = 'Produto'
      Transparent = True
    end
    object CLabel5: TCLabel [6]
      Left = 438
      Top = 64
      Width = 26
      Height = 13
      Alignment = taRightJustify
      Caption = 'Safra'
    end
    inherited BtnExecutar: TCBitBtn
      Left = 773
      Top = 47
      Anchors = [akTop, akRight]
      TabOrder = 10
      ExplicitLeft = 773
      ExplicitTop = 47
    end
    object PanEmpresa: TCPanelGradient
      Left = 1
      Top = 5
      Width = 912
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
      object CLabel1: TCLabel
        Left = 12
        Top = 8
        Width = 41
        Height = 13
        Alignment = taRightJustify
        Caption = 'Empresa'
        Transparent = True
      end
      object CLabel11: TCLabel
        Left = 527
        Top = 8
        Width = 18
        Height = 13
        Alignment = taRightJustify
        Caption = 'I.E.'
        Transparent = True
      end
      object DBCKconsolida: TCDBCheckBox
        Left = 683
        Top = 6
        Width = 70
        Height = 17
        Caption = 'Consolida?'
        DataField = 'consolida'
        DataSource = dsPadrao
        TabOrder = 0
        ValueChecked = 'S'
        ValueUnchecked = 'N'
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
        OnKeyDown = DBEidEmpresaKeyDown
        DecimalControl = True
        KeyMode = kmNormal
      end
      object DBEidCadEmpresa: TCDBEdit
        Left = 111
        Top = 5
        Width = 35
        Height = 19
        TabStop = False
        BevelKind = bkTile
        BorderStyle = bsNone
        DataField = 'idCadEmpresa'
        DataSource = dsPadrao
        TabOrder = 2
        OnKeyDown = DBEidEmpresaKeyDown
        DecimalControl = True
        KeyMode = kmNormal
      end
      object LookdescCadEmpresa: TCLookUp
        Left = 152
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
        Left = 372
        Top = 5
        Width = 148
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
      object LookidInscEstadual: TCLookUp
        Left = 551
        Top = 5
        Width = 126
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
        ValidaCampoObrigatorio = False
        CampoObrigatorio = True
        LookUpTable = 'vCadEmpresaFiscal'
        ReturnField = 'idInscEstadual'
      end
    end
    object DBEdtEstoqueIni: TCDBEdit
      Left = 570
      Top = 39
      Width = 80
      Height = 19
      BevelKind = bkTile
      BorderStyle = bsNone
      DataField = 'dtEstoqueIni'
      DataSource = dsPadrao
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      MaxLength = 10
      ParentFont = False
      TabOrder = 3
      DecimalControl = True
      KeyMode = kmDate
    end
    object DBEdtEstoqueFim: TCDBEdit
      Left = 678
      Top = 39
      Width = 80
      Height = 19
      BevelKind = bkTile
      BorderStyle = bsNone
      DataField = 'dtEstoqueFim'
      DataSource = dsPadrao
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      MaxLength = 10
      ParentFont = False
      TabOrder = 4
      DecimalControl = True
      KeyMode = kmDate
    end
    object DBEidProdDeposito: TCDBEdit
      Left = 76
      Top = 39
      Width = 46
      Height = 19
      BevelKind = bkTile
      BorderStyle = bsNone
      DataField = 'idProdDeposito'
      DataSource = dsPadrao
      TabOrder = 1
      AcaoCad = frmPrincipal.actCadProdDeposito
      DecimalControl = True
      KeyMode = kmNormal
    end
    object LookProdDeposito: TCLookUp
      Left = 128
      Top = 39
      Width = 251
      Height = 19
      Alignment = taLeftJustify
      BevelInner = bvSpace
      BevelOuter = bvLowered
      Color = 14149350
      ParentBackground = False
      TabOrder = 2
      Key.Strings = (
        'idProdDeposito')
      LookUpKey.Strings = (
        'idProdDeposito')
      ClientDataSet = cdsLookUp
      DataSource = dsPadrao
      ValidaCampoObrigatorio = True
      CampoObrigatorio = True
      LookUpTable = 'ProdDeposito'
      ReturnField = 'descProdDeposito'
    end
    object DBEidProduto: TCDBEdit
      Left = 76
      Top = 61
      Width = 46
      Height = 19
      BevelKind = bkTile
      BorderStyle = bsNone
      DataField = 'idProduto'
      DataSource = dsPadrao
      TabOrder = 5
      Find = FindProduto
      DecimalControl = True
      KeyMode = kmNormal
    end
    object LookProduto: TCLookUp
      Left = 128
      Top = 61
      Width = 251
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
      ClientDataSet = cdsLookUp
      DataSource = dsPadrao
      ValidaCampoObrigatorio = True
      CampoObrigatorio = True
      LookUpTable = 'Produto'
      ReturnField = 'descProduto'
    end
    object LookProdMedida: TCLookUp
      Left = 385
      Top = 61
      Width = 42
      Height = 19
      Alignment = taLeftJustify
      BevelInner = bvSpace
      BevelOuter = bvLowered
      Color = 14149350
      ParentBackground = False
      TabOrder = 7
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
    object DBEidSafra: TCDBEdit
      Left = 470
      Top = 61
      Width = 46
      Height = 19
      BevelKind = bkTile
      BorderStyle = bsNone
      DataField = 'idSafra'
      DataSource = dsPadrao
      TabOrder = 8
      Find = dmFind.FindSafra
      DecimalControl = True
      KeyMode = kmNormal
    end
    object LookSafra: TCLookUp
      Left = 522
      Top = 61
      Width = 236
      Height = 19
      Alignment = taLeftJustify
      BevelInner = bvSpace
      BevelOuter = bvLowered
      Color = 14149350
      ParentBackground = False
      TabOrder = 9
      Key.Strings = (
        'idSafra')
      LookUpKey.Strings = (
        'idSafra')
      AlternateSQL.Strings = (
        
          'SELECT descSafra FROM Safra WHERE idEmpresa = [DBEidEmpresa] AND' +
          ' idSafra = ?')
      ClientDataSet = cdsLookUp
      DataSource = dsPadrao
      ValidaCampoObrigatorio = True
      CampoObrigatorio = True
      LookUpTable = 'Safra'
      ReturnField = 'descSafra'
    end
  end
  inherited PanTop: TCPanelGradient
    Top = 4
    Width = 914
    VerticalAlignment = taAlignTop
    ExplicitTop = 4
    ExplicitWidth = 914
    inherited BtnFechar: TCBitBtn
      Left = 773
      Top = 4
      ExplicitLeft = 773
      ExplicitTop = 4
    end
  end
  inherited cxGrid: TcxGrid
    Top = 122
    Width = 914
    Height = 472
    DragOpening = False
    ExplicitTop = 122
    ExplicitWidth = 914
    ExplicitHeight = 472
    inherited DBView: TcxGridDBTableView
      Navigator.Buttons.Edit.Enabled = False
      DataController.KeyFieldNames = 'idProduto'
      DataController.Options = [dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoGroupsAlwaysExpanded]
      DataController.Summary.DefaultGroupSummaryItems = <
        item
          Format = '#,###0.000'
          Kind = skSum
          Position = spFooter
          Column = DBViewqtEstoque
        end
        item
          Format = '#,###0.000'
          Kind = skSum
          Column = DBViewqtEstoque
        end
        item
          Format = '#,####0.0000'
          Kind = skSum
          Position = spFooter
          Column = DBViewvlCustoMedio
        end>
      DataController.Summary.FooterSummaryItems = <
        item
          Format = '#,####0.0000'
          Kind = skSum
          Column = DBViewvlCustoMedio
        end>
      DataController.Summary.SummaryGroups = <
        item
          Links = <
            item
            end
            item
              Column = DBViewqtEstoque
            end
            item
              Column = DBViewvlEstoque
            end
            item
              Column = DBViewqtSaldo
            end
            item
            end
            item
              Column = DBViewtpDocumento
            end
            item
              Column = DBViewidDocSerie
            end
            item
              Column = DBViewnrDocumento
            end
            item
            end>
          SummaryItems = <
            item
              Format = '#,###0.000'
              Kind = skSum
              FieldName = 'qtEstoque'
              DisplayText = 'Estoque'
            end>
        end>
      OptionsData.CancelOnExit = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsView.GroupFooters = gfAlwaysVisible
      Styles.Header = stBlueSky
      object DBViewidEmpresa: TcxGridDBColumn
        Caption = 'Emp.'
        DataBinding.FieldName = 'idEmpresa'
        Width = 20
      end
      object DBViewidCadEmpresa: TcxGridDBColumn
        Caption = 'F.'
        DataBinding.FieldName = 'idCadEmpresa'
        Width = 20
      end
      object DBViewidProdDeposito: TcxGridDBColumn
        Caption = 'Dep'#243'sito'
        DataBinding.FieldName = 'idProdDeposito'
        Visible = False
        GroupIndex = 0
        Width = 60
      end
      object DBViewdtEstoque: TcxGridDBColumn
        Caption = 'Data'
        DataBinding.FieldName = 'dtEstoque'
        Width = 75
      end
      object DBViewqtEstoque: TcxGridDBColumn
        Caption = 'Movimento'
        DataBinding.FieldName = 'qtEstoque'
        Width = 60
      end
      object DBViewvlEstoque: TcxGridDBColumn
        Caption = 'Vl.Movimento'
        DataBinding.FieldName = 'vlEstoque'
        Width = 70
      end
      object DBViewvlCustoMedio: TcxGridDBColumn
        DataBinding.FieldName = 'vlCustoMedio'
        Width = 70
      end
      object DBViewqtSaldo: TcxGridDBColumn
        Caption = 'Saldo'
        DataBinding.FieldName = 'qtSaldo'
      end
      object DBViewtpDocumento: TcxGridDBColumn
        Caption = 'Doc'
        DataBinding.FieldName = 'tpDocumento'
        Width = 30
      end
      object DBViewidFornecedor: TcxGridDBColumn
        DataBinding.FieldName = 'idFornecedor'
        Width = 40
      end
      object DBViewidCadFornecedor: TcxGridDBColumn
        Caption = 'Cad.'
        DataBinding.FieldName = 'idCadFornecedor'
        Width = 20
      end
      object DBViewidDocSerie: TcxGridDBColumn
        Caption = 'S'#233'rie'
        DataBinding.FieldName = 'idDocSerie'
        Width = 40
      end
      object DBViewnrDocumento: TcxGridDBColumn
        Caption = 'Nr. Docto.'
        DataBinding.FieldName = 'nrDocumento'
        Width = 60
      end
    end
  end
  object CPanelGradient1: TCPanelGradient [5]
    Left = 0
    Top = 594
    Width = 914
    Height = 38
    Align = alBottom
    Caption = 'PanTopo'
    TabOrder = 3
    CaptionNo = 0
    HintNo = 0
    BackgroundGradientColor = 12306636
    BackgroundGradientDirection = gdVertical
    TextColor = clBlack
    GradientColor = clBlack
    RegularButtonColor = clBlack
    SelectedButtonColor = clBlack
    ButtonOptions = []
    object Bevel2: TBevel
      Left = 1
      Top = 33
      Width = 912
      Height = 4
      Align = alBottom
      Shape = bsFrame
      Style = bsRaised
      ExplicitLeft = 0
      ExplicitTop = -1
      ExplicitWidth = 814
    end
    object CLabel2: TCLabel
      Left = 41
      Top = 12
      Width = 81
      Height = 13
      Alignment = taRightJustify
      Caption = 'Saldo Anterior'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object CLabel4: TCLabel
      Left = 228
      Top = 12
      Width = 100
      Height = 13
      Alignment = taRightJustify
      Caption = 'Sa'#237'das no Per'#237'odo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object CLabel6: TCLabel
      Left = 430
      Top = 12
      Width = 113
      Height = 13
      Alignment = taRightJustify
      Caption = 'Entradas no Per'#237'odo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Bevel4: TBevel
      Left = 1
      Top = 1
      Width = 912
      Height = 4
      Align = alTop
      Shape = bsFrame
      Style = bsRaised
      ExplicitLeft = 0
      ExplicitTop = -1
      ExplicitWidth = 814
    end
    object CLabel8: TCLabel
      Left = 645
      Top = 11
      Width = 71
      Height = 13
      Alignment = taRightJustify
      Caption = #218'ltimo Saldo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object DBEqtSaldoAnterior: TCDBEdit
      Left = 128
      Top = 9
      Width = 90
      Height = 19
      BevelKind = bkTile
      BorderStyle = bsNone
      DataField = 'qtSaldoAnterior'
      DataSource = dsRodape
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
    object DBEqtSaidas: TCDBEdit
      Left = 334
      Top = 9
      Width = 90
      Height = 19
      BevelKind = bkTile
      BorderStyle = bsNone
      DataField = 'qtSaidas'
      DataSource = dsRodape
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 1
      DecimalControl = True
      KeyMode = kmNormal
    end
    object DBEqtEntradas: TCDBEdit
      Left = 549
      Top = 9
      Width = 90
      Height = 19
      BevelKind = bkTile
      BorderStyle = bsNone
      DataField = 'qtEntradas'
      DataSource = dsRodape
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 2
      DecimalControl = True
      KeyMode = kmNormal
    end
    object DBEqtUltimoSaldo: TCDBEdit
      Left = 722
      Top = 8
      Width = 90
      Height = 19
      BevelKind = bkTile
      BorderStyle = bsNone
      DataField = 'qtUltimoSaldo'
      DataSource = dsRodape
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
  end
  inherited imgIcones: TImageList
    Bitmap = {
      494C010102000400280010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
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
    Left = 600
    inherited actPesquisar: TAction
      Tag = 1
    end
  end
  inherited cdsPadrao: TClientDataSet
    AfterInsert = cdsPadraoAfterInsert
    object cdsPadraoidCadEmpresa: TIntegerField
      FieldName = 'idCadEmpresa'
    end
    object cdsPadraoconsolida: TStringField
      FieldName = 'consolida'
      Size = 1
    end
    object cdsPadraoidProdDeposito: TIntegerField
      FieldName = 'idProdDeposito'
    end
    object cdsPadraodtEstoqueIni: TDateTimeField
      FieldName = 'dtEstoqueIni'
    end
    object cdsPadraodtEstoqueFim: TDateTimeField
      FieldName = 'dtEstoqueFim'
    end
    object cdsPadraoidProduto: TIntegerField
      FieldName = 'idProduto'
    end
    object cdsPadraoidSafra: TIntegerField
      FieldName = 'idSafra'
    end
  end
  inherited sdsGrid: TSQLDataSet
    CommandText = 'EXEC spFichaEstoque 1, 1, 0, 0, '#39'01/01/01'#39', '#39'01/01/01'#39', 0'
  end
  inherited cdsGrid: TClientDataSet
    CommandText = 'EXEC spFichaEstoque 1, 1, 0, 0, '#39'01/01/01'#39', '#39'01/01/01'#39', 0'
    AfterOpen = cdsPadraoAfterOpen
    object cdsGrididProdDeposito: TSmallintField
      FieldName = 'idProdDeposito'
    end
    object cdsGriddtEstoque: TSQLTimeStampField
      FieldName = 'dtEstoque'
    end
    object cdsGrididProduto: TIntegerField
      FieldName = 'idProduto'
    end
    object cdsGridtpDocumento: TStringField
      FieldName = 'tpDocumento'
      FixedChar = True
      Size = 3
    end
    object cdsGrididDocSerie: TStringField
      FieldName = 'idDocSerie'
      FixedChar = True
      Size = 5
    end
    object cdsGridnrDocumento: TIntegerField
      FieldName = 'nrDocumento'
    end
    object cdsGriddescProduto: TStringField
      FieldKind = fkLookup
      FieldName = 'descProduto'
      LookupDataSet = cdsProduto
      LookupKeyFields = 'idProduto'
      LookupResultField = 'descProduto'
      KeyFields = 'idProduto'
      Size = 50
      Lookup = True
    end
    object cdsGrididEmpresa: TIntegerField
      FieldName = 'idEmpresa'
    end
    object cdsGrididCadEmpresa: TSmallintField
      FieldName = 'idCadEmpresa'
    end
    object cdsGrididFornecedor: TIntegerField
      FieldName = 'idFornecedor'
    end
    object cdsGrididCadFornecedor: TSmallintField
      FieldName = 'idCadFornecedor'
    end
    object cdsGridvlEstoque: TFMTBCDField
      FieldName = 'vlEstoque'
      Precision = 18
      Size = 4
    end
    object cdsGridvlCustoMedio: TFMTBCDField
      FieldName = 'vlCustoMedio'
      DisplayFormat = '#,####0.0000'
      Precision = 18
      Size = 4
    end
    object cdsGridqtEstoque: TFMTBCDField
      FieldName = 'qtEstoque'
      Precision = 18
      Size = 3
    end
    object cdsGridqtSaldo: TFMTBCDField
      FieldName = 'qtSaldo'
      Precision = 18
      Size = 3
    end
  end
  inherited StyleRepository: TcxStyleRepository
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
    end
  end
  object FindEmpresa: TCFind [20]
    SelectClause.Strings = (
      
        'SELECT  idEmpresa, descCadEmpresa, descAbreviada, idCnpjCpf FROM' +
        ' vCadEmpresaContabil')
    OrderByClause.Strings = (
      'ORDER BY descCadGeral')
    FindField = 'descCadGeral'
    SQLConnection = dmPadrao.dbConexao
    ValueField = 'idEmpresa'
    CarregaDados = True
    CollumNames.Strings = (
      'C'#243'digo'
      'Nome / Raz'#227'o Social'
      'Descri'#231#227'o Abreviada / Fantasia'
      'CPF / CNPJ')
    TypeFind = fFindNormal
    Left = 576
    Top = 176
  end
  object FindConta: TCFind [21]
    SelectClause.Strings = (
      
        'SELECT  idConta, idBanco, idAgencia, idContaCorrente, descConta ' +
        'FROM vConta')
    JoinClause.Strings = (
      'WHERE StConta = '#39'ATIVO'#39' AND idEmpresa = [DBEidEmpresa]')
    OrderByClause.Strings = (
      'ORDER BY descConta')
    FindField = 'descConta'
    SQLConnection = dmPadrao.dbConexao
    ValueField = 'idConta'
    CarregaDados = True
    CollumNames.Strings = (
      'C'#243'digo'
      'Banco'
      'Ag'#234'ncia'
      'Conta'
      'Descri'#231#227'o')
    TypeFind = fFindNormal
    Left = 544
    Top = 176
  end
  object cdsRodape: TClientDataSet [22]
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPadrao'
    AfterOpen = cdsPadraoAfterOpen
    Left = 608
    Top = 240
    object cdsRodapeqtSaldoAnterior: TFloatField
      FieldName = 'qtSaldoAnterior'
      DisplayFormat = '#,###0.000'
    end
    object cdsRodapeqtSaidas: TFloatField
      FieldName = 'qtSaidas'
      DisplayFormat = '#,###0.000'
    end
    object cdsRodapeqtEntradas: TFloatField
      FieldName = 'qtEntradas'
      DisplayFormat = '#,###0.000'
    end
    object cdsRodapeqtUltimoSaldo: TFloatField
      FieldName = 'qtUltimoSaldo'
      DisplayFormat = '#,###0.000'
    end
  end
  object dsRodape: TDataSource [23]
    DataSet = cdsRodape
    Left = 640
    Top = 248
  end
  object FindProdDeposito: TCFind [24]
    SelectClause.Strings = (
      'SELECT idProdDeposito, descProdDeposito FROM ProdDeposito')
    JoinClause.Strings = (
      'WHERE stProdDeposito = '#39'ATIVO'#39)
    OrderByClause.Strings = (
      'ORDER BY descProdDeposito')
    FindField = 'descProdDeposito'
    SQLConnection = dmPadrao.dbConexao
    ValueField = 'idProdDeposito'
    CarregaDados = True
    CollumNames.Strings = (
      'C'#243'digo'
      'Descri'#231#227'o')
    TypeFind = fFindNormal
    Left = 544
    Top = 240
  end
  object FindProduto: TCFind [25]
    SelectClause.Strings = (
      'SELECT idProduto, descProduto, stProduto FROM Produto')
    OrderByClause.Strings = (
      'ORDER BY descProduto')
    FindField = 'descProduto'
    SQLConnection = dmPadrao.dbConexao
    ValueField = 'idProduto'
    CarregaDados = True
    CollumNames.Strings = (
      'C'#243'digo'
      'Descri'#231#227'o'
      'Status')
    TypeFind = fFindNormal
    Left = 576
    Top = 240
  end
  object cdsProduto: TClientDataSet [26]
    Active = True
    Aggregates = <>
    CommandText = 'SELECT * FROM Produto'
    Params = <>
    ProviderName = 'dspLookUp'
    Left = 544
    Top = 272
  end
end
