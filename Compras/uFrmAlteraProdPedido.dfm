object FrmAlteraProdPedido: TFrmAlteraProdPedido
  Left = 0
  Top = 0
  Caption = 'Alterar Produto do Pedido'
  ClientHeight = 456
  ClientWidth = 856
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pan1: TPanel
    Left = 0
    Top = 0
    Width = 856
    Height = 415
    Align = alClient
    Color = clWindow
    ParentBackground = False
    TabOrder = 0
    object CGroupBox4: TCGroupBox
      Left = 3
      Top = 3
      Width = 473
      Height = 198
      Caption = 'Produto Anterior'
      TabOrder = 0
      object lbl1: TCLabel
        Left = 7
        Top = 48
        Width = 59
        Height = 13
        Alignment = taRightJustify
        Caption = 'Qtde Pedida'
      end
      object lbl2: TCLabel
        Left = 28
        Top = 23
        Width = 38
        Height = 13
        Alignment = taRightJustify
        Caption = 'Produto'
      end
      object lbl3: TCLabel
        Left = 138
        Top = 48
        Width = 44
        Height = 13
        Alignment = taRightJustify
        Caption = 'Recebida'
      end
      object lbl7: TCLabel
        Left = 369
        Top = 48
        Width = 26
        Height = 13
        Alignment = taRightJustify
        Caption = 'Saldo'
      end
      object lbl17: TCLabel
        Left = 15
        Top = 73
        Width = 51
        Height = 13
        Alignment = taRightJustify
        Caption = 'M'#225'q./Ve'#237'c.'
      end
      object lbl18: TCLabel
        Left = 42
        Top = 98
        Width = 24
        Height = 13
        Alignment = taRightJustify
        Caption = 'Valor'
      end
      object lbl19: TCLabel
        Left = 175
        Top = 98
        Width = 24
        Height = 13
        Alignment = taRightJustify
        Caption = 'Total'
      end
      object lbl20: TCLabel
        Left = 310
        Top = 98
        Width = 29
        Height = 13
        Alignment = taRightJustify
        Caption = 'Marca'
      end
      object lbl21: TCLabel
        Left = 5
        Top = 123
        Width = 61
        Height = 13
        Alignment = taRightJustify
        Caption = 'Dias Entrega'
      end
      object lbl22: TCLabel
        Left = 136
        Top = 123
        Width = 79
        Height = 13
        Alignment = taRightJustify
        Caption = 'Data de Entrega'
      end
      object lbl23: TCLabel
        Left = 311
        Top = 123
        Width = 72
        Height = 13
        Alignment = taRightJustify
        Caption = 'Status Produto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lbl24: TCLabel
        Left = 19
        Top = 148
        Width = 47
        Height = 13
        Alignment = taRightJustify
        Caption = 'Descritivo'
      end
      object lbl26: TCLabel
        Left = 254
        Top = 48
        Width = 41
        Height = 13
        Alignment = taRightJustify
        Caption = 'Retirada'
      end
      object DBEqtPedida: TCDBEdit
        Left = 72
        Top = 45
        Width = 60
        Height = 19
        TabStop = False
        BevelKind = bkTile
        BorderStyle = bsNone
        Color = 14149350
        DataField = 'qtPedida'
        DataSource = dsProdAnterior
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
      object DBEidProduto: TCDBEdit
        Left = 72
        Top = 20
        Width = 53
        Height = 19
        TabStop = False
        BevelKind = bkTile
        BorderStyle = bsNone
        Color = 14149350
        DataField = 'idProduto'
        DataSource = dsPadrao
        ReadOnly = True
        TabOrder = 0
        DecimalControl = True
        KeyMode = kmNormal
      end
      object DBEqtAtendida: TCDBEdit
        Left = 188
        Top = 45
        Width = 60
        Height = 19
        TabStop = False
        BevelKind = bkTile
        BorderStyle = bsNone
        Color = 14149350
        DataField = 'qtAtendida'
        DataSource = dsProdAnterior
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
      object DBEqtSaldo: TCDBEdit
        Left = 401
        Top = 45
        Width = 60
        Height = 19
        TabStop = False
        BevelKind = bkTile
        BorderStyle = bsNone
        Color = 14149350
        DataField = 'qtSaldo'
        DataSource = dsPadrao
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
      object Look1: TCLookUp
        Left = 131
        Top = 20
        Width = 279
        Height = 19
        Alignment = taLeftJustify
        BevelInner = bvSpace
        BevelOuter = bvLowered
        Color = 14149350
        ParentBackground = False
        TabOrder = 4
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
      object Look2: TCLookUp
        Left = 416
        Top = 20
        Width = 45
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
      object DBEidMaquina: TCDBEdit
        Left = 72
        Top = 70
        Width = 53
        Height = 19
        TabStop = False
        BevelKind = bkTile
        BorderStyle = bsNone
        Color = 14149350
        DataField = 'idMaquina'
        DataSource = dsProdAnterior
        ReadOnly = True
        TabOrder = 6
        Find = dmFind.FindMaquina
        AcaoCad = frmPrincipal.actCadCidade
        DecimalControl = True
        KeyMode = kmNormal
      end
      object LookMaquina: TCLookUp
        Left = 131
        Top = 70
        Width = 330
        Height = 19
        Alignment = taLeftJustify
        BevelInner = bvSpace
        BevelOuter = bvLowered
        Color = 14149350
        ParentBackground = False
        TabOrder = 7
        Key.Strings = (
          'idMaquina')
        LookUpKey.Strings = (
          'idMaquina')
        ClientDataSet = cdsLookUp
        DataSource = dsProdAnterior
        ValidaCampoObrigatorio = False
        CampoObrigatorio = True
        LookUpTable = 'Maquina'
        ReturnField = 'descMaquina'
      end
      object DBEvlProduto: TCDBEdit
        Left = 72
        Top = 95
        Width = 94
        Height = 19
        TabStop = False
        BevelKind = bkTile
        BorderStyle = bsNone
        Color = 14149350
        DataField = 'vlProduto'
        DataSource = dsProdAnterior
        ReadOnly = True
        TabOrder = 8
        DecimalControl = True
        KeyMode = kmNormal
      end
      object DBEvlTotal: TCDBEdit
        Left = 205
        Top = 95
        Width = 99
        Height = 19
        TabStop = False
        BevelKind = bkTile
        BorderStyle = bsNone
        Color = 14149350
        DataField = 'vlTotal'
        DataSource = dsProdAnterior
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 9
        DecimalControl = True
        KeyMode = kmNormal
      end
      object DBEmarca: TCDBEdit
        Left = 345
        Top = 95
        Width = 116
        Height = 19
        TabStop = False
        BevelKind = bkTile
        BorderStyle = bsNone
        Color = 14149350
        DataField = 'marca'
        DataSource = dsProdAnterior
        ReadOnly = True
        TabOrder = 10
        DecimalControl = True
        KeyMode = kmNormal
      end
      object DBEqtDiasEntrega: TCDBEdit
        Left = 72
        Top = 120
        Width = 58
        Height = 19
        TabStop = False
        BevelKind = bkTile
        BorderStyle = bsNone
        Color = 14149350
        DataField = 'qtDiasEntrega'
        DataSource = dsProdAnterior
        ReadOnly = True
        TabOrder = 11
        DecimalControl = True
        KeyMode = kmNormal
      end
      object DBEdtEntrega: TCDBEdit
        Left = 221
        Top = 120
        Width = 84
        Height = 19
        TabStop = False
        BevelKind = bkTile
        BorderStyle = bsNone
        Color = 14149350
        DataField = 'dtEntrega'
        DataSource = dsProdAnterior
        MaxLength = 10
        ReadOnly = True
        TabOrder = 12
        DecimalControl = True
        KeyMode = kmDate
      end
      object DBEstPedidoProd: TCDBEdit
        Left = 389
        Top = 120
        Width = 72
        Height = 19
        TabStop = False
        BevelKind = bkTile
        BorderStyle = bsNone
        Color = 14149350
        DataField = 'stPedidoProd'
        DataSource = dsProdAnterior
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 13
        DecimalControl = True
        KeyMode = kmUSUpper
      end
      object DBMobsProduto: TCDBMemo
        Left = 72
        Top = 145
        Width = 389
        Height = 35
        TabStop = False
        BevelKind = bkTile
        BorderStyle = bsNone
        Color = 14149350
        DataField = 'obsProduto'
        DataSource = dsProdAnterior
        ReadOnly = True
        ScrollBars = ssVertical
        TabOrder = 14
        KeyMemo = kmmNormal
      end
      object DBEqtRetirada: TCDBEdit
        Left = 301
        Top = 45
        Width = 60
        Height = 19
        TabStop = False
        BevelKind = bkTile
        BorderStyle = bsNone
        Color = 14149350
        DataField = 'qtRetirada'
        DataSource = dsProdAnterior
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 15
        DecimalControl = True
        KeyMode = kmNormal
      end
    end
    object CGroupBox1: TCGroupBox
      Left = 3
      Top = 205
      Width = 473
      Height = 196
      Caption = 'Novo Produto'
      TabOrder = 1
      object lbl10: TCLabel
        Left = 7
        Top = 48
        Width = 59
        Height = 13
        Alignment = taRightJustify
        Caption = 'Qtde Pedida'
      end
      object lbl11: TCLabel
        Left = 28
        Top = 23
        Width = 38
        Height = 13
        Alignment = taRightJustify
        Caption = 'Produto'
      end
      object lbl4: TCLabel
        Left = 142
        Top = 48
        Width = 44
        Height = 13
        Alignment = taRightJustify
        Caption = 'Recebida'
      end
      object lbl5: TCLabel
        Left = 371
        Top = 48
        Width = 26
        Height = 13
        Alignment = taRightJustify
        Caption = 'Saldo'
      end
      object lbl6: TCLabel
        Left = 15
        Top = 73
        Width = 51
        Height = 13
        Alignment = taRightJustify
        Caption = 'M'#225'q./Ve'#237'c.'
      end
      object lbl8: TCLabel
        Left = 42
        Top = 98
        Width = 24
        Height = 13
        Alignment = taRightJustify
        Caption = 'Valor'
      end
      object lbl9: TCLabel
        Left = 175
        Top = 98
        Width = 24
        Height = 13
        Alignment = taRightJustify
        Caption = 'Total'
      end
      object lbl12: TCLabel
        Left = 310
        Top = 98
        Width = 29
        Height = 13
        Alignment = taRightJustify
        Caption = 'Marca'
      end
      object lbl13: TCLabel
        Left = 5
        Top = 123
        Width = 61
        Height = 13
        Alignment = taRightJustify
        Caption = 'Dias Entrega'
      end
      object lbl14: TCLabel
        Left = 136
        Top = 123
        Width = 79
        Height = 13
        Alignment = taRightJustify
        Caption = 'Data de Entrega'
      end
      object lbl15: TCLabel
        Left = 311
        Top = 123
        Width = 72
        Height = 13
        Alignment = taRightJustify
        Caption = 'Status Produto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lbl16: TCLabel
        Left = 19
        Top = 148
        Width = 47
        Height = 13
        Alignment = taRightJustify
        Caption = 'Descritivo'
      end
      object lbl25: TCLabel
        Left = 258
        Top = 48
        Width = 41
        Height = 13
        Alignment = taRightJustify
        Caption = 'Retirada'
      end
      object DBEqtPedida2: TCDBEdit
        Left = 72
        Top = 45
        Width = 60
        Height = 19
        BevelKind = bkTile
        BorderStyle = bsNone
        DataField = 'qtPedida'
        DataSource = dsProdNovo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        DecimalControl = True
        KeyMode = kmNormal
      end
      object DBEidProduto2: TCDBEdit
        Left = 72
        Top = 20
        Width = 53
        Height = 19
        BevelKind = bkTile
        BorderStyle = bsNone
        DataField = 'idProduto2'
        DataSource = dsPadrao
        TabOrder = 0
        OnExit = DBEidProduto2Exit
        Find = dmFind.FindProduto
        DecimalControl = True
        KeyMode = kmNormal
      end
      object LookProduto: TCLookUp
        Left = 131
        Top = 20
        Width = 279
        Height = 19
        Alignment = taLeftJustify
        BevelInner = bvSpace
        BevelOuter = bvLowered
        Color = 14149350
        ParentBackground = False
        TabOrder = 11
        Key.Strings = (
          'idProduto2')
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
        Left = 416
        Top = 20
        Width = 45
        Height = 19
        Alignment = taLeftJustify
        BevelInner = bvSpace
        BevelOuter = bvLowered
        Color = 14149350
        ParentBackground = False
        TabOrder = 12
        Key.Strings = (
          'idProduto2')
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
      object DBEqtAtendida2: TCDBEdit
        Left = 192
        Top = 45
        Width = 60
        Height = 19
        BevelKind = bkTile
        BorderStyle = bsNone
        DataField = 'qtAtendida'
        DataSource = dsProdNovo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
        DecimalControl = True
        KeyMode = kmNormal
      end
      object DBEqtSaldo2: TCDBEdit
        Left = 401
        Top = 45
        Width = 60
        Height = 19
        TabStop = False
        BevelKind = bkTile
        BorderStyle = bsNone
        Color = 14149350
        DataField = 'qtSaldo2'
        DataSource = dsPadrao
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 13
        DecimalControl = True
        KeyMode = kmNormal
      end
      object DBEidMaquina2: TCDBEdit
        Left = 72
        Top = 70
        Width = 53
        Height = 19
        BevelKind = bkTile
        BorderStyle = bsNone
        DataField = 'idMaquina'
        DataSource = dsProdNovo
        TabOrder = 4
        Find = dmFind.FindMaquina
        AcaoCad = frmPrincipal.actCadCidade
        DecimalControl = True
        KeyMode = kmNormal
      end
      object LookMaquina2: TCLookUp
        Left = 131
        Top = 70
        Width = 330
        Height = 19
        Alignment = taLeftJustify
        BevelInner = bvSpace
        BevelOuter = bvLowered
        Color = 14149350
        ParentBackground = False
        TabOrder = 14
        Key.Strings = (
          'idMaquina')
        LookUpKey.Strings = (
          'idMaquina')
        ClientDataSet = cdsLookUp
        DataSource = dsProdNovo
        ValidaCampoObrigatorio = False
        CampoObrigatorio = True
        LookUpTable = 'Maquina'
        ReturnField = 'descMaquina'
      end
      object DBEvlProduto2: TCDBEdit
        Left = 72
        Top = 95
        Width = 94
        Height = 19
        BevelKind = bkTile
        BorderStyle = bsNone
        DataField = 'vlProduto'
        DataSource = dsProdNovo
        TabOrder = 5
        OnExit = DBEvlProduto2Exit
        DecimalControl = True
        KeyMode = kmNormal
      end
      object DBEvlTotal2: TCDBEdit
        Left = 205
        Top = 95
        Width = 99
        Height = 19
        TabStop = False
        BevelKind = bkTile
        BorderStyle = bsNone
        Color = 14149350
        DataField = 'vlTotal'
        DataSource = dsProdNovo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 6
        DecimalControl = True
        KeyMode = kmNormal
      end
      object DBEmarca2: TCDBEdit
        Left = 345
        Top = 95
        Width = 116
        Height = 19
        BevelKind = bkTile
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'marca'
        DataSource = dsProdNovo
        TabOrder = 7
        DecimalControl = True
        KeyMode = kmNormal
      end
      object DBEqtDiasEntrega2: TCDBEdit
        Left = 72
        Top = 120
        Width = 58
        Height = 19
        BevelKind = bkTile
        BorderStyle = bsNone
        DataField = 'qtDiasEntrega'
        DataSource = dsProdNovo
        TabOrder = 8
        OnExit = DBEqtDiasEntrega2Exit
        DecimalControl = True
        KeyMode = kmNormal
      end
      object DBEdtEntrega2: TCDBEdit
        Left = 221
        Top = 120
        Width = 84
        Height = 19
        BevelKind = bkTile
        BorderStyle = bsNone
        DataField = 'dtEntrega'
        DataSource = dsProdNovo
        MaxLength = 10
        TabOrder = 9
        OnExit = DBEdtEntrega2Exit
        DecimalControl = True
        KeyMode = kmDate
      end
      object DBEstPedidoProd2: TCDBEdit
        Left = 389
        Top = 120
        Width = 72
        Height = 19
        TabStop = False
        BevelKind = bkTile
        BorderStyle = bsNone
        Color = 14149350
        DataField = 'stPedidoProd'
        DataSource = dsProdNovo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 15
        DecimalControl = True
        KeyMode = kmUSUpper
      end
      object DBMobsProduto2: TCDBMemo
        Left = 72
        Top = 145
        Width = 389
        Height = 35
        BevelKind = bkTile
        BorderStyle = bsNone
        DataField = 'obsProduto'
        DataSource = dsProdNovo
        ScrollBars = ssVertical
        TabOrder = 10
        OnKeyPress = DBMobsProduto2KeyPress
        KeyMemo = kmmNormal
      end
      object DBEqtRetirada2: TCDBEdit
        Left = 305
        Top = 45
        Width = 60
        Height = 19
        BevelKind = bkTile
        BorderStyle = bsNone
        DataField = 'qtRetirada'
        DataSource = dsProdNovo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 3
        OnExit = DBEqtRetirada2Exit
        DecimalControl = True
        KeyMode = kmNormal
      end
    end
  end
  object CPanelGradient1: TCPanelGradient
    Left = 0
    Top = 415
    Width = 856
    Height = 41
    Align = alBottom
    Caption = 'CPanelGradient1'
    TabOrder = 1
    CaptionNo = 0
    HintNo = 0
    BackgroundGradientColor = 13099746
    TextColor = clBlack
    GradientColor = clBlack
    RegularButtonColor = clBlack
    SelectedButtonColor = clBlack
    ButtonOptions = []
    object BtnAlterar: TCBitBtn
      Left = 10
      Top = 6
      Width = 75
      Height = 25
      Caption = 'Alterar'
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000008484
        84FF848484FF848484FF848484FF848484FF848484FF848484FF848484FF8484
        84FF848484FF848484FF00000000000000000000000000000000000000008484
        84FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFF848484FF00000000000000000000000000000000000000008484
        84FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFF848484FF00000000000000000000000000000000000000008484
        84FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFF848484FF848484FF848484FF848484FF00000000000000008484
        84FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFF848484FFFFFFFFFFFFFFFFFF848484FF00000000000000008484
        84FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFF848484FFFFFFFFFFFFFFFFFF848484FF00000000000000008484
        84FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFF848484FFFFFFFFFFFFFFFFFF848484FF00000000000000008484
        84FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFF848484FFFFFFFFFFFFFFFFFF848484FF00000000000000008484
        84FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFF848484FFFFFFFFFFFFFFFFFF848484FF00000000000000008484
        84FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF848484FF8484
        84FF848484FF848484FFFFFFFFFFFFFFFFFF848484FF00000000000000008484
        84FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF848484FFFFFF
        FFFF9D9D9DFFE6E6E6FFFFFFFFFFFFFFFFFF848484FF00000000000000008484
        84FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF848484FF9D9D
        9DFFE6E6E6FFFFFFFFFFFFFFFFFFFFFFFFFF848484FF00000000000000008484
        84FF848484FF848484FF848484FF848484FF848484FF848484FF848484FFE6E6
        E6FFFFFFFFFF848484FF848484FF848484FF848484FF00000000000000000000
        00000000000000000000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFF848484FFFAFAFAFA7B7B7BDD1A1A1A3300000000000000000000
        00000000000000000000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFF848484FF7B7B7BDD1A1A1A330000000000000000000000000000
        00000000000000000000848484FF848484FF848484FF848484FF848484FF8484
        84FF838383FE848484FF1A1A1A33000000000000000000000000}
      TabOrder = 0
      WordWrap = True
      OnClick = BtnAlterarClick
    end
    object BtnNovo: TCBitBtn
      Left = 112
      Top = 6
      Width = 75
      Height = 25
      Caption = 'Novo'
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000848484FF848484FF848484FF848484FF848484FF848484FF848484FF8484
        84FF848484FFFFFFFFFFB8824DFFB8824DFF0000000000000000000000000000
        0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFB8824DFFB8824DFF0000000000000000000000000000
        0000848484FFFFFFFFFF97A776FF97A776FF97A776FF97A776FF97A776FFFFFF
        FFFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFF000000000000
        0000848484FFFFFFFFFF97A776FF97A776FF97A776FF97A776FF97A776FFFFFF
        FFFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFF000000000000
        0000848484FFFFFFFFFF97A776FF97A776FF97A776FF97A776FF97A776FFFFFF
        FFFFFFFFFFFFFFFFFFFFB8824DFFB8824DFF0000000000000000000000000000
        0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFB8824DFFB8824DFF0000000000000000000000000000
        0000848484FFFFFFFFFFD4B494FFD4B494FFD4B494FFD4B494FFD4B494FFD4B4
        94FFD4B494FFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
        0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF848484FF0000000000000000000000000000
        0000848484FFFFFFFFFFD4B494FFD4B494FFD4B494FFD4B494FFD4B494FFD4B4
        94FFD4B494FFD4B494FFFFFFFFFF848484FF0000000000000000000000000000
        0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF848484FF0000000000000000000000000000
        0000848484FFFFFFFFFFD4B494FFD4B494FFD4B494FFD4B494FFD4B494FFD4B4
        94FFD4B494FFD4B494FFFFFFFFFF848484FF0000000000000000000000000000
        0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF848484FF0000000000000000000000000000
        0000848484FFFFFFFFFFD4B494FFD4B494FFD4B494FFD4B494FFD4B494FFD4B4
        94FFD4B494FFD4B494FFFFFFFFFF848484FF0000000000000000000000000000
        0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF848484FF0000000000000000000000000000
        0000848484FF848484FF848484FF848484FF848484FF848484FF848484FF8484
        84FF848484FF848484FF848484FF848484FF0000000000000000}
      TabOrder = 1
      WordWrap = True
      OnClick = BtnNovoClick
    end
    object BtnFechar: TCBitBtn
      Left = 389
      Top = 6
      Width = 75
      Height = 25
      Caption = '&Fechar'
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000FDFDFF00CED7
        EF00AEB8E000AEB8E000B0B9E100B0B9E100B0B9E100AFBAE200ADB9E300ADB9
        E300ACB7E300ABB6E300ABB6E300AAB5E100CDD6ED00FDFDFF00CED8F3003F5B
        C9001234BA001638BD001C3CBC001C3CBC00183BBE00183BBF001439C1001137
        C3000B33C2000831C200022DC2000029BC003752B900CDD6ED00AEBBF100143B
        D700214ADF002B50DE003255DE002F53DE002F54DF002B53DF00244FE0001F4F
        E400164AE3000F45E500073CE2000236DC000029BC00AAB5E100B0BEF4001D44
        DF002D53E200365AE3004161E4004B6AE6008AA0F000ADC0F600A9BBF4007B97
        F0002A5BE900144CE9000B42E600063CE200032DC200ABB6E300B2BFF400264B
        E000395EE5004465E5007E93ED00DDE3FA00D8DFF900B3C2F500B3C3F600D5DF
        FB00D2DDFA00537EEF001049E9000A41E500052FC300ABB7E300B4C1F4003054
        E1004463E5005975E800DDE3FA00BEC9F600637EEA004368E7003E67E8004D76
        EC00B9C9F700D0DAFA002154E8001146E3000C35C400ADB8E300B7C4F5003659
        E3004C69E5009AABF100D6DCF900637DE9004A69E600C1CDF700BBC9F7002E5C
        E800466EEA00D2DBFA007593EF00194CE4001338C200AEB9E300BAC6F5004061
        E5005370E700C1CBF700B3BEF500516EE7004968E600C1CBF600BBC8F6002F57
        E3002957E700A9BAF500A3B7F4001E4DE100193CC000B0BBE300BCC7F5004967
        E5005B76E800C4CDF700B3BEF500516EE7004766E500C1CBF600BBC7F6002F55
        E2002954E500A8B8F300A7B9F400254DDE001D3EBF00B1BBE300BEC9F600516E
        E600627CE900A7B5F200D6DDF900637DE9004766E500C1CBF600BAC6F5002F54
        E2004367E700D0D9F9007E95EE002B4FDE002141C000B2BCE200BFCAF6005974
        E7006D86EA00758CEB00E0E8FC00B9C4F5005F79E8004563E5003C5EE3004B6B
        E600B4C2F400D7DEFA003B5DE4002D52DE002443C000B3BCE200C2CCF600647E
        E900778FEC006D86EA0091A3EF00E6EAFB00D3DAF900ABB9F400A9B8F300CFD8
        F800D9E2FA006A84EA003055E2002F53DE002443C000B3BCE200C4CEF7007089
        EB008DA1EF007E94ED006C86EA00728AEB00A6B4F300C5CEF700C3CDF60098A9
        F0005772E7004262E4003B5DE3003254DE001E3EBE00B1BBE200C7D1F7007D93
        ED009CADF100899DEF00788FEC006E86EA006982EA00647EE900627BE9005D77
        E8005672E8004D6BE6004161E4003255DE001D3DBE00B0BAE100DAE3FA00869B
        EE00788FEC006B84EA005E79E8005974E7005470E700506DE6004E6BE6004867
        E5004464E5003E5FE4003055E200264BDB004963CD00D0D9F000FEFEFF00DAE2
        FA00C7D0F700C5CEF700C1CCF600BFCBF600BECAF600BECAF600BDC9F600BBC7
        F500BAC6F500BAC6F500B6C3F500B4C0F200D1DBF500FEFEFF00}
      TabOrder = 2
      OnClick = BtnFecharClick
    end
  end
  object dspLookUp: TDataSetProvider
    DataSet = dmPadrao.sdsLookup
    Options = [poPropogateChanges, poAllowCommandText]
    Left = 736
    Top = 16
  end
  object cdsLookUp: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspLookUp'
    Left = 768
    Top = 16
  end
  object dsProdAnterior: TDataSource
    DataSet = cdsProdAnterior
    Left = 768
    Top = 136
  end
  object cdsProdAnterior: TClientDataSet
    Aggregates = <>
    CommandText = 'SELECT * FROM PedidoCompraProd WHERE 1=2'
    Params = <>
    ProviderName = 'dspProdAnterior'
    Left = 728
    Top = 136
    object cdsProdAnterioridEmpresa: TIntegerField
      FieldName = 'idEmpresa'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsProdAnterioridCadEmpresa: TSmallintField
      FieldName = 'idCadEmpresa'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsProdAnterioridPedidoCompra: TIntegerField
      FieldName = 'idPedidoCompra'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsProdAnterioridPedidoProd: TSmallintField
      FieldName = 'idPedidoProd'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsProdAnterioridProduto: TIntegerField
      FieldName = 'idProduto'
      Required = True
    end
    object cdsProdAnterioridMaquina: TIntegerField
      FieldName = 'idMaquina'
    end
    object cdsProdAnteriorqtPedida: TFMTBCDField
      FieldName = 'qtPedida'
      Required = True
      DisplayFormat = '#,0.000'
      Precision = 18
      Size = 3
    end
    object cdsProdAnteriorqtAtendida: TFMTBCDField
      FieldName = 'qtAtendida'
      Required = True
      DisplayFormat = '#,0.000'
      Precision = 18
      Size = 3
    end
    object cdsProdAnteriorvlProduto: TFMTBCDField
      FieldName = 'vlProduto'
      DisplayFormat = '#,0.00'
      Precision = 18
      Size = 4
    end
    object cdsProdAnteriorvlTotal: TFMTBCDField
      FieldName = 'vlTotal'
      DisplayFormat = '#,0.00'
      Precision = 18
      Size = 2
    end
    object cdsProdAnteriorobsProduto: TStringField
      FieldName = 'obsProduto'
      Size = 250
    end
    object cdsProdAnteriormarca: TStringField
      FieldName = 'marca'
      Size = 40
    end
    object cdsProdAnteriorqtDiasEntrega: TSmallintField
      FieldName = 'qtDiasEntrega'
    end
    object cdsProdAnteriordtEntrega: TSQLTimeStampField
      FieldName = 'dtEntrega'
    end
    object cdsProdAnteriorstPedidoProd: TStringField
      FieldName = 'stPedidoProd'
      Size = 15
    end
    object cdsProdAnteriorqtRetirada: TFMTBCDField
      FieldName = 'qtRetirada'
      DisplayFormat = '#,0.000'
      Precision = 18
      Size = 3
    end
  end
  object dspProdAnterior: TDataSetProvider
    DataSet = sdsProdAnterior
    Options = [poAllowMultiRecordUpdates, poPropogateChanges, poAllowCommandText, poUseQuoteChar]
    Left = 688
    Top = 136
  end
  object sdsProdAnterior: TSQLDataSet
    CommandText = 'SELECT * FROM PedidoCompraProd WHERE 1=2'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmPadrao.dbConexao
    Left = 648
    Top = 136
  end
  object dsPadrao: TDataSource
    DataSet = cdsPadrao
    Left = 768
    Top = 80
  end
  object cdsPadrao: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 728
    Top = 80
    object cdsPadraoidProduto: TIntegerField
      FieldName = 'idProduto'
    end
    object cdsPadraoidProduto2: TIntegerField
      FieldName = 'idProduto2'
    end
    object cdsPadraoqtSaldo: TFMTBCDField
      FieldName = 'qtSaldo'
      DisplayFormat = '#,0.000'
    end
    object cdsPadraoqtSaldo2: TFMTBCDField
      FieldName = 'qtSaldo2'
      DisplayFormat = '#,0.000'
    end
  end
  object dsProdNovo: TDataSource
    DataSet = cdsProdNovo
    Left = 768
    Top = 192
  end
  object cdsProdNovo: TClientDataSet
    Aggregates = <>
    CommandText = 'SELECT * FROM PedidoCompraProd WHERE 1=2'
    Params = <>
    ProviderName = 'dspProdNovo'
    Left = 728
    Top = 192
    object cdsProdNovoidEmpresa: TIntegerField
      FieldName = 'idEmpresa'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsProdNovoidCadEmpresa: TSmallintField
      FieldName = 'idCadEmpresa'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsProdNovoidPedidoCompra: TIntegerField
      FieldName = 'idPedidoCompra'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsProdNovoidPedidoProd: TSmallintField
      FieldName = 'idPedidoProd'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsProdNovoidProduto: TIntegerField
      FieldName = 'idProduto'
      Required = True
    end
    object cdsProdNovoidMaquina: TIntegerField
      FieldName = 'idMaquina'
    end
    object cdsProdNovoqtPedida: TFMTBCDField
      FieldName = 'qtPedida'
      Required = True
      DisplayFormat = '#,0.000'
      Precision = 18
      Size = 3
    end
    object cdsProdNovoqtAtendida: TFMTBCDField
      FieldName = 'qtAtendida'
      Required = True
      DisplayFormat = '#,0.000'
      Precision = 18
      Size = 3
    end
    object cdsProdNovovlProduto: TFMTBCDField
      FieldName = 'vlProduto'
      DisplayFormat = '#,0.00'
      Precision = 18
      Size = 4
    end
    object cdsProdNovovlTotal: TFMTBCDField
      FieldName = 'vlTotal'
      DisplayFormat = '#,0.00'
      Precision = 18
      Size = 2
    end
    object cdsProdNovoobsProduto: TStringField
      FieldName = 'obsProduto'
      Size = 250
    end
    object cdsProdNovomarca: TStringField
      FieldName = 'marca'
      Size = 40
    end
    object cdsProdNovoqtDiasEntrega: TSmallintField
      FieldName = 'qtDiasEntrega'
    end
    object cdsProdNovodtEntrega: TSQLTimeStampField
      FieldName = 'dtEntrega'
    end
    object cdsProdNovostPedidoProd: TStringField
      FieldName = 'stPedidoProd'
      Size = 15
    end
    object cdsProdNovoqtRetirada: TFMTBCDField
      FieldName = 'qtRetirada'
      DisplayFormat = '#,0.000'
      Precision = 18
      Size = 3
    end
  end
  object dspProdNovo: TDataSetProvider
    DataSet = sdsProdNovo
    Options = [poAllowMultiRecordUpdates, poPropogateChanges, poAllowCommandText, poUseQuoteChar]
    Left = 688
    Top = 192
  end
  object sdsProdNovo: TSQLDataSet
    CommandText = 'SELECT * FROM PedidoCompraProd WHERE 1=2'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmPadrao.dbConexao
    Left = 648
    Top = 192
  end
end
