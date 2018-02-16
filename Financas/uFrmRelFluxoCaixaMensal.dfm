inherited FrmRelFluxoCaixaMensal: TFrmRelFluxoCaixaMensal
  Caption = 'Relat'#243'rio de Fluxo de Caixa Mensal'
  ClientHeight = 745
  ClientWidth = 1289
  Position = poDefault
  ExplicitWidth = 1305
  ExplicitHeight = 784
  PixelsPerInch = 96
  TextHeight = 13
  inherited Bevel3: TBevel
    Width = 1289
    ExplicitWidth = 799
  end
  inherited Bevel1: TBevel
    Top = 707
    Width = 1289
    ExplicitTop = 330
    ExplicitWidth = 799
  end
  inherited Bevel5: TBevel
    Width = 1289
    ExplicitWidth = 799
  end
  inherited PanBotoes: TCPanelGradient
    Top = 711
    Width = 1289
    TabOrder = 5
    ExplicitTop = 711
    ExplicitWidth = 1289
    inherited BtnFechar: TCBitBtn
      Left = 398
      Top = 6
      ExplicitLeft = 398
      ExplicitTop = 6
    end
  end
  inherited DBEidEmpresa: TCDBEdit
    TabOrder = 6
  end
  inherited LookdescCadEmpresa: TCLookUp
    TabOrder = 7
  end
  inherited LookdescAbreviada: TCLookUp
    TabOrder = 8
  end
  object CGroupBox1: TCGroupBox [8]
    Left = 8
    Top = 32
    Width = 465
    Height = 144
    TabOrder = 0
    object CLabel3: TCLabel
      Left = 43
      Top = 89
      Width = 38
      Height = 13
      Alignment = taRightJustify
      Caption = 'Data de'
    end
    object CLabel29: TCLabel
      Left = 52
      Top = 113
      Width = 29
      Height = 13
      Alignment = taRightJustify
      Caption = 'Indice'
    end
    object CLabel12: TCLabel
      Left = 28
      Top = 63
      Width = 53
      Height = 13
      Alignment = taRightJustify
      Caption = 'Segmentos'
    end
    object LblCad: TCLabel
      Left = 13
      Top = 15
      Width = 68
      Height = 13
      Alignment = taRightJustify
      Caption = 'Clientes/Forn.'
    end
    object CLabel10: TCLabel
      Left = 20
      Top = 39
      Width = 61
      Height = 13
      Alignment = taRightJustify
      Caption = 'Grupos Emp.'
    end
    object DBEdtPosicao: TCDBEdit
      Left = 87
      Top = 87
      Width = 80
      Height = 19
      BevelKind = bkTile
      BorderStyle = bsNone
      DataField = 'dtPosicao'
      DataSource = dsPadrao
      MaxLength = 10
      TabOrder = 3
      DecimalControl = True
      KeyMode = kmDate
    end
    object DBEidIndice: TCDBEdit
      Left = 87
      Top = 110
      Width = 39
      Height = 19
      BevelKind = bkTile
      BorderStyle = bsNone
      DataField = 'idIndice'
      DataSource = dsPadrao
      TabOrder = 4
      Find = FindIndice
      DecimalControl = True
      KeyMode = kmNormal
    end
    object LookIndice: TCLookUp
      Left = 132
      Top = 110
      Width = 229
      Height = 19
      Alignment = taLeftJustify
      BevelInner = bvSpace
      BevelOuter = bvLowered
      Color = 14149350
      ParentBackground = False
      TabOrder = 5
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
      Left = 87
      Top = 60
      Style.BorderColor = clBtnShadow
      Style.BorderStyle = ebsSingle
      Style.ButtonStyle = btsOffice11
      StyleFocused.BorderStyle = ebsSingle
      TabOrder = 2
      Width = 368
    end
    object DBEidFornecedores: TcxPopupEdit
      Left = 87
      Top = 12
      Style.BorderColor = clBtnShadow
      Style.BorderStyle = ebsSingle
      Style.ButtonStyle = btsOffice11
      StyleFocused.BorderStyle = ebsSingle
      TabOrder = 0
      Width = 368
    end
    object DBEidGrupo: TcxPopupEdit
      Left = 87
      Top = 36
      Style.BorderColor = clBtnShadow
      Style.BorderStyle = ebsSingle
      Style.ButtonStyle = btsOffice11
      StyleFocused.BorderStyle = ebsSingle
      TabOrder = 1
      Width = 368
    end
  end
  object DBRGagrupar: TCDBRadioGroup [9]
    Left = 8
    Top = 230
    Width = 465
    Height = 43
    Caption = 'Op'#231#245'es de Agrupamento'
    Columns = 3
    DataField = 'agrupar'
    DataSource = dsPadrao
    Items.Strings = (
      'Fornecedor'
      'Gerencial'
      'Grupo Empresarial')
    TabOrder = 2
    Values.Strings = (
      'F'
      'G'
      'E')
  end
  object DBRGtpFluxo: TCDBRadioGroup [10]
    Left = 10
    Top = 184
    Width = 465
    Height = 40
    Columns = 3
    DataField = 'tpFluxo'
    DataSource = dsPadrao
    Items.Strings = (
      'Cr'#233'ditos'
      'D'#233'bitos'
      'Ambos')
    TabOrder = 1
    Values.Strings = (
      'C'
      'D'
      'A')
  end
  inherited DBEidCadEmpresa: TCDBEdit
    TabOrder = 9
  end
  object CGroupBox2: TCGroupBox [12]
    Left = 8
    Top = 351
    Width = 465
    Height = 68
    Caption = 'Op'#231#245'es de Consolida'#231#227'o'
    TabOrder = 4
    object CLabel1: TCLabel
      Left = 14
      Top = 43
      Width = 46
      Height = 13
      Alignment = taRightJustify
      Caption = 'Empresas'
    end
    object DBCKconsolidafilial: TCDBCheckBox
      Left = 328
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
  object panPopupFornecedores: TPanel [13]
    Left = 414
    Top = 34
    Width = 663
    Height = 223
    BevelOuter = bvNone
    Color = 14671839
    ParentBackground = False
    TabOrder = 10
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
      TabOrder = 0
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
      TabOrder = 1
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
      TabOrder = 2
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
      TabOrder = 3
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
      TabOrder = 4
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
      TabOrder = 5
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
      TabOrder = 6
      Width = 121
    end
  end
  object panSegmento: TPanel [14]
    Left = 672
    Top = 184
    Width = 474
    Height = 223
    BevelOuter = bvNone
    Color = 14671839
    ParentBackground = False
    TabOrder = 11
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
      TabOrder = 0
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
      TabOrder = 1
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
      TabOrder = 2
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
      TabOrder = 3
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
      TabOrder = 4
      Width = 66
    end
    object cbNomeSegmento: TcxCheckBox
      Left = 240
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
      TabOrder = 5
      Width = 121
    end
  end
  object panGrupos: TPanel [15]
    Left = 679
    Top = 332
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
      TabOrder = 0
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
      TabOrder = 1
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
      TabOrder = 2
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
      TabOrder = 3
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
      TabOrder = 4
      Width = 66
    end
    object cbDescGrupo: TcxCheckBox
      Left = 240
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
      TabOrder = 5
      Width = 121
    end
  end
  object CGroupBox3: TCGroupBox [16]
    Left = 8
    Top = 279
    Width = 465
    Height = 66
    Caption = 'Op'#231#245'es de Impress'#227'o'
    TabOrder = 3
    object DBCKmostraContas: TCDBCheckBox
      Left = 111
      Top = 17
      Width = 118
      Height = 17
      Caption = 'Contas Banc'#225'rias?'
      DataField = 'mostraContas'
      DataSource = dsPadrao
      TabOrder = 1
      ValueChecked = 'S'
      ValueUnchecked = 'N'
    end
    object DBCKmostraIndice: TCDBCheckBox
      Left = 9
      Top = 17
      Width = 60
      Height = 17
      Caption = #205'ndices?'
      DataField = 'mostraIndice'
      DataSource = dsPadrao
      TabOrder = 0
      ValueChecked = 'S'
      ValueUnchecked = 'N'
    end
    object DBCKmostraVencidos: TCDBCheckBox
      Left = 226
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
    object DBCKtpPrevisao: TCDBCheckBox
      Left = 111
      Top = 40
      Width = 114
      Height = 17
      Caption = 'Previs'#245'es no Final?'
      DataField = 'tpPrevisao'
      DataSource = dsPadrao
      TabOrder = 5
      ValueChecked = 'S'
      ValueUnchecked = 'N'
    end
    object DBCKgrupoGerencial: TCDBCheckBox
      Left = 9
      Top = 40
      Width = 101
      Height = 17
      Caption = 'Grupo Gerencial?'
      DataField = 'grupoGerencial'
      DataSource = dsPadrao
      TabOrder = 4
      ValueChecked = 'S'
      ValueUnchecked = 'N'
    end
    object DBCKmostraAdiantamento: TCDBCheckBox
      Left = 352
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
      Left = 226
      Top = 40
      Width = 127
      Height = 17
      Caption = 'Imprime Cabe'#231'alho?'
      DataField = 'impCabecalho'
      DataSource = dsPadrao
      TabOrder = 6
      ValueChecked = 'S'
      ValueUnchecked = 'N'
    end
    object DBCKsepararReceitas: TCDBCheckBox
      Left = 352
      Top = 40
      Width = 103
      Height = 17
      Caption = 'Separar Receitas?'
      DataField = 'separarReceitas'
      DataSource = dsPadrao
      TabOrder = 7
      ValueChecked = 'S'
      ValueUnchecked = 'N'
    end
  end
  object DBEvlAcumulado: TCDBEdit [17]
    Left = 520
    Top = 294
    Width = 80
    Height = 19
    BevelKind = bkTile
    BorderStyle = bsNone
    DataField = 'vlAcumulado'
    DataSource = dsPadrao
    MaxLength = 10
    TabOrder = 13
    Visible = False
    DecimalControl = True
    KeyMode = kmNormal
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
    Left = 633
    Top = 556
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
    Left = 600
    Top = 32
    Bitmap = {
      494C010107000900140010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E8E8E8FFBFBFBFFFF4F4
      F4FF00000000F9F9F9FFDFDFDFFFCACACAFFBEBEBEFFBCBCBCFFB6B6B6FF9898
      98FFA5A5A5FFA2A2A2FF00000000000000000000000000000000000000000000
      000049455100978683009F7F7700643D3300A97D7300A97D7300643D33000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000824B4B00824B4B00A64B4B00A94D4D004E1E1F0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000EAEAEAFFE1E1E0FF9F9E9EFF7F7F
      7FFF959595FF919191FFBCBDBDFFDCDEDDFFEBEDEEFFE2E3E4FFC5C5C5FFB7B7
      B7FF9C9C9CFFABABABFF7F7F7FFFBCBCBCFF0000000000000000000000004945
      51007A717100DED3D300F7E6E700FCE8E5002B64D1003D79E70070616100B1AC
      AE00A47D73005A484B0000000000000000000000000000000000824B4B00824B
      4B00B64F5000C24F5000C54D4E00B24D4E004E1E1F00824B4B00824B4B00824B
      4B00824B4B00824B4B00824B4B000000000000000000BFBFC0FFAFABA8FFB1AB
      A9FFB1B1B2FFB1B0B0FFB1B1B0FFB1B0B1FFB1B0B1FFB1B0B0FFB1B1B0FFB0B0
      B0FFADADAEFFB8B8B8FF0000000000000000E9E9E9FF939392FFC1C1C0FF9E9E
      9DFF888A89FFC3BBB8FFC0A79FFFCBAA9EFFD5B7ACFFDABCB1FFCFCAC9FFD8D8
      D8FFCDCDCDFFC8C8C8FFD9D9D9FFB8B8B8FF0000000000000000494551007D74
      74006C646B00E5DADE00FAE7E600FDF0F0002961CC004C7CE10084625F00F7E6
      E700F9EAEC005A484B0000000000000000000000000000000000824B4B00D458
      5900CB555600C9545500C9525300B74F52004E1E1F00FE8B8C00FB9A9C00F8AA
      AB00F7B5B600F7B5B600824B4B000000000000000000B8B7B6FFF0E1D6FFF0E1
      D6FFECE3DDFFECE3DCFFEDE5DEFFEEE6DFFFEEE6DFFFEEE6E0FFEEE6E1FFEDE6
      E1FFEFE8E3FFE9E3E0FF0000000000000000E7E7E7FF9E9E9FFFA1A2A1FFC5C8
      C7FF937064FFB3552EFFB86F4EFFC4937DFFDCBEB0FFDCC1B3FFC7C6C6FFC0C0
      C0FFCBCBCBFFD1D1D1FFDBDBDBFFD8D8D8FF0000000049455100887F7E007D74
      74006A5F6200E0D5D600FAE7E600FDF0F0002455B4004C78D4006A5F6200F7E6
      E700FAEAEB005A484B0000000000000000000000000000000000824B4B00D75C
      5D00D05A5B00CF595A00CF575800BD5356004E1E1F0023B54A0013C1480016BD
      48000CBC4100F7B5B600824B4B000000000000000000BABABAFFE4DDD8FFE5DB
      D5FFE3E3E5FFE2E1E2FFE3E2E1FFE3E2E2FFE3E2E2FFE3E2E2FFE2E2E1FFE2E1
      E0FFE3E2E2FFDFDFDFFF0000000000000000EEEEEEFFB2B2B1FF7E7F7EFFDADB
      DCFFA29087FFBE7B5BFFC5896BFFD4A995FFE2CCBFFFE7D0C5FFC0BBB8FFB1B2
      B3FFE2E2E2FFE1E2E3FFE7E8E8FFAEAEAEFF0000000049455100887F7E007B6D
      6D0041435000EADEE200FAEDEF00FAEBEE001F4284001F3E780049455100F7E6
      E700FAEBEE005A484B0000000000000000000000000000000000824B4B00DD63
      6400D75F6000D55E5F00D55C5D00C2575A004E1E1F002AB44D001CBF4C001EBC
      4C0013BC4500F7B5B600824B4B000000000000000000B9BABAFFE8E2DCFFE7E0
      DAFFE4E4E3FFE5E1DEFFE6E6E7FFE6E6E6FFE6E7E7FFE6E7E7FFE5E6E5FFE5E5
      E5FFE6E6E6FFE2E2E2FF0000000000000000F8F8F8FFCACAC9FF7B7C7BFFC6C6
      C6FFC8C7C6FFC38568FFCE9173FFDAB09AFFE9D3C7FFEED9CEFFDBBAABFFCFC1
      B8FFD6DEE1FFB87458FFF9F6F5FF0000000000000000494551007D7474006A5F
      62004143500036292F00FBEEEF00FEF0F800B0B1B20096858400F6E5E600FAEA
      EB00FDF0F1005A484B0000000000000000000000000000000000824B4B00E368
      6900DD656600DA636400DE666700C6595B004E1E1F0026B1490016BC48001BBB
      490010BB4300F7B5B600824B4B000000000000000000C6C6C6FFDFD6CFFFE5D8
      CDFFE0D6D0FFE4D6CDFFE5DBD5FFE4DBD4FFE8E8E8FFE8E8E8FFE7E7E7FFE6E6
      E6FFE7E7E7FFE3E3E3FF0000000000000000FDFDFDFFD9D9DAFF828382FFADAF
      ADFFE3E7E9FFAB6F51FFCB8E70FFE4B9A4FFECD6C9FFEBD6CDFFE0BCA8FFD498
      7BFFD29A7EFFC66F49FFFDF9F8FF0000000000000000494551006C616500333D
      54001B3665002034580053474E00FDF2F300AE918C009ED8D30084625F00FEFD
      FD00FDF1F500948584001A315F00000000000000000000000000824B4B00EB6D
      6E00E2676800E67E7F00FAD3D400CC6E70004E1E1F00A5D8970050D16F0042C9
      66002DC75800F7B5B600824B4B0000000000FEFEFEFFE0D7D0FFD7CAC2FFE8D7
      CAFFE6DCD6FFE5DCD6FFE4D6CCFFE7DAD0FFE6DDD7FFE8E5E2FFE9EAEAFFE8E8
      E8FFE9E9E9FFE5E5E5FF000000000000000000000000D4D4D4FF9A9B9AFF9FA0
      9FFFD4D7D9FFA57660FFCE9071FFD6AC97FFEDD6CBFFEBD6CDFFE3BEADFFD29B
      7EFFD19172FFC86E46FFFCF9F8FF0000000000000000494551003D4251001934
      65001B3665001D3B6800243E6C00B1ACAE00887F7E009ED8D30084625F00FEFD
      FD0080777D001A315F0000000000000000000000000000000000824B4B00F273
      7400E96C6D00EB818200FCD1D300CF6E70004E1E1F00FFF2CC00FFFFD700FFFF
      D400E6FCC700F7B5B600824B4B0000000000FEFCFBFFDCCCC1FFE1D3C8FFE6D6
      CBFFE9E2DDFFE6E0DCFFE3D7CFFFE7DAD0FFE5D8CEFFE9E3E0FFEBEDEEFFEAEA
      EAFFEBEBEBFFE7E7E7FF000000000000000000000000E2E2E2FFACACACFF9C9D
      9CFFBFC2C3FFA47A65FFD09272FFD9AF9AFFEAD3C7FFEFDAD0FFE4BFADFFD59C
      7FFFCF9072FFC96E45FFFCF9F8FF00000000000000004446540019315D001D39
      67001D3866001D3B68001D3A68002E3B5600DBD2D200FEF8FC00FEFDFD004143
      50001A315F000000000000000000000000000000000000000000824B4B00F878
      7900F0757600EE727300F0737400D16566004E1E1F00FCEFC700FFFFD500FFFF
      D300FFFFD700F7B5B600824B4B0000000000FBF5F0FFDDCDC1FFE4DBD6FFE4DB
      D2FFE6DCD4FFE6DBD3FFE9E1DBFFE9E7E5FFE4D9D0FFEAE0D9FFEDECECFFECEC
      EDFFEDEDEDFFE8E8E8FF000000000000000000000000FAFAFAFFB3B3B3FFA6A7
      A6FFA9ADAEFFA9785FFFC98A6CFFD6AB95FFF0D7CCFFF4DED3FFE8C3B2FFDAA1
      83FFD49575FFC9734DFFFCF9F8FF00000000000000001D325C001B3665001D38
      6600223D6B00203D6C001E3C6A00203E760049455100D6D4D200050206001A31
      5F00000000000000000000000000000000000000000000000000824B4B00FE7F
      8000F77A7B00F6797A00F7777900D76B6B004E1E1F00FCEFC700FFFFD500FFFF
      D300FFFFD500F7B5B600824B4B0000000000F5F0ECFFE2D2C5FFE6DBD4FFE6D8
      D1FFE7DDD5FFE7DCD4FFEBE1DAFFEBE6E3FFE5D9D1FFEBE2DBFFEFEEEEFFEFEF
      F0FFEFEFEFFFE9E9E9FF00000000000000000000000000000000E2E1E1FFDDDC
      DDFF949190FFB36C49FFA2745DFFAC9185FFBBADA7FFC0B5AFFFB6A198FFAC81
      6EFFAE7457FFBF6641FFFDFAF8FF0000000000000000000000001A3565001B36
      65001D3B6800223D6B00244170002441700023416E00203458001A315F000000
      0000000000000000000000000000000000000000000000000000824B4B00FF83
      8400FC7F8000FB7E7F00FE7F8000DA6E6F004E1E1F00FCEFC700FFFFD500FFFF
      D300FFFFD500F7B5B600824B4B0000000000FCFBFAFFE7D8CDFFE3D5CBFFE8D9
      CEFFEEE8E2FFEBE7E4FFE7DBD3FFE9DCD2FFE8DBD0FFEEEAE6FFF2F3F4FFF4F4
      F4FFF5F5F5FFEDEDEDFF00000000000000000000000000000000FEFEFEFFF4F4
      F4FF857067FFA1A4A5FFB9BCBEFFCBCCCCFFD6D7D8FFDEDDDDFFD3D5D4FFC2C6
      C7FFB0B5B6FF897D78FFC6C3C2FF000000000000000000000000000000001B36
      6500234075001E3C6A002441700025417300203E76001A315F00000000000000
      0000000000000000000000000000000000000000000000000000824B4B00FF88
      8900FF828300FF818200FF828300E07374004E1E1F00FCEFC700FFFFD500FFFF
      D300FFFFD500F7B5B600824B4B000000000000000000CCC4BFFFE4DAD5FFEDDE
      D3FFEDE3DBFFECE3DBFFE8DAD2FFEDE0D8FFEFE9E5FFF0EFEDFFDADBDBFFD0D0
      D0FFE7E7E7FFEBEBEBFF0000000000000000000000000000000000000000FDFD
      FDFFAAABACFFB2A29AFFC8B9B3FFC6C6C5FFDBDADAFFBEBCBCFFC9C8C8FFD1D1
      D1FFC6BEB9FFBEBCBBFFA5A5A5FF000000000000000000000000000000000000
      0000223D6B001E3C6A0024417000223D6B001A315F0000000000000000000000
      0000000000000000000000000000000000000000000000000000824B4B00824B
      4B00E2757600FE818200FF868700E57677004E1E1F00FAEBC500FCFBD100FCFB
      CF00FCFBD100F7B5B600824B4B000000000000000000BDBEBFFFEDE7E2FFF2E9
      E3FFEAE1DCFFEBDFD6FFEFE9E6FFEEE7E2FFF7F9F9FFF9FAFAFFCFCECEFFCDCD
      CDFFCECECEFFE2E2E2FF0000000000000000000000000000000000000000FEFE
      FEFFDDDFDFFF928F8DFFBDBCBDFFC0C0C0FFC4C4C4FFD9D9D9FFD5D5D5FFD7D7
      D7FFB1ADABFFD1D0D1FFC9C9CAFF000000000000000000000000000000000000
      00000000000025407400203E76001A315F000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000824B4B009C565700CB6C6D00CF6E6E004E1E1F00824B4B00824B4B00824B
      4B00824B4B00824B4B00824B4B000000000000000000B7B7B7FFF3F2F2FFFAF9
      F8FFF5F5F5FFF6F3F2FFF9FAFBFFF9F9F9FFFCFCFCFFE9E9E9FFCFCFCFFFF4F4
      F4FFFAFAFAFFFEFEFEFF00000000000000000000000000000000000000000000
      0000FDFDFCFFF1F0EFFFD3D4D4FFA4A4A4FFC0C0C0FFD5D5D5FFD8D8D8FFE1E0
      E1FFF3F3F4FFF4F3F2FF00000000000000000000000000000000000000000000
      000000000000000000001A315F00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000824B4B00824B4B004E1E1F0000000000000000000000
      00000000000000000000000000000000000000000000C5C5C5FFF4F4F3FFFEFC
      FAFFFCFDFDFFFCFDFDFFFBFBFCFFFDFDFEFFF6F6F6FFE5E5E5FFFBFBFBFFFEFE
      FEFF000000000000000000000000000000000000000000000000000000000000
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
    Left = 568
    Top = 32
    inherited actGerar: TAction
      Tag = 1
    end
  end
  inherited dspRelatorio: TDataSetProvider
    Left = 736
    Top = 160
  end
  inherited cdsRelatorio: TClientDataSet
    CommandText = 
      'EXEC spRelFluxoMensal 999, 1, 0, NULL, '#39'E'#39', '#39'A'#39', '#39'F'#39','#39'N'#39', '#39'S'#39','#39#39 +
      ','#39#39','#39#39', '#39'S'#39', '#39'S'#39
    OnCalcFields = cdsRelatorioCalcFields
    Left = 768
    Top = 160
    object cdsRelatorioid: TIntegerField
      FieldName = 'id'
    end
    object cdsRelatorioDescricao: TStringField
      FieldName = 'Descricao'
      FixedChar = True
      Size = 50
    end
    object cdsRelatoriomes1: TFMTBCDField
      FieldName = 'mes1'
      Precision = 19
      Size = 4
    end
    object cdsRelatoriomes2: TFMTBCDField
      FieldName = 'mes2'
      Precision = 19
      Size = 4
    end
    object cdsRelatoriomes3: TFMTBCDField
      FieldName = 'mes3'
      Precision = 19
      Size = 4
    end
    object cdsRelatoriomes4: TFMTBCDField
      FieldName = 'mes4'
      Precision = 19
      Size = 4
    end
    object cdsRelatoriomes5: TFMTBCDField
      FieldName = 'mes5'
      Precision = 19
      Size = 4
    end
    object cdsRelatoriomes6: TFMTBCDField
      FieldName = 'mes6'
      Precision = 19
      Size = 4
    end
    object cdsRelatoriomes7: TFMTBCDField
      FieldName = 'mes7'
      Precision = 19
      Size = 4
    end
    object cdsRelatoriomes8: TFMTBCDField
      FieldName = 'mes8'
      Precision = 19
      Size = 4
    end
    object cdsRelatoriomes9: TFMTBCDField
      FieldName = 'mes9'
      Precision = 19
      Size = 4
    end
    object cdsRelatoriomes10: TFMTBCDField
      FieldName = 'mes10'
      Precision = 19
      Size = 4
    end
    object cdsRelatoriomes11: TFMTBCDField
      FieldName = 'mes11'
      Precision = 19
      Size = 4
    end
    object cdsRelatoriomes12: TFMTBCDField
      FieldName = 'mes12'
      Precision = 19
      Size = 4
    end
    object cdsRelatoriovlSaldoAnterior: TCurrencyField
      FieldKind = fkInternalCalc
      FieldName = 'vlSaldoAnterior'
    end
    object cdsRelatorioordem: TStringField
      FieldName = 'ordem'
      FixedChar = True
      Size = 1
    end
    object cdsRelatorioordemGrupo: TSmallintField
      FieldName = 'ordemGrupo'
    end
    object cdsRelatorioidGrupoGerencial: TIntegerField
      FieldName = 'idGrupoGerencial'
    end
    object cdsRelatoriodescGrupoGerencial: TStringField
      FieldName = 'descGrupoGerencial'
      Size = 60
    end
  end
  inherited frxDataset: TfrxDBDataset
    FieldAliases.Strings = (
      'id=id'
      'Descricao=Descricao'
      'mes1=mes1'
      'mes2=mes2'
      'mes3=mes3'
      'mes4=mes4'
      'mes5=mes5'
      'mes6=mes6'
      'mes7=mes7'
      'mes8=mes8'
      'mes9=mes9'
      'mes10=mes10'
      'mes11=mes11'
      'mes12=mes12'
      'vlSaldoAnterior=vlSaldoAnterior'
      'ordem=ordem'
      'ordemGrupo=ordemGrupo'
      'idGrupoGerencial=idGrupoGerencial'
      'descGrupoGerencial=descGrupoGerencial')
    Left = 704
    Top = 160
  end
  inherited dsPadrao: TDataSource
    Left = 664
    Top = 160
  end
  inherited cdsPadrao: TClientDataSet
    AfterInsert = cdsPadraoAfterInsert
    Left = 632
    Top = 160
    object cdsPadraodtPosicao: TDateTimeField
      FieldName = 'dtPosicao'
    end
    object cdsPadraoidIndice: TIntegerField
      FieldName = 'idIndice'
    end
    object cdsPadraoagrupar: TStringField
      FieldName = 'agrupar'
      Size = 1
    end
    object cdsPadraotpFluxo: TStringField
      FieldName = 'tpFluxo'
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
    object cdsPadraotpPrevisao: TStringField
      FieldName = 'tpPrevisao'
      Size = 1
    end
    object cdsPadraointegraSaldo: TStringField
      FieldName = 'integraSaldo'
      Size = 1
    end
    object cdsPadraogrupoGerencial: TStringField
      FieldName = 'grupoGerencial'
      Size = 1
    end
    object cdsPadraomostraAdiantamento: TStringField
      FieldName = 'mostraAdiantamento'
      Size = 1
    end
    object cdsPadraovlAcumulado: TCurrencyField
      FieldName = 'vlAcumulado'
    end
    object cdsPadraoimpCabecalho: TStringField
      FieldName = 'impCabecalho'
    end
    object cdsPadraosepararReceitas: TStringField
      FieldName = 'separarReceitas'
      Size = 1
    end
  end
  inherited frxHTMLExport1: TfrxHTMLExport
    Top = 96
  end
  inherited frxTIFFExport1: TfrxTIFFExport
    Left = 600
    Top = 64
  end
  inherited dspLookUp: TDataSetProvider
    Left = 568
    Top = 160
  end
  inherited cdsLookUp: TClientDataSet
    Left = 600
    Top = 160
  end
  inherited frxRTFExport1: TfrxRTFExport
    Left = 632
    Top = 64
  end
  inherited frxJPEGExport1: TfrxJPEGExport
    Left = 568
  end
  inherited FindEmpresa: TCFind
    Top = 24
  end
  object cdsRelConta: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    CommandText = 'EXEC spRelFluxoBanco 9999, 4, '#39'01/09/2011'#39', '#39'S'#39
    Params = <>
    ProviderName = 'dspRelConta'
    Left = 768
    Top = 64
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
    Left = 736
    Top = 64
  end
  object frxDBRelConta: TfrxDBDataset
    UserName = 'frxDBRelConta'
    CloseDataSource = False
    FieldAliases.Strings = (
      'idConta=idConta'
      'descConta=descConta'
      'vlEntrada=vlEntrada'
      'vlSaida=vlSaida'
      'vlSaldoAtual=vlSaldoAtual'
      'vlSaldoBanco=vlSaldoBanco')
    OpenDataSource = False
    DataSet = cdsRelConta
    BCDToCurrency = False
    Left = 704
    Top = 64
  end
  object cdsRelVencido: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    CommandText = 
      'EXEC spRelFluxoVencido 9999, 4, 0, '#39'01/09/2011'#39','#39'N'#39', '#39'S'#39',  0, '#39'S' +
      #39
    Params = <>
    ProviderName = 'dspRelVencido'
    Left = 768
    Top = 128
    object cdsRelVencidoidDocSerie: TStringField
      FieldName = 'idDocSerie'
      Required = True
      FixedChar = True
      Size = 5
    end
    object cdsRelVencidonrTitulo: TStringField
      FieldName = 'nrTitulo'
      Required = True
      FixedChar = True
    end
    object cdsRelVencidoidParcela: TSmallintField
      FieldName = 'idParcela'
      Required = True
    end
    object cdsRelVencidoidCadGeral: TIntegerField
      FieldName = 'idCadGeral'
      Required = True
    end
    object cdsRelVencidodescAbreviada: TStringField
      FieldName = 'descAbreviada'
      Required = True
      FixedChar = True
      Size = 30
    end
    object cdsRelVencidodtVencimento: TSQLTimeStampField
      FieldName = 'dtVencimento'
      Required = True
    end
    object cdsRelVencidoIndice: TStringField
      FieldName = 'Indice'
      FixedChar = True
      Size = 10
    end
    object cdsRelVencidoqtIndice: TFMTBCDField
      FieldName = 'qtIndice'
      Precision = 19
      Size = 4
    end
    object cdsRelVencidovlDebito: TFMTBCDField
      FieldName = 'vlDebito'
      Precision = 19
      Size = 4
    end
    object cdsRelVencidovlCredito: TFMTBCDField
      FieldName = 'vlCredito'
      Precision = 19
      Size = 4
    end
    object cdsRelVencidoobsTitulo: TStringField
      FieldName = 'obsTitulo'
      FixedChar = True
      Size = 250
    end
    object cdsRelVencidovlSaldoVencido: TFMTBCDField
      FieldName = 'vlSaldoVencido'
      Precision = 19
      Size = 4
    end
    object cdsRelVencidovlSaldoAnterior: TFMTBCDField
      FieldName = 'vlSaldoAnterior'
      Precision = 19
      Size = 4
    end
  end
  object dspRelVencido: TDataSetProvider
    DataSet = dmPadrao.sdsRelatorio
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 736
    Top = 128
  end
  object frxDBRelVencido: TfrxDBDataset
    UserName = 'frxDBRelVencido'
    CloseDataSource = False
    FieldAliases.Strings = (
      'idDocSerie=idDocSerie'
      'nrTitulo=nrTitulo'
      'idParcela=idParcela'
      'idCadGeral=idCadGeral'
      'descAbreviada=descAbreviada'
      'dtVencimento=dtVencimento'
      'Indice=Indice'
      'qtIndice=qtIndice'
      'vlDebito=vlDebito'
      'vlCredito=vlCredito'
      'obsTitulo=obsTitulo'
      'vlSaldoVencido=vlSaldoVencido'
      'vlSaldoAnterior=vlSaldoAnterior')
    OpenDataSource = False
    DataSet = cdsRelVencido
    BCDToCurrency = False
    Left = 704
    Top = 128
  end
  object cdsRelFluxoProduto: TClientDataSet
    Aggregates = <>
    CommandText = 'EXEC spRelFluxoProduto 1, 1, '#39'N'#39', '#39'S'#39
    Params = <>
    ProviderName = 'dspRelatorio'
    Left = 768
    Top = 96
    object cdsRelatorioidIndice: TSmallintField
      FieldName = 'idIndice'
    end
    object cdsRelatoriodescIndice: TStringField
      FieldName = 'descIndice'
      FixedChar = True
      Size = 30
    end
    object cdsRelatoriodescSimbolo: TStringField
      FieldName = 'descSimbolo'
      FixedChar = True
      Size = 10
    end
    object cdsRelatoriodtLancamento: TSQLTimeStampField
      FieldName = 'dtLancamento'
    end
    object cdsRelFluxoProdutoqtEstoque: TFMTBCDField
      FieldName = 'qtEstoque'
      Precision = 10
      Size = 3
    end
    object cdsRelFluxoProdutovlEstoque: TFMTBCDField
      FieldName = 'vlEstoque'
      Precision = 19
      Size = 4
    end
    object cdsRelFluxoProdutovlLancamento: TFMTBCDField
      FieldName = 'vlLancamento'
      Precision = 19
      Size = 4
    end
  end
  object dspRelFluxoProduto: TDataSetProvider
    DataSet = dmPadrao.sdsRelatorio
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 736
    Top = 96
  end
  object frxDBRelFluxoProduto: TfrxDBDataset
    UserName = 'frxDBRelFluxoProduto'
    CloseDataSource = False
    OpenDataSource = False
    DataSet = cdsRelFluxoProduto
    BCDToCurrency = False
    Left = 704
    Top = 96
  end
  object FindIndice: TCFind
    SelectClause.Strings = (
      'SELECT idIndice, descIndice, descSimbolo From Indice')
    OrderByClause.Strings = (
      'ORDER BY descIndice')
    FindField = 'descIndice'
    SQLConnection = dmPadrao.dbConexao
    ValueField = 'idIndice'
    CarregaDados = True
    CollumNames.Strings = (
      'C'#243'digo'
      'Descri'#231#227'o'
      'Simbolo')
    TypeFind = fFindNormal
    Left = 800
    Top = 65
  end
  object frxRel: TfrxReport
    Version = '5.1.5'
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
    ReportOptions.LastChange = 41730.459779930560000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'var'
      
        '  vlSaldoAnt, SaldoMes2, SaldoMes3, SaldoMes4, SaldoMes5, SaldoM' +
        'es6, SaldoMes7, SaldoMes8, SaldoMes9, SaldoMes10, SaldoMes11, Sa' +
        'ldoMes12,    '
      
        '  vlSaldoAtual, Atual2, Atual3, Atual4, Atual5, Atual6, Atual7, ' +
        'Atual8, Atual9, Atual10, Atual11, Atual12, TotalSaldo, TotalAtua' +
        'l: Extended;'
      '                                                 '
      'procedure FooterVencidosOnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  '
      'end;'
      ''
      ''
      'procedure FooterRelMensalOnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  vlSaldoAtual :=  0;'
      '//   if ((trim(Memo73.text) = '#39#39') OR (vlSaldoAnt = 0)) then'
      '//  begin'
      
        '  //  vlSaldoAnt := (SUM(<frxDBRelConta."vlEntrada">,DetailDataC' +
        'onta) + SUM(<frxDBRelConta."vlSaida">,DetailDataConta)) + SUM(<f' +
        'rxDBRelConta."vlSaldoAtual">,DetailDataConta);'
      
        '//    vlSaldoAnt := <frxDataset."vlSaldoAnterior">              ' +
        '  '
      '//  end;        '
      
        '  //*******Soma do Saldo Atual e do Saldo Anterior de cada mes**' +
        '**********'
      
        '  vlSaldoAtual := (vlSaldoAnt + SUM(<frxDataset."mes1">,DetailDa' +
        'taRelMensal));'
      '   SaldoMes2 := vlSaldoAtual;'
      
        '  Atual2 := (SaldoMes2 + SUM(<frxDataset."mes2">,DetailDataRelMe' +
        'nsal));'
      '   SaldoMes3 := Atual2;'
      
        '  Atual3 := (SaldoMes3 + SUM(<frxDataset."mes3">,DetailDataRelMe' +
        'nsal));'
      '   SaldoMes4 := Atual3;'
      
        '  Atual4 := (SaldoMes4 + SUM(<frxDataset."mes4">,DetailDataRelMe' +
        'nsal));'
      '   SaldoMes5 := Atual4;'
      
        '  Atual5 := (SaldoMes5 + SUM(<frxDataset."mes5">,DetailDataRelMe' +
        'nsal));'
      '   SaldoMes6 := Atual5;'
      
        '  Atual6 := (SaldoMes6 + SUM(<frxDataset."mes6">,DetailDataRelMe' +
        'nsal));'
      '   SaldoMes7 := Atual6;'
      
        '  Atual7 := (SaldoMes7 + SUM(<frxDataset."mes7">,DetailDataRelMe' +
        'nsal));'
      
        '   SaldoMes8 := Atual7;                                         ' +
        '                                     '
      
        '  Atual8 := (SaldoMes8 + SUM(<frxDataset."mes8">,DetailDataRelMe' +
        'nsal));'
      '   SaldoMes9 := Atual8;'
      
        '  Atual9 := (SaldoMes9 + SUM(<frxDataset."mes9">,DetailDataRelMe' +
        'nsal));'
      '   SaldoMes10 := Atual9;'
      
        '  Atual10 := (SaldoMes10 + SUM(<frxDataset."mes10">,DetailDataRe' +
        'lMensal));'
      '   SaldoMes11 := Atual10;'
      
        '  Atual11 := (SaldoMes11 + SUM(<frxDataset."mes11">,DetailDataRe' +
        'lMensal));'
      '   SaldoMes12 := Atual11;'
      
        '  Atual2 := (SaldoMes12 + SUM(<frxDataset."mes12">,DetailDataRel' +
        'Mensal));'
      
        '  // Soma da linha do Saldo Atual(TotalAtual) e do Saldo Anterio' +
        'r(TotalSaldo)                                                   ' +
        '                                                                ' +
        '                                                                ' +
        '                          '
      
        '  TotalAtual := (vlSaldoAtual + SaldoMes3 + atual3 + atual4 + at' +
        'ual5 + atual6 + atual7 + atual8 + atual9 + atual10 + atual11 + (' +
        'Atual11 + SUM(<frxDataset."mes12">,DetailDataRelMensal)));'
      
        '  TotalSaldo := (vlSaldoAnt + SaldoMes2 + SaldoMes3 + SaldoMes4 ' +
        '+ SaldoMes5 + SaldoMes6 + SaldoMes7 + SaldoMes8 + SaldoMes9 + Sa' +
        'ldoMes10 + SaldoMes11 + SaldoMes12);'
      ''
      '      '
      'end;'
      ''
      'procedure Memo57OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      
        '  if <frxDataset."Descricao"> = '#39'*** PREVIS'#213'ES ***'#39' then        ' +
        '              '
      '    Memo57.Font.Style := fsBold  '
      '  else'
      '    Memo57.Font.Style := 0;          '
      'end;'
      ''
      'procedure MasterDataaVencerOnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  vlSaldoAnt := <frxDataset."vlSaldoAnterior">;  '
      'end;'
      ''
      
        'begin                                                           ' +
        '                                                                ' +
        '                                                                ' +
        '                '
      ''
      '  '
      'end.')
    OnAfterPrint = frxRelAfterPrint
    Left = 800
    Top = 96
    Datasets = <
      item
        DataSet = frxDataset
        DataSetName = 'frxDataset'
      end
      item
        DataSet = frxDBAdiantamento
        DataSetName = 'frxDBAdiantamento'
      end
      item
        DataSet = frxDBRelConta
        DataSetName = 'frxDBRelConta'
      end
      item
        DataSet = frxDBRelFluxoProduto
        DataSetName = 'frxDBRelFluxoProduto'
      end
      item
        DataSet = frxDBRelVencido
        DataSetName = 'frxDBRelVencido'
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
      LargeDesignHeight = True
      object DetailDataIndice: TfrxDetailData
        FillType = ftBrush
        Height = 15.118120000000000000
        Top = 336.378170000000000000
        Width = 1122.520410000000000000
        DataSet = frxDBRelFluxoProduto
        DataSetName = 'frxDBRelFluxoProduto'
        RowCount = 0
        object Memo2: TfrxMemoView
          Left = 96.377952760000000000
          Width = 41.574830000000000000
          Height = 15.118120000000000000
          DataField = 'idIndice'
          DataSet = frxDBRelFluxoProduto
          DataSetName = 'frxDBRelFluxoProduto'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBRelFluxoProduto."idIndice"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo12: TfrxMemoView
          Left = 146.645669290000000000
          Top = 0.228200000000015000
          Width = 217.322834650000000000
          Height = 15.118120000000000000
          DataField = 'descIndice'
          DataSet = frxDBRelFluxoProduto
          DataSetName = 'frxDBRelFluxoProduto'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBRelFluxoProduto."descIndice"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo14: TfrxMemoView
          Left = 502.740111100000000000
          Top = 0.212430000000040000
          Width = 86.929155830000000000
          Height = 15.118120000000000000
          DataField = 'vlLancamento'
          DataSet = frxDBRelFluxoProduto
          DataSetName = 'frxDBRelFluxoProduto'
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
            '[frxDBRelFluxoProduto."vlLancamento"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo16: TfrxMemoView
          Left = 621.960598190000000000
          Top = 0.212430000000040000
          Width = 71.811070000000000000
          Height = 15.118120000000000000
          DataField = 'dtLancamento'
          DataSet = frxDBRelFluxoProduto
          DataSetName = 'frxDBRelFluxoProduto'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBRelFluxoProduto."dtLancamento"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo5: TfrxMemoView
          Left = 823.393693460000000000
          Width = 94.488250000000000000
          Height = 15.118120000000000000
          DataField = 'vlEstoque'
          DataSet = frxDBRelFluxoProduto
          DataSetName = 'frxDBRelFluxoProduto'
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
            '[frxDBRelFluxoProduto."vlEstoque"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo19: TfrxMemoView
          Left = 421.188903150000000000
          Width = 52.913420000000000000
          Height = 15.118120000000000000
          DataField = 'descSimbolo'
          DataSet = frxDBRelFluxoProduto
          DataSetName = 'frxDBRelFluxoProduto'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBRelFluxoProduto."descSimbolo"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo18: TfrxMemoView
          Left = 716.510222580000000000
          Top = 1.006131299999990000
          Width = 89.801632800000000000
          Height = 15.118120000000000000
          DataSet = frxDBRelFluxoProduto
          DataSetName = 'frxDBRelFluxoProduto'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBRelFluxoProduto."qtEstoque"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
      end
      object MasterDataIndice: TfrxMasterData
        FillType = ftBrush
        Top = 245.669450000000000000
        Visible = False
        Width = 1122.520410000000000000
        AllowSplit = True
        DataSet = frxDBRelFluxoProduto
        DataSetName = 'frxDBRelFluxoProduto'
        RowCount = 0
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Height = 86.811070000000000000
        Top = 18.897650000000000000
        Width = 1122.520410000000000000
        object lblEmpresa: TfrxMemoView
          Left = 179.401670000000000000
          Top = 8.306996300000000000
          Width = 321.260050000000000000
          Height = 18.897650000000000000
          DataSet = FrmPadraoRel.frxDataset
          DataSetName = 'frxDataset'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[frxEmpresaContabil."descEmpresa"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Picture1: TfrxPictureView
          Left = 19.000000000000000000
          Top = 7.188930000000000000
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
          Left = 924.465060000000000000
          Top = 7.102350000000000000
          Width = 155.307050000000000000
          Height = 64.252010000000100000
          DataSet = FrmPadraoRel.frxDataset
          DataSetName = 'frxDataset'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -21
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'Fluxo de Caixa Mensal')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo1: TfrxMemoView
          Left = 502.630180000000000000
          Top = 7.086580000000000000
          Width = 404.409710000000000000
          Height = 18.897650000000000000
          DataSet = FrmPadraoRel.frxDataset
          DataSetName = 'frxDataset'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            
              'CNPJ/CPF: [(<frxEmpresaContabil."idCnpjCpf">)]  IE: [(<frxEmpres' +
              'aContabil."idInscEstadual">)]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo91: TfrxMemoView
          Left = 177.590600000000000000
          Top = 30.763760000000000000
          Width = 411.968770000000000000
          Height = 18.897650000000000000
          DataSet = FrmPadraoRel.frxDataset
          DataSetName = 'frxDataset'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            
              '[(<frxEmpresaContabil."endereco">)] - [(<frxEmpresaContabil."com' +
              'plemento">)]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo106: TfrxMemoView
          Left = 593.338900000000000000
          Top = 30.645640000000000000
          Width = 313.700990000000000000
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
            
              'CEP: [(<frxEmpresaContabil."cep">)]  -  [(<frxEmpresaContabil."d' +
              'escCidade">)]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo107: TfrxMemoView
          Left = 177.590600000000000000
          Top = 55.661410000000000000
          Width = 419.527830000000000000
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
            'Fone: [(<frxEmpresaContabil."fones">)]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Line2: TfrxLineView
          Left = 35.000000000000000000
          Top = 79.252010000000000000
          Width = 1061.598950000000000000
          Color = clBlack
          Frame.Color = clGray
          Frame.ShadowColor = clGray
          Diagonal = True
        end
        object Line77: TfrxLineView
          Left = 910.583180000000000000
          Top = 6.102350000000000000
          Height = 71.811070000000100000
          Color = clBlack
          Frame.Color = clGray
          Frame.ShadowColor = clGray
          Frame.Typ = [ftLeft]
        end
      end
      object MasterDataConta: TfrxMasterData
        FillType = ftBrush
        Top = 374.173470000000000000
        Visible = False
        Width = 1122.520410000000000000
        AllowSplit = True
        DataSet = frxDBRelConta
        DataSetName = 'frxDBRelConta'
        RowCount = 0
      end
      object DetailDataConta: TfrxDetailData
        FillType = ftBrush
        Height = 18.897640240000000000
        Top = 480.000310000000000000
        Width = 1122.520410000000000000
        AllowSplit = True
        DataSet = frxDBRelConta
        DataSetName = 'frxDBRelConta'
        RowCount = 0
        object Memo20: TfrxMemoView
          Left = 96.826769210000000000
          Width = 37.795300000000000000
          Height = 15.118110240000000000
          StretchMode = smActualHeight
          DataField = 'idConta'
          DataSet = frxDBRelConta
          DataSetName = 'frxDBRelConta'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBRelConta."idConta"]')
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo22: TfrxMemoView
          Left = 465.582621020000000000
          Width = 109.606335830000000000
          Height = 15.118110240000000000
          DataSet = frxDBRelConta
          DataSetName = 'frxDBRelConta'
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
            '[frxDBRelConta."vlSaldoAtual"]')
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo24: TfrxMemoView
          Left = 769.314928900000000000
          Width = 90.708720000000000000
          Height = 15.118110240000000000
          DataSet = frxDBRelConta
          DataSetName = 'frxDBRelConta'
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
            '[frxDBRelConta."vlSaida"]')
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo25: TfrxMemoView
          Left = 904.456688030000000000
          Width = 102.047310000000000000
          Height = 15.118110240000000000
          DataSet = frxDBRelConta
          DataSetName = 'frxDBRelConta'
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
            
              '[((<frxDBRelConta."vlEntrada">+<frxDBRelConta."vlSaida">)+<frxDB' +
              'RelConta."vlSaldoAtual">)]')
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo23: TfrxMemoView
          Left = 622.488154800000000000
          Width = 102.047241650000000000
          Height = 15.118110240000000000
          DataSet = frxDBRelConta
          DataSetName = 'frxDBRelConta'
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
            '[frxDBRelConta."vlEntrada"]')
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo21: TfrxMemoView
          Left = 146.590551180000000000
          Width = 317.480520000000000000
          Height = 15.118110240000000000
          DataSet = frxDBRelConta
          DataSetName = 'frxDBRelConta'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBRelConta."descConta"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
      end
      object HeaderDataConta: TfrxHeader
        FillType = ftBrush
        Height = 61.929177800000000000
        Top = 396.850650000000000000
        Width = 1122.520410000000000000
        AllowSplit = True
        object Shape2: TfrxShapeView
          Left = 26.456692910000000000
          Top = 45.220469999999800000
          Width = 1069.606516460000000000
          Height = 15.118120000000000000
          Fill.BackColor = 15790320
          Frame.Color = 15790320
        end
        object Memo28: TfrxMemoView
          Left = 769.362343860000000000
          Top = 45.220469999999800000
          Width = 89.874150000000000000
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
            'Sa'#237'da')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo29: TfrxMemoView
          Left = 465.684936850000000000
          Top = 45.220469999999800000
          Width = 109.606370000000000000
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
            'Saldo Conciliado')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo30: TfrxMemoView
          Left = 925.999992680000000000
          Top = 45.220469999999800000
          Width = 76.504020000000000000
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
            'Saldo')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo32: TfrxMemoView
          Left = 622.488560000000000000
          Top = 45.456709999999800000
          Width = 98.267780000000000000
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
            'Entrada')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo31: TfrxMemoView
          Left = 146.472357950000000000
          Top = 45.220469999999800000
          Width = 317.480314960000000000
          Height = 15.118110240000000000
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
          VAlign = vaBottom
        end
        object Memo26: TfrxMemoView
          Left = 96.448818900000000000
          Top = 44.999999999999800000
          Width = 37.795300000000000000
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
            'Conta')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Line3: TfrxLineView
          Left = 26.456692910000000000
          Width = 1069.606516460000000000
          Color = clBlack
          Frame.Typ = [ftTop]
          Frame.Width = 0.100000000000000000
        end
        object Memo84: TfrxMemoView
          Left = 26.456692910000000000
          Top = 25.220469999999700000
          Width = 1069.606516460000000000
          Height = 18.897637800000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Fill.BackColor = clMoneyGreen
          HAlign = haCenter
          Memo.UTF8W = (
            'Saldos Banc'#225'rios')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object MasterDataVencidos: TfrxMasterData
        FillType = ftBrush
        Top = 752.126470000000000000
        Visible = False
        Width = 1122.520410000000000000
        AllowSplit = True
        DataSet = frxDBRelVencido
        DataSetName = 'frxDBRelVencido'
        RowCount = 0
      end
      object DetailDataVencidos: TfrxDetailData
        FillType = ftBrush
        Height = 15.346320000000000000
        Top = 857.953310000000000000
        Width = 1122.520410000000000000
        AllowSplit = True
        DataSet = frxDBRelVencido
        DataSetName = 'frxDBRelVencido'
        RowCount = 0
        object Memo38: TfrxMemoView
          Left = 66.141712760000000000
          Width = 64.252010000000000000
          Height = 15.118120000000000000
          DataField = 'dtVencimento'
          DataSet = frxDBRelVencido
          DataSetName = 'frxDBRelVencido'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBRelVencido."dtVencimento"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo39: TfrxMemoView
          Left = 146.645669290000000000
          Top = 0.228200000000015000
          Width = 314.031505830000000000
          Height = 15.118120000000000000
          StretchMode = smActualHeight
          DataSet = frxDBRelVencido
          DataSetName = 'frxDBRelVencido'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            
              '[frxDBRelVencido."descAbreviada"] - [frxDBRelVencido."obsTitulo"' +
              ']')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo40: TfrxMemoView
          Left = 749.086772830000000000
          Top = 0.212430000000040000
          Width = 86.929133860000000000
          Height = 15.118120000000000000
          DataSet = frxDBRelVencido
          DataSetName = 'frxDBRelVencido'
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
            '[frxDBRelVencido."vlDebito"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo41: TfrxMemoView
          Left = 885.543248500000000000
          Top = 0.212430000000040000
          Width = 86.929190000000000000
          Height = 15.118120000000000000
          DataSet = frxDBRelVencido
          DataSetName = 'frxDBRelVencido'
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
            '[frxDBRelVencido."vlCredito"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo44: TfrxMemoView
          Left = 533.338900000000000000
          Width = 22.677145830000000000
          Height = 15.118120000000000000
          DataField = 'Indice'
          DataSet = frxDBRelVencido
          DataSetName = 'frxDBRelVencido'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBRelVencido."Indice"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo45: TfrxMemoView
          Left = 608.945270000000000000
          Width = 83.149625830000000000
          Height = 15.118120000000000000
          DataSet = frxDBRelVencido
          DataSetName = 'frxDBRelVencido'
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
            '[frxDBRelVencido."qtIndice"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
      end
      object HeaderVencidos: TfrxHeader
        FillType = ftBrush
        Height = 61.984251970000000000
        Top = 774.803650000000000000
        Width = 1122.520410000000000000
        AllowSplit = True
        object Shape3: TfrxShapeView
          Left = 26.456692910000000000
          Top = 45.220469999999900000
          Width = 1069.606516460000000000
          Height = 15.118120000000000000
          Fill.BackColor = 15790320
          Frame.Color = 15790320
        end
        object Memo33: TfrxMemoView
          Left = 761.858406850000000000
          Top = 45.220469999999900000
          Width = 71.811070000000000000
          Height = 15.118107800000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'D'#233'bitos')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo34: TfrxMemoView
          Left = 1026.543910000000000000
          Top = 45.220469999999900000
          Width = 65.165430000000000000
          Height = 15.118107800000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Saldo Atual')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo35: TfrxMemoView
          Left = 896.787880000000000000
          Top = 45.456710000000000000
          Width = 71.811070000000000000
          Height = 15.118107800000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Cr'#233'ditos')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo36: TfrxMemoView
          Left = 146.645669290000000000
          Top = 45.220469999999900000
          Width = 312.047310000000000000
          Height = 15.118107800000000000
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
          VAlign = vaBottom
        end
        object Memo37: TfrxMemoView
          Left = 66.141712760000000000
          Top = 45.000000000000100000
          Width = 71.811070000000000000
          Height = 15.118107800000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'Vencimento')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo27: TfrxMemoView
          Left = 523.779840000000000000
          Top = 45.000000000000100000
          Width = 34.015770000000000000
          Height = 15.118107800000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Indice')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo42: TfrxMemoView
          Left = 619.063390000000000000
          Top = 45.000000000000100000
          Width = 71.811070000000000000
          Height = 15.118107800000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Quantidade')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Line4: TfrxLineView
          Left = 26.456692910000000000
          Width = 1069.606516460000000000
          Color = clBlack
          Frame.Typ = [ftTop]
          Frame.Width = 0.100000000000000000
        end
        object MemVencidos: TfrxMemoView
          Left = 26.456692910000000000
          Top = 25.779530000000100000
          Width = 1069.606516460000000000
          Height = 18.897637800000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Fill.BackColor = clMoneyGreen
          HAlign = haCenter
          Memo.UTF8W = (
            'Vencimentos Anteriores a ')
          ParentFont = False
          VAlign = vaBottom
        end
      end
      object HeaderIndice: TfrxHeader
        FillType = ftBrush
        Height = 45.811057800000000000
        Top = 268.346630000000000000
        Width = 1122.520410000000000000
        AllowSplit = True
        object Shape1: TfrxShapeView
          Left = 26.456692910000000000
          Top = 29.480314960000000000
          Width = 1069.606516460000000000
          Height = 15.118120000000000000
          Fill.BackColor = 15790320
          Frame.Color = 15790320
        end
        object Memo4: TfrxMemoView
          Left = 96.377952760000000000
          Top = 31.000000000000000000
          Width = 45.354360000000000000
          Height = 12.472440940000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Moeda')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo6: TfrxMemoView
          Left = 718.700933860000000000
          Top = 31.220470000000000000
          Width = 89.874150000000000000
          Height = 12.472440940000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Qtde. Estoque')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo10: TfrxMemoView
          Left = 527.645666850000000000
          Top = 31.220470000000000000
          Width = 64.252010000000000000
          Height = 12.472440940000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Cota'#231#227'o')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo11: TfrxMemoView
          Left = 830.205320000000000000
          Top = 31.220470000000000000
          Width = 87.842610000000000000
          Height = 12.472440940000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Valor Total')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo8: TfrxMemoView
          Left = 146.645669290000000000
          Top = 31.220470000000000000
          Width = 217.322834650000000000
          Height = 12.472440940000000000
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
          VAlign = vaBottom
        end
        object Memo3: TfrxMemoView
          Left = 621.961040000000000000
          Top = 31.456710000000000000
          Width = 71.811070000000000000
          Height = 12.472440940000000000
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
          Left = 421.189240000000000000
          Top = 31.456710000000000000
          Width = 56.692950000000000000
          Height = 12.472440940000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'S'#237'mbolo')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo85: TfrxMemoView
          Left = 26.456692910000000000
          Top = 9.220470000000029000
          Width = 1069.606516460000000000
          Height = 18.897637800000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Fill.BackColor = clMoneyGreen
          HAlign = haCenter
          Memo.UTF8W = (
            #218'ltimas Cota'#231#245'es e Saldos')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object FooterVencidos: TfrxFooter
        FillType = ftBrush
        Height = 18.897650000000000000
        Top = 895.748610000000000000
        Width = 1122.520410000000000000
        OnBeforePrint = 'FooterVencidosOnBeforePrint'
        AllowSplit = True
        object Shape9: TfrxShapeView
          Left = 468.661702910000000000
          Width = 627.401506460000000000
          Height = 18.897650000000000000
          Fill.BackColor = clCream
          Frame.Color = 15790320
        end
        object Memo46: TfrxMemoView
          Left = 888.567119530000000000
          Width = 86.929133860000000000
          Height = 15.118120000000000000
          DataSet = frxDBRelConta
          DataSetName = 'frxDBRelConta'
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
            '[SUM(<frxDBRelVencido."vlCredito">)]')
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo47: TfrxMemoView
          Left = 749.102523310000000000
          Width = 86.929133860000000000
          Height = 15.118120000000000000
          DataSet = frxDBRelConta
          DataSetName = 'frxDBRelConta'
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
            '[SUM(<frxDBRelVencido."vlDebito">)]')
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo70: TfrxMemoView
          Left = 996.283442600000000000
          Width = 94.488250000000000000
          Height = 15.118120000000000000
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
            '[(<frxDBRelVencido."vlSaldoVencido">)]')
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo68: TfrxMemoView
          Left = 468.661720000000000000
          Width = 90.708720000000000000
          Height = 15.118107800000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Saldo Anterior :')
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo72: TfrxMemoView
          Left = 600.945270000000000000
          Width = 94.488250000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[(<frxDBRelVencido."vlSaldoAnterior">)]')
          ParentFont = False
          VAlign = vaBottom
        end
      end
      object MasterDataaVencer: TfrxMasterData
        FillType = ftBrush
        Top = 937.323440000000000000
        Visible = False
        Width = 1122.520410000000000000
        OnBeforePrint = 'MasterDataaVencerOnBeforePrint'
        AllowSplit = True
        DataSet = frxDataset
        DataSetName = 'frxDataset'
        RowCount = 0
        StartNewPage = True
      end
      object DetailDataRelMensal: TfrxDetailData
        FillType = ftBrush
        Height = 15.118110240000000000
        Top = 1058.268400000000000000
        Width = 1122.520410000000000000
        AllowSplit = True
        DataSet = frxDataset
        DataSetName = 'frxDataset'
        RowCount = 0
        object Memo57: TfrxMemoView
          Left = 26.456692910000000000
          Top = 1.889763779999840000
          Width = 160.743248330000000000
          Height = 11.338582680000000000
          OnBeforePrint = 'Memo57OnBeforePrint'
          DataSet = frxDataset
          DataSetName = 'frxDataset'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDataset."Descricao"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo60: TfrxMemoView
          Left = 197.291338580000000000
          Top = 1.889763779999840000
          Width = 66.141732280000000000
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
          HideZeros = True
          Memo.UTF8W = (
            '[frxDataset."mes1"]')
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo50: TfrxMemoView
          Left = 265.700787400000000000
          Top = 1.889763779999840000
          Width = 66.141732280000000000
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
          HideZeros = True
          Memo.UTF8W = (
            '[frxDataset."mes2"]')
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo52: TfrxMemoView
          Left = 334.110236220000000000
          Top = 1.889763779999840000
          Width = 66.141732280000000000
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
          HideZeros = True
          Memo.UTF8W = (
            '[frxDataset."mes3"]')
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo53: TfrxMemoView
          Left = 402.897637800000000000
          Top = 1.889763779999840000
          Width = 66.141732280000000000
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
          HideZeros = True
          Memo.UTF8W = (
            '[frxDataset."mes4"]')
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo54: TfrxMemoView
          Left = 471.307086610000000000
          Top = 1.889763779999840000
          Width = 64.251968500000000000
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
          HideZeros = True
          Memo.UTF8W = (
            '[frxDataset."mes5"]')
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo56: TfrxMemoView
          Left = 539.338582680000000000
          Top = 1.889763779999840000
          Width = 66.141732280000000000
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
          HideZeros = True
          Memo.UTF8W = (
            '[frxDataset."mes6"]')
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo58: TfrxMemoView
          Left = 607.370078740000000000
          Top = 1.889763779999840000
          Width = 66.141732280000000000
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
          HideZeros = True
          Memo.UTF8W = (
            '[frxDataset."mes7"]')
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo59: TfrxMemoView
          Left = 675.779527560000000000
          Top = 1.889763779999840000
          Width = 66.141732280000000000
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
          HideZeros = True
          Memo.UTF8W = (
            '[frxDataset."mes8"]')
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo64: TfrxMemoView
          Left = 743.433070870000000000
          Top = 1.889763779999840000
          Width = 66.141732280000000000
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
          HideZeros = True
          Memo.UTF8W = (
            '[frxDataset."mes9"]')
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo69: TfrxMemoView
          Left = 811.464566930000000000
          Top = 1.889763779999840000
          Width = 66.141732280000000000
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
          HideZeros = True
          Memo.UTF8W = (
            '[frxDataset."mes10"]')
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo86: TfrxMemoView
          Left = 879.496062990000000000
          Top = 1.889763779999840000
          Width = 66.141732280000000000
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
          HideZeros = True
          Memo.UTF8W = (
            '[frxDataset."mes11"]')
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo88: TfrxMemoView
          Left = 947.149606300000000000
          Top = 1.889763779999840000
          Width = 66.141732280000000000
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
          HideZeros = True
          Memo.UTF8W = (
            '[frxDataset."mes12"]')
          ParentFont = False
          VAlign = vaBottom
        end
        object Line7: TfrxLineView
          Left = 26.456710000000000000
          Top = 15.118139530000000000
          Width = 1069.984251970000000000
          Color = clBlack
          Frame.Typ = [ftTop]
          Frame.Width = 0.100000000000000000
        end
        object Memo48: TfrxMemoView
          Left = 1014.803149610000000000
          Top = 1.889763780000070000
          Width = 81.259842520000000000
          Height = 11.338582680000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          HideZeros = True
          Memo.UTF8W = (
            
              '[<frxDataset."mes1">+<frxDataset."mes2">+<frxDataset."mes3">+<fr' +
              'xDataset."mes4">+<frxDataset."mes5">+<frxDataset."mes6">+<frxDat' +
              'aset."mes7">+<frxDataset."mes8">+<frxDataset."mes9">+<frxDataset' +
              '."mes10">+<frxDataset."mes11">+<frxDataset."mes12">]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Line9: TfrxLineView
          Left = 265.322834650000000000
          Height = 15.118110240000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
          Frame.Width = 0.100000000000000000
        end
        object Line10: TfrxLineView
          Left = 334.488188980000000000
          Height = 15.118110240000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
          Frame.Width = 0.100000000000000000
        end
        object Line11: TfrxLineView
          Left = 403.275590550000000000
          Height = 15.118110240000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
          Frame.Width = 0.100000000000000000
        end
        object Line12: TfrxLineView
          Left = 471.307086610000000000
          Height = 15.118110240000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
          Frame.Width = 0.100000000000000000
        end
        object Line13: TfrxLineView
          Left = 539.338582680000000000
          Height = 15.118110240000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
          Frame.Width = 0.100000000000000000
        end
        object Line14: TfrxLineView
          Left = 607.370078740000000000
          Height = 15.118110240000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
          Frame.Width = 0.100000000000000000
        end
        object Line15: TfrxLineView
          Left = 676.535433070000000000
          Height = 15.118110240000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
          Frame.Width = 0.100000000000000000
        end
        object Line16: TfrxLineView
          Left = 743.433070870000000000
          Height = 15.118110240000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
          Frame.Width = 0.100000000000000000
        end
        object Line17: TfrxLineView
          Left = 811.464566930000000000
          Height = 15.118110240000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
          Frame.Width = 0.100000000000000000
        end
        object Line18: TfrxLineView
          Left = 879.496062990000000000
          Height = 15.118110240000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
          Frame.Width = 0.100000000000000000
        end
        object Line19: TfrxLineView
          Left = 947.527559060000000000
          Height = 15.118110240000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
          Frame.Width = 0.100000000000000000
        end
        object Line20: TfrxLineView
          Left = 1014.803149610000000000
          Height = 15.118110240000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
          Frame.Width = 0.100000000000000000
        end
        object Line23: TfrxLineView
          Left = 196.535560000000000000
          Height = 15.118112680000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
          Frame.Width = 0.100000000000000000
        end
        object Line8: TfrxLineView
          Left = 196.535433070000000000
          Height = 15.118110240000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
          Frame.Width = 0.100000000000000000
        end
        object Line21: TfrxLineView
          Left = 26.456710000000000000
          Height = 15.118110240000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
          Frame.Width = 0.100000000000000000
        end
        object Line22: TfrxLineView
          Left = 1096.062992130000000000
          Height = 15.118110240000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
          Frame.Width = 0.100000000000000000
        end
      end
      object FooterConta: TfrxFooter
        FillType = ftBrush
        Height = 19.897650000000000000
        Top = 521.575140000000000000
        Width = 1122.520410000000000000
        AllowSplit = True
        object Shape8: TfrxShapeView
          Left = 693.362692910000000000
          Top = 1.000000000000000000
          Width = 313.700516460000000000
          Height = 15.118120000000000000
          Fill.BackColor = clCream
          Frame.Color = 15790320
        end
        object Memo71: TfrxMemoView
          Left = 694.480830000000000000
          Width = 68.031540000000000000
          Height = 15.118107800000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Saldo Atual:')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo43: TfrxMemoView
          Left = 888.905719290000000000
          Width = 117.165364090000000000
          Height = 15.118120000000000000
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
            '[(<frxDBRelConta."vlSaldoBanco">)]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
      end
      object HeaderMensal: TfrxHeader
        FillType = ftBrush
        Height = 37.795300000000000000
        Top = 960.000620000000000000
        Width = 1122.520410000000000000
        AllowSplit = True
        ReprintOnNewPage = True
        object Memo55: TfrxMemoView
          Left = 26.456692910000000000
          Top = 1.456709999999930000
          Width = 1069.606516460000000000
          Height = 18.897632910000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Color = clMoneyGreen
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clMoneyGreen
          HAlign = haCenter
          Memo.UTF8W = (
            'Compromissos a Vencer')
          ParentFont = False
          VAlign = vaBottom
        end
        object Shape4: TfrxShapeView
          Left = 26.456692910000000000
          Top = 21.897650000000000000
          Width = 1069.606516460000000000
          Height = 15.118120000000000000
          Fill.BackColor = 15790320
          Frame.Color = 15790320
        end
        object DBMMes3: TfrxMemoView
          Left = 334.133899770000000000
          Top = 23.708676060000200000
          Width = 66.141732280000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'Mes3')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo49: TfrxMemoView
          Left = 1014.984867090000000000
          Top = 23.811023620000200000
          Width = 81.259847400000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'TOTAL ANUAL')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object DBMMes4: TfrxMemoView
          Left = 402.944969770000000000
          Top = 23.708676060000200000
          Width = 66.141732280000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'Mes4')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo51: TfrxMemoView
          Left = 26.456692910000000000
          Top = 23.708676060000200000
          Width = 126.850340000000000000
          Height = 11.338582680000000000
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
          VAlign = vaBottom
        end
        object DBMMes1: TfrxMemoView
          Left = 197.291289770000000000
          Top = 23.708676060000200000
          Width = 66.141732280000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'Mes1')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object DBMMes2: TfrxMemoView
          Left = 265.543299770000000000
          Top = 23.708676060000200000
          Width = 66.141732280000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'Mes2')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object DBMMes5: TfrxMemoView
          Left = 471.196979770000000000
          Top = 23.811023620000200000
          Width = 66.141732280000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'Mes5')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object DBMMes6: TfrxMemoView
          Left = 539.228519770000000000
          Top = 23.811023620000200000
          Width = 66.141732280000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'Mes6')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object DBMMes7: TfrxMemoView
          Left = 607.480529770000000000
          Top = 23.811023620000200000
          Width = 66.141732280000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'Mes7')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object DBMMes8: TfrxMemoView
          Left = 675.732539770000000000
          Top = 23.811023620000200000
          Width = 66.141732280000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'Mes8')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object DBMMes9: TfrxMemoView
          Left = 743.543609770000000000
          Top = 23.811023620000200000
          Width = 66.141732280000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'Mes9')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object DBMMes10: TfrxMemoView
          Left = 811.354679770000000000
          Top = 23.811023620000200000
          Width = 66.141732280000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'Mes10')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object DBMMes11: TfrxMemoView
          Left = 879.606689770000000000
          Top = 23.811023620000200000
          Width = 66.141732280000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'Mes11')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object DBMMes12: TfrxMemoView
          Left = 947.102987090000000000
          Top = 23.811023620000200000
          Width = 66.141732280000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'Mes12')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Line40: TfrxLineView
          Left = 196.535433070000000000
          Top = 20.787401570000000000
          Height = 18.141732280000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
          Frame.Width = 0.100000000000000000
        end
        object Line41: TfrxLineView
          Left = 265.322834650000000000
          Top = 20.787401570000000000
          Height = 18.141732280000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
          Frame.Width = 0.100000000000000000
        end
        object Line42: TfrxLineView
          Left = 334.488188980000000000
          Top = 20.787401570000000000
          Height = 18.141732280000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
          Frame.Width = 0.100000000000000000
        end
        object Line43: TfrxLineView
          Left = 403.275590550000000000
          Top = 20.787401570000000000
          Height = 18.141732280000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
          Frame.Width = 0.100000000000000000
        end
        object Line44: TfrxLineView
          Left = 471.307086610000000000
          Top = 20.787401570000000000
          Height = 18.141732280000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
          Frame.Width = 0.100000000000000000
        end
        object Line45: TfrxLineView
          Left = 539.338582680000000000
          Top = 20.787401570000000000
          Height = 18.141732280000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
          Frame.Width = 0.100000000000000000
        end
        object Line46: TfrxLineView
          Left = 607.370078740000000000
          Top = 20.787401570000000000
          Height = 18.141732280000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
          Frame.Width = 0.100000000000000000
        end
        object Line47: TfrxLineView
          Left = 676.535870000000000000
          Top = 20.787401570000000000
          Height = 18.141732280000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
          Frame.Width = 0.100000000000000000
        end
        object Line48: TfrxLineView
          Left = 743.433070870000000000
          Top = 20.787401570000000000
          Height = 18.141732280000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
          Frame.Width = 0.100000000000000000
        end
        object Line49: TfrxLineView
          Left = 811.464566930000000000
          Top = 20.787401570000000000
          Height = 18.141732280000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
          Frame.Width = 0.100000000000000000
        end
        object Line50: TfrxLineView
          Left = 879.496062990000000000
          Top = 20.787401570000000000
          Height = 18.141732280000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
          Frame.Width = 0.100000000000000000
        end
        object Line51: TfrxLineView
          Left = 947.527559060000000000
          Top = 20.787401570000000000
          Height = 18.141732280000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
          Frame.Width = 0.100000000000000000
        end
        object Line52: TfrxLineView
          Left = 1014.803149610000000000
          Top = 20.787401570000000000
          Height = 18.141732280000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
          Frame.Width = 0.100000000000000000
        end
        object Line53: TfrxLineView
          Left = 1096.063700000000000000
          Top = 22.677179999999900000
          Height = 15.118112680000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
          Frame.Width = 0.100000000000000000
        end
        object Line54: TfrxLineView
          Left = 26.456710000000000000
          Top = 37.795300000000000000
          Width = 1069.984251970000000000
          Color = clBlack
          Frame.Typ = [ftTop]
          Frame.Width = 0.100000000000000000
        end
        object Line55: TfrxLineView
          Left = 26.456710000000000000
          Top = 20.677180000000200000
          Height = 17.007874020000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
          Frame.Width = 0.100000000000000000
        end
        object Line56: TfrxLineView
          Left = 1096.063700000000000000
          Top = 20.787401570000000000
          Height = 18.141732280000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
          Frame.Width = 0.100000000000000000
        end
        object Line5: TfrxLineView
          Left = 26.456692910000000000
          Top = 20.787401570000000000
          Width = 1069.606299210000000000
          Color = clBlack
          Frame.Typ = [ftTop]
          Frame.Width = 0.100000000000000000
        end
      end
      object FooterRelMensal: TfrxFooter
        FillType = ftBrush
        Height = 71.811070000000000000
        Top = 1133.859000000000000000
        Width = 1122.520410000000000000
        OnBeforePrint = 'FooterRelMensalOnBeforePrint'
        AllowSplit = True
        object TotalMes1: TfrxMemoView
          Left = 196.511808580000000000
          Top = 1.889763780000070000
          Width = 66.141732280000000000
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
          Font.Style = [fsBold]
          HAlign = haRight
          HideZeros = True
          Memo.UTF8W = (
            '[SUM(<frxDataset."mes1">,DetailDataRelMensal)]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo62: TfrxMemoView
          Left = 264.921257400000000000
          Top = 1.889763780000070000
          Width = 66.141732280000000000
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
          Font.Style = [fsBold]
          HAlign = haRight
          HideZeros = True
          Memo.UTF8W = (
            '[SUM(<frxDataset."mes2">,DetailDataRelMensal)]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo63: TfrxMemoView
          Left = 333.330706220000000000
          Top = 1.889763780000070000
          Width = 66.141732280000000000
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
          Font.Style = [fsBold]
          HAlign = haRight
          HideZeros = True
          Memo.UTF8W = (
            '[SUM(<frxDataset."mes3">,DetailDataRelMensal)]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo65: TfrxMemoView
          Left = 402.118107800000000000
          Top = 1.889763780000070000
          Width = 66.141732280000000000
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
          Font.Style = [fsBold]
          HAlign = haRight
          HideZeros = True
          Memo.UTF8W = (
            '[SUM(<frxDataset."mes4">,DetailDataRelMensal)]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo66: TfrxMemoView
          Left = 470.527556610000000000
          Top = 1.889763780000070000
          Width = 66.141732280000000000
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
          Font.Style = [fsBold]
          HAlign = haRight
          HideZeros = True
          Memo.UTF8W = (
            '[SUM(<frxDataset."mes5">,DetailDataRelMensal)]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo67: TfrxMemoView
          Left = 538.559052680000000000
          Top = 1.889763780000070000
          Width = 66.141732280000000000
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
          Font.Style = [fsBold]
          HAlign = haRight
          HideZeros = True
          Memo.UTF8W = (
            '[SUM(<frxDataset."mes6">,DetailDataRelMensal)]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo73: TfrxMemoView
          Left = 606.590548740000000000
          Top = 1.889763780000070000
          Width = 66.141732280000000000
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
          Font.Style = [fsBold]
          HAlign = haRight
          HideZeros = True
          Memo.UTF8W = (
            '[SUM(<frxDataset."mes7">,DetailDataRelMensal)]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo74: TfrxMemoView
          Left = 674.999997560000000000
          Top = 1.889763780000070000
          Width = 66.141732280000000000
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
          Font.Style = [fsBold]
          HAlign = haRight
          HideZeros = True
          Memo.UTF8W = (
            '[SUM(<frxDataset."mes8">,DetailDataRelMensal)]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo75: TfrxMemoView
          Left = 742.653540870000000000
          Top = 1.889763780000070000
          Width = 66.141732280000000000
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
          Font.Style = [fsBold]
          HAlign = haRight
          HideZeros = True
          Memo.UTF8W = (
            '[SUM(<frxDataset."mes9">,DetailDataRelMensal)]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo76: TfrxMemoView
          Left = 810.685036930000000000
          Top = 1.889763780000070000
          Width = 66.141732280000000000
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
          Font.Style = [fsBold]
          HAlign = haRight
          HideZeros = True
          Memo.UTF8W = (
            '[SUM(<frxDataset."mes10">,DetailDataRelMensal)]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo77: TfrxMemoView
          Left = 878.716532990000000000
          Top = 1.889763780000070000
          Width = 66.141732280000000000
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
          Font.Style = [fsBold]
          HAlign = haRight
          HideZeros = True
          Memo.UTF8W = (
            '[SUM(<frxDataset."mes11">,DetailDataRelMensal)]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo78: TfrxMemoView
          Left = 947.149606300000000000
          Top = 1.889763780000070000
          Width = 66.141732280000000000
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
          Font.Style = [fsBold]
          HAlign = haRight
          HideZeros = True
          Memo.UTF8W = (
            '[SUM(<frxDataset."mes12">,DetailDataRelMensal)]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Line24: TfrxLineView
          Left = 196.535433070000000000
          Height = 49.133882680000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
          Frame.Width = 0.100000000000000000
        end
        object Line25: TfrxLineView
          Left = 265.322834645669000000
          Height = 49.133882680000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
          Frame.Width = 0.100000000000000000
        end
        object Line26: TfrxLineView
          Left = 334.488188976378000000
          Height = 49.133882680000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
          Frame.Width = 0.100000000000000000
        end
        object Line27: TfrxLineView
          Left = 403.275590551181000000
          Height = 49.133882680000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
          Frame.Width = 0.100000000000000000
        end
        object Line28: TfrxLineView
          Left = 471.307086614173000000
          Height = 49.133882680000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
          Frame.Width = 0.100000000000000000
        end
        object Line29: TfrxLineView
          Left = 539.338582677165000000
          Height = 49.133882680000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
          Frame.Width = 0.100000000000000000
        end
        object Line30: TfrxLineView
          Left = 607.370078740157100000
          Height = 49.133882680000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
          Frame.Width = 0.100000000000000000
        end
        object Line31: TfrxLineView
          Left = 676.535433070866000000
          Height = 49.133882680000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
          Frame.Width = 0.100000000000000000
        end
        object Line32: TfrxLineView
          Left = 743.433070866142000000
          Height = 49.133882680000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
          Frame.Width = 0.100000000000000000
        end
        object Line33: TfrxLineView
          Left = 811.464566929134000000
          Height = 49.133882680000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
          Frame.Width = 0.100000000000000000
        end
        object Line34: TfrxLineView
          Left = 879.496062992126000000
          Height = 49.133882680000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
          Frame.Width = 0.100000000000000000
        end
        object Line35: TfrxLineView
          Left = 947.527559055118000000
          Height = 49.133882680000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
          Frame.Width = 0.100000000000000000
        end
        object Line36: TfrxLineView
          Left = 1014.803149606300000000
          Height = 49.133882680000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
          Frame.Width = 0.100000000000000000
        end
        object Line38: TfrxLineView
          Left = 26.456710000000000000
          Height = 15.118112680000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
          Frame.Width = 0.100000000000000000
        end
        object Memo80: TfrxMemoView
          Left = 1014.803149610000000000
          Top = 2.000000000000000000
          Width = 81.259842520000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          HideZeros = True
          Memo.UTF8W = (
            
              '[SUM(<frxDataset."mes1">+<frxDataset."mes2">+<frxDataset."mes3">' +
              '+<frxDataset."mes4">+<frxDataset."mes5">+<frxDataset."mes6">+<fr' +
              'xDataset."mes7">+<frxDataset."mes8">+<frxDataset."mes9">+<frxDat' +
              'aset."mes10">+<frxDataset."mes11">+<frxDataset."mes12">)]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Line39: TfrxLineView
          Left = 1096.062992130000000000
          Height = 15.118112680000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
          Frame.Width = 0.100000000000000000
        end
        object Memo81: TfrxMemoView
          Left = 26.456692913385800000
          Top = 18.897650000000100000
          Width = 89.055040000000000000
          Height = 12.472440940000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'SALDO ANTERIOR')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo82: TfrxMemoView
          Left = 26.456692913385800000
          Top = 35.905511810000000000
          Width = 89.055040000000000000
          Height = 12.472440940000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'SALDO ATUAL')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo83: TfrxMemoView
          Left = 197.291338580000000000
          Top = 18.897649999999900000
          Width = 66.141732280000000000
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
          Font.Style = [fsItalic]
          HAlign = haRight
          HideZeros = True
          Memo.UTF8W = (
            '[frxDataset."vlSaldoAnterior"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo87: TfrxMemoView
          Left = 197.291338580000000000
          Top = 37.795300000000000000
          Width = 66.141732280000000000
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
          Font.Style = [fsBold]
          HAlign = haRight
          HideZeros = True
          Memo.UTF8W = (
            '[vlSaldoAtual]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object MemoSaldo2: TfrxMemoView
          Left = 265.700787400000000000
          Top = 18.897650000000100000
          Width = 66.141732280000000000
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
          Font.Style = [fsItalic]
          HAlign = haRight
          HideZeros = True
          Memo.UTF8W = (
            '[SaldoMes2]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object MemoAtual2: TfrxMemoView
          Left = 265.700787400000000000
          Top = 37.795300000000000000
          Width = 66.141732280000000000
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
          Font.Style = [fsBold]
          HAlign = haRight
          HideZeros = True
          Memo.UTF8W = (
            '[SaldoMes3]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo79: TfrxMemoView
          Left = 26.456692913385800000
          Top = 1.133841179999990000
          Width = 89.055040000000000000
          Height = 12.472431180000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'TOTAL GERAL')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object MemoSaldo3: TfrxMemoView
          Left = 334.110236220000000000
          Top = 18.897650000000100000
          Width = 66.141732280000000000
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
          Font.Style = [fsItalic]
          HAlign = haRight
          HideZeros = True
          Memo.UTF8W = (
            '[SaldoMes3]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object MemoSaldo4: TfrxMemoView
          Left = 402.897637800000000000
          Top = 18.897650000000100000
          Width = 66.141732280000000000
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
          Font.Style = [fsItalic]
          HAlign = haRight
          HideZeros = True
          Memo.UTF8W = (
            '[SaldoMes4]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object MemoSaldo5: TfrxMemoView
          Left = 471.307086610000000000
          Top = 18.897650000000100000
          Width = 66.141732280000000000
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
          Font.Style = [fsItalic]
          HAlign = haRight
          HideZeros = True
          Memo.UTF8W = (
            '[SaldoMes5]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object MemoSaldo6: TfrxMemoView
          Left = 539.338582680000000000
          Top = 18.897650000000100000
          Width = 66.141732280000000000
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
          Font.Style = [fsItalic]
          HAlign = haRight
          HideZeros = True
          Memo.UTF8W = (
            '[SaldoMes6]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object MemoSaldo7: TfrxMemoView
          Left = 607.370078740000000000
          Top = 18.897650000000100000
          Width = 66.141732280000000000
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
          Font.Style = [fsItalic]
          HAlign = haRight
          HideZeros = True
          Memo.UTF8W = (
            '[SaldoMes7]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object MemoSaldo8: TfrxMemoView
          Left = 675.779527560000000000
          Top = 18.897650000000100000
          Width = 66.141732280000000000
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
          Font.Style = [fsItalic]
          HAlign = haRight
          HideZeros = True
          Memo.UTF8W = (
            '[SaldoMes8]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object MemoSaldo9: TfrxMemoView
          Left = 743.433070870000000000
          Top = 18.897650000000100000
          Width = 66.141732280000000000
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
          Font.Style = [fsItalic]
          HAlign = haRight
          HideZeros = True
          Memo.UTF8W = (
            '[SaldoMes9]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object MemoSaldo10: TfrxMemoView
          Left = 811.464566930000000000
          Top = 18.897650000000100000
          Width = 66.141732280000000000
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
          Font.Style = [fsItalic]
          HAlign = haRight
          HideZeros = True
          Memo.UTF8W = (
            '[SaldoMes10]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object MemoSaldo11: TfrxMemoView
          Left = 879.496062990000000000
          Top = 18.897650000000100000
          Width = 66.141732280000000000
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
          Font.Style = [fsItalic]
          HAlign = haRight
          HideZeros = True
          Memo.UTF8W = (
            '[SaldoMes11]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object MemoSaldo12: TfrxMemoView
          Left = 947.149606300000000000
          Top = 18.897650000000100000
          Width = 66.141732280000000000
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
          Font.Style = [fsItalic]
          HAlign = haRight
          HideZeros = True
          Memo.UTF8W = (
            '[SaldoMes12]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object MemoAtual3: TfrxMemoView
          Left = 334.110236220000000000
          Top = 37.795300000000000000
          Width = 66.141732280000000000
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
          Font.Style = [fsBold]
          HAlign = haRight
          HideZeros = True
          Memo.UTF8W = (
            '[Atual3]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object MemoAtual4: TfrxMemoView
          Left = 402.897637800000000000
          Top = 37.795300000000000000
          Width = 66.141732280000000000
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
          Font.Style = [fsBold]
          HAlign = haRight
          HideZeros = True
          Memo.UTF8W = (
            '[Atual4]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object MemoAtual5: TfrxMemoView
          Left = 471.307086610000000000
          Top = 37.795300000000000000
          Width = 66.141732280000000000
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
          Font.Style = [fsBold]
          HAlign = haRight
          HideZeros = True
          Memo.UTF8W = (
            '[Atual5]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object MemoAtual6: TfrxMemoView
          Left = 539.338582680000000000
          Top = 37.795300000000000000
          Width = 66.141732280000000000
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
          Font.Style = [fsBold]
          HAlign = haRight
          HideZeros = True
          Memo.UTF8W = (
            '[Atual6]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object MemoAtual27: TfrxMemoView
          Left = 607.370078740000000000
          Top = 37.795300000000000000
          Width = 66.141732280000000000
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
          Font.Style = [fsBold]
          HAlign = haRight
          HideZeros = True
          Memo.UTF8W = (
            '[Atual7]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object MemoAtual8: TfrxMemoView
          Left = 675.779527560000000000
          Top = 37.795300000000000000
          Width = 66.141732280000000000
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
          Font.Style = [fsBold]
          HAlign = haRight
          HideZeros = True
          Memo.UTF8W = (
            '[Atual8]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object MemoAtual9: TfrxMemoView
          Left = 743.433070870000000000
          Top = 37.795300000000000000
          Width = 66.141732280000000000
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
          Font.Style = [fsBold]
          HAlign = haRight
          HideZeros = True
          Memo.UTF8W = (
            '[Atual9]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object MemoAtual10: TfrxMemoView
          Left = 811.464566930000000000
          Top = 37.795300000000000000
          Width = 66.141732280000000000
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
          Font.Style = [fsBold]
          HAlign = haRight
          HideZeros = True
          Memo.UTF8W = (
            '[Atual10]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object MemoAtual11: TfrxMemoView
          Left = 879.496062990000000000
          Top = 37.795300000000000000
          Width = 66.141732280000000000
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
          Font.Style = [fsBold]
          HAlign = haRight
          HideZeros = True
          Memo.UTF8W = (
            '[Atual11]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object MemoAtual12: TfrxMemoView
          Left = 942.503935300000000000
          Top = 37.795300000000000000
          Width = 70.374804910000000000
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
          Font.Style = [fsBold]
          HAlign = haRight
          HideZeros = True
          Memo.UTF8W = (
            '[(Atual11 + SUM(<frxDataset."mes12">,DetailDataRelMensal))]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Line6: TfrxLineView
          Left = 26.456692913385800000
          Top = 0.338590000000067000
          Height = 48.755905510000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
          Frame.Width = 0.100000000000000000
        end
        object Line57: TfrxLineView
          Left = 26.456710000000000000
          Top = 49.133889999999800000
          Width = 1069.606990000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
          Frame.Width = 0.100000000000000000
        end
        object Line58: TfrxLineView
          Left = 1096.063700000000000000
          Height = 49.133858267716500000
          Color = clBlack
          Frame.Typ = [ftLeft]
          Frame.Width = 0.100000000000000000
        end
        object Line37: TfrxLineView
          Left = 26.456710000000000000
          Top = 34.015770000000000000
          Width = 1069.606990000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
          Frame.Width = 0.100000000000000000
        end
        object Line59: TfrxLineView
          Left = 26.236240000000000000
          Top = 16.897650000000100000
          Width = 1069.606299210000000000
          Color = clBlack
          Frame.Typ = [ftTop]
          Frame.Width = 0.100000000000000000
        end
        object Memo61: TfrxMemoView
          Left = 1016.693570000000000000
          Top = 18.897650000000100000
          Width = 77.480322280000000000
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
          Font.Style = [fsBold, fsItalic]
          HAlign = haRight
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo89: TfrxMemoView
          Left = 1016.693570000000000000
          Top = 37.795300000000000000
          Width = 77.480322280000000000
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
          Font.Style = [fsBold]
          HAlign = haRight
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        Height = 15.118110240000000000
        Top = 1020.473100000000000000
        Width = 1122.520410000000000000
        AllowSplit = True
        Condition = 'frxDataset."idGrupoGerencial"'
        object Shape5: TfrxShapeView
          Left = 26.456710000000000000
          Width = 1069.606516460000000000
          Height = 15.118120000000000000
          Fill.BackColor = 10526880
          Frame.Color = 15790320
        end
        object Line60: TfrxLineView
          Left = 26.456710000000000000
          Height = 15.118110240000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
          Frame.Width = 0.100000000000000000
        end
        object Line61: TfrxLineView
          Left = 1096.063700000000000000
          Height = 15.118110240000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
          Frame.Width = 0.100000000000000000
        end
        object Memo90: TfrxMemoView
          Left = 28.015770000000000000
          Top = 1.889763780000000000
          Width = 319.606370000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[(<frxDataset."descGrupoGerencial">)]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
      end
      object GroupFooter1: TfrxGroupFooter
        FillType = ftBrush
        Height = 15.118110240000000000
        Top = 1096.063700000000000000
        Width = 1122.520410000000000000
        AllowSplit = True
        object Shape6: TfrxShapeView
          Left = 26.456710000000000000
          Width = 1069.606516460000000000
          Height = 15.118120000000000000
          Fill.BackColor = 15790320
          Frame.Color = 15790320
        end
        object Line62: TfrxLineView
          Left = 26.456710000000000000
          Height = 15.118110240000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
          Frame.Width = 0.100000000000000000
        end
        object Line63: TfrxLineView
          Left = 1096.063700000000000000
          Height = 15.118110240000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
          Frame.Width = 0.100000000000000000
        end
        object Memo92: TfrxMemoView
          Left = 27.968503937007870000
          Top = 1.511811020000000000
          Width = 160.866110000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'TOTAL: [(<frxDataset."descGrupoGerencial">)]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Line64: TfrxLineView
          Left = 265.322961580000000000
          Height = 15.118110240000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
          Frame.Width = 0.100000000000000000
        end
        object Line65: TfrxLineView
          Left = 334.488315910000000000
          Height = 15.118110240000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
          Frame.Width = 0.100000000000000000
        end
        object Line66: TfrxLineView
          Left = 403.275717480000000000
          Height = 15.118110240000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
          Frame.Width = 0.100000000000000000
        end
        object Line67: TfrxLineView
          Left = 471.307213540000000000
          Height = 15.118110240000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
          Frame.Width = 0.100000000000000000
        end
        object Line68: TfrxLineView
          Left = 539.338709610000000000
          Height = 15.118110240000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
          Frame.Width = 0.100000000000000000
        end
        object Line69: TfrxLineView
          Left = 607.370205670000000000
          Height = 15.118110240000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
          Frame.Width = 0.100000000000000000
        end
        object Line70: TfrxLineView
          Left = 676.535560000000000000
          Height = 15.118110240000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
          Frame.Width = 0.100000000000000000
        end
        object Line71: TfrxLineView
          Left = 743.433197800000000000
          Height = 15.118110240000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
          Frame.Width = 0.100000000000000000
        end
        object Line72: TfrxLineView
          Left = 811.464693860000000000
          Height = 15.118110240000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
          Frame.Width = 0.100000000000000000
        end
        object Line73: TfrxLineView
          Left = 879.496189920000000000
          Height = 15.118110240000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
          Frame.Width = 0.100000000000000000
        end
        object Line74: TfrxLineView
          Left = 947.527685990000000000
          Height = 15.118110240000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
          Frame.Width = 0.100000000000000000
        end
        object Line75: TfrxLineView
          Left = 1014.803276540000000000
          Height = 15.118110240000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
          Frame.Width = 0.100000000000000000
        end
        object Line76: TfrxLineView
          Left = 196.535560000000000000
          Height = 15.118110240000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
          Frame.Width = 0.100000000000000000
        end
        object Memo93: TfrxMemoView
          Left = 196.535560000000000000
          Top = 1.511811020000100000
          Width = 66.141732280000000000
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
          Font.Style = [fsBold]
          HAlign = haRight
          HideZeros = True
          Memo.UTF8W = (
            '[SUM(<frxDataset."mes1">,DetailDataRelMensal)]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo94: TfrxMemoView
          Left = 264.945008820000000000
          Top = 1.511811023622160000
          Width = 66.141732280000000000
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
          Font.Style = [fsBold]
          HAlign = haRight
          HideZeros = True
          Memo.UTF8W = (
            '[SUM(<frxDataset."mes2">,DetailDataRelMensal)]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo95: TfrxMemoView
          Left = 333.354457640000000000
          Top = 1.511811023622160000
          Width = 66.141732280000000000
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
          Font.Style = [fsBold]
          HAlign = haRight
          HideZeros = True
          Memo.UTF8W = (
            '[SUM(<frxDataset."mes3">,DetailDataRelMensal)]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo96: TfrxMemoView
          Left = 402.141859220000000000
          Top = 1.511811023622160000
          Width = 66.141732280000000000
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
          Font.Style = [fsBold]
          HAlign = haRight
          HideZeros = True
          Memo.UTF8W = (
            '[SUM(<frxDataset."mes4">,DetailDataRelMensal)]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo97: TfrxMemoView
          Left = 470.551308030000000000
          Top = 1.511811023622160000
          Width = 66.141732280000000000
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
          Font.Style = [fsBold]
          HAlign = haRight
          HideZeros = True
          Memo.UTF8W = (
            '[SUM(<frxDataset."mes5">,DetailDataRelMensal)]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo98: TfrxMemoView
          Left = 538.582804100000000000
          Top = 1.511811023622160000
          Width = 66.141732280000000000
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
          Font.Style = [fsBold]
          HAlign = haRight
          HideZeros = True
          Memo.UTF8W = (
            '[SUM(<frxDataset."mes6">,DetailDataRelMensal)]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo99: TfrxMemoView
          Left = 606.614300160000000000
          Top = 1.511811023622160000
          Width = 66.141732280000000000
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
          Font.Style = [fsBold]
          HAlign = haRight
          HideZeros = True
          Memo.UTF8W = (
            '[SUM(<frxDataset."mes7">,DetailDataRelMensal)]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo100: TfrxMemoView
          Left = 675.023748980000000000
          Top = 1.511811023622160000
          Width = 66.141732280000000000
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
          Font.Style = [fsBold]
          HAlign = haRight
          HideZeros = True
          Memo.UTF8W = (
            '[SUM(<frxDataset."mes8">,DetailDataRelMensal)]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo101: TfrxMemoView
          Left = 742.677292290000000000
          Top = 1.511811023622160000
          Width = 66.141732280000000000
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
          Font.Style = [fsBold]
          HAlign = haRight
          HideZeros = True
          Memo.UTF8W = (
            '[SUM(<frxDataset."mes9">,DetailDataRelMensal)]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo102: TfrxMemoView
          Left = 810.708788350000000000
          Top = 1.511811023622160000
          Width = 66.141732280000000000
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
          Font.Style = [fsBold]
          HAlign = haRight
          HideZeros = True
          Memo.UTF8W = (
            '[SUM(<frxDataset."mes10">,DetailDataRelMensal)]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo103: TfrxMemoView
          Left = 878.740284410000000000
          Top = 1.511811023622160000
          Width = 66.141732280000000000
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
          Font.Style = [fsBold]
          HAlign = haRight
          HideZeros = True
          Memo.UTF8W = (
            '[SUM(<frxDataset."mes11">,DetailDataRelMensal)]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo104: TfrxMemoView
          Left = 947.173357720000000000
          Top = 1.511811023622160000
          Width = 66.141732280000000000
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
          Font.Style = [fsBold]
          HAlign = haRight
          HideZeros = True
          Memo.UTF8W = (
            '[SUM(<frxDataset."mes12">,DetailDataRelMensal)]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo105: TfrxMemoView
          Left = 1014.826901030000000000
          Top = 1.511811023622160000
          Width = 81.259842520000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          HideZeros = True
          Memo.UTF8W = (
            
              '[SUM(<frxDataset."mes1">+<frxDataset."mes2">+<frxDataset."mes3">' +
              '+<frxDataset."mes4">+<frxDataset."mes5">+<frxDataset."mes6">+<fr' +
              'xDataset."mes7">+<frxDataset."mes8">+<frxDataset."mes9">+<frxDat' +
              'aset."mes10">+<frxDataset."mes11">+<frxDataset."mes12">)]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
      end
      object HeaderAdiantamento: TfrxHeader
        FillType = ftBrush
        Height = 61.929177800000000000
        Top = 589.606680000000000000
        Width = 1122.520410000000000000
        AllowSplit = True
        ReprintOnNewPage = True
        object Shape7: TfrxShapeView
          Left = 26.456692910000000000
          Top = 45.220470000000000000
          Width = 1069.606299212600000000
          Height = 15.118120000000000000
          Fill.BackColor = 15790320
          Frame.Color = 15790320
        end
        object Memo108: TfrxMemoView
          Left = 769.511811023622000000
          Top = 44.976377950000000000
          Width = 89.874150000000000000
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
            'Sa'#237'da')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo109: TfrxMemoView
          Left = 925.984251968503900000
          Top = 44.976377950000000000
          Width = 76.504020000000000000
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
            'Saldo')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo110: TfrxMemoView
          Left = 622.488188980000000000
          Top = 44.976377950000000000
          Width = 98.267780000000000000
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
            'Entrada')
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo111: TfrxMemoView
          Left = 141.913297950000000000
          Top = 44.976377950000000000
          Width = 285.590600000000000000
          Height = 15.118110240000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Cliente/Fornecedor')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo112: TfrxMemoView
          Left = 100.456692910000000000
          Top = 44.976377950000000000
          Width = 37.795300000000000000
          Height = 15.118110240000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'C'#243'digo')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Line78: TfrxLineView
          Left = 26.456692910000000000
          Width = 1069.606299212600000000
          Color = clBlack
          Frame.Typ = [ftTop]
          Frame.Width = 0.100000000000000000
        end
        object Memo113: TfrxMemoView
          Left = 26.456692910000000000
          Top = 25.220470000000000000
          Width = 1069.606299210000000000
          Height = 18.897637800000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Fill.BackColor = clMoneyGreen
          HAlign = haCenter
          Memo.UTF8W = (
            'Adiantamentos')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object MasterAdiantamento: TfrxMasterData
        FillType = ftBrush
        Height = 3.779530000000000000
        Top = 563.149970000000000000
        Visible = False
        Width = 1122.520410000000000000
        AllowSplit = True
        DataSet = frxDBAdiantamento
        DataSetName = 'frxDBAdiantamento'
        RowCount = 0
      end
      object DetailAdiantamento: TfrxDetailData
        FillType = ftBrush
        Height = 15.118120000000000000
        Top = 672.756340000000000000
        Width = 1122.520410000000000000
        AllowSplit = True
        DataSet = frxDBAdiantamento
        DataSetName = 'frxDBAdiantamento'
        RowCount = 0
        object Memo114: TfrxMemoView
          Left = 100.456692910000000000
          Width = 37.795300000000000000
          Height = 15.118110240000000000
          StretchMode = smActualHeight
          DataField = 'idCadGeral'
          DataSet = frxDBAdiantamento
          DataSetName = 'frxDBAdiantamento'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBAdiantamento."idCadGeral"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo115: TfrxMemoView
          Left = 769.133858270000000000
          Width = 90.708720000000000000
          Height = 15.118110240000000000
          DataField = 'vlSaida'
          DataSet = frxDBAdiantamento
          DataSetName = 'frxDBAdiantamento'
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
            '[frxDBAdiantamento."vlSaida"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo117: TfrxMemoView
          Left = 622.488188980000000000
          Width = 102.047244090000000000
          Height = 15.118110240000000000
          DataField = 'vlEntrada'
          DataSet = frxDBAdiantamento
          DataSetName = 'frxDBAdiantamento'
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
            '[frxDBAdiantamento."vlEntrada"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo118: TfrxMemoView
          Left = 142.472480000000000000
          Width = 317.480520000000000000
          Height = 15.118110240000000000
          DataField = 'descCadGeral'
          DataSet = frxDBAdiantamento
          DataSetName = 'frxDBAdiantamento'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBAdiantamento."descCadGeral"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
      end
      object FooterAdiantamento: TfrxFooter
        FillType = ftBrush
        Height = 18.897650000000000000
        Top = 710.551640000000000000
        Width = 1122.520410000000000000
        OnBeforePrint = 'FooterVencidosOnBeforePrint'
        AllowSplit = True
        object Shape10: TfrxShapeView
          Left = 26.456692910000000000
          Width = 733.228346460000000000
          Height = 18.897650000000000000
          Fill.BackColor = clCream
          Frame.Color = 15790320
        end
        object Memo119: TfrxMemoView
          Left = 769.133858270000000000
          Top = 2.097637800000030000
          Width = 90.708661420000000000
          Height = 15.118120000000000000
          DataSet = frxDBRelConta
          DataSetName = 'frxDBRelConta'
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
            '[SUM(<frxDBAdiantamento."vlSaida">,DetailAdiantamento)]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo120: TfrxMemoView
          Left = 622.488188976378000000
          Top = 2.097637800000030000
          Width = 102.047244094488000000
          Height = 15.118120000000000000
          DataSet = frxDBRelConta
          DataSetName = 'frxDBRelConta'
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
            '[SUM(<frxDBAdiantamento."vlEntrada">,DetailAdiantamento)]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo122: TfrxMemoView
          Left = 117.165430000000000000
          Top = 2.099527559999960000
          Width = 139.842610000000000000
          Height = 15.118107800000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Saldo Anterior :')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo123: TfrxMemoView
          Left = 283.464750000000000000
          Top = 2.097637800000030000
          Width = 94.488250000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[(<frxDBAdiantamento."vlSaldoAnterior">)]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo116: TfrxMemoView
          Left = 908.000000000000000000
          Top = 2.267716535433120000
          Width = 94.488250000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[(<frxDBAdiantamento."vlSaldoAdiantamento">)]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Height = 89.488250000000000000
        Top = 1266.142550000000000000
        Width = 1122.520410000000000000
        object Memo13: TfrxMemoView
          Left = 316.157700000000000000
          Top = 7.181102362204680000
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
          Top = 7.181102362204680000
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
          Left = 954.583180000000000000
          Top = 7.181102360000070000
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
          Top = 3.401360000000070000
          Width = 1072.228346460000000000
          Color = clBlack
          Frame.Typ = [ftTop]
          Frame.Width = 0.100000000000000000
        end
        object Memo121: TfrxMemoView
          Left = 642.000000000000000000
          Top = 7.181102360000070000
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
      object Header1: TfrxHeader
        FillType = ftBrush
        Height = 57.472480000000000000
        Top = 166.299320000000000000
        Width = 1122.520410000000000000
        object Shape11: TfrxShapeView
          Left = 36.456692910000000000
          Top = 0.779529999999994000
          Width = 1058.267928900000000000
          Height = 52.913420000000000000
          Frame.Width = 0.100000000000000000
        end
        object Memo124: TfrxMemoView
          Left = 43.456692910000000000
          Top = 7.692950000000000000
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
          Left = 119.299302910000000000
          Top = 7.559059999999990000
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
          Left = 200.315090000000000000
          Top = 7.692950000000000000
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
          Left = 306.157700000000000000
          Top = 7.559059999999990000
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
          Left = 389.291590000000000000
          Top = 7.692950000000000000
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
          Left = 461.354670000000000000
          Top = 7.559059999999990000
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
          Left = 544.252320000000000000
          Top = 7.692950000000000000
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
        object DBEdtPosicao: TfrxMemoView
          Left = 593.638220000000000000
          Top = 7.559059999999990000
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
          Left = 668.976810000000000000
          Top = 7.692950000000000000
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
          Left = 718.362710000000000000
          Top = 7.559059999999990000
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
          Left = 854.173780000000000000
          Top = 7.559059999999990000
          Width = 83.149660000000000000
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
          Left = 941.102970000000000000
          Top = 7.559059999999990000
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
          Left = 43.574830000000000000
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
          Left = 119.417440000000000000
          Top = 22.677180000000000000
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
          Left = 257.008040000000000000
          Top = 22.677180000000000000
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
          Left = 338.378170000000000000
          Top = 22.677180000000000000
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
          Left = 362.834880000000000000
          Top = 22.677180000000000000
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
          Left = 485.779840000000000000
          Top = 22.677180000000000000
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
          Left = 506.457020000000000000
          Top = 22.677180000000000000
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
          Left = 596.827150000000000000
          Top = 22.677180000000000000
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
          Left = 621.283860000000000000
          Top = 22.677180000000000000
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
          Left = 737.228820000000000000
          Top = 22.677180000000000000
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
          Left = 763.465060000000000000
          Top = 22.677180000000000000
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
          Left = 853.835190000000000000
          Top = 22.677180000000000000
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
          Left = 878.291900000000000000
          Top = 22.677180000000000000
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
          Left = 975.339210000000000000
          Top = 22.677180000000000000
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
          Left = 41.574830000000000000
          Top = 37.795299999999900000
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
          Left = 115.385900000000000000
          Top = 37.795299999999900000
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
          Left = 139.842610000000000000
          Top = 37.795299999999900000
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
          Left = 240.110390000000000000
          Top = 37.795299999999900000
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
          Left = 260.787570000000000000
          Top = 37.795299999999900000
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
          Left = 361.055350000000000000
          Top = 37.795299999999900000
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
      end
    end
  end
  object dspFornecedores: TDataSetProvider
    DataSet = qryFornecedores
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 144
    Top = 496
  end
  object qryFornecedores: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmPadrao.dbConexao
    Left = 56
    Top = 496
  end
  object cdsFornecedores: TClientDataSet
    Aggregates = <>
    CommandText = 
      'SELECT idFornecedor, descCadFornecedor, descAbreviada FROM vCadF' +
      'ornecedorContabil ORDER BY descCadFornecedor'
    Params = <>
    ProviderName = 'dspFornecedores'
    Left = 232
    Top = 496
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
  object dsFornecedores: TDataSource
    DataSet = cdsFornecedores
    Left = 320
    Top = 496
  end
  object dsGrupoCad: TDataSource
    DataSet = cdsGrupoCad
    Left = 320
    Top = 544
  end
  object cdsGrupoCad: TClientDataSet
    Aggregates = <>
    CommandText = 'SELECT * FROM grupocad WHERE stGrupoCad = '#39'ATIVO'#39
    Params = <>
    ProviderName = 'dspGrupoCad'
    Left = 232
    Top = 544
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
  object dspGrupoCad: TDataSetProvider
    DataSet = sdsGrupoCad
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 144
    Top = 544
  end
  object sdsGrupoCad: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmPadrao.dbConexao
    Left = 56
    Top = 544
  end
  object sdsSegmento: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmPadrao.dbConexao
    Left = 56
    Top = 600
  end
  object dspSegmento: TDataSetProvider
    DataSet = sdsSegmento
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 144
    Top = 600
  end
  object cdsSegmento: TClientDataSet
    Aggregates = <>
    CommandText = 'SELECT * FROM segmento WHERE stSegmento = '#39'ATIVO'#39
    Params = <>
    ProviderName = 'dspSegmento'
    Left = 232
    Top = 600
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
  object dsSegmento: TDataSource
    DataSet = cdsSegmento
    Left = 320
    Top = 600
  end
  object dspRelAdiantamento: TDataSetProvider
    DataSet = dmPadrao.sdsRelatorio
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 600
    Top = 303
  end
  object frxDBAdiantamento: TfrxDBDataset
    UserName = 'frxDBAdiantamento'
    CloseDataSource = False
    FieldAliases.Strings = (
      'idCadGeral=idCadGeral'
      'descCadGeral=descCadGeral'
      'vlEntrada=vlEntrada'
      'vlSaida=vlSaida'
      'vlSaldoAdiantamento=vlSaldoAdiantamento'
      'vlSaldoAnterior=vlSaldoAnterior')
    OpenDataSource = False
    DataSet = cdsRelAdiantamento
    BCDToCurrency = False
    Left = 568
    Top = 304
  end
  object cdsRelAdiantamento: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    CommandText = 'EXEC spRelFluxoAdiantamento 9999, 1, 0, '#39'S'#39
    Params = <>
    ProviderName = 'dspRelAdiantamento'
    Left = 632
    Top = 304
    object cdsRelAdiantamentoidCadGeral: TIntegerField
      FieldName = 'idCadGeral'
    end
    object cdsRelAdiantamentodescCadGeral: TStringField
      FieldName = 'descCadGeral'
      Size = 50
    end
    object cdsRelAdiantamentovlEntrada: TFMTBCDField
      FieldName = 'vlEntrada'
      Precision = 19
      Size = 4
    end
    object cdsRelAdiantamentovlSaida: TFMTBCDField
      FieldName = 'vlSaida'
      Precision = 19
      Size = 4
    end
    object cdsRelAdiantamentovlSaldoAdiantamento: TFMTBCDField
      FieldName = 'vlSaldoAdiantamento'
      Precision = 19
      Size = 4
    end
    object cdsRelAdiantamentovlSaldoAnterior: TFMTBCDField
      FieldName = 'vlSaldoAnterior'
      Precision = 19
      Size = 4
    end
  end
  object dsEmpresas: TDataSource
    DataSet = cdsEmpresas
    Left = 320
    Top = 448
  end
  object cdsEmpresas: TClientDataSet
    Aggregates = <>
    CommandText = 'SELECT * FROM vCadEmpresaContabil'
    Params = <>
    ProviderName = 'dspEmpresas'
    Left = 232
    Top = 448
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
    Left = 144
    Top = 448
  end
  object sdsEmpresas: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmPadrao.dbConexao
    Left = 56
    Top = 448
  end
end
