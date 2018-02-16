inherited frmPesNotas: TfrmPesNotas
  Caption = 'frmPesNotas'
  ClientHeight = 452
  ClientWidth = 901
  ExplicitWidth = 917
  ExplicitHeight = 491
  PixelsPerInch = 96
  TextHeight = 13
  inherited GrupoGrid: TCGroupBox
    Top = 210
    Width = 901
    Height = 242
    TabOrder = 2
    ExplicitTop = 210
    ExplicitWidth = 901
    ExplicitHeight = 242
    inherited DBGrid: TCDBGrid
      Width = 897
      Height = 225
      Columns = <
        item
          Expanded = False
          FieldName = 'idEmpresa'
          Title.Caption = 'Emp.'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'idCadEmpresa'
          Title.Caption = 'Fil.'
          Width = 25
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'idDocSerie'
          Title.Caption = 'S'#233'rie'
          Width = 40
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'nrNota'
          Title.Caption = 'Nota'
          Width = 60
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'descricao'
          Title.Caption = 'Nome'
          Width = 350
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'status'
          Title.Caption = 'Status'
          Width = 100
          Visible = True
        end>
    end
  end
  inherited PanBotoes: TCPanelGradient
    Top = 177
    Width = 901
    ExplicitTop = 177
    ExplicitWidth = 901
    inherited BtnExecutar: TCBitBtn
      Left = 6
      Top = 2
      ExplicitLeft = 6
      ExplicitTop = 2
    end
    inherited BtnFechar: TCBitBtn
      Left = 577
      ExplicitLeft = 577
    end
  end
  inherited PanTopo: TCPanelGradient
    Width = 901
    Height = 177
    TabOrder = 0
    ExplicitWidth = 901
    ExplicitHeight = 177
    object LblCad: TCLabel [0]
      Left = 21
      Top = 59
      Width = 33
      Height = 13
      Alignment = taRightJustify
      Caption = 'Cliente'
      Transparent = True
    end
    object CLabel4: TCLabel [1]
      Left = 30
      Top = 81
      Width = 24
      Height = 13
      Alignment = taRightJustify
      Caption = 'S'#233'rie'
      Transparent = True
    end
    object CLabel7: TCLabel [2]
      Left = 420
      Top = 59
      Width = 38
      Height = 13
      Alignment = taRightJustify
      Caption = 'Data de'
      Transparent = True
    end
    object CLabel5: TCLabel [3]
      Left = 550
      Top = 59
      Width = 16
      Height = 13
      Alignment = taRightJustify
      Caption = 'at'#233
      Transparent = True
    end
    object CLabel6: TCLabel [4]
      Left = 420
      Top = 81
      Width = 38
      Height = 13
      Alignment = taRightJustify
      Caption = 'Nota de'
      Transparent = True
    end
    object CLabel8: TCLabel [5]
      Left = 550
      Top = 81
      Width = 16
      Height = 13
      Alignment = taRightJustify
      Caption = 'at'#233
      Transparent = True
    end
    object CLabel1: TCLabel [6]
      Left = 14
      Top = 106
      Width = 41
      Height = 13
      Alignment = taRightJustify
      Caption = 'Prod. de'
      Transparent = True
    end
    object lblMaquina: TCLabel [7]
      Left = 14
      Top = 131
      Width = 40
      Height = 13
      Alignment = taRightJustify
      Caption = 'M'#225'quina'
    end
    object lblGerencial: TCLabel [8]
      Left = 10
      Top = 156
      Width = 44
      Height = 13
      Alignment = taRightJustify
      Caption = 'Gerencial'
    end
    object CLabel2: TCLabel [9]
      Left = 354
      Top = 106
      Width = 16
      Height = 13
      Alignment = taRightJustify
      Caption = 'at'#233
      Transparent = True
    end
    inherited PanEmpresa: TCPanelGradient
      Width = 899
      ExplicitWidth = 899
      object DBCKconsolida: TCDBCheckBox
        Left = 401
        Top = 29
        Width = 112
        Height = 17
        Caption = 'Consolida filiais?'
        Color = 15201011
        DataField = 'consolida'
        DataSource = dsPadrao
        ParentColor = False
        TabOrder = 6
        ValueChecked = 'S'
        ValueUnchecked = 'N'
      end
    end
    object DBEidCliente: TCDBEdit
      Left = 60
      Top = 56
      Width = 80
      Height = 19
      BevelKind = bkTile
      BorderStyle = bsNone
      DataField = 'idCliente'
      DataSource = dsPadrao
      TabOrder = 1
      OnKeyDown = DBEidClienteKeyDown
      DecimalControl = True
      KeyMode = kmNormal
    end
    object DBEidCadCliente: TCDBEdit
      Left = 146
      Top = 56
      Width = 19
      Height = 19
      BevelKind = bkTile
      BorderStyle = bsNone
      DataField = 'idCadCliente'
      DataSource = dsPadrao
      TabOrder = 2
      OnKeyDown = DBEidClienteKeyDown
      DecimalControl = True
      KeyMode = kmNormal
    end
    object LookClienteFiscal: TCLookUp
      Left = 171
      Top = 56
      Width = 243
      Height = 19
      Alignment = taLeftJustify
      BevelInner = bvSpace
      BevelOuter = bvLowered
      Color = 14149350
      ParentBackground = False
      TabOrder = 3
      Key.Strings = (
        'idCliente'
        'idCadCliente')
      LookUpKey.Strings = (
        'idCliente'
        'idCadCliente')
      ClientDataSet = cdsLookUp
      DataSource = dsPadrao
      ValidaCampoObrigatorio = True
      CampoObrigatorio = True
      LookUpTable = 'vCadClienteFiscal'
      ReturnField = 'descCadCliente'
    end
    object DBEidDocSerie: TCDBEdit
      Left = 60
      Top = 78
      Width = 46
      Height = 19
      BevelKind = bkTile
      BorderStyle = bsNone
      DataField = 'idDocSerie'
      DataSource = dsPadrao
      TabOrder = 6
      Find = FindSerie
      DecimalControl = True
      KeyMode = kmUSUpper
    end
    object LookDocSerie: TCLookUp
      Left = 112
      Top = 78
      Width = 235
      Height = 19
      Alignment = taLeftJustify
      BevelInner = bvSpace
      BevelOuter = bvLowered
      Color = 14149350
      ParentBackground = False
      TabOrder = 7
      Key.Strings = (
        'idDocSerie')
      LookUpKey.Strings = (
        'idDocSerie')
      AlternateSQL.Strings = (
        
          'SELECT descDocSerie FROM DocSerie WHERE idTipoDocSerie = 3 AND i' +
          'dDocSerie = ?')
      ClientDataSet = cdsLookUp
      DataSource = dsPadrao
      ValidaCampoObrigatorio = True
      CampoObrigatorio = True
      LookUpTable = 'DocSerie'
      ReturnField = 'descDocSerie'
    end
    object DBEdtInicial: TCDBEdit
      Left = 464
      Top = 56
      Width = 80
      Height = 19
      BevelKind = bkTile
      BorderStyle = bsNone
      DataField = 'dtInicial'
      DataSource = dsPadrao
      MaxLength = 10
      TabOrder = 4
      DecimalControl = True
      KeyMode = kmDate
    end
    object DBEdtFinal: TCDBEdit
      Left = 572
      Top = 56
      Width = 80
      Height = 19
      BevelKind = bkTile
      BorderStyle = bsNone
      DataField = 'dtFinal'
      DataSource = dsPadrao
      MaxLength = 10
      TabOrder = 5
      DecimalControl = True
      KeyMode = kmDate
    end
    object DBEnrNotaIni: TCDBEdit
      Left = 464
      Top = 78
      Width = 80
      Height = 19
      BevelKind = bkTile
      BorderStyle = bsNone
      DataField = 'nrNotaIni'
      DataSource = dsPadrao
      TabOrder = 8
      DecimalControl = True
      KeyMode = kmNormal
    end
    object DBEnrNotaFim: TCDBEdit
      Left = 572
      Top = 78
      Width = 80
      Height = 19
      BevelKind = bkTile
      BorderStyle = bsNone
      DataField = 'nrNotaFim'
      DataSource = dsPadrao
      TabOrder = 9
      DecimalControl = True
      KeyMode = kmNormal
    end
    object DBEidMaquina: TCDBEdit
      Left = 60
      Top = 128
      Width = 46
      Height = 19
      BevelKind = bkTile
      BorderStyle = bsNone
      DataField = 'idMaquina'
      DataSource = dsPadrao
      TabOrder = 14
      Find = dmFind.FindMaquina
      AcaoCad = frmPrincipal.actCadMaquina
      DecimalControl = True
      KeyMode = kmNormal
    end
    object LookMaquina: TCLookUp
      Left = 112
      Top = 128
      Width = 284
      Height = 19
      Alignment = taLeftJustify
      BevelInner = bvSpace
      BevelOuter = bvLowered
      Color = 14149350
      ParentBackground = False
      TabOrder = 15
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
    object DBEidGerencial: TCDBEdit
      Left = 60
      Top = 153
      Width = 46
      Height = 19
      BevelKind = bkTile
      BorderStyle = bsNone
      DataField = 'idGerencial'
      DataSource = dsPadrao
      TabOrder = 16
      Find = FindGerencial
      AcaoCad = frmPrincipal.actCadGerencial
      DecimalControl = True
      KeyMode = kmNormal
    end
    object LookGerencial: TCLookUp
      Left = 112
      Top = 153
      Width = 284
      Height = 19
      Alignment = taLeftJustify
      BevelInner = bvSpace
      BevelOuter = bvLowered
      Color = 14149350
      ParentBackground = False
      TabOrder = 17
      Key.Strings = (
        'idGerencial')
      LookUpKey.Strings = (
        'idGerencial')
      AlternateSQL.Strings = (
        
          'SELECT DISTINCT descGerencial FROM vGerencial WHERE tpGerencial ' +
          '= '#39'SAIDAS'#39' AND idEmpresa = [DBEidEmpresa] AND idGerencial = ?')
      ClientDataSet = cdsLookUp
      DataSource = dsPadrao
      ValidaCampoObrigatorio = True
      CampoObrigatorio = True
      LookUpTable = 'vGerencial'
      ReturnField = 'descGerencial'
    end
    object LookProduto: TCLookUp
      Left = 112
      Top = 103
      Width = 235
      Height = 19
      Alignment = taLeftJustify
      BevelInner = bvSpace
      BevelOuter = bvLowered
      Color = 14149350
      ParentBackground = False
      TabOrder = 11
      Key.Strings = (
        'idProdutoIni')
      LookUpKey.Strings = (
        'idProduto')
      ClientDataSet = cdsLookUp
      DataSource = dsPadrao
      ValidaCampoObrigatorio = False
      CampoObrigatorio = True
      LookUpTable = 'Produto'
      ReturnField = 'descProduto'
    end
    object DBEidProdutoIni: TCDBEdit
      Left = 60
      Top = 103
      Width = 46
      Height = 19
      BevelKind = bkTile
      BorderStyle = bsNone
      DataField = 'idProdutoIni'
      DataSource = dsPadrao
      TabOrder = 10
      Find = dmFind.FindProduto
      AcaoCad = frmPrincipal.actCadProduto
      DecimalControl = True
      KeyMode = kmNormal
    end
    object DBEidProdutoFim: TCDBEdit
      Left = 375
      Top = 103
      Width = 46
      Height = 19
      BevelKind = bkTile
      BorderStyle = bsNone
      DataField = 'idProdutoFim'
      DataSource = dsPadrao
      TabOrder = 12
      Find = dmFind.FindProduto
      AcaoCad = frmPrincipal.actCadProduto
      DecimalControl = True
      KeyMode = kmNormal
    end
    object CLookUp1: TCLookUp
      Left = 427
      Top = 103
      Width = 225
      Height = 19
      Alignment = taLeftJustify
      BevelInner = bvSpace
      BevelOuter = bvLowered
      Color = 14149350
      ParentBackground = False
      TabOrder = 13
      Key.Strings = (
        'idProdutoFim')
      LookUpKey.Strings = (
        'idProduto')
      ClientDataSet = cdsLookUp
      DataSource = dsPadrao
      ValidaCampoObrigatorio = False
      CampoObrigatorio = True
      LookUpTable = 'Produto'
      ReturnField = 'descProduto'
    end
  end
  inherited imgIcones: TImageList
    Bitmap = {
      494C010102000400540010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
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
    inherited actPesquisar: TAction
      Tag = 1
    end
  end
  inherited cdsPadrao: TClientDataSet
    AfterInsert = cdsPadraoAfterInsert
    object cdsPadraoidCliente: TIntegerField
      FieldName = 'idCliente'
    end
    object cdsPadraoidCadCliente: TIntegerField
      FieldName = 'idCadCliente'
    end
    object cdsPadraodtInicial: TDateTimeField
      FieldName = 'dtInicial'
    end
    object cdsPadraodtFinal: TDateTimeField
      FieldName = 'dtFinal'
    end
    object cdsPadraoidDocSerie: TStringField
      FieldName = 'idDocSerie'
      Size = 5
    end
    object cdsPadraonrNotaIni: TIntegerField
      FieldName = 'nrNotaIni'
    end
    object cdsPadraonrNotaFim: TIntegerField
      FieldName = 'nrNotaFim'
    end
    object cdsPadraoconsolida: TStringField
      FieldName = 'consolida'
      Size = 1
    end
    object cdsPadraoidProdutoIni: TIntegerField
      FieldName = 'idProdutoIni'
    end
    object cdsPadraoidProdutoFim: TIntegerField
      FieldName = 'idProdutoFim'
    end
    object cdsPadraoidMaquina: TIntegerField
      FieldName = 'idMaquina'
    end
    object cdsPadraoidGerencial: TIntegerField
      FieldName = 'idGerencial'
    end
  end
  inherited cdsGrid: TClientDataSet
    CommandText = 
      'SELECT n.idEmpresa, n.idCadEmpresa, n.idDocSerie, n.idNf AS nrNo' +
      'ta, v.descCadCliente AS descricao, n.idCliente AS idCadastro, n.' +
      'idCadCliente AS idCadAdicional, P.idProduto, n.stNf AS status FR' +
      'OM Nf n , vCadClienteFiscal v, NfProduto P WHERE n.idCliente = v' +
      '.idCliente AND n.idCadCliente = v.idCadCliente AND P.idEmpresa =' +
      ' N.idEmpresa AND P.idCadEmpresa = N.idCadEmpresa AND P.idDocSeri' +
      'e = N.idDocSerie AND P.idNf = N.idNf'
    object cdsGrididEmpresa: TIntegerField
      FieldName = 'idEmpresa'
      Required = True
    end
    object cdsGrididCadEmpresa: TSmallintField
      FieldName = 'idCadEmpresa'
      Required = True
    end
    object cdsGrididDocSerie: TStringField
      FieldName = 'idDocSerie'
      Required = True
      FixedChar = True
      Size = 5
    end
    object cdsGridnrNota: TIntegerField
      FieldName = 'nrNota'
      Required = True
    end
    object cdsGriddescricao: TStringField
      FieldName = 'descricao'
      Required = True
      FixedChar = True
      Size = 50
    end
    object cdsGrididCadastro: TIntegerField
      FieldName = 'idCadastro'
      Required = True
    end
    object cdsGrididCadAdicional: TSmallintField
      FieldName = 'idCadAdicional'
      Required = True
    end
    object cdsGridstatus: TStringField
      FieldName = 'status'
      Required = True
      Size = 15
    end
  end
  inherited sdsGrid: TSQLDataSet
    CommandText = 
      'SELECT n.idEmpresa, n.idCadEmpresa, n.idDocSerie, n.idNf AS nrNo' +
      'ta, v.descCadCliente AS descricao, n.idCliente AS idCadastro, n.' +
      'idCadCliente AS idCadAdicional, P.idProduto, n.stNf AS status FR' +
      'OM Nf n , vCadClienteFiscal v, NfProduto P WHERE n.idCliente = v' +
      '.idCliente AND n.idCadCliente = v.idCadCliente AND P.idEmpresa =' +
      ' N.idEmpresa AND P.idCadEmpresa = N.idCadEmpresa AND P.idDocSeri' +
      'e = N.idDocSerie AND P.idNf = N.idNf'
  end
  object FindSerie: TCFind [15]
    SelectClause.Strings = (
      'SELECT idDocSerie, descDocSerie FROM DocSerie')
    JoinClause.Strings = (
      'WHERE idTipoDocSerie = 3')
    OrderByClause.Strings = (
      'ORDER BY descDocSerie')
    FindField = 'descDocSerie'
    SQLConnection = dmPadrao.dbConexao
    ValueField = 'idDocSerie'
    CarregaDados = True
    CollumNames.Strings = (
      'S'#233'rie'
      'Descri'#231#227'o')
    TypeFind = fFindNormal
    Left = 256
    Top = 304
  end
  object FindGerencial: TCFind
    SelectClause.Strings = (
      
        'SELECT DISTINCT idGerencial, classificacao, descGerencial FROM v' +
        'Gerencial')
    JoinClause.Strings = (
      
        'WHERE StGerencial = '#39'ATIVO'#39' AND tpGerencial = '#39'SAIDAS'#39' AND idEmp' +
        'resa = [DBEidEmpresa]')
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
    Left = 656
    Top = 96
  end
end
