inherited FrmRelAbastecimento: TFrmRelAbastecimento
  Caption = 'Relat'#243'rio de Abastecimento'
  ClientHeight = 536
  ClientWidth = 1070
  ExplicitWidth = 1086
  ExplicitHeight = 575
  PixelsPerInch = 96
  TextHeight = 13
  inherited BevGrid: TBevel
    Top = 169
    Width = 1070
    ExplicitTop = 169
    ExplicitWidth = 646
  end
  inherited BevTop: TBevel
    Width = 1070
    ExplicitWidth = 646
  end
  inherited PanTopo: TCPanelGradient
    Width = 1070
    Height = 135
    ExplicitWidth = 1070
    ExplicitHeight = 135
    object CLabel2: TCLabel [0]
      Left = 10
      Top = 8
      Width = 41
      Height = 13
      Alignment = taRightJustify
      Caption = 'Empresa'
      Transparent = True
    end
    object lblCliFor: TCLabel [1]
      Left = 24
      Top = 34
      Width = 40
      Height = 13
      Alignment = taRightJustify
      Caption = 'Maquina'
    end
    object CLabel4: TCLabel [2]
      Left = 440
      Top = 34
      Width = 26
      Height = 13
      Alignment = taRightJustify
      Caption = 'Safra'
    end
    object CLabel5: TCLabel [3]
      Left = 26
      Top = 59
      Width = 38
      Height = 13
      Alignment = taRightJustify
      Caption = 'Produto'
    end
    object CLabel9: TCLabel [4]
      Left = 9
      Top = 84
      Width = 55
      Height = 13
      Alignment = taRightJustify
      Caption = 'Fornecedor'
    end
    object CLabel8: TCLabel [5]
      Left = 430
      Top = 59
      Width = 44
      Height = 13
      Alignment = taRightJustify
      Caption = 'Gerencial'
    end
    object CLabel1: TCLabel [6]
      Left = 430
      Top = 84
      Width = 71
      Height = 13
      Alignment = taRightJustify
      Caption = 'Abastecimento'
    end
    object CLabel7: TCLabel [7]
      Left = 570
      Top = 84
      Width = 17
      Height = 13
      Alignment = taRightJustify
      Caption = 'At'#233
    end
    object CLabel6: TCLabel [8]
      Left = 146
      Top = 109
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
    object CLabel3: TCLabel [9]
      Left = 26
      Top = 109
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
    inherited BtnExecutar: TCBitBtn
      TabOrder = 22
    end
    object DBEidEmpresa: TCDBEdit
      Left = 56
      Top = 5
      Width = 46
      Height = 19
      TabStop = False
      BevelKind = bkTile
      BorderStyle = bsNone
      DataField = 'idEmpresa'
      DataSource = dsPadrao
      TabOrder = 23
      DecimalControl = True
      KeyMode = kmInteger
    end
    object DBEidCadEmpresa: TCDBEdit
      Left = 108
      Top = 5
      Width = 37
      Height = 19
      TabStop = False
      BevelKind = bkTile
      BorderStyle = bsNone
      DataField = 'idCadEmpresa'
      DataSource = dsPadrao
      TabOrder = 24
      DecimalControl = True
      KeyMode = kmInteger
    end
    object LookdescAbreviada: TCLookUp
      Left = 383
      Top = 5
      Width = 165
      Height = 19
      Alignment = taLeftJustify
      BevelInner = bvSpace
      BevelOuter = bvLowered
      Color = 14149350
      ParentBackground = False
      TabOrder = 25
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
    object LookdescCadEmpresa: TCLookUp
      Left = 151
      Top = 5
      Width = 226
      Height = 19
      Alignment = taLeftJustify
      BevelInner = bvSpace
      BevelOuter = bvLowered
      Color = 14149350
      ParentBackground = False
      TabOrder = 26
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
    object PanEmpresa: TCPanelGradient
      Left = 1
      Top = 1
      Width = 1068
      Height = 30
      Align = alTop
      Caption = 'PanEmpresa'
      TabOrder = 27
      CaptionNo = 0
      HintNo = 0
      BackgroundGradientColor = 15201011
      BackgroundGradientDirection = gdVertical
      TextColor = clBlack
      GradientColor = clBlack
      RegularButtonColor = clBlack
      SelectedButtonColor = clBlack
      ButtonOptions = []
      object CLabel10: TCLabel
        Left = 10
        Top = 8
        Width = 41
        Height = 13
        Alignment = taRightJustify
        Caption = 'Empresa'
        Transparent = True
      end
      object CDBEdit1: TCDBEdit
        Left = 56
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
        KeyMode = kmInteger
      end
      object CDBEdit2: TCDBEdit
        Left = 108
        Top = 5
        Width = 37
        Height = 19
        TabStop = False
        BevelKind = bkTile
        BorderStyle = bsNone
        DataField = 'idCadEmpresa'
        DataSource = dsPadrao
        TabOrder = 1
        DecimalControl = True
        KeyMode = kmInteger
      end
      object CLookUp1: TCLookUp
        Left = 383
        Top = 5
        Width = 165
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
        ReturnField = 'descAbreviada'
      end
      object CLookUp2: TCLookUp
        Left = 151
        Top = 5
        Width = 226
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
    end
    object DBEidMaquina: TCDBEdit
      Left = 70
      Top = 31
      Width = 53
      Height = 19
      BevelKind = bkTile
      BorderStyle = bsNone
      DataField = 'idMaquina'
      DataSource = dsPadrao
      TabOrder = 0
      Find = dmFind.FindMaquina
      AcaoCad = frmPrincipal.actCadCliente
      DecimalControl = True
      KeyMode = kmNormal
    end
    object LookCliente: TCLookUp
      Left = 129
      Top = 31
      Width = 295
      Height = 19
      Alignment = taLeftJustify
      BevelInner = bvSpace
      BevelOuter = bvLowered
      Color = 14149350
      ParentBackground = False
      TabOrder = 1
      Key.Strings = (
        'idMaquina')
      LookUpKey.Strings = (
        'idMaquina')
      ClientDataSet = cdsLookUp
      DataSource = dsPadrao
      ValidaCampoObrigatorio = True
      CampoObrigatorio = True
      LookUpTable = 'Maquina'
      ReturnField = 'descMaquina'
    end
    object DBEidSafra: TCDBEdit
      Left = 472
      Top = 31
      Width = 53
      Height = 19
      BevelKind = bkTile
      BorderStyle = bsNone
      DataField = 'idSafra'
      DataSource = dsPadrao
      TabOrder = 2
      Find = dmFind.FindSafra
      AcaoCad = frmPrincipal.actCadSafra
      DecimalControl = True
      KeyMode = kmNormal
    end
    object LookSafra: TCLookUp
      Left = 531
      Top = 31
      Width = 303
      Height = 19
      Alignment = taLeftJustify
      BevelInner = bvSpace
      BevelOuter = bvLowered
      Color = 14149350
      ParentBackground = False
      TabOrder = 3
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
    object DBEidProduto: TCDBEdit
      Left = 70
      Top = 56
      Width = 53
      Height = 19
      BevelKind = bkTile
      BorderStyle = bsNone
      DataField = 'idProduto'
      DataSource = dsPadrao
      TabOrder = 4
      Find = dmFind.FindProduto
      AcaoCad = frmPrincipal.actCadProduto
      DecimalControl = True
      KeyMode = kmNormal
    end
    object LookProduto: TCLookUp
      Left = 129
      Top = 56
      Width = 295
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
      ValidaCampoObrigatorio = True
      CampoObrigatorio = True
      LookUpTable = 'Produto'
      ReturnField = 'descProduto'
    end
    object DBEidFornecedor: TCDBEdit
      Left = 70
      Top = 81
      Width = 53
      Height = 19
      BevelKind = bkTile
      BorderStyle = bsNone
      DataField = 'idFornecedor'
      DataSource = dsPadrao
      TabOrder = 8
      Find = dmFind.FindFornecedor
      DecimalControl = True
      KeyMode = kmNormal
    end
    object LookRazao: TCLookUp
      Left = 129
      Top = 81
      Width = 295
      Height = 19
      Alignment = taLeftJustify
      BevelInner = bvSpace
      BevelOuter = bvLowered
      Color = 14149350
      ParentBackground = False
      TabOrder = 9
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
    object LookGerencial: TCLookUp
      Left = 539
      Top = 56
      Width = 295
      Height = 19
      Alignment = taLeftJustify
      BevelInner = bvSpace
      BevelOuter = bvLowered
      Color = 14149350
      ParentBackground = False
      TabOrder = 7
      Key.Strings = (
        'idGerencial')
      LookUpKey.Strings = (
        'idGerencial')
      ClientDataSet = cdsLookUp
      ValidaCampoObrigatorio = True
      CampoObrigatorio = True
      LookUpTable = 'vGerencial'
      ReturnField = 'descGerencial'
    end
    object DBEidGerencial: TCDBEdit
      Left = 480
      Top = 56
      Width = 53
      Height = 19
      BevelKind = bkTile
      BorderStyle = bsNone
      DataField = 'idGerencial'
      DataSource = dsPadrao
      TabOrder = 6
      DecimalControl = True
      KeyMode = kmNormal
    end
    object DBEidAbastecimentoIni: TCDBEdit
      Left = 507
      Top = 81
      Width = 57
      Height = 19
      BevelKind = bkTile
      BorderStyle = bsNone
      DataField = 'idAbastecimentoIni'
      DataSource = dsPadrao
      TabOrder = 10
      AcaoCad = frmPrincipal.actCadSafra
      DecimalControl = True
      KeyMode = kmNormal
    end
    object DBEidAbastecimentoFim: TCDBEdit
      Left = 593
      Top = 81
      Width = 63
      Height = 19
      BevelKind = bkTile
      BorderStyle = bsNone
      DataField = 'idAbastecimentoFim'
      DataSource = dsPadrao
      TabOrder = 11
      AcaoCad = frmPrincipal.actCadSafra
      DecimalControl = True
      KeyMode = kmNormal
    end
    object DBEdtAbastecimentoFim: TCDBEdit
      Left = 168
      Top = 106
      Width = 70
      Height = 19
      BevelKind = bkTile
      BorderStyle = bsNone
      DataField = 'dtAbastecimentoFim'
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
    object DBEdtAbastecimentoIni: TCDBEdit
      Left = 70
      Top = 106
      Width = 70
      Height = 19
      BevelKind = bkTile
      BorderStyle = bsNone
      DataField = 'dtAbastecimentoIni'
      DataSource = dsPadrao
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      MaxLength = 10
      ParentFont = False
      TabOrder = 14
      DecimalControl = True
      KeyMode = kmDate
    end
    object DBCKconsolidaemp: TCDBCheckBox
      Left = 243
      Top = 108
      Width = 127
      Height = 17
      Caption = 'Consolida Empresas?'
      DataField = 'consolidaemp'
      DataSource = dsPadrao
      TabOrder = 16
      ValueChecked = 'S'
      ValueUnchecked = 'N'
    end
    object DBCKconsolidafilial: TCDBCheckBox
      Left = 376
      Top = 108
      Width = 127
      Height = 17
      Caption = 'Consolida Filiais?'
      DataField = 'consolidafilial'
      DataSource = dsPadrao
      TabOrder = 17
      ValueChecked = 'S'
      ValueUnchecked = 'N'
    end
    object CBitBtn1: TCBitBtn
      Left = 677
      Top = 104
      Width = 75
      Height = 25
      Action = actPesquisar
      Caption = '&Pesquisar'
      TabOrder = 20
    end
    object BtnImprimir: TCBitBtn
      Left = 759
      Top = 104
      Width = 75
      Height = 25
      Caption = '&Imprimir'
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        00000000000000000000D1BDA9FFD1BDA9FFD1BDA9FFD1BDA9FFD1BDA9FFD1BD
        A9FFD1BDA9FFD1BDA9FF00000000000000000000000000000000000000000000
        00000000000000000000D1BDA9FFFFFEFDFFFFFEFDFFFFFEFDFFFFFEFDFFFFFE
        FDFFFFFEFDFFD1BDA9FF00000000000000000000000000000000909090FF9090
        90FF909090FF3B3B3BFFC3B09EFFEBE7E3FFD5C8BBFFD5C8BBFFD5C8BBFFD5C8
        BBFFEBE7E3FFC3B09EFF3B3B3BFF909090FF909090FF909090FFA6A4A2FFD7D7
        D7FFD7D7D7FF474747FF8D8072FFA7A098FFA7A098FFA7A098FFA7A098FFA7A0
        98FFA7A098FF8D8072FF474747FFD7D7D7FFD7D7D7FFA6A4A2FFC1BDB8FF9090
        90FF909090FF454545FF454545FF454545FF454545FF454545FF454545FF4545
        45FF454545FF454545FF454545FFECEAE9FF50B040FFC1BDB8FFB8B4AFFFD6D2
        CFFFD6D2CFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDF
        DFFFDFDFDFFFDFDFDFFFDFDFDFFFD6D2CFFF909090FFB8B4AFFFAFABA6FF9090
        90FFCEC9C4FFBEBEBEFFBEBEBEFFBEBEBEFFBEBEBEFFBEBEBEFFBEBEBEFFBEBE
        BEFFBEBEBEFFBEBEBEFFBEBEBEFFCEC9C4FFCEC9C4FFAFABA6FFA7A39DFFC7C1
        BCFFC7C1BCFF707070FF707070FF707070FF707070FF707070FF707070FF7070
        70FF707070FF707070FF707070FFC7C1BCFFC7C1BCFFA7A39DFFA09B95FFC2BB
        B5FFC2BBB5FF464646FF464646FF464646FF464646FF464646FF464646FF4646
        46FF464646FF464646FF464646FFC2BBB5FFC2BBB5FFA09B95FF99948EFFBEB7
        B1FFBEB7B1FF2E2E2EFF2E2E2EFF2E2E2EFF2E2E2EFF2E2E2EFF2E2E2EFF2E2E
        2EFF2E2E2EFF2E2E2EFF2E2E2EFFBEB7B1FFBEB7B1FF99948EFF938E88FFBCB5
        AFFFBCB5AFFF252525FF252525FF252525FF252525FF252525FF252525FF2525
        25FF252525FF252525FF252525FFBCB5AFFFBCB5AFFF938E88FF8F8A83FF8F8A
        83FF8F8A83FF8F8A83FF90857BFFB7AA9EFFDECFC1FFDECFC1FFDECFC1FFDECF
        C1FFB7AA9EFF90857BFF8F8A83FF8F8A83FF8F8A83FF8F8A83FF000000000000
        0000000000000000000090857BFFBFB6ADFFEEE6DFFFEEE6DFFFEEE6DFFFEEE6
        DFFFBFB6ADFF90857BFF00000000000000000000000000000000000000000000
        00000000000000000000D1BDA9FFF9F6F3FFF9F6F3FFF9F6F3FFF9F6F3FFF9F6
        F3FFF9F6F3FFD1BDA9FF00000000000000000000000000000000000000000000
        00000000000000000000D1BDA9FFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFE
        FEFFFEFEFEFFD1BDA9FF00000000000000000000000000000000000000000000
        00000000000000000000D1BDA9FFD1BDA9FFD1BDA9FFD1BDA9FFD1BDA9FFD1BD
        A9FFD1BDA9FFD1BDA9FF00000000000000000000000000000000}
      TabOrder = 21
      OnClick = BtnImprimirClick
    end
    object DBCKinterno: TCDBCheckBox
      Left = 694
      Top = 81
      Width = 59
      Height = 17
      Caption = 'Interno?'
      DataField = 'interno'
      DataSource = dsPadrao
      TabOrder = 12
      ValueChecked = 'S'
      ValueUnchecked = 'N'
    end
    object DBCKexterno: TCDBCheckBox
      Left = 759
      Top = 81
      Width = 66
      Height = 17
      Caption = 'Externo?'
      DataField = 'externo'
      DataSource = dsPadrao
      TabOrder = 13
      ValueChecked = 'S'
      ValueUnchecked = 'N'
    end
    object DBCKmaquina: TCDBCheckBox
      Left = 505
      Top = 108
      Width = 72
      Height = 17
      Caption = 'M'#225'quina?'
      DataField = 'maquina'
      DataSource = dsPadrao
      TabOrder = 18
      ValueChecked = 'S'
      ValueUnchecked = 'N'
    end
    object DBCKveiculo: TCDBCheckBox
      Left = 584
      Top = 108
      Width = 66
      Height = 17
      Caption = 'Ve'#237'culo?'
      DataField = 'veiculo'
      DataSource = dsPadrao
      TabOrder = 19
      ValueChecked = 'S'
      ValueUnchecked = 'N'
    end
  end
  inherited PanTop: TCPanelGradient
    Width = 1070
    ExplicitWidth = 1070
    inherited lblInfo: TCLabel
      Width = 158
      Caption = 'Relat'#243'rio de Abastecimento'
      ExplicitWidth = 158
    end
    inherited BtnFechar: TCBitBtn
      Left = 974
      Top = 4
      ExplicitLeft = 974
      ExplicitTop = 4
    end
  end
  inherited cxGrid: TcxGrid
    Top = 173
    Width = 1070
    Height = 363
    DragOpening = False
    ExplicitTop = 173
    ExplicitWidth = 1070
    ExplicitHeight = 363
    inherited DBView: TcxGridDBTableView
      DataController.KeyFieldNames = 'idMaquina'
      DataController.Options = [dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoGroupsAlwaysExpanded]
      DataController.Summary.DefaultGroupSummaryItems = <
        item
          Format = ',0.00;- ,0.00'
          Kind = skSum
          Position = spFooter
          Column = DBViewqtAbastecimento
        end
        item
          Format = 'R$ ,0.00;-R$ ,0.00'
          Kind = skSum
          Position = spFooter
          Column = DBViewvlTotal
        end>
      DataController.Summary.FooterSummaryItems = <
        item
          Format = ',0.00;- ,0.00'
          Kind = skSum
          Column = DBViewqtAbastecimento
        end
        item
          Format = 'R$ ,0.00;-R$ ,0.00'
          Kind = skSum
          Column = DBViewvlTotal
        end>
      OptionsData.CancelOnExit = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsView.NoDataToDisplayInfoText = '< Sem Dados para Listar >'
      OptionsView.Footer = True
      OptionsView.GroupFooters = gfAlwaysVisible
      Preview.Visible = True
      object DBViewidEmpresa: TcxGridDBColumn
        Caption = 'Emp.'
        DataBinding.FieldName = 'idEmpresa'
      end
      object DBViewidCadEmpresa: TcxGridDBColumn
        Caption = 'Filial'
        DataBinding.FieldName = 'idCadEmpresa'
      end
      object DBViewidAbastecimento: TcxGridDBColumn
        Caption = 'C'#243'digo'
        DataBinding.FieldName = 'idAbastecimento'
      end
      object DBViewidProdDeposito: TcxGridDBColumn
        Caption = 'Deposito'
        DataBinding.FieldName = 'idProdDeposito'
        Visible = False
      end
      object DBViewidMaquina: TcxGridDBColumn
        DataBinding.FieldName = 'idMaquina'
        Visible = False
        VisibleForCustomization = False
      end
      object DBViewidFornecedor: TcxGridDBColumn
        Caption = 'Fornecedor'
        DataBinding.FieldName = 'idFornecedor'
        Visible = False
      end
      object DBViewdescCadFornecedor: TcxGridDBColumn
        Caption = 'Descri'#231#227'o'
        DataBinding.FieldName = 'descCadFornecedor'
      end
      object DBViewidProduto: TcxGridDBColumn
        Caption = 'Produto'
        DataBinding.FieldName = 'idProduto'
      end
      object DBViewdescProduto: TcxGridDBColumn
        Caption = 'Descri'#231#227'o'
        DataBinding.FieldName = 'descProduto'
      end
      object DBViewdescMaquina: TcxGridDBColumn
        Caption = 'Maquina'
        DataBinding.FieldName = 'descMaquina'
        Visible = False
        GroupIndex = 0
      end
      object DBViewidTipoAtividade: TcxGridDBColumn
        DataBinding.FieldName = 'idTipoAtividade'
        Visible = False
      end
      object DBViewdtAbastecimento: TcxGridDBColumn
        Caption = 'Data'
        DataBinding.FieldName = 'dtAbastecimento'
      end
      object DBViewtpAbastecimento: TcxGridDBColumn
        Caption = 'Tipo Abastecimento'
        DataBinding.FieldName = 'tpAbastecimento'
        Visible = False
      end
      object DBViewtanqueCheio: TcxGridDBColumn
        Caption = 'Tanque Cheio?'
        DataBinding.FieldName = 'tanqueCheio'
        Visible = False
      end
      object DBViewhr_kmAtual: TcxGridDBColumn
        Caption = 'Hr/KM'
        DataBinding.FieldName = 'hr_kmAtual'
        Visible = False
      end
      object DBViewqtAbastecimento: TcxGridDBColumn
        Caption = 'Qtde.'
        DataBinding.FieldName = 'qtAbastecimento'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.DisplayFormat = ',0.00;- ,0.00'
      end
      object DBViewvlAbastecimento: TcxGridDBColumn
        Caption = 'Valor Unit.'
        DataBinding.FieldName = 'vlAbastecimento'
        PropertiesClassName = 'TcxCurrencyEditProperties'
      end
      object DBViewvlTotal: TcxGridDBColumn
        Caption = 'Valor Total'
        DataBinding.FieldName = 'vlTotal'
        PropertiesClassName = 'TcxCurrencyEditProperties'
      end
      object DBViewbomba: TcxGridDBColumn
        Caption = 'Bomba'
        DataBinding.FieldName = 'bomba'
        Visible = False
      end
      object DBViewdescResponsavel: TcxGridDBColumn
        Caption = 'Responsavel'
        DataBinding.FieldName = 'descResponsavel'
      end
      object DBViewvlUltAbastecimento: TcxGridDBColumn
        DataBinding.FieldName = 'vlUltAbastecimento'
        Visible = False
      end
      object DBViewqtEstoque: TcxGridDBColumn
        DataBinding.FieldName = 'qtEstoque'
        Visible = False
      end
      object DBViewidSafra: TcxGridDBColumn
        DataBinding.FieldName = 'idSafra'
        Visible = False
      end
      object DBViewidGerencial: TcxGridDBColumn
        DataBinding.FieldName = 'idGerencial'
        Visible = False
      end
      object DBViewidResultado: TcxGridDBColumn
        DataBinding.FieldName = 'idResultado'
        Visible = False
      end
      object DBViewidRateio: TcxGridDBColumn
        DataBinding.FieldName = 'idRateio'
        Visible = False
      end
    end
  end
  inherited imgIcones: TImageList
    Left = 632
    Top = 296
    Bitmap = {
      494C0101070009007C0010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
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
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF00000000E8E8E8FFBFBFBFFFF4F4
      F4FF00000000F9F9F9FFDFDFDFFFCACACAFFBEBEBEFFBCBCBCFFB6B6B6FF9898
      98FFA5A5A5FFA2A2A2FF00000000000000000000000000000000000000000000
      000049455100978683009F7F7700643D3300A97D7300A97D7300643D33000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000824B4B00824B4B00A64B4B00A94D4D004E1E1F0000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FFEAEAEAFFE1E1E0FF9F9E9EFF7F7F
      7FFF959595FF919191FFBCBDBDFFDCDEDDFFEBEDEEFFE2E3E4FFC5C5C5FFB7B7
      B7FF9C9C9CFFABABABFF7F7F7FFFBCBCBCFF0000000000000000000000004945
      51007A717100DED3D300F7E6E700FCE8E5002B64D1003D79E70070616100B1AC
      AE00A47D73005A484B0000000000000000000000000000000000824B4B00824B
      4B00B64F5000C24F5000C54D4E00B24D4E004E1E1F00824B4B00824B4B00824B
      4B00824B4B00824B4B00824B4B0000000000000000FFBFBFC0FFAFABA8FFB1AB
      A9FFB1B1B2FFB1B0B0FFB1B1B0FFB1B0B1FFB1B0B1FFB1B0B0FFB1B1B0FFB0B0
      B0FFADADAEFFB8B8B8FF000000FF000000FFE9E9E9FF939392FFC1C1C0FF9E9E
      9DFF888A89FFC3BBB8FFC0A79FFFCBAA9EFFD5B7ACFFDABCB1FFCFCAC9FFD8D8
      D8FFCDCDCDFFC8C8C8FFD9D9D9FFB8B8B8FF0000000000000000494551007D74
      74006C646B00E5DADE00FAE7E600FDF0F0002961CC004C7CE10084625F00F7E6
      E700F9EAEC005A484B0000000000000000000000000000000000824B4B00D458
      5900CB555600C9545500C9525300B74F52004E1E1F00FE8B8C00FB9A9C00F8AA
      AB00F7B5B600F7B5B600824B4B0000000000000000FFB8B7B6FFF0E1D6FFF0E1
      D6FFECE3DDFFECE3DCFFEDE5DEFFEEE6DFFFEEE6DFFFEEE6E0FFEEE6E1FFEDE6
      E1FFEFE8E3FFE9E3E0FF000000FF000000FFE7E7E7FF9E9E9FFFA1A2A1FFC5C8
      C7FF937064FFB3552EFFB86F4EFFC4937DFFDCBEB0FFDCC1B3FFC7C6C6FFC0C0
      C0FFCBCBCBFFD1D1D1FFDBDBDBFFD8D8D8FF0000000049455100887F7E007D74
      74006A5F6200E0D5D600FAE7E600FDF0F0002455B4004C78D4006A5F6200F7E6
      E700FAEAEB005A484B0000000000000000000000000000000000824B4B00D75C
      5D00D05A5B00CF595A00CF575800BD5356004E1E1F0023B54A0013C1480016BD
      48000CBC4100F7B5B600824B4B0000000000000000FFBABABAFFE4DDD8FFE5DB
      D5FFE3E3E5FFE2E1E2FFE3E2E1FFE3E2E2FFE3E2E2FFE3E2E2FFE2E2E1FFE2E1
      E0FFE3E2E2FFDFDFDFFF000000FF000000FFEEEEEEFFB2B2B1FF7E7F7EFFDADB
      DCFFA29087FFBE7B5BFFC5896BFFD4A995FFE2CCBFFFE7D0C5FFC0BBB8FFB1B2
      B3FFE2E2E2FFE1E2E3FFE7E8E8FFAEAEAEFF0000000049455100887F7E007B6D
      6D0041435000EADEE200FAEDEF00FAEBEE001F4284001F3E780049455100F7E6
      E700FAEBEE005A484B0000000000000000000000000000000000824B4B00DD63
      6400D75F6000D55E5F00D55C5D00C2575A004E1E1F002AB44D001CBF4C001EBC
      4C0013BC4500F7B5B600824B4B0000000000000000FFB9BABAFFE8E2DCFFE7E0
      DAFFE4E4E3FFE5E1DEFFE6E6E7FFE6E6E6FFE6E7E7FFE6E7E7FFE5E6E5FFE5E5
      E5FFE6E6E6FFE2E2E2FF000000FF000000FFF8F8F8FFCACAC9FF7B7C7BFFC6C6
      C6FFC8C7C6FFC38568FFCE9173FFDAB09AFFE9D3C7FFEED9CEFFDBBAABFFCFC1
      B8FFD6DEE1FFB87458FFF9F6F5FF0000000000000000494551007D7474006A5F
      62004143500036292F00FBEEEF00FEF0F800B0B1B20096858400F6E5E600FAEA
      EB00FDF0F1005A484B0000000000000000000000000000000000824B4B00E368
      6900DD656600DA636400DE666700C6595B004E1E1F0026B1490016BC48001BBB
      490010BB4300F7B5B600824B4B0000000000000000FFC6C6C6FFDFD6CFFFE5D8
      CDFFE0D6D0FFE4D6CDFFE5DBD5FFE4DBD4FFE8E8E8FFE8E8E8FFE7E7E7FFE6E6
      E6FFE7E7E7FFE3E3E3FF000000FF000000FFFDFDFDFFD9D9DAFF828382FFADAF
      ADFFE3E7E9FFAB6F51FFCB8E70FFE4B9A4FFECD6C9FFEBD6CDFFE0BCA8FFD498
      7BFFD29A7EFFC66F49FFFDF9F8FF0000000000000000494551006C616500333D
      54001B3665002034580053474E00FDF2F300AE918C009ED8D30084625F00FEFD
      FD00FDF1F500948584001A315F00000000000000000000000000824B4B00EB6D
      6E00E2676800E67E7F00FAD3D400CC6E70004E1E1F00A5D8970050D16F0042C9
      66002DC75800F7B5B600824B4B0000000000FEFEFEFFE0D7D0FFD7CAC2FFE8D7
      CAFFE6DCD6FFE5DCD6FFE4D6CCFFE7DAD0FFE6DDD7FFE8E5E2FFE9EAEAFFE8E8
      E8FFE9E9E9FFE5E5E5FF000000FF000000FF00000000D4D4D4FF9A9B9AFF9FA0
      9FFFD4D7D9FFA57660FFCE9071FFD6AC97FFEDD6CBFFEBD6CDFFE3BEADFFD29B
      7EFFD19172FFC86E46FFFCF9F8FF0000000000000000494551003D4251001934
      65001B3665001D3B6800243E6C00B1ACAE00887F7E009ED8D30084625F00FEFD
      FD0080777D001A315F0000000000000000000000000000000000824B4B00F273
      7400E96C6D00EB818200FCD1D300CF6E70004E1E1F00FFF2CC00FFFFD700FFFF
      D400E6FCC700F7B5B600824B4B0000000000FEFCFBFFDCCCC1FFE1D3C8FFE6D6
      CBFFE9E2DDFFE6E0DCFFE3D7CFFFE7DAD0FFE5D8CEFFE9E3E0FFEBEDEEFFEAEA
      EAFFEBEBEBFFE7E7E7FF000000FF000000FF00000000E2E2E2FFACACACFF9C9D
      9CFFBFC2C3FFA47A65FFD09272FFD9AF9AFFEAD3C7FFEFDAD0FFE4BFADFFD59C
      7FFFCF9072FFC96E45FFFCF9F8FF00000000000000004446540019315D001D39
      67001D3866001D3B68001D3A68002E3B5600DBD2D200FEF8FC00FEFDFD004143
      50001A315F000000000000000000000000000000000000000000824B4B00F878
      7900F0757600EE727300F0737400D16566004E1E1F00FCEFC700FFFFD500FFFF
      D300FFFFD700F7B5B600824B4B0000000000FBF5F0FFDDCDC1FFE4DBD6FFE4DB
      D2FFE6DCD4FFE6DBD3FFE9E1DBFFE9E7E5FFE4D9D0FFEAE0D9FFEDECECFFECEC
      EDFFEDEDEDFFE8E8E8FF000000FF000000FF00000000FAFAFAFFB3B3B3FFA6A7
      A6FFA9ADAEFFA9785FFFC98A6CFFD6AB95FFF0D7CCFFF4DED3FFE8C3B2FFDAA1
      83FFD49575FFC9734DFFFCF9F8FF00000000000000001D325C001B3665001D38
      6600223D6B00203D6C001E3C6A00203E760049455100D6D4D200050206001A31
      5F00000000000000000000000000000000000000000000000000824B4B00FE7F
      8000F77A7B00F6797A00F7777900D76B6B004E1E1F00FCEFC700FFFFD500FFFF
      D300FFFFD500F7B5B600824B4B0000000000F5F0ECFFE2D2C5FFE6DBD4FFE6D8
      D1FFE7DDD5FFE7DCD4FFEBE1DAFFEBE6E3FFE5D9D1FFEBE2DBFFEFEEEEFFEFEF
      F0FFEFEFEFFFE9E9E9FF000000FF000000FF0000000000000000E2E1E1FFDDDC
      DDFF949190FFB36C49FFA2745DFFAC9185FFBBADA7FFC0B5AFFFB6A198FFAC81
      6EFFAE7457FFBF6641FFFDFAF8FF0000000000000000000000001A3565001B36
      65001D3B6800223D6B00244170002441700023416E00203458001A315F000000
      0000000000000000000000000000000000000000000000000000824B4B00FF83
      8400FC7F8000FB7E7F00FE7F8000DA6E6F004E1E1F00FCEFC700FFFFD500FFFF
      D300FFFFD500F7B5B600824B4B0000000000FCFBFAFFE7D8CDFFE3D5CBFFE8D9
      CEFFEEE8E2FFEBE7E4FFE7DBD3FFE9DCD2FFE8DBD0FFEEEAE6FFF2F3F4FFF4F4
      F4FFF5F5F5FFEDEDEDFF000000FF000000FF0000000000000000FEFEFEFFF4F4
      F4FF857067FFA1A4A5FFB9BCBEFFCBCCCCFFD6D7D8FFDEDDDDFFD3D5D4FFC2C6
      C7FFB0B5B6FF897D78FFC6C3C2FF000000000000000000000000000000001B36
      6500234075001E3C6A002441700025417300203E76001A315F00000000000000
      0000000000000000000000000000000000000000000000000000824B4B00FF88
      8900FF828300FF818200FF828300E07374004E1E1F00FCEFC700FFFFD500FFFF
      D300FFFFD500F7B5B600824B4B0000000000000000FFCCC4BFFFE4DAD5FFEDDE
      D3FFEDE3DBFFECE3DBFFE8DAD2FFEDE0D8FFEFE9E5FFF0EFEDFFDADBDBFFD0D0
      D0FFE7E7E7FFEBEBEBFF000000FF000000FF000000000000000000000000FDFD
      FDFFAAABACFFB2A29AFFC8B9B3FFC6C6C5FFDBDADAFFBEBCBCFFC9C8C8FFD1D1
      D1FFC6BEB9FFBEBCBBFFA5A5A5FF000000000000000000000000000000000000
      0000223D6B001E3C6A0024417000223D6B001A315F0000000000000000000000
      0000000000000000000000000000000000000000000000000000824B4B00824B
      4B00E2757600FE818200FF868700E57677004E1E1F00FAEBC500FCFBD100FCFB
      CF00FCFBD100F7B5B600824B4B0000000000000000FFBDBEBFFFEDE7E2FFF2E9
      E3FFEAE1DCFFEBDFD6FFEFE9E6FFEEE7E2FFF7F9F9FFF9FAFAFFCFCECEFFCDCD
      CDFFCECECEFFE2E2E2FF000000FF000000FF000000000000000000000000FEFE
      FEFFDDDFDFFF928F8DFFBDBCBDFFC0C0C0FFC4C4C4FFD9D9D9FFD5D5D5FFD7D7
      D7FFB1ADABFFD1D0D1FFC9C9CAFF000000000000000000000000000000000000
      00000000000025407400203E76001A315F000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000824B4B009C565700CB6C6D00CF6E6E004E1E1F00824B4B00824B4B00824B
      4B00824B4B00824B4B00824B4B0000000000000000FFB7B7B7FFF3F2F2FFFAF9
      F8FFF5F5F5FFF6F3F2FFF9FAFBFFF9F9F9FFFCFCFCFFE9E9E9FFCFCFCFFFF4F4
      F4FFFAFAFAFFFEFEFEFF000000FF000000FF0000000000000000000000000000
      0000FDFDFCFFF1F0EFFFD3D4D4FFA4A4A4FFC0C0C0FFD5D5D5FFD8D8D8FFE1E0
      E1FFF3F3F4FFF4F3F2FF00000000000000000000000000000000000000000000
      000000000000000000001A315F00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000824B4B00824B4B004E1E1F0000000000000000000000
      000000000000000000000000000000000000000000FFC5C5C5FFF4F4F3FFFEFC
      FAFFFCFDFDFFFCFDFDFFFBFBFCFFFDFDFEFFF6F6F6FFE5E5E5FFFBFBFBFFFEFE
      FEFF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000FFFFFFFFF1F1F1FFF2F2F2FFFEFEFEFF0000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000200000000100010000000000000100000000000000000000
      000000000000000000000000FFFFFF008FFFFFF1FF3F0000807FFFE0FC1F0000
      8007BFE0F80F000080010080F807000080010001E003000080010003C0010000
      80010007C00100008001000700030000800100030007000080010003000F0000
      8001000100030000800100018001000080010001800000008001000FC0C00000
      8001000FE9E00000C1FF03FFFFF10000FFFFFE7FFFFF8803F01FF07FFFFF0000
      E003C00180030000C003C001800300008003C001800300008003C00180030001
      8003C001800300018001C001000380018003C001000380018007C00100038001
      800FC0010003C001C01FC0010003C001E03FC0018003E001F07FC0018003E001
      F8FFF0018003F003FDFFFC7F800FFE1F00000000000000000000000000000000
      000000000000}
  end
  inherited Acao: TActionList
    Left = 600
    Top = 296
  end
  inherited cdsLookUp: TClientDataSet
    Left = 632
    Top = 328
  end
  inherited dspLookUp: TDataSetProvider
    Left = 600
    Top = 328
  end
  inherited cdsPadrao: TClientDataSet
    AfterInsert = cdsPadraoAfterInsert
    Left = 600
    Top = 360
    object cdsPadraoidCadEmpresa: TIntegerField
      FieldName = 'idCadEmpresa'
    end
    object cdsPadraoidMaquina: TIntegerField
      FieldName = 'idMaquina'
    end
    object cdsPadraoidSafra: TIntegerField
      FieldName = 'idSafra'
    end
    object cdsPadraoidProduto: TIntegerField
      FieldName = 'idProduto'
    end
    object cdsPadraoidFornecedor: TIntegerField
      FieldName = 'idFornecedor'
    end
    object cdsPadraoidGerencial: TIntegerField
      FieldName = 'idGerencial'
    end
    object cdsPadraoidAbastecimentoIni: TIntegerField
      FieldName = 'idAbastecimentoIni'
    end
    object cdsPadraoidAbastecimentoFim: TIntegerField
      FieldName = 'idAbastecimentoFim'
    end
    object cdsPadraodtAbastecimentoIni: TDateField
      FieldName = 'dtAbastecimentoIni'
    end
    object cdsPadraodtAbastecimentoFim: TDateField
      FieldName = 'dtAbastecimentoFim'
    end
    object cdsPadraoconsolidaemp: TStringField
      FieldName = 'consolidaemp'
      Size = 1
    end
    object cdsPadraoconsolidafilial: TStringField
      FieldName = 'consolidafilial'
      Size = 1
    end
    object cdsPadraoexterno: TStringField
      FieldName = 'externo'
      Size = 1
    end
    object cdsPadraointerno: TStringField
      FieldName = 'interno'
      Size = 1
    end
    object cdsPadraomaquina: TStringField
      FieldName = 'maquina'
      Size = 1
    end
    object cdsPadraoveiculo: TStringField
      FieldName = 'veiculo'
      Size = 1
    end
  end
  inherited dsPadrao: TDataSource
    Left = 632
    Top = 360
  end
  inherited sdsGrid: TSQLDataSet
    Left = 536
    Top = 392
  end
  inherited dspGrid: TDataSetProvider
    Left = 568
    Top = 392
  end
  inherited cdsGrid: TClientDataSet
    Left = 600
    Top = 392
  end
  inherited dsGrid: TDataSource
    DataSet = cdsRelatorio
    Left = 632
    Top = 392
  end
  inherited StyleRepository: TcxStyleRepository
    PixelsPerInch = 96
  end
  inherited PopupMenu: TPopupMenu
    Left = 368
    Top = 280
  end
  inherited AbrePasta: TcxShellBrowserDialog
    Left = 480
    Top = 320
  end
  inherited AbreArq: TOpenTextFileDialog
    Left = 544
    Top = 320
  end
  object FrxRel: TfrxReport
    Version = '5.2.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.MDIChild = True
    PreviewOptions.Modal = False
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.Author = 'Gesys Sistemas de Informa'#231#227'o'
    ReportOptions.CreateDate = 39263.419322395800000000
    ReportOptions.LastChange = 41933.386265960650000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      '        '
      'end.')
    Left = 488
    Top = 57
    Datasets = <
      item
        DataSet = frxDataset
        DataSetName = 'frxDataset'
      end
      item
        DataSet = dmPadrao.frxEmpresaContabil
        DataSetName = 'frxEmpresaContabil'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Orientation = poLandscape
      PaperWidth = 279.400000000000000000
      PaperHeight = 215.900000000000000000
      PaperSize = 1
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 12.094488190000000000
        Top = 325.039580000000000000
        Width = 1056.000682000000000000
        OnAfterPrint = 'MasterData1OnAfterPrint'
        OnBeforePrint = 'MasterData1OnBeforePrint'
        DataSet = frxDataset
        DataSetName = 'frxDataset'
        RowCount = 0
        object Memo2: TfrxMemoView
          Left = 34.015770000000000000
          Width = 30.236240000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DataField = 'idEmpresa'
          DataSet = frxDataset
          DataSetName = 'frxDataset'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDataset."idEmpresa"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo3: TfrxMemoView
          Left = 68.031540000000000000
          Width = 26.456710000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DataField = 'idCadEmpresa'
          DataSet = frxDataset
          DataSetName = 'frxDataset'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDataset."idCadEmpresa"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo4: TfrxMemoView
          Left = 98.267780000000000000
          Width = 34.015770000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DataField = 'idAbastecimento'
          DataSet = frxDataset
          DataSetName = 'frxDataset'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDataset."idAbastecimento"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo6: TfrxMemoView
          Left = 323.039580000000000000
          Width = 162.519790000000000000
          Height = 11.338582680000000000
          DataField = 'descProduto'
          DataSet = frxDataset
          DataSetName = 'frxDataset'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDataset."descProduto"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo12: TfrxMemoView
          Left = 487.559370000000000000
          Width = 52.913420000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DataSet = frxDataset
          DataSetName = 'frxDataset'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDataset."dtAbastecimento"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo18: TfrxMemoView
          Left = 544.252320000000000000
          Width = 41.574830000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DataSet = frxDataset
          DataSetName = 'frxDataset'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.1n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDataset."qtAbastecimento"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo20: TfrxMemoView
          Left = 937.323440000000000000
          Width = 34.015770000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DataSet = frxDataset
          DataSetName = 'frxDataset'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDataset."vlAbastecimento"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo22: TfrxMemoView
          Left = 975.118740000000000000
          Width = 64.252010000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DataSet = frxDataset
          DataSetName = 'frxDataset'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDataset."vlTotal"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo32: TfrxMemoView
          Left = 139.842610000000000000
          Width = 181.417440000000000000
          Height = 11.338582680000000000
          DataField = 'descCadFornecedor'
          DataSet = frxDataset
          DataSetName = 'frxDataset'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDataset."descCadFornecedor"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo37: TfrxMemoView
          Left = 590.213360000000000000
          Top = 0.291350790000000000
          Width = 45.354360000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DataField = 'hr_kmAnterior'
          DataSet = frxDataset
          DataSetName = 'frxDataset'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.1n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDataset."hr_kmAnterior"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo42: TfrxMemoView
          Left = 646.906310000000000000
          Top = 0.070880790000000000
          Width = 45.354360000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DataField = 'hr_kmRodado'
          DataSet = frxDataset
          DataSetName = 'frxDataset'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.1n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDataset."hr_kmRodado"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo46: TfrxMemoView
          Left = 703.599260000000000000
          Top = 0.291350790000000000
          Width = 45.354360000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DataField = 'hr_kmAtual'
          DataSet = frxDataset
          DataSetName = 'frxDataset'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.1n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDataset."hr_kmAtual"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo51: TfrxMemoView
          Left = 760.292210000000000000
          Top = 0.291350790000000000
          Width = 45.354360000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DataField = 'hr_kmMedia'
          DataSet = frxDataset
          DataSetName = 'frxDataset'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.3n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDataset."hr_kmMedia"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo53: TfrxMemoView
          Left = 866.119050000000000000
          Top = 0.291350790000000000
          Width = 45.354360000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DataField = 'tanqueCheio'
          DataSet = frxDataset
          DataSetName = 'frxDataset'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.1n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDataset."tanqueCheio"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo55: TfrxMemoView
          Left = 808.819420000000000000
          Width = 22.677180000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DataSet = frxDataset
          DataSetName = 'frxDataset'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.1n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '/ [frxDataset."tpMaquina"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Height = 186.126082500000000000
        Top = 18.897650000000000000
        Width = 1056.000682000000000000
        object Line3: TfrxLineView
          Left = 26.456710000000000000
          Top = 113.488250000000000000
          Width = 1016.693570000000000000
          Color = clBlack
          Frame.Color = clGray
          Frame.ShadowColor = clGray
          Diagonal = True
        end
        object Picture1: TfrxPictureView
          Left = 22.677180000000000000
          Top = 11.338590000000000000
          Width = 155.000000000000000000
          Height = 62.000000000000000000
          DataField = 'imgLogo'
          DataSet = dmPadrao.frxEmpresaContabil
          DataSetName = 'frxEmpresaContabil'
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object Memo7: TfrxMemoView
          Left = 861.622450000000000000
          Top = 11.252010000000000000
          Width = 177.637910000000000000
          Height = 94.488250000000000000
          DataSet = FrmPadraoRel.frxDataset
          DataSetName = 'frxDataset'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -24
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'Abastecimento')
          ParentFont = False
          VAlign = vaCenter
        end
        object Line2: TfrxLineView
          Left = 852.622450000000000000
          Top = 8.338590000000000000
          Height = 105.826840000000000000
          Color = clBlack
          Frame.Color = clGray
          Frame.ShadowColor = clGray
          Frame.Typ = [ftLeft]
        end
        object lblEmpresa: TfrxMemoView
          Left = 290.196970000000000000
          Top = 11.338590000000000000
          Width = 419.527830000000000000
          Height = 18.897637800000000000
          DataSet = FrmPadraoRel.frxDataset
          DataSetName = 'frxDataset'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxEmpresaContabil."descEmpresa"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo30: TfrxMemoView
          Left = 290.315090000000000000
          Top = 33.133943700000000000
          Width = 419.527830000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          DataSet = FrmPadraoRel.frxDataset
          DataSetName = 'frxDataset'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            
              'CNPJ/CPF: [(<frxEmpresaContabil."idCnpjCpf">)]  IE: [(<frxEmpres' +
              'aContabil."idInscEstadual">)]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo31: TfrxMemoView
          Left = 290.315090000000000000
          Top = 52.811123700000000000
          Width = 419.527830000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          DataSet = FrmPadraoRel.frxDataset
          DataSetName = 'frxDataset'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            
              '[(<frxEmpresaContabil."endereco">)] - [(<frxEmpresaContabil."com' +
              'plemento">)]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo47: TfrxMemoView
          Left = 290.315090000000000000
          Top = 73.370183700000000000
          Width = 419.527830000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          DataSet = FrmPadraoRel.frxDataset
          DataSetName = 'frxDataset'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            
              'CEP: [(<frxEmpresaContabil."cep">)]  -  [(<frxEmpresaContabil."d' +
              'escCidade">)]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo48: TfrxMemoView
          Left = 290.315090000000000000
          Top = 93.047363700000000000
          Width = 419.527830000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          DataSet = FrmPadraoRel.frxDataset
          DataSetName = 'frxDataset'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'Fone: [(<frxEmpresaContabil."fones">)]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo33: TfrxMemoView
          Left = 26.456710000000000000
          Top = 151.181102362205000000
          Width = 79.370130000000000000
          Height = 14.362204720000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'PRODUTO :')
          ParentFont = False
        end
        object MPRODUTO: TfrxMemoView
          Left = 109.606282130000000000
          Top = 151.181102362205000000
          Width = 275.905690000000000000
          Height = 14.362204720000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HideZeros = True
          ParentFont = False
        end
        object Memo40: TfrxMemoView
          Left = 434.645945120000000000
          Top = 117.165339690000000000
          Width = 52.913420000000000000
          Height = 14.362204720000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'SAFRA :')
          ParentFont = False
        end
        object MSAFRA: TfrxMemoView
          Left = 491.338812130000000000
          Top = 117.165339690000000000
          Width = 185.196970000000000000
          Height = 14.362204720000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HideZeros = True
          ParentFont = False
        end
        object Memo34: TfrxMemoView
          Left = 26.456710000000000000
          Top = 117.165339690000000000
          Width = 79.370130000000000000
          Height = 14.362204720000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'M'#193'QUINA :')
          ParentFont = False
        end
        object MMAQUINA: TfrxMemoView
          Left = 109.606287010000000000
          Top = 117.165339690000000000
          Width = 249.448980000000000000
          Height = 14.362204720000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HideZeros = True
          ParentFont = False
        end
        object Memo36: TfrxMemoView
          Left = 895.748610000000000000
          Top = 117.165339690000000000
          Width = 120.944960000000000000
          Height = 14.362204720000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'CONSOLIDA FILIAL :')
          ParentFont = False
        end
        object MCONSOLIDA: TfrxMemoView
          Left = 1020.473100000000000000
          Top = 117.165339690000000000
          Width = 18.897650000000000000
          Height = 14.362204720000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          HideZeros = True
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo35: TfrxMemoView
          Left = 26.456710000000000000
          Top = 134.173228346457000000
          Width = 79.370130000000000000
          Height = 14.362204720000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'GERENCIAL :')
          ParentFont = False
        end
        object MGERENCIAL: TfrxMemoView
          Left = 109.606287010000000000
          Top = 134.173228346457000000
          Width = 275.905690000000000000
          Height = 14.362204720000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HideZeros = True
          ParentFont = False
        end
        object Memo38: TfrxMemoView
          Left = 389.291590000000000000
          Top = 134.173228346457000000
          Width = 98.267780000000000000
          Height = 14.362204720000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'FORNECEDOR :')
          ParentFont = False
        end
        object MFORNECEDOR: TfrxMemoView
          Left = 491.338817010000000000
          Top = 134.173228346457000000
          Width = 268.346630000000000000
          Height = 14.362204720000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HideZeros = True
          ParentFont = False
        end
        object Memo41: TfrxMemoView
          Left = 808.819420000000000000
          Top = 134.173228346457000000
          Width = 79.370130000000000000
          Height = 14.362204720000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'ABAST. DE :')
          ParentFont = False
        end
        object MABA_INI: TfrxMemoView
          Left = 891.968997010000000000
          Top = 134.173228346457000000
          Width = 52.913420000000000000
          Height = 14.362204720000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HideZeros = True
          ParentFont = False
        end
        object Memo43: TfrxMemoView
          Left = 948.662030000000000000
          Top = 134.173228346457000000
          Width = 34.015770000000000000
          Height = 14.362204720000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'AT'#201' :')
          ParentFont = False
        end
        object MABA_FIM: TfrxMemoView
          Left = 986.457247010000000000
          Top = 134.173228346457000000
          Width = 52.913420000000000000
          Height = 14.362204720000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HideZeros = True
          ParentFont = False
        end
        object Memo45: TfrxMemoView
          Left = 408.189240000000000000
          Top = 151.181102362205000000
          Width = 79.370130000000000000
          Height = 14.362204720000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'DATA DE :')
          ParentFont = False
        end
        object MDT_INI: TfrxMemoView
          Left = 491.338817010000000000
          Top = 151.181102362205000000
          Width = 60.472440940000000000
          Height = 14.362204720000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HideZeros = True
          ParentFont = False
        end
        object Memo49: TfrxMemoView
          Left = 559.370440000000000000
          Top = 151.181102362205000000
          Width = 34.015770000000000000
          Height = 14.362204720000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'AT'#201' :')
          ParentFont = False
        end
        object MDT_FIM: TfrxMemoView
          Left = 597.165657010000000000
          Top = 151.181102362205000000
          Width = 60.472440940000000000
          Height = 14.362204720000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HideZeros = True
          ParentFont = False
        end
        object Line5: TfrxLineView
          Left = 26.456710000000000000
          Top = 173.858380000000000000
          Width = 1016.693570000000000000
          Color = clBlack
          Frame.Color = clGray
          Frame.ShadowColor = clGray
          Diagonal = True
        end
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        Height = 37.795300000000000000
        Top = 264.567100000000000000
        Width = 1056.000682000000000000
        Condition = 'frxDataset."idMaquina"'
        object Shape4: TfrxShapeView
          Left = 34.015770000000000000
          Top = 18.425262760000000000
          Width = 1016.693096460000000000
          Height = 15.118120000000000000
          Fill.BackColor = 15790320
          Frame.Color = 15790320
        end
        object Memo1: TfrxMemoView
          Left = 488.716450000000000000
          Top = 19.606370000000000000
          Width = 26.456710000000000000
          Height = 11.338590000000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Data')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo9: TfrxMemoView
          Left = 543.645640000000000000
          Top = 19.606299210000000000
          Width = 41.574830000000000000
          Height = 11.338590000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Qtde.')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo10: TfrxMemoView
          Left = 942.031850000000000000
          Top = 19.606370000000000000
          Width = 26.456710000000000000
          Height = 11.338590000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Unit.')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo14: TfrxMemoView
          Left = 991.945270000000000000
          Top = 19.606370000000000000
          Width = 49.133890000000000000
          Height = 11.338590000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Total')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo25: TfrxMemoView
          Left = 85.692950000000000000
          Top = 3.779530000000000000
          Width = 41.574830000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DataSet = FrmPadraoRel.frxDataset
          DataSetName = 'frxDataset'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[(<frxDataset."idMaquina">)]-[(<frxDataset."descMaquina">)]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo26: TfrxMemoView
          Left = 35.220470000000000000
          Top = 3.779530000000000000
          Width = 45.354360000000000000
          Height = 11.338590000000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Maquina')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo8: TfrxMemoView
          Left = 37.795300000000000000
          Top = 18.897650000000000000
          Width = 26.456710000000000000
          Height = 11.338590000000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Emp.')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo16: TfrxMemoView
          Left = 68.031540000000000000
          Top = 18.897650000000000000
          Width = 26.456710000000000000
          Height = 11.338590000000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Filial')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo19: TfrxMemoView
          Left = 98.606370000000000000
          Top = 18.897650000000000000
          Width = 37.795300000000000000
          Height = 11.338590000000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Abast.')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo21: TfrxMemoView
          Left = 137.283550000000000000
          Top = 18.897650000000000000
          Width = 56.692950000000000000
          Height = 11.338590000000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Fornecedor')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo23: TfrxMemoView
          Left = 321.008040000000000000
          Top = 18.897650000000000000
          Width = 41.574830000000000000
          Height = 11.338590000000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Produto')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo39: TfrxMemoView
          Left = 589.606680000000000000
          Top = 19.897650000000000000
          Width = 52.913420000000000000
          Height = 11.338590000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDataset."tpMaquina"] Anterior')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo44: TfrxMemoView
          Left = 646.299630000000000000
          Top = 19.677180000000000000
          Width = 52.913420000000000000
          Height = 11.338590000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDataset."tpMaquina"] Rodado')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo50: TfrxMemoView
          Left = 702.992580000000000000
          Top = 19.897650000000000000
          Width = 52.913420000000000000
          Height = 11.338590000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDataset."tpMaquina"] Atual')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo52: TfrxMemoView
          Left = 759.685530000000000000
          Top = 19.897650000000000000
          Width = 52.913420000000000000
          Height = 11.338590000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'M'#233'dia/[frxDataset."tpMaquina"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo54: TfrxMemoView
          Left = 854.173780000000000000
          Top = 19.897650000000000000
          Width = 71.811070000000000000
          Height = 11.338590000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Tanque Cheio?')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Height = 47.913420000000000000
        Top = 483.779840000000000000
        Width = 1056.000682000000000000
        object Memo13: TfrxMemoView
          Left = 353.953000000000000000
          Top = 7.181102360000010000
          Width = 117.165430000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Nilus Report ')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo15: TfrxMemoView
          Left = 26.456692910000000000
          Top = 7.181102362204509000
          Width = 275.905690000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Nilus Solu'#231#245'es para o Agroneg'#243'cio Ltda.')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo17: TfrxMemoView
          Left = 893.583180000000000000
          Top = 7.181102360000010000
          Width = 132.283550000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[(<Page>)]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Line1: TfrxLineView
          Left = 26.456692910000000000
          Top = 3.401360000000010000
          Width = 1020.472626460000000000
          Color = clBlack
          Frame.Typ = [ftTop]
          Frame.Width = 0.100000000000000000
        end
        object Memo67: TfrxMemoView
          Left = 630.732220000000000000
          Top = 7.181102360000010000
          Width = 117.165430000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[(<Date>)] - [(<Time>)]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
      end
      object GroupFooter1: TfrxGroupFooter
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 359.055350000000000000
        Width = 1056.000682000000000000
        object Memo11: TfrxMemoView
          Left = 975.118110240000000000
          Width = 64.251968500000000000
          Height = 15.118120000000000000
          AutoWidth = True
          DataSet = FrmPadraoRel.frxDataset
          DataSetName = 'frxDataset'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDataset."vlTotal">,MasterData1)]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo24: TfrxMemoView
          Left = 395.866110000000000000
          Width = 60.472480000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Totais:')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Line4: TfrxLineView
          Left = 34.015770000000000000
          Top = 19.236240000000000000
          Width = 1016.693570000000000000
          Color = clBlack
          Frame.Color = clGray
          Frame.ShadowColor = clGray
          Diagonal = True
        end
        object Memo27: TfrxMemoView
          Left = 514.015748030000000000
          Width = 71.811023620000000000
          Height = 15.118120000000000000
          AutoWidth = True
          DataSet = FrmPadraoRel.frxDataset
          DataSetName = 'frxDataset'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.1n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDataset."qtAbastecimento">,MasterData1)]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
      end
      object ReportSummary1: TfrxReportSummary
        FillType = ftBrush
        Height = 18.897650000000000000
        Top = 442.205010000000000000
        Width = 1056.000682000000000000
        object Memo28: TfrxMemoView
          Left = 975.118110240000000000
          Width = 64.251968500000000000
          Height = 15.118120000000000000
          AutoWidth = True
          DataSet = FrmPadraoRel.frxDataset
          DataSetName = 'frxDataset'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDataset."vlTotal">,MasterData1)]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo29: TfrxMemoView
          Left = 393.866420000000000000
          Width = 64.252010000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Total Geral:')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo5: TfrxMemoView
          Left = 514.016080000000000000
          Width = 71.811070000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          DataSet = FrmPadraoRel.frxDataset
          DataSetName = 'frxDataset'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.1n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDataset."qtAbastecimento">,MasterData1)]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
      end
    end
  end
  object frxReport1: TfrxReport
    Version = '5.2.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.MDIChild = True
    PreviewOptions.Modal = False
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.Author = 'Gesys Sistemas de Informa'#231#227'o'
    ReportOptions.CreateDate = 39263.419322395800000000
    ReportOptions.LastChange = 41492.563481747680000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 176
    Top = 312
    Datasets = <
      item
        DataSet = frxDataset
        DataSetName = 'frxDataset'
      end
      item
        DataSet = dmPadrao.frxEmpresaContabil
        DataSetName = 'frxEmpresaContabil'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      object DetailDataConta: TfrxDetailData
        FillType = ftBrush
        Height = 15.118120000000000000
        Top = 362.834880000000000000
        Width = 793.701300000000000000
        DataSet = frxDataset
        DataSetName = 'frxDataset'
        RowCount = 0
        object Memo2: TfrxMemoView
          Left = 30.456692910000000000
          Top = 2.000000000000000000
          Width = 33.864588800000000000
          Height = 11.338582680000000000
          DataSet = frxDataset
          DataSetName = 'frxDataset'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[(<frxDataset."idConta">)]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo16: TfrxMemoView
          Left = 519.856671340000000000
          Top = 1.889763780000010000
          Width = 75.061465800000000000
          Height = 11.338582680000000000
          DataSet = frxDataset
          DataSetName = 'frxDataset'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo18: TfrxMemoView
          Left = 684.226802800000000000
          Top = 1.889763780000010000
          Width = 76.497687200000000000
          Height = 11.338582680000000000
          DataSet = frxDataset
          DataSetName = 'frxDataset'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[(<frxDataset."vlSaldoAtual">)]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo24: TfrxMemoView
          Left = 440.055350000000000000
          Top = 1.889763780000010000
          Width = 62.815788600000000000
          Height = 11.338582680000000000
          DataSet = frxDataset
          DataSetName = 'frxDataset'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[(<frxDataset."vlSaldoConciliado">)]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo31: TfrxMemoView
          Left = 91.149660000000000000
          Top = 1.889763780000010000
          Width = 168.103852530000000000
          Height = 11.338590000000000000
          AutoWidth = True
          DataSet = frxDataset
          DataSetName = 'frxDataset'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[(<frxDataset."descConta">)]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo5: TfrxMemoView
          Left = 618.842920000000000000
          Top = 1.992113780000011000
          Width = 52.384285800000000000
          Height = 11.338582680000000000
          DataSet = frxDataset
          DataSetName = 'frxDataset'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[(<frxDataset."vlLimite">)]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
      end
      object MasterDataConta: TfrxMasterData
        FillType = ftBrush
        Height = 15.118120000000000000
        Top = 325.039580000000000000
        Visible = False
        Width = 793.701300000000000000
        DataSet = frxDataset
        DataSetName = 'frxDataset'
        RowCount = 0
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Height = 192.741734700000000000
        Top = 18.897650000000000000
        Width = 793.701300000000000000
        object Picture1: TfrxPictureView
          Left = 25.000000000000000000
          Top = 33.188930000000000000
          Width = 155.000000000000000000
          Height = 62.000000000000000000
          DataField = 'imgLogo'
          DataSet = dmPadrao.frxEmpresaContabil
          DataSetName = 'frxEmpresaContabil'
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object Memo7: TfrxMemoView
          Left = 627.945270000000000000
          Top = 33.102350000000000000
          Width = 132.283550000000000000
          Height = 117.165430000000000000
          DataSet = FrmPadraoRel.frxDataset
          DataSetName = 'frxDataset'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -29
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'Saldo'
            'Banc'#225'rio')
          ParentFont = False
          VAlign = vaCenter
        end
        object Line5: TfrxLineView
          Left = 625.945270000000000000
          Top = 33.188930000000000000
          Height = 120.944960000000000000
          Color = clBlack
          Frame.Color = clGray
          Frame.ShadowColor = clGray
          Frame.Typ = [ftLeft]
        end
        object Line6: TfrxLineView
          Left = 27.279530000000000000
          Top = 156.102350000000000000
          Width = 733.228820000000000000
          Color = clBlack
          Frame.Color = clGray
          Frame.ShadowColor = clGray
          Diagonal = True
        end
        object Shape7: TfrxShapeView
          Left = 26.787401570000000000
          Top = 158.023810000000000000
          Width = 731.787401570000000000
          Height = 28.988995100000000000
          Frame.Width = 0.100000000000000000
        end
        object Memo58: TfrxMemoView
          Left = 134.614241570000000000
          Top = 165.363967700000000000
          Width = 34.318132400000000000
          Height = 15.118110240000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Ag.:')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object LookAgencia: TfrxMemoView
          Left = 172.792211100000000000
          Top = 164.872628800000000000
          Width = 55.488250000000000000
          Height = 15.118110240000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo59: TfrxMemoView
          Left = 229.625352900000000000
          Top = 164.872628800000000000
          Width = 34.015770000000000000
          Height = 15.118110240000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'Conta:')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object LookContaCorrente: TfrxMemoView
          Left = 265.935615800000000000
          Top = 164.872628800000000000
          Width = 94.488250000000000000
          Height = 15.118110240000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo62: TfrxMemoView
          Left = 31.535250000000000000
          Top = 165.165351890000000000
          Width = 78.166966700000000000
          Height = 15.118110240000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Integra Limite?')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object DBCBlimite: TfrxMemoView
          Left = 114.535250000000000000
          Top = 165.165351890000000000
          Width = 15.387436700000000000
          Height = 15.118110240000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo37: TfrxMemoView
          Left = 362.826840000000000000
          Top = 165.204700000000000000
          Width = 34.015770000000000000
          Height = 15.118110240000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'Desc.:')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object LookdescConta: TfrxMemoView
          Left = 399.137102900000000000
          Top = 165.204700000000000000
          Width = 323.488250000000000000
          Height = 15.118110240000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object lblEmpresa: TfrxMemoView
          Left = 188.976500000000000000
          Top = 34.015770000000010000
          Width = 419.527830000000000000
          Height = 18.897637800000000000
          DataSet = FrmPadraoRel.frxDataset
          DataSetName = 'frxDataset'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxEmpresaContabil."descEmpresa"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo1: TfrxMemoView
          Left = 189.094620000000000000
          Top = 55.811123699999990000
          Width = 419.527830000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          DataSet = FrmPadraoRel.frxDataset
          DataSetName = 'frxDataset'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            
              'CNPJ/CPF: [(<frxEmpresaContabil."idCnpjCpf">)]  IE: [(<frxEmpres' +
              'aContabil."idInscEstadual">)]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo3: TfrxMemoView
          Left = 189.094620000000000000
          Top = 75.488303700000000000
          Width = 419.527830000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          DataSet = FrmPadraoRel.frxDataset
          DataSetName = 'frxDataset'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            
              '[(<frxEmpresaContabil."endereco">)] - [(<frxEmpresaContabil."com' +
              'plemento">)]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo47: TfrxMemoView
          Left = 189.094620000000000000
          Top = 96.047363700000000000
          Width = 419.527830000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          DataSet = FrmPadraoRel.frxDataset
          DataSetName = 'frxDataset'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            
              'CEP: [(<frxEmpresaContabil."cep">)]  -  [(<frxEmpresaContabil."d' +
              'escCidade">)]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo48: TfrxMemoView
          Left = 189.094620000000000000
          Top = 115.724543700000000000
          Width = 419.527830000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          DataSet = FrmPadraoRel.frxDataset
          DataSetName = 'frxDataset'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'Fone: [(<frxEmpresaContabil."fones">)]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
      end
      object HeaderConta: TfrxHeader
        FillType = ftBrush
        Height = 30.236240000000000000
        Top = 272.126160000000000000
        Width = 793.701300000000000000
        object Line2: TfrxLineView
          Left = 26.456692910000000000
          Top = 2.913419999999974000
          Width = 733.228346460000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Shape1: TfrxShapeView
          Left = 26.456692910000000000
          Top = 4.590599999999995000
          Width = 733.228346460000000000
          Height = 18.897650000000000000
          Fill.BackColor = 15790320
          Frame.Color = 15790320
        end
        object Memo4: TfrxMemoView
          Left = 26.456692910000000000
          Top = 4.370130000000017000
          Width = 30.236240000000000000
          Height = 18.897637800000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Conta')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo6: TfrxMemoView
          Left = 696.141873860000000000
          Top = 4.590599999999995000
          Width = 55.858380000000000000
          Height = 18.897637800000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Saldo')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo10: TfrxMemoView
          Left = 526.559086850000000000
          Top = 4.590599999999995000
          Width = 71.811070000000000000
          Height = 18.897637800000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'A Compensar')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo32: TfrxMemoView
          Left = 91.000126929999990000
          Top = 4.913419999999974000
          Width = 219.212740000000000000
          Height = 18.897637800000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Descri'#231#227'o')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo12: TfrxMemoView
          Left = 627.104395510000000000
          Top = 4.692949999999996000
          Width = 34.015770000000000000
          Height = 18.897637800000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Limite')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo8: TfrxMemoView
          Left = 430.866420000000000000
          Top = 4.535433070000010000
          Width = 86.929190000000000000
          Height = 18.897637800000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Saldo Conciliado')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
      end
      object FooterLimite: TfrxFooter
        FillType = ftBrush
        Height = 19.275588110000000000
        Top = 400.630180000000000000
        Width = 793.701300000000000000
        object Shape3: TfrxShapeView
          Left = 26.456692913385800000
          Width = 733.228346460000000000
          Height = 18.897635350000000000
          Fill.BackColor = clMoneyGreen
          Frame.Color = 15790320
        end
        object MemSaldo: TfrxMemoView
          Left = 536.693260000000000000
          Width = 105.826840000000000000
          Height = 15.118110240000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Saldo Dispon'#237'vel')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemSaldoTotal: TfrxMemoView
          Left = 663.197280000000000000
          Width = 94.488250000000000000
          Height = 15.118110240000000000
          DataSet = frxDataset
          DataSetName = 'frxDataset'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'R$ [(<frxDataset."vlSaldoBanco">)]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object MemLimite: TfrxMemoView
          Left = 336.378170000000000000
          Width = 62.598330000000000000
          Height = 15.118110240000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Limite :')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemvlLimite: TfrxMemoView
          Left = 399.732530000000000000
          Width = 105.826840000000000000
          Height = 15.118110240000000000
          AutoWidth = True
          DataSet = frxDataset
          DataSetName = 'frxDataset'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDataset."vlLimite">,DetailDataConta)]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Height = 66.811070000000000000
        Top = 480.000310000000000000
        Width = 793.701300000000000000
        object Memo13: TfrxMemoView
          Left = 316.157700000000000000
          Top = 7.181102362204740000
          Width = 117.165430000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Nilus Report ')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo15: TfrxMemoView
          Left = 26.456692910000000000
          Top = 7.181102362204740000
          Width = 275.905690000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Nilus Solu'#231#245'es para o Agroneg'#243'cio Ltda.')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo17: TfrxMemoView
          Left = 618.583180000000000000
          Top = 7.181102362204740000
          Width = 132.283550000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[(<Page>)]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Line1: TfrxLineView
          Left = 26.456692910000000000
          Top = 3.401359999999898000
          Width = 733.228346460000000000
          Color = clBlack
          Frame.Typ = [ftTop]
          Frame.Width = 0.100000000000000000
        end
        object Memo38: TfrxMemoView
          Left = 454.000000000000000000
          Top = 7.181102359999898000
          Width = 117.165430000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[(<Date>)] - [(<Time>)]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
      end
    end
  end
  object frxDataset: TfrxDBDataset
    UserName = 'frxDataset'
    CloseDataSource = False
    FieldAliases.Strings = (
      'idEmpresa=idEmpresa'
      'idCadEmpresa=idCadEmpresa'
      'idAbastecimento=idAbastecimento'
      'idProdDeposito=idProdDeposito'
      'idProduto=idProduto'
      'idMaquina=idMaquina'
      'idTipoAtividade=idTipoAtividade'
      'dtAbastecimento=dtAbastecimento'
      'tpAbastecimento=tpAbastecimento'
      'tanqueCheio=tanqueCheio'
      'hr_kmAtual=hr_kmAtual'
      'qtAbastecimento=qtAbastecimento'
      'vlAbastecimento=vlAbastecimento'
      'vlTotal=vlTotal'
      'bomba=bomba'
      'descResponsavel=descResponsavel'
      'vlUltAbastecimento=vlUltAbastecimento'
      'qtEstoque=qtEstoque'
      'idSafra=idSafra'
      'idGerencial=idGerencial'
      'idResultado=idResultado'
      'idRateio=idRateio'
      'idFornecedor=idFornecedor'
      'descMaquina=descMaquina'
      'descProduto=descProduto'
      'descCadFornecedor=descCadFornecedor'
      'hr_kmAnterior=hr_kmAnterior'
      'hr_kmRodado=hr_kmRodado'
      'hr_kmMedia=hr_kmMedia'
      'tpMaquina=tpMaquina')
    OpenDataSource = False
    DataSet = cdsRelatorio
    BCDToCurrency = False
    Left = 208
    Top = 312
  end
  object cdsRelatorio: TClientDataSet
    Aggregates = <>
    CommandText = 
      'EXEC spRelAbastecimento 1, 1, 0, 0, 0, NULL, NULL, 0, '#39'N'#39', '#39'S'#39', ' +
      '0, 0, 0, 0'
    Params = <>
    ProviderName = 'dspRelatorio'
    Left = 176
    Top = 280
  end
  object dspRelatorio: TDataSetProvider
    DataSet = dmPadrao.sdsRelatorio
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 144
    Top = 280
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
    Left = 648
  end
end
