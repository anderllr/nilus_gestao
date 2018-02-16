inherited FrmPesAplicacao: TFrmPesAplicacao
  Caption = 'Pesquisa de Aplica'#231#245'es'
  ClientHeight = 482
  ClientWidth = 810
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
  ExplicitWidth = 826
  ExplicitHeight = 521
  PixelsPerInch = 96
  TextHeight = 13
  inherited GrupoGrid: TCGroupBox
    Top = 145
    Width = 810
    Height = 337
    ExplicitTop = 229
    ExplicitWidth = 902
    ExplicitHeight = 253
    inherited DBGrid: TCDBGrid
      Width = 806
      Height = 146
      Align = alTop
      Columns = <
        item
          Expanded = False
          FieldName = 'idEmpresa'
          Title.Caption = 'Emp.'
          Width = 30
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'idAplicacao'
          Title.Caption = 'Aplica'#231#227'o'
          Width = 55
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'dtAplicacao'
          Title.Caption = 'Data'
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'idSafra'
          Title.Caption = 'Safra'
          Width = 30
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'descSafra'
          Title.Caption = 'Descri'#231#227'o Safra'
          Width = 120
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'idResultado'
          Title.Caption = 'Res./Tal.'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'descResultado'
          Title.Caption = 'Descri'#231#227'o do Resultado/Talh'#227'o'
          Width = 160
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'idProdDeposito'
          Title.Caption = 'Dep.'
          Width = 35
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'descProdDeposito'
          Title.Caption = 'Descri'#231#227'o Dep'#243'sito'
          Width = 120
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'stAplicacao'
          Title.Caption = 'Status'
          Width = 85
          Visible = True
        end>
    end
    object CPanelGradient2: TCPanelGradient
      Left = 2
      Top = 161
      Width = 806
      Height = 30
      Align = alTop
      BevelOuter = bvNone
      Caption = 'PanBotoes'
      TabOrder = 1
      CaptionNo = 0
      HintNo = 0
      BackgroundGradientColor = 12306636
      BackgroundGradientDirection = gdVertical
      TextColor = clBlack
      GradientColor = clBlack
      RegularButtonColor = clBlack
      SelectedButtonColor = clBlack
      ButtonOptions = []
      ExplicitLeft = 3
      ExplicitTop = 207
      object CLabel7: TCLabel
        Left = 16
        Top = 6
        Width = 154
        Height = 16
        Caption = 'Produtos da Aplica'#231#227'o: '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblAplicacao: TCLabel
        Left = 171
        Top = 5
        Width = 5
        Height = 19
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object DBGridProd: TCDBGrid
      Left = 2
      Top = 191
      Width = 806
      Height = 144
      Align = alClient
      DataSource = dsGrid2
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection]
      TabOrder = 2
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnDblClick = DBGridDblClick
      OnKeyDown = DBGridKeyDown
      UtilizaOrdenar = False
      Columns = <
        item
          Expanded = False
          FieldName = 'idProduto'
          Title.Caption = 'Produto'
          Width = 60
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'descProduto'
          Title.Caption = 'Descri'#231#227'o do Produto'
          Width = 250
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'qtAplicacao'
          Title.Caption = 'Qtde.'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'vlAplicacao'
          Title.Caption = 'Valor'
          Width = 100
          Visible = True
        end>
    end
  end
  inherited PanBotoes: TCPanelGradient
    Top = 109
    Width = 810
    Height = 36
    BackgroundGradientColor = 12306636
    ExplicitTop = 109
    ExplicitWidth = 902
    ExplicitHeight = 36
    inherited BtnExecutar: TCBitBtn
      Left = 19
      Top = 6
      ExplicitLeft = 19
      ExplicitTop = 6
    end
    inherited BtnFechar: TCBitBtn
      Left = 644
      Top = 6
      ExplicitLeft = 644
      ExplicitTop = 6
    end
    object DBCKconsolidaemp: TCDBCheckBox
      Left = 112
      Top = 9
      Width = 116
      Height = 17
      Caption = 'Consolida Empresa?'
      Color = 14212576
      DataField = 'consolidaemp'
      DataSource = dsPadrao
      ParentColor = False
      TabOrder = 2
      ValueChecked = 'S'
      ValueUnchecked = 'N'
    end
  end
  inherited PanTopo: TCPanelGradient
    Width = 810
    Height = 109
    ExplicitWidth = 902
    ExplicitHeight = 109
    object CLabel4: TCLabel [0]
      Left = 19
      Top = 41
      Width = 60
      Height = 13
      Alignment = taRightJustify
      Caption = 'Aplica'#231#227'o de'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object CLabel3: TCLabel [1]
      Left = 161
      Top = 41
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
    object CLabel2: TCLabel [2]
      Left = 280
      Top = 41
      Width = 47
      Height = 13
      Alignment = taRightJustify
      Caption = 'Talh'#227'o de'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object CLabel1: TCLabel [3]
      Left = 409
      Top = 41
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
    object CLabel5: TCLabel [4]
      Left = 507
      Top = 41
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
    object CLabel6: TCLabel [5]
      Left = 627
      Top = 41
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
    object CLabel8: TCLabel [6]
      Left = 9
      Top = 63
      Width = 70
      Height = 13
      Alignment = taRightJustify
      Caption = 'Result./Talh'#227'o'
    end
    object CLabel23: TCLabel [7]
      Left = 409
      Top = 63
      Width = 26
      Height = 13
      Alignment = taRightJustify
      Caption = 'Safra'
    end
    object CLabel10: TCLabel [8]
      Left = 37
      Top = 85
      Width = 42
      Height = 13
      Alignment = taRightJustify
      Caption = 'Dep'#243'sito'
    end
    object CLabel9: TCLabel [9]
      Left = 399
      Top = 85
      Width = 38
      Height = 13
      Alignment = taRightJustify
      Caption = 'Produto'
    end
    inherited PanEmpresa: TCPanelGradient
      Width = 808
      Height = 28
      ExplicitWidth = 900
      ExplicitHeight = 28
      inherited lblCNPJ: TCLabel
        Left = 538
        Top = 8
        ExplicitLeft = 538
        ExplicitTop = 8
      end
      inherited lookidCnpjCpf: TCLookUp
        Left = 592
        Top = 5
        ExplicitLeft = 592
        ExplicitTop = 5
      end
    end
    object DBEidAplicacaoIni: TCDBEdit
      Left = 85
      Top = 38
      Width = 70
      Height = 19
      BevelKind = bkTile
      BorderStyle = bsNone
      DataField = 'idAplicacaoIni'
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
    object DBEidAplicacaoFim: TCDBEdit
      Left = 183
      Top = 38
      Width = 70
      Height = 19
      BevelKind = bkTile
      BorderStyle = bsNone
      DataField = 'idAplicacaoFim'
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
    object DBEidResultadoIni: TCDBEdit
      Left = 333
      Top = 38
      Width = 70
      Height = 19
      BevelKind = bkTile
      BorderStyle = bsNone
      DataField = 'idResultadoIni'
      DataSource = dsPadrao
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      DecimalControl = True
      KeyMode = kmNormal
    end
    object DBEidResultadoFim: TCDBEdit
      Left = 431
      Top = 38
      Width = 70
      Height = 19
      BevelKind = bkTile
      BorderStyle = bsNone
      DataField = 'idResultadoFim'
      DataSource = dsPadrao
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      DecimalControl = True
      KeyMode = kmNormal
    end
    object DBEdtInicial: TCDBEdit
      Left = 551
      Top = 38
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
      TabOrder = 5
      DecimalControl = True
      KeyMode = kmDate
    end
    object DBEdtFinal: TCDBEdit
      Left = 649
      Top = 38
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
      TabOrder = 6
      DecimalControl = True
      KeyMode = kmDate
    end
    object DBEidResultado: TCDBEdit
      Left = 85
      Top = 60
      Width = 48
      Height = 19
      BevelKind = bkTile
      BorderStyle = bsNone
      DataField = 'idResultado'
      DataSource = dsPadrao
      TabOrder = 7
      Find = dmFind.FindResultadoTalhao
      AcaoCad = frmPrincipal.actCadResultado
      DecimalControl = True
      KeyMode = kmNormal
    end
    object LookResultado: TCLookUp
      Left = 139
      Top = 60
      Width = 264
      Height = 19
      Alignment = taLeftJustify
      BevelInner = bvSpace
      BevelOuter = bvLowered
      Color = 14149350
      ParentBackground = False
      TabOrder = 8
      Key.Strings = (
        'idSafra'
        'idResultado')
      LookUpKey.Strings = (
        'idResultado')
      AlternateSQL.Strings = (
        
          'SELECT descResultado FROM Resultado WHERE idEmpresa = [DBEidEmpr' +
          'esa] AND idResultado IN (SELECT idResultado FROM SafraTalhao WHE' +
          'RE idEmpresa = [DBEidEmpresa] AND idSafra = ? ) AND idResultado ' +
          '= ?')
      ClientDataSet = cdsLookUp
      DataSource = dsPadrao
      ValidaCampoObrigatorio = True
      CampoObrigatorio = True
      LookUpTable = 'Resultado'
      ReturnField = 'descResultado'
    end
    object DBEidSafra: TCDBEdit
      Left = 441
      Top = 60
      Width = 48
      Height = 19
      BevelKind = bkTile
      BorderStyle = bsNone
      DataField = 'idSafra'
      DataSource = dsPadrao
      TabOrder = 9
      Find = dmFind.FindSafra
      AcaoCad = frmPrincipal.actCadSafra
      DecimalControl = True
      KeyMode = kmNormal
    end
    object LookSafra: TCLookUp
      Left = 495
      Top = 60
      Width = 224
      Height = 19
      Alignment = taLeftJustify
      BevelInner = bvSpace
      BevelOuter = bvLowered
      Color = 14149350
      ParentBackground = False
      TabOrder = 10
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
    object DBEidProdDeposito: TCDBEdit
      Left = 85
      Top = 82
      Width = 48
      Height = 19
      BevelKind = bkTile
      BorderStyle = bsNone
      DataField = 'idProdDeposito'
      DataSource = dsPadrao
      TabOrder = 11
      Find = dmFind.FindProdDeposito
      AcaoCad = frmPrincipal.actCadProdDeposito
      DecimalControl = True
      KeyMode = kmNormal
    end
    object LookProdDeposito: TCLookUp
      Left = 139
      Top = 82
      Width = 254
      Height = 19
      Alignment = taLeftJustify
      BevelInner = bvSpace
      BevelOuter = bvLowered
      Color = 14149350
      ParentBackground = False
      TabOrder = 12
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
    object LookProduto: TCLookUp
      Left = 495
      Top = 82
      Width = 224
      Height = 19
      Alignment = taLeftJustify
      BevelInner = bvSpace
      BevelOuter = bvLowered
      Color = 14149350
      ParentBackground = False
      TabOrder = 13
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
    object DBEidProduto: TCDBEdit
      Left = 443
      Top = 82
      Width = 46
      Height = 19
      BevelKind = bkTile
      BorderStyle = bsNone
      DataField = 'idProduto'
      DataSource = dsPadrao
      TabOrder = 14
      AcaoCad = frmPrincipal.actCadProduto
      DecimalControl = True
      KeyMode = kmNormal
    end
  end
  inherited imgIcones: TImageList
    Left = 808
    Top = 0
    Bitmap = {
      494C010102000400480010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
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
    Left = 776
    Top = 0
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
    Left = 584
  end
  inherited cdsPadrao: TClientDataSet
    Left = 656
    object cdsPadraoconsolidaemp: TStringField
      FieldName = 'consolidaemp'
      Size = 1
    end
    object cdsPadraodtInicial: TDateField
      FieldName = 'dtInicial'
    end
    object cdsPadraodtFinal: TDateField
      FieldName = 'dtFinal'
    end
    object cdsPadraoidAplicacaoIni: TIntegerField
      FieldName = 'idAplicacaoIni'
    end
    object cdsPadraoidAplicacaoFim: TIntegerField
      FieldName = 'idAplicacaoFim'
    end
    object cdsPadraoidResultadoIni: TIntegerField
      FieldName = 'idResultadoIni'
    end
    object cdsPadraoidResultadoFim: TIntegerField
      FieldName = 'idResultadoFim'
    end
    object cdsPadraoidResultado: TIntegerField
      FieldName = 'idResultado'
    end
    object cdsPadraoidSafra: TIntegerField
      FieldName = 'idSafra'
    end
    object cdsPadraoidProdDeposito: TIntegerField
      FieldName = 'idProdDeposito'
    end
    object cdsPadraoidProduto: TIntegerField
      FieldName = 'idProduto'
    end
  end
  inherited dsPadrao: TDataSource
    Left = 728
  end
  inherited cdsGrid: TClientDataSet
    CommandText = 'SELECT * FROM vAplicacao WHERE 1=2'
    AfterScroll = cdsGridAfterScroll
    Left = 656
    Top = 336
    object cdsGrididEmpresa: TIntegerField
      FieldName = 'idEmpresa'
      Required = True
    end
    object cdsGrididAplicacao: TIntegerField
      FieldName = 'idAplicacao'
      Required = True
    end
    object cdsGriddtAplicacao: TSQLTimeStampField
      FieldName = 'dtAplicacao'
      Required = True
    end
    object cdsGrididSafra: TIntegerField
      FieldName = 'idSafra'
      Required = True
    end
    object cdsGriddescSafra: TStringField
      FieldName = 'descSafra'
      Required = True
      Size = 50
    end
    object cdsGrididResultado: TIntegerField
      FieldName = 'idResultado'
    end
    object cdsGriddescResultado: TStringField
      FieldName = 'descResultado'
      Required = True
      Size = 50
    end
    object cdsGrididProdDeposito: TSmallintField
      FieldName = 'idProdDeposito'
      Required = True
    end
    object cdsGriddescProdDeposito: TStringField
      FieldName = 'descProdDeposito'
      Required = True
      Size = 50
    end
    object cdsGridstAplicacao: TStringField
      FieldName = 'stAplicacao'
      Required = True
      Size = 15
    end
  end
  inherited dsGrid: TDataSource
    Left = 728
    Top = 336
  end
  inherited dspGrid: TDataSetProvider
    Left = 584
    Top = 336
  end
  inherited sdsGrid: TSQLDataSet
    CommandText = 'SELECT * FROM vAplicacao WHERE 1=2'
    Left = 512
    Top = 336
  end
  object FindFornecedor: TCFind
    SelectClause.Strings = (
      
        'SELECT  idFornecedor, descCadFornecedor, descAbreviada, idCnpjCp' +
        'f  FROM vCadFornecedorContabil')
    JoinClause.Strings = (
      'WHERE StCadGeral = '#39'ATIVO'#39)
    OrderByClause.Strings = (
      'ORDER BY descCadFornecedor')
    FindField = 'descCadFornecedor'
    SQLConnection = dmPadrao.dbConexao
    ValueField = 'idFornecedor'
    CarregaDados = True
    CollumNames.Strings = (
      'C'#243'digo'
      'Raz'#227'o Social'
      'Nome Fantasia'
      'CNPJ/CPF')
    TypeFind = fFindNormal
    Left = 288
    Top = 240
  end
  object cdsGrid2: TClientDataSet
    Aggregates = <>
    CommandText = 'SELECT * FROM vAplicacaoProd'
    IndexFieldNames = 'idEmpresa;idAplicacao'
    MasterFields = 'idEmpresa;idAplicacao'
    MasterSource = dsGrid
    PacketRecords = 0
    Params = <>
    ProviderName = 'dspGrid2'
    AfterOpen = cdsPadraoAfterOpen
    Left = 656
    Top = 384
    object cdsGrid2idEmpresa: TIntegerField
      FieldName = 'idEmpresa'
      Required = True
    end
    object cdsGrid2idAplicacao: TIntegerField
      FieldName = 'idAplicacao'
      Required = True
    end
    object cdsGrid2idProduto: TIntegerField
      FieldName = 'idProduto'
      Required = True
    end
    object cdsGrid2descProduto: TStringField
      FieldName = 'descProduto'
      Required = True
      Size = 50
    end
    object cdsGrid2qtAplicacao: TFMTBCDField
      FieldName = 'qtAplicacao'
      Required = True
      Precision = 10
      Size = 3
    end
    object cdsGrid2vlAplicacao: TFMTBCDField
      FieldName = 'vlAplicacao'
      Precision = 18
      Size = 4
    end
  end
  object dsGrid2: TDataSource
    DataSet = cdsGrid2
    Left = 728
    Top = 384
  end
  object dspGrid2: TDataSetProvider
    DataSet = sdsGrid2
    Options = [poAllowMultiRecordUpdates, poPropogateChanges, poAllowCommandText, poUseQuoteChar]
    Left = 584
    Top = 384
  end
  object sdsGrid2: TSQLDataSet
    CommandText = 'SELECT * FROM vAplicacaoProd WHERE 1=2'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmPadrao.dbConexao
    Left = 512
    Top = 384
  end
end
