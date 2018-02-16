object FrmRecalcRateio: TFrmRecalcRateio
  Left = 185
  Top = 217
  BorderIcons = [biSystemMenu]
  Caption = 'Rec'#225'lculo de rateios'
  ClientHeight = 444
  ClientWidth = 861
  Color = 15201011
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Icon.Data = {
    0000010001001010000001002000680400001600000028000000100000002000
    0000010020000000000000040000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000140700528A5832BA9C6E4EC1976E52BD987055BD98755CBD99765EBD9976
    5EBD98755CBD987156BD976F53BD9A6E50C1905D38BD1F0D015F000000000000
    0005DC8A4DF4FFD8A3FFFFDFB7FFFFE8C9FFFFF5DEFFFFFFEDFFFFFFF7FFFFFF
    F7FFFFFFEEFFFFF7E1FFFFEACDFFFFE1BBFFFFDAA7FFEC985AFF010000151E0A
    0022FFA864FFF6AB76FFEDA775FEF6D3BAFDFDEFE5FDF4CAACFDF7D1B8FDF7D3
    B8FDF5CAADFDFCEBE0FDF9DBC6FDEEA979FEF4AB76FFFFAB69FF2C1402376A2A
    001AF69650FFED9252FFECA370FAFCF3ECFAFEFAF6FAF5CAAAFAEFAC7DFAEEAE
    7EFAF3C3A0FAFEF7F3FAFDF7F3FAEFAC7EFAEA8F4FFFF69754FF893A012EB94A
    001AEF8940FFE98540FFF3C5A4FAFDF9F6FAFDF3ECFAFBE9DCFAE78E4DFAE687
    42FAF8E0CFFAFDF6EFFAFDF8F4FAF6D0B5FAE68641FFED8A43FFF868002EDD59
    001AEA7C2EFFE5813BFFF6D7BEFAFDF8F4FAFDF8F2FAF2C5A4FAECA06BFAECA4
    71FAF1B992FAFDF6F0FAFDF5F0FAF9E0CFFAE5833EFFE88035FFE45F002FE05C
    001AE98035FFE27A2DFFE78A46FAE99253FAE99153FAE4782BFAF3C7A6FAF7D7
    BFFAE47A2DFAE89152FAE89256FAE88D4DFAE4772BFFE7782AFFE15C0031DE59
    001AEFA46DFFEB9F6AFFE5833CFAE4772BFAE27223FAE3792DFAEB9B61FAEDA7
    76FAE9985DFAEA9960FAEA9B62FAE99658FAE78B48FFE5701DFFE1590031DD58
    001AF3B68AFFF3C6A7FFF1C09BFAF1BD97FAF1B78EFAF3C6A7FAFFFAF7FAFEFA
    F9FAF4CBADFAEFB98FFAF1BE98FAF1C19DFAF3C6A5FFF0AA77FFE1580031DC57
    001AF6CAAAFFF7D9C5FFF6D3B9FAF6D2B7FAF6CFB5FAFCF0E6FAFEFEFDFAFEFE
    FDFAFCEFE6FAF6CEB2FAF6D0B6FAF6D1B8FAF7D9C4FFF9D8C1FFE15C0032DE58
    001FFBE0CEFFFAEEE4FFF9E4D5FBF9E1D1FBFAE8DBFBFFFEFEFBFFFDFBFBFEFD
    FBFBFFFEFCFBFAE8DAFBF9E1D1FBF9E4D4FBFAEBE0FFFCECE0FFE15C0038DA52
    000CF9D7BEFFFFFFFFFFFDFFFEFFFDFDFBFFFDFCF9FFFEFFFFFFFFFFFFFFFFFF
    FFFFFEFFFEFFFDFCF9FFFDFDFBFFFDFFFDFFFFFFFFFFFBE6D4FFDC54001C0000
    0000E2691360F4C3A0FBF8D3B9FFF8CEB0FFF8CDB0FFF7CDADFFF7CBACFFF7CB
    ACFFF7CDADFFF8CDB0FFF8CEB0FFF8D3B8FFF6C9A6FFE3701E70000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    000000000000000000000000000000000000000000000000000000000000FFFF
    0000FFFF00008001000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000080010000FFFF0000}
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object CLabel5: TCLabel
    Left = 41
    Top = 317
    Width = 532
    Height = 108
    AutoSize = False
    Caption = 
      'Esse processo '#233' irrevers'#237'vel, portanto para evitar transtornos, ' +
      #233' recomendado que se realize um BACKUP antes de executar.'#13#13'N'#227'o s' +
      'eremos respons'#225'veis por eventuais problemas decorrentes de alter' +
      'a'#231#245'es nos planos de rateio.'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    WordWrap = True
  end
  object Bevel3: TBevel
    Left = 478
    Top = 37
    Width = 108
    Height = 124
    Style = bsRaised
  end
  object CLabel2: TCLabel
    Left = 12
    Top = 10
    Width = 41
    Height = 13
    Alignment = taRightJustify
    Caption = 'Empresa'
  end
  object Bevel1: TBevel
    Left = 0
    Top = 0
    Width = 861
    Height = 28
    Align = alTop
    ExplicitTop = -6
    ExplicitWidth = 703
  end
  object Bevel5: TBevel
    Left = 0
    Top = 28
    Width = 861
    Height = 3
    Align = alTop
    Shape = bsTopLine
    Style = bsRaised
    ExplicitLeft = -128
    ExplicitTop = 65
    ExplicitWidth = 703
  end
  object CLabel1: TCLabel
    Left = 21
    Top = 282
    Width = 124
    Height = 29
    Caption = 'ATEN'#199#195'O'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -24
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object CLabel6: TCLabel
    Left = 300
    Top = 336
    Width = 72
    Height = 20
    Caption = 'BACKUP'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object BtnRecalc: TBitBtn
    Left = 487
    Top = 50
    Width = 86
    Height = 25
    Caption = '&Recalcular'
    DoubleBuffered = True
    Glyph.Data = {
      36040000424D3604000000000000360000002800000010000000100000000100
      2000000000000004000000000000000000000000000000000000FFFFFF55FDFD
      FCFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFBFD9D999F55FEFEFEFE85B7
      85FF0F6F0FFF167416FF1A761AFF1A761AFF187818FF177917FF137D13FF0D7F
      0DFF0A7E0AFF077C07FF027B02FF007000FF7FB07FFFFAFAFAFCFFFFFFFF1183
      11FF1F8C1FFF2A912AFF2F932FFF2E942EFF2C962CFF299A29FF239E23FF1CA3
      1CFF15A415FF0DA40DFF059F05FF019101FF006F00FFFFFFFFFFFFFFFFFF198D
      19FF2C962CFF379C37FF3D9F3DFF3C9F3CFF39A139FFA3D6A3FFFFFFFFFF24AF
      24FF1CB11CFF13B213FF0AAD0AFF049F04FF027902FFFFFFFFFFFFFFFFFF2291
      22FF389C38FF43A243FF48A448FF45A545FF42A642FFFFFFFFFFFFFFFFFFFFFF
      FFFF21B521FF18B618FF0EB10EFF08A308FF057E05FFFFFFFFFFFFFFFFFF2C96
      2CFF42A042FF4CA54CFF4FA74FFF4CA74CFF46A746FF40AA40FFFFFFFFFFFFFF
      FFFFFFFFFFFF1AB31AFF14AF14FF0FA30FFF0B800BFFFFFFFFFFFFFFFFFF359A
      35FF4BA54BFF52A852FF53A953FF4EA84EFF49A749FF41A841FF38AA38FFFFFF
      FFFFFFFFFFFFFFFFFFFF19AC19FF18A218FF128212FFFFFFFFFFFFFFFFFF3F9F
      3FFF53A953FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF1F9E1FFF188118FFFFFFFFFFFFFFFFFF45A2
      45FF5AAC5AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF259A25FF1D7F1DFFFFFFFFFFFFFFFFFF4FA7
      4FFF63B163FF61AF61FF59AB59FF51A651FF48A248FF3F9F3FFF369C36FFFFFF
      FFFFFFFFFFFFFFFFFFFF269926FF2A972AFF217E21FFFFFFFFFFFFFFFFFF53A9
      53FF6CB66CFF68B468FF5EAD5EFF54A854FF4CA34CFF429F42FFFFFFFFFFFFFF
      FFFFFFFFFFFF299729FF2B982BFF2D952DFF237E23FFFFFFFFFFFFFFFFFF5EAF
      5EFF7ABD7AFF70B870FF63B063FF5AAB5AFF52A652FFFFFFFFFFFFFFFFFFFFFF
      FFFF339933FF309930FF309830FF2F942FFF237D23FFFFFFFFFFFFFFFFFF6BB5
      6BFF8DC68DFF80C080FF6FB76FFF67B267FF60AE60FFB4D9B4FFFFFFFFFF4CA5
      4CFF49A449FF41A141FF3A9D3AFF309530FF1E7A1EFFFFFFFFFFFFFFFFFF77BB
      77FF9DCF9DFF8CC68CFF79BC79FF70B870FF69B469FF65B265FF62B062FF5DAE
      5DFF56AB56FF4EA74EFF41A141FF2F942FFF197719FFFFFFFFFFFEFDFDFFB1D8
      B1FF76BB76FF67B367FF5BAD5BFF54A954FF4FA74FFF4AA44AFF4BA54BFF46A3
      46FF3FA03FFF3B9E3BFF319831FF238C23FF8ABB8AFFFFFFFEFBFFFFFF55FFFF
      FFFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFCFCFBCEB3AA55}
    Margin = 3
    ParentDoubleBuffered = False
    TabOrder = 0
    OnClick = BtnRecalcClick
  end
  object BtnSair: TBitBtn
    Left = 487
    Top = 128
    Width = 86
    Height = 25
    Caption = '&Sair'
    DoubleBuffered = True
    Glyph.Data = {
      36040000424D3604000000000000360000002800000010000000100000000100
      2000000000000004000000000000000000000000000000000000FFFFFF2FEEEC
      EBF5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3F3F4EB8782892FF5F4F4F58596
      DCFF0F30B5FF1636B8FF1A39B8FF1A39B7FF1839BBFF1739B9FF1337BDFF0D35
      C0FF0A32C0FF072FBEFF022CC0FF0026B6FF7F90D1FFEFEDEDE5FFFFFFFF1138
      D4FF1F44D9FF2A4DDAFF2F51DAFF2E51DBFF2C51DBFF2951DCFF244FDFFF1C4B
      E0FF1547E0FF0D42E0FF053AE0FF0132D7FF0026B5FFFFFFFFFFFFFFFFFF1941
      DEFF2C50E1FF3759E3FF4464E5FF7E94EDFFE2E8FBFFFFFFFFFFFFFFFFFFDCE4
      FBFF7192F1FF134BE9FF0A43E8FF0439E0FF022BBEFFFFFFFFFFFFFFFFFF2248
      DFFF385AE3FF4363E4FFA2B2F2FFFFFFFFFFBBC8F6FF728FEEFF6F8FEFFFBACA
      F8FFFFFFFFFF98B1F6FF0E48E9FF083EE1FF052EC1FFFFFFFFFFFFFFFFFF2C51
      E1FF4261E4FF8B9EEEFFFFFFFFFF8398EEFF4669E6FF4066E7FF3763E8FF2C5D
      E9FF7294F1FFFFFFFFFF6B8DF0FF0F43E1FF0B33C1FFFFFFFFFFFFFFFFFF3558
      E2FF4B68E5FFEBEFFCFFBBC6F5FF4E6DE6FF496AE6FFFFFFFFFFFFFFFFFF2D5C
      E8FF2456E8FFB6C7F8FFDBE3FBFF1848E0FF1238C2FFFFFFFFFFFFFFFFFF3F5F
      E4FF536FE7FFFFFFFFFF8195EDFF506DE6FF4868E5FFFFFFFFFFFFFFFFFF2C58
      E6FF2352E6FF6587EEFFFFFFFFFF1F4CDFFF183CC0FFFFFFFFFFFFFFFFFF4564
      E5FF5A75E8FFFFFFFFFF8195EDFF506CE6FF4867E5FFFFFFFFFFFFFFFFFF2C55
      E4FF2450E4FF6483ECFFFFFFFFFF254EDEFF1D3FBFFFFFFFFFFFFFFFFFFF4F6C
      E6FF637DE8FFEFF1FDFFB7C2F5FF516CE6FF4865E4FFFFFFFFFFFFFFFFFF2C52
      E2FF264EE2FFB0BFF5FFE0E6FBFF2A50DCFF2141BFFFFFFFFFFFFFFFFFFF536F
      E7FF6C85EAFF97A9F1FFFFFFFFFF8093EDFF4C67E5FF4261E4FF3A5BE3FF3054
      E2FF6C86EBFFFFFFFFFF728AECFF2D51DCFF2342BEFFFFFFFFFFFFFFFFFF5E79
      E8FF7A91ECFF7089EBFFA6B5F2FFFFFFFFFFB1BDF4FF7086EAFF6B83E9FFB0BD
      F4FFFFFFFFFF95A8F0FF3053E1FF2F52DBFF2342BDFFFFFFFFFFFFFFFFFF6B85
      EAFF8DA1EFFF8097EDFF6F88EBFF97A8F0FFEEF0FCFFFFFFFFFFFFFFFFFFE9ED
      FCFF899DEEFF4162E4FF3A5CE3FF3053DCFF1E3EBCFFFFFFFFFFFFFFFFFF778E
      ECFF9DAEF1FF8CA0EFFF7990ECFF7089EBFF6A83E9FF657EE9FF627CE9FF5D78
      E8FF5673E7FF4E6CE6FF4162E4FF2F52DBFF1939BAFFFFFFFFFFF5F0F0FDB2BF
      F4FF768DECFF6781EAFF5B76E8FF5470E7FF4F6CE6FF4A69E6FF4B69E5FF4665
      E5FF3F60E3FF3B5DE3FF3154E2FF2347D8FF8A9BDEFFFFFDF7DFFFFFFF2FFFFF
      FFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F1EFDFC3A2972F}
    Margin = 3
    ParentDoubleBuffered = False
    TabOrder = 1
    OnClick = BtnSairClick
  end
  object LookdescAbreviada: TCLookUp
    Left = 367
    Top = 7
    Width = 154
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
    ValidaCampoObrigatorio = False
    CampoObrigatorio = False
    LookUpTable = 'vCadEmpresaFiscal'
    ReturnField = 'descAbreviada'
  end
  object LookdescCadEmpresa: TCLookUp
    Left = 156
    Top = 7
    Width = 205
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
    CampoObrigatorio = False
    LookUpTable = 'vCadEmpresaFiscal'
    ReturnField = 'descCadEmpresa'
  end
  object DBEidCadEmpresa: TCDBEdit
    Left = 111
    Top = 7
    Width = 39
    Height = 19
    TabStop = False
    BevelKind = bkTile
    BorderStyle = bsNone
    DataField = 'idCadEmpresa'
    DataSource = dsPadrao
    TabOrder = 4
    DecimalControl = True
    KeyMode = kmNormal
  end
  object DBEidEmpresa: TCDBEdit
    Left = 59
    Top = 7
    Width = 46
    Height = 19
    TabStop = False
    BevelKind = bkTile
    BorderStyle = bsNone
    DataField = 'idEmpresa'
    DataSource = dsPadrao
    TabOrder = 5
    DecimalControl = True
    KeyMode = kmNormal
  end
  object CGroupBox1: TCGroupBox
    Left = 8
    Top = 37
    Width = 457
    Height = 124
    TabOrder = 6
    object CLabel3: TCLabel
      Left = 34
      Top = 23
      Width = 38
      Height = 13
      Alignment = taRightJustify
      Caption = 'Data de'
    end
    object CLabel4: TCLabel
      Left = 165
      Top = 23
      Width = 15
      Height = 13
      Alignment = taRightJustify
      Caption = 'at'#233
    end
    object CLabel12: TCLabel
      Left = 41
      Top = 73
      Width = 31
      Height = 13
      Alignment = taRightJustify
      Caption = 'Rateio'
    end
    object CLabel23: TCLabel
      Left = 47
      Top = 48
      Width = 25
      Height = 13
      Alignment = taRightJustify
      Caption = 'Safra'
    end
    object DBEdtInicial: TCDBEdit
      Left = 78
      Top = 20
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
      Left = 186
      Top = 20
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
    object LookRateio: TCLookUp
      Left = 132
      Top = 70
      Width = 314
      Height = 19
      Alignment = taLeftJustify
      BevelInner = bvSpace
      BevelOuter = bvLowered
      Color = 14149350
      ParentBackground = False
      TabOrder = 5
      Key.Strings = (
        'idEmpresa'
        'idRateio')
      LookUpKey.Strings = (
        'idEmpresa'
        'idRateio')
      ClientDataSet = cdsLookUp
      DataSource = dsPadrao
      ValidaCampoObrigatorio = True
      CampoObrigatorio = True
      LookUpTable = 'Rateio'
      ReturnField = 'descRateio'
    end
    object DBEidRateio: TCDBEdit
      Left = 78
      Top = 70
      Width = 48
      Height = 19
      BevelKind = bkTile
      BorderStyle = bsNone
      DataField = 'idRateio'
      DataSource = dsPadrao
      TabOrder = 4
      Find = dmFind.FindRateio
      AcaoCad = frmPrincipal.actCadPlanoRateio
      DecimalControl = True
      KeyMode = kmNormal
    end
    object LookSafra: TCLookUp
      Left = 132
      Top = 45
      Width = 314
      Height = 19
      Alignment = taLeftJustify
      BevelInner = bvSpace
      BevelOuter = bvLowered
      Color = 14149350
      ParentBackground = False
      TabOrder = 3
      Key.Strings = (
        'idEmpresa'
        'idSafra')
      LookUpKey.Strings = (
        'idEmpresa'
        'idSafra')
      ClientDataSet = cdsLookUp
      DataSource = dsPadrao
      ValidaCampoObrigatorio = True
      CampoObrigatorio = True
      LookUpTable = 'Safra'
      ReturnField = 'descSafra'
    end
    object DBEidSafra: TCDBEdit
      Left = 78
      Top = 45
      Width = 48
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
    object DBCKconsolidafilial: TCDBCheckBox
      Left = 212
      Top = 95
      Width = 127
      Height = 17
      Caption = 'Consolida Filiais?'
      DataField = 'consolidafilial'
      DataSource = dsPadrao
      TabOrder = 7
      ValueChecked = 'S'
      ValueUnchecked = 'N'
    end
    object DBCKconsolidaemp: TCDBCheckBox
      Left = 79
      Top = 95
      Width = 127
      Height = 17
      Caption = 'Consolida Empresas?'
      DataField = 'consolidaemp'
      DataSource = dsPadrao
      TabOrder = 6
      ValueChecked = 'S'
      ValueUnchecked = 'N'
    end
  end
  object CGroupBox2: TCGroupBox
    Left = 8
    Top = 167
    Width = 578
    Height = 98
    Caption = 'Op'#231#245'es de Rec'#225'lculo'
    TabOrder = 7
    object DBCKmovCaixa: TCDBCheckBox
      Left = 15
      Top = 23
      Width = 127
      Height = 17
      Caption = 'Movimentos do Caixa?'
      DataField = 'movCaixa'
      DataSource = dsPadrao
      TabOrder = 0
      ValueChecked = 'S'
      ValueUnchecked = 'N'
    end
    object DBCKmovConta: TCDBCheckBox
      Left = 184
      Top = 23
      Width = 138
      Height = 17
      Caption = 'Movimentos Banc'#225'rios?'
      DataField = 'movConta'
      DataSource = dsPadrao
      TabOrder = 1
      ValueChecked = 'S'
      ValueUnchecked = 'N'
    end
    object DBCKnfe: TCDBCheckBox
      Left = 375
      Top = 23
      Width = 146
      Height = 17
      Caption = 'Notas Fiscais de Entrada?'
      DataField = 'nfe'
      DataSource = dsPadrao
      TabOrder = 2
      ValueChecked = 'S'
      ValueUnchecked = 'N'
    end
    object DBCKprevisaoRec: TCDBCheckBox
      Left = 15
      Top = 46
      Width = 127
      Height = 17
      Caption = 'Previs'#245'es a Receber?'
      DataField = 'previsaoRec'
      DataSource = dsPadrao
      TabOrder = 3
      ValueChecked = 'S'
      ValueUnchecked = 'N'
    end
    object DBCKprevisaoPag: TCDBCheckBox
      Left = 184
      Top = 46
      Width = 138
      Height = 17
      Caption = 'Previs'#245'es a Pagar?'
      DataField = 'previsaoPag'
      DataSource = dsPadrao
      TabOrder = 4
      ValueChecked = 'S'
      ValueUnchecked = 'N'
    end
    object DBCKtituloRec: TCDBCheckBox
      Left = 375
      Top = 46
      Width = 146
      Height = 17
      Caption = 'T'#237'tulos a Receber?'
      DataField = 'tituloRec'
      DataSource = dsPadrao
      TabOrder = 5
      ValueChecked = 'S'
      ValueUnchecked = 'N'
    end
    object DBCKmaqOperacao: TCDBCheckBox
      Left = 375
      Top = 69
      Width = 146
      Height = 17
      Caption = 'Opera'#231#245'es de M'#225'quinas?'
      DataField = 'maqOperacao'
      DataSource = dsPadrao
      TabOrder = 8
      ValueChecked = 'S'
      ValueUnchecked = 'N'
    end
    object DBCKmaqManutencao: TCDBCheckBox
      Left = 184
      Top = 69
      Width = 161
      Height = 17
      Caption = 'Manuten'#231#245'es de M'#225'quinas?'
      DataField = 'maqManutencao'
      DataSource = dsPadrao
      TabOrder = 7
      ValueChecked = 'S'
      ValueUnchecked = 'N'
    end
    object DBCKtituloPag: TCDBCheckBox
      Left = 15
      Top = 69
      Width = 127
      Height = 17
      Caption = 'T'#237'tulos a Pagar?'
      DataField = 'tituloPag'
      DataSource = dsPadrao
      TabOrder = 6
      ValueChecked = 'S'
      ValueUnchecked = 'N'
    end
  end
  object cdsPadrao: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 728
    Top = 24
    object cdsPadraoidEmpresa: TIntegerField
      FieldName = 'idEmpresa'
    end
    object cdsPadraoidCadEmpresa: TIntegerField
      FieldName = 'idCadEmpresa'
    end
    object cdsPadraodtInicial: TDateField
      FieldName = 'dtInicial'
    end
    object cdsPadraodtFinal: TDateField
      FieldName = 'dtFinal'
    end
    object cdsPadraoidRateio: TIntegerField
      FieldName = 'idRateio'
    end
    object cdsPadraoidSafra: TIntegerField
      FieldName = 'idSafra'
    end
    object cdsPadraoconsolidaemp: TStringField
      FieldName = 'consolidaemp'
      Size = 1
    end
    object cdsPadraoconsolidafilial: TStringField
      FieldName = 'consolidafilial'
      Size = 1
    end
    object cdsPadraomovCaixa: TStringField
      FieldName = 'movCaixa'
      Size = 1
    end
    object cdsPadraomovConta: TStringField
      FieldName = 'movConta'
      Size = 1
    end
    object cdsPadraonfe: TStringField
      FieldName = 'nfe'
      Size = 1
    end
    object cdsPadraoprevisaoPag: TStringField
      FieldName = 'previsaoPag'
      Size = 1
    end
    object cdsPadraoprevisaoRec: TStringField
      FieldName = 'previsaoRec'
      Size = 1
    end
    object cdsPadraotituloPag: TStringField
      FieldName = 'tituloPag'
      Size = 1
    end
    object cdsPadraotituloRec: TStringField
      FieldName = 'tituloRec'
      Size = 1
    end
    object cdsPadraomaqManutencao: TStringField
      FieldName = 'maqManutencao'
      Size = 1
    end
    object cdsPadraomaqOperacao: TStringField
      FieldName = 'maqOperacao'
      Size = 1
    end
  end
  object dsPadrao: TDataSource
    DataSet = cdsPadrao
    Left = 792
    Top = 24
  end
  object cdsLookUp: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspLookUp'
    Left = 664
    Top = 24
  end
  object dspLookUp: TDataSetProvider
    DataSet = dmPadrao.sdsLookup
    Options = [poPropogateChanges, poAllowCommandText]
    Left = 600
    Top = 24
  end
end
