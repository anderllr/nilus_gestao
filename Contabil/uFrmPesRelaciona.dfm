inherited FrmPesRelaciona: TFrmPesRelaciona
  Left = 110
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Pesquisa Relacionamentos Cont'#225'beis'
  ClientHeight = 452
  ClientWidth = 1250
  Position = poDesigned
  ExplicitWidth = 1266
  ExplicitHeight = 490
  PixelsPerInch = 96
  TextHeight = 13
  object CLabel3: TCLabel [0]
    Left = 395
    Top = 84
    Width = 41
    Height = 13
    Alignment = taRightJustify
    Caption = 'Hist'#243'rico'
    Transparent = True
  end
  object CLabel4: TCLabel [1]
    Left = 405
    Top = 105
    Width = 31
    Height = 13
    Alignment = taRightJustify
    Caption = 'D'#233'bito'
    Transparent = True
  end
  object CLabel5: TCLabel [2]
    Left = 401
    Top = 128
    Width = 35
    Height = 13
    Alignment = taRightJustify
    Caption = 'Cr'#233'dito'
    Transparent = True
  end
  object CLabel11: TCLabel [3]
    Left = 47
    Top = 128
    Width = 48
    Height = 13
    Alignment = taRightJustify
    Caption = 'Resultado'
    Transparent = True
  end
  object CLabel13: TCLabel [4]
    Left = 51
    Top = 105
    Width = 44
    Height = 13
    Alignment = taRightJustify
    Caption = 'Gerencial'
    Transparent = True
  end
  inherited GrupoGrid: TCGroupBox
    Top = 182
    Width = 1250
    Height = 270
    TabOrder = 2
    ExplicitTop = 182
    ExplicitWidth = 1250
    ExplicitHeight = 270
    inherited DBGrid: TCDBGrid
      Width = 1246
      Height = 253
      Columns = <
        item
          Expanded = False
          FieldName = 'descMovFinanceira'
          Title.Caption = 'Mov. Financeira'
          Width = 238
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'descGerencial'
          Title.Caption = 'Gerencial'
          Width = 188
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'descResultado'
          Title.Caption = 'Resultado'
          Width = 161
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'descContHistorico'
          Title.Caption = 'Historico'
          Width = 148
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'cdPlanoContaDeb'
          Title.Caption = 'D'#233'bito'
          Width = 37
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'cdPlanoContaCre'
          Title.Caption = 'Cr'#233'dito'
          Width = 42
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'tpPlanoConta'
          Title.Caption = 'Origem'
          Width = 65
          Visible = True
        end>
    end
  end
  inherited PanBotoes: TCPanelGradient
    Top = 149
    Width = 1250
    ExplicitTop = 149
    ExplicitWidth = 1250
    inherited BtnExecutar: TCBitBtn
      Left = 13
      ExplicitLeft = 13
    end
    inherited BtnFechar: TCBitBtn
      Left = 1169
      Top = 6
      Anchors = [akRight, akBottom]
      ExplicitLeft = 1169
      ExplicitTop = 6
    end
  end
  inherited PanTopo: TCPanelGradient
    Width = 1250
    Height = 149
    TabOrder = 0
    ExplicitWidth = 1250
    ExplicitHeight = 149
    object CLabel10: TCLabel [0]
      Left = 19
      Top = 84
      Width = 76
      Height = 13
      Alignment = taRightJustify
      Caption = 'Mov. Financeira'
      Transparent = True
    end
    object CLabel6: TCLabel [1]
      Left = 395
      Top = 84
      Width = 41
      Height = 13
      Alignment = taRightJustify
      Caption = 'Hist'#243'rico'
      Transparent = True
    end
    object CLabel7: TCLabel [2]
      Left = 405
      Top = 105
      Width = 31
      Height = 13
      Alignment = taRightJustify
      Caption = 'D'#233'bito'
      Transparent = True
    end
    object CLabel8: TCLabel [3]
      Left = 401
      Top = 128
      Width = 35
      Height = 13
      Alignment = taRightJustify
      Caption = 'Cr'#233'dito'
      Transparent = True
    end
    object CLabel9: TCLabel [4]
      Left = 47
      Top = 128
      Width = 48
      Height = 13
      Alignment = taRightJustify
      Caption = 'Resultado'
      Transparent = True
    end
    object CLabel12: TCLabel [5]
      Left = 51
      Top = 105
      Width = 44
      Height = 13
      Alignment = taRightJustify
      Caption = 'Gerencial'
      Transparent = True
    end
    inherited PanEmpresa: TCPanelGradient
      Width = 1248
      Height = 30
      ExplicitWidth = 1248
      ExplicitHeight = 30
      inherited lookidCnpjCpf: TCLookUp
        Left = 595
        Top = 5
        ExplicitLeft = 595
        ExplicitTop = 5
      end
    end
    object DBEidMovFinanceira: TCDBEdit
      Left = 101
      Top = 81
      Width = 48
      Height = 19
      BevelKind = bkTile
      BorderStyle = bsNone
      DataField = 'idMovFinanceira'
      DataSource = dsPadrao
      TabOrder = 1
      Find = FindMovFinanceira
      AcaoCad = frmPrincipal.actCadMovFinanceira
      DecimalControl = True
      KeyMode = kmNormal
    end
    object DBEidHistorico: TCDBEdit
      Left = 442
      Top = 81
      Width = 48
      Height = 19
      BevelKind = bkTile
      BorderStyle = bsNone
      DataField = 'idContHistorico'
      DataSource = dsPadrao
      TabOrder = 4
      Find = FindContHistorico
      DecimalControl = True
      KeyMode = kmNormal
    end
    object LookHistorico: TCLookUp
      Left = 493
      Top = 81
      Width = 229
      Height = 19
      Alignment = taLeftJustify
      BevelInner = bvSpace
      BevelOuter = bvLowered
      Color = 14149350
      ParentBackground = False
      TabOrder = 7
      Key.Strings = (
        'idContHistorico')
      LookUpKey.Strings = (
        'idContHistorico')
      ClientDataSet = cdsLookUp
      DataSource = dsPadrao
      ValidaCampoObrigatorio = False
      CampoObrigatorio = True
      LookUpTable = 'ContHistorico'
      ReturnField = 'descContHistorico'
    end
    object DBEcdPlanoContaDeb: TCDBEdit
      Left = 442
      Top = 103
      Width = 48
      Height = 19
      BevelKind = bkTile
      BorderStyle = bsNone
      DataField = 'cdPlanoContaDeb'
      DataSource = dsPadrao
      TabOrder = 5
      Find = FindPlanoContaDeb
      DecimalControl = True
      KeyMode = kmNormal
    end
    object LookdescPlanoContaDeb: TCLookUp
      Left = 493
      Top = 103
      Width = 229
      Height = 19
      Alignment = taLeftJustify
      BevelInner = bvSpace
      BevelOuter = bvLowered
      Color = 14149350
      ParentBackground = False
      TabOrder = 8
      Key.Strings = (
        'idEmpresa'
        'cdPlanoContaDeb')
      LookUpKey.Strings = (
        'cdPlanoConta'
        'tpPlanoConta')
      AlternateSQL.Strings = (
        
          'SELECT descPlanoConta FROM vPlanoConta WHERE tpPlanoConta = [EDt' +
          'pPlanoConta]  AND  idEmpresa = ? AND cdPlanoConta = ?')
      ClientDataSet = cdsLookUp
      DataSource = dsPadrao
      ValidaCampoObrigatorio = False
      CampoObrigatorio = True
      LookUpTable = 'vPlanoConta'
      ReturnField = 'descPlanoConta'
    end
    object LookdescPlanoContaCre: TCLookUp
      Left = 493
      Top = 125
      Width = 229
      Height = 19
      Alignment = taLeftJustify
      BevelInner = bvSpace
      BevelOuter = bvLowered
      Color = 14149350
      ParentBackground = False
      TabOrder = 9
      Key.Strings = (
        'idEmpresa'
        'cdPlanoContaCre')
      LookUpKey.Strings = (
        'cdPlanoConta'
        'tpPlanoConta')
      AlternateSQL.Strings = (
        
          'SELECT descPlanoConta FROM vPlanoConta WHERE tpPlanoConta = [EDt' +
          'pPlanoConta]  AND  idEmpresa = ? AND cdPlanoConta = ?')
      ClientDataSet = cdsLookUp
      DataSource = dsPadrao
      ValidaCampoObrigatorio = False
      CampoObrigatorio = True
      LookUpTable = 'vPlanoConta'
      ReturnField = 'descPlanoConta'
    end
    object DBEcdPlanoContaCre: TCDBEdit
      Left = 442
      Top = 125
      Width = 48
      Height = 19
      BevelKind = bkTile
      BorderStyle = bsNone
      DataField = 'cdPlanoContaCre'
      DataSource = dsPadrao
      TabOrder = 6
      Find = FindPlanoContaCre
      DecimalControl = True
      KeyMode = kmNormal
    end
    object LookGerencial: TCLookUp
      Left = 152
      Top = 103
      Width = 234
      Height = 19
      Alignment = taLeftJustify
      BevelInner = bvSpace
      BevelOuter = bvLowered
      Color = 14149350
      ParentBackground = False
      TabOrder = 10
      Key.Strings = (
        'idGerencial')
      LookUpKey.Strings = (
        'idGerencial')
      AlternateSQL.Strings = (
        
          'SELECT DISTINCT descGerencial FROM vGerencial WHERE StGerencial ' +
          '= '#39'ATIVO'#39' AND tpGerencial = '#39'SAIDAS'#39' AND idEmpresa = [DBEidEmpre' +
          'sa] AND idGerencial = ?')
      ClientDataSet = cdsLookUp
      DataSource = dsPadrao
      ValidaCampoObrigatorio = False
      CampoObrigatorio = True
      LookUpTable = 'vGerencial'
      ReturnField = 'descGerencial'
    end
    object LookResultado: TCLookUp
      Left = 152
      Top = 125
      Width = 234
      Height = 19
      Alignment = taLeftJustify
      BevelInner = bvSpace
      BevelOuter = bvLowered
      Color = 14149350
      ParentBackground = False
      TabOrder = 11
      Key.Strings = (
        'idResultado')
      LookUpKey.Strings = (
        'idResultado')
      AlternateSQL.Strings = (
        
          'SELECT descResultado FROM Resultado WHERE idEmpresa = [DBEidEmpr' +
          'esa] AND idResultado = ?')
      ClientDataSet = cdsLookUp
      DataSource = dsPadrao
      ValidaCampoObrigatorio = False
      CampoObrigatorio = True
      LookUpTable = 'Resultado'
      ReturnField = 'descResultado'
    end
    object DBEidResultado: TCDBEdit
      Left = 101
      Top = 125
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
    object DBEidGerencial: TCDBEdit
      Left = 101
      Top = 103
      Width = 48
      Height = 19
      BevelKind = bkTile
      BorderStyle = bsNone
      DataField = 'idGerencial'
      DataSource = dsPadrao
      TabOrder = 2
      Find = FindGerencial
      DecimalControl = True
      KeyMode = kmNormal
    end
    object LookMovFinanceira: TCLookUp
      Left = 152
      Top = 81
      Width = 234
      Height = 19
      Alignment = taLeftJustify
      BevelInner = bvSpace
      BevelOuter = bvLowered
      Color = 14149350
      ParentBackground = False
      TabOrder = 12
      Key.Strings = (
        'idMovFinanceira')
      LookUpKey.Strings = (
        'idMovFinanceira')
      ClientDataSet = cdsLookUp
      DataSource = dsPadrao
      ValidaCampoObrigatorio = True
      CampoObrigatorio = True
      LookUpTable = 'MovFinanceira'
      ReturnField = 'descMovFinanceira'
    end
    object DBRGtpPlanoConta: TCDBRadioGroup
      Left = 19
      Top = 30
      Width = 703
      Height = 45
      Caption = 'Origem'
      Columns = 2
      DataField = 'tpPlanoConta'
      DataSource = dsPadrao
      DragCursor = crArrow
      Items.Strings = (
        '&Fiscal'
        '&Gerencial')
      ParentBackground = True
      TabOrder = 13
      Values.Strings = (
        'F'
        'G')
      OnChange = DBRGtpPlanoContaChange
    end
    object EDtpPlanoConta: TCEdit
      Left = 728
      Top = 124
      Width = 57
      Height = 19
      BorderStyle = bsNone
      BevelKind = bkTile
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 14
      Text = 'F'
      Visible = False
      DataType = ftUnknown
      KeyMode = kmNormal
      Decimals = 0
    end
  end
  inherited imgIcones: TImageList
    Bitmap = {
      494C010102000400240010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
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
  inherited cdsPadrao: TClientDataSet
    object cdsPadraoidMovFinanceira: TIntegerField
      FieldName = 'idMovFinanceira'
    end
    object cdsPadraoidGerencial: TIntegerField
      FieldName = 'idGerencial'
    end
    object cdsPadraoidResultado: TIntegerField
      FieldName = 'idResultado'
    end
    object cdsPadraocdPlanoContaDeb: TIntegerField
      FieldName = 'cdPlanoContaDeb'
    end
    object cdsPadraotpPlanoConta: TStringField
      FieldName = 'tpPlanoConta'
    end
    object cdsPadraocdPlanoContaCre: TIntegerField
      FieldName = 'cdPlanoContaCre'
    end
    object cdsPadraoidContHistorico: TIntegerField
      FieldName = 'idContHistorico'
    end
  end
  inherited cdsGrid: TClientDataSet
    CommandText = 'SELECT * FROM vPesRelaciona WHERE 1=2'
    object cdsGrididGerencial: TIntegerField
      FieldName = 'idGerencial'
      Required = True
    end
    object cdsGrididMovFinanceira: TIntegerField
      FieldName = 'idMovFinanceira'
      Required = True
    end
    object cdsGrididEmpresa: TIntegerField
      FieldName = 'idEmpresa'
      Required = True
    end
    object cdsGriddescMovFinanceira: TStringField
      FieldName = 'descMovFinanceira'
      Required = True
      FixedChar = True
      Size = 50
    end
    object cdsGrididResultado: TIntegerField
      FieldName = 'idResultado'
      Required = True
    end
    object cdsGrididContHistorico: TIntegerField
      FieldName = 'idContHistorico'
      Required = True
    end
    object cdsGriddescContHistorico: TStringField
      FieldName = 'descContHistorico'
      FixedChar = True
      Size = 250
    end
    object cdsGridcdPlanoContaDeb: TIntegerField
      FieldName = 'cdPlanoContaDeb'
    end
    object cdsGridcdPlanoContaCre: TIntegerField
      FieldName = 'cdPlanoContaCre'
    end
    object cdsGriddescGerencial: TStringField
      FieldName = 'descGerencial'
      Required = True
      FixedChar = True
      Size = 50
    end
    object cdsGriddescResultado: TStringField
      FieldName = 'descResultado'
      Required = True
      FixedChar = True
      Size = 50
    end
    object cdsGridtpPlanoConta: TStringField
      FieldName = 'tpPlanoConta'
      Required = True
      FixedChar = True
      Size = 9
    end
    object cdsGridclassificacao: TStringField
      FieldName = 'classificacao'
      Required = True
      Size = 30
    end
  end
  inherited dsGrid: TDataSource
    Left = 232
  end
  inherited sdsGrid: TSQLDataSet
    CommandText = 'SELECT * FROM vPesRelaciona WHERE 1=2'
  end
  inherited FindEmpresa: TCFind
    Left = 704
    Top = 8
  end
  object FindMovFinanceira: TCFind
    SelectClause.Strings = (
      'SELECT  idMovFinanceira, descMovFinanceira FROM MovFinanceira')
    JoinClause.Strings = (
      'WHERE StMovFinanceira = '#39'ATIVO'#39)
    OrderByClause.Strings = (
      'ORDER BY descMovFinanceira')
    FindField = 'descMovFinanceira'
    SQLConnection = dmPadrao.dbConexao
    ValueField = 'idMovFinanceira'
    CarregaDados = True
    CollumNames.Strings = (
      'C'#243'digo'
      'Descri'#231#227'o')
    TypeFind = fFindNormal
    Left = 816
    Top = 42
  end
  object FindGerencial: TCFind
    SelectClause.Strings = (
      
        'SELECT DISTINCT idGerencial, classificacao, descGerencial FROM v' +
        'Gerencial')
    JoinClause.Strings = (
      'WHERE StGerencial = '#39'ATIVO'#39' AND idEmpresa = [DBEidEmpresa]')
    OrderByClause.Strings = (
      'ORDER BY descGerencial')
    FindField = 'descGerencial'
    SQLConnection = dmPadrao.dbConexao
    ValueField = 'idGerencial'
    CarregaDados = True
    CollumNames.Strings = (
      'C'#243'digo'
      'Classifica'#231#227'o'
      'Descri'#231#227'o')
    TypeFind = fFindNormal
    Left = 784
    Top = 42
  end
  object FindResultado: TCFind
    SelectClause.Strings = (
      'SELECT idResultado, descResultado, StResultado FROM Resultado')
    JoinClause.Strings = (
      'WHERE stResultado = '#39'ATIVO'#39' AND idEmpresa = [DBEidEmpresa]')
    OrderByClause.Strings = (
      'ORDER BY descResultado')
    FindField = 'descResultado'
    SQLConnection = dmPadrao.dbConexao
    ValueField = 'idResultado'
    CarregaDados = True
    CollumNames.Strings = (
      'C'#243'digo'
      'Descri'#231#227'o'
      'Status')
    TypeFind = fFindNormal
    Left = 848
    Top = 42
  end
  object FindPlanoContaCre: TCFind
    SelectClause.Strings = (
      
        'SELECT DISTINCT cdPlanoConta, classificacao, descPlanoConta FROM' +
        ' vPlanoConta')
    JoinClause.Strings = (
      
        'WHERE stPlanoConta = '#39'ATIVO'#39' AND tpPlanoConta = [EDtpPlanoConta]' +
        ' AND idEmpresa = [DBEidEmpresa] AND naturezaPlanoConta = '#39'C'#39)
    OrderByClause.Strings = (
      'ORDER BY descPlanoConta')
    FindField = 'descPlanoConta'
    SQLConnection = dmPadrao.dbConexao
    ValueField = 'cdPlanoConta'
    CarregaDados = True
    CollumNames.Strings = (
      'C'#243'digo'
      'Classifica'#231#227'o'
      'Descri'#231#227'o')
    TypeFind = fFindNormal
    Left = 784
    Top = 74
  end
  object FindContHistorico: TCFind
    SelectClause.Strings = (
      
        'SELECT idContHistorico, descContHistorico, stContHistorico FROM ' +
        'ContHistorico')
    JoinClause.Strings = (
      'WHERE stContHistorico = '#39'ATIVO'#39)
    OrderByClause.Strings = (
      'ORDER BY descContHistorico')
    FindField = 'descContHistorico'
    SQLConnection = dmPadrao.dbConexao
    ValueField = 'idContHistorico'
    CarregaDados = True
    CollumNames.Strings = (
      'C'#243'digo'
      'Descri'#231#227'o'
      'Status')
    TypeFind = fFindNormal
    Left = 752
    Top = 42
  end
  object FindPlanoContaDeb: TCFind
    SelectClause.Strings = (
      
        'SELECT DISTINCT cdPlanoConta, classificacao, descPlanoConta FROM' +
        ' vPlanoConta')
    JoinClause.Strings = (
      
        'WHERE stPlanoConta = '#39'ATIVO'#39' AND tpPlanoConta = [EDtpPlanoConta]' +
        ' AND idEmpresa = [DBEidEmpresa] AND naturezaPlanoConta = '#39'D'#39)
    OrderByClause.Strings = (
      'ORDER BY descPlanoConta')
    FindField = 'descPlanoConta'
    SQLConnection = dmPadrao.dbConexao
    ValueField = 'cdPlanoConta'
    CarregaDados = True
    CollumNames.Strings = (
      'C'#243'digo'
      'Classifica'#231#227'o'
      'Descri'#231#227'o')
    TypeFind = fFindNormal
    Left = 752
    Top = 74
  end
  object FindContRelaciona: TCFind
    SelectClause.Strings = (
      
        'SELECT DISTINCT cr.idEmpresa,emp.descCadEmpresa FROM ContRelacio' +
        'na cr, vCadEmpresaContabil emp')
    JoinClause.Strings = (
      'WHERE cr.idEmpresa = emp.idEmpresa')
    OrderByClause.Strings = (
      'ORDER BY emp.descCadEmpresa')
    FindField = 'idEmpresa'
    SQLConnection = dmPadrao.dbConexao
    ValueField = 'idEmpresa'
    CarregaDados = True
    CollumNames.Strings = (
      'C'#243'digo'
      'Descri'#231#227'o')
    TypeFind = fFindNormal
    Left = 816
    Top = 74
  end
end
