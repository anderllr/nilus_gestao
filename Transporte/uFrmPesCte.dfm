inherited frmPesCte: TfrmPesCte
  Caption = 'Pesquisa de CTe'
  ClientHeight = 489
  ClientWidth = 901
  ExplicitWidth = 917
  ExplicitHeight = 528
  PixelsPerInch = 96
  TextHeight = 13
  inherited GrupoGrid: TCGroupBox
    Top = 231
    Width = 901
    Height = 258
    TabOrder = 2
    ExplicitTop = 231
    ExplicitWidth = 901
    ExplicitHeight = 258
    inherited DBGrid: TCDBGrid
      Width = 897
      Height = 241
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
          FieldName = 'idCadEmpresa'
          Title.Caption = 'Fil.'
          Width = 20
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'idDocSerie'
          Title.Caption = 'S'#233'rie'
          Width = 35
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'idCte'
          Title.Caption = 'Nr. CTe'
          Width = 70
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'dtEmissao'
          Title.Caption = 'Emiss'#227'o'
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'idDestinatario'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'idCadDestinatario'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'descDestinatario'
          Title.Caption = 'Destinat'#225'rio'
          Width = 120
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'idRemetente'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'idCadRemetente'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'Remetente'
          Width = 120
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'idExpedidor'
          Title.Caption = 'Expedidor'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'idCadExpedidor'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'descExpedidor'
          Title.Caption = 'Expedidor'
          Width = 120
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'idRecebedor'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'idCadRecebedor'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'descRecebedor'
          Title.Caption = 'Recebedor'
          Width = 120
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'idSafra'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'idProdutoPred'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'descProduto'
          Title.Caption = 'Produto Pred.'
          Width = 120
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'idMaquina'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'descMaquina'
          Title.Caption = 'Ve'#237'culo'
          Width = 120
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'idMotorista'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'descMotorista'
          Title.Caption = 'Motorista'
          Width = 120
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'stCte'
          Title.Caption = 'Status'
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'descSafra'
          Title.Caption = 'Safra'
          Width = 100
          Visible = True
        end>
    end
  end
  inherited PanBotoes: TCPanelGradient
    Top = 198
    Width = 901
    ExplicitTop = 198
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
    Height = 198
    TabOrder = 0
    ExplicitWidth = 901
    ExplicitHeight = 198
    object CLabel7: TCLabel [0]
      Left = 454
      Top = 59
      Width = 38
      Height = 13
      Alignment = taRightJustify
      Caption = 'Data de'
      Transparent = True
    end
    object CLabel5: TCLabel [1]
      Left = 584
      Top = 59
      Width = 16
      Height = 13
      Alignment = taRightJustify
      Caption = 'at'#233
      Transparent = True
    end
    object CLabel6: TCLabel [2]
      Left = 40
      Top = 149
      Width = 38
      Height = 13
      Alignment = taRightJustify
      Caption = 'CT-e de'
      Transparent = True
    end
    object CLabel8: TCLabel [3]
      Left = 170
      Top = 149
      Width = 16
      Height = 13
      Alignment = taRightJustify
      Caption = 'at'#233
      Transparent = True
    end
    object lblMaquina: TCLabel [4]
      Left = 459
      Top = 104
      Width = 33
      Height = 13
      Alignment = taRightJustify
      Caption = 'Ve'#237'culo'
    end
    object LblCad: TCLabel [5]
      Left = 20
      Top = 59
      Width = 58
      Height = 13
      Alignment = taRightJustify
      Caption = 'Destinat'#225'rio'
    end
    object CLabel32: TCLabel [6]
      Left = 26
      Top = 104
      Width = 52
      Height = 13
      Alignment = taRightJustify
      Caption = 'Recebedor'
    end
    object CLabel30: TCLabel [7]
      Left = 444
      Top = 81
      Width = 48
      Height = 13
      Alignment = taRightJustify
      Caption = 'Expedidor'
    end
    object CLabel31: TCLabel [8]
      Left = 25
      Top = 82
      Width = 53
      Height = 13
      Alignment = taRightJustify
      Caption = 'Remetente'
    end
    object CLabel25: TCLabel [9]
      Left = 54
      Top = 126
      Width = 24
      Height = 13
      Alignment = taRightJustify
      Caption = 'S'#233'rie'
    end
    object CLabel119: TCLabel [10]
      Left = 447
      Top = 126
      Width = 45
      Height = 13
      Alignment = taRightJustify
      Caption = 'Motorista'
    end
    object CLabel2: TCLabel [11]
      Left = 466
      Top = 149
      Width = 26
      Height = 13
      Alignment = taRightJustify
      Caption = 'Safra'
    end
    object CLabel34: TCLabel [12]
      Left = 9
      Top = 171
      Width = 69
      Height = 13
      Alignment = taRightJustify
      Caption = 'Prod. Predom.'
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
    object DBEdtInicial: TCDBEdit
      Left = 498
      Top = 56
      Width = 80
      Height = 19
      BevelKind = bkTile
      BorderStyle = bsNone
      DataField = 'dtInicial'
      DataSource = dsPadrao
      MaxLength = 10
      TabOrder = 3
      DecimalControl = True
      KeyMode = kmDate
    end
    object DBEdtFinal: TCDBEdit
      Left = 606
      Top = 56
      Width = 80
      Height = 19
      BevelKind = bkTile
      BorderStyle = bsNone
      DataField = 'dtFinal'
      DataSource = dsPadrao
      MaxLength = 10
      TabOrder = 4
      DecimalControl = True
      KeyMode = kmDate
    end
    object DBEidCTeIni: TCDBEdit
      Left = 84
      Top = 146
      Width = 80
      Height = 19
      BevelKind = bkTile
      BorderStyle = bsNone
      DataField = 'idCTeIni'
      DataSource = dsPadrao
      TabOrder = 14
      DecimalControl = True
      KeyMode = kmNormal
    end
    object DBEidCTeFim: TCDBEdit
      Left = 192
      Top = 146
      Width = 80
      Height = 19
      BevelKind = bkTile
      BorderStyle = bsNone
      DataField = 'idCTeFim'
      DataSource = dsPadrao
      TabOrder = 15
      DecimalControl = True
      KeyMode = kmNormal
    end
    object DBEidMaquina: TCDBEdit
      Left = 498
      Top = 101
      Width = 46
      Height = 19
      BevelKind = bkTile
      BorderStyle = bsNone
      DataField = 'idMaquina'
      DataSource = dsPadrao
      TabOrder = 11
      Find = dmFind.FindMaquina
      AcaoCad = frmPrincipal.actCadMaquina
      DecimalControl = True
      KeyMode = kmNormal
    end
    object LookMaquina: TCLookUp
      Left = 550
      Top = 101
      Width = 302
      Height = 19
      Alignment = taLeftJustify
      BevelInner = bvSpace
      BevelOuter = bvLowered
      Color = 14149350
      ParentBackground = False
      TabOrder = 17
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
    object DBEidCadDestinatario: TCDBEdit
      Left = 152
      Top = 56
      Width = 28
      Height = 19
      BevelKind = bkTile
      BorderStyle = bsNone
      DataField = 'idCadDestinatario'
      DataSource = dsPadrao
      TabOrder = 2
      OnKeyDown = DBEidDestinatarioKeyDown
      DecimalControl = True
      KeyMode = kmNormal
    end
    object LookFornecedorFiscal: TCLookUp
      Left = 186
      Top = 56
      Width = 252
      Height = 19
      Alignment = taLeftJustify
      BevelInner = bvSpace
      BevelOuter = bvLowered
      Color = 14149350
      ParentBackground = False
      TabOrder = 18
      Key.Strings = (
        'idDestinatario'
        'idCadDestinatario')
      LookUpKey.Strings = (
        'idCliente'
        'idCadCliente')
      AlternateSQL.Strings = (
        
          'SELECT descCadCliente FROM vCadClienteFiscal WHERE idCliente = ?' +
          ' AND idCadCliente = ?')
      ClientDataSet = cdsLookUp
      DataSource = dsPadrao
      ValidaCampoObrigatorio = True
      CampoObrigatorio = True
      LookUpTable = 'vCadClienteFiscal'
      ReturnField = 'descCadCliente'
    end
    object DBEidDestinatario: TCDBEdit
      Left = 84
      Top = 56
      Width = 62
      Height = 19
      BevelKind = bkTile
      BorderStyle = bsNone
      DataField = 'idDestinatario'
      DataSource = dsPadrao
      TabOrder = 1
      OnKeyDown = DBEidDestinatarioKeyDown
      DecimalControl = True
      KeyMode = kmNormal
    end
    object DBEidRemetente: TCDBEdit
      Left = 84
      Top = 78
      Width = 62
      Height = 19
      BevelKind = bkTile
      BorderStyle = bsNone
      DataField = 'idRemetente'
      DataSource = dsPadrao
      TabOrder = 5
      OnKeyDown = DBEidRemetenteKeyDown
      DecimalControl = True
      KeyMode = kmNormal
    end
    object CLookUp8: TCLookUp
      Left = 186
      Top = 101
      Width = 252
      Height = 19
      Alignment = taLeftJustify
      BevelInner = bvSpace
      BevelOuter = bvLowered
      Color = 14149350
      ParentBackground = False
      TabOrder = 19
      Key.Strings = (
        'idRecebedor'
        'idCadRecebedor')
      LookUpKey.Strings = (
        'idCliente'
        'idCadCliente')
      AlternateSQL.Strings = (
        
          'SELECT descCadCliente FROM vCadClienteFiscal WHERE idCliente = ?' +
          ' AND idCadCliente = ?')
      ClientDataSet = cdsLookUp
      DataSource = dsPadrao
      ValidaCampoObrigatorio = True
      CampoObrigatorio = True
      LookUpTable = 'vCadClienteFiscal'
      ReturnField = 'descCadCliente'
    end
    object DBEidCadRecebedor: TCDBEdit
      Left = 152
      Top = 101
      Width = 28
      Height = 19
      BevelKind = bkTile
      BorderStyle = bsNone
      DataField = 'idCadRecebedor'
      DataSource = dsPadrao
      TabOrder = 10
      OnKeyDown = DBEidRecebedorKeyDown
      DecimalControl = True
      KeyMode = kmNormal
    end
    object DBEidRecebedor: TCDBEdit
      Left = 84
      Top = 101
      Width = 62
      Height = 19
      BevelKind = bkTile
      BorderStyle = bsNone
      DataField = 'idRecebedor'
      DataSource = dsPadrao
      TabOrder = 9
      OnKeyDown = DBEidRecebedorKeyDown
      DecimalControl = True
      KeyMode = kmNormal
    end
    object CLookUp6: TCLookUp
      Left = 600
      Top = 78
      Width = 252
      Height = 19
      Alignment = taLeftJustify
      BevelInner = bvSpace
      BevelOuter = bvLowered
      Color = 14149350
      ParentBackground = False
      TabOrder = 20
      Key.Strings = (
        'idExpedidor'
        'idCadExpedidor')
      LookUpKey.Strings = (
        'idCliente'
        'idCadCliente')
      AlternateSQL.Strings = (
        
          'SELECT descCadCliente FROM vCadClienteFiscal WHERE idCliente = ?' +
          ' AND idCadCliente = ?')
      ClientDataSet = cdsLookUp
      DataSource = dsPadrao
      ValidaCampoObrigatorio = True
      CampoObrigatorio = True
      LookUpTable = 'vCadClienteFiscal'
      ReturnField = 'descCadCliente'
    end
    object DBEidCadExpedidor: TCDBEdit
      Left = 566
      Top = 78
      Width = 28
      Height = 19
      BevelKind = bkTile
      BorderStyle = bsNone
      DataField = 'idCadExpedidor'
      DataSource = dsPadrao
      TabOrder = 8
      OnKeyDown = DBEidExpedidorKeyDown
      DecimalControl = True
      KeyMode = kmNormal
    end
    object DBEidExpedidor: TCDBEdit
      Left = 498
      Top = 78
      Width = 62
      Height = 19
      BevelKind = bkTile
      BorderStyle = bsNone
      DataField = 'idExpedidor'
      DataSource = dsPadrao
      TabOrder = 7
      OnKeyDown = DBEidExpedidorKeyDown
      DecimalControl = True
      KeyMode = kmNormal
    end
    object CLookUp2: TCLookUp
      Left = 186
      Top = 78
      Width = 252
      Height = 19
      Alignment = taLeftJustify
      BevelInner = bvSpace
      BevelOuter = bvLowered
      Color = 14149350
      ParentBackground = False
      TabOrder = 21
      Key.Strings = (
        'idRemetente'
        'idCadRemetente')
      LookUpKey.Strings = (
        'idCliente'
        'idCadCliente')
      AlternateSQL.Strings = (
        
          'SELECT descCadCliente FROM vCadClienteFiscal WHERE idCliente = ?' +
          ' AND idCadCliente = ?')
      ClientDataSet = cdsLookUp
      DataSource = dsPadrao
      ValidaCampoObrigatorio = True
      CampoObrigatorio = True
      LookUpTable = 'vCadClienteFiscal'
      ReturnField = 'descCadCliente'
    end
    object DBEidCadRemetente: TCDBEdit
      Left = 152
      Top = 78
      Width = 28
      Height = 19
      BevelKind = bkTile
      BorderStyle = bsNone
      DataField = 'idCadRemetente'
      DataSource = dsPadrao
      TabOrder = 6
      OnKeyDown = DBEidRemetenteKeyDown
      DecimalControl = True
      KeyMode = kmNormal
    end
    object DBEidDocSerie: TCDBEdit
      Left = 84
      Top = 123
      Width = 46
      Height = 19
      BevelKind = bkTile
      BorderStyle = bsNone
      DataField = 'idDocSerie'
      DataSource = dsPadrao
      TabOrder = 12
      Find = dmFind.FindDocSerieCTe
      AcaoCad = frmPrincipal.actCadDocSerie
      DecimalControl = True
      KeyMode = kmUSUpper
    end
    object LookDocSerie: TCLookUp
      Left = 136
      Top = 123
      Width = 226
      Height = 19
      Alignment = taLeftJustify
      BevelInner = bvSpace
      BevelOuter = bvLowered
      Color = 14149350
      ParentBackground = False
      TabOrder = 22
      Key.Strings = (
        'idDocSerie')
      LookUpKey.Strings = (
        'idDocSerie')
      AlternateSQL.Strings = (
        
          'SELECT descDocSerie FROM DocSerie WHERE idTipoDocSerie = 8 AND i' +
          'dDocSerie = ?')
      ClientDataSet = cdsLookUp
      DataSource = dsPadrao
      ValidaCampoObrigatorio = True
      CampoObrigatorio = True
      LookUpTable = 'DocSerie'
      ReturnField = 'descDocSerie'
    end
    object DBEidMotorista: TCDBEdit
      Left = 498
      Top = 123
      Width = 64
      Height = 19
      BevelKind = bkTile
      BorderStyle = bsNone
      DataField = 'idMotorista'
      DataSource = dsPadrao
      TabOrder = 13
      Find = dmFind.FindFornecedor
      AcaoCad = frmPrincipal.actCadCliente
      DecimalControl = True
      KeyMode = kmNormal
    end
    object CLookUp24: TCLookUp
      Left = 568
      Top = 123
      Width = 284
      Height = 19
      Alignment = taLeftJustify
      BevelInner = bvSpace
      BevelOuter = bvLowered
      Color = 14149350
      ParentBackground = False
      TabOrder = 23
      Key.Strings = (
        'idMotorista')
      LookUpKey.Strings = (
        'idCliente')
      ClientDataSet = cdsLookUp
      DataSource = dsPadrao
      ValidaCampoObrigatorio = True
      CampoObrigatorio = True
      LookUpTable = 'vCadClienteContabil'
      ReturnField = 'descCadCliente'
    end
    object DBEidSafra: TCDBEdit
      Left = 498
      Top = 146
      Width = 48
      Height = 19
      BevelKind = bkTile
      BorderStyle = bsNone
      DataField = 'idSafra'
      DataSource = dsPadrao
      TabOrder = 16
      Find = dmFind.FindSafra
      DecimalControl = True
      KeyMode = kmNormal
    end
    object LookSafra: TCLookUp
      Left = 552
      Top = 146
      Width = 300
      Height = 19
      Alignment = taLeftJustify
      BevelInner = bvSpace
      BevelOuter = bvLowered
      Color = 14149350
      ParentBackground = False
      TabOrder = 24
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
    object DBEidProdutoPred: TCDBEdit
      Left = 84
      Top = 168
      Width = 65
      Height = 19
      BevelKind = bkTile
      BorderStyle = bsNone
      DataField = 'idProdutoPred'
      DataSource = dsPadrao
      TabOrder = 25
      Find = dmFind.FindProduto
      AcaoCad = frmPrincipal.actCadProduto
      DecimalControl = True
      KeyMode = kmNormal
    end
    object CLookUp13: TCLookUp
      Left = 155
      Top = 168
      Width = 283
      Height = 19
      Alignment = taLeftJustify
      BevelInner = bvSpace
      BevelOuter = bvLowered
      Color = 14149350
      ParentBackground = False
      TabOrder = 26
      Key.Strings = (
        'idProdutoPred')
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
      494C010102000400580010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
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
    object cdsPadraoconsolida: TStringField
      FieldName = 'consolida'
      Size = 1
    end
    object cdsPadraoidDestinatario: TIntegerField
      FieldName = 'idDestinatario'
    end
    object cdsPadraoidCadDestinatario: TIntegerField
      FieldName = 'idCadDestinatario'
    end
    object cdsPadraoidRemetente: TIntegerField
      FieldName = 'idRemetente'
    end
    object cdsPadraoidCadRemetente: TIntegerField
      FieldName = 'idCadRemetente'
    end
    object cdsPadraoidExpedidor: TIntegerField
      FieldName = 'idExpedidor'
    end
    object cdsPadraoidCadExpedidor: TIntegerField
      FieldName = 'idCadExpedidor'
    end
    object cdsPadraoidRecebedor: TIntegerField
      FieldName = 'idRecebedor'
    end
    object cdsPadraoidCadRecebedor: TIntegerField
      FieldName = 'idCadRecebedor'
    end
    object cdsPadraoidMaquina: TIntegerField
      FieldName = 'idMaquina'
    end
    object cdsPadraoidMotorista: TIntegerField
      FieldName = 'idMotorista'
    end
    object cdsPadraoidCTeIni: TIntegerField
      FieldName = 'idCTeIni'
    end
    object cdsPadraoidCTeFim: TIntegerField
      FieldName = 'idCTeFim'
    end
    object cdsPadraoidSafra: TIntegerField
      FieldName = 'idSafra'
    end
    object cdsPadraoidProdutoPred: TIntegerField
      FieldName = 'idProdutoPred'
    end
  end
  inherited cdsGrid: TClientDataSet
    CommandText = 'SELECT * FROM vCTe WHERE 1=2'
  end
  inherited sdsGrid: TSQLDataSet
    CommandText = 'SELECT * FROM vCTe WHERE 1=2'
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
    Left = 848
    Top = 24
  end
end
