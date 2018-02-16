inherited FrmRelContasPagarPortador: TFrmRelContasPagarPortador
  Caption = 'Rela'#231#227'o de Contas a Pagar por Portador'
  ClientHeight = 710
  ClientWidth = 1210
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
  ExplicitWidth = 1226
  ExplicitHeight = 749
  PixelsPerInch = 96
  TextHeight = 13
  inherited Bevel3: TBevel
    Width = 1210
    ExplicitTop = 3
    ExplicitWidth = 1150
  end
  inherited Bevel1: TBevel
    Top = 672
    Width = 1210
    ExplicitTop = 345
    ExplicitWidth = 687
  end
  inherited Bevel5: TBevel
    Width = 1210
    ExplicitLeft = 0
    ExplicitTop = 29
    ExplicitWidth = 687
  end
  inherited PanBotoes: TCPanelGradient
    Top = 676
    Width = 1210
    TabOrder = 3
    ExplicitTop = 676
    ExplicitWidth = 1210
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
    Height = 300
    Caption = 'Param'#234'tros'
    TabOrder = 0
    object CLabel3: TCLabel
      Left = 29
      Top = 175
      Width = 53
      Height = 13
      Alignment = taRightJustify
      Caption = 'Emiss'#227'o de'
    end
    object CLabel4: TCLabel
      Left = 174
      Top = 175
      Width = 16
      Height = 13
      Alignment = taRightJustify
      Caption = 'at'#233
    end
    object Label4: TLabel
      Left = 23
      Top = 241
      Width = 59
      Height = 13
      Alignment = taRightJustify
      Caption = 'Gerencial de'
    end
    object LblCad: TCLabel
      Left = 16
      Top = 15
      Width = 66
      Height = 13
      Alignment = taRightJustify
      Caption = 'Fornecedores'
    end
    object CLabel5: TCLabel
      Left = 189
      Top = 241
      Width = 16
      Height = 13
      Alignment = taRightJustify
      Caption = 'at'#233
    end
    object Label2: TLabel
      Left = 36
      Top = 219
      Width = 46
      Height = 13
      Alignment = taRightJustify
      Caption = 'Titulos de'
    end
    object Label3: TLabel
      Left = 174
      Top = 219
      Width = 16
      Height = 13
      Alignment = taRightJustify
      Caption = 'at'#233
    end
    object CLabel1: TCLabel
      Left = 12
      Top = 197
      Width = 70
      Height = 13
      Alignment = taRightJustify
      Caption = 'Vencimento de'
    end
    object CLabel6: TCLabel
      Left = 174
      Top = 197
      Width = 16
      Height = 13
      Alignment = taRightJustify
      Caption = 'at'#233
    end
    object CLabel7: TCLabel
      Left = 12
      Top = 263
      Width = 88
      Height = 13
      Alignment = taRightJustify
      Caption = 'Corre'#231#227'o de Juros'
    end
    object CLabel8: TCLabel
      Left = 174
      Top = 263
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
      Top = 131
      Width = 40
      Height = 13
      Alignment = taRightJustify
      Caption = 'Cota'#231#227'o'
    end
    object CLabel21: TCLabel
      Left = 53
      Top = 131
      Width = 29
      Height = 13
      Alignment = taRightJustify
      Caption = #205'ndice'
    end
    object CLabel9: TCLabel
      Left = 40
      Top = 153
      Width = 42
      Height = 13
      Alignment = taRightJustify
      Caption = 'Portador'
      Transparent = True
    end
    object CLabel10: TCLabel
      Left = 21
      Top = 39
      Width = 61
      Height = 13
      Alignment = taRightJustify
      Caption = 'Grupos Emp.'
    end
    object CLabel12: TCLabel
      Left = 29
      Top = 63
      Width = 53
      Height = 13
      Alignment = taRightJustify
      Caption = 'Segmentos'
    end
    object CLabel13: TCLabel
      Left = 51
      Top = 109
      Width = 31
      Height = 13
      Alignment = taRightJustify
      Caption = 'Rateio'
    end
    object DBEdtEmissaoIni: TCDBEdit
      Left = 88
      Top = 172
      Width = 80
      Height = 19
      BevelKind = bkTile
      BorderStyle = bsNone
      DataField = 'dtEmissaoIni'
      DataSource = dsPadrao
      MaxLength = 10
      TabOrder = 12
      DecimalControl = True
      KeyMode = kmDate
    end
    object DBEdtEmissaoFim: TCDBEdit
      Left = 196
      Top = 172
      Width = 80
      Height = 19
      BevelKind = bkTile
      BorderStyle = bsNone
      DataField = 'dtEmissaoFim'
      DataSource = dsPadrao
      MaxLength = 10
      TabOrder = 13
      DecimalControl = True
      KeyMode = kmDate
    end
    object DBCBPrevisoes: TCDBCheckBox
      Left = 357
      Top = 262
      Width = 105
      Height = 17
      Caption = 'Incluir Previs'#245'es ?'
      DataField = 'Previsoes'
      DataSource = dsPadrao
      TabOrder = 22
      ValueChecked = 'S'
      ValueUnchecked = 'N'
    end
    object DBEclassificacaoFim: TCDBEdit
      Left = 211
      Top = 238
      Width = 95
      Height = 19
      BevelKind = bkTile
      BiDiMode = bdLeftToRight
      BorderStyle = bsNone
      DataField = 'classificacaoFim'
      DataSource = dsPadrao
      ParentBiDiMode = False
      TabOrder = 19
      OnEnter = DBEclassificacaoFimEnter
      OnExit = DBEclassificacaoFimExit
      Find = FindGerencial
      DecimalControl = True
      KeyMode = kmNormal
    end
    object DBEclassificacaoIni: TCDBEdit
      Left = 88
      Top = 238
      Width = 95
      Height = 19
      BevelKind = bkTile
      BiDiMode = bdLeftToRight
      BorderStyle = bsNone
      DataField = 'classificacaoIni'
      DataSource = dsPadrao
      ParentBiDiMode = False
      TabOrder = 18
      OnEnter = DBEclassificacaoIniEnter
      OnExit = DBEclassificacaoIniExit
      Find = FindGerencial
      DecimalControl = True
      KeyMode = kmNormal
    end
    object DBEnrTituloIni: TCDBEdit
      Left = 88
      Top = 216
      Width = 80
      Height = 19
      BevelKind = bkTile
      BorderStyle = bsNone
      DataField = 'nrTituloPagIni'
      DataSource = dsPadrao
      TabOrder = 16
      OnEnter = DBEidEmpresaEnter
      OnExit = DBEidEmpresaExit
      DecimalControl = True
      KeyMode = kmNormal
    end
    object DBEnrTituloFim: TCDBEdit
      Left = 196
      Top = 216
      Width = 79
      Height = 19
      BevelKind = bkTile
      BorderStyle = bsNone
      DataField = 'nrTituloPagFim'
      DataSource = dsPadrao
      TabOrder = 17
      OnEnter = DBEidEmpresaEnter
      OnExit = DBEidEmpresaExit
      DecimalControl = True
      KeyMode = kmNormal
    end
    object DBEdtVencimentoIni: TCDBEdit
      Left = 88
      Top = 194
      Width = 80
      Height = 19
      BevelKind = bkTile
      BorderStyle = bsNone
      DataField = 'dtVencimentoIni'
      DataSource = dsPadrao
      MaxLength = 10
      TabOrder = 14
      DecimalControl = True
      KeyMode = kmDate
    end
    object DBEdtVencimentoFim: TCDBEdit
      Left = 196
      Top = 194
      Width = 80
      Height = 19
      BevelKind = bkTile
      BorderStyle = bsNone
      DataField = 'dtVencimentoFim'
      DataSource = dsPadrao
      MaxLength = 10
      TabOrder = 15
      DecimalControl = True
      KeyMode = kmDate
    end
    object DBEJuros: TCDBEdit
      Left = 106
      Top = 260
      Width = 62
      Height = 19
      BevelKind = bkTile
      BorderStyle = bsNone
      DataField = 'juros'
      DataSource = dsPadrao
      MaxLength = 10
      TabOrder = 20
      DecimalControl = True
      KeyMode = kmNormal
    end
    object DBEDesconto: TCDBEdit
      Left = 289
      Top = 260
      Width = 62
      Height = 19
      BevelKind = bkTile
      BorderStyle = bsNone
      DataField = 'desconto'
      DataSource = dsPadrao
      MaxLength = 10
      TabOrder = 21
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
      Left = 88
      Top = 12
      Style.BorderColor = clBtnShadow
      Style.BorderStyle = ebsSingle
      Style.ButtonStyle = btsOffice11
      StyleFocused.BorderStyle = ebsSingle
      TabOrder = 0
      Width = 368
    end
    object LookLancamento: TCLookUp
      Left = 382
      Top = 128
      Width = 73
      Height = 19
      Alignment = taRightJustify
      BevelInner = bvSpace
      BevelOuter = bvLowered
      Color = 14149350
      ParentBackground = False
      TabOrder = 9
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
      Top = 128
      Width = 189
      Height = 19
      Alignment = taLeftJustify
      BevelInner = bvSpace
      BevelOuter = bvLowered
      Color = 14149350
      ParentBackground = False
      TabOrder = 8
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
      Top = 128
      Width = 48
      Height = 19
      BevelKind = bkTile
      BorderStyle = bsNone
      DataField = 'idIndice'
      DataSource = dsPadrao
      TabOrder = 7
      Find = FindIndice
      DecimalControl = True
      KeyMode = kmNormal
    end
    object LookPortador: TCLookUp
      Left = 142
      Top = 150
      Width = 314
      Height = 19
      Alignment = taLeftJustify
      BevelInner = bvSpace
      BevelOuter = bvLowered
      Color = 14149350
      ParentBackground = False
      TabOrder = 11
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
      Top = 150
      Width = 48
      Height = 19
      BevelKind = bkTile
      BorderStyle = bsNone
      DataField = 'idPortador'
      DataSource = dsPadrao
      TabOrder = 10
      Find = dmFind.FindPortador
      DecimalControl = True
      KeyMode = kmNormal
    end
    object DBEidGrupo: TcxPopupEdit
      Left = 88
      Top = 36
      Style.BorderColor = clBtnShadow
      Style.BorderStyle = ebsSingle
      Style.ButtonStyle = btsOffice11
      StyleFocused.BorderStyle = ebsSingle
      TabOrder = 1
      Width = 368
    end
    object DBEidSegmento: TcxPopupEdit
      Left = 88
      Top = 60
      Style.BorderColor = clBtnShadow
      Style.BorderStyle = ebsSingle
      Style.ButtonStyle = btsOffice11
      StyleFocused.BorderStyle = ebsSingle
      TabOrder = 2
      Width = 368
    end
    object DBEidRateio: TCDBEdit
      Left = 88
      Top = 106
      Width = 48
      Height = 19
      BevelKind = bkTile
      BorderStyle = bsNone
      DataField = 'idRateio'
      DataSource = dsPadrao
      TabOrder = 5
      Find = dmFind.FindRateio
      AcaoCad = frmPrincipal.actCadPlanoRateio
      DecimalControl = True
      KeyMode = kmNormal
    end
    object LookRateio: TCLookUp
      Left = 142
      Top = 106
      Width = 204
      Height = 19
      Alignment = taLeftJustify
      BevelInner = bvSpace
      BevelOuter = bvLowered
      Color = 14149350
      ParentBackground = False
      TabOrder = 6
      Key.Strings = (
        'idRateio')
      LookUpKey.Strings = (
        'idRateio')
      AlternateSQL.Strings = (
        
          'SELECT descRateio FROM Rateio WHERE idEmpresa = [DBEidEmpresa] A' +
          'ND idRateio = ?')
      ClientDataSet = cdsLookUp
      DataSource = dsPadrao
      ValidaCampoObrigatorio = True
      CampoObrigatorio = True
      LookUpTable = 'Rateio'
      ReturnField = 'descRateio'
    end
  end
  object DBRGstTitulo: TCDBRadioGroup [9]
    Left = 8
    Top = 343
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
    TabOrder = 1
    Values.Strings = (
      'ATIVO'
      'CANCELADO'
      'LIQUIDADO'
      '%')
  end
  object DBRGOrdem: TCDBRadioGroup [10]
    Left = 11
    Top = 386
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
  object panPopupFornecedores: TPanel [12]
    Left = 479
    Top = 37
    Width = 663
    Height = 223
    BevelOuter = bvNone
    Color = 14671839
    ParentBackground = False
    TabOrder = 8
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
  object CGroupBox2: TCGroupBox [14]
    Left = 8
    Top = 452
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
    Left = 782
    Top = 483
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
  object panSegmento: TPanel [16]
    Left = 792
    Top = 266
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
  inherited imgIcones: TImageList
    Left = 568
    Top = 41
    Bitmap = {
      494C010107000900480010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
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
    Left = 536
    Top = 41
    inherited actGerar: TAction
      Tag = 1
    end
  end
  inherited dspRelatorio: TDataSetProvider
    Left = 600
    Top = 41
  end
  inherited cdsRelatorio: TClientDataSet
    CommandText = 
      'EXEC spRelContasPagarPortador 9999,1,'#39#39','#39#39','#39#39',NULL,NULL,NULL,NUL' +
      'L,'#39'D'#39','#39'ATIVO'#39','#39#39','#39#39','#39#39','#39#39',NULL,NULL,NULL,'#39#39','#39'N'#39', '#39'S'#39', 0'
    Left = 632
    Top = 41
  end
  inherited frxDataset: TfrxDBDataset
    FieldAliases.Strings = (
      'idEmpresa=idEmpresa'
      'idCadEmpresa=idCadEmpresa'
      'descCadEmpresa=descCadEmpresa'
      'descAbreviadaEmp=descAbreviadaEmp'
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
      'grpFornecedor=grpFornecedor'
      'qtParcela=qtParcela'
      'tpConta=tpConta'
      'descTitular=descTitular')
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
    object cdsPadraoidRateio: TIntegerField
      FieldName = 'idRateio'
    end
  end
  inherited frxHTMLExport1: TfrxHTMLExport
    Left = 536
    Top = 137
  end
  inherited frxTIFFExport1: TfrxTIFFExport
    Top = 105
  end
  inherited dspLookUp: TDataSetProvider
    Left = 536
    Top = 201
  end
  inherited cdsLookUp: TClientDataSet
    Left = 568
    Top = 201
  end
  inherited frxRTFExport1: TfrxRTFExport
    Left = 600
    Top = 105
  end
  inherited frxJPEGExport1: TfrxJPEGExport
    Left = 536
    Top = 105
  end
  object frxReport1: TfrxReport
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
    ReportOptions.LastChange = 41933.583982847220000000
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
      object GroupHeaderContaPag: TfrxGroupHeader
        FillType = ftBrush
        Height = 21.615750940000000000
        Top = 264.567100000000000000
        Width = 1122.520410000000000000
        Condition = '<frxDataset."grpVencimento">'
        ExpandDrillDown = True
        ReprintOnNewPage = True
        Stretched = True
        object MGHTitulo: TfrxMemoView
          Left = 21.467730400000000000
          Top = 1.360630800000020000
          Width = 735.345356800000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Color = clWhite
          Frame.ShadowColor = clWhite
          Fill.BackColor = clWhite
          Memo.UTF8W = (
            
              'Vencimento:  [frxDataset."dtVencimento"]    Portador:  [frxDatas' +
              'et."descPortador"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
      end
      object MasterDataContaPag: TfrxMasterData
        FillType = ftBrush
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
          Left = 207.558955410000000000
          Top = 0.377952760000000000
          Width = 49.949566930000000000
          Height = 11.338582680000000000
          DataSet = frxDataset
          DataSetName = 'frxDataset'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDataset."tpDocumento"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo6: TfrxMemoView
          Left = 1007.088690190000000000
          Top = 0.377952760000000000
          Width = 59.338582680000000000
          Height = 11.338582680000000000
          DataSet = frxDataset
          DataSetName = 'frxDataset'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDataset."Saldo"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object MstTituloPag: TfrxMemoView
          Left = 1069.992580000000000000
          Top = 0.377952760000000000
          Width = 18.141732280000000000
          Height = 11.338582680000000000
          DataSet = frxDataset
          DataSetName = 'frxDataset'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[(Copy(<frxDataset."stParcela">,1,1))]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo31: TfrxMemoView
          Left = 20.787401570000000000
          Top = 0.377952760000000000
          Width = 183.685080870000000000
          Height = 11.338582680000000000
          DataSet = frxDataset
          DataSetName = 'frxDataset'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[(<frxDataset."idCadGeral">)]-[frxDataset."descCadFornecedor"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo37: TfrxMemoView
          Left = 894.852357200000000000
          Top = 0.377952760000000000
          Width = 23.984195830000000000
          Height = 11.338582680000000000
          DataField = 'Indice'
          DataSet = frxDataset
          DataSetName = 'frxDataset'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDataset."Indice"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object DBMvlReal: TfrxMemoView
          Left = 921.496290000000000000
          Top = 0.377952760000000000
          Width = 55.921224330000000000
          Height = 11.338582680000000000
          DataSet = frxDataset
          DataSetName = 'frxDataset'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDataset."vlParcela"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object DBMnrTitulo: TfrxMemoView
          Left = 261.771784500000000000
          Top = 0.377952760000000000
          Width = 41.407829130000000000
          Height = 11.338582680000000000
          DataSet = frxDataset
          DataSetName = 'frxDataset'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDataset."nrTitulo"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object DBMdtEmissao: TfrxMemoView
          Left = 306.951292800000000000
          Top = 0.377952760000000000
          Width = 44.469248430000000000
          Height = 11.338582680000000000
          DataSet = frxDataset
          DataSetName = 'frxDataset'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDataset."dtEmissao"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo18: TfrxMemoView
          Left = 979.753003100000000000
          Top = 0.377952760000000000
          Width = 25.146304430000000000
          Height = 11.338582680000000000
          DataSet = frxDataset
          DataSetName = 'frxDataset'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDataset."idParcela"]/[frxDataset."qtParcela"]')
          ParentFont = False
          VAlign = vaBottom
        end
        object MemObsTitulo: TfrxMemoView
          Left = 353.291590000000000000
          Top = 0.377952760000000000
          Width = 179.111926700000000000
          Height = 11.338582680000000000
          DataField = 'obsTitulo'
          DataSet = frxDataset
          DataSetName = 'frxDataset'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDataset."obsTitulo"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo52: TfrxMemoView
          Left = 535.606269920000000000
          Top = 0.377952760000000000
          Width = 78.485018430000000000
          Height = 11.338582680000000000
          DataSet = frxDataset
          DataSetName = 'frxDataset'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDataset."idCnpjCpf"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo54: TfrxMemoView
          Left = 758.945270000000000000
          Top = 0.377952760000000000
          Width = 25.571598430000000000
          Height = 11.338582680000000000
          DataSet = frxDataset
          DataSetName = 'frxDataset'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDataset."idBanco"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo56: TfrxMemoView
          Left = 787.622450000000000000
          Top = 0.377952760000000000
          Width = 29.351128430000000000
          Height = 11.338582680000000000
          DataSet = frxDataset
          DataSetName = 'frxDataset'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDataset."idAgencia"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo58: TfrxMemoView
          Left = 818.858690000000000000
          Top = 0.377952760000000000
          Width = 48.248778430000000000
          Height = 11.338582680000000000
          DataField = 'idContaCorrente'
          DataSet = frxDataset
          DataSetName = 'frxDataset'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDataset."idContaCorrente"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo22: TfrxMemoView
          Left = 616.063390000000000000
          Width = 138.957498430000000000
          Height = 11.338582680000000000
          DataField = 'descTitular'
          DataSet = frxDataset
          DataSetName = 'frxDataset'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDataset."descTitular"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo4: TfrxMemoView
          Left = 869.308011730000000000
          Top = 0.377952755905512000
          Width = 25.571598430000000000
          Height = 11.338582680000000000
          DataField = 'tpConta'
          DataSet = frxDataset
          DataSetName = 'frxDataset'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDataset."tpConta"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
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
          Memo.UTF8W = (
            
              '[frxDataset."idEmpresa"].[frxDataset."idCadEmpresa"] - [frxDatas' +
              'et."descAbreviadaEmp"]')
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
          Memo.UTF8W = (
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
          Memo.UTF8W = (
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
          Memo.UTF8W = (
            'Lista de Contas '#224' Pagar por Portador')
          ParentFont = False
          WordWrap = False
        end
        object Picture1: TfrxPictureView
          Left = 11.338590000000000000
          Top = 16.897650000000000000
          Width = 155.000000000000000000
          Height = 62.000000000000000000
          DataField = 'imgLogo'
          DataSet = dmPadrao.frxEmpresaContabil
          DataSetName = 'frxEmpresaContabil'
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
      end
      object HeaderContaPag: TfrxHeader
        FillType = ftBrush
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
          Fill.BackColor = 12369084
          Frame.Color = 15790320
        end
        object Memo10: TfrxMemoView
          Left = 202.874064570000000000
          Top = 47.244094490000000000
          Width = 45.883494200000000000
          Height = 13.228346460000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Docto')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object MdtEmissao: TfrxMemoView
          Left = 306.042761900000000000
          Top = 47.244094490000000000
          Width = 44.598420310000000000
          Height = 13.228346460000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Emiss'#227'o')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object MnrTitulo: TfrxMemoView
          Left = 258.330860000000000000
          Top = 47.244094490000000000
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
          Memo.UTF8W = (
            'Titulo')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo9: TfrxMemoView
          Left = 1007.196850390000000000
          Top = 47.244094490000000000
          Width = 59.338582680000000000
          Height = 13.228346460000000000
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
        object Memo11: TfrxMemoView
          Left = 1069.992580000000000000
          Top = 47.244094490000000000
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
          Memo.UTF8W = (
            'St.')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo23: TfrxMemoView
          Left = 22.752757170000000000
          Top = 47.244094490000000000
          Width = 89.272498600000000000
          Height = 13.228346460000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Fornecedor')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo8: TfrxMemoView
          Left = 979.897650000000000000
          Top = 47.244094490000000000
          Width = 25.322834650000000000
          Height = 13.228346460000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'Parc.')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo5: TfrxMemoView
          Left = 921.442740200000000000
          Top = 47.244094490000000000
          Width = 55.937007870000000000
          Height = 13.228346460000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
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
          Memo.UTF8W = (
            'Emiss'#227'o de:')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object MdtEmissaoIni: TfrxMemoView
          Left = 94.488188980000000000
          Top = 1.511811020000000000
          Width = 94.488250000000000000
          Height = 11.338582680000000000
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
        object Memo32: TfrxMemoView
          Left = 189.280414600000000000
          Top = 1.511811023622040000
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
          Memo.UTF8W = (
            'At'#233)
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object MdtEmissaoFim: TfrxMemoView
          Left = 222.992125980000000000
          Top = 1.511811020000000000
          Width = 94.488250000000000000
          Height = 11.338582680000000000
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
        object Memo34: TfrxMemoView
          Left = 22.677165354330700000
          Top = 15.874015750000000000
          Width = 49.852000700000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Titulos de:')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object MnrTituloIni: TfrxMemoView
          Left = 94.488188980000000000
          Top = 15.874015750000000000
          Width = 94.488250000000000000
          Height = 11.338582680000000000
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
        object Memo36: TfrxMemoView
          Left = 189.028451100000000000
          Top = 15.874015748031500000
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
          Memo.UTF8W = (
            'At'#233)
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object MnrTituloFim: TfrxMemoView
          Left = 222.992125980000000000
          Top = 15.874015750000000000
          Width = 94.488250000000000000
          Height = 11.338582680000000000
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
        object Memo38: TfrxMemoView
          Left = 340.157480314961000000
          Top = 15.874015750000000000
          Width = 67.011066900000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Gerenciais de:')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object MclassificacaoIni: TfrxMemoView
          Left = 415.748031500000000000
          Top = 15.874015750000000000
          Width = 94.488250000000000000
          Height = 11.338582680000000000
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
          Memo.UTF8W = (
            'At'#233)
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object MclassificacaoFim: TfrxMemoView
          Left = 544.251968500000000000
          Top = 15.874015750000000000
          Width = 94.488250000000000000
          Height = 11.338582680000000000
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
          Memo.UTF8W = (
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
          Memo.UTF8W = (
            'Ordenado por:')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object MstTitulo: TfrxMemoView
          Left = 960.000000000000000000
          Top = 1.511811020000000000
          Width = 67.615791700000000000
          Height = 11.338582680000000000
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
        object MPrevisoes: TfrxMemoView
          Left = 755.905511810000000000
          Top = 1.511811020000000000
          Width = 67.048862200000000000
          Height = 11.338582680000000000
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
          Memo.UTF8W = (
            'Vencimento de:')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object MdtVencimentoIni: TfrxMemoView
          Left = 415.748031500000000000
          Top = 1.511811020000000000
          Width = 94.488250000000000000
          Height = 11.338582680000000000
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
        object Memo27: TfrxMemoView
          Left = 510.058562900000000000
          Top = 1.511811023622040000
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
          Memo.UTF8W = (
            'At'#233)
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object MdtVencimentoFim: TfrxMemoView
          Left = 544.251968500000000000
          Top = 1.511811020000000000
          Width = 94.488250000000000000
          Height = 11.338582680000000000
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
        object Memo39: TfrxMemoView
          Left = 661.417322830000000000
          Top = 30.236220470000000000
          Width = 90.292971700000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Corre'#231#227'o de Juros:')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object MJuros: TfrxMemoView
          Left = 755.905511810000000000
          Top = 30.236220470000000000
          Width = 66.633113900000000000
          Height = 11.338582680000000000
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
        object Memo20: TfrxMemoView
          Left = 850.393700790000000000
          Top = 30.236220470000000000
          Width = 106.696131900000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Altera'#231#227'o no Desconto:')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object MDesconto: TfrxMemoView
          Left = 960.000000000000000000
          Top = 30.236220470000000000
          Width = 66.406342100000000000
          Height = 11.338582680000000000
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
        object Memo47: TfrxMemoView
          Left = 661.417322834646000000
          Top = 15.874015750000000000
          Width = 67.011066900000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Fornecedores:')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object MFornecedores: TfrxMemoView
          Left = 755.905511810000000000
          Top = 15.874015750000000000
          Width = 94.488250000000000000
          Height = 11.338582680000000000
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
        object Memo48: TfrxMemoView
          Left = 850.393700787402000000
          Top = 15.874015750000000000
          Width = 44.333886900000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Grupos:')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object MGrupos: TfrxMemoView
          Left = 960.000000000000000000
          Top = 15.874015750000000000
          Width = 94.488250000000000000
          Height = 11.338582680000000000
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
        object Memo49: TfrxMemoView
          Left = 22.677165354330700000
          Top = 30.236220470000000000
          Width = 67.011066900000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Segmentos:')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object MSegmentos: TfrxMemoView
          Left = 94.488188980000000000
          Top = 30.236220470000000000
          Width = 94.488250000000000000
          Height = 11.338582680000000000
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
        object Memo51: TfrxMemoView
          Left = 196.535340310000000000
          Top = 30.236220470000000000
          Width = 44.333886900000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Portador:')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object MPortador: TfrxMemoView
          Left = 245.669181500000000000
          Top = 30.236220470000000000
          Width = 90.708720000000000000
          Height = 11.338582680000000000
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
        object Memo50: TfrxMemoView
          Left = 524.047209920000000000
          Top = 47.244094490000000000
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
          Memo.UTF8W = (
            'CNPJ / CPF')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo53: TfrxMemoView
          Left = 758.929158270000000000
          Top = 47.244094490000000000
          Width = 25.700787400000000000
          Height = 13.228346460000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'Bco.')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo55: TfrxMemoView
          Left = 787.653557950000000000
          Top = 47.244094490000000000
          Width = 29.480314960000000000
          Height = 13.228346460000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'Ag'#234'n.')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo57: TfrxMemoView
          Left = 819.023634250000000000
          Top = 47.244094490000000000
          Width = 48.377952760000000000
          Height = 13.228346460000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'CONTA')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo59: TfrxMemoView
          Left = 353.291590000000000000
          Top = 47.133890000000000000
          Width = 188.220560310000000000
          Height = 13.228346460000000000
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
        object Memo16: TfrxMemoView
          Left = 362.834880000000000000
          Top = 30.236240000000000000
          Width = 44.333886900000000000
          Height = 11.338582680000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Rateio:')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object MRateio: TfrxMemoView
          Left = 415.748251190000000000
          Top = 30.236240000000000000
          Width = 222.992270000000000000
          Height = 11.338582680000000000
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
        object Memo21: TfrxMemoView
          Left = 616.063390000000000000
          Top = 46.354360000000000000
          Width = 67.181200000000000000
          Height = 13.228346460000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'TITULAR')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo30: TfrxMemoView
          Left = 869.291900000000000000
          Top = 47.244094488189000000
          Width = 25.700787400000000000
          Height = 13.228346460000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'TIPO')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
      end
      object GroupFooter1: TfrxGroupFooter
        FillType = ftBrush
        Height = 13.228341570000000000
        Top = 347.716760000000000000
        Width = 1122.520410000000000000
        Stretched = True
        object Memo29: TfrxMemoView
          Left = 853.981466600000000000
          Top = 0.377952760000000000
          Width = 56.277201700000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Sub-total')
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo35: TfrxMemoView
          Left = 995.905504490000000000
          Top = 0.377952760000000000
          Width = 70.677172680000000000
          Height = 11.338582680000000000
          DataSet = frxDataset
          DataSetName = 'frxDataset'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDataset."Saldo">)]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo28: TfrxMemoView
          Left = 504.436627570000000000
          Top = 1.000000000000000000
          Width = 57.826771650000000000
          Height = 7.559050240000000000
          Visible = False
          DataSet = frxDataset
          DataSetName = 'frxDataset'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDataset."vlPago">)]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo43: TfrxMemoView
          Left = 913.889758900000000000
          Top = 0.377952760000000000
          Width = 63.496067870000000000
          Height = 11.338582680000000000
          DataSet = frxDataset
          DataSetName = 'frxDataset'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDataset."vlParcela">)]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
      end
      object FooterContaPag: TfrxFooter
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 385.512060000000000000
        Width = 1122.520410000000000000
        Stretched = True
        object Memo1: TfrxMemoView
          Left = 853.795275590000000000
          Top = 0.377952755905512000
          Width = 56.314960630000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Total Geral')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo25: TfrxMemoView
          Left = 995.905504490000000000
          Top = 0.377952760000000000
          Width = 70.677172680000000000
          Height = 11.338582680000000000
          DataSet = frxDataset
          DataSetName = 'frxDataset'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDataset."Saldo">,MasterDataContaPag,2)]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo44: TfrxMemoView
          Left = 294.578247570000000000
          Top = 1.779530000000000000
          Width = 57.826771650000000000
          Height = 11.338582680000000000
          Visible = False
          DataSet = frxDataset
          DataSetName = 'frxDataset'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDataset."vlPago">,MasterDataContaPag,2)]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo46: TfrxMemoView
          Left = 913.889758900000000000
          Top = 0.377952760000000000
          Width = 63.496067870000000000
          Height = 11.338582680000000000
          DataSet = frxDataset
          DataSetName = 'frxDataset'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDataset."vlParcela">,MasterDataContaPag,2)]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Height = 66.811070000000000000
        Top = 468.661720000000000000
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
          Left = 949.583180000000000000
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
          Width = 1063.228346460000000000
          Color = clBlack
          Frame.Typ = [ftTop]
          Frame.Width = 0.100000000000000000
        end
        object Memo14: TfrxMemoView
          Left = 649.000000000000000000
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
      'WHERE idEmpresa = [DBEidEmpresa] AND tpGerencial = '#39'SAIDAS'#39)
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
    PixelsPerInch = 96
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
    Left = 688
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
end
