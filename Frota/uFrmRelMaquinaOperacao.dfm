inherited FrmRelMaquinaOperacao: TFrmRelMaquinaOperacao
  Caption = 'Relat'#243'rio de Maquina Opera'#231#227'o'
  ClientWidth = 960
  ExplicitTop = -67
  ExplicitWidth = 976
  ExplicitHeight = 488
  PixelsPerInch = 96
  TextHeight = 13
  inherited BevGrid: TBevel
    Top = 121
    Width = 960
    ExplicitLeft = -1
    ExplicitTop = 243
    ExplicitWidth = 960
  end
  inherited BevTop: TBevel
    Width = 960
    ExplicitWidth = 960
  end
  inherited PanTopo: TCPanelGradient
    Width = 960
    Height = 87
    TabOrder = 1
    ExplicitWidth = 960
    ExplicitHeight = 87
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
    object CLabel1: TCLabel [3]
      Left = 19
      Top = 59
      Width = 47
      Height = 13
      Alignment = taRightJustify
      Caption = 'Opera'#231#227'o'
    end
    object CLabel7: TCLabel [4]
      Left = 133
      Top = 59
      Width = 17
      Height = 13
      Alignment = taRightJustify
      Caption = 'At'#233
    end
    object CLabel6: TCLabel [5]
      Left = 345
      Top = 59
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
    object CLabel3: TCLabel [6]
      Left = 225
      Top = 59
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
      TabOrder = 17
    end
    object CBitBtn1: TCBitBtn
      Left = 622
      Top = 14
      Width = 75
      Height = 25
      Action = actPesquisar
      Caption = '&Pesquisar'
      DoubleBuffered = True
      ParentDoubleBuffered = False
      TabOrder = 18
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
      TabOrder = 1
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
      TabOrder = 2
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
      TabOrder = 8
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
    object PanEmpresa: TCPanelGradient
      Left = 1
      Top = 1
      Width = 958
      Height = 30
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
      TabOrder = 4
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
      TabOrder = 5
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
      TabOrder = 6
      Find = dmFind.FindSafra
      AcaoCad = frmPrincipal.actCadSafra
      DecimalControl = True
      KeyMode = kmNormal
    end
    object LookSafra: TCLookUp
      Left = 531
      Top = 31
      Width = 295
      Height = 19
      Alignment = taLeftJustify
      BevelInner = bvSpace
      BevelOuter = bvLowered
      Color = 14149350
      ParentBackground = False
      TabOrder = 7
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
    object DBEidOperacaoIni: TCDBEdit
      Left = 70
      Top = 56
      Width = 57
      Height = 19
      BevelKind = bkTile
      BorderStyle = bsNone
      DataField = 'idOperacaoIni'
      DataSource = dsPadrao
      TabOrder = 9
      AcaoCad = frmPrincipal.actCadSafra
      DecimalControl = True
      KeyMode = kmNormal
    end
    object DBEidOperacaoFim: TCDBEdit
      Left = 156
      Top = 56
      Width = 63
      Height = 19
      BevelKind = bkTile
      BorderStyle = bsNone
      DataField = 'idOperacaoFim'
      DataSource = dsPadrao
      TabOrder = 10
      AcaoCad = frmPrincipal.actCadSafra
      DecimalControl = True
      KeyMode = kmNormal
    end
    object DBEdtOperacaoFim: TCDBEdit
      Left = 367
      Top = 56
      Width = 70
      Height = 19
      BevelKind = bkTile
      BorderStyle = bsNone
      DataField = 'dtOperacaoFim'
      DataSource = dsPadrao
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      MaxLength = 10
      ParentFont = False
      TabOrder = 12
      DecimalControl = True
      KeyMode = kmDate
    end
    object DBEdtOperacaoIni: TCDBEdit
      Left = 269
      Top = 56
      Width = 70
      Height = 19
      BevelKind = bkTile
      BorderStyle = bsNone
      DataField = 'dtOperacaoIni'
      DataSource = dsPadrao
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      MaxLength = 10
      ParentFont = False
      TabOrder = 11
      DecimalControl = True
      KeyMode = kmDate
    end
    object DBCKconsolidaemp: TCDBCheckBox
      Left = 442
      Top = 58
      Width = 127
      Height = 17
      Caption = 'Consolida Empresas?'
      DataField = 'consolidaemp'
      DataSource = dsPadrao
      TabOrder = 13
      ValueChecked = 'S'
      ValueUnchecked = 'N'
    end
    object DBCKconsolidafilial: TCDBCheckBox
      Left = 575
      Top = 58
      Width = 127
      Height = 17
      Caption = 'Consolida Filiais?'
      DataField = 'consolidafilial'
      DataSource = dsPadrao
      TabOrder = 14
      ValueChecked = 'S'
      ValueUnchecked = 'N'
    end
    object CBitBtn2: TCBitBtn
      Left = 709
      Top = 56
      Width = 75
      Height = 25
      Action = actPesquisar
      Caption = '&Pesquisar'
      DoubleBuffered = True
      ParentDoubleBuffered = False
      TabOrder = 15
    end
    object BtnImprimir: TCBitBtn
      Left = 791
      Top = 56
      Width = 75
      Height = 25
      Caption = '&Imprimir'
      DoubleBuffered = True
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
      ParentDoubleBuffered = False
      TabOrder = 16
      OnClick = BtnImprimirClick
    end
  end
  inherited PanTop: TCPanelGradient
    Width = 960
    TabOrder = 0
    ExplicitWidth = 960
    inherited lblInfo: TCLabel
      Width = 132
      Caption = 'Relat'#243'rio de Opera'#231#245'es'
      ExplicitWidth = 132
    end
    inherited BtnFechar: TCBitBtn
      Left = 874
      ExplicitLeft = 874
    end
  end
  inherited cxGrid: TcxGrid
    Top = 125
    Width = 960
    Height = 325
    ExplicitTop = 125
    ExplicitWidth = 960
    ExplicitHeight = 325
    inherited DBView: TcxGridDBTableView
      DataController.KeyFieldNames = 'idMaquina'
      DataController.Options = [dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoGroupsAlwaysExpanded]
      OptionsData.CancelOnExit = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsView.NoDataToDisplayInfoText = '<Sem Dados para Listar>'
      OptionsView.Footer = True
      object DBViewidEmpresa: TcxGridDBColumn
        Caption = 'Emp.'
        DataBinding.FieldName = 'idEmpresa'
      end
      object DBViewidCadEmpresa: TcxGridDBColumn
        Caption = 'Filial'
        DataBinding.FieldName = 'idCadEmpresa'
      end
      object DBViewidOperacao: TcxGridDBColumn
        Caption = 'Opera'#231#227'o'
        DataBinding.FieldName = 'idOperacao'
      end
      object DBViewidMaquina: TcxGridDBColumn
        Caption = 'Maquina'
        DataBinding.FieldName = 'idMaquina'
        Visible = False
      end
      object DBViewdescMaquina: TcxGridDBColumn
        Caption = 'Maquina'
        DataBinding.FieldName = 'descMaquina'
        Visible = False
        GroupIndex = 0
      end
      object DBViewdtOperacao: TcxGridDBColumn
        Caption = 'Data'
        DataBinding.FieldName = 'dtOperacao'
      end
      object DBViewqtHoraKm: TcxGridDBColumn
        Caption = 'Qtde. Hr/KM'
        DataBinding.FieldName = 'qtHoraKm'
      end
      object DBViewhr_kmInicial: TcxGridDBColumn
        Caption = 'Hr/Km Inicial'
        DataBinding.FieldName = 'hr_kmInicial'
      end
      object DBViewhr_kmAtual: TcxGridDBColumn
        Caption = 'Hr/Km Final'
        DataBinding.FieldName = 'hr_kmAtual'
      end
      object DBViewvlHoraKm: TcxGridDBColumn
        Caption = 'Vlr. Hr/Km'
        DataBinding.FieldName = 'vlHoraKm'
      end
      object DBViewvlTotalHoraKm: TcxGridDBColumn
        Caption = 'Vlr. Total Hr/KM'
        DataBinding.FieldName = 'vlTotalHoraKm'
      end
      object DBViewidTipoAtividade: TcxGridDBColumn
        DataBinding.FieldName = 'idTipoAtividade'
        Visible = False
      end
      object DBViewdescTipoAtividade: TcxGridDBColumn
        Caption = 'Tipo Atividade'
        DataBinding.FieldName = 'descTipoAtividade'
      end
      object DBViewobsOperacao: TcxGridDBColumn
        Caption = 'Obs.'
        DataBinding.FieldName = 'obsOperacao'
      end
    end
  end
  inherited imgIcones: TImageList
    Bitmap = {
      494C010103000400400010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
      000000000000000000000000000000000000FDFDFF00CED7EF00AEB8E000AEB8
      E000B0B9E100B0B9E100B0B9E100AFBAE200ADB9E300ADB9E300ACB7E300ABB6
      E300ABB6E300AAB5E100CDD6ED00FDFDFF0000000000C2C2C2FF404040FF1E1E
      1EFF252525FF252525FF252525FF252525FF252525FF252525FF252525FF2525
      25FF1E1E1EFF353535FF8A8A8AFFFEFEFEFF0000000000000001000000200000
      001E0000001B00000019000000170000001600000016000000180000001A0000
      001D0000001E0000001900000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CED8F3003F5BC9001234BA001638
      BD001C3CBC001C3CBC00183BBE00183BBF001439C1001137C3000B33C2000831
      C200022DC2000029BC003752B900CDD6ED0000000000C4C4C4FFFCFCFCFFFBFB
      FBFFFBFBFBFFFBFBFBFFFBFBFBFFFAFAFAFFFAFAFAFFF9F9F9FFF9F9F9FFF8F8
      F8FFCBCBCBFF434343FF505050FFB8B8B8FF00000000050505300C0C0C113131
      31425151515178787889A1A1A1A9B4B4B4C6AAAAAABC8F8F8F986B6B6B814545
      4558181818181919191A00000008000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000AEBBF100143BD700214ADF002B50
      DE003255DE002F53DE002F54DF002B53DF00244FE0001F4FE400164AE3000F45
      E500073CE2000236DC000029BC00AAB5E10000000000C6C6C6FFFAFAFAFFFCFC
      FCFFFCFCFCFFFCFCFCFFFBFBFBFFFBFBFBFFFAFAFAFFF9F9F9FFF9F9F9FFC9C9
      C9FF434343FF6F6F6FFF4E4E4EFFD4D4D4FF000000000505052F131313263A3A
      3A3A46464674BABABABA818181B3F0F0F0F0D6D6D6E29B9B9BC88E8E8E9C5757
      5759313131531A1A1A1B00000008000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B0BEF4001D44DF002D53E200365A
      E3004161E4004B6AE6008AA0F000ADC0F600A9BBF4007B97F0002A5BE900144C
      E9000B42E600063CE200032DC200ABB6E30000000000C6C6C6FFF8F8F8FFFAFA
      FAFFFAFAFAFFF9F9F9FFF9F9F9FFF8F8F8FFF7F7F7FFF7F7F7FFC6C6C6FF4444
      44FF767676FF5C5C5CFF979797FF00000000000000000505052E0C0C0C134444
      446587878787929292B1929292A5F1F1F1F1A7A7A7AD8E8E8E8E6A6A6A8A5959
      595A333333531B1B1B1B00000008000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B2BFF400264BE000395EE5004465
      E5007E93ED00DDE3FA00D8DFF900B3C2F500B3C3F600D5DFFB00D2DDFA00537E
      EF001049E9000A41E500052FC300ABB7E30000000000C6C6C6FFF7F7F7FFF6F6
      F6FFF2F2F1FFEAEAEAFFECECECFFF2F2F2FFF5F5F5FFCACACAFF464646FF7C7C
      7CFF5F5F5FFFD0D0D0FFB1B1B1FF00000000000000000505052F0B0B0B136189
      80DD807F7F8E939292B0919091A3F1F1F1F1999898B4888888A3939393934C4C
      4C6F1919191B1B1B1B1C00000008000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B4C1F4003054E1004463E5005975
      E800DDE3FA00BEC9F600637EEA004368E7003E67E8004D76EC00B9C9F700D0DA
      FA002154E8001146E3000C35C400ADB8E30000000000C6C6C6FFE7E7E7FFABAB
      ABFF979797FF989898FF969696FFAEAEAEFFD5D5D5FF5D5D5DFF838383FF6262
      62FFD2D2D2FFEBEBEBFFB1B1B1FF00000000000000000505052F1213131F3A3A
      3A44719B90F3D7F7EFFF8AB1A8FFFBFFFFFFACDDD2FF747474AD949494946161
      616A2F2F2F521A1A1A1B00000008000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B7C4F5003659E3004C69E5009AAB
      F100D6DCF900637DE9004A69E600C1CDF700BBC9F7002E5CE800466EEA00D2DB
      FA007593EF00194CE4001338C200AEB9E30000000000B4B4B4FF989898FFC3C3
      C3FFDDDDDDFFE2E2E2FFDADADAFFBDBDBDFF7D7D7DFF9B9B9BFF707070FFD1D1
      D1FFEBEBEBFFE2E2E2FFB1B1B1FF00000000000000000505052F0C0C0C0F3131
      3141505050506C6B6B898E9090B6999C9BCDB1D4CCF491D6C6FF607F77C23D3A
      3B591D1D1D1F1B1B1B1C00000008000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000BAC6F5004061E5005370E700C1CB
      F700B3BEF500516EE7004968E600C1CBF600BBC8F6002F57E3002957E700A9BA
      F500A3B7F4001E4DE100193CC000B0BBE300F6F6F6FF898989FFCECECEFFE7E7
      E7FFEBEBEBFFECECECFFE9E9E9FFE6E6E6FFCECECEFF898989FFD1D1D1FFE9E9
      E9FFE1E1E1FFD3D3D3FFB1B1B1FF00000000000000000505052F090909093233
      33454A494955757474789B9A9A9DB1B0B1B9A6A5A5AF8A9694BC6BC0ADFB3AB8
      9AFF35584F981515151B00000008000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000BCC7F5004967E5005B76E800C4CD
      F700B3BEF500516EE7004766E500C1CBF600BBC7F6002F55E2002954E500A8B8
      F300A7B9F400254DDE001D3EBF00B1BBE300B8B8B8FF9D9D9DFFE1E1E1FFE9E9
      E9FFECECECFFEEEEEEFFEAEAEAFFE7E7E7FFE1E1E1FFADADADFFA3A3A3FFE2E2
      E2FFD5D5D5FFC6C6C6FFB6B6B6FF00000000000000000505052F090909092A29
      2A2C727E7BA1D4E9E3F8DCF2EDFED9EBE7FAC8E9E1FD8585859C615E5F633736
      363B171717191B1B1B1C00000008000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000BEC9F600516EE600627CE900A7B5
      F200D6DDF900637DE9004766E500C1CBF600BAC6F5002F54E2004367E700D0D9
      F9007E95EE002B4FDE002141C000B2BCE200A9A9A9FFAEAEAEFFDEDEDEFFE2E2
      E2FFE7E7E7FFEAEAEAFFE4E4E4FFE0E0E0FFDDDDDDFFC1C1C1FF868686FFD3D3
      D3FFC6C6C6FFAFAFAFFFBBBBBBFF00000000000000000505052F090909092D2D
      2D2D53535353787878799A99999DBABABABAA2A1A1B39DB2ADD280B7AAE2586A
      66921C1C1C1D1B1B1B1C00000008000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000BFCAF6005974E7006D86EA00758C
      EB00E0E8FC00B9C4F5005F79E8004563E5003C5EE3004B6BE600B4C2F400D7DE
      FA003B5DE4002D52DE002443C000B3BCE200ACACACFFB3B3B3FFD9D9D9FFDDDD
      DDFFE4E4E4FFE5E5E5FFDCDCDCFFD8D8D8FFD6D6D6FFBCBCBCFF7B7B7BFFB0B0
      B0FFAFAFAFFF959595FFC1C1C1FF00000000000000000505052F090909092D2D
      2D2D535353537B7B7B7B9F9F9F9FBBBBBBBBB0B0B0B08F8F8F8F686868684141
      41411E1E1E1E1B1B1B1C00000008000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C2CCF600647EE900778FEC006D86
      EA0091A3EF00E6EAFB00D3DAF900ABB9F400A9B8F300CFD8F800D9E2FA006A84
      EA003055E2002F53DE002443C000B3BCE200B6B6B6FFB1B1B1FFD6D6D6FFE0E0
      E0FFE7E7E7FFE6E6E6FFDFDFDFFFD5D5D5FFCCCCCCFF8B8B8BFF606060FF7D7D
      7DFF949494FFA2A2A2FFD8D8D8FF00000000000000000505052F090909092D2D
      2D2D535353537B7B7B7B9F9F9F9FBBBBBBBBB0B0B0B090909090696969694141
      41411C1C1C1C1A1A1A1B00000008000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C4CEF7007089EB008DA1EF007E94
      ED006C86EA00728AEB00A6B4F300C5CEF700C3CDF60098A9F0005772E7004262
      E4003B5DE3003254DE001E3EBE00B1BBE200BFBFBFFFB1B1B1FFDBDBDBFFE3E3
      E3FFE5E5E5FFE6E6E6FFE3E3E3FFD6D6D6FFC4C4C4FF787878FFC1C1C1FFFBFB
      FBFFDFDFDFFFAEAEAEFFEBEBEBFF00000000000000000505052F090909092D2D
      2D2D535353537B7B7B7B9F9F9F9FBBBBBBBBB0B0B0B0909090906B6B6B856161
      617A5B5B5B7F5A5A5A9700000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C7D1F7007D93ED009CADF100899D
      EF00788FEC006E86EA006982EA00647EE900627BE9005D77E8005672E8004D6B
      E6004161E4003255DE001D3DBE00B0BAE100E1E1E1FFA4A4A4FFD9D9D9FFE7E7
      E7FFE8E8E8FFE8E8E8FFE3E3E3FFD6D6D6FFABABABFF848484FFF7F7F7FFDFDF
      DFFFABABABFFE0E0E0FF0000000000000000000000000505052F090909092D2D
      2D2D535353537B7B7B7B9F9F9F9FBBBBBBBBB0B0B0B08F8F8F8F767676959B9B
      9B9BC3C3C3CB0000000600000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000DAE3FA00869BEE00788FEC006B84
      EA005E79E8005974E7005470E700506DE6004E6BE6004867E5004464E5003E5F
      E4003055E200264BDB004963CD00D0D9F00000000000B5B5B5FFA1A1A1FFCCCC
      CCFFDFDFDFFFE2E2E2FFD2D2D2FFADADADFFB2B2B2FFBBBBBBFFDFDFDFFFAFAF
      AFFFE1E1E1FF000000000000000000000000000000000505052F090909092D2D
      2D2D535353537B7B7B7B9F9F9F9FBBBBBBBBB0B0B0B08F8F8F8F808080A2C9C9
      C9D3000000050000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FEFEFF00DAE2FA00C7D0F700C5CE
      F700C1CCF600BFCBF600BECAF600BECAF600BDC9F600BBC7F500BAC6F500BAC6
      F500B6C3F500B4C0F200D1DBF500FEFEFF0000000000DADADAFFB7B7B7FF9E9E
      9EFFA3A3A3FF9A9A9AFF939393FFA6A6A6FFB5B5B5FFB9B9B9FFC6C6C6FFE7E7
      E7FF000000000000000000000000000000000000000001010120292929323A3A
      3A494E4E4E626262627B76767693848484A57F7F7F9E6D6D6D88717171A60000
      0003000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF0000008000800100000000800080010000
      0000800080010000000080018001000000008001800100000000800180010000
      0000800180010000000000018001000000000001800100000000000180010000
      0000000180010000000000018001000000000001800100000000000380030000
      00008007800700000000800F800F000000000000000000000000000000000000
      000000000000}
  end
  inherited cdsPadrao: TClientDataSet
    AfterInsert = cdsPadraoAfterInsert
    object cdsPadraoidCadEmpresa: TIntegerField
      FieldName = 'idCadEmpresa'
    end
    object cdsPadraoidMaquina: TIntegerField
      FieldName = 'idMaquina'
    end
    object cdsPadraoidSafra: TIntegerField
      FieldName = 'idSafra'
    end
    object cdsPadraoidOperacaoIni: TIntegerField
      FieldName = 'idOperacaoIni'
    end
    object cdsPadraoidOperacaoFim: TIntegerField
      FieldName = 'idOperacaoFim'
    end
    object cdsPadraodtOperacaoIni: TDateField
      FieldName = 'dtOperacaoIni'
    end
    object cdsPadraodtOperacaoFim: TDateField
      FieldName = 'dtOperacaoFim'
    end
    object cdsPadraoconsolidaemp: TStringField
      FieldName = 'consolidaemp'
    end
    object cdsPadraoconsolidafilial: TStringField
      FieldName = 'consolidafilial'
    end
  end
  inherited dsGrid: TDataSource
    DataSet = cdsRelatorio
  end
  inherited StyleRepository: TcxStyleRepository
    PixelsPerInch = 96
  end
  object FrxRel: TfrxReport
    Version = '4.10.5'
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
    ReportOptions.LastChange = 41281.356569560190000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      '        '
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
      PaperWidth = 215.900000000000000000
      PaperHeight = 279.400000000000000000
      PaperSize = 1
      object MasterData1: TfrxMasterData
        Height = 15.118120000000000000
        Top = 275.905690000000000000
        Width = 816.000527000000000000
        OnAfterPrint = 'MasterData1OnAfterPrint'
        OnBeforePrint = 'MasterData1OnBeforePrint'
        DataSet = frxDataset
        DataSetName = 'frxDataset'
        RowCount = 0
        object Memo2: TfrxMemoView
          Left = 172.133890000000000000
          Width = 41.574830000000000000
          Height = 11.338582680000000000
          ShowHint = False
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
            '[(<frxDataset."dtOperacao">)]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo55: TfrxMemoView
          Left = 290.220745820000000000
          Width = 60.472480000000000000
          Height = 11.338582680000000000
          ShowHint = False
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
          Font.Style = []
          HideZeros = True
          Memo.UTF8W = (
            '[(<frxDataset."hr_kmInicial">)]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo3: TfrxMemoView
          Left = 223.937195820000000000
          Width = 41.574830000000000000
          Height = 11.338582680000000000
          ShowHint = False
          AutoWidth = True
          DataSet = FrmPadraoRel.frxDataset
          DataSetName = 'frxDataset'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HideZeros = True
          Memo.UTF8W = (
            '[(<frxDataset."qtHoraKm">)]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo4: TfrxMemoView
          Left = 357.520065820000000000
          Width = 60.472480000000000000
          Height = 11.338582680000000000
          ShowHint = False
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
          Font.Style = []
          Memo.UTF8W = (
            '[(<frxDataset."hr_kmAtual">)]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo6: TfrxMemoView
          Left = 41.133890000000000000
          Width = 41.574830000000000000
          Height = 11.338582680000000000
          ShowHint = False
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
            '[(<frxDataset."idEmpresa">)]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo12: TfrxMemoView
          Left = 84.708720000000000000
          Width = 41.574830000000000000
          Height = 11.338582680000000000
          ShowHint = False
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
            '[(<frxDataset."idCadEmpresa">)]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo18: TfrxMemoView
          Left = 121.063080000000000000
          Width = 41.574830000000000000
          Height = 11.338582680000000000
          ShowHint = False
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
            '[(<frxDataset."idOperacao">)]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo5: TfrxMemoView
          Left = 424.488525820000000000
          Width = 60.472480000000000000
          Height = 11.338582680000000000
          ShowHint = False
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
          Font.Style = []
          Memo.UTF8W = (
            '[(<frxDataset."vlHoraKm">)]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo20: TfrxMemoView
          Left = 488.299595820000000000
          Width = 60.472480000000000000
          Height = 11.338582680000000000
          ShowHint = False
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
          Font.Style = []
          Memo.UTF8W = (
            '[(<frxDataset."vlTotalHoraKm">)]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo23: TfrxMemoView
          Left = 565.283825820000000000
          Width = 83.149660000000000000
          Height = 11.338582680000000000
          ShowHint = False
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
          Font.Style = []
          Memo.UTF8W = (
            '[(<frxDataset."descTipoAtividade">)]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo27: TfrxMemoView
          Left = 665.197280000000000000
          Width = 139.842610000000000000
          Height = 11.338582680000000000
          ShowHint = False
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
          Font.Style = []
          Memo.UTF8W = (
            '[(<frxDataset."obsOperacao">)]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 136.992192500000000000
        Top = 18.897650000000000000
        Width = 816.000527000000000000
        object Line3: TfrxLineView
          Left = 26.456710000000000000
          Top = 133.488250000000000000
          Width = 1016.693570000000000000
          ShowHint = False
          Frame.Color = clGray
          Frame.ShadowColor = clGray
          Diagonal = True
        end
        object Picture1: TfrxPictureView
          Left = 22.677180000000000000
          Top = 11.338590000000000000
          Width = 155.000000000000000000
          Height = 62.000000000000000000
          ShowHint = False
          DataField = 'imgLogo'
          DataSet = dmPadrao.frxEmpresaContabil
          DataSetName = 'frxEmpresaContabil'
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object Memo7: TfrxMemoView
          Left = 631.622450000000000000
          Top = 11.252010000000000000
          Width = 177.637910000000000000
          Height = 117.165430000000000000
          ShowHint = False
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
            'Maquina Opera'#231#227'o')
          ParentFont = False
          VAlign = vaCenter
        end
        object Line2: TfrxLineView
          Left = 622.622450000000000000
          Top = 8.338590000000000000
          Height = 124.724490000000000000
          ShowHint = False
          Frame.Color = clGray
          Frame.ShadowColor = clGray
          Frame.Typ = [ftLeft]
        end
        object lblEmpresa: TfrxMemoView
          Left = 192.196970000000000000
          Top = 11.338590000000000000
          Width = 419.527830000000000000
          Height = 18.897637800000000000
          ShowHint = False
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
          Left = 192.315090000000000000
          Top = 33.133943700000010000
          Width = 419.527830000000000000
          Height = 18.897650000000000000
          ShowHint = False
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
          Left = 192.315090000000000000
          Top = 52.811123699999990000
          Width = 419.527830000000000000
          Height = 18.897650000000000000
          ShowHint = False
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
          Left = 192.315090000000000000
          Top = 73.370183700000000000
          Width = 419.527830000000000000
          Height = 18.897650000000000000
          ShowHint = False
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
          Left = 192.315090000000000000
          Top = 93.047363700000000000
          Width = 419.527830000000000000
          Height = 18.897650000000000000
          ShowHint = False
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
        Height = 37.795300000000000000
        Top = 215.433210000000000000
        Width = 816.000527000000000000
        Condition = 'frxDataset."idMaquina"'
        object Shape4: TfrxShapeView
          Left = 34.015770000000000000
          Top = 18.425262760000010000
          Width = 771.023646460000000000
          Height = 15.118120000000000000
          ShowHint = False
          Color = 15790320
          Frame.Color = 15790320
        end
        object Memo1: TfrxMemoView
          Left = 174.795300000000000000
          Top = 19.606370000000000000
          Width = 26.456710000000000000
          Height = 11.338590000000000000
          ShowHint = False
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
          Left = 219.078850000000000000
          Top = 19.606299210000000000
          Width = 56.692950000000000000
          Height = 11.338590000000000000
          ShowHint = False
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Qtde. Hr/KM')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo10: TfrxMemoView
          Left = 281.543600000000000000
          Top = 19.606370000000000000
          Width = 64.252010000000000000
          Height = 11.338590000000000000
          ShowHint = False
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Hr/Km Inicial')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo14: TfrxMemoView
          Left = 351.606680000000000000
          Top = 19.606370000000000000
          Width = 60.472480000000000000
          Height = 11.338590000000000000
          ShowHint = False
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Hr/Km Final')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo25: TfrxMemoView
          Left = 85.692950000000000000
          Top = 3.779529999999994000
          Width = 41.574830000000000000
          Height = 11.338582680000000000
          ShowHint = False
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
          Top = 3.779529999999994000
          Width = 45.354360000000000000
          Height = 11.338590000000000000
          ShowHint = False
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
          ShowHint = False
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
          Left = 79.370130000000000000
          Top = 18.897650000000000000
          Width = 26.456710000000000000
          Height = 11.338590000000000000
          ShowHint = False
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
          Left = 113.724490000000000000
          Top = 18.897650000000000000
          Width = 49.133890000000000000
          Height = 11.338590000000000000
          ShowHint = False
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Opera'#231#227'o')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo11: TfrxMemoView
          Left = 418.575140000000000000
          Top = 18.897650000000000000
          Width = 56.692950000000010000
          Height = 11.338590000000000000
          ShowHint = False
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Vlr. Hr/Km')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo21: TfrxMemoView
          Left = 479.827150000000000000
          Top = 18.897650000000000000
          Width = 79.370130000000000000
          Height = 11.338590000000000000
          ShowHint = False
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Vlr. Total Hr/KM')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo22: TfrxMemoView
          Left = 561.370440000000000000
          Top = 18.897650000000000000
          Width = 49.133890000000000000
          Height = 11.338590000000000000
          ShowHint = False
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Atividade')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo24: TfrxMemoView
          Left = 666.283894180000000000
          Top = 18.897650000000000000
          Width = 26.456710000000000000
          Height = 11.338590000000000000
          ShowHint = False
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Obs.')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
      end
      object PageFooter1: TfrxPageFooter
        Height = 36.574830000000000000
        Top = 374.173470000000000000
        Width = 816.000527000000000000
        object Memo13: TfrxMemoView
          Left = 308.598640000000000000
          Top = 7.181102360000012000
          Width = 117.165430000000000000
          Height = 11.338590000000000000
          ShowHint = False
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
          ShowHint = False
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
          Left = 658.268090000000000000
          Top = 7.181102360000012000
          Width = 132.283550000000000000
          Height = 11.338590000000000000
          ShowHint = False
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
          Width = 808.818946459999000000
          ShowHint = False
          Frame.Typ = [ftTop]
          Frame.Width = 0.100000000000000000
        end
        object Memo67: TfrxMemoView
          Left = 430.417130000000000000
          Top = 7.181102360000012000
          Width = 117.165430000000000000
          Height = 11.338590000000000000
          ShowHint = False
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
        Top = 313.700990000000000000
        Width = 816.000527000000000000
      end
    end
  end
  object frxDataset: TfrxDBDataset
    UserName = 'frxDataset'
    CloseDataSource = False
    FieldAliases.Strings = (
      'idEmpresa=idEmpresa'
      'idCadEmpresa=idCadEmpresa'
      'idOperacao=idOperacao'
      'idMaquina=idMaquina'
      'dtOperacao=dtOperacao'
      'qtHoraKm=qtHoraKm'
      'hr_kmInicial=hr_kmInicial'
      'hr_kmAtual=hr_kmAtual'
      'vlHoraKm=vlHoraKm'
      'vlTotalHoraKm=vlTotalHoraKm'
      'idTipoAtividade=idTipoAtividade'
      'descTipoAtividade=descTipoAtividade'
      'obsOperacao=obsOperacao'
      'descMaquina=descMaquina')
    OpenDataSource = False
    DataSet = cdsRelatorio
    BCDToCurrency = False
    Left = 208
    Top = 312
  end
  object cdsRelatorio: TClientDataSet
    Aggregates = <>
    CommandText = 
      'SELECT idEmpresa, idCadEmpresa, idOperacao, mo.idMaquina, dtOper' +
      'acao, qtHoraKm, hr_kmInicial,  hr_kmAtual, vlHoraKm, vlTotalHora' +
      'Km, mo.idTipoAtividade, t.descTipoAtividade, obsOperacao, m.desc' +
      'Maquina FROM MaquinaOperacao mo LEFT JOIN TipoAtividade t ON mo.' +
      'idTipoAtividade = t.idTipoAtividade INNER JOIN Maquina m ON mo.i' +
      'dMaquina = m.idMaquina'
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
