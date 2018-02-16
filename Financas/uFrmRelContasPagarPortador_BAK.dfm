inherited FrmRelContasPagarPortador_BAK: TFrmRelContasPagarPortador_BAK
  Caption = 'Rela'#231#227'o de Contas a Pagar por Portador'
  ClientHeight = 543
  ClientWidth = 1150
  Icon.Data = {
    0000010001001010000001002000680400001600000028000000100000002000
    0000010020000000000000040000000000000000000000000000000000000000
    000000000000E0E0E0F0DEDEDFF0DEDEDFF0DEDEDFF0DEDEDFF0DEDEDFF0DEDE
    DFF0DEDEDFF0DEDEDFF0DEDEDFF0DEDEDFF0E2E2E2F000000000000000000000
    0000B2B2B2FF797979FF969696FF979798FF979798FF979798FF979798FF9797
    98FF979798FF979798FF989898FF949494FF777777FFC4C4C4FF000000000000
    0000AFAFAEFF979798FFFAFAFAFFEEEEEEFFEEEEEEFFEEEEEEFFEEEEEEFFEEEE
    EEFFEEEEEEFFEEEEEEFFF0F0F0FFF5F5F5FF8B8B8BFFBFBFC0FF000000000000
    0000AFAFAEFF9C9C9DFFE1E1E1FF8E8E8EFF8D8D8EFF8E8E8EFF8E8E8EFF8E8E
    8EFF8E8E8EFF8D8D8DFF939393FFF0F0F0FF8E8E8EFFC0C0C1FF000000000000
    0000AFAFAEFF979798FFFAFAFAFFECECECFFECECECFFECECECFFECECECFFECEC
    ECFFECECECFFECECECFFEEEEEFFFF7F7F7FF8B8B8BFFC0C0C1FF000000000000
    0000AFAFAEFF9B9B9CFFE1E1E2FF919191FF909090FF909091FF909091FF9090
    91FF909091FF8F8F90FF949495FFEFEFEFFF8E8E8EFFC0C0C1FF000000000000
    0000AFAFAEFF979798FFF8F8F8FFE7E7E7FFE7E7E7FFE7E7E7FFE7E7E7FFE7E7
    E7FFE7E7E7FFE7E7E7FFEAEAEAFFF6F6F6FF8B8B8BFFC0C0C1FF000000000000
    0000AEAEADFF9E9E9EFFEEEEEEFFA5A5A5FFA4A4A4FFA5A5A5FFA5A5A5FFA5A5
    A5FFA5A5A6FF9E9E9EFF9F9FA0FFF0F0F0FF8D8D8DFFC0C0C1FF000000000000
    0000B0B0AFFF7F7F7FFFACACACFF8C8C8CFF8A8A89FF8A8A8AFF89898AFF8A8A
    8AFF8B8B8BFFBABABAFFE0E0DFFFF5F5F5FF8C8C8CFFC0C0C1FF000000000000
    0000DADADAFF858585FF6E6E6EFFADADADFFBDBDBDFFB8B8B8FFB8B8B8FFB6B6
    B6FF828282FF89898AFFACACADFFF1F1F1FF8D8D8DFFC0C0C1FF000000000000
    000000000000000000009B9B9BFF838384FFDFDFDFFFFFFFFFFFFFFFFFFFFFFF
    FFFF949494FFA2A2A2FFD0D0D1FFF4F4F4FF8C8C8CFFC0C0C1FF000000000000
    0000000000000000000000000000B6B6B5FF727273FFB4B4B5FFFFFFFFFFFFFF
    FFFF919191FF8E8E8FFFBABABAFFF3F3F3FF8D8D8DFFC0C0C1FF000000000000
    000000000000000000000000000000000000D7D7D7FF7E7E7EFF919192FFEAEA
    EAFF989897FF959595FFB9B9BAFFF3F3F4FF8D8D8DFFC0C0C1FF000000000000
    00000000000000000000000000000000000000000000000000009C9C9BFF7B7B
    7CFF7E7E7EFFB9B9B9FFFFFFFFFFF3F3F3FF898989FFBFBFC0FF000000000000
    000000000000000000000000000000000000000000000000000000000000C1C1
    C1FF828282FF838383FF939394FF949494FF7F7F7FFFC5C5C5FF000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    000000000000E2E2E2F0E1E1E1F0E1E1E1F0E2E2E2F00000000000000000C003
    0000800100008001000080010000800100008001000080010000800100008001
    000080010000E0010000F0010000F8010000FE010000FF010000FFC30000}
  ExplicitWidth = 1158
  ExplicitHeight = 570
  PixelsPerInch = 96
  TextHeight = 13
  inherited Bevel3: TBevel
    Width = 1150
    ExplicitWidth = 687
  end
  inherited Bevel1: TBevel
    Top = 505
    Width = 1150
    ExplicitTop = 345
    ExplicitWidth = 687
  end
  inherited Bevel5: TBevel
    Width = 1150
    ExplicitLeft = 0
    ExplicitTop = 29
    ExplicitWidth = 687
  end
  inherited PanBotoes: TCPanelGradient
    Top = 509
    Width = 1150
    TabOrder = 3
    ExplicitTop = 509
    ExplicitWidth = 1150
    inherited BtnFechar: TCBitBtn
      Left = 398
      Top = 6
      ExplicitLeft = 398
      ExplicitTop = 6
    end
  end
  inherited DBEidEmpresa: TCDBEdit
    TabOrder = 9
  end
  inherited LookdescCadEmpresa: TCLookUp
    TabOrder = 5
  end
  inherited LookdescAbreviada: TCLookUp
    TabOrder = 6
  end
  object CGroupBox1: TCGroupBox [8]
    Left = 8
    Top = 37
    Width = 465
    Height = 268
    Caption = 'Param'#234'tros'
    TabOrder = 0
    object CLabel3: TCLabel
      Left = 29
      Top = 153
      Width = 53
      Height = 13
      Alignment = taRightJustify
      Caption = 'Emiss'#227'o de'
    end
    object CLabel4: TCLabel
      Left = 174
      Top = 153
      Width = 16
      Height = 13
      Alignment = taRightJustify
      Caption = 'at'#233
    end
    object Label4: TLabel
      Left = 23
      Top = 219
      Width = 59
      Height = 13
      Alignment = taRightJustify
      Caption = 'Gerencial de'
    end
    object LblCad: TCLabel
      Left = 15
      Top = 19
      Width = 66
      Height = 13
      Alignment = taRightJustify
      Caption = 'Fornecedores'
    end
    object CLabel5: TCLabel
      Left = 189
      Top = 219
      Width = 16
      Height = 13
      Alignment = taRightJustify
      Caption = 'at'#233
    end
    object Label2: TLabel
      Left = 36
      Top = 197
      Width = 46
      Height = 13
      Alignment = taRightJustify
      Caption = 'Titulos de'
    end
    object Label3: TLabel
      Left = 174
      Top = 197
      Width = 16
      Height = 13
      Alignment = taRightJustify
      Caption = 'at'#233
    end
    object CLabel1: TCLabel
      Left = 12
      Top = 175
      Width = 70
      Height = 13
      Alignment = taRightJustify
      Caption = 'Vencimento de'
    end
    object CLabel6: TCLabel
      Left = 174
      Top = 175
      Width = 16
      Height = 13
      Alignment = taRightJustify
      Caption = 'at'#233
    end
    object CLabel7: TCLabel
      Left = 12
      Top = 241
      Width = 88
      Height = 13
      Alignment = taRightJustify
      Caption = 'Corre'#231#227'o de Juros'
    end
    object CLabel8: TCLabel
      Left = 174
      Top = 241
      Width = 109
      Height = 13
      Alignment = taRightJustify
      Caption = 'Altera'#231#227'o no Desconto'
    end
    object CLabel11: TCLabel
      Left = 34
      Top = 87
      Width = 48
      Height = 13
      Alignment = taRightJustify
      Caption = 'Resultado'
    end
    object CLabel22: TCLabel
      Left = 336
      Top = 109
      Width = 40
      Height = 13
      Alignment = taRightJustify
      Caption = 'Cota'#231#227'o'
    end
    object CLabel21: TCLabel
      Left = 53
      Top = 109
      Width = 29
      Height = 13
      Alignment = taRightJustify
      Caption = #205'ndice'
    end
    object CLabel9: TCLabel
      Left = 40
      Top = 131
      Width = 42
      Height = 13
      Alignment = taRightJustify
      Caption = 'Portador'
      Transparent = True
    end
    object CLabel10: TCLabel
      Left = 20
      Top = 41
      Width = 61
      Height = 13
      Alignment = taRightJustify
      Caption = 'Grupos Emp.'
    end
    object CLabel12: TCLabel
      Left = 28
      Top = 64
      Width = 53
      Height = 13
      Alignment = taRightJustify
      Caption = 'Segmentos'
    end
    object DBEdtEmissaoIni: TCDBEdit
      Left = 88
      Top = 150
      Width = 80
      Height = 19
      BevelKind = bkTile
      BorderStyle = bsNone
      DataField = 'dtEmissaoIni'
      DataSource = dsPadrao
      MaxLength = 10
      TabOrder = 10
      DecimalControl = True
      KeyMode = kmDate
    end
    object DBEdtEmissaoFim: TCDBEdit
      Left = 196
      Top = 150
      Width = 80
      Height = 19
      BevelKind = bkTile
      BorderStyle = bsNone
      DataField = 'dtEmissaoFim'
      DataSource = dsPadrao
      MaxLength = 10
      TabOrder = 11
      DecimalControl = True
      KeyMode = kmDate
    end
    object DBCBPrevisoes: TCDBCheckBox
      Left = 357
      Top = 240
      Width = 105
      Height = 17
      Caption = 'Incluir Previs'#245'es ?'
      DataField = 'Previsoes'
      DataSource = dsPadrao
      TabOrder = 20
      ValueChecked = 'S'
      ValueUnchecked = 'N'
    end
    object DBEclassificacaoFim: TCDBEdit
      Left = 211
      Top = 216
      Width = 95
      Height = 19
      BevelKind = bkTile
      BiDiMode = bdLeftToRight
      BorderStyle = bsNone
      DataField = 'classificacaoFim'
      DataSource = dsPadrao
      ParentBiDiMode = False
      TabOrder = 17
      OnEnter = DBEclassificacaoFimEnter
      OnExit = DBEclassificacaoFimExit
      Find = FindGerencial
      DecimalControl = True
      KeyMode = kmNormal
    end
    object DBEclassificacaoIni: TCDBEdit
      Left = 88
      Top = 216
      Width = 95
      Height = 19
      BevelKind = bkTile
      BiDiMode = bdLeftToRight
      BorderStyle = bsNone
      DataField = 'classificacaoIni'
      DataSource = dsPadrao
      ParentBiDiMode = False
      TabOrder = 16
      OnEnter = DBEclassificacaoIniEnter
      OnExit = DBEclassificacaoIniExit
      Find = FindGerencial
      DecimalControl = True
      KeyMode = kmNormal
    end
    object DBEnrTituloIni: TCDBEdit
      Left = 88
      Top = 194
      Width = 80
      Height = 19
      BevelKind = bkTile
      BorderStyle = bsNone
      DataField = 'nrTituloPagIni'
      DataSource = dsPadrao
      TabOrder = 14
      OnEnter = DBEidEmpresaEnter
      OnExit = DBEidEmpresaExit
      DecimalControl = True
      KeyMode = kmNormal
    end
    object DBEnrTituloFim: TCDBEdit
      Left = 196
      Top = 194
      Width = 79
      Height = 19
      BevelKind = bkTile
      BorderStyle = bsNone
      DataField = 'nrTituloPagFim'
      DataSource = dsPadrao
      TabOrder = 15
      OnEnter = DBEidEmpresaEnter
      OnExit = DBEidEmpresaExit
      DecimalControl = True
      KeyMode = kmNormal
    end
    object DBEdtVencimentoIni: TCDBEdit
      Left = 88
      Top = 172
      Width = 80
      Height = 19
      BevelKind = bkTile
      BorderStyle = bsNone
      DataField = 'dtVencimentoIni'
      DataSource = dsPadrao
      MaxLength = 10
      TabOrder = 12
      DecimalControl = True
      KeyMode = kmDate
    end
    object DBEdtVencimentoFim: TCDBEdit
      Left = 196
      Top = 172
      Width = 80
      Height = 19
      BevelKind = bkTile
      BorderStyle = bsNone
      DataField = 'dtVencimentoFim'
      DataSource = dsPadrao
      MaxLength = 10
      TabOrder = 13
      DecimalControl = True
      KeyMode = kmDate
    end
    object DBEJuros: TCDBEdit
      Left = 106
      Top = 238
      Width = 62
      Height = 19
      BevelKind = bkTile
      BorderStyle = bsNone
      DataField = 'juros'
      DataSource = dsPadrao
      MaxLength = 10
      TabOrder = 18
      DecimalControl = True
      KeyMode = kmNormal
    end
    object DBEDesconto: TCDBEdit
      Left = 289
      Top = 238
      Width = 62
      Height = 19
      BevelKind = bkTile
      BorderStyle = bsNone
      DataField = 'desconto'
      DataSource = dsPadrao
      MaxLength = 10
      TabOrder = 19
      OnExit = DBEDescontoExit
      DecimalControl = True
      KeyMode = kmNormal
    end
    object DBEidResultado: TCDBEdit
      Left = 88
      Top = 84
      Width = 48
      Height = 19
      BevelKind = bkTile
      BorderStyle = bsNone
      DataField = 'idResultado'
      DataSource = dsPadrao
      TabOrder = 3
      Find = FindResultado
      DecimalControl = True
      KeyMode = kmNormal
    end
    object LookResultado: TCLookUp
      Left = 142
      Top = 84
      Width = 313
      Height = 19
      Alignment = taLeftJustify
      BevelInner = bvSpace
      BevelOuter = bvLowered
      Color = 14149350
      ParentBackground = False
      TabOrder = 4
      Key.Strings = (
        'idResultado')
      LookUpKey.Strings = (
        'idResultado')
      AlternateSQL.Strings = (
        
          'SELECT descResultado FROM Resultado WHERE idEmpresa = [DBEidEmpr' +
          'esa] AND idResultado = ?')
      ClientDataSet = cdsLookUp
      DataSource = dsPadrao
      ValidaCampoObrigatorio = True
      CampoObrigatorio = True
      LookUpTable = 'Resultado'
      ReturnField = 'descResultado'
    end
    object DBEidFornecedores: TcxPopupEdit
      Left = 87
      Top = 14
      Properties.PopupControl = pnlPopupFornecedores
      Properties.OnPopup = DBEidFornecedoresPropertiesPopup
      Style.BorderColor = clBtnShadow
      Style.BorderStyle = ebsSingle
      Style.ButtonStyle = btsOffice11
      StyleFocused.BorderStyle = ebsSingle
      TabOrder = 0
      Width = 368
    end
    object LookLancamento: TCLookUp
      Left = 382
      Top = 106
      Width = 73
      Height = 19
      Alignment = taRightJustify
      BevelInner = bvSpace
      BevelOuter = bvLowered
      Color = 14149350
      ParentBackground = False
      TabOrder = 7
      Key.Strings = (
        'idIndice')
      LookUpKey.Strings = (
        'idIndice')
      AlternateSQL.Strings = (
        
          'SELECT vlLancamento FROM indicelancamento WHERE dtLancamento = (' +
          'SELECT MAX(ind.dtLancamento) FROM indicelancamento ind WHERE ind' +
          '.idIndice = indicelancamento.idIndice) AND idIndice = ?')
      ClientDataSet = cdsLookUp
      DataSource = dsPadrao
      ValidaCampoObrigatorio = False
      CampoObrigatorio = True
      LookUpTable = 'IndiceLancamento'
      ReturnField = 'vlLancamento'
    end
    object LookIndice: TCLookUp
      Left = 142
      Top = 106
      Width = 189
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
      ValidaCampoObrigatorio = True
      CampoObrigatorio = True
      LookUpTable = 'Indice'
      ReturnField = 'descIndice'
    end
    object DBEidIndice: TCDBEdit
      Left = 88
      Top = 106
      Width = 48
      Height = 19
      BevelKind = bkTile
      BorderStyle = bsNone
      DataField = 'idIndice'
      DataSource = dsPadrao
      TabOrder = 5
      Find = FindIndice
      DecimalControl = True
      KeyMode = kmNormal
    end
    object LookPortador: TCLookUp
      Left = 142
      Top = 128
      Width = 314
      Height = 19
      Alignment = taLeftJustify
      BevelInner = bvSpace
      BevelOuter = bvLowered
      Color = 14149350
      ParentBackground = False
      TabOrder = 9
      Key.Strings = (
        'idPortador')
      LookUpKey.Strings = (
        'idPortador')
      ClientDataSet = cdsLookUp
      DataSource = dsPadrao
      ValidaCampoObrigatorio = True
      CampoObrigatorio = True
      LookUpTable = 'Portador'
      ReturnField = 'descPortador'
    end
    object DBEidPortador: TCDBEdit
      Left = 88
      Top = 128
      Width = 48
      Height = 19
      BevelKind = bkTile
      BorderStyle = bsNone
      DataField = 'idPortador'
      DataSource = dsPadrao
      TabOrder = 8
      Find = dmFind.FindPortador
      DecimalControl = True
      KeyMode = kmNormal
    end
    object DBEidGrupo: TcxPopupEdit
      Left = 87
      Top = 37
      Properties.PopupControl = panGrupos
      Properties.OnPopup = DBEidGrupoPropertiesPopup
      Style.BorderColor = clBtnShadow
      Style.BorderStyle = ebsSingle
      Style.ButtonStyle = btsOffice11
      StyleFocused.BorderStyle = ebsSingle
      TabOrder = 1
      Width = 368
    end
    object DBEidSegmento: TcxPopupEdit
      Left = 87
      Top = 60
      Properties.PopupControl = panSegmento
      Properties.OnPopup = DBEidSegmentoPropertiesPopup
      Style.BorderColor = clBtnShadow
      Style.BorderStyle = ebsSingle
      Style.ButtonStyle = btsOffice11
      StyleFocused.BorderStyle = ebsSingle
      TabOrder = 2
      Width = 368
    end
  end
  object DBRGstTitulo: TCDBRadioGroup [9]
    Left = 8
    Top = 311
    Width = 465
    Height = 37
    Caption = 'Status'
    Columns = 4
    DataField = 'stTituloPag'
    DataSource = dsPadrao
    Items.Strings = (
      
        'Ativo/Aberto                                                    ' +
        '       '
      'Cancelado'
      'Liquidado'
      'Todos')
    ParentBackground = True
    TabOrder = 1
    Values.Strings = (
      'ATIVO'
      'CANCELADO'
      'LIQUIDADO'
      '%')
  end
  object DBRGOrdem: TCDBRadioGroup [10]
    Left = 8
    Top = 354
    Width = 465
    Height = 60
    Caption = 'Ordenar por'
    Columns = 4
    DataField = 'ordem'
    DataSource = dsPadrao
    Items.Strings = (
      'Vencimento'
      'Emiss'#227'o'
      'Titulo'
      'Dia de Vencimento'
      'Fornecedor')
    ParentBackground = True
    TabOrder = 2
    Values.Strings = (
      'V'
      'E'
      'T'
      'D'
      'F')
  end
  object CEdit1: TCEdit [11]
    Left = 518
    Top = 291
    Width = 121
    Height = 19
    BorderStyle = bsNone
    BevelKind = bkTile
    TabOrder = 7
    Text = 'CEdit1'
    Visible = False
    DataType = ftUnknown
    Modified = True
    KeyMode = kmNormal
    Decimals = 0
  end
  object pnlPopupFornecedores: TPanel [12]
    Left = 479
    Top = 37
    Width = 663
    Height = 223
    BevelOuter = bvNone
    Color = 14671839
    ParentBackground = False
    TabOrder = 8
    Visible = False
    OnEnter = pnlPopupFornecedoresEnter
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
        OnDblClick = DBTableViewFornecedorDblClick
        OnKeyDown = DBTableViewFornecedorKeyDown
        NavigatorButtons.ConfirmDelete = False
        NavigatorButtons.Delete.Enabled = False
        NavigatorButtons.Delete.Visible = False
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
        Styles.OnGetContentStyle = cxGridDBTableView1StylesGetContentStyle
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
    object RzBitBtn5: TRzBitBtn
      Left = 12
      Top = 183
      Width = 71
      Height = 28
      Default = True
      Anchors = [akLeft, akBottom]
      Caption = '&Aplicar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      HotTrack = True
      ParentFont = False
      TextShadowColor = clWhite
      TextShadowDepth = 1
      TabOrder = 1
      OnClick = RzBitBtn5Click
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
    end
    object RzBitBtn6: TRzBitBtn
      Left = 84
      Top = 183
      Width = 76
      Height = 28
      Cancel = True
      Anchors = [akLeft, akBottom]
      Caption = 'Cancelar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      HotTrack = True
      ParentFont = False
      TextShadowColor = clWhite
      TextShadowDepth = 1
      TabOrder = 2
      OnClick = RzBitBtn6Click
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
    end
    object RzBitBtn7: TRzBitBtn
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
      HotTrack = True
      ParentFont = False
      TextShadowColor = clWhite
      TextShadowDepth = 1
      TabOrder = 3
      OnClick = RzBitBtn7Click
      Glyph.Data = {
        EE000000424DEE000000000000007600000028000000100000000F0000000100
        04000000000078000000130B0000130B00001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
        888888800000000000888880FFFFFFFFF0888880FFFFFFFFF0888880FFFFFFFF
        F0888880FFFFFFFFF0888880FFFFFFFFF0888880FFFFFFFFF0888880FFFFFFFF
        F0888880FFFFFFFFF0888880FFFFFF0000888880FFFFFF0F08888880FFFFFF00
        888888800000000888888888888888888888}
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
  object CGroupBox2: TCGroupBox [14]
    Left = 8
    Top = 420
    Width = 465
    Height = 46
    TabOrder = 10
    object DBCKconsolidafilial: TCDBCheckBox
      Left = 148
      Top = 18
      Width = 127
      Height = 17
      Caption = 'Consolida Filiais?'
      DataField = 'consolidafilial'
      DataSource = dsPadrao
      TabOrder = 0
      ValueChecked = 'S'
      ValueUnchecked = 'N'
    end
    object DBCKconsolidaemp: TCDBCheckBox
      Left = 15
      Top = 18
      Width = 127
      Height = 17
      Caption = 'Consolida Empresas?'
      DataField = 'consolidaemp'
      DataSource = dsPadrao
      TabOrder = 1
      ValueChecked = 'S'
      ValueUnchecked = 'N'
    end
  end
  object panGrupos: TPanel [15]
    Left = 398
    Top = 146
    Width = 474
    Height = 223
    BevelOuter = bvNone
    Color = 14671839
    ParentBackground = False
    TabOrder = 11
    Visible = False
    OnEnter = panGruposEnter
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
        OnDblClick = DBTableViewGrupoDblClick
        OnKeyDown = DBTableViewGrupoKeyDown
        NavigatorButtons.ConfirmDelete = False
        NavigatorButtons.Delete.Enabled = False
        NavigatorButtons.Delete.Visible = False
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
        Styles.OnGetContentStyle = cxGridDBTableView1StylesGetContentStyle
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
    object BtnAplicarGrupo: TRzBitBtn
      Left = 12
      Top = 183
      Width = 71
      Height = 28
      Default = True
      Anchors = [akLeft, akBottom]
      Caption = '&Aplicar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      HotTrack = True
      ParentFont = False
      TextShadowColor = clWhite
      TextShadowDepth = 1
      TabOrder = 1
      OnClick = BtnAplicarGrupoClick
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
    end
    object BtnCancelarGrupo: TRzBitBtn
      Left = 84
      Top = 183
      Width = 76
      Height = 28
      Cancel = True
      Anchors = [akLeft, akBottom]
      Caption = 'Cancelar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      HotTrack = True
      ParentFont = False
      TextShadowColor = clWhite
      TextShadowDepth = 1
      TabOrder = 2
      OnClick = BtnCancelarGrupoClick
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
    end
    object BtnLimparGrupo: TRzBitBtn
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
      HotTrack = True
      ParentFont = False
      TextShadowColor = clWhite
      TextShadowDepth = 1
      TabOrder = 3
      OnClick = BtnLimparGrupoClick
      Glyph.Data = {
        EE000000424DEE000000000000007600000028000000100000000F0000000100
        04000000000078000000130B0000130B00001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
        888888800000000000888880FFFFFFFFF0888880FFFFFFFFF0888880FFFFFFFF
        F0888880FFFFFFFFF0888880FFFFFFFFF0888880FFFFFFFFF0888880FFFFFFFF
        F0888880FFFFFFFFF0888880FFFFFF0000888880FFFFFF0F08888880FFFFFF00
        888888800000000888888888888888888888}
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
  object panSegmento: TPanel [16]
    Left = 496
    Top = 316
    Width = 474
    Height = 223
    BevelOuter = bvNone
    Color = 14671839
    ParentBackground = False
    TabOrder = 12
    Visible = False
    OnEnter = panSegmentoEnter
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
        OnDblClick = DBTableViewSegmentoDblClick
        OnKeyDown = DBTableViewGrupoKeyDown
        NavigatorButtons.ConfirmDelete = False
        NavigatorButtons.Delete.Enabled = False
        NavigatorButtons.Delete.Visible = False
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
        Styles.OnGetContentStyle = cxGridDBTableView1StylesGetContentStyle
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
    object BtnAplicarSegmento: TRzBitBtn
      Left = 12
      Top = 183
      Width = 71
      Height = 28
      Default = True
      Anchors = [akLeft, akBottom]
      Caption = '&Aplicar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      HotTrack = True
      ParentFont = False
      TextShadowColor = clWhite
      TextShadowDepth = 1
      TabOrder = 1
      OnClick = BtnAplicarSegmentoClick
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
    end
    object BtnCancelarSegmento: TRzBitBtn
      Left = 84
      Top = 183
      Width = 76
      Height = 28
      Cancel = True
      Anchors = [akLeft, akBottom]
      Caption = 'Cancelar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      HotTrack = True
      ParentFont = False
      TextShadowColor = clWhite
      TextShadowDepth = 1
      TabOrder = 2
      OnClick = BtnCancelarSegmentoClick
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
    end
    object BtnLimparSegmento: TRzBitBtn
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
      HotTrack = True
      ParentFont = False
      TextShadowColor = clWhite
      TextShadowDepth = 1
      TabOrder = 3
      OnClick = BtnLimparSegmentoClick
      Glyph.Data = {
        EE000000424DEE000000000000007600000028000000100000000F0000000100
        04000000000078000000130B0000130B00001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
        888888800000000000888880FFFFFFFFF0888880FFFFFFFFF0888880FFFFFFFF
        F0888880FFFFFFFFF0888880FFFFFFFFF0888880FFFFFFFFF0888880FFFFFFFF
        F0888880FFFFFFFFF0888880FFFFFF0000888880FFFFFF0F08888880FFFFFF00
        888888800000000888888888888888888888}
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
  inherited imgIcones: TImageList
    Left = 568
    Top = 41
  end
  inherited Acao: TActionList
    Left = 536
    Top = 41
  end
  inherited dspRelatorio: TDataSetProvider
    DataSet = dmPadrao.sdsRelatorio
    Left = 600
    Top = 41
  end
  inherited cdsRelatorio: TClientDataSet
    CommandText = 
      'EXEC spRelContasPagarPortador 1,1,NULL, NULL, NULL, '#39'01/09/2009'#39 +
      ','#39'01/01/2010'#39',NULL,NULL,'#39'V'#39','#39'LIQUIDADO'#39',NULL,NULL,NULL,NULL,NULL' +
      ',1, NULL, '#39'S'#39', '#39'S'#39', '#39'S'#39
    Left = 632
    Top = 41
  end
  inherited frxJPEGExport1: TfrxJPEGExport
    Left = 536
    Top = 105
  end
  inherited frxTIFFExport1: TfrxTIFFExport
    Left = 568
    Top = 105
  end
  inherited frxRTFExport1: TfrxRTFExport
    Left = 600
    Top = 105
  end
  inherited frxSimpleTextExport1: TfrxSimpleTextExport
    Left = 632
    Top = 105
  end
  inherited frxHTMLExport1: TfrxHTMLExport
    Left = 536
    Top = 137
  end
  inherited dspLookUp: TDataSetProvider
    Left = 536
    Top = 201
  end
  inherited cdsLookUp: TClientDataSet
    Left = 568
    Top = 201
  end
  inherited frxXLSExport1: TfrxXLSExport
    Left = 568
    Top = 137
  end
  inherited frxXMLExport1: TfrxXMLExport
    Left = 600
    Top = 137
  end
  inherited frxPDFExport1: TfrxPDFExport
    Left = 632
    Top = 137
  end
  inherited frxODSExport1: TfrxODSExport
    Left = 536
    Top = 169
  end
  inherited frxODTExport1: TfrxODTExport
    Left = 568
    Top = 169
  end
  inherited frxMailExport1: TfrxMailExport
    Left = 632
    Top = 169
  end
  inherited frxCSVExport1: TfrxCSVExport
    Left = 601
    Top = 169
  end
  inherited frxDataset: TfrxDBDataset
    FieldAliases.Strings = (
      'idEmpresa=idEmpresa'
      'idCadEmpresa=idCadEmpresa'
      'descCadEmpresa=descCadEmpresa'
      'nrTitulo=nrTitulo'
      'tpConsulta=tpConsulta'
      'tpDocumento=tpDocumento'
      'dtEmissao=dtEmissao'
      'idParcela=idParcela'
      'dtVencimento=dtVencimento'
      'Saldo=Saldo'
      'vlParcela=vlParcela'
      'stParcela=stParcela'
      'vlDesconto=vlDesconto'
      'prJuros=prJuros'
      'vlAcrescimo=vlAcrescimo'
      'descAbreviada=descAbreviada'
      'descCadFornecedor=descCadFornecedor'
      'idCadGeral=idCadGeral'
      'Indice=Indice'
      'vlPago=vlPago'
      'obsTitulo=obsTitulo'
      'idPortador=idPortador'
      'idCnpjCpf=idCnpjCpf'
      'descPortador=descPortador'
      'idBanco=idBanco'
      'idAgencia=idAgencia'
      'idContaCorrente=idContaCorrente'
      'descConta=descConta'
      'grpVencimento=grpVencimento'
      'grpEmissao=grpEmissao'
      'grpTitulo=grpTitulo'
      'grpDiaVencimento=grpDiaVencimento'
      'grpFornecedor=grpFornecedor')
    Left = 600
    Top = 73
  end
  inherited dsPadrao: TDataSource
    Left = 632
    Top = 201
  end
  inherited cdsPadrao: TClientDataSet
    AfterInsert = cdsPadraoAfterInsert
    Left = 600
    Top = 201
    object cdsPadraostTituloPag: TStringField
      FieldName = 'stTituloPag'
      Size = 15
    end
    object cdsPadraoordem: TStringField
      FieldName = 'ordem'
      Size = 1
    end
    object cdsPadraoPrevisoes: TStringField
      FieldName = 'Previsoes'
      Size = 1
    end
    object cdsPadraoidResultado: TIntegerField
      FieldName = 'idResultado'
    end
    object cdsPadraoidFornecedor: TIntegerField
      FieldName = 'idFornecedor'
    end
    object cdsPadraonrTituloPagIni: TStringField
      FieldName = 'nrTituloPagIni'
    end
    object cdsPadraonrTituloPagFim: TStringField
      FieldName = 'nrTituloPagFim'
    end
    object cdsPadraodtVencimentoIni: TDateTimeField
      FieldName = 'dtVencimentoIni'
    end
    object cdsPadraodtVencimentoFim: TDateTimeField
      FieldName = 'dtVencimentoFim'
    end
    object cdsPadraoclassificacaoIni: TStringField
      FieldName = 'classificacaoIni'
      Size = 30
    end
    object cdsPadraoclassificacaoFim: TStringField
      FieldName = 'classificacaoFim'
      Size = 30
    end
    object cdsPadraodtEmissaoIni: TDateTimeField
      FieldName = 'dtEmissaoIni'
    end
    object cdsPadraodtEmissaoFim: TDateTimeField
      FieldName = 'dtEmissaoFim'
    end
    object cdsPadraodesconto: TFloatField
      FieldName = 'desconto'
    end
    object cdsPadraojuros: TFloatField
      FieldName = 'juros'
    end
    object cdsPadraoidIndice: TIntegerField
      FieldName = 'idIndice'
    end
    object cdsPadraoconsolidaemp: TStringField
      FieldName = 'consolidaemp'
      Size = 1
    end
    object cdsPadraoconsolidafilial: TStringField
      FieldName = 'consolidafilial'
      Size = 1
    end
    object cdsPadraoidPortador: TIntegerField
      FieldName = 'idPortador'
    end
  end
  object frxReport1: TfrxReport
    Version = '4.3'
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
    ReportOptions.LastChange = 40091.380218993060000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'var'
      
        'vlJuros, vlDesconto, vlTaxa, raiz, vlTotal: real;               ' +
        '                    '
      'begin'
      ''
      
        '// Para efeito de visualiza'#231#227'o -----------------------          ' +
        '                                                                ' +
        '                                                '
      'if trim(MPrevisoes.text) = '#39'V'#39' then'
      'begin            '
      '   MPrevisoes.text := '#39'Data de Vencimento'#39';'
      'end'
      'else'
      '  if trim(MPrevisoes.text) = '#39'E'#39' then'
      '  begin              '
      '    MPrevisoes.text := '#39'Data de Emiss'#227'o'#39';'
      '  end'
      '  else'
      '    if trim(MPrevisoes.text) = '#39'D'#39' then'
      '    begin'
      '      MPrevisoes.text := '#39'Dia de Vencimento'#39';'
      '    end                    '
      '    else'
      '    if trim(MPrevisoes.text) = '#39'T'#39' then'
      '    begin                '
      '      MPrevisoes.text := '#39'Numero de Titulos'#39';'
      '    end'
      '    else'
      '      if trim(MstTitulo.Text) = '#39'%'#39' then'
      '      begin'
      '        MstTitulo.text := '#39'Todos'#39';'
      '      end;'
      ''
      'if (trim(MdtEmissaoIni.text)) = '#39#39' then'
      'begin'
      
        '  MdtEmissaoIni.text := '#39'01/01/1900'#39';                           ' +
        '          '
      'end;'
      ''
      'if (trim(MdtEmissaoFim.text)) = '#39#39' then'
      'begin'
      
        '  MdtEmissaoFim.text := '#39'01/01/2100'#39';                           ' +
        '          '
      'end;'
      ''
      'if (trim(MdtVencimentoIni.text)) = '#39#39' then'
      'begin'
      
        '  MdtVencimentoIni.text := '#39'01/01/1900'#39';                        ' +
        '             '
      'end;'
      ''
      'if (trim(MdtVencimentoFim.text)) = '#39#39' then'
      'begin'
      
        '  MdtVencimentoFim.text := '#39'01/01/2100'#39';                        ' +
        '             '
      'end;'
      ''
      'if (trim(MnrTituloIni.text)) = '#39#39' then'
      'begin'
      '  MnrTituloIni.text := '#39'0'#39';                                     '
      'end;'
      ''
      'if (trim(MnrTituloFim.text)) = '#39#39' then'
      'begin'
      '  MnrTituloFim.text := '#39'0'#39';                                     '
      'end;'
      ''
      'if (trim(MclassificacaoIni.text)) = '#39#39' then'
      'begin'
      
        '  MclassificacaoIni.text := '#39'0'#39';                                ' +
        '     '
      'end;'
      ''
      'if (trim(MclassificacaoFim.text)) = '#39#39' then'
      'begin'
      
        '  MclassificacaoFim.text := '#39'0'#39';                                ' +
        '     '
      'end;    '
      '  '
      'if (trim(MJuros.text)) = '#39#39' then'
      'begin'
      '  MJuros.text := '#39'0,00'#39';                                     '
      'end;'
      ''
      'if (trim(MDesconto.text)) = '#39#39' then'
      'begin'
      '  MDesconto.text := '#39'0,00'#39';                                     '
      'end;'
      ''
      '//---------------------------------------------------    '
      '                      '
      'end.'
      ''
      
        'procedure MasterDataContaPagOnBeforePrint(Sender: TfrxComponent)' +
        ';'
      'begin'
      
        '// Condi'#231#227'o para os Titulo que passaram da data de vencimento---' +
        '--------------------------------------------'
      
        'if ( (StrToDateTime(SMData)) > (<frxDataset."dtVencimento">) ) t' +
        'hen'
      'begin'
      
        '  if ( ( (<frxDataset."nrTitulo">) > ( StrToInt(MnrTituloIni.tex' +
        't) ) ) and ( (<frxDataset."nrTitulo">) < ( StrToInt(MnrTituloIni' +
        '.text) ) ) ) then           '
      '  begin'
      
        '    DBMJuros.clear;                                             ' +
        '             '
      '    raiz := 1/30;'
      '    vlJuros := (StrToFloat(MJuros.text));'
      
        '    vlTaxa := ( ( ( POWER( (raiz),(vlJuros/100+ 1) ) ) -1) * 100' +
        ') ;'
      
        '    DBMJuros := FloatToStr(vlTaxa);                             ' +
        '                 '
      '  end'
      '   else'
      '     if(trim(MJuros) = '#39#39')'
      '     begin'
      
        '       DBMJuros := (<frxDataset."prJuros">);                    ' +
        '            '
      '     end;'
      
        '{if (( (StrToDateTime(SMData)) < (<frxDataset."dtVencimento">) )' +
        ') then'
      'begin'
      
        '  vlDesconto := (StrToFloat(MDesconto));                        ' +
        '                                             '
      'end;}   '
      'end;'
      ''
      
        '//--------------------------------------------------------------' +
        '----------------------------------------------'
      ''
      
        'vlTotal := SUM(<frxDataset."vlDesconto">-<frxDataset."vlReal">))' +
        ';                                         '
      ''
      'end;')
    OnAfterPrint = frxReport1AfterPrint
    Left = 569
    Top = 73
    Datasets = <
      item
        DataSet = frxDataset
        DataSetName = 'frxDataset'
      end
      item
        DataSet = frxEmpresaContabil
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
      object PageFooter1: TfrxPageFooter
        Height = 61.129186900000000000
        Top = 476.220780000000000000
        Width = 1122.520410000000000000
        object Memo13: TfrxMemoView
          Left = 340.157700000000000000
          Top = 18.236220469999410000
          Width = 117.165430000000000000
          Height = 11.338582680000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Nilus Report ')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo15: TfrxMemoView
          Left = 20.787401570000000000
          Top = 18.236220469999980000
          Width = 275.905690000000000000
          Height = 11.338582680000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Nilus Solu'#195#167#195#181'es para o Agroneg'#195#179'cio Ltda.')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo17: TfrxMemoView
          Left = 984.795920000000000000
          Top = 18.236220469999980000
          Width = 94.488250000000000000
          Height = 11.338582680000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[(<Page>)]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Line1: TfrxLineView
          Left = 20.787401570000000000
          Top = 14.491338900000020000
          Width = 1069.606299212600000000
          Frame.Typ = [ftTop]
          Frame.Width = 0.100000000000000000
        end
      end
      object GroupHeaderContaPag: TfrxGroupHeader
        Height = 21.615750940000000000
        Top = 264.567100000000000000
        Width = 1122.520410000000000000
        Condition = '<frxDataset."grpVencimento">'
        ExpandDrillDown = True
        ReprintOnNewPage = True
        Stretched = True
        object MGHTitulo: TfrxMemoView
          Left = 21.467730400000000000
          Top = 1.360630800000024000
          Width = 735.345356800000000000
          Height = 18.897650000000000000
          Color = clWhite
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Color = clWhite
          Frame.ShadowColor = clWhite
          Memo.UTF8 = (
            
              'Vencimento:  [frxDataset."dtVencimento"]    Portador:  [frxDatas' +
              'et."descPortador"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
      end
      object MasterDataContaPag: TfrxMasterData
        Height = 15.496062990000000000
        Top = 309.921460000000000000
        Width = 1122.520410000000000000
        OnBeforePrint = 'MasterDataContaPagOnBeforePrint'
        Columns = 1
        ColumnWidth = 200.000000000000000000
        ColumnGap = 20.000000000000000000
        DataSet = frxDataset
        DataSetName = 'frxDataset'
        RowCount = 0
        Stretched = True
        object Memo19: TfrxMemoView
          Left = 227.338485410000000000
          Top = 0.377952760000027800
          Width = 49.949566930000000000
          Height = 13.228346460000000000
          DataSet = frxDataset
          DataSetName = 'frxDataset'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDataset."tpDocumento"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo6: TfrxMemoView
          Left = 985.970570190000000000
          Top = 0.377952760000027800
          Width = 73.118085830000000000
          Height = 13.228346460000000000
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
          Memo.UTF8 = (
            '[frxDataset."Saldo"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object MstTituloPag: TfrxMemoView
          Left = 1066.992580000000000000
          Top = 0.377952755905539600
          Width = 18.141732280000000000
          Height = 13.228346456692900000
          DataSet = frxDataset
          DataSetName = 'frxDataset'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[(Copy(<frxDataset."stParcela">,1,1))]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo31: TfrxMemoView
          Left = 20.787401570000000000
          Top = 0.377952760000027800
          Width = 206.362260870000000000
          Height = 13.228346460000000000
          DataField = 'descCadFornecedor'
          DataSet = frxDataset
          DataSetName = 'frxDataset'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDataset."descCadFornecedor"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo37: TfrxMemoView
          Left = 868.395647200000000000
          Top = 0.377952760000027800
          Width = 23.984195830000000000
          Height = 13.228346460000000000
          DataSet = frxDataset
          DataSetName = 'frxDataset'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDataset."Indice"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object DBMvlReal: TfrxMemoView
          Left = 892.260050000000000000
          Top = 0.377952760000027800
          Width = 67.259814330000000000
          Height = 13.228346460000000000
          DataField = 'vlParcela'
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
          Memo.UTF8 = (
            '[frxDataset."vlParcela"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object DBMnrTitulo: TfrxMemoView
          Left = 281.771784500000000000
          Top = 0.377952760000027800
          Width = 41.407829130000000000
          Height = 13.228346460000000000
          DataSet = frxDataset
          DataSetName = 'frxDataset'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDataset."nrTitulo"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object DBMdtEmissao: TfrxMemoView
          Left = 326.951292800000000000
          Top = 0.377952760000027800
          Width = 52.028308430000000000
          Height = 13.228346460000000000
          DataSet = frxDataset
          DataSetName = 'frxDataset'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDataset."dtEmissao"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo18: TfrxMemoView
          Left = 960.855353100000000000
          Top = 0.377952760000027800
          Width = 21.366774430000000000
          Height = 13.228346460000000000
          DataSet = frxDataset
          DataSetName = 'frxDataset'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDataset."idParcela"]')
          ParentFont = False
          VAlign = vaBottom
        end
        object MemObsTitulo: TfrxMemoView
          Left = 392.189240000000000000
          Top = 0.377952760000027800
          Width = 235.804876700000000000
          Height = 13.228346460000000000
          DataField = 'obsTitulo'
          DataSet = frxDataset
          DataSetName = 'frxDataset'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '[frxDataset."obsTitulo"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo52: TfrxMemoView
          Left = 631.196869920000000000
          Top = 0.377952760000027800
          Width = 86.044078430000000000
          Height = 13.228346460000000000
          DataField = 'idCnpjCpf'
          DataSet = frxDataset
          DataSetName = 'frxDataset'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDataset."idCnpjCpf"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo54: TfrxMemoView
          Left = 721.149970000000000000
          Top = 0.377952760000027800
          Width = 29.351128430000000000
          Height = 13.228346460000000000
          DataField = 'idBanco'
          DataSet = frxDataset
          DataSetName = 'frxDataset'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDataset."idBanco"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo56: TfrxMemoView
          Left = 757.386210000000000000
          Top = 0.377952760000027800
          Width = 36.910188430000000000
          Height = 13.228346460000000000
          DataField = 'idAgencia'
          DataSet = frxDataset
          DataSetName = 'frxDataset'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDataset."idAgencia"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo58: TfrxMemoView
          Left = 799.961040000000000000
          Top = 0.377952760000027800
          Width = 63.366898430000000000
          Height = 13.228346460000000000
          DataField = 'idContaCorrente'
          DataSet = frxDataset
          DataSetName = 'frxDataset'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDataset."idContaCorrente"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 99.815796780000000000
        Top = 18.897650000000000000
        Width = 1122.520410000000000000
        Stretched = True
        object Memo3: TfrxMemoView
          Left = 228.779654000000000000
          Top = 84.697684100000000000
          Width = 427.086890000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DataSet = frxDataset
          DataSetName = 'frxDataset'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            
              '[frxDataset."idEmpresa"].[frxDataset."idCadEmpresa"] - [frxDatas' +
              'et."descCadEmpresa"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo7: TfrxMemoView
          Left = 178.968601570000000000
          Top = 84.477214100000000000
          Width = 49.058299400000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Empresa :')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object SMData: TfrxMemoView
          Left = 1001.252630000000000000
          Top = 83.697684100000000000
          Width = 94.488250000000000000
          Height = 11.338582680000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[(Date)]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo2: TfrxMemoView
          Left = 177.637892910000000000
          Top = 17.007866690000000000
          Width = 582.047146460000000000
          Height = 34.015770000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -24
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Lista de Contas '#195#160' Pagar por Portador')
          ParentFont = False
          WordWrap = False
        end
        object Picture1: TfrxPictureView
          Left = 11.338590000000000000
          Top = 16.897650000000000000
          Width = 155.000000000000000000
          Height = 62.000000000000000000
          DataField = 'imgLogo'
          DataSet = frxEmpresaContabil
          DataSetName = 'frxEmpresaContabil'
        end
      end
      object HeaderContaPag: TfrxHeader
        Height = 65.091379880000000000
        Top = 177.637910000000000000
        Width = 1122.520410000000000000
        ReprintOnNewPage = True
        Stretched = True
        object Shape3: TfrxShapeView
          Left = 20.787401570000000000
          Top = 44.340188700000000000
          Width = 1069.606511570000000000
          Height = 18.141732280000000000
          Color = 12369084
          Frame.Color = 15790320
        end
        object Memo10: TfrxMemoView
          Left = 226.433124570000000000
          Top = 47.244094490000010000
          Width = 45.883494200000000000
          Height = 13.228346460000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Docto')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object MdtEmissao: TfrxMemoView
          Left = 326.042761900000000000
          Top = 47.244094490000010000
          Width = 52.157480310000000000
          Height = 13.228346460000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'Emiss'#195#163'o')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object MnrTitulo: TfrxMemoView
          Left = 278.330860000000000000
          Top = 47.244094490000010000
          Width = 45.354360000000000000
          Height = 13.228346460000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            'Titulo')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo9: TfrxMemoView
          Left = 1014.584636020000000000
          Top = 47.244094490000010000
          Width = 44.504020000000000000
          Height = 13.228346460000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            'Saldo')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo11: TfrxMemoView
          Left = 1066.992580000000000000
          Top = 47.244094490000010000
          Width = 18.047310000000000000
          Height = 13.228346460000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'St.')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo23: TfrxMemoView
          Left = 22.752757170000000000
          Top = 47.244094490000010000
          Width = 89.272498600000000000
          Height = 13.228346460000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Fornecedor')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo8: TfrxMemoView
          Left = 962.102598000000000000
          Top = 47.244094490000010000
          Width = 19.171530300000000000
          Height = 13.228346460000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'Parc.')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo4: TfrxMemoView
          Left = 859.138949600000000000
          Top = 47.244094490000010000
          Width = 33.165430000000000000
          Height = 13.228346460000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            'Indice')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo5: TfrxMemoView
          Left = 899.765560200000000000
          Top = 47.244094490000010000
          Width = 59.622140000000000000
          Height = 13.228346460000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            'Valor')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Shape4: TfrxShapeView
          Left = 20.787401570000000000
          Width = 1069.606511570000000000
          Height = 44.107115100000000000
          Frame.Width = 0.100000000000000000
        end
        object Memo24: TfrxMemoView
          Left = 22.677165354330700000
          Top = 1.511811020000010000
          Width = 58.166966700000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Emiss'#195#163'o de:')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object MdtEmissaoIni: TfrxMemoView
          Left = 94.488188976378000000
          Top = 1.511811020000010000
          Width = 94.488250000000000000
          Height = 11.338582680000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo32: TfrxMemoView
          Left = 189.280414600000000000
          Top = 1.511811023622044000
          Width = 34.015770000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'At'#195#169)
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object MdtEmissaoFim: TfrxMemoView
          Left = 222.992125984252000000
          Top = 1.511811020000010000
          Width = 94.488250000000000000
          Height = 11.338582680000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo34: TfrxMemoView
          Left = 22.677165354330700000
          Top = 15.874015750000010000
          Width = 49.852000700000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Titulos de:')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object MnrTituloIni: TfrxMemoView
          Left = 94.488188976378000000
          Top = 15.874015750000010000
          Width = 94.488250000000000000
          Height = 11.338582680000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo36: TfrxMemoView
          Left = 189.028451100000000000
          Top = 15.874015748031490000
          Width = 34.015770000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'At'#195#169)
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object MnrTituloFim: TfrxMemoView
          Left = 222.992125984252000000
          Top = 15.874015750000010000
          Width = 94.488250000000000000
          Height = 11.338582680000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo38: TfrxMemoView
          Left = 340.157480314961000000
          Top = 15.874015750000010000
          Width = 67.011066900000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Gerenciais de:')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object MclassificacaoIni: TfrxMemoView
          Left = 415.748031496063000000
          Top = 15.874015750000010000
          Width = 94.488250000000000000
          Height = 11.338582680000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo40: TfrxMemoView
          Left = 510.291636500000000000
          Top = 18.209449600000000000
          Width = 34.015770000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'At'#195#169)
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object MclassificacaoFim: TfrxMemoView
          Left = 544.251968503937000000
          Top = 15.874015750000010000
          Width = 94.488250000000000000
          Height = 11.338582680000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo12: TfrxMemoView
          Left = 850.393700787402000000
          Top = 1.511811020000010000
          Width = 41.423648800000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Status :')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo33: TfrxMemoView
          Left = 661.417322834646000000
          Top = 1.511811020000010000
          Width = 73.511858500000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Ordenado por:')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object MstTitulo: TfrxMemoView
          Left = 960.000000000000000000
          Top = 1.511811020000010000
          Width = 67.615791700000000000
          Height = 11.338582680000000000
          DisplayFormat.DecimalSeparator = ','
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
        object MPrevisoes: TfrxMemoView
          Left = 755.905511811024000000
          Top = 1.511811020000010000
          Width = 67.048862200000000000
          Height = 11.338582680000000000
          DisplayFormat.DecimalSeparator = ','
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
        object Memo26: TfrxMemoView
          Left = 340.157480314961000000
          Top = 1.511811020000010000
          Width = 72.113432400000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Vencimento de:')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object MdtVencimentoIni: TfrxMemoView
          Left = 415.748031496063000000
          Top = 1.511811020000010000
          Width = 94.488250000000000000
          Height = 11.338582680000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo27: TfrxMemoView
          Left = 510.058562900000000000
          Top = 1.511811023622044000
          Width = 34.015770000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'At'#195#169)
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object MdtVencimentoFim: TfrxMemoView
          Left = 544.251968503937000000
          Top = 1.511811020000010000
          Width = 94.488250000000000000
          Height = 11.338582680000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo39: TfrxMemoView
          Left = 661.417322830000000000
          Top = 30.236220470000010000
          Width = 90.292971700000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Corre'#195#167#195#163'o de Juros:')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object MJuros: TfrxMemoView
          Left = 755.905511811024000000
          Top = 30.236220470000010000
          Width = 66.633113900000000000
          Height = 11.338582680000000000
          DisplayFormat.DecimalSeparator = ','
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
        object Memo20: TfrxMemoView
          Left = 850.393700790000000000
          Top = 30.236220470000010000
          Width = 106.696131900000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Altera'#195#167#195#163'o no Desconto:')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object MDesconto: TfrxMemoView
          Left = 960.000000000000000000
          Top = 30.236220470000010000
          Width = 66.406342100000000000
          Height = 11.338582680000000000
          DisplayFormat.DecimalSeparator = ','
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
        object Memo47: TfrxMemoView
          Left = 661.417322834646000000
          Top = 15.874015750000010000
          Width = 67.011066900000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Fornecedores:')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object MFornecedores: TfrxMemoView
          Left = 755.905511811024000000
          Top = 15.874015750000010000
          Width = 94.488250000000000000
          Height = 11.338582680000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo48: TfrxMemoView
          Left = 850.393700787402000000
          Top = 15.874015750000010000
          Width = 44.333886900000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Grupos:')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object MGrupos: TfrxMemoView
          Left = 960.000000000000000000
          Top = 15.874015750000010000
          Width = 94.488250000000000000
          Height = 11.338582680000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo49: TfrxMemoView
          Left = 22.677165354330700000
          Top = 30.236220470000010000
          Width = 67.011066900000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Segmentos:')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object MSegmentos: TfrxMemoView
          Left = 94.488188976378000000
          Top = 30.236220470000010000
          Width = 94.488250000000000000
          Height = 11.338582680000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo51: TfrxMemoView
          Left = 340.157480314961000000
          Top = 30.236220470000010000
          Width = 44.333886900000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Portador:')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object MPortador: TfrxMemoView
          Left = 415.748031496063000000
          Top = 30.236220470000010000
          Width = 94.488250000000000000
          Height = 11.338582680000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo50: TfrxMemoView
          Left = 619.637809920000000000
          Top = 47.244094490000010000
          Width = 67.181200000000000000
          Height = 13.228346460000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'CNPJ / CPF')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo53: TfrxMemoView
          Left = 715.590910000000000000
          Top = 47.244094490000010000
          Width = 33.165430000000000000
          Height = 13.228346460000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'Banco')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo55: TfrxMemoView
          Left = 751.606680000000000000
          Top = 47.244094490000010000
          Width = 44.504020000000000000
          Height = 13.228346460000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'Ag'#195#170'ncia')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo57: TfrxMemoView
          Left = 792.401980000000000000
          Top = 47.244094490000010000
          Width = 70.960730000000000000
          Height = 13.228346460000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            'Conta Corrente')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo59: TfrxMemoView
          Left = 392.189240000000000000
          Top = 47.133890000000010000
          Width = 188.220560310000000000
          Height = 13.228346460000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Descri'#195#167#195#163'o')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
      end
      object GroupFooter1: TfrxGroupFooter
        Height = 20.787401570000000000
        Top = 347.716760000000000000
        Width = 1122.520410000000000000
        Stretched = True
        object Memo29: TfrxMemoView
          Left = 729.256976600000000000
          Top = 1.000000000000000000
          Width = 48.718141700000000000
          Height = 15.118110240000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            'Sub-total')
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo35: TfrxMemoView
          Left = 945.521934370000000000
          Top = 1.133858270000019000
          Width = 57.826771650000000000
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
          Memo.UTF8 = (
            '[SUM(<frxDataset."Saldo">)]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo28: TfrxMemoView
          Left = 1007.114117570000000000
          Top = 1.000000000000000000
          Width = 57.826771650000000000
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
          Memo.UTF8 = (
            '[SUM(<frxDataset."vlPago">)]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo42: TfrxMemoView
          Left = 780.698043780000000000
          Top = 1.000000000000000000
          Width = 57.826771650000000000
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
          Memo.UTF8 = (
            '[SUM(<frxDataset."Saldo">)]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo43: TfrxMemoView
          Left = 884.131287950000000000
          Top = 1.000000000000000000
          Width = 57.826771650000000000
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
          Memo.UTF8 = (
            '[SUM(<frxDataset."Saldo">)]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
      end
      object FooterContaPag: TfrxFooter
        Height = 22.677180000000000000
        Top = 393.071120000000000000
        Width = 1122.520410000000000000
        Stretched = True
        object Memo1: TfrxMemoView
          Left = 394.258358300000000000
          Top = 2.000000000000000000
          Width = 56.692950000000000000
          Height = 15.118107800000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            'Total Geral')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo25: TfrxMemoView
          Left = 618.498124370000000000
          Top = 1.779530000000022000
          Width = 57.826771650000000000
          Height = 15.118120000000000000
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
          Memo.UTF8 = (
            '[SUM(<frxDataset."Saldo">,MasterDataContaPag,2)]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo44: TfrxMemoView
          Left = 680.090307570000000000
          Top = 1.779530000000022000
          Width = 57.826771650000000000
          Height = 15.118120000000000000
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
          Memo.UTF8 = (
            '[SUM(<frxDataset."vlPago">,MasterDataContaPag,2)]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo45: TfrxMemoView
          Left = 453.674233780000000000
          Top = 1.779530000000022000
          Width = 57.826771650000000000
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
          Memo.UTF8 = (
            '[SUM(<frxDataset."Saldo">,MasterDataContaPag,2)]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo46: TfrxMemoView
          Left = 557.107477950000000000
          Top = 1.779530000000022000
          Width = 57.826771650000000000
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
          Memo.UTF8 = (
            '[SUM(<frxDataset."Saldo">,MasterDataContaPag,2)]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
      end
    end
  end
  object FindFornecedor: TCFind
    SelectClause.Strings = (
      
        'SELECT  idFornecedor, descCadFornecedor, idCnpjCpf from vCadForn' +
        'ecedorContabil')
    OrderByClause.Strings = (
      'ORDER BY descCadFornecedor')
    FindField = 'descCadFornecedor'
    SQLConnection = dmPadrao.dbConexao
    ValueField = 'idFornecedor'
    CarregaDados = True
    CollumNames.Strings = (
      'C'#243'digo'
      'Descri'#231#227'o'
      'CNPJ/CPF')
    TypeFind = fFindNormal
    Left = 504
    Top = 73
  end
  object FindResultado: TCFind
    SelectClause.Strings = (
      
        'SELECT  idResultado, descResultado, Talhao, stResultado FROM Res' +
        'ultado')
    JoinClause.Strings = (
      'WHERE idEmpresa = [DBEidEmpresa]')
    OrderByClause.Strings = (
      'ORDER BY descResultado')
    FindField = 'descResultado'
    SQLConnection = dmPadrao.dbConexao
    ValueField = 'idResultado'
    CarregaDados = True
    CollumNames.Strings = (
      'C'#243'digo'
      'Descri'#231#227'o'
      #201' Talh'#227'o'
      'Status')
    TypeFind = fFindNormal
    Left = 633
    Top = 72
  end
  object FindGerencial: TCFind
    SelectClause.Strings = (
      
        'SELECT DISTINCT idGerencial, classificacao, descGerencial FROM G' +
        'erencial')
    JoinClause.Strings = (
      'WHERE idEmpresa = [DBEidEmpresa]')
    OrderByClause.Strings = (
      'ORDER BY classificacao')
    FindField = 'descGerencial'
    SQLConnection = dmPadrao.dbConexao
    ValueField = 'classificacao'
    CarregaDados = True
    CollumNames.Strings = (
      'C'#243'digo'
      'Classifica'#231#227'o'
      'Descri'#231#227'o')
    TypeFind = fFindNormal
    Left = 505
    Top = 104
  end
  object qryFornecedores: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmPadrao.dbConexao
    Left = 536
    Top = 248
  end
  object dspFornecedores: TDataSetProvider
    DataSet = qryFornecedores
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 568
    Top = 248
  end
  object cdsFornecedores: TClientDataSet
    Aggregates = <>
    CommandText = 
      'SELECT idFornecedor, descCadFornecedor, descAbreviada FROM vCadF' +
      'ornecedorContabil ORDER BY descCadFornecedor'
    Params = <>
    ProviderName = 'dspFornecedores'
    Left = 600
    Top = 248
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
    Left = 632
    Top = 248
  end
  object Styles: TcxStyleRepository
    Left = 497
    Top = 250
    object stDestaque: TcxStyle
      AssignedValues = [svColor]
      Color = clYellow
    end
  end
  object FindIndice: TCFind
    SelectClause.Strings = (
      'SELECT  idIndice, descIndice FROM Indice')
    JoinClause.Strings = (
      'WHERE StIndice = '#39'ATIVO'#39)
    OrderByClause.Strings = (
      'ORDER BY descIndice')
    FindField = 'descIndice'
    SQLConnection = dmPadrao.dbConexao
    ValueField = 'idIndice'
    CarregaDados = True
    CollumNames.Strings = (
      'C'#243'digo'
      'Descri'#231#227'o')
    TypeFind = fFindNormal
    Left = 680
    Top = 248
  end
  object dsGrupoCad: TDataSource
    DataSet = cdsGrupoCad
    Left = 632
    Top = 280
  end
  object sdsGrupoCad: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmPadrao.dbConexao
    Left = 536
    Top = 280
  end
  object cdsGrupoCad: TClientDataSet
    Aggregates = <>
    CommandText = 'SELECT * FROM grupocad WHERE stGrupoCad = '#39'ATIVO'#39
    Params = <>
    ProviderName = 'dspGrupoCad'
    Left = 600
    Top = 280
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
    Left = 568
    Top = 280
  end
  object dsSegmento: TDataSource
    DataSet = cdsSegmento
    Left = 632
    Top = 312
  end
  object cdsSegmento: TClientDataSet
    Aggregates = <>
    CommandText = 'SELECT * FROM segmento WHERE stSegmento = '#39'ATIVO'#39
    Params = <>
    ProviderName = 'dspSegmento'
    Left = 600
    Top = 312
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
    Left = 568
    Top = 312
  end
  object sdsSegmento: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmPadrao.dbConexao
    Left = 536
    Top = 312
  end
  object cdsEmpresaContabil: TClientDataSet
    Active = True
    Aggregates = <>
    CommandText = 'SELECT * FROM EmpresaContabil WHERE idCadGeral = 1'
    Params = <>
    ProviderName = 'dspLookUp'
    Left = 712
    Top = 1
  end
  object frxEmpresaContabil: TfrxDBDataset
    UserName = 'frxEmpresaContabil'
    CloseDataSource = False
    FieldAliases.Strings = (
      'idCadGeral=idCadGeral'
      'descRepresentante=descRepresentante'
      'idCnpjCpfRepresentante=idCnpjCpfRepresentante'
      'cargoRepresentante=cargoRepresentante'
      'descContador=descContador'
      'idCnpjCpfContador=idCnpjCpfContador'
      'crcContador=crcContador'
      'imgLogo=imgLogo')
    OpenDataSource = False
    DataSet = cdsEmpresaContabil
    Left = 744
    Top = 1
  end
end
