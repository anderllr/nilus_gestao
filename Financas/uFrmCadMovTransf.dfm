inherited FrmCadMovTransf: TFrmCadMovTransf
  Caption = 'Transfer'#234'ncias financeiras'
  ClientHeight = 456
  ClientWidth = 1122
  Icon.Data = {
    0000010001001010000001002000680400001600000028000000100000002000
    0000010020000000000000040000000000000000000000000000000000000000
    00020000003D000000630000005F0000005F0000005F0000005F0000005F0000
    005F0000005F0000005F0000005F0000005F0000006100000057000000180807
    072B393333DB302A2AF8242020F52E2B2BF5373131F5393333F5302B2BF52D28
    29F52C2828F52E2929F5373232F52E3737F5423B3BF62A2525E90000004A1814
    144C726666FF514848FF483F3FFF625757FF6E6262FF726566FF504849FF4B43
    43FF494241FF4B4344FF706767FF697C7BFF817373FF5A5252FD00000063544F
    4F6D9E9696FF9F9A9AFF9C9595FF9C9595FF9E9798FFA29D9CFF9B9494FF9892
    92FF908B8AFF8C8686FF958E8EFF9C8F8FFF948D8EFF777272FF0F0F0F7B6460
    606FACA6A6FFBCB6B6FFB8B2B2FFC3BEBEFFCAC6C6FFC7C4C4FFC8C4C4FFC5C1
    C1FFBEBABAFFAAA5A5FF9D9696FF918C8CFF888383FF726C6CFE1414146C6460
    6054C7C1C1FEBFBAB9FFD0CBCCFFC6C0C1FFB3ADADFFAAA4A4FFA29C9CFF9F99
    99FFA09A99FFA59E9AFFB0AAA5FFA69F9BFF9A9491FF7D7777F90A0909556460
    603EBFB8B8F5CFC8CAFFCABFC5FFB9AEB4FFB4ADAEFFAFA9A9FFB1ABACFFAAA4
    A4FFA29B9DFF99949EFF948F99FF9B959FFF9A949DFF736E6EF10505053E635F
    5F2DBDB0B7EDB1AAAAFF56A650FF6DA666FFC4B4BEFFCDC6C8FFC7C3C3FFC9C3
    C0FFA49FADFF4E4EBBFF5352C0FF4E4EBFFF5E5BB9FF686364E70101002D605D
    5D19ABA6A6DB49A042FF22A21CFF23A01CFF6CA666FFC0B3BBFFB4ADB0FFB4AE
    AAFF8F8B9AFF5252CAFF5858D0FF5555D1FF6461C6FF5C5957D90000001D0C28
    0A2C47A241E735B22FFF3EAF37FF3DB036FF2CAA25FF67AF62FFBFB5B9FFBCB5
    B3FFA09BA9FF5353C7FF5A59CFFF5555CFFF6564C4FF4F4D4CC7000000102D9A
    28B33CBC35FE47B841FF4CBE45FF4BBD45FF45B83FFF33B72DFF80B479FFCCBD
    BDFFA6A3ACFF4F4FC7FF5756D0FF5151CEFF6060C2FF424039B0000000075EDC
    563C7FAF79BA55C64FFF57C951FF54CB4CFF5DBD56FFA7BAA1FFA8B7A3FFA39C
    B8FF928EB2FF4848C1FF5150C9FF4B4BC7FF5453BFFF3A3A5BD0111034820000
    00009896948B5FD259FF60D259FF5CD356FF6DCA67FFE3D4DFFFE5DCDBFF7170
    C8FF3434BBFF4140B7FF4342BBFF4141B9FF3C3CB5FF3838C4FF1C1B65980000
    00008F988B7A64D35EFF5FCE59FF5ACD53FF59B654FF817E80FF888682FF706F
    74FF2C2D8FFF2929ADFF3836AFFF3232ACFF2D2EB3FF191867B20000080C0000
    00008F96896665D25FFF61CC5AFF5ACB54FF55B050FF646062FF605E5FFF6563
    5FFF7B7978FF49489EFF201FA2FF2222A4FF585596FF14120D53000000000000
    00006694613F4DC047DF56C84FDE52C84CE15FBD59D4C7BEC19BD6CFD098CDC9
    CA99CEC8C399C1BBB996403E9FAF49478DAB938D84850D0D0B10000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    000000000000000000000000000080000000800000008001000080010000}
  ExplicitWidth = 1138
  ExplicitHeight = 494
  PixelsPerInch = 96
  TextHeight = 13
  inherited Bevel1: TBevel
    Top = 421
    Width = 1122
    ExplicitTop = 448
    ExplicitWidth = 537
  end
  inherited Bevel2: TBevel
    Top = 32
    Width = 1122
    ExplicitTop = 32
    ExplicitWidth = 537
  end
  inherited PagAbas: TCPageControl
    Top = 36
    Width = 1122
    Height = 385
    ExplicitTop = 36
    ExplicitWidth = 1122
    ExplicitHeight = 385
    inherited TabAbas: TTabSheet
      Caption = 'Transfer'#234'ncia'
      ExplicitLeft = 4
      ExplicitTop = 25
      ExplicitWidth = 1114
      ExplicitHeight = 356
      object CGroupBox7: TCGroupBox
        Left = 3
        Top = 79
        Width = 622
        Height = 96
        Caption = 'Origem - D'#233'bito'
        TabOrder = 1
        object CLabel8: TCLabel
          Left = 17
          Top = 19
          Width = 59
          Height = 13
          Alignment = taRightJustify
          Caption = 'Conta Caixa'
        end
        object CLabel1: TCLabel
          Left = 15
          Top = 41
          Width = 61
          Height = 13
          Alignment = taRightJustify
          Caption = 'Conta Banco'
        end
        object CLabel2: TCLabel
          Left = 119
          Top = 67
          Width = 67
          Height = 13
          Alignment = taRightJustify
          Caption = 'Compensa'#231#227'o'
        end
        object CLabel10: TCLabel
          Left = 277
          Top = 67
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
        object CLabel11: TCLabel
          Left = 418
          Top = 67
          Width = 55
          Height = 13
          Alignment = taRightJustify
          Caption = 'Vencimento'
        end
        object DBEidCaixaOri: TCDBEdit
          Left = 82
          Top = 16
          Width = 48
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'idCaixaOri'
          DataSource = dsPadrao
          TabOrder = 0
          OnEnter = DBEidCaixaOriEnter
          OnExit = DBEidCaixaOriExit
          Find = FindCaixa
          AcaoCad = frmPrincipal.actCadCaixa
          DecimalControl = True
          KeyMode = kmNormal
        end
        object LookCaixa: TCLookUp
          Left = 136
          Top = 16
          Width = 272
          Height = 19
          Alignment = taLeftJustify
          BevelInner = bvSpace
          BevelOuter = bvLowered
          Color = 14149350
          ParentBackground = False
          TabOrder = 1
          Key.Strings = (
            'idEmpresa'
            'idCaixaOri')
          LookUpKey.Strings = (
            'idEmpresa'
            'idCaixa')
          ClientDataSet = cdsLookup
          DataSource = dsPadrao
          ValidaCampoObrigatorio = True
          CampoObrigatorio = True
          LookUpTable = 'Caixa'
          ReturnField = 'descCaixa'
        end
        object CBitBtn1: TCBitBtn
          Left = 414
          Top = 16
          Width = 96
          Height = 19
          Action = frmPrincipal.actCadCaixa
          Caption = '&Conta Caixa'
          TabOrder = 2
          TabStop = False
        end
        object DBEidContaOri: TCDBEdit
          Left = 82
          Top = 39
          Width = 48
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'idContaOri'
          DataSource = dsPadrao
          TabOrder = 3
          OnExit = DBEidCaixaOriExit
          Find = FindConta
          AcaoCad = frmPrincipal.actCadConta
          DecimalControl = True
          KeyMode = kmNormal
        end
        object LookAgencia: TCLookUp
          Left = 136
          Top = 39
          Width = 52
          Height = 19
          Alignment = taLeftJustify
          BevelInner = bvSpace
          BevelOuter = bvLowered
          Color = 14149350
          ParentBackground = False
          TabOrder = 4
          Key.Strings = (
            'idEmpresa'
            'idContaOri')
          LookUpKey.Strings = (
            'idEmpresa'
            'idConta')
          ClientDataSet = cdsLookup
          DataSource = dsPadrao
          ValidaCampoObrigatorio = False
          CampoObrigatorio = True
          LookUpTable = 'vConta'
          ReturnField = 'idAgencia'
        end
        object LookContaCorrente: TCLookUp
          Left = 194
          Top = 39
          Width = 81
          Height = 19
          Alignment = taLeftJustify
          BevelInner = bvSpace
          BevelOuter = bvLowered
          Color = 14149350
          ParentBackground = False
          TabOrder = 5
          Key.Strings = (
            'idEmpresa'
            'idContaOri')
          LookUpKey.Strings = (
            'idEmpresa'
            'idConta')
          ClientDataSet = cdsLookup
          DataSource = dsPadrao
          ValidaCampoObrigatorio = False
          CampoObrigatorio = True
          LookUpTable = 'vConta'
          ReturnField = 'idContaCorrente'
        end
        object LookdescConta: TCLookUp
          Left = 281
          Top = 39
          Width = 227
          Height = 19
          Alignment = taLeftJustify
          BevelInner = bvSpace
          BevelOuter = bvLowered
          Color = 14149350
          ParentBackground = False
          TabOrder = 6
          Key.Strings = (
            'idEmpresa'
            'idContaOri')
          LookUpKey.Strings = (
            'idEmpresa'
            'idConta')
          ClientDataSet = cdsLookup
          DataSource = dsPadrao
          ValidaCampoObrigatorio = False
          CampoObrigatorio = True
          LookUpTable = 'vConta'
          ReturnField = 'descConta'
        end
        object CBitBtn2: TCBitBtn
          Left = 514
          Top = 39
          Width = 96
          Height = 19
          Action = frmPrincipal.actCadConta
          Caption = '&Contas'
          TabOrder = 7
          TabStop = False
        end
        object DBEdtCompensacao: TCDBEdit
          Left = 192
          Top = 64
          Width = 80
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'dtCompensacao'
          DataSource = dsPadrao
          MaxLength = 10
          TabOrder = 9
          DecimalControl = True
          KeyMode = kmDate
        end
        object DBEidCheque: TCDBEdit
          Left = 343
          Top = 64
          Width = 69
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'idCheque'
          DataSource = dsPadrao
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 10
          DecimalControl = True
          KeyMode = kmInteger
        end
        object DBEdtVencimento: TCDBEdit
          Left = 479
          Top = 64
          Width = 75
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'dtVencimento'
          DataSource = dsPadrao
          MaxLength = 10
          TabOrder = 11
          DecimalControl = True
          KeyMode = kmDate
        end
        object chkCheque: TCCheckBox
          Left = 17
          Top = 66
          Width = 97
          Height = 17
          Caption = 'Emite Cheque?'
          TabOrder = 8
          OnClick = chkChequeClick
          OnExit = chkChequeExit
        end
      end
      object CGroupBox1: TCGroupBox
        Left = 3
        Top = 235
        Width = 622
        Height = 70
        Caption = 'Destino - Cr'#233'dito'
        TabOrder = 3
        object CLabel3: TCLabel
          Left = 17
          Top = 19
          Width = 59
          Height = 13
          Alignment = taRightJustify
          Caption = 'Conta Caixa'
        end
        object CLabel4: TCLabel
          Left = 15
          Top = 41
          Width = 61
          Height = 13
          Alignment = taRightJustify
          Caption = 'Conta Banco'
        end
        object DBEidCaixaDes: TCDBEdit
          Left = 82
          Top = 16
          Width = 48
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'idCaixaDes'
          DataSource = dsPadrao
          TabOrder = 0
          OnExit = DBEidCaixaOriExit
          Find = FindCaixa
          AcaoCad = frmPrincipal.actCadCaixa
          DecimalControl = True
          KeyMode = kmNormal
        end
        object CLookUp1: TCLookUp
          Left = 136
          Top = 16
          Width = 272
          Height = 19
          Alignment = taLeftJustify
          BevelInner = bvSpace
          BevelOuter = bvLowered
          Color = 14149350
          ParentBackground = False
          TabOrder = 1
          Key.Strings = (
            'idEmpresa'
            'idCaixaDes')
          LookUpKey.Strings = (
            'idEmpresa'
            'idCaixa')
          ClientDataSet = cdsLookup
          DataSource = dsPadrao
          ValidaCampoObrigatorio = True
          CampoObrigatorio = True
          LookUpTable = 'Caixa'
          ReturnField = 'descCaixa'
        end
        object CBitBtn3: TCBitBtn
          Left = 414
          Top = 16
          Width = 96
          Height = 19
          Action = frmPrincipal.actCadCaixa
          Caption = '&Conta Caixa'
          TabOrder = 2
          TabStop = False
        end
        object DBEidContaDes: TCDBEdit
          Left = 82
          Top = 39
          Width = 48
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'idContaDes'
          DataSource = dsPadrao
          TabOrder = 3
          OnExit = DBEidCaixaOriExit
          Find = FindConta
          AcaoCad = frmPrincipal.actCadConta
          DecimalControl = True
          KeyMode = kmNormal
        end
        object CLookUp2: TCLookUp
          Left = 136
          Top = 39
          Width = 52
          Height = 19
          Alignment = taLeftJustify
          BevelInner = bvSpace
          BevelOuter = bvLowered
          Color = 14149350
          ParentBackground = False
          TabOrder = 4
          Key.Strings = (
            'idEmpresa'
            'idContaDes')
          LookUpKey.Strings = (
            'idEmpresa'
            'idConta')
          ClientDataSet = cdsLookup
          DataSource = dsPadrao
          ValidaCampoObrigatorio = False
          CampoObrigatorio = True
          LookUpTable = 'vConta'
          ReturnField = 'idAgencia'
        end
        object CLookUp3: TCLookUp
          Left = 194
          Top = 39
          Width = 81
          Height = 19
          Alignment = taLeftJustify
          BevelInner = bvSpace
          BevelOuter = bvLowered
          Color = 14149350
          ParentBackground = False
          TabOrder = 5
          Key.Strings = (
            'idEmpresa'
            'idContaDes')
          LookUpKey.Strings = (
            'idEmpresa'
            'idConta')
          ClientDataSet = cdsLookup
          DataSource = dsPadrao
          ValidaCampoObrigatorio = False
          CampoObrigatorio = True
          LookUpTable = 'vConta'
          ReturnField = 'idContaCorrente'
        end
        object CLookUp4: TCLookUp
          Left = 281
          Top = 39
          Width = 227
          Height = 19
          Alignment = taLeftJustify
          BevelInner = bvSpace
          BevelOuter = bvLowered
          Color = 14149350
          ParentBackground = False
          TabOrder = 6
          Key.Strings = (
            'idEmpresa'
            'idContaDes')
          LookUpKey.Strings = (
            'idEmpresa'
            'idConta')
          ClientDataSet = cdsLookup
          DataSource = dsPadrao
          ValidaCampoObrigatorio = False
          CampoObrigatorio = True
          LookUpTable = 'vConta'
          ReturnField = 'descConta'
        end
        object CBitBtn4: TCBitBtn
          Left = 514
          Top = 39
          Width = 96
          Height = 19
          Action = frmPrincipal.actCadConta
          Caption = '&Contas'
          TabOrder = 7
          TabStop = False
        end
      end
      object CGroupBox2: TCGroupBox
        Left = 3
        Top = 7
        Width = 622
        Height = 66
        Caption = 'Lan'#231'amento'
        TabOrder = 0
        object CLabel5: TCLabel
          Left = 274
          Top = 17
          Width = 23
          Height = 13
          Alignment = taRightJustify
          Caption = 'Data'
        end
        object CLabel6: TCLabel
          Left = 486
          Top = 17
          Width = 24
          Height = 13
          Alignment = taRightJustify
          Caption = 'Valor'
        end
        object CLabel7: TCLabel
          Left = 35
          Top = 40
          Width = 41
          Height = 13
          Alignment = taRightJustify
          Caption = 'Hist'#243'rico'
        end
        object CLabel9: TCLabel
          Left = 39
          Top = 17
          Width = 37
          Height = 13
          Alignment = taRightJustify
          Caption = 'N'#250'mero'
        end
        object DBEdtMovTransf: TCDBEdit
          Left = 303
          Top = 15
          Width = 80
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'dtMovTransf'
          DataSource = dsPadrao
          MaxLength = 10
          TabOrder = 1
          OnExit = DBEdtMovTransfExit
          DecimalControl = True
          KeyMode = kmDate
        end
        object DBEvlMovTransf: TCDBEdit
          Left = 516
          Top = 15
          Width = 94
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'vlMovTransf'
          DataSource = dsPadrao
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          MaxLength = 12
          ParentFont = False
          TabOrder = 2
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEdescMovTransf: TCDBEdit
          Left = 82
          Top = 37
          Width = 528
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'descMovTransf'
          DataSource = dsPadrao
          TabOrder = 3
          DecimalControl = True
          KeyMode = kmUSUpper
        end
        object DBEidMovTransf: TCDBEdit
          Left = 82
          Top = 15
          Width = 80
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'idMovTransf'
          DataSource = dsPadrao
          MaxLength = 10
          TabOrder = 0
          OnExit = DBEidMovTransfExit
          OnKeyDown = DBEidMovTransfKeyDown
          DecimalControl = True
          KeyMode = kmInteger
        end
      end
      object CGroupBox3: TCGroupBox
        Left = 3
        Top = 181
        Width = 622
        Height = 48
        Caption = 'Op'#231#245'es de Impress'#227'o'
        TabOrder = 2
        object BtnImpChq: TCBitBtn
          Left = 172
          Top = 13
          Width = 123
          Height = 28
          Caption = 'Imprime Cheque'
          Enabled = False
          Glyph.Data = {
            36080000424D3608000000000000360000002800000020000000100000000100
            2000000000000008000000000000000000000000000000000000FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00BABA
            BBFFA19D99FFA29C99FFA2A2A3FFA2A1A1FFA2A2A1FFA2A1A2FFA2A1A2FFA2A1
            A1FFA2A2A1FFA1A1A1FF9F9FA0FFA8A8A8FFFF00FF00FF00FF00FF00FF00FF00
            FF00F8F8F8FFFAF9F9FFFBFBFBFFFBFBFBFFFBFBFBFFFBFBFBFFFBFBFBFFFBFB
            FBFFFBFBFBFFFBFBFBFFF8F8F8FFFF00FF00FF00FF00FF00FF00FF00FF00AAA8
            A7FFF0E1D6FFF0E1D6FFECE3DDFFECE3DCFFEDE5DEFFEEE6DFFFEEE6DFFFEEE6
            E0FFEEE6E1FFEDE6E1FFEFE8E3FFE4DFDBFFFF00FF00FF00FF00FF00FF00FF00
            FF00FAF6F3FFFAF6F3FFF9F6F5FFF9F6F4FFF9F7F5FFFAF7F5FFFAF7F5FFFAF7
            F6FFFAF7F6FFF9F7F6FFFAF8F6FFFAF9F9FFFF00FF00FF00FF00FF00FF00AEAE
            AEFFE3DCD7FFE5DBD5FFE3E3E5FFE2E1E2FFE3E2E1FFE3E2E2FFE3E2E2FFE3E2
            E2FFE2E2E1FFE2E1E0FFE3E2E2FFD9D9D9FFFF00FF00FF00FF00FF00FF00FF00
            FF00F7F5F3FFF7F4F2FFF6F6F7FFF6F6F6FFF6F6F6FFF6F6F6FFF6F6F6FFF6F6
            F6FFF6F6F6FFF6F6F6FFF6F6F6FFF9F9F9FFFF00FF00FF00FF00FF00FF00ACAD
            AEFFE7E1DBFFE7E0DAFFE4E4E3FFE5E1DEFFE6E6E7FFE6E6E6FFE6E7E7FFE6E7
            E7FFE5E6E5FFE5E5E5FFE6E6E6FFDCDDDDFFFF00FF00FF00FF00FF00FF00FF00
            FF00F8F6F4FFF8F6F4FFF7F7F6FFF7F6F5FFF7F7F8FFF7F7F7FFF7F8F8FFF7F8
            F8FFF7F7F7FFF7F7F7FFF7F7F7FFFAFAFAFFFF00FF00FF00FF00FF00FF00BCBC
            BBFFDED5CEFFE5D8CDFFE0D6D0FFE4D6CDFFE5DBD5FFE4DBD4FFE8E8E8FFE8E8
            E8FFE7E7E7FFE6E6E6FFE7E7E7FFDEDEDEFFFF00FF00FF00FF00FF00FF00FF00
            FF00F5F3F1FFF7F3F0FFF6F3F1FFF7F3F0FFF7F4F2FFF7F4F2FFF8F8F8FFF8F8
            F8FFF8F8F8FFF7F7F7FFF8F8F8FFFAFAFAFFFF00FF00FF00FF00FEFEFEFFD8CE
            C5FFD7CAC2FFE8D7CAFFE6DCD6FFE5DCD6FFE4D6CCFFE7DAD0FFE6DDD7FFE8E5
            E2FFE9EAEAFFE8E8E8FFE9E9E9FFE0E0E0FFFF00FF00FF00FF00FF00FF00FF00
            FF00F3EFEDFFF8F3EFFFF7F4F3FFF7F4F3FFF7F3F0FFF8F4F1FFF7F5F3FFF8F7
            F6FFF8F8F8FFF8F8F8FFF8F8F8FFFAFAFAFFFF00FF00FF00FF00FEFCFBFFD4C1
            B4FFE1D3C8FFE6D6CBFFE9E2DDFFE6E0DCFFE3D7CFFFE7DAD0FFE5D8CEFFE9E3
            E0FFEBEDEEFFEAEAEAFFEBEBEBFFE2E2E2FFFF00FF00FF00FF00FF00FF00FF00
            FF00F6F2EFFFF7F3EFFFF8F6F5FFF7F6F4FFF6F3F1FFF8F4F1FFF7F3F0FFF8F6
            F6FFF9F9FAFFF8F8F8FFF9F9F9FFFBFBFBFFFF00FF00FF00FF00FBF5F0FFD6C2
            B4FFE4DBD6FFE4DBD2FFE6DCD4FFE6DBD3FFE9E1DBFFE9E7E5FFE4D9D0FFEAE0
            D9FFEDECECFFECECEDFFEDEDEDFFE4E4E4FFFF00FF00FF00FF00FF00FF00FF00
            FF00F7F4F3FFF7F4F1FFF7F4F2FFF7F4F2FFF8F6F4FFF8F8F7FFF7F3F1FFF8F6
            F3FFF9F9F9FFF9F9F9FFF9F9F9FFFBFBFBFFFF00FF00FF00FF00F5F0ECFFDBC8
            B8FFE6DBD4FFE6D8D1FFE7DDD5FFE7DCD4FFEBE1DAFFEBE6E3FFE5D9D1FFEBE2
            DBFFEFEEEEFFEFEFF0FFEFEFEFFFE5E5E5FFFF00FF00FF00FF00FF00FF00FF00
            FF00F7F4F2FFF7F3F1FFF8F5F2FFF8F4F2FFF9F6F4FFF9F7F6FFF7F3F1FFF9F6
            F4FFFAFAFAFFFAFAFAFFFAFAFAFFFBFBFBFFFF00FF00FF00FF00FCFBFAFFE1D0
            C2FFE3D5CBFFE8D9CEFFEEE8E2FFEBE7E4FFE7DBD3FFE9DCD2FFE8DBD0FFEEEA
            E6FFF2F3F4FFF4F4F4FFF5F5F5FFE9E9E9FFFF00FF00FF00FF00FF00FF00FF00
            FF00F6F2EFFFF8F3F0FFFAF8F6FFF9F8F7FFF8F4F2FFF8F4F1FFF8F4F1FFFAF8
            F7FFFBFBFBFFFBFBFBFFFCFCFCFFFCFCFCFFFF00FF00FF00FF00FF00FF00C0B6
            B0FFE4DAD5FFEDDED3FFEDE3DBFFECE3DBFFE8DAD2FFEDE0D8FFEFE9E5FFF0EF
            EDFFDADBDBFFD0D0D0FFE7E7E7FFE8E8E8FFFF00FF00FF00FF00FF00FF00FF00
            FF00F7F4F2FFF9F5F2FFF9F6F4FFF9F6F4FFF8F4F1FFF9F6F3FFFAF8F7FFFAFA
            F9FFF4F4F4FFF1F1F1FFF8F8F8FFFBFBFBFFFF00FF00FF00FF00FF00FF00B3B4
            B5FFECE6E1FFF2E9E3FFEAE1DCFFEBDFD6FFEFE9E6FFEEE7E2FFF7F9F9FFF9FA
            FAFFCFCECEFFCDCDCDFFCCCCCCFFDBDBDBFFFF00FF00FF00FF00FF00FF00FF00
            FF00F9F8F6FFFBF8F6FFF8F6F4FFF9F5F3FFFAF8F7FFFAF8F6FFFCFDFDFFFDFD
            FDFFF1F0F0FFF0F0F0FFF2F2F2FFFF00FF00FF00FF00FF00FF00FF00FF00A9A9
            A9FFF3F2F2FFFAF9F8FFF5F5F5FFF6F3F2FFF9FAFBFFF9F9F9FFFCFCFCFFE9E9
            E9FFCCCCCCFFF2F2F2FFFAFAFAFFFEFEFEFFFF00FF00FF00FF00FF00FF00FF00
            FF00FBFBFBFFFDFDFCFFFCFCFCFFFCFBFBFFFDFDFDFFFDFDFDFFFEFEFEFFF8F8
            F8FFF2F2F2FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00BFBF
            BFFFF1F1F0FFFDFBF9FFFAFBFBFFFAFBFBFFF9F9FAFFFBFBFCFFF4F4F4FFDFDF
            DFFFFBFBFBFFFEFEFEFFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FCFCFCFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFDFDFDFFFEFE
            FEFFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
          Margin = 5
          NumGlyphs = 2
          TabOrder = 2
          OnClick = BtnImpChqClick
        end
        object CKCruzado: TCCheckBox
          Left = 7
          Top = 18
          Width = 71
          Height = 17
          Caption = 'Cruzado?'
          TabOrder = 0
        end
        object CKPreDatado: TCCheckBox
          Left = 83
          Top = 18
          Width = 85
          Height = 17
          Caption = 'Pr'#233'-Datado?'
          TabOrder = 1
        end
        object BtnCopiaCheque: TCBitBtn
          Left = 301
          Top = 13
          Width = 83
          Height = 28
          Caption = 'C'#243'pia'
          Enabled = False
          Glyph.Data = {
            36080000424D3608000000000000360000002800000020000000100000000100
            2000000000000008000000000000000000000000000000000000FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00BABA
            BBFFA19D99FFA29C99FFA2A2A3FFA2A1A1FFA2A2A1FFA2A1A2FFA2A1A2FFA2A1
            A1FFA2A2A1FFA1A1A1FF9F9FA0FFA8A8A8FFFF00FF00FF00FF00FF00FF00FF00
            FF00F8F8F8FFFAF9F9FFFBFBFBFFFBFBFBFFFBFBFBFFFBFBFBFFFBFBFBFFFBFB
            FBFFFBFBFBFFFBFBFBFFF8F8F8FFFF00FF00FF00FF00FF00FF00FF00FF00AAA8
            A7FFF0E1D6FFF0E1D6FFECE3DDFFECE3DCFFEDE5DEFFEEE6DFFFEEE6DFFFEEE6
            E0FFEEE6E1FFEDE6E1FFEFE8E3FFE4DFDBFFFF00FF00FF00FF00FF00FF00FF00
            FF00FAF6F3FFFAF6F3FFF9F6F5FFF9F6F4FFF9F7F5FFFAF7F5FFFAF7F5FFFAF7
            F6FFFAF7F6FFF9F7F6FFFAF8F6FFFAF9F9FFFF00FF00FF00FF00FF00FF00AEAE
            AEFFE3DCD7FFE5DBD5FFE3E3E5FFE2E1E2FFE3E2E1FFE3E2E2FFE3E2E2FFE3E2
            E2FFE2E2E1FFE2E1E0FFE3E2E2FFD9D9D9FFFF00FF00FF00FF00FF00FF00FF00
            FF00F7F5F3FFF7F4F2FFF6F6F7FFF6F6F6FFF6F6F6FFF6F6F6FFF6F6F6FFF6F6
            F6FFF6F6F6FFF6F6F6FFF6F6F6FFF9F9F9FFFF00FF00FF00FF00FF00FF00ACAD
            AEFFE7E1DBFFE7E0DAFFE4E4E3FFE5E1DEFFE6E6E7FFE6E6E6FFE6E7E7FFE6E7
            E7FFE5E6E5FFE5E5E5FFE6E6E6FFDCDDDDFFFF00FF00FF00FF00FF00FF00FF00
            FF00F8F6F4FFF8F6F4FFF7F7F6FFF7F6F5FFF7F7F8FFF7F7F7FFF7F8F8FFF7F8
            F8FFF7F7F7FFF7F7F7FFF7F7F7FFFAFAFAFFFF00FF00FF00FF00FF00FF00BCBC
            BBFFDED5CEFFE5D8CDFFE0D6D0FFE4D6CDFFE5DBD5FFE4DBD4FFE8E8E8FFE8E8
            E8FFE7E7E7FFE6E6E6FFE7E7E7FFDEDEDEFFFF00FF00FF00FF00FF00FF00FF00
            FF00F5F3F1FFF7F3F0FFF6F3F1FFF7F3F0FFF7F4F2FFF7F4F2FFF8F8F8FFF8F8
            F8FFF8F8F8FFF7F7F7FFF8F8F8FFFAFAFAFFFF00FF00FF00FF00FEFEFEFFD8CE
            C5FFD7CAC2FFE8D7CAFFE6DCD6FFE5DCD6FFE4D6CCFFE7DAD0FFE6DDD7FFE8E5
            E2FFE9EAEAFFE8E8E8FFE9E9E9FFE0E0E0FFFF00FF00FF00FF00FF00FF00FF00
            FF00F3EFEDFFF8F3EFFFF7F4F3FFF7F4F3FFF7F3F0FFF8F4F1FFF7F5F3FFF8F7
            F6FFF8F8F8FFF8F8F8FFF8F8F8FFFAFAFAFFFF00FF00FF00FF00FEFCFBFFD4C1
            B4FFE1D3C8FFE6D6CBFFE9E2DDFFE6E0DCFFE3D7CFFFE7DAD0FFE5D8CEFFE9E3
            E0FFEBEDEEFFEAEAEAFFEBEBEBFFE2E2E2FFFF00FF00FF00FF00FF00FF00FF00
            FF00F6F2EFFFF7F3EFFFF8F6F5FFF7F6F4FFF6F3F1FFF8F4F1FFF7F3F0FFF8F6
            F6FFF9F9FAFFF8F8F8FFF9F9F9FFFBFBFBFFFF00FF00FF00FF00FBF5F0FFD6C2
            B4FFE4DBD6FFE4DBD2FFE6DCD4FFE6DBD3FFE9E1DBFFE9E7E5FFE4D9D0FFEAE0
            D9FFEDECECFFECECEDFFEDEDEDFFE4E4E4FFFF00FF00FF00FF00FF00FF00FF00
            FF00F7F4F3FFF7F4F1FFF7F4F2FFF7F4F2FFF8F6F4FFF8F8F7FFF7F3F1FFF8F6
            F3FFF9F9F9FFF9F9F9FFF9F9F9FFFBFBFBFFFF00FF00FF00FF00F5F0ECFFDBC8
            B8FFE6DBD4FFE6D8D1FFE7DDD5FFE7DCD4FFEBE1DAFFEBE6E3FFE5D9D1FFEBE2
            DBFFEFEEEEFFEFEFF0FFEFEFEFFFE5E5E5FFFF00FF00FF00FF00FF00FF00FF00
            FF00F7F4F2FFF7F3F1FFF8F5F2FFF8F4F2FFF9F6F4FFF9F7F6FFF7F3F1FFF9F6
            F4FFFAFAFAFFFAFAFAFFFAFAFAFFFBFBFBFFFF00FF00FF00FF00FCFBFAFFE1D0
            C2FFE3D5CBFFE8D9CEFFEEE8E2FFEBE7E4FFE7DBD3FFE9DCD2FFE8DBD0FFEEEA
            E6FFF2F3F4FFF4F4F4FFF5F5F5FFE9E9E9FFFF00FF00FF00FF00FF00FF00FF00
            FF00F6F2EFFFF8F3F0FFFAF8F6FFF9F8F7FFF8F4F2FFF8F4F1FFF8F4F1FFFAF8
            F7FFFBFBFBFFFBFBFBFFFCFCFCFFFCFCFCFFFF00FF00FF00FF00FF00FF00C0B6
            B0FFE4DAD5FFEDDED3FFEDE3DBFFECE3DBFFE8DAD2FFEDE0D8FFEFE9E5FFF0EF
            EDFFDADBDBFFD0D0D0FFE7E7E7FFE8E8E8FFFF00FF00FF00FF00FF00FF00FF00
            FF00F7F4F2FFF9F5F2FFF9F6F4FFF9F6F4FFF8F4F1FFF9F6F3FFFAF8F7FFFAFA
            F9FFF4F4F4FFF1F1F1FFF8F8F8FFFBFBFBFFFF00FF00FF00FF00FF00FF00B3B4
            B5FFECE6E1FFF2E9E3FFEAE1DCFFEBDFD6FFEFE9E6FFEEE7E2FFF7F9F9FFF9FA
            FAFFCFCECEFFCDCDCDFFCCCCCCFFDBDBDBFFFF00FF00FF00FF00FF00FF00FF00
            FF00F9F8F6FFFBF8F6FFF8F6F4FFF9F5F3FFFAF8F7FFFAF8F6FFFCFDFDFFFDFD
            FDFFF1F0F0FFF0F0F0FFF2F2F2FFFF00FF00FF00FF00FF00FF00FF00FF00A9A9
            A9FFF3F2F2FFFAF9F8FFF5F5F5FFF6F3F2FFF9FAFBFFF9F9F9FFFCFCFCFFE9E9
            E9FFCCCCCCFFF2F2F2FFFAFAFAFFFEFEFEFFFF00FF00FF00FF00FF00FF00FF00
            FF00FBFBFBFFFDFDFCFFFCFCFCFFFCFBFBFFFDFDFDFFFDFDFDFFFEFEFEFFF8F8
            F8FFF2F2F2FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00BFBF
            BFFFF1F1F0FFFDFBF9FFFAFBFBFFFAFBFBFFF9F9FAFFFBFBFCFFF4F4F4FFDFDF
            DFFFFBFBFBFFFEFEFEFFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FCFCFCFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFDFDFDFFFEFE
            FEFFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
          Margin = 5
          NumGlyphs = 2
          TabOrder = 3
          OnClick = BtnCopiaChequeClick
        end
      end
      object CGBRepetir: TCGroupBox
        Left = 3
        Top = 311
        Width = 622
        Height = 40
        Caption = 'Repetir'
        TabOrder = 4
        object CBData: TCheckBox
          Left = 12
          Top = 14
          Width = 64
          Height = 17
          TabStop = False
          Caption = 'Da&ta'
          TabOrder = 0
        end
        object CBDebidCaixa: TCheckBox
          Left = 82
          Top = 14
          Width = 80
          Height = 17
          TabStop = False
          Caption = '&Caixa D'#233'bito'
          TabOrder = 1
        end
        object CBCreidConta: TCheckBox
          Left = 351
          Top = 14
          Width = 97
          Height = 17
          TabStop = False
          Caption = '&Conta Cr'#233'dito '
          TabOrder = 4
        end
        object CBHistorico: TCheckBox
          Left = 454
          Top = 14
          Width = 95
          Height = 17
          TabStop = False
          Caption = '&Hist'#243'rico'
          TabOrder = 5
        end
        object CBDebidConta: TCheckBox
          Left = 168
          Top = 14
          Width = 80
          Height = 17
          TabStop = False
          Caption = '&Conta D'#233'bito'
          TabOrder = 2
        end
        object CBCreidCaixa: TCheckBox
          Left = 254
          Top = 14
          Width = 91
          Height = 17
          TabStop = False
          Caption = '&Caixa Cr'#233'dito'
          TabOrder = 3
        end
      end
    end
  end
  inherited PanBotoes: TCPanelGradient
    Top = 425
    Width = 1122
    ExplicitTop = 425
    ExplicitWidth = 1122
    inherited BtnFechar: TCBitBtn
      Left = 554
      ExplicitLeft = 554
    end
    inherited BtnExcluir: TCBitBtn
      Left = 251
      TabOrder = 3
      ExplicitLeft = 251
    end
    inherited BtnNovo: TCBitBtn
      Left = 170
      TabOrder = 2
      ExplicitLeft = 170
    end
    object BtnSlipTransf: TCBitBtn
      Left = 413
      Top = 2
      Width = 104
      Height = 25
      Caption = '&Slip de Transf.'
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        0000000000000000000000000000B6B6B6FF999999FF878787FF878787FF8787
        87FF878787FF878787FF878787FF878787FF878787FF00000000000000000000
        0000000000000000000000000000B6B6B6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF878787FF00000000000000000000
        0000000000000000000000000000B6B6B6FFFFFFFFFFFBFBFBFFFBFBFBFFFBFB
        FBFFFBFBFBFFFBFBFBFFFCFCFCFFFFFFFFFF878787FF00000000307FAEFF507B
        9EFF4F7597FF4F7597FF4F7597FFB6B6B6FFFFFFFFFFDBCDBFFFDBCDBFFFDBCD
        BFFFDBCDBFFFDBCDBFFFDBCDBFFFFFFFFFFF878787FF000000003184B3FFBBDC
        ECFFBADCECFFBADCECFFB9DCECFFB6B6B6FFFFFFFFFFFEFEFEFFFEFEFEFFFEFE
        FEFFFEFEFEFFFEFEFEFFFEFEFEFFFFFFFFFF878787FF000000003184B3FFBDDE
        EDFF50A7CFFF4FA6CEFF4CA5CEFFB6B6B6FFFFFFFFFFDBCDBFFFDBCDBFFFDBCD
        BFFFDBCDBFFFDBCDBFFFDBCDBFFFFFFFFFFF878787FF000000003184B3FFBFDF
        EDFF56A9CFFF54A8CFFF52A7CFFFB6B6B6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF878787FF000000003184B3FFC1DF
        EDFF5BABD0FF59ABCFFF57AACFFFB6B6B6FFFFFFFFFFDBCDBFFFDBCDBFFFDBCD
        BFFFDBCDBFFFDBCDBFFFDBCDBFFFFFFFFFFF8A8A8AFF000000003184B3FFC3E0
        EDFF5FADD0FF5DADD0FF5BACD0FFB6B6B6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFB6B6B6FFC8C8C8FFC8C8C8FFC4C4C4FFAEAEAEFF000000003184B3FFC4E1
        EDFF62AFD0FF61AED0FF5EADD0FFB6B6B6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFB6B6B6FFFFFFFFFFFAFAFAFFC4C4C4FFB6B6B69F000000003184B3FFC5E1
        EEFF65B0D0FF63B0D0FF61AED0FFB6B6B6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFB6B6B6FFFAFAFAFFC4C4C4FFB6B6B69F00000000000000003184B3FFC6E2
        EEFF67B1D1FF66B0D1FF5CA7C8FFB6B6B6FFB6B6B6FFB6B6B6FFB6B6B6FFB6B6
        B6FFB6B6B6FFB6B6B6FFB6B6B69F0000000000000000000000003184B3FFC6E2
        EEFF80BED8FF73AAC2FF588CA5FF4C7E98FF43728EFF286386FFBEDEEDFF2C53
        7AFF0000000000000000000000000000000000000000000000003184B3FFC6E2
        EEFFC6E2EEFF4C4C4CFF4C4C4CFF4C4C4CFF4C4C4CFF407591FFBFDEEDFF2D5A
        82FF0000000000000000000000000000000000000000000000003184B3FF3184
        B3FF3184B3FFA9A9A9FFDBDBDBFFDBDBDBFFA9A9A9FF10446CFF3184B3FF2F74
        A1FF000000000000000000000000000000000000000000000000000000000000
        000000000000848484FF848484FF848484FF848484FF00000000000000000000
        0000000000000000000000000000000000000000000000000000}
      TabOrder = 6
      OnClick = BtnSlipTransfClick
    end
  end
  inherited PanEmpresa: TCPanelGradient
    Width = 1122
    Height = 32
    ExplicitWidth = 1122
    ExplicitHeight = 32
    inherited lblCNPJ: TCLabel
      Left = 628
      Top = 32
      Visible = False
      ExplicitLeft = 628
      ExplicitTop = 32
    end
    inherited lblInscricao: TCLabel
      Left = 653
      Top = 3
      Visible = False
      ExplicitLeft = 653
      ExplicitTop = 3
    end
    inherited LookdescCadEmpresa: TCLookUp
      Width = 245
      ExplicitWidth = 245
    end
    inherited LookdescAbreviada: TCLookUp
      Left = 414
      Width = 163
      ExplicitLeft = 414
      ExplicitWidth = 163
    end
    inherited lookidCnpjCpf: TCLookUp
      Left = 800
      Top = 24
      Visible = False
      ExplicitLeft = 800
      ExplicitTop = 24
    end
    inherited LookidInscEstadual: TCLookUp
      Left = 682
      Top = 24
      Visible = False
      ExplicitLeft = 682
      ExplicitTop = 24
    end
  end
  inherited imgIcones: TImageList
    Left = 656
    Top = 168
    Bitmap = {
      494C010101000400740010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
      000000000000000000000000000000000000FDFDFDFFC2C2C2FF9C9C9CFFA0A0
      A0FFA0A0A0FFA0A0A0FFA0A0A0FFA0A0A0FFA0A0A0FFA0A0A0FFA0A0A0FFA0A0
      A0FFA0A0A0FF9E9E9EFFA8A8A8FFE7E7E7FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D5D5D5FF544F4FFF352F2FFF2C28
      28FF363333FF3E3939FF403B3BFF383333FF353031FF343030FF363131FF3E3A
      3AFF363E3EFF484141FF3C3737FFB5B5B5FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000BAB8B8FF726666FF514848FF483F
      3FFF625757FF6E6262FF726566FF504849FF4B4343FF494241FF4B4344FF7067
      67FF697C7BFF817373FF5B5353FF9C9C9CFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B5B3B3FF9E9696FF9F9A9AFF9C95
      95FF9C9595FF9E9798FFA29D9CFF9B9494FF989292FF908B8AFF8C8686FF958E
      8EFF9C8F8FFF948D8EFF777272FF8B8B8BFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000BBB9B9FFACA6A6FFBCB6B6FFB8B2
      B2FFC3BEBEFFCAC6C6FFC7C4C4FFC8C4C4FFC5C1C1FFBEBABAFFAAA5A5FF9D96
      96FF918C8CFF888383FF726C6CFF9B9B9BFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CBCACAFFC7C1C1FFBFBAB9FFD0CB
      CCFFC6C0C1FFB3ADADFFAAA4A4FFA29C9CFF9F9999FFA09A99FFA59E9AFFB0AA
      A5FFA69F9BFF9A9491FF807A7AFFADADADFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D9D8D8FFC1BABAFFCFC8CAFFCABF
      C5FFB9AEB4FFB4ADAEFFAFA9A9FFB1ABACFFAAA4A4FFA29B9DFF99949EFF948F
      99FF9B959FFF9A949DFF7A7575FFC2C2C2FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E3E2E2FFC1B5BCFFB1AAAAFF56A6
      50FF6DA666FFC4B4BEFFCDC6C8FFC7C3C3FFC9C3C0FFA49FADFF4E4EBBFF5352
      C0FF4E4EBFFF5E5BB9FF767172FFD2D2D2FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000EFEFEFFFB6B2B2FF49A042FF22A2
      1CFF23A01CFF6CA666FFC0B3BBFFB4ADB0FFB4AEAAFF8F8B9AFF5252CAFF5858
      D0FF5555D1FF6461C6FF747170FFE2E2E2FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D5D9D4FF58AA52FF35B22FFF3EAF
      37FF3DB036FF2CAA25FF67AF62FFBFB5B9FFBCB5B3FFA09BA9FF5353C7FF5A59
      CFFF5555CFFF6564C4FF757473FFEFEFEFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000006BB868FF3CBC35FF47B841FF4CBE
      45FF4BBD45FF45B83FFF33B72DFF80B479FFCCBDBDFFA6A3ACFF4F4FC7FF5756
      D0FF5151CEFF6060C2FF7C7B76FFF8F8F8FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D9F6D7FFA1C49DFF55C64FFF57C9
      51FF54CB4CFF5DBD56FFA7BAA1FFA8B7A3FFA39CB8FF928EB2FF4848C1FF5150
      C9FF4B4BC7FF5453BFFF5E5E79FF858597FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FFC6C5C4FF5FD259FF60D2
      59FF5CD356FF6DCA67FFE3D4DFFFE5DCDBFF7170C8FF3434BBFF4140B7FF4342
      BBFF4141B9FF3C3CB5FF3838C4FF7777A3FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FFC9CDC7FF64D35EFF5FCE
      59FF5ACD53FF59B654FF817E80FF888682FF706F74FF2C2D8FFF2929ADFF3836
      AFFF3232ACFF2D2EB3FF5E5D94FFF3F3F3FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FFD2D5CFFF65D25FFF61CC
      5AFF5ACB54FF55B050FF646062FF605E5FFF65635FFF7B7978FF49489EFF201F
      A2FF2222A4FF585596FFB2B1B0FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FFD9E4D7FF63C75EFF6BCF
      65FF66CE61FF79C874FFDCD7D9FFE6E2E2FFE1DEDFFFE1DEDBFFDAD7D5FF7B7A
      BDFF8483B2FFC6C3BEFFEFEFEFFF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000080000000000000008000000000000000
      8001000000000000800100000000000000000000000000000000000000000000
      000000000000}
  end
  inherited Acao: TActionList
    Left = 768
    Top = 168
  end
  inherited cdsPadrao: TClientDataSet
    CommandText = 'SELECT * FROM MovTransf'
    OnCalcFields = cdsPadraoCalcFields
    Left = 792
    Top = 96
    object cdsPadraoidMovTransf: TIntegerField
      FieldName = 'idMovTransf'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsPadraoidEmpresa: TIntegerField
      FieldName = 'idEmpresa'
      Required = True
    end
    object cdsPadraoidCaixaOri: TIntegerField
      FieldName = 'idCaixaOri'
    end
    object cdsPadraoidCaixaDes: TIntegerField
      FieldName = 'idCaixaDes'
    end
    object cdsPadraoidContaOri: TIntegerField
      FieldName = 'idContaOri'
    end
    object cdsPadraoidContaDes: TIntegerField
      FieldName = 'idContaDes'
    end
    object cdsPadraovlMovTransf: TFMTBCDField
      FieldName = 'vlMovTransf'
      Required = True
      Precision = 19
      Size = 4
    end
    object cdsPadraodtMovTransf: TSQLTimeStampField
      FieldName = 'dtMovTransf'
      Required = True
    end
    object cdsPadraodescMovTransf: TStringField
      FieldName = 'descMovTransf'
      Size = 250
    end
    object cdsPadraonrMovTransf: TStringField
      FieldName = 'nrMovTransf'
    end
    object cdsPadraoidCadEmpresa: TSmallintField
      FieldName = 'idCadEmpresa'
      Required = True
    end
    object cdsPadraoidCheque: TStringField
      FieldName = 'idCheque'
      Size = 10
    end
    object cdsPadraodtVencimento: TSQLTimeStampField
      FieldName = 'dtVencimento'
    end
    object cdsPadraodtCompensacao: TSQLTimeStampField
      FieldName = 'dtCompensacao'
    end
    object cdsPadraovlMovConta: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'vlMovConta'
      Calculated = True
    end
  end
  inherited dspPadrao: TDataSetProvider
    DataSet = sdsResultado
    BeforeUpdateRecord = dspPadraoBeforeUpdateRecord
    Left = 728
    Top = 96
  end
  inherited dsPadrao: TDataSource
    Left = 848
    Top = 96
  end
  inherited ImgBotoes: TImageList
    Left = 712
    Top = 168
    Bitmap = {
      494C0101060008007C0020001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
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
  inherited cdsLookup: TClientDataSet
    Left = 1056
    Top = 152
  end
  inherited dspLookup: TDataSetProvider
    Left = 1008
  end
  inherited sdsLookup: TSQLDataSet
    CommandText = 'SELECT * FROM CadGeral'
  end
  inherited cdsEmpresa: TClientDataSet
    Left = 728
    Top = 64
  end
  inherited dsEmpresa: TDataSource
    Left = 760
    Top = 64
  end
  object sdsResultado: TSQLDataSet
    SchemaName = 'gesys'
    CommandText = 'SELECT * FROM MovTransf'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmPadrao.dbConexao
    Left = 656
    Top = 96
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
    Left = 824
    Top = 168
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
    Left = 728
    Top = 128
  end
  object Report: TfrxReport
    Version = '5.3.16'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.Author = 'Gesys Sistemas de Informa'#231#227'o'
    ReportOptions.CreateDate = 39263.419322395800000000
    ReportOptions.LastChange = 42130.432193541670000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      '        '
      'end.')
    Left = 664
    Top = 344
    Datasets = <
      item
        DataSet = rptCheque
        DataSetName = 'Cheque'
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
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 386.425472680000000000
        Top = 257.008040000000000000
        Width = 793.701300000000000000
        OnAfterPrint = 'MasterData1OnAfterPrint'
        OnBeforePrint = 'MasterData1OnBeforePrint'
        DataSet = rptCheque
        DataSetName = 'Cheque'
        RowCount = 0
        object Shape1: TfrxShapeView
          Left = 26.456710000000000000
          Top = 49.779530000000000000
          Width = 733.228346460000000000
          Height = 22.677180000000000000
          Fill.BackColor = 15790320
          Frame.Color = 15790320
        end
        object Memo4: TfrxMemoView
          Align = baCenter
          Left = 215.433210000000000000
          Top = 49.779530000000000000
          Width = 362.834880000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          DataSet = FrmPadraoRel.frxDataset
          DataSetName = 'frxDataset'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Origem - Debito')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo2: TfrxMemoView
          Left = 118.811104180000000000
          Top = 80.015748030000000000
          Width = 41.574830000000000000
          Height = 11.338582680000000000
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
            '[(<Cheque."idCaixaOri">)]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo5: TfrxMemoView
          Left = 50.677197090000000000
          Top = 80.015770000000000000
          Width = 64.252010000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Conta Caixa:')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo11: TfrxMemoView
          Left = 119.811087090000000000
          Top = 96.472480000000000000
          Width = 41.574830000000000000
          Height = 11.338582680000000000
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
            '[(<Cheque."idContaOri">)]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo12: TfrxMemoView
          Left = 50.677180000000000000
          Top = 96.252010000000000000
          Width = 64.252010000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Conta Banco:')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo21: TfrxMemoView
          Left = 119.811087090000000000
          Top = 110.811023620000000000
          Width = 41.574830000000000000
          Height = 11.338582680000000000
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
            '[(<Cheque."dtCompensacao">)]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo28: TfrxMemoView
          Left = 39.338590000000000000
          Top = 110.811023620000000000
          Width = 75.590600000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Compensa'#231#227'o:')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Shape5: TfrxShapeView
          Left = 26.456710000000000000
          Top = 132.637910000000000000
          Width = 733.228346460000000000
          Height = 22.677180000000000000
          Fill.BackColor = 15790320
          Frame.Color = 15790320
        end
        object Memo37: TfrxMemoView
          Align = baCenter
          Left = 215.433210000000000000
          Top = 132.637910000000000000
          Width = 362.834880000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          DataSet = FrmPadraoRel.frxDataset
          DataSetName = 'frxDataset'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Destino - Cr'#233'dito')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object MCaixaDest: TfrxMemoView
          Left = 167.944994180000000000
          Top = 164.094620000000000000
          Width = 41.574830000000000000
          Height = 11.338582680000000000
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
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo54: TfrxMemoView
          Left = 50.677197090000000000
          Top = 162.874150000000000000
          Width = 64.252010000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Conta Caixa:')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object MBancoDest: TfrxMemoView
          Left = 167.944977090000000000
          Top = 181.039370078740000000
          Width = 41.574830000000000000
          Height = 11.338582680000000000
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
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo58: TfrxMemoView
          Left = 50.677180000000000000
          Top = 181.110390000000000000
          Width = 64.252010000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Conta Banco:')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo1: TfrxMemoView
          Left = 120.944977090000000000
          Top = 163.622140000000000000
          Width = 41.574830000000000000
          Height = 11.338582680000000000
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
            '[(<Cheque."idCaixaDes">)]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo3: TfrxMemoView
          Left = 120.944960000000000000
          Top = 181.039370078740000000
          Width = 41.574830000000000000
          Height = 11.338582680000000000
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
            '[(<Cheque."idContaDes">)]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo6: TfrxMemoView
          Left = 280.787587090000000000
          Top = 110.811023620000000000
          Width = 41.574830000000000000
          Height = 11.338582680000000000
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
            '[(<Cheque."idCheque">)]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo8: TfrxMemoView
          Left = 200.315090000000000000
          Top = 110.811070000000000000
          Width = 75.590600000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Cheque Nr.')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo9: TfrxMemoView
          Left = 439.527847090000000000
          Top = 110.811070000000000000
          Width = 41.574830000000000000
          Height = 11.338582680000000000
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
            '[(<Cheque."dtVencimento">)]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo10: TfrxMemoView
          Left = 359.055350000000000000
          Top = 110.811116380000000000
          Width = 75.590600000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Vencimento:')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object MCaixaOri: TfrxMemoView
          Left = 166.299337090000000000
          Top = 80.015748030000000000
          Width = 41.574830000000000000
          Height = 11.338582680000000000
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
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object MBancoOri: TfrxMemoView
          Left = 166.299320000000000000
          Top = 96.645669290000000000
          Width = 41.574830000000000000
          Height = 11.338582680000000000
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
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object MBancoOri2: TfrxMemoView
          Left = 215.433210000000000000
          Top = 96.645669290000000000
          Width = 41.574830000000000000
          Height = 11.338582680000000000
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
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object MBancoOri3: TfrxMemoView
          Left = 264.567100000000000000
          Top = 96.645669290000000000
          Width = 41.574830000000000000
          Height = 11.338582680000000000
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
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object MBancoDest2: TfrxMemoView
          Left = 215.433210000000000000
          Top = 181.039370078740000000
          Width = 41.574830000000000000
          Height = 11.338582680000000000
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
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object MBancoDest3: TfrxMemoView
          Left = 264.567100000000000000
          Top = 181.039370078740000000
          Width = 49.133890000000000000
          Height = 11.338582680000000000
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
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Line4: TfrxLineView
          Left = 185.196970000000000000
          Top = 280.330860000000000000
          Width = 362.834880000000000000
          Color = clBlack
          Frame.Color = clGray
          Frame.ShadowColor = clGray
          Diagonal = True
        end
        object Memo14: TfrxMemoView
          Left = 185.196970000000000000
          Top = 311.889920000000000000
          Width = 419.527830000000000000
          Height = 18.897650000000000000
          DataSet = FrmPadraoRel.frxDataset
          DataSetName = 'frxDataset'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = 'dd mmm yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '[(<frxEmpresaContabil."descCidade">)] - ')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo16: TfrxMemoView
          Left = 185.196970000000000000
          Top = 335.126160000000000000
          Width = 419.527830000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          DataSet = FrmPadraoRel.frxDataset
          DataSetName = 'frxDataset'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'CNPJ/CPF: [(<frxEmpresaContabil."idCnpjCpf">)]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo18: TfrxMemoView
          Left = 185.196970000000000000
          Top = 287.889920000000000000
          Width = 419.527830000000000000
          Height = 18.897637800000000000
          AutoWidth = True
          DataSet = FrmPadraoRel.frxDataset
          DataSetName = 'frxDataset'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxEmpresaContabil."descEmpresa"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo19: TfrxMemoView
          Left = 120.944960000000000000
          Top = 1.559055119999980000
          Width = 619.842920000000000000
          Height = 15.118112680000000000
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
            '[(<Cheque."descMovTransf">)]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo20: TfrxMemoView
          Left = 49.133890000000000000
          Top = 4.779530000000020000
          Width = 64.252010000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Historico:')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Height = 40.354360000000000000
        Top = 702.992580000000000000
        Width = 793.701300000000000000
        object Memo13: TfrxMemoView
          Left = 316.157700000000000000
          Top = 7.181102362204570000
          Width = 117.165430000000000000
          Height = 11.338590000000000000
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
          Top = 7.181102360000000000
          Width = 275.905690000000000000
          Height = 11.338590000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Nilus Solu'#231#245'es em Inform'#225'tica Ltda.')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo17: TfrxMemoView
          Left = 618.583180000000000000
          Top = 7.181102362204570000
          Width = 132.283550000000000000
          Height = 11.338590000000000000
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
          Top = 3.401360000000180000
          Width = 733.228346460000000000
          Color = clBlack
          Frame.Typ = [ftTop]
          Frame.Width = 0.100000000000000000
        end
        object Memo67: TfrxMemoView
          Left = 454.000000000000000000
          Top = 7.181102359999950000
          Width = 117.165430000000000000
          Height = 11.338590000000000000
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
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Height = 178.567022500000000000
        Top = 18.897650000000000000
        Width = 793.701300000000000000
        object Line3: TfrxLineView
          Left = 26.456710000000000000
          Top = 172.488250000000000000
          Width = 733.228820000000000000
          Color = clBlack
          Frame.Color = clGray
          Frame.ShadowColor = clGray
          Diagonal = True
        end
        object lblEmpresa: TfrxMemoView
          Left = 31.078850000000000000
          Top = 48.456656300000000000
          Width = 419.527830000000000000
          Height = 37.795300000000000000
          AutoWidth = True
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
            '[frxEmpresaContabil."descEmpresa"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          Left = 70.590600000000000000
          Top = 11.252010000000000000
          Width = 642.520100000000000000
          Height = 30.236240000000000000
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
            'SLIP de Transferencia Entre Banco e Caixa')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo30: TfrxMemoView
          Left = 31.196970000000000000
          Top = 86.252010000000000000
          Width = 419.527830000000000000
          Height = 18.897650000000000000
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
          Left = 31.196970000000000000
          Top = 105.929190000000000000
          Width = 419.527830000000000000
          Height = 18.897650000000000000
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
        object Memo34: TfrxMemoView
          Left = 31.196970000000000000
          Top = 126.488250000000000000
          Width = 419.527830000000000000
          Height = 18.897650000000000000
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
        object Memo35: TfrxMemoView
          Left = 31.196970000000000000
          Top = 146.165430000000000000
          Width = 419.527830000000000000
          Height = 18.897650000000000000
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
        object Memo102: TfrxMemoView
          Left = 563.149970000000000000
          Top = 56.692950000000000000
          Width = 147.401670000000000000
          Height = 30.236240000000000000
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
            '[(<Cheque."idMovTransf">)]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo103: TfrxMemoView
          Left = 480.000310000000000000
          Top = 61.692950000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
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
            'Numero:')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo104: TfrxMemoView
          Left = 565.149970000000000000
          Top = 109.165430000000000000
          Width = 147.401670000000000000
          Height = 30.236220470000000000
          AutoWidth = True
          DataSet = FrmPadraoRel.frxDataset
          DataSetName = 'frxDataset'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '[(<Cheque."vlMovTransf">)]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo105: TfrxMemoView
          Left = 481.000310000000000000
          Top = 117.165430000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
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
            'Valor:')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Line2: TfrxLineView
          Left = 464.882190000000000000
          Top = 49.133890000000000000
          Height = 120.944960000000000000
          Color = clBlack
          Frame.Color = clGray
          Frame.ShadowColor = clGray
          Frame.Typ = [ftLeft]
        end
      end
    end
  end
  object rptCheque: TfrxDBDataset
    UserName = 'Cheque'
    CloseDataSource = False
    FieldAliases.Strings = (
      'idMovTransf=idMovTransf'
      'idEmpresa=idEmpresa'
      'idCaixaOri=idCaixaOri'
      'idCaixaDes=idCaixaDes'
      'idContaOri=idContaOri'
      'idContaDes=idContaDes'
      'vlMovTransf=vlMovTransf'
      'dtMovTransf=dtMovTransf'
      'descMovTransf=descMovTransf'
      'nrMovTransf=nrMovTransf'
      'idCadEmpresa=idCadEmpresa'
      'idCheque=idCheque'
      'dtVencimento=dtVencimento'
      'dtCompensacao=dtCompensacao'
      'vlMovConta=vlMovConta')
    DataSource = dsPadrao
    BCDToCurrency = False
    Left = 600
    Top = 344
  end
  object Extenso: TACBrExtenso
    StrMoeda = 'Real'
    StrMoedas = 'Reais'
    StrCentavo = 'Centavo'
    StrCentavos = 'Centavos'
    Left = 744
    Top = 344
  end
end
