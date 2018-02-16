inherited FrmRelFluxoCaixaAnalitico: TFrmRelFluxoCaixaAnalitico
  Caption = 'Fluxo de Caixa Sint'#233'tico'
  ClientHeight = 695
  ClientWidth = 1366
  ExplicitWidth = 1382
  ExplicitHeight = 734
  PixelsPerInch = 96
  TextHeight = 13
  inherited Bevel3: TBevel
    Width = 1366
    ExplicitWidth = 720
  end
  inherited Bevel1: TBevel
    Top = 657
    Width = 1366
    ExplicitTop = 445
    ExplicitWidth = 720
  end
  inherited Bevel5: TBevel
    Width = 1366
    ExplicitWidth = 720
  end
  inherited PanBotoes: TCPanelGradient
    Top = 661
    Width = 1366
    ExplicitTop = 661
    ExplicitWidth = 1366
  end
  object CGroupBox1: TCGroupBox [9]
    Left = 8
    Top = 37
    Width = 465
    Height = 133
    Caption = 'Param'#234'tros'
    TabOrder = 5
    object CLabel3: TCLabel
      Left = 35
      Top = 88
      Width = 38
      Height = 13
      Alignment = taRightJustify
      Caption = 'Data de'
    end
    object CLabel4: TCLabel
      Left = 165
      Top = 88
      Width = 16
      Height = 13
      Alignment = taRightJustify
      Caption = 'at'#233
    end
    object CLabel29: TCLabel
      Left = 40
      Top = 110
      Width = 33
      Height = 13
      Alignment = taRightJustify
      Caption = 'Indice:'
    end
    object CLabel12: TCLabel
      Left = 20
      Top = 63
      Width = 53
      Height = 13
      Alignment = taRightJustify
      Caption = 'Segmentos'
    end
    object CLabel10: TCLabel
      Left = 12
      Top = 39
      Width = 61
      Height = 13
      Alignment = taRightJustify
      Caption = 'Grupos Emp.'
    end
    object LblCad: TCLabel
      Left = 5
      Top = 15
      Width = 68
      Height = 13
      Alignment = taRightJustify
      Caption = 'Clientes/Forn.'
    end
    object DBEdtInicial: TCDBEdit
      Left = 79
      Top = 85
      Width = 80
      Height = 19
      BevelKind = bkTile
      BorderStyle = bsNone
      DataField = 'dtInicial'
      DataSource = dsPadrao
      MaxLength = 10
      TabOrder = 3
      DecimalControl = True
      KeyMode = kmDate
    end
    object DBEdtFinal: TCDBEdit
      Left = 187
      Top = 85
      Width = 80
      Height = 19
      BevelKind = bkTile
      BorderStyle = bsNone
      DataField = 'dtFinal'
      DataSource = dsPadrao
      MaxLength = 10
      TabOrder = 4
      DecimalControl = True
      KeyMode = kmDate
    end
    object DBEidIndice: TCDBEdit
      Left = 79
      Top = 107
      Width = 55
      Height = 19
      BevelKind = bkTile
      BorderStyle = bsNone
      DataField = 'idIndice'
      DataSource = dsPadrao
      TabOrder = 5
      DecimalControl = True
      KeyMode = kmNormal
    end
    object LookIndice: TCLookUp
      Left = 140
      Top = 107
      Width = 248
      Height = 19
      Alignment = taLeftJustify
      BevelInner = bvSpace
      BevelOuter = bvLowered
      Color = 14149350
      ParentBackground = False
      TabOrder = 6
      Key.Strings = (
        'idIndice')
      LookUpKey.Strings = (
        'idIndice')
      ClientDataSet = cdsLookUp
      DataSource = dsPadrao
      ValidaCampoObrigatorio = False
      CampoObrigatorio = False
      LookUpTable = 'Indice'
      ReturnField = 'descIndice'
    end
    object DBEidSegmento: TcxPopupEdit
      Left = 79
      Top = 60
      Style.BorderColor = clBtnShadow
      Style.BorderStyle = ebsSingle
      Style.ButtonStyle = btsOffice11
      StyleFocused.BorderStyle = ebsSingle
      TabOrder = 2
      Width = 368
    end
    object DBEidGrupo: TcxPopupEdit
      Left = 79
      Top = 36
      Style.BorderColor = clBtnShadow
      Style.BorderStyle = ebsSingle
      Style.ButtonStyle = btsOffice11
      StyleFocused.BorderStyle = ebsSingle
      TabOrder = 1
      Width = 368
    end
    object DBEidFornecedores: TcxPopupEdit
      Left = 79
      Top = 12
      Style.BorderColor = clBtnShadow
      Style.BorderStyle = ebsSingle
      Style.ButtonStyle = btsOffice11
      StyleFocused.BorderStyle = ebsSingle
      TabOrder = 0
      Width = 368
    end
  end
  object CGroupBox2: TCGroupBox [10]
    Left = 8
    Top = 339
    Width = 465
    Height = 68
    Caption = 'Op'#231#245'es de Consolida'#231#227'o e Saldos'
    TabOrder = 6
    object CLabel1: TCLabel
      Left = 14
      Top = 43
      Width = 46
      Height = 13
      Alignment = taRightJustify
      Caption = 'Empresas'
    end
    object DBCKconsolidafilial: TCDBCheckBox
      Left = 320
      Top = 17
      Width = 127
      Height = 17
      Caption = 'Consolida Filiais?'
      DataField = 'consolidafilial'
      DataSource = dsPadrao
      TabOrder = 2
      ValueChecked = 'S'
      ValueUnchecked = 'N'
    end
    object DBCKconsolidaemp: TCDBCheckBox
      Left = 175
      Top = 17
      Width = 127
      Height = 17
      Caption = 'Consolida Empresas?'
      DataField = 'consolidaemp'
      DataSource = dsPadrao
      TabOrder = 1
      ValueChecked = 'S'
      ValueUnchecked = 'N'
    end
    object DBCKintegraSaldo: TCDBCheckBox
      Left = 14
      Top = 17
      Width = 155
      Height = 17
      Caption = 'Integra Saldos Anteriores?'
      DataField = 'integraSaldo'
      DataSource = dsPadrao
      TabOrder = 0
      ValueChecked = 'S'
      ValueUnchecked = 'N'
    end
    object DBEidEmpresas: TcxPopupEdit
      Left = 66
      Top = 40
      Style.BorderColor = clBtnShadow
      Style.BorderStyle = ebsSingle
      Style.ButtonStyle = btsOffice11
      StyleFocused.BorderStyle = ebsSingle
      TabOrder = 3
      Width = 368
    end
  end
  object CGroupBox3: TCGroupBox [11]
    Left = 8
    Top = 271
    Width = 465
    Height = 62
    Caption = 'Op'#231#245'es de Impress'#227'o'
    TabOrder = 7
    object DBCKmostraContas: TCDBCheckBox
      Left = 95
      Top = 17
      Width = 110
      Height = 17
      Caption = 'Contas Banc'#225'rias?'
      DataField = 'mostraContas'
      DataSource = dsPadrao
      TabOrder = 1
      ValueChecked = 'S'
      ValueUnchecked = 'N'
    end
    object DBCKmostraIndice: TCDBCheckBox
      Left = 14
      Top = 17
      Width = 64
      Height = 17
      Caption = #205'ndices?'
      DataField = 'mostraIndice'
      DataSource = dsPadrao
      TabOrder = 0
      ValueChecked = 'S'
      ValueUnchecked = 'N'
    end
    object DBCKmostraVencidos: TCDBCheckBox
      Left = 224
      Top = 17
      Width = 106
      Height = 17
      Caption = 'Contas Vencidas?'
      DataField = 'mostraVencidos'
      DataSource = dsPadrao
      TabOrder = 2
      ValueChecked = 'S'
      ValueUnchecked = 'N'
    end
    object DBCKmostraAdiantamento: TCDBCheckBox
      Left = 350
      Top = 17
      Width = 106
      Height = 17
      Caption = 'Adiantamentos?'
      DataField = 'mostraAdiantamento'
      DataSource = dsPadrao
      TabOrder = 3
      ValueChecked = 'S'
      ValueUnchecked = 'N'
    end
    object DBCKimpCabecalho: TCDBCheckBox
      Left = 14
      Top = 40
      Width = 121
      Height = 17
      Caption = 'Imprime Cabe'#231'alho?'
      DataField = 'impCabecalho'
      DataSource = dsPadrao
      TabOrder = 4
      ValueChecked = 'S'
      ValueUnchecked = 'N'
    end
  end
  object DBRGagrupar: TCDBRadioGroup [12]
    Left = 8
    Top = 222
    Width = 465
    Height = 43
    Caption = 'Op'#231#245'es de Agrupamento'
    Columns = 2
    DataField = 'agrupar'
    DataSource = dsPadrao
    Items.Strings = (
      'Fornecedor'
      'Grupo Empresarial')
    TabOrder = 8
    Values.Strings = (
      'F'
      'G'
      'E')
  end
  object panPopupFornecedores: TPanel [13]
    Left = 521
    Top = 37
    Width = 663
    Height = 223
    BevelOuter = bvNone
    Color = 14671839
    ParentBackground = False
    TabOrder = 9
    Visible = False
    DesignSize = (
      663
      223)
    object Shape8: TShape
      Left = 240
      Top = 182
      Width = 1
      Height = 28
      Anchors = [akLeft, akBottom]
      Pen.Color = clBtnShadow
      ExplicitTop = 212
    end
    object Label29: TLabel
      Left = 250
      Top = 186
      Width = 185
      Height = 25
      Anchors = [akLeft, akBottom]
      AutoSize = False
      Caption = '[ Shift + Enter ] marcar/desmarcar o fornecedor selecionado.'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      WordWrap = True
    end
    object Label30: TLabel
      Left = 15
      Top = 10
      Width = 156
      Height = 14
      AutoSize = False
      Caption = 'Campo preferencial para busca :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object GridFornecedores: TcxGrid
      Left = 12
      Top = 29
      Width = 638
      Height = 148
      Anchors = [akLeft, akTop, akRight, akBottom]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      LookAndFeel.Kind = lfOffice11
      object DBTableViewFornecedor: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        Navigator.Buttons.Delete.Enabled = False
        Navigator.Buttons.Delete.Visible = False
        DataController.DataSource = dsFornecedores
        DataController.KeyFieldNames = 'idFornecedor'
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.ImmediateEditor = False
        OptionsBehavior.IncSearch = True
        OptionsBehavior.IncSearchItem = cxGridDBNOME
        OptionsCustomize.ColumnGrouping = False
        OptionsData.CancelOnExit = False
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsSelection.HideSelection = True
        OptionsSelection.InvertSelect = False
        OptionsView.FocusRect = False
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        object cxGridDBColumn1: TcxGridDBColumn
          DataBinding.FieldName = 'SELECIONADO'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.FullFocusRect = True
          Properties.NullStyle = nssUnchecked
          Properties.ValueChecked = 'S'
          Properties.ValueUnchecked = 'N'
          MinWidth = 25
          Options.Editing = False
          Options.Filtering = False
          Options.FilteringMRUItemsList = False
          Options.Focusing = False
          Options.IncSearch = False
          Options.Grouping = False
          Options.HorzSizing = False
          Options.Moving = False
          Width = 25
          IsCaptionAssigned = True
        end
        object cxGridDBCODIGO: TcxGridDBColumn
          Caption = 'C'#243'digo'
          DataBinding.FieldName = 'idFornecedor'
          HeaderAlignmentHorz = taRightJustify
          Options.Filtering = False
          Width = 70
        end
        object cxGridDBNOME: TcxGridDBColumn
          Caption = ' Nome do Fornecedor'
          DataBinding.FieldName = 'descCadFornecedor'
          Options.Filtering = False
          Width = 323
        end
        object cxGridDBNOME_FANTASIA: TcxGridDBColumn
          Caption = ' Fantasia'
          DataBinding.FieldName = 'descAbreviada'
          Width = 218
        end
      end
      object cxGridLevel1: TcxGridLevel
        GridView = DBTableViewFornecedor
      end
    end
    object BtnAplicarFor: TCBitBtn
      Left = 7
      Top = 183
      Width = 71
      Height = 28
      Anchors = [akLeft, akBottom]
      Caption = '&Aplicar'
      Default = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333333333333333330000333333333333333333333333F33333333333
        00003333344333333333333333388F3333333333000033334224333333333333
        338338F3333333330000333422224333333333333833338F3333333300003342
        222224333333333383333338F3333333000034222A22224333333338F338F333
        8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
        33333338F83338F338F33333000033A33333A222433333338333338F338F3333
        0000333333333A222433333333333338F338F33300003333333333A222433333
        333333338F338F33000033333333333A222433333333333338F338F300003333
        33333333A222433333333333338F338F00003333333333333A22433333333333
        3338F38F000033333333333333A223333333333333338F830000333333333333
        333A333333333333333338330000333333333333333333333333333333333333
        0000}
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 4
    end
    object BtnCancelarFor: TCBitBtn
      Left = 84
      Top = 183
      Width = 76
      Height = 28
      Anchors = [akLeft, akBottom]
      Cancel = True
      Caption = 'Cancelar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333333333333333333333000033338833333333333333333F333333333333
        0000333911833333983333333388F333333F3333000033391118333911833333
        38F38F333F88F33300003339111183911118333338F338F3F8338F3300003333
        911118111118333338F3338F833338F3000033333911111111833333338F3338
        3333F8330000333333911111183333333338F333333F83330000333333311111
        8333333333338F3333383333000033333339111183333333333338F333833333
        00003333339111118333333333333833338F3333000033333911181118333333
        33338333338F333300003333911183911183333333383338F338F33300003333
        9118333911183333338F33838F338F33000033333913333391113333338FF833
        38F338F300003333333333333919333333388333338FFF830000333333333333
        3333333333333333333888330000333333333333333333333333333333333333
        0000}
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 5
    end
    object BtnLimparFor: TCBitBtn
      Left = 161
      Top = 183
      Width = 71
      Height = 28
      Anchors = [akLeft, akBottom]
      Caption = '&Limpar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Glyph.Data = {
        EE000000424DEE000000000000007600000028000000100000000F0000000100
        04000000000078000000130B0000130B00001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
        888888800000000000888880FFFFFFFFF0888880FFFFFFFFF0888880FFFFFFFF
        F0888880FFFFFFFFF0888880FFFFFFFFF0888880FFFFFFFFF0888880FFFFFFFF
        F0888880FFFFFFFFF0888880FFFFFF0000888880FFFFFF0F08888880FFFFFF00
        888888800000000888888888888888888888}
      ParentFont = False
      TabOrder = 6
    end
    object cbCodigo: TcxCheckBox
      Left = 174
      Top = 7
      TabStop = False
      Caption = 'C'#243'digo'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      StyleFocused.Color = 14671839
      TabOrder = 0
      Width = 66
    end
    object cbNome: TcxCheckBox
      Left = 240
      Top = 7
      TabStop = False
      Caption = 'Nome do fornecedor'
      ParentFont = False
      State = cbsChecked
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      StyleFocused.Color = 14671839
      TabOrder = 1
      Width = 121
    end
    object cbFantasia: TcxCheckBox
      Left = 370
      Top = 7
      TabStop = False
      Caption = 'Nome Fantasia'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      StyleFocused.Color = 14671839
      TabOrder = 2
      Width = 121
    end
  end
  object DBEvlAcumulado: TCDBEdit [14]
    Left = 479
    Top = 286
    Width = 80
    Height = 19
    BevelKind = bkTile
    BorderStyle = bsNone
    DataField = 'vlAcumulado'
    DataSource = dsPadrao
    MaxLength = 10
    TabOrder = 10
    Visible = False
    DecimalControl = True
    KeyMode = kmNormal
  end
  object DBRGtpFluxo: TCDBRadioGroup [15]
    Left = 8
    Top = 176
    Width = 465
    Height = 40
    Caption = 'Tipo de Fluxo'
    Columns = 3
    DataField = 'tpFluxo'
    DataSource = dsPadrao
    Items.Strings = (
      'Cr'#233'ditos'
      'D'#233'bitos'
      'Ambos')
    TabOrder = 11
    TabStop = True
    Values.Strings = (
      'C'
      'D'
      'A')
  end
  object panGrupos: TPanel [16]
    Left = 574
    Top = 230
    Width = 474
    Height = 223
    BevelOuter = bvNone
    Color = 14671839
    ParentBackground = False
    TabOrder = 12
    Visible = False
    DesignSize = (
      474
      223)
    object Shape1: TShape
      Left = 240
      Top = 182
      Width = 1
      Height = 28
      Anchors = [akLeft, akBottom]
      Pen.Color = clBtnShadow
      ExplicitTop = 212
    end
    object Label1: TLabel
      Left = 250
      Top = 186
      Width = 185
      Height = 25
      Anchors = [akLeft, akBottom]
      AutoSize = False
      Caption = '[ Shift + Enter ] marcar/desmarcar o fornecedor selecionado.'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      WordWrap = True
    end
    object Label5: TLabel
      Left = 15
      Top = 10
      Width = 156
      Height = 14
      AutoSize = False
      Caption = 'Campo preferencial para busca :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object GridGrupo: TcxGrid
      Left = 13
      Top = 29
      Width = 452
      Height = 148
      Anchors = [akLeft, akTop, akRight, akBottom]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      LookAndFeel.Kind = lfOffice11
      object DBTableViewGrupo: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        Navigator.Buttons.Delete.Enabled = False
        Navigator.Buttons.Delete.Visible = False
        DataController.DataSource = dsGrupoCad
        DataController.KeyFieldNames = 'idGrupoCad'
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.ImmediateEditor = False
        OptionsBehavior.IncSearch = True
        OptionsBehavior.IncSearchItem = cxGridDBNomeGrupo
        OptionsCustomize.ColumnGrouping = False
        OptionsData.CancelOnExit = False
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsSelection.HideSelection = True
        OptionsSelection.InvertSelect = False
        OptionsView.FocusRect = False
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        object cxGridDBColumn2: TcxGridDBColumn
          DataBinding.FieldName = 'SELECIONADO'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.FullFocusRect = True
          Properties.NullStyle = nssUnchecked
          Properties.ValueChecked = 'S'
          Properties.ValueUnchecked = 'N'
          MinWidth = 25
          Options.Editing = False
          Options.Filtering = False
          Options.FilteringMRUItemsList = False
          Options.Focusing = False
          Options.IncSearch = False
          Options.Grouping = False
          Options.HorzSizing = False
          Options.Moving = False
          Width = 25
          IsCaptionAssigned = True
        end
        object cxGridDBCodGrupo: TcxGridDBColumn
          Caption = 'C'#243'digo'
          DataBinding.FieldName = 'idGrupoCad'
          HeaderAlignmentHorz = taRightJustify
          Options.Filtering = False
          Width = 70
        end
        object cxGridDBNomeGrupo: TcxGridDBColumn
          Caption = 'Nome do Grupo'
          DataBinding.FieldName = 'descGrupoCad'
          Options.Filtering = False
          Width = 323
        end
      end
      object cxGridLevel2: TcxGridLevel
        GridView = DBTableViewGrupo
      end
    end
    object BtnAplicarGrupo: TCBitBtn
      Left = 4
      Top = 183
      Width = 71
      Height = 28
      Anchors = [akLeft, akBottom]
      Caption = '&Aplicar'
      Default = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333333333333333330000333333333333333333333333F33333333333
        00003333344333333333333333388F3333333333000033334224333333333333
        338338F3333333330000333422224333333333333833338F3333333300003342
        222224333333333383333338F3333333000034222A22224333333338F338F333
        8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
        33333338F83338F338F33333000033A33333A222433333338333338F338F3333
        0000333333333A222433333333333338F338F33300003333333333A222433333
        333333338F338F33000033333333333A222433333333333338F338F300003333
        33333333A222433333333333338F338F00003333333333333A22433333333333
        3338F38F000033333333333333A223333333333333338F830000333333333333
        333A333333333333333338330000333333333333333333333333333333333333
        0000}
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 3
    end
    object BtnCancelarGrupo: TCBitBtn
      Left = 81
      Top = 183
      Width = 76
      Height = 28
      Anchors = [akLeft, akBottom]
      Cancel = True
      Caption = 'Cancelar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333333333333333333333000033338833333333333333333F333333333333
        0000333911833333983333333388F333333F3333000033391118333911833333
        38F38F333F88F33300003339111183911118333338F338F3F8338F3300003333
        911118111118333338F3338F833338F3000033333911111111833333338F3338
        3333F8330000333333911111183333333338F333333F83330000333333311111
        8333333333338F3333383333000033333339111183333333333338F333833333
        00003333339111118333333333333833338F3333000033333911181118333333
        33338333338F333300003333911183911183333333383338F338F33300003333
        9118333911183333338F33838F338F33000033333913333391113333338FF833
        38F338F300003333333333333919333333388333338FFF830000333333333333
        3333333333333333333888330000333333333333333333333333333333333333
        0000}
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 4
    end
    object BtnLimparGrupo: TCBitBtn
      Left = 163
      Top = 183
      Width = 71
      Height = 28
      Anchors = [akLeft, akBottom]
      Caption = '&Limpar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Glyph.Data = {
        EE000000424DEE000000000000007600000028000000100000000F0000000100
        04000000000078000000130B0000130B00001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
        888888800000000000888880FFFFFFFFF0888880FFFFFFFFF0888880FFFFFFFF
        F0888880FFFFFFFFF0888880FFFFFFFFF0888880FFFFFFFFF0888880FFFFFFFF
        F0888880FFFFFFFFF0888880FFFFFF0000888880FFFFFF0F08888880FFFFFF00
        888888800000000888888888888888888888}
      ParentFont = False
      TabOrder = 5
    end
    object cbCodGrupo: TcxCheckBox
      Left = 174
      Top = 7
      TabStop = False
      Caption = 'C'#243'digo'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      StyleFocused.Color = 14671839
      TabOrder = 0
      Width = 66
    end
    object cbDescGrupo: TcxCheckBox
      Left = 246
      Top = 7
      TabStop = False
      Caption = 'Nome do Grupo'
      ParentFont = False
      State = cbsChecked
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      StyleFocused.Color = 14671839
      TabOrder = 1
      Width = 121
    end
  end
  object panSegmento: TPanel [17]
    Left = 1000
    Top = 396
    Width = 474
    Height = 223
    BevelOuter = bvNone
    Color = 14671839
    ParentBackground = False
    TabOrder = 13
    Visible = False
    DesignSize = (
      474
      223)
    object Shape2: TShape
      Left = 240
      Top = 182
      Width = 1
      Height = 28
      Anchors = [akLeft, akBottom]
      Pen.Color = clBtnShadow
      ExplicitTop = 212
    end
    object Label6: TLabel
      Left = 250
      Top = 186
      Width = 185
      Height = 25
      Anchors = [akLeft, akBottom]
      AutoSize = False
      Caption = '[ Shift + Enter ] marcar/desmarcar o fornecedor selecionado.'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      WordWrap = True
    end
    object Label7: TLabel
      Left = 15
      Top = 10
      Width = 156
      Height = 14
      AutoSize = False
      Caption = 'Campo preferencial para busca :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object GridSegmento: TcxGrid
      Left = 13
      Top = 29
      Width = 452
      Height = 148
      Anchors = [akLeft, akTop, akRight, akBottom]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      LookAndFeel.Kind = lfOffice11
      object DBTableViewSegmento: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        Navigator.Buttons.Delete.Enabled = False
        Navigator.Buttons.Delete.Visible = False
        DataController.DataSource = dsSegmento
        DataController.KeyFieldNames = 'idSegmento'
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.ImmediateEditor = False
        OptionsBehavior.IncSearch = True
        OptionsBehavior.IncSearchItem = cxGridDBDescSegmento
        OptionsCustomize.ColumnGrouping = False
        OptionsData.CancelOnExit = False
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsSelection.HideSelection = True
        OptionsSelection.InvertSelect = False
        OptionsView.FocusRect = False
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        object cxGridDBColumn3: TcxGridDBColumn
          DataBinding.FieldName = 'SELECIONADO'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.FullFocusRect = True
          Properties.NullStyle = nssUnchecked
          Properties.ValueChecked = 'S'
          Properties.ValueUnchecked = 'N'
          MinWidth = 25
          Options.Editing = False
          Options.Filtering = False
          Options.FilteringMRUItemsList = False
          Options.Focusing = False
          Options.IncSearch = False
          Options.Grouping = False
          Options.HorzSizing = False
          Options.Moving = False
          Width = 25
          IsCaptionAssigned = True
        end
        object cxGridDBCodSegmento: TcxGridDBColumn
          Caption = 'C'#243'digo'
          DataBinding.FieldName = 'idSegmento'
          HeaderAlignmentHorz = taRightJustify
          Options.Filtering = False
          Width = 70
        end
        object cxGridDBDescSegmento: TcxGridDBColumn
          Caption = 'Nome do Segmento'
          DataBinding.FieldName = 'descSegmento'
          Options.Filtering = False
          Width = 323
        end
      end
      object cxGridLevel3: TcxGridLevel
        GridView = DBTableViewSegmento
      end
    end
    object BtnAplicarSegmento: TCBitBtn
      Left = 7
      Top = 183
      Width = 71
      Height = 28
      Anchors = [akLeft, akBottom]
      Caption = '&Aplicar'
      Default = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333333333333333330000333333333333333333333333F33333333333
        00003333344333333333333333388F3333333333000033334224333333333333
        338338F3333333330000333422224333333333333833338F3333333300003342
        222224333333333383333338F3333333000034222A22224333333338F338F333
        8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
        33333338F83338F338F33333000033A33333A222433333338333338F338F3333
        0000333333333A222433333333333338F338F33300003333333333A222433333
        333333338F338F33000033333333333A222433333333333338F338F300003333
        33333333A222433333333333338F338F00003333333333333A22433333333333
        3338F38F000033333333333333A223333333333333338F830000333333333333
        333A333333333333333338330000333333333333333333333333333333333333
        0000}
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 3
    end
    object BtnCancelarSegmento: TCBitBtn
      Left = 84
      Top = 183
      Width = 76
      Height = 28
      Anchors = [akLeft, akBottom]
      Cancel = True
      Caption = 'Cancelar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333333333333333333333000033338833333333333333333F333333333333
        0000333911833333983333333388F333333F3333000033391118333911833333
        38F38F333F88F33300003339111183911118333338F338F3F8338F3300003333
        911118111118333338F3338F833338F3000033333911111111833333338F3338
        3333F8330000333333911111183333333338F333333F83330000333333311111
        8333333333338F3333383333000033333339111183333333333338F333833333
        00003333339111118333333333333833338F3333000033333911181118333333
        33338333338F333300003333911183911183333333383338F338F33300003333
        9118333911183333338F33838F338F33000033333913333391113333338FF833
        38F338F300003333333333333919333333388333338FFF830000333333333333
        3333333333333333333888330000333333333333333333333333333333333333
        0000}
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 4
    end
    object BtnLimparSegmento: TCBitBtn
      Left = 161
      Top = 183
      Width = 71
      Height = 28
      Anchors = [akLeft, akBottom]
      Caption = '&Limpar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Glyph.Data = {
        EE000000424DEE000000000000007600000028000000100000000F0000000100
        04000000000078000000130B0000130B00001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
        888888800000000000888880FFFFFFFFF0888880FFFFFFFFF0888880FFFFFFFF
        F0888880FFFFFFFFF0888880FFFFFFFFF0888880FFFFFFFFF0888880FFFFFFFF
        F0888880FFFFFFFFF0888880FFFFFF0000888880FFFFFF0F08888880FFFFFF00
        888888800000000888888888888888888888}
      ParentFont = False
      TabOrder = 5
    end
    object cbCodSegmento: TcxCheckBox
      Left = 174
      Top = 7
      TabStop = False
      Caption = 'C'#243'digo'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      StyleFocused.Color = 14671839
      TabOrder = 0
      Width = 66
    end
    object cbNomeSegmento: TcxCheckBox
      Left = 236
      Top = 7
      TabStop = False
      Caption = 'Nome do Segmento'
      ParentFont = False
      State = cbsChecked
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      StyleFocused.Color = 14671839
      TabOrder = 1
      Width = 121
    end
  end
  object EDtpFluxo: TCEdit [18]
    Left = 520
    Top = 326
    Width = 121
    Height = 19
    BorderStyle = bsNone
    BevelKind = bkTile
    TabOrder = 14
    Text = ''
    Visible = False
    DataType = ftString
    KeyMode = kmNormal
    Decimals = 0
  end
  object EDtpAgrupamento: TCEdit [19]
    Left = 520
    Top = 351
    Width = 121
    Height = 19
    BorderStyle = bsNone
    BevelKind = bkTile
    TabOrder = 15
    Text = ''
    Visible = False
    DataType = ftString
    KeyMode = kmNormal
    Decimals = 0
  end
  object panEmpresas: TPanel [20]
    Left = 520
    Top = 459
    Width = 474
    Height = 223
    BevelOuter = bvNone
    Color = 14671839
    ParentBackground = False
    TabOrder = 16
    Visible = False
    DesignSize = (
      474
      223)
    object Shape3: TShape
      Left = 240
      Top = 182
      Width = 1
      Height = 28
      Anchors = [akLeft, akBottom]
      Pen.Color = clBtnShadow
      ExplicitTop = 212
    end
    object Label2: TLabel
      Left = 250
      Top = 186
      Width = 185
      Height = 25
      Anchors = [akLeft, akBottom]
      AutoSize = False
      Caption = '[ Shift + Enter ] marcar/desmarcar o fornecedor selecionado.'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      WordWrap = True
    end
    object Label3: TLabel
      Left = 15
      Top = 10
      Width = 156
      Height = 14
      AutoSize = False
      Caption = 'Campo preferencial para busca :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object GridEmpresa: TcxGrid
      Left = 13
      Top = 29
      Width = 452
      Height = 148
      Anchors = [akLeft, akTop, akRight, akBottom]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      LookAndFeel.Kind = lfOffice11
      object DBTableViewEmpresas: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        Navigator.Buttons.Delete.Enabled = False
        Navigator.Buttons.Delete.Visible = False
        DataController.DataSource = dsEmpresas
        DataController.KeyFieldNames = 'idEmpresa'
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.ImmediateEditor = False
        OptionsBehavior.IncSearch = True
        OptionsBehavior.IncSearchItem = GridEmpresadescCadEmpresa
        OptionsCustomize.ColumnGrouping = False
        OptionsData.CancelOnExit = False
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsSelection.HideSelection = True
        OptionsSelection.InvertSelect = False
        OptionsView.FocusRect = False
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        object GridEmpresaSELECIONADO: TcxGridDBColumn
          DataBinding.FieldName = 'SELECIONADO'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.FullFocusRect = True
          Properties.NullStyle = nssUnchecked
          Properties.ValueChecked = 'S'
          Properties.ValueUnchecked = 'N'
          MinWidth = 25
          Options.Editing = False
          Options.Filtering = False
          Options.FilteringMRUItemsList = False
          Options.Focusing = False
          Options.IncSearch = False
          Options.Grouping = False
          Options.HorzSizing = False
          Options.Moving = False
          Width = 25
          IsCaptionAssigned = True
        end
        object GridEmpresaidEmpresa: TcxGridDBColumn
          Caption = 'C'#243'digo'
          DataBinding.FieldName = 'idEmpresa'
          HeaderAlignmentHorz = taRightJustify
          Options.Filtering = False
          Width = 70
        end
        object GridEmpresadescCadEmpresa: TcxGridDBColumn
          Caption = 'Nome da Empresa'
          DataBinding.FieldName = 'descCadEmpresa'
          Options.Filtering = False
          Width = 200
        end
        object GridEmpresadescAbreviada: TcxGridDBColumn
          Caption = 'Fantasia'
          DataBinding.FieldName = 'descAbreviada'
          Width = 150
        end
      end
      object cxGridLevel4: TcxGridLevel
        GridView = DBTableViewEmpresas
      end
    end
    object BtnAplicarEmpresas: TCBitBtn
      Left = 4
      Top = 183
      Width = 71
      Height = 28
      Anchors = [akLeft, akBottom]
      Caption = '&Aplicar'
      Default = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333333333333333330000333333333333333333333333F33333333333
        00003333344333333333333333388F3333333333000033334224333333333333
        338338F3333333330000333422224333333333333833338F3333333300003342
        222224333333333383333338F3333333000034222A22224333333338F338F333
        8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
        33333338F83338F338F33333000033A33333A222433333338333338F338F3333
        0000333333333A222433333333333338F338F33300003333333333A222433333
        333333338F338F33000033333333333A222433333333333338F338F300003333
        33333333A222433333333333338F338F00003333333333333A22433333333333
        3338F38F000033333333333333A223333333333333338F830000333333333333
        333A333333333333333338330000333333333333333333333333333333333333
        0000}
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 3
    end
    object BtnCancelarEmpresas: TCBitBtn
      Left = 81
      Top = 183
      Width = 76
      Height = 28
      Anchors = [akLeft, akBottom]
      Cancel = True
      Caption = 'Cancelar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333333333333333333333000033338833333333333333333F333333333333
        0000333911833333983333333388F333333F3333000033391118333911833333
        38F38F333F88F33300003339111183911118333338F338F3F8338F3300003333
        911118111118333338F3338F833338F3000033333911111111833333338F3338
        3333F8330000333333911111183333333338F333333F83330000333333311111
        8333333333338F3333383333000033333339111183333333333338F333833333
        00003333339111118333333333333833338F3333000033333911181118333333
        33338333338F333300003333911183911183333333383338F338F33300003333
        9118333911183333338F33838F338F33000033333913333391113333338FF833
        38F338F300003333333333333919333333388333338FFF830000333333333333
        3333333333333333333888330000333333333333333333333333333333333333
        0000}
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 4
    end
    object BtnLimparEmpresas: TCBitBtn
      Left = 163
      Top = 183
      Width = 71
      Height = 28
      Anchors = [akLeft, akBottom]
      Caption = '&Limpar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Glyph.Data = {
        EE000000424DEE000000000000007600000028000000100000000F0000000100
        04000000000078000000130B0000130B00001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
        888888800000000000888880FFFFFFFFF0888880FFFFFFFFF0888880FFFFFFFF
        F0888880FFFFFFFFF0888880FFFFFFFFF0888880FFFFFFFFF0888880FFFFFFFF
        F0888880FFFFFFFFF0888880FFFFFF0000888880FFFFFF0F08888880FFFFFF00
        888888800000000888888888888888888888}
      ParentFont = False
      TabOrder = 5
    end
    object cbCodEmpresa: TcxCheckBox
      Left = 174
      Top = 7
      TabStop = False
      Caption = 'C'#243'digo'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      StyleFocused.Color = 14671839
      TabOrder = 0
      Width = 66
    end
    object cbdescEmpresa: TcxCheckBox
      Left = 246
      Top = 7
      TabStop = False
      Caption = 'Nome da Empresa'
      ParentFont = False
      State = cbsChecked
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      StyleFocused.Color = 14671839
      TabOrder = 1
      Width = 121
    end
  end
  inherited imgIcones: TImageList
    Bitmap = {
      494C010107000900980010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
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
  inherited cdsRelatorio: TClientDataSet
    CommandText = 
      'EXEC spRelFluxoCaixaSintetico 2, 1,0, '#39'01/11/2012'#39', '#39'01/11/2013'#39 +
      ', '#39'N'#39', '#39'S'#39', 849.54, '#39'F'#39', '#39#39', '#39#39', '#39#39', '#39'A'#39', '#39'S'#39
  end
  inherited frxDataset: TfrxDBDataset
    FieldAliases.Strings = (
      'dtMovimento=dtMovimento'
      'vlReceber=vlReceber'
      'vlPrevisaoRec=vlPrevisaoRec'
      'vlContrato=vlContrato'
      'vlPagar=vlPagar'
      'vlPrevisaoPag=vlPrevisaoPag'
      'vlPedidoCompra=vlPedidoCompra'
      'vlComissao=vlComissao'
      'vlSaldoAtual=vlSaldoAtual'
      'vlSaldoAnterior=vlSaldoAnterior')
  end
  inherited dsPadrao: TDataSource
    Left = 480
    Top = 232
  end
  inherited cdsPadrao: TClientDataSet
    AfterInsert = cdsPadraoAfterInsert
    Left = 440
    Top = 232
    object cdsPadraoidIndice: TSmallintField
      FieldName = 'idIndice'
    end
    object cdsPadraodtInicial: TDateTimeField
      FieldName = 'dtInicial'
    end
    object cdsPadraodtFinal: TDateTimeField
      FieldName = 'dtFinal'
    end
    object cdsPadraoconsolidaemp: TStringField
      FieldName = 'consolidaemp'
      Size = 1
    end
    object cdsPadraoconsolidafilial: TStringField
      FieldName = 'consolidafilial'
      Size = 1
    end
    object cdsPadraoagrupar: TStringField
      FieldName = 'agrupar'
      Size = 1
    end
    object cdsPadraomostraIndice: TStringField
      FieldName = 'mostraIndice'
      Size = 1
    end
    object cdsPadraomostraContas: TStringField
      FieldName = 'mostraContas'
      Size = 1
    end
    object cdsPadraomostraVencidos: TStringField
      FieldName = 'mostraVencidos'
      Size = 1
    end
    object cdsPadraointegraSaldo: TStringField
      FieldName = 'integraSaldo'
      Size = 1
    end
    object cdsPadraomostraAdiantamento: TStringField
      FieldName = 'mostraAdiantamento'
      Size = 1
    end
    object cdsPadraotpFluxo: TStringField
      FieldName = 'tpFluxo'
      Size = 1
    end
    object cdsPadraoimpCabecalho: TStringField
      FieldName = 'impCabecalho'
    end
    object cdsPadraovlAcumulado: TCurrencyField
      FieldName = 'vlAcumulado'
    end
  end
  inherited cdsEmpresa: TClientDataSet
    Left = 672
  end
  inherited dsEmpresa: TDataSource
    Left = 704
  end
  object dsFornecedores: TDataSource
    DataSet = cdsFornecedores
    Left = 328
    Top = 464
  end
  object cdsFornecedores: TClientDataSet
    Aggregates = <>
    CommandText = 
      'SELECT idFornecedor, descCadFornecedor, descAbreviada FROM vCadF' +
      'ornecedorContabil ORDER BY descCadFornecedor'
    Params = <>
    ProviderName = 'dspFornecedores'
    Left = 240
    Top = 464
    object cdsFornecedoresSELECIONADO: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'SELECIONADO'
      Size = 1
    end
    object cdsFornecedoresidFornecedor: TIntegerField
      FieldName = 'idFornecedor'
      Required = True
    end
    object cdsFornecedoresdescCadFornecedor: TStringField
      FieldName = 'descCadFornecedor'
      Required = True
      FixedChar = True
      Size = 50
    end
    object cdsFornecedoresdescAbreviada: TStringField
      FieldName = 'descAbreviada'
      Required = True
      FixedChar = True
      Size = 30
    end
  end
  object dspFornecedores: TDataSetProvider
    DataSet = qryFornecedores
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 152
    Top = 464
  end
  object qryFornecedores: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmPadrao.dbConexao
    Left = 56
    Top = 464
  end
  object sdsGrupoCad: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmPadrao.dbConexao
    Left = 56
    Top = 512
  end
  object dspGrupoCad: TDataSetProvider
    DataSet = sdsGrupoCad
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 152
    Top = 512
  end
  object cdsGrupoCad: TClientDataSet
    Aggregates = <>
    CommandText = 'SELECT * FROM grupocad WHERE stGrupoCad = '#39'ATIVO'#39
    Params = <>
    ProviderName = 'dspGrupoCad'
    Left = 240
    Top = 512
    object cdsGrupoCadSELECIONADO: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'SELECIONADO'
      Size = 1
    end
    object cdsGrupoCadidGrupoCad: TSmallintField
      FieldName = 'idGrupoCad'
      Required = True
    end
    object cdsGrupoCaddescGrupoCad: TStringField
      FieldName = 'descGrupoCad'
      Required = True
      FixedChar = True
      Size = 40
    end
    object cdsGrupoCadstGrupoCad: TStringField
      FieldName = 'stGrupoCad'
      Required = True
      FixedChar = True
      Size = 15
    end
  end
  object dsGrupoCad: TDataSource
    DataSet = cdsGrupoCad
    Left = 328
    Top = 512
  end
  object dsSegmento: TDataSource
    DataSet = cdsSegmento
    Left = 328
    Top = 568
  end
  object cdsSegmento: TClientDataSet
    Aggregates = <>
    CommandText = 'SELECT * FROM segmento WHERE stSegmento = '#39'ATIVO'#39
    Params = <>
    ProviderName = 'dspSegmento'
    Left = 240
    Top = 568
    object cdsSegmentoSELECIONADO: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'SELECIONADO'
      Size = 1
    end
    object cdsSegmentoidSegmento: TSmallintField
      FieldName = 'idSegmento'
      Required = True
    end
    object cdsSegmentodescSegmento: TStringField
      FieldName = 'descSegmento'
      Required = True
      FixedChar = True
      Size = 40
    end
    object cdsSegmentostSegmento: TStringField
      FieldName = 'stSegmento'
      Required = True
      FixedChar = True
      Size = 15
    end
  end
  object dspSegmento: TDataSetProvider
    DataSet = sdsSegmento
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 152
    Top = 568
  end
  object sdsSegmento: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmPadrao.dbConexao
    Left = 56
    Top = 568
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
    ReportOptions.LastChange = 41738.557185868060000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      '        '
      'end.')
    Left = 488
    Top = 56
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
      PaperWidth = 297.000000000000000000
      PaperHeight = 210.000000000000000000
      PaperSize = 9
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 16.031532680000000000
        Top = 343.937230000000000000
        Width = 1122.520410000000000000
        OnAfterPrint = 'MasterData1OnAfterPrint'
        OnBeforePrint = 'MasterData1OnBeforePrint'
        DataSet = frxDataset
        DataSetName = 'frxDataset'
        RowCount = 0
        object Memo2: TfrxMemoView
          Left = 45.984264180000000000
          Top = 1.377952760000000000
          Width = 41.574830000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DataSet = frxDataset
          DataSetName = 'frxDataset'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2m'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDataset."dtMovimento"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo5: TfrxMemoView
          Left = 150.488250000000000000
          Top = 1.377952760000000000
          Width = 41.574830000000000000
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
            '[frxDataset."vlReceber"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo14: TfrxMemoView
          Left = 241.433210000000000000
          Top = 1.377952760000000000
          Width = 41.574830000000000000
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
            '[frxDataset."vlPrevisaoRec"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo16: TfrxMemoView
          Left = 357.819110000000000000
          Top = 1.377952760000000000
          Width = 41.574830000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DataField = 'vlPedidoCompra'
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
            '[frxDataset."vlPedidoCompra"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo18: TfrxMemoView
          Left = 491.897960000000000000
          Top = 1.377952760000000000
          Width = 41.574830000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DataField = 'vlContrato'
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
            '[frxDataset."vlContrato"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo19: TfrxMemoView
          Left = 639.417750000000000000
          Top = 1.377952760000000000
          Width = 41.574830000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DataField = 'vlPagar'
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
            '[frxDataset."vlPagar"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo20: TfrxMemoView
          Left = 749.024120000000000000
          Top = 1.377952760000000000
          Width = 41.574830000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DataField = 'vlPrevisaoPag'
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
            '[frxDataset."vlPrevisaoPag"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo21: TfrxMemoView
          Left = 875.307670000000000000
          Top = 1.377952760000000000
          Width = 41.574830000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DataField = 'vlComissao'
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
            '[frxDataset."vlComissao"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo22: TfrxMemoView
          Left = 1018.252630000000000000
          Top = 1.377952760000000000
          Width = 41.574830000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DataField = 'vlSaldoAtual'
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
            '[frxDataset."vlSaldoAtual"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Height = 136.992192500000000000
        Top = 18.897650000000000000
        Width = 1122.520410000000000000
        object Line3: TfrxLineView
          Left = 26.456710000000000000
          Top = 133.488250000000000000
          Width = 1096.063700000000000000
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
          Left = 936.102970000000000000
          Top = 7.472480000000001000
          Width = 173.858380000000000000
          Height = 117.165430000000000000
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
            'Fluxo de Caixa Sint'#233'tico')
          ParentFont = False
          VAlign = vaCenter
        end
        object Line2: TfrxLineView
          Left = 906.866730000000000000
          Top = 8.779530000000001000
          Height = 120.944960000000000000
          Color = clBlack
          Frame.Color = clGray
          Frame.ShadowColor = clGray
          Frame.Typ = [ftLeft]
        end
        object lblEmpresa: TfrxMemoView
          Left = 298.976500000000000000
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
          Left = 299.094620000000000000
          Top = 33.133943700000010000
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
          Left = 299.094620000000000000
          Top = 52.811123699999990000
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
        object Memo34: TfrxMemoView
          Left = 299.094620000000000000
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
        object Memo35: TfrxMemoView
          Left = 299.094620000000000000
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
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        Height = 26.456710000000000000
        Top = 294.803340000000000000
        Width = 1122.520410000000000000
        Condition = 'frxEmpresaContabil."idEmpresa"'
        ReprintOnNewPage = True
        object Shape1: TfrxShapeView
          Left = 26.897650000000000000
          Top = 3.779529999999965000
          Width = 1058.267926460000000000
          Height = 22.677180000000000000
          Fill.BackColor = 15790320
          Frame.Color = 15790320
        end
        object Memo1: TfrxMemoView
          Left = 36.118120000000000000
          Top = 4.535433070000010000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          DataSet = FrmPadraoRel.frxDataset
          DataSetName = 'frxDataset'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Data')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo3: TfrxMemoView
          Left = 121.929190000000000000
          Top = 4.535433070000010000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          DataSet = FrmPadraoRel.frxDataset
          DataSetName = 'frxDataset'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'A Receber')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo4: TfrxMemoView
          Left = 213.535560000000000000
          Top = 4.535433070000010000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          DataSet = FrmPadraoRel.frxDataset
          DataSetName = 'frxDataset'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Previs'#227'o a Rec.')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo6: TfrxMemoView
          Left = 341.700990000000000000
          Top = 4.535433070000010000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          DataSet = FrmPadraoRel.frxDataset
          DataSetName = 'frxDataset'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Pedidos')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo8: TfrxMemoView
          Left = 448.220780000000000000
          Top = 4.535433070000010000
          Width = 139.842610000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          DataSet = FrmPadraoRel.frxDataset
          DataSetName = 'frxDataset'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Contratos de Vendas')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo9: TfrxMemoView
          Left = 626.638220000000000000
          Top = 4.535433070000010000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          DataSet = FrmPadraoRel.frxDataset
          DataSetName = 'frxDataset'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'A Pagar')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo10: TfrxMemoView
          Left = 718.346940000000000000
          Top = 4.535433070000010000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          DataSet = FrmPadraoRel.frxDataset
          DataSetName = 'frxDataset'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Previs'#227'o a Pag.')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo11: TfrxMemoView
          Left = 873.410020000000000000
          Top = 4.535433070000010000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          DataSet = FrmPadraoRel.frxDataset
          DataSetName = 'frxDataset'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Comiss'#245'es')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo12: TfrxMemoView
          Left = 1018.134510000000000000
          Top = 4.535433070000010000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          DataSet = FrmPadraoRel.frxDataset
          DataSetName = 'frxDataset'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Saldo')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Height = 36.574830000000000000
        Top = 464.882190000000000000
        Width = 1122.520410000000000000
        object Memo13: TfrxMemoView
          Left = 399.307360000000000000
          Top = 7.181102360000012000
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
          Top = 7.181102362204513000
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
          Left = 977.638530000000000000
          Top = 7.181102360000012000
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
          Top = 3.401360000000011000
          Width = 1096.063226460000000000
          Color = clBlack
          Frame.Typ = [ftTop]
          Frame.Width = 0.100000000000000000
        end
        object Memo67: TfrxMemoView
          Left = 699.669450000000000000
          Top = 7.181102360000012000
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
        Height = 22.897642680000000000
        Top = 381.732530000000000000
        Width = 1122.520410000000000000
        object Memo23: TfrxMemoView
          Left = 48.118120000000000000
          Top = 6.000000000000000000
          Width = 41.574830000000000000
          Height = 15.118112680000000000
          AutoWidth = True
          DataSet = frxDataset
          DataSetName = 'frxDataset'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2m'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Totais')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo24: TfrxMemoView
          Left = 151.622105820000000000
          Top = 5.779530000000000000
          Width = 41.574830000000000000
          Height = 15.118112680000000000
          AutoWidth = True
          DataSet = frxDataset
          DataSetName = 'frxDataset'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDataset."vlReceber">,MasterData1)]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo25: TfrxMemoView
          Left = 242.567065820000000000
          Top = 5.779530000000000000
          Width = 41.574830000000000000
          Height = 15.118112680000000000
          AutoWidth = True
          DataSet = frxDataset
          DataSetName = 'frxDataset'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDataset."vlPrevisaoRec">,MasterData1)]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo26: TfrxMemoView
          Left = 358.952965820000000000
          Top = 5.779530000000000000
          Width = 41.574830000000000000
          Height = 15.118112680000000000
          AutoWidth = True
          DataSet = frxDataset
          DataSetName = 'frxDataset'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDataset."vlPedidoCompra">,MasterData1)]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo27: TfrxMemoView
          Left = 493.031815820000000000
          Top = 5.779530000000000000
          Width = 41.574830000000000000
          Height = 15.118112680000000000
          AutoWidth = True
          DataSet = frxDataset
          DataSetName = 'frxDataset'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDataset."vlContrato">,MasterData1)]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo28: TfrxMemoView
          Left = 640.551605820000000000
          Top = 5.779530000000000000
          Width = 41.574830000000000000
          Height = 15.118112680000000000
          AutoWidth = True
          DataSet = frxDataset
          DataSetName = 'frxDataset'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDataset."vlPagar">,MasterData1)]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo29: TfrxMemoView
          Left = 750.157975820000000000
          Top = 5.779530000000000000
          Width = 41.574830000000000000
          Height = 15.118112680000000000
          AutoWidth = True
          DataSet = frxDataset
          DataSetName = 'frxDataset'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDataset."vlPrevisaoPag">,MasterData1)]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo32: TfrxMemoView
          Left = 876.441525820000000000
          Top = 5.779530000000000000
          Width = 41.574830000000000000
          Height = 15.118112680000000000
          AutoWidth = True
          DataSet = frxDataset
          DataSetName = 'frxDataset'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDataset."vlComissao">,MasterData1)]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Line4: TfrxLineView
          Left = 22.677180000000000000
          Top = 2.000000000000000000
          Width = 1096.063700000000000000
          Color = clBlack
          Frame.Color = clGray
          Frame.ShadowColor = clGray
          Diagonal = True
        end
        object Memo36: TfrxMemoView
          Left = 1020.473100000000000000
          Top = 5.779530000000000000
          Width = 41.574830000000000000
          Height = 15.118112680000000000
          AutoWidth = True
          DataField = 'vlSaldoAtual'
          DataSet = frxDataset
          DataSetName = 'frxDataset'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDataset."vlSaldoAtual"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
      end
      object Header1: TfrxHeader
        FillType = ftBrush
        Height = 57.472480000000000000
        Top = 215.433210000000000000
        Width = 1122.520410000000000000
        object Shape11: TfrxShapeView
          Left = 26.456692910000000000
          Top = 0.779529999999994100
          Width = 1058.267928900000000000
          Height = 52.913420000000000000
          Frame.Width = 0.100000000000000000
        end
        object Memo124: TfrxMemoView
          Left = 34.456692910000000000
          Top = 7.692949999999996000
          Width = 71.811070000000000000
          Height = 11.338582680000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Clientes/Forn.:')
          ParentFont = False
          VAlign = vaBottom
        end
        object DBEidFornecedores: TfrxMemoView
          Left = 110.299302910000000000
          Top = 7.559059999999988000
          Width = 75.590551180000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo125: TfrxMemoView
          Left = 191.315090000000000000
          Top = 7.692949999999996000
          Width = 102.047310000000000000
          Height = 11.338582680000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Grupos Empresariais:')
          ParentFont = False
          VAlign = vaBottom
        end
        object DBEidGrupo: TfrxMemoView
          Left = 297.157700000000000000
          Top = 7.559059999999988000
          Width = 75.590551180000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo128: TfrxMemoView
          Left = 380.291590000000000000
          Top = 7.692949999999996000
          Width = 68.031540000000000000
          Height = 11.338582680000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Segmentos:')
          ParentFont = False
          VAlign = vaBottom
        end
        object DBEidSegmento: TfrxMemoView
          Left = 452.354670000000000000
          Top = 7.559059999999988000
          Width = 75.590551180000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo126: TfrxMemoView
          Left = 535.252320000000000000
          Top = 7.692949999999996000
          Width = 45.354360000000000000
          Height = 11.338582680000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Data de:')
          ParentFont = False
          VAlign = vaBottom
        end
        object DBEdtInicial: TfrxMemoView
          Left = 584.638220000000000000
          Top = 7.559059999999988000
          Width = 64.251961180000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo127: TfrxMemoView
          Left = 755.976810000000000000
          Top = 7.692949999999996000
          Width = 45.354360000000000000
          Height = 11.338582680000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            #205'ndice:')
          ParentFont = False
          VAlign = vaBottom
        end
        object LookIndice: TfrxMemoView
          Left = 805.362710000000000000
          Top = 7.559059999999988000
          Width = 128.503971180000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo129: TfrxMemoView
          Left = 35.464566930000000000
          Top = 22.677179999999990000
          Width = 68.031540000000000000
          Height = 11.338582680000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Tipo do Fluxo:')
          ParentFont = False
          VAlign = vaBottom
        end
        object EDtpFluxo: TfrxMemoView
          Left = 107.504020000000000000
          Top = 22.677179999999990000
          Width = 68.031491180000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo130: TfrxMemoView
          Left = 184.574830000000000000
          Top = 22.811070000000000000
          Width = 71.811070000000000000
          Height = 11.338582680000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Agrupamento:')
          ParentFont = False
          VAlign = vaBottom
        end
        object EDtpAgrupamento: TfrxMemoView
          Left = 260.417440000000000000
          Top = 22.677179999999990000
          Width = 132.283501180000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo131: TfrxMemoView
          Left = 398.008040000000000000
          Top = 22.677179999999990000
          Width = 79.370081180000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Mostra '#205'ndices?')
          ParentFont = False
          VAlign = vaBottom
        end
        object DBCKmostraIndice: TfrxMemoView
          Left = 479.378170000000000000
          Top = 22.677179999999990000
          Width = 11.338541180000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo132: TfrxMemoView
          Left = 503.834880000000000000
          Top = 22.677179999999990000
          Width = 120.944911180000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Mostra Contas Banc'#225'rias?')
          ParentFont = False
          VAlign = vaBottom
        end
        object DBCKmostraContas: TfrxMemoView
          Left = 626.779840000000000000
          Top = 22.677179999999990000
          Width = 11.338541180000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo133: TfrxMemoView
          Left = 647.457020000000000000
          Top = 22.677179999999990000
          Width = 86.929141180000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Mostra Vencidos?')
          ParentFont = False
          VAlign = vaBottom
        end
        object DBCKmostraVencidos: TfrxMemoView
          Left = 737.827150000000000000
          Top = 22.677179999999990000
          Width = 11.338541180000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo135: TfrxMemoView
          Left = 762.283860000000000000
          Top = 22.677179999999990000
          Width = 113.385851180000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Mostra Adiantamentos?')
          ParentFont = False
          VAlign = vaBottom
        end
        object DBCKmostraAdiantamento: TfrxMemoView
          Left = 878.228820000000000000
          Top = 22.677179999999990000
          Width = 11.338541180000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo134: TfrxMemoView
          Left = 904.465060000000000000
          Top = 22.677179999999990000
          Width = 86.929141180000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Grupo Gerencial?')
          ParentFont = False
          VAlign = vaBottom
        end
        object DBCKgrupoGerencial: TfrxMemoView
          Left = 994.835190000000000000
          Top = 22.677179999999990000
          Width = 11.338541180000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo137: TfrxMemoView
          Left = 34.464566930000000000
          Top = 37.795300000000000000
          Width = 94.488201180000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Previs'#245'es no Final?')
          ParentFont = False
          VAlign = vaBottom
        end
        object DBCKtpPrevisao: TfrxMemoView
          Left = 135.063080000000000000
          Top = 37.795300000000000000
          Width = 11.338541180000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo136: TfrxMemoView
          Left = 151.574830000000000000
          Top = 37.795300000000000000
          Width = 71.811021180000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Integra Saldo?')
          ParentFont = False
          VAlign = vaBottom
        end
        object DBCKintegraSaldo: TfrxMemoView
          Left = 225.385900000000000000
          Top = 37.795300000000000000
          Width = 11.338541180000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo139: TfrxMemoView
          Left = 249.842610000000000000
          Top = 37.795300000000000000
          Width = 98.267731180000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Consolida Empresa?')
          ParentFont = False
          VAlign = vaBottom
        end
        object DBCKconsolidaemp: TfrxMemoView
          Left = 350.110390000000000000
          Top = 37.795300000000000000
          Width = 11.338541180000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo138: TfrxMemoView
          Left = 370.787570000000000000
          Top = 37.795300000000000000
          Width = 98.267731180000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Consolida Filial?')
          ParentFont = False
          VAlign = vaBottom
        end
        object DBCKconsolidafilial: TfrxMemoView
          Left = 471.055350000000000000
          Top = 37.795300000000000000
          Width = 11.338541180000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo33: TfrxMemoView
          Left = 656.197280000000000000
          Top = 7.692949999999996000
          Width = 22.677180000000000000
          Height = 11.338582680000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'At'#233':')
          ParentFont = False
          VAlign = vaBottom
        end
        object DBEdtFinal: TfrxMemoView
          Left = 685.583180000000000000
          Top = 7.559059999999988000
          Width = 64.251961180000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo37: TfrxMemoView
          Left = 502.677490000000000000
          Top = 37.795300000000000000
          Width = 75.590551180000080000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Saldo Anterior:')
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo38: TfrxMemoView
          Left = 613.417750000000000000
          Top = 37.795300000000000000
          Width = 41.574830000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DataSet = frxDataset
          DataSetName = 'frxDataset'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[(<frxDataset."vlSaldoAnterior">)]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
      end
    end
  end
  object cdsRelVencer: TClientDataSet
    Aggregates = <>
    CommandText = 
      'EXEC spRelFluxoAVencer 9999, 4, 0, '#39'01/09/2011'#39', '#39'05/09/2011'#39','#39'N' +
      #39', '#39'S'#39', '#39'F'#39', '#39#39', '#39#39', '#39#39', 0, '#39'A'#39
    Params = <>
    ProviderName = 'dspRelVencer'
    Left = 672
    Top = 112
    object cdsRelVenceridDocSerie: TStringField
      FieldName = 'idDocSerie'
      FixedChar = True
      Size = 5
    end
    object cdsRelVencernrTitulo: TStringField
      FieldName = 'nrTitulo'
      FixedChar = True
    end
    object cdsRelVenceridParcela: TSmallintField
      FieldName = 'idParcela'
    end
    object cdsRelVenceridCadGeral: TIntegerField
      FieldName = 'idCadGeral'
    end
    object cdsRelVencerdescAbreviada: TStringField
      FieldName = 'descAbreviada'
      FixedChar = True
      Size = 30
    end
    object cdsRelVencerdtVencimento: TSQLTimeStampField
      FieldName = 'dtVencimento'
    end
    object cdsRelVencerIndice: TStringField
      FieldName = 'Indice'
      FixedChar = True
      Size = 10
    end
    object cdsRelVencerqtIndice: TFMTBCDField
      FieldName = 'qtIndice'
      Precision = 18
      Size = 3
    end
    object cdsRelVencervlDebito: TFMTBCDField
      FieldName = 'vlDebito'
      Precision = 19
      Size = 4
    end
    object cdsRelVencervlCredito: TFMTBCDField
      FieldName = 'vlCredito'
      Precision = 19
      Size = 4
    end
    object cdsRelVencerobsTitulo: TStringField
      FieldName = 'obsTitulo'
      FixedChar = True
      Size = 250
    end
    object cdsRelVenceridGerencial: TIntegerField
      FieldName = 'idGerencial'
    end
    object cdsRelVencervlSaldoAnterior: TFMTBCDField
      FieldName = 'vlSaldoAnterior'
      Precision = 19
      Size = 4
    end
  end
  object dspRelVencer: TDataSetProvider
    DataSet = dmPadrao.sdsRelatorio
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 640
    Top = 112
  end
  object cdsRelConta: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    CommandText = 'EXEC spRelFluxoBanco 9999, 4, '#39'01/09/2011'#39', '#39'S'#39
    Params = <>
    ProviderName = 'dspRelConta'
    Left = 672
    Top = 80
    object cdsRelContaidConta: TIntegerField
      FieldName = 'idConta'
    end
    object cdsRelContadescConta: TStringField
      FieldName = 'descConta'
      FixedChar = True
      Size = 50
    end
    object cdsRelContavlEntrada: TFMTBCDField
      FieldName = 'vlEntrada'
      Precision = 19
      Size = 4
    end
    object cdsRelContavlSaida: TFMTBCDField
      FieldName = 'vlSaida'
      Precision = 19
      Size = 4
    end
    object cdsRelContavlSaldoAtual: TFMTBCDField
      FieldName = 'vlSaldoAtual'
      Precision = 19
      Size = 4
    end
    object cdsRelContavlSaldoBanco: TFMTBCDField
      FieldName = 'vlSaldoBanco'
      Precision = 19
      Size = 4
    end
  end
  object dspRelConta: TDataSetProvider
    DataSet = dmPadrao.sdsRelatorio
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 640
    Top = 80
  end
  object dsEmpresas: TDataSource
    DataSet = cdsEmpresas
    Left = 328
    Top = 416
  end
  object cdsEmpresas: TClientDataSet
    Aggregates = <>
    CommandText = 'SELECT * FROM vCadEmpresaContabil'
    Params = <>
    ProviderName = 'dspEmpresas'
    Left = 240
    Top = 416
    object cdsEmpresasSELECIONADO: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'SELECIONADO'
      Size = 1
    end
    object cdsEmpresasidEmpresa: TIntegerField
      FieldName = 'idEmpresa'
      Required = True
    end
    object cdsEmpresasdescCadEmpresa: TStringField
      FieldName = 'descCadEmpresa'
      Size = 60
    end
    object cdsEmpresasdescAbreviada: TStringField
      FieldName = 'descAbreviada'
      Required = True
      Size = 30
    end
    object cdsEmpresasidCnpjCpf: TStringField
      FieldName = 'idCnpjCpf'
      Size = 18
    end
  end
  object dspEmpresas: TDataSetProvider
    DataSet = sdsEmpresas
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 152
    Top = 416
  end
  object sdsEmpresas: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmPadrao.dbConexao
    Left = 64
    Top = 416
  end
end
