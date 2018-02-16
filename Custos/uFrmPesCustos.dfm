inherited FrmPesCustos: TFrmPesCustos
  Caption = 'Rela'#231#227'o de Custos de Produ'#231#227'o'
  ClientHeight = 635
  ClientWidth = 909
  ExplicitWidth = 925
  ExplicitHeight = 674
  PixelsPerInch = 96
  TextHeight = 13
  inherited BevGrid: TBevel
    Top = 185
    Width = 909
    ExplicitTop = 185
    ExplicitWidth = 890
  end
  inherited BevTop: TBevel
    Width = 909
    ExplicitWidth = 890
  end
  inherited PanTopo: TCPanelGradient
    Width = 909
    Height = 151
    ExplicitWidth = 909
    ExplicitHeight = 151
    object Bevel1: TBevel [0]
      Left = 1
      Top = 27
      Width = 907
      Height = 4
      Align = alTop
      Shape = bsFrame
      Style = bsRaised
      ExplicitLeft = 2
      ExplicitWidth = 888
    end
    object CLabel3: TCLabel [1]
      Left = 26
      Top = 37
      Width = 38
      Height = 13
      Alignment = taRightJustify
      Caption = 'Data de'
    end
    object CLabel1: TCLabel [2]
      Left = 6
      Top = 59
      Width = 58
      Height = 13
      Alignment = taRightJustify
      Caption = 'Propriedade'
    end
    object CLabel8: TCLabel [3]
      Left = 20
      Top = 124
      Width = 44
      Height = 13
      Alignment = taRightJustify
      Caption = 'Grupo de'
    end
    object CLabel11: TCLabel [4]
      Left = 16
      Top = 103
      Width = 48
      Height = 13
      Alignment = taRightJustify
      Caption = 'Resultado'
    end
    object CLabel13: TCLabel [5]
      Left = 20
      Top = 81
      Width = 44
      Height = 13
      Alignment = taRightJustify
      Caption = 'Gerencial'
    end
    object CLabel5: TCLabel [6]
      Left = 364
      Top = 59
      Width = 38
      Height = 13
      Alignment = taRightJustify
      Caption = 'Produto'
    end
    object CLabel4: TCLabel [7]
      Left = 156
      Top = 37
      Width = 16
      Height = 13
      Alignment = taRightJustify
      Caption = 'at'#233
    end
    object CLabel6: TCLabel [8]
      Left = 264
      Top = 37
      Width = 35
      Height = 13
      Alignment = taRightJustify
      Caption = 'Cultura'
    end
    object CLabel7: TCLabel [9]
      Left = 579
      Top = 37
      Width = 26
      Height = 13
      Alignment = taRightJustify
      Caption = 'Safra'
    end
    object CLabel9: TCLabel [10]
      Left = 156
      Top = 124
      Width = 16
      Height = 13
      Alignment = taRightJustify
      Caption = 'at'#233
    end
    object CLabel10: TCLabel [11]
      Left = 264
      Top = 124
      Width = 62
      Height = 13
      Alignment = taRightJustify
      Caption = 'SubGrupo de'
    end
    object CLabel12: TCLabel [12]
      Left = 418
      Top = 124
      Width = 16
      Height = 13
      Alignment = taRightJustify
      Caption = 'at'#233
    end
    inherited BtnExecutar: TCBitBtn
      Left = 820
      Top = 97
      TabOrder = 19
      ExplicitLeft = 820
      ExplicitTop = 97
    end
    object PanEmpresa: TCPanelGradient
      Left = 1
      Top = 1
      Width = 907
      Height = 26
      Align = alTop
      Caption = 'PanEmpresa'
      TabOrder = 20
      CaptionNo = 0
      HintNo = 0
      BackgroundGradientColor = 15201011
      BackgroundGradientDirection = gdVertical
      TextColor = clBlack
      GradientColor = clBlack
      RegularButtonColor = clBlack
      SelectedButtonColor = clBlack
      ButtonOptions = []
      object CLabel2: TCLabel
        Left = 22
        Top = 8
        Width = 41
        Height = 13
        Alignment = taRightJustify
        Caption = 'Empresa'
        Transparent = True
      end
      object DBEidEmpresa: TCDBEdit
        Left = 68
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
      object LookdescCadEmpresa: TCLookUp
        Left = 120
        Top = 5
        Width = 314
        Height = 19
        Alignment = taLeftJustify
        BevelInner = bvSpace
        BevelOuter = bvLowered
        Color = 14149350
        ParentBackground = False
        TabOrder = 1
        Key.Strings = (
          'idEmpresa')
        LookUpKey.Strings = (
          'idEmpresa')
        ClientDataSet = cdsLookUp
        DataSource = dsPadrao
        ValidaCampoObrigatorio = False
        CampoObrigatorio = True
        LookUpTable = 'vCadEmpresaContabil'
        ReturnField = 'descCadEmpresa'
      end
    end
    object DBEidProdGrupoIni: TCDBEdit
      Left = 70
      Top = 121
      Width = 80
      Height = 19
      BevelKind = bkTile
      BorderStyle = bsNone
      DataField = 'idProdGrupoIni'
      DataSource = dsPadrao
      MaxLength = 10
      TabOrder = 15
      DecimalControl = True
      KeyMode = kmNumber
    end
    object DBEidBem: TCDBEdit
      Left = 70
      Top = 56
      Width = 46
      Height = 19
      BevelKind = bkTile
      BorderStyle = bsNone
      DataField = 'idBem'
      DataSource = dsPadrao
      TabOrder = 6
      Find = FindBem
      DecimalControl = True
      KeyMode = kmNumber
    end
    object DBEdtInicial: TCDBEdit
      Left = 70
      Top = 34
      Width = 80
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
      Left = 178
      Top = 34
      Width = 80
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
    object DBEidCultura: TCDBEdit
      Left = 305
      Top = 34
      Width = 46
      Height = 19
      BevelKind = bkTile
      BorderStyle = bsNone
      DataField = 'idCultura'
      DataSource = dsPadrao
      TabOrder = 2
      Find = FindCultura
      DecimalControl = True
      KeyMode = kmNumber
    end
    object LookCultura: TCLookUp
      Left = 357
      Top = 34
      Width = 216
      Height = 19
      Alignment = taLeftJustify
      BevelInner = bvSpace
      BevelOuter = bvLowered
      Color = 14149350
      ParentBackground = False
      TabOrder = 3
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
    object DBEidSafra: TCDBEdit
      Left = 611
      Top = 34
      Width = 46
      Height = 19
      BevelKind = bkTile
      BorderStyle = bsNone
      DataField = 'idSafra'
      DataSource = dsPadrao
      TabOrder = 4
      Find = FindSafra
      DecimalControl = True
      KeyMode = kmNumber
    end
    object LookSafra: TCLookUp
      Left = 663
      Top = 34
      Width = 125
      Height = 19
      Alignment = taLeftJustify
      BevelInner = bvSpace
      BevelOuter = bvLowered
      Color = 14149350
      ParentBackground = False
      TabOrder = 5
      Key.Strings = (
        'idSafra')
      LookUpKey.Strings = (
        'idSafra')
      AlternateSQL.Strings = (
        'select descSafra from Safra where idSafra = ?')
      ClientDataSet = cdsLookUp
      DataSource = dsPadrao
      ValidaCampoObrigatorio = False
      CampoObrigatorio = True
      LookUpTable = 'Safra'
      ReturnField = 'descSafra'
    end
    object LookProdMedida: TCLookUp
      Left = 717
      Top = 56
      Width = 42
      Height = 19
      Alignment = taLeftJustify
      BevelInner = bvSpace
      BevelOuter = bvLowered
      Color = 14149350
      ParentBackground = False
      TabOrder = 10
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
    object LookProduto: TCLookUp
      Left = 460
      Top = 56
      Width = 251
      Height = 19
      Alignment = taLeftJustify
      BevelInner = bvSpace
      BevelOuter = bvLowered
      Color = 14149350
      ParentBackground = False
      TabOrder = 9
      Key.Strings = (
        'idProduto')
      LookUpKey.Strings = (
        'idProduto')
      AlternateSQL.Strings = (
        'SELECT descProduto FROM Produto WHERE idProduto = ?')
      ClientDataSet = cdsLookUp
      DataSource = dsPadrao
      ValidaCampoObrigatorio = True
      CampoObrigatorio = True
      LookUpTable = 'Produto'
      ReturnField = 'descProduto'
    end
    object LookPropriedade: TCLookUp
      Left = 122
      Top = 56
      Width = 236
      Height = 19
      Alignment = taLeftJustify
      BevelInner = bvSpace
      BevelOuter = bvLowered
      Color = 14149350
      ParentBackground = False
      TabOrder = 7
      Key.Strings = (
        'idBem')
      LookUpKey.Strings = (
        'idBem')
      AlternateSQL.Strings = (
        'select descBem from vPropriedade where idBem = ?')
      ClientDataSet = cdsLookUp
      DataSource = dsPadrao
      ValidaCampoObrigatorio = False
      CampoObrigatorio = True
      LookUpTable = 'vPropriedade'
      ReturnField = 'descBem'
    end
    object DBEidProduto: TCDBEdit
      Left = 408
      Top = 56
      Width = 46
      Height = 19
      BevelKind = bkTile
      BorderStyle = bsNone
      DataField = 'idProduto'
      DataSource = dsPadrao
      TabOrder = 8
      Find = FindProduto
      DecimalControl = True
      KeyMode = kmNumber
    end
    object DBEidGerencial: TCDBEdit
      Left = 70
      Top = 78
      Width = 48
      Height = 19
      BevelKind = bkTile
      BorderStyle = bsNone
      DataField = 'idGerencial'
      DataSource = dsPadrao
      TabOrder = 11
      Find = FindGerencial
      DecimalControl = True
      KeyMode = kmNumber
    end
    object DBEidResultado: TCDBEdit
      Left = 70
      Top = 99
      Width = 48
      Height = 19
      BevelKind = bkTile
      BorderStyle = bsNone
      DataField = 'idResultado'
      DataSource = dsPadrao
      TabOrder = 13
      Find = FindResultado
      DecimalControl = True
      KeyMode = kmNumber
    end
    object LookResultado: TCLookUp
      Left = 123
      Top = 99
      Width = 313
      Height = 19
      Alignment = taLeftJustify
      BevelInner = bvSpace
      BevelOuter = bvLowered
      Color = 14149350
      ParentBackground = False
      TabOrder = 14
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
    object LookGerenciaR: TCLookUp
      Left = 124
      Top = 78
      Width = 312
      Height = 19
      Alignment = taLeftJustify
      BevelInner = bvSpace
      BevelOuter = bvLowered
      Color = 14149350
      ParentBackground = False
      TabOrder = 12
      Key.Strings = (
        'idGerencial')
      LookUpKey.Strings = (
        'idGerencial')
      AlternateSQL.Strings = (
        
          'SELECT DISTINCT descGerencial FROM vGerencial WHERE idEmpresa = ' +
          '[DBEidEmpresa] AND idGerencial = ?')
      ClientDataSet = cdsLookUp
      DataSource = dsPadrao
      ValidaCampoObrigatorio = True
      CampoObrigatorio = True
      LookUpTable = 'vGerencial'
      ReturnField = 'descGerencial'
    end
    object DBEidProdGrupoFim: TCDBEdit
      Left = 178
      Top = 121
      Width = 80
      Height = 19
      BevelKind = bkTile
      BorderStyle = bsNone
      DataField = 'idProdGrupoFim'
      DataSource = dsPadrao
      MaxLength = 10
      TabOrder = 16
      DecimalControl = True
      KeyMode = kmNumber
    end
    object DBEidProdSubGrupoIni: TCDBEdit
      Left = 332
      Top = 121
      Width = 80
      Height = 19
      BevelKind = bkTile
      BorderStyle = bsNone
      DataField = 'idProdSubGrupoIni'
      DataSource = dsPadrao
      MaxLength = 10
      TabOrder = 17
      DecimalControl = True
      KeyMode = kmNumber
    end
    object DBEidProdSubGrupoFim: TCDBEdit
      Left = 440
      Top = 121
      Width = 80
      Height = 19
      BevelKind = bkTile
      BorderStyle = bsNone
      DataField = 'idProdSubGrupoFim'
      DataSource = dsPadrao
      MaxLength = 10
      TabOrder = 18
      DecimalControl = True
      KeyMode = kmNumber
    end
    object DBCBagrupCultura: TCDBCheckBox
      Left = 534
      Top = 123
      Width = 163
      Height = 17
      Caption = 'Deseja Agurpar por Cultura ?'
      DataField = 'agrupCultura'
      DataSource = dsPadrao
      TabOrder = 21
      ValueChecked = 'S'
      ValueUnchecked = 'N'
    end
  end
  inherited PanTop: TCPanelGradient
    Width = 909
    ExplicitWidth = 909
    inherited BtnFechar: TCBitBtn
      Left = 823
      ExplicitLeft = 823
    end
  end
  inherited cxGrid: TcxGrid
    Top = 189
    Width = 909
    Height = 446
    ExplicitTop = 189
    ExplicitWidth = 909
    ExplicitHeight = 446
    inherited DBView: TcxGridDBTableView
      DataController.KeyFieldNames = ''
      DataController.Summary.DefaultGroupSummaryItems = <
        item
          Format = '#,##0.0000'
          Kind = skSum
          Position = spFooter
          Column = DBViewvlCustoHA
        end
        item
          Format = '#,##0.0000'
          Kind = skSum
          Position = spFooter
          Column = DBViewqtItem
        end
        item
          Format = '#,##0.0000'
          Kind = skSum
          Position = spFooter
          Column = DBViewvlMedio
        end
        item
          Format = '#,##0.0000'
          Kind = skSum
          Position = spFooter
          Column = DBViewvlTotal
        end>
      DataController.Summary.SummaryGroups = <
        item
          Links = <
            item
              Column = DBViewarea
            end
            item
              Column = DBViewdescCultura
            end>
          SummaryItems = <
            item
              Kind = skSum
              Position = spFooter
              FieldName = 'vlMedio'
              Column = DBViewvlMedio
              DisplayText = 'Custo M'#233'dio'
            end>
        end>
      OptionsBehavior.ImmediateEditor = False
      OptionsData.CancelOnExit = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      object DBViewdescCultura: TcxGridDBColumn
        Caption = 'Cultura'
        DataBinding.FieldName = 'descCultura'
      end
      object DBViewdescTalhao: TcxGridDBColumn
        Caption = 'Talh'#227'o'
        DataBinding.FieldName = 'descTalhao'
        Visible = False
        GroupIndex = 0
      end
      object DBViewarea: TcxGridDBColumn
        Caption = #193'rea'
        DataBinding.FieldName = 'area'
        HeaderAlignmentHorz = taRightJustify
      end
      object DBViewdescGrupo: TcxGridDBColumn
        Caption = 'Grupo'
        DataBinding.FieldName = 'descGrupo'
        Visible = False
        GroupIndex = 1
      end
      object DBViewdescItem: TcxGridDBColumn
        Caption = 'Descri'#231#227'o'
        DataBinding.FieldName = 'descItem'
      end
      object DBViewqtItem: TcxGridDBColumn
        Caption = 'Qtdade'
        DataBinding.FieldName = 'qtItem'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.DecimalPlaces = 4
        Properties.DisplayFormat = ' ,0.0000;( ,0.0000)'
        HeaderAlignmentHorz = taRightJustify
      end
      object DBViewvlMedio: TcxGridDBColumn
        Caption = 'Custo M'#233'dio'
        DataBinding.FieldName = 'vlMedio'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.DecimalPlaces = 4
        Properties.DisplayFormat = ' ,0.0000;( ,0.0000)'
        HeaderAlignmentHorz = taRightJustify
      end
      object DBViewvlTotal: TcxGridDBColumn
        Caption = 'Total'
        DataBinding.FieldName = 'vlTotal'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.DecimalPlaces = 4
        Properties.DisplayFormat = ' ,0.0000;( ,0.0000)'
        HeaderAlignmentHorz = taRightJustify
      end
      object DBViewvlCustoHA: TcxGridDBColumn
        Caption = 'Custo/HA'
        DataBinding.FieldName = 'vlCustoHA'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.DecimalPlaces = 4
        Properties.DisplayFormat = ' ,0.0000;( ,0.0000)'
        HeaderAlignmentHorz = taRightJustify
      end
      object DBViewprRepresentacao: TcxGridDBColumn
        Caption = '% Representa'#231#227'o'
        DataBinding.FieldName = 'prRepresentacao'
        HeaderAlignmentHorz = taRightJustify
      end
    end
  end
  inherited imgIcones: TImageList
    Left = 120
    Top = 424
    Bitmap = {
      494C0101030004000C0010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
      000000000000000000000000000000000000FDFDFF00CED7EF00AEB8E000AEB8
      E000B0B9E100B0B9E100B0B9E100AFBAE200ADB9E300ADB9E300ACB7E300ABB6
      E300ABB6E300AAB5E100CDD6ED00FDFDFF0000000000C2C2C2FF404040FF1E1E
      1EFF252525FF252525FF252525FF252525FF252525FF252525FF252525FF2525
      25FF1E1E1EFF353535FF8A8A8AFFFEFEFEFF000000000000000000000000FEFE
      FEFFFCFCFCFFBCC1C2FFEAEAEAFFFEFEFEFF00000000F1F1F1FFFEFEFEFF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CED8F3003F5BC9001234BA001638
      BD001C3CBC001C3CBC00183BBE00183BBF001439C1001137C3000B33C2000831
      C200022DC2000029BC003752B900CDD6ED0000000000C4C4C4FFFCFCFCFFFBFB
      FBFFFBFBFBFFFBFBFBFFFBFBFBFFFAFAFAFFFAFAFAFFF9F9F9FFF9F9F9FFF8F8
      F8FFCBCBCBFF434343FF505050FFB8B8B8FF0000000000000000FEFEFEFFADAC
      ACFF9A9B9BFF53DCECFF78D2DCFFB2B6B7FFF4F4F4FFA2A2A2FFDFDFDFFF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000AEBBF100143BD700214ADF002B50
      DE003255DE002F53DE002F54DF002B53DF00244FE0001F4FE400164AE3000F45
      E500073CE2000236DC000029BC00AAB5E10000000000C6C6C6FFFAFAFAFFFCFC
      FCFFFCFCFCFFFCFCFCFFFBFBFBFFFBFBFBFFFAFAFAFFF9F9F9FFF9F9F9FFC9C9
      C9FF434343FF6F6F6FFF4E4E4EFFD4D4D4FF0000000000000000FBFBFBFFDEDB
      DAFFF2EFEEFFFFFFFFFFFFEFECFFC9D3D4FF829091FF858585FFC9C9C9FFD2D2
      D2FFFBFBFBFFFEFEFEFF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B0BEF4001D44DF002D53E200365A
      E3004161E4004B6AE6008AA0F000ADC0F600A9BBF4007B97F0002A5BE900144C
      E9000B42E600063CE200032DC200ABB6E30000000000C6C6C6FFF8F8F8FFFAFA
      FAFFFAFAFAFFF9F9F9FFF9F9F9FFF8F8F8FFF7F7F7FFF7F7F7FFC6C6C6FF4444
      44FF767676FF5C5C5CFF979797FF000000000000000000000000EEEEEEFFF9F6
      F6FFEFECEAFFEFEBEAFFEEE8E9FFE9E6E7FFE8E3E3FFFFFFFFFF48484BFF8D8B
      8BFFA4A1A1FFA7A6A6FFDCDCDCFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B2BFF400264BE000395EE5004465
      E5007E93ED00DDE3FA00D8DFF900B3C2F500B3C3F600D5DFFB00D2DDFA00537E
      EF001049E9000A41E500052FC300ABB7E30000000000C6C6C6FFF7F7F7FFF6F6
      F6FFF2F2F1FFEAEAEAFFECECECFFF2F2F2FFF5F5F5FFCACACAFF464646FF7C7C
      7CFF5F5F5FFFD0D0D0FFB1B1B1FF000000000000000000000000D1D1D1FFFDFD
      FDFFFFFCFAFFF5F2F2FFEEEAE8FFEEEAEAFFF0EAEAFFECE8E6FFCBCACCFF3E3F
      3BFFD9D5D3FFE8E1E2FFBDBBBBFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B4C1F4003054E1004463E5005975
      E800DDE3FA00BEC9F600637EEA004368E7003E67E8004D76EC00B9C9F700D0DA
      FA002154E8001146E3000C35C400ADB8E30000000000C6C6C6FFE7E7E7FFABAB
      ABFF979797FF989898FF969696FFAEAEAEFFD5D5D5FF5D5D5DFF838383FF6262
      62FFD2D2D2FFEBEBEBFFB1B1B1FF0000000000000000FEFEFEFFADADADFFAFAC
      ABFFC2C0BEFF848281FFFDF8F9FFF0EAEAFFEEEAEAFFEEEAE8FFFDF8F7FF8C8C
      86FF8A898AFFFBFBFAFFE2E2E2FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B7C4F5003659E3004C69E5009AAB
      F100D6DCF900637DE9004A69E600C1CDF700BBC9F7002E5CE800466EEA00D2DB
      FA007593EF00194CE4001338C200AEB9E30000000000B4B4B4FF989898FFC3C3
      C3FFDDDDDDFFE2E2E2FFDADADAFFBDBDBDFF7D7D7DFF9B9B9BFF707070FFD1D1
      D1FFEBEBEBFFE2E2E2FFB1B1B1FF0000000000000000EEEEEEFFD1E9EDFFE6E3
      E6FFFFFFFFFFFBF6F6FFEEE9E9FFECE8E7FFEFEBEAFFEFEBEAFFEEEBEAFFBEBC
      BDFF555551FFD0CCCCFFFBFBFBFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000BAC6F5004061E5005370E700C1CB
      F700B3BEF500516EE7004968E600C1CBF600BBC8F6002F57E3002957E700A9BA
      F500A3B7F4001E4DE100193CC000B0BBE300F6F6F6FF898989FFCECECEFFE7E7
      E7FFEBEBEBFFECECECFFE9E9E9FFE6E6E6FFCECECEFF898989FFD1D1D1FFE9E9
      E9FFE1E1E1FFD3D3D3FFB1B1B1FF00000000FDFDFDFF97BABEFFFFE7E2FFA3A0
      A0FFC5C2C2FFA9A6A6FFE1DCDDFFCBC6C7FFF2EDEEFFF1EDEDFFEFEBEBFFFFFC
      FDFFFFFFFFFF858484FFFAFAFAFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000BCC7F5004967E5005B76E800C4CD
      F700B3BEF500516EE7004766E500C1CBF600BBC7F6002F55E2002954E500A8B8
      F300A7B9F400254DDE001D3EBF00B1BBE300B8B8B8FF9D9D9DFFE1E1E1FFE9E9
      E9FFECECECFFEEEEEEFFEAEAEAFFE7E7E7FFE1E1E1FFADADADFFA3A3A3FFE2E2
      E2FFD5D5D5FFC6C6C6FFB6B6B6FF00000000E1E2E2FF67F8FEFFFFFFFBFFC9C5
      C4FF989796FFB2AFAFFFC1BEBDFFBFBEBDFFC4C0BFFFD4D1D0FFEEEBEAFFFFFF
      FFFF8C8B8BFF7B7B79FFD2D2D2FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000BEC9F600516EE600627CE900A7B5
      F200D6DDF900637DE9004766E500C1CBF600BAC6F5002F54E2004367E700D0D9
      F9007E95EE002B4FDE002141C000B2BCE200A9A9A9FFAEAEAEFFDEDEDEFFE2E2
      E2FFE7E7E7FFEAEAEAFFE4E4E4FFE0E0E0FFDDDDDDFFC1C1C1FF868686FFD3D3
      D3FFC6C6C6FFAFAFAFFFBBBBBBFF000000008FD0D8FF55D9ECFFF3E7E5FFC9C7
      C6FFB2AFAEFFCBC6C5FFBCBABAFFB4B2B0FFCDCAC9FFC0BDBCFFCCC7C5FFBBB6
      B5FFA09E9FFFF7F7F7FF838384FFF7F7F7FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000BFCAF6005974E7006D86EA00758C
      EB00E0E8FC00B9C4F5005F79E8004563E5003C5EE3004B6BE600B4C2F400D7DE
      FA003B5DE4002D52DE002443C000B3BCE200ACACACFFB3B3B3FFD9D9D9FFDDDD
      DDFFE4E4E4FFE5E5E5FFDCDCDCFFD8D8D8FFD6D6D6FFBCBCBCFF7B7B7BFFB0B0
      B0FFAFAFAFFF959595FFC1C1C1FF00000000D2D8D8FFA2E6F0FFB2B3B4FFC3C0
      C0FFB4B2AFFFB3B0B0FFC0BBBDFFD5D0D0FFBBB8B8FFC3C0C0FFC2BEBEFFD1CE
      CFFFECEAEAFF696969FFACACAAFFC2C2C2FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C2CCF600647EE900778FEC006D86
      EA0091A3EF00E6EAFB00D3DAF900ABB9F400A9B8F300CFD8F800D9E2FA006A84
      EA003055E2002F53DE002443C000B3BCE200B6B6B6FFB1B1B1FFD6D6D6FFE0E0
      E0FFE7E7E7FFE6E6E6FFDFDFDFFFD5D5D5FFCCCCCCFF8B8B8BFF606060FF7D7D
      7DFF949494FFA2A2A2FFD8D8D8FF0000000000000000CAC8C7FFDBD8D8FFFFFF
      FFFFFAF6F7FFDDD9DAFFB5B2B2FFB2AFAFFFD2D1CFFFB4B2B0FFA8A6A7FFF4F3
      F2FFCAC9C9FFC4C4C4FFDDDDDDFF959595FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C4CEF7007089EB008DA1EF007E94
      ED006C86EA00728AEB00A6B4F300C5CEF700C3CDF60098A9F0005772E7004262
      E4003B5DE3003254DE001E3EBE00B1BBE200BFBFBFFFB1B1B1FFDBDBDBFFE3E3
      E3FFE5E5E5FFE6E6E6FFE3E3E3FFD6D6D6FFC4C4C4FF787878FFC1C1C1FFFBFB
      FBFFDFDFDFFFAEAEAEFFEBEBEBFF00000000FDFDFDFFEBE9E8FFFFFFFFFFF3F0
      EFFFF3F0EFFFEEEBEAFFEEEBEAFFFCF8F7FFFFFFFFFFFFFEFDFFEDE9EAFFBFBD
      BCFFF1F1F1FF00000000EEEEEEFFF6F6F6FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C7D1F7007D93ED009CADF100899D
      EF00788FEC006E86EA006982EA00647EE900627BE9005D77E8005672E8004D6B
      E6004161E4003255DE001D3DBE00B0BAE100E1E1E1FFA4A4A4FFD9D9D9FFE7E7
      E7FFE8E8E8FFE8E8E8FFE3E3E3FFD6D6D6FFABABABFF848484FFF7F7F7FFDFDF
      DFFFABABABFFE0E0E0FF0000000000000000F6F6F6FFF6F5F4FFFEFEFDFFF3F0
      EFFFECE8E7FFEDEAE8FFEFECECFFF1EEEFFFF3F0EFFFF1EEEEFFEFECECFFE0DD
      DCFFFEFEFEFF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000DAE3FA00869BEE00788FEC006B84
      EA005E79E8005974E7005470E700506DE6004E6BE6004867E5004464E5003E5F
      E4003055E200264BDB004963CD00D0D9F00000000000B5B5B5FFA1A1A1FFCCCC
      CCFFDFDFDFFFE2E2E2FFD2D2D2FFADADADFFB2B2B2FFBBBBBBFFDFDFDFFFAFAF
      AFFFE1E1E1FF00000000000000000000000000000000FDFDFDFFEFEEEEFFD5D5
      D5FFCAC8C8FFDEDBDBFFF7F5F5FFFEFDFDFFF5F1F1FFEEEAEAFFE6E2E2FFC6C5
      C4FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FEFEFF00DAE2FA00C7D0F700C5CE
      F700C1CCF600BFCBF600BECAF600BECAF600BDC9F600BBC7F500BAC6F500BAC6
      F500B6C3F500B4C0F200D1DBF500FEFEFF0000000000DADADAFFB7B7B7FF9E9E
      9EFFA3A3A3FF9A9A9AFF939393FFA6A6A6FFB5B5B5FFB9B9B9FFC6C6C6FFE7E7
      E7FF000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FDFDFDFFEFEFEFFFD6D6D6FFCBC9C9FFDFDCDCFFE6E6
      E6FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF0000008000E09F000000008000C01F0000
      00008000C003000000008001C001000000008001C00100000000800180010000
      0000800180010000000000010001000000000001000100000000000100000000
      0000000100000000000000018000000000000001000400000000000300070000
      00008007800F00000000800FFC0F000000000000000000000000000000000000
      000000000000}
  end
  inherited Acao: TActionList
    Left = 88
    Top = 424
  end
  inherited cdsLookUp: TClientDataSet
    Left = 120
    Top = 456
  end
  inherited dspLookUp: TDataSetProvider
    Left = 88
    Top = 456
  end
  inherited cdsPadrao: TClientDataSet
    Left = 88
    Top = 488
    object cdsPadraoidResultado: TIntegerField
      FieldName = 'idResultado'
    end
    object cdsPadraodtInicial: TDateTimeField
      FieldName = 'dtInicial'
    end
    object cdsPadraodtFinal: TDateTimeField
      FieldName = 'dtFinal'
    end
    object cdsPadraoidCultura: TIntegerField
      FieldName = 'idCultura'
    end
    object cdsPadraoidBem: TIntegerField
      FieldName = 'idBem'
    end
    object cdsPadraoidProduto: TIntegerField
      FieldName = 'idProduto'
    end
    object cdsPadraoidGerencial: TIntegerField
      FieldName = 'idGerencial'
    end
    object cdsPadraoidProdGrupoIni: TSmallintField
      FieldName = 'idProdGrupoIni'
    end
    object cdsPadraoidProdGrupoFim: TSmallintField
      FieldName = 'idProdGrupoFim'
    end
    object cdsPadraoidProdSubGrupoIni: TSmallintField
      FieldName = 'idProdSubGrupoIni'
    end
    object cdsPadraoidProdSubGrupoFim: TSmallintField
      FieldName = 'idProdSubGrupoFim'
    end
    object cdsPadraoagrupCultura: TStringField
      FieldName = 'agrupCultura'
      Size = 1
    end
    object cdsPadraoidSafra: TIntegerField
      FieldName = 'idSafra'
    end
  end
  inherited dsPadrao: TDataSource
    Left = 120
    Top = 488
  end
  inherited sdsGrid: TSQLDataSet
    CommandText = 
      'EXEC spRelCustos 1,'#39'01/03/2008'#39','#39'01/03/2008'#39',NULL,NULL,NULL,NULL' +
      ',NULL,NULL,NULL,NULL,NULL,NULL,'#39'S'#39
    Left = 24
    Top = 520
  end
  inherited dspGrid: TDataSetProvider
    Left = 56
    Top = 520
  end
  inherited cdsGrid: TClientDataSet
    CommandText = 
      'EXEC spRelCustos 1,'#39'01/03/2008'#39','#39'01/03/2008'#39',NULL,NULL,NULL,NULL' +
      ',NULL,NULL,NULL,NULL,NULL,NULL,'#39'S'#39
    Left = 88
    Top = 520
  end
  inherited dsGrid: TDataSource
    Left = 120
    Top = 520
  end
  inherited cxGridPopupMenu1: TcxGridPopupMenu
    Left = 184
    Top = 584
  end
  inherited LookAndFeelController: TcxLookAndFeelController
    Left = 216
    Top = 584
  end
  inherited StyleRepository: TcxStyleRepository
    Left = 152
    Top = 584
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
    end
  end
  object FindSafra: TCFind [19]
    SelectClause.Strings = (
      'SELECT idSafra, descSafra, dtInicial  FROM Safra')
    JoinClause.Strings = (
      'WHERE stSafra = '#39'ATIVO'#39' AND idEmpresa = [DBEidEmpresa]')
    OrderByClause.Strings = (
      'ORDER BY descSafra')
    FindField = 'descSafra'
    SQLConnection = dmPadrao.dbConexao
    ValueField = 'idSafra'
    CarregaDados = True
    CollumNames.Strings = (
      'Safra'
      'Descri'#231#227'o'
      'Data Inicial')
    TypeFind = fFindNormal
    Left = 56
    Top = 552
  end
  object FindResultado: TCFind [20]
    SelectClause.Strings = (
      
        'SELECT  idResultado, descResultado, Talhao, stResultado FROM Res' +
        'ultado')
    JoinClause.Strings = (
      'WHERE idEmpresa = [DBEidEmpresa] AND talhao = '#39'S'#39)
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
    Left = 89
    Top = 552
  end
  object FindBem: TCFind [21]
    SelectClause.Strings = (
      
        'SELECT idBem, descBem, descLocalidade, descCidade, idEstado FROM' +
        ' vPropriedade')
    OrderByClause.Strings = (
      'ORDER BY descBem')
    FindField = 'descBem'
    SQLConnection = dmPadrao.dbConexao
    ValueField = 'idBem'
    CarregaDados = True
    CollumNames.Strings = (
      'Bem'
      'Descri'#231#227'o'
      'Localidade'
      'Cidade'
      'Estado')
    TypeFind = fFindNormal
    Left = 120
    Top = 552
  end
  object FindCultura: TCFind [22]
    SelectClause.Strings = (
      'SELECT idCultura, descCultura FROM Cultura')
    OrderByClause.Strings = (
      'ORDER BY descCultura')
    FindField = 'descCultura'
    SQLConnection = dmPadrao.dbConexao
    ValueField = 'idCultura'
    CarregaDados = True
    CollumNames.Strings = (
      'Cultura'
      'Descri'#231#227'o')
    TypeFind = fFindNormal
    Left = 120
    Top = 584
  end
  object FindGerencial: TCFind [23]
    SelectClause.Strings = (
      
        'SELECT DISTINCT idGerencial, nrGrau, descGerencial FROM Gerencia' +
        'l')
    JoinClause.Strings = (
      'WHERE idEmpresa = [DBEidEmpresa]')
    OrderByClause.Strings = (
      'ORDER BY descGerencial')
    FindField = 'descGerencial, nrGrau'
    SQLConnection = dmPadrao.dbConexao
    ValueField = 'idGerencial'
    CarregaDados = True
    CollumNames.Strings = (
      'C'#243'digo'
      'Classifica'#231#227'o'
      'Descri'#231#227'o')
    TypeFind = fFindNormal
    Left = 88
    Top = 583
  end
  object FindProduto: TCFind [24]
    SelectClause.Strings = (
      'SELECT idProduto, descProduto FROM Produto')
    JoinClause.Strings = (
      'WHERE stProduto = '#39'ATIVO'#39)
    OrderByClause.Strings = (
      'ORDER BY descProduto')
    FindField = 'descProduto'
    SQLConnection = dmPadrao.dbConexao
    ValueField = 'idProduto'
    CarregaDados = True
    CollumNames.Strings = (
      'C'#243'digo'
      'Descri'#231#227'o')
    TypeFind = fFindNormal
    Left = 56
    Top = 584
  end
  object FindEmpresa: TCFind [25]
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
      'Nome / Raz'#227'o Social'
      'Descri'#231#227'o Abreviada / Fantasia'
      'CPF / CNPJ')
    TypeFind = fFindNormal
    Left = 24
    Top = 552
  end
end
