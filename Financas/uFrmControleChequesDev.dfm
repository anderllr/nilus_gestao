inherited FrmControleChequesDev: TFrmControleChequesDev
  Caption = 'Devolu'#231#227'o de Cheques depositados e negociados'
  ClientHeight = 557
  ClientWidth = 804
  FormStyle = fsMDIChild
  Position = poDesigned
  Visible = True
  ExplicitWidth = 820
  ExplicitHeight = 595
  PixelsPerInch = 96
  TextHeight = 13
  inherited GrupoGrid: TCGroupBox
    Top = 111
    Width = 804
    Height = 175
    Align = alTop
    TabOrder = 1
    ExplicitTop = 111
    ExplicitWidth = 804
    ExplicitHeight = 175
    inherited DBGrid: TCDBGrid
      Width = 800
      Height = 158
      OnCellClick = DBGridCellClick
      OnColEnter = DBGridColEnter
      OnDrawColumnCell = DBGridDrawColumnCell
      Columns = <
        item
          Expanded = False
          FieldName = 'sel'
          Title.Caption = '?'
          Width = 15
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'emitente'
          Title.Caption = 'Emitente'
          Width = 250
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'idChequeRec'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'idCliente'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'idBanco'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'Comp'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'nrAgencia'
          Title.Caption = 'Agencia'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'dtLancamento'
          Title.Caption = 'Dep. Em'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'nrConta'
          Title.Caption = 'Dep. Em'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'nrCheque'
          Title.Caption = 'Cheque'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'vlCheque'
          Title.Caption = 'Valor'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'dtVencimento'
          Title.Caption = 'Vencimento'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'stChequeRec'
          Title.Caption = 'Status'
          Width = 110
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'dtEmissao'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'idCaixa'
          Visible = False
        end>
    end
  end
  inherited PanBotoes: TCPanelGradient
    Top = 286
    Width = 804
    TabOrder = 2
    ExplicitTop = 286
    ExplicitWidth = 804
    inherited BtnExecutar: TCBitBtn
      Left = 615
      Top = 2
      TabOrder = 2
      Visible = False
      ExplicitLeft = 615
      ExplicitTop = 2
    end
    inherited BtnFechar: TCBitBtn
      Left = 696
      Top = 2
      TabOrder = 3
      Visible = False
      ExplicitLeft = 696
      ExplicitTop = 2
    end
    object BtnAdicionar: TCBitBtn
      Left = 339
      Top = 2
      Width = 75
      Height = 25
      Caption = '&Adicionar'
      DoubleBuffered = True
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        0000000000000000000000000000C2632EBFC4652FFFC76730FFCA6A30FFCD6C
        31FFD06E32BF0000000000000000000000000000000000000000000000000000
        0000000000000000000000000000C1632EFFF4BD86FFEE9C4FFFEE9641FFF19C
        47FFD06E32FF0000000000000000000000000000000000000000000000000000
        0000000000000000000000000000C1622EFFF4BD87FFE8934FFFE98F41FFF29E
        49FFCF6E32FF0000000000000000000000000000000000000000000000000000
        0000000000000000000000000000C0622EFFF4BD87FFE68F4EFFE88B41FFF29E
        48FFCE6D31FF0000000000000000000000000000000000000000000000000000
        0000000000000000000000000000C0612DFFF4BC86FFE68E4DFFE7893FFFF19C
        46FFCD6C31FF0000000000000000000000000000000000000000B05629BFB358
        2AFFB65A2BFFB95C2BFFBC5E2CFFBE602DFFF3BC86FFE48B4BFFE5863DFFEF98
        43FFCB6A30FFCD6C31FFCE6D31FFCF6E32FFD06E32FFD06E32DFAF5529FFF0B9
        8AFFE69353FFE38740FFE38236FFE38232FFE99349FFE07E3AFFE38139FFED94
        3FFFEF9943FFF19C46FFF29E48FFF29E49FFF19D47FFCD6C31FFAE5428FFF0B9
        8AFFDD834CFFD87339FFDA763AFFDB783AFFDC7736FFDB7433FFDE7835FFE381
        39FFE5863DFFE78940FFE88C41FFEA8F42FFEE9641FFCA6A30FFAD5328FFF0B9
        8BFFDF8C5AFFDA7E4BFFDC814CFFDE844EFFE0874FFFDD7D42FFDE7E40FFE286
        44FFE69154FFE79254FFE89455FFEA9856FFEFA157FFC76730FFAC5228FFEFB9
        8BFFF0B98BFFF1BA8AFFF1BB8BFFF1BC8BFFF2BD8BFFE08750FFDE7E3FFFEB9D
        57FFF4C08DFFF5C18DFFF5C18DFFF5C18DFFF5C18DFFC4652FFFAA5127BFAD52
        28FFAF5428FFB15629FFB3582AFFB65A2AFFF1BC8BFFDE844EFFDC7A3DFFE68E
        44FFBE602DFFC0612DFFC0622EFFC1622EFFC1632EFFC2632EA6000000000000
        0000000000000000000000000000B3582AFFF1BB8BFFDC814DFFDA763BFFE58B
        42FFBC5E2CFF0000000000000000000000000000000000000000000000000000
        0000000000000000000000000000B15629FFF1BA8BFFDB7F4BFFD8733AFFE389
        42FFB95C2BFF0000000000000000000000000000000000000000000000000000
        0000000000000000000000000000AF5428FFF0BA8BFFDF8C5BFFDD834DFFE694
        53FFB65A2BFF0000000000000000000000000000000000000000000000000000
        0000000000000000000000000000AD5228FFF0BA8BFFF0BA8BFFF0BA8BFFF0BA
        8BFFB3582AFF0000000000000000000000000000000000000000000000000000
        0000000000000000000000000000AA5127BFAC5228FFAD5328FFAE5428FFAF55
        29FFB05629BF0000000000000000000000000000000000000000}
      ParentDoubleBuffered = False
      TabOrder = 0
      OnClick = BtnAdicionarClick
    end
    object BtnLimpaSelecao: TCBitBtn
      Left = 420
      Top = 2
      Width = 109
      Height = 25
      Caption = '&Limpar Sele'#231#227'o'
      DoubleBuffered = True
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF007C7C7CEF7878
        78FF747474FF707070FF6D6D6DFF6A6A6AFF686868FF676767FF666666FF6666
        66FF666666FF666666FF666666FF666666FF666666FF666666EFABABABFFFDFD
        FDFFF6F5F4FFF6F5F5FFF7F6F6FFF7F7F6FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
        F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FF666666FFB7B6B6FFF4F2
        F1FFA69794FFC5BEBCFFC7C1C0FFC9C3C1FFCAC5C3FFCAC6C4FFCBC6C4FFCBC7
        C5FFCBC7C5FFD5D3D2FF55B853FF60D25FFFE0F9E0FF6B6B6BFFC5C5C5FFF4F2
        F1FFB8ACAAFFBAAFACFFBCB1AFFFBDB2B0FFBDB3B1FFBEB4B2FFBEB4B2FFBFB4
        B2FFBFB4B2FFCAD7C8FF60C05FFF81DB80FFE3FBE3FF7D7D7DFFD3D2D2FFF5F4
        F3FFF6F5F4FFF6F5F5FFF7F6F6FFF7F7F6FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
        F7FFF7F7F7FFF7F7F7FFE0F2E0FFE3F7E3FFFAFEFAFF909090FFCCCBCBEFCBC9
        C8FFCCCACAFFCDCBCBFFCDCCCBFFCCCBCBFFCAC9C9FFC8C7C7FFC5C4C4FFC2C2
        C1FFBFBFBFFFBDBCBCFFBAB9B9FFB7B7B6FFB4B4B4FFA3A3A3EFCCCCCC80E0DD
        DEFFFCF5F7FFFCF5F7FFFCF5F7FFFCF5F7FFFCF5F7FFFBF4F6FFFAF3F5FFF8F1
        F3FFF6EEF0FFF2EAEBFFEDE4E5FFE5DCDDFF959292FF67676780CCCCCC20CFCF
        CFFFF9F2F4FFF8F0F2FFE5DDDEFFFAF6F7FFF5F0F1FFEBE5E5FFDFD7D6FFD3C4
        C3FFC9B8B6FFCCC0C0FFEDE4E5FFDFD7D7FF747474EF6C6C6C1000000000CCCC
        CC9FE4E1E2FFFCF6F8FFFDF9FBFFFDF9FBFFFDF9FBFFFDF9FAFFFCF8F9FFFCF7
        F8FFFAF6F6FFF8F3F4FFEDE4E5FFB6B2B2FF7F7F7F9F0000000000000000CCCC
        CC20D2D1D1FFFCF5F7FFFCF5F7FFFCF5F7FFFCF5F7FFFBF4F6FFFAF3F5FFF8F1
        F3FFF6EEF0FFF2EAEBFFE7E0E1FF969595FF8989892000000000000000000000
        0000CCCCCC9FCCCCCCFFCCCCCCFFCCCCCCFFCBCBCBFFC6C6C6FFBFBFBFFFB7B7
        B7FFB0B0B0FFA9A9A9FFA2A2A2FF9B9B9B8F0000000000000000FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00}
      ParentDoubleBuffered = False
      TabOrder = 1
      OnClick = BtnLimpaSelecaoClick
    end
    object BtnRetirar: TCBitBtn
      Left = 535
      Top = 2
      Width = 75
      Height = 25
      Caption = '&Retirar'
      DoubleBuffered = True
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        000000000000000000009191912092929270959595BF979797BF9A9A9ABF9C9C
        9CBF9F9F9F70A1A1A12000000000000000000000000000000000000000000000
        0000000000008E8E8E80939393FFA4A4A4FFB2B2B2FFBCBCBCFFC5C5C5FFCECE
        CEFFBFBFBFFFA7A7A7FFA4A4A480000000000000000000000000000000000000
        00008B8B8B9F9E9E9EFFC2C2C2FFB0B0BBFF7B7BBEFF6F6FC8FF7878D2FF9A9A
        DEFFDFDFEAFFEFEFEFFFBBBBBBFFA7A7A79F0000000000000000000000008888
        88809E9E9EFFD1D1D1FF7F7FC1FF1414BAFF0E0EC0FF1515C7FF1D1DD0FF2727
        DBFF3D3DE8FFB1B1F5FFFCFCFCFFBBBBBBFFA4A4A48000000000878787208D8D
        8DFFD7D7D7FF8585C7FF0505B6FF7575D8FF3C3CCCFF1515C7FF1D1DD0FF4F4F
        E1FF8C8CF3FF3D3DF4FFB1B1F5FFEFEFEFFFA7A7A7FFA1A1A12087878770B1B1
        B1FFD1D1DCFF0F0FB5FF7272D5FFFFFFFFFFF0F0FBFF4040D1FF4545D7FFF1F1
        FCFFFFFFFFFF8C8CF3FF3D3DE8FFE0E0EBFFBFBFBFFF9F9F9F70878787BFD2D2
        D2FF8F8FD1FF0202B2FF3333C2FFEFEFFAFFFFFFFFFFF0F0FBFFF0F0FCFFFFFF
        FFFFF1F1FCFF4F4FE1FF2727DBFF9A9ADEFFCECECEFF9C9C9CBF878787BFD5D5
        D5FF8686D2FF0606B3FF0303B3FF3434C3FFF0F0FBFFFFFFFFFFFFFFFFFFF0F0
        FCFF4545D7FF1D1DD0FF1D1DD0FF7979D2FFC5C5C5FF9A9A9ABF878787BFD8D8
        D8FF9C9CDAFF4242C5FF1A1AB9FF3333C2FFEFEFFBFFFFFFFFFFFFFFFFFFF0F0
        FBFF4040D1FF1515C7FF1515C7FF6F6FC8FFBCBCBCFF979797BF878787BFDCDC
        DCFFB5B5E2FF4949C7FF6767D0FFF3F3FBFFFFFFFFFFEFEFFBFFF0F0FBFFFFFF
        FFFFF0F0FBFF3C3CCCFF0E0EC0FF7C7CBEFFB3B3B3FF959595BF87878770BBBB
        BBFFECECF4FF5858CBFF9999DFFFFFFFFFFFF3F3FBFF5F5FCFFF5D5DCFFFF3F3
        FBFFFFFFFFFF8383DCFF2D2DC1FFAFAFBAFFA4A4A4FF92929270878787208F8F
        8FFFF5F5F5FFB8B8E5FF4E4EC8FF9999DFFF6767D0FF3F3FC5FF3C3CC4FF5F5F
        CFFF9090DEFF3838C5FF9191C6FFC2C2C2FF939393FF91919120000000008787
        8780A5A5A5FFFCFCFCFFB8B8E5FF5858CBFF4949C7FF4646C6FF4343C5FF4040
        C5FF4848C6FF9A9ACDFFD0D0D0FF9D9D9DFF8E8E8E8000000000000000000000
        00008787879FA5A5A5FFF5F5F5FFECECF4FFB5B5E2FF9C9CDAFF9898D7FFA8A8
        D8FFD5D5DDFFD7D7D7FF9E9E9EFF8B8B8B9F0000000000000000000000000000
        000000000000878787808F8F8FFFBABABAFFDCDCDCFFD8D8D8FFD5D5D5FFD2D2
        D2FFB1B1B1FF8D8D8DFF88888880000000000000000000000000000000000000
        000000000000000000008787872087878770878787BF878787BF878787BF8787
        87BF878787708787872000000000000000000000000000000000}
      ParentDoubleBuffered = False
      TabOrder = 4
      OnClick = BtnRetirarClick
    end
  end
  inherited PanTopo: TCPanelGradient
    Width = 804
    Height = 111
    TabOrder = 0
    ExplicitWidth = 804
    ExplicitHeight = 111
    object CLabel4: TCLabel [0]
      Left = 31
      Top = 67
      Width = 23
      Height = 13
      Caption = 'Data'
    end
    object CLabel6: TCLabel [1]
      Left = 135
      Top = 66
      Width = 17
      Height = 13
      Caption = 'At'#233
    end
    object CLabel10: TCLabel [2]
      Left = 372
      Top = 67
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
    object CLabel8: TCLabel [3]
      Left = 235
      Top = 66
      Width = 48
      Height = 13
      Alignment = taRightJustify
      Caption = 'Vencto de'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object CLabel7: TCLabel [4]
      Left = 12
      Top = 34
      Width = 42
      Height = 13
      Alignment = taRightJustify
      Caption = 'Emitente'
      Transparent = True
    end
    object CLabel9: TCLabel [5]
      Left = 371
      Top = 34
      Width = 37
      Height = 13
      Alignment = taRightJustify
      Caption = 'Cheque'
      Transparent = True
    end
    object Bevel2: TBevel [6]
      Left = 712
      Top = 23
      Width = 4
      Height = 88
      Shape = bsFrame
      Style = bsRaised
    end
    object Bevel4: TBevel [7]
      Left = 2
      Top = 55
      Width = 712
      Height = 4
      Align = alCustom
      Shape = bsFrame
      Style = bsRaised
    end
    object CLabel82: TCLabel [8]
      Left = 235
      Top = 92
      Width = 29
      Height = 13
      Alignment = taRightJustify
      Caption = 'Conta'
    end
    object CLabel1: TCLabel [9]
      Left = 12
      Top = 92
      Width = 42
      Height = 13
      Caption = 'Dep'#243'sito'
    end
    object CLabel2: TCLabel [10]
      Left = 135
      Top = 91
      Width = 17
      Height = 13
      Caption = 'At'#233
    end
    object Bevel1: TBevel [11]
      Left = 2
      Top = 135
      Width = 908
      Height = 4
      Align = alCustom
      Shape = bsFrame
      Style = bsRaised
    end
    inherited PanEmpresa: TCPanelGradient
      Width = 802
      Height = 26
      ExplicitWidth = 802
      ExplicitHeight = 26
    end
    object DBEdtInicial: TCDBEdit
      Left = 60
      Top = 64
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
      TabOrder = 6
      DecimalControl = True
      KeyMode = kmDate
    end
    object DBEdtFinal: TCDBEdit
      Left = 159
      Top = 64
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
      TabOrder = 7
      DecimalControl = True
      KeyMode = kmDate
    end
    object DBEdtVencimentoIni: TCDBEdit
      Left = 287
      Top = 64
      Width = 80
      Height = 19
      BevelKind = bkTile
      BorderStyle = bsNone
      DataField = 'dtVencimentoIni'
      DataSource = dsPadrao
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      MaxLength = 10
      ParentFont = False
      TabOrder = 8
      DecimalControl = True
      KeyMode = kmDate
    end
    object DBEdtVencimentoFim: TCDBEdit
      Left = 393
      Top = 64
      Width = 80
      Height = 19
      BevelKind = bkTile
      BorderStyle = bsNone
      DataField = 'dtVencimentoFim'
      DataSource = dsPadrao
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      MaxLength = 10
      ParentFont = False
      TabOrder = 9
      DecimalControl = True
      KeyMode = kmDate
    end
    object DBEidFornecedor: TCDBEdit
      Left = 60
      Top = 31
      Width = 305
      Height = 19
      BevelKind = bkTile
      BorderStyle = bsNone
      CharCase = ecUpperCase
      DataField = 'descEmitente'
      DataSource = dsPadrao
      TabOrder = 1
      DecimalControl = True
      KeyMode = kmNormal
    end
    object DBEidCheque: TCDBEdit
      Left = 413
      Top = 31
      Width = 99
      Height = 19
      BevelKind = bkTile
      BorderStyle = bsNone
      DataField = 'idCheque'
      DataSource = dsPadrao
      TabOrder = 2
      DecimalControl = True
      KeyMode = kmNormal
    end
    object DBCKdevolucao: TCDBCheckBox
      Left = 615
      Top = 32
      Width = 91
      Height = 17
      Caption = 'Negociados'
      DataField = 'devolucao'
      DataSource = dsPadrao
      TabOrder = 4
      ValueChecked = 'S'
      ValueUnchecked = 'N'
    end
    object DBCKDepositado: TCDBCheckBox
      Left = 518
      Top = 32
      Width = 91
      Height = 17
      Caption = 'Depositados?'
      DataField = 'ativo'
      DataSource = dsPadrao
      TabOrder = 3
      ValueChecked = 'S'
      ValueUnchecked = 'N'
    end
    object BtnPesquisar: TCBitBtn
      Left = 722
      Top = 33
      Width = 75
      Height = 25
      Action = actPesquisar
      Caption = '&Pesquisar'
      DoubleBuffered = True
      ParentDoubleBuffered = False
      TabOrder = 5
    end
    object LookdescConta: TCLookUp
      Left = 469
      Top = 89
      Width = 237
      Height = 19
      Alignment = taLeftJustify
      BevelInner = bvSpace
      BevelOuter = bvLowered
      Color = 14149350
      ParentBackground = False
      TabOrder = 15
      Key.Strings = (
        'idConta')
      LookUpKey.Strings = (
        'idConta')
      AlternateSQL.Strings = (
        
          'SELECT descConta FROM vConta WHERE idEmpresa = [DBEidEmpresa] AN' +
          'D idConta = ?')
      ClientDataSet = cdsLookUp
      DataSource = dsPadrao
      ValidaCampoObrigatorio = False
      CampoObrigatorio = True
      LookUpTable = 'vConta'
      ReturnField = 'descConta'
    end
    object LookContaCorrente: TCLookUp
      Left = 382
      Top = 89
      Width = 81
      Height = 19
      Alignment = taLeftJustify
      BevelInner = bvSpace
      BevelOuter = bvLowered
      Color = 14149350
      ParentBackground = False
      TabOrder = 14
      Key.Strings = (
        'idConta')
      LookUpKey.Strings = (
        'idConta')
      AlternateSQL.Strings = (
        
          'SELECT idContaCorrente FROM vConta WHERE idEmpresa = [DBEidEmpre' +
          'sa] AND idConta = ?')
      ClientDataSet = cdsLookUp
      DataSource = dsPadrao
      ValidaCampoObrigatorio = False
      CampoObrigatorio = True
      LookUpTable = 'vConta'
      ReturnField = 'idContaCorrente'
    end
    object LookAgencia: TCLookUp
      Left = 324
      Top = 89
      Width = 52
      Height = 19
      Alignment = taLeftJustify
      BevelInner = bvSpace
      BevelOuter = bvLowered
      Color = 14149350
      ParentBackground = False
      TabOrder = 13
      Key.Strings = (
        'idConta')
      LookUpKey.Strings = (
        'idConta')
      AlternateSQL.Strings = (
        
          'SELECT idAgencia FROM vConta WHERE idEmpresa = [DBEidEmpresa] AN' +
          'D idConta = ?')
      ClientDataSet = cdsLookUp
      DataSource = dsPadrao
      ValidaCampoObrigatorio = False
      CampoObrigatorio = True
      LookUpTable = 'vConta'
      ReturnField = 'idAgencia'
    end
    object DBEidConta: TCDBEdit
      Left = 270
      Top = 89
      Width = 48
      Height = 19
      BevelKind = bkTile
      BorderStyle = bsNone
      DataField = 'idConta'
      DataSource = dsPadrao
      TabOrder = 12
      Find = FindConta
      AcaoCad = frmPrincipal.actCadConta
      DecimalControl = True
      KeyMode = kmNormal
    end
    object CDBEdit1: TCDBEdit
      Left = 60
      Top = 89
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
      TabOrder = 10
      DecimalControl = True
      KeyMode = kmDate
    end
    object CDBEdit2: TCDBEdit
      Left = 159
      Top = 89
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
      TabOrder = 11
      DecimalControl = True
      KeyMode = kmDate
    end
  end
  object CGroupBox1: TCGroupBox [3]
    Left = 0
    Top = 319
    Width = 804
    Height = 175
    Align = alTop
    TabOrder = 3
    object DBGrid1: TCDBGrid
      Left = 2
      Top = 15
      Width = 800
      Height = 158
      Align = alClient
      DataSource = dsGrid2
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnCellClick = DBGrid1CellClick
      OnColEnter = DBGrid1ColEnter
      OnDrawColumnCell = DBGrid1DrawColumnCell
      UtilizaOrdenar = False
      Columns = <
        item
          Expanded = False
          FieldName = 'sel'
          Title.Caption = '?'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'emitente'
          Title.Caption = 'Emitente'
          Width = 250
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'idChequeRec'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'idCliente'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'idBanco'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'Comp'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'nrAgencia'
          Title.Caption = 'Agencia'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'nrConta'
          Title.Caption = 'Dep. Em'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'dtLancamento'
          Title.Caption = 'Dep. Em'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'nrCheque'
          Title.Caption = 'Cheque'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'vlCheque'
          Title.Caption = 'Valor'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'dtVencimento'
          Title.Caption = 'Vencimento'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'stChequeRec'
          Title.Caption = 'Status'
          Width = 110
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'dtEmissao'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'idCaixa'
          Visible = False
        end>
    end
  end
  object CPanelGradient1: TCPanelGradient [4]
    Left = 0
    Top = 495
    Width = 804
    Height = 62
    Align = alBottom
    BevelOuter = bvNone
    Caption = 'PanBotoes'
    TabOrder = 4
    CaptionNo = 0
    HintNo = 0
    BackgroundGradientColor = 13099746
    BackgroundGradientDirection = gdVertical
    TextColor = clBlack
    GradientColor = clBlack
    RegularButtonColor = clBlack
    SelectedButtonColor = clBlack
    ButtonOptions = []
    object CLabel74: TCLabel
      Left = 7
      Top = 6
      Width = 59
      Height = 13
      Alignment = taRightJustify
      Caption = 'Conta Caixa'
    end
    object CLabel3: TCLabel
      Left = 391
      Top = 6
      Width = 29
      Height = 13
      Alignment = taRightJustify
      Caption = 'Al'#237'nea'
    end
    object CLabel5: TCLabel
      Left = 16
      Top = 31
      Width = 50
      Height = 13
      Caption = 'Devolu'#231#227'o'
    end
    object BtnDevolver: TCBitBtn
      Left = 147
      Top = 28
      Width = 86
      Height = 25
      Caption = '&Devolver'
      DoubleBuffered = True
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000D5773930000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000D87C3C8FD87C3D400000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000DB813F20D87C3CDFD577391000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000D7793ACFD576398000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000D474378FD7743AEFCD6B3110000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000D06E3270DB753EFFCC682E60000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000CD682E40DD783EFFCC662EAFD05F29FFD05F
        29FFD05F29FFD05F29FFD05F29FFD05F29FFD05F29FFC85923CF000000000000
        0000000000000000000000000000CB622A50DE783EFFCD642EBFD05F29FFDA76
        45FFD8713CFFD9713AFFDD6F36FFDC6932FFC95722CFC6572010000000000000
        0000000000000000000000000000C85D2780E47B41FFCC622CCFD05F29FFD672
        40FFD36B35FFD76F39FFDF7947FFC95926DFC3501C1000000000000000000000
        0000000000000000000000000000C95C27CFE57A40FFC95B28BFD05F29FFD671
        40FFD77442FFD56D38FFDD7A47FFD16534FFC757253000000000000000000000
        00000000000000000000C65A2750D56935FFE37941FFC65B29AFD05F29FFDB82
        56FFDF8A62FFDD8053FFD56C37FFDE7B4AFFD16635EFC7562470000000000000
        000000000000C5582540CD5F2DEFE37841FFD86C38FFC1552560D05F29FFDD8D
        67FFC95B2EEFD7794FFFDC7F50FFD46C36FFDE7A49FFD76E3DFFCD5D2CDFCC5B
        29BFCC5C2ACFD46633FFE0743EFFE0743EFFC85929EFBC4A1A10D05F29FFC95E
        32CFC4512210C857288FD47247FFDE8357FFD7713EFFD76F3AFFDC7440FFDE72
        3DFFDD713BFFDB703AFFDE723CFFCF602FFFBF4F205000000000D05F29CCC550
        22100000000000000000C7522250CE6336DFDA7A4FFFDD7E50FFDB7645FFDA72
        3FFFDC703CFFD86735FFC95829EFC05022500000000000000000D05F29120000
        000000000000000000000000000000000000C6512160C9582AAFCB5D2FBFCA5B
        2CBFC75627BFC0502170C04F2010000000000000000000000000}
      ParentDoubleBuffered = False
      TabOrder = 5
      OnClick = BtnDevolverClick
    end
    object CBitBtn3: TCBitBtn
      Left = 696
      Top = 28
      Width = 75
      Height = 25
      Action = actFechar
      Caption = '&Fechar'
      DoubleBuffered = True
      ParentDoubleBuffered = False
      TabOrder = 6
    end
    object LookCaixa: TCLookUp
      Left = 126
      Top = 3
      Width = 259
      Height = 19
      Alignment = taLeftJustify
      BevelInner = bvSpace
      BevelOuter = bvLowered
      Color = 14149350
      ParentBackground = False
      TabOrder = 1
      Key.Strings = (
        'idCaixa')
      LookUpKey.Strings = (
        'idCaixa')
      AlternateSQL.Strings = (
        
          'SELECT descCaixa FROM Caixa WHERE idEmpresa = [DBEidEmpresa] AND' +
          ' idCaixa = ?')
      ClientDataSet = cdsLookUp
      DataSource = dsPadrao
      ValidaCampoObrigatorio = True
      CampoObrigatorio = True
      LookUpTable = 'Caixa'
      ReturnField = 'descCaixa'
    end
    object DBEidCaixa: TCDBEdit
      Left = 72
      Top = 3
      Width = 48
      Height = 19
      BevelKind = bkTile
      BorderStyle = bsNone
      DataField = 'idCaixa'
      DataSource = dsPadrao
      TabOrder = 0
      Find = FindCaixa
      AcaoCad = frmPrincipal.actCadCaixa
      DecimalControl = True
      KeyMode = kmNormal
    end
    object DBEidAlinea: TCDBEdit
      Left = 426
      Top = 3
      Width = 48
      Height = 19
      BevelKind = bkTile
      BorderStyle = bsNone
      DataField = 'idAlinea'
      DataSource = dsPadrao
      TabOrder = 2
      Find = FindAlinea
      AcaoCad = frmPrincipal.actCadCaixa
      DecimalControl = True
      KeyMode = kmNormal
    end
    object LookAlinea: TCLookUp
      Left = 480
      Top = 3
      Width = 259
      Height = 19
      Alignment = taLeftJustify
      BevelInner = bvSpace
      BevelOuter = bvLowered
      Color = 14149350
      ParentBackground = False
      TabOrder = 3
      Key.Strings = (
        'idAlinea')
      LookUpKey.Strings = (
        'idAlinea')
      ClientDataSet = cdsLookUp
      DataSource = dsPadrao
      ValidaCampoObrigatorio = True
      CampoObrigatorio = True
      LookUpTable = 'Alineas'
      ReturnField = 'descAlinea'
    end
    object DBEdtDevolucao: TCDBEdit
      Left = 71
      Top = 28
      Width = 70
      Height = 19
      BevelKind = bkTile
      BorderStyle = bsNone
      DataField = 'dtDevolucao'
      DataSource = dsPadrao
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      MaxLength = 10
      ParentFont = False
      TabOrder = 4
      OnExit = DBEdtDevolucaoExit
      DecimalControl = True
      KeyMode = kmDate
    end
  end
  object CPanelGradient2: TCPanelGradient [5]
    Left = 0
    Top = 470
    Width = 804
    Height = 25
    Align = alBottom
    BevelOuter = bvNone
    Caption = 'PanBotoes'
    TabOrder = 5
    CaptionNo = 0
    HintNo = 0
    BackgroundGradientColor = 13099746
    BackgroundGradientDirection = gdVertical
    TextColor = clBlack
    GradientColor = clBlack
    RegularButtonColor = clBlack
    SelectedButtonColor = clBlack
    ButtonOptions = []
    object CLabel11: TCLabel
      Left = 383
      Top = 7
      Width = 51
      Height = 13
      Caption = 'Valor Total'
    end
    object DBEvlCheque: TCDBEdit
      Left = 440
      Top = 4
      Width = 105
      Height = 19
      TabStop = False
      BevelKind = bkTile
      BorderStyle = bsNone
      Color = 14149350
      DataField = 'vlTotalCheque'
      DataSource = dsTmp
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
      DecimalControl = True
      KeyMode = kmNormal
    end
    object DBEvlTotalCheque: TCDBEdit
      Left = 585
      Top = 3
      Width = 105
      Height = 19
      TabStop = False
      BevelKind = bkTile
      BorderStyle = bsNone
      Color = 14149350
      DataField = 'vlCheque'
      DataSource = dsGrid2
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 1
      Visible = False
      DecimalControl = True
      KeyMode = kmNormal
    end
  end
  inherited imgIcones: TImageList
    Left = 400
    Top = 264
    Bitmap = {
      494C0101020004005C0010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
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
    Left = 368
    Top = 264
  end
  inherited cdsPadrao: TClientDataSet
    AfterInsert = cdsPadraoAfterInsert
    object cdsPadraodescEmitente: TStringField
      FieldName = 'descEmitente'
      Size = 80
    end
    object cdsPadraoidCheque: TIntegerField
      FieldName = 'idCheque'
    end
    object cdsPadraodtInicial: TDateField
      FieldName = 'dtInicial'
    end
    object cdsPadraodtFinal: TDateField
      FieldName = 'dtFinal'
    end
    object cdsPadraodtVencimentoIni: TDateField
      FieldName = 'dtVencimentoIni'
    end
    object cdsPadraodtVencimentoFim: TDateField
      FieldName = 'dtVencimentoFim'
    end
    object cdsPadraoidCaixa: TIntegerField
      FieldName = 'idCaixa'
    end
    object cdsPadraoativo: TStringField
      FieldName = 'ativo'
      Size = 1
    end
    object cdsPadraodevolucao: TStringField
      FieldName = 'devolucao'
      Size = 1
    end
    object cdsPadraoidConta: TIntegerField
      FieldName = 'idConta'
    end
    object cdsPadraodtCompensacao: TDateField
      FieldName = 'dtCompensacao'
    end
    object cdsPadraoidAlinea: TIntegerField
      FieldName = 'idAlinea'
    end
    object cdsPadraodtDevolucao: TDateField
      FieldName = 'dtDevolucao'
    end
  end
  inherited cdsGrid: TClientDataSet
    CommandText = 'SELECT * FROM vBuscaCheques WHERE 1=1'
    object cdsGrididChequeRec: TIntegerField
      FieldName = 'idChequeRec'
      Required = True
    end
    object cdsGrididCliente: TIntegerField
      FieldName = 'idCliente'
      Required = True
    end
    object cdsGrididBanco: TIntegerField
      FieldName = 'idBanco'
      Required = True
    end
    object cdsGridemitente: TStringField
      FieldName = 'emitente'
      Required = True
      Size = 50
    end
    object cdsGridvlCheque: TFMTBCDField
      FieldName = 'vlCheque'
      Required = True
      Precision = 19
      Size = 4
    end
    object cdsGriddtLancamento: TSQLTimeStampField
      FieldName = 'dtLancamento'
      Required = True
    end
    object cdsGriddtVencimento: TSQLTimeStampField
      FieldName = 'dtVencimento'
      Required = True
    end
    object cdsGridstChequeRec: TStringField
      FieldName = 'stChequeRec'
      Required = True
      Size = 15
    end
    object cdsGriddtEmissao: TSQLTimeStampField
      FieldName = 'dtEmissao'
    end
    object cdsGrididCaixa: TIntegerField
      FieldName = 'idCaixa'
    end
    object cdsGridsel: TStringField
      FieldName = 'sel'
      Required = True
      Size = 1
    end
    object cdsGrididMovConta: TIntegerField
      FieldName = 'idMovConta'
      Required = True
    end
    object cdsGrididConta: TIntegerField
      FieldName = 'idConta'
    end
    object cdsGriddtMovimento: TSQLTimeStampField
      FieldName = 'dtMovimento'
    end
    object cdsGrididAlinea: TIntegerField
      FieldName = 'idAlinea'
    end
    object cdsGridstOcorrencia: TStringField
      FieldName = 'stOcorrencia'
      Size = 15
    end
    object cdsGrididChequeRecMov: TIntegerField
      FieldName = 'idChequeRecMov'
      Required = True
    end
    object cdsGridnrCheque: TIntegerField
      FieldName = 'nrCheque'
      Required = True
    end
    object cdsGridnrAgencia: TStringField
      FieldName = 'nrAgencia'
      Required = True
    end
    object cdsGridnrConta: TStringField
      FieldName = 'nrConta'
      Size = 30
    end
  end
  inherited sdsGrid: TSQLDataSet
    CommandText = 'SELECT * FROM vBuscaCheques WHERE 1=1'
  end
  inherited dsEmpresa: TDataSource
    Left = 472
  end
  object cdsGrid2: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    Params = <>
    AfterOpen = cdsPadraoAfterOpen
    Left = 344
    Top = 392
    object cdsGrid2idChequeRec: TIntegerField
      FieldName = 'idChequeRec'
      Required = True
    end
    object cdsGrid2idCliente: TIntegerField
      FieldName = 'idCliente'
      Required = True
    end
    object cdsGrid2idBanco: TIntegerField
      FieldName = 'idBanco'
      Required = True
    end
    object cdsGrid2Comp: TIntegerField
      FieldName = 'Comp'
    end
    object cdsGrid2nrAgencia: TStringField
      FieldName = 'nrAgencia'
      Required = True
    end
    object cdsGrid2nrConta: TStringField
      FieldName = 'nrConta'
      Size = 30
    end
    object cdsGrid2nrCheque: TIntegerField
      FieldName = 'nrCheque'
      Required = True
    end
    object cdsGrid2emitente: TStringField
      FieldName = 'emitente'
      Required = True
      Size = 50
    end
    object cdsGrid2vlCheque: TFMTBCDField
      FieldName = 'vlCheque'
      Required = True
      Precision = 19
      Size = 4
    end
    object cdsGrid2dtLancamento: TSQLTimeStampField
      FieldName = 'dtLancamento'
      Required = True
    end
    object cdsGrid2dtVencimento: TSQLTimeStampField
      FieldName = 'dtVencimento'
      Required = True
    end
    object cdsGrid2stChequeRec: TStringField
      FieldName = 'stChequeRec'
      Required = True
      Size = 15
    end
    object cdsGrid2dtEmissao: TSQLTimeStampField
      FieldName = 'dtEmissao'
    end
    object cdsGrid2idCaixa: TIntegerField
      FieldName = 'idCaixa'
    end
    object cdsGrid2sel: TStringField
      FieldName = 'sel'
      Size = 1
    end
    object cdsGrid2idConta: TIntegerField
      FieldName = 'idConta'
    end
    object cdsGrid2vlTotal: TAggregateField
      FieldName = 'vlTotal'
      Active = True
      Expression = 'SUM(vlCheque)'
    end
  end
  object dsGrid2: TDataSource
    DataSet = cdsGrid2
    Left = 384
    Top = 392
  end
  object dsChequeRecMov: TDataSource
    DataSet = cdsChequeRecMov
    Left = 552
    Top = 368
  end
  object cdsChequeRecMov: TClientDataSet
    Aggregates = <>
    CommandText = 'SELECT * FROM ChequeRec'
    Params = <>
    ProviderName = 'dspChequeRecMov'
    AfterOpen = cdsPadraoAfterOpen
    Left = 512
    Top = 376
    object cdsChequeRecMovidChequeRec: TIntegerField
      FieldName = 'idChequeRec'
      Required = True
    end
    object cdsChequeRecMovidCliente: TIntegerField
      FieldName = 'idCliente'
      Required = True
    end
    object cdsChequeRecMovidBanco: TIntegerField
      FieldName = 'idBanco'
      Required = True
    end
    object cdsChequeRecMovComp: TIntegerField
      FieldName = 'Comp'
    end
    object cdsChequeRecMovnrAgencia: TStringField
      FieldName = 'nrAgencia'
      Required = True
    end
    object cdsChequeRecMovnrConta: TStringField
      FieldName = 'nrConta'
      Size = 30
    end
    object cdsChequeRecMovnrCheque: TIntegerField
      FieldName = 'nrCheque'
      Required = True
    end
    object cdsChequeRecMovemitente: TStringField
      FieldName = 'emitente'
      Required = True
      Size = 50
    end
    object cdsChequeRecMovvlCheque: TFMTBCDField
      FieldName = 'vlCheque'
      Required = True
      Precision = 19
      Size = 4
    end
    object cdsChequeRecMovdtLancamento: TSQLTimeStampField
      FieldName = 'dtLancamento'
      Required = True
    end
    object cdsChequeRecMovdtVencimento: TSQLTimeStampField
      FieldName = 'dtVencimento'
      Required = True
    end
    object cdsChequeRecMovstChequeRec: TStringField
      FieldName = 'stChequeRec'
      Required = True
      Size = 15
    end
    object cdsChequeRecMovdtEmissao: TSQLTimeStampField
      FieldName = 'dtEmissao'
    end
    object cdsChequeRecMovidCaixa: TIntegerField
      FieldName = 'idCaixa'
    end
  end
  object dspChequeRecMov: TDataSetProvider
    DataSet = sdsChequeRecMov
    Options = [poAllowMultiRecordUpdates, poPropogateChanges, poAllowCommandText, poUseQuoteChar]
    Left = 480
    Top = 376
  end
  object sdsChequeRecMov: TSQLDataSet
    CommandText = 'SELECT * FROM ChequeRec'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmPadrao.dbConexao
    Left = 448
    Top = 376
  end
  object FindConta: TCFind
    SelectClause.Strings = (
      
        'SELECT  idConta, idBanco, idAgencia, idContaCorrente, descConta ' +
        'FROM vConta')
    JoinClause.Strings = (
      'WHERE StConta = '#39'ATIVO'#39' AND idEmpresa = [DBEidEmpresa]')
    OrderByClause.Strings = (
      'ORDER BY descConta')
    FindField = 'descConta'
    SQLConnection = dmPadrao.dbConexao
    ValueField = 'idConta'
    CarregaDados = True
    CollumNames.Strings = (
      'C'#243'digo'
      'Banco'
      'Ag'#234'ncia'
      'Conta'
      'Descri'#231#227'o')
    TypeFind = fFindNormal
    Left = 688
    Top = 40
  end
  object FindCaixa: TCFind
    SelectClause.Strings = (
      'SELECT  idCaixa, descCaixa FROM Caixa')
    JoinClause.Strings = (
      'WHERE StCaixa = '#39'ATIVO'#39' AND idEmpresa = [DBEidEmpresa]')
    OrderByClause.Strings = (
      'ORDER BY descCaixa')
    FindField = 'descCaixa'
    SQLConnection = dmPadrao.dbConexao
    ValueField = 'idCaixa'
    CarregaDados = True
    CollumNames.Strings = (
      'C'#243'digo'
      'Descri'#231#227'o')
    TypeFind = fFindNormal
    Left = 648
    Top = 112
  end
  object FindAlinea: TCFind
    SelectClause.Strings = (
      'SELECT  idAlinea, descAlinea FROM Alineas')
    OrderByClause.Strings = (
      'ORDER BY descAlinea')
    FindField = 'descAlinea'
    SQLConnection = dmPadrao.dbConexao
    ValueField = 'idAlinea'
    CarregaDados = True
    CollumNames.Strings = (
      'C'#243'digo'
      'Descri'#231#227'o')
    TypeFind = fFindNormal
    Left = 736
    Top = 112
  end
  object dsTmp: TDataSource
    DataSet = cdsTmp
    Left = 456
    Top = 432
  end
  object cdsTmp: TClientDataSet
    Aggregates = <>
    Params = <>
    AfterOpen = cdsPadraoAfterOpen
    Left = 432
    Top = 432
    object cdsTmpvlTotalCheque: TCurrencyField
      FieldName = 'vlTotalCheque'
    end
  end
end
