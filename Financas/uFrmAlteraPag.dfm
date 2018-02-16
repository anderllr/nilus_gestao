object frmAlteraPag: TfrmAlteraPag
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Altera'#231#227'o do Pagamento de Titulo'
  ClientHeight = 347
  ClientWidth = 778
  Color = 15201011
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel2: TBevel
    Left = 0
    Top = 86
    Width = 778
    Height = 4
    Align = alTop
    Shape = bsFrame
    Style = bsRaised
    ExplicitTop = 388
    ExplicitWidth = 601
  end
  object PanEmpresa: TCPanelGradient
    Left = 0
    Top = 0
    Width = 778
    Height = 32
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
    object CLabel2: TCLabel
      Left = 12
      Top = 10
      Width = 41
      Height = 13
      Alignment = taRightJustify
      Caption = 'Empresa'
      Transparent = True
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
      DataSource = dsEmpresa
      Enabled = False
      TabOrder = 0
      OnKeyDown = DBEidEmpresaKeyDown
      DecimalControl = True
      KeyMode = kmNormal
    end
    object LookdescCadEmpresa: TCLookUp
      Left = 154
      Top = 7
      Width = 194
      Height = 19
      Alignment = taLeftJustify
      BevelInner = bvSpace
      BevelOuter = bvLowered
      Color = 14149350
      ParentBackground = False
      TabOrder = 2
      Key.Strings = (
        'idEmpresa')
      LookUpKey.Strings = (
        'idEmpresa')
      ClientDataSet = cdsLookUp
      DataSource = dsEmpresa
      ValidaCampoObrigatorio = True
      CampoObrigatorio = True
      LookUpTable = 'vCadEmpresaContabil'
      ReturnField = 'descCadEmpresa'
    end
    object LookdescAbreviada: TCLookUp
      Left = 354
      Top = 7
      Width = 144
      Height = 19
      Alignment = taLeftJustify
      BevelInner = bvSpace
      BevelOuter = bvLowered
      Color = 14149350
      ParentBackground = False
      TabOrder = 3
      Key.Strings = (
        'idEmpresa')
      LookUpKey.Strings = (
        'idEmpresa')
      ClientDataSet = cdsLookUp
      DataSource = dsEmpresa
      ValidaCampoObrigatorio = False
      CampoObrigatorio = True
      LookUpTable = 'vCadEmpresaContabil'
      ReturnField = 'descAbreviada'
    end
    object lookidCnpjCpf: TCLookUp
      Left = 504
      Top = 7
      Width = 89
      Height = 19
      Alignment = taLeftJustify
      BevelInner = bvSpace
      BevelOuter = bvLowered
      Color = 14149350
      ParentBackground = False
      TabOrder = 4
      Key.Strings = (
        'idEmpresa')
      LookUpKey.Strings = (
        'idEmpresa')
      ClientDataSet = cdsLookUp
      DataSource = dsEmpresa
      ValidaCampoObrigatorio = False
      CampoObrigatorio = True
      LookUpTable = 'vCadEmpresaContabil'
      ReturnField = 'idCnpjCpf'
    end
    object DBEidCadEmpresa: TCDBEdit
      Left = 111
      Top = 7
      Width = 37
      Height = 19
      TabStop = False
      BevelKind = bkTile
      BorderStyle = bsNone
      DataField = 'idCadEmpresa'
      DataSource = dsEmpresa
      Enabled = False
      TabOrder = 1
      OnKeyDown = DBEidEmpresaKeyDown
      DecimalControl = True
      KeyMode = kmNormal
    end
  end
  object PanBotoes: TCPanelGradient
    Left = 0
    Top = 316
    Width = 778
    Height = 31
    Align = alBottom
    BevelOuter = bvNone
    Caption = 'PanBotoes'
    TabOrder = 1
    CaptionNo = 0
    HintNo = 0
    BackgroundGradientColor = 13099746
    BackgroundGradientDirection = gdVertical
    TextColor = clBlack
    GradientColor = clBlack
    RegularButtonColor = clBlack
    SelectedButtonColor = clBlack
    ButtonOptions = []
    object BtnSalvar: TCBitBtn
      Left = 8
      Top = 2
      Width = 75
      Height = 25
      Action = actSalvar
      Caption = '&Salvar'
      Glyph.Data = {
        36080000424D3608000000000000360000002800000020000000100000000100
        2000000000000008000000000000000000000000000000000000FF00FF00FF00
        FF00C6636300C6636300C6424200A5A5A500C6C6C600C6C6C600C6C6C600C6C6
        C600C6C6C600C6A5A5008442420084424200C6636300FF00FF00FF00FF00FF00
        FF00848484008484840084848400A5A5A500C6C6C600C6DEC600C6DEC600C6DE
        C600C6DEC600C6C6C600848484008484840084848400FF00FF00FF00FF00C684
        8400C6636300C6636300C663630084848400C6A5A500C6DEC600FFFFFF00FFFF
        FF00F7FFFF00C6C6C6008421210084424200C6636300C6636300FF00FF00A5A5
        A500A5A5A500A5A5A500A5A5A500A5A5A500C6C6C600F7FFFF00FFFFFF00FFFF
        FF00FFFFFF00C6C6C6008463630084636300A5A5A50084848400FF00FF00C684
        8400C6636300C6636300C66363008484840084424200C6848400C6DEC600FFFF
        FF00FFFFFF00C6C6C6008421210084424200C6636300C6636300FF00FF00A5A5
        A500A5A5A500A5A5A500A5A5A500A5A5A50084848400A5A5A500F7FFFF00FFFF
        FF00FFFFFF00C6DEC6008463630084848400A5A5A50084848400FF00FF00C684
        8400C6636300C6636300C6636300C68484008442420084424200C6C6C600F7FF
        FF00FFFFFF00F7CEA5008421210084424200C6636300C6636300FF00FF00A5A5
        A500A5A5A500A5A5A500A5A5A500A5A5A5008484840084848400C6C6C600FFFF
        FF00FFFFFF00C6DEC6008463630084636300A5A5A50084848400FF00FF00C684
        8400C6636300C6636300C6636300C68484008442420084424200A5A5A500C6DE
        C600FFFFFF00C6C6C6008421210084424200C6636300C6636300FF00FF00A5A5
        A500A5A5A500A5A5A500A5A5A500A5A5A5008484840084636300A5A5A500F7FF
        FF00FFFFFF00F7FFFF008463630084636300A5A5A50084848400FF00FF00C684
        8400C6636300C6636300C6636300C6A58400C6A5A500C6848400C6848400C6A5
        A500C6C6C600C6A5A500C6424200C6424200C6636300C6636300FF00FF00A5A5
        A500A5A5A500A5A5A500A5A5A500C6C6C600C6C6C600A5A5A500A5A5A500C6C6
        C600C6DEC600C6C6C6008484840084848400A5A5A50084848400FF00FF00C684
        8400C6636300C6636300C6636300C6636300C6636300C6636300C6636300C663
        6300C6636300C6636300C6636300C6636300C6636300C6636300FF00FF00A5A5
        A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5
        A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5A50084848400FF00FF00C684
        8400C6636300C6636300C6848400C6A5A500C6A5A500C6A5A500C6A5A500C6A5
        A500C6A5A500C6A5A500C6A5A500C6A5A500C6636300C6636300FF00FF00A5A5
        A5008484840084848400A5A5A500C6C6C600C6C6C600C6C6C600C6C6C600C6C6
        C600C6C6C600C6C6C600C6C6C600C6C6C600A5A5A50084848400FF00FF00C684
        8400C6424200C6C6C600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00C6C6C600C6636300C6636300FF00FF00A5A5
        A50084848400F7FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00C6DEC600A5A5A50084848400FF00FF00C684
        8400C6634200F7CEA500FFFFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FF
        FF00F7FFFF00F7FFFF00FFFFFF00C6C6C600C6636300C6636300FF00FF00A5A5
        A50084848400F7FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00C6DEC600A5A5A50084848400FF00FF00C684
        8400C6634200F7CEA500F7FFFF00C6DEC600C6DEC600C6DEC600C6DEC600C6DE
        C600C6DEC600C6DEC600F7FFFF00F7CEA500C6636300C6636300FF00FF00A5A5
        A50084848400F7FFFF00FFFFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FF
        FF00F7FFFF00F7FFFF00F7FFFF00C6DEC600A5A5A50084848400FF00FF00C684
        8400C6634200F7CEA500F7FFFF00C6DEC600C6DEC600C6DEC600C6DEC600C6DE
        C600C6DEC600C6DEC600F7FFFF00F7CEA500C6636300C6636300FF00FF00A5A5
        A50084848400F7FFFF00FFFFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FF
        FF00F7FFFF00F7FFFF00FFFFFF00C6DEC600A5A5A50084848400FF00FF00C684
        8400C6634200F7CEA500F7FFFF00C6DEC600F7FFFF00F7FFFF00F7FFFF00F7FF
        FF00F7FFFF00C6DEC600F7FFFF00C6C6C600C6636300C6636300FF00FF00A5A5
        A50084848400F7FFFF00FFFFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FF
        FF00F7FFFF00F7FFFF00FFFFFF00C6DEC600A5A5A50084848400FF00FF00C684
        8400C6634200F7CEA500F7FFFF00C6DEC600C6DEC600C6DEC600C6DEC600C6DE
        C600C6DEC600C6DEC600F7FFFF00F7CEA500C6636300C6636300FF00FF00A5A5
        A50084848400F7FFFF00FFFFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FF
        FF00F7FFFF00F7FFFF00F7FFFF00C6DEC600A5A5A50084848400FF00FF00C684
        8400C6634200F7CEA500FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00C6C6C600C6636300C6636300FF00FF00A5A5
        A50084848400F7FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00C6DEC600A5A5A50084848400FF00FF00FF00
        FF00C6634200C6C6C600C6DEC600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
        C600C6C6C600C6C6C600C6DEC600C6A5A500C6424200FF00FF00FF00FF00FF00
        FF0084848400C6C6C600C6DEC600C6DEC600C6DEC600C6DEC600C6DEC600C6DE
        C600C6DEC600C6DEC600C6DEC600C6C6C60084848400FF00FF00}
      Margin = 5
      NumGlyphs = 2
      TabOrder = 0
    end
    object BtnFechar: TCBitBtn
      Left = 511
      Top = 2
      Width = 75
      Height = 25
      Action = actFechar
      Caption = '&Fechar'
      Glyph.Data = {
        36080000424D3608000000000000360000002800000020000000100000000100
        2000000000000008000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF008463630084424200FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00A5A5A50084848400FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF008463630084636300C6636300C663630084424200FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00A5A5A500A5A5A50084848400A5A5A50084848400FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF008463630084636300C6636300C6636300C6636300C6636300844242008463
        63008463630084636300846363008463630084636300FF00FF00FF00FF00FF00
        FF00A5A5A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5A50084848400A5A5
        A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5A500FF00FF00FF00FF00FF00
        FF0084636300C6848400C6848400C6638400C6636300C663630084424200F7CE
        A500F7CEA500F7CEA500F7CEA500F7CEA50084636300FF00FF00FF00FF00FF00
        FF00A5A5A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5A50084848400C6DE
        C600C6DEC600C6DEC600C6DEC600C6DEC600A5A5A500FF00FF00FF00FF00FF00
        FF0084636300C6848400C6848400C6848400C6848400C66384008442420042C6
        630042C6630042C6630000C66300F7CEA50084636300FF00FF00FF00FF00FF00
        FF00A5A5A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5A500848484008484
        8400848484008484840084848400C6DEC600A5A5A500FF00FF00FF00FF00FF00
        FF0084636300C6848400C6848400C6848400C6848400C68484008442420042C6
        630042C6630042C6630042C66300F7CEA50084636300FF00FF00FF00FF00FF00
        FF00A5A5A500C6C6C600A5A5A500A5A5A500A5A5A500A5A5A50084848400A5A5
        A500A5A5A500A5A5A50084848400C6DEC600A5A5A500FF00FF00FF00FF00FF00
        FF0084636300C6848400C6848400C6848400C6848400C68484008442420042C6
        630042C6630042C6630042C66300F7CEA50084636300FF00FF00FF00FF00FF00
        FF00A5A5A500C6C6C600C6C6C600C6C6C600C6C6C600A5A5A500848484008484
        840084848400A5A5A50084848400C6DEC600A5A5A500FF00FF00FF00FF00FF00
        FF0084636300C6848400C6848400C6A5A500F7FFFF00C684840084424200C6DE
        C60084E7840042E7840042E78400F7CEA50084636300FF00FF00FF00FF00FF00
        FF00A5A5A500C6C6C600C6C6C600C6C6C600F7FFFF00C6C6C60084848400C6DE
        C600C6C6C600A5A5A500A5A5A500C6DEC600A5A5A500FF00FF00FF00FF00FF00
        FF0084636300C6848400C6848400F7CEA500F7FFFF00C684840084424200FFFF
        FF00FFFFFF00FFFFFF00F7FFFF00F7CEA50084636300FF00FF00FF00FF00FF00
        FF00A5A5A500C6C6C600C6C6C600C6C6C600F7FFFF00C6C6C60084848400F7FF
        FF00F7FFFF00F7FFFF00F7FFFF00C6DEC600A5A5A500FF00FF00FF00FF00FF00
        FF0084636300F7CEA500C6848400C6848400C6848400C684840084424200FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00F7CEA50084636300FF00FF00FF00FF00FF00
        FF00A5A5A500C6C6C600C6C6C600C6C6C600C6C6C600A5A5A50084848400F7FF
        FF00F7FFFF00F7FFFF00F7FFFF00C6DEC600A5A5A500FF00FF00FF00FF00FF00
        FF0084636300F7CEA500F7CEA500F7CEA500F7CEA500C684840084424200FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00F7CEA50084636300FF00FF00FF00FF00FF00
        FF00A5A5A500C6C6C600C6C6C600C6C6C600C6C6C600C6C6C60084848400F7FF
        FF00F7FFFF00F7FFFF00F7FFFF00C6DEC600A5A5A500FF00FF00FF00FF00FF00
        FF0084636300F7CEA500F7CEA500F7CEA500F7CEA500C684840084424200FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00F7CEA50084636300FF00FF00FF00FF00FF00
        FF00A5A5A500C6C6C600C6C6C600C6C6C600C6C6C600C6C6C60084848400F7FF
        FF00F7FFFF00F7FFFF00F7FFFF00C6DEC600A5A5A500FF00FF00FF00FF00FF00
        FF0084636300F7CEA500F7CEA500F7CEA500F7CEA500C684840084424200FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00F7CEA50084636300FF00FF00FF00FF00FF00
        FF00A5A5A500C6C6C600C6C6C600C6C6C600C6C6C600C6C6C60084848400F7FF
        FF00F7FFFF00F7FFFF00F7FFFF00C6DEC600A5A5A500FF00FF00FF00FF00FF00
        FF008463630084636300C6848400F7CEA500F7CEA500C684A50084424200FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00F7CEA50084636300FF00FF00FF00FF00FF00
        FF00A5A5A500A5A5A500C6C6C600C6C6C600C6C6C600C6C6C60084848400F7FF
        FF00F7FFFF00F7FFFF00F7FFFF00C6DEC600A5A5A500FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF0084636300C6848400C6848400C6848400844242008463
        63008463630084636300846363008463630084636300FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00A5A5A500A5A5A500A5A5A500C6C6C60084848400A5A5
        A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5A500FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00846363008463630084424200FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00A5A5A500A5A5A50084848400FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
      NumGlyphs = 2
      TabOrder = 1
    end
  end
  object PagAbas: TCPageControl
    Left = 0
    Top = 90
    Width = 778
    Height = 226
    ActivePage = TabCaixa
    Align = alClient
    Images = imgIcones
    MultiLine = True
    TabOrder = 2
    TabStop = False
    object TabCaixa: TTabSheet
      Caption = 'Caixa'
      object CLabel43: TCLabel
        Left = 38
        Top = 80
        Width = 46
        Height = 13
        Alignment = taRightJustify
        Caption = 'Descri'#231#227'o'
      end
      object CLabel35: TCLabel
        Left = 8
        Top = 58
        Width = 76
        Height = 13
        Alignment = taRightJustify
        Caption = 'Mov. Financeira'
      end
      object CLabel39: TCLabel
        Left = 25
        Top = 36
        Width = 59
        Height = 13
        Alignment = taRightJustify
        Caption = 'Conta Caixa'
      end
      object CLabel40: TCLabel
        Left = 55
        Top = 14
        Width = 29
        Height = 13
        Alignment = taRightJustify
        Caption = 'Valor'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBEidMovCaixa: TCDBEdit
        Left = 350
        Top = 8
        Width = 81
        Height = 19
        BevelKind = bkTile
        BorderStyle = bsNone
        DataField = 'idMovCaixa'
        DataSource = dsMovCaixa
        TabOrder = 0
        Visible = False
        Find = FindCaixa
        DecimalControl = True
        KeyMode = kmNormal
      end
      object DBMdescMovCaixa: TCDBMemo
        Left = 91
        Top = 77
        Width = 428
        Height = 48
        BevelKind = bkTile
        BorderStyle = bsNone
        DataField = 'descMovCaixa'
        DataSource = dsMovCaixa
        ScrollBars = ssVertical
        TabOrder = 1
        KeyMemo = kmmUSUpper
      end
      object DBEidMovFinanceira: TCDBEdit
        Left = 90
        Top = 55
        Width = 48
        Height = 19
        BevelKind = bkTile
        BorderStyle = bsNone
        DataField = 'idMovFinanceira'
        DataSource = dsMovCaixa
        TabOrder = 2
        Find = FindMovFinanceira
        DecimalControl = True
        KeyMode = kmNormal
      end
      object LookMovFinanceira: TCLookUp
        Left = 144
        Top = 55
        Width = 247
        Height = 19
        Alignment = taLeftJustify
        BevelInner = bvSpace
        BevelOuter = bvLowered
        Color = 14149350
        ParentBackground = False
        TabOrder = 3
        Key.Strings = (
          'idMovFinanceira')
        LookUpKey.Strings = (
          'idMovFinanceira')
        AlternateSQL.Strings = (
          
            'SELECT descMovFinanceira FROM MovFinanceira WHERE idMovOrigem = ' +
            '3 AND idTpMovFinanceira = 6  AND sinal = '#39'-'#39' AND idMovFinanceira' +
            ' = ?')
        ClientDataSet = cdsLookUp
        DataSource = dsMovCaixa
        ValidaCampoObrigatorio = True
        CampoObrigatorio = True
        LookUpTable = 'MovFinanceira'
        ReturnField = 'descMovFinanceira'
      end
      object CBitBtn3: TCBitBtn
        Left = 423
        Top = 55
        Width = 96
        Height = 19
        Caption = '&Movimenta'#231#227'o'
        Glyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FBFB
          FBFFD6D6D6FFC8C8C8FFCCCCCCFFD2D2D2FFA5A7A9FF64AFB8FF68B9C4FF97A0
          A3FFD0D0D0FFCFCFCFFFC9C9C9FFD3D3D3FFF7F7F7FFFF00FF00FF00FF00F6F6
          F6FFB9B9B9FFBABABAFFA8A8A8FF4F959EFF9AFBFFFFEDFFFFFFF3FFFFFFABFF
          FFFF4DA1ABFFA1A1A1FFBBBBBBFFB4B4B4FFEFEFEFFFFF00FF00FF00FF00FF00
          FF00FDFDFDFF8AAAAEFF70D9E5FFD4FFFFFFEAFFFFFFDCFFFFFFDBFFFFFFE8FF
          FFFFDDFFFFFF75E2EDFF7CA5AAFFF6F6F6FFFF00FF00FF00FF00FF00FF00D2E8
          EBFF42CFE0FF8AFFFFFFCCFFFFFFE9F0E9FFDAF1F2FFE8E9DFFFEEE5D6FFD7F5
          F7FFEAEDE4FFD2FFFFFF9CFFFFFF45D6E6FFC0DFE4FFFF00FF00FF00FF0084E2
          EFFF5AFFFFFF73FAFFFF8AF2FFFFD6D4BFFFFFCEA1FFFED2ABFFFED2AAFFFED1
          A6FFE3D2B3FF96F0FFFF7EF8FFFF64FFFFFF67E0F0FFFF00FF00FF00FF0086DA
          E6FF2BF5FFFF72C3B5FFD99C46FFE7AF5BFFDCBA81FFADD9CEFFACDDD3FFD5C1
          91FFECB360FFE0A24DFF89BBA2FF34F7FFFF68D5E3FFFF00FF00FF00FF0087D9
          E5FF2AECFFFF34D5E7FFD39822FFD39D29FF48DAECFF44F2FFFF47F2FFFF47E3
          FFFFC7AA52FFE5971CFF42CDDCFF20EEFFFF66D3E3FFFF00FF00FF00FF008EDA
          E5FFA3F4FFFFD9D4AEFFFFCB61FFB8C691FF23E3FFFF22DFF5FF30E1F5FF16EC
          FFFF81B688FFFFA500FFCE9217FF24D1E5FF60D4E7FFFF00FF00FF00FF008FD9
          E5FFC4FAFFFFD7EBE6FFFFEDB9FFFDEEC9FFACF1FFFF48E1F5FF09D8F4FF00CF
          FBFFB0AD3BFFFFA700FF47A588FF0AD7F4FF64D2E3FFFF00FF00FF00FF008ED9
          E4FFDDFFFFFFE3F5F2FFFFF2CFFFFFF4CDFFFAEFDDFFE0F5F8FFA4EDFCFF9DC8
          AFFFFFCB34FFFFC932FF97CDBAFFACFAFFFF85D7E3FFFF00FF00FF00FF008AD8
          E3FFFDFFFFFFFFFFFFFFF0F5F3FFFAF7E9FFFFFAE2FFFFF7E4FFFFF9E6FFFFFF
          E8FFFFFCF1FFF6F9FBFFFFFFFFFFFFFFFFFF83D5E2FFFF00FF00FF00FF00E5F5
          F8FF76D1E0FFC9F3FAFFFFFFFFFFFFFFF9FFFCFAF5FFFFFBF5FFFFFCF4FFFAFB
          F8FFFFFEFCFFFFFFFFFFDCFBFFFF76D3E1FFCEEDF2FFFF00FF00FF00FF00FF00
          FF00FF00FF00B8E5ECFF82D6E4FFF8FFFFFFFFFFFFFFFFFFFEFFFFFEFDFFFFFF
          FFFFFFFFFFFF8BDCE7FF9BDCE6FFFF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF0095DBE5FF95DEE9FFFFFFFFFFFFFFFFFFA6E4
          EEFF8ED8E3FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0089D6E2FF83D4E1FFFBFD
          FDFFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
        TabOrder = 4
        TabStop = False
      end
      object LookSinal: TCLookUp
        Left = 397
        Top = 54
        Width = 19
        Height = 21
        Alignment = taLeftJustify
        BevelInner = bvSpace
        BevelOuter = bvLowered
        Color = 14149350
        ParentBackground = False
        TabOrder = 5
        Key.Strings = (
          'idMovFinanceira')
        LookUpKey.Strings = (
          'idMovFinanceira')
        AlternateSQL.Strings = (
          
            'SELECT sinal FROM MovFinanceira WHERE idMovOrigem = 3 AND idTpMo' +
            'vFinanceira = 6  AND sinal = '#39'-'#39' AND idMovFinanceira = ?')
        ClientDataSet = cdsLookUp
        DataSource = dsMovCaixa
        ValidaCampoObrigatorio = True
        CampoObrigatorio = True
        LookUpTable = 'MovFinanceira'
        ReturnField = 'descMovFinanceira'
      end
      object CBitBtn1: TCBitBtn
        Left = 423
        Top = 33
        Width = 96
        Height = 19
        Caption = '&Conta Caixa'
        Glyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00F8F8F8FFF4F6
          F6FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00EBEBEAFFF8F9F8FFFF00FF00F4F4F4FFF0F0
          EFFFB9B9B8FFEBEBE9FFF0EFEEFFF0F0EEFFEEEEEEFFE2E2E2FFE9E9E9FFF9F8
          F8FFF1F1F0FFE1E0DFFFF6F5F4FFE3E2E1FFFAF9F8FFFF00FF00FBFBFBFFC3BB
          B6FFC4BEBBFFC8C4BEFFCDC7C5FFCBC7C5FFCBC6C1FFCDC5C4FFCCC8C3FFCDC7
          C7FFCDC8C3FFCCC9C5FFCDCAC6FFD3C9C7FFD0CBC8FFFF00FF00FBFBFBFFC9C3
          C0FFB96A1AFF80350BFFAF6115FFE69C39FFE79E3BFFEED370FFFEFDF7FFF2F7
          CAFFCA7B22FFA25511FFAA5C14FFBB701BFFD0CCC7FFFF00FF00FBFBFBFFC8C3
          C0FFD08125FF934012FF9E4C11FFD98B28FFECB950FFF0EC90FFEFF7BBFFECB6
          4FFFAC5915FF9E4C13FFAC5B15FFBC6A17FFD2CDCAFFFF00FF00FCFCFCFFC9C5
          C3FFCD791AFFB05913FFA04911FFAF5714FFE7AB40FFEDDF7AFFE9B94CFFDE92
          25FFB86314FF953F0EFFA95213FFB96616FFD5D0CDFFFF00FF00FDFCFCFFCEC7
          C5FFBF691AFFCD7619FFC46E17FFAE5214FFD98522FFEAAE3EFFDE8F22FFD07A
          17FFC26A17FFA74A13FFBC6617FFAD5315FFD3CFCAFFFF00FF00FDFDFDFFD3CD
          C7FFC76C16FFE0861FFFE29022FFD6801AFFC46717FFE29123FFE39121FFCA70
          16FFBD5D15FFAE4F14FFA84A15FFD8821EFFD4D0CBFFFF00FF00FDFDFDFFD3CC
          C9FFB95916FFE59C27FFE59722FFE1901DFFCA6D15FFCE7318FFD17617FFBA59
          15FFA84311FF9B3812FF912C10FFA54313FFD7D1CCFFFF00FF00FF00FF00D5CE
          CCFFBF5E15FFD77F19FFE8AA38FFE59E2AFFC76919FFC16015FFBC5A16FFA43C
          11FF942B11FF861E10FF791A0EFF9F3A15FFDAD4D0FFFF00FF00FF00FF00D4CE
          CFFFC38F68FFCFA26BFFD6AE73FFD4AC72FFC18E6BFFC4936BFFBA8865FFAE7A
          67FFA66F65FF9A6863FF9D6A61FF9C6B62FFDBD7D2FFFF00FF00FF00FF00E3E1
          DFFFEAE5E5FFEBEAE8FFEEECECFFEDECEBFFEDECEBFFEEECECFFEDECECFFEEED
          EDFFEDEDEDFFEEEDECFFEEEDECFFEDECEAFFE7E5E3FFFF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
        TabOrder = 6
        TabStop = False
      end
      object LookCaixa: TCLookUp
        Left = 144
        Top = 33
        Width = 272
        Height = 19
        Alignment = taLeftJustify
        BevelInner = bvSpace
        BevelOuter = bvLowered
        Color = 14149350
        ParentBackground = False
        TabOrder = 7
        Key.Strings = (
          'idCaixa')
        LookUpKey.Strings = (
          'idCaixa')
        AlternateSQL.Strings = (
          
            'SELECT descCaixa FROM Caixa WHERE idEmpresa = [DBEidEmpresa] AND' +
            ' idCaixa = ?')
        ClientDataSet = cdsLookUp
        DataSource = dsMovCaixa
        ValidaCampoObrigatorio = True
        CampoObrigatorio = True
        LookUpTable = 'Caixa'
        ReturnField = 'descCaixa'
      end
      object DBEidCaixa: TCDBEdit
        Left = 90
        Top = 33
        Width = 48
        Height = 19
        BevelKind = bkTile
        BorderStyle = bsNone
        DataField = 'idCaixa'
        DataSource = dsMovCaixa
        TabOrder = 8
        Find = FindCaixa
        DecimalControl = True
        KeyMode = kmNormal
      end
      object DBEvlMovCaixa: TCDBEdit
        Left = 90
        Top = 11
        Width = 94
        Height = 19
        BevelKind = bkTile
        BorderStyle = bsNone
        DataField = 'vlMovCaixa'
        DataSource = dsMovCaixa
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 9
        DecimalControl = True
        KeyMode = kmNormal
      end
      object DBEidTituloPag: TCDBEdit
        Left = 437
        Top = 8
        Width = 98
        Height = 19
        TabStop = False
        BevelKind = bkTile
        BorderStyle = bsNone
        Color = 14149350
        DataField = 'idTituloPag'
        DataSource = dsMov
        ReadOnly = True
        TabOrder = 10
        Visible = False
        DecimalControl = True
        KeyMode = kmNormal
      end
    end
    object TabBanco: TTabSheet
      Caption = 'Banco / Cheque'
      ImageIndex = 1
      object CGroupBox1: TCGroupBox
        Left = 8
        Top = 3
        Width = 530
        Height = 138
        TabOrder = 0
        object CLabel47: TCLabel
          Left = 36
          Top = 79
          Width = 46
          Height = 13
          Alignment = taRightJustify
          Caption = 'Descri'#231#227'o'
        end
        object CLabel46: TCLabel
          Left = 6
          Top = 60
          Width = 76
          Height = 13
          Alignment = taRightJustify
          Caption = 'Mov. Financeira'
        end
        object CLabel48: TCLabel
          Left = 53
          Top = 38
          Width = 29
          Height = 13
          Alignment = taRightJustify
          Caption = 'Conta'
        end
        object CLabel45: TCLabel
          Left = 53
          Top = 16
          Width = 29
          Height = 13
          Alignment = taRightJustify
          Caption = 'Valor'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object CLabel44: TCLabel
          Left = 366
          Top = 16
          Width = 67
          Height = 13
          Alignment = taRightJustify
          Caption = 'Compensa'#231#227'o'
        end
        object CLabel32: TCLabel
          Left = 200
          Top = 16
          Width = 67
          Height = 13
          Alignment = taRightJustify
          Caption = 'Agendamento'
        end
        object DBMdescMovConta: TCDBMemo
          Left = 88
          Top = 79
          Width = 431
          Height = 50
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'descMovConta'
          DataSource = dsMovConta
          ScrollBars = ssVertical
          TabOrder = 10
          KeyMemo = kmmUSUpper
        end
        object DBEidMovFinanceiraC: TCDBEdit
          Left = 88
          Top = 57
          Width = 48
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'idMovFinanceira'
          DataSource = dsMovConta
          TabOrder = 7
          Find = FindMovFinanceiraC
          DecimalControl = True
          KeyMode = kmNormal
        end
        object LookMovFinanceiraBCO: TCLookUp
          Left = 142
          Top = 57
          Width = 250
          Height = 19
          Alignment = taLeftJustify
          BevelInner = bvSpace
          BevelOuter = bvLowered
          Color = 14149350
          ParentBackground = False
          TabOrder = 8
          Key.Strings = (
            'idMovFinanceira')
          LookUpKey.Strings = (
            'idMovFinanceira')
          AlternateSQL.Strings = (
            
              'SELECT descMovFinanceira FROM MovFinanceira WHERE idMovOrigem = ' +
              '4 AND idTpMovFinanceira IN (7, 8) AND sinal = '#39'-'#39' AND idMovFinan' +
              'ceira = ?')
          ClientDataSet = cdsLookUp
          DataSource = dsMovConta
          ValidaCampoObrigatorio = True
          CampoObrigatorio = True
          LookUpTable = 'MovFinanceira'
          ReturnField = 'descMovFinanceira'
        end
        object CLookUp2: TCLookUp
          Left = 398
          Top = 57
          Width = 19
          Height = 19
          Alignment = taLeftJustify
          BevelInner = bvSpace
          BevelOuter = bvLowered
          Color = 14149350
          ParentBackground = False
          TabOrder = 9
          Key.Strings = (
            'idMovFinanceira')
          LookUpKey.Strings = (
            'idMovFinanceira')
          AlternateSQL.Strings = (
            
              'SELECT sinal FROM MovFinanceira WHERE idMovOrigem = 4 AND idTpMo' +
              'vFinanceira IN (7, 8) AND sinal = '#39'-'#39' AND idMovFinanceira = ?')
          ClientDataSet = cdsLookUp
          DataSource = dsMovConta
          ValidaCampoObrigatorio = True
          CampoObrigatorio = True
          LookUpTable = 'MovFinanceira'
          ReturnField = 'descMovFinanceira'
        end
        object CBitBtn2: TCBitBtn
          Left = 423
          Top = 56
          Width = 96
          Height = 19
          Caption = '&Movimenta'#231#227'o'
          Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            2000000000000004000000000000000000000000000000000000FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FBFB
            FBFFD6D6D6FFC8C8C8FFCCCCCCFFD2D2D2FFA5A7A9FF64AFB8FF68B9C4FF97A0
            A3FFD0D0D0FFCFCFCFFFC9C9C9FFD3D3D3FFF7F7F7FFFF00FF00FF00FF00F6F6
            F6FFB9B9B9FFBABABAFFA8A8A8FF4F959EFF9AFBFFFFEDFFFFFFF3FFFFFFABFF
            FFFF4DA1ABFFA1A1A1FFBBBBBBFFB4B4B4FFEFEFEFFFFF00FF00FF00FF00FF00
            FF00FDFDFDFF8AAAAEFF70D9E5FFD4FFFFFFEAFFFFFFDCFFFFFFDBFFFFFFE8FF
            FFFFDDFFFFFF75E2EDFF7CA5AAFFF6F6F6FFFF00FF00FF00FF00FF00FF00D2E8
            EBFF42CFE0FF8AFFFFFFCCFFFFFFE9F0E9FFDAF1F2FFE8E9DFFFEEE5D6FFD7F5
            F7FFEAEDE4FFD2FFFFFF9CFFFFFF45D6E6FFC0DFE4FFFF00FF00FF00FF0084E2
            EFFF5AFFFFFF73FAFFFF8AF2FFFFD6D4BFFFFFCEA1FFFED2ABFFFED2AAFFFED1
            A6FFE3D2B3FF96F0FFFF7EF8FFFF64FFFFFF67E0F0FFFF00FF00FF00FF0086DA
            E6FF2BF5FFFF72C3B5FFD99C46FFE7AF5BFFDCBA81FFADD9CEFFACDDD3FFD5C1
            91FFECB360FFE0A24DFF89BBA2FF34F7FFFF68D5E3FFFF00FF00FF00FF0087D9
            E5FF2AECFFFF34D5E7FFD39822FFD39D29FF48DAECFF44F2FFFF47F2FFFF47E3
            FFFFC7AA52FFE5971CFF42CDDCFF20EEFFFF66D3E3FFFF00FF00FF00FF008EDA
            E5FFA3F4FFFFD9D4AEFFFFCB61FFB8C691FF23E3FFFF22DFF5FF30E1F5FF16EC
            FFFF81B688FFFFA500FFCE9217FF24D1E5FF60D4E7FFFF00FF00FF00FF008FD9
            E5FFC4FAFFFFD7EBE6FFFFEDB9FFFDEEC9FFACF1FFFF48E1F5FF09D8F4FF00CF
            FBFFB0AD3BFFFFA700FF47A588FF0AD7F4FF64D2E3FFFF00FF00FF00FF008ED9
            E4FFDDFFFFFFE3F5F2FFFFF2CFFFFFF4CDFFFAEFDDFFE0F5F8FFA4EDFCFF9DC8
            AFFFFFCB34FFFFC932FF97CDBAFFACFAFFFF85D7E3FFFF00FF00FF00FF008AD8
            E3FFFDFFFFFFFFFFFFFFF0F5F3FFFAF7E9FFFFFAE2FFFFF7E4FFFFF9E6FFFFFF
            E8FFFFFCF1FFF6F9FBFFFFFFFFFFFFFFFFFF83D5E2FFFF00FF00FF00FF00E5F5
            F8FF76D1E0FFC9F3FAFFFFFFFFFFFFFFF9FFFCFAF5FFFFFBF5FFFFFCF4FFFAFB
            F8FFFFFEFCFFFFFFFFFFDCFBFFFF76D3E1FFCEEDF2FFFF00FF00FF00FF00FF00
            FF00FF00FF00B8E5ECFF82D6E4FFF8FFFFFFFFFFFFFFFFFFFEFFFFFEFDFFFFFF
            FFFFFFFFFFFF8BDCE7FF9BDCE6FFFF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF0095DBE5FF95DEE9FFFFFFFFFFFFFFFFFFA6E4
            EEFF8ED8E3FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0089D6E2FF83D4E1FFFBFD
            FDFFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
          TabOrder = 11
          TabStop = False
        end
        object LookdescConta: TCLookUp
          Left = 287
          Top = 35
          Width = 232
          Height = 19
          Alignment = taLeftJustify
          BevelInner = bvSpace
          BevelOuter = bvLowered
          Color = 14149350
          ParentBackground = False
          TabOrder = 6
          Key.Strings = (
            'idConta')
          LookUpKey.Strings = (
            'idConta')
          AlternateSQL.Strings = (
            
              'SELECT descConta FROM vConta WHERE idEmpresa = [DBEidEmpresa] AN' +
              'D idConta = ?')
          ClientDataSet = cdsLookUp
          DataSource = dsMovConta
          ValidaCampoObrigatorio = True
          CampoObrigatorio = True
          LookUpTable = 'vConta'
          ReturnField = 'descConta'
        end
        object LookContaCorrente: TCLookUp
          Left = 200
          Top = 35
          Width = 81
          Height = 19
          Alignment = taLeftJustify
          BevelInner = bvSpace
          BevelOuter = bvLowered
          Color = 14149350
          ParentBackground = False
          TabOrder = 5
          Key.Strings = (
            'idConta')
          LookUpKey.Strings = (
            'idConta')
          AlternateSQL.Strings = (
            
              'SELECT idContaCorrente FROM vConta WHERE idEmpresa = [DBEidEmpre' +
              'sa] AND idConta = ?')
          ClientDataSet = cdsLookUp
          DataSource = dsMovConta
          ValidaCampoObrigatorio = True
          CampoObrigatorio = True
          LookUpTable = 'vConta'
          ReturnField = 'idContaCorrente'
        end
        object LookAgencia: TCLookUp
          Left = 142
          Top = 35
          Width = 52
          Height = 19
          Alignment = taLeftJustify
          BevelInner = bvSpace
          BevelOuter = bvLowered
          Color = 14149350
          ParentBackground = False
          TabOrder = 4
          Key.Strings = (
            'idConta')
          LookUpKey.Strings = (
            'idConta')
          AlternateSQL.Strings = (
            
              'SELECT idAgencia FROM vConta WHERE idEmpresa = [DBEidEmpresa] AN' +
              'D idConta = ?')
          ClientDataSet = cdsLookUp
          DataSource = dsMovConta
          ValidaCampoObrigatorio = True
          CampoObrigatorio = True
          LookUpTable = 'vConta'
          ReturnField = 'idAgencia'
        end
        object DBEidConta: TCDBEdit
          Left = 88
          Top = 35
          Width = 48
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'idConta'
          DataSource = dsMovConta
          TabOrder = 3
          Find = FindConta
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEvlMovConta: TCDBEdit
          Left = 88
          Top = 13
          Width = 94
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'vlMovConta'
          DataSource = dsMovConta
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEdtCompensacao: TCDBEdit
          Left = 439
          Top = 13
          Width = 80
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'dtCompensacao'
          DataSource = dsMovConta
          MaxLength = 10
          TabOrder = 2
          DecimalControl = True
          KeyMode = kmDate
        end
        object DBEdtMovConta: TCDBEdit
          Left = 273
          Top = 13
          Width = 80
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'dtMovConta'
          DataSource = dsMovConta
          MaxLength = 10
          TabOrder = 1
          DecimalControl = True
          KeyMode = kmDate
        end
      end
      object CGroupBox4: TCGroupBox
        Left = 8
        Top = 147
        Width = 530
        Height = 35
        TabOrder = 1
        object CLabel9: TCLabel
          Left = 22
          Top = 14
          Width = 60
          Height = 13
          Alignment = taRightJustify
          Caption = 'Cheque Nr.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object CLabel37: TCLabel
          Left = 166
          Top = 14
          Width = 55
          Height = 13
          Alignment = taRightJustify
          Caption = 'Vencimento'
        end
        object CLabel3: TCLabel
          Left = 303
          Top = 14
          Width = 68
          Height = 13
          Alignment = taRightJustify
          Caption = 'Cancelamento'
        end
        object DBEidCheque: TCDBEdit
          Left = 88
          Top = 11
          Width = 72
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'idCheque'
          DataSource = dsMovConta
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          OnEnter = DBEidChequeEnter
          OnExit = DBEidChequeExit
          DecimalControl = True
          KeyMode = kmInteger
        end
        object DBEdtVencimento: TCDBEdit
          Left = 227
          Top = 11
          Width = 70
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'dtVencimento'
          DataSource = dsMovConta
          MaxLength = 10
          TabOrder = 1
          DecimalControl = True
          KeyMode = kmDate
        end
        object DBEdtCancelamento: TCDBEdit
          Left = 377
          Top = 11
          Width = 70
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'dtCancelamento'
          DataSource = dsMovConta
          MaxLength = 10
          TabOrder = 2
          DecimalControl = True
          KeyMode = kmDate
        end
      end
      object DBEidMovConta: TCDBEdit
        Left = 631
        Top = 76
        Width = 63
        Height = 19
        BevelKind = bkTile
        BorderStyle = bsNone
        DataField = 'idMovConta'
        DataSource = dsMovConta
        TabOrder = 2
        Visible = False
        Find = FindCaixa
        DecimalControl = True
        KeyMode = kmNormal
      end
    end
  end
  object CPanelGradient1: TCPanelGradient
    Left = 0
    Top = 32
    Width = 778
    Height = 54
    Align = alTop
    Caption = 'PanEmpresa'
    TabOrder = 3
    CaptionNo = 0
    HintNo = 0
    BackgroundGradientColor = 15201011
    BackgroundGradientDirection = gdVertical
    TextColor = clBlack
    GradientColor = clBlack
    RegularButtonColor = clBlack
    SelectedButtonColor = clBlack
    ButtonOptions = []
    object CLabel49: TCLabel
      Left = 8
      Top = 10
      Width = 69
      Height = 13
      Alignment = taRightJustify
      Caption = 'Movimenta'#231#227'o'
      Transparent = True
    end
    object CLabel53: TCLabel
      Left = 50
      Top = 32
      Width = 27
      Height = 13
      Alignment = taRightJustify
      Caption = 'Data'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object CLabel1: TCLabel
      Left = 197
      Top = 32
      Width = 185
      Height = 13
      Alignment = taRightJustify
      Caption = 'Valor da Movimenta'#231#227'o do T'#237'tulo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object DBEidMovFinanceiraM: TCDBEdit
      Left = 83
      Top = 7
      Width = 57
      Height = 19
      TabStop = False
      BevelKind = bkTile
      BorderStyle = bsNone
      Color = 14149350
      DataField = 'idMovFinanceira'
      DataSource = dsMov
      ReadOnly = True
      TabOrder = 0
      DecimalControl = True
      KeyMode = kmNormal
    end
    object LookMovFinanceiraM: TCLookUp
      Left = 146
      Top = 7
      Width = 336
      Height = 19
      Alignment = taLeftJustify
      BevelInner = bvSpace
      BevelOuter = bvLowered
      Color = 14149350
      ParentBackground = False
      TabOrder = 1
      Key.Strings = (
        'idMovFinanceira')
      LookUpKey.Strings = (
        'idMovFinanceira')
      AlternateSQL.Strings = (
        
          'SELECT descMovFinanceira FROM MovFinanceira WHERE idMovFinanceir' +
          'a = ?')
      ClientDataSet = cdsLookUp
      DataSource = dsMov
      ValidaCampoObrigatorio = True
      CampoObrigatorio = True
      LookUpTable = 'MovFinanceira'
      ReturnField = 'descMovFinanceira'
    end
    object DBEdtTituloPagMov: TCDBEdit
      Left = 83
      Top = 29
      Width = 80
      Height = 19
      TabStop = False
      BevelKind = bkTile
      BorderStyle = bsNone
      Color = 14149350
      DataField = 'dtTituloPagMov'
      DataSource = dsMov
      MaxLength = 10
      ReadOnly = True
      TabOrder = 2
      DecimalControl = False
      KeyMode = kmNormal
    end
    object DBEvlTituloPagMov: TCDBEdit
      Left = 388
      Top = 29
      Width = 94
      Height = 19
      TabStop = False
      BevelKind = bkTile
      BorderStyle = bsNone
      Color = 14149350
      DataField = 'vlTituloPagMov'
      DataSource = dsMov
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
    object DBEidTituloPagMov: TCDBEdit
      Left = 488
      Top = 29
      Width = 98
      Height = 19
      TabStop = False
      BevelKind = bkTile
      BorderStyle = bsNone
      Color = 14149350
      DataField = 'idTituloPagMov'
      DataSource = dsMov
      ReadOnly = True
      TabOrder = 4
      Visible = False
      DecimalControl = True
      KeyMode = kmNormal
    end
  end
  object dsEmpresa: TDataSource
    DataSet = cdsEmpresa
    Left = 696
  end
  object cdsEmpresa: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 664
    object cdsEmpresaidEmpresa: TIntegerField
      FieldName = 'idEmpresa'
    end
    object cdsEmpresaidCadEmpresa: TIntegerField
      FieldName = 'idCadEmpresa'
    end
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
      'Nome / Raz'#227'o Social'
      'Descri'#231#227'o Abreviada / Fantasia'
      'CPF / CNPJ')
    TypeFind = fFindNormal
    Left = 696
    Top = 32
  end
  object cdsLookUp: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspLookUp'
    Left = 664
    Top = 32
  end
  object dspLookUp: TDataSetProvider
    DataSet = dmPadrao.sdsLookup
    Options = [poPropogateChanges, poAllowCommandText]
    Left = 632
    Top = 32
  end
  object FindMovFinanceira: TCFind
    SelectClause.Strings = (
      'SELECT  idMovFinanceira, descMovFinanceira FROM MovFinanceira')
    JoinClause.Strings = (
      
        'WHERE StMovFinanceira = '#39'ATIVO'#39' AND idMovOrigem = 3 AND idTpMovF' +
        'inanceira = 6 AND sinal = '#39'-'#39)
    OrderByClause.Strings = (
      'ORDER BY descMovFinanceira')
    FindField = 'descIndice'
    SQLConnection = dmPadrao.dbConexao
    ValueField = 'idMovFinanceira'
    CarregaDados = True
    CollumNames.Strings = (
      'C'#243'digo'
      'Descri'#231#227'o')
    TypeFind = fFindNormal
    Left = 632
    Top = 64
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
    Left = 664
    Top = 64
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
    Left = 696
    Top = 64
  end
  object FindMovFinanceiraC: TCFind
    SelectClause.Strings = (
      'SELECT  idMovFinanceira, descMovFinanceira FROM MovFinanceira')
    JoinClause.Strings = (
      
        'WHERE StMovFinanceira = '#39'ATIVO'#39' AND idMovOrigem = 4 AND idTpMovF' +
        'inanceira IN (7, 8) AND sinal = '#39'-'#39)
    OrderByClause.Strings = (
      'ORDER BY descMovFinanceira')
    FindField = 'descIndice'
    SQLConnection = dmPadrao.dbConexao
    ValueField = 'idMovFinanceira'
    CarregaDados = True
    CollumNames.Strings = (
      'C'#243'digo'
      'Descri'#231#227'o')
    TypeFind = fFindNormal
    Left = 728
    Top = 64
  end
  object FindBanco: TCFind
    SelectClause.Strings = (
      'SELECT  idBanco, descBanco FROM Banco')
    JoinClause.Strings = (
      'WHERE StBanco = '#39'ATIVO'#39)
    OrderByClause.Strings = (
      'ORDER BY descBanco')
    FindField = 'descCadCliente'
    SQLConnection = dmPadrao.dbConexao
    ValueField = 'idBanco'
    CarregaDados = True
    CollumNames.Strings = (
      'C'#243'digo'
      'Descri'#231#227'o')
    TypeFind = fFindNormal
    Left = 632
    Top = 96
  end
  object sdsMovCaixa: TSQLDataSet
    CommandText = 'SELECT * FROM MovCaixa WHERE 1=2'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmPadrao.dbConexao
    Left = 632
    Top = 128
  end
  object dspMovCaixa: TDataSetProvider
    DataSet = sdsMovCaixa
    Options = [poAllowMultiRecordUpdates, poPropogateChanges, poAllowCommandText, poUseQuoteChar]
    Left = 664
    Top = 128
  end
  object cdsMovCaixa: TClientDataSet
    Aggregates = <
      item
        Visible = False
      end>
    AggregatesActive = True
    CommandText = 'SELECT * FROM MovCaixa WHERE 1=2'
    Params = <>
    ProviderName = 'dspMovCaixa'
    AfterOpen = cdsMovCaixaAfterOpen
    AfterEdit = cdsMovCaixaAfterEdit
    Left = 696
    Top = 128
  end
  object dsMovCaixa: TDataSource
    DataSet = cdsMovCaixa
    Left = 728
    Top = 128
  end
  object dsMovConta: TDataSource
    DataSet = cdsMovConta
    Left = 728
    Top = 160
  end
  object cdsMovConta: TClientDataSet
    Aggregates = <
      item
        Visible = False
      end>
    AggregatesActive = True
    CommandText = 'SELECT * FROM MovConta WHERE 1=2'
    Params = <>
    ProviderName = 'dspMovConta'
    AfterOpen = cdsMovContaAfterOpen
    AfterEdit = cdsMovCaixaAfterEdit
    Left = 696
    Top = 160
  end
  object dspMovConta: TDataSetProvider
    DataSet = sdsMovConta
    Options = [poAllowMultiRecordUpdates, poPropogateChanges, poAllowCommandText, poUseQuoteChar]
    Left = 664
    Top = 160
  end
  object sdsMovConta: TSQLDataSet
    CommandText = 'SELECT * FROM MovConta WHERE 1=2'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmPadrao.dbConexao
    Left = 632
    Top = 160
  end
  object ImgBotoes: TImageList
    DrawingStyle = dsTransparent
    Width = 32
    Left = 696
    Top = 96
    Bitmap = {
      494C010106000900240020001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000800000002000000001002000000000000040
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000BDADAD00CECECE00000000000000
      0000FFFFFF008C9CA500BDBDBD00000000000000000000000000000000000000
      000000000000000000000000000000000000B5B5B500CECECE00000000000000
      0000FFFFFF0094949400BDBDBD00000000000000000000000000000000000000
      0000000000000000000000000000846363008442420000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000A5A5A5008484840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000ADC6CE006B847B00DE5A3100A5391000C6C6C600FFFF
      FF00395A7B00527BAD00426B9400BDBDC6000000000000000000000000000000
      00000000000000000000BDBDBD00737373007B7B7B0052525200C6C6C600FFFF
      FF005A5A5A007B7B7B006B6B6B00BDBDBD000000000000000000000000000000
      00008463630084636300C6636300C66363008442420000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000A5A5A500A5A5A50084848400A5A5A5008484840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F7F7F700000000000000
      000000000000ADC6C600849C9C00849C9400AD523900DE6B4A00AD3918003152
      73004A7BAD0084A5C600ADC6DE00949CA50000000000F7F7F700000000000000
      000000000000BDBDBD008C8C8C008C8C8C006B6B6B008C8C8C00525252005252
      52007B7B7B00A5A5A500C6C6C6009C9C9C000000000000000000846363008463
      6300C6636300C6636300C6636300C66363008442420084636300846363008463
      6300846363008463630084636300000000000000000000000000A5A5A500A5A5
      A500A5A5A500A5A5A500A5A5A500A5A5A50084848400A5A5A500A5A5A500A5A5
      A500A5A5A500A5A5A500A5A5A500000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000BDADAD00A5422900844A4200846B
      6B00ADADAD005A8C9400B5391000D6735A00EF846300CE7B5A0039394A004A7B
      AD007B9CBD00CED6E700637B9400FFFFFF00B5B5B5005A5A5A005A5A5A007373
      7300ADADAD007B7B7B005A5A5A008C8C8C009C9C9C008C8C8C00424242007B7B
      7B009C9C9C00D6D6D6007B7B7B00FFFFFF00000000000000000084636300C684
      8400C6848400C6638400C6636300C663630084424200F7CEA500F7CEA500F7CE
      A500F7CEA500F7CEA50084636300000000000000000000000000A5A5A500A5A5
      A500A5A5A500A5A5A500A5A5A500A5A5A50084848400C6DEC600C6DEC600C6DE
      C600C6DEC600C6DEC600A5A5A500000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B59C9C00D6734A00D6733900DE73
      3900D6633100A56B6300AD9C9C00CEADAD00B59494009C7B7B00C6ADAD007384
      9C00C6D6EF0063738C00FFFFFF0000000000A5A5A50084848400848484008484
      84007B7B7B007B7B7B009C9C9C00B5B5B5009C9C9C0084848400B5B5B5008484
      8400D6D6D60073737300FFFFFF0000000000000000000000000084636300C684
      8400C6848400C6848400C6848400C66384008442420042C6630042C6630042C6
      630000C66300F7CEA50084636300000000000000000000000000A5A5A500A5A5
      A500A5A5A500A5A5A500A5A5A500A5A5A5008484840084848400848484008484
      840084848400C6DEC600A5A5A500000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000AD949400D6846300D6734200CE6B
      3100CEAD9C00DEBDAD00F7C6B500FFDED600F7C6B500DEAD9C00AD9C9C00E7DE
      D60073738400AD391800C6C6C600000000009C9C9C0094949400848484007B7B
      7B00B5B5B500C6C6C600CECECE00E7E7E700CECECE00B5B5B5009C9C9C00DEDE
      DE007B7B7B005A5A5A00C6C6C60000000000000000000000000084636300C684
      8400C6848400C6848400C6848400C68484008442420042C6630042C6630042C6
      630042C66300F7CEA50084636300000000000000000000000000A5A5A500C6C6
      C600A5A5A500A5A5A500A5A5A500A5A5A50084848400A5A5A500A5A5A500A5A5
      A50084848400C6DEC600A5A5A500000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000AD8C8C00E7A58400CE7B5A00D69C
      8400DEB5AD00F7C6B500F7D6C600F7DECE00F7D6C600F7CEB500DEAD9C00A584
      7B00E7CEBD00FF8463009C8C8C00000000009C9C9C00ADADAD008C8C8C00A5A5
      A500BDBDBD00CECECE00DEDEDE00DEDEDE00DEDEDE00CECECE00B5B5B5008C8C
      8C00CECECE00A5A5A5008C8C8C0000000000000000000000000084636300C684
      8400C6848400C6848400C6848400C68484008442420042C6630042C6630042C6
      630042C66300F7CEA50084636300000000000000000000000000A5A5A500C6C6
      C600C6C6C600C6C6C600C6C6C600A5A5A500848484008484840084848400A5A5
      A50084848400C6DEC600A5A5A500000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008C7B7B00F7BD9C00CE846B00DEC6
      C600E79C7B00EFC6AD00EFC6AD00EFCEB500F7C6B500EFC6AD00E7A58400B5A5
      9C00C6634200A56B5A00000000000000000084848400C6C6C60094949400CECE
      CE00ADADAD00CECECE00CECECE00CECECE00CECECE00C6C6C600ADADAD00A5A5
      A5007B7B7B007B7B7B000000000000000000000000000000000084636300C684
      8400C6848400C6A5A500F7FFFF00C684840084424200C6DEC60084E7840042E7
      840042E78400F7CEA50084636300000000000000000000000000A5A5A500C6C6
      C600C6C6C600C6C6C600F7FFFF00C6C6C60084848400C6DEC600C6C6C600A5A5
      A500A5A5A500C6DEC600A5A5A500000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000009C7B7300F7C6AD00D6947B00E7CE
      BD00EFC6AD00F7D6C600F7D6C600EFBDA500EFB59C00EFB59400E7A57B00C6B5
      B500AD4A1800FFF7F700000000000000000084848400CECECE009C9C9C00CECE
      CE00C6C6C600D6D6D600D6D6D600C6C6C600BDBDBD00BDBDBD00ADADAD00B5B5
      B5005A5A5A00F7F7F7000000000000000000000000000000000084636300C684
      8400C6848400F7CEA500F7FFFF00C684840084424200FFFFFF00FFFFFF00FFFF
      FF00F7FFFF00F7CEA50084636300000000000000000000000000A5A5A500C6C6
      C600C6C6C600C6C6C600F7FFFF00C6C6C60084848400F7FFFF00F7FFFF00F7FF
      FF00F7FFFF00C6DEC600A5A5A500000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000A56B5A00F7CEB500DE9C8C00DEC6
      C600EFBDAD00F7DEC600F7DECE00F7DECE00EFBDA500EFBD9C00DE946B00BDB5
      B500D68C6300D6A59C0000000000000000007B7B7B00D6D6D600ADADAD00CECE
      CE00C6C6C600DEDEDE00DEDEDE00DEDEDE00C6C6C600C6C6C6009C9C9C00B5B5
      B50094949400B5B5B5000000000000000000000000000000000084636300F7CE
      A500C6848400C6848400C6848400C684840084424200FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00F7CEA50084636300000000000000000000000000A5A5A500C6C6
      C600C6C6C600C6C6C600C6C6C600A5A5A50084848400F7FFFF00F7FFFF00F7FF
      FF00F7FFFF00C6DEC600A5A5A500000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000AD847B00FFD6C600F7C6B500DEB5
      A500DEBDB500FFE7D600F7E7D600F7E7D600F7E7D600FFE7DE00DEB5A500C6A5
      9C00D6AD9400D6947B00FFFFFF000000000094949400DEDEDE00CECECE00BDBD
      BD00C6C6C600E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700BDBDBD00ADAD
      AD00B5B5B500A5A5A500FFFFFF0000000000000000000000000084636300F7CE
      A500F7CEA500F7CEA500F7CEA500C684840084424200FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00F7CEA50084636300000000000000000000000000A5A5A500C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C60084848400F7FFFF00F7FFFF00F7FF
      FF00F7FFFF00C6DEC600A5A5A500000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B58C8400FFDECE00F7CEBD00F7C6
      B500E7CEC600DEBDB500EFCEBD00F7DED600EFCEBD00DEBDB500DED6CE00EFCE
      B500E7CEC600E7C6AD00E7CECE00000000009C9C9C00DEDEDE00D6D6D600CECE
      CE00D6D6D600C6C6C600CECECE00E7E7E700CECECE00C6C6C600D6D6D600CECE
      CE00CECECE00C6C6C600D6D6D60000000000000000000000000084636300F7CE
      A500F7CEA500F7CEA500F7CEA500C684840084424200FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00F7CEA50084636300000000000000000000000000A5A5A500C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C60084848400F7FFFF00F7FFFF00F7FF
      FF00F7FFFF00C6DEC600A5A5A500000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000BD948C00FFE7D600F7DECE00F7D6
      C600F7CEB500EFC6BD00E7CECE00DEC6BD00E7CEC600DEAD9C00D6947B00A57B
      73008494A500BD9CA500AD6B6300FFFFFF009C9C9C00E7E7E700DEDEDE00D6D6
      D600CECECE00CECECE00D6D6D600CECECE00CECECE00B5B5B500A5A5A5008484
      840094949400ADADAD007B7B7B00FFFFFF00000000000000000084636300F7CE
      A500F7CEA500F7CEA500F7CEA500C684840084424200FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00F7CEA50084636300000000000000000000000000A5A5A500C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C60084848400F7FFFF00F7FFFF00F7FF
      FF00F7FFFF00C6DEC600A5A5A500000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C6948C00FFEFE700FFE7D600F7DE
      CE00F7D6C600F7D6BD00FFCEB500F7C6AD00F7BDA500F7BD9C00F7B59C005A5A
      520000CEFF0000B5FF0042B5FF00949CA500A5A5A500EFEFEF00E7E7E700DEDE
      DE00D6D6D600D6D6D600D6D6D600CECECE00C6C6C600C6C6C600C6C6C6005252
      52008C8C8C008C8C8C00A5A5A5009C9C9C000000000000000000846363008463
      6300C6848400F7CEA500F7CEA500C684A50084424200FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00F7CEA50084636300000000000000000000000000A5A5A500A5A5
      A500C6C6C600C6C6C600C6C6C600C6C6C60084848400F7FFFF00F7FFFF00F7FF
      FF00F7FFFF00C6DEC600A5A5A500000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B59C9C00FFF7E700FFEFE700FFEF
      DE00FFE7D600A5736B008C635A00AD949400AD8C8400AD847B00BD7B73007B63
      630008FFFF0018B5E7004A7B9400F7F7F700A5A5A500EFEFEF00EFEFEF00E7E7
      E700E7E7E700848484006B6B6B009C9C9C00949494008C8C8C00949494006B6B
      6B00949494008C8C8C006B6B6B00F7F7F7000000000000000000000000000000
      000084636300C6848400C6848400C68484008442420084636300846363008463
      6300846363008463630084636300000000000000000000000000000000000000
      0000A5A5A500A5A5A500A5A5A500C6C6C60084848400A5A5A500A5A5A500A5A5
      A500A5A5A500A5A5A500A5A5A500000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00BDADAD00C6A5A500CEAD
      A500CE9C9400F7F7F70000000000000000000000000000000000000000000000
      0000E7FFFF0084BDE700F7F7F70000000000FFFFFF00B5B5B500ADADAD00B5B5
      B500ADADAD00F7F7F70000000000000000000000000000000000000000000000
      0000F7F7F700B5B5B500F7F7F700000000000000000000000000000000000000
      0000000000000000000084636300846363008442420000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000A5A5A500A5A5A5008484840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C6636300C663
      6300C6424200A5A5A500C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6A5
      A5008442420084424200C6636300000000000000000000000000848484008484
      840084848400A5A5A500C6C6C600C6DEC600C6DEC600C6DEC600C6DEC600C6C6
      C600848484008484840084848400000000000000000000A5C60000A5C60000A5
      C600000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084848400848484008484
      8400000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000EFEFEF00BDBDBD00F7F7
      F70000000000FFFFFF00DEDEDE00CECECE00BDBDBD00BDBDBD00B5B5B5009C9C
      9C00A5A5A500A5A5A500000000000000000000000000E7E7E700BDBDBD00F7F7
      F70000000000FFFFFF00DEDEDE00CECECE00BDBDBD00BDBDBD00B5B5B5009494
      9400A5A5A500A5A5A50000000000000000000000000000000000000000000000
      000000000000000000000000000000000000BDADAD00CECECE00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B5B5B500CECECE00000000000000
      00000000000000000000000000000000000000000000C6848400C6636300C663
      6300C663630084848400C6A5A500C6DEC600FFFFFF00FFFFFF00F7FFFF00C6C6
      C6008421210084424200C6636300C663630000000000A5A5A500A5A5A500A5A5
      A500A5A5A500A5A5A500C6C6C600F7FFFF00FFFFFF00FFFFFF00FFFFFF00C6C6
      C6008463630084636300A5A5A500848484000000000000A5C60084E7E70042C6
      E70042C6E70042A5E70000A5E7000084C6000084C60000000000000000000000
      0000000000000000000000000000000000000000000084848400C6C6C600C6C6
      C600A5A5A500A5A5A500A5A5A500848484008484840000000000000000000000
      000000000000000000000000000000000000EFEFEF00E7E7E7009C9C9C007B7B
      7B009494940094949400BDBDBD00DEDEDE00EFEFEF00E7E7E700C6C6C600B5B5
      B5009C9C9C00ADADAD007B7B7B00BDBDBD00EFEFEF00DEDEDE009C9C9C007B7B
      7B00949494008C8C8C00BDBDBD00DEDEDE00EFEFEF00E7E7E700C6C6C600B5B5
      B5009C9C9C00ADADAD007B7B7B00BDBDBD000000000000000000000000000000
      00000000000000000000ADC6CE006B847B00DE5A3100A5391000C6C6C6000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000BDBDBD00737373007B7B7B0052525200C6C6C6000000
      00000000000000000000000000000000000000000000C6848400C6636300C663
      6300C66363008484840084424200C6848400C6DEC600FFFFFF00FFFFFF00C6C6
      C6008421210084424200C6636300C663630000000000A5A5A500A5A5A500A5A5
      A500A5A5A500A5A5A50084848400A5A5A500F7FFFF00FFFFFF00FFFFFF00C6DE
      C6008463630084848400A5A5A500848484000000000000A5C60084E7E70084E7
      E70084E7E70084E7E70042E7E70042C6E70042C6E70042A5E70000A5E7000084
      C60000A5E7000000000000000000000000000000000084848400C6DEC600C6DE
      C600C6C6C600C6C6C600C6C6C600C6C6C600A5A5A500A5A5A500A5A5A5008484
      8400A5A5A500000000000000000000000000EFEFEF0094949400C6C6C6009C9C
      9C008C8C8C00C6BDBD00C6A59C00CEAD9C00D6B5AD00DEBDB500CECECE00DEDE
      DE00CECECE00CECECE00DEDEDE00BDBDBD00E7E7E70094949400BDBDBD009C9C
      9C0084848400BDBDBD00ADADAD00B5B5B500BDBDBD00C6C6C600CECECE00D6D6
      D600CECECE00C6C6C600D6D6D600B5B5B5000000000000000000000000000000
      000000000000ADC6C600849C9C00849C9400AD523900DE6B4A00AD391800C6C6
      C600000000000000000000000000000000000000000000000000000000000000
      000000000000BDBDBD008C8C8C008C8C8C006B6B6B008C8C8C0052525200C6C6
      C6000000000000000000000000000000000000000000C6848400C6636300C663
      6300C6636300C68484008442420084424200C6C6C600F7FFFF00FFFFFF00F7CE
      A5008421210084424200C6636300C663630000000000A5A5A500A5A5A500A5A5
      A500A5A5A500A5A5A5008484840084848400C6C6C600FFFFFF00FFFFFF00C6DE
      C6008463630084636300A5A5A500848484000000000000A5C60084E7E70084E7
      E70084E7E70084E7E70084E7E70042E7E70042E7E70042C6E70042C6E70042C6
      E70042C6E70042A5E70000A5C600000000000000000084848400C6DEC600C6DE
      C600C6DEC600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600A5A5A5008484840000000000E7E7E7009C9C9C00A5A5A500C6CE
      C60094736300B5522900BD6B4A00C6947B00DEBDB500DEC6B500C6C6C600C6C6
      C600CECECE00D6D6D600DEDEDE00DEDEDE00E7E7E7009C9C9C009C9C9C00C6C6
      C600737373006B6B6B007B7B7B009C9C9C00C6C6C600C6C6C600C6C6C600BDBD
      BD00CECECE00CECECE00DEDEDE00D6D6D6000000000000000000000000000000
      000000000000639CA500B5391000D67B5A00EF846300E7846300D6633900AD42
      1800C6C6C6000000000000000000000000000000000000000000000000000000
      000000000000848484005A5A5A00949494009C9C9C009C9C9C007B7B7B005A5A
      5A00C6C6C60000000000000000000000000000000000C6848400C6636300C663
      6300C6636300C68484008442420084424200A5A5A500C6DEC600FFFFFF00C6C6
      C6008421210084424200C6636300C663630000000000A5A5A500A5A5A500A5A5
      A500A5A5A500A5A5A5008484840084636300A5A5A500F7FFFF00FFFFFF00F7FF
      FF008463630084636300A5A5A500848484000000000000A5C60084E7E70084E7
      E70084E7E70084E7E70084E7E70084E7E70042E7E70042C6E70042C6E70042C6
      E70042C6E70042C6E70000A5C600000000000000000084848400C6DEC600C6DE
      C600C6DEC600C6DEC600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600A5A5A5008484840000000000EFEFEF00B5B5B5007B7B7B00DEDE
      DE00A5948400BD7B5A00C68C6B00D6AD9400E7CEBD00E7D6C600C6BDBD00B5B5
      B500E7E7E700E7E7E700E7EFEF00ADADAD00EFEFEF00ADADAD007B7B7B00DEDE
      DE00949494008484840094949400ADADAD00CECECE00D6D6D600BDBDBD00ADAD
      AD00DEDEDE00DEDEDE00E7E7E700ADADAD00000000000000000000000000ADC6
      CE00737B7B00B58C7300B59C8C00E77B6300E7846300E77B5A00D66B4200F7AD
      9400AD391000C6C6C6000000000000000000000000000000000000000000BDBD
      BD00737373008C8C8C009C9C9C00949494009C9C9C009C9C9C0084848400BDBD
      BD0052525200C6C6C600000000000000000000000000C6848400C6636300C663
      6300C6636300C6A58400C6A5A500C6848400C6848400C6A5A500C6C6C600C6A5
      A500C6424200C6424200C6636300C663630000000000A5A5A500A5A5A500A5A5
      A500A5A5A500C6C6C600C6C6C600A5A5A500A5A5A500C6C6C600C6DEC600C6C6
      C6008484840084848400A5A5A500848484000000000000A5C60084E7E70084E7
      E70084E7E70084E7E70084E7E70084E7E70084E7E7000063000042C6C60042C6
      E70042C6E70042C6E70000A5C600000000000000000084848400C6DEC600C6DE
      C600C6DEC600C6DEC600C6DEC600C6C6C600C6C6C60084636300A5A5A500C6C6
      C600C6C6C600C6C6C6008484840000000000FFFFFF00CECECE007B7B7B00C6C6
      C600CEC6C600C6846B00CE947300DEB59C00EFD6C600EFDECE00DEBDAD00CEC6
      BD00D6DEE700BD735A00FFF7F70000000000F7F7F700C6C6C6007B7B7B00C6C6
      C600C6C6C6008C8C8C009C9C9C00B5B5B500D6D6D600DEDEDE00BDBDBD00C6C6
      C600DEDEDE0084848400F7F7F700000000000000000000000000ADC6C600849C
      9C00849C9400AD523100EF846B00E78C6B00E7846300E7846300E77B5A00D684
      6300FFC6AD00AD391800C6C6C600000000000000000000000000BDBDBD008C8C
      8C008C8C8C006B6B6B00A5A5A500A5A5A5009C9C9C009C9C9C00949494009494
      9400CECECE005A5A5A00C6C6C6000000000000000000C6848400C6636300C663
      6300C6636300C6636300C6636300C6636300C6636300C6636300C6636300C663
      6300C6636300C6636300C6636300C663630000000000A5A5A500A5A5A500A5A5
      A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5
      A500A5A5A500A5A5A500A5A5A500848484000000000000A5C60084E7E70084E7
      E70084E7E70084E7E70084E7E70084E7E70084E7E70042E7E7000063000042C6
      E70042C6E70042C6E70000A5C600000000000000000084848400C6DEC600C6DE
      C600C6DEC600C6DEC600C6DEC600C6DEC600C6C6C600C6C6C60084636300C6C6
      C600C6C6C600C6C6C6008484840000000000FFFFFF00DEDEDE0084848400ADAD
      AD00E7E7EF00AD6B5200CE8C7300E7BDA500EFD6CE00EFD6CE00E7BDAD00D69C
      7B00D69C7B00C66B4A00FFFFFF0000000000FFFFFF00D6D6D6007B7B7B00ADAD
      AD00E7E7E7007B7B7B0094949400BDBDBD00D6D6D600DEDEDE00C6C6C600A5A5
      A500A5A5A5007B7B7B00FFFFFF00000000000000000000000000639CA500B539
      1000D67B6300EF8C6B00E78C7300E7846300E78C6B00E7846B00CE634200F7C6
      A500FFEFD600FF8463009C8C8C00000000000000000000000000848484005A5A
      5A0094949400A5A5A500A5A5A5009C9C9C00A5A5A5009C9C9C007B7B7B00C6C6
      C600E7E7E700A5A5A5008C8C8C000000000000000000C6848400C6636300C663
      6300C6848400C6A5A500C6A5A500C6A5A500C6A5A500C6A5A500C6A5A500C6A5
      A500C6A5A500C6A5A500C6636300C663630000000000A5A5A500848484008484
      8400A5A5A500C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600A5A5A500848484000000000000A5C60084E7E70084E7
      E70084E7E70084E7E70084E7E70084E7E70084E7E70084E7E700008400000063
      000042C6E70042C6E70000A5C600000000000000000084848400C6DEC600C6DE
      C600C6DEC600C6DEC600C6DEC600C6DEC600C6DEC600C6C6C600848484008463
      6300C6C6C600C6C6C600848484000000000000000000D6D6D6009C9C9C009CA5
      9C00D6D6DE00A5736300CE947300D6AD9400EFD6CE00EFD6CE00E7BDAD00D69C
      7B00D6947300CE6B4200FFFFFF000000000000000000D6D6D6009C9C9C009C9C
      9C00D6D6D6007B7B7B009C9C9C00B5B5B500DEDEDE00DEDEDE00C6C6C600A5A5
      A5009C9C9C007B7B7B00FFFFFF0000000000CEE7E7006B737300B58C7300B594
      8400E7846300E78C6B00E7846B00CE7B6B00DE846B00D66B4200FFD6AD00FFEF
      D600FFA58400A56B5A000000000000000000DEDEDE006B6B6B008C8C8C009494
      94009C9C9C00A5A5A5009C9C9C00949494009C9C9C0084848400D6D6D600E7E7
      E700BDBDBD007B7B7B00000000000000000000000000C6848400C6424200C6C6
      C600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00C6C6C600C6636300C663630000000000A5A5A50084848400F7FF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00C6DEC600A5A5A500848484000000000000A5C60084E7E70084E7
      E70084E7E70042A584000063000084E7E70084E7E70084E7E700008400000063
      000042E7E70042C6E70000A5C600000000000000000084848400F7FFFF00C6DE
      C600C6DEC600A5A5A50084848400C6DEC600C6DEC600C6DEC600848484008463
      6300C6C6C600C6C6C600848484000000000000000000E7E7E700ADADAD009C9C
      9C00BDC6C600A57B6300D6947300DEAD9C00EFD6C600EFDED600E7BDAD00D69C
      7B00CE947300CE6B4200FFFFFF000000000000000000E7E7E700ADADAD009C9C
      9C00BDBDBD007B7B7B009C9C9C00B5B5B500D6D6D600DEDEDE00C6C6C600A5A5
      A5009C9C9C007B7B7B00FFFFFF0000000000D6D6D6007B948C00AD523100EF84
      6B00E78C7300E79C8400EFAD9C00CE948C00BD6B5A0073A5C6007B94AD00FF9C
      7B00A56B5A00000000000000000000000000D6D6D6008484840063636300A5A5
      A500A5A5A500ADADAD00BDBDBD00A5A5A500848484009C9C9C008C8C8C00B5B5
      B5007B7B7B0000000000000000000000000000000000C6848400C6634200F7CE
      A500FFFFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FF
      FF00FFFFFF00C6C6C600C6636300C663630000000000A5A5A50084848400F7FF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00C6DEC600A5A5A500848484000000000000A5C600F7FFFF0084E7
      E70084E7C600006300000063000084E7E70084E7E70000630000008400000063
      000042E7E70042C6E70000A5C600000000000000000084848400F7FFFF00F7FF
      FF00C6DEC6008484840084848400C6DEC600C6DEC60084848400848484008463
      6300C6C6C600C6C6C600848484000000000000000000FFFFFF00B5B5B500A5A5
      A500ADADAD00AD7B5A00CE8C6B00D6AD9400F7D6CE00F7DED600EFC6B500DEA5
      8400D6947300CE734A00FFFFFF000000000000000000FFFFFF00B5B5B500A5A5
      A500ADADAD007B7B7B0094949400B5B5B500DEDEDE00E7E7E700CECECE00ADAD
      AD009C9C9C0084848400FFFFFF0000000000E7A59400EF9C8400F7BDAD00EFBD
      AD00EFBDAD00EFBDAD00F7BDB500CE735A0073BDE70008BDFF00188CFF004A52
      6B0000000000000000000000000000000000B5B5B500B5B5B500CECECE00C6C6
      C600C6C6C600C6C6C600CECECE008C8C8C00B5B5B5008C8C8C00949494005A5A
      5A000000000000000000000000000000000000000000C6848400C6634200F7CE
      A500F7FFFF00C6DEC600C6DEC600C6DEC600C6DEC600C6DEC600C6DEC600C6DE
      C600F7FFFF00F7CEA500C6636300C663630000000000A5A5A50084848400F7FF
      FF00FFFFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FF
      FF00F7FFFF00C6DEC600A5A5A500848484000000000000A5C60000A5E70000A5
      E7000063000042A5420000630000006300000063000000A50000006300000063
      000084E7E70042E7E70000A5C600000000000000000084848400A5A5A500A5A5
      A500846363008484840084636300846363008484840084848400846363008484
      8400C6C6C600C6C6C60084848400000000000000000000000000E7E7E700DEDE
      DE0094949400B56B4A00A5735A00AD948400BDADA500C6B5AD00B5A59C00AD84
      6B00AD735200BD634200FFFFFF00000000000000000000000000E7E7E700DEDE
      DE008C8C8C00737373007B7B7B0094949400ADADAD00B5B5B500A5A5A5008C8C
      8C007B7B7B007B7B7B00FFFFFF0000000000F7F7F700DE846B00EFC6B500F7CE
      C600F7CEC600F7D6CE00D6846300FFDEC60018EFFF0000CEFF0000B5FF002994
      FF00637B9400FFFFFF000000000000000000F7F7F7009C9C9C00CECECE00D6D6
      D600D6D6D600DEDEDE0094949400DEDEDE009C9C9C008C8C8C008C8C8C009494
      94007B7B7B00FFFFFF00000000000000000000000000C6848400C6634200F7CE
      A500F7FFFF00C6DEC600C6DEC600C6DEC600C6DEC600C6DEC600C6DEC600C6DE
      C600F7FFFF00F7CEA500C6636300C663630000000000A5A5A50084848400F7FF
      FF00FFFFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FF
      FF00FFFFFF00C6DEC600A5A5A500848484000000000000A5C60042E7E70042A5
      A5000084210042E7840042C6420000A5210000A52100006300000063000084E7
      E70084E7E70042E7E70000A5C600000000000000000084848400C6C6C600A5A5
      A50084848400C6C6C6008484840084848400848484008484840084636300C6DE
      C600C6C6C600C6C6C60084848400000000000000000000000000FFFFFF00F7F7
      F70084736300A5A5A500BDBDBD00CECECE00D6D6DE00DEDEDE00D6D6D600C6C6
      C600B5B5B5008C7B7B00C6C6C600000000000000000000000000FFFFFF00F7F7
      F70073737300A5A5A500BDBDBD00CECECE00D6D6D600DEDEDE00D6D6D600C6C6
      C600B5B5B5007B7B7B00C6C6C6000000000000000000C68C7B00FFDED600F7D6
      C600FFEFE700D68C7300F7DECE00FFFFFF00BDBDAD0010FFFF0000CEFF0000B5
      FF00299CFF00637B9400FFFFFF0000000000000000009C9C9C00E7E7E700DEDE
      DE00EFEFEF009C9C9C00DEDEDE00FFFFFF00B5B5B5009C9C9C008C8C8C008C8C
      8C009C9C9C007B7B7B00FFFFFF000000000000000000C6848400C6634200F7CE
      A500F7FFFF00C6DEC600F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00C6DE
      C600F7FFFF00C6C6C600C6636300C663630000000000A5A5A50084848400F7FF
      FF00FFFFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FF
      FF00FFFFFF00C6DEC600A5A5A500848484000000000000A5C60084E7E7000063
      000042C6630042E7630042C6420000630000006300000063000084E7E70084E7
      E70084E7E70084E7E70000A5C600000000000000000084848400C6DEC6008463
      6300A5A5A500A5A5A500A5A5A500846363008463630084636300C6DEC600C6DE
      C600C6DEC600C6C6C6008484840000000000000000000000000000000000FFFF
      FF00ADADAD00B5A59C00CEBDB500C6C6C600DEDEDE00BDBDBD00CECECE00D6D6
      D600C6BDBD00BDBDBD00A5A5A50000000000000000000000000000000000FFFF
      FF00ADADAD00A5A5A500BDBDBD00C6C6C600DEDEDE00BDBDBD00C6C6C600CECE
      CE00BDBDBD00BDBDBD00A5A5A5000000000000000000FFFFFF00EF9C7B00FFFF
      FF00DE846300F7EFEF00FFFFFF00FFAD9400AD636300BDD6D60021FFFF0000CE
      FF0000B5FF00299CFF005A738C00FFFFFF0000000000FFFFFF00ADADAD00FFFF
      FF009C9C9C00EFEFEF00FFFFFF00C6C6C6007B7B7B00CECECE009C9C9C008C8C
      8C008C8C8C009C9C9C0073737300FFFFFF0000000000C6848400C6634200F7CE
      A500F7FFFF00C6DEC600C6DEC600C6DEC600C6DEC600C6DEC600C6DEC600C6DE
      C600F7FFFF00F7CEA500C6636300C663630000000000A5A5A50084848400F7FF
      FF00FFFFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FF
      FF00F7FFFF00C6DEC600A5A5A500848484000000000000A5C60084E7E70042C6
      A5000063000000A5210000A521000063000042A5840084E7E70084E7E70084E7
      E70084E7E70084E7E70000A5C600000000000000000084848400F7FFFF00C6C6
      C60084636300848484008484840084636300A5A5A500F7FFFF00F7FFFF00C6DE
      C600C6DEC600C6C6C6008484840000000000000000000000000000000000FFFF
      FF00DEDEDE00948C8C00BDBDBD00C6C6C600C6C6C600DEDEDE00D6D6D600D6D6
      D600B5ADAD00D6D6D600CECECE0000000000000000000000000000000000FFFF
      FF00DEDEDE008C8C8C00BDBDBD00BDBDBD00C6C6C600D6D6D600D6D6D600D6D6
      D600ADADAD00CECECE00CECECE00000000000000000000000000C69C9400E794
      7B00BDA5A500EF947300FFB59C00A56B5A000000000000000000BDD6D60018FF
      FF0000CEFF0000B5FF0042B5FF00949CA5000000000000000000A5A5A500A5A5
      A500ADADAD00ADADAD00C6C6C6007B7B7B000000000000000000CECECE009C9C
      9C008C8C8C008C8C8C00A5A5A5009C9C9C0000000000C6848400C6634200F7CE
      A500FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00C6C6C600C6636300C663630000000000A5A5A50084848400F7FF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00C6DEC600A5A5A500848484000000000000A5C60084E7E70084E7
      E70084E7E7000084420000842100006300000063000000A5C60000A5C60000A5
      C60000A5C60000A5C60000A5C600000000000000000084848400C6C6C600C6DE
      C600C6C6C6008484840084848400846363008463630084848400848484008484
      8400848484008484840084848400000000000000000000000000000000000000
      0000FFFFFF00F7F7EF00D6D6D600A5A5A500C6C6C600D6D6D600DEDEDE00E7E7
      E700F7F7F700F7F7F70000000000000000000000000000000000000000000000
      0000FFFFFF00EFEFEF00D6D6D600A5A5A500BDBDBD00D6D6D600D6D6D600DEDE
      DE00F7F7F700F7F7F7000000000000000000000000000000000000000000F7F7
      F70000000000D6C6BD00BD94840000000000000000000000000000000000C6DE
      DE0008FFFF0018B5E7004A7B9400F7F7F700000000000000000000000000F7F7
      F70000000000C6C6C6009C9C9C0000000000000000000000000000000000CECE
      CE00949494008C8C8C006B6B6B00F7F7F7000000000000000000C6634200C6C6
      C600C6DEC600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6DEC600C6A5A500C642420000000000000000000000000084848400C6C6
      C600C6DEC600C6DEC600C6DEC600C6DEC600C6DEC600C6DEC600C6DEC600C6DE
      C600C6DEC600C6C6C6008484840000000000000000000000000000A5C60000A5
      C60000A5C60000A5C60000A5C600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000848484008484
      8400848484008484840084848400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF00F7F7F700F7F7F700FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF00F7F7F700F7F7F700FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000E7FFFF0084BDE700F7F7F700000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F7F7F700B5B5B500F7F7F70000000000424D3E000000000000003E000000
      2800000080000000200000000100010000000000000200000000000000000000
      000000000000000000000000FFFFFF00FF31FF31FE7FFE7F0000000000000000
      FC00FC00F07FF07F0000000000000000B800B800C001C0010000000000000000
      00000000C001C001000000000000000000010001C001C0010000000000000000
      00010001C001C001000000000000000000010001C001C0010000000000000000
      00030003C001C001000000000000000000030003C001C0010000000000000000
      00030003C001C001000000000000000000010001C001C0010000000000000000
      00010001C001C001000000000000000000000000C001C0010000000000000000
      00000000C001C001000000000000000000000000F001F0010000000000000000
      03F103F1FC7FFC7F0000000000000000C001C0018FFF8FFF88038803FF3FFF3F
      80008000807F807F00000000FC1FFC1F800080008007800700000000F80FF80F
      800080008001800100000000F807F807800080008001800100000000E003E003
      800080008001800100010001C001C001800080008001800100010001C001C001
      8000800080018001800180010003000380008000800180018001800100070007
      800080008001800180018001000F000F8000800080018001C001C00100030003
      8000800080018001C001C001800180018000800080018001E001E00180008000
      8000800080018001E001E001C0C0C0C08000800080018001F003F003E9E0E9E0
      C001C001C1FFC1FFFE1FFE1FFFF1FFF100000000000000000000000000000000
      000000000000}
  end
  object imgIcones: TImageList
    DrawingStyle = dsTransparent
    Left = 664
    Top = 96
    Bitmap = {
      494C010102000400240010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000006363
      6300636363006363630063636300636363006363630063636300636363006363
      6300636363006363630063636300000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000A5736B00DEB5
      A500D6ADA500D6A59C00D6A59C00D6A59C00D6A59C00D6A59C00D6A59C00D6A5
      9C00D6A59C00BD948C0063636300000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F8F8F8FFF4F6F6FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000EBEBEAFFF8F9F8FF000000000000000000000000BD847300F7E7
      D600990033009900330099003300F7CEAD00F7CEAD00FFD6AD00FFD6AD00FFD6
      AD00FFD6A500E7BDB50063636300000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F4F4F4FFF0F0EFFFB9B9B8FFEBEB
      E9FFF0EFEEFFF0F0EEFFEEEEEEFFE2E2E2FFE9E9E9FFF9F8F8FFF1F1F0FFE1E0
      DFFFF6F5F4FFE3E2E1FFFAF9F8FF000000000000000000000000BD847300EFE7
      DE00FFE7CE00FFE7CE00FFE7C600FFDEC600F7CEAD00FFD6B500FFD6B500F7CE
      AD00FFD6A500E7BDB50063636300000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FBFBFBFFC3BBB6FFC4BEBBFFC8C4
      BEFFCDC7C5FFCBC7C5FFCBC6C1FFCDC5C4FFCCC8C3FFCDC7C7FFCDC8C3FFCCC9
      C5FFCDCAC6FFD3C9C7FFD0CBC8FF000000000000000000000000CE847B00EFE7
      DE00990033009900330099003300990033009900330099003300FFD6B500F7CE
      AD00FFCEBD00F7CEAD0063636300000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FBFBFBFFC9C3C0FFB96A1AFF8035
      0BFFAF6115FFE69C39FFE79E3BFFEED370FFFEFDF7FFF2F7CAFFCA7B22FFA255
      11FFAA5C14FFBB701BFFD0CCC7FF000000000000000000000000C6947B00EFE7
      DE00F7E7D600FFEFD600F7E7D600FFE7C600FFDEC600FFE7CE00FFD6B500FFD6
      B500F7CEAD00F7CEAD0063636300000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FCFCFCFFC8C3C0FFD08125FF9340
      12FF9E4C11FFD98B28FFECB950FFF0EC90FFEFF7BBFFECB64FFFAC5915FF9E4C
      13FFAC5B15FFBC6A17FFD2CDCAFF000000000000000000000000CE9C8400E7E7
      E700990033009900330099003300990033009900330099003300990033009900
      3300F7CEAD00FFCEBD0063636300000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FCFCFCFFC9C5C3FFCD791AFFB059
      13FFA04911FFAF5714FFE7AB40FFEDDF7AFFE9B94CFFDE9225FFB86314FF953F
      0EFFA95213FFB96616FFD5D0CDFF000000000000000000000000DEA58400EFEF
      E700FFEFDE00FFEFDE00F7E7D600FFEFD600FFDEC600FFE7CE00FFDEC600FFE7
      C600F7CEAD00E7C6B50063636300000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FDFCFCFFCEC7C5FFBF691AFFCD76
      19FFC46E17FFAE5214FFD98522FFEAAE3EFFDE8F22FFD07A17FFC26A17FFA74A
      13FFBC6617FFAD5315FFD3CFCAFF000000000000000000000000DEA58400FFFF
      F700990033009900330099003300990033009900330099003300990033009900
      3300FFDEBD00FFCEBD0063636300000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FDFDFDFFD3CDC7FFC76C16FFE086
      1FFFE29022FFD6801AFFC46717FFE29123FFE39121FFCA7016FFBD5D15FFAE4F
      14FFA84A15FFD8821EFFD4D0CBFF000000000000000000000000DEA58400FFFF
      F700F7EFE700F7EFE700FFEFD600F7E7D600FFEFD600FFEFD600F7E7D600FFE7
      CE00FFDEC600E7C6B50063636300000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FEFEFEFFD3CCC9FFB95916FFE59C
      27FFE59722FFE1901DFFCA6D15FFCE7318FFD17617FFBA5915FFA84311FF9B38
      12FF912C10FFA54313FFD7D1CCFF000000000000000000000000DEA58400FEFD
      FD0099003300CC333300CC333300CC333300FFEFD60099003300990033009900
      3300FFE7CE00E7C6B50063636300000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000D5CECCFFBF5E15FFD77F
      19FFE8AA38FFE59E2AFFC76919FFC16015FFBC5A16FFA43C11FF942B11FF861E
      10FF791A0EFF9F3A15FFDAD4D0FF000000000000000000000000DEA58400FEFD
      FD0099003300FFCC6600FFCC660099666600E7E7E700FFF7E700FFEFDE00FFEF
      DE00FFE7CE00E7BDB50063636300000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000D4CECFFFC38F68FFCFA2
      6BFFD6AE73FFD4AC72FFC18E6BFFC4936BFFBA8865FFAE7A67FFA66F65FF9A68
      63FF9D6A61FF9C6B62FFDBD7D2FF000000000000000000000000DEA58400FEFD
      FD0099003300FFFF6600FFECCC0099666600FFEFD600F7E7D600FFD6CE00FFD6
      CE00F7B5AD00F7B5AD0063636300000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E3E1DFFFEAE5E5FFEBEA
      E8FFEEECECFFEDECEBFFEDECEBFFEEECECFFEDECECFFEEEDEDFFEDEDEDFFEEED
      ECFFEEEDECFFEDECEAFFE7E5E3FF000000000000000000000000DEA58400FEFD
      FD00FF993300FF993300FF993300FF993300FFFFF700F7EFE700F7A54200F7A5
      4200D68C42006363630000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000DEA58400FEFD
      FD00FEFDFD00FEFDFD00FFFFF700FEFDFD00FFFFF700FEFDFD00DEA58400E7AD
      6B00636363000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000DEA58400DEA5
      8400DEA58400DEA58400DEA58400DEA58400DEA58400DEA58400DEA584006363
      6300000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF00FFFFE00100000000FFFFC00100000000
      3FF9C001000000000001C001000000000001C001000000000001C00100000000
      0001C001000000000001C001000000000001C001000000000001C00100000000
      0001C001000000008001C001000000008001C001000000008001C00300000000
      FFFFC00700000000FFFFC00F0000000000000000000000000000000000000000
      000000000000}
  end
  object Acao: TActionList
    Images = ImgBotoes
    Left = 728
    Top = 96
    object actFechar: TAction
      Caption = '&Fechar'
      ImageIndex = 5
      OnExecute = actFecharExecute
    end
    object actExecutar: TAction
      Caption = '&Executar'
      ImageIndex = 2
    end
    object actSalvar: TAction
      Caption = '&Salvar'
      ImageIndex = 0
      OnExecute = actSalvarExecute
    end
    object actExcluir: TAction
      Caption = '&Excluir'
      ImageIndex = 2
    end
    object actCancelar: TAction
      Caption = '&Desfazer'
      ImageIndex = 1
    end
    object actPesquisar: TAction
      Caption = '&Pesquisar'
      ImageIndex = 4
    end
    object actNovo: TAction
      Caption = '&Novo'
      ImageIndex = 3
    end
    object actExcluir2: TAction
      Caption = '&Excluir'
      ImageIndex = 2
    end
  end
  object cdsMov: TClientDataSet
    Aggregates = <>
    Params = <>
    AfterOpen = cdsMovContaAfterOpen
    AfterEdit = cdsMovCaixaAfterEdit
    Left = 568
    Top = 32
    object cdsMovidTituloPagMov: TIntegerField
      FieldName = 'idTituloPagMov'
    end
    object cdsMovidMovFinanceira: TIntegerField
      FieldName = 'idMovFinanceira'
    end
    object cdsMovdtTituloPagMov: TDateTimeField
      FieldName = 'dtTituloPagMov'
    end
    object cdsMovvlTituloPagMov: TCurrencyField
      FieldName = 'vlTituloPagMov'
    end
    object cdsMovidTituloPag: TIntegerField
      FieldName = 'idTituloPag'
    end
  end
  object dsMov: TDataSource
    DataSet = cdsMov
    Left = 600
    Top = 32
  end
end
