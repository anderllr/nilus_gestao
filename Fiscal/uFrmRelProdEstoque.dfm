inherited FrmRelProdEstoque: TFrmRelProdEstoque
  Caption = 'Raz'#227'o de Produto'
  ClientHeight = 574
  ClientWidth = 1039
  Icon.Data = {
    0000010001001010000001001800680300001600000028000000100000002000
    0000010018000000000000030000000000000000000000000000000000000000
    000000000000000000000000000000000000000000000000000000006A6866AF
    752FBD8340BE833F825D32000000000000000000000000000000000000000000
    0000000000000000000000006A6763E79A46F2AE65F3AF65B67C3E0000000000
    000000000000004D49444E48404E48404E48404E48404F48410000006A6662E2
    7A16EC811CED811CB2651D000000000000000000000000AE6819E99534E89535
    E89535E89535E58D287250295C4F44E07114EB7515EC7515B15E190000000000
    00000000000000B36212ED841CEC841DEC841DE9831D985D21C66D0E8C5928E2
    8849F09251F19352B56D3C000000000000000000000000B35C12EB7714EB7615
    E7710C965318C2650EEE78098C5729E6A179F5B289F6B38AB77D5B0000000000
    00000000000000B66D39F39F64EF975A985322C45F0FEB6F0BED6F0B8B542CE7
    BCA3FAD4BEFBD5C0BA8C75000000000000000000656464B87149F4AC7A9D5733
    C66C32F08D49EE8541EE752F804D30774E377F51397F52386548386866650000
    005553517F5119E58E2EED9C3CE18728EE8F3FF4AA7FF29D67EC881CE48D29D9
    8B2AD88B2BD88A2BDB8B2AB2701F616160945614F19838F0A049F0A04BF0A048
    EE9330EB9D5BDDA27DEB8921ED932FEE922FEE922FEE922FEE922EC8771F5141
    31E6770DEB7D14EB7D14EB7D14EB7E14EB7D14CE71196B6058E17106EA7404EA
    7404EA7404E97404EA7404C6690F6C4223F09042EB781AEA6B08EA6A04E96B08
    EB791AE98B3D68574CE37F2FEE8835EE8835EE8835EE8835EF8936C96E265D3F
    2EF4AB78F5B485F5AE7CF4AA75F4AE7CF5B485E5A070685C55E99A63F4A873F4
    A773F4A773F4A873F4A875CA7C485D5957D0875CFAD5BEFAD3BCFAD4BCFAD4BC
    FAD5BCA2755B6A6663EAB392F8C7AAF8C7AAF8C6AAF8C7AAF9C8ACCD89640000
    0057473FD79E81FDE9DDFEEFE5FAE6DABB8D75000000000000DDAB8DECC3ADEC
    C3ACECC3ACECC3ACECC4AEC27D5B00000000000065605E744E3F915C44705B54
    0000000000000000006B66646B66636B65636B65636B65636B66636C6867FFC1
    0000FFC10000E0410000E0010000E0010000E0010000E0010000C00000008000
    0000000000000000000000000000000000000000000081800000C3800000}
  ExplicitTop = -99
  ExplicitWidth = 1055
  ExplicitHeight = 612
  PixelsPerInch = 96
  TextHeight = 13
  inherited Bevel3: TBevel
    Width = 1039
    ExplicitWidth = 630
  end
  inherited Bevel1: TBevel
    Top = 536
    Width = 1039
    ExplicitTop = 252
    ExplicitWidth = 630
  end
  inherited Bevel5: TBevel
    Width = 1039
    ExplicitWidth = 630
  end
  object CLabel15: TCLabel [4]
    Left = 717
    Top = 566
    Width = 52
    Height = 13
    Alignment = taRightJustify
    Caption = 'SubGrupos'
    Visible = False
  end
  object CLabel16: TCLabel [5]
    Left = 735
    Top = 544
    Width = 34
    Height = 13
    Alignment = taRightJustify
    Caption = 'Grupos'
    Visible = False
  end
  inherited PanBotoes: TCPanelGradient
    Top = 540
    Width = 1039
    TabOrder = 3
    ExplicitTop = 540
    ExplicitWidth = 1039
    inherited BtnGerar: TCBitBtn
      Left = 5
      ExplicitLeft = 5
    end
    inherited BtnFechar: TCBitBtn
      Left = 439
      Top = 6
      ExplicitLeft = 439
      ExplicitTop = 6
    end
  end
  inherited DBEidEmpresa: TCDBEdit
    TabOrder = 4
  end
  inherited LookdescCadEmpresa: TCLookUp
    Left = 152
    TabOrder = 5
    ExplicitLeft = 152
  end
  inherited LookdescAbreviada: TCLookUp
    Left = 360
    TabOrder = 6
    ExplicitLeft = 360
  end
  object CGroupBox1: TCGroupBox [10]
    Left = 8
    Top = 38
    Width = 506
    Height = 259
    Caption = 'Param'#234'tros'
    TabOrder = 0
    object CLabel3: TCLabel
      Left = 39
      Top = 23
      Width = 38
      Height = 13
      Alignment = taRightJustify
      Caption = 'Data de'
    end
    object CLabel4: TCLabel
      Left = 168
      Top = 23
      Width = 16
      Height = 13
      Alignment = taRightJustify
      Caption = 'at'#233
    end
    object CLabel1: TCLabel
      Left = 35
      Top = 98
      Width = 42
      Height = 13
      Alignment = taRightJustify
      Caption = 'Dep'#243'sito'
    end
    object CLabel6: TCLabel
      Left = 42
      Top = 123
      Width = 35
      Height = 13
      Alignment = taRightJustify
      Caption = 'Cultura'
    end
    object CLabel7: TCLabel
      Left = 51
      Top = 148
      Width = 26
      Height = 13
      Alignment = taRightJustify
      Caption = 'Safra'
    end
    object CLabel11: TCLabel
      Left = 9
      Top = 48
      Width = 68
      Height = 13
      Alignment = taRightJustify
      Caption = 'Produto Inicial'
    end
    object CLabel8: TCLabel
      Left = 14
      Top = 73
      Width = 63
      Height = 13
      Alignment = taRightJustify
      Caption = 'Produto Final'
    end
    object CLabel12: TCLabel
      Left = 21
      Top = 200
      Width = 56
      Height = 13
      Alignment = taRightJustify
      Caption = 'Sub-Grupos'
    end
    object CLabel10: TCLabel
      Left = 43
      Top = 173
      Width = 34
      Height = 13
      Alignment = taRightJustify
      Caption = 'Grupos'
    end
    object CLabel5: TCLabel
      Left = 33
      Top = 227
      Width = 44
      Height = 13
      Alignment = taRightJustify
      Caption = 'Grupo de'
    end
    object CLabel9: TCLabel
      Left = 139
      Top = 227
      Width = 16
      Height = 13
      Alignment = taRightJustify
      Caption = 'at'#233
    end
    object CLabel13: TCLabel
      Left = 362
      Top = 227
      Width = 16
      Height = 13
      Alignment = taRightJustify
      Caption = 'at'#233
    end
    object CLabel14: TCLabel
      Left = 234
      Top = 227
      Width = 66
      Height = 13
      Alignment = taRightJustify
      Caption = 'Sub-Grupo de'
    end
    object DBEdtInicial: TCDBEdit
      Left = 83
      Top = 20
      Width = 78
      Height = 19
      BevelKind = bkTile
      BorderStyle = bsNone
      DataField = 'dtInicial'
      DataSource = dsPadrao
      MaxLength = 10
      TabOrder = 0
      DecimalControl = True
      KeyMode = kmDate
    end
    object DBEdtFinal: TCDBEdit
      Left = 190
      Top = 20
      Width = 78
      Height = 19
      BevelKind = bkTile
      BorderStyle = bsNone
      DataField = 'dtFinal'
      DataSource = dsPadrao
      MaxLength = 10
      TabOrder = 1
      DecimalControl = True
      KeyMode = kmDate
    end
    object DBEProdDeposito: TCDBEdit
      Left = 83
      Top = 95
      Width = 46
      Height = 19
      BevelKind = bkTile
      BorderStyle = bsNone
      DataField = 'idProdDeposito'
      DataSource = dsPadrao
      TabOrder = 8
      Find = dmFind.FindProdDeposito
      DecimalControl = True
      KeyMode = kmNormal
    end
    object LookProdDeposito: TCLookUp
      Left = 135
      Top = 95
      Width = 236
      Height = 19
      Alignment = taLeftJustify
      BevelInner = bvSpace
      BevelOuter = bvLowered
      Color = 14149350
      ParentBackground = False
      TabOrder = 9
      Key.Strings = (
        'idProdDeposito')
      LookUpKey.Strings = (
        'idProdDeposito')
      AlternateSQL.Strings = (
        
          'select descProdDeposito from ProdDeposito where  idProdDeposito ' +
          '= ?')
      ClientDataSet = cdsLookUp
      DataSource = dsPadrao
      ValidaCampoObrigatorio = False
      CampoObrigatorio = True
      LookUpTable = 'ProdDeposito'
      ReturnField = 'descDeposito'
    end
    object DBEidCultura: TCDBEdit
      Left = 83
      Top = 120
      Width = 46
      Height = 19
      BevelKind = bkTile
      BorderStyle = bsNone
      DataField = 'idCultura'
      DataSource = dsPadrao
      TabOrder = 10
      Find = dmFind.FindCultura
      DecimalControl = True
      KeyMode = kmNormal
    end
    object LookCultura: TCLookUp
      Left = 135
      Top = 120
      Width = 236
      Height = 19
      Alignment = taLeftJustify
      BevelInner = bvSpace
      BevelOuter = bvLowered
      Color = 14149350
      ParentBackground = False
      TabOrder = 11
      Key.Strings = (
        'idCultura')
      LookUpKey.Strings = (
        'idCultura')
      AlternateSQL.Strings = (
        'select descCultura from Cultura where idCultura = ?')
      ClientDataSet = cdsLookUp
      DataSource = dsPadrao
      ValidaCampoObrigatorio = False
      CampoObrigatorio = True
      LookUpTable = 'Cultura'
      ReturnField = 'descCultura'
    end
    object LookSafra: TCLookUp
      Left = 135
      Top = 145
      Width = 236
      Height = 19
      Alignment = taLeftJustify
      BevelInner = bvSpace
      BevelOuter = bvLowered
      Color = 14149350
      ParentBackground = False
      TabOrder = 13
      Key.Strings = (
        'idSafra')
      LookUpKey.Strings = (
        'idSafra')
      AlternateSQL.Strings = (
        
          'SELECT descSafra FROM Safra WHERE idEmpresa = [DBEidEmpresa] AND' +
          ' idSafra = ?')
      ClientDataSet = cdsLookUp
      DataSource = dsPadrao
      ValidaCampoObrigatorio = False
      CampoObrigatorio = True
      LookUpTable = 'Safra'
      ReturnField = 'descSafra'
    end
    object DBEidSafra: TCDBEdit
      Left = 83
      Top = 145
      Width = 46
      Height = 19
      BevelKind = bkTile
      BorderStyle = bsNone
      DataField = 'idSafra'
      DataSource = dsPadrao
      TabOrder = 12
      Find = dmFind.FindSafra
      DecimalControl = True
      KeyMode = kmNormal
    end
    object LookProdMedida: TCLookUp
      Left = 392
      Top = 45
      Width = 42
      Height = 19
      Alignment = taLeftJustify
      BevelInner = bvSpace
      BevelOuter = bvLowered
      Color = 14149350
      ParentBackground = False
      TabOrder = 4
      Key.Strings = (
        'idProdIni')
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
    object LookProduto: TCLookUp
      Left = 135
      Top = 45
      Width = 251
      Height = 19
      Alignment = taLeftJustify
      BevelInner = bvSpace
      BevelOuter = bvLowered
      Color = 14149350
      ParentBackground = False
      TabOrder = 3
      Key.Strings = (
        'idProdIni')
      LookUpKey.Strings = (
        'idProduto')
      ClientDataSet = cdsLookUp
      DataSource = dsPadrao
      ValidaCampoObrigatorio = True
      CampoObrigatorio = True
      LookUpTable = 'Produto'
      ReturnField = 'descProduto'
    end
    object DBEProdIni: TCDBEdit
      Left = 83
      Top = 45
      Width = 46
      Height = 19
      BevelKind = bkTile
      BorderStyle = bsNone
      DataField = 'idProdIni'
      DataSource = dsPadrao
      TabOrder = 2
      Find = dmFind.FindProduto
      DecimalControl = True
      KeyMode = kmNormal
    end
    object CLookUp1: TCLookUp
      Left = 392
      Top = 70
      Width = 42
      Height = 19
      Alignment = taLeftJustify
      BevelInner = bvSpace
      BevelOuter = bvLowered
      Color = 14149350
      ParentBackground = False
      TabOrder = 7
      Key.Strings = (
        'idProdFim')
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
    object CLookUp2: TCLookUp
      Left = 135
      Top = 70
      Width = 251
      Height = 19
      Alignment = taLeftJustify
      BevelInner = bvSpace
      BevelOuter = bvLowered
      Color = 14149350
      ParentBackground = False
      TabOrder = 6
      Key.Strings = (
        'idProdFim')
      LookUpKey.Strings = (
        'idProduto')
      ClientDataSet = cdsLookUp
      DataSource = dsPadrao
      ValidaCampoObrigatorio = True
      CampoObrigatorio = True
      LookUpTable = 'Produto'
      ReturnField = 'descProduto'
    end
    object DBEProdFim: TCDBEdit
      Left = 83
      Top = 70
      Width = 46
      Height = 19
      BevelKind = bkTile
      BorderStyle = bsNone
      DataField = 'idProdFim'
      DataSource = dsPadrao
      TabOrder = 5
      Find = dmFind.FindProduto
      DecimalControl = True
      KeyMode = kmNormal
    end
    object DBEidGrupo: TcxPopupEdit
      Left = 83
      Top = 170
      Style.BorderColor = clBtnShadow
      Style.BorderStyle = ebsSingle
      Style.ButtonStyle = btsOffice11
      StyleFocused.BorderStyle = ebsSingle
      TabOrder = 14
      Width = 351
    end
    object DBEidSubGrupo: TcxPopupEdit
      Left = 83
      Top = 197
      Style.BorderColor = clBtnShadow
      Style.BorderStyle = ebsSingle
      Style.ButtonStyle = btsOffice11
      StyleFocused.BorderStyle = ebsSingle
      TabOrder = 15
      Width = 351
    end
    object DBEidGrupoIni: TCDBEdit
      Left = 83
      Top = 224
      Width = 50
      Height = 19
      BevelKind = bkTile
      BorderStyle = bsNone
      DataField = 'idGrupoIni'
      DataSource = dsPadrao
      TabOrder = 16
      Find = dmFind.FindGrupo
      DecimalControl = True
      KeyMode = kmNormal
    end
    object DBEidGrupoFim: TCDBEdit
      Left = 161
      Top = 224
      Width = 50
      Height = 19
      BevelKind = bkTile
      BorderStyle = bsNone
      DataField = 'idGrupoFim'
      DataSource = dsPadrao
      TabOrder = 17
      Find = dmFind.FindGrupo
      DecimalControl = True
      KeyMode = kmNormal
    end
    object DBEidSubGrupoFim: TCDBEdit
      Left = 384
      Top = 224
      Width = 50
      Height = 19
      BevelKind = bkTile
      BorderStyle = bsNone
      DataField = 'idSubGrupoFim'
      DataSource = dsPadrao
      TabOrder = 19
      Find = dmFind.FindSubGrupo
      DecimalControl = True
      KeyMode = kmNormal
    end
    object DBEidSubGrupoIni: TCDBEdit
      Left = 306
      Top = 224
      Width = 50
      Height = 19
      BevelKind = bkTile
      BorderStyle = bsNone
      DataField = 'idSubGrupoIni'
      DataSource = dsPadrao
      TabOrder = 18
      Find = dmFind.FindSubGrupo
      DecimalControl = True
      KeyMode = kmNormal
    end
  end
  inherited DBEidCadEmpresa: TCDBEdit
    TabOrder = 7
  end
  object panGrupo: TPanel [12]
    Left = 528
    Top = 157
    Width = 474
    Height = 223
    BevelOuter = bvNone
    Color = 14671839
    ParentBackground = False
    TabOrder = 8
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
      Caption = '[ Shift + Enter ] marcar/desmarcar o grupo selecionado.'
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
        DataController.DataSource = dsGrupo
        DataController.KeyFieldNames = 'idProdGrupo'
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
          DataBinding.FieldName = 'idProdGrupo'
          HeaderAlignmentHorz = taRightJustify
          Options.Filtering = False
          Width = 70
        end
        object cxGridDBNomeGrupo: TcxGridDBColumn
          Caption = 'Nome do Grupo'
          DataBinding.FieldName = 'descProdGrupo'
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
  object panSubGrupo: TPanel [13]
    Left = 532
    Top = 315
    Width = 474
    Height = 223
    BevelOuter = bvNone
    Color = 14671839
    ParentBackground = False
    TabOrder = 9
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
    object Label2: TLabel
      Left = 250
      Top = 186
      Width = 185
      Height = 25
      Anchors = [akLeft, akBottom]
      AutoSize = False
      Caption = '[ Shift + Enter ] marcar/desmarcar o sub-grupo selecionado.'
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
    object cxGrid1: TcxGrid
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
      object DBTableViewSubGrupo: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        Navigator.Buttons.Delete.Enabled = False
        Navigator.Buttons.Delete.Visible = False
        DataController.DataSource = dsSubGrupo
        DataController.KeyFieldNames = 'idProdSubGrupo'
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.ImmediateEditor = False
        OptionsBehavior.IncSearch = True
        OptionsBehavior.IncSearchItem = cxGridDBNomeSubGrupo
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
        object cxGridDBCodSubGrupo: TcxGridDBColumn
          Caption = 'C'#243'digo'
          DataBinding.FieldName = 'idProdSubGrupo'
          HeaderAlignmentHorz = taRightJustify
          Options.Filtering = False
          Width = 70
        end
        object cxGridDBNomeSubGrupo: TcxGridDBColumn
          Caption = 'Nome do Sub-Grupo'
          DataBinding.FieldName = 'descProdSubGrupo'
          Options.Filtering = False
          Width = 323
        end
      end
      object cxGridLevel1: TcxGridLevel
        GridView = DBTableViewSubGrupo
      end
    end
    object BtnAplicarSubGrupo: TCBitBtn
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
    object BtnCancelarSubGrupo: TCBitBtn
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
    object BtnLimparSubGrupo: TCBitBtn
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
    object cbCodSubGrupo: TcxCheckBox
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
    object cbDescSubGrupo: TcxCheckBox
      Left = 241
      Top = 7
      TabStop = False
      Caption = 'Nome do Sub-Grupo'
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
  object CGroupBox2: TCGroupBox [14]
    Left = 8
    Top = 303
    Width = 506
    Height = 40
    Caption = 'Outras Op'#231#245'es'
    TabOrder = 1
    object DBCKsaldozero: TCDBCheckBox
      Left = 218
      Top = 15
      Width = 153
      Height = 17
      Caption = 'Produtos com Saldo Zero?'
      DataField = 'saldozero'
      DataSource = dsPadrao
      TabOrder = 0
      ValueChecked = 'S'
      ValueUnchecked = 'N'
    end
    object DBCKconsolida: TCDBCheckBox
      Left = 33
      Top = 15
      Width = 109
      Height = 17
      Caption = 'Todas Inscri'#231#245'es?'
      DataField = 'consolida'
      DataSource = dsPadrao
      TabOrder = 1
      ValueChecked = 'S'
      ValueUnchecked = 'N'
    end
  end
  object DBRGordem: TCDBRadioGroup [15]
    Left = 8
    Top = 439
    Width = 506
    Height = 52
    Caption = 'Op'#231#245'es de Ordena'#231#227'o'
    Columns = 3
    DataField = 'ordem'
    DataSource = dsPadrao
    Items.Strings = (
      'Produto'
      'Data de Lan'#231'amento'
      'Nr. de Documento')
    TabOrder = 2
    Values.Strings = (
      'P'
      'D'
      'N')
  end
  object DBEsubgrupos: TCDBEdit [16]
    Left = 329
    Top = 519
    Width = 50
    Height = 19
    BevelKind = bkTile
    BorderStyle = bsNone
    DataField = 'subgrupos'
    DataSource = dsPadrao
    TabOrder = 10
    Visible = False
    DecimalControl = True
    KeyMode = kmNormal
  end
  object DBEgrupos: TCDBEdit [17]
    Left = 329
    Top = 497
    Width = 50
    Height = 19
    BevelKind = bkTile
    BorderStyle = bsNone
    DataField = 'grupos'
    DataSource = dsPadrao
    TabOrder = 11
    Visible = False
    DecimalControl = True
    KeyMode = kmNormal
  end
  object CGroupBox3: TCGroupBox [18]
    Left = 8
    Top = 349
    Width = 506
    Height = 84
    Caption = 'Outras Op'#231#245'es'
    TabOrder = 12
    object DBCKnfs: TCDBCheckBox
      Left = 198
      Top = 15
      Width = 153
      Height = 17
      Caption = 'Nota Fiscal de Saida'
      DataField = 'nfs'
      DataSource = dsPadrao
      TabOrder = 0
      ValueChecked = 'S'
      ValueUnchecked = 'N'
    end
    object DBCKnfe: TCDBCheckBox
      Left = 33
      Top = 15
      Width = 128
      Height = 17
      Caption = 'Nota Fiscal de Entrada'
      DataField = 'nfe'
      DataSource = dsPadrao
      TabOrder = 1
      ValueChecked = 'S'
      ValueUnchecked = 'N'
    end
    object DBCKapl: TCDBCheckBox
      Left = 33
      Top = 38
      Width = 109
      Height = 17
      Caption = 'Aplica'#231#227'o'
      DataField = 'apl'
      DataSource = dsPadrao
      TabOrder = 2
      ValueChecked = 'S'
      ValueUnchecked = 'N'
    end
    object DBCKmaq: TCDBCheckBox
      Left = 198
      Top = 38
      Width = 109
      Height = 17
      Caption = 'Maquina'
      DataField = 'maq'
      DataSource = dsPadrao
      TabOrder = 3
      ValueChecked = 'S'
      ValueUnchecked = 'N'
    end
    object DBCKmov: TCDBCheckBox
      Left = 357
      Top = 15
      Width = 109
      Height = 17
      Caption = 'Movimenta'#231#227'o'
      DataField = 'mov'
      DataSource = dsPadrao
      TabOrder = 4
      ValueChecked = 'S'
      ValueUnchecked = 'N'
    end
    object DBCKrom: TCDBCheckBox
      Left = 357
      Top = 38
      Width = 109
      Height = 17
      Caption = 'Romaneio'
      DataField = 'rom'
      DataSource = dsPadrao
      TabOrder = 5
      ValueChecked = 'S'
      ValueUnchecked = 'N'
    end
    object DBCKman: TCDBCheckBox
      Left = 33
      Top = 61
      Width = 109
      Height = 17
      Caption = 'Manuten'#231#227'o'
      DataField = 'man'
      DataSource = dsPadrao
      TabOrder = 6
      ValueChecked = 'S'
      ValueUnchecked = 'N'
    end
    object DBCKaba: TCDBCheckBox
      Left = 198
      Top = 61
      Width = 109
      Height = 17
      Caption = 'Abastecimento'
      DataField = 'aba'
      DataSource = dsPadrao
      TabOrder = 7
      ValueChecked = 'S'
      ValueUnchecked = 'N'
    end
    object DBCKcom: TCDBCheckBox
      Left = 357
      Top = 61
      Width = 146
      Height = 17
      Caption = 'Contrato de Compra'
      DataField = 'com'
      DataSource = dsPadrao
      TabOrder = 8
      ValueChecked = 'S'
      ValueUnchecked = 'N'
    end
  end
  object DBEtpDocumento: TCDBEdit [19]
    Left = 448
    Top = 501
    Width = 46
    Height = 19
    BevelKind = bkTile
    BorderStyle = bsNone
    DataField = 'tpDocumento'
    DataSource = dsPadrao
    TabOrder = 13
    Visible = False
    Find = dmFind.FindCultura
    DecimalControl = True
    KeyMode = kmNormal
  end
  inherited imgIcones: TImageList
    Left = 856
    Top = 56
    Bitmap = {
      494C0101070009003C0010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
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
    Left = 824
    Top = 56
  end
  inherited dspRelatorio: TDataSetProvider
    Left = 888
    Top = 56
  end
  inherited cdsRelatorio: TClientDataSet
    CommandText = 
      'EXEC spRelProdEstoque 1, 1, 1, 1, '#39'10/01/2012'#39', '#39'12/01/2012'#39', 1,' +
      ' 0, 0, '#39'S'#39', '#39#39', '#39#39', '#39#39', 0, 0, 0, 0, '#39'S'#39', '#39'P'#39
    Left = 920
    Top = 56
  end
  inherited frxDataset: TfrxDBDataset
    FieldAliases.Strings = (
      'dtEstoque=dtEstoque'
      'tpDocumento=tpDocumento'
      'idDocSerie=idDocSerie'
      'nrDocumento=nrDocumento'
      'OrigemDest=OrigemDest'
      'descSafra=descSafra'
      'descCultura=descCultura'
      'idProduto=idProduto'
      'descProduto=descProduto'
      'qtEstoque=qtEstoque'
      'Tipo=Tipo'
      'descProdMedida=descProdMedida'
      'vlEstoque=vlEstoque'
      'CustoMedio=CustoMedio'
      'qtSaldo=qtSaldo'
      'descProdDeposito=descProdDeposito'
      'idEmpresa=idEmpresa'
      'descCadEmpresa=descCadEmpresa'
      'qtEntradas=qtEntradas'
      'qtSaidas=qtSaidas'
      'idProdDeposito=idProdDeposito'
      'qtSaldoAnterior=qtSaldoAnterior')
    Left = 888
    Top = 88
  end
  inherited dsPadrao: TDataSource
    Left = 928
    Top = 216
  end
  inherited cdsPadrao: TClientDataSet
    AfterInsert = cdsPadraoAfterInsert
    Left = 888
    Top = 216
    object cdsPadraodtInicial: TDateTimeField
      FieldName = 'dtInicial'
    end
    object cdsPadraodtFinal: TDateTimeField
      FieldName = 'dtFinal'
    end
    object cdsPadraoidProdIni: TIntegerField
      FieldName = 'idProdIni'
    end
    object cdsPadraoidProdFim: TIntegerField
      FieldName = 'idProdFim'
    end
    object cdsPadraoidProdDeposito: TIntegerField
      FieldName = 'idProdDeposito'
    end
    object cdsPadraoidSafra: TIntegerField
      FieldName = 'idSafra'
    end
    object cdsPadraoidCultura: TIntegerField
      FieldName = 'idCultura'
    end
    object cdsPadraoconsolida: TStringField
      FieldName = 'consolida'
      Size = 1
    end
    object cdsPadraoidGrupoIni: TIntegerField
      FieldName = 'idGrupoIni'
    end
    object cdsPadraoidGrupoFim: TIntegerField
      FieldName = 'idGrupoFim'
    end
    object cdsPadraoidSubGrupoIni: TIntegerField
      FieldName = 'idSubGrupoIni'
    end
    object cdsPadraoidSubGrupoFim: TIntegerField
      FieldName = 'idSubGrupoFim'
    end
    object cdsPadraosaldozero: TStringField
      FieldName = 'saldozero'
      Size = 1
    end
    object cdsPadraoordem: TStringField
      FieldName = 'ordem'
      Size = 1
    end
    object cdsPadraogrupos: TStringField
      FieldName = 'grupos'
    end
    object cdsPadraosubgrupos: TStringField
      FieldName = 'subgrupos'
    end
    object cdsPadraonfe: TStringField
      FieldName = 'nfe'
    end
    object cdsPadraonfs: TStringField
      FieldName = 'nfs'
    end
    object cdsPadraomov: TStringField
      FieldName = 'mov'
    end
    object cdsPadraoapl: TStringField
      FieldName = 'apl'
    end
    object cdsPadraomaq: TStringField
      FieldName = 'maq'
    end
    object cdsPadraorom: TStringField
      FieldName = 'rom'
    end
    object cdsPadraoaba: TStringField
      FieldName = 'aba'
    end
    object cdsPadraoman: TStringField
      FieldName = 'man'
    end
    object cdsPadraotpDocumento: TStringField
      FieldName = 'tpDocumento'
      Size = 50
    end
    object cdsPadraocom: TStringField
      FieldName = 'com'
      Size = 3
    end
  end
  inherited frxHTMLExport1: TfrxHTMLExport
    Left = 824
  end
  inherited frxTIFFExport1: TfrxTIFFExport
    Left = 856
    Top = 120
  end
  inherited dspLookUp: TDataSetProvider
    Left = 824
    Top = 216
  end
  inherited cdsLookUp: TClientDataSet
    Left = 856
    Top = 216
  end
  inherited frxRTFExport1: TfrxRTFExport
    Left = 904
  end
  inherited frxJPEGExport1: TfrxJPEGExport
    Left = 824
    Top = 112
  end
  inherited cdsEmpresa: TClientDataSet
    CommandText = 'SELECT * FROM vCadEmpresaFiscal'
    Left = 936
    Top = 32
  end
  inherited dsEmpresa: TDataSource
    Left = 968
    Top = 32
  end
  inherited FindEmpresa: TCFind
    Left = 1000
    Top = 32
  end
  object frxRel: TfrxReport
    Version = '5.3.16'
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
    ReportOptions.LastChange = 42540.529138842590000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      '    '
      'end.')
    OnAfterPrint = frxRelAfterPrint
    Left = 856
    Top = 88
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
      PaperSize = 256
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Height = 165.770185800000000000
        Top = 18.897650000000000000
        Width = 793.701300000000000000
        object Line3: TfrxLineView
          Left = 26.456710000000000000
          Top = 141.133890000000000000
          Width = 733.228820000000000000
          Color = clBlack
          Frame.Color = clGray
          Frame.ShadowColor = clGray
          Diagonal = True
        end
        object Picture1: TfrxPictureView
          Left = 22.677180000000000000
          Top = 18.984230000000000000
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
          Left = 625.622450000000000000
          Top = 18.897650000000000000
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
            'Raz'#227'o  de Produtos')
          ParentFont = False
          VAlign = vaCenter
        end
        object Line2: TfrxLineView
          Left = 623.622450000000000000
          Top = 18.984230000000000000
          Height = 120.944960000000000000
          Color = clBlack
          Frame.Color = clGray
          Frame.ShadowColor = clGray
          Frame.Typ = [ftLeft]
        end
        object lblEmpresa: TfrxMemoView
          Left = 188.976500000000000000
          Top = 18.897650000000000000
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
          Top = 40.693003700000000000
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
          Top = 60.370183700000000000
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
        object Memo19: TfrxMemoView
          Left = 189.094620000000000000
          Top = 80.929243700000000000
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
          Top = 100.606423700000000000
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
        Height = 52.692950000000000000
        Top = 291.023810000000000000
        Width = 793.701300000000000000
        Condition = 'frxDataset."idProduto"'
        ExpandDrillDown = True
        ReprintOnNewPage = True
        object Shape2: TfrxShapeView
          Left = 26.456692910000000000
          Top = 33.795300000000000000
          Width = 733.228346460000000000
          Height = 18.897650000000000000
          Fill.BackColor = clInfoBk
          Frame.Color = 15790320
        end
        object Memo4: TfrxMemoView
          Left = 26.456692910000000000
          Top = 35.795300000000000000
          Width = 41.574830000000000000
          Height = 15.118107800000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Data')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          Left = 88.440940000000000000
          Top = 35.795300000000000000
          Width = 53.614100000000000000
          Height = 15.118107800000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Opera'#231#227'o')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          Left = 146.205010000000000000
          Top = 35.795300000000000000
          Width = 40.708720000000000000
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
            'Docto.')
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          Left = 191.061558800000000000
          Top = 35.795300000000000000
          Width = 116.880420800000000000
          Height = 15.118107800000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Origem - Destino')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          Left = 372.693260000000000000
          Top = 35.685046690000000000
          Width = 63.385900000000000000
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
            'Quantidade')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          Left = 445.047620000000000000
          Top = 35.685046690000000000
          Width = 25.590600000000000000
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
            'E/S')
          ParentFont = False
        end
        object Memo31: TfrxMemoView
          Left = 626.929500000000000000
          Top = 35.685046690000000000
          Width = 34.716450000000000000
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
            'Valor')
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo36: TfrxMemoView
          Left = 690.890230000000000000
          Top = 35.685046690000000000
          Width = 68.732220000000000000
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
            'Custo M'#233'dio Di'#225'rio')
          ParentFont = False
        end
        object Shape4: TfrxShapeView
          Left = 26.456692910000000000
          Top = 17.338590000000000000
          Width = 733.228346460000000000
          Height = 15.118120000000000000
          Fill.BackColor = 15593444
          Frame.Color = 15790320
        end
        object Memo2: TfrxMemoView
          Left = 26.456692910000000000
          Top = 17.905690000000000000
          Width = 40.267780000000000000
          Height = 15.118110240000000000
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
            '[frxDataset."idProduto"]')
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo12: TfrxMemoView
          Left = 73.143299620000000000
          Top = 17.874025510000000000
          Width = 342.425294490000000000
          Height = 15.118110240000000000
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
          VAlign = vaBottom
        end
        object Memo30: TfrxMemoView
          Left = 422.551200630000000000
          Top = 17.874025510000000000
          Width = 48.377952760000000000
          Height = 15.118110240000000000
          DataSet = frxDataset
          DataSetName = 'frxDataset'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDataset."descProdMedida"]')
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo90: TfrxMemoView
          Left = 473.574803150000000000
          Top = 17.118120000000000000
          Width = 113.511715830000000000
          Height = 15.118120000000000000
          DataSet = frxDataset
          DataSetName = 'frxDataset'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDataset."descSafra"]')
          ParentFont = False
          VAlign = vaBottom
        end
        object Shape1: TfrxShapeView
          Left = 26.456692910000000000
          Top = 1.000000000000000000
          Width = 733.228346460000000000
          Height = 15.118120000000000000
          Fill.BackColor = 15724527
          Frame.Color = 15790320
        end
        object Memo5: TfrxMemoView
          Left = 26.456692910000000000
          Top = 0.023619609999968790
          Width = 41.574830000000000000
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
            'Produto')
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo8: TfrxMemoView
          Left = 73.519667950000000000
          Width = 191.102350000000000000
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
          VAlign = vaBottom
        end
        object Memo29: TfrxMemoView
          Left = 422.630180000000000000
          Top = 0.023619609999968790
          Width = 48.267780000000000000
          Height = 15.118110240000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Medida')
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo14: TfrxMemoView
          Left = 473.753049600000000000
          Top = 0.023619609999968790
          Width = 52.047310000000000000
          Height = 15.118110240000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Safra')
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo46: TfrxMemoView
          Left = 608.504330000000000000
          Top = 1.220470000000000000
          Width = 108.740260000000000000
          Height = 15.118110240000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.3n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Saldo Anterior')
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo47: TfrxMemoView
          Left = 612.283860000000000000
          Top = 16.897650000000000000
          Width = 98.393595830000000000
          Height = 15.118120000000000000
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
          Memo.UTF8W = (
            '[frxDataset."qtSaldoAnterior"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo11: TfrxMemoView
          Left = 510.236550000000000000
          Top = 36.015770000000000000
          Width = 63.385900000000000000
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
        end
      end
      object Band4: TfrxMasterData
        FillType = ftBrush
        Height = 15.874015750000000000
        Top = 366.614410000000000000
        Width = 793.701300000000000000
        Columns = 1
        ColumnWidth = 200.000000000000000000
        ColumnGap = 20.000000000000000000
        DataSet = frxDataset
        DataSetName = 'frxDataset'
        RowCount = 0
        object Memo9: TfrxMemoView
          Left = 26.456692910000000000
          Top = 0.755905509999991000
          Width = 65.047310000000000000
          Height = 15.118110240000000000
          DataSet = frxDataset
          DataSetName = 'frxDataset'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = 'dd/mm/yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDataset."dtEstoque"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo27: TfrxMemoView
          Left = 195.023585430000000000
          Top = 0.755905509999991000
          Width = 143.321376300000000000
          Height = 15.118110240000000000
          DataField = 'OrigemDest'
          DataSet = frxDataset
          DataSetName = 'frxDataset'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDataset."OrigemDest"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo23: TfrxMemoView
          Left = 344.457020000000000000
          Top = 0.755905510000000000
          Width = 90.834535830000000000
          Height = 15.118110240000000000
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
            '[frxDataset."qtEstoque"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo32: TfrxMemoView
          Left = 580.252320000000000000
          Top = 0.755905510000000000
          Width = 79.495945830000000000
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
            '[frxDataset."vlEstoque"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo35: TfrxMemoView
          Left = 670.653990000000000000
          Top = 0.755905510000000000
          Width = 90.834535830000000000
          Height = 15.118110240000000000
          DataSet = frxDataset
          DataSetName = 'frxDataset'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.4n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDataset."CustoMedio"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo39: TfrxMemoView
          Left = 134.283550000000000000
          Top = 0.755905509999991000
          Width = 49.259705830000000000
          Height = 15.118110240000000000
          DataField = 'nrDocumento'
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
            '[frxDataset."nrDocumento"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo18: TfrxMemoView
          Left = 90.708720000000000000
          Top = 0.755905509999991000
          Width = 45.480175830000000000
          Height = 15.118110240000000000
          DataField = 'tpDocumento'
          DataSet = frxDataset
          DataSetName = 'frxDataset'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDataset."tpDocumento"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo28: TfrxMemoView
          Left = 444.913730000000000000
          Top = 0.755905510000000000
          Width = 19.023465830000000000
          Height = 15.118110240000000000
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
            '[frxDataset."Tipo"]')
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo16: TfrxMemoView
          Left = 468.661720000000000000
          Width = 105.952655830000000000
          Height = 15.118110240000000000
          DataField = 'qtSaldo'
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
            '[frxDataset."qtSaldo"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
      end
      object GroupFooter1: TfrxGroupFooter
        FillType = ftBrush
        Height = 41.574830000000000000
        Top = 404.409710000000000000
        Width = 793.701300000000000000
        object Shape5: TfrxShapeView
          Left = 26.456692913385800000
          Top = 20.677180000000000000
          Width = 733.228346460000000000
          Height = 18.897650000000000000
          Fill.BackColor = clInfoBk
          Frame.Color = 15790320
        end
        object Memo33: TfrxMemoView
          Left = 223.864712800000000000
          Top = 22.677165354330700000
          Width = 41.574830000000000000
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
            'Saldo :')
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo34: TfrxMemoView
          Left = 268.460015900000000000
          Top = 25.590551180000000000
          Width = 89.085120800000000000
          Height = 15.118120000000000000
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
            '[(<frxDataset."qtSaldo">)]')
          ParentFont = False
        end
        object Memo42: TfrxMemoView
          Left = 377.045912800000000000
          Top = 22.677165354330700000
          Width = 68.031540000000000000
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
            'Valor Total :')
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo43: TfrxMemoView
          Left = 447.417595000000000000
          Top = 25.590551180000000000
          Width = 89.196850390000000000
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
          Memo.UTF8W = (
            '[SUM(<frxDataset."vlEstoque">)]')
          ParentFont = False
        end
        object Memo44: TfrxMemoView
          Left = 561.260205000000000000
          Top = 22.677165354330700000
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
            'Custo M'#233'dio Atual :')
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo45: TfrxMemoView
          Left = 670.649209400000000000
          Top = 25.590551180000000000
          Width = 89.196850390000000000
          Height = 15.118120000000000000
          DataSet = frxDataset
          DataSetName = 'frxDataset'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.4n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[(<frxDataset."CustoMedio">)]')
          ParentFont = False
        end
        object Memo38: TfrxMemoView
          Left = 596.976810000000000000
          Top = 1.102350000000000000
          Width = 72.511750000000000000
          Height = 15.118107800000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Qtde. Saidas:')
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo41: TfrxMemoView
          Left = 675.024120000000000000
          Top = 2.755905509999990000
          Width = 80.125984250000000000
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
          Memo.UTF8W = (
            '[SUM(<frxDataset."qtSaidas">,Band4)]')
          ParentFont = False
        end
        object Memo37: TfrxMemoView
          Left = 420.205010000000000000
          Top = 0.779530000000023000
          Width = 80.070810000000000000
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
            'Qtde.Entradas:')
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo40: TfrxMemoView
          Left = 500.472790000000000000
          Top = 2.779530000000020000
          Width = 80.165430000000000000
          Height = 11.338590000000000000
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
            '[SUM(<frxDataset."qtEntradas">,Band4) ]')
          ParentFont = False
        end
      end
      object GroupHeader2: TfrxGroupHeader
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 245.669450000000000000
        Width = 793.701300000000000000
        Condition = 'frxDataset."idProdDeposito"'
        ReprintOnNewPage = True
        object Shape3: TfrxShapeView
          Left = 26.456692913385800000
          Width = 733.228820000000000000
          Height = 22.677180000000000000
          Fill.BackColor = 14408667
          Frame.Color = 15790320
        end
        object Memo6: TfrxMemoView
          Left = 99.031540000000000000
          Top = 4.000000000000000000
          Width = 343.937230000000000000
          Height = 15.118120000000000000
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
            '[frxDataset."idProdDeposito"] - [frxDataset."descProdDeposito"]')
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo10: TfrxMemoView
          Left = 26.456692913385800000
          Top = 3.779529999999990000
          Width = 68.031540000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Dep'#243'sito')
          ParentFont = False
          VAlign = vaBottom
        end
      end
      object GroupFooter2: TfrxGroupFooter
        FillType = ftBrush
        Top = 468.661720000000000000
        Width = 793.701300000000000000
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Height = 66.811070000000000000
        Top = 529.134200000000000000
        Width = 793.701300000000000000
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
          Left = 618.583180000000000000
          Top = 7.181102362204680000
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
          Top = 3.401359999999950000
          Width = 733.228346460000000000
          Color = clBlack
          Frame.Typ = [ftTop]
          Frame.Width = 0.100000000000000000
        end
        object Memo58: TfrxMemoView
          Left = 454.000000000000000000
          Top = 7.181102359999950000
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
  object SQLDataSet1: TSQLDataSet
    CommandText = 'EXEC spRelProdEstoque 1, 1, 329, 329, NULL, NULL, 1, 0, 0, '#39'S'#39
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmPadrao.dbConexao
    Left = 296
    Top = 136
  end
  object SQLQuery1: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'EXEC spRelProdEstoque 1, 1, 329, 329, NULL, NULL, 1, 0, 0, '#39'S'#39)
    SQLConnection = dmPadrao.dbConexao
    Left = 216
    Top = 144
    object SQLQuery1dtEstoque: TSQLTimeStampField
      FieldName = 'dtEstoque'
    end
    object SQLQuery1tpDocumento: TStringField
      FieldName = 'tpDocumento'
      FixedChar = True
      Size = 5
    end
    object SQLQuery1idDocSerie: TStringField
      FieldName = 'idDocSerie'
      FixedChar = True
      Size = 5
    end
    object SQLQuery1nrDocumento: TIntegerField
      FieldName = 'nrDocumento'
    end
    object SQLQuery1OrigemDest: TStringField
      FieldName = 'OrigemDest'
      FixedChar = True
      Size = 50
    end
    object SQLQuery1descSafra: TStringField
      FieldName = 'descSafra'
      FixedChar = True
      Size = 50
    end
    object SQLQuery1descCultura: TStringField
      FieldName = 'descCultura'
      FixedChar = True
      Size = 40
    end
    object SQLQuery1idProduto: TIntegerField
      FieldName = 'idProduto'
    end
    object SQLQuery1descProduto: TStringField
      FieldName = 'descProduto'
      FixedChar = True
      Size = 50
    end
    object SQLQuery1qtEstoque: TFMTBCDField
      FieldName = 'qtEstoque'
      Precision = 10
      Size = 3
    end
    object SQLQuery1Tipo: TStringField
      FieldName = 'Tipo'
      FixedChar = True
      Size = 1
    end
    object SQLQuery1descProdMedida: TStringField
      FieldName = 'descProdMedida'
      FixedChar = True
      Size = 5
    end
    object SQLQuery1vlEstoque: TFMTBCDField
      FieldName = 'vlEstoque'
      Required = True
      Precision = 18
      Size = 4
    end
    object SQLQuery1CustoMedio: TFMTBCDField
      FieldName = 'CustoMedio'
      Required = True
      Precision = 18
      Size = 4
    end
    object SQLQuery1qtSaldo: TFMTBCDField
      FieldName = 'qtSaldo'
      Precision = 10
      Size = 3
    end
    object SQLQuery1descProdDeposito: TStringField
      FieldName = 'descProdDeposito'
      FixedChar = True
      Size = 50
    end
    object SQLQuery1idEmpresa: TIntegerField
      FieldName = 'idEmpresa'
      Required = True
    end
    object SQLQuery1descCadEmpresa: TStringField
      FieldName = 'descCadEmpresa'
      Required = True
      FixedChar = True
      Size = 50
    end
    object SQLQuery1qtEntradas: TFMTBCDField
      FieldName = 'qtEntradas'
      Precision = 10
      Size = 3
    end
    object SQLQuery1qtSaidas: TFMTBCDField
      FieldName = 'qtSaidas'
      Precision = 10
      Size = 3
    end
    object SQLQuery1idProdDeposito: TSmallintField
      FieldName = 'idProdDeposito'
    end
  end
  object cdsGrupo: TClientDataSet
    Aggregates = <>
    CommandText = 'SELECT * FROM ProdGrupo WHERE stProdGrupo = '#39'ATIVO'#39
    Params = <>
    ProviderName = 'dspGrupo'
    Left = 680
    Top = 56
    object cdsGrupoSELECIONADO: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'SELECIONADO'
      Size = 1
    end
    object cdsGrupoidProdGrupo: TSmallintField
      FieldName = 'idProdGrupo'
      Required = True
    end
    object cdsGrupodescProdGrupo: TStringField
      FieldName = 'descProdGrupo'
      Required = True
      Size = 40
    end
    object cdsGrupostProdGrupo: TStringField
      FieldName = 'stProdGrupo'
      Required = True
      Size = 15
    end
  end
  object dsGrupo: TDataSource
    DataSet = cdsGrupo
    Left = 749
    Top = 56
  end
  object dspGrupo: TDataSetProvider
    DataSet = sdsGrupo
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 603
    Top = 56
  end
  object sdsGrupo: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmPadrao.dbConexao
    Left = 536
    Top = 56
  end
  object cdsSubGrupo: TClientDataSet
    Aggregates = <>
    CommandText = 'SELECT * FROM ProdSubGrupo WHERE stProdSubGrupo = '#39'ATIVO'#39
    Params = <>
    ProviderName = 'dspSubGrupo'
    Left = 680
    Top = 112
    object StringField1: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'SELECIONADO'
      Size = 1
    end
    object cdsSubGrupoidProdSubGrupo: TSmallintField
      FieldName = 'idProdSubGrupo'
      Required = True
    end
    object cdsSubGrupodescProdSubGrupo: TStringField
      FieldName = 'descProdSubGrupo'
      Required = True
      Size = 40
    end
    object cdsSubGrupostProdSubGrupo: TStringField
      FieldName = 'stProdSubGrupo'
      Required = True
      Size = 15
    end
  end
  object dsSubGrupo: TDataSource
    DataSet = cdsSubGrupo
    Left = 749
    Top = 112
  end
  object dspSubGrupo: TDataSetProvider
    DataSet = sdsSubGrupo
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 603
    Top = 112
  end
  object sdsSubGrupo: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmPadrao.dbConexao
    Left = 536
    Top = 112
  end
end
