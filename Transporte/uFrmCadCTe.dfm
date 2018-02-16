inherited FrmCadCTe: TFrmCadCTe
  Caption = 'Lan'#231'amento do CTe-Conhecimento de Transporte Eletr'#244'nico'
  ClientHeight = 745
  ClientWidth = 1262
  Icon.Data = {
    0000010001001010000001002000680400001600000028000000100000002000
    0000010020000000000000040000000000000000000000000000000000000000
    0000000000000000000000000000000000006E513B016C4E38076A4D360D7153
    3A063023181F050302430B07053A0503013D0907053A764F370A000000000000
    000000000000000000006B4E37036D4F392A816550668F75608F957C68999075
    6086604938837C563EC0AC8267BBB2886BAFB28566ABAC74523B000000000000
    0000000000006B4D3711886D5774C0A89BD2CEBEA1F9D1C6A4FFEDDFD8FDE6D7
    CDFDE1CBBDECA0897AD6AA8770DAECB892B6D4916635D6855601000000000000
    00006A4C370F9A7F6C95DBC6B8F3EFE2D9F6DCD5BAFAD3CEA8FEEEE8DBFBF8F1
    EDF8F8EEE7F4C7BCB6F2AA8F7DFCD8A885D9805C423300000000000000006C4F
    38018F746079DCC8B9F2EEE1D7EFF8F0EAF3E6E1CCFBDCD8BAFEE3E0C7FEF4EF
    E6FDFFFAF5F7D4CCC6F3B09A8AFBECC2A2FB85664F7D654C380D000000007658
    432FC8AE9CD2ECDBCFEAF6EAE3ECEDE6D6F7D9D4B8FDDDD9BEFEDCD8BEFEDEDA
    C0FEFFFAF3F7D8D5CFF4B19A8BF8F6CFB2FBB49680CD684D3739735540019275
    616CE2CABBE6F2E2D7E3EFE4D8EDCDC5A6FCCEC8A9FDD5CFB1FDD3CDAFFDDBD4
    BAFBE8E2D7F5AFABA7F3AB9587F9F9D3B8F3D0B8A0EA745B417370523D05A88C
    778EE9D4C4E2F5E3D8DCF0E2D7E8C4BB9EF8BEB693FDC7C0A3FAE5DCCDF5FEF4
    EEF0C6BDB5F28E7667FAD6B6A0FAF8D1B3F5C8B492F8776243976F513D09B193
    7F92EED7C7DDE0D0BCE2D8CAB4EBDDD0BEEAD6CAB6EFEDDED5EBF5E8E2EAF3E5
    DDEAEEDFD4E7ECD3C4E7D4B998F3BF9F73FCA49466FF7B66479C6F513D09AD90
    7C7CD0BD9CF1BEAF90E8E2D0BFDCE6D8C9E5EFE1D6E5F3E5D9E6F1E2D7E7F1E2
    D6E7F4E4D7E4EBDCD2DE847D68EE817852F79C9061FF7B64468770523E028D70
    5A4CA49567F8AFA176F2D8CCB0EEE3D6C2EFF5E7DEE7F1E3D9E8F1E4D9E8F1E4
    D9E8FAEBE1E6B5ABA2EB8D7464F7BA9771FCA4906BEE765C4649000000007558
    440E99855FBEAFA579FFC5BE9FFDCAC2A3FCE8DECBF5F5EBE1F0F5EAE3EFF4E8
    E0F0F8ECE3EEDDD2CAEFD2B4A0F9E6BE94FFA28666AC6C503C0D000000000000
    000080654A39B1A47CE9E4DFCAFFD9D3BFFED8D4BFFDE0DAC5FDEAE4D8FBF7F0
    EBF7F7EFEAF7FEF6F1F8F6EDE6FFAD967AD56D51383200000000000000000000
    0000000000007B624641D2CAB7D8FCFCF5FFFCFAF6FFEFEDE4FFF5F1ECFFFFFC
    F9FFFFFFFDFFFFFFFEFFD3C6BAC47A5E48300000000000000000000000000000
    000000000000000000009D867016B6A4977BE1DBD5CCEDE8E5E9F2F0EEEFEBE6
    E3E8D3CAC3C4AA9A897472543D11000000000000000000000000000000000000
    000000000000000000000000000000000000A9988A0EB7A89E27927C6A309F8D
    7D25886F5C0B000000000000000000000000000000000000000000000000F801
    0000E0010000C001000080030000000100000000000000000000000000000000
    000000000000000100000001000080030000C0070000E00F0000F83F0000}
  ExplicitLeft = -150
  ExplicitWidth = 1278
  ExplicitHeight = 783
  ExplicitWidth = 1278
  PixelsPerInch = 96
  TextHeight = 13
  inherited Bevel1: TBevel
    Top = 710
    Width = 1262
    ExplicitTop = 610
    ExplicitWidth = 1284
  end
  inherited Bevel2: TBevel
    Width = 1262
    ExplicitWidth = 1284
  end
  inherited PagAbas: TCPageControl
    Width = 1262
    Height = 642
    Margins.Bottom = 0
    OnChange = PagAbasChange
    ExplicitWidth = 1262
    ExplicitHeight = 642
    inherited TabAbas: TTabSheet
      Caption = 'Dados Gerais'
      ExplicitLeft = 4
      ExplicitTop = 25
      ExplicitWidth = 1254
      ExplicitHeight = 613
      object CGroupBox2: TCGroupBox
        Left = 9
        Top = 398
        Width = 656
        Height = 64
        Caption = 'CTE Anulado ou Complementado'
        TabOrder = 3
        object CLabel14: TCLabel
          Left = 22
          Top = 20
          Width = 44
          Height = 13
          Alignment = taRightJustify
          Caption = 'Anula'#231#227'o'
        end
        object CLabel15: TCLabel
          Left = 19
          Top = 41
          Width = 47
          Height = 13
          Alignment = taRightJustify
          Caption = 'Complem.'
        end
        object CLabel20: TCLabel
          Left = 517
          Top = 20
          Width = 38
          Height = 13
          Alignment = taRightJustify
          Caption = 'Emiss'#227'o'
        end
        object DBEchaveAnulado: TCDBEdit
          Left = 72
          Top = 18
          Width = 420
          Height = 19
          Hint = 
            'Chave de acesso do CTe Anulado ou Substitu'#237'do - F4 para pesquisa' +
            'r'
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'chaveAnulado'
          DataSource = dsPadrao
          TabOrder = 0
          OnDblClick = DBEforPagDblClick
          DecimalControl = True
          KeyMode = kmNormal
        end
        object CBitBtn1: TCBitBtn
          Left = 490
          Top = 18
          Width = 21
          Height = 19
          Hint = 'Busca do arquivo XML'
          Glyph.Data = {
            36060000424D3606000000000000360000002800000020000000100000000100
            18000000000000060000120B0000120B00000000000000000000FF00FFFF00FF
            FF00FFFF00FFFF00FF0000820000820000820000820000820000820000820000
            82000082000082000082FF00FFFF00FFFF00FFFF00FFFF00FFABABABABABABAB
            ABABABABABABABABABABABABABABABABABABABABABABABABABAB95655FA5696A
            A5696AA5696AA5696A000082FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFF000082A0A0A0AAAAAAAAAAAAAAAAAAAAAAAAABABABF9F9F9F9
            F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9ABABAB986860FBE5C0
            F4D5ADF0CF9FEFCA96000082FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFF000082A2A2A2EBEBEBE2E2E2DBDBDBD7D7D7ABABABF9F9F9F9
            F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9ABABAB9D6B62FCE7C9
            F2D5B5F0D0A9EECB9E000082FFFFFFFFFFFFFFFFFF000082000082FFFFFFFFFF
            FFFFFFFF000082000082A4A4A4EEEEEEE4E4E4DEDEDEDADADAABABABF9F9F9F9
            F9F9F9F9F9A2A2A2A2A2A2F9F9F9F9F9F9F9F9F9A2A2A2ABABABA36F64FEEED4
            F4DDC0F2D7B5F0D1AA000082FFFFFF000082000082FFFFFFFFFFFF000082FFFF
            FF000082FFFFFF000082A7A7A7F3F3F3E8E8E8E4E4E4DFDFDFABABABF9F9F9A2
            A2A2A2A2A2F9F9F9F9F9F9A2A2A2F9F9F9A2A2A2F9F9F9ABABABA77466FFF4E1
            F6E1CAF3DCBFF2D7B4000082000082FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000
            82FFFFFFFFFFFF000082AAAAAAF8F8F8EDEDEDE7E7E7E3E3E3ABABABA2A2A2F9
            F9F9F9F9F9F9F9F9F9F9F9F9F9F9A2A2A2F9F9F9F9F9F9ABABABAD7869FFFBEE
            F7E7D5F4E1CAF3DCBF000082FFFFFF000082000082FFFFFFFFFFFF000082FFFF
            FF000082FFFFFF000082AEAEAEF9F9F9F1F1F1ECECECE7E7E7ABABABF9F9F9A2
            A2A2A2A2A2F9F9F9F9F9F9A2A2A2F9F9F9A2A2A2F9F9F9ABABABB47E6BFFFFFB
            F8EDE1F7E6D4F6E1C9000082FFFFFFFFFFFFFFFFFF000082000082FFFFFFFFFF
            FFFFFFFF000082000082B0B0B0F9F9F9F6F6F6F0F0F0ECECECABABABF9F9F9F9
            F9F9F9F9F9A2A2A2A2A2A2F9F9F9F9F9F9F9F9F9A2A2A2ABABABBA836DFFFFFF
            FCF4EEFAEDE1F8E9D5000082FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFF000082B4B4B4F9F9F9F9F9F9F6F6F6F1F1F1ABABABF9F9F9F9
            F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9ABABABBF8770FFFFFF
            FFFBFAFEF4EDFAEEE0000082FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFF000082B7B7B7F9F9F9F9F9F9F9F9F9F6F6F6ABABABF9F9F9F9
            F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9ABABABC48C72FFFFFF
            FFFFFFFFFCFAFCF4ED0000820000820000820000820000820000820000820000
            82000082000082000082B9B9B9F9F9F9F9F9F9F9F9F9F9F9F9ABABABABABABAB
            ABABABABABABABABABABABABABABABABABABABABABABABABABABCA9174FFFFFF
            FFFFFFFFFFFFFFFCFAFCF4EDFAEDDEF8E7D4FCEBD3E3D3BBB7AD9CA5696AFF00
            FFFF00FFFF00FFFF00FFBCBCBCF9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F5F5F5F1
            F1F1F2F2F2E1E1E1C5C5C5AAAAAAFF00FFFF00FFFF00FFFF00FFCE9576FFFFFF
            FFFFFFFFFFFFFFFFFFFEFCFAFCF6EBFAEFE0A5696AA5696AA5696AA5696AFF00
            FFFF00FFFF00FFFF00FFBFBFBFF9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F6
            F6F6AAAAAAAAAAAAAAAAAAAAAAAAFF00FFFF00FFFF00FFFF00FFD39778FFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFCF4EBE6A5696AE2A35BEF9938BB704FFF00
            FFFF00FFFF00FFFF00FFC1C1C1F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F6
            F6F6AAAAAABABABAAEAEAEA7A7A7FF00FFFF00FFFF00FFFF00FFD59A79FFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8F8FEA5696AE5A55FC2805CFF00FFFF00
            FFFF00FFFF00FFFF00FFC2C2C2F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9
            F9F9AAAAAABDBDBDAFAFAFFF00FFFF00FFFF00FFFF00FFFF00FFD0906BD0906B
            D0906BD0906BD0906BD0906BD0906BD0906BA5696ABB7F6AFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBB
            BBBBAAAAAAB3B3B3FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
          NumGlyphs = 2
          TabOrder = 1
          TabStop = False
        end
        object DBEchaveComplementado: TCDBEdit
          Left = 72
          Top = 39
          Width = 548
          Height = 19
          Hint = 'Chave de acesso do CTe a ser Complementado - F4 para pesquisar'
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'chaveComplementado'
          DataSource = dsPadrao
          TabOrder = 3
          OnDblClick = DBEforPagDblClick
          OnExit = DBEchaveComplementadoExit
          DecimalControl = True
          KeyMode = kmNormal
        end
        object CBitBtn3: TCBitBtn
          Left = 619
          Top = 39
          Width = 21
          Height = 19
          Hint = 'Busca do arquivo XML'
          Glyph.Data = {
            36060000424D3606000000000000360000002800000020000000100000000100
            18000000000000060000120B0000120B00000000000000000000FF00FFFF00FF
            FF00FFFF00FFFF00FF0000820000820000820000820000820000820000820000
            82000082000082000082FF00FFFF00FFFF00FFFF00FFFF00FFABABABABABABAB
            ABABABABABABABABABABABABABABABABABABABABABABABABABAB95655FA5696A
            A5696AA5696AA5696A000082FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFF000082A0A0A0AAAAAAAAAAAAAAAAAAAAAAAAABABABF9F9F9F9
            F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9ABABAB986860FBE5C0
            F4D5ADF0CF9FEFCA96000082FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFF000082A2A2A2EBEBEBE2E2E2DBDBDBD7D7D7ABABABF9F9F9F9
            F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9ABABAB9D6B62FCE7C9
            F2D5B5F0D0A9EECB9E000082FFFFFFFFFFFFFFFFFF000082000082FFFFFFFFFF
            FFFFFFFF000082000082A4A4A4EEEEEEE4E4E4DEDEDEDADADAABABABF9F9F9F9
            F9F9F9F9F9A2A2A2A2A2A2F9F9F9F9F9F9F9F9F9A2A2A2ABABABA36F64FEEED4
            F4DDC0F2D7B5F0D1AA000082FFFFFF000082000082FFFFFFFFFFFF000082FFFF
            FF000082FFFFFF000082A7A7A7F3F3F3E8E8E8E4E4E4DFDFDFABABABF9F9F9A2
            A2A2A2A2A2F9F9F9F9F9F9A2A2A2F9F9F9A2A2A2F9F9F9ABABABA77466FFF4E1
            F6E1CAF3DCBFF2D7B4000082000082FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000
            82FFFFFFFFFFFF000082AAAAAAF8F8F8EDEDEDE7E7E7E3E3E3ABABABA2A2A2F9
            F9F9F9F9F9F9F9F9F9F9F9F9F9F9A2A2A2F9F9F9F9F9F9ABABABAD7869FFFBEE
            F7E7D5F4E1CAF3DCBF000082FFFFFF000082000082FFFFFFFFFFFF000082FFFF
            FF000082FFFFFF000082AEAEAEF9F9F9F1F1F1ECECECE7E7E7ABABABF9F9F9A2
            A2A2A2A2A2F9F9F9F9F9F9A2A2A2F9F9F9A2A2A2F9F9F9ABABABB47E6BFFFFFB
            F8EDE1F7E6D4F6E1C9000082FFFFFFFFFFFFFFFFFF000082000082FFFFFFFFFF
            FFFFFFFF000082000082B0B0B0F9F9F9F6F6F6F0F0F0ECECECABABABF9F9F9F9
            F9F9F9F9F9A2A2A2A2A2A2F9F9F9F9F9F9F9F9F9A2A2A2ABABABBA836DFFFFFF
            FCF4EEFAEDE1F8E9D5000082FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFF000082B4B4B4F9F9F9F9F9F9F6F6F6F1F1F1ABABABF9F9F9F9
            F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9ABABABBF8770FFFFFF
            FFFBFAFEF4EDFAEEE0000082FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFF000082B7B7B7F9F9F9F9F9F9F9F9F9F6F6F6ABABABF9F9F9F9
            F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9ABABABC48C72FFFFFF
            FFFFFFFFFCFAFCF4ED0000820000820000820000820000820000820000820000
            82000082000082000082B9B9B9F9F9F9F9F9F9F9F9F9F9F9F9ABABABABABABAB
            ABABABABABABABABABABABABABABABABABABABABABABABABABABCA9174FFFFFF
            FFFFFFFFFFFFFFFCFAFCF4EDFAEDDEF8E7D4FCEBD3E3D3BBB7AD9CA5696AFF00
            FFFF00FFFF00FFFF00FFBCBCBCF9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F5F5F5F1
            F1F1F2F2F2E1E1E1C5C5C5AAAAAAFF00FFFF00FFFF00FFFF00FFCE9576FFFFFF
            FFFFFFFFFFFFFFFFFFFEFCFAFCF6EBFAEFE0A5696AA5696AA5696AA5696AFF00
            FFFF00FFFF00FFFF00FFBFBFBFF9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F6
            F6F6AAAAAAAAAAAAAAAAAAAAAAAAFF00FFFF00FFFF00FFFF00FFD39778FFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFCF4EBE6A5696AE2A35BEF9938BB704FFF00
            FFFF00FFFF00FFFF00FFC1C1C1F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F6
            F6F6AAAAAABABABAAEAEAEA7A7A7FF00FFFF00FFFF00FFFF00FFD59A79FFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8F8FEA5696AE5A55FC2805CFF00FFFF00
            FFFF00FFFF00FFFF00FFC2C2C2F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9
            F9F9AAAAAABDBDBDAFAFAFFF00FFFF00FFFF00FFFF00FFFF00FFD0906BD0906B
            D0906BD0906BD0906BD0906BD0906BD0906BA5696ABB7F6AFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBB
            BBBBAAAAAAB3B3B3FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
          NumGlyphs = 2
          TabOrder = 4
          TabStop = False
        end
        object DBEdtEmissaoAnu: TCDBEdit
          Left = 561
          Top = 18
          Width = 79
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'dtEmissaoAnu'
          DataSource = dsPadrao
          MaxLength = 10
          TabOrder = 2
          OnDblClick = DBEforPagDblClick
          DecimalControl = True
          KeyMode = kmDate
        end
      end
      object CGroupBox34: TCGroupBox
        Left = 9
        Top = 337
        Width = 656
        Height = 60
        Caption = 'Informa'#231#245'es do Seguro'
        TabOrder = 2
        object CLabel92: TCLabel
          Left = 14
          Top = 39
          Width = 56
          Height = 13
          Alignment = taRightJustify
          Caption = 'Valor Carga'
        end
        object CLabel102: TCLabel
          Left = 391
          Top = 17
          Width = 34
          Height = 13
          Alignment = taRightJustify
          Caption = 'Ap'#243'lice'
        end
        object CLabel93: TCLabel
          Left = 165
          Top = 39
          Width = 56
          Height = 13
          Alignment = taRightJustify
          Caption = 'Seguradora'
        end
        object CLabel103: TCLabel
          Left = 514
          Top = 17
          Width = 52
          Height = 13
          Alignment = taRightJustify
          Caption = 'Averba'#231#227'o'
        end
        object CLabel44: TCLabel
          Left = 9
          Top = 17
          Width = 61
          Height = 13
          Alignment = taRightJustify
          Caption = 'Respons'#225'vel'
        end
        object DBEnrApolice: TCDBEdit
          Left = 431
          Top = 14
          Width = 77
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'nrApolice'
          DataSource = dsCTeSeg
          TabOrder = 2
          OnDblClick = DBEforPagDblClick
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEvlCargaSeg: TCDBEdit
          Left = 76
          Top = 36
          Width = 85
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'vlCarga'
          DataSource = dsCTeSeg
          TabOrder = 6
          OnDblClick = DBEforPagDblClick
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEidSeguradora: TCDBEdit
          Left = 227
          Top = 36
          Width = 64
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'idSeguradora'
          DataSource = dsCTeSeg
          TabOrder = 4
          Find = dmFind.FindFornecedor
          AcaoCad = frmPrincipal.actCadCliente
          DecimalControl = True
          KeyMode = kmNormal
        end
        object lookRazaoSeguradora: TCLookUp
          Left = 297
          Top = 36
          Width = 351
          Height = 19
          Alignment = taLeftJustify
          BevelInner = bvSpace
          BevelOuter = bvLowered
          Color = 14149350
          ParentBackground = False
          TabOrder = 5
          OnDblClick = LookIdCfopDblClick
          Key.Strings = (
            'idSeguradora')
          LookUpKey.Strings = (
            'idCliente')
          ClientDataSet = cdsLookup
          DataSource = dsCTeSeg
          ValidaCampoObrigatorio = True
          CampoObrigatorio = True
          LookUpTable = 'vCadClienteContabil'
          ReturnField = 'descCadCliente'
        end
        object DBEnrAverbacao: TCDBEdit
          Left = 572
          Top = 14
          Width = 76
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'nrAverbacao'
          DataSource = dsCTeSeg
          TabOrder = 3
          OnDblClick = DBEforPagDblClick
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBErespSeg: TCDBEdit
          Left = 76
          Top = 14
          Width = 46
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'respSeg'
          DataSource = dsCTeSeg
          TabOrder = 0
          OnDblClick = DBEforPagDblClick
          Find = dmFind.FindTrpRespSeguro
          AcaoCad = frmPrincipal.actCadTipoAtividade
          DecimalControl = True
          KeyMode = kmNormal
        end
        object LookRespSeguro: TCLookUp
          Left = 128
          Top = 14
          Width = 257
          Height = 19
          Alignment = taLeftJustify
          BevelInner = bvSpace
          BevelOuter = bvLowered
          Color = 14149350
          ParentBackground = False
          TabOrder = 1
          Key.Strings = (
            'respSeg')
          LookUpKey.Strings = (
            'respSeg')
          ClientDataSet = cdsLookup
          DataSource = dsCTeSeg
          ValidaCampoObrigatorio = True
          CampoObrigatorio = True
          LookUpTable = 'TrpRespSeguro'
          ReturnField = 'descRespSeguro'
        end
      end
      object CGroupBox6: TCGroupBox
        Left = 9
        Top = 154
        Width = 657
        Height = 181
        Caption = 'Dados dos envolvidos'
        TabOrder = 1
        object CLabel59: TCLabel
          Left = 443
          Top = 16
          Width = 68
          Height = 13
          Alignment = taRightJustify
          Caption = 'Insc. Estadual'
        end
        object LblCad: TCLabel
          Left = 12
          Top = 16
          Width = 58
          Height = 13
          Alignment = taRightJustify
          Caption = 'Destinat'#225'rio'
        end
        object CLabel31: TCLabel
          Left = 17
          Top = 61
          Width = 53
          Height = 13
          Alignment = taRightJustify
          Caption = 'Remetente'
        end
        object CLabel30: TCLabel
          Left = 22
          Top = 83
          Width = 48
          Height = 13
          Alignment = taRightJustify
          Caption = 'Expedidor'
        end
        object CLabel32: TCLabel
          Left = 18
          Top = 105
          Width = 52
          Height = 13
          Alignment = taRightJustify
          Caption = 'Recebedor'
        end
        object CLabel33: TCLabel
          Left = 28
          Top = 159
          Width = 42
          Height = 13
          Alignment = taRightJustify
          Caption = 'Tomador'
        end
        object CLabel139: TCLabel
          Left = 443
          Top = 60
          Width = 68
          Height = 13
          Alignment = taRightJustify
          Caption = 'Insc. Estadual'
        end
        object CLabel140: TCLabel
          Left = 443
          Top = 83
          Width = 68
          Height = 13
          Alignment = taRightJustify
          Caption = 'Insc. Estadual'
        end
        object CLabel141: TCLabel
          Left = 443
          Top = 105
          Width = 68
          Height = 13
          Alignment = taRightJustify
          Caption = 'Insc. Estadual'
        end
        object CLabel142: TCLabel
          Left = 443
          Top = 159
          Width = 68
          Height = 13
          Alignment = taRightJustify
          Caption = 'Insc. Estadual'
        end
        object lookEstadoFor: TCLookUp
          Left = 430
          Top = 35
          Width = 46
          Height = 19
          Alignment = taLeftJustify
          BevelInner = bvSpace
          BevelOuter = bvLowered
          Color = 14149350
          ParentBackground = False
          TabOrder = 6
          Key.Strings = (
            'idDestinatario'
            'idCadDestinatario')
          LookUpKey.Strings = (
            'idCliente'
            'idCadCliente')
          AlternateSQL.Strings = (
            
              'SELECT idEstado FROM vCadClienteFiscal WHERE idCliente = ? AND i' +
              'dCadCliente = ?')
          ClientDataSet = cdsLookup
          DataSource = dsPadrao
          ValidaCampoObrigatorio = True
          CampoObrigatorio = True
          LookUpTable = 'vCadClienteFiscal'
          ReturnField = 'idEstado'
        end
        object lookCidadeFor: TCLookUp
          Left = 274
          Top = 35
          Width = 150
          Height = 19
          Alignment = taLeftJustify
          BevelInner = bvSpace
          BevelOuter = bvLowered
          Color = 14149350
          ParentBackground = False
          TabOrder = 5
          Key.Strings = (
            'idDestinatario'
            'idCadDestinatario')
          LookUpKey.Strings = (
            'idCliente'
            'idCadCliente')
          AlternateSQL.Strings = (
            
              'SELECT descCidade FROM vCadClienteFiscal WHERE idCliente = ? AND' +
              ' idCadCliente = ?')
          ClientDataSet = cdsLookup
          DataSource = dsPadrao
          ValidaCampoObrigatorio = True
          CampoObrigatorio = True
          LookUpTable = 'vCadClienteFiscal'
          ReturnField = 'descCidade'
        end
        object lookEnderecoFor: TCLookUp
          Left = 76
          Top = 35
          Width = 192
          Height = 19
          Alignment = taLeftJustify
          BevelInner = bvSpace
          BevelOuter = bvLowered
          Color = 14149350
          ParentBackground = False
          TabOrder = 4
          Key.Strings = (
            'idDestinatario'
            'idCadDestinatario')
          LookUpKey.Strings = (
            'idCliente'
            'idCadCliente')
          AlternateSQL.Strings = (
            
              'SELECT endereco FROM vCadClienteFiscal WHERE idCliente = ? AND i' +
              'dCadCliente = ?')
          ClientDataSet = cdsLookup
          DataSource = dsPadrao
          ValidaCampoObrigatorio = True
          CampoObrigatorio = True
          LookUpTable = 'vCadClienteFiscal'
          ReturnField = 'endereco'
        end
        object lookIeFornecedor: TCLookUp
          Left = 517
          Top = 13
          Width = 133
          Height = 19
          Alignment = taLeftJustify
          BevelInner = bvSpace
          BevelOuter = bvLowered
          Color = 14149350
          ParentBackground = False
          TabOrder = 3
          Key.Strings = (
            'idDestinatario'
            'idCadDestinatario')
          LookUpKey.Strings = (
            'idCliente'
            'idCadCliente')
          AlternateSQL.Strings = (
            
              'SELECT idInscEstadual FROM vCadClienteFiscal WHERE idCliente = ?' +
              ' AND idCadCliente = ?')
          ClientDataSet = cdsLookup
          DataSource = dsPadrao
          ValidaCampoObrigatorio = True
          CampoObrigatorio = True
          LookUpTable = 'vCadClienteFiscal'
          ReturnField = 'idInscEstadual'
        end
        object LookRazaoDestinatario: TCLookUp
          Left = 178
          Top = 13
          Width = 259
          Height = 19
          Alignment = taLeftJustify
          BevelInner = bvSpace
          BevelOuter = bvLowered
          Color = 14149350
          ParentBackground = False
          TabOrder = 2
          Key.Strings = (
            'idDestinatario'
            'idCadDestinatario')
          LookUpKey.Strings = (
            'idCliente'
            'idCadCliente')
          AlternateSQL.Strings = (
            
              'SELECT descCadCliente FROM vCadClienteFiscal WHERE idCliente = ?' +
              ' AND idCadCliente = ?')
          ClientDataSet = cdsLookup
          DataSource = dsPadrao
          ValidaCampoObrigatorio = True
          CampoObrigatorio = True
          LookUpTable = 'vCadClienteFiscal'
          ReturnField = 'descCadCliente'
        end
        object DBEidDestinatario: TCDBEdit
          Left = 76
          Top = 13
          Width = 62
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'idDestinatario'
          DataSource = dsPadrao
          TabOrder = 0
          OnEnter = DBEidRemetenteEnter
          OnExit = DBEidDestinatarioExit
          OnKeyDown = DBEidDestinatarioKeyDown
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEidCadDestinatario: TCDBEdit
          Left = 144
          Top = 13
          Width = 28
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'idCadDestinatario'
          DataSource = dsPadrao
          TabOrder = 1
          OnEnter = DBEidRemetenteEnter
          OnExit = DBEidDestinatarioExit
          OnKeyDown = DBEidDestinatarioKeyDown
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBRGtoma: TCDBRadioGroup
          Left = 76
          Top = 121
          Width = 574
          Height = 31
          Caption = 'Tomador do Servi'#231'o'
          Columns = 5
          DataField = 'toma'
          DataSource = dsPadrao
          Items.Strings = (
            'Destinat'#225'rio'
            'Remetente'
            'Expedidor'
            'Recebedor'
            'Outros')
          ParentBackground = False
          ParentColor = False
          TabOrder = 11
          Values.Strings = (
            '3'
            '0'
            '1'
            '2'
            '4')
          OnExit = DBRGtomaExit
        end
        object LookRazaoRemetente: TCLookUp
          Left = 178
          Top = 57
          Width = 259
          Height = 19
          Alignment = taLeftJustify
          BevelInner = bvSpace
          BevelOuter = bvLowered
          Color = 14149350
          ParentBackground = False
          TabOrder = 9
          OnDblClick = lookRazaoTomadorDblClick
          Key.Strings = (
            'idRemetente'
            'idCadRemetente')
          LookUpKey.Strings = (
            'idCliente'
            'idCadCliente')
          AlternateSQL.Strings = (
            
              'SELECT descCadCliente FROM vCadClienteFiscal WHERE idCliente = ?' +
              ' AND idCadCliente = ?')
          ClientDataSet = cdsLookup
          DataSource = dsPadrao
          ValidaCampoObrigatorio = True
          CampoObrigatorio = True
          LookUpTable = 'vCadClienteFiscal'
          ReturnField = 'descCadCliente'
        end
        object CLookUp5: TCLookUp
          Left = 516
          Top = 57
          Width = 133
          Height = 19
          Alignment = taLeftJustify
          BevelInner = bvSpace
          BevelOuter = bvLowered
          Color = 14149350
          ParentBackground = False
          TabOrder = 10
          Key.Strings = (
            'idRemetente'
            'idCadRemetente')
          LookUpKey.Strings = (
            'idCliente'
            'idCadCliente')
          AlternateSQL.Strings = (
            
              'SELECT idInscEstadual FROM vCadClienteFiscal WHERE idCliente = ?' +
              ' AND idCadCliente = ?')
          ClientDataSet = cdsLookup
          DataSource = dsPadrao
          ValidaCampoObrigatorio = True
          CampoObrigatorio = True
          LookUpTable = 'vCadClienteFiscal'
          ReturnField = 'idInscEstadual'
        end
        object DBEidCadRemetente: TCDBEdit
          Left = 144
          Top = 57
          Width = 28
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'idCadRemetente'
          DataSource = dsPadrao
          TabOrder = 8
          OnEnter = DBEidRemetenteEnter
          OnExit = DBEidRemetenteExit
          OnKeyDown = DBEidRemetenteKeyDown
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEidRemetente: TCDBEdit
          Left = 76
          Top = 57
          Width = 62
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'idRemetente'
          DataSource = dsPadrao
          TabOrder = 7
          OnEnter = DBEidRemetenteEnter
          OnExit = DBEidRemetenteExit
          OnKeyDown = DBEidRemetenteKeyDown
          DecimalControl = True
          KeyMode = kmNormal
        end
        object LookRazaoExpedidor: TCLookUp
          Left = 178
          Top = 80
          Width = 259
          Height = 19
          Alignment = taLeftJustify
          BevelInner = bvSpace
          BevelOuter = bvLowered
          Color = 14149350
          ParentBackground = False
          TabOrder = 12
          OnDblClick = lookRazaoTomadorDblClick
          Key.Strings = (
            'idExpedidor'
            'idCadExpedidor')
          LookUpKey.Strings = (
            'idCliente'
            'idCadCliente')
          AlternateSQL.Strings = (
            
              'SELECT descCadCliente FROM vCadClienteFiscal WHERE idCliente = ?' +
              ' AND idCadCliente = ?')
          ClientDataSet = cdsLookup
          DataSource = dsPadrao
          ValidaCampoObrigatorio = True
          CampoObrigatorio = True
          LookUpTable = 'vCadClienteFiscal'
          ReturnField = 'descCadCliente'
        end
        object CLookUp7: TCLookUp
          Left = 516
          Top = 80
          Width = 133
          Height = 19
          Alignment = taLeftJustify
          BevelInner = bvSpace
          BevelOuter = bvLowered
          Color = 14149350
          ParentBackground = False
          TabOrder = 13
          Key.Strings = (
            'idExpedidor'
            'idCadExpedidor')
          LookUpKey.Strings = (
            'idCliente'
            'idCadCliente')
          AlternateSQL.Strings = (
            
              'SELECT idInscEstadual FROM vCadClienteFiscal WHERE idCliente = ?' +
              ' AND idCadCliente = ?')
          ClientDataSet = cdsLookup
          DataSource = dsPadrao
          ValidaCampoObrigatorio = True
          CampoObrigatorio = True
          LookUpTable = 'vCadClienteFiscal'
          ReturnField = 'idInscEstadual'
        end
        object DBEidCadExpedidor: TCDBEdit
          Left = 144
          Top = 80
          Width = 28
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'idCadExpedidor'
          DataSource = dsPadrao
          TabOrder = 14
          OnKeyDown = DBEidExpedidorKeyDown
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEidExpedidor: TCDBEdit
          Left = 76
          Top = 80
          Width = 62
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'idExpedidor'
          DataSource = dsPadrao
          TabOrder = 15
          OnKeyDown = DBEidExpedidorKeyDown
          DecimalControl = True
          KeyMode = kmNormal
        end
        object LookRazaoRecebedor: TCLookUp
          Left = 178
          Top = 102
          Width = 259
          Height = 19
          Alignment = taLeftJustify
          BevelInner = bvSpace
          BevelOuter = bvLowered
          Color = 14149350
          ParentBackground = False
          TabOrder = 16
          OnDblClick = lookRazaoTomadorDblClick
          Key.Strings = (
            'idRecebedor'
            'idCadRecebedor')
          LookUpKey.Strings = (
            'idCliente'
            'idCadCliente')
          AlternateSQL.Strings = (
            
              'SELECT descCadCliente FROM vCadClienteFiscal WHERE idCliente = ?' +
              ' AND idCadCliente = ?')
          ClientDataSet = cdsLookup
          DataSource = dsPadrao
          ValidaCampoObrigatorio = True
          CampoObrigatorio = True
          LookUpTable = 'vCadClienteFiscal'
          ReturnField = 'descCadCliente'
        end
        object CLookUp9: TCLookUp
          Left = 516
          Top = 102
          Width = 133
          Height = 19
          Alignment = taLeftJustify
          BevelInner = bvSpace
          BevelOuter = bvLowered
          Color = 14149350
          ParentBackground = False
          TabOrder = 17
          Key.Strings = (
            'idRecebedor'
            'idCadRecebedor')
          LookUpKey.Strings = (
            'idCliente'
            'idCadCliente')
          AlternateSQL.Strings = (
            
              'SELECT idInscEstadual FROM vCadClienteFiscal WHERE idCliente = ?' +
              ' AND idCadCliente = ?')
          ClientDataSet = cdsLookup
          DataSource = dsPadrao
          ValidaCampoObrigatorio = True
          CampoObrigatorio = True
          LookUpTable = 'vCadClienteFiscal'
          ReturnField = 'idInscEstadual'
        end
        object DBEidCadRecebedor: TCDBEdit
          Left = 144
          Top = 102
          Width = 28
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'idCadRecebedor'
          DataSource = dsPadrao
          TabOrder = 18
          OnKeyDown = DBEidRecebedorKeyDown
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEidRecebedor: TCDBEdit
          Left = 76
          Top = 102
          Width = 62
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'idRecebedor'
          DataSource = dsPadrao
          TabOrder = 19
          OnKeyDown = DBEidRecebedorKeyDown
          DecimalControl = True
          KeyMode = kmNormal
        end
        object lookRazaoTomador: TCLookUp
          Left = 178
          Top = 156
          Width = 259
          Height = 19
          Alignment = taLeftJustify
          BevelInner = bvSpace
          BevelOuter = bvLowered
          Color = 14149350
          ParentBackground = False
          TabOrder = 20
          OnDblClick = lookRazaoTomadorDblClick
          Key.Strings = (
            'idTomador'
            'idCadTomador')
          LookUpKey.Strings = (
            'idCliente'
            'idCadCliente')
          AlternateSQL.Strings = (
            
              'SELECT descCadCliente FROM vCadClienteFiscal WHERE idCliente = ?' +
              ' AND idCadCliente = ?')
          ClientDataSet = cdsLookup
          DataSource = dsPadrao
          ValidaCampoObrigatorio = True
          CampoObrigatorio = True
          LookUpTable = 'vCadClienteFiscal'
          ReturnField = 'descCadCliente'
        end
        object CLookUp11: TCLookUp
          Left = 516
          Top = 156
          Width = 133
          Height = 19
          Alignment = taLeftJustify
          BevelInner = bvSpace
          BevelOuter = bvLowered
          Color = 14149350
          ParentBackground = False
          TabOrder = 21
          Key.Strings = (
            'idTomador'
            'idCadTomador')
          LookUpKey.Strings = (
            'idCliente'
            'idCadCliente')
          AlternateSQL.Strings = (
            
              'SELECT idInscEstadual FROM vCadClienteFiscal WHERE idCliente = ?' +
              ' AND idCadCliente = ?')
          ClientDataSet = cdsLookup
          DataSource = dsPadrao
          ValidaCampoObrigatorio = True
          CampoObrigatorio = True
          LookUpTable = 'vCadClienteFiscal'
          ReturnField = 'idInscEstadual'
        end
        object DBEidCadTomador: TCDBEdit
          Left = 144
          Top = 156
          Width = 28
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'idCadTomador'
          DataSource = dsPadrao
          TabOrder = 22
          OnKeyDown = DBEidTomadorKeyDown
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEidTomador: TCDBEdit
          Left = 76
          Top = 156
          Width = 62
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'idTomador'
          DataSource = dsPadrao
          TabOrder = 23
          OnKeyDown = DBEidTomadorKeyDown
          DecimalControl = True
          KeyMode = kmNormal
        end
      end
      object CGroupBox1: TCGroupBox
        Left = 9
        Top = 2
        Width = 657
        Height = 150
        Caption = 'Dados da Opera'#231#227'o'
        TabOrder = 0
        object CLabel3: TCLabel
          Left = 365
          Top = 39
          Width = 38
          Height = 13
          Alignment = taRightJustify
          Caption = 'Emiss'#227'o'
        end
        object CLabel4: TCLabel
          Left = 366
          Top = 17
          Width = 37
          Height = 13
          Alignment = taRightJustify
          Caption = 'Nr. CTe'
        end
        object CLabel8: TCLabel
          Left = 18
          Top = 39
          Width = 58
          Height = 13
          Alignment = taRightJustify
          Caption = 'Tipo Servi'#231'o'
        end
        object CLabel7: TCLabel
          Left = 504
          Top = 37
          Width = 64
          Height = 13
          Alignment = taRightJustify
          Caption = 'Hora Emiss'#227'o'
        end
        object CLabel25: TCLabel
          Left = 52
          Top = 17
          Width = 24
          Height = 13
          Alignment = taRightJustify
          Caption = 'S'#233'rie'
        end
        object CLabel11: TCLabel
          Left = 498
          Top = 16
          Width = 31
          Height = 13
          Alignment = taRightJustify
          Caption = 'Status'
        end
        object CLabel10: TCLabel
          Left = 28
          Top = 61
          Width = 48
          Height = 13
          Alignment = taRightJustify
          Caption = 'Finalidade'
        end
        object CLabel26: TCLabel
          Left = 375
          Top = 61
          Width = 28
          Height = 13
          Alignment = taRightJustify
          Caption = 'Modal'
        end
        object CLabel24: TCLabel
          Left = 284
          Top = 83
          Width = 44
          Height = 13
          Alignment = taRightJustify
          Caption = 'Natureza'
        end
        object CLabel27: TCLabel
          Left = 53
          Top = 105
          Width = 23
          Height = 13
          Alignment = taRightJustify
          Caption = 'Cfop'
        end
        object CLabel28: TCLabel
          Left = 15
          Top = 83
          Width = 61
          Height = 13
          Alignment = taRightJustify
          Caption = 'Forma Pagto'
        end
        object CLabel29: TCLabel
          Left = 23
          Top = 127
          Width = 53
          Height = 13
          Alignment = taRightJustify
          Caption = 'CTe Refer.'
        end
        object DBEdtEmissao: TCDBEdit
          Left = 409
          Top = 36
          Width = 79
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'dtEmissao'
          DataSource = dsPadrao
          MaxLength = 10
          TabOrder = 6
          DecimalControl = True
          KeyMode = kmDate
        end
        object DBEidCte: TCDBEdit
          Left = 409
          Top = 13
          Width = 82
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'idCte'
          DataSource = dsPadrao
          TabOrder = 2
          OnExit = DBEidCteExit
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEtpServ: TCDBEdit
          Left = 82
          Top = 36
          Width = 46
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'tpServ'
          DataSource = dsPadrao
          TabOrder = 4
          Find = dmFind.FindTrpTipoServico
          AcaoCad = frmPrincipal.actCadTipoAtividade
          DecimalControl = True
          KeyMode = kmNormal
        end
        object LookTipoServico: TCLookUp
          Left = 134
          Top = 35
          Width = 226
          Height = 19
          Alignment = taLeftJustify
          BevelInner = bvSpace
          BevelOuter = bvLowered
          Color = 14149350
          ParentBackground = False
          TabOrder = 5
          Key.Strings = (
            'tpServ')
          LookUpKey.Strings = (
            'tpServ')
          ClientDataSet = cdsLookup
          DataSource = dsPadrao
          ValidaCampoObrigatorio = True
          CampoObrigatorio = True
          LookUpTable = 'TrpTipoServico'
          ReturnField = 'descTipoServico'
        end
        object DBEhoraEmissao: TCDBEdit
          Left = 574
          Top = 35
          Width = 76
          Height = 19
          TabStop = False
          BevelKind = bkTile
          BorderStyle = bsNone
          Color = 14149350
          DataField = 'horaEmissao'
          DataSource = dsPadrao
          MaxLength = 8
          ReadOnly = True
          TabOrder = 7
          DecimalControl = True
          KeyMode = kmTime
        end
        object LookDocSerie: TCLookUp
          Left = 134
          Top = 14
          Width = 226
          Height = 19
          Alignment = taLeftJustify
          BevelInner = bvSpace
          BevelOuter = bvLowered
          Color = 14149350
          ParentBackground = False
          TabOrder = 1
          Key.Strings = (
            'idDocSerie')
          LookUpKey.Strings = (
            'idDocSerie')
          AlternateSQL.Strings = (
            
              'SELECT descDocSerie FROM DocSerie WHERE idTipoDocSerie = 8 AND i' +
              'dDocSerie = ?')
          ClientDataSet = cdsLookup
          DataSource = dsPadrao
          ValidaCampoObrigatorio = True
          CampoObrigatorio = True
          LookUpTable = 'DocSerie'
          ReturnField = 'descDocSerie'
        end
        object DBEidDocSerie: TCDBEdit
          Left = 82
          Top = 14
          Width = 46
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'idDocSerie'
          DataSource = dsPadrao
          TabOrder = 0
          Find = dmFind.FindDocSerieCTe
          AcaoCad = frmPrincipal.actCadDocSerie
          DecimalControl = True
          KeyMode = kmUSUpper
        end
        object DBEstCte: TCDBEdit
          Left = 535
          Top = 13
          Width = 115
          Height = 19
          TabStop = False
          BevelKind = bkTile
          BorderStyle = bsNone
          Color = 14149350
          DataField = 'stCte'
          DataSource = dsPadrao
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 3
          DecimalControl = True
          KeyMode = kmUSUpper
        end
        object DBEtpCTe: TCDBEdit
          Left = 82
          Top = 58
          Width = 46
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'tpCTe'
          DataSource = dsPadrao
          TabOrder = 8
          Find = dmFind.FindTrpTipoCte
          AcaoCad = frmPrincipal.actCadTipoAtividade
          DecimalControl = True
          KeyMode = kmNormal
        end
        object LookTipoCTe: TCLookUp
          Left = 134
          Top = 58
          Width = 226
          Height = 19
          Alignment = taLeftJustify
          BevelInner = bvSpace
          BevelOuter = bvLowered
          Color = 14149350
          ParentBackground = False
          TabOrder = 9
          Key.Strings = (
            'tpCTe')
          LookUpKey.Strings = (
            'tpCTe')
          ClientDataSet = cdsLookup
          DataSource = dsPadrao
          ValidaCampoObrigatorio = True
          CampoObrigatorio = True
          LookUpTable = 'TrpTipoCTe'
          ReturnField = 'descTipoCTe'
        end
        object LookModal: TCLookUp
          Left = 461
          Top = 58
          Width = 189
          Height = 19
          Alignment = taLeftJustify
          BevelInner = bvSpace
          BevelOuter = bvLowered
          Color = 14149350
          ParentBackground = False
          TabOrder = 11
          Key.Strings = (
            'modal')
          LookUpKey.Strings = (
            'modal')
          ClientDataSet = cdsLookup
          DataSource = dsPadrao
          ValidaCampoObrigatorio = True
          CampoObrigatorio = True
          LookUpTable = 'TrpModal'
          ReturnField = 'descModal'
        end
        object DBEmodal: TCDBEdit
          Left = 409
          Top = 58
          Width = 46
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'modal'
          DataSource = dsPadrao
          TabOrder = 10
          Find = dmFind.FindTrpModal
          AcaoCad = frmPrincipal.actCadTipoAtividade
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEidNatureza: TCDBEdit
          Left = 334
          Top = 80
          Width = 46
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'idNatureza'
          DataSource = dsPadrao
          TabOrder = 14
          Find = dmFind.FindNaturezaCTe
          DecimalControl = True
          KeyMode = kmNormal
        end
        object LookNatureza: TCLookUp
          Left = 386
          Top = 80
          Width = 264
          Height = 19
          Alignment = taLeftJustify
          BevelInner = bvSpace
          BevelOuter = bvLowered
          Color = 14149350
          ParentBackground = False
          TabOrder = 15
          OnDblClick = LookIdCfopDblClick
          Key.Strings = (
            'idNatureza')
          LookUpKey.Strings = (
            'idNatureza')
          AlternateSQL.Strings = (
            
              'SELECT descNatureza FROM vNatureza WHERE tpNatureza = '#39'SAIDA'#39' AN' +
              'D frete = '#39'S'#39' AND idNatureza = ?')
          ClientDataSet = cdsLookup
          DataSource = dsPadrao
          ValidaCampoObrigatorio = True
          CampoObrigatorio = True
          LookUpTable = 'vNatureza'
          ReturnField = 'descNatureza'
        end
        object LookDescCfop: TCLookUp
          Left = 152
          Top = 102
          Width = 498
          Height = 19
          Alignment = taLeftJustify
          BevelInner = bvSpace
          BevelOuter = bvLowered
          Color = 14149350
          ParentBackground = False
          TabOrder = 17
          Key.Strings = (
            'idNatureza')
          LookUpKey.Strings = (
            'idNatureza')
          AlternateSQL.Strings = (
            
              'SELECT descCfop FROM vNatureza WHERE tpNatureza = '#39'SAIDA'#39' AND id' +
              'Natureza = ?')
          ClientDataSet = cdsLookup
          DataSource = dsPadrao
          ValidaCampoObrigatorio = True
          CampoObrigatorio = True
          LookUpTable = 'vNatureza'
          ReturnField = 'descCfop'
        end
        object LookIdCfop: TCLookUp
          Left = 82
          Top = 102
          Width = 64
          Height = 19
          Alignment = taLeftJustify
          BevelInner = bvSpace
          BevelOuter = bvLowered
          Color = 14149350
          ParentBackground = False
          TabOrder = 16
          OnDblClick = LookIdCfopDblClick
          Key.Strings = (
            'idNatureza')
          LookUpKey.Strings = (
            'idNatureza')
          AlternateSQL.Strings = (
            
              'SELECT idCfop FROM vNatureza WHERE tpNatureza = '#39'SAIDA'#39' AND idNa' +
              'tureza = ?')
          ClientDataSet = cdsLookup
          DataSource = dsPadrao
          ValidaCampoObrigatorio = True
          CampoObrigatorio = True
          LookUpTable = 'vNatureza'
          ReturnField = 'idCfop'
        end
        object DBEforPag: TCDBEdit
          Left = 82
          Top = 80
          Width = 46
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'forPag'
          DataSource = dsPadrao
          TabOrder = 12
          OnDblClick = DBEforPagDblClick
          OnEnter = DBEidMaquinaEnter
          OnExit = DBEforPagExit
          Find = dmFind.FindTrpFormaPgto
          AcaoCad = frmPrincipal.actCadTipoAtividade
          DecimalControl = True
          KeyMode = kmNormal
        end
        object LookFormaPagto: TCLookUp
          Left = 134
          Top = 80
          Width = 144
          Height = 19
          Alignment = taLeftJustify
          BevelInner = bvSpace
          BevelOuter = bvLowered
          Color = 14149350
          ParentBackground = False
          TabOrder = 13
          Key.Strings = (
            'forPag')
          LookUpKey.Strings = (
            'forPag')
          ClientDataSet = cdsLookup
          DataSource = dsPadrao
          ValidaCampoObrigatorio = True
          CampoObrigatorio = True
          LookUpTable = 'TrpFormaPagto'
          ReturnField = 'descFormaPagto'
        end
        object DBErefCTe: TCDBEdit
          Left = 82
          Top = 124
          Width = 548
          Height = 19
          Hint = 'Chave de acesso do CTe Referenciado - F4 para pesquisar'
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'refCTe'
          DataSource = dsPadrao
          TabOrder = 18
          OnDblClick = DBEforPagDblClick
          DecimalControl = True
          KeyMode = kmNormal
        end
        object BtnImpXML: TCBitBtn
          Left = 629
          Top = 124
          Width = 21
          Height = 19
          Hint = 'Busca do arquivo XML'
          Glyph.Data = {
            36060000424D3606000000000000360000002800000020000000100000000100
            18000000000000060000120B0000120B00000000000000000000FF00FFFF00FF
            FF00FFFF00FFFF00FF0000820000820000820000820000820000820000820000
            82000082000082000082FF00FFFF00FFFF00FFFF00FFFF00FFABABABABABABAB
            ABABABABABABABABABABABABABABABABABABABABABABABABABAB95655FA5696A
            A5696AA5696AA5696A000082FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFF000082A0A0A0AAAAAAAAAAAAAAAAAAAAAAAAABABABF9F9F9F9
            F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9ABABAB986860FBE5C0
            F4D5ADF0CF9FEFCA96000082FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFF000082A2A2A2EBEBEBE2E2E2DBDBDBD7D7D7ABABABF9F9F9F9
            F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9ABABAB9D6B62FCE7C9
            F2D5B5F0D0A9EECB9E000082FFFFFFFFFFFFFFFFFF000082000082FFFFFFFFFF
            FFFFFFFF000082000082A4A4A4EEEEEEE4E4E4DEDEDEDADADAABABABF9F9F9F9
            F9F9F9F9F9A2A2A2A2A2A2F9F9F9F9F9F9F9F9F9A2A2A2ABABABA36F64FEEED4
            F4DDC0F2D7B5F0D1AA000082FFFFFF000082000082FFFFFFFFFFFF000082FFFF
            FF000082FFFFFF000082A7A7A7F3F3F3E8E8E8E4E4E4DFDFDFABABABF9F9F9A2
            A2A2A2A2A2F9F9F9F9F9F9A2A2A2F9F9F9A2A2A2F9F9F9ABABABA77466FFF4E1
            F6E1CAF3DCBFF2D7B4000082000082FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000
            82FFFFFFFFFFFF000082AAAAAAF8F8F8EDEDEDE7E7E7E3E3E3ABABABA2A2A2F9
            F9F9F9F9F9F9F9F9F9F9F9F9F9F9A2A2A2F9F9F9F9F9F9ABABABAD7869FFFBEE
            F7E7D5F4E1CAF3DCBF000082FFFFFF000082000082FFFFFFFFFFFF000082FFFF
            FF000082FFFFFF000082AEAEAEF9F9F9F1F1F1ECECECE7E7E7ABABABF9F9F9A2
            A2A2A2A2A2F9F9F9F9F9F9A2A2A2F9F9F9A2A2A2F9F9F9ABABABB47E6BFFFFFB
            F8EDE1F7E6D4F6E1C9000082FFFFFFFFFFFFFFFFFF000082000082FFFFFFFFFF
            FFFFFFFF000082000082B0B0B0F9F9F9F6F6F6F0F0F0ECECECABABABF9F9F9F9
            F9F9F9F9F9A2A2A2A2A2A2F9F9F9F9F9F9F9F9F9A2A2A2ABABABBA836DFFFFFF
            FCF4EEFAEDE1F8E9D5000082FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFF000082B4B4B4F9F9F9F9F9F9F6F6F6F1F1F1ABABABF9F9F9F9
            F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9ABABABBF8770FFFFFF
            FFFBFAFEF4EDFAEEE0000082FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFF000082B7B7B7F9F9F9F9F9F9F9F9F9F6F6F6ABABABF9F9F9F9
            F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9ABABABC48C72FFFFFF
            FFFFFFFFFCFAFCF4ED0000820000820000820000820000820000820000820000
            82000082000082000082B9B9B9F9F9F9F9F9F9F9F9F9F9F9F9ABABABABABABAB
            ABABABABABABABABABABABABABABABABABABABABABABABABABABCA9174FFFFFF
            FFFFFFFFFFFFFFFCFAFCF4EDFAEDDEF8E7D4FCEBD3E3D3BBB7AD9CA5696AFF00
            FFFF00FFFF00FFFF00FFBCBCBCF9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F5F5F5F1
            F1F1F2F2F2E1E1E1C5C5C5AAAAAAFF00FFFF00FFFF00FFFF00FFCE9576FFFFFF
            FFFFFFFFFFFFFFFFFFFEFCFAFCF6EBFAEFE0A5696AA5696AA5696AA5696AFF00
            FFFF00FFFF00FFFF00FFBFBFBFF9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F6
            F6F6AAAAAAAAAAAAAAAAAAAAAAAAFF00FFFF00FFFF00FFFF00FFD39778FFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFCF4EBE6A5696AE2A35BEF9938BB704FFF00
            FFFF00FFFF00FFFF00FFC1C1C1F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F6
            F6F6AAAAAABABABAAEAEAEA7A7A7FF00FFFF00FFFF00FFFF00FFD59A79FFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8F8FEA5696AE5A55FC2805CFF00FFFF00
            FFFF00FFFF00FFFF00FFC2C2C2F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9
            F9F9AAAAAABDBDBDAFAFAFFF00FFFF00FFFF00FFFF00FFFF00FFD0906BD0906B
            D0906BD0906BD0906BD0906BD0906BD0906BA5696ABB7F6AFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBB
            BBBBAAAAAAB3B3B3FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
          NumGlyphs = 2
          TabOrder = 19
          TabStop = False
        end
        object lookSerieFiscal: TCLookUp
          Left = 326
          Top = 14
          Width = 34
          Height = 19
          Alignment = taLeftJustify
          BevelInner = bvSpace
          BevelOuter = bvLowered
          Color = 14149350
          ParentBackground = False
          TabOrder = 20
          Visible = False
          Key.Strings = (
            'idDocSerie')
          LookUpKey.Strings = (
            'idDocSerie')
          AlternateSQL.Strings = (
            
              'SELECT serieFiscal FROM DocSerie WHERE idTipoDocSerie = 8 AND id' +
              'DocSerie = ?')
          ClientDataSet = cdsLookup
          DataSource = dsPadrao
          ValidaCampoObrigatorio = True
          CampoObrigatorio = True
          LookUpTable = 'DocSerie'
          ReturnField = 'serieFiscal'
        end
      end
      object panCampos: TPanel
        Left = 580
        Top = 531
        Width = 671
        Height = 233
        Color = 11447982
        ParentBackground = False
        TabOrder = 4
        Visible = False
        object CGroupBox49: TCGroupBox
          Left = 11
          Top = 3
          Width = 654
          Height = 46
          Caption = 'Dados da Carta'
          Color = 15201011
          ParentColor = False
          TabOrder = 0
          object CLabel144: TCLabel
            Left = 80
            Top = 23
            Width = 38
            Height = 13
            Alignment = taRightJustify
            Caption = 'Emiss'#227'o'
          end
          object CLabel145: TCLabel
            Left = 11
            Top = 23
            Width = 11
            Height = 13
            Alignment = taRightJustify
            Caption = 'ID'
          end
          object CLabel146: TCLabel
            Left = 497
            Top = 23
            Width = 31
            Height = 13
            Alignment = taRightJustify
            Caption = 'Status'
          end
          object DBEdtCorrecao: TCDBEdit
            Left = 124
            Top = 20
            Width = 79
            Height = 19
            TabStop = False
            BevelKind = bkTile
            BorderStyle = bsNone
            Color = 14149350
            DataField = 'dtCorrecao'
            DataSource = dsCTeCorrecao
            MaxLength = 10
            ReadOnly = True
            TabOrder = 1
            DecimalControl = True
            KeyMode = kmDate
          end
          object DBEidCorrecao: TCDBEdit
            Left = 28
            Top = 20
            Width = 37
            Height = 19
            TabStop = False
            BevelKind = bkTile
            BorderStyle = bsNone
            Color = 14149350
            DataField = 'idCorrecao'
            DataSource = dsCTeCorrecao
            ReadOnly = True
            TabOrder = 0
            DecimalControl = True
            KeyMode = kmNormal
          end
          object DBEstCorrecao: TCDBEdit
            Left = 534
            Top = 20
            Width = 115
            Height = 19
            TabStop = False
            BevelKind = bkTile
            BorderStyle = bsNone
            Color = 14149350
            DataField = 'stCorrecao'
            DataSource = dsCTeCorrecao
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            ReadOnly = True
            TabOrder = 2
            DecimalControl = True
            KeyMode = kmUSUpper
          end
        end
        object CGroupBox50: TCGroupBox
          Left = 11
          Top = 55
          Width = 654
          Height = 138
          TabOrder = 1
          object CDBGrid12: TCDBGrid
            Left = 3
            Top = 4
            Width = 648
            Height = 125
            TabStop = False
            DataSource = dsVCampo
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection]
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            UtilizaOrdenar = False
            Columns = <
              item
                Expanded = False
                FieldName = 'nritem'
                Title.Caption = 'Item'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'grupoCTe'
                Title.Caption = 'Grupo'
                Width = 90
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'campoCTe'
                Title.Caption = 'Campo'
                Width = 90
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'vlNovo'
                Title.Caption = 'Novo Valor'
                Width = 300
                Visible = True
              end>
          end
        end
        object BtnEnviarCarta: TCBitBtn
          Left = 280
          Top = 199
          Width = 154
          Height = 25
          Caption = '&Enviar/Reenviar SEFAZ'
          Glyph.Data = {
            36060000424D3606000000000000360000002800000020000000100000000100
            18000000000000060000120B0000120B00000000000000000000FF00FFFF00FF
            FF00FFFF00FF000364000364FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF909090909090FF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FF00046D0118BC0216A4000364FF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF9494949A9A9AA4A4A4909090FF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FF00046F5673F80220D50219AA000364FF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF959595E7E7E7B8B8B8A7A7A790
            9090FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FF0003645673F8021FD30219AA000364FF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF909090E7E7E7B7B7B7A7
            A7A7909090FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FF0003645673F8021FD10219AA000364FF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF909090E7E7E7B7
            B7B7A7A7A7909090FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FF0003645673F8021FD10218A6000364FF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF909090E7
            E7E7B7B7B7A6A6A6909090FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FF0003645673F8021FD00217A6000364FF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF90
            9090E7E7E7B6B6B6A5A5A5909090FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FF3C63CD0081BDFF00FFFF00FFFF00FF0003645673F8021FD00216A70003
            64FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFB074B0989898FF00FFFF00FFFF
            00FF909090E7E7E7B6B6B6A6A6A6909090FF00FFFF00FFFF00FFFF00FFFF00FF
            097CBF00A6E600A6E60081BDFF00FFFF00FFFF00FF0003645673F80111A00030
            98005FB6FF00FFFF00FFFF00FFFF00FF9C939CBCBCBCBCBCBC989898FF00FFFF
            00FFFF00FF909090E7E7E78E8E8E898989959595FF00FFFF00FFFF00FFFF00FF
            FF00FF0081BD0081BDFF00FFFF00FFFF00FFFF00FFFF00FF0003640049A900C5
            FE0090CE0081BDFF00FFFF00FFFF00FFFF00FF989898989898FF00FFFF00FFFF
            00FFFF00FFFF00FF9090908F8F8FB1B1B19E9E9E989898FF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FF0081BDFF00FF0081BDFF00FFFF00FF0086D50090
            CE00C5FE0081BDFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF989898FF
            00FF989898FF00FFFF00FFA1A1A19E9E9EB1B1B1989898FF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FF0081BD0081BD0081BDFF00FFFF00FFFF00FF0081
            BD0081BDFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF98989898
            9898989898FF00FFFF00FFFF00FF989898989898FF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FF0081BD00BAFB00BDFF00B1F20081BDFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF989898C4C4C4C5
            C5C5C0C0C0989898FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FF0081BD0081BD0081BD00ADEE0087C40081BD0081BDFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF989898989898989898BF
            BFBF9A9A9A989898989898FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FF0081BD00ADEE0081BDFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF989898BF
            BFBF989898FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FF0081BDFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF98
            9898FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
          NumGlyphs = 2
          TabOrder = 2
          OnClick = BtnEnviarCartaClick
        end
        object CBitBtn5: TCBitBtn
          Left = 568
          Top = 199
          Width = 97
          Height = 25
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
          TabOrder = 3
          OnClick = CBitBtn5Click
        end
        object BtnImprimirCarta: TCBitBtn
          Left = 10
          Top = 199
          Width = 175
          Height = 25
          Caption = '&Imprimir Demonstrativo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Glyph.Data = {
            36060000424D3606000000000000360000002800000020000000100000000100
            18000000000000060000120B0000120B00000000000000000000FF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FF9F9D9EFF00FFFF00FFFF00FF8281818281818E8A
            8BFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFA8A8A8FF
            00FFFF00FFFF00FF8F8F8F8F8F8F989898FF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FF9F9D9E9F9D9ED4D1D19693933B393A545253999797C5C2C4D7D5
            D5828181FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFA8A8A8A8A8A8D3D3D3A0
            A0A04A4A4A646464A3A3A3C7C7C7D5D5D58F8F8FFF00FFFF00FFFF00FFFF00FF
            9F9D9E9F9D9EFAFAFAFFFFFFD7D4D59E9C9C4443451C1C1E1C1C1F3534356766
            678281818E8A8BFF00FFFF00FFFF00FFA8A8A8A8A8A8F1F1F1F5F5F5D5D5D5A7
            A7A75555552828282828284444447676768F8F8F989898FF00FF918E8F9F9D9E
            F0EEEFFFFFFFEEEBEBCAC9C99F9D9E8E8A8A9793958786866463633C3B3D1F20
            22201F21747273FF00FF9B9B9BA8A8A8E9E9E9F5F5F5E7E7E7CBCBCBA8A8A898
            9898A0A0A09393937373734C4C4C2C2C2C2C2C2C828282FF00FF9C9899E9E7E7
            E5E5E5BDBBBBA6A4A4B4B1B1C2C1C1A4A1A19692939290909793959A98988E8A
            8B6B6A6A828181FF00FFA4A4A4E3E3E3E1E1E1C1C1C1AEAEAEB9B9B9C5C5C5AC
            ACAC9F9F9F9D9D9DA0A0A0A4A4A49898987A7A7A8F8F8FFF00FF959192ADABAC
            A4A1A1B0AFAFC9C9C9D1D3D3EDEDEBF0EEF0DCDADAC5C4C4ADABAB9A98999390
            909793958E8A8BFF00FF9E9E9EB4B4B4ACACACB6B6B6CBCBCBD2D2D2E6E6E6E9
            E9E9D9D9D9C7C7C7B4B4B4A4A4A49D9D9DA0A0A0989898FF00FF918E8FAFADAF
            C9C7C7CECECEC9C9C9E2E2E2D1CFCFA1ABA1BDBCBCCBCECFD5D5D5D3D3D3C6C5
            C5B6B6B6989797FF00FF9B9B9BB5B5B5CACACACFCFCFCBCBCBDFDFDFD1D1D1AF
            AFAFC1C1C1CECECED5D5D5D3D3D3C8C8C8BCBCBCA2A2A2FF00FFFF00FF9C999A
            D0D1D1CFCFCFDCDCDCC9C6C6B5B0B4A5D1A7BAC4BCC5A7A1ADA4A3A9A6A7B4B1
            B2C2C1C1A9A6A7FF00FFFF00FFA5A5A5D1D1D1D0D0D0DADADACACACAB9B9B9C0
            C0C0C3C3C3B9B9B9B0B0B0B0B0B0B9B9B9C5C5C5B0B0B0FF00FFFF00FFFF00FF
            9C999AC1BFBFAFADADB1B0B0E3E3E3F6F3F3EEEDEEEDE1DEDCD8D8CCCCCCB4B4
            B4939091FF00FFFF00FFFF00FFFF00FFA5A5A5C4C4C4B5B5B5B7B7B7E0E0E0ED
            EDEDE7E7E7E1E1E1D8D8D8CECECEBABABA9D9D9DFF00FFFF00FFFF00FFFF00FF
            FF00FF9C999AD8DADACACACB9D9FA0BBBFC1D3D5D7D4D9D9D5D5D5C6C5C6AFAD
            ADFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFA5A5A5C4C4C4B8B8B8969696AE
            AEAEC0C0C0C2C2C2C1C1C1C8C8C8B5B5B5FF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FFFBE5E1F8E0D4E9C9BDE3C7BDE2CCC7DED3CED0CECC959295FF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFD4D4D4CECECEBFBFBFBD
            BDBDC0C0C0C1C1C1BBBBBB9F9F9FFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FFCE9F9DFFDECEFFCFBDFFC4AFFFBAA3FFB199FF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFA7A7A7CECECEC7C7C7C1
            C1C1BCBCBCB8B8B8FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FFCE9F9DFFDDCEFFCCBCFEC2B0FFBBA4F7A992FF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFA7A7A7CECECEC7C7C7C1
            C1C1BDBDBDB2B2B2FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FFCE9F9DFFDDCEFFCCBCFEC2B0FEB8A3FAB099FF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFA7A7A7CECECEC7C7C7C1
            C1C1BCBCBCB6B6B6FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFCE9F9DFAE0D5FFDACCFFCEBDFFC6B1FCB8A3F8AD99FF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFA7A7A7CFCFCFCDCDCDC7C7C7C2
            C2C2BBBBBBB6B6B6FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFCE9F9DCE9F9DCE9F9DCE9F9DF3AD9DF3AD9DFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFA7A7A7A7A7A7A7A7A7A7A7A7B5
            B5B5B5B5B5FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
          Margin = 5
          NumGlyphs = 2
          ParentFont = False
          Spacing = 5
          TabOrder = 4
          OnClick = BtnImprimirCartaClick
        end
      end
    end
    object TabProdutos: TTabSheet
      Caption = 'Componentes / Produtos'
      ImageIndex = 1
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object CGroupBox10: TCGroupBox
        Left = 573
        Top = 16
        Width = 92
        Height = 218
        TabOrder = 2
        object BtnAdicionarComp: TCBitBtn
          Left = 9
          Top = 11
          Width = 75
          Height = 25
          Caption = '&Adicionar'
          Glyph.Data = {
            36060000424D3606000000000000360000002800000020000000100000000100
            18000000000000060000120B0000120B00000000000000000000FF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFBD4C00BD4C00
            BD4C00BD4C00BD4C00BD4C00BD4C00BD4C00BD4C00BD4C00BD4C00BD4C00BD4C
            00BD4C00BD4C00BD4C00A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7
            A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7BD4C00FFEDD9
            FFEAD3FFE7CE811E00FEE1C0FEDDBBFEDAB4811E00FED5A9FED3A4FFD09F811E
            00FECC98FECB96BD4C00A7A7A7F5F5F5F5F5F5F5F5F5959595F5F5F5F5F5F5F4
            F4F4959595F0F0F0EFEFEFEEEEEE8B8B8BEBEBEBEBEBEBA7A7A7BD4C00FFEFDE
            FFEDD8FEEAD1811E00FEE3C5FEE0C0FEDDB8811E00FED8ACFED4A9FFD3A3811E
            00FECF9AFECC98BD4C00A7A7A7F5F5F5F5F5F5F5F5F5959595F5F5F5F5F5F5F5
            F5F5959595F2F2F2F0F0F0EFEFEF8B8B8BECECECEBEBEBA7A7A7BD4C00FFF0E2
            FEEEDDFEEBD7811E00FEE5CAFEE2C2FEDEBD811E00FEDAB2FED5ABFED4A7811E
            00FFD09EFECE99BD4C00A7A7A7F5F5F5F5F5F5F5F5F5959595F5F5F5F5F5F5F5
            F5F5959595F3F3F3F1F1F1F0F0F08B8B8BEEEEEEECECECA7A7A7BD4C00811E00
            811E00811E00811E00811E00811E00811E00811E00811E00811E00811E00811E
            00811E00811E00BD4C00A7A7A795959595959595959595959595959595959595
            9595959595959595959595959595959595959595959595A7A7A7BD4C00FFF6ED
            FFF3E6FFEFE1811E00FFEAD4FFE7CEFEE5C6811E00FEDEBBFEDAB5FFD8AF811E
            00FED3A5FED0A0BD4C00A7A7A7F5F5F5F5F5F5F5F5F5959595F5F5F5F5F5F5F5
            F5F5959595F5F5F5F4F4F4F2F2F2959595F0F0F0EEEEEEA7A7A7BD4C00FFF8F0
            FFF6EAFFF3E5811E00FFEDD9FFEAD3FFE6CC811E00FEE1BFFFDDB8FED9B2811E
            00FED4A7FFD3A4BD4C00A7A7A7F5F5F5F5F5F5F5F5F5959595F5F5F5F5F5F5F5
            F5F5959595F5F5F5F5F5F5F3F3F3959595F0F0F0F0F0F0A7A7A7BD4C00FFFAF3
            FFF7EEFFF6EA811E00FEEFDDFFEBD7FFE9D0811E00FFE2C5FFE0BDFEDDB8811E
            00FED7ACFED4A6BD4C00A7A7A7F5F5F5F5F5F5F5F5F5959595F5F5F5F5F5F5F5
            F5F5959595F5F5F5F5F5F5F5F5F5959595F2F2F2F0F0F0A7A7A7BD4C00811E00
            811E00811E00811E00811E00811E00811E00811E00811E00811E00811E00811E
            00811E00811E00BD4C00A7A7A795959595959595959595959595959595959595
            9595959595959595959595959595959595959595959595A7A7A7BD4C00FFFCFA
            FFFAF6FFF8F2811E00FFF4E7FFF0E1FFEDDA811E00FFE7CEFFE3C7FFE1C1811E
            00FEDAB5FED9AFBD4C00A7A7A7F5F5F5F5F5F5F5F5F5959595F5F5F5F5F5F5F5
            F5F58B8B8BF5F5F5F5F5F5F5F5F5959595F4F4F4F2F2F2A7A7A7BD4C00FFFFFC
            FFFCF8FFFAF6811E00FFF6EAFEF3E6FFF0DE811E00FFEAD3FFE6CCFEE3C6811E
            00FEDDBAFEDAB4BD4C00A7A7A7F5F5F5F5F5F5F5F5F5959595F5F5F5F5F5F5F5
            F5F58B8B8BF5F5F5F5F5F5F5F5F5959595F5F5F5F4F4F4A7A7A7BD4C00FFFFFF
            FFFEFCFFFCF8811E00FEF7EFFFF4EAFFF2E3811E00FFEDD7FFE9D1FFE6CB811E
            00FEE0BDFFDDB8BD4C00A7A7A7F5F5F5F5F5F5F5F5F5959595F5F5F5F5F5F5F5
            F5F58B8B8BF5F5F5F5F5F5F5F5F5959595F5F5F5F5F5F5A7A7A7BD4C00BD4C00
            BD4C00BD4C00BD4C00BD4C00BD4C00BD4C00BD4C00BD4C00BD4C00BD4C00BD4C
            00BD4C00BD4C00BD4C00A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7
            A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7BD4C00BD4C00
            BD4C00BD4C00BD4C00BD4C00BD4C00BD4C00BD4C00BD4C00BD4C00BD4C00BD4C
            00BD4C00BD4C00BD4C00A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7
            A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7FF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
          Margin = 5
          NumGlyphs = 2
          TabOrder = 0
          OnClick = BtnAdicionarCompClick
        end
        object BtnCancelarComp: TCBitBtn
          Left = 9
          Top = 42
          Width = 75
          Height = 25
          Caption = '&Cancelar'
          Glyph.Data = {
            36060000424D3606000000000000360000002800000020000000100000000100
            18000000000000060000120B0000120B00000000000000000000FF00FFFF00FF
            FF00FFFF00FFFF00FF05720A05720A05720A05720A05720A05720A05720A0572
            0A05720A05720A05720AFF00FFFF00FFFF00FFFF00FFFF00FFAAAAAAAAAAAAAA
            AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA7F7AB88384
            B88384B88384B8838405720AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFF05720AAFAFAFB7B7B7B7B7B7B7B7B7B7B7B7AAAAAAF5F5F5F5
            F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5AAAAAAAD827BFCEBCE
            F7DFBFF4DAB3F3D6AB05720AFFFFFFFFFFFF006600006600006600FFFFFFFFFF
            FFFFFFFFFFFFFF05720AB1B1B1EAEAEAE3E3E3DDDDDDDADADAAAAAAAF5F5F5F5
            F5F5959595959595959595F5F5F5F5F5F5F5F5F5F5F5F5AAAAAAB1857CFDEDD5
            F5DFC5F4DBBBF2D7B205720AFFFFFFFFFFFFFFFFFFFFFFFF077D0E006600F3F8
            F4FFFFFFFFFFFF05720AB2B2B2EDEDEDE4E4E4E0E0E0DCDCDCAAAAAAF5F5F5F5
            F5F5F5F5F5F5F5F59F9F9F959595F5F5F5F5F5F5F5F5F5AAAAAAB6897EFEF2DE
            F7E5CEF5E0C5F4DCBC05720AFFFFFFFFFFFFFFFFFFFFFFFF2B9733006600FFFF
            FFFFFFFFFFFFFF05720AB5B5B5F0F0F0E8E8E8E4E4E4E1E1E1AAAAAAF5F5F5F5
            F5F5F5F5F5F5F5F5B5B5B5959595F5F5F5F5F5F5F5F5F5AAAAAABA8D80FFF7E8
            F8E8D6F6E4CDF5E0C405720AFFFFFFFFFFFF00660000660024902E19A32B0066
            00006600FFFFFF05720AB7B7B7F4F4F4EBEBEBE7E7E7E3E3E3AAAAAAF5F5F5F5
            F5F5959595959595B0B0B0B3B3B3959595959595F5F5F5AAAAAABF9183FFFCF2
            F9EDDFF7E8D6F6E4CD05720AFFFFFFFFFFFF006600168B233DBE5F3AC95B199D
            29006600FFFFFF05720ABABABAF5F5F5EFEFEFEAEAEAE7E7E7AAAAAAF5F5F5F5
            F5F5959595A9A9A9C9C9C9CBCBCBB1B1B1959595F5F5F5AAAAAAC49685FFFFFC
            FAF1E8F9ECDEF8E8D505720AFFFFFFFFFFFFFFFFFF00660033AF5053E0810066
            00FFFFFFFFFFFF05720ABCBCBCF5F5F5F2F2F2EEEEEEEAEAEAAAAAAAF5F5F5F5
            F5F5F5F5F5959595C0C0C0DCDCDC959595F5F5F5F5F5F5AAAAAAC99B87FFFFFF
            FDF7F2FBF1E8FAEEDF05720AFFFFFFFFFFFFFFFFFFFFFFFF006600006600FFFF
            FFFFFFFFFFFFFF05720ABFBFBFF5F5F5F5F5F5F2F2F2EFEFEFAAAAAAF5F5F5F5
            F5F5F5F5F5F5F5F5959595959595F5F5F5F5F5F5F5F5F5AAAAAACD9E8AFFFFFF
            FFFCFBFEF7F1FBF2E705720AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFF05720AC1C1C1F5F5F5F5F5F5F5F5F5F2F2F2AAAAAAF5F5F5F5
            F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5AAAAAAD1A38BFFFFFF
            FFFFFFFFFDFBFDF7F105720A05720A05720A05720A05720A05720A05720A0572
            0A05720A05720A05720AC3C3C3F5F5F5F5F5F5F5F5F5F5F5F5AAAAAAAAAAAAAA
            AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAD6A78DFFFFFF
            FFFFFFFFFFFFFFFDFBFDF7F1FBF1E6FAEDDEFDF0DDEADDCAC7BFB0B88384FF00
            FFFF00FFFF00FFFF00FFC5C5C5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F1F1F1EF
            EFEFEFEFEFE2E2E2CCCCCCB7B7B7FF00FFFF00FFFF00FFFF00FFD9AA8FFFFFFF
            FFFFFFFFFFFFFFFFFFFEFDFBFDF8F0FBF3E7B88384B88384B88384B88384FF00
            FFFF00FFFF00FFFF00FFC7C7C7F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F2
            F2F2B7B7B7B7B7B7B7B7B7B7B7B7FF00FFFF00FFFF00FFFF00FFDDAC91FFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFDF7F0ECB88384E9B676F3AE52CA8A6AFF00
            FFFF00FFFF00FFFF00FFC9C9C9F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F2
            F2F2B7B7B7C4C4C4BBBBBBB5B5B5FF00FFFF00FFFF00FFFF00FFDFAF92FFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFAFEB88384EBB87AD09877FF00FFFF00
            FFFF00FFFF00FFFF00FFCACACAF5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5
            F5F5B7B7B7C6C6C6BBBBBBFF00FFFF00FFFF00FFFF00FFFF00FFDBA685DBA685
            DBA685DBA685DBA685DBA685DBA685DBA685B88384CA9784FF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFC4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4
            C4C4B7B7B7BEBEBEFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
          Margin = 5
          NumGlyphs = 2
          TabOrder = 1
          OnClick = BtnAdicionarCompClick
        end
        object BtnRetirarComp: TCBitBtn
          Left = 9
          Top = 73
          Width = 75
          Height = 25
          Caption = '&Retirar'
          Glyph.Data = {
            36060000424D3606000000000000360000002800000020000000100000000100
            18000000000000060000120B0000120B00000000000000000000FF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FF92635DA46769A46769A46769A46769A46769A467
            69A46769A46769A46769FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF9A9A9AA6
            A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6FF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FF96655EFFFBD1FADEB4F8D9A6F4D197F3CB8AF0C7
            81F0C781FCD5869F6F60FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF9C9C9CF7
            F7F7E9E9E9E3E3E3DBDBDBD5D5D5D0D0D0D0D0D0D7D7D7A1A1A1FF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FF9A685EFFF3D9F2D9BBF2D4AFEECCA1015503EAC0
            89E7BC80F3C9829F6F60FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF9E9E9EFA
            FAFAE9E9E9E4E4E4DDDDDD6C6C6CD1D1D1CCCCCCD2D2D2A1A1A1FF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FF9F6C5FFFFBE9F4E0C6F3DABA0155032CC5580155
            03EAC187F3CA819F6F60FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFA0A0A0FF
            FFFFEFEFEFE9E9E96C6C6CBDBDBD6C6C6CD0D0D0D1D1D1A1A1A1FF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFA57060FFFFF8F7E5D401550330BD5741E07522B6
            3E015503F4CE8A9F6F60FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFA3A3A3FF
            FFFFF5F5F56C6C6CBCBCBCD3D3D3B1B1B16C6C6CD6D6D6A1A1A1FF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFAC7562FFFFFF015503067F141A922F27BB45149A
            260C88160155039F6F60FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFA7A7A7FF
            FFFF6C6C6C8585859D9D9DB6B6B69C9C9C8E8E8E6C6C6CA1A1A1FF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFB47A63FFFFFFFCF7F2FAEEE301550315A5280155
            03F2D3ACFBDCA79F6F60FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFAAAAAAFF
            FFFFFFFFFFFCFCFC6B6B6BA1A1A16C6C6CE3E3E3E5E5E5A1A1A1FF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFBB7F64FFFFFFFFFEFEFEF7F20360070996130155
            03FBE6C4EEDCB29F6F60FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFAEAEAEFF
            FFFFFFFFFFFFFFFF7474749191916C6C6CF0F0F0E4E4E4A1A1A1FF00FF92635D
            A46769A46769A46769A46769A46769A46769FFFFFF036E0704780A058C0D0155
            03CBA693AC8E84A16B6DFF00FF9090909C9C9C9C9C9C9C9C9C9C9C9C9C9C9C9C
            9C9CFFFFFF7B7B7B8080808A8A8A6C6C6CCACACAB7B7B7A7A7A7FF00FF97675E
            FFEBC4F7DCB4F4D7AAF4D4A3E6BD9301550301550301770705840C026606DAC1
            BBA96A54D98A409F675BFF00FF929292E8E8E8DEDEDED9D9D9D6D6D6CACACA6C
            6C6C6C6C6C7C7C7C868686757575E0E0E09F9F9FA8A8A89E9E9EFF00FFA06D60
            FBEACEDD9644DD9644DD9644E2BD99A46769FFFFFFFFFFFFFFFFFFFFFFFFD8C5
            C79F675BE09A5BFF00FFFF00FF979797EAEAEAA3A3A3A3A3A3A3A3A3CBCBCB9C
            9C9CFFFFFFFFFFFFFFFFFFFFFFFFE3E3E39E9E9EB8B8B8FF00FFFF00FFAA7462
            FCF0DCF6E2CAF4DDC0F4D9B7E6C2A4A46769CF8E68CF8E68CF8E68CF8E68CF8E
            689F675BFF00FFFF00FFFF00FF9C9C9CF0F0F0E7E7E7E2E2E2DFDFDFD1D1D19C
            9C9CB8B8B8B8B8B8B8B8B8B8B8B8B8B8B89E9E9EFF00FFFF00FFFF00FFB57B64
            FEF7EBDD9644DD9644FBE9CCE3CAB1A46769FF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFA1A1A1F5F5F5A3A3A3A3A3A3EAEAEAD6D6D69C
            9C9CFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFC08266
            FFFEF8FBF0E5FAEFDEA46769A46769A46769FF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFA7A7A7F5F5F5F3F3F3F0F0F09C9C9C9C9C9C9C
            9C9CFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFC98967
            FFFFFFFFFFFEFEFBF7A46769E09A5BFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFABABABF5F5F5F5F5F5F5F5F59C9C9CAEAEAEFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFCF8E68
            CF8E68CF8E68CF8E68A46769FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFAEAEAEAEAEAEAEAEAEAEAEAE9C9C9CFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
          Margin = 5
          NumGlyphs = 2
          TabOrder = 2
          OnClick = BtnAdicionarCompClick
        end
        object BtnNovoComp: TCBitBtn
          Left = 9
          Top = 104
          Width = 75
          Height = 25
          Caption = '&Novo'
          Glyph.Data = {
            36060000424D3606000000000000360000002800000020000000100000000100
            18000000000000060000120B0000120B00000000000000000000FF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFCC6701CC6701
            CC6701CC6701CC6701CC6701CC6701CC6701CC6701FF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FF98989898989898989898989898989898989898989898
            9898989898FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFFFEFCFFFBF7
            FEF8F0FFF5E8FFF0E1FEEDD9FEEAD2FEE7CCCC6701FF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEA
            EAEA989898FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFFFEFDFFFCF9
            FFF9F3FFF6ECFFF2E4FEEEDCFEEBD4FEE8CDCC6701FF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEA
            EAEA989898FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFFFFFFFFFDFB
            FFFAF5FEF7EEFEF4E6FEF0DEFEECD7FEE9D0CC6701FF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEA
            EAEA989898FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF993300993300
            993300993300993300993300993300993300993300993300993300CC6701FF00
            FF006600FF00FFFF00FF7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E
            7E7E7E7E7E7E7E7E7E7E7E989898FF00FF656565FF00FFFF00FFFFFFFEFFFCFA
            FFFBF5FFF8F0FEF5EAFFF2E4FEEFDEFEEDD8FEEAD3FEE8CDFEE6C9CC6701FF00
            FF006600006600FF00FFEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEA
            EAEAEAEAEAEAEAEAEAEAEA838383FF00FF656565656565FF00FFFFFEFEFFFDFB
            FEFBF6FFF9F2FFF6ECFFF3E6FEF1E0FFEEDAFEEBD4FEE8CFFEE6CACC6701FF00
            FF00660066FE9A006600EAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEA
            EAEAEAEAEAEAEAEAEAEAEA838383FF00FF656565E4E4E4656565FFFFFFFFFDFC
            FFFBF8FFF9F3FEF7EDFFF4E7FFF1E2FEEEDCFEEBD5FEE9D0FEE7CBCC6701FF00
            FF006600006600FF00FFEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEA
            EAEAEAEAEAEAEAEAEAEAEA838383FF00FF656565656565FF00FF993300993300
            993300993300993300993300993300993300993300993300993300CC6701FF00
            FF006600FF00FFFF00FF7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E
            7E7E7E7E7E7E7E7E7E7E7E989898FF00FF656565FF00FFFF00FFFFFFFFFFFDFB
            FFFAF5FFF7EDFFF2E5FFEFDCFEEBD4FEE8CCCC6701FF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEA
            EAEA989898FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFFFFFFFFFEFE
            FFFBF8FFF8F0FFF4E8FEF0DFFFECD7FEE8D0CC6701FF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEA
            EAEA989898FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFFFFFFFFFFFF
            FFFDFAFFFAF4FEF6ECFEF2E4FEEEDAFEEBD2CC6701FF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEA
            EAEA989898FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFCC6701CC6701
            CC6701CC6701CC6701CC6701CC6701CC6701CC6701FF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FF98989898989898989898989898989898989898989898
            9898989898FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
          Margin = 5
          NumGlyphs = 2
          Spacing = 5
          TabOrder = 3
          OnClick = BtnAdicionarCompClick
        end
      end
      object CGroupBox7: TCGroupBox
        Left = 9
        Top = 355
        Width = 657
        Height = 110
        Caption = 'Observa'#231#245'es Gerais'
        TabOrder = 4
        object DBMobsCTe: TCDBMemo
          Tag = 4
          Left = 15
          Top = 20
          Width = 634
          Height = 82
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'obsCTe'
          DataSource = dsPadrao
          ScrollBars = ssVertical
          TabOrder = 0
          KeyMemo = kmmNormal
        end
      end
      object CGroupBox8: TCGroupBox
        Left = 9
        Top = 240
        Width = 558
        Height = 109
        Caption = 'Total / Tributa'#231#227'o'
        TabOrder = 3
        object CLabel43: TCLabel
          Left = 35
          Top = 27
          Width = 29
          Height = 13
          Alignment = taRightJustify
          Caption = 'Total'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object CLabel5: TCLabel
          Left = 13
          Top = 52
          Width = 51
          Height = 13
          Alignment = taRightJustify
          Caption = 'Tributa'#231#227'o'
        end
        object CLabel61: TCLabel
          Left = 426
          Top = 52
          Width = 42
          Height = 13
          Alignment = taRightJustify
          Caption = 'Redu'#231#227'o'
        end
        object CLabel16: TCLabel
          Left = 312
          Top = 52
          Width = 56
          Height = 13
          Alignment = taRightJustify
          Caption = '% Redu'#231#227'o'
        end
        object CLabel23: TCLabel
          Left = 253
          Top = 77
          Width = 52
          Height = 13
          Alignment = taRightJustify
          Caption = 'Valor ICMS'
        end
        object CLabel22: TCLabel
          Left = 157
          Top = 77
          Width = 39
          Height = 13
          Alignment = taRightJustify
          Caption = '% ICMS'
        end
        object CLabel17: TCLabel
          Left = 400
          Top = 77
          Width = 62
          Height = 13
          Alignment = taRightJustify
          Caption = 'Valor Cr'#233'dito'
        end
        object CLabel21: TCLabel
          Left = 153
          Top = 27
          Width = 45
          Height = 13
          Alignment = taRightJustify
          Caption = 'Tipo Trib.'
        end
        object CLabel19: TCLabel
          Left = 13
          Top = 77
          Width = 51
          Height = 13
          Alignment = taRightJustify
          Caption = 'Base ICMS'
        end
        object DBEvlTotalGeral: TCDBEdit
          Left = 70
          Top = 24
          Width = 77
          Height = 19
          TabStop = False
          BevelKind = bkTile
          BorderStyle = bsNone
          Color = 15201011
          DataField = 'vlTotalGeral'
          DataSource = dsCTeComp
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
        object DBEidStTributaria: TCDBEdit
          Left = 70
          Top = 49
          Width = 44
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'idStTributaria'
          DataSource = dsCTeTributo
          TabOrder = 2
          OnExit = DBEidStTributariaExit
          Find = dmFind.FindTributacao
          DecimalControl = True
          KeyMode = kmNormal
        end
        object LookTributacao: TCLookUp
          Left = 120
          Top = 49
          Width = 186
          Height = 19
          Alignment = taLeftJustify
          BevelInner = bvSpace
          BevelOuter = bvLowered
          Color = 14149350
          ParentBackground = False
          TabOrder = 3
          Key.Strings = (
            'idStTributaria')
          LookUpKey.Strings = (
            'idStTributaria')
          ClientDataSet = cdsLookup
          DataSource = dsCTeTributo
          ValidaCampoObrigatorio = True
          CampoObrigatorio = True
          LookUpTable = 'StTributaria'
          ReturnField = 'descStTributaria'
        end
        object DBEvlReducao: TCDBEdit
          Left = 474
          Top = 49
          Width = 75
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'vlReducao'
          DataSource = dsCTeTributo
          TabOrder = 5
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEprReducao: TCDBEdit
          Left = 374
          Top = 49
          Width = 46
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'prReducao'
          DataSource = dsCTeTributo
          TabOrder = 4
          OnEnter = DBEprReducaoEnter
          OnExit = DBEprReducaoExit
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEvlIcms: TCDBEdit
          Left = 311
          Top = 74
          Width = 81
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'vlIcms'
          DataSource = dsCTeTributo
          TabOrder = 8
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEprIcms: TCDBEdit
          Left = 202
          Top = 74
          Width = 45
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'prIcms'
          DataSource = dsCTeTributo
          TabOrder = 7
          OnEnter = DBEprReducaoEnter
          OnExit = DBEprReducaoExit
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEvlCredito: TCDBEdit
          Left = 468
          Top = 74
          Width = 81
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'vlCredito'
          DataSource = dsCTeTributo
          TabOrder = 9
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBCBtpTributo: TCDBComboBox
          Left = 200
          Top = 24
          Width = 145
          Height = 19
          Style = csDropDownList
          DataField = 'tpTributo'
          DataSource = dsCTeTributo
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = []
          Items.Strings = (
            'Normal'
            'Outra UF'
            'Simples')
          ParentFont = False
          TabOrder = 1
          OnExit = DBCBtpTributoExit
        end
        object DBEvlBaseIcmsT: TCDBEdit
          Left = 70
          Top = 74
          Width = 81
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'vlBaseIcms'
          DataSource = dsCTeTributo
          TabOrder = 6
          OnEnter = DBEprReducaoEnter
          OnExit = DBEprReducaoExit
          DecimalControl = True
          KeyMode = kmNormal
        end
      end
      object CGroupBox11: TCGroupBox
        Left = 9
        Top = 97
        Width = 561
        Height = 137
        TabOrder = 1
        object CDBGrid1: TCDBGrid
          Left = 7
          Top = 14
          Width = 537
          Height = 112
          TabStop = False
          DataSource = dsCTeComp
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection]
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          UtilizaOrdenar = False
          Columns = <
            item
              Expanded = False
              FieldName = 'idComp'
              Title.Caption = 'Cp.'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'idProduto'
              Title.Caption = 'Serv.'
              Width = 60
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'descProduto'
              Title.Caption = 'Desc. Produto'
              Width = 165
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'descComp'
              Title.Caption = 'Descri'#231#227'o'
              Width = 165
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'vlComp'
              Title.Caption = 'Valor'
              Width = 90
              Visible = True
            end>
        end
      end
      object CGroupBox9: TCGroupBox
        Left = 9
        Top = 16
        Width = 561
        Height = 75
        Caption = 'Lan'#231'amento dos itens componentes da presta'#231#227'o - [FRETE]'
        TabOrder = 0
        object CLabel45: TCLabel
          Left = 420
          Top = 47
          Width = 24
          Height = 13
          Alignment = taRightJustify
          Caption = 'Valor'
        end
        object CLabel6: TCLabel
          Left = 22
          Top = 22
          Width = 31
          Height = 13
          Alignment = taRightJustify
          Caption = 'Comp.'
        end
        object CLabel9: TCLabel
          Left = 7
          Top = 47
          Width = 46
          Height = 13
          Alignment = taRightJustify
          Caption = 'Descri'#231#227'o'
        end
        object CLabel41: TCLabel
          Left = 98
          Top = 22
          Width = 26
          Height = 13
          Alignment = taRightJustify
          Caption = 'Serv.'
        end
        object DBEvlComp: TCDBEdit
          Left = 450
          Top = 44
          Width = 101
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'vlComp'
          DataSource = dsCTeComp
          TabOrder = 5
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEidComp: TCDBEdit
          Left = 59
          Top = 19
          Width = 33
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          Color = 14149350
          DataField = 'idComp'
          DataSource = dsCTeComp
          ReadOnly = True
          TabOrder = 0
          OnExit = DBEidCompExit
          AcaoCad = frmPrincipal.actCadProduto
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEdescComp: TCDBEdit
          Left = 59
          Top = 44
          Width = 355
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'descComp'
          DataSource = dsCTeComp
          TabOrder = 4
          DecimalControl = True
          KeyMode = kmNormal
        end
        object LookComp: TCLookUp
          Left = 201
          Top = 19
          Width = 308
          Height = 19
          Alignment = taLeftJustify
          BevelInner = bvSpace
          BevelOuter = bvLowered
          Color = 14149350
          ParentBackground = False
          TabOrder = 2
          OnDblClick = LookCompDblClick
          Key.Strings = (
            'idProduto')
          LookUpKey.Strings = (
            'idProduto')
          ClientDataSet = cdsLookup
          DataSource = dsCTeComp
          ValidaCampoObrigatorio = False
          CampoObrigatorio = True
          LookUpTable = 'Produto'
          ReturnField = 'descProduto'
        end
        object LookProdMedida: TCLookUp
          Left = 515
          Top = 19
          Width = 36
          Height = 19
          Alignment = taLeftJustify
          BevelInner = bvSpace
          BevelOuter = bvLowered
          Color = 14149350
          ParentBackground = False
          TabOrder = 3
          Key.Strings = (
            'idProduto')
          LookUpKey.Strings = (
            'idProduto')
          AlternateSQL.Strings = (
            
              'SELECT ProdMedida.descAbreviada FROM Produto, ProdMedida WHERE P' +
              'roduto.idProdMedida = ProdMedida.idProdMedida AND Produto.idProd' +
              'uto = ?')
          ClientDataSet = cdsLookup
          DataSource = dsCTeComp
          ValidaCampoObrigatorio = False
          CampoObrigatorio = True
          LookUpTable = 'Produto'
          ReturnField = 'descAbreviada'
        end
        object DBEidProduto: TCDBEdit
          Left = 130
          Top = 19
          Width = 65
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'idProduto'
          DataSource = dsCTeComp
          TabOrder = 1
          OnEnter = DBEidProdutoEnter
          OnExit = DBEidProdutoExit
          Find = dmFind.FindServico
          AcaoCad = frmPrincipal.actCadProduto
          DecimalControl = True
          KeyMode = kmNormal
        end
      end
    end
    object TabCarga: TTabSheet
      Caption = 'Carga'
      ImageIndex = 2
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object CGroupBox14: TCGroupBox
        Left = 577
        Top = 72
        Width = 92
        Height = 168
        TabOrder = 3
        object BtnAdicionarCarga: TCBitBtn
          Left = 9
          Top = 11
          Width = 75
          Height = 25
          Caption = '&Adicionar'
          Glyph.Data = {
            36060000424D3606000000000000360000002800000020000000100000000100
            18000000000000060000120B0000120B00000000000000000000FF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFBD4C00BD4C00
            BD4C00BD4C00BD4C00BD4C00BD4C00BD4C00BD4C00BD4C00BD4C00BD4C00BD4C
            00BD4C00BD4C00BD4C00A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7
            A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7BD4C00FFEDD9
            FFEAD3FFE7CE811E00FEE1C0FEDDBBFEDAB4811E00FED5A9FED3A4FFD09F811E
            00FECC98FECB96BD4C00A7A7A7F5F5F5F5F5F5F5F5F5959595F5F5F5F5F5F5F4
            F4F4959595F0F0F0EFEFEFEEEEEE8B8B8BEBEBEBEBEBEBA7A7A7BD4C00FFEFDE
            FFEDD8FEEAD1811E00FEE3C5FEE0C0FEDDB8811E00FED8ACFED4A9FFD3A3811E
            00FECF9AFECC98BD4C00A7A7A7F5F5F5F5F5F5F5F5F5959595F5F5F5F5F5F5F5
            F5F5959595F2F2F2F0F0F0EFEFEF8B8B8BECECECEBEBEBA7A7A7BD4C00FFF0E2
            FEEEDDFEEBD7811E00FEE5CAFEE2C2FEDEBD811E00FEDAB2FED5ABFED4A7811E
            00FFD09EFECE99BD4C00A7A7A7F5F5F5F5F5F5F5F5F5959595F5F5F5F5F5F5F5
            F5F5959595F3F3F3F1F1F1F0F0F08B8B8BEEEEEEECECECA7A7A7BD4C00811E00
            811E00811E00811E00811E00811E00811E00811E00811E00811E00811E00811E
            00811E00811E00BD4C00A7A7A795959595959595959595959595959595959595
            9595959595959595959595959595959595959595959595A7A7A7BD4C00FFF6ED
            FFF3E6FFEFE1811E00FFEAD4FFE7CEFEE5C6811E00FEDEBBFEDAB5FFD8AF811E
            00FED3A5FED0A0BD4C00A7A7A7F5F5F5F5F5F5F5F5F5959595F5F5F5F5F5F5F5
            F5F5959595F5F5F5F4F4F4F2F2F2959595F0F0F0EEEEEEA7A7A7BD4C00FFF8F0
            FFF6EAFFF3E5811E00FFEDD9FFEAD3FFE6CC811E00FEE1BFFFDDB8FED9B2811E
            00FED4A7FFD3A4BD4C00A7A7A7F5F5F5F5F5F5F5F5F5959595F5F5F5F5F5F5F5
            F5F5959595F5F5F5F5F5F5F3F3F3959595F0F0F0F0F0F0A7A7A7BD4C00FFFAF3
            FFF7EEFFF6EA811E00FEEFDDFFEBD7FFE9D0811E00FFE2C5FFE0BDFEDDB8811E
            00FED7ACFED4A6BD4C00A7A7A7F5F5F5F5F5F5F5F5F5959595F5F5F5F5F5F5F5
            F5F5959595F5F5F5F5F5F5F5F5F5959595F2F2F2F0F0F0A7A7A7BD4C00811E00
            811E00811E00811E00811E00811E00811E00811E00811E00811E00811E00811E
            00811E00811E00BD4C00A7A7A795959595959595959595959595959595959595
            9595959595959595959595959595959595959595959595A7A7A7BD4C00FFFCFA
            FFFAF6FFF8F2811E00FFF4E7FFF0E1FFEDDA811E00FFE7CEFFE3C7FFE1C1811E
            00FEDAB5FED9AFBD4C00A7A7A7F5F5F5F5F5F5F5F5F5959595F5F5F5F5F5F5F5
            F5F58B8B8BF5F5F5F5F5F5F5F5F5959595F4F4F4F2F2F2A7A7A7BD4C00FFFFFC
            FFFCF8FFFAF6811E00FFF6EAFEF3E6FFF0DE811E00FFEAD3FFE6CCFEE3C6811E
            00FEDDBAFEDAB4BD4C00A7A7A7F5F5F5F5F5F5F5F5F5959595F5F5F5F5F5F5F5
            F5F58B8B8BF5F5F5F5F5F5F5F5F5959595F5F5F5F4F4F4A7A7A7BD4C00FFFFFF
            FFFEFCFFFCF8811E00FEF7EFFFF4EAFFF2E3811E00FFEDD7FFE9D1FFE6CB811E
            00FEE0BDFFDDB8BD4C00A7A7A7F5F5F5F5F5F5F5F5F5959595F5F5F5F5F5F5F5
            F5F58B8B8BF5F5F5F5F5F5F5F5F5959595F5F5F5F5F5F5A7A7A7BD4C00BD4C00
            BD4C00BD4C00BD4C00BD4C00BD4C00BD4C00BD4C00BD4C00BD4C00BD4C00BD4C
            00BD4C00BD4C00BD4C00A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7
            A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7BD4C00BD4C00
            BD4C00BD4C00BD4C00BD4C00BD4C00BD4C00BD4C00BD4C00BD4C00BD4C00BD4C
            00BD4C00BD4C00BD4C00A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7
            A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7FF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
          Margin = 5
          NumGlyphs = 2
          TabOrder = 0
          OnClick = BtnAdicionarCargaClick
        end
        object BtnCancelarCarga: TCBitBtn
          Left = 9
          Top = 42
          Width = 75
          Height = 25
          Caption = '&Cancelar'
          Glyph.Data = {
            36060000424D3606000000000000360000002800000020000000100000000100
            18000000000000060000120B0000120B00000000000000000000FF00FFFF00FF
            FF00FFFF00FFFF00FF05720A05720A05720A05720A05720A05720A05720A0572
            0A05720A05720A05720AFF00FFFF00FFFF00FFFF00FFFF00FFAAAAAAAAAAAAAA
            AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA7F7AB88384
            B88384B88384B8838405720AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFF05720AAFAFAFB7B7B7B7B7B7B7B7B7B7B7B7AAAAAAF5F5F5F5
            F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5AAAAAAAD827BFCEBCE
            F7DFBFF4DAB3F3D6AB05720AFFFFFFFFFFFF006600006600006600FFFFFFFFFF
            FFFFFFFFFFFFFF05720AB1B1B1EAEAEAE3E3E3DDDDDDDADADAAAAAAAF5F5F5F5
            F5F5959595959595959595F5F5F5F5F5F5F5F5F5F5F5F5AAAAAAB1857CFDEDD5
            F5DFC5F4DBBBF2D7B205720AFFFFFFFFFFFFFFFFFFFFFFFF077D0E006600F3F8
            F4FFFFFFFFFFFF05720AB2B2B2EDEDEDE4E4E4E0E0E0DCDCDCAAAAAAF5F5F5F5
            F5F5F5F5F5F5F5F59F9F9F959595F5F5F5F5F5F5F5F5F5AAAAAAB6897EFEF2DE
            F7E5CEF5E0C5F4DCBC05720AFFFFFFFFFFFFFFFFFFFFFFFF2B9733006600FFFF
            FFFFFFFFFFFFFF05720AB5B5B5F0F0F0E8E8E8E4E4E4E1E1E1AAAAAAF5F5F5F5
            F5F5F5F5F5F5F5F5B5B5B5959595F5F5F5F5F5F5F5F5F5AAAAAABA8D80FFF7E8
            F8E8D6F6E4CDF5E0C405720AFFFFFFFFFFFF00660000660024902E19A32B0066
            00006600FFFFFF05720AB7B7B7F4F4F4EBEBEBE7E7E7E3E3E3AAAAAAF5F5F5F5
            F5F5959595959595B0B0B0B3B3B3959595959595F5F5F5AAAAAABF9183FFFCF2
            F9EDDFF7E8D6F6E4CD05720AFFFFFFFFFFFF006600168B233DBE5F3AC95B199D
            29006600FFFFFF05720ABABABAF5F5F5EFEFEFEAEAEAE7E7E7AAAAAAF5F5F5F5
            F5F5959595A9A9A9C9C9C9CBCBCBB1B1B1959595F5F5F5AAAAAAC49685FFFFFC
            FAF1E8F9ECDEF8E8D505720AFFFFFFFFFFFFFFFFFF00660033AF5053E0810066
            00FFFFFFFFFFFF05720ABCBCBCF5F5F5F2F2F2EEEEEEEAEAEAAAAAAAF5F5F5F5
            F5F5F5F5F5959595C0C0C0DCDCDC959595F5F5F5F5F5F5AAAAAAC99B87FFFFFF
            FDF7F2FBF1E8FAEEDF05720AFFFFFFFFFFFFFFFFFFFFFFFF006600006600FFFF
            FFFFFFFFFFFFFF05720ABFBFBFF5F5F5F5F5F5F2F2F2EFEFEFAAAAAAF5F5F5F5
            F5F5F5F5F5F5F5F5959595959595F5F5F5F5F5F5F5F5F5AAAAAACD9E8AFFFFFF
            FFFCFBFEF7F1FBF2E705720AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFF05720AC1C1C1F5F5F5F5F5F5F5F5F5F2F2F2AAAAAAF5F5F5F5
            F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5AAAAAAD1A38BFFFFFF
            FFFFFFFFFDFBFDF7F105720A05720A05720A05720A05720A05720A05720A0572
            0A05720A05720A05720AC3C3C3F5F5F5F5F5F5F5F5F5F5F5F5AAAAAAAAAAAAAA
            AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAD6A78DFFFFFF
            FFFFFFFFFFFFFFFDFBFDF7F1FBF1E6FAEDDEFDF0DDEADDCAC7BFB0B88384FF00
            FFFF00FFFF00FFFF00FFC5C5C5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F1F1F1EF
            EFEFEFEFEFE2E2E2CCCCCCB7B7B7FF00FFFF00FFFF00FFFF00FFD9AA8FFFFFFF
            FFFFFFFFFFFFFFFFFFFEFDFBFDF8F0FBF3E7B88384B88384B88384B88384FF00
            FFFF00FFFF00FFFF00FFC7C7C7F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F2
            F2F2B7B7B7B7B7B7B7B7B7B7B7B7FF00FFFF00FFFF00FFFF00FFDDAC91FFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFDF7F0ECB88384E9B676F3AE52CA8A6AFF00
            FFFF00FFFF00FFFF00FFC9C9C9F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F2
            F2F2B7B7B7C4C4C4BBBBBBB5B5B5FF00FFFF00FFFF00FFFF00FFDFAF92FFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFAFEB88384EBB87AD09877FF00FFFF00
            FFFF00FFFF00FFFF00FFCACACAF5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5
            F5F5B7B7B7C6C6C6BBBBBBFF00FFFF00FFFF00FFFF00FFFF00FFDBA685DBA685
            DBA685DBA685DBA685DBA685DBA685DBA685B88384CA9784FF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFC4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4
            C4C4B7B7B7BEBEBEFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
          Margin = 5
          NumGlyphs = 2
          TabOrder = 1
          OnClick = BtnAdicionarCargaClick
        end
        object BtnRetirarCarga: TCBitBtn
          Left = 9
          Top = 73
          Width = 75
          Height = 25
          Caption = '&Retirar'
          Glyph.Data = {
            36060000424D3606000000000000360000002800000020000000100000000100
            18000000000000060000120B0000120B00000000000000000000FF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FF92635DA46769A46769A46769A46769A46769A467
            69A46769A46769A46769FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF9A9A9AA6
            A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6FF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FF96655EFFFBD1FADEB4F8D9A6F4D197F3CB8AF0C7
            81F0C781FCD5869F6F60FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF9C9C9CF7
            F7F7E9E9E9E3E3E3DBDBDBD5D5D5D0D0D0D0D0D0D7D7D7A1A1A1FF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FF9A685EFFF3D9F2D9BBF2D4AFEECCA1015503EAC0
            89E7BC80F3C9829F6F60FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF9E9E9EFA
            FAFAE9E9E9E4E4E4DDDDDD6C6C6CD1D1D1CCCCCCD2D2D2A1A1A1FF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FF9F6C5FFFFBE9F4E0C6F3DABA0155032CC5580155
            03EAC187F3CA819F6F60FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFA0A0A0FF
            FFFFEFEFEFE9E9E96C6C6CBDBDBD6C6C6CD0D0D0D1D1D1A1A1A1FF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFA57060FFFFF8F7E5D401550330BD5741E07522B6
            3E015503F4CE8A9F6F60FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFA3A3A3FF
            FFFFF5F5F56C6C6CBCBCBCD3D3D3B1B1B16C6C6CD6D6D6A1A1A1FF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFAC7562FFFFFF015503067F141A922F27BB45149A
            260C88160155039F6F60FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFA7A7A7FF
            FFFF6C6C6C8585859D9D9DB6B6B69C9C9C8E8E8E6C6C6CA1A1A1FF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFB47A63FFFFFFFCF7F2FAEEE301550315A5280155
            03F2D3ACFBDCA79F6F60FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFAAAAAAFF
            FFFFFFFFFFFCFCFC6B6B6BA1A1A16C6C6CE3E3E3E5E5E5A1A1A1FF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFBB7F64FFFFFFFFFEFEFEF7F20360070996130155
            03FBE6C4EEDCB29F6F60FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFAEAEAEFF
            FFFFFFFFFFFFFFFF7474749191916C6C6CF0F0F0E4E4E4A1A1A1FF00FF92635D
            A46769A46769A46769A46769A46769A46769FFFFFF036E0704780A058C0D0155
            03CBA693AC8E84A16B6DFF00FF9090909C9C9C9C9C9C9C9C9C9C9C9C9C9C9C9C
            9C9CFFFFFF7B7B7B8080808A8A8A6C6C6CCACACAB7B7B7A7A7A7FF00FF97675E
            FFEBC4F7DCB4F4D7AAF4D4A3E6BD9301550301550301770705840C026606DAC1
            BBA96A54D98A409F675BFF00FF929292E8E8E8DEDEDED9D9D9D6D6D6CACACA6C
            6C6C6C6C6C7C7C7C868686757575E0E0E09F9F9FA8A8A89E9E9EFF00FFA06D60
            FBEACEDD9644DD9644DD9644E2BD99A46769FFFFFFFFFFFFFFFFFFFFFFFFD8C5
            C79F675BE09A5BFF00FFFF00FF979797EAEAEAA3A3A3A3A3A3A3A3A3CBCBCB9C
            9C9CFFFFFFFFFFFFFFFFFFFFFFFFE3E3E39E9E9EB8B8B8FF00FFFF00FFAA7462
            FCF0DCF6E2CAF4DDC0F4D9B7E6C2A4A46769CF8E68CF8E68CF8E68CF8E68CF8E
            689F675BFF00FFFF00FFFF00FF9C9C9CF0F0F0E7E7E7E2E2E2DFDFDFD1D1D19C
            9C9CB8B8B8B8B8B8B8B8B8B8B8B8B8B8B89E9E9EFF00FFFF00FFFF00FFB57B64
            FEF7EBDD9644DD9644FBE9CCE3CAB1A46769FF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFA1A1A1F5F5F5A3A3A3A3A3A3EAEAEAD6D6D69C
            9C9CFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFC08266
            FFFEF8FBF0E5FAEFDEA46769A46769A46769FF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFA7A7A7F5F5F5F3F3F3F0F0F09C9C9C9C9C9C9C
            9C9CFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFC98967
            FFFFFFFFFFFEFEFBF7A46769E09A5BFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFABABABF5F5F5F5F5F5F5F5F59C9C9CAEAEAEFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFCF8E68
            CF8E68CF8E68CF8E68A46769FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFAEAEAEAEAEAEAEAEAEAEAEAE9C9C9CFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
          Margin = 5
          NumGlyphs = 2
          TabOrder = 2
          OnClick = BtnAdicionarCargaClick
        end
        object BtnNovoCarga: TCBitBtn
          Left = 9
          Top = 104
          Width = 75
          Height = 25
          Caption = '&Novo'
          Glyph.Data = {
            36060000424D3606000000000000360000002800000020000000100000000100
            18000000000000060000120B0000120B00000000000000000000FF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFCC6701CC6701
            CC6701CC6701CC6701CC6701CC6701CC6701CC6701FF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FF98989898989898989898989898989898989898989898
            9898989898FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFFFEFCFFFBF7
            FEF8F0FFF5E8FFF0E1FEEDD9FEEAD2FEE7CCCC6701FF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEA
            EAEA989898FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFFFEFDFFFCF9
            FFF9F3FFF6ECFFF2E4FEEEDCFEEBD4FEE8CDCC6701FF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEA
            EAEA989898FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFFFFFFFFFDFB
            FFFAF5FEF7EEFEF4E6FEF0DEFEECD7FEE9D0CC6701FF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEA
            EAEA989898FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF993300993300
            993300993300993300993300993300993300993300993300993300CC6701FF00
            FF006600FF00FFFF00FF7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E
            7E7E7E7E7E7E7E7E7E7E7E989898FF00FF656565FF00FFFF00FFFFFFFEFFFCFA
            FFFBF5FFF8F0FEF5EAFFF2E4FEEFDEFEEDD8FEEAD3FEE8CDFEE6C9CC6701FF00
            FF006600006600FF00FFEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEA
            EAEAEAEAEAEAEAEAEAEAEA838383FF00FF656565656565FF00FFFFFEFEFFFDFB
            FEFBF6FFF9F2FFF6ECFFF3E6FEF1E0FFEEDAFEEBD4FEE8CFFEE6CACC6701FF00
            FF00660066FE9A006600EAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEA
            EAEAEAEAEAEAEAEAEAEAEA838383FF00FF656565E4E4E4656565FFFFFFFFFDFC
            FFFBF8FFF9F3FEF7EDFFF4E7FFF1E2FEEEDCFEEBD5FEE9D0FEE7CBCC6701FF00
            FF006600006600FF00FFEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEA
            EAEAEAEAEAEAEAEAEAEAEA838383FF00FF656565656565FF00FF993300993300
            993300993300993300993300993300993300993300993300993300CC6701FF00
            FF006600FF00FFFF00FF7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E
            7E7E7E7E7E7E7E7E7E7E7E989898FF00FF656565FF00FFFF00FFFFFFFFFFFDFB
            FFFAF5FFF7EDFFF2E5FFEFDCFEEBD4FEE8CCCC6701FF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEA
            EAEA989898FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFFFFFFFFFEFE
            FFFBF8FFF8F0FFF4E8FEF0DFFFECD7FEE8D0CC6701FF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEA
            EAEA989898FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFFFFFFFFFFFF
            FFFDFAFFFAF4FEF6ECFEF2E4FEEEDAFEEBD2CC6701FF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEA
            EAEA989898FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFCC6701CC6701
            CC6701CC6701CC6701CC6701CC6701CC6701CC6701FF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FF98989898989898989898989898989898989898989898
            9898989898FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
          Margin = 5
          NumGlyphs = 2
          Spacing = 5
          TabOrder = 3
          OnClick = BtnAdicionarCargaClick
        end
      end
      object CGroupBox33: TCGroupBox
        Left = 577
        Top = 244
        Width = 92
        Height = 191
        TabOrder = 6
        object BtnAdicionarPeri: TCBitBtn
          Left = 9
          Top = 11
          Width = 75
          Height = 25
          Caption = '&Adicionar'
          Glyph.Data = {
            36060000424D3606000000000000360000002800000020000000100000000100
            18000000000000060000120B0000120B00000000000000000000FF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFBD4C00BD4C00
            BD4C00BD4C00BD4C00BD4C00BD4C00BD4C00BD4C00BD4C00BD4C00BD4C00BD4C
            00BD4C00BD4C00BD4C00A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7
            A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7BD4C00FFEDD9
            FFEAD3FFE7CE811E00FEE1C0FEDDBBFEDAB4811E00FED5A9FED3A4FFD09F811E
            00FECC98FECB96BD4C00A7A7A7F5F5F5F5F5F5F5F5F5959595F5F5F5F5F5F5F4
            F4F4959595F0F0F0EFEFEFEEEEEE8B8B8BEBEBEBEBEBEBA7A7A7BD4C00FFEFDE
            FFEDD8FEEAD1811E00FEE3C5FEE0C0FEDDB8811E00FED8ACFED4A9FFD3A3811E
            00FECF9AFECC98BD4C00A7A7A7F5F5F5F5F5F5F5F5F5959595F5F5F5F5F5F5F5
            F5F5959595F2F2F2F0F0F0EFEFEF8B8B8BECECECEBEBEBA7A7A7BD4C00FFF0E2
            FEEEDDFEEBD7811E00FEE5CAFEE2C2FEDEBD811E00FEDAB2FED5ABFED4A7811E
            00FFD09EFECE99BD4C00A7A7A7F5F5F5F5F5F5F5F5F5959595F5F5F5F5F5F5F5
            F5F5959595F3F3F3F1F1F1F0F0F08B8B8BEEEEEEECECECA7A7A7BD4C00811E00
            811E00811E00811E00811E00811E00811E00811E00811E00811E00811E00811E
            00811E00811E00BD4C00A7A7A795959595959595959595959595959595959595
            9595959595959595959595959595959595959595959595A7A7A7BD4C00FFF6ED
            FFF3E6FFEFE1811E00FFEAD4FFE7CEFEE5C6811E00FEDEBBFEDAB5FFD8AF811E
            00FED3A5FED0A0BD4C00A7A7A7F5F5F5F5F5F5F5F5F5959595F5F5F5F5F5F5F5
            F5F5959595F5F5F5F4F4F4F2F2F2959595F0F0F0EEEEEEA7A7A7BD4C00FFF8F0
            FFF6EAFFF3E5811E00FFEDD9FFEAD3FFE6CC811E00FEE1BFFFDDB8FED9B2811E
            00FED4A7FFD3A4BD4C00A7A7A7F5F5F5F5F5F5F5F5F5959595F5F5F5F5F5F5F5
            F5F5959595F5F5F5F5F5F5F3F3F3959595F0F0F0F0F0F0A7A7A7BD4C00FFFAF3
            FFF7EEFFF6EA811E00FEEFDDFFEBD7FFE9D0811E00FFE2C5FFE0BDFEDDB8811E
            00FED7ACFED4A6BD4C00A7A7A7F5F5F5F5F5F5F5F5F5959595F5F5F5F5F5F5F5
            F5F5959595F5F5F5F5F5F5F5F5F5959595F2F2F2F0F0F0A7A7A7BD4C00811E00
            811E00811E00811E00811E00811E00811E00811E00811E00811E00811E00811E
            00811E00811E00BD4C00A7A7A795959595959595959595959595959595959595
            9595959595959595959595959595959595959595959595A7A7A7BD4C00FFFCFA
            FFFAF6FFF8F2811E00FFF4E7FFF0E1FFEDDA811E00FFE7CEFFE3C7FFE1C1811E
            00FEDAB5FED9AFBD4C00A7A7A7F5F5F5F5F5F5F5F5F5959595F5F5F5F5F5F5F5
            F5F58B8B8BF5F5F5F5F5F5F5F5F5959595F4F4F4F2F2F2A7A7A7BD4C00FFFFFC
            FFFCF8FFFAF6811E00FFF6EAFEF3E6FFF0DE811E00FFEAD3FFE6CCFEE3C6811E
            00FEDDBAFEDAB4BD4C00A7A7A7F5F5F5F5F5F5F5F5F5959595F5F5F5F5F5F5F5
            F5F58B8B8BF5F5F5F5F5F5F5F5F5959595F5F5F5F4F4F4A7A7A7BD4C00FFFFFF
            FFFEFCFFFCF8811E00FEF7EFFFF4EAFFF2E3811E00FFEDD7FFE9D1FFE6CB811E
            00FEE0BDFFDDB8BD4C00A7A7A7F5F5F5F5F5F5F5F5F5959595F5F5F5F5F5F5F5
            F5F58B8B8BF5F5F5F5F5F5F5F5F5959595F5F5F5F5F5F5A7A7A7BD4C00BD4C00
            BD4C00BD4C00BD4C00BD4C00BD4C00BD4C00BD4C00BD4C00BD4C00BD4C00BD4C
            00BD4C00BD4C00BD4C00A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7
            A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7BD4C00BD4C00
            BD4C00BD4C00BD4C00BD4C00BD4C00BD4C00BD4C00BD4C00BD4C00BD4C00BD4C
            00BD4C00BD4C00BD4C00A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7
            A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7FF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
          Margin = 5
          NumGlyphs = 2
          TabOrder = 0
          OnClick = BtnAdicionarPeriClick
        end
        object BtnCancelarPeri: TCBitBtn
          Left = 9
          Top = 42
          Width = 75
          Height = 25
          Caption = '&Cancelar'
          Glyph.Data = {
            36060000424D3606000000000000360000002800000020000000100000000100
            18000000000000060000120B0000120B00000000000000000000FF00FFFF00FF
            FF00FFFF00FFFF00FF05720A05720A05720A05720A05720A05720A05720A0572
            0A05720A05720A05720AFF00FFFF00FFFF00FFFF00FFFF00FFAAAAAAAAAAAAAA
            AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA7F7AB88384
            B88384B88384B8838405720AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFF05720AAFAFAFB7B7B7B7B7B7B7B7B7B7B7B7AAAAAAF5F5F5F5
            F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5AAAAAAAD827BFCEBCE
            F7DFBFF4DAB3F3D6AB05720AFFFFFFFFFFFF006600006600006600FFFFFFFFFF
            FFFFFFFFFFFFFF05720AB1B1B1EAEAEAE3E3E3DDDDDDDADADAAAAAAAF5F5F5F5
            F5F5959595959595959595F5F5F5F5F5F5F5F5F5F5F5F5AAAAAAB1857CFDEDD5
            F5DFC5F4DBBBF2D7B205720AFFFFFFFFFFFFFFFFFFFFFFFF077D0E006600F3F8
            F4FFFFFFFFFFFF05720AB2B2B2EDEDEDE4E4E4E0E0E0DCDCDCAAAAAAF5F5F5F5
            F5F5F5F5F5F5F5F59F9F9F959595F5F5F5F5F5F5F5F5F5AAAAAAB6897EFEF2DE
            F7E5CEF5E0C5F4DCBC05720AFFFFFFFFFFFFFFFFFFFFFFFF2B9733006600FFFF
            FFFFFFFFFFFFFF05720AB5B5B5F0F0F0E8E8E8E4E4E4E1E1E1AAAAAAF5F5F5F5
            F5F5F5F5F5F5F5F5B5B5B5959595F5F5F5F5F5F5F5F5F5AAAAAABA8D80FFF7E8
            F8E8D6F6E4CDF5E0C405720AFFFFFFFFFFFF00660000660024902E19A32B0066
            00006600FFFFFF05720AB7B7B7F4F4F4EBEBEBE7E7E7E3E3E3AAAAAAF5F5F5F5
            F5F5959595959595B0B0B0B3B3B3959595959595F5F5F5AAAAAABF9183FFFCF2
            F9EDDFF7E8D6F6E4CD05720AFFFFFFFFFFFF006600168B233DBE5F3AC95B199D
            29006600FFFFFF05720ABABABAF5F5F5EFEFEFEAEAEAE7E7E7AAAAAAF5F5F5F5
            F5F5959595A9A9A9C9C9C9CBCBCBB1B1B1959595F5F5F5AAAAAAC49685FFFFFC
            FAF1E8F9ECDEF8E8D505720AFFFFFFFFFFFFFFFFFF00660033AF5053E0810066
            00FFFFFFFFFFFF05720ABCBCBCF5F5F5F2F2F2EEEEEEEAEAEAAAAAAAF5F5F5F5
            F5F5F5F5F5959595C0C0C0DCDCDC959595F5F5F5F5F5F5AAAAAAC99B87FFFFFF
            FDF7F2FBF1E8FAEEDF05720AFFFFFFFFFFFFFFFFFFFFFFFF006600006600FFFF
            FFFFFFFFFFFFFF05720ABFBFBFF5F5F5F5F5F5F2F2F2EFEFEFAAAAAAF5F5F5F5
            F5F5F5F5F5F5F5F5959595959595F5F5F5F5F5F5F5F5F5AAAAAACD9E8AFFFFFF
            FFFCFBFEF7F1FBF2E705720AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFF05720AC1C1C1F5F5F5F5F5F5F5F5F5F2F2F2AAAAAAF5F5F5F5
            F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5AAAAAAD1A38BFFFFFF
            FFFFFFFFFDFBFDF7F105720A05720A05720A05720A05720A05720A05720A0572
            0A05720A05720A05720AC3C3C3F5F5F5F5F5F5F5F5F5F5F5F5AAAAAAAAAAAAAA
            AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAD6A78DFFFFFF
            FFFFFFFFFFFFFFFDFBFDF7F1FBF1E6FAEDDEFDF0DDEADDCAC7BFB0B88384FF00
            FFFF00FFFF00FFFF00FFC5C5C5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F1F1F1EF
            EFEFEFEFEFE2E2E2CCCCCCB7B7B7FF00FFFF00FFFF00FFFF00FFD9AA8FFFFFFF
            FFFFFFFFFFFFFFFFFFFEFDFBFDF8F0FBF3E7B88384B88384B88384B88384FF00
            FFFF00FFFF00FFFF00FFC7C7C7F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F2
            F2F2B7B7B7B7B7B7B7B7B7B7B7B7FF00FFFF00FFFF00FFFF00FFDDAC91FFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFDF7F0ECB88384E9B676F3AE52CA8A6AFF00
            FFFF00FFFF00FFFF00FFC9C9C9F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F2
            F2F2B7B7B7C4C4C4BBBBBBB5B5B5FF00FFFF00FFFF00FFFF00FFDFAF92FFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFAFEB88384EBB87AD09877FF00FFFF00
            FFFF00FFFF00FFFF00FFCACACAF5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5
            F5F5B7B7B7C6C6C6BBBBBBFF00FFFF00FFFF00FFFF00FFFF00FFDBA685DBA685
            DBA685DBA685DBA685DBA685DBA685DBA685B88384CA9784FF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFC4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4
            C4C4B7B7B7BEBEBEFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
          Margin = 5
          NumGlyphs = 2
          TabOrder = 1
          OnClick = BtnAdicionarPeriClick
        end
        object BtnRetirarPeri: TCBitBtn
          Left = 9
          Top = 73
          Width = 75
          Height = 25
          Caption = '&Retirar'
          Glyph.Data = {
            36060000424D3606000000000000360000002800000020000000100000000100
            18000000000000060000120B0000120B00000000000000000000FF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FF92635DA46769A46769A46769A46769A46769A467
            69A46769A46769A46769FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF9A9A9AA6
            A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6FF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FF96655EFFFBD1FADEB4F8D9A6F4D197F3CB8AF0C7
            81F0C781FCD5869F6F60FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF9C9C9CF7
            F7F7E9E9E9E3E3E3DBDBDBD5D5D5D0D0D0D0D0D0D7D7D7A1A1A1FF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FF9A685EFFF3D9F2D9BBF2D4AFEECCA1015503EAC0
            89E7BC80F3C9829F6F60FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF9E9E9EFA
            FAFAE9E9E9E4E4E4DDDDDD6C6C6CD1D1D1CCCCCCD2D2D2A1A1A1FF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FF9F6C5FFFFBE9F4E0C6F3DABA0155032CC5580155
            03EAC187F3CA819F6F60FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFA0A0A0FF
            FFFFEFEFEFE9E9E96C6C6CBDBDBD6C6C6CD0D0D0D1D1D1A1A1A1FF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFA57060FFFFF8F7E5D401550330BD5741E07522B6
            3E015503F4CE8A9F6F60FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFA3A3A3FF
            FFFFF5F5F56C6C6CBCBCBCD3D3D3B1B1B16C6C6CD6D6D6A1A1A1FF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFAC7562FFFFFF015503067F141A922F27BB45149A
            260C88160155039F6F60FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFA7A7A7FF
            FFFF6C6C6C8585859D9D9DB6B6B69C9C9C8E8E8E6C6C6CA1A1A1FF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFB47A63FFFFFFFCF7F2FAEEE301550315A5280155
            03F2D3ACFBDCA79F6F60FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFAAAAAAFF
            FFFFFFFFFFFCFCFC6B6B6BA1A1A16C6C6CE3E3E3E5E5E5A1A1A1FF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFBB7F64FFFFFFFFFEFEFEF7F20360070996130155
            03FBE6C4EEDCB29F6F60FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFAEAEAEFF
            FFFFFFFFFFFFFFFF7474749191916C6C6CF0F0F0E4E4E4A1A1A1FF00FF92635D
            A46769A46769A46769A46769A46769A46769FFFFFF036E0704780A058C0D0155
            03CBA693AC8E84A16B6DFF00FF9090909C9C9C9C9C9C9C9C9C9C9C9C9C9C9C9C
            9C9CFFFFFF7B7B7B8080808A8A8A6C6C6CCACACAB7B7B7A7A7A7FF00FF97675E
            FFEBC4F7DCB4F4D7AAF4D4A3E6BD9301550301550301770705840C026606DAC1
            BBA96A54D98A409F675BFF00FF929292E8E8E8DEDEDED9D9D9D6D6D6CACACA6C
            6C6C6C6C6C7C7C7C868686757575E0E0E09F9F9FA8A8A89E9E9EFF00FFA06D60
            FBEACEDD9644DD9644DD9644E2BD99A46769FFFFFFFFFFFFFFFFFFFFFFFFD8C5
            C79F675BE09A5BFF00FFFF00FF979797EAEAEAA3A3A3A3A3A3A3A3A3CBCBCB9C
            9C9CFFFFFFFFFFFFFFFFFFFFFFFFE3E3E39E9E9EB8B8B8FF00FFFF00FFAA7462
            FCF0DCF6E2CAF4DDC0F4D9B7E6C2A4A46769CF8E68CF8E68CF8E68CF8E68CF8E
            689F675BFF00FFFF00FFFF00FF9C9C9CF0F0F0E7E7E7E2E2E2DFDFDFD1D1D19C
            9C9CB8B8B8B8B8B8B8B8B8B8B8B8B8B8B89E9E9EFF00FFFF00FFFF00FFB57B64
            FEF7EBDD9644DD9644FBE9CCE3CAB1A46769FF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFA1A1A1F5F5F5A3A3A3A3A3A3EAEAEAD6D6D69C
            9C9CFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFC08266
            FFFEF8FBF0E5FAEFDEA46769A46769A46769FF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFA7A7A7F5F5F5F3F3F3F0F0F09C9C9C9C9C9C9C
            9C9CFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFC98967
            FFFFFFFFFFFEFEFBF7A46769E09A5BFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFABABABF5F5F5F5F5F5F5F5F59C9C9CAEAEAEFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFCF8E68
            CF8E68CF8E68CF8E68A46769FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFAEAEAEAEAEAEAEAEAEAEAEAE9C9C9CFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
          Margin = 5
          NumGlyphs = 2
          TabOrder = 2
          OnClick = BtnAdicionarPeriClick
        end
        object BtnNovoPeri: TCBitBtn
          Left = 9
          Top = 104
          Width = 75
          Height = 25
          Caption = '&Novo'
          Glyph.Data = {
            36060000424D3606000000000000360000002800000020000000100000000100
            18000000000000060000120B0000120B00000000000000000000FF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFCC6701CC6701
            CC6701CC6701CC6701CC6701CC6701CC6701CC6701FF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FF98989898989898989898989898989898989898989898
            9898989898FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFFFEFCFFFBF7
            FEF8F0FFF5E8FFF0E1FEEDD9FEEAD2FEE7CCCC6701FF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEA
            EAEA989898FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFFFEFDFFFCF9
            FFF9F3FFF6ECFFF2E4FEEEDCFEEBD4FEE8CDCC6701FF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEA
            EAEA989898FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFFFFFFFFFDFB
            FFFAF5FEF7EEFEF4E6FEF0DEFEECD7FEE9D0CC6701FF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEA
            EAEA989898FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF993300993300
            993300993300993300993300993300993300993300993300993300CC6701FF00
            FF006600FF00FFFF00FF7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E
            7E7E7E7E7E7E7E7E7E7E7E989898FF00FF656565FF00FFFF00FFFFFFFEFFFCFA
            FFFBF5FFF8F0FEF5EAFFF2E4FEEFDEFEEDD8FEEAD3FEE8CDFEE6C9CC6701FF00
            FF006600006600FF00FFEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEA
            EAEAEAEAEAEAEAEAEAEAEA838383FF00FF656565656565FF00FFFFFEFEFFFDFB
            FEFBF6FFF9F2FFF6ECFFF3E6FEF1E0FFEEDAFEEBD4FEE8CFFEE6CACC6701FF00
            FF00660066FE9A006600EAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEA
            EAEAEAEAEAEAEAEAEAEAEA838383FF00FF656565E4E4E4656565FFFFFFFFFDFC
            FFFBF8FFF9F3FEF7EDFFF4E7FFF1E2FEEEDCFEEBD5FEE9D0FEE7CBCC6701FF00
            FF006600006600FF00FFEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEA
            EAEAEAEAEAEAEAEAEAEAEA838383FF00FF656565656565FF00FF993300993300
            993300993300993300993300993300993300993300993300993300CC6701FF00
            FF006600FF00FFFF00FF7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E
            7E7E7E7E7E7E7E7E7E7E7E989898FF00FF656565FF00FFFF00FFFFFFFFFFFDFB
            FFFAF5FFF7EDFFF2E5FFEFDCFEEBD4FEE8CCCC6701FF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEA
            EAEA989898FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFFFFFFFFFEFE
            FFFBF8FFF8F0FFF4E8FEF0DFFFECD7FEE8D0CC6701FF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEA
            EAEA989898FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFFFFFFFFFFFF
            FFFDFAFFFAF4FEF6ECFEF2E4FEEEDAFEEBD2CC6701FF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEA
            EAEA989898FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFCC6701CC6701
            CC6701CC6701CC6701CC6701CC6701CC6701CC6701FF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FF98989898989898989898989898989898989898989898
            9898989898FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
          Margin = 5
          NumGlyphs = 2
          Spacing = 5
          TabOrder = 3
          OnClick = BtnAdicionarPeriClick
        end
      end
      object CGroupBox32: TCGroupBox
        Left = 13
        Top = 333
        Width = 558
        Height = 102
        TabOrder = 5
        object CDBGrid8: TCDBGrid
          Left = 7
          Top = 14
          Width = 535
          Height = 79
          TabStop = False
          DataSource = dsCTePeri
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection]
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          UtilizaOrdenar = False
          Columns = <
            item
              Expanded = False
              FieldName = 'nrONU'
              Title.Caption = 'Nr. ONU'
              Width = 64
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'descNomeProduto'
              Title.Caption = 'Produto'
              Width = 250
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'descClasseRisco'
              Title.Caption = 'Classe Risco'
              Width = 65
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'grupoEmbalagem'
              Title.Caption = 'Grp.Emb.'
              Width = 50
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'qtProduto'
              Title.Caption = 'Qt.Produto'
              Width = 80
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'qtVolume'
              Title.Caption = 'Qt. Volume'
              Width = 150
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'pontoFulgor'
              Title.Caption = 'Pt. Fulgor'
              Width = 55
              Visible = True
            end>
        end
      end
      object CGroupBox31: TCGroupBox
        Left = 13
        Top = 244
        Width = 558
        Height = 85
        Caption = 'Produtos perigosos'
        TabOrder = 4
        object CLabel72: TCLabel
          Left = 11
          Top = 62
          Width = 68
          Height = 13
          Alignment = taRightJustify
          Caption = 'Nome Produto'
        end
        object CLabel85: TCLabel
          Left = 151
          Top = 18
          Width = 59
          Height = 13
          Alignment = taRightJustify
          Caption = 'Classe Risco'
        end
        object CLabel70: TCLabel
          Left = 17
          Top = 18
          Width = 62
          Height = 13
          Alignment = taRightJustify
          Caption = 'N'#250'mero ONU'
        end
        object CLabel87: TCLabel
          Left = 323
          Top = 18
          Width = 56
          Height = 13
          Alignment = taRightJustify
          Caption = 'Grupo Emb.'
        end
        object CLabel88: TCLabel
          Left = 10
          Top = 40
          Width = 69
          Height = 13
          Alignment = taRightJustify
          Caption = 'Qtde. Produto'
        end
        object CLabel89: TCLabel
          Left = 215
          Top = 40
          Width = 49
          Height = 13
          Alignment = taRightJustify
          Caption = 'Qtde. Vol.'
        end
        object CLabel91: TCLabel
          Left = 438
          Top = 18
          Width = 61
          Height = 13
          Alignment = taRightJustify
          Caption = 'Ponto Fulgor'
        end
        object DBEdescClasseRisco: TCDBEdit
          Left = 216
          Top = 15
          Width = 101
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'descClasseRisco'
          DataSource = dsCTePeri
          TabOrder = 1
          OnDblClick = DBEqtCargaDblClick
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEdescNomeProduto: TCDBEdit
          Left = 85
          Top = 59
          Width = 467
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'descNomeProduto'
          DataSource = dsCTePeri
          TabOrder = 6
          OnDblClick = DBEqtCargaDblClick
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEnrONU: TCDBEdit
          Left = 85
          Top = 15
          Width = 60
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'nrONU'
          DataSource = dsCTePeri
          TabOrder = 0
          OnDblClick = DBEqtCargaDblClick
          OnExit = DBEnrONUExit
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEgrupoEmbalagem: TCDBEdit
          Left = 385
          Top = 15
          Width = 47
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'grupoEmbalagem'
          DataSource = dsCTePeri
          TabOrder = 2
          OnDblClick = DBEqtCargaDblClick
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEqtProduto: TCDBEdit
          Left = 85
          Top = 37
          Width = 124
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'qtProduto'
          DataSource = dsCTePeri
          TabOrder = 4
          OnDblClick = DBEqtCargaDblClick
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEqtVolume: TCDBEdit
          Left = 271
          Top = 37
          Width = 105
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'qtVolume'
          DataSource = dsCTePeri
          TabOrder = 5
          OnDblClick = DBEqtCargaDblClick
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEpontoFulgor: TCDBEdit
          Left = 505
          Top = 15
          Width = 47
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'pontoFulgor'
          DataSource = dsCTePeri
          TabOrder = 3
          OnDblClick = DBEqtCargaDblClick
          DecimalControl = True
          KeyMode = kmNormal
        end
      end
      object CGroupBox16: TCGroupBox
        Left = 13
        Top = 138
        Width = 558
        Height = 102
        TabOrder = 2
        object CDBGrid2: TCDBGrid
          Left = 7
          Top = 14
          Width = 535
          Height = 79
          TabStop = False
          DataSource = dsCTeCarga
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection]
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          UtilizaOrdenar = False
          Columns = <
            item
              Expanded = False
              FieldName = 'idProdMedida'
              Title.Caption = 'C'#243'd.'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'descProdMedida'
              Title.Caption = 'Descri'#231#227'o'
              Width = 165
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'qtCarga'
              Title.Caption = 'Qtde. Carga'
              Width = 80
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'descTipoMedida'
              Title.Caption = 'Descri'#231#227'o'
              Width = 190
              Visible = True
            end>
        end
      end
      object CGroupBox13: TCGroupBox
        Left = 13
        Top = 72
        Width = 558
        Height = 64
        Caption = 'Quantidades da Carga'
        TabOrder = 1
        object CLabel46: TCLabel
          Left = 375
          Top = 18
          Width = 60
          Height = 13
          Alignment = taRightJustify
          Caption = 'Qtde. Carga'
        end
        object CLabel48: TCLabel
          Left = 34
          Top = 40
          Width = 20
          Height = 13
          Alignment = taRightJustify
          Caption = 'Tipo'
        end
        object CLabel49: TCLabel
          Left = 15
          Top = 18
          Width = 39
          Height = 13
          Alignment = taRightJustify
          Caption = 'Unidade'
        end
        object DBEqtCarga: TCDBEdit
          Left = 441
          Top = 15
          Width = 101
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'qtCarga'
          DataSource = dsCTeCarga
          TabOrder = 3
          OnDblClick = DBEqtCargaDblClick
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEdescTipoMedida: TCDBEdit
          Left = 60
          Top = 37
          Width = 355
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'descTipoMedida'
          DataSource = dsCTeCarga
          TabOrder = 4
          OnDblClick = DBEqtCargaDblClick
          DecimalControl = True
          KeyMode = kmNormal
        end
        object LookMedida: TCLookUp
          Left = 121
          Top = 15
          Width = 184
          Height = 19
          Alignment = taLeftJustify
          BevelInner = bvSpace
          BevelOuter = bvLowered
          Color = 14149350
          ParentBackground = False
          TabOrder = 1
          Key.Strings = (
            'idProdMedida')
          LookUpKey.Strings = (
            'idProdMedida')
          ClientDataSet = cdsLookup
          DataSource = dsCTeCarga
          ValidaCampoObrigatorio = True
          CampoObrigatorio = True
          LookUpTable = 'ProdMedida'
          ReturnField = 'descProdMedida'
        end
        object LookAbreviacao: TCLookUp
          Left = 311
          Top = 15
          Width = 58
          Height = 19
          Alignment = taLeftJustify
          BevelInner = bvSpace
          BevelOuter = bvLowered
          Color = 14149350
          ParentBackground = False
          TabOrder = 2
          Key.Strings = (
            'idProdMedida')
          LookUpKey.Strings = (
            'idProdMedida')
          ClientDataSet = cdsLookup
          DataSource = dsCTeCarga
          ValidaCampoObrigatorio = True
          CampoObrigatorio = True
          LookUpTable = 'ProdMedida'
          ReturnField = 'descAbreviada'
        end
        object DBEidProdMedida: TCDBEdit
          Left = 60
          Top = 15
          Width = 55
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'idProdMedida'
          DataSource = dsCTeCarga
          TabOrder = 0
          OnDblClick = DBEidProdMedidaDblClick
          OnExit = DBEidProdMedidaExit
          Find = dmFind.FindMedidaCTe
          DecimalControl = True
          KeyMode = kmNormal
        end
      end
      object CGroupBox12: TCGroupBox
        Left = 13
        Top = 7
        Width = 656
        Height = 61
        Caption = 'Informa'#231#245'es da Carga'
        TabOrder = 0
        object CLabel40: TCLabel
          Left = 502
          Top = 17
          Width = 56
          Height = 13
          Alignment = taRightJustify
          Caption = 'Valor Carga'
        end
        object CLabel34: TCLabel
          Left = 16
          Top = 17
          Width = 95
          Height = 13
          Alignment = taRightJustify
          Caption = 'Prod. Predominante'
        end
        object CLabel38: TCLabel
          Left = 39
          Top = 39
          Width = 72
          Height = 13
          Alignment = taRightJustify
          Caption = 'Outras Caract.'
        end
        object DBEdescOutraCarac: TCDBEdit
          Left = 117
          Top = 36
          Width = 338
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'descOutraCarac'
          DataSource = dsPadrao
          TabOrder = 3
          OnDblClick = DBEforPagDblClick
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEvlCarga: TCDBEdit
          Left = 564
          Top = 14
          Width = 85
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'vlCarga'
          DataSource = dsPadrao
          TabOrder = 2
          OnDblClick = DBEforPagDblClick
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEidProdutoPred: TCDBEdit
          Left = 117
          Top = 14
          Width = 65
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'idProdutoPred'
          DataSource = dsPadrao
          TabOrder = 0
          Find = dmFind.FindProduto
          AcaoCad = frmPrincipal.actCadProduto
          DecimalControl = True
          KeyMode = kmNormal
        end
        object LookProdutoPred: TCLookUp
          Left = 188
          Top = 14
          Width = 308
          Height = 19
          Alignment = taLeftJustify
          BevelInner = bvSpace
          BevelOuter = bvLowered
          Color = 14149350
          ParentBackground = False
          TabOrder = 1
          OnDblClick = LookIdCfopDblClick
          Key.Strings = (
            'idProdutoPred')
          LookUpKey.Strings = (
            'idProduto')
          ClientDataSet = cdsLookup
          DataSource = dsPadrao
          ValidaCampoObrigatorio = False
          CampoObrigatorio = True
          LookUpTable = 'Produto'
          ReturnField = 'descProduto'
        end
      end
    end
    object TabNotas: TTabSheet
      Caption = 'Notas'
      ImageIndex = 3
      object CGroupBox20: TCGroupBox
        Left = 8
        Top = 314
        Width = 528
        Height = 135
        TabOrder = 4
        object CDBGrid5: TCDBGrid
          Left = 9
          Top = 14
          Width = 505
          Height = 107
          TabStop = False
          DataSource = dsCTeNF
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection]
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          UtilizaOrdenar = False
          Columns = <
            item
              Expanded = False
              FieldName = 'serie'
              Title.Caption = 'S'#233'rie'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'nrNF'
              Title.Caption = 'Nr. NF'
              Width = 75
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
              FieldName = 'mod'
              Title.Caption = 'Modelo'
              Width = 40
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'vlNF'
              Title.Caption = 'Valor NF'
              Width = 65
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'vlProduto'
              Title.Caption = 'Valor Prod.'
              Width = 65
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'qtPeso'
              Title.Caption = 'Peso'
              Width = 60
              Visible = True
            end>
        end
      end
      object CGroupBox23: TCGroupBox
        Left = 543
        Top = 314
        Width = 92
        Height = 135
        TabOrder = 5
        object BtnAdicionarNF: TCBitBtn
          Left = 9
          Top = 11
          Width = 75
          Height = 25
          Caption = '&Adicionar'
          Glyph.Data = {
            36060000424D3606000000000000360000002800000020000000100000000100
            18000000000000060000120B0000120B00000000000000000000FF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFBD4C00BD4C00
            BD4C00BD4C00BD4C00BD4C00BD4C00BD4C00BD4C00BD4C00BD4C00BD4C00BD4C
            00BD4C00BD4C00BD4C00A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7
            A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7BD4C00FFEDD9
            FFEAD3FFE7CE811E00FEE1C0FEDDBBFEDAB4811E00FED5A9FED3A4FFD09F811E
            00FECC98FECB96BD4C00A7A7A7F5F5F5F5F5F5F5F5F5959595F5F5F5F5F5F5F4
            F4F4959595F0F0F0EFEFEFEEEEEE8B8B8BEBEBEBEBEBEBA7A7A7BD4C00FFEFDE
            FFEDD8FEEAD1811E00FEE3C5FEE0C0FEDDB8811E00FED8ACFED4A9FFD3A3811E
            00FECF9AFECC98BD4C00A7A7A7F5F5F5F5F5F5F5F5F5959595F5F5F5F5F5F5F5
            F5F5959595F2F2F2F0F0F0EFEFEF8B8B8BECECECEBEBEBA7A7A7BD4C00FFF0E2
            FEEEDDFEEBD7811E00FEE5CAFEE2C2FEDEBD811E00FEDAB2FED5ABFED4A7811E
            00FFD09EFECE99BD4C00A7A7A7F5F5F5F5F5F5F5F5F5959595F5F5F5F5F5F5F5
            F5F5959595F3F3F3F1F1F1F0F0F08B8B8BEEEEEEECECECA7A7A7BD4C00811E00
            811E00811E00811E00811E00811E00811E00811E00811E00811E00811E00811E
            00811E00811E00BD4C00A7A7A795959595959595959595959595959595959595
            9595959595959595959595959595959595959595959595A7A7A7BD4C00FFF6ED
            FFF3E6FFEFE1811E00FFEAD4FFE7CEFEE5C6811E00FEDEBBFEDAB5FFD8AF811E
            00FED3A5FED0A0BD4C00A7A7A7F5F5F5F5F5F5F5F5F5959595F5F5F5F5F5F5F5
            F5F5959595F5F5F5F4F4F4F2F2F2959595F0F0F0EEEEEEA7A7A7BD4C00FFF8F0
            FFF6EAFFF3E5811E00FFEDD9FFEAD3FFE6CC811E00FEE1BFFFDDB8FED9B2811E
            00FED4A7FFD3A4BD4C00A7A7A7F5F5F5F5F5F5F5F5F5959595F5F5F5F5F5F5F5
            F5F5959595F5F5F5F5F5F5F3F3F3959595F0F0F0F0F0F0A7A7A7BD4C00FFFAF3
            FFF7EEFFF6EA811E00FEEFDDFFEBD7FFE9D0811E00FFE2C5FFE0BDFEDDB8811E
            00FED7ACFED4A6BD4C00A7A7A7F5F5F5F5F5F5F5F5F5959595F5F5F5F5F5F5F5
            F5F5959595F5F5F5F5F5F5F5F5F5959595F2F2F2F0F0F0A7A7A7BD4C00811E00
            811E00811E00811E00811E00811E00811E00811E00811E00811E00811E00811E
            00811E00811E00BD4C00A7A7A795959595959595959595959595959595959595
            9595959595959595959595959595959595959595959595A7A7A7BD4C00FFFCFA
            FFFAF6FFF8F2811E00FFF4E7FFF0E1FFEDDA811E00FFE7CEFFE3C7FFE1C1811E
            00FEDAB5FED9AFBD4C00A7A7A7F5F5F5F5F5F5F5F5F5959595F5F5F5F5F5F5F5
            F5F58B8B8BF5F5F5F5F5F5F5F5F5959595F4F4F4F2F2F2A7A7A7BD4C00FFFFFC
            FFFCF8FFFAF6811E00FFF6EAFEF3E6FFF0DE811E00FFEAD3FFE6CCFEE3C6811E
            00FEDDBAFEDAB4BD4C00A7A7A7F5F5F5F5F5F5F5F5F5959595F5F5F5F5F5F5F5
            F5F58B8B8BF5F5F5F5F5F5F5F5F5959595F5F5F5F4F4F4A7A7A7BD4C00FFFFFF
            FFFEFCFFFCF8811E00FEF7EFFFF4EAFFF2E3811E00FFEDD7FFE9D1FFE6CB811E
            00FEE0BDFFDDB8BD4C00A7A7A7F5F5F5F5F5F5F5F5F5959595F5F5F5F5F5F5F5
            F5F58B8B8BF5F5F5F5F5F5F5F5F5959595F5F5F5F5F5F5A7A7A7BD4C00BD4C00
            BD4C00BD4C00BD4C00BD4C00BD4C00BD4C00BD4C00BD4C00BD4C00BD4C00BD4C
            00BD4C00BD4C00BD4C00A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7
            A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7BD4C00BD4C00
            BD4C00BD4C00BD4C00BD4C00BD4C00BD4C00BD4C00BD4C00BD4C00BD4C00BD4C
            00BD4C00BD4C00BD4C00A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7
            A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7FF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
          Margin = 5
          NumGlyphs = 2
          TabOrder = 0
          OnClick = BtnAdicionarNFClick
        end
        object BtnCancelarNF: TCBitBtn
          Left = 9
          Top = 42
          Width = 75
          Height = 25
          Caption = '&Cancelar'
          Glyph.Data = {
            36060000424D3606000000000000360000002800000020000000100000000100
            18000000000000060000120B0000120B00000000000000000000FF00FFFF00FF
            FF00FFFF00FFFF00FF05720A05720A05720A05720A05720A05720A05720A0572
            0A05720A05720A05720AFF00FFFF00FFFF00FFFF00FFFF00FFAAAAAAAAAAAAAA
            AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA7F7AB88384
            B88384B88384B8838405720AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFF05720AAFAFAFB7B7B7B7B7B7B7B7B7B7B7B7AAAAAAF5F5F5F5
            F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5AAAAAAAD827BFCEBCE
            F7DFBFF4DAB3F3D6AB05720AFFFFFFFFFFFF006600006600006600FFFFFFFFFF
            FFFFFFFFFFFFFF05720AB1B1B1EAEAEAE3E3E3DDDDDDDADADAAAAAAAF5F5F5F5
            F5F5959595959595959595F5F5F5F5F5F5F5F5F5F5F5F5AAAAAAB1857CFDEDD5
            F5DFC5F4DBBBF2D7B205720AFFFFFFFFFFFFFFFFFFFFFFFF077D0E006600F3F8
            F4FFFFFFFFFFFF05720AB2B2B2EDEDEDE4E4E4E0E0E0DCDCDCAAAAAAF5F5F5F5
            F5F5F5F5F5F5F5F59F9F9F959595F5F5F5F5F5F5F5F5F5AAAAAAB6897EFEF2DE
            F7E5CEF5E0C5F4DCBC05720AFFFFFFFFFFFFFFFFFFFFFFFF2B9733006600FFFF
            FFFFFFFFFFFFFF05720AB5B5B5F0F0F0E8E8E8E4E4E4E1E1E1AAAAAAF5F5F5F5
            F5F5F5F5F5F5F5F5B5B5B5959595F5F5F5F5F5F5F5F5F5AAAAAABA8D80FFF7E8
            F8E8D6F6E4CDF5E0C405720AFFFFFFFFFFFF00660000660024902E19A32B0066
            00006600FFFFFF05720AB7B7B7F4F4F4EBEBEBE7E7E7E3E3E3AAAAAAF5F5F5F5
            F5F5959595959595B0B0B0B3B3B3959595959595F5F5F5AAAAAABF9183FFFCF2
            F9EDDFF7E8D6F6E4CD05720AFFFFFFFFFFFF006600168B233DBE5F3AC95B199D
            29006600FFFFFF05720ABABABAF5F5F5EFEFEFEAEAEAE7E7E7AAAAAAF5F5F5F5
            F5F5959595A9A9A9C9C9C9CBCBCBB1B1B1959595F5F5F5AAAAAAC49685FFFFFC
            FAF1E8F9ECDEF8E8D505720AFFFFFFFFFFFFFFFFFF00660033AF5053E0810066
            00FFFFFFFFFFFF05720ABCBCBCF5F5F5F2F2F2EEEEEEEAEAEAAAAAAAF5F5F5F5
            F5F5F5F5F5959595C0C0C0DCDCDC959595F5F5F5F5F5F5AAAAAAC99B87FFFFFF
            FDF7F2FBF1E8FAEEDF05720AFFFFFFFFFFFFFFFFFFFFFFFF006600006600FFFF
            FFFFFFFFFFFFFF05720ABFBFBFF5F5F5F5F5F5F2F2F2EFEFEFAAAAAAF5F5F5F5
            F5F5F5F5F5F5F5F5959595959595F5F5F5F5F5F5F5F5F5AAAAAACD9E8AFFFFFF
            FFFCFBFEF7F1FBF2E705720AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFF05720AC1C1C1F5F5F5F5F5F5F5F5F5F2F2F2AAAAAAF5F5F5F5
            F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5AAAAAAD1A38BFFFFFF
            FFFFFFFFFDFBFDF7F105720A05720A05720A05720A05720A05720A05720A0572
            0A05720A05720A05720AC3C3C3F5F5F5F5F5F5F5F5F5F5F5F5AAAAAAAAAAAAAA
            AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAD6A78DFFFFFF
            FFFFFFFFFFFFFFFDFBFDF7F1FBF1E6FAEDDEFDF0DDEADDCAC7BFB0B88384FF00
            FFFF00FFFF00FFFF00FFC5C5C5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F1F1F1EF
            EFEFEFEFEFE2E2E2CCCCCCB7B7B7FF00FFFF00FFFF00FFFF00FFD9AA8FFFFFFF
            FFFFFFFFFFFFFFFFFFFEFDFBFDF8F0FBF3E7B88384B88384B88384B88384FF00
            FFFF00FFFF00FFFF00FFC7C7C7F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F2
            F2F2B7B7B7B7B7B7B7B7B7B7B7B7FF00FFFF00FFFF00FFFF00FFDDAC91FFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFDF7F0ECB88384E9B676F3AE52CA8A6AFF00
            FFFF00FFFF00FFFF00FFC9C9C9F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F2
            F2F2B7B7B7C4C4C4BBBBBBB5B5B5FF00FFFF00FFFF00FFFF00FFDFAF92FFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFAFEB88384EBB87AD09877FF00FFFF00
            FFFF00FFFF00FFFF00FFCACACAF5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5
            F5F5B7B7B7C6C6C6BBBBBBFF00FFFF00FFFF00FFFF00FFFF00FFDBA685DBA685
            DBA685DBA685DBA685DBA685DBA685DBA685B88384CA9784FF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFC4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4
            C4C4B7B7B7BEBEBEFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
          Margin = 5
          NumGlyphs = 2
          TabOrder = 1
          OnClick = BtnAdicionarNFClick
        end
        object BtnRetirarNF: TCBitBtn
          Left = 9
          Top = 73
          Width = 75
          Height = 25
          Caption = '&Retirar'
          Glyph.Data = {
            36060000424D3606000000000000360000002800000020000000100000000100
            18000000000000060000120B0000120B00000000000000000000FF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FF92635DA46769A46769A46769A46769A46769A467
            69A46769A46769A46769FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF9A9A9AA6
            A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6FF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FF96655EFFFBD1FADEB4F8D9A6F4D197F3CB8AF0C7
            81F0C781FCD5869F6F60FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF9C9C9CF7
            F7F7E9E9E9E3E3E3DBDBDBD5D5D5D0D0D0D0D0D0D7D7D7A1A1A1FF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FF9A685EFFF3D9F2D9BBF2D4AFEECCA1015503EAC0
            89E7BC80F3C9829F6F60FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF9E9E9EFA
            FAFAE9E9E9E4E4E4DDDDDD6C6C6CD1D1D1CCCCCCD2D2D2A1A1A1FF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FF9F6C5FFFFBE9F4E0C6F3DABA0155032CC5580155
            03EAC187F3CA819F6F60FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFA0A0A0FF
            FFFFEFEFEFE9E9E96C6C6CBDBDBD6C6C6CD0D0D0D1D1D1A1A1A1FF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFA57060FFFFF8F7E5D401550330BD5741E07522B6
            3E015503F4CE8A9F6F60FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFA3A3A3FF
            FFFFF5F5F56C6C6CBCBCBCD3D3D3B1B1B16C6C6CD6D6D6A1A1A1FF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFAC7562FFFFFF015503067F141A922F27BB45149A
            260C88160155039F6F60FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFA7A7A7FF
            FFFF6C6C6C8585859D9D9DB6B6B69C9C9C8E8E8E6C6C6CA1A1A1FF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFB47A63FFFFFFFCF7F2FAEEE301550315A5280155
            03F2D3ACFBDCA79F6F60FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFAAAAAAFF
            FFFFFFFFFFFCFCFC6B6B6BA1A1A16C6C6CE3E3E3E5E5E5A1A1A1FF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFBB7F64FFFFFFFFFEFEFEF7F20360070996130155
            03FBE6C4EEDCB29F6F60FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFAEAEAEFF
            FFFFFFFFFFFFFFFF7474749191916C6C6CF0F0F0E4E4E4A1A1A1FF00FF92635D
            A46769A46769A46769A46769A46769A46769FFFFFF036E0704780A058C0D0155
            03CBA693AC8E84A16B6DFF00FF9090909C9C9C9C9C9C9C9C9C9C9C9C9C9C9C9C
            9C9CFFFFFF7B7B7B8080808A8A8A6C6C6CCACACAB7B7B7A7A7A7FF00FF97675E
            FFEBC4F7DCB4F4D7AAF4D4A3E6BD9301550301550301770705840C026606DAC1
            BBA96A54D98A409F675BFF00FF929292E8E8E8DEDEDED9D9D9D6D6D6CACACA6C
            6C6C6C6C6C7C7C7C868686757575E0E0E09F9F9FA8A8A89E9E9EFF00FFA06D60
            FBEACEDD9644DD9644DD9644E2BD99A46769FFFFFFFFFFFFFFFFFFFFFFFFD8C5
            C79F675BE09A5BFF00FFFF00FF979797EAEAEAA3A3A3A3A3A3A3A3A3CBCBCB9C
            9C9CFFFFFFFFFFFFFFFFFFFFFFFFE3E3E39E9E9EB8B8B8FF00FFFF00FFAA7462
            FCF0DCF6E2CAF4DDC0F4D9B7E6C2A4A46769CF8E68CF8E68CF8E68CF8E68CF8E
            689F675BFF00FFFF00FFFF00FF9C9C9CF0F0F0E7E7E7E2E2E2DFDFDFD1D1D19C
            9C9CB8B8B8B8B8B8B8B8B8B8B8B8B8B8B89E9E9EFF00FFFF00FFFF00FFB57B64
            FEF7EBDD9644DD9644FBE9CCE3CAB1A46769FF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFA1A1A1F5F5F5A3A3A3A3A3A3EAEAEAD6D6D69C
            9C9CFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFC08266
            FFFEF8FBF0E5FAEFDEA46769A46769A46769FF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFA7A7A7F5F5F5F3F3F3F0F0F09C9C9C9C9C9C9C
            9C9CFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFC98967
            FFFFFFFFFFFEFEFBF7A46769E09A5BFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFABABABF5F5F5F5F5F5F5F5F59C9C9CAEAEAEFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFCF8E68
            CF8E68CF8E68CF8E68A46769FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFAEAEAEAEAEAEAEAEAEAEAEAE9C9C9CFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
          Margin = 5
          NumGlyphs = 2
          TabOrder = 2
          OnClick = BtnAdicionarNFClick
        end
        object BtnNovoNF: TCBitBtn
          Left = 9
          Top = 104
          Width = 75
          Height = 25
          Caption = '&Novo'
          Glyph.Data = {
            36060000424D3606000000000000360000002800000020000000100000000100
            18000000000000060000120B0000120B00000000000000000000FF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFCC6701CC6701
            CC6701CC6701CC6701CC6701CC6701CC6701CC6701FF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FF98989898989898989898989898989898989898989898
            9898989898FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFFFEFCFFFBF7
            FEF8F0FFF5E8FFF0E1FEEDD9FEEAD2FEE7CCCC6701FF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEA
            EAEA989898FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFFFEFDFFFCF9
            FFF9F3FFF6ECFFF2E4FEEEDCFEEBD4FEE8CDCC6701FF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEA
            EAEA989898FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFFFFFFFFFDFB
            FFFAF5FEF7EEFEF4E6FEF0DEFEECD7FEE9D0CC6701FF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEA
            EAEA989898FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF993300993300
            993300993300993300993300993300993300993300993300993300CC6701FF00
            FF006600FF00FFFF00FF7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E
            7E7E7E7E7E7E7E7E7E7E7E989898FF00FF656565FF00FFFF00FFFFFFFEFFFCFA
            FFFBF5FFF8F0FEF5EAFFF2E4FEEFDEFEEDD8FEEAD3FEE8CDFEE6C9CC6701FF00
            FF006600006600FF00FFEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEA
            EAEAEAEAEAEAEAEAEAEAEA838383FF00FF656565656565FF00FFFFFEFEFFFDFB
            FEFBF6FFF9F2FFF6ECFFF3E6FEF1E0FFEEDAFEEBD4FEE8CFFEE6CACC6701FF00
            FF00660066FE9A006600EAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEA
            EAEAEAEAEAEAEAEAEAEAEA838383FF00FF656565E4E4E4656565FFFFFFFFFDFC
            FFFBF8FFF9F3FEF7EDFFF4E7FFF1E2FEEEDCFEEBD5FEE9D0FEE7CBCC6701FF00
            FF006600006600FF00FFEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEA
            EAEAEAEAEAEAEAEAEAEAEA838383FF00FF656565656565FF00FF993300993300
            993300993300993300993300993300993300993300993300993300CC6701FF00
            FF006600FF00FFFF00FF7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E
            7E7E7E7E7E7E7E7E7E7E7E989898FF00FF656565FF00FFFF00FFFFFFFFFFFDFB
            FFFAF5FFF7EDFFF2E5FFEFDCFEEBD4FEE8CCCC6701FF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEA
            EAEA989898FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFFFFFFFFFEFE
            FFFBF8FFF8F0FFF4E8FEF0DFFFECD7FEE8D0CC6701FF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEA
            EAEA989898FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFFFFFFFFFFFF
            FFFDFAFFFAF4FEF6ECFEF2E4FEEEDAFEEBD2CC6701FF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEA
            EAEA989898FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFCC6701CC6701
            CC6701CC6701CC6701CC6701CC6701CC6701CC6701FF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FF98989898989898989898989898989898989898989898
            9898989898FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
          Margin = 5
          NumGlyphs = 2
          Spacing = 5
          TabOrder = 3
          OnClick = BtnAdicionarNFClick
        end
      end
      object CGroupBox24: TCGroupBox
        Left = 9
        Top = 202
        Width = 626
        Height = 108
        Caption = 'Nota Fiscal Comum'
        TabOrder = 3
        object CLabel39: TCLabel
          Left = 323
          Top = 86
          Width = 52
          Height = 13
          Alignment = taRightJustify
          Caption = 'Data Prev.'
        end
        object CLabel42: TCLabel
          Left = 46
          Top = 20
          Width = 24
          Height = 13
          Alignment = taRightJustify
          Caption = 'S'#233'rie'
        end
        object CLabel47: TCLabel
          Left = 479
          Top = 84
          Width = 60
          Height = 13
          Alignment = taRightJustify
          Caption = 'PIN Suframa'
        end
        object CLabel50: TCLabel
          Left = 127
          Top = 20
          Width = 28
          Height = 13
          Alignment = taRightJustify
          Caption = 'Nr.NF'
        end
        object CLabel51: TCLabel
          Left = 242
          Top = 20
          Width = 47
          Height = 13
          Alignment = taRightJustify
          Caption = 'Romaneio'
        end
        object CLabel52: TCLabel
          Left = 360
          Top = 20
          Width = 32
          Height = 13
          Alignment = taRightJustify
          Caption = 'Pedido'
        end
        object CLabel53: TCLabel
          Left = 468
          Top = 20
          Width = 64
          Height = 13
          Alignment = taRightJustify
          Caption = 'Data Emiss'#227'o'
        end
        object CLabel54: TCLabel
          Left = 36
          Top = 42
          Width = 34
          Height = 13
          Alignment = taRightJustify
          Caption = 'Modelo'
        end
        object CLabel55: TCLabel
          Left = 268
          Top = 42
          Width = 23
          Height = 13
          Alignment = taRightJustify
          Caption = 'Cfop'
        end
        object CLabel56: TCLabel
          Left = 5
          Top = 86
          Width = 65
          Height = 13
          Alignment = taRightJustify
          Caption = 'Valor Produto'
        end
        object CLabel57: TCLabel
          Left = 252
          Top = 64
          Width = 50
          Height = 13
          Alignment = taRightJustify
          Caption = 'B.ICMS ST'
        end
        object CLabel58: TCLabel
          Left = 153
          Top = 64
          Width = 25
          Height = 13
          Alignment = taRightJustify
          Caption = 'ICMS'
        end
        object CLabel60: TCLabel
          Left = 19
          Top = 64
          Width = 51
          Height = 13
          Alignment = taRightJustify
          Caption = 'Base ICMS'
        end
        object CLabel62: TCLabel
          Left = 388
          Top = 64
          Width = 40
          Height = 13
          Alignment = taRightJustify
          Caption = 'ICMS ST'
        end
        object CLabel63: TCLabel
          Left = 503
          Top = 63
          Width = 28
          Height = 13
          Alignment = taRightJustify
          Caption = 'Vl. NF'
        end
        object CLabel67: TCLabel
          Left = 167
          Top = 86
          Width = 42
          Height = 13
          Alignment = taRightJustify
          Caption = 'Qt. Peso'
        end
        object DBEdtPrevisaoNF: TCDBEdit
          Left = 381
          Top = 83
          Width = 77
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'dtPrevisao'
          DataSource = dsCTeNF
          MaxLength = 10
          TabOrder = 16
          OnDblClick = DBEqtCargaDblClick
          DecimalControl = True
          KeyMode = kmDate
        end
        object DBEserie: TCDBEdit
          Left = 76
          Top = 17
          Width = 45
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'serie'
          DataSource = dsCTeNF
          TabOrder = 0
          OnDblClick = DBEqtCargaDblClick
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEPINNF: TCDBEdit
          Left = 545
          Top = 83
          Width = 66
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'PIN'
          DataSource = dsCTeNF
          TabOrder = 17
          OnDblClick = DBEqtCargaDblClick
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEnrNF: TCDBEdit
          Left = 161
          Top = 17
          Width = 75
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'nrNF'
          DataSource = dsCTeNF
          TabOrder = 1
          OnDblClick = DBEqtCargaDblClick
          OnExit = DBEnrNFExit
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEnrRomaneio: TCDBEdit
          Left = 295
          Top = 17
          Width = 59
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'nrRomaneio'
          DataSource = dsCTeNF
          TabOrder = 2
          OnDblClick = DBEqtCargaDblClick
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEnrPedido: TCDBEdit
          Left = 398
          Top = 17
          Width = 64
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'nrPedido'
          DataSource = dsCTeNF
          TabOrder = 3
          OnDblClick = DBEqtCargaDblClick
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEdtEmissaoNF: TCDBEdit
          Left = 538
          Top = 17
          Width = 73
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'dtEmissao'
          DataSource = dsCTeNF
          MaxLength = 10
          TabOrder = 4
          OnDblClick = DBEqtCargaDblClick
          DecimalControl = True
          KeyMode = kmDate
        end
        object DBEmod: TCDBEdit
          Left = 76
          Top = 39
          Width = 44
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'mod'
          DataSource = dsCTeNF
          TabOrder = 5
          OnDblClick = DBEqtCargaDblClick
          Find = dmFind.FindTrpModeloNF
          DecimalControl = True
          KeyMode = kmNormal
        end
        object CLookUp14: TCLookUp
          Left = 126
          Top = 39
          Width = 136
          Height = 19
          Alignment = taLeftJustify
          BevelInner = bvSpace
          BevelOuter = bvLowered
          Color = 14149350
          ParentBackground = False
          TabOrder = 6
          Key.Strings = (
            'mod')
          LookUpKey.Strings = (
            'mod')
          ClientDataSet = cdsLookup
          DataSource = dsCTeNF
          ValidaCampoObrigatorio = True
          CampoObrigatorio = True
          LookUpTable = 'TrpModeloNF'
          ReturnField = 'descModelo'
        end
        object DBEidCfop: TCDBEdit
          Left = 297
          Top = 39
          Width = 62
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'idCfop'
          DataSource = dsCTeNF
          TabOrder = 7
          OnDblClick = DBEqtCargaDblClick
          Find = dmFind.FindCfop
          DecimalControl = True
          KeyMode = kmNormal
        end
        object LookCfop: TCLookUp
          Left = 365
          Top = 39
          Width = 246
          Height = 19
          Alignment = taLeftJustify
          BevelInner = bvSpace
          BevelOuter = bvLowered
          Color = 14149350
          ParentBackground = False
          TabOrder = 8
          Key.Strings = (
            'idCfop')
          LookUpKey.Strings = (
            'idCfop')
          ClientDataSet = cdsLookup
          DataSource = dsCTeNF
          ValidaCampoObrigatorio = True
          CampoObrigatorio = True
          LookUpTable = 'Cfop'
          ReturnField = 'descCfop'
        end
        object DBEvlBaseIcmsST: TCDBEdit
          Left = 308
          Top = 61
          Width = 74
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'vlBaseIcmsST'
          DataSource = dsCTeNF
          TabOrder = 11
          OnDblClick = DBEqtCargaDblClick
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEvlProduto: TCDBEdit
          Left = 76
          Top = 83
          Width = 74
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'vlProduto'
          DataSource = dsCTeNF
          TabOrder = 14
          OnDblClick = DBEqtCargaDblClick
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEvlICMSNF: TCDBEdit
          Left = 184
          Top = 61
          Width = 62
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'vlICMS'
          DataSource = dsCTeNF
          TabOrder = 10
          OnDblClick = DBEqtCargaDblClick
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEvlBaseIcms: TCDBEdit
          Left = 76
          Top = 61
          Width = 71
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'vlBaseIcms'
          DataSource = dsCTeNF
          TabOrder = 9
          OnDblClick = DBEqtCargaDblClick
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEvlICMSST: TCDBEdit
          Left = 434
          Top = 61
          Width = 62
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'vlICMSST'
          DataSource = dsCTeNF
          TabOrder = 12
          OnDblClick = DBEqtCargaDblClick
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEvlNF: TCDBEdit
          Left = 537
          Top = 60
          Width = 74
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'vlNF'
          DataSource = dsCTeNF
          TabOrder = 13
          OnDblClick = DBEqtCargaDblClick
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEqtPeso: TCDBEdit
          Left = 215
          Top = 83
          Width = 74
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'qtPeso'
          DataSource = dsCTeNF
          TabOrder = 15
          OnDblClick = DBEqtCargaDblClick
          DecimalControl = True
          KeyMode = kmNormal
        end
      end
      object CGroupBox17: TCGroupBox
        Left = 543
        Top = 54
        Width = 92
        Height = 142
        TabOrder = 2
        object BtnAdicionarNFe: TCBitBtn
          Left = 9
          Top = 11
          Width = 75
          Height = 25
          Caption = '&Adicionar'
          Glyph.Data = {
            36060000424D3606000000000000360000002800000020000000100000000100
            18000000000000060000120B0000120B00000000000000000000FF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFBD4C00BD4C00
            BD4C00BD4C00BD4C00BD4C00BD4C00BD4C00BD4C00BD4C00BD4C00BD4C00BD4C
            00BD4C00BD4C00BD4C00A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7
            A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7BD4C00FFEDD9
            FFEAD3FFE7CE811E00FEE1C0FEDDBBFEDAB4811E00FED5A9FED3A4FFD09F811E
            00FECC98FECB96BD4C00A7A7A7F5F5F5F5F5F5F5F5F5959595F5F5F5F5F5F5F4
            F4F4959595F0F0F0EFEFEFEEEEEE8B8B8BEBEBEBEBEBEBA7A7A7BD4C00FFEFDE
            FFEDD8FEEAD1811E00FEE3C5FEE0C0FEDDB8811E00FED8ACFED4A9FFD3A3811E
            00FECF9AFECC98BD4C00A7A7A7F5F5F5F5F5F5F5F5F5959595F5F5F5F5F5F5F5
            F5F5959595F2F2F2F0F0F0EFEFEF8B8B8BECECECEBEBEBA7A7A7BD4C00FFF0E2
            FEEEDDFEEBD7811E00FEE5CAFEE2C2FEDEBD811E00FEDAB2FED5ABFED4A7811E
            00FFD09EFECE99BD4C00A7A7A7F5F5F5F5F5F5F5F5F5959595F5F5F5F5F5F5F5
            F5F5959595F3F3F3F1F1F1F0F0F08B8B8BEEEEEEECECECA7A7A7BD4C00811E00
            811E00811E00811E00811E00811E00811E00811E00811E00811E00811E00811E
            00811E00811E00BD4C00A7A7A795959595959595959595959595959595959595
            9595959595959595959595959595959595959595959595A7A7A7BD4C00FFF6ED
            FFF3E6FFEFE1811E00FFEAD4FFE7CEFEE5C6811E00FEDEBBFEDAB5FFD8AF811E
            00FED3A5FED0A0BD4C00A7A7A7F5F5F5F5F5F5F5F5F5959595F5F5F5F5F5F5F5
            F5F5959595F5F5F5F4F4F4F2F2F2959595F0F0F0EEEEEEA7A7A7BD4C00FFF8F0
            FFF6EAFFF3E5811E00FFEDD9FFEAD3FFE6CC811E00FEE1BFFFDDB8FED9B2811E
            00FED4A7FFD3A4BD4C00A7A7A7F5F5F5F5F5F5F5F5F5959595F5F5F5F5F5F5F5
            F5F5959595F5F5F5F5F5F5F3F3F3959595F0F0F0F0F0F0A7A7A7BD4C00FFFAF3
            FFF7EEFFF6EA811E00FEEFDDFFEBD7FFE9D0811E00FFE2C5FFE0BDFEDDB8811E
            00FED7ACFED4A6BD4C00A7A7A7F5F5F5F5F5F5F5F5F5959595F5F5F5F5F5F5F5
            F5F5959595F5F5F5F5F5F5F5F5F5959595F2F2F2F0F0F0A7A7A7BD4C00811E00
            811E00811E00811E00811E00811E00811E00811E00811E00811E00811E00811E
            00811E00811E00BD4C00A7A7A795959595959595959595959595959595959595
            9595959595959595959595959595959595959595959595A7A7A7BD4C00FFFCFA
            FFFAF6FFF8F2811E00FFF4E7FFF0E1FFEDDA811E00FFE7CEFFE3C7FFE1C1811E
            00FEDAB5FED9AFBD4C00A7A7A7F5F5F5F5F5F5F5F5F5959595F5F5F5F5F5F5F5
            F5F58B8B8BF5F5F5F5F5F5F5F5F5959595F4F4F4F2F2F2A7A7A7BD4C00FFFFFC
            FFFCF8FFFAF6811E00FFF6EAFEF3E6FFF0DE811E00FFEAD3FFE6CCFEE3C6811E
            00FEDDBAFEDAB4BD4C00A7A7A7F5F5F5F5F5F5F5F5F5959595F5F5F5F5F5F5F5
            F5F58B8B8BF5F5F5F5F5F5F5F5F5959595F5F5F5F4F4F4A7A7A7BD4C00FFFFFF
            FFFEFCFFFCF8811E00FEF7EFFFF4EAFFF2E3811E00FFEDD7FFE9D1FFE6CB811E
            00FEE0BDFFDDB8BD4C00A7A7A7F5F5F5F5F5F5F5F5F5959595F5F5F5F5F5F5F5
            F5F58B8B8BF5F5F5F5F5F5F5F5F5959595F5F5F5F5F5F5A7A7A7BD4C00BD4C00
            BD4C00BD4C00BD4C00BD4C00BD4C00BD4C00BD4C00BD4C00BD4C00BD4C00BD4C
            00BD4C00BD4C00BD4C00A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7
            A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7BD4C00BD4C00
            BD4C00BD4C00BD4C00BD4C00BD4C00BD4C00BD4C00BD4C00BD4C00BD4C00BD4C
            00BD4C00BD4C00BD4C00A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7
            A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7FF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
          Margin = 5
          NumGlyphs = 2
          TabOrder = 0
          OnClick = BtnAdicionarNFeClick
        end
        object BtnCancelarNFe: TCBitBtn
          Left = 9
          Top = 42
          Width = 75
          Height = 25
          Caption = '&Cancelar'
          Glyph.Data = {
            36060000424D3606000000000000360000002800000020000000100000000100
            18000000000000060000120B0000120B00000000000000000000FF00FFFF00FF
            FF00FFFF00FFFF00FF05720A05720A05720A05720A05720A05720A05720A0572
            0A05720A05720A05720AFF00FFFF00FFFF00FFFF00FFFF00FFAAAAAAAAAAAAAA
            AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA7F7AB88384
            B88384B88384B8838405720AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFF05720AAFAFAFB7B7B7B7B7B7B7B7B7B7B7B7AAAAAAF5F5F5F5
            F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5AAAAAAAD827BFCEBCE
            F7DFBFF4DAB3F3D6AB05720AFFFFFFFFFFFF006600006600006600FFFFFFFFFF
            FFFFFFFFFFFFFF05720AB1B1B1EAEAEAE3E3E3DDDDDDDADADAAAAAAAF5F5F5F5
            F5F5959595959595959595F5F5F5F5F5F5F5F5F5F5F5F5AAAAAAB1857CFDEDD5
            F5DFC5F4DBBBF2D7B205720AFFFFFFFFFFFFFFFFFFFFFFFF077D0E006600F3F8
            F4FFFFFFFFFFFF05720AB2B2B2EDEDEDE4E4E4E0E0E0DCDCDCAAAAAAF5F5F5F5
            F5F5F5F5F5F5F5F59F9F9F959595F5F5F5F5F5F5F5F5F5AAAAAAB6897EFEF2DE
            F7E5CEF5E0C5F4DCBC05720AFFFFFFFFFFFFFFFFFFFFFFFF2B9733006600FFFF
            FFFFFFFFFFFFFF05720AB5B5B5F0F0F0E8E8E8E4E4E4E1E1E1AAAAAAF5F5F5F5
            F5F5F5F5F5F5F5F5B5B5B5959595F5F5F5F5F5F5F5F5F5AAAAAABA8D80FFF7E8
            F8E8D6F6E4CDF5E0C405720AFFFFFFFFFFFF00660000660024902E19A32B0066
            00006600FFFFFF05720AB7B7B7F4F4F4EBEBEBE7E7E7E3E3E3AAAAAAF5F5F5F5
            F5F5959595959595B0B0B0B3B3B3959595959595F5F5F5AAAAAABF9183FFFCF2
            F9EDDFF7E8D6F6E4CD05720AFFFFFFFFFFFF006600168B233DBE5F3AC95B199D
            29006600FFFFFF05720ABABABAF5F5F5EFEFEFEAEAEAE7E7E7AAAAAAF5F5F5F5
            F5F5959595A9A9A9C9C9C9CBCBCBB1B1B1959595F5F5F5AAAAAAC49685FFFFFC
            FAF1E8F9ECDEF8E8D505720AFFFFFFFFFFFFFFFFFF00660033AF5053E0810066
            00FFFFFFFFFFFF05720ABCBCBCF5F5F5F2F2F2EEEEEEEAEAEAAAAAAAF5F5F5F5
            F5F5F5F5F5959595C0C0C0DCDCDC959595F5F5F5F5F5F5AAAAAAC99B87FFFFFF
            FDF7F2FBF1E8FAEEDF05720AFFFFFFFFFFFFFFFFFFFFFFFF006600006600FFFF
            FFFFFFFFFFFFFF05720ABFBFBFF5F5F5F5F5F5F2F2F2EFEFEFAAAAAAF5F5F5F5
            F5F5F5F5F5F5F5F5959595959595F5F5F5F5F5F5F5F5F5AAAAAACD9E8AFFFFFF
            FFFCFBFEF7F1FBF2E705720AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFF05720AC1C1C1F5F5F5F5F5F5F5F5F5F2F2F2AAAAAAF5F5F5F5
            F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5AAAAAAD1A38BFFFFFF
            FFFFFFFFFDFBFDF7F105720A05720A05720A05720A05720A05720A05720A0572
            0A05720A05720A05720AC3C3C3F5F5F5F5F5F5F5F5F5F5F5F5AAAAAAAAAAAAAA
            AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAD6A78DFFFFFF
            FFFFFFFFFFFFFFFDFBFDF7F1FBF1E6FAEDDEFDF0DDEADDCAC7BFB0B88384FF00
            FFFF00FFFF00FFFF00FFC5C5C5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F1F1F1EF
            EFEFEFEFEFE2E2E2CCCCCCB7B7B7FF00FFFF00FFFF00FFFF00FFD9AA8FFFFFFF
            FFFFFFFFFFFFFFFFFFFEFDFBFDF8F0FBF3E7B88384B88384B88384B88384FF00
            FFFF00FFFF00FFFF00FFC7C7C7F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F2
            F2F2B7B7B7B7B7B7B7B7B7B7B7B7FF00FFFF00FFFF00FFFF00FFDDAC91FFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFDF7F0ECB88384E9B676F3AE52CA8A6AFF00
            FFFF00FFFF00FFFF00FFC9C9C9F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F2
            F2F2B7B7B7C4C4C4BBBBBBB5B5B5FF00FFFF00FFFF00FFFF00FFDFAF92FFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFAFEB88384EBB87AD09877FF00FFFF00
            FFFF00FFFF00FFFF00FFCACACAF5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5
            F5F5B7B7B7C6C6C6BBBBBBFF00FFFF00FFFF00FFFF00FFFF00FFDBA685DBA685
            DBA685DBA685DBA685DBA685DBA685DBA685B88384CA9784FF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFC4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4
            C4C4B7B7B7BEBEBEFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
          Margin = 5
          NumGlyphs = 2
          TabOrder = 1
          OnClick = BtnAdicionarNFeClick
        end
        object BtnRetirarNFe: TCBitBtn
          Left = 9
          Top = 73
          Width = 75
          Height = 25
          Caption = '&Retirar'
          Glyph.Data = {
            36060000424D3606000000000000360000002800000020000000100000000100
            18000000000000060000120B0000120B00000000000000000000FF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FF92635DA46769A46769A46769A46769A46769A467
            69A46769A46769A46769FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF9A9A9AA6
            A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6FF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FF96655EFFFBD1FADEB4F8D9A6F4D197F3CB8AF0C7
            81F0C781FCD5869F6F60FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF9C9C9CF7
            F7F7E9E9E9E3E3E3DBDBDBD5D5D5D0D0D0D0D0D0D7D7D7A1A1A1FF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FF9A685EFFF3D9F2D9BBF2D4AFEECCA1015503EAC0
            89E7BC80F3C9829F6F60FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF9E9E9EFA
            FAFAE9E9E9E4E4E4DDDDDD6C6C6CD1D1D1CCCCCCD2D2D2A1A1A1FF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FF9F6C5FFFFBE9F4E0C6F3DABA0155032CC5580155
            03EAC187F3CA819F6F60FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFA0A0A0FF
            FFFFEFEFEFE9E9E96C6C6CBDBDBD6C6C6CD0D0D0D1D1D1A1A1A1FF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFA57060FFFFF8F7E5D401550330BD5741E07522B6
            3E015503F4CE8A9F6F60FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFA3A3A3FF
            FFFFF5F5F56C6C6CBCBCBCD3D3D3B1B1B16C6C6CD6D6D6A1A1A1FF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFAC7562FFFFFF015503067F141A922F27BB45149A
            260C88160155039F6F60FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFA7A7A7FF
            FFFF6C6C6C8585859D9D9DB6B6B69C9C9C8E8E8E6C6C6CA1A1A1FF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFB47A63FFFFFFFCF7F2FAEEE301550315A5280155
            03F2D3ACFBDCA79F6F60FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFAAAAAAFF
            FFFFFFFFFFFCFCFC6B6B6BA1A1A16C6C6CE3E3E3E5E5E5A1A1A1FF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFBB7F64FFFFFFFFFEFEFEF7F20360070996130155
            03FBE6C4EEDCB29F6F60FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFAEAEAEFF
            FFFFFFFFFFFFFFFF7474749191916C6C6CF0F0F0E4E4E4A1A1A1FF00FF92635D
            A46769A46769A46769A46769A46769A46769FFFFFF036E0704780A058C0D0155
            03CBA693AC8E84A16B6DFF00FF9090909C9C9C9C9C9C9C9C9C9C9C9C9C9C9C9C
            9C9CFFFFFF7B7B7B8080808A8A8A6C6C6CCACACAB7B7B7A7A7A7FF00FF97675E
            FFEBC4F7DCB4F4D7AAF4D4A3E6BD9301550301550301770705840C026606DAC1
            BBA96A54D98A409F675BFF00FF929292E8E8E8DEDEDED9D9D9D6D6D6CACACA6C
            6C6C6C6C6C7C7C7C868686757575E0E0E09F9F9FA8A8A89E9E9EFF00FFA06D60
            FBEACEDD9644DD9644DD9644E2BD99A46769FFFFFFFFFFFFFFFFFFFFFFFFD8C5
            C79F675BE09A5BFF00FFFF00FF979797EAEAEAA3A3A3A3A3A3A3A3A3CBCBCB9C
            9C9CFFFFFFFFFFFFFFFFFFFFFFFFE3E3E39E9E9EB8B8B8FF00FFFF00FFAA7462
            FCF0DCF6E2CAF4DDC0F4D9B7E6C2A4A46769CF8E68CF8E68CF8E68CF8E68CF8E
            689F675BFF00FFFF00FFFF00FF9C9C9CF0F0F0E7E7E7E2E2E2DFDFDFD1D1D19C
            9C9CB8B8B8B8B8B8B8B8B8B8B8B8B8B8B89E9E9EFF00FFFF00FFFF00FFB57B64
            FEF7EBDD9644DD9644FBE9CCE3CAB1A46769FF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFA1A1A1F5F5F5A3A3A3A3A3A3EAEAEAD6D6D69C
            9C9CFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFC08266
            FFFEF8FBF0E5FAEFDEA46769A46769A46769FF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFA7A7A7F5F5F5F3F3F3F0F0F09C9C9C9C9C9C9C
            9C9CFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFC98967
            FFFFFFFFFFFEFEFBF7A46769E09A5BFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFABABABF5F5F5F5F5F5F5F5F59C9C9CAEAEAEFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFCF8E68
            CF8E68CF8E68CF8E68A46769FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFAEAEAEAEAEAEAEAEAEAEAEAE9C9C9CFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
          Margin = 5
          NumGlyphs = 2
          TabOrder = 2
          OnClick = BtnAdicionarNFeClick
        end
        object BtnNovoNFe: TCBitBtn
          Left = 9
          Top = 104
          Width = 75
          Height = 25
          Caption = '&Novo'
          Glyph.Data = {
            36060000424D3606000000000000360000002800000020000000100000000100
            18000000000000060000120B0000120B00000000000000000000FF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFCC6701CC6701
            CC6701CC6701CC6701CC6701CC6701CC6701CC6701FF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FF98989898989898989898989898989898989898989898
            9898989898FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFFFEFCFFFBF7
            FEF8F0FFF5E8FFF0E1FEEDD9FEEAD2FEE7CCCC6701FF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEA
            EAEA989898FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFFFEFDFFFCF9
            FFF9F3FFF6ECFFF2E4FEEEDCFEEBD4FEE8CDCC6701FF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEA
            EAEA989898FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFFFFFFFFFDFB
            FFFAF5FEF7EEFEF4E6FEF0DEFEECD7FEE9D0CC6701FF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEA
            EAEA989898FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF993300993300
            993300993300993300993300993300993300993300993300993300CC6701FF00
            FF006600FF00FFFF00FF7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E
            7E7E7E7E7E7E7E7E7E7E7E989898FF00FF656565FF00FFFF00FFFFFFFEFFFCFA
            FFFBF5FFF8F0FEF5EAFFF2E4FEEFDEFEEDD8FEEAD3FEE8CDFEE6C9CC6701FF00
            FF006600006600FF00FFEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEA
            EAEAEAEAEAEAEAEAEAEAEA838383FF00FF656565656565FF00FFFFFEFEFFFDFB
            FEFBF6FFF9F2FFF6ECFFF3E6FEF1E0FFEEDAFEEBD4FEE8CFFEE6CACC6701FF00
            FF00660066FE9A006600EAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEA
            EAEAEAEAEAEAEAEAEAEAEA838383FF00FF656565E4E4E4656565FFFFFFFFFDFC
            FFFBF8FFF9F3FEF7EDFFF4E7FFF1E2FEEEDCFEEBD5FEE9D0FEE7CBCC6701FF00
            FF006600006600FF00FFEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEA
            EAEAEAEAEAEAEAEAEAEAEA838383FF00FF656565656565FF00FF993300993300
            993300993300993300993300993300993300993300993300993300CC6701FF00
            FF006600FF00FFFF00FF7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E
            7E7E7E7E7E7E7E7E7E7E7E989898FF00FF656565FF00FFFF00FFFFFFFFFFFDFB
            FFFAF5FFF7EDFFF2E5FFEFDCFEEBD4FEE8CCCC6701FF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEA
            EAEA989898FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFFFFFFFFFEFE
            FFFBF8FFF8F0FFF4E8FEF0DFFFECD7FEE8D0CC6701FF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEA
            EAEA989898FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFFFFFFFFFFFF
            FFFDFAFFFAF4FEF6ECFEF2E4FEEEDAFEEBD2CC6701FF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEA
            EAEA989898FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFCC6701CC6701
            CC6701CC6701CC6701CC6701CC6701CC6701CC6701FF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FF98989898989898989898989898989898989898989898
            9898989898FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
          Margin = 5
          NumGlyphs = 2
          Spacing = 5
          TabOrder = 3
          OnClick = BtnAdicionarNFeClick
        end
      end
      object CGroupBox18: TCGroupBox
        Left = 9
        Top = 57
        Width = 528
        Height = 139
        TabOrder = 1
        object CDBGrid4: TCDBGrid
          Left = 9
          Top = 14
          Width = 505
          Height = 116
          TabStop = False
          DataSource = dsCTeNFe
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection]
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          UtilizaOrdenar = False
          Columns = <
            item
              Expanded = False
              FieldName = 'chave'
              Title.Caption = 'Chave NF-e'
              Width = 64
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'dtPrevisao'
              Title.Caption = 'Dt. Previs'#227'o'
              Width = 90
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PIN'
              Title.Caption = 'PIN Suframa'
              Width = 90
              Visible = True
            end>
        end
      end
      object CGroupBox19: TCGroupBox
        Left = 9
        Top = 7
        Width = 626
        Height = 44
        Caption = 'Nota Fiscal Eletr'#244'nica'
        TabOrder = 0
        object CLabel35: TCLabel
          Left = 354
          Top = 20
          Width = 52
          Height = 13
          Alignment = taRightJustify
          Caption = 'Data Prev.'
        end
        object CLabel36: TCLabel
          Left = 10
          Top = 20
          Width = 31
          Height = 13
          Alignment = taRightJustify
          Caption = 'Chave'
        end
        object CLabel37: TCLabel
          Left = 487
          Top = 20
          Width = 60
          Height = 13
          Alignment = taRightJustify
          Caption = 'PIN Suframa'
        end
        object DBEdtPrevisao: TCDBEdit
          Left = 412
          Top = 17
          Width = 70
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'dtPrevisao'
          DataSource = dsCTeNFe
          MaxLength = 10
          TabOrder = 2
          OnDblClick = DBEqtCargaDblClick
          DecimalControl = True
          KeyMode = kmDate
        end
        object DBEchave: TCDBEdit
          Left = 47
          Top = 17
          Width = 281
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'chave'
          DataSource = dsCTeNFe
          TabOrder = 0
          OnDblClick = DBEqtCargaDblClick
          OnExit = DBEchaveExit
          DecimalControl = True
          KeyMode = kmNormal
        end
        object CBitBtn14: TCBitBtn
          Left = 327
          Top = 17
          Width = 21
          Height = 19
          Hint = 'Busca do arquivo XML'
          Glyph.Data = {
            36060000424D3606000000000000360000002800000020000000100000000100
            18000000000000060000120B0000120B00000000000000000000FF00FFFF00FF
            FF00FFFF00FFFF00FF0000820000820000820000820000820000820000820000
            82000082000082000082FF00FFFF00FFFF00FFFF00FFFF00FFABABABABABABAB
            ABABABABABABABABABABABABABABABABABABABABABABABABABAB95655FA5696A
            A5696AA5696AA5696A000082FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFF000082A0A0A0AAAAAAAAAAAAAAAAAAAAAAAAABABABF9F9F9F9
            F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9ABABAB986860FBE5C0
            F4D5ADF0CF9FEFCA96000082FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFF000082A2A2A2EBEBEBE2E2E2DBDBDBD7D7D7ABABABF9F9F9F9
            F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9ABABAB9D6B62FCE7C9
            F2D5B5F0D0A9EECB9E000082FFFFFFFFFFFFFFFFFF000082000082FFFFFFFFFF
            FFFFFFFF000082000082A4A4A4EEEEEEE4E4E4DEDEDEDADADAABABABF9F9F9F9
            F9F9F9F9F9A2A2A2A2A2A2F9F9F9F9F9F9F9F9F9A2A2A2ABABABA36F64FEEED4
            F4DDC0F2D7B5F0D1AA000082FFFFFF000082000082FFFFFFFFFFFF000082FFFF
            FF000082FFFFFF000082A7A7A7F3F3F3E8E8E8E4E4E4DFDFDFABABABF9F9F9A2
            A2A2A2A2A2F9F9F9F9F9F9A2A2A2F9F9F9A2A2A2F9F9F9ABABABA77466FFF4E1
            F6E1CAF3DCBFF2D7B4000082000082FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000
            82FFFFFFFFFFFF000082AAAAAAF8F8F8EDEDEDE7E7E7E3E3E3ABABABA2A2A2F9
            F9F9F9F9F9F9F9F9F9F9F9F9F9F9A2A2A2F9F9F9F9F9F9ABABABAD7869FFFBEE
            F7E7D5F4E1CAF3DCBF000082FFFFFF000082000082FFFFFFFFFFFF000082FFFF
            FF000082FFFFFF000082AEAEAEF9F9F9F1F1F1ECECECE7E7E7ABABABF9F9F9A2
            A2A2A2A2A2F9F9F9F9F9F9A2A2A2F9F9F9A2A2A2F9F9F9ABABABB47E6BFFFFFB
            F8EDE1F7E6D4F6E1C9000082FFFFFFFFFFFFFFFFFF000082000082FFFFFFFFFF
            FFFFFFFF000082000082B0B0B0F9F9F9F6F6F6F0F0F0ECECECABABABF9F9F9F9
            F9F9F9F9F9A2A2A2A2A2A2F9F9F9F9F9F9F9F9F9A2A2A2ABABABBA836DFFFFFF
            FCF4EEFAEDE1F8E9D5000082FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFF000082B4B4B4F9F9F9F9F9F9F6F6F6F1F1F1ABABABF9F9F9F9
            F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9ABABABBF8770FFFFFF
            FFFBFAFEF4EDFAEEE0000082FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFF000082B7B7B7F9F9F9F9F9F9F9F9F9F6F6F6ABABABF9F9F9F9
            F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9ABABABC48C72FFFFFF
            FFFFFFFFFCFAFCF4ED0000820000820000820000820000820000820000820000
            82000082000082000082B9B9B9F9F9F9F9F9F9F9F9F9F9F9F9ABABABABABABAB
            ABABABABABABABABABABABABABABABABABABABABABABABABABABCA9174FFFFFF
            FFFFFFFFFFFFFFFCFAFCF4EDFAEDDEF8E7D4FCEBD3E3D3BBB7AD9CA5696AFF00
            FFFF00FFFF00FFFF00FFBCBCBCF9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F5F5F5F1
            F1F1F2F2F2E1E1E1C5C5C5AAAAAAFF00FFFF00FFFF00FFFF00FFCE9576FFFFFF
            FFFFFFFFFFFFFFFFFFFEFCFAFCF6EBFAEFE0A5696AA5696AA5696AA5696AFF00
            FFFF00FFFF00FFFF00FFBFBFBFF9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F6
            F6F6AAAAAAAAAAAAAAAAAAAAAAAAFF00FFFF00FFFF00FFFF00FFD39778FFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFCF4EBE6A5696AE2A35BEF9938BB704FFF00
            FFFF00FFFF00FFFF00FFC1C1C1F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F6
            F6F6AAAAAABABABAAEAEAEA7A7A7FF00FFFF00FFFF00FFFF00FFD59A79FFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8F8FEA5696AE5A55FC2805CFF00FFFF00
            FFFF00FFFF00FFFF00FFC2C2C2F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9
            F9F9AAAAAABDBDBDAFAFAFFF00FFFF00FFFF00FFFF00FFFF00FFD0906BD0906B
            D0906BD0906BD0906BD0906BD0906BD0906BA5696ABB7F6AFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBB
            BBBBAAAAAAB3B3B3FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
          NumGlyphs = 2
          TabOrder = 1
          TabStop = False
        end
        object DBEPIN: TCDBEdit
          Left = 553
          Top = 19
          Width = 66
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'PIN'
          DataSource = dsCTeNFe
          TabOrder = 3
          OnDblClick = DBEqtCargaDblClick
          DecimalControl = True
          KeyMode = kmNormal
        end
      end
    end
    object TabDocumentos: TTabSheet
      Caption = 'Documentos'
      ImageIndex = 4
      object CGroupBox26: TCGroupBox
        Left = 537
        Top = 312
        Width = 92
        Height = 135
        TabOrder = 5
        object BtnAdicionarAnt: TCBitBtn
          Left = 9
          Top = 11
          Width = 75
          Height = 25
          Caption = '&Adicionar'
          Glyph.Data = {
            36060000424D3606000000000000360000002800000020000000100000000100
            18000000000000060000120B0000120B00000000000000000000FF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFBD4C00BD4C00
            BD4C00BD4C00BD4C00BD4C00BD4C00BD4C00BD4C00BD4C00BD4C00BD4C00BD4C
            00BD4C00BD4C00BD4C00A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7
            A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7BD4C00FFEDD9
            FFEAD3FFE7CE811E00FEE1C0FEDDBBFEDAB4811E00FED5A9FED3A4FFD09F811E
            00FECC98FECB96BD4C00A7A7A7F5F5F5F5F5F5F5F5F5959595F5F5F5F5F5F5F4
            F4F4959595F0F0F0EFEFEFEEEEEE8B8B8BEBEBEBEBEBEBA7A7A7BD4C00FFEFDE
            FFEDD8FEEAD1811E00FEE3C5FEE0C0FEDDB8811E00FED8ACFED4A9FFD3A3811E
            00FECF9AFECC98BD4C00A7A7A7F5F5F5F5F5F5F5F5F5959595F5F5F5F5F5F5F5
            F5F5959595F2F2F2F0F0F0EFEFEF8B8B8BECECECEBEBEBA7A7A7BD4C00FFF0E2
            FEEEDDFEEBD7811E00FEE5CAFEE2C2FEDEBD811E00FEDAB2FED5ABFED4A7811E
            00FFD09EFECE99BD4C00A7A7A7F5F5F5F5F5F5F5F5F5959595F5F5F5F5F5F5F5
            F5F5959595F3F3F3F1F1F1F0F0F08B8B8BEEEEEEECECECA7A7A7BD4C00811E00
            811E00811E00811E00811E00811E00811E00811E00811E00811E00811E00811E
            00811E00811E00BD4C00A7A7A795959595959595959595959595959595959595
            9595959595959595959595959595959595959595959595A7A7A7BD4C00FFF6ED
            FFF3E6FFEFE1811E00FFEAD4FFE7CEFEE5C6811E00FEDEBBFEDAB5FFD8AF811E
            00FED3A5FED0A0BD4C00A7A7A7F5F5F5F5F5F5F5F5F5959595F5F5F5F5F5F5F5
            F5F5959595F5F5F5F4F4F4F2F2F2959595F0F0F0EEEEEEA7A7A7BD4C00FFF8F0
            FFF6EAFFF3E5811E00FFEDD9FFEAD3FFE6CC811E00FEE1BFFFDDB8FED9B2811E
            00FED4A7FFD3A4BD4C00A7A7A7F5F5F5F5F5F5F5F5F5959595F5F5F5F5F5F5F5
            F5F5959595F5F5F5F5F5F5F3F3F3959595F0F0F0F0F0F0A7A7A7BD4C00FFFAF3
            FFF7EEFFF6EA811E00FEEFDDFFEBD7FFE9D0811E00FFE2C5FFE0BDFEDDB8811E
            00FED7ACFED4A6BD4C00A7A7A7F5F5F5F5F5F5F5F5F5959595F5F5F5F5F5F5F5
            F5F5959595F5F5F5F5F5F5F5F5F5959595F2F2F2F0F0F0A7A7A7BD4C00811E00
            811E00811E00811E00811E00811E00811E00811E00811E00811E00811E00811E
            00811E00811E00BD4C00A7A7A795959595959595959595959595959595959595
            9595959595959595959595959595959595959595959595A7A7A7BD4C00FFFCFA
            FFFAF6FFF8F2811E00FFF4E7FFF0E1FFEDDA811E00FFE7CEFFE3C7FFE1C1811E
            00FEDAB5FED9AFBD4C00A7A7A7F5F5F5F5F5F5F5F5F5959595F5F5F5F5F5F5F5
            F5F58B8B8BF5F5F5F5F5F5F5F5F5959595F4F4F4F2F2F2A7A7A7BD4C00FFFFFC
            FFFCF8FFFAF6811E00FFF6EAFEF3E6FFF0DE811E00FFEAD3FFE6CCFEE3C6811E
            00FEDDBAFEDAB4BD4C00A7A7A7F5F5F5F5F5F5F5F5F5959595F5F5F5F5F5F5F5
            F5F58B8B8BF5F5F5F5F5F5F5F5F5959595F5F5F5F4F4F4A7A7A7BD4C00FFFFFF
            FFFEFCFFFCF8811E00FEF7EFFFF4EAFFF2E3811E00FFEDD7FFE9D1FFE6CB811E
            00FEE0BDFFDDB8BD4C00A7A7A7F5F5F5F5F5F5F5F5F5959595F5F5F5F5F5F5F5
            F5F58B8B8BF5F5F5F5F5F5F5F5F5959595F5F5F5F5F5F5A7A7A7BD4C00BD4C00
            BD4C00BD4C00BD4C00BD4C00BD4C00BD4C00BD4C00BD4C00BD4C00BD4C00BD4C
            00BD4C00BD4C00BD4C00A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7
            A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7BD4C00BD4C00
            BD4C00BD4C00BD4C00BD4C00BD4C00BD4C00BD4C00BD4C00BD4C00BD4C00BD4C
            00BD4C00BD4C00BD4C00A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7
            A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7FF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
          Margin = 5
          NumGlyphs = 2
          TabOrder = 0
          OnClick = BtnAdicionarAntClick
        end
        object BtnCancelarAnt: TCBitBtn
          Left = 9
          Top = 42
          Width = 75
          Height = 25
          Caption = '&Cancelar'
          Glyph.Data = {
            36060000424D3606000000000000360000002800000020000000100000000100
            18000000000000060000120B0000120B00000000000000000000FF00FFFF00FF
            FF00FFFF00FFFF00FF05720A05720A05720A05720A05720A05720A05720A0572
            0A05720A05720A05720AFF00FFFF00FFFF00FFFF00FFFF00FFAAAAAAAAAAAAAA
            AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA7F7AB88384
            B88384B88384B8838405720AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFF05720AAFAFAFB7B7B7B7B7B7B7B7B7B7B7B7AAAAAAF5F5F5F5
            F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5AAAAAAAD827BFCEBCE
            F7DFBFF4DAB3F3D6AB05720AFFFFFFFFFFFF006600006600006600FFFFFFFFFF
            FFFFFFFFFFFFFF05720AB1B1B1EAEAEAE3E3E3DDDDDDDADADAAAAAAAF5F5F5F5
            F5F5959595959595959595F5F5F5F5F5F5F5F5F5F5F5F5AAAAAAB1857CFDEDD5
            F5DFC5F4DBBBF2D7B205720AFFFFFFFFFFFFFFFFFFFFFFFF077D0E006600F3F8
            F4FFFFFFFFFFFF05720AB2B2B2EDEDEDE4E4E4E0E0E0DCDCDCAAAAAAF5F5F5F5
            F5F5F5F5F5F5F5F59F9F9F959595F5F5F5F5F5F5F5F5F5AAAAAAB6897EFEF2DE
            F7E5CEF5E0C5F4DCBC05720AFFFFFFFFFFFFFFFFFFFFFFFF2B9733006600FFFF
            FFFFFFFFFFFFFF05720AB5B5B5F0F0F0E8E8E8E4E4E4E1E1E1AAAAAAF5F5F5F5
            F5F5F5F5F5F5F5F5B5B5B5959595F5F5F5F5F5F5F5F5F5AAAAAABA8D80FFF7E8
            F8E8D6F6E4CDF5E0C405720AFFFFFFFFFFFF00660000660024902E19A32B0066
            00006600FFFFFF05720AB7B7B7F4F4F4EBEBEBE7E7E7E3E3E3AAAAAAF5F5F5F5
            F5F5959595959595B0B0B0B3B3B3959595959595F5F5F5AAAAAABF9183FFFCF2
            F9EDDFF7E8D6F6E4CD05720AFFFFFFFFFFFF006600168B233DBE5F3AC95B199D
            29006600FFFFFF05720ABABABAF5F5F5EFEFEFEAEAEAE7E7E7AAAAAAF5F5F5F5
            F5F5959595A9A9A9C9C9C9CBCBCBB1B1B1959595F5F5F5AAAAAAC49685FFFFFC
            FAF1E8F9ECDEF8E8D505720AFFFFFFFFFFFFFFFFFF00660033AF5053E0810066
            00FFFFFFFFFFFF05720ABCBCBCF5F5F5F2F2F2EEEEEEEAEAEAAAAAAAF5F5F5F5
            F5F5F5F5F5959595C0C0C0DCDCDC959595F5F5F5F5F5F5AAAAAAC99B87FFFFFF
            FDF7F2FBF1E8FAEEDF05720AFFFFFFFFFFFFFFFFFFFFFFFF006600006600FFFF
            FFFFFFFFFFFFFF05720ABFBFBFF5F5F5F5F5F5F2F2F2EFEFEFAAAAAAF5F5F5F5
            F5F5F5F5F5F5F5F5959595959595F5F5F5F5F5F5F5F5F5AAAAAACD9E8AFFFFFF
            FFFCFBFEF7F1FBF2E705720AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFF05720AC1C1C1F5F5F5F5F5F5F5F5F5F2F2F2AAAAAAF5F5F5F5
            F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5AAAAAAD1A38BFFFFFF
            FFFFFFFFFDFBFDF7F105720A05720A05720A05720A05720A05720A05720A0572
            0A05720A05720A05720AC3C3C3F5F5F5F5F5F5F5F5F5F5F5F5AAAAAAAAAAAAAA
            AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAD6A78DFFFFFF
            FFFFFFFFFFFFFFFDFBFDF7F1FBF1E6FAEDDEFDF0DDEADDCAC7BFB0B88384FF00
            FFFF00FFFF00FFFF00FFC5C5C5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F1F1F1EF
            EFEFEFEFEFE2E2E2CCCCCCB7B7B7FF00FFFF00FFFF00FFFF00FFD9AA8FFFFFFF
            FFFFFFFFFFFFFFFFFFFEFDFBFDF8F0FBF3E7B88384B88384B88384B88384FF00
            FFFF00FFFF00FFFF00FFC7C7C7F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F2
            F2F2B7B7B7B7B7B7B7B7B7B7B7B7FF00FFFF00FFFF00FFFF00FFDDAC91FFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFDF7F0ECB88384E9B676F3AE52CA8A6AFF00
            FFFF00FFFF00FFFF00FFC9C9C9F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F2
            F2F2B7B7B7C4C4C4BBBBBBB5B5B5FF00FFFF00FFFF00FFFF00FFDFAF92FFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFAFEB88384EBB87AD09877FF00FFFF00
            FFFF00FFFF00FFFF00FFCACACAF5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5
            F5F5B7B7B7C6C6C6BBBBBBFF00FFFF00FFFF00FFFF00FFFF00FFDBA685DBA685
            DBA685DBA685DBA685DBA685DBA685DBA685B88384CA9784FF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFC4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4
            C4C4B7B7B7BEBEBEFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
          Margin = 5
          NumGlyphs = 2
          TabOrder = 1
          OnClick = BtnAdicionarAntClick
        end
        object BtnRetirarAnt: TCBitBtn
          Left = 9
          Top = 73
          Width = 75
          Height = 25
          Caption = '&Retirar'
          Glyph.Data = {
            36060000424D3606000000000000360000002800000020000000100000000100
            18000000000000060000120B0000120B00000000000000000000FF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FF92635DA46769A46769A46769A46769A46769A467
            69A46769A46769A46769FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF9A9A9AA6
            A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6FF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FF96655EFFFBD1FADEB4F8D9A6F4D197F3CB8AF0C7
            81F0C781FCD5869F6F60FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF9C9C9CF7
            F7F7E9E9E9E3E3E3DBDBDBD5D5D5D0D0D0D0D0D0D7D7D7A1A1A1FF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FF9A685EFFF3D9F2D9BBF2D4AFEECCA1015503EAC0
            89E7BC80F3C9829F6F60FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF9E9E9EFA
            FAFAE9E9E9E4E4E4DDDDDD6C6C6CD1D1D1CCCCCCD2D2D2A1A1A1FF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FF9F6C5FFFFBE9F4E0C6F3DABA0155032CC5580155
            03EAC187F3CA819F6F60FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFA0A0A0FF
            FFFFEFEFEFE9E9E96C6C6CBDBDBD6C6C6CD0D0D0D1D1D1A1A1A1FF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFA57060FFFFF8F7E5D401550330BD5741E07522B6
            3E015503F4CE8A9F6F60FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFA3A3A3FF
            FFFFF5F5F56C6C6CBCBCBCD3D3D3B1B1B16C6C6CD6D6D6A1A1A1FF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFAC7562FFFFFF015503067F141A922F27BB45149A
            260C88160155039F6F60FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFA7A7A7FF
            FFFF6C6C6C8585859D9D9DB6B6B69C9C9C8E8E8E6C6C6CA1A1A1FF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFB47A63FFFFFFFCF7F2FAEEE301550315A5280155
            03F2D3ACFBDCA79F6F60FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFAAAAAAFF
            FFFFFFFFFFFCFCFC6B6B6BA1A1A16C6C6CE3E3E3E5E5E5A1A1A1FF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFBB7F64FFFFFFFFFEFEFEF7F20360070996130155
            03FBE6C4EEDCB29F6F60FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFAEAEAEFF
            FFFFFFFFFFFFFFFF7474749191916C6C6CF0F0F0E4E4E4A1A1A1FF00FF92635D
            A46769A46769A46769A46769A46769A46769FFFFFF036E0704780A058C0D0155
            03CBA693AC8E84A16B6DFF00FF9090909C9C9C9C9C9C9C9C9C9C9C9C9C9C9C9C
            9C9CFFFFFF7B7B7B8080808A8A8A6C6C6CCACACAB7B7B7A7A7A7FF00FF97675E
            FFEBC4F7DCB4F4D7AAF4D4A3E6BD9301550301550301770705840C026606DAC1
            BBA96A54D98A409F675BFF00FF929292E8E8E8DEDEDED9D9D9D6D6D6CACACA6C
            6C6C6C6C6C7C7C7C868686757575E0E0E09F9F9FA8A8A89E9E9EFF00FFA06D60
            FBEACEDD9644DD9644DD9644E2BD99A46769FFFFFFFFFFFFFFFFFFFFFFFFD8C5
            C79F675BE09A5BFF00FFFF00FF979797EAEAEAA3A3A3A3A3A3A3A3A3CBCBCB9C
            9C9CFFFFFFFFFFFFFFFFFFFFFFFFE3E3E39E9E9EB8B8B8FF00FFFF00FFAA7462
            FCF0DCF6E2CAF4DDC0F4D9B7E6C2A4A46769CF8E68CF8E68CF8E68CF8E68CF8E
            689F675BFF00FFFF00FFFF00FF9C9C9CF0F0F0E7E7E7E2E2E2DFDFDFD1D1D19C
            9C9CB8B8B8B8B8B8B8B8B8B8B8B8B8B8B89E9E9EFF00FFFF00FFFF00FFB57B64
            FEF7EBDD9644DD9644FBE9CCE3CAB1A46769FF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFA1A1A1F5F5F5A3A3A3A3A3A3EAEAEAD6D6D69C
            9C9CFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFC08266
            FFFEF8FBF0E5FAEFDEA46769A46769A46769FF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFA7A7A7F5F5F5F3F3F3F0F0F09C9C9C9C9C9C9C
            9C9CFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFC98967
            FFFFFFFFFFFEFEFBF7A46769E09A5BFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFABABABF5F5F5F5F5F5F5F5F59C9C9CAEAEAEFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFCF8E68
            CF8E68CF8E68CF8E68A46769FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFAEAEAEAEAEAEAEAEAEAEAEAE9C9C9CFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
          Margin = 5
          NumGlyphs = 2
          TabOrder = 2
          OnClick = BtnAdicionarAntClick
        end
        object BtnNovoAnt: TCBitBtn
          Left = 9
          Top = 104
          Width = 75
          Height = 25
          Caption = '&Novo'
          Glyph.Data = {
            36060000424D3606000000000000360000002800000020000000100000000100
            18000000000000060000120B0000120B00000000000000000000FF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFCC6701CC6701
            CC6701CC6701CC6701CC6701CC6701CC6701CC6701FF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FF98989898989898989898989898989898989898989898
            9898989898FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFFFEFCFFFBF7
            FEF8F0FFF5E8FFF0E1FEEDD9FEEAD2FEE7CCCC6701FF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEA
            EAEA989898FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFFFEFDFFFCF9
            FFF9F3FFF6ECFFF2E4FEEEDCFEEBD4FEE8CDCC6701FF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEA
            EAEA989898FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFFFFFFFFFDFB
            FFFAF5FEF7EEFEF4E6FEF0DEFEECD7FEE9D0CC6701FF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEA
            EAEA989898FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF993300993300
            993300993300993300993300993300993300993300993300993300CC6701FF00
            FF006600FF00FFFF00FF7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E
            7E7E7E7E7E7E7E7E7E7E7E989898FF00FF656565FF00FFFF00FFFFFFFEFFFCFA
            FFFBF5FFF8F0FEF5EAFFF2E4FEEFDEFEEDD8FEEAD3FEE8CDFEE6C9CC6701FF00
            FF006600006600FF00FFEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEA
            EAEAEAEAEAEAEAEAEAEAEA838383FF00FF656565656565FF00FFFFFEFEFFFDFB
            FEFBF6FFF9F2FFF6ECFFF3E6FEF1E0FFEEDAFEEBD4FEE8CFFEE6CACC6701FF00
            FF00660066FE9A006600EAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEA
            EAEAEAEAEAEAEAEAEAEAEA838383FF00FF656565E4E4E4656565FFFFFFFFFDFC
            FFFBF8FFF9F3FEF7EDFFF4E7FFF1E2FEEEDCFEEBD5FEE9D0FEE7CBCC6701FF00
            FF006600006600FF00FFEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEA
            EAEAEAEAEAEAEAEAEAEAEA838383FF00FF656565656565FF00FF993300993300
            993300993300993300993300993300993300993300993300993300CC6701FF00
            FF006600FF00FFFF00FF7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E
            7E7E7E7E7E7E7E7E7E7E7E989898FF00FF656565FF00FFFF00FFFFFFFFFFFDFB
            FFFAF5FFF7EDFFF2E5FFEFDCFEEBD4FEE8CCCC6701FF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEA
            EAEA989898FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFFFFFFFFFEFE
            FFFBF8FFF8F0FFF4E8FEF0DFFFECD7FEE8D0CC6701FF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEA
            EAEA989898FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFFFFFFFFFFFF
            FFFDFAFFFAF4FEF6ECFEF2E4FEEEDAFEEBD2CC6701FF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEA
            EAEA989898FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFCC6701CC6701
            CC6701CC6701CC6701CC6701CC6701CC6701CC6701FF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FF98989898989898989898989898989898989898989898
            9898989898FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
          Margin = 5
          NumGlyphs = 2
          Spacing = 5
          TabOrder = 3
          OnClick = BtnAdicionarAntClick
        end
      end
      object CGroupBox25: TCGroupBox
        Left = 3
        Top = 312
        Width = 528
        Height = 135
        TabOrder = 4
        object CDBGrid6: TCDBGrid
          Left = 9
          Top = 14
          Width = 505
          Height = 107
          TabStop = False
          DataSource = dsCTeDocAnt
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection]
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          UtilizaOrdenar = False
          Columns = <
            item
              Expanded = False
              FieldName = 'idDocAnt'
              Title.Caption = 'ID'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'tpDoc'
              Title.Caption = 'Tipo'
              Width = 35
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'serie'
              Title.Caption = 'S'#233'rie'
              Width = 40
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'subser'
              Title.Caption = 'Sub-S'#233'rie'
              Width = 55
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'nrDoc'
              Title.Caption = 'N'#250'mero'
              Width = 90
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'dtEmissao'
              Title.Caption = 'Emiss'#227'o'
              Width = 90
              Visible = True
            end>
        end
      end
      object CGroupBox27: TCGroupBox
        Left = 3
        Top = 221
        Width = 626
        Height = 88
        Caption = 'Documentos anteriores'
        TabOrder = 3
        object CLabel69: TCLabel
          Left = 8
          Top = 20
          Width = 46
          Height = 13
          Alignment = taRightJustify
          Caption = 'ID Docto.'
        end
        object CLabel73: TCLabel
          Left = 404
          Top = 20
          Width = 24
          Height = 13
          Alignment = taRightJustify
          Caption = 'S'#233'rie'
        end
        object CLabel77: TCLabel
          Left = 137
          Top = 42
          Width = 38
          Height = 13
          Alignment = taRightJustify
          Caption = 'Emiss'#227'o'
        end
        object CLabel78: TCLabel
          Left = 111
          Top = 20
          Width = 20
          Height = 13
          Alignment = taRightJustify
          Caption = 'Tipo'
        end
        object CLabel90: TCLabel
          Left = 17
          Top = 42
          Width = 37
          Height = 13
          Alignment = taRightJustify
          Caption = 'N'#250'mero'
        end
        object CLabel99: TCLabel
          Left = 260
          Top = 42
          Width = 31
          Height = 13
          Alignment = taRightJustify
          Caption = 'Chave'
        end
        object CLabel71: TCLabel
          Left = 504
          Top = 20
          Width = 46
          Height = 13
          Alignment = taRightJustify
          Caption = 'Sub-S'#233'rie'
        end
        object CLabel68: TCLabel
          Left = 18
          Top = 64
          Width = 36
          Height = 13
          Alignment = taRightJustify
          Caption = 'Emissor'
        end
        object DBEidDocAnt: TCDBEdit
          Left = 60
          Top = 17
          Width = 45
          Height = 19
          TabStop = False
          BevelKind = bkTile
          BorderStyle = bsNone
          Color = 14149350
          DataField = 'idDocAnt'
          DataSource = dsCTeDocAnt
          ReadOnly = True
          TabOrder = 0
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEserieAnt: TCDBEdit
          Left = 434
          Top = 17
          Width = 64
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'serie'
          DataSource = dsCTeDocAnt
          TabOrder = 3
          OnDblClick = DBEqtCargaDblClick
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEdtEmissaoAnt: TCDBEdit
          Left = 181
          Top = 39
          Width = 73
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'dtEmissao'
          DataSource = dsCTeDocAnt
          MaxLength = 10
          TabOrder = 6
          OnDblClick = DBEqtCargaDblClick
          DecimalControl = True
          KeyMode = kmDate
        end
        object DBEtpDocAnt: TCDBEdit
          Left = 137
          Top = 17
          Width = 44
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'tpDoc'
          DataSource = dsCTeDocAnt
          TabOrder = 1
          OnDblClick = DBEqtCargaDblClick
          Find = dmFind.FindTrpTpDocTransporte
          DecimalControl = True
          KeyMode = kmNormal
        end
        object CLookUp15: TCLookUp
          Left = 187
          Top = 17
          Width = 211
          Height = 19
          Alignment = taLeftJustify
          BevelInner = bvSpace
          BevelOuter = bvLowered
          Color = 14149350
          ParentBackground = False
          TabOrder = 2
          Key.Strings = (
            'tpDoc')
          LookUpKey.Strings = (
            'tpDoc')
          ClientDataSet = cdsLookup
          DataSource = dsCTeDocAnt
          ValidaCampoObrigatorio = True
          CampoObrigatorio = True
          LookUpTable = 'TrpTpDocTransporte'
          ReturnField = 'descTpDocTransporte'
        end
        object DBEnrDocAnt: TCDBEdit
          Left = 60
          Top = 39
          Width = 71
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'nrDoc'
          DataSource = dsCTeDocAnt
          TabOrder = 5
          OnDblClick = DBEqtCargaDblClick
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEchaveAnt: TCDBEdit
          Left = 297
          Top = 39
          Width = 303
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'chave'
          DataSource = dsCTeDocAnt
          TabOrder = 7
          OnDblClick = DBEqtCargaDblClick
          DecimalControl = True
          KeyMode = kmNormal
        end
        object CBitBtn29: TCBitBtn
          Left = 599
          Top = 40
          Width = 21
          Height = 19
          Hint = 'Busca do arquivo XML'
          Glyph.Data = {
            36060000424D3606000000000000360000002800000020000000100000000100
            18000000000000060000120B0000120B00000000000000000000FF00FFFF00FF
            FF00FFFF00FFFF00FF0000820000820000820000820000820000820000820000
            82000082000082000082FF00FFFF00FFFF00FFFF00FFFF00FFABABABABABABAB
            ABABABABABABABABABABABABABABABABABABABABABABABABABAB95655FA5696A
            A5696AA5696AA5696A000082FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFF000082A0A0A0AAAAAAAAAAAAAAAAAAAAAAAAABABABF9F9F9F9
            F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9ABABAB986860FBE5C0
            F4D5ADF0CF9FEFCA96000082FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFF000082A2A2A2EBEBEBE2E2E2DBDBDBD7D7D7ABABABF9F9F9F9
            F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9ABABAB9D6B62FCE7C9
            F2D5B5F0D0A9EECB9E000082FFFFFFFFFFFFFFFFFF000082000082FFFFFFFFFF
            FFFFFFFF000082000082A4A4A4EEEEEEE4E4E4DEDEDEDADADAABABABF9F9F9F9
            F9F9F9F9F9A2A2A2A2A2A2F9F9F9F9F9F9F9F9F9A2A2A2ABABABA36F64FEEED4
            F4DDC0F2D7B5F0D1AA000082FFFFFF000082000082FFFFFFFFFFFF000082FFFF
            FF000082FFFFFF000082A7A7A7F3F3F3E8E8E8E4E4E4DFDFDFABABABF9F9F9A2
            A2A2A2A2A2F9F9F9F9F9F9A2A2A2F9F9F9A2A2A2F9F9F9ABABABA77466FFF4E1
            F6E1CAF3DCBFF2D7B4000082000082FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000
            82FFFFFFFFFFFF000082AAAAAAF8F8F8EDEDEDE7E7E7E3E3E3ABABABA2A2A2F9
            F9F9F9F9F9F9F9F9F9F9F9F9F9F9A2A2A2F9F9F9F9F9F9ABABABAD7869FFFBEE
            F7E7D5F4E1CAF3DCBF000082FFFFFF000082000082FFFFFFFFFFFF000082FFFF
            FF000082FFFFFF000082AEAEAEF9F9F9F1F1F1ECECECE7E7E7ABABABF9F9F9A2
            A2A2A2A2A2F9F9F9F9F9F9A2A2A2F9F9F9A2A2A2F9F9F9ABABABB47E6BFFFFFB
            F8EDE1F7E6D4F6E1C9000082FFFFFFFFFFFFFFFFFF000082000082FFFFFFFFFF
            FFFFFFFF000082000082B0B0B0F9F9F9F6F6F6F0F0F0ECECECABABABF9F9F9F9
            F9F9F9F9F9A2A2A2A2A2A2F9F9F9F9F9F9F9F9F9A2A2A2ABABABBA836DFFFFFF
            FCF4EEFAEDE1F8E9D5000082FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFF000082B4B4B4F9F9F9F9F9F9F6F6F6F1F1F1ABABABF9F9F9F9
            F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9ABABABBF8770FFFFFF
            FFFBFAFEF4EDFAEEE0000082FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFF000082B7B7B7F9F9F9F9F9F9F9F9F9F6F6F6ABABABF9F9F9F9
            F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9ABABABC48C72FFFFFF
            FFFFFFFFFCFAFCF4ED0000820000820000820000820000820000820000820000
            82000082000082000082B9B9B9F9F9F9F9F9F9F9F9F9F9F9F9ABABABABABABAB
            ABABABABABABABABABABABABABABABABABABABABABABABABABABCA9174FFFFFF
            FFFFFFFFFFFFFFFCFAFCF4EDFAEDDEF8E7D4FCEBD3E3D3BBB7AD9CA5696AFF00
            FFFF00FFFF00FFFF00FFBCBCBCF9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F5F5F5F1
            F1F1F2F2F2E1E1E1C5C5C5AAAAAAFF00FFFF00FFFF00FFFF00FFCE9576FFFFFF
            FFFFFFFFFFFFFFFFFFFEFCFAFCF6EBFAEFE0A5696AA5696AA5696AA5696AFF00
            FFFF00FFFF00FFFF00FFBFBFBFF9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F6
            F6F6AAAAAAAAAAAAAAAAAAAAAAAAFF00FFFF00FFFF00FFFF00FFD39778FFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFCF4EBE6A5696AE2A35BEF9938BB704FFF00
            FFFF00FFFF00FFFF00FFC1C1C1F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F6
            F6F6AAAAAABABABAAEAEAEA7A7A7FF00FFFF00FFFF00FFFF00FFD59A79FFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8F8FEA5696AE5A55FC2805CFF00FFFF00
            FFFF00FFFF00FFFF00FFC2C2C2F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9
            F9F9AAAAAABDBDBDAFAFAFFF00FFFF00FFFF00FFFF00FFFF00FFD0906BD0906B
            D0906BD0906BD0906BD0906BD0906BD0906BA5696ABB7F6AFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBB
            BBBBAAAAAAB3B3B3FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
          NumGlyphs = 2
          TabOrder = 8
          TabStop = False
        end
        object DBEsubserAnt: TCDBEdit
          Left = 556
          Top = 17
          Width = 64
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'subser'
          DataSource = dsCTeDocAnt
          TabOrder = 4
          OnDblClick = DBEqtCargaDblClick
          DecimalControl = True
          KeyMode = kmNormal
        end
        object LookRazaoDocAnt: TCLookUp
          Left = 130
          Top = 61
          Width = 292
          Height = 19
          Alignment = taLeftJustify
          BevelInner = bvSpace
          BevelOuter = bvLowered
          Color = 14149350
          ParentBackground = False
          TabOrder = 10
          OnDblClick = LookRazaoDocAntDblClick
          Key.Strings = (
            'idEmissor')
          LookUpKey.Strings = (
            'idCliente')
          ClientDataSet = cdsLookup
          DataSource = dsCTeDocAnt
          ValidaCampoObrigatorio = True
          CampoObrigatorio = True
          LookUpTable = 'vCadClienteContabil'
          ReturnField = 'descCadCliente'
        end
        object LookFantasiaDocAnt: TCLookUp
          Left = 428
          Top = 61
          Width = 192
          Height = 19
          Alignment = taLeftJustify
          BevelInner = bvSpace
          BevelOuter = bvLowered
          Color = 14149350
          ParentBackground = False
          TabOrder = 11
          Key.Strings = (
            'idEmissor')
          LookUpKey.Strings = (
            'idCliente')
          ClientDataSet = cdsLookup
          DataSource = dsCTeDocAnt
          ValidaCampoObrigatorio = True
          CampoObrigatorio = True
          LookUpTable = 'vCadClienteContabil'
          ReturnField = 'descAbreviada'
        end
        object DBEidEmissor: TCDBEdit
          Left = 60
          Top = 61
          Width = 64
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'idEmissor'
          DataSource = dsCTeDocAnt
          TabOrder = 9
          Find = dmFind.FindFornecedor
          AcaoCad = frmPrincipal.actCadCliente
          DecimalControl = True
          KeyMode = kmNormal
        end
      end
      object CGroupBox28: TCGroupBox
        Left = 537
        Top = 76
        Width = 92
        Height = 139
        TabOrder = 2
        object BtnAdicionarOutro: TCBitBtn
          Left = 9
          Top = 11
          Width = 75
          Height = 25
          Caption = '&Adicionar'
          Glyph.Data = {
            36060000424D3606000000000000360000002800000020000000100000000100
            18000000000000060000120B0000120B00000000000000000000FF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFBD4C00BD4C00
            BD4C00BD4C00BD4C00BD4C00BD4C00BD4C00BD4C00BD4C00BD4C00BD4C00BD4C
            00BD4C00BD4C00BD4C00A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7
            A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7BD4C00FFEDD9
            FFEAD3FFE7CE811E00FEE1C0FEDDBBFEDAB4811E00FED5A9FED3A4FFD09F811E
            00FECC98FECB96BD4C00A7A7A7F5F5F5F5F5F5F5F5F5959595F5F5F5F5F5F5F4
            F4F4959595F0F0F0EFEFEFEEEEEE8B8B8BEBEBEBEBEBEBA7A7A7BD4C00FFEFDE
            FFEDD8FEEAD1811E00FEE3C5FEE0C0FEDDB8811E00FED8ACFED4A9FFD3A3811E
            00FECF9AFECC98BD4C00A7A7A7F5F5F5F5F5F5F5F5F5959595F5F5F5F5F5F5F5
            F5F5959595F2F2F2F0F0F0EFEFEF8B8B8BECECECEBEBEBA7A7A7BD4C00FFF0E2
            FEEEDDFEEBD7811E00FEE5CAFEE2C2FEDEBD811E00FEDAB2FED5ABFED4A7811E
            00FFD09EFECE99BD4C00A7A7A7F5F5F5F5F5F5F5F5F5959595F5F5F5F5F5F5F5
            F5F5959595F3F3F3F1F1F1F0F0F08B8B8BEEEEEEECECECA7A7A7BD4C00811E00
            811E00811E00811E00811E00811E00811E00811E00811E00811E00811E00811E
            00811E00811E00BD4C00A7A7A795959595959595959595959595959595959595
            9595959595959595959595959595959595959595959595A7A7A7BD4C00FFF6ED
            FFF3E6FFEFE1811E00FFEAD4FFE7CEFEE5C6811E00FEDEBBFEDAB5FFD8AF811E
            00FED3A5FED0A0BD4C00A7A7A7F5F5F5F5F5F5F5F5F5959595F5F5F5F5F5F5F5
            F5F5959595F5F5F5F4F4F4F2F2F2959595F0F0F0EEEEEEA7A7A7BD4C00FFF8F0
            FFF6EAFFF3E5811E00FFEDD9FFEAD3FFE6CC811E00FEE1BFFFDDB8FED9B2811E
            00FED4A7FFD3A4BD4C00A7A7A7F5F5F5F5F5F5F5F5F5959595F5F5F5F5F5F5F5
            F5F5959595F5F5F5F5F5F5F3F3F3959595F0F0F0F0F0F0A7A7A7BD4C00FFFAF3
            FFF7EEFFF6EA811E00FEEFDDFFEBD7FFE9D0811E00FFE2C5FFE0BDFEDDB8811E
            00FED7ACFED4A6BD4C00A7A7A7F5F5F5F5F5F5F5F5F5959595F5F5F5F5F5F5F5
            F5F5959595F5F5F5F5F5F5F5F5F5959595F2F2F2F0F0F0A7A7A7BD4C00811E00
            811E00811E00811E00811E00811E00811E00811E00811E00811E00811E00811E
            00811E00811E00BD4C00A7A7A795959595959595959595959595959595959595
            9595959595959595959595959595959595959595959595A7A7A7BD4C00FFFCFA
            FFFAF6FFF8F2811E00FFF4E7FFF0E1FFEDDA811E00FFE7CEFFE3C7FFE1C1811E
            00FEDAB5FED9AFBD4C00A7A7A7F5F5F5F5F5F5F5F5F5959595F5F5F5F5F5F5F5
            F5F58B8B8BF5F5F5F5F5F5F5F5F5959595F4F4F4F2F2F2A7A7A7BD4C00FFFFFC
            FFFCF8FFFAF6811E00FFF6EAFEF3E6FFF0DE811E00FFEAD3FFE6CCFEE3C6811E
            00FEDDBAFEDAB4BD4C00A7A7A7F5F5F5F5F5F5F5F5F5959595F5F5F5F5F5F5F5
            F5F58B8B8BF5F5F5F5F5F5F5F5F5959595F5F5F5F4F4F4A7A7A7BD4C00FFFFFF
            FFFEFCFFFCF8811E00FEF7EFFFF4EAFFF2E3811E00FFEDD7FFE9D1FFE6CB811E
            00FEE0BDFFDDB8BD4C00A7A7A7F5F5F5F5F5F5F5F5F5959595F5F5F5F5F5F5F5
            F5F58B8B8BF5F5F5F5F5F5F5F5F5959595F5F5F5F5F5F5A7A7A7BD4C00BD4C00
            BD4C00BD4C00BD4C00BD4C00BD4C00BD4C00BD4C00BD4C00BD4C00BD4C00BD4C
            00BD4C00BD4C00BD4C00A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7
            A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7BD4C00BD4C00
            BD4C00BD4C00BD4C00BD4C00BD4C00BD4C00BD4C00BD4C00BD4C00BD4C00BD4C
            00BD4C00BD4C00BD4C00A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7
            A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7FF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
          Margin = 5
          NumGlyphs = 2
          TabOrder = 0
          OnClick = BtnAdicionarOutroClick
        end
        object BtnCancelarOutro: TCBitBtn
          Left = 9
          Top = 42
          Width = 75
          Height = 25
          Caption = '&Cancelar'
          Glyph.Data = {
            36060000424D3606000000000000360000002800000020000000100000000100
            18000000000000060000120B0000120B00000000000000000000FF00FFFF00FF
            FF00FFFF00FFFF00FF05720A05720A05720A05720A05720A05720A05720A0572
            0A05720A05720A05720AFF00FFFF00FFFF00FFFF00FFFF00FFAAAAAAAAAAAAAA
            AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA7F7AB88384
            B88384B88384B8838405720AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFF05720AAFAFAFB7B7B7B7B7B7B7B7B7B7B7B7AAAAAAF5F5F5F5
            F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5AAAAAAAD827BFCEBCE
            F7DFBFF4DAB3F3D6AB05720AFFFFFFFFFFFF006600006600006600FFFFFFFFFF
            FFFFFFFFFFFFFF05720AB1B1B1EAEAEAE3E3E3DDDDDDDADADAAAAAAAF5F5F5F5
            F5F5959595959595959595F5F5F5F5F5F5F5F5F5F5F5F5AAAAAAB1857CFDEDD5
            F5DFC5F4DBBBF2D7B205720AFFFFFFFFFFFFFFFFFFFFFFFF077D0E006600F3F8
            F4FFFFFFFFFFFF05720AB2B2B2EDEDEDE4E4E4E0E0E0DCDCDCAAAAAAF5F5F5F5
            F5F5F5F5F5F5F5F59F9F9F959595F5F5F5F5F5F5F5F5F5AAAAAAB6897EFEF2DE
            F7E5CEF5E0C5F4DCBC05720AFFFFFFFFFFFFFFFFFFFFFFFF2B9733006600FFFF
            FFFFFFFFFFFFFF05720AB5B5B5F0F0F0E8E8E8E4E4E4E1E1E1AAAAAAF5F5F5F5
            F5F5F5F5F5F5F5F5B5B5B5959595F5F5F5F5F5F5F5F5F5AAAAAABA8D80FFF7E8
            F8E8D6F6E4CDF5E0C405720AFFFFFFFFFFFF00660000660024902E19A32B0066
            00006600FFFFFF05720AB7B7B7F4F4F4EBEBEBE7E7E7E3E3E3AAAAAAF5F5F5F5
            F5F5959595959595B0B0B0B3B3B3959595959595F5F5F5AAAAAABF9183FFFCF2
            F9EDDFF7E8D6F6E4CD05720AFFFFFFFFFFFF006600168B233DBE5F3AC95B199D
            29006600FFFFFF05720ABABABAF5F5F5EFEFEFEAEAEAE7E7E7AAAAAAF5F5F5F5
            F5F5959595A9A9A9C9C9C9CBCBCBB1B1B1959595F5F5F5AAAAAAC49685FFFFFC
            FAF1E8F9ECDEF8E8D505720AFFFFFFFFFFFFFFFFFF00660033AF5053E0810066
            00FFFFFFFFFFFF05720ABCBCBCF5F5F5F2F2F2EEEEEEEAEAEAAAAAAAF5F5F5F5
            F5F5F5F5F5959595C0C0C0DCDCDC959595F5F5F5F5F5F5AAAAAAC99B87FFFFFF
            FDF7F2FBF1E8FAEEDF05720AFFFFFFFFFFFFFFFFFFFFFFFF006600006600FFFF
            FFFFFFFFFFFFFF05720ABFBFBFF5F5F5F5F5F5F2F2F2EFEFEFAAAAAAF5F5F5F5
            F5F5F5F5F5F5F5F5959595959595F5F5F5F5F5F5F5F5F5AAAAAACD9E8AFFFFFF
            FFFCFBFEF7F1FBF2E705720AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFF05720AC1C1C1F5F5F5F5F5F5F5F5F5F2F2F2AAAAAAF5F5F5F5
            F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5AAAAAAD1A38BFFFFFF
            FFFFFFFFFDFBFDF7F105720A05720A05720A05720A05720A05720A05720A0572
            0A05720A05720A05720AC3C3C3F5F5F5F5F5F5F5F5F5F5F5F5AAAAAAAAAAAAAA
            AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAD6A78DFFFFFF
            FFFFFFFFFFFFFFFDFBFDF7F1FBF1E6FAEDDEFDF0DDEADDCAC7BFB0B88384FF00
            FFFF00FFFF00FFFF00FFC5C5C5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F1F1F1EF
            EFEFEFEFEFE2E2E2CCCCCCB7B7B7FF00FFFF00FFFF00FFFF00FFD9AA8FFFFFFF
            FFFFFFFFFFFFFFFFFFFEFDFBFDF8F0FBF3E7B88384B88384B88384B88384FF00
            FFFF00FFFF00FFFF00FFC7C7C7F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F2
            F2F2B7B7B7B7B7B7B7B7B7B7B7B7FF00FFFF00FFFF00FFFF00FFDDAC91FFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFDF7F0ECB88384E9B676F3AE52CA8A6AFF00
            FFFF00FFFF00FFFF00FFC9C9C9F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F2
            F2F2B7B7B7C4C4C4BBBBBBB5B5B5FF00FFFF00FFFF00FFFF00FFDFAF92FFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFAFEB88384EBB87AD09877FF00FFFF00
            FFFF00FFFF00FFFF00FFCACACAF5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5
            F5F5B7B7B7C6C6C6BBBBBBFF00FFFF00FFFF00FFFF00FFFF00FFDBA685DBA685
            DBA685DBA685DBA685DBA685DBA685DBA685B88384CA9784FF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFC4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4
            C4C4B7B7B7BEBEBEFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
          Margin = 5
          NumGlyphs = 2
          TabOrder = 1
          OnClick = BtnAdicionarOutroClick
        end
        object BtnRetirarOutro: TCBitBtn
          Left = 9
          Top = 73
          Width = 75
          Height = 25
          Caption = '&Retirar'
          Glyph.Data = {
            36060000424D3606000000000000360000002800000020000000100000000100
            18000000000000060000120B0000120B00000000000000000000FF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FF92635DA46769A46769A46769A46769A46769A467
            69A46769A46769A46769FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF9A9A9AA6
            A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6FF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FF96655EFFFBD1FADEB4F8D9A6F4D197F3CB8AF0C7
            81F0C781FCD5869F6F60FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF9C9C9CF7
            F7F7E9E9E9E3E3E3DBDBDBD5D5D5D0D0D0D0D0D0D7D7D7A1A1A1FF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FF9A685EFFF3D9F2D9BBF2D4AFEECCA1015503EAC0
            89E7BC80F3C9829F6F60FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF9E9E9EFA
            FAFAE9E9E9E4E4E4DDDDDD6C6C6CD1D1D1CCCCCCD2D2D2A1A1A1FF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FF9F6C5FFFFBE9F4E0C6F3DABA0155032CC5580155
            03EAC187F3CA819F6F60FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFA0A0A0FF
            FFFFEFEFEFE9E9E96C6C6CBDBDBD6C6C6CD0D0D0D1D1D1A1A1A1FF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFA57060FFFFF8F7E5D401550330BD5741E07522B6
            3E015503F4CE8A9F6F60FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFA3A3A3FF
            FFFFF5F5F56C6C6CBCBCBCD3D3D3B1B1B16C6C6CD6D6D6A1A1A1FF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFAC7562FFFFFF015503067F141A922F27BB45149A
            260C88160155039F6F60FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFA7A7A7FF
            FFFF6C6C6C8585859D9D9DB6B6B69C9C9C8E8E8E6C6C6CA1A1A1FF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFB47A63FFFFFFFCF7F2FAEEE301550315A5280155
            03F2D3ACFBDCA79F6F60FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFAAAAAAFF
            FFFFFFFFFFFCFCFC6B6B6BA1A1A16C6C6CE3E3E3E5E5E5A1A1A1FF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFBB7F64FFFFFFFFFEFEFEF7F20360070996130155
            03FBE6C4EEDCB29F6F60FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFAEAEAEFF
            FFFFFFFFFFFFFFFF7474749191916C6C6CF0F0F0E4E4E4A1A1A1FF00FF92635D
            A46769A46769A46769A46769A46769A46769FFFFFF036E0704780A058C0D0155
            03CBA693AC8E84A16B6DFF00FF9090909C9C9C9C9C9C9C9C9C9C9C9C9C9C9C9C
            9C9CFFFFFF7B7B7B8080808A8A8A6C6C6CCACACAB7B7B7A7A7A7FF00FF97675E
            FFEBC4F7DCB4F4D7AAF4D4A3E6BD9301550301550301770705840C026606DAC1
            BBA96A54D98A409F675BFF00FF929292E8E8E8DEDEDED9D9D9D6D6D6CACACA6C
            6C6C6C6C6C7C7C7C868686757575E0E0E09F9F9FA8A8A89E9E9EFF00FFA06D60
            FBEACEDD9644DD9644DD9644E2BD99A46769FFFFFFFFFFFFFFFFFFFFFFFFD8C5
            C79F675BE09A5BFF00FFFF00FF979797EAEAEAA3A3A3A3A3A3A3A3A3CBCBCB9C
            9C9CFFFFFFFFFFFFFFFFFFFFFFFFE3E3E39E9E9EB8B8B8FF00FFFF00FFAA7462
            FCF0DCF6E2CAF4DDC0F4D9B7E6C2A4A46769CF8E68CF8E68CF8E68CF8E68CF8E
            689F675BFF00FFFF00FFFF00FF9C9C9CF0F0F0E7E7E7E2E2E2DFDFDFD1D1D19C
            9C9CB8B8B8B8B8B8B8B8B8B8B8B8B8B8B89E9E9EFF00FFFF00FFFF00FFB57B64
            FEF7EBDD9644DD9644FBE9CCE3CAB1A46769FF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFA1A1A1F5F5F5A3A3A3A3A3A3EAEAEAD6D6D69C
            9C9CFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFC08266
            FFFEF8FBF0E5FAEFDEA46769A46769A46769FF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFA7A7A7F5F5F5F3F3F3F0F0F09C9C9C9C9C9C9C
            9C9CFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFC98967
            FFFFFFFFFFFEFEFBF7A46769E09A5BFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFABABABF5F5F5F5F5F5F5F5F59C9C9CAEAEAEFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFCF8E68
            CF8E68CF8E68CF8E68A46769FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFAEAEAEAEAEAEAEAEAEAEAEAE9C9C9CFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
          Margin = 5
          NumGlyphs = 2
          TabOrder = 2
          OnClick = BtnAdicionarOutroClick
        end
        object BtnNovoOutro: TCBitBtn
          Left = 9
          Top = 104
          Width = 75
          Height = 25
          Caption = '&Novo'
          Glyph.Data = {
            36060000424D3606000000000000360000002800000020000000100000000100
            18000000000000060000120B0000120B00000000000000000000FF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFCC6701CC6701
            CC6701CC6701CC6701CC6701CC6701CC6701CC6701FF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FF98989898989898989898989898989898989898989898
            9898989898FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFFFEFCFFFBF7
            FEF8F0FFF5E8FFF0E1FEEDD9FEEAD2FEE7CCCC6701FF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEA
            EAEA989898FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFFFEFDFFFCF9
            FFF9F3FFF6ECFFF2E4FEEEDCFEEBD4FEE8CDCC6701FF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEA
            EAEA989898FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFFFFFFFFFDFB
            FFFAF5FEF7EEFEF4E6FEF0DEFEECD7FEE9D0CC6701FF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEA
            EAEA989898FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF993300993300
            993300993300993300993300993300993300993300993300993300CC6701FF00
            FF006600FF00FFFF00FF7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E
            7E7E7E7E7E7E7E7E7E7E7E989898FF00FF656565FF00FFFF00FFFFFFFEFFFCFA
            FFFBF5FFF8F0FEF5EAFFF2E4FEEFDEFEEDD8FEEAD3FEE8CDFEE6C9CC6701FF00
            FF006600006600FF00FFEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEA
            EAEAEAEAEAEAEAEAEAEAEA838383FF00FF656565656565FF00FFFFFEFEFFFDFB
            FEFBF6FFF9F2FFF6ECFFF3E6FEF1E0FFEEDAFEEBD4FEE8CFFEE6CACC6701FF00
            FF00660066FE9A006600EAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEA
            EAEAEAEAEAEAEAEAEAEAEA838383FF00FF656565E4E4E4656565FFFFFFFFFDFC
            FFFBF8FFF9F3FEF7EDFFF4E7FFF1E2FEEEDCFEEBD5FEE9D0FEE7CBCC6701FF00
            FF006600006600FF00FFEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEA
            EAEAEAEAEAEAEAEAEAEAEA838383FF00FF656565656565FF00FF993300993300
            993300993300993300993300993300993300993300993300993300CC6701FF00
            FF006600FF00FFFF00FF7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E
            7E7E7E7E7E7E7E7E7E7E7E989898FF00FF656565FF00FFFF00FFFFFFFFFFFDFB
            FFFAF5FFF7EDFFF2E5FFEFDCFEEBD4FEE8CCCC6701FF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEA
            EAEA989898FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFFFFFFFFFEFE
            FFFBF8FFF8F0FFF4E8FEF0DFFFECD7FEE8D0CC6701FF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEA
            EAEA989898FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFFFFFFFFFFFF
            FFFDFAFFFAF4FEF6ECFEF2E4FEEEDAFEEBD2CC6701FF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEA
            EAEA989898FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFCC6701CC6701
            CC6701CC6701CC6701CC6701CC6701CC6701CC6701FF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FF98989898989898989898989898989898989898989898
            9898989898FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
          Margin = 5
          NumGlyphs = 2
          Spacing = 5
          TabOrder = 3
          OnClick = BtnAdicionarOutroClick
        end
      end
      object CGroupBox29: TCGroupBox
        Left = 3
        Top = 76
        Width = 528
        Height = 139
        TabOrder = 1
        object CDBGrid7: TCDBGrid
          Left = 9
          Top = 14
          Width = 505
          Height = 116
          TabStop = False
          DataSource = dsCTeDocOutro
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection]
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          UtilizaOrdenar = False
          Columns = <
            item
              Expanded = False
              FieldName = 'tpDoc'
              Title.Caption = 'Tipo'
              Width = 64
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'nrDoc'
              Title.Caption = 'N'#250'mero'
              Width = 90
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
              FieldName = 'vlDoc'
              Title.Caption = 'Valor'
              Width = 85
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'descOutros'
              Title.Caption = 'Descri'#231#227'o'
              Width = 170
              Visible = True
            end>
        end
      end
      object CGroupBox30: TCGroupBox
        Left = 3
        Top = 7
        Width = 626
        Height = 67
        Caption = 'Outros Documentos'
        TabOrder = 0
        object CLabel94: TCLabel
          Left = 15
          Top = 42
          Width = 41
          Height = 13
          Alignment = taRightJustify
          Caption = 'Previs'#227'o'
        end
        object CLabel95: TCLabel
          Left = 138
          Top = 42
          Width = 90
          Height = 13
          Alignment = taRightJustify
          Caption = 'Descri'#231#227'o (Outros)'
        end
        object CLabel96: TCLabel
          Left = 254
          Top = 20
          Width = 46
          Height = 13
          Alignment = taRightJustify
          Caption = 'Nr. Docto'
        end
        object CLabel97: TCLabel
          Left = 36
          Top = 20
          Width = 20
          Height = 13
          Alignment = taRightJustify
          Caption = 'Tipo'
        end
        object CLabel100: TCLabel
          Left = 378
          Top = 20
          Width = 64
          Height = 13
          Alignment = taRightJustify
          Caption = 'Data Emiss'#227'o'
        end
        object CLabel101: TCLabel
          Left = 524
          Top = 20
          Width = 24
          Height = 13
          Alignment = taRightJustify
          Caption = 'Valor'
        end
        object DBEdtPrevisaoDoc: TCDBEdit
          Left = 62
          Top = 39
          Width = 70
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'dtPrevisao'
          DataSource = dsCTeDocOutro
          MaxLength = 10
          TabOrder = 5
          OnDblClick = DBEqtCargaDblClick
          DecimalControl = True
          KeyMode = kmDate
        end
        object DBEdescOutros: TCDBEdit
          Left = 234
          Top = 39
          Width = 386
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'descOutros'
          DataSource = dsCTeDocOutro
          TabOrder = 6
          OnDblClick = DBEqtCargaDblClick
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEnrDoc: TCDBEdit
          Left = 306
          Top = 17
          Width = 66
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'nrDoc'
          DataSource = dsCTeDocOutro
          TabOrder = 2
          OnDblClick = DBEqtCargaDblClick
          DecimalControl = True
          KeyMode = kmNormal
        end
        object CLookUp17: TCLookUp
          Left = 112
          Top = 17
          Width = 136
          Height = 19
          Alignment = taLeftJustify
          BevelInner = bvSpace
          BevelOuter = bvLowered
          Color = 14149350
          ParentBackground = False
          TabOrder = 1
          Key.Strings = (
            'tpDoc')
          LookUpKey.Strings = (
            'tpDoc')
          ClientDataSet = cdsLookup
          DataSource = dsCTeDocOutro
          ValidaCampoObrigatorio = True
          CampoObrigatorio = True
          LookUpTable = 'TrpTipoDocumento'
          ReturnField = 'descDoc'
        end
        object DBEtpDoc: TCDBEdit
          Left = 62
          Top = 17
          Width = 44
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'tpDoc'
          DataSource = dsCTeDocOutro
          TabOrder = 0
          OnDblClick = DBEqtCargaDblClick
          OnExit = DBEtpDocExit
          Find = dmFind.FindTrpTipoDocumento
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEdtEmissaoDoc: TCDBEdit
          Left = 448
          Top = 17
          Width = 70
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'dtEmissao'
          DataSource = dsCTeDocOutro
          MaxLength = 10
          TabOrder = 3
          OnDblClick = DBEqtCargaDblClick
          DecimalControl = True
          KeyMode = kmDate
        end
        object DBEvlDoc: TCDBEdit
          Left = 554
          Top = 17
          Width = 66
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'vlDoc'
          DataSource = dsCTeDocOutro
          TabOrder = 4
          OnDblClick = DBEqtCargaDblClick
          DecimalControl = True
          KeyMode = kmNormal
        end
      end
    end
    object TabTransporte: TTabSheet
      Caption = 'Transporte'
      ImageIndex = 5
      object CGroupBox40: TCGroupBox
        Left = 577
        Top = 271
        Width = 92
        Height = 191
        TabOrder = 6
        object BtnAdicionarVale: TCBitBtn
          Left = 9
          Top = 11
          Width = 75
          Height = 25
          Caption = '&Adicionar'
          Glyph.Data = {
            36060000424D3606000000000000360000002800000020000000100000000100
            18000000000000060000120B0000120B00000000000000000000FF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFBD4C00BD4C00
            BD4C00BD4C00BD4C00BD4C00BD4C00BD4C00BD4C00BD4C00BD4C00BD4C00BD4C
            00BD4C00BD4C00BD4C00A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7
            A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7BD4C00FFEDD9
            FFEAD3FFE7CE811E00FEE1C0FEDDBBFEDAB4811E00FED5A9FED3A4FFD09F811E
            00FECC98FECB96BD4C00A7A7A7F5F5F5F5F5F5F5F5F5959595F5F5F5F5F5F5F4
            F4F4959595F0F0F0EFEFEFEEEEEE8B8B8BEBEBEBEBEBEBA7A7A7BD4C00FFEFDE
            FFEDD8FEEAD1811E00FEE3C5FEE0C0FEDDB8811E00FED8ACFED4A9FFD3A3811E
            00FECF9AFECC98BD4C00A7A7A7F5F5F5F5F5F5F5F5F5959595F5F5F5F5F5F5F5
            F5F5959595F2F2F2F0F0F0EFEFEF8B8B8BECECECEBEBEBA7A7A7BD4C00FFF0E2
            FEEEDDFEEBD7811E00FEE5CAFEE2C2FEDEBD811E00FEDAB2FED5ABFED4A7811E
            00FFD09EFECE99BD4C00A7A7A7F5F5F5F5F5F5F5F5F5959595F5F5F5F5F5F5F5
            F5F5959595F3F3F3F1F1F1F0F0F08B8B8BEEEEEEECECECA7A7A7BD4C00811E00
            811E00811E00811E00811E00811E00811E00811E00811E00811E00811E00811E
            00811E00811E00BD4C00A7A7A795959595959595959595959595959595959595
            9595959595959595959595959595959595959595959595A7A7A7BD4C00FFF6ED
            FFF3E6FFEFE1811E00FFEAD4FFE7CEFEE5C6811E00FEDEBBFEDAB5FFD8AF811E
            00FED3A5FED0A0BD4C00A7A7A7F5F5F5F5F5F5F5F5F5959595F5F5F5F5F5F5F5
            F5F5959595F5F5F5F4F4F4F2F2F2959595F0F0F0EEEEEEA7A7A7BD4C00FFF8F0
            FFF6EAFFF3E5811E00FFEDD9FFEAD3FFE6CC811E00FEE1BFFFDDB8FED9B2811E
            00FED4A7FFD3A4BD4C00A7A7A7F5F5F5F5F5F5F5F5F5959595F5F5F5F5F5F5F5
            F5F5959595F5F5F5F5F5F5F3F3F3959595F0F0F0F0F0F0A7A7A7BD4C00FFFAF3
            FFF7EEFFF6EA811E00FEEFDDFFEBD7FFE9D0811E00FFE2C5FFE0BDFEDDB8811E
            00FED7ACFED4A6BD4C00A7A7A7F5F5F5F5F5F5F5F5F5959595F5F5F5F5F5F5F5
            F5F5959595F5F5F5F5F5F5F5F5F5959595F2F2F2F0F0F0A7A7A7BD4C00811E00
            811E00811E00811E00811E00811E00811E00811E00811E00811E00811E00811E
            00811E00811E00BD4C00A7A7A795959595959595959595959595959595959595
            9595959595959595959595959595959595959595959595A7A7A7BD4C00FFFCFA
            FFFAF6FFF8F2811E00FFF4E7FFF0E1FFEDDA811E00FFE7CEFFE3C7FFE1C1811E
            00FEDAB5FED9AFBD4C00A7A7A7F5F5F5F5F5F5F5F5F5959595F5F5F5F5F5F5F5
            F5F58B8B8BF5F5F5F5F5F5F5F5F5959595F4F4F4F2F2F2A7A7A7BD4C00FFFFFC
            FFFCF8FFFAF6811E00FFF6EAFEF3E6FFF0DE811E00FFEAD3FFE6CCFEE3C6811E
            00FEDDBAFEDAB4BD4C00A7A7A7F5F5F5F5F5F5F5F5F5959595F5F5F5F5F5F5F5
            F5F58B8B8BF5F5F5F5F5F5F5F5F5959595F5F5F5F4F4F4A7A7A7BD4C00FFFFFF
            FFFEFCFFFCF8811E00FEF7EFFFF4EAFFF2E3811E00FFEDD7FFE9D1FFE6CB811E
            00FEE0BDFFDDB8BD4C00A7A7A7F5F5F5F5F5F5F5F5F5959595F5F5F5F5F5F5F5
            F5F58B8B8BF5F5F5F5F5F5F5F5F5959595F5F5F5F5F5F5A7A7A7BD4C00BD4C00
            BD4C00BD4C00BD4C00BD4C00BD4C00BD4C00BD4C00BD4C00BD4C00BD4C00BD4C
            00BD4C00BD4C00BD4C00A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7
            A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7BD4C00BD4C00
            BD4C00BD4C00BD4C00BD4C00BD4C00BD4C00BD4C00BD4C00BD4C00BD4C00BD4C
            00BD4C00BD4C00BD4C00A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7
            A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7FF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
          Margin = 5
          NumGlyphs = 2
          TabOrder = 0
          OnClick = BtnAdicionarValeClick
        end
        object BtnCancelarVale: TCBitBtn
          Left = 9
          Top = 42
          Width = 75
          Height = 25
          Caption = '&Cancelar'
          Glyph.Data = {
            36060000424D3606000000000000360000002800000020000000100000000100
            18000000000000060000120B0000120B00000000000000000000FF00FFFF00FF
            FF00FFFF00FFFF00FF05720A05720A05720A05720A05720A05720A05720A0572
            0A05720A05720A05720AFF00FFFF00FFFF00FFFF00FFFF00FFAAAAAAAAAAAAAA
            AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA7F7AB88384
            B88384B88384B8838405720AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFF05720AAFAFAFB7B7B7B7B7B7B7B7B7B7B7B7AAAAAAF5F5F5F5
            F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5AAAAAAAD827BFCEBCE
            F7DFBFF4DAB3F3D6AB05720AFFFFFFFFFFFF006600006600006600FFFFFFFFFF
            FFFFFFFFFFFFFF05720AB1B1B1EAEAEAE3E3E3DDDDDDDADADAAAAAAAF5F5F5F5
            F5F5959595959595959595F5F5F5F5F5F5F5F5F5F5F5F5AAAAAAB1857CFDEDD5
            F5DFC5F4DBBBF2D7B205720AFFFFFFFFFFFFFFFFFFFFFFFF077D0E006600F3F8
            F4FFFFFFFFFFFF05720AB2B2B2EDEDEDE4E4E4E0E0E0DCDCDCAAAAAAF5F5F5F5
            F5F5F5F5F5F5F5F59F9F9F959595F5F5F5F5F5F5F5F5F5AAAAAAB6897EFEF2DE
            F7E5CEF5E0C5F4DCBC05720AFFFFFFFFFFFFFFFFFFFFFFFF2B9733006600FFFF
            FFFFFFFFFFFFFF05720AB5B5B5F0F0F0E8E8E8E4E4E4E1E1E1AAAAAAF5F5F5F5
            F5F5F5F5F5F5F5F5B5B5B5959595F5F5F5F5F5F5F5F5F5AAAAAABA8D80FFF7E8
            F8E8D6F6E4CDF5E0C405720AFFFFFFFFFFFF00660000660024902E19A32B0066
            00006600FFFFFF05720AB7B7B7F4F4F4EBEBEBE7E7E7E3E3E3AAAAAAF5F5F5F5
            F5F5959595959595B0B0B0B3B3B3959595959595F5F5F5AAAAAABF9183FFFCF2
            F9EDDFF7E8D6F6E4CD05720AFFFFFFFFFFFF006600168B233DBE5F3AC95B199D
            29006600FFFFFF05720ABABABAF5F5F5EFEFEFEAEAEAE7E7E7AAAAAAF5F5F5F5
            F5F5959595A9A9A9C9C9C9CBCBCBB1B1B1959595F5F5F5AAAAAAC49685FFFFFC
            FAF1E8F9ECDEF8E8D505720AFFFFFFFFFFFFFFFFFF00660033AF5053E0810066
            00FFFFFFFFFFFF05720ABCBCBCF5F5F5F2F2F2EEEEEEEAEAEAAAAAAAF5F5F5F5
            F5F5F5F5F5959595C0C0C0DCDCDC959595F5F5F5F5F5F5AAAAAAC99B87FFFFFF
            FDF7F2FBF1E8FAEEDF05720AFFFFFFFFFFFFFFFFFFFFFFFF006600006600FFFF
            FFFFFFFFFFFFFF05720ABFBFBFF5F5F5F5F5F5F2F2F2EFEFEFAAAAAAF5F5F5F5
            F5F5F5F5F5F5F5F5959595959595F5F5F5F5F5F5F5F5F5AAAAAACD9E8AFFFFFF
            FFFCFBFEF7F1FBF2E705720AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFF05720AC1C1C1F5F5F5F5F5F5F5F5F5F2F2F2AAAAAAF5F5F5F5
            F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5AAAAAAD1A38BFFFFFF
            FFFFFFFFFDFBFDF7F105720A05720A05720A05720A05720A05720A05720A0572
            0A05720A05720A05720AC3C3C3F5F5F5F5F5F5F5F5F5F5F5F5AAAAAAAAAAAAAA
            AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAD6A78DFFFFFF
            FFFFFFFFFFFFFFFDFBFDF7F1FBF1E6FAEDDEFDF0DDEADDCAC7BFB0B88384FF00
            FFFF00FFFF00FFFF00FFC5C5C5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F1F1F1EF
            EFEFEFEFEFE2E2E2CCCCCCB7B7B7FF00FFFF00FFFF00FFFF00FFD9AA8FFFFFFF
            FFFFFFFFFFFFFFFFFFFEFDFBFDF8F0FBF3E7B88384B88384B88384B88384FF00
            FFFF00FFFF00FFFF00FFC7C7C7F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F2
            F2F2B7B7B7B7B7B7B7B7B7B7B7B7FF00FFFF00FFFF00FFFF00FFDDAC91FFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFDF7F0ECB88384E9B676F3AE52CA8A6AFF00
            FFFF00FFFF00FFFF00FFC9C9C9F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F2
            F2F2B7B7B7C4C4C4BBBBBBB5B5B5FF00FFFF00FFFF00FFFF00FFDFAF92FFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFAFEB88384EBB87AD09877FF00FFFF00
            FFFF00FFFF00FFFF00FFCACACAF5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5
            F5F5B7B7B7C6C6C6BBBBBBFF00FFFF00FFFF00FFFF00FFFF00FFDBA685DBA685
            DBA685DBA685DBA685DBA685DBA685DBA685B88384CA9784FF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFC4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4
            C4C4B7B7B7BEBEBEFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
          Margin = 5
          NumGlyphs = 2
          TabOrder = 1
          OnClick = BtnAdicionarValeClick
        end
        object BtnRetirarVale: TCBitBtn
          Left = 9
          Top = 73
          Width = 75
          Height = 25
          Caption = '&Retirar'
          Glyph.Data = {
            36060000424D3606000000000000360000002800000020000000100000000100
            18000000000000060000120B0000120B00000000000000000000FF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FF92635DA46769A46769A46769A46769A46769A467
            69A46769A46769A46769FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF9A9A9AA6
            A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6FF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FF96655EFFFBD1FADEB4F8D9A6F4D197F3CB8AF0C7
            81F0C781FCD5869F6F60FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF9C9C9CF7
            F7F7E9E9E9E3E3E3DBDBDBD5D5D5D0D0D0D0D0D0D7D7D7A1A1A1FF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FF9A685EFFF3D9F2D9BBF2D4AFEECCA1015503EAC0
            89E7BC80F3C9829F6F60FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF9E9E9EFA
            FAFAE9E9E9E4E4E4DDDDDD6C6C6CD1D1D1CCCCCCD2D2D2A1A1A1FF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FF9F6C5FFFFBE9F4E0C6F3DABA0155032CC5580155
            03EAC187F3CA819F6F60FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFA0A0A0FF
            FFFFEFEFEFE9E9E96C6C6CBDBDBD6C6C6CD0D0D0D1D1D1A1A1A1FF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFA57060FFFFF8F7E5D401550330BD5741E07522B6
            3E015503F4CE8A9F6F60FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFA3A3A3FF
            FFFFF5F5F56C6C6CBCBCBCD3D3D3B1B1B16C6C6CD6D6D6A1A1A1FF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFAC7562FFFFFF015503067F141A922F27BB45149A
            260C88160155039F6F60FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFA7A7A7FF
            FFFF6C6C6C8585859D9D9DB6B6B69C9C9C8E8E8E6C6C6CA1A1A1FF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFB47A63FFFFFFFCF7F2FAEEE301550315A5280155
            03F2D3ACFBDCA79F6F60FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFAAAAAAFF
            FFFFFFFFFFFCFCFC6B6B6BA1A1A16C6C6CE3E3E3E5E5E5A1A1A1FF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFBB7F64FFFFFFFFFEFEFEF7F20360070996130155
            03FBE6C4EEDCB29F6F60FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFAEAEAEFF
            FFFFFFFFFFFFFFFF7474749191916C6C6CF0F0F0E4E4E4A1A1A1FF00FF92635D
            A46769A46769A46769A46769A46769A46769FFFFFF036E0704780A058C0D0155
            03CBA693AC8E84A16B6DFF00FF9090909C9C9C9C9C9C9C9C9C9C9C9C9C9C9C9C
            9C9CFFFFFF7B7B7B8080808A8A8A6C6C6CCACACAB7B7B7A7A7A7FF00FF97675E
            FFEBC4F7DCB4F4D7AAF4D4A3E6BD9301550301550301770705840C026606DAC1
            BBA96A54D98A409F675BFF00FF929292E8E8E8DEDEDED9D9D9D6D6D6CACACA6C
            6C6C6C6C6C7C7C7C868686757575E0E0E09F9F9FA8A8A89E9E9EFF00FFA06D60
            FBEACEDD9644DD9644DD9644E2BD99A46769FFFFFFFFFFFFFFFFFFFFFFFFD8C5
            C79F675BE09A5BFF00FFFF00FF979797EAEAEAA3A3A3A3A3A3A3A3A3CBCBCB9C
            9C9CFFFFFFFFFFFFFFFFFFFFFFFFE3E3E39E9E9EB8B8B8FF00FFFF00FFAA7462
            FCF0DCF6E2CAF4DDC0F4D9B7E6C2A4A46769CF8E68CF8E68CF8E68CF8E68CF8E
            689F675BFF00FFFF00FFFF00FF9C9C9CF0F0F0E7E7E7E2E2E2DFDFDFD1D1D19C
            9C9CB8B8B8B8B8B8B8B8B8B8B8B8B8B8B89E9E9EFF00FFFF00FFFF00FFB57B64
            FEF7EBDD9644DD9644FBE9CCE3CAB1A46769FF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFA1A1A1F5F5F5A3A3A3A3A3A3EAEAEAD6D6D69C
            9C9CFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFC08266
            FFFEF8FBF0E5FAEFDEA46769A46769A46769FF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFA7A7A7F5F5F5F3F3F3F0F0F09C9C9C9C9C9C9C
            9C9CFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFC98967
            FFFFFFFFFFFEFEFBF7A46769E09A5BFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFABABABF5F5F5F5F5F5F5F5F59C9C9CAEAEAEFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFCF8E68
            CF8E68CF8E68CF8E68A46769FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFAEAEAEAEAEAEAEAEAEAEAEAE9C9C9CFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
          Margin = 5
          NumGlyphs = 2
          TabOrder = 2
          OnClick = BtnAdicionarValeClick
        end
        object BtnNovoVale: TCBitBtn
          Left = 9
          Top = 104
          Width = 75
          Height = 25
          Caption = '&Novo'
          Glyph.Data = {
            36060000424D3606000000000000360000002800000020000000100000000100
            18000000000000060000120B0000120B00000000000000000000FF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFCC6701CC6701
            CC6701CC6701CC6701CC6701CC6701CC6701CC6701FF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FF98989898989898989898989898989898989898989898
            9898989898FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFFFEFCFFFBF7
            FEF8F0FFF5E8FFF0E1FEEDD9FEEAD2FEE7CCCC6701FF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEA
            EAEA989898FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFFFEFDFFFCF9
            FFF9F3FFF6ECFFF2E4FEEEDCFEEBD4FEE8CDCC6701FF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEA
            EAEA989898FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFFFFFFFFFDFB
            FFFAF5FEF7EEFEF4E6FEF0DEFEECD7FEE9D0CC6701FF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEA
            EAEA989898FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF993300993300
            993300993300993300993300993300993300993300993300993300CC6701FF00
            FF006600FF00FFFF00FF7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E
            7E7E7E7E7E7E7E7E7E7E7E989898FF00FF656565FF00FFFF00FFFFFFFEFFFCFA
            FFFBF5FFF8F0FEF5EAFFF2E4FEEFDEFEEDD8FEEAD3FEE8CDFEE6C9CC6701FF00
            FF006600006600FF00FFEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEA
            EAEAEAEAEAEAEAEAEAEAEA838383FF00FF656565656565FF00FFFFFEFEFFFDFB
            FEFBF6FFF9F2FFF6ECFFF3E6FEF1E0FFEEDAFEEBD4FEE8CFFEE6CACC6701FF00
            FF00660066FE9A006600EAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEA
            EAEAEAEAEAEAEAEAEAEAEA838383FF00FF656565E4E4E4656565FFFFFFFFFDFC
            FFFBF8FFF9F3FEF7EDFFF4E7FFF1E2FEEEDCFEEBD5FEE9D0FEE7CBCC6701FF00
            FF006600006600FF00FFEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEA
            EAEAEAEAEAEAEAEAEAEAEA838383FF00FF656565656565FF00FF993300993300
            993300993300993300993300993300993300993300993300993300CC6701FF00
            FF006600FF00FFFF00FF7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E
            7E7E7E7E7E7E7E7E7E7E7E989898FF00FF656565FF00FFFF00FFFFFFFFFFFDFB
            FFFAF5FFF7EDFFF2E5FFEFDCFEEBD4FEE8CCCC6701FF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEA
            EAEA989898FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFFFFFFFFFEFE
            FFFBF8FFF8F0FFF4E8FEF0DFFFECD7FEE8D0CC6701FF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEA
            EAEA989898FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFFFFFFFFFFFF
            FFFDFAFFFAF4FEF6ECFEF2E4FEEEDAFEEBD2CC6701FF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEA
            EAEA989898FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFCC6701CC6701
            CC6701CC6701CC6701CC6701CC6701CC6701CC6701FF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FF98989898989898989898989898989898989898989898
            9898989898FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
          Margin = 5
          NumGlyphs = 2
          Spacing = 5
          TabOrder = 3
          OnClick = BtnAdicionarValeClick
        end
      end
      object CGroupBox41: TCGroupBox
        Left = 13
        Top = 360
        Width = 558
        Height = 102
        TabOrder = 5
        object CDBGrid10: TCDBGrid
          Left = 7
          Top = 14
          Width = 535
          Height = 79
          TabStop = False
          DataSource = dsCTeValePed
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection]
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          UtilizaOrdenar = False
          Columns = <
            item
              Expanded = False
              FieldName = 'nrCompra'
              Title.Caption = 'Nr.Compra'
              Width = 64
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'vlValePedagio'
              Title.Caption = 'Valor'
              Width = 80
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'descFornecedor'
              Title.Caption = 'Fornecedor'
              Width = 200
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'descRespPagto'
              Title.Caption = 'Resp. Pagto.'
              Width = 200
              Visible = True
            end>
        end
      end
      object CGroupBox39: TCGroupBox
        Left = 13
        Top = 271
        Width = 558
        Height = 85
        Caption = 'Vale Ped'#225'gio'
        TabOrder = 4
        object CLabel112: TCLabel
          Left = 14
          Top = 18
          Width = 55
          Height = 13
          Alignment = taRightJustify
          Caption = 'Nr. Compra'
        end
        object CLabel116: TCLabel
          Left = 174
          Top = 18
          Width = 62
          Height = 13
          Alignment = taRightJustify
          Caption = 'Valor do Vale'
        end
        object CLabel110: TCLabel
          Left = 14
          Top = 40
          Width = 55
          Height = 13
          Alignment = taRightJustify
          Caption = 'Fornecedor'
        end
        object CLabel111: TCLabel
          Left = 6
          Top = 62
          Width = 63
          Height = 13
          Alignment = taRightJustify
          Caption = 'Resp. Pagto.'
        end
        object DBEnrCompra: TCDBEdit
          Left = 75
          Top = 15
          Width = 77
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'nrCompra'
          DataSource = dsCTeValePed
          TabOrder = 0
          OnDblClick = DBEqtCargaDblClick
          OnExit = DBEnrCompraExit
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEvlValePedagio: TCDBEdit
          Left = 242
          Top = 15
          Width = 82
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'vlValePedagio'
          DataSource = dsCTeValePed
          TabOrder = 1
          OnDblClick = DBEqtCargaDblClick
          DecimalControl = True
          KeyMode = kmNormal
        end
        object CLookUp25: TCLookUp
          Left = 145
          Top = 37
          Width = 245
          Height = 19
          Alignment = taLeftJustify
          BevelInner = bvSpace
          BevelOuter = bvLowered
          Color = 14149350
          ParentBackground = False
          TabOrder = 3
          Key.Strings = (
            'idFornecedor')
          LookUpKey.Strings = (
            'idCliente')
          ClientDataSet = cdsLookup
          DataSource = dsCTeValePed
          ValidaCampoObrigatorio = True
          CampoObrigatorio = True
          LookUpTable = 'vCadClienteContabil'
          ReturnField = 'descCadCliente'
        end
        object LookCnpjForVale: TCLookUp
          Left = 396
          Top = 37
          Width = 146
          Height = 19
          Alignment = taLeftJustify
          BevelInner = bvSpace
          BevelOuter = bvLowered
          Color = 14149350
          ParentBackground = False
          TabOrder = 4
          OnDblClick = LookRazaoDocAntDblClick
          Key.Strings = (
            'idFornecedor')
          LookUpKey.Strings = (
            'idCliente')
          ClientDataSet = cdsLookup
          DataSource = dsCTeValePed
          ValidaCampoObrigatorio = True
          CampoObrigatorio = True
          LookUpTable = 'vCadClienteContabil'
          ReturnField = 'idCnpjCpf'
        end
        object DBEidFornecedor: TCDBEdit
          Left = 75
          Top = 37
          Width = 64
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'idFornecedor'
          DataSource = dsCTeValePed
          TabOrder = 2
          Find = dmFind.FindFornecedor
          AcaoCad = frmPrincipal.actCadCliente
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEidRespPagto: TCDBEdit
          Left = 75
          Top = 59
          Width = 64
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'idRespPagto'
          DataSource = dsCTeValePed
          TabOrder = 5
          Find = dmFind.FindFornecedor
          AcaoCad = frmPrincipal.actCadCliente
          DecimalControl = True
          KeyMode = kmNormal
        end
        object LookCnpjRespVale: TCLookUp
          Left = 396
          Top = 59
          Width = 146
          Height = 19
          Alignment = taLeftJustify
          BevelInner = bvSpace
          BevelOuter = bvLowered
          Color = 14149350
          ParentBackground = False
          TabOrder = 7
          OnDblClick = LookRazaoDocAntDblClick
          Key.Strings = (
            'idRespPagto')
          LookUpKey.Strings = (
            'idCliente')
          ClientDataSet = cdsLookup
          DataSource = dsCTeValePed
          ValidaCampoObrigatorio = True
          CampoObrigatorio = True
          LookUpTable = 'vCadClienteContabil'
          ReturnField = 'idCnpjCpf'
        end
        object CLookUp28: TCLookUp
          Left = 145
          Top = 59
          Width = 245
          Height = 19
          Alignment = taLeftJustify
          BevelInner = bvSpace
          BevelOuter = bvLowered
          Color = 14149350
          ParentBackground = False
          TabOrder = 6
          Key.Strings = (
            'idRespPagto')
          LookUpKey.Strings = (
            'idCliente')
          ClientDataSet = cdsLookup
          DataSource = dsCTeValePed
          ValidaCampoObrigatorio = True
          CampoObrigatorio = True
          LookUpTable = 'vCadClienteContabil'
          ReturnField = 'descCadCliente'
        end
      end
      object CGroupBox38: TCGroupBox
        Left = 577
        Top = 75
        Width = 92
        Height = 192
        TabOrder = 3
        object BtnAdicionarOcc: TCBitBtn
          Left = 9
          Top = 11
          Width = 75
          Height = 25
          Caption = '&Adicionar'
          Glyph.Data = {
            36060000424D3606000000000000360000002800000020000000100000000100
            18000000000000060000120B0000120B00000000000000000000FF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFBD4C00BD4C00
            BD4C00BD4C00BD4C00BD4C00BD4C00BD4C00BD4C00BD4C00BD4C00BD4C00BD4C
            00BD4C00BD4C00BD4C00A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7
            A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7BD4C00FFEDD9
            FFEAD3FFE7CE811E00FEE1C0FEDDBBFEDAB4811E00FED5A9FED3A4FFD09F811E
            00FECC98FECB96BD4C00A7A7A7F5F5F5F5F5F5F5F5F5959595F5F5F5F5F5F5F4
            F4F4959595F0F0F0EFEFEFEEEEEE8B8B8BEBEBEBEBEBEBA7A7A7BD4C00FFEFDE
            FFEDD8FEEAD1811E00FEE3C5FEE0C0FEDDB8811E00FED8ACFED4A9FFD3A3811E
            00FECF9AFECC98BD4C00A7A7A7F5F5F5F5F5F5F5F5F5959595F5F5F5F5F5F5F5
            F5F5959595F2F2F2F0F0F0EFEFEF8B8B8BECECECEBEBEBA7A7A7BD4C00FFF0E2
            FEEEDDFEEBD7811E00FEE5CAFEE2C2FEDEBD811E00FEDAB2FED5ABFED4A7811E
            00FFD09EFECE99BD4C00A7A7A7F5F5F5F5F5F5F5F5F5959595F5F5F5F5F5F5F5
            F5F5959595F3F3F3F1F1F1F0F0F08B8B8BEEEEEEECECECA7A7A7BD4C00811E00
            811E00811E00811E00811E00811E00811E00811E00811E00811E00811E00811E
            00811E00811E00BD4C00A7A7A795959595959595959595959595959595959595
            9595959595959595959595959595959595959595959595A7A7A7BD4C00FFF6ED
            FFF3E6FFEFE1811E00FFEAD4FFE7CEFEE5C6811E00FEDEBBFEDAB5FFD8AF811E
            00FED3A5FED0A0BD4C00A7A7A7F5F5F5F5F5F5F5F5F5959595F5F5F5F5F5F5F5
            F5F5959595F5F5F5F4F4F4F2F2F2959595F0F0F0EEEEEEA7A7A7BD4C00FFF8F0
            FFF6EAFFF3E5811E00FFEDD9FFEAD3FFE6CC811E00FEE1BFFFDDB8FED9B2811E
            00FED4A7FFD3A4BD4C00A7A7A7F5F5F5F5F5F5F5F5F5959595F5F5F5F5F5F5F5
            F5F5959595F5F5F5F5F5F5F3F3F3959595F0F0F0F0F0F0A7A7A7BD4C00FFFAF3
            FFF7EEFFF6EA811E00FEEFDDFFEBD7FFE9D0811E00FFE2C5FFE0BDFEDDB8811E
            00FED7ACFED4A6BD4C00A7A7A7F5F5F5F5F5F5F5F5F5959595F5F5F5F5F5F5F5
            F5F5959595F5F5F5F5F5F5F5F5F5959595F2F2F2F0F0F0A7A7A7BD4C00811E00
            811E00811E00811E00811E00811E00811E00811E00811E00811E00811E00811E
            00811E00811E00BD4C00A7A7A795959595959595959595959595959595959595
            9595959595959595959595959595959595959595959595A7A7A7BD4C00FFFCFA
            FFFAF6FFF8F2811E00FFF4E7FFF0E1FFEDDA811E00FFE7CEFFE3C7FFE1C1811E
            00FEDAB5FED9AFBD4C00A7A7A7F5F5F5F5F5F5F5F5F5959595F5F5F5F5F5F5F5
            F5F58B8B8BF5F5F5F5F5F5F5F5F5959595F4F4F4F2F2F2A7A7A7BD4C00FFFFFC
            FFFCF8FFFAF6811E00FFF6EAFEF3E6FFF0DE811E00FFEAD3FFE6CCFEE3C6811E
            00FEDDBAFEDAB4BD4C00A7A7A7F5F5F5F5F5F5F5F5F5959595F5F5F5F5F5F5F5
            F5F58B8B8BF5F5F5F5F5F5F5F5F5959595F5F5F5F4F4F4A7A7A7BD4C00FFFFFF
            FFFEFCFFFCF8811E00FEF7EFFFF4EAFFF2E3811E00FFEDD7FFE9D1FFE6CB811E
            00FEE0BDFFDDB8BD4C00A7A7A7F5F5F5F5F5F5F5F5F5959595F5F5F5F5F5F5F5
            F5F58B8B8BF5F5F5F5F5F5F5F5F5959595F5F5F5F5F5F5A7A7A7BD4C00BD4C00
            BD4C00BD4C00BD4C00BD4C00BD4C00BD4C00BD4C00BD4C00BD4C00BD4C00BD4C
            00BD4C00BD4C00BD4C00A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7
            A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7BD4C00BD4C00
            BD4C00BD4C00BD4C00BD4C00BD4C00BD4C00BD4C00BD4C00BD4C00BD4C00BD4C
            00BD4C00BD4C00BD4C00A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7
            A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7FF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
          Margin = 5
          NumGlyphs = 2
          TabOrder = 0
          OnClick = BtnAdicionarOccClick
        end
        object BtnCancelarOcc: TCBitBtn
          Left = 9
          Top = 42
          Width = 75
          Height = 25
          Caption = '&Cancelar'
          Glyph.Data = {
            36060000424D3606000000000000360000002800000020000000100000000100
            18000000000000060000120B0000120B00000000000000000000FF00FFFF00FF
            FF00FFFF00FFFF00FF05720A05720A05720A05720A05720A05720A05720A0572
            0A05720A05720A05720AFF00FFFF00FFFF00FFFF00FFFF00FFAAAAAAAAAAAAAA
            AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA7F7AB88384
            B88384B88384B8838405720AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFF05720AAFAFAFB7B7B7B7B7B7B7B7B7B7B7B7AAAAAAF5F5F5F5
            F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5AAAAAAAD827BFCEBCE
            F7DFBFF4DAB3F3D6AB05720AFFFFFFFFFFFF006600006600006600FFFFFFFFFF
            FFFFFFFFFFFFFF05720AB1B1B1EAEAEAE3E3E3DDDDDDDADADAAAAAAAF5F5F5F5
            F5F5959595959595959595F5F5F5F5F5F5F5F5F5F5F5F5AAAAAAB1857CFDEDD5
            F5DFC5F4DBBBF2D7B205720AFFFFFFFFFFFFFFFFFFFFFFFF077D0E006600F3F8
            F4FFFFFFFFFFFF05720AB2B2B2EDEDEDE4E4E4E0E0E0DCDCDCAAAAAAF5F5F5F5
            F5F5F5F5F5F5F5F59F9F9F959595F5F5F5F5F5F5F5F5F5AAAAAAB6897EFEF2DE
            F7E5CEF5E0C5F4DCBC05720AFFFFFFFFFFFFFFFFFFFFFFFF2B9733006600FFFF
            FFFFFFFFFFFFFF05720AB5B5B5F0F0F0E8E8E8E4E4E4E1E1E1AAAAAAF5F5F5F5
            F5F5F5F5F5F5F5F5B5B5B5959595F5F5F5F5F5F5F5F5F5AAAAAABA8D80FFF7E8
            F8E8D6F6E4CDF5E0C405720AFFFFFFFFFFFF00660000660024902E19A32B0066
            00006600FFFFFF05720AB7B7B7F4F4F4EBEBEBE7E7E7E3E3E3AAAAAAF5F5F5F5
            F5F5959595959595B0B0B0B3B3B3959595959595F5F5F5AAAAAABF9183FFFCF2
            F9EDDFF7E8D6F6E4CD05720AFFFFFFFFFFFF006600168B233DBE5F3AC95B199D
            29006600FFFFFF05720ABABABAF5F5F5EFEFEFEAEAEAE7E7E7AAAAAAF5F5F5F5
            F5F5959595A9A9A9C9C9C9CBCBCBB1B1B1959595F5F5F5AAAAAAC49685FFFFFC
            FAF1E8F9ECDEF8E8D505720AFFFFFFFFFFFFFFFFFF00660033AF5053E0810066
            00FFFFFFFFFFFF05720ABCBCBCF5F5F5F2F2F2EEEEEEEAEAEAAAAAAAF5F5F5F5
            F5F5F5F5F5959595C0C0C0DCDCDC959595F5F5F5F5F5F5AAAAAAC99B87FFFFFF
            FDF7F2FBF1E8FAEEDF05720AFFFFFFFFFFFFFFFFFFFFFFFF006600006600FFFF
            FFFFFFFFFFFFFF05720ABFBFBFF5F5F5F5F5F5F2F2F2EFEFEFAAAAAAF5F5F5F5
            F5F5F5F5F5F5F5F5959595959595F5F5F5F5F5F5F5F5F5AAAAAACD9E8AFFFFFF
            FFFCFBFEF7F1FBF2E705720AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFF05720AC1C1C1F5F5F5F5F5F5F5F5F5F2F2F2AAAAAAF5F5F5F5
            F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5AAAAAAD1A38BFFFFFF
            FFFFFFFFFDFBFDF7F105720A05720A05720A05720A05720A05720A05720A0572
            0A05720A05720A05720AC3C3C3F5F5F5F5F5F5F5F5F5F5F5F5AAAAAAAAAAAAAA
            AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAD6A78DFFFFFF
            FFFFFFFFFFFFFFFDFBFDF7F1FBF1E6FAEDDEFDF0DDEADDCAC7BFB0B88384FF00
            FFFF00FFFF00FFFF00FFC5C5C5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F1F1F1EF
            EFEFEFEFEFE2E2E2CCCCCCB7B7B7FF00FFFF00FFFF00FFFF00FFD9AA8FFFFFFF
            FFFFFFFFFFFFFFFFFFFEFDFBFDF8F0FBF3E7B88384B88384B88384B88384FF00
            FFFF00FFFF00FFFF00FFC7C7C7F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F2
            F2F2B7B7B7B7B7B7B7B7B7B7B7B7FF00FFFF00FFFF00FFFF00FFDDAC91FFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFDF7F0ECB88384E9B676F3AE52CA8A6AFF00
            FFFF00FFFF00FFFF00FFC9C9C9F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F2
            F2F2B7B7B7C4C4C4BBBBBBB5B5B5FF00FFFF00FFFF00FFFF00FFDFAF92FFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFAFEB88384EBB87AD09877FF00FFFF00
            FFFF00FFFF00FFFF00FFCACACAF5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5
            F5F5B7B7B7C6C6C6BBBBBBFF00FFFF00FFFF00FFFF00FFFF00FFDBA685DBA685
            DBA685DBA685DBA685DBA685DBA685DBA685B88384CA9784FF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFC4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4
            C4C4B7B7B7BEBEBEFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
          Margin = 5
          NumGlyphs = 2
          TabOrder = 1
          OnClick = BtnAdicionarOccClick
        end
        object BtnRetirarOcc: TCBitBtn
          Left = 9
          Top = 73
          Width = 75
          Height = 25
          Caption = '&Retirar'
          Glyph.Data = {
            36060000424D3606000000000000360000002800000020000000100000000100
            18000000000000060000120B0000120B00000000000000000000FF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FF92635DA46769A46769A46769A46769A46769A467
            69A46769A46769A46769FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF9A9A9AA6
            A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6FF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FF96655EFFFBD1FADEB4F8D9A6F4D197F3CB8AF0C7
            81F0C781FCD5869F6F60FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF9C9C9CF7
            F7F7E9E9E9E3E3E3DBDBDBD5D5D5D0D0D0D0D0D0D7D7D7A1A1A1FF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FF9A685EFFF3D9F2D9BBF2D4AFEECCA1015503EAC0
            89E7BC80F3C9829F6F60FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF9E9E9EFA
            FAFAE9E9E9E4E4E4DDDDDD6C6C6CD1D1D1CCCCCCD2D2D2A1A1A1FF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FF9F6C5FFFFBE9F4E0C6F3DABA0155032CC5580155
            03EAC187F3CA819F6F60FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFA0A0A0FF
            FFFFEFEFEFE9E9E96C6C6CBDBDBD6C6C6CD0D0D0D1D1D1A1A1A1FF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFA57060FFFFF8F7E5D401550330BD5741E07522B6
            3E015503F4CE8A9F6F60FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFA3A3A3FF
            FFFFF5F5F56C6C6CBCBCBCD3D3D3B1B1B16C6C6CD6D6D6A1A1A1FF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFAC7562FFFFFF015503067F141A922F27BB45149A
            260C88160155039F6F60FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFA7A7A7FF
            FFFF6C6C6C8585859D9D9DB6B6B69C9C9C8E8E8E6C6C6CA1A1A1FF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFB47A63FFFFFFFCF7F2FAEEE301550315A5280155
            03F2D3ACFBDCA79F6F60FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFAAAAAAFF
            FFFFFFFFFFFCFCFC6B6B6BA1A1A16C6C6CE3E3E3E5E5E5A1A1A1FF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFBB7F64FFFFFFFFFEFEFEF7F20360070996130155
            03FBE6C4EEDCB29F6F60FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFAEAEAEFF
            FFFFFFFFFFFFFFFF7474749191916C6C6CF0F0F0E4E4E4A1A1A1FF00FF92635D
            A46769A46769A46769A46769A46769A46769FFFFFF036E0704780A058C0D0155
            03CBA693AC8E84A16B6DFF00FF9090909C9C9C9C9C9C9C9C9C9C9C9C9C9C9C9C
            9C9CFFFFFF7B7B7B8080808A8A8A6C6C6CCACACAB7B7B7A7A7A7FF00FF97675E
            FFEBC4F7DCB4F4D7AAF4D4A3E6BD9301550301550301770705840C026606DAC1
            BBA96A54D98A409F675BFF00FF929292E8E8E8DEDEDED9D9D9D6D6D6CACACA6C
            6C6C6C6C6C7C7C7C868686757575E0E0E09F9F9FA8A8A89E9E9EFF00FFA06D60
            FBEACEDD9644DD9644DD9644E2BD99A46769FFFFFFFFFFFFFFFFFFFFFFFFD8C5
            C79F675BE09A5BFF00FFFF00FF979797EAEAEAA3A3A3A3A3A3A3A3A3CBCBCB9C
            9C9CFFFFFFFFFFFFFFFFFFFFFFFFE3E3E39E9E9EB8B8B8FF00FFFF00FFAA7462
            FCF0DCF6E2CAF4DDC0F4D9B7E6C2A4A46769CF8E68CF8E68CF8E68CF8E68CF8E
            689F675BFF00FFFF00FFFF00FF9C9C9CF0F0F0E7E7E7E2E2E2DFDFDFD1D1D19C
            9C9CB8B8B8B8B8B8B8B8B8B8B8B8B8B8B89E9E9EFF00FFFF00FFFF00FFB57B64
            FEF7EBDD9644DD9644FBE9CCE3CAB1A46769FF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFA1A1A1F5F5F5A3A3A3A3A3A3EAEAEAD6D6D69C
            9C9CFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFC08266
            FFFEF8FBF0E5FAEFDEA46769A46769A46769FF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFA7A7A7F5F5F5F3F3F3F0F0F09C9C9C9C9C9C9C
            9C9CFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFC98967
            FFFFFFFFFFFEFEFBF7A46769E09A5BFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFABABABF5F5F5F5F5F5F5F5F59C9C9CAEAEAEFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFCF8E68
            CF8E68CF8E68CF8E68A46769FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFAEAEAEAEAEAEAEAEAEAEAEAE9C9C9CFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
          Margin = 5
          NumGlyphs = 2
          TabOrder = 2
          OnClick = BtnAdicionarOccClick
        end
        object BtnNovoOcc: TCBitBtn
          Left = 9
          Top = 104
          Width = 75
          Height = 25
          Caption = '&Novo'
          Glyph.Data = {
            36060000424D3606000000000000360000002800000020000000100000000100
            18000000000000060000120B0000120B00000000000000000000FF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFCC6701CC6701
            CC6701CC6701CC6701CC6701CC6701CC6701CC6701FF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FF98989898989898989898989898989898989898989898
            9898989898FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFFFEFCFFFBF7
            FEF8F0FFF5E8FFF0E1FEEDD9FEEAD2FEE7CCCC6701FF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEA
            EAEA989898FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFFFEFDFFFCF9
            FFF9F3FFF6ECFFF2E4FEEEDCFEEBD4FEE8CDCC6701FF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEA
            EAEA989898FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFFFFFFFFFDFB
            FFFAF5FEF7EEFEF4E6FEF0DEFEECD7FEE9D0CC6701FF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEA
            EAEA989898FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF993300993300
            993300993300993300993300993300993300993300993300993300CC6701FF00
            FF006600FF00FFFF00FF7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E
            7E7E7E7E7E7E7E7E7E7E7E989898FF00FF656565FF00FFFF00FFFFFFFEFFFCFA
            FFFBF5FFF8F0FEF5EAFFF2E4FEEFDEFEEDD8FEEAD3FEE8CDFEE6C9CC6701FF00
            FF006600006600FF00FFEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEA
            EAEAEAEAEAEAEAEAEAEAEA838383FF00FF656565656565FF00FFFFFEFEFFFDFB
            FEFBF6FFF9F2FFF6ECFFF3E6FEF1E0FFEEDAFEEBD4FEE8CFFEE6CACC6701FF00
            FF00660066FE9A006600EAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEA
            EAEAEAEAEAEAEAEAEAEAEA838383FF00FF656565E4E4E4656565FFFFFFFFFDFC
            FFFBF8FFF9F3FEF7EDFFF4E7FFF1E2FEEEDCFEEBD5FEE9D0FEE7CBCC6701FF00
            FF006600006600FF00FFEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEA
            EAEAEAEAEAEAEAEAEAEAEA838383FF00FF656565656565FF00FF993300993300
            993300993300993300993300993300993300993300993300993300CC6701FF00
            FF006600FF00FFFF00FF7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E
            7E7E7E7E7E7E7E7E7E7E7E989898FF00FF656565FF00FFFF00FFFFFFFFFFFDFB
            FFFAF5FFF7EDFFF2E5FFEFDCFEEBD4FEE8CCCC6701FF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEA
            EAEA989898FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFFFFFFFFFEFE
            FFFBF8FFF8F0FFF4E8FEF0DFFFECD7FEE8D0CC6701FF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEA
            EAEA989898FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFFFFFFFFFFFF
            FFFDFAFFFAF4FEF6ECFEF2E4FEEEDAFEEBD2CC6701FF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEA
            EAEA989898FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFCC6701CC6701
            CC6701CC6701CC6701CC6701CC6701CC6701CC6701FF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FF98989898989898989898989898989898989898989898
            9898989898FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
          Margin = 5
          NumGlyphs = 2
          Spacing = 5
          TabOrder = 3
          OnClick = BtnAdicionarOccClick
        end
      end
      object CGroupBox37: TCGroupBox
        Left = 13
        Top = 141
        Width = 558
        Height = 126
        TabOrder = 2
        object CDBGrid9: TCDBGrid
          Left = 7
          Top = 14
          Width = 535
          Height = 102
          TabStop = False
          DataSource = dsCTeOcc
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection]
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          UtilizaOrdenar = False
          Columns = <
            item
              Expanded = False
              FieldName = 'serie'
              Title.Caption = 'S'#233'rie'
              Width = 64
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'nrOcc'
              Title.Caption = 'N'#250'mero'
              Width = 70
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'dtEmissao'
              Title.Caption = 'Emiss'#227'o'
              Width = 90
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'descEmissor'
              Title.Caption = 'Emissor'
              Width = 296
              Visible = True
            end>
        end
      end
      object CGroupBox36: TCGroupBox
        Left = 13
        Top = 75
        Width = 558
        Height = 64
        Caption = 'Ordens de Coleta'
        TabOrder = 1
        object CLabel107: TCLabel
          Left = 30
          Top = 19
          Width = 24
          Height = 13
          Alignment = taRightJustify
          Caption = 'S'#233'rie'
        end
        object CLabel108: TCLabel
          Left = 133
          Top = 19
          Width = 37
          Height = 13
          Alignment = taRightJustify
          Caption = 'N'#250'mero'
        end
        object CLabel109: TCLabel
          Left = 267
          Top = 19
          Width = 64
          Height = 13
          Alignment = taRightJustify
          Caption = 'Data Emiss'#227'o'
        end
        object CLabel120: TCLabel
          Left = 18
          Top = 41
          Width = 36
          Height = 13
          Alignment = taRightJustify
          Caption = 'Emissor'
        end
        object DBEserieOcc: TCDBEdit
          Left = 60
          Top = 16
          Width = 64
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'serie'
          DataSource = dsCTeOcc
          TabOrder = 0
          OnDblClick = DBEqtCargaDblClick
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEnrOcc: TCDBEdit
          Left = 176
          Top = 16
          Width = 78
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'nrOcc'
          DataSource = dsCTeOcc
          MaxLength = 6
          TabOrder = 1
          OnDblClick = DBEqtCargaDblClick
          OnExit = DBEnrOccExit
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEdtEmissaoOcc: TCDBEdit
          Left = 337
          Top = 16
          Width = 87
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'dtEmissao'
          DataSource = dsCTeOcc
          MaxLength = 10
          TabOrder = 2
          OnDblClick = DBEqtCargaDblClick
          DecimalControl = True
          KeyMode = kmDate
        end
        object CLookUp22: TCLookUp
          Left = 130
          Top = 38
          Width = 260
          Height = 19
          Alignment = taLeftJustify
          BevelInner = bvSpace
          BevelOuter = bvLowered
          Color = 14149350
          ParentBackground = False
          TabOrder = 3
          Key.Strings = (
            'idEmissorOcc')
          LookUpKey.Strings = (
            'idCliente')
          ClientDataSet = cdsLookup
          DataSource = dsCTeOcc
          ValidaCampoObrigatorio = True
          CampoObrigatorio = True
          LookUpTable = 'vCadClienteContabil'
          ReturnField = 'descCadCliente'
        end
        object DBEidEmissorOcc: TCDBEdit
          Left = 60
          Top = 38
          Width = 64
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'idEmissorOcc'
          DataSource = dsCTeOcc
          TabOrder = 4
          Find = dmFind.FindFornecedor
          AcaoCad = frmPrincipal.actCadCliente
          DecimalControl = True
          KeyMode = kmNormal
        end
        object CLookUp23: TCLookUp
          Left = 396
          Top = 38
          Width = 154
          Height = 19
          Alignment = taLeftJustify
          BevelInner = bvSpace
          BevelOuter = bvLowered
          Color = 14149350
          ParentBackground = False
          TabOrder = 5
          Key.Strings = (
            'idEmissorOcc')
          LookUpKey.Strings = (
            'idCliente')
          ClientDataSet = cdsLookup
          DataSource = dsCTeOcc
          ValidaCampoObrigatorio = True
          CampoObrigatorio = True
          LookUpTable = 'vCadClienteContabil'
          ReturnField = 'descAbreviada'
        end
      end
      object CGroupBox35: TCGroupBox
        Left = 13
        Top = 7
        Width = 656
        Height = 62
        Caption = 'Informa'#231#245'es do Modal Rodovi'#225'rio'
        TabOrder = 0
        object CLabel104: TCLabel
          Left = 23
          Top = 17
          Width = 34
          Height = 13
          Alignment = taRightJustify
          Caption = 'RNTRC'
        end
        object CLabel106: TCLabel
          Left = 32
          Top = 39
          Width = 25
          Height = 13
          Alignment = taRightJustify
          Caption = 'CIOT'
        end
        object CLabel105: TCLabel
          Left = 146
          Top = 17
          Width = 41
          Height = 13
          Alignment = taRightJustify
          Caption = 'Previs'#227'o'
        end
        object CLabel118: TCLabel
          Left = 334
          Top = 17
          Width = 33
          Height = 13
          Alignment = taRightJustify
          Caption = 'Ve'#237'culo'
        end
        object CLabel119: TCLabel
          Left = 219
          Top = 39
          Width = 45
          Height = 13
          Alignment = taRightJustify
          Caption = 'Motorista'
        end
        object DBECIOT: TCDBEdit
          Left = 63
          Top = 36
          Width = 125
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'CIOT'
          DataSource = dsCTeRodo
          TabOrder = 5
          OnDblClick = DBEforPagDblClick
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBERNTRC: TCDBEdit
          Left = 63
          Top = 14
          Width = 77
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'RNTRC'
          DataSource = dsCTeRodo
          TabOrder = 0
          OnDblClick = DBEforPagDblClick
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEdtPrevisaoRodo: TCDBEdit
          Left = 193
          Top = 14
          Width = 70
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'dtPrevisao'
          DataSource = dsCTeRodo
          MaxLength = 10
          TabOrder = 1
          OnDblClick = DBEforPagDblClick
          DecimalControl = True
          KeyMode = kmDate
        end
        object DBCKlotacao: TCDBCheckBox
          Left = 269
          Top = 16
          Width = 60
          Height = 17
          Caption = 'Lota'#231#227'o?'
          DataField = 'lotacao'
          DataSource = dsCTeRodo
          TabOrder = 2
          ValueChecked = '1'
          ValueUnchecked = '0'
          OnExit = DBCKlotacaoExit
        end
        object DBEidMaquina: TCDBEdit
          Left = 373
          Top = 14
          Width = 62
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'idMaquina'
          DataSource = dsCTeRodo
          TabOrder = 3
          OnEnter = DBEidMaquinaEnter
          Find = dmFind.FindMaquina
          AcaoCad = frmPrincipal.actCadMaquina
          DecimalControl = True
          KeyMode = kmNormal
        end
        object CLookUp21: TCLookUp
          Left = 441
          Top = 14
          Width = 203
          Height = 19
          Alignment = taLeftJustify
          BevelInner = bvSpace
          BevelOuter = bvLowered
          Color = 14149350
          ParentBackground = False
          TabOrder = 4
          Key.Strings = (
            'idMaquina')
          LookUpKey.Strings = (
            'idMaquina')
          ClientDataSet = cdsLookup
          DataSource = dsCTeRodo
          ValidaCampoObrigatorio = True
          CampoObrigatorio = True
          LookUpTable = 'Maquina'
          ReturnField = 'descMaquina'
        end
        object CLookUp24: TCLookUp
          Left = 340
          Top = 36
          Width = 304
          Height = 19
          Alignment = taLeftJustify
          BevelInner = bvSpace
          BevelOuter = bvLowered
          Color = 14149350
          ParentBackground = False
          TabOrder = 7
          Key.Strings = (
            'idMotorista')
          LookUpKey.Strings = (
            'idCliente')
          ClientDataSet = cdsLookup
          DataSource = dsCTeRodo
          ValidaCampoObrigatorio = True
          CampoObrigatorio = True
          LookUpTable = 'vCadClienteContabil'
          ReturnField = 'descCadCliente'
        end
        object DBEidMotorista: TCDBEdit
          Left = 270
          Top = 36
          Width = 64
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'idMotorista'
          DataSource = dsCTeRodo
          TabOrder = 6
          Find = dmFind.FindFornecedor
          AcaoCad = frmPrincipal.actCadCliente
          DecimalControl = True
          KeyMode = kmNormal
        end
      end
    end
    object TabCustos: TTabSheet
      Caption = 'Custos'
      ImageIndex = 6
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object CGroupBox3: TCGroupBox
        Left = 497
        Top = 149
        Width = 92
        Height = 263
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
        object CLabel157: TCLabel
          Left = 7
          Top = 157
          Width = 78
          Height = 13
          Alignment = taCenter
          AutoSize = False
          Caption = 'Total Rateio'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object LblTotalRat: TCLabel
          Left = 7
          Top = 176
          Width = 78
          Height = 13
          Alignment = taCenter
          AutoSize = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object CLabel158: TCLabel
          Left = 7
          Top = 198
          Width = 78
          Height = 13
          Alignment = taCenter
          AutoSize = False
          Caption = 'Restante'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object LblRestanteRat: TCLabel
          Left = 7
          Top = 217
          Width = 78
          Height = 13
          Alignment = taCenter
          AutoSize = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object BtnNovoCusto: TCBitBtn
          Left = 9
          Top = 104
          Width = 75
          Height = 25
          Caption = '&Novo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Glyph.Data = {
            36060000424D3606000000000000360000002800000020000000100000000100
            18000000000000060000120B0000120B00000000000000000000FF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFCC6701CC6701
            CC6701CC6701CC6701CC6701CC6701CC6701CC6701FF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FF98989898989898989898989898989898989898989898
            9898989898FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFFFEFCFFFBF7
            FEF8F0FFF5E8FFF0E1FEEDD9FEEAD2FEE7CCCC6701FF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEA
            EAEA989898FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFFFEFDFFFCF9
            FFF9F3FFF6ECFFF2E4FEEEDCFEEBD4FEE8CDCC6701FF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEA
            EAEA989898FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFFFFFFFFFDFB
            FFFAF5FEF7EEFEF4E6FEF0DEFEECD7FEE9D0CC6701FF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEA
            EAEA989898FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF993300993300
            993300993300993300993300993300993300993300993300993300CC6701FF00
            FF006600FF00FFFF00FF7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E
            7E7E7E7E7E7E7E7E7E7E7E989898FF00FF656565FF00FFFF00FFFFFFFEFFFCFA
            FFFBF5FFF8F0FEF5EAFFF2E4FEEFDEFEEDD8FEEAD3FEE8CDFEE6C9CC6701FF00
            FF006600006600FF00FFEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEA
            EAEAEAEAEAEAEAEAEAEAEA838383FF00FF656565656565FF00FFFFFEFEFFFDFB
            FEFBF6FFF9F2FFF6ECFFF3E6FEF1E0FFEEDAFEEBD4FEE8CFFEE6CACC6701FF00
            FF00660066FE9A006600EAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEA
            EAEAEAEAEAEAEAEAEAEAEA838383FF00FF656565E4E4E4656565FFFFFFFFFDFC
            FFFBF8FFF9F3FEF7EDFFF4E7FFF1E2FEEEDCFEEBD5FEE9D0FEE7CBCC6701FF00
            FF006600006600FF00FFEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEA
            EAEAEAEAEAEAEAEAEAEAEA838383FF00FF656565656565FF00FF993300993300
            993300993300993300993300993300993300993300993300993300CC6701FF00
            FF006600FF00FFFF00FF7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E
            7E7E7E7E7E7E7E7E7E7E7E989898FF00FF656565FF00FFFF00FFFFFFFFFFFDFB
            FFFAF5FFF7EDFFF2E5FFEFDCFEEBD4FEE8CCCC6701FF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEA
            EAEA989898FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFFFFFFFFFEFE
            FFFBF8FFF8F0FFF4E8FEF0DFFFECD7FEE8D0CC6701FF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEA
            EAEA989898FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFFFFFFFFFFFF
            FFFDFAFFFAF4FEF6ECFEF2E4FEEEDAFEEBD2CC6701FF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEA
            EAEA989898FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFCC6701CC6701
            CC6701CC6701CC6701CC6701CC6701CC6701CC6701FF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FF98989898989898989898989898989898989898989898
            9898989898FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
          Margin = 5
          NumGlyphs = 2
          ParentFont = False
          Spacing = 5
          TabOrder = 0
          OnClick = BtnAdicionarCustoClick
        end
        object BtnRetirarCusto: TCBitBtn
          Left = 9
          Top = 73
          Width = 75
          Height = 25
          Caption = '&Retirar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Glyph.Data = {
            36060000424D3606000000000000360000002800000020000000100000000100
            18000000000000060000120B0000120B00000000000000000000FF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FF92635DA46769A46769A46769A46769A46769A467
            69A46769A46769A46769FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF9A9A9AA6
            A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6FF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FF96655EFFFBD1FADEB4F8D9A6F4D197F3CB8AF0C7
            81F0C781FCD5869F6F60FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF9C9C9CF7
            F7F7E9E9E9E3E3E3DBDBDBD5D5D5D0D0D0D0D0D0D7D7D7A1A1A1FF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FF9A685EFFF3D9F2D9BBF2D4AFEECCA1015503EAC0
            89E7BC80F3C9829F6F60FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF9E9E9EFA
            FAFAE9E9E9E4E4E4DDDDDD6C6C6CD1D1D1CCCCCCD2D2D2A1A1A1FF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FF9F6C5FFFFBE9F4E0C6F3DABA0155032CC5580155
            03EAC187F3CA819F6F60FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFA0A0A0FF
            FFFFEFEFEFE9E9E96C6C6CBDBDBD6C6C6CD0D0D0D1D1D1A1A1A1FF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFA57060FFFFF8F7E5D401550330BD5741E07522B6
            3E015503F4CE8A9F6F60FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFA3A3A3FF
            FFFFF5F5F56C6C6CBCBCBCD3D3D3B1B1B16C6C6CD6D6D6A1A1A1FF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFAC7562FFFFFF015503067F141A922F27BB45149A
            260C88160155039F6F60FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFA7A7A7FF
            FFFF6C6C6C8585859D9D9DB6B6B69C9C9C8E8E8E6C6C6CA1A1A1FF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFB47A63FFFFFFFCF7F2FAEEE301550315A5280155
            03F2D3ACFBDCA79F6F60FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFAAAAAAFF
            FFFFFFFFFFFCFCFC6B6B6BA1A1A16C6C6CE3E3E3E5E5E5A1A1A1FF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFBB7F64FFFFFFFFFEFEFEF7F20360070996130155
            03FBE6C4EEDCB29F6F60FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFAEAEAEFF
            FFFFFFFFFFFFFFFF7474749191916C6C6CF0F0F0E4E4E4A1A1A1FF00FF92635D
            A46769A46769A46769A46769A46769A46769FFFFFF036E0704780A058C0D0155
            03CBA693AC8E84A16B6DFF00FF9090909C9C9C9C9C9C9C9C9C9C9C9C9C9C9C9C
            9C9CFFFFFF7B7B7B8080808A8A8A6C6C6CCACACAB7B7B7A7A7A7FF00FF97675E
            FFEBC4F7DCB4F4D7AAF4D4A3E6BD9301550301550301770705840C026606DAC1
            BBA96A54D98A409F675BFF00FF929292E8E8E8DEDEDED9D9D9D6D6D6CACACA6C
            6C6C6C6C6C7C7C7C868686757575E0E0E09F9F9FA8A8A89E9E9EFF00FFA06D60
            FBEACEDD9644DD9644DD9644E2BD99A46769FFFFFFFFFFFFFFFFFFFFFFFFD8C5
            C79F675BE09A5BFF00FFFF00FF979797EAEAEAA3A3A3A3A3A3A3A3A3CBCBCB9C
            9C9CFFFFFFFFFFFFFFFFFFFFFFFFE3E3E39E9E9EB8B8B8FF00FFFF00FFAA7462
            FCF0DCF6E2CAF4DDC0F4D9B7E6C2A4A46769CF8E68CF8E68CF8E68CF8E68CF8E
            689F675BFF00FFFF00FFFF00FF9C9C9CF0F0F0E7E7E7E2E2E2DFDFDFD1D1D19C
            9C9CB8B8B8B8B8B8B8B8B8B8B8B8B8B8B89E9E9EFF00FFFF00FFFF00FFB57B64
            FEF7EBDD9644DD9644FBE9CCE3CAB1A46769FF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFA1A1A1F5F5F5A3A3A3A3A3A3EAEAEAD6D6D69C
            9C9CFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFC08266
            FFFEF8FBF0E5FAEFDEA46769A46769A46769FF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFA7A7A7F5F5F5F3F3F3F0F0F09C9C9C9C9C9C9C
            9C9CFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFC98967
            FFFFFFFFFFFEFEFBF7A46769E09A5BFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFABABABF5F5F5F5F5F5F5F5F59C9C9CAEAEAEFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFCF8E68
            CF8E68CF8E68CF8E68A46769FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFAEAEAEAEAEAEAEAEAEAEAEAE9C9C9CFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
          Margin = 5
          NumGlyphs = 2
          ParentFont = False
          TabOrder = 1
          OnClick = BtnAdicionarCustoClick
        end
        object BtnCancelarCusto: TCBitBtn
          Left = 9
          Top = 42
          Width = 75
          Height = 25
          Caption = '&Cancelar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Glyph.Data = {
            36060000424D3606000000000000360000002800000020000000100000000100
            18000000000000060000120B0000120B00000000000000000000FF00FFFF00FF
            FF00FFFF00FFFF00FF05720A05720A05720A05720A05720A05720A05720A0572
            0A05720A05720A05720AFF00FFFF00FFFF00FFFF00FFFF00FFAAAAAAAAAAAAAA
            AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA7F7AB88384
            B88384B88384B8838405720AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFF05720AAFAFAFB7B7B7B7B7B7B7B7B7B7B7B7AAAAAAF5F5F5F5
            F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5AAAAAAAD827BFCEBCE
            F7DFBFF4DAB3F3D6AB05720AFFFFFFFFFFFF006600006600006600FFFFFFFFFF
            FFFFFFFFFFFFFF05720AB1B1B1EAEAEAE3E3E3DDDDDDDADADAAAAAAAF5F5F5F5
            F5F5959595959595959595F5F5F5F5F5F5F5F5F5F5F5F5AAAAAAB1857CFDEDD5
            F5DFC5F4DBBBF2D7B205720AFFFFFFFFFFFFFFFFFFFFFFFF077D0E006600F3F8
            F4FFFFFFFFFFFF05720AB2B2B2EDEDEDE4E4E4E0E0E0DCDCDCAAAAAAF5F5F5F5
            F5F5F5F5F5F5F5F59F9F9F959595F5F5F5F5F5F5F5F5F5AAAAAAB6897EFEF2DE
            F7E5CEF5E0C5F4DCBC05720AFFFFFFFFFFFFFFFFFFFFFFFF2B9733006600FFFF
            FFFFFFFFFFFFFF05720AB5B5B5F0F0F0E8E8E8E4E4E4E1E1E1AAAAAAF5F5F5F5
            F5F5F5F5F5F5F5F5B5B5B5959595F5F5F5F5F5F5F5F5F5AAAAAABA8D80FFF7E8
            F8E8D6F6E4CDF5E0C405720AFFFFFFFFFFFF00660000660024902E19A32B0066
            00006600FFFFFF05720AB7B7B7F4F4F4EBEBEBE7E7E7E3E3E3AAAAAAF5F5F5F5
            F5F5959595959595B0B0B0B3B3B3959595959595F5F5F5AAAAAABF9183FFFCF2
            F9EDDFF7E8D6F6E4CD05720AFFFFFFFFFFFF006600168B233DBE5F3AC95B199D
            29006600FFFFFF05720ABABABAF5F5F5EFEFEFEAEAEAE7E7E7AAAAAAF5F5F5F5
            F5F5959595A9A9A9C9C9C9CBCBCBB1B1B1959595F5F5F5AAAAAAC49685FFFFFC
            FAF1E8F9ECDEF8E8D505720AFFFFFFFFFFFFFFFFFF00660033AF5053E0810066
            00FFFFFFFFFFFF05720ABCBCBCF5F5F5F2F2F2EEEEEEEAEAEAAAAAAAF5F5F5F5
            F5F5F5F5F5959595C0C0C0DCDCDC959595F5F5F5F5F5F5AAAAAAC99B87FFFFFF
            FDF7F2FBF1E8FAEEDF05720AFFFFFFFFFFFFFFFFFFFFFFFF006600006600FFFF
            FFFFFFFFFFFFFF05720ABFBFBFF5F5F5F5F5F5F2F2F2EFEFEFAAAAAAF5F5F5F5
            F5F5F5F5F5F5F5F5959595959595F5F5F5F5F5F5F5F5F5AAAAAACD9E8AFFFFFF
            FFFCFBFEF7F1FBF2E705720AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFF05720AC1C1C1F5F5F5F5F5F5F5F5F5F2F2F2AAAAAAF5F5F5F5
            F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5AAAAAAD1A38BFFFFFF
            FFFFFFFFFDFBFDF7F105720A05720A05720A05720A05720A05720A05720A0572
            0A05720A05720A05720AC3C3C3F5F5F5F5F5F5F5F5F5F5F5F5AAAAAAAAAAAAAA
            AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAD6A78DFFFFFF
            FFFFFFFFFFFFFFFDFBFDF7F1FBF1E6FAEDDEFDF0DDEADDCAC7BFB0B88384FF00
            FFFF00FFFF00FFFF00FFC5C5C5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F1F1F1EF
            EFEFEFEFEFE2E2E2CCCCCCB7B7B7FF00FFFF00FFFF00FFFF00FFD9AA8FFFFFFF
            FFFFFFFFFFFFFFFFFFFEFDFBFDF8F0FBF3E7B88384B88384B88384B88384FF00
            FFFF00FFFF00FFFF00FFC7C7C7F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F2
            F2F2B7B7B7B7B7B7B7B7B7B7B7B7FF00FFFF00FFFF00FFFF00FFDDAC91FFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFDF7F0ECB88384E9B676F3AE52CA8A6AFF00
            FFFF00FFFF00FFFF00FFC9C9C9F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F2
            F2F2B7B7B7C4C4C4BBBBBBB5B5B5FF00FFFF00FFFF00FFFF00FFDFAF92FFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFAFEB88384EBB87AD09877FF00FFFF00
            FFFF00FFFF00FFFF00FFCACACAF5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5
            F5F5B7B7B7C6C6C6BBBBBBFF00FFFF00FFFF00FFFF00FFFF00FFDBA685DBA685
            DBA685DBA685DBA685DBA685DBA685DBA685B88384CA9784FF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFC4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4
            C4C4B7B7B7BEBEBEFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
          Margin = 5
          NumGlyphs = 2
          ParentFont = False
          TabOrder = 2
          OnClick = BtnAdicionarCustoClick
        end
        object BtnAdicionarCusto: TCBitBtn
          Left = 9
          Top = 11
          Width = 75
          Height = 25
          Caption = '&Adicionar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Glyph.Data = {
            36060000424D3606000000000000360000002800000020000000100000000100
            18000000000000060000120B0000120B00000000000000000000FF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFBD4C00BD4C00
            BD4C00BD4C00BD4C00BD4C00BD4C00BD4C00BD4C00BD4C00BD4C00BD4C00BD4C
            00BD4C00BD4C00BD4C00A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7
            A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7BD4C00FFEDD9
            FFEAD3FFE7CE811E00FEE1C0FEDDBBFEDAB4811E00FED5A9FED3A4FFD09F811E
            00FECC98FECB96BD4C00A7A7A7F5F5F5F5F5F5F5F5F5959595F5F5F5F5F5F5F4
            F4F4959595F0F0F0EFEFEFEEEEEE8B8B8BEBEBEBEBEBEBA7A7A7BD4C00FFEFDE
            FFEDD8FEEAD1811E00FEE3C5FEE0C0FEDDB8811E00FED8ACFED4A9FFD3A3811E
            00FECF9AFECC98BD4C00A7A7A7F5F5F5F5F5F5F5F5F5959595F5F5F5F5F5F5F5
            F5F5959595F2F2F2F0F0F0EFEFEF8B8B8BECECECEBEBEBA7A7A7BD4C00FFF0E2
            FEEEDDFEEBD7811E00FEE5CAFEE2C2FEDEBD811E00FEDAB2FED5ABFED4A7811E
            00FFD09EFECE99BD4C00A7A7A7F5F5F5F5F5F5F5F5F5959595F5F5F5F5F5F5F5
            F5F5959595F3F3F3F1F1F1F0F0F08B8B8BEEEEEEECECECA7A7A7BD4C00811E00
            811E00811E00811E00811E00811E00811E00811E00811E00811E00811E00811E
            00811E00811E00BD4C00A7A7A795959595959595959595959595959595959595
            9595959595959595959595959595959595959595959595A7A7A7BD4C00FFF6ED
            FFF3E6FFEFE1811E00FFEAD4FFE7CEFEE5C6811E00FEDEBBFEDAB5FFD8AF811E
            00FED3A5FED0A0BD4C00A7A7A7F5F5F5F5F5F5F5F5F5959595F5F5F5F5F5F5F5
            F5F5959595F5F5F5F4F4F4F2F2F2959595F0F0F0EEEEEEA7A7A7BD4C00FFF8F0
            FFF6EAFFF3E5811E00FFEDD9FFEAD3FFE6CC811E00FEE1BFFFDDB8FED9B2811E
            00FED4A7FFD3A4BD4C00A7A7A7F5F5F5F5F5F5F5F5F5959595F5F5F5F5F5F5F5
            F5F5959595F5F5F5F5F5F5F3F3F3959595F0F0F0F0F0F0A7A7A7BD4C00FFFAF3
            FFF7EEFFF6EA811E00FEEFDDFFEBD7FFE9D0811E00FFE2C5FFE0BDFEDDB8811E
            00FED7ACFED4A6BD4C00A7A7A7F5F5F5F5F5F5F5F5F5959595F5F5F5F5F5F5F5
            F5F5959595F5F5F5F5F5F5F5F5F5959595F2F2F2F0F0F0A7A7A7BD4C00811E00
            811E00811E00811E00811E00811E00811E00811E00811E00811E00811E00811E
            00811E00811E00BD4C00A7A7A795959595959595959595959595959595959595
            9595959595959595959595959595959595959595959595A7A7A7BD4C00FFFCFA
            FFFAF6FFF8F2811E00FFF4E7FFF0E1FFEDDA811E00FFE7CEFFE3C7FFE1C1811E
            00FEDAB5FED9AFBD4C00A7A7A7F5F5F5F5F5F5F5F5F5959595F5F5F5F5F5F5F5
            F5F58B8B8BF5F5F5F5F5F5F5F5F5959595F4F4F4F2F2F2A7A7A7BD4C00FFFFFC
            FFFCF8FFFAF6811E00FFF6EAFEF3E6FFF0DE811E00FFEAD3FFE6CCFEE3C6811E
            00FEDDBAFEDAB4BD4C00A7A7A7F5F5F5F5F5F5F5F5F5959595F5F5F5F5F5F5F5
            F5F58B8B8BF5F5F5F5F5F5F5F5F5959595F5F5F5F4F4F4A7A7A7BD4C00FFFFFF
            FFFEFCFFFCF8811E00FEF7EFFFF4EAFFF2E3811E00FFEDD7FFE9D1FFE6CB811E
            00FEE0BDFFDDB8BD4C00A7A7A7F5F5F5F5F5F5F5F5F5959595F5F5F5F5F5F5F5
            F5F58B8B8BF5F5F5F5F5F5F5F5F5959595F5F5F5F5F5F5A7A7A7BD4C00BD4C00
            BD4C00BD4C00BD4C00BD4C00BD4C00BD4C00BD4C00BD4C00BD4C00BD4C00BD4C
            00BD4C00BD4C00BD4C00A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7
            A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7BD4C00BD4C00
            BD4C00BD4C00BD4C00BD4C00BD4C00BD4C00BD4C00BD4C00BD4C00BD4C00BD4C
            00BD4C00BD4C00BD4C00A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7
            A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7FF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
          Margin = 5
          NumGlyphs = 2
          ParentFont = False
          TabOrder = 3
          OnClick = BtnAdicionarCustoClick
        end
      end
      object CGroupBox4: TCGroupBox
        Left = 9
        Top = 241
        Width = 480
        Height = 170
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        object CDBGrid11: TCDBGrid
          Left = 9
          Top = 12
          Width = 460
          Height = 148
          TabStop = False
          DataSource = dsCusto
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection]
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          UtilizaOrdenar = False
          Columns = <
            item
              Expanded = False
              FieldName = 'idGerencial'
              Title.Caption = 'Gerencial'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'idResultado'
              Title.Caption = 'C.Result.'
              Width = 50
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'descResultado'
              Title.Caption = 'Descri'#231#227'o'
              Width = 180
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'prRateio'
              Title.Caption = '(%)'
              Width = 55
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'vlRateio'
              Title.Caption = 'Valor'
              Width = 85
              Visible = True
            end>
        end
      end
      object CGroupBox5: TCGroupBox
        Left = 9
        Top = 149
        Width = 480
        Height = 85
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        object CLabel155: TCLabel
          Left = 23
          Top = 60
          Width = 51
          Height = 13
          Alignment = taRightJustify
          Caption = 'Percentual'
        end
        object CLabel156: TCLabel
          Left = 144
          Top = 60
          Width = 24
          Height = 13
          Alignment = taRightJustify
          Caption = 'Valor'
        end
        object CLabel153: TCLabel
          Left = 12
          Top = 38
          Width = 62
          Height = 13
          Alignment = taRightJustify
          Caption = 'C. Resultado'
        end
        object CLabel13: TCLabel
          Left = 30
          Top = 16
          Width = 44
          Height = 13
          Alignment = taRightJustify
          Caption = 'Gerencial'
        end
        object DBEprRateio: TCDBEdit
          Left = 80
          Top = 57
          Width = 57
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'prRateio'
          DataSource = dsCusto
          TabOrder = 4
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEvlRateio: TCDBEdit
          Left = 174
          Top = 57
          Width = 91
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'vlRateio'
          DataSource = dsCusto
          TabOrder = 5
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEidResultadoRT: TCDBEdit
          Left = 80
          Top = 35
          Width = 57
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          Color = clWhite
          DataField = 'idResultado'
          DataSource = dsCusto
          TabOrder = 2
          OnExit = DBEidResultadoRTExit
          AcaoCad = frmPrincipal.actCadResultado
          DecimalControl = True
          KeyMode = kmNormal
        end
        object CLookUp29: TCLookUp
          Left = 143
          Top = 35
          Width = 326
          Height = 19
          Alignment = taLeftJustify
          BevelInner = bvSpace
          BevelOuter = bvLowered
          Color = 14149350
          ParentBackground = False
          TabOrder = 3
          Key.Strings = (
            'idResultado')
          LookUpKey.Strings = (
            'idResultado')
          AlternateSQL.Strings = (
            
              'SELECT descResultado FROM Resultado WHERE idEmpresa = [DBEidEmpr' +
              'esa] AND idResultado = ?')
          ClientDataSet = cdsLookup
          DataSource = dsCusto
          ValidaCampoObrigatorio = True
          CampoObrigatorio = True
          LookUpTable = 'Resultado'
          ReturnField = 'descResultado'
        end
        object DBEidGerencialRT: TCDBEdit
          Left = 80
          Top = 13
          Width = 57
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'idGerencial'
          DataSource = dsCusto
          TabOrder = 0
          AcaoCad = frmPrincipal.actCadGerencial
          DecimalControl = True
          KeyMode = kmNormal
        end
        object LookGerencial: TCLookUp
          Left = 143
          Top = 13
          Width = 326
          Height = 19
          Alignment = taLeftJustify
          BevelInner = bvSpace
          BevelOuter = bvLowered
          Color = 14149350
          ParentBackground = False
          TabOrder = 1
          Key.Strings = (
            'idGerencial')
          LookUpKey.Strings = (
            'idGerencial')
          AlternateSQL.Strings = (
            
              'SELECT DISTINCT descGerencial FROM vGerencial WHERE tpGerencial ' +
              '= '#39'ENTRADAS'#39' AND idEmpresa = [DBEidEmpresa] AND idGerencial = ?')
          ClientDataSet = cdsLookup
          DataSource = dsCusto
          ValidaCampoObrigatorio = True
          CampoObrigatorio = True
          LookUpTable = 'vGerencial'
          ReturnField = 'descGerencial'
        end
      end
      object CGroupBox15: TCGroupBox
        Left = 9
        Top = 7
        Width = 480
        Height = 136
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        object CLabel152: TCLabel
          Left = 11
          Top = 15
          Width = 61
          Height = 13
          Alignment = taRightJustify
          Caption = 'Valor Total'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object CLabel2: TCLabel
          Left = 46
          Top = 37
          Width = 26
          Height = 13
          Alignment = taRightJustify
          Caption = 'Safra'
        end
        object CLabel86: TCLabel
          Left = 28
          Top = 59
          Width = 44
          Height = 13
          Alignment = taRightJustify
          Caption = 'Gerencial'
        end
        object CLabel12: TCLabel
          Left = 41
          Top = 103
          Width = 31
          Height = 13
          Alignment = taRightJustify
          Caption = 'Rateio'
        end
        object CLabel1: TCLabel
          Left = 24
          Top = 81
          Width = 48
          Height = 13
          Alignment = taRightJustify
          Caption = 'Resultado'
        end
        object BtnGerarRateio: TCBitBtn
          Left = 358
          Top = 102
          Width = 93
          Height = 25
          Caption = '&Gerar Rateio'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Glyph.Data = {
            36080000424D3608000000000000360000002800000020000000100000000100
            2000000000000008000000000000000000000000000000000000FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00D9D9DAFFFF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00E3E3E3FFFF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00ABA9A8FFDCDCDCFF8C8B8DFFEEEE
            EEFFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00CACACAFFFFFFFFFFB4B4B4FFF2F2
            F2FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00DFDFDFFFF0EDE9FFE7E5DEFFB5B3B0FFD2D1
            D2FFC1C0C1FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00E7E7E7FFFFFFFFFFFFFFFFFFF0F0F0FFFFFF
            FFFFD1D1D1FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00D4CBC2FFE4E1D9FFE5E2DAFFE5E0D8FFD1C9
            C1FFDDDCDCFF8D8C8DFFE9E9E9FFFF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFBCBCBCFFEFEFEFFFFF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00A19A94FFE1DAD3FFE5E0D8FFE3DCD5FFDDD6CEFFDCD2
            C8FFD5C9BDFFB1ADA9FFDFDFDFFFB1B0B1FFFF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00C2C2C2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFEAEAEAFFFFFFFFFFC6C6C6FFFF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00D1D0D1FFE3DBD3FFDCD3C9FFDAD1C8FFDDD3CAFFDDD3C9FFD4C8
            BDFFCEC0B3FFCCBCADFFB1A297FFE6E6E6FFC5C4C5FFFF00FF00FF00FF00FF00
            FF00FF00FF00DDDDDDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFDFDFDFFF9F9F9FFE0E0E0FFFFFFFFFFD7D7D7FFFF00FF00FF00FF00FF00
            FF00F6F6F6FFC9BAB0FFCEC1B4FFD2C6BAFFD9CEC2FFD6CBBFFFD1C5B9FFD2C4
            B7FFCEBEB0FFC2B1A4FFBDAA9EFFB9A59AFFFF00FF00FF00FF00FF00FF00FF00
            FF00F8F8F8FFF9F9F9FFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFCFCFCFFEFEFEFFFE9E9E9FFE4E4E4FFFF00FF00FF00FF00FF00FF00FF00
            FF0093847FFFC6B6A9FFCCBCADFFCFC1B2FFCDBEB0FFCFC0B2FFD1C2B4FFC9B9
            ABFFB6ABA0FFB6807DFFBCA89DFFD4C8C2FFFF00FF00FF00FF00FF00FF00FF00
            FF00B8B8B8FFF4F4F4FFF9F9F9FFFDFDFDFFFBFBFBFFFDFDFDFFFFFFFFFFF7F7
            F7FFE8E8E8FFD3D3D3FFE8E8E8FFE5E5E5FFFF00FF00FF00FF00FF00FF00BEBC
            BDFFCFC1BAFFC2B0A3FFC1B0A3FFC4B3A6FFCABAACFFC9B8AAFFC4B3A5FFB6AB
            A2FFF2736CFFFDBBA1FFA18385FFFF00FF00FF00FF00FF00FF00FF00FF00CFCF
            CFFFFFFFFFFFEEEEEEFFEEEEEEFFF1F1F1FFF7F7F7FFF6F6F6FFF1F1F1FFE9E9
            E9FFE3E3E3FFFFFFFFFFBEBEBEFFFF00FF00FF00FF00FF00FF00F4F4F4FFC3B5
            B0FFBCA9A0FFBEADA3FFC5B4AAFFC9B8AEFFC7B7ACFFC6B6ABFFB7AFA4FFEA16
            1BFFFE584BFFFF6B5CFFFD3A32FFCCD0E3FFFF00FF00FF00FF00F7F7F7FFF6F6
            F6FFEAEAEAFFECECECFFF4F4F4FFF8F8F8FFF6F6F6FFF5F5F5FFEAEAEAFFAEAE
            AEFFD5D5D5FFE0E0E0FFC7C7C7FFEBEBEBFFFF00FF00FF00FF00F6F4F4FFC3B3
            AEFFC6B6B0FFCDBEB7FFCEC0BAFFD1C4BDFFD5C8C2FFCBC8BEFFC00314FFE501
            0AFFF61615FFF81E1BFFF1080BFFD2000FFFC9D4E7FFFF00FF00FFFFFFFFE6E6
            E6FFF7F7F7FFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF929292FFA0A0
            A0FFB2B2B2FFB6B6B6FFA9A9A9FF989898FFECECECFFFF00FF00FF00FF00FF00
            FF00D7CDCAFFD5CAC7FFD9CFCAFFDCD2CEFFDED4D0FFD197A0FFD41821FFD624
            2DFFFF5146FFFF554AFFC22636FFB32E41FFAC2E46FFFF00FF00FF00FF00FF00
            FF00FDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEEEEEEFFA6A6A6FFAEAE
            AEFFD3D3D3FFD5D5D5FFA3A3A3FF9E9E9EFF9A9A9AFFFF00FF00FF00FF00FF00
            FF00FF00FF00FBFAFAFFE7E3E3FFE8E5E5FFEBE9E8FFEEEBEBFFF9F9F9FFF9FA
            F9FFFF7E6DFFFF8774FFB6A3CBFFFF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFEAEAEAFFEEEEEEFFD0D0D0FFFF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00F2F0F0FFFAFAFAFFF4F3F3FFFDFDFDFFD4DD
            DCFFFEA696FFF6C8C0FFBCB4CBFFFF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5F5
            F5FFFFFFFFFFFFFFFFFFD8D8D8FFFF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FCFCFCFFFF00FF00FEFEFEFFFF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FFFFFFFFFF00FF00FFFFFFFFFF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
          Margin = 5
          NumGlyphs = 2
          ParentFont = False
          TabOrder = 8
          OnClick = BtnGerarRateioClick
        end
        object DBEidSafra: TCDBEdit
          Left = 78
          Top = 34
          Width = 48
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'idSafra'
          DataSource = dsPadrao
          TabOrder = 1
          Find = dmFind.FindSafra
          DecimalControl = True
          KeyMode = kmNormal
        end
        object LookSafra: TCLookUp
          Left = 132
          Top = 34
          Width = 337
          Height = 19
          Alignment = taLeftJustify
          BevelInner = bvSpace
          BevelOuter = bvLowered
          Color = 14149350
          ParentBackground = False
          TabOrder = 2
          Key.Strings = (
            'idSafra')
          LookUpKey.Strings = (
            'idSafra')
          AlternateSQL.Strings = (
            
              'SELECT descSafra FROM Safra WHERE idEmpresa = [DBEidEmpresa] AND' +
              ' idSafra = ?')
          ClientDataSet = cdsLookup
          DataSource = dsPadrao
          ValidaCampoObrigatorio = True
          CampoObrigatorio = True
          LookUpTable = 'Safra'
          ReturnField = 'descSafra'
        end
        object DBEidGerencial: TCDBEdit
          Left = 78
          Top = 56
          Width = 48
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'idGerencial'
          DataSource = dsPadrao
          TabOrder = 3
          Find = dmFind.FindGerencialR
          DecimalControl = True
          KeyMode = kmNormal
        end
        object LookRateio: TCLookUp
          Left = 132
          Top = 100
          Width = 204
          Height = 19
          Alignment = taLeftJustify
          BevelInner = bvSpace
          BevelOuter = bvLowered
          Color = 14149350
          ParentBackground = False
          TabOrder = 7
          Key.Strings = (
            'idEmpresa'
            'idRateio')
          LookUpKey.Strings = (
            'idEmpresa'
            'idRateio')
          ClientDataSet = cdsLookup
          DataSource = dsPadrao
          ValidaCampoObrigatorio = True
          CampoObrigatorio = True
          LookUpTable = 'Rateio'
          ReturnField = 'descRateio'
        end
        object DBEidRateio: TCDBEdit
          Left = 78
          Top = 100
          Width = 48
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'idRateio'
          DataSource = dsPadrao
          TabOrder = 6
          OnEnter = DBEidMaquinaEnter
          OnExit = DBEidResultadoExit
          Find = dmFind.FindRateio
          DecimalControl = True
          KeyMode = kmNormal
        end
        object LookTalhao: TCLookUp
          Left = 132
          Top = 78
          Width = 337
          Height = 19
          Alignment = taLeftJustify
          BevelInner = bvSpace
          BevelOuter = bvLowered
          Color = 14149350
          ParentBackground = False
          TabOrder = 5
          Key.Strings = (
            'idResultado')
          LookUpKey.Strings = (
            'idResultado')
          AlternateSQL.Strings = (
            
              'SELECT descResultado FROM Resultado WHERE idEmpresa = [DBEidEmpr' +
              'esa] AND idResultado = ?')
          ClientDataSet = cdsLookup
          DataSource = dsPadrao
          ValidaCampoObrigatorio = True
          CampoObrigatorio = True
          LookUpTable = 'Resultado'
          ReturnField = 'descResultado'
        end
        object DBEidResultado: TCDBEdit
          Left = 78
          Top = 78
          Width = 48
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'idResultado'
          DataSource = dsPadrao
          TabOrder = 4
          OnEnter = DBEidMaquinaEnter
          OnExit = DBEidResultadoExit
          Find = dmFind.FindResultado
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEvlTotalGeralRT: TCDBEdit
          Left = 78
          Top = 12
          Width = 94
          Height = 19
          TabStop = False
          BevelKind = bkTile
          BorderStyle = bsNone
          Color = 15201011
          DataField = 'vlTotalGeral'
          DataSource = dsCTeComp
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
        object CLookUp2: TCLookUp
          Left = 132
          Top = 56
          Width = 337
          Height = 19
          Alignment = taLeftJustify
          BevelInner = bvSpace
          BevelOuter = bvLowered
          Color = 14149350
          ParentBackground = False
          TabOrder = 9
          Key.Strings = (
            'idGerencial')
          LookUpKey.Strings = (
            'idGerencial')
          AlternateSQL.Strings = (
            
              'SELECT DISTINCT descGerencial FROM vGerencial WHERE tpGerencial ' +
              '= '#39'ENTRADAS'#39' AND idEmpresa = [DBEidEmpresa] AND idGerencial = ?')
          ClientDataSet = cdsLookup
          DataSource = dsCusto
          ValidaCampoObrigatorio = True
          CampoObrigatorio = True
          LookUpTable = 'vGerencial'
          ReturnField = 'descGerencial'
        end
      end
    end
    object TabFinancas: TTabSheet
      Caption = 'Finan'#231'as'
      ImageIndex = 7
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object grpCaixa: TCGroupBox
        Left = 8
        Top = 3
        Width = 627
        Height = 70
        Caption = 'Lan'#231'amento no Caixa'
        TabOrder = 0
        object CLabel75: TCLabel
          Left = 497
          Top = 19
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
        object CLabel74: TCLabel
          Left = 43
          Top = 19
          Width = 27
          Height = 13
          Alignment = taRightJustify
          Caption = 'Caixa'
        end
        object CLabel79: TCLabel
          Left = 162
          Top = 41
          Width = 41
          Height = 13
          Alignment = taRightJustify
          Caption = 'Hist'#243'rico'
        end
        object CLabel66: TCLabel
          Left = 12
          Top = 41
          Width = 58
          Height = 13
          Alignment = taRightJustify
          Caption = 'Lan'#231'amento'
        end
        object DBEvlMovCaixa: TCDBEdit
          Left = 532
          Top = 16
          Width = 88
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
          TabOrder = 3
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEidCaixa: TCDBEdit
          Left = 76
          Top = 16
          Width = 48
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'idCaixa'
          DataSource = dsMovCaixa
          TabOrder = 0
          Find = dmFind.FindCaixa
          DecimalControl = True
          KeyMode = kmNormal
        end
        object LookCaixa: TCLookUp
          Left = 130
          Top = 16
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
          ClientDataSet = cdsLookup
          DataSource = dsMovCaixa
          ValidaCampoObrigatorio = True
          CampoObrigatorio = True
          LookUpTable = 'Caixa'
          ReturnField = 'descCaixa'
        end
        object CBitBtn2: TCBitBtn
          Left = 395
          Top = 16
          Width = 96
          Height = 19
          Caption = 'Caixa'
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
          TabOrder = 2
          TabStop = False
        end
        object DBEdescMovCaixa: TCDBEdit
          Left = 209
          Top = 38
          Width = 411
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'descMovCaixa'
          DataSource = dsMovCaixa
          TabOrder = 5
          DecimalControl = True
          KeyMode = kmUSUpper
        end
        object DBEdtMovCaixa: TCDBEdit
          Left = 76
          Top = 38
          Width = 80
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'dtMovCaixa'
          DataSource = dsMovCaixa
          MaxLength = 10
          TabOrder = 4
          DecimalControl = True
          KeyMode = kmDate
        end
      end
      object grpBanco: TCGroupBox
        Left = 8
        Top = 79
        Width = 627
        Height = 90
        Caption = 'Lan'#231'amento no Banco'
        TabOrder = 1
        object CLabel83: TCLabel
          Left = 167
          Top = 40
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
        object CLabel98: TCLabel
          Left = 8
          Top = 40
          Width = 67
          Height = 13
          Alignment = taRightJustify
          Caption = 'Compensa'#231#227'o'
        end
        object CLabel82: TCLabel
          Left = 46
          Top = 18
          Width = 29
          Height = 13
          Alignment = taRightJustify
          Caption = 'Conta'
        end
        object CLabel81: TCLabel
          Left = 34
          Top = 62
          Width = 41
          Height = 13
          Alignment = taRightJustify
          Caption = 'Hist'#243'rico'
        end
        object CLabel64: TCLabel
          Left = 320
          Top = 40
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
        object CLabel65: TCLabel
          Left = 468
          Top = 40
          Width = 55
          Height = 13
          Alignment = taRightJustify
          Caption = 'Vencimento'
        end
        object DBEvlMovConta: TCDBEdit
          Left = 202
          Top = 37
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
          TabOrder = 5
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEdtCompensacao: TCDBEdit
          Left = 81
          Top = 37
          Width = 80
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'dtCompensacao'
          DataSource = dsMovConta
          MaxLength = 10
          TabOrder = 4
          DecimalControl = True
          KeyMode = kmDate
        end
        object DBEidConta: TCDBEdit
          Left = 81
          Top = 15
          Width = 48
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'idConta'
          DataSource = dsMovConta
          TabOrder = 0
          Find = dmFind.FindConta
          DecimalControl = True
          KeyMode = kmNormal
        end
        object LookAgencia: TCLookUp
          Left = 135
          Top = 15
          Width = 52
          Height = 19
          Alignment = taLeftJustify
          BevelInner = bvSpace
          BevelOuter = bvLowered
          Color = 14149350
          ParentBackground = False
          TabOrder = 1
          Key.Strings = (
            'idConta')
          LookUpKey.Strings = (
            'idConta')
          AlternateSQL.Strings = (
            
              'SELECT idAgencia FROM vConta WHERE idEmpresa = [DBEidEmpresa] AN' +
              'D idConta = ?')
          ClientDataSet = cdsLookup
          DataSource = dsMovConta
          ValidaCampoObrigatorio = False
          CampoObrigatorio = True
          LookUpTable = 'vConta'
          ReturnField = 'idAgencia'
        end
        object LookContaCorrente: TCLookUp
          Left = 193
          Top = 15
          Width = 81
          Height = 19
          Alignment = taLeftJustify
          BevelInner = bvSpace
          BevelOuter = bvLowered
          Color = 14149350
          ParentBackground = False
          TabOrder = 2
          Key.Strings = (
            'idConta')
          LookUpKey.Strings = (
            'idConta')
          AlternateSQL.Strings = (
            
              'SELECT idContaCorrente FROM vConta WHERE idEmpresa = [DBEidEmpre' +
              'sa] AND idConta = ?')
          ClientDataSet = cdsLookup
          DataSource = dsMovConta
          ValidaCampoObrigatorio = False
          CampoObrigatorio = True
          LookUpTable = 'vConta'
          ReturnField = 'idContaCorrente'
        end
        object LookdescConta: TCLookUp
          Left = 280
          Top = 15
          Width = 319
          Height = 19
          Alignment = taLeftJustify
          BevelInner = bvSpace
          BevelOuter = bvLowered
          Color = 14149350
          ParentBackground = False
          TabOrder = 3
          Key.Strings = (
            'idConta')
          LookUpKey.Strings = (
            'idConta')
          AlternateSQL.Strings = (
            
              'SELECT descConta FROM vConta WHERE idEmpresa = [DBEidEmpresa] AN' +
              'D idConta = ?')
          ClientDataSet = cdsLookup
          DataSource = dsMovConta
          ValidaCampoObrigatorio = False
          CampoObrigatorio = True
          LookUpTable = 'vConta'
          ReturnField = 'descConta'
        end
        object DBEdescMovConta: TCDBEdit
          Left = 81
          Top = 59
          Width = 518
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'descMovConta'
          DataSource = dsMovConta
          TabOrder = 8
          DecimalControl = True
          KeyMode = kmUSUpper
        end
        object DBEidCheque: TCDBEdit
          Left = 386
          Top = 37
          Width = 69
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
          TabOrder = 6
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEdtVencimento: TCDBEdit
          Left = 529
          Top = 37
          Width = 70
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'dtVencimento'
          DataSource = dsMovConta
          MaxLength = 10
          TabOrder = 7
          DecimalControl = True
          KeyMode = kmDate
        end
      end
      object PagTituloRec: TCPageControl
        Left = 8
        Top = 175
        Width = 627
        Height = 242
        ActivePage = TabTituloRec
        Images = imgIcones
        MultiLine = True
        TabOrder = 2
        TabPosition = tpLeft
        TabStop = False
        OnChange = PagTituloRecChange
        object TabTituloRec: TTabSheet
          Caption = 'Dados'
          ImageIndex = 6
          object CGroupBox21: TCGroupBox
            Left = 9
            Top = 4
            Width = 572
            Height = 157
            TabOrder = 0
            object CLabel117: TCLabel
              Left = 34
              Top = 40
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
            object CLabel18: TCLabel
              Left = 156
              Top = 40
              Width = 29
              Height = 13
              Alignment = taRightJustify
              Caption = 'Banco'
            end
            object CLabel124: TCLabel
              Left = 12
              Top = 106
              Width = 51
              Height = 13
              Alignment = taRightJustify
              Caption = 'Multa (%) '
            end
            object CLabel125: TCLabel
              Left = 150
              Top = 106
              Width = 51
              Height = 13
              Alignment = taRightJustify
              Caption = 'Juros (%) '
            end
            object CLabel126: TCLabel
              Left = 298
              Top = 106
              Width = 191
              Height = 13
              Alignment = taRightJustify
              Caption = 'Desconto para pagamento pontual (%) '
            end
            object CLabel127: TCLabel
              Left = 400
              Top = 84
              Width = 92
              Height = 13
              Alignment = taRightJustify
              Caption = 'Dias entre parcelas'
            end
            object CLabel128: TCLabel
              Left = 130
              Top = 84
              Width = 78
              Height = 13
              Alignment = taRightJustify
              Caption = 'Primeira vencto.'
            end
            object CLabel129: TCLabel
              Left = 23
              Top = 84
              Width = 40
              Height = 13
              Alignment = taRightJustify
              Caption = 'Parcelas'
            end
            object CLabel130: TCLabel
              Left = 34
              Top = 62
              Width = 29
              Height = 13
              Alignment = taRightJustify
              Caption = #205'ndice'
            end
            object CLabel131: TCLabel
              Left = 338
              Top = 62
              Width = 40
              Height = 13
              Alignment = taRightJustify
              Caption = 'Cota'#231#227'o'
            end
            object CLabel76: TCLabel
              Left = 39
              Top = 18
              Width = 24
              Height = 13
              Alignment = taRightJustify
              Caption = 'S'#233'rie'
            end
            object CLabel80: TCLabel
              Left = 435
              Top = 18
              Width = 37
              Height = 13
              Alignment = taRightJustify
              Caption = 'N'#250'mero'
            end
            object CLabel84: TCLabel
              Left = 22
              Top = 128
              Width = 41
              Height = 13
              Alignment = taRightJustify
              Caption = 'Hist'#243'rico'
            end
            object DBEvlTituloRec: TCDBEdit
              Left = 69
              Top = 37
              Width = 81
              Height = 19
              BevelKind = bkTile
              BorderStyle = bsNone
              DataField = 'vlTituloRec'
              DataSource = dsTituloRec
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 3
              DecimalControl = True
              KeyMode = kmNormal
            end
            object DBEidBanco: TCDBEdit
              Left = 191
              Top = 37
              Width = 48
              Height = 19
              BevelKind = bkTile
              BorderStyle = bsNone
              DataField = 'idBanco'
              DataSource = dsTituloRec
              TabOrder = 4
              Find = dmFind.FindBanco
              AcaoCad = frmPrincipal.actCadBanco
              DecimalControl = True
              KeyMode = kmNormal
            end
            object LookBanco: TCLookUp
              Left = 245
              Top = 37
              Width = 233
              Height = 19
              Alignment = taLeftJustify
              BevelInner = bvSpace
              BevelOuter = bvLowered
              Color = 14149350
              ParentBackground = False
              TabOrder = 5
              Key.Strings = (
                'idBanco')
              LookUpKey.Strings = (
                'idBanco')
              AlternateSQL.Strings = (
                
                  'SELECT descBanco FROM Banco WHERE ehPortador = '#39'S'#39' AND idBanco =' +
                  ' ?')
              ClientDataSet = cdsLookup
              DataSource = dsTituloRec
              ValidaCampoObrigatorio = True
              CampoObrigatorio = True
              LookUpTable = 'Banco'
              ReturnField = 'descBanco'
            end
            object DBEprMulta: TCDBEdit
              Left = 69
              Top = 103
              Width = 66
              Height = 19
              BevelKind = bkTile
              BorderStyle = bsNone
              DataField = 'prMulta'
              DataSource = dsTituloRec
              TabOrder = 13
              DecimalControl = True
              KeyMode = kmNormal
            end
            object DBEprJuros: TCDBEdit
              Left = 207
              Top = 103
              Width = 65
              Height = 19
              BevelKind = bkTile
              BorderStyle = bsNone
              DataField = 'prJuros'
              DataSource = dsTituloRec
              TabOrder = 14
              DecimalControl = True
              KeyMode = kmNormal
            end
            object DBEprDescontoT: TCDBEdit
              Left = 495
              Top = 103
              Width = 65
              Height = 19
              BevelKind = bkTile
              BorderStyle = bsNone
              DataField = 'prDesconto'
              DataSource = dsTituloRec
              TabOrder = 15
              DecimalControl = True
              KeyMode = kmNormal
            end
            object DBEdiasVencimento: TCDBEdit
              Left = 498
              Top = 81
              Width = 62
              Height = 19
              BevelKind = bkTile
              BorderStyle = bsNone
              DataField = 'diasVencimento'
              DataSource = dsTituloRec
              TabOrder = 12
              DecimalControl = True
              KeyMode = kmNormal
            end
            object DBEdtVencimentoIni: TCDBEdit
              Left = 214
              Top = 81
              Width = 80
              Height = 19
              BevelKind = bkTile
              BorderStyle = bsNone
              DataField = 'dtVencimentoIni'
              DataSource = dsTituloRec
              MaxLength = 10
              TabOrder = 10
              DecimalControl = True
              KeyMode = kmDate
            end
            object DBEqtParcelas: TCDBEdit
              Left = 69
              Top = 81
              Width = 48
              Height = 19
              BevelKind = bkTile
              BorderStyle = bsNone
              DataField = 'qtParcelas'
              DataSource = dsTituloRec
              TabOrder = 9
              DecimalControl = True
              KeyMode = kmNormal
            end
            object DBEidIndice: TCDBEdit
              Left = 69
              Top = 59
              Width = 48
              Height = 19
              BevelKind = bkTile
              BorderStyle = bsNone
              DataField = 'idIndice'
              DataSource = dsTituloRec
              TabOrder = 6
              Find = dmFind.FindIndice
              AcaoCad = frmPrincipal.actIndice
              DecimalControl = True
              KeyMode = kmNormal
            end
            object LookIndice: TCLookUp
              Left = 123
              Top = 59
              Width = 209
              Height = 19
              Alignment = taLeftJustify
              BevelInner = bvSpace
              BevelOuter = bvLowered
              Color = 14149350
              ParentBackground = False
              TabOrder = 7
              Key.Strings = (
                'idIndice')
              LookUpKey.Strings = (
                'idIndice')
              ClientDataSet = cdsLookup
              DataSource = dsTituloRec
              ValidaCampoObrigatorio = True
              CampoObrigatorio = True
              LookUpTable = 'Indice'
              ReturnField = 'descIndice'
            end
            object LookLancamento: TCLookUp
              Left = 384
              Top = 59
              Width = 73
              Height = 19
              Alignment = taRightJustify
              BevelInner = bvSpace
              BevelOuter = bvLowered
              Color = 14149350
              ParentBackground = False
              TabOrder = 8
              Key.Strings = (
                'idIndice')
              LookUpKey.Strings = (
                'idIndice')
              AlternateSQL.Strings = (
                
                  'SELECT vlLancamento FROM indicelancamento WHERE dtLancamento = (' +
                  'SELECT MAX(ind.dtLancamento) FROM indicelancamento ind WHERE ind' +
                  '.idIndice = indicelancamento.idIndice) AND idIndice = ?')
              ClientDataSet = cdsLookup
              DataSource = dsTituloRec
              ValidaCampoObrigatorio = False
              CampoObrigatorio = True
              LookUpTable = 'IndiceLancamento'
              ReturnField = 'vlLancamento'
            end
            object CBitBtn17: TCBitBtn
              Left = 484
              Top = 37
              Width = 75
              Height = 19
              Action = frmPrincipal.actCadBanco
              Caption = '&Bancos'
              TabOrder = 17
              TabStop = False
            end
            object CBitBtn18: TCBitBtn
              Left = 463
              Top = 59
              Width = 96
              Height = 19
              Action = frmPrincipal.actIndice
              Caption = #205'ndices'
              TabOrder = 18
              TabStop = False
            end
            object DBCKincMes: TCDBCheckBox
              Left = 300
              Top = 83
              Width = 88
              Height = 17
              Caption = 'Mesmo Dia?'
              DataField = 'incMes'
              DataSource = dsTituloRec
              TabOrder = 11
              ValueChecked = 'S'
              ValueUnchecked = 'N'
              OnExit = DBCKincMesExit
            end
            object DBEidDocSerieT: TCDBEdit
              Left = 69
              Top = 15
              Width = 56
              Height = 19
              BevelKind = bkTile
              BorderStyle = bsNone
              DataField = 'idDocSerie'
              DataSource = dsTituloRec
              TabOrder = 0
              Find = dmFind.FindDocSerieTRec
              DecimalControl = True
              KeyMode = kmUSUpper
            end
            object CLookUp3: TCLookUp
              Left = 131
              Top = 15
              Width = 247
              Height = 19
              Alignment = taLeftJustify
              BevelInner = bvSpace
              BevelOuter = bvLowered
              Color = 14149350
              ParentBackground = False
              TabOrder = 1
              Key.Strings = (
                'idDocSerie')
              LookUpKey.Strings = (
                'idDocSerie')
              AlternateSQL.Strings = (
                
                  'SELECT descDocSerie FROM DocSerie WHERE idTipoDocSerie = 1 AND i' +
                  'dDocSerie = ?')
              ClientDataSet = cdsLookup
              DataSource = dsTituloRec
              ValidaCampoObrigatorio = True
              CampoObrigatorio = True
              LookUpTable = 'DocSerie'
              ReturnField = 'descDocSerie'
            end
            object DBEnrTituloRec: TCDBEdit
              Left = 478
              Top = 15
              Width = 82
              Height = 19
              BevelKind = bkTile
              BorderStyle = bsNone
              Color = 14149350
              DataField = 'nrTituloRec'
              DataSource = dsTituloRec
              ReadOnly = True
              TabOrder = 2
              DecimalControl = True
              KeyMode = kmInteger
            end
            object DBEobsTituloRec: TCDBEdit
              Left = 69
              Top = 125
              Width = 491
              Height = 19
              BevelKind = bkTile
              BorderStyle = bsNone
              DataField = 'obsTituloRec'
              DataSource = dsTituloRec
              TabOrder = 16
              OnExit = DBEobsTituloRecExit
              DecimalControl = True
              KeyMode = kmUSUpper
            end
          end
        end
        object TabParcelas: TTabSheet
          Caption = 'Parcelas'
          ImageIndex = 8
          object CGroupBox22: TCGroupBox
            Left = 3
            Top = 3
            Width = 586
            Height = 38
            TabOrder = 0
            object CLabel133: TCLabel
              Left = 8
              Top = 14
              Width = 35
              Height = 13
              Alignment = taRightJustify
              Caption = 'Parcela'
            end
            object CLabel134: TCLabel
              Left = 99
              Top = 14
              Width = 91
              Height = 13
              Alignment = taRightJustify
              Caption = 'Valor da Parcela'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object CLabel135: TCLabel
              Left = 284
              Top = 14
              Width = 55
              Height = 13
              Alignment = taRightJustify
              Caption = 'Vencimento'
            end
            object CLabel136: TCLabel
              Left = 431
              Top = 14
              Width = 31
              Height = 13
              Alignment = taRightJustify
              Caption = 'Status'
            end
            object DBEidParcela: TCDBEdit
              Left = 49
              Top = 11
              Width = 44
              Height = 19
              BevelKind = bkTile
              BorderStyle = bsNone
              DataField = 'idParcela'
              DataSource = dsTituloRecParc
              TabOrder = 0
              DecimalControl = True
              KeyMode = kmNormal
            end
            object DBEvlParcela: TCDBEdit
              Left = 196
              Top = 11
              Width = 82
              Height = 19
              BevelKind = bkTile
              BorderStyle = bsNone
              DataField = 'vlParcela'
              DataSource = dsTituloRecParc
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 1
              DecimalControl = True
              KeyMode = kmNormal
            end
            object DBEdtVencimentoP: TCDBEdit
              Left = 345
              Top = 11
              Width = 80
              Height = 19
              BevelKind = bkTile
              BorderStyle = bsNone
              DataField = 'dtVencimento'
              DataSource = dsTituloRecParc
              MaxLength = 10
              TabOrder = 2
              DecimalControl = True
              KeyMode = kmDate
            end
            object DBEstTituloRecParc: TCDBEdit
              Left = 468
              Top = 11
              Width = 109
              Height = 19
              TabStop = False
              BevelKind = bkTile
              BorderStyle = bsNone
              Color = 14149350
              DataField = 'stTituloRecParc'
              DataSource = dsTituloRecParc
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              MaxLength = 10
              ParentFont = False
              ReadOnly = True
              TabOrder = 3
              DecimalControl = True
              KeyMode = kmUSUpper
            end
          end
          object CGroupBox42: TCGroupBox
            Left = 3
            Top = 47
            Width = 488
            Height = 259
            TabOrder = 1
            object CDBGrid3: TCDBGrid
              Left = 8
              Top = 14
              Width = 471
              Height = 235
              TabStop = False
              DataSource = dsTituloRecParc
              Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection]
              TabOrder = 0
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -11
              TitleFont.Name = 'Tahoma'
              TitleFont.Style = []
              UtilizaOrdenar = False
              Columns = <
                item
                  Expanded = False
                  FieldName = 'idParcela'
                  Title.Caption = 'Parcela'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'vlParcela'
                  Title.Caption = 'Valor'
                  Width = 110
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
                  FieldName = 'stTituloRecParc'
                  Title.Caption = 'Status'
                  Width = 120
                  Visible = True
                end>
            end
          end
          object GrpBtnParcelas: TCGroupBox
            Left = 497
            Top = 47
            Width = 92
            Height = 259
            TabOrder = 2
            object CLabel137: TCLabel
              Left = 7
              Top = 157
              Width = 78
              Height = 13
              Alignment = taCenter
              AutoSize = False
              Caption = 'Total Parcelas'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object LblTotal: TCLabel
              Left = 7
              Top = 176
              Width = 78
              Height = 13
              Alignment = taCenter
              AutoSize = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object CLabel138: TCLabel
              Left = 7
              Top = 198
              Width = 78
              Height = 13
              Alignment = taCenter
              AutoSize = False
              Caption = 'Restante'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object LblRestante: TCLabel
              Left = 7
              Top = 217
              Width = 78
              Height = 13
              Alignment = taCenter
              AutoSize = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object BtnSalvarParc: TCBitBtn
              Left = 8
              Top = 11
              Width = 75
              Height = 25
              Caption = '&Salvar'
              Glyph.Data = {
                36080000424D3608000000000000360000002800000020000000100000000100
                2000000000000008000000000000000000000000000000000000FF00FF00FF00
                FF00C0606000C0606000C0404000A4A0A000C0C0C000C0C0C000C0C0C000C0C0
                C000C0C0C000C0A0A0008040400080404000C0606000FF00FF00FF00FF00FF00
                FF00808080008080800080808000A4A0A000C0C0C000C0DCC000C0DCC000C0DC
                C000C0DCC000C0C0C000808080008080800080808000FF00FF00FF00FF00C080
                8000C0606000C0606000C060600080808000C0A0A000C0DCC000FFFFFF00FFFF
                FF00F0FBFF00C0C0C0008020200080404000C0606000C0606000FF00FF00A4A0
                A000A4A0A000A4A0A000A4A0A000A4A0A000C0C0C000F0FBFF00FFFFFF00FFFF
                FF00FFFFFF00C0C0C0008060600080606000A4A0A00080808000FF00FF00C080
                8000C0606000C0606000C06060008080800080404000C0808000C0DCC000FFFF
                FF00FFFFFF00C0C0C0008020200080404000C0606000C0606000FF00FF00A4A0
                A000A4A0A000A4A0A000A4A0A000A4A0A00080808000A4A0A000F0FBFF00FFFF
                FF00FFFFFF00C0DCC0008060600080808000A4A0A00080808000FF00FF00C080
                8000C0606000C0606000C0606000C08080008040400080404000C0C0C000F0FB
                FF00FFFFFF00F0CAA6008020200080404000C0606000C0606000FF00FF00A4A0
                A000A4A0A000A4A0A000A4A0A000A4A0A0008080800080808000C0C0C000FFFF
                FF00FFFFFF00C0DCC0008060600080606000A4A0A00080808000FF00FF00C080
                8000C0606000C0606000C0606000C08080008040400080404000A4A0A000C0DC
                C000FFFFFF00C0C0C0008020200080404000C0606000C0606000FF00FF00A4A0
                A000A4A0A000A4A0A000A4A0A000A4A0A0008080800080606000A4A0A000F0FB
                FF00FFFFFF00F0FBFF008060600080606000A4A0A00080808000FF00FF00C080
                8000C0606000C0606000C0606000C0A08000C0A0A000C0808000C0808000C0A0
                A000C0C0C000C0A0A000C0404000C0404000C0606000C0606000FF00FF00A4A0
                A000A4A0A000A4A0A000A4A0A000C0C0C000C0C0C000A4A0A000A4A0A000C0C0
                C000C0DCC000C0C0C0008080800080808000A4A0A00080808000FF00FF00C080
                8000C0606000C0606000C0606000C0606000C0606000C0606000C0606000C060
                6000C0606000C0606000C0606000C0606000C0606000C0606000FF00FF00A4A0
                A000A4A0A000A4A0A000A4A0A000A4A0A000A4A0A000A4A0A000A4A0A000A4A0
                A000A4A0A000A4A0A000A4A0A000A4A0A000A4A0A00080808000FF00FF00C080
                8000C0606000C0606000C0808000C0A0A000C0A0A000C0A0A000C0A0A000C0A0
                A000C0A0A000C0A0A000C0A0A000C0A0A000C0606000C0606000FF00FF00A4A0
                A0008080800080808000A4A0A000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
                C000C0C0C000C0C0C000C0C0C000C0C0C000A4A0A00080808000FF00FF00C080
                8000C0404000C0C0C000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00C0C0C000C0606000C0606000FF00FF00A4A0
                A00080808000F0FBFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00C0DCC000A4A0A00080808000FF00FF00C080
                8000C0604000F0CAA600FFFFFF00F0FBFF00F0FBFF00F0FBFF00F0FBFF00F0FB
                FF00F0FBFF00F0FBFF00FFFFFF00C0C0C000C0606000C0606000FF00FF00A4A0
                A00080808000F0FBFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00C0DCC000A4A0A00080808000FF00FF00C080
                8000C0604000F0CAA600F0FBFF00C0DCC000C0DCC000C0DCC000C0DCC000C0DC
                C000C0DCC000C0DCC000F0FBFF00F0CAA600C0606000C0606000FF00FF00A4A0
                A00080808000F0FBFF00FFFFFF00F0FBFF00F0FBFF00F0FBFF00F0FBFF00F0FB
                FF00F0FBFF00F0FBFF00F0FBFF00C0DCC000A4A0A00080808000FF00FF00C080
                8000C0604000F0CAA600F0FBFF00C0DCC000C0DCC000C0DCC000C0DCC000C0DC
                C000C0DCC000C0DCC000F0FBFF00F0CAA600C0606000C0606000FF00FF00A4A0
                A00080808000F0FBFF00FFFFFF00F0FBFF00F0FBFF00F0FBFF00F0FBFF00F0FB
                FF00F0FBFF00F0FBFF00FFFFFF00C0DCC000A4A0A00080808000FF00FF00C080
                8000C0604000F0CAA600F0FBFF00C0DCC000F0FBFF00F0FBFF00F0FBFF00F0FB
                FF00F0FBFF00C0DCC000F0FBFF00C0C0C000C0606000C0606000FF00FF00A4A0
                A00080808000F0FBFF00FFFFFF00F0FBFF00F0FBFF00F0FBFF00F0FBFF00F0FB
                FF00F0FBFF00F0FBFF00FFFFFF00C0DCC000A4A0A00080808000FF00FF00C080
                8000C0604000F0CAA600F0FBFF00C0DCC000C0DCC000C0DCC000C0DCC000C0DC
                C000C0DCC000C0DCC000F0FBFF00F0CAA600C0606000C0606000FF00FF00A4A0
                A00080808000F0FBFF00FFFFFF00F0FBFF00F0FBFF00F0FBFF00F0FBFF00F0FB
                FF00F0FBFF00F0FBFF00F0FBFF00C0DCC000A4A0A00080808000FF00FF00C080
                8000C0604000F0CAA600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00C0C0C000C0606000C0606000FF00FF00A4A0
                A00080808000F0FBFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00C0DCC000A4A0A00080808000FF00FF00FF00
                FF00C0604000C0C0C000C0DCC000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
                C000C0C0C000C0C0C000C0DCC000C0A0A000C0404000FF00FF00FF00FF00FF00
                FF0080808000C0C0C000C0DCC000C0DCC000C0DCC000C0DCC000C0DCC000C0DC
                C000C0DCC000C0DCC000C0DCC000C0C0C00080808000FF00FF00}
              Margin = 5
              NumGlyphs = 2
              TabOrder = 0
              OnClick = BtnSalvarParcClick
            end
            object BtnCancelarParc: TCBitBtn
              Left = 8
              Top = 42
              Width = 75
              Height = 25
              Caption = '&Desfazer'
              Glyph.Data = {
                36080000424D3608000000000000360000002800000020000000100000000100
                2000000000000008000000000000000000000000000000000000FF00FF0000A0
                C00000A0C00000A0C000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF008080
                80008080800080808000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000A0
                C00080E0E00040C0E00040C0E00040A0E00000A0E0000080C0000080C000FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF008080
                8000C0C0C000C0C0C000A4A0A000A4A0A000A4A0A0008080800080808000FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000A0
                C00080E0E00080E0E00080E0E00080E0E00040E0E00040C0E00040C0E00040A0
                E00000A0E0000080C00000A0E000FF00FF00FF00FF00FF00FF00FF00FF008080
                8000C0DCC000C0DCC000C0C0C000C0C0C000C0C0C000C0C0C000A4A0A000A4A0
                A000A4A0A00080808000A4A0A000FF00FF00FF00FF00FF00FF00FF00FF0000A0
                C00080E0E00080E0E00080E0E00080E0E00080E0E00040E0E00040E0E00040C0
                E00040C0E00040C0E00040C0E00040A0E00000A0C000FF00FF00FF00FF008080
                8000C0DCC000C0DCC000C0DCC000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
                C000C0C0C000C0C0C000C0C0C000A4A0A00080808000FF00FF00FF00FF0000A0
                C00080E0E00080E0E00080E0E00080E0E00080E0E00080E0E00040E0E00040C0
                E00040C0E00040C0E00040C0E00040C0E00000A0C000FF00FF00FF00FF008080
                8000C0DCC000C0DCC000C0DCC000C0DCC000C0C0C000C0C0C000C0C0C000C0C0
                C000C0C0C000C0C0C000C0C0C000A4A0A00080808000FF00FF00FF00FF0000A0
                C00080E0E00080E0E00080E0E00080E0E00080E0E00080E0E00080E0E0000060
                000040C0C00040C0E00040C0E00040C0E00000A0C000FF00FF00FF00FF008080
                8000C0DCC000C0DCC000C0DCC000C0DCC000C0DCC000C0C0C000C0C0C0008060
                6000A4A0A000C0C0C000C0C0C000C0C0C00080808000FF00FF00FF00FF0000A0
                C00080E0E00080E0E00080E0E00080E0E00080E0E00080E0E00080E0E00040E0
                E0000060000040C0E00040C0E00040C0E00000A0C000FF00FF00FF00FF008080
                8000C0DCC000C0DCC000C0DCC000C0DCC000C0DCC000C0DCC000C0C0C000C0C0
                C00080606000C0C0C000C0C0C000C0C0C00080808000FF00FF00FF00FF0000A0
                C00080E0E00080E0E00080E0E00080E0E00080E0E00080E0E00080E0E00080E0
                E000008000000060000040C0E00040C0E00000A0C000FF00FF00FF00FF008080
                8000C0DCC000C0DCC000C0DCC000C0DCC000C0DCC000C0DCC000C0DCC000C0C0
                C0008080800080606000C0C0C000C0C0C00080808000FF00FF00FF00FF0000A0
                C00080E0E00080E0E00080E0E00040A080000060000080E0E00080E0E00080E0
                E000008000000060000040E0E00040C0E00000A0C000FF00FF00FF00FF008080
                8000F0FBFF00C0DCC000C0DCC000A4A0A00080808000C0DCC000C0DCC000C0DC
                C0008080800080606000C0C0C000C0C0C00080808000FF00FF00FF00FF0000A0
                C000F0FBFF0080E0E00080E0C000006000000060000080E0E00080E0E0000060
                0000008000000060000040E0E00040C0E00000A0C000FF00FF00FF00FF008080
                8000F0FBFF00F0FBFF00C0DCC0008080800080808000C0DCC000C0DCC0008080
                80008080800080606000C0C0C000C0C0C00080808000FF00FF00FF00FF0000A0
                C00000A0E00000A0E0000060000040A0400000600000006000000060000000A0
                0000006000000060000080E0E00040E0E00000A0C000FF00FF00FF00FF008080
                8000A4A0A000A4A0A00080606000808080008060600080606000808080008080
                80008060600080808000C0C0C000C0C0C00080808000FF00FF00FF00FF0000A0
                C00040E0E00040A0A0000080200040E0800040C0400000A0200000A020000060
                00000060000080E0E00080E0E00040E0E00000A0C000FF00FF00FF00FF008080
                8000C0C0C000A4A0A00080808000C0C0C0008080800080808000808080008080
                800080606000C0DCC000C0C0C000C0C0C00080808000FF00FF00FF00FF0000A0
                C00080E0E0000060000040C0600040E0600040C0400000600000006000000060
                000080E0E00080E0E00080E0E00080E0E00000A0C000FF00FF00FF00FF008080
                8000C0DCC00080606000A4A0A000A4A0A000A4A0A00080606000806060008060
                6000C0DCC000C0DCC000C0DCC000C0C0C00080808000FF00FF00FF00FF0000A0
                C00080E0E00040C0A0000060000000A0200000A020000060000040A0800080E0
                E00080E0E00080E0E00080E0E00080E0E00000A0C000FF00FF00FF00FF008080
                8000F0FBFF00C0C0C00080606000808080008080800080606000A4A0A000F0FB
                FF00F0FBFF00C0DCC000C0DCC000C0C0C00080808000FF00FF00FF00FF0000A0
                C00080E0E00080E0E00080E0E0000080400000802000006000000060000000A0
                C00000A0C00000A0C00000A0C00000A0C00000A0C000FF00FF00FF00FF008080
                8000C0C0C000C0DCC000C0C0C000808080008080800080606000806060008080
                80008080800080808000808080008080800080808000FF00FF00FF00FF00FF00
                FF0000A0C00000A0C00000A0C00000A0C00000A0C000FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF008080800080808000808080008080800080808000FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
              NumGlyphs = 2
              TabOrder = 1
              OnClick = BtnSalvarParcClick
            end
            object BtnExcluirParc: TCBitBtn
              Left = 8
              Top = 70
              Width = 75
              Height = 25
              Caption = '&Excluir'
              Glyph.Data = {
                36080000424D3608000000000000360000002800000020000000100000000100
                2000000000000008000000000000000000000000000000000000FF00FF00E8E8
                E8FFBFBFBFFFF4F4F4FFFF00FF00F9F9F9FFDFDFDFFFCACACAFFBEBEBEFFBCBC
                BCFFB6B6B6FF989898FFA5A5A5FFA2A2A2FFFF00FF00FF00FF00FF00FF00E7E7
                E7FFBEBEBEFFF4F4F4FFFF00FF00F9F9F9FFDFDFDFFFC9C9C9FFBDBDBDFFBBBB
                BBFFB5B5B5FF979797FFA3A3A3FFA1A1A1FFFF00FF00FF00FF00EAEAEAFFE1E1
                E0FF9F9E9EFF7F7F7FFF959595FF919191FFBCBDBDFFDCDEDDFFEBEDEEFFE2E3
                E4FFC5C5C5FFB7B7B7FF9C9C9CFFABABABFF7F7F7FFFBCBCBCFFE9E9E9FFDEDE
                DEFF9B9B9BFF7D7D7DFF949494FF8F8F8FFFBABABAFFDBDBDBFFEAEAEAFFE0E0
                E0FFC2C2C2FFB4B4B4FF999999FFA8A8A8FF7C7C7CFFBBBBBBFFE9E9E9FF9393
                92FFC1C1C0FF9E9E9DFF888A89FFC3BBB8FFC0A79FFFCBAA9EFFD5B7ACFFDABC
                B1FFCFCAC9FFD8D8D8FFCDCDCDFFC8C8C8FFD9D9D9FFB8B8B8FFE7E7E7FF9090
                90FFBDBDBDFF9B9B9BFF868686FFBABABAFFABABABFFB0B0B0FFBBBBBBFFC1C1
                C1FFC9C9C9FFD6D6D6FFCACACAFFC6C6C6FFD6D6D6FFB7B7B7FFE7E7E7FF9E9E
                9FFFA1A2A1FFC5C8C7FF937064FFB3552EFFB86F4EFFC4937DFFDCBEB0FFDCC1
                B3FFC7C6C6FFC0C0C0FFCBCBCBFFD1D1D1FFDBDBDBFFD8D8D8FFE6E6E6FF9C9C
                9CFF9F9F9FFFC4C4C4FF767676FF686868FF7C7C7CFF9A9A9AFFC2C2C2FFC3C3
                C3FFC4C4C4FFBDBDBDFFC8C8C8FFCECECEFFD8D8D8FFD7D7D7FFEEEEEEFFB2B2
                B1FF7E7F7EFFDADBDCFFA29087FFBE7B5BFFC5896BFFD4A995FFE2CCBFFFE7D0
                C5FFC0BBB8FFB1B2B3FFE2E2E2FFE1E2E3FFE7E8E8FFAEAEAEFFEDEDEDFFAFAF
                AFFF7C7C7CFFD8D8D8FF919191FF868686FF929292FFAFAFAFFFCDCDCDFFD1D1
                D1FFB9B9B9FFAFAFAFFFDFDFDFFFDFDFDFFFE5E5E5FFADADADFFF8F8F8FFCACA
                C9FF7B7C7BFFC6C6C6FFC8C7C6FFC38568FFCE9173FFDAB09AFFE9D3C7FFEED9
                CEFFDBBAABFFCFC1B8FFD6DEE1FFB87458FFF9F6F5FFFF00FF00F7F7F7FFC7C7
                C7FF797979FFC3C3C3FFC4C4C4FF8F8F8FFF9A9A9AFFB5B5B5FFD4D4D4FFDADA
                DAFFBEBEBEFFC0C0C0FFD9D9D9FF818181FFF7F7F7FFFF00FF00FDFDFDFFD9D9
                DAFF828382FFADAFADFFE3E7E9FFAB6F51FFCB8E70FFE4B9A4FFECD6C9FFEBD6
                CDFFE0BCA8FFD4987BFFD29A7EFFC66F49FFFDF9F8FFFF00FF00FDFDFDFFD7D7
                D7FF7F7F7FFFABABABFFE3E3E3FF787878FF979797FFBFBFBFFFD6D6D6FFD8D8
                D8FFC0C0C0FFA1A1A1FFA2A2A2FF7F7F7FFFFAFAFAFFFF00FF00FF00FF00D4D4
                D4FF9A9B9AFF9FA09FFFD4D7D9FFA57660FFCE9071FFD6AC97FFEDD6CBFFEBD6
                CDFFE3BEADFFD29B7EFFD19172FFC86E46FFFCF9F8FFFF00FF00FF00FF00D1D1
                D1FF989898FF9D9D9DFFD4D4D4FF7D7D7DFF999999FFB2B2B2FFD8D8D8FFD8D8
                D8FFC3C3C3FFA2A2A2FF9B9B9BFF7F7F7FFFF9F9F9FFFF00FF00FF00FF00E2E2
                E2FFACACACFF9C9D9CFFBFC2C3FFA47A65FFD09272FFD9AF9AFFEAD3C7FFEFDA
                D0FFE4BFADFFD59C7FFFCF9072FFC96E45FFFCF9F8FFFF00FF00FF00FF00E0E0
                E0FFA9A9A9FF999999FFBFBFBFFF7F7F7FFF9B9B9BFFB4B4B4FFD4D4D4FFDBDB
                DBFFC3C3C3FFA4A4A4FF9A9A9AFF7F7F7FFFF9F9F9FFFF00FF00FF00FF00FAFA
                FAFFB3B3B3FFA6A7A6FFA9ADAEFFA9785FFFC98A6CFFD6AB95FFF0D7CCFFF4DE
                D3FFE8C3B2FFDAA183FFD49575FFC9734DFFFCF9F8FFFF00FF00FF00FF00F9F9
                F9FFB0B0B0FFA4A4A4FFA9A9A9FF7F7F7FFF949494FFB1B1B1FFDADADAFFE0E0
                E0FFC8C8C8FFA9A9A9FF9F9F9FFF838383FFF9F9F9FFFF00FF00FF00FF00FF00
                FF00E2E1E1FFDDDCDDFF949190FFB36C49FFA2745DFFAC9185FFBBADA7FFC0B5
                AFFFB6A198FFAC816EFFAE7457FFBF6641FFFDFAF8FFFF00FF00FF00FF00FF00
                FF00E0E0E0FFDADADAFF8F8F8FFF777777FF7A7A7AFF949494FFADADADFFB4B4
                B4FFA3A3A3FF888888FF7D7D7DFF787878FFFAFAFAFFFF00FF00FF00FF00FF00
                FF00FEFEFEFFF4F4F4FF857067FFA1A4A5FFB9BCBEFFCBCCCCFFD6D7D8FFDEDD
                DDFFD3D5D4FFC2C6C7FFB0B5B6FF897D78FFC6C3C2FFFF00FF00FF00FF00FF00
                FF00FEFEFEFFF3F3F3FF727272FFA1A1A1FFB9B9B9FFC9C9C9FFD4D4D4FFDBDB
                DBFFD1D1D1FFC1C1C1FFB0B0B0FF7D7D7DFFC3C3C3FFFF00FF00FF00FF00FF00
                FF00FF00FF00FDFDFDFFAAABACFFB2A29AFFC8B9B3FFC6C6C5FFDBDADAFFBEBC
                BCFFC9C8C8FFD1D1D1FFC6BEB9FFBEBCBBFFA5A5A5FFFF00FF00FF00FF00FF00
                FF00FF00FF00FDFDFDFFA8A8A8FFA2A2A2FFB9B9B9FFC3C3C3FFD8D8D8FFBABA
                BAFFC6C6C6FFCECECEFFBDBDBDFFBABABAFFA3A3A3FFFF00FF00FF00FF00FF00
                FF00FF00FF00FEFEFEFFDDDFDFFF928F8DFFBDBCBDFFC0C0C0FFC4C4C4FFD9D9
                D9FFD5D5D5FFD7D7D7FFB1ADABFFD1D0D1FFC9C9CAFFFF00FF00FF00FF00FF00
                FF00FF00FF00FEFEFEFFDBDBDBFF8D8D8DFFBABABAFFBDBDBDFFC1C1C1FFD6D6
                D6FFD2D2D2FFD4D4D4FFABABABFFCECECEFFC8C8C8FFFF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FDFDFCFFF1F0EFFFD3D4D4FFA4A4A4FFC0C0C0FFD5D5
                D5FFD8D8D8FFE1E0E1FFF3F3F4FFF4F3F2FFFF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FDFDFDFFEFEFEFFFD2D2D2FFA1A1A1FFBDBDBDFFD2D2
                D2FFD6D6D6FFDEDEDEFFF2F2F2FFF2F2F2FFFF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FFFFFFFFF1F1F1FFF2F2
                F2FFFEFEFEFFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FEFEFEFFF0F0F0FFF0F0
                F0FFFEFEFEFFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
              NumGlyphs = 2
              TabOrder = 2
              OnClick = BtnSalvarParcClick
            end
            object BtnNovoParc: TCBitBtn
              Left = 8
              Top = 101
              Width = 75
              Height = 25
              Caption = '&Novo'
              Glyph.Data = {
                36080000424D3608000000000000360000002800000020000000100000000100
                2000000000000008000000000000000000000000000000000000FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00BAAEABFFCDCD
                CDFFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00B1B1B1FFCDCD
                CDFFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00AEC7CCFF6F807CFFDC5B35FFA539
                15FFC4C4C4FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00BEBEBEFF777777FF7D7D7DFF5353
                53FFC4C4C4FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00ABC1C6FF849B9AFF879990FFAD5639FFDC6A
                49FFA93C1AFFC4C4C4FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00B9B9B9FF8F8F8FFF8E8E8EFF6A6A6AFF8888
                88FF575757FFC4C4C4FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00679EA2FFB73A14FFD67A5FFFE88363FFE685
                66FFD6633EFFAE401DFFC4C4C4FFFF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00868686FF5A5A5AFF919191FF9C9C9CFF9D9D
                9DFF7F7F7FFF5C5C5CFFC4C4C4FFFF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00AEC7CCFF717C78FFB58871FFB0998AFFE27E60FFE48367FFE57F
                5FFFD26846FFF7AD94FFAB3916FFC4C4C4FFFF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00BEBEBEFF747474FF8E8E8EFF999999FF979797FF9C9C9CFF9898
                98FF828282FFBEBEBEFF575757FFC4C4C4FFFF00FF00FF00FF00FF00FF00FF00
                FF00ABC1C6FF849B9AFF879A90FFAE5337FFEC8669FFE4886EFFE48161FFE481
                63FFE57E5CFFD68663FFFFC2A9FFAD3C19FFC7C7C7FFFF00FF00FF00FF00FF00
                FF00B9B9B9FF8F8F8FFF8E8E8EFF696969FFA1A1A1FFA0A0A0FF9A9A9AFF9A9A
                9AFF979797FF959595FFCECECEFF595959FFC7C7C7FFFF00FF00FF00FF00FF00
                FF00679EA3FFB73B16FFD67D66FFE8896DFFE48870FFE58365FFE5896DFFE687
                6AFFCF6341FFF5C4A0FFFFEDD2FFFA8463FF9D8888FFFF00FF00FF00FF00FF00
                FF00878787FF5C5C5CFF959595FFA1A1A1FFA1A1A1FF9C9C9CFFA0A0A0FF9F9F
                9FFF7E7E7EFFC5C5C5FFE5E5E5FFA4A4A4FF8F8F8FFFFF00FF00CAE2E6FF6B77
                73FFB58974FFB09787FFE28165FFE4886FFFE58569FFCF7E68FFD9876FFFD66B
                46FFFFD0AEFFFFECD2FFFCA286FFA46D5DFFFF00FF00FF00FF00D9D9D9FF6F6F
                6FFF8F8F8FFF979797FF9A9A9AFFA1A1A1FF9E9E9EFF939393FF9C9C9CFF8484
                84FFD1D1D1FFE5E5E5FFB8B8B8FF7B7B7BFFFF00FF00FF00FF00D2D7D4FF7F92
                89FFAD5033FFEB866AFFE48D75FFE79882FFECAB98FFCC9489FFB96C5AFF71A1
                C4FF7892A8FFF99C79FFA46C5DFFFF00FF00FF00FF00FF00FF00D3D3D3FF8686
                86FF676767FFA1A1A1FFA4A4A4FFACACACFFBBBBBBFFA4A4A4FF828282FF9A9A
                9AFF8F8F8FFFB0B0B0FF7B7B7BFFFF00FF00FF00FF00FF00FF00E3A794FFEE9D
                87FFF2B9ABFFEEB9ACFFEFB9A9FFEFBAABFFF2BFB1FFCE775DFF76BEE5FF08B8
                FFFF1F8FFFFF4D5069FFFF00FF00FF00FF00FF00FF00FF00FF00B5B5B5FFB2B2
                B2FFC8C8C8FFC7C7C7FFC6C6C6FFC7C7C7FFCBCBCBFF8D8D8DFFB0B0B0FF8C8C
                8CFF929292FF585858FFFF00FF00FF00FF00FF00FF00FF00FF00F6F4F3FFDE84
                69FFEFC0B2FFF3CDC3FFF3CCC3FFF5D3C9FFD58167FFFFD9C7FF1BEAFFFF02CA
                FFFF05B3FEFF2997FFFF647D96FFFDFDFDFFFF00FF00FF00FF00F4F4F4FF9B9B
                9BFFCBCBCBFFD6D6D6FFD6D6D6FFDADADAFF959595FFDEDEDEFF999999FF8C8C
                8CFF8A8A8AFF979797FF7C7C7CFFFDFDFDFFFF00FF00FF00FF00FF00FF00C18D
                7EFFFAD9D2FFF3D2C7FFFAE9E6FFD58871FFF4DCCDFFFFFFFCFFBEBAAAFF17FA
                FFFF05CAFFFF05B3FEFF2D98FFFF647D96FFFCFCFCFFFF00FF00FF00FF009B9B
                9BFFE2E2E2FFD8D8D8FFECECECFF9B9B9BFFDCDCDCFFFBFBFBFFB1B1B1FF9A9A
                9AFF8D8D8DFF8A8A8AFF999999FF7C7C7CFFFCFCFCFFFF00FF00FF00FF00FAFA
                FAFFE9987FFFFFFFFFFFDC8265FFF7ECE8FFFFFFFFFFFDAF92FFA86660FFBCD4
                D6FF20FFFFFF05C9FFFF05B3FEFF2D98FFFF5C748EFFFDFDFDFFFF00FF00FAFA
                FAFFACACACFFFDFDFDFF989898FFECECECFFFDFDFDFFC0C0C0FF7D7D7DFFCACA
                CAFF9E9E9EFF8D8D8DFF8A8A8AFF999999FF747474FFFDFDFDFFFF00FF00FF00
                FF00C39E93FFE2947BFFBFA2A0FFEF9775FFFCB399FFA2695DFFFF00FF00FF00
                FF00BCD3D5FF1DFFFFFF05C9FFFF02B4FFFF40B0FFFF959FA6FFFF00FF00FF00
                FF00A7A7A7FFA7A7A7FFACACACFFA9A9A9FFC3C3C3FF7A7A7AFFFF00FF00FF00
                FF00C9C9C9FF9C9C9CFF8D8D8DFF8A8A8AFFA3A3A3FF9D9D9DFFFF00FF00FF00
                FF00FF00FF00F3F2F2FFFF00FF00D2C1BCFFBC9081FFFF00FF00FF00FF00FF00
                FF00FF00FF00C2D9DBFF0FFAFFFF1FB6E5FF4C7A90FFF7F7F7FFFF00FF00FF00
                FF00FF00FF00F2F2F2FFFF00FF00C5C5C5FF9A9A9AFFFF00FF00FF00FF00FF00
                FF00FF00FF00CFCFCFFF969696FF898989FF6F6F6FFFF7F7F7FFFF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00E6FDFFFF85BFE2FFF4F5F5FFFF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00F3F3F3FFB4B4B4FFF5F5F5FFFF00FF00}
              NumGlyphs = 2
              Spacing = 5
              TabOrder = 3
              OnClick = BtnSalvarParcClick
            end
          end
        end
      end
      object DBEidTituloRec: TCDBEdit
        Left = 32
        Top = 433
        Width = 68
        Height = 19
        BevelKind = bkTile
        BorderStyle = bsNone
        DataField = 'idTituloRec'
        DataSource = dsTituloRec
        TabOrder = 3
        Visible = False
        DecimalControl = True
        KeyMode = kmNormal
      end
      object DBEidMovConta: TCDBEdit
        Left = 671
        Top = 163
        Width = 68
        Height = 19
        BevelKind = bkTile
        BorderStyle = bsNone
        DataField = 'idMovConta'
        DataSource = dsMovConta
        TabOrder = 4
        Visible = False
        DecimalControl = True
        KeyMode = kmNormal
      end
      object DBEidMovCaixa: TCDBEdit
        Left = 671
        Top = 138
        Width = 68
        Height = 19
        BevelKind = bkTile
        BorderStyle = bsNone
        DataField = 'idMovCaixa'
        DataSource = dsMovCaixa
        TabOrder = 5
        Visible = False
        DecimalControl = True
        KeyMode = kmNormal
      end
    end
    object TabCTe: TTabSheet
      Caption = 'Dados do CT-e'
      ImageIndex = 8
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object CGroupBox43: TCGroupBox
        Left = 9
        Top = 16
        Width = 498
        Height = 68
        Caption = 'Chaves e Identificador'
        TabOrder = 0
        object CLabel114: TCLabel
          Left = 22
          Top = 22
          Width = 31
          Height = 13
          Alignment = taRightJustify
          Caption = 'Chave'
        end
        object CLabel113: TCLabel
          Left = 42
          Top = 44
          Width = 11
          Height = 13
          Alignment = taRightJustify
          Caption = 'ID'
        end
        object DBEinfCte_chCTe: TCDBEdit
          Left = 59
          Top = 19
          Width = 377
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          Color = 14149350
          DataField = 'infCte_chCTe'
          DataSource = dsCTeEle
          ReadOnly = True
          TabOrder = 0
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEinfCte_id: TCDBEdit
          Left = 59
          Top = 41
          Width = 377
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          Color = 14149350
          DataField = 'infCte_id'
          DataSource = dsCTeEle
          ReadOnly = True
          TabOrder = 1
          DecimalControl = True
          KeyMode = kmNormal
        end
      end
      object CGroupBox45: TCGroupBox
        Left = 9
        Top = 88
        Width = 631
        Height = 46
        Caption = 'Dados da Comunica'#231#227'o com a SEFAZ'
        TabOrder = 1
        object CLabel121: TCLabel
          Left = 33
          Top = 22
          Width = 20
          Height = 13
          Alignment = taRightJustify
          Caption = 'Stat'
        end
        object CLabel122: TCLabel
          Left = 123
          Top = 22
          Width = 45
          Height = 13
          Alignment = taRightJustify
          Caption = 'Protocolo'
        end
        object CLabel123: TCLabel
          Left = 306
          Top = 22
          Width = 32
          Height = 13
          Alignment = taRightJustify
          Caption = 'Recibo'
        end
        object CLabel132: TCLabel
          Left = 467
          Top = 22
          Width = 58
          Height = 13
          Alignment = taRightJustify
          Caption = 'Data Recto.'
        end
        object DBEcStat: TCDBEdit
          Left = 59
          Top = 19
          Width = 59
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          Color = 14149350
          DataField = 'cStat'
          DataSource = dsCTeEle
          ReadOnly = True
          TabOrder = 0
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEnrProtocolo: TCDBEdit
          Left = 174
          Top = 19
          Width = 126
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          Color = 14149350
          DataField = 'nrProtocolo'
          DataSource = dsCTeEle
          ReadOnly = True
          TabOrder = 1
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEnrRecibo: TCDBEdit
          Left = 344
          Top = 19
          Width = 117
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          Color = 14149350
          DataField = 'nrRecibo'
          DataSource = dsCTeEle
          ReadOnly = True
          TabOrder = 2
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEdtRecebimento: TCDBEdit
          Left = 531
          Top = 19
          Width = 88
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          Color = 14149350
          DataField = 'dtRecebimento'
          DataSource = dsCTeEle
          ReadOnly = True
          TabOrder = 3
          DecimalControl = True
          KeyMode = kmNormal
        end
      end
      object CGroupBox46: TCGroupBox
        Left = 9
        Top = 140
        Width = 631
        Height = 75
        Caption = 'Motivo'
        TabOrder = 2
        object DBMdescMotivo: TCDBMemo
          Tag = 4
          Left = 2
          Top = 15
          Width = 627
          Height = 58
          TabStop = False
          Align = alClient
          BevelKind = bkTile
          BorderStyle = bsNone
          Color = 14149350
          DataField = 'descMotivo'
          DataSource = dsCTeEle
          ReadOnly = True
          ScrollBars = ssVertical
          TabOrder = 0
          KeyMemo = kmmNormal
        end
      end
      object CGroupBox47: TCGroupBox
        Left = 9
        Top = 221
        Width = 631
        Height = 75
        Caption = 'Mensagem'
        TabOrder = 3
        object DBMdescMsg: TCDBMemo
          Tag = 4
          Left = 2
          Top = 15
          Width = 627
          Height = 58
          TabStop = False
          Align = alClient
          BevelKind = bkTile
          BorderStyle = bsNone
          Color = 14149350
          DataField = 'descMsg'
          DataSource = dsCTeEle
          ReadOnly = True
          ScrollBars = ssVertical
          TabOrder = 0
          KeyMemo = kmmNormal
        end
      end
      object CGroupBox48: TCGroupBox
        Left = 9
        Top = 300
        Width = 631
        Height = 75
        Caption = 'Erros'
        TabOrder = 4
        object DBMdescErro: TCDBMemo
          Tag = 4
          Left = 2
          Top = 15
          Width = 627
          Height = 58
          TabStop = False
          Align = alClient
          BevelKind = bkTile
          BorderStyle = bsNone
          Color = 14149350
          DataField = 'descErro'
          DataSource = dsCTeEle
          ReadOnly = True
          ScrollBars = ssVertical
          TabOrder = 0
          KeyMemo = kmmNormal
        end
      end
      object CGroupBox44: TCGroupBox
        Left = 513
        Top = 16
        Width = 127
        Height = 68
        TabOrder = 5
        object CLabel115: TCLabel
          Left = 3
          Top = 11
          Width = 121
          Height = 13
          Alignment = taCenter
          AutoSize = False
          Caption = 'STATUS'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object DBEstCTeEle: TCDBEdit
          Left = 8
          Top = 34
          Width = 110
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          Color = 14149350
          DataField = 'stCTe'
          DataSource = dsCTeEle
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
      end
    end
  end
  inherited PanBotoes: TCPanelGradient
    Top = 714
    Width = 1262
    ExplicitTop = 714
    ExplicitWidth = 1262
    inherited BtnFechar: TCBitBtn
      Left = 614
      ExplicitLeft = 614
    end
    inherited BtnPesquisar: TCBitBtn
      Left = 533
      ExplicitLeft = 533
    end
    object BtnImprimir: TCBitBtn
      Left = 439
      Top = 2
      Width = 88
      Height = 25
      Caption = '&Imprimir'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      Glyph.Data = {
        36060000424D3606000000000000360000002800000020000000100000000100
        18000000000000060000120B0000120B00000000000000000000FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FF9F9D9EFF00FFFF00FFFF00FF8281818281818E8A
        8BFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFA8A8A8FF
        00FFFF00FFFF00FF8F8F8F8F8F8F989898FF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FF9F9D9E9F9D9ED4D1D19693933B393A545253999797C5C2C4D7D5
        D5828181FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFA8A8A8A8A8A8D3D3D3A0
        A0A04A4A4A646464A3A3A3C7C7C7D5D5D58F8F8FFF00FFFF00FFFF00FFFF00FF
        9F9D9E9F9D9EFAFAFAFFFFFFD7D4D59E9C9C4443451C1C1E1C1C1F3534356766
        678281818E8A8BFF00FFFF00FFFF00FFA8A8A8A8A8A8F1F1F1F5F5F5D5D5D5A7
        A7A75555552828282828284444447676768F8F8F989898FF00FF918E8F9F9D9E
        F0EEEFFFFFFFEEEBEBCAC9C99F9D9E8E8A8A9793958786866463633C3B3D1F20
        22201F21747273FF00FF9B9B9BA8A8A8E9E9E9F5F5F5E7E7E7CBCBCBA8A8A898
        9898A0A0A09393937373734C4C4C2C2C2C2C2C2C828282FF00FF9C9899E9E7E7
        E5E5E5BDBBBBA6A4A4B4B1B1C2C1C1A4A1A19692939290909793959A98988E8A
        8B6B6A6A828181FF00FFA4A4A4E3E3E3E1E1E1C1C1C1AEAEAEB9B9B9C5C5C5AC
        ACAC9F9F9F9D9D9DA0A0A0A4A4A49898987A7A7A8F8F8FFF00FF959192ADABAC
        A4A1A1B0AFAFC9C9C9D1D3D3EDEDEBF0EEF0DCDADAC5C4C4ADABAB9A98999390
        909793958E8A8BFF00FF9E9E9EB4B4B4ACACACB6B6B6CBCBCBD2D2D2E6E6E6E9
        E9E9D9D9D9C7C7C7B4B4B4A4A4A49D9D9DA0A0A0989898FF00FF918E8FAFADAF
        C9C7C7CECECEC9C9C9E2E2E2D1CFCFA1ABA1BDBCBCCBCECFD5D5D5D3D3D3C6C5
        C5B6B6B6989797FF00FF9B9B9BB5B5B5CACACACFCFCFCBCBCBDFDFDFD1D1D1AF
        AFAFC1C1C1CECECED5D5D5D3D3D3C8C8C8BCBCBCA2A2A2FF00FFFF00FF9C999A
        D0D1D1CFCFCFDCDCDCC9C6C6B5B0B4A5D1A7BAC4BCC5A7A1ADA4A3A9A6A7B4B1
        B2C2C1C1A9A6A7FF00FFFF00FFA5A5A5D1D1D1D0D0D0DADADACACACAB9B9B9C0
        C0C0C3C3C3B9B9B9B0B0B0B0B0B0B9B9B9C5C5C5B0B0B0FF00FFFF00FFFF00FF
        9C999AC1BFBFAFADADB1B0B0E3E3E3F6F3F3EEEDEEEDE1DEDCD8D8CCCCCCB4B4
        B4939091FF00FFFF00FFFF00FFFF00FFA5A5A5C4C4C4B5B5B5B7B7B7E0E0E0ED
        EDEDE7E7E7E1E1E1D8D8D8CECECEBABABA9D9D9DFF00FFFF00FFFF00FFFF00FF
        FF00FF9C999AD8DADACACACB9D9FA0BBBFC1D3D5D7D4D9D9D5D5D5C6C5C6AFAD
        ADFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFA5A5A5C4C4C4B8B8B8969696AE
        AEAEC0C0C0C2C2C2C1C1C1C8C8C8B5B5B5FF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFBE5E1F8E0D4E9C9BDE3C7BDE2CCC7DED3CED0CECC959295FF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFD4D4D4CECECEBFBFBFBD
        BDBDC0C0C0C1C1C1BBBBBB9F9F9FFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFCE9F9DFFDECEFFCFBDFFC4AFFFBAA3FFB199FF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFA7A7A7CECECEC7C7C7C1
        C1C1BCBCBCB8B8B8FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFCE9F9DFFDDCEFFCCBCFEC2B0FFBBA4F7A992FF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFA7A7A7CECECEC7C7C7C1
        C1C1BDBDBDB2B2B2FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFCE9F9DFFDDCEFFCCBCFEC2B0FEB8A3FAB099FF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFA7A7A7CECECEC7C7C7C1
        C1C1BCBCBCB6B6B6FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFCE9F9DFAE0D5FFDACCFFCEBDFFC6B1FCB8A3F8AD99FF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFA7A7A7CFCFCFCDCDCDC7C7C7C2
        C2C2BBBBBBB6B6B6FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFCE9F9DCE9F9DCE9F9DCE9F9DF3AD9DF3AD9DFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFA7A7A7A7A7A7A7A7A7A7A7A7B5
        B5B5B5B5B5FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
      Margin = 5
      NumGlyphs = 2
      ParentFont = False
      Spacing = 5
      TabOrder = 6
      OnClick = BtnImprimirClick
    end
    object BtnEnviar: TCBitBtn
      Left = 332
      Top = 2
      Width = 101
      Height = 25
      Caption = '&Enviar SEFAZ'
      Glyph.Data = {
        36060000424D3606000000000000360000002800000020000000100000000100
        18000000000000060000120B0000120B00000000000000000000FF00FFFF00FF
        FF00FFFF00FF000364000364FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF909090909090FF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FF00046D0118BC0216A4000364FF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF9494949A9A9AA4A4A4909090FF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FF00046F5673F80220D50219AA000364FF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF959595E7E7E7B8B8B8A7A7A790
        9090FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FF0003645673F8021FD30219AA000364FF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF909090E7E7E7B7B7B7A7
        A7A7909090FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FF0003645673F8021FD10219AA000364FF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF909090E7E7E7B7
        B7B7A7A7A7909090FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FF0003645673F8021FD10218A6000364FF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF909090E7
        E7E7B7B7B7A6A6A6909090FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FF0003645673F8021FD00217A6000364FF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF90
        9090E7E7E7B6B6B6A5A5A5909090FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FF3C63CD0081BDFF00FFFF00FFFF00FF0003645673F8021FD00216A70003
        64FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFB074B0989898FF00FFFF00FFFF
        00FF909090E7E7E7B6B6B6A6A6A6909090FF00FFFF00FFFF00FFFF00FFFF00FF
        097CBF00A6E600A6E60081BDFF00FFFF00FFFF00FF0003645673F80111A00030
        98005FB6FF00FFFF00FFFF00FFFF00FF9C939CBCBCBCBCBCBC989898FF00FFFF
        00FFFF00FF909090E7E7E78E8E8E898989959595FF00FFFF00FFFF00FFFF00FF
        FF00FF0081BD0081BDFF00FFFF00FFFF00FFFF00FFFF00FF0003640049A900C5
        FE0090CE0081BDFF00FFFF00FFFF00FFFF00FF989898989898FF00FFFF00FFFF
        00FFFF00FFFF00FF9090908F8F8FB1B1B19E9E9E989898FF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FF0081BDFF00FF0081BDFF00FFFF00FF0086D50090
        CE00C5FE0081BDFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF989898FF
        00FF989898FF00FFFF00FFA1A1A19E9E9EB1B1B1989898FF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FF0081BD0081BD0081BDFF00FFFF00FFFF00FF0081
        BD0081BDFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF98989898
        9898989898FF00FFFF00FFFF00FF989898989898FF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FF0081BD00BAFB00BDFF00B1F20081BDFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF989898C4C4C4C5
        C5C5C0C0C0989898FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FF0081BD0081BD0081BD00ADEE0087C40081BD0081BDFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF989898989898989898BF
        BFBF9A9A9A989898989898FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FF0081BD00ADEE0081BDFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF989898BF
        BFBF989898FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FF0081BDFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF98
        9898FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
      NumGlyphs = 2
      TabOrder = 7
      OnClick = BtnEnviarClick
    end
  end
  inherited PanEmpresa: TCPanelGradient
    Width = 1262
    ExplicitWidth = 1262
    object lookUF: TCLookUp
      Left = 435
      Top = 28
      Width = 126
      Height = 19
      Alignment = taLeftJustify
      BevelInner = bvSpace
      BevelOuter = bvLowered
      Color = 14149350
      ParentBackground = False
      TabOrder = 6
      Visible = False
      Key.Strings = (
        'idEmpresa'
        'idCadEmpresa')
      LookUpKey.Strings = (
        'idEmpresa'
        'idCadEmpresa')
      ClientDataSet = cdsLookup
      DataSource = dsEmpresa
      ValidaCampoObrigatorio = False
      CampoObrigatorio = False
      LookUpTable = 'vCadEmpresaFiscal'
      ReturnField = 'idEstado'
    end
    object BtnCorrecao: TCBitBtn
      Left = 566
      Top = 13
      Width = 126
      Height = 25
      Caption = 'Iniciar Corre'#231#227'o'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      Glyph.Data = {
        36080000424D3608000000000000360000002800000020000000100000000100
        2000000000000008000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000003132
        335596918DE3968F8CE1959596DF959494DF959594DF959495DF959495DF9594
        94DF959594DF949494DF949495E4909090C60000000000000000000000000000
        000098938F0F98918E0C97979809979696099797960997969709979697099796
        9609979796099696960996969710000000000000000000000000000000004F4C
        4A7BF0E1D6FFF0E1D6FFECE3DDFFECE3DCFFEDE5DEFFEEE6DFFFEEE6DFFFEEE6
        E0FFEEE6E1FFEDE6E1FFEFE8E3FFE4DEDAF60000000000000000000000000000
        0000F0E1D64AF0E1D64AECE3DD4AECE3DC4AEDE5DE4AEEE6DF4AEEE6DF4AEEE6
        E04AEEE6E14AEDE6E14AEFE8E34AE6E0DC2B0000000000000000000000004C4D
        4D73E3DCD7FFE5DBD5FFE3E3E5FFE2E1E2FFE3E2E1FFE3E2E2FFE3E2E2FFE3E2
        E2FFE2E2E1FFE2E1E0FFE3E2E2FFD8D8D8F20000000000000000000000000000
        0000E4DDD849E5DBD54AE3E3E54AE2E1E24AE3E2E14AE3E2E24AE3E2E24AE3E2
        E24AE2E2E14AE2E1E04AE3E2E24ADADADA240000000000000000000000004749
        4A72E7E1DBFFE7E0DAFFE4E4E3FFE5E1DEFFE6E6E7FFE6E6E6FFE6E7E7FFE6E7
        E7FFE5E6E5FFE5E5E5FFE6E6E6FFDBDCDCF20000000000000000000000000000
        0000E8E2DC49E7E0DA4AE4E4E34AE5E1DE4AE6E6E74AE6E6E64AE6E7E74AE6E7
        E74AE5E6E54AE5E5E54AE6E6E64ADDDEDE240000000000000000000000006767
        656FDED5CEFFE5D8CDFFE0D6D0FFE4D6CDFFE5DBD5FFE4DBD4FFE8E8E8FFE8E8
        E8FFE7E7E7FFE6E6E6FFE7E7E7FFDDDDDDF20000000000000000000000000000
        0000DFD6CF49E5D8CD4AE0D6D04AE4D6CD4AE5DBD54AE4DBD44AE8E8E84AE8E8
        E84AE7E7E74AE6E6E64AE7E7E74ADFDFDF240000000000000000D8BFA601C4B4
        A6A6D7CAC2FFE8D7CAFFE6DCD6FFE5DCD6FFE4D6CCFFE7DAD0FFE6DDD7FFE8E5
        E2FFE9EAEAFFE8E8E8FFE9E9E9FFDFDFDFF20000000000000000000000000000
        0000D7CAC24AE8D7CA4AE6DCD64AE5DCD64AE4D6CC4AE7DAD04AE6DDD74AE8E5
        E24AE9EAEA4AE8E8E84AE9E9E94AE1E1E1240000000000000000E9C9B10BC7AE
        9DC3E1D3C8FFE6D6CBFFE9E2DDFFE6E0DCFFE3D7CFFFE7DAD0FFE5D8CEFFE9E3
        E0FFEBEDEEFFEAEAEAFFEBEBEBFFE1E1E1F20000000000000000000000000000
        0000E1D3C84AE6D6CB4AE9E2DD4AE6E0DC4AE3D7CF4AE7DAD04AE5D8CE4AE9E3
        E04AEBEDEE4AEAEAEA4AEBEBEB4AE3E3E3240000000000000000EFD0B732CBB2
        A0C9E4DBD6FFE4DBD2FFE6DCD4FFE6DBD3FFE9E1DBFFE9E7E5FFE4D9D0FFEAE0
        D9FFEDECECFFECECEDFFEDEDEDFFE3E3E3F20000000000000000000000000000
        0000E4DBD64AE4DBD24AE6DCD44AE6DBD34AE9E1DB4AE9E7E54AE4D9D04AEAE0
        D94AEDECEC4AECECED4AEDEDED4AE5E5E5240000000000000000C2A08628D1B9
        A4C5E6DBD4FFE6D8D1FFE7DDD5FFE7DCD4FFEBE1DAFFEBE6E3FFE5D9D1FFEBE2
        DBFFEFEEEEFFEFEFF0FFEFEFEFFFE4E4E4F20000000000000000000000000000
        0000E6DBD44AE6D8D14AE7DDD54AE7DCD44AEBE1DA4AEBE6E34AE5D9D14AEBE2
        DB4AEFEEEE4AEFEFF04AEFEFEF4AE6E6E6240000000000000000C4A0850AD8C1
        AFC1E3D5CBFFE8D9CEFFEEE8E2FFEBE7E4FFE7DBD3FFE9DCD2FFE8DBD0FFEEEA
        E6FFF2F3F4FFF4F4F4FFF5F5F5FFE8E8E8F20000000000000000000000000000
        0000E3D5CB4AE8D9CE4AEEE8E24AEBE7E44AE7DBD34AE9DCD24AE8DBD04AEEEA
        E64AF2F3F44AF4F4F44AF5F5F54AEAEAEA240000000000000000000000009787
        7D9AE4DAD5FFEDDED3FFEDE3DBFFECE3DBFFE8DAD2FFEDE0D8FFEFE9E5FFF0EF
        EDFFDADBDBFFD0D0D0FFE7E7E7FFE8E8E8F60000000000000000000000000000
        0000E4DAD54AEDDED34AEDE3DB4AECE3DB4AE8DAD24AEDE0D84AEFE9E54AF0EF
        ED4ADADBDB4AD0D0D04AE7E7E74AE9E9E92D0000000000000000000000004B4D
        4F6BECE6E1FFF2E9E3FFEAE1DCFFEBDFD6FFEFE9E6FFEEE7E2FFF7F9F9FFF9FA
        FAFFCFCECEFFCDCDCDFFCCCCCCFDCBCBCBAD0000000000000000000000000000
        0000EDE7E249F2E9E34AEAE1DC4AEBDFD64AEFE9E64AEEE7E24AF7F9F94AF9FA
        FA4ACFCECE4ACDCDCD4ACDCDCD40000000000000000000000000000000004D4E
        4E7BF3F2F2FFFAF9F8FFF5F5F5FFF6F3F2FFF9FAFBFFF9F9F9FFFCFCFCFFE9E9
        E9FFCCCCCCFEEFEFEFCCEDEDED3ACDCDCD010000000000000000000000000000
        0000F3F2F24AFAF9F84AF5F5F54AF6F3F24AF9FAFB4AF9F9F94AFCFCFC4AE9E9
        E94ACECECE410000000000000000000000000000000000000000000000005050
        505DF1F1F0F6FDFBF9F5FAFBFBF3FAFBFBF3F9F9FAF3FBFBFCF4F4F4F4F6DADA
        DADAF2F2F24EF8F8F80400000000000000000000000000000000000000000000
        0000F3F3F22BFEFCFA2AFCFDFD26FCFDFD26FBFBFC26FDFDFE27F5F5F52DDCDC
        DC04000000000000000000000000000000000000000000000000}
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 7
      OnClick = BtnCorrecaoClick
    end
  end
  object panCorrecao: TPanel [5]
    Left = 41
    Top = 560
    Width = 166
    Height = 65
    Color = clGray
    ParentBackground = False
    TabOrder = 3
    Visible = False
    DesignSize = (
      166
      65)
    object CLabel143: TCLabel
      Left = 6
      Top = 11
      Width = 60
      Height = 13
      Alignment = taRightJustify
      Caption = 'Novo Valor'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBEvlNovo: TCDBEdit
      Left = 73
      Top = 8
      Width = 87
      Height = 19
      BevelKind = bkTile
      BorderStyle = bsNone
      DataField = 'vlNovo'
      DataSource = dsCTeCCampo
      TabOrder = 0
      DecimalControl = True
      KeyMode = kmNormal
    end
    object BtnConfirmar: TCBitBtn
      Left = 85
      Top = 35
      Width = 75
      Height = 25
      Anchors = [akRight, akBottom]
      Caption = '&Confirma'
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FF006600006600FF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0066001EB2311FB13300
        6600FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FF00660031C24F22B7381AB02D21B437006600FF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FF00660047D36D3BCB5E25A83B0066001B
        A92E1DB132006600FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF006600
        4FD67953DE7F31B54D006600FF00FF006600179D271EAE31006600FF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FF00660041C563006600FF00FFFF00FFFF
        00FFFF00FF00660019AA2B006600FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FF006600FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF006600149D210066
        00FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FF006600006600FF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FF006600006600FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
      TabOrder = 1
      OnClick = BtnConfirmarClick
    end
    object DBEnameNilus: TCDBEdit
      Left = 3
      Top = 55
      Width = 46
      Height = 19
      BevelKind = bkTile
      BorderStyle = bsNone
      DataField = 'nameNilus'
      DataSource = dsCTeCCampo
      MaxLength = 10
      TabOrder = 2
      Visible = False
      DecimalControl = True
      KeyMode = kmInteger
    end
    object BtnCancelaCorrecao: TCBitBtn
      Left = 4
      Top = 35
      Width = 75
      Height = 25
      Anchors = [akRight, akBottom]
      Caption = '&Cancela'
      Glyph.Data = {
        36080000424D3608000000000000360000002800000020000000100000000100
        2000000000000008000000000000000000000000000000000000FF00FF0000A5
        C60000A5C60000A5C600FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF008484
        84008484840084848400FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000A5
        C60084E7E70042C6E70042C6E70042A5E70000A5E7000084C6000084C600FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF008484
        8400C6C6C600C6C6C600A5A5A500A5A5A500A5A5A5008484840084848400FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000A5
        C60084E7E70084E7E70084E7E70084E7E70042E7E70042C6E70042C6E70042A5
        E70000A5E7000084C60000A5E700FF00FF00FF00FF00FF00FF00FF00FF008484
        8400C6DEC600C6DEC600C6C6C600C6C6C600C6C6C600C6C6C600A5A5A500A5A5
        A500A5A5A50084848400A5A5A500FF00FF00FF00FF00FF00FF00FF00FF0000A5
        C60084E7E70084E7E70084E7E70084E7E70084E7E70042E7E70042E7E70042C6
        E70042C6E70042C6E70042C6E70042A5E70000A5C600FF00FF00FF00FF008484
        8400C6DEC600C6DEC600C6DEC600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
        C600C6C6C600C6C6C600C6C6C600A5A5A50084848400FF00FF00FF00FF0000A5
        C60084E7E70084E7E70084E7E70084E7E70084E7E70084E7E70042E7E70042C6
        E70042C6E70042C6E70042C6E70042C6E70000A5C600FF00FF00FF00FF008484
        8400C6DEC600C6DEC600C6DEC600C6DEC600C6C6C600C6C6C600C6C6C600C6C6
        C600C6C6C600C6C6C600C6C6C600A5A5A50084848400FF00FF00FF00FF0000A5
        C60084E7E70084E7E70084E7E70084E7E70084E7E70084E7E70084E7E7000063
        000042C6C60042C6E70042C6E70042C6E70000A5C600FF00FF00FF00FF008484
        8400C6DEC600C6DEC600C6DEC600C6DEC600C6DEC600C6C6C600C6C6C6008463
        6300A5A5A500C6C6C600C6C6C600C6C6C60084848400FF00FF00FF00FF0000A5
        C60084E7E70084E7E70084E7E70084E7E70084E7E70084E7E70084E7E70042E7
        E7000063000042C6E70042C6E70042C6E70000A5C600FF00FF00FF00FF008484
        8400C6DEC600C6DEC600C6DEC600C6DEC600C6DEC600C6DEC600C6C6C600C6C6
        C60084636300C6C6C600C6C6C600C6C6C60084848400FF00FF00FF00FF0000A5
        C60084E7E70084E7E70084E7E70084E7E70084E7E70084E7E70084E7E70084E7
        E700008400000063000042C6E70042C6E70000A5C600FF00FF00FF00FF008484
        8400C6DEC600C6DEC600C6DEC600C6DEC600C6DEC600C6DEC600C6DEC600C6C6
        C6008484840084636300C6C6C600C6C6C60084848400FF00FF00FF00FF0000A5
        C60084E7E70084E7E70084E7E70042A584000063000084E7E70084E7E70084E7
        E700008400000063000042E7E70042C6E70000A5C600FF00FF00FF00FF008484
        8400F7FFFF00C6DEC600C6DEC600A5A5A50084848400C6DEC600C6DEC600C6DE
        C6008484840084636300C6C6C600C6C6C60084848400FF00FF00FF00FF0000A5
        C600F7FFFF0084E7E70084E7C600006300000063000084E7E70084E7E7000063
        0000008400000063000042E7E70042C6E70000A5C600FF00FF00FF00FF008484
        8400F7FFFF00F7FFFF00C6DEC6008484840084848400C6DEC600C6DEC6008484
        84008484840084636300C6C6C600C6C6C60084848400FF00FF00FF00FF0000A5
        C60000A5E70000A5E7000063000042A5420000630000006300000063000000A5
        0000006300000063000084E7E70042E7E70000A5C600FF00FF00FF00FF008484
        8400A5A5A500A5A5A50084636300848484008463630084636300848484008484
        84008463630084848400C6C6C600C6C6C60084848400FF00FF00FF00FF0000A5
        C60042E7E70042A5A5000084210042E7840042C6420000A5210000A521000063
        00000063000084E7E70084E7E70042E7E70000A5C600FF00FF00FF00FF008484
        8400C6C6C600A5A5A50084848400C6C6C6008484840084848400848484008484
        840084636300C6DEC600C6C6C600C6C6C60084848400FF00FF00FF00FF0000A5
        C60084E7E7000063000042C6630042E7630042C6420000630000006300000063
        000084E7E70084E7E70084E7E70084E7E70000A5C600FF00FF00FF00FF008484
        8400C6DEC60084636300A5A5A500A5A5A500A5A5A50084636300846363008463
        6300C6DEC600C6DEC600C6DEC600C6C6C60084848400FF00FF00FF00FF0000A5
        C60084E7E70042C6A5000063000000A5210000A521000063000042A5840084E7
        E70084E7E70084E7E70084E7E70084E7E70000A5C600FF00FF00FF00FF008484
        8400F7FFFF00C6C6C60084636300848484008484840084636300A5A5A500F7FF
        FF00F7FFFF00C6DEC600C6DEC600C6C6C60084848400FF00FF00FF00FF0000A5
        C60084E7E70084E7E70084E7E7000084420000842100006300000063000000A5
        C60000A5C60000A5C60000A5C60000A5C60000A5C600FF00FF00FF00FF008484
        8400C6C6C600C6DEC600C6C6C600848484008484840084636300846363008484
        84008484840084848400848484008484840084848400FF00FF00FF00FF00FF00
        FF0000A5C60000A5C60000A5C60000A5C60000A5C600FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF008484840084848400848484008484840084848400FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
      NumGlyphs = 2
      TabOrder = 3
      OnClick = BtnCancelaCorrecaoClick
    end
    object DBEnrItem: TCDBEdit
      Left = 55
      Top = 55
      Width = 46
      Height = 19
      BevelKind = bkTile
      BorderStyle = bsNone
      DataField = 'nrItem'
      DataSource = dsCTeCCampo
      MaxLength = 10
      TabOrder = 4
      Visible = False
      DecimalControl = True
      KeyMode = kmInteger
    end
  end
  object panRodape: TPanel [6]
    Left = 0
    Top = 695
    Width = 1262
    Height = 15
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 4
    object LblCorrecao: TCLabel
      Left = 20
      Top = 0
      Width = 633
      Height = 13
      Caption = 
        '** CT-e em CORRE'#199#195'O - Clique duplo nos Itens que deseja alterar ' +
        'e quando terminado clique "Finaliza Corre'#231#227'o"'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  inherited imgIcones: TImageList
    Left = 704
    Top = 0
    Bitmap = {
      494C010109000D00040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000003000000001002000000000000030
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CEB35CFF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000D3D4
      D4FFC1C7AAFF8F968FFFC8CBB1FFF0CAA6FFF0CAA6FFCCB052FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D0D4C0FFEFF3
      EFFF89DEDBFFC2D3B6FFA0B386FFA3B0AEFFEFC9A6FFF0CAA6FFF9F2E6FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C0C792FFECF9
      FDFFE9F6F6FFFFFFFFFFFEFFFEFFC2C092FF809260FFD9B79EFFCFAE77FFEAC7
      9BFFFDF8F4FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CCCEB7FFBEDC
      C1FFF8F9F9FFFFFFFFFFF1D6BBFFCFC4B7FFAFBF96FF767943FFD5B393FFF0CA
      A6FFEBC9A2FFF4F4E2FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C0D8
      BBFFCFF3F5FFCFDDCFFFCCDDCCFFF0CAA6FFF0CAA6FFC5C8A8FF809360FFEBC7
      A3FFF0CAA6FFC7A756FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C3C4
      8BFF82B9C5FFFFFFFFFF636040FFDBB795FFDBAF95FFDBB795FFAAAE92FF8182
      61FFF0CAA6FFE5C08EFF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00009AB386FFE4E4E4FFEEF2F3FFFFFFFFFFFBFEFFFFFCFEFFFFADACACFFA1BC
      84FFA39375FFE5C08EFFF9ECDEFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E7CEA1FFCDAE40FFF0CC
      AAFFBEC084FF857A65FFEDF0F0FF7A6A56FFF0CAA6FFE5DDCBFFA8A7A7FFE9C4
      A3FF81944FFFF0CAA6FFD5B27AFFFAECDFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F0CAA6FFF0CAA6FFF0CAA6FFF0CA
      A6FFEFCAA5FFC0BE7EFF858768FFFFFFFFFFF0F0F0FFFFFFFFFFB3AD8EFFF0CA
      A6FFB9BF97FF928A6AFFF0CAA6FFC0AB49FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000EFCAA7FFEEC9A5FFF0CAA6FFE8C7
      9FFFF0CAA6FFECC8A3FFA8BF7FFF858262FFEFCAA6FFF0CAA6FFF0CAA6FFF0CA
      A6FFEAC9A5FF80954BFFEECBA8FFF7FAF9FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000988E83FFFCFEFEFFC5B1
      AEFFFDFDFDFF8F796EFFE9C9A5FFBFC082FF99846EFFE7C19AFFF0CAA6FFCDC9
      95FFEDD2B4FF8FAB75FFA4E8E8FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000B5B5B5FFCAC9C9FFFCFC
      FCFFEFCFB0FFFBFEFFFFE7EDE6FFF0CAA6FFC5C188FF85986AFF8EA7B4FFEFF8
      FCFFE5EDEFFF8EA66FFF85D7D5FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000EDF3F5FFFFFF
      FFFFD3C28FFFF5F5F5FFCFCECEFFCAC0B7FFF2D2B4FF00000000D0D4C1FF9BBF
      8BFFBCBF81FF89E2E2FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000092635D00A467
      6900A4676900A4676900A4676900A4676900A4676900A4676900A4676900A467
      6900A4676900A467690000000000000000000000000000000000000000000000
      00000000000000000000A2B8D6803972BBE9E0E6F33200000000F4F7FA0FEDF1
      F91B0000000000000000000000000000000000000000F2F2F20DFAFAFA050000
      000000000000000000000000000000000000000000000000000000000000F8F8
      F8070000000000000000EFEFEF100000000000000000F0F0F00FCBCBCB34ADAD
      AD529D9D9D629090906F8484847B8281818082818080868686799393936CA2A2
      A25DB5B5B54AD6D6D6290000000000000000000000000000000092635D00FCF3
      DE00FFEED500FFEED500FFEED500FFEED500FEEBD100FEEBD100FEEBD100FEEB
      D100F7EDD000A467690000000000000000000000000000000000000000000000
      000000000000D1D9E44D1F5FB0FF1C57A7FF183F8EFBCFDAE94B2164B9FF296D
      D4FFCAD6EE540000000000000000000000000000000090909894747488D0B3B3
      B34CD1D1D12ECBCBCB34CBCBCB34CBCBCB34CCCCCC33D4D4D42B9B9C9E688787
      8580C9C9C9367D7D8AB4828298B80000000000000000C7C7C7387070708F4E4E
      4EB14F4A45D17D6F63EAA79886F9BEAB92FFC0AE94FFA79B8CF9696661EA4A49
      45D1535353AC88888877E1E1E11E00000000000000000000000092635D00F7EA
      D800FEBD8200FEBD8200FEBD8200FEBD8200FEBD8200FEBD8200FEBD8200FEBD
      8200F2E2C700A4676900000000000000000000000000000000007497C3B31B5B
      A9FF0C407FFF1957A5FF154D91FF0F408DFF26458DFF175198FF19529FFF255F
      C2FF7B9BEAB8F8FAFB0AACC6EB6E000000000000000095959D9DFFFFFFFFABAB
      C5FF7575809F9F9F9F60AEAEAE51B2B2B24DB6B6B649ADADAD52816E5AE76B6C
      79C29898AEE8FFFFFFFF9292ACC90000000000000000F4F4F40BA6A5A55C806F
      61E0D1B296FFF3D8BDFFF5E1CBFFF5DFC4FFF7EBDBFFF1F1F0FFE0DEDAFFC8B5
      96FF887B65E0B1B0AF520000000000000000000000000000000092635D00F8EF
      DE00FAE9D500FAE7D400FAE7D300F8E6D100F8E6D000F8E6D000F8E6D000F8E6
      D000F0E2C900A4676900000000000000000000000000F7F8F90D1856A9FF174E
      97FF052A5AFF153F93FF0E368EFF0E3683FF15418BFF123B91FF0E3C8FFF3969
      D5FF4E83F5FE114094FF194FB3FFC3CFEC5D0000000080808EA3F8F8FFFFFFFF
      FFFFFFFFFFFFD2D2E5FFA3A3B5E69497A8CF8C93AECCA16A34E9F1BC86FFF8FF
      FFFFFFFFFFFFFFFFFFFF79799BC80000000000000000E3E1E020947B6AD1D5B1
      96FFE5C2A5FFD0B69EFFDFC4A9FFE7C9ABFFEBE5DFFFF2F5F9FFE4DDD1FFE5CA
      A1FFE0C49AFF9C8B6DD6E1DFDD2500000000000000000000000092635D00EAE2
      D400FEBD8200FEBD8200FEBD8200FEBD8200FEBD8200FEBD8200FEBD8200FEBD
      8200E1D3BA00A467690000000000000000000000000096A9BF8317498EFF0D43
      88FF1B2F5FFF5371B7FF254BAEFF68698BFF495A84FF4664AEFF3C6CDDFF976A
      48FF8A5C34FF4C73B8FF4F78DBFFEAEEF9280000000088889892D4D4FFFFDADA
      FFFFEDEDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE5C6FFFEAF58FFE5E7F0FFF3F8
      FFFFDADBFFFFDADAFFFF78789FBA0000000000000000967564B9BD815DFFCFA7
      8BFFD9CAC0FF9D8F85FF8A735EFFD1B69DFFE7E9EAFFE8E7E6FFCDAC81FFD8AC
      71FFDAB57FFFC9A162FF9A845EC000000000000000000000000098746800AA9F
      9500A69A9200A5999100A5998E00A4978B00A3968900A1958700A1938400A191
      8300A4938100986B650000000000000000009494946B38557BD9133E8BFF022B
      7DFFDFDFE7FFA1B1D8FFA1B5E8FFE3E2E6FFDDDEE5FF9EAFD8FFE3E2E5FFDEDF
      E7FFDEE2ECFFB86A2AFF6491F7FF00000000000000009797A67FBDBDFFFFBEBE
      FDFFCBCBFAFFE0E0FEFFF2F6FFFFE5E6F3FFE69841FFD5C5B5FFDEE6FFFFD0D1
      FFFFBFBFFCFFC3C3FFFF8080A5AA00000000C0B2AD599C502EFFC06D43FFC18C
      6CFFD1CDCCFFAFAFAFFF7E746DFFB5AFA9FFE8EBEEFFBCAB99FFAD7331FFAD76
      31FFA67B42FFBC873BFFA16E1FFFBAB1A1628C3816008C3816008C3816008C38
      16008C3816008C3816008C3816008C3816008C3816008C3816008C3816008C38
      16008C3816008C3816008C3816008C381600E6E6E619A9AEB6716F91DDFF92A0
      D1FFDFDFE5FFDEDEE5FFDEDEE5FFDDDDE5FFDDDDE5FFDDDDE5FFDDDDE5FFDDDD
      E5FFDDDDE5FFE3A673FF5E93FFFF00000000000000009898A980A9A9FFFFABAB
      FBFFB4B4F8FFC1C2FCFFC8D3FFFFCE976EFFEDBA7BFFC0CCFDFFC7CAFFFFB5B5
      F7FFAAAAF9FFACACFFFF7A7AA3AB000000008F7064AEA65433FFAC5B34FFB076
      58FFDDD8D6FFCDCFD0FFB7B7B7FFC5C6C6FFD6D6D6FF8C8378FF796A59FF8980
      77FF8B7861FFB17B31FFB47D2DFF927D5BB68C38160000000000A7756800E0E9
      EA00E1754500E1754500E1754500E1754500E1754500E1754500E1754500E175
      4500D7D8CA00A4676900000000008B351200000000000000000000000000D092
      5AC7DEDFE7FFEDEDEDFFFBFBFBFFFBFBFBFFFBFBFBFFFBFBFBFFFBFBFBFFFBFB
      FBFFFBFBFBFFE5D9D5FFA9AEBD6C00000000000000009595A9809696FFFF9797
      F9FF9FA0F6FFA6AEFFFFA095C8FFF6AD51FFBEBDD9FFABB0FFFFAAAAF8FF9F9F
      F4FF9696F5FF9595FFFF74749FAB000000007F4B3CE1AA5335FFA75331FFAA6F
      52FFDBD6D4FFE2E4E5FFDBDBDBFFD9D9DAFFC7C8C8FFB0B0B1FFC0C5CAFFD6D1
      CBFFC29867FFB57A30FFB57B2CFF886735E38C3815008C3816008C3816008C38
      16008C3816008C3816008C3816008C3816008C3816008C3816008C3816008C38
      16008C3816008C3816008C3816008C381600B9B9B946B7B7B748C1C2C341C6B6
      A75CDDE4F1FFBEBEBEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFDEE5F1FFA187788700000000000000009494A9808989FFFF8687
      F7FF8B8CFCFF7E84F3FFCA8951FFEAD2B3FF8891F6FF9394F9FF8D8DF3FF8787
      F2FF8888F4FF9393FFFF74749FAB00000000834131F0B55134FFAF4F2FFFAC6B
      50FFDAD3D1FFDFE1E2FFE2E2E2FFE2E2E1FFDFDFDFFFE3E7E9FFDFD7CFFFC187
      4FFFB16F2BFFB47227FFB5711EFF865C22F00000000000000000B17E6B00D7B0
      9C00D1AF9E00D1AF9E00CEAA9700CCA99500CCA79300CBA59100CAA59000CAA3
      8B00D4A78C00A467690000000000000000007D7D7D82535B64B40D274AFF0924
      50FFEAE2E1FFB1B1B2FFCDCDCEFFCDCDCEFFCDCDCEFFCDCDCEFFCDCDCEFFCDCD
      CEFFCCCCCDFFD8DBE2FFBB6B26EB00000000000000009191A8807B7BFFFF7C7B
      F8FF757EFFFF977290FFEAB45CFF8A92E1FF7679FCFF8181F3FF8B8BF3FF9A9A
      F4FFA3A3F6FFADADFFFF7A7A9FAB000000007C483CE1A44A34FFA14A30FFA466
      50FFD6D1CFFFDDDEDFFFDEDEDEFFDEDEDEFFE0E4E7FFD6D0CCFFB68055FFAD65
      25FFAC7137FFAF7333FFAF722CFF856135E30000000000000000BB846E00FFFF
      FF00FFE3C100FFE2C000FFE2BF00FFE2BF00FFE2BF00FFE2BF00FFE2BF00FFE2
      BF00FFFCEF00A467690000000000000000006C6D70930A2343FF0B2046FF0D27
      5FFFEDBE98FFDFDFE6FFDFDFE6FFDFDFE6FFDFDFE6FFDFDFE6FFDFDFE6FFDFDF
      E6FFDFDFE6FFDEDEE6FFEAA975FF00000000000000009696A9808C8CFFFF6F70
      FFFF6B66E2FFBF894FFFB5B1C5FF6C70F4FF9192F8FFAAAAF7FFB2B2F7FFB1B1
      F6FFAFAFFAFFBABAFFFF7D7DA0AB000000008C6A64AE9C4533FF9F4630FFA061
      4DFFD4CFCDFFDADCDCFFDBDBDBFFDDE1E3FFD5C8C1FFAE7753FFA85D28FFAD65
      2DFFA86B35FFAC6E31FFA86B2BFF8E765BB60000000000000000C58C7000FFFF
      FF00FEBD8200FEBD8200FEBD8200FEBD8200FEBD8200FEBD8200FEBD8200FEBD
      8200FBF6E900A467690000000000000000002E4A7BFF2B457FFF2F4E9AFF3D65
      C4FFCD9765C4DEDFE8FFDEDEE5FFDEDEE5FFDEDEE5FFDEDEE5FFDEDEE5FFDEDE
      E5FFDEDEE5FFDEDEE5FFE7DAD5FFD9D9D926000000009B9BAA81D5D5FFFFB9BE
      FFFF997A88FF9B8D72FFA1A7EDFFBEBEFFFFC5C5F9FFC4C4F8FFC1C1F8FFBEBE
      F8FFBFBFFAFFD2D2FFFF8383A1AC00000000BFB0AE598F3A2DFFAB4834FFA665
      54FFD5CFCEFFDADCDCFFDDE0E1FFD5C6C0FFBA7451FFA65D33FFB16333FFB465
      2EFFAC6B39FFB06A2DFF92551CFFB9AEA2620000000000000000CB917300FFFF
      FF00FEFFFF00FEFFFF00FEFEFE00FEFBFA00FBFAF700FBF8F600FAF7F300F8F4
      F000FCFAF000A467690000000000000000009BA8D19298B1E7B0BACDF97E0000
      0000DCD4CD35FF871AFFFF8618FFFF8618FFFF8618FFFF8619FFFF8618FFFF86
      18FFFF8618FFFF8618FFFF8718FFC9BDB55A000000009899A88DFFFFFFFFE7E1
      F2FF9E845FFFB9BED2FFE7E8FFFFE0E0FFFFDDDDFCFFDBDBFCFFDBDBFBFFDCDC
      FCFFE2E2FFFFFFFFFFFF8888A3BA0000000000000000855D58B99F5548FFBA8A
      80FFDDDAD9FFE3E6E7FFD9CFCDFFC18E79FFBB7B5EFFB78368FFBC8565FFBF86
      63FFBF8F6EFFAB764CFF87694FBF000000000000000000000000D4987600FFFF
      FF00FEBD8200FEBD8200FEBD8200FEBD8200FEBD8200FEBD8200FEBD8200FEBD
      8200FFFCF400A467690000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000CDD3DE43B8C8EA6ED0DB
      F34AE5EBF929F6F9FE0D000000000000000000000000CCCCCF35BDC0E4FFCDBF
      B0FFAEABA0FFFFFFFFFFFFFFFFFFF8F8FFFFF8F8FFFFF9F9FFFFFEFEFFFFFFFF
      FFFFFFFFFFFFCCCCEDFFAEAEB4580000000000000000E5E0E021835D57D3CFB4
      AFFFF3F3F4FFEAE4E3FFD4B8AFFFD3ADA0FFD5B2A4FFD2B4A6FFD6B6A6FFDDBE
      ADFFD3B8A8FF896C58D8E3DFDC25000000000000000000000000D4987600FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFE00FFFE
      FA00FFFFFF00A467690000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000DEE4F02FF3F6
      FB13000000000000000000000000000000000000000000000000CDCDCE359286
      81FFC0C1D9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE2E2
      F3FF9393A7B9D0D0D22F00000000000000000000000000000000E9E5E41C9E8B
      88AFDCD2D1FFF7EBE9FFFAEEEBFFFCEFECFFFCF0ECFFFCF2EEFFF8EBE5FFD9C6
      BEFF9F8E84B4E6E2E02000000000000000000000000000000000D4987600CF8E
      6800CF8E6800CF8E6800CF8E6800CF8E6800CF8E6800CF8E6800CF8E6800CF8E
      6800CF8E6800A467690000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F8F8F807EBEB
      EB16FBFBFB04AFAFB8619B9BABA2A0A0B7CC9898BFE98E8EA3BEA6A6AF70E6E6
      E619000000000000000000000000000000000000000000000000000000000000
      0000CEC3C246AD9A98A0B1A19FD6BFAEAAF0BFAFAAF0B2A39FD8AE9D97A2CBC1
      BD4A000000000000000000000000000000000000000000000000000000000000
      000000000000FEFEFE01FAFAF907F7F5F40DFBFAFA06E5E4E21FBDBCBC43C7C6
      C63AC3C2C23DC7C6C63AF9F8F70A000000000000000000000000000000000000
      000000000000000000000000000000000000FCFCFC0300000000000000000000
      000000000000000000000000000000000000000000000000000000000000F7F7
      F709F4F4F40BF4F4F40BF4F4F40BF3F3F30CF3F3F30CF3F3F30CF4F4F40BF7F7
      F709000000000000000000000000000000000000000000000000E1E1E1F0DFDF
      E0F0DFDFE0F0DFDFE0F0DFDFE0F0DFDFE0F0DFDFE0F0DFDFE0F0DFDFE0F0DFDF
      E0F0DFDFE0F0E3E3E3F00000000000000000000000000000000000000000FDFC
      FC03E6E2DE2ACCC1B966C0B1A58FBFB0A499C4B6AB86ADA198839C7F6DC0C2A3
      8FBBCAAD99AFCBAD98ABEBDED63B00000000000000000000000000000000FBFB
      FB04DEDEDE21AFAEAF558585878E707275C56C7074E1676668B691919275CBCA
      CA35F2F2F20D00000000000000000000000000000000E8E8E817A7A7A672A19F
      9FA3A09F9FAEA2A1A0B1A3A1A0B3A3A1A1B4A3A1A1B4A3A1A1B3A4A3A2B0A5A4
      A4AAA8A7A79AB8B8B857F3F3F30C0000000000000000B2B2B2FF797979FF9696
      96FF979798FF979798FF979798FF979798FF979798FF979798FF979798FF9898
      98FF949494FF777777FFC4C4C4FF000000000000000000000000F5F3F111C8BC
      B274CBB7ACD2CFBFA3F9D1C6A4FFEDDFD8FDE6D7CDFDE3CEC1ECAF9B8FD6B698
      84DAF1CCB1B6F6E8DF35FEFEFE010000000000000000F7F7F708DEDEDE218383
      838D696F74FA8B9399FEAAB5BBFFCAD7DEFFDFEBEFFF86888BFF787879FE595A
      5BFC646363B3B1B1B14EEEEEEE11FEFEFE01F7F7F708999797A9CAC6C5FFD6D2
      D1FFD4D1D0FFD5D2D1FFD5D2D1FFD5D2D2FFD6D3D2FFD7D4D4FFD9D6D5FFD8D5
      D4FFBAD4C9FFE2DFDEFDB0B0B0730000000000000000AFAFAEFF979798FFFAFA
      FAFFEEEEEEFFEEEEEEFFEEEEEEFFEEEEEEFFEEEEEEFFEEEEEEFFEEEEEEFFF0F0
      F0FFF5F5F5FF8B8B8BFFBFBFC0FF0000000000000000F6F4F30FC3B4A995DCC8
      BBF3EFE3DAF6DCD5BBFAD3CEA8FEEEE8DBFBF8F1EDF8F8EEE8F4C9BFB9F2AB90
      7EFCDDB497D9E5DED9330000000000000000FAFAFA05E6E6E619C6C6C6398085
      87C4A8B4BBFFB8C6CDFFC6D4DCFFDBEAF0FFEDF6F9FF909496FF8C8D8EFF7D7E
      7EFF686868E78C8C8C73CECECE31F8F8F807DDDDDD30B5B1B0FED5D2D1FFD9D6
      D5FFD7D5D4FFD7D5D4FFD8D6D5FFD9D7D6FFDAD7D6FFDAD8D7FFDBD9D8FFDEDB
      DBFFE3E0DFFFE6E4E4FFD0CFCFEBEFEFEF1000000000AFAFAEFF9C9C9DFFE1E1
      E1FF8E8E8EFF8D8D8EFF8E8E8EFF8E8E8EFF8E8E8EFF8E8E8EFF8D8D8DFF9393
      93FFF0F0F0FF8E8E8EFFC0C0C1FF00000000FEFEFE01C9BDB379DDCABCF2EFE2
      D9EFF8F0EAF3E6E1CCFBDCD8BAFEE3E0C7FEF4EFE6FDFFFAF5F7D6CEC8F3B19B
      8BFBECC2A3FBC3B4A87DF7F5F40D00000000FEFEFE01F9F9F906EFEFEF108D92
      94B8ACB9C0FFBCCAD2FFCAD9E1FFDFEDF4FFF0F7FAFF93979AFF8F9191FF8081
      81FF707070E4CBCBCB34EAEAEA15FCFCFC03DCDBDA8FD9D6D5FFF0EEEEFFF5F4
      F4FFF6F4F4FFF5F4F3FFF5F3F3FFF4F3F2FFF4F2F2FFF4F2F2FFF5F3F3FFF6F5
      F4FFF7F6F6FFF4F3F3FFEAE8E8FFDCDCDC5400000000AFAFAEFF979798FFFAFA
      FAFFECECECFFECECECFFECECECFFECECECFFECECECFFECECECFFECECECFFEEEE
      EFFFF7F7F7FF8B8B8BFFC0C0C1FF00000000E5E0DC2FD1BCADD2EDDDD2EAF6EB
      E5ECEDE6D7F7D9D4B8FDDDD9BEFEDCD8BEFEDEDAC0FEFFFAF3F7D9D6D1F4B39C
      8EF8F6CFB3FBC2AA98CDDDD7D239FEFEFE010000000000000000000000009095
      98B4AFBDC4FFC0CFD7FFCEDEE7FFE4F1F7FFF2F9FBFF979B9DFF939494FF8384
      85FF767676E1FEFEFE010000000000000000D6D3D2DCEFEDECFFF7F5F4FFF9F8
      F7FFF8F7F6FFF5F4F3FFF2F1F0FFEFEEEEFFEFEEEDFFF1F0EFFFF5F4F3FFF9F8
      F7FFFBFAF9FFFBFAF9FFF6F5F4FFF6F5F4A000000000AFAFAEFF9B9B9CFFE1E1
      E2FF919191FF909090FF909091FF909091FF909091FF909091FF8F8F90FF9494
      95FFEFEFEFFF8E8E8EFFC0C0C1FF00000000D0C4BC6CE4CFC1E6F3E5DBE3F0E5
      DAEDCDC5A7FCCEC8A9FDD5CFB1FDD3CDAFFDDBD4BBFBE8E3D8F5B2AEABF3AC97
      89F9F9D5BBF3D3BDA7EAC0B5A973FCFBFB050000000000000000000000009095
      98B6AFBDC4FFC5D4DCFFD3E4EDFFE8F5FAFFF5FAFCFF999EA1FF909192FF8688
      88FF777777E4000000000000000000000000D9D6D5F8EDEBEAFFF2F0F0FFF4F2
      F1FFE5E4E3FFC9C8C7FFBAB9B9FFC3C2C2FFBFBFBEFFB2B2B1FFBCBBBBFFDAD8
      D8FFF1F0EFFFF5F4F3FFF3F2F2FFF4F4F4BA00000000AFAFAEFF979798FFF8F8
      F8FFE7E7E7FFE7E7E7FFE7E7E7FFE7E7E7FFE7E7E7FFE7E7E7FFE7E7E7FFEAEA
      EAFFF6F6F6FF8B8B8BFFC0C0C1FF00000000CEBEB38EEBD8CAE2F6E6DDDCF1E4
      DAE8C5BCA0F8BEB693FDC8C1A4FAE6DDCEF5FEF4EFF0C8C0B8F2907869FAD6B7
      A1FAF8D2B5F5C9B694F8AEA28F97F9F8F8090000000000000000000000008C91
      93B9769AA7FF3E97B2FF7ABDD3FFECF8FDFFF6FBFDFF9DA1A4FF7B7D7FFF8A8C
      8CFF787879E6000000000000000000000000E1DEDEC8E8E5E4FFECEAEAFFDCDB
      DAFFA4A2A2FF6E6E6EFFB8B8B8FFF4F4F4FFF3F3F3FFE6E6E6FFB0B0B0FF8C8B
      8AFFBFBEBDFFEDEBEBFFEFEEEDFFF9F8F88A00000000AEAEADFF9E9E9EFFEEEE
      EEFFA5A5A5FFA4A4A4FFA5A5A5FFA5A5A5FFA5A5A5FFA5A5A6FF9E9E9EFF9F9F
      A0FFF0F0F0FF8D8D8DFFC0C0C1FF00000000D2C1B592F0DCCEDDE3D5C3E2DBCE
      B9EBDFD3C3EAD8CDBAEFEEE0D8EBF5E9E4EAF3E7DFEAEFE2D8E7EDD7C9E7D6BC
      9CF3BFA074FCA49466FFAEA18E9CF9F8F809000000000000000000000000888B
      8EC19CA9AEFF3CA0BDFFCAE2EDFFF0FCFEFFF8FCFDFF9FA3A7FF797A7DFF8E90
      90FF7A7B7BE8000000000000000000000000F8F8F84EDCD9D8FFE5E3E2FFC6C5
      C4FFBCBCBCFF535353FF4F4F4FFFABABABFFEBEBEBFFE9E9E9FFDFDFDFFF9191
      91FF9E9D9CFFE3E2E1FFEAE9E8F3FEFEFE1900000000B0B0AFFF7F7F7FFFACAC
      ACFF8C8C8CFF8A8A89FF8A8A8AFF89898AFF8A8A8AFF8B8B8BFFBABABAFFE0E0
      DFFFF5F5F5FF8C8C8CFFC0C0C1FF00000000D7C9BF7CD2C0A1F1C3B69AE8E5D6
      C7DCE8DBCEE5F0E4DAE5F4E7DCE6F2E4DAE7F2E4D9E7F5E6DBE4EDE0D7DE8C85
      72EE847C57F79C9061FFB9AC9D87FDFDFD020000000000000000F3F3F30C8E92
      93DDB5C0C4FFB3CED9FFE2F5FCFFF0FAFBFFF3F6F7FFA0A5A9FF7C7E81FF9193
      94FF7B7C7DEA00000000000000000000000000000000E2E0E0BCDFDDDCFFCDCC
      CBFF828282FF484848FF505050FF919191FFEFEFEFFFECECECFFE8E8E8FFB0B0
      B0FF9C9B9BFFE6E4E3FFF8F8F8790000000000000000DADADAFF858585FF6E6E
      6EFFADADADFFBDBDBDFFB8B8B8FFB8B8B8FFB6B6B6FF828282FF89898AFFACAC
      ADFFF1F1F1FF8D8D8DFFC0C0C1FF00000000DDD4CD4CA6976BF8B3A57CF2DACF
      B5EEE4D8C5EFF5E9E1E7F2E5DCE8F2E6DCE8F2E6DCE8FAECE3E6BAB1A9EB9078
      68F7BA9872FCAA9774EED7D0CA4900000000000000000000000000000000959B
      9FBEAAB6BCFFB3BFC5FFC8D5D9FFE8EEEFFFECEFF0FF9EADA6FF809294FF7A83
      7FFF838786ED00000000000000000000000000000000FCFCFC2AD8D5D5F9CDCC
      CCFF636363FF565656FFD8D9D8FFFAFAFAFFFAFAFAFFF5F5F5FFA2A2A2FF8F8F
      8FFF717171FFEBEAE9D700000000000000000000000000000000000000009B9B
      9BFF838384FFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFF949494FFA2A2A2FFD0D0
      D1FFF4F4F4FF8C8C8CFFC0C0C1FF00000000F7F5F40EB3A487BEAFA579FFC5BE
      9FFDCAC2A4FCE8DFCDF5F5ECE2F0F5EBE4EFF4E9E1F0F8EDE4EEDFD4CDEFD3B5
      A2F9E6BE94FFC0AD97ACF7F6F50D000000000000000000000000000000009CA4
      A8C5C8D8E0FFDBEDF4FFEFFDFDFFFDFFFFFFFCFEFFFFA0A8AAFF767A7DFF6669
      6AFF7E8081EF0000000000000000000000000000000000000000EDEBEB88B0B0
      B0FFBEBEBEFFF7F7F7FFFCFCFCFFFDFDFDFFFCFCFCFFB6B6B6FF464646FF1A1A
      1AFF616160FEFCFCFC4100000000000000000000000000000000000000000000
      0000B6B6B5FF727273FFB4B4B5FFFFFFFFFFFFFFFFFF919191FF8E8E8FFFBABA
      BAFFF3F3F3FF8D8D8DFFC0C0C1FF0000000000000000E2DCD639B7AB87E9E4DF
      CAFFD9D3BFFED8D4BFFDE0DAC5FDEAE4D8FBF7F0EBF7F7EFEAF7FEF6F1F8F6ED
      E6FFBAA78FD5E2DCD73200000000000000000000000000000000000000009FA8
      ADC7D4E6F0FFE7FAFEFFF9FFFFFFFFFFFFFFFDFFFFFFB0B7BAFFAAAEAFFF989B
      9CFF7D7F80F20000000000000000000000000000000000000000FEFEFE09A5A4
      A4D1CCCCCCFFF8F8F8FFFCFCFCFFFCFCFCFFFCFCFCFFDCDCDCFF656565FF4545
      45FFBCBBBB940000000000000000000000000000000000000000000000000000
      000000000000D7D7D7FF7E7E7EFF919192FFEAEAEAFF989897FF959595FFB9B9
      BAFFF3F3F4FF8D8D8DFFC0C0C1FF000000000000000000000000DDD6CF41D8D2
      C2D8FCFCF5FFFCFAF6FFEFEDE4FFF5F1ECFFFFFCF9FFFFFFFDFFFFFFFEFFDDD3
      C9C4E5E0DC30000000000000000000000000000000000000000000000000ABB2
      B5A9EEFBFDFFFCFEFFFFFEFFFFFFFFFFFFFFFBFBFBFFD0D4D6FFD7DEE1FFC1C8
      CAFF999D9EDD000000000000000000000000000000000000000000000000EEEE
      EE41747474FECCCCCCFFF9F9F9FFFCFCFCFFFCFCFCFFEEEEEEFFA7A7A7FF9C9C
      9CF0FCFCFC140000000000000000000000000000000000000000000000000000
      00000000000000000000000000009C9C9BFF7B7B7CFF7E7E7EFFB9B9B9FFFFFF
      FFFFF3F3F3FF898989FFBFBFC0FF00000000000000000000000000000000F6F4
      F216DBD3CC7BE7E2DDCCEEE9E7E9F2F0EFEFECE8E5E8DDD6D0C4D8D1C974F5F3
      F21100000000000000000000000000000000000000000000000000000000F1F1
      F10EC2C3C44BBCBDBE55BDBEBF55BCBEBE56BABBBC55C2C3C355C0C1C255BFC0
      C153E3E3E31E0000000000000000000000000000000000000000000000000000
      0000CBCBCB86979797FFC2C2C2FFFAFAFAFFFCFCFCFFE4E4E4FF8A8A8AF9E9E9
      E950000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C1C1C1FF828282FF838383FF9393
      94FF949494FF7F7F7FFFC5C5C5FF000000000000000000000000000000000000
      000000000000FAF9F80EF3F1F027EAE6E230F1EEEC25F9F8F70B000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000E8E8E854AAAAAAC58B8B8BF5D0D0D0EFDEDEDEB0F4F4F4340000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000E3E3E3F0E2E2
      E2F0E2E2E2F0E3E3E3F00000000000000000424D3E000000000000003E000000
      2800000040000000300000000100010000000000800100000000000000000000
      000000000000000000000000FFFFFF00FFFF000000000000FF7F000000000000
      E03F000000000000C01F000000000000C007000000000000C003000000000000
      E003000000000000E003000000000000F0010000000000008000000000000000
      0000000000000000000000000000000080010000000000008001000000000000
      C043000000000000FFFF000000000000C003FC4F9FED8003C003F80780018001
      C003C00180018003C003800080018001C003800080018001C003000180010000
      00000001800100004002E001800100000000000180010000C003000180010000
      C003000180010000C003000080010000C003100080018001C003FF8380018001
      C003FFCFC003C003C003FFFFC00FF00FF801FF7FE00FC003E001E00780018001
      C001800000018001800300000000800100010000000080010000E00300008001
      0000E007000080010000E007000080010000E007000080010000C00780018001
      0001E0078003E0010001E007C003F0018003E007C007F801C007E007E007FE01
      E00FE007F00FFF01F83FFFFFF81FFFC300000000000000000000000000000000
      000000000000}
  end
  inherited Acao: TActionList
    Left = 904
    Top = 0
  end
  inherited cdsPadrao: TClientDataSet
    CommandText = 'SELECT * FROM CTe'
    Left = 800
    Top = 96
  end
  inherited dspPadrao: TDataSetProvider
    DataSet = sdsCTe
    Left = 728
    Top = 96
  end
  inherited dsPadrao: TDataSource
    Left = 1072
    Top = 8
  end
  inherited ImgBotoes: TImageList
    Left = 784
    Top = 0
    Bitmap = {
      494C010106000800500020001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
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
  inherited cdsEmpresa: TClientDataSet
    Top = 0
  end
  inherited dsEmpresa: TDataSource
    Top = 0
  end
  object dspCTeValePed: TDataSetProvider
    DataSet = sdsCTeValePed
    Options = [poAllowMultiRecordUpdates, poPropogateChanges, poAllowCommandText, poUseQuoteChar]
    BeforeUpdateRecord = dspCTeCompBeforeUpdateRecord
    Left = 1040
    Top = 488
  end
  object dsCTeValePed: TDataSource
    DataSet = cdsCTeValePed
    OnStateChange = dsCTeValePedStateChange
    Left = 1176
    Top = 488
  end
  object cdsCTeValePed: TClientDataSet
    Aggregates = <>
    CommandText = 'SELECT * FROM CTeValePedagio'
    Params = <>
    ProviderName = 'dspCTeValePed'
    AfterOpen = cdsPadraoAfterOpen
    AfterInsert = cdsCTeCompAfterEdit
    AfterEdit = cdsCTeCompAfterEdit
    OnReconcileError = cdsPadraoReconcileError
    Left = 1109
    Top = 488
    object cdsCTeValePedidEmpresa: TIntegerField
      FieldName = 'idEmpresa'
      Required = True
    end
    object cdsCTeValePedidCadEmpresa: TSmallintField
      FieldName = 'idCadEmpresa'
      Required = True
    end
    object cdsCTeValePedidCte: TIntegerField
      FieldName = 'idCte'
      Required = True
    end
    object cdsCTeValePednrCompra: TFMTBCDField
      FieldName = 'nrCompra'
      Required = True
      Precision = 20
      Size = 0
    end
    object cdsCTeValePedidFornecedor: TIntegerField
      FieldName = 'idFornecedor'
      Required = True
    end
    object cdsCTeValePedidRespPagto: TIntegerField
      FieldName = 'idRespPagto'
      Required = True
    end
    object cdsCTeValePedvlValePedagio: TFMTBCDField
      FieldName = 'vlValePedagio'
      Required = True
      Precision = 19
      Size = 4
    end
    object cdsCTeValePeddescFornecedor: TStringField
      FieldKind = fkLookup
      FieldName = 'descFornecedor'
      LookupDataSet = cdsCadGeral
      LookupKeyFields = 'idCliente'
      LookupResultField = 'descCadCliente'
      KeyFields = 'idFornecedor'
      Size = 60
      Lookup = True
    end
    object cdsCTeValePeddescRespPagto: TStringField
      FieldKind = fkLookup
      FieldName = 'descRespPagto'
      LookupDataSet = cdsCadGeral
      LookupKeyFields = 'idCliente'
      LookupResultField = 'descCadCliente'
      KeyFields = 'idRespPagto'
      Size = 60
      Lookup = True
    end
    object cdsCTeValePedidDocSerie: TStringField
      FieldName = 'idDocSerie'
      Required = True
      Size = 5
    end
  end
  object sdsCTeValePed: TSQLDataSet
    SchemaName = 'gesys'
    CommandText = 'SELECT * FROM CTeValePedagio'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmPadrao.dbConexao
    Left = 976
    Top = 488
  end
  object sdsCTeOcc: TSQLDataSet
    SchemaName = 'gesys'
    CommandText = 'SELECT * FROM CTeSeg'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmPadrao.dbConexao
    Left = 976
    Top = 440
  end
  object dspCTeOcc: TDataSetProvider
    DataSet = sdsCTeOcc
    Options = [poAllowMultiRecordUpdates, poPropogateChanges, poAllowCommandText, poUseQuoteChar]
    BeforeUpdateRecord = dspCTeCompBeforeUpdateRecord
    Left = 1040
    Top = 440
  end
  object cdsCTeOcc: TClientDataSet
    Aggregates = <>
    CommandText = 'SELECT * FROM CTeOcc'
    Params = <>
    ProviderName = 'dspCTeOcc'
    AfterOpen = cdsPadraoAfterOpen
    AfterInsert = cdsCTeCompAfterEdit
    AfterEdit = cdsCTeCompAfterEdit
    OnReconcileError = cdsPadraoReconcileError
    Left = 1109
    Top = 440
    object cdsCTeOccidEmpresa: TIntegerField
      FieldName = 'idEmpresa'
      Required = True
    end
    object cdsCTeOccidCadEmpresa: TSmallintField
      FieldName = 'idCadEmpresa'
      Required = True
    end
    object cdsCTeOccidCte: TIntegerField
      FieldName = 'idCte'
      Required = True
    end
    object cdsCTeOccserie: TStringField
      FieldName = 'serie'
      Required = True
      FixedChar = True
      Size = 3
    end
    object cdsCTeOccnrOcc: TFMTBCDField
      FieldName = 'nrOcc'
      Required = True
      Precision = 6
      Size = 0
    end
    object cdsCTeOccdtEmissao: TSQLTimeStampField
      FieldName = 'dtEmissao'
      Required = True
    end
    object cdsCTeOccidEmissorOcc: TIntegerField
      FieldName = 'idEmissorOcc'
      Required = True
    end
    object cdsCTeOccdescEmissor: TStringField
      FieldKind = fkLookup
      FieldName = 'descEmissor'
      LookupDataSet = cdsCadGeral
      LookupKeyFields = 'idCliente'
      LookupResultField = 'descCadCliente'
      KeyFields = 'idEmissorOcc'
      Size = 60
      Lookup = True
    end
    object cdsCTeOccidDocSerie: TStringField
      FieldName = 'idDocSerie'
      Required = True
      Size = 5
    end
  end
  object dsCTeOcc: TDataSource
    DataSet = cdsCTeOcc
    OnStateChange = dsCTeOccStateChange
    Left = 1176
    Top = 440
  end
  object dsCTeRodo: TDataSource
    DataSet = cdsCTeRodo
    Left = 1176
    Top = 392
  end
  object cdsCTeRodo: TClientDataSet
    Aggregates = <>
    CommandText = 'SELECT * FROM CTeRodo'
    Params = <>
    ProviderName = 'dspCTeRodo'
    AfterOpen = cdsPadraoAfterOpen
    AfterInsert = cdsCTeRodoAfterInsert
    AfterEdit = cdsCTeRodoAfterInsert
    OnReconcileError = cdsPadraoReconcileError
    Left = 1109
    Top = 392
  end
  object dspCTeRodo: TDataSetProvider
    DataSet = sdsCTeRodo
    Options = [poAllowMultiRecordUpdates, poPropogateChanges, poAllowCommandText, poUseQuoteChar]
    BeforeUpdateRecord = dspCTeCompBeforeUpdateRecord
    Left = 1040
    Top = 392
  end
  object sdsCTeRodo: TSQLDataSet
    SchemaName = 'gesys'
    CommandText = 'SELECT * FROM CTeRodo'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmPadrao.dbConexao
    Left = 976
    Top = 392
  end
  object sdsCTeSeg: TSQLDataSet
    SchemaName = 'gesys'
    CommandText = 'SELECT * FROM CTeSeg'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmPadrao.dbConexao
    Left = 976
    Top = 344
  end
  object dspCTeSeg: TDataSetProvider
    DataSet = sdsCTeSeg
    Options = [poAllowMultiRecordUpdates, poPropogateChanges, poAllowCommandText, poUseQuoteChar]
    BeforeUpdateRecord = dspCTeCompBeforeUpdateRecord
    Left = 1040
    Top = 344
  end
  object cdsCTeSeg: TClientDataSet
    Aggregates = <>
    CommandText = 'SELECT * FROM CTeSeg'
    Params = <>
    ProviderName = 'dspCTeSeg'
    AfterOpen = cdsPadraoAfterOpen
    AfterInsert = cdsCTeCompAfterEdit
    AfterEdit = cdsCTeCompAfterEdit
    OnReconcileError = cdsPadraoReconcileError
    Left = 1109
    Top = 344
  end
  object dsCTeSeg: TDataSource
    DataSet = cdsCTeSeg
    Left = 1176
    Top = 344
  end
  object dsCTePeri: TDataSource
    DataSet = cdsCTePeri
    OnStateChange = dsCTePeriStateChange
    Left = 1176
    Top = 296
  end
  object cdsCTePeri: TClientDataSet
    Aggregates = <>
    CommandText = 'SELECT * FROM CTePeri'
    Params = <>
    ProviderName = 'dspCTePeri'
    AfterOpen = cdsPadraoAfterOpen
    AfterInsert = cdsCTeCompAfterEdit
    AfterEdit = cdsCTeCompAfterEdit
    OnReconcileError = cdsPadraoReconcileError
    Left = 1109
    Top = 296
    object cdsCTePeriidEmpresa: TIntegerField
      FieldName = 'idEmpresa'
      Required = True
    end
    object cdsCTePeriidCadEmpresa: TSmallintField
      FieldName = 'idCadEmpresa'
      Required = True
    end
    object cdsCTePeriidCte: TIntegerField
      FieldName = 'idCte'
      Required = True
    end
    object cdsCTePerinrONU: TStringField
      FieldName = 'nrONU'
      Required = True
      FixedChar = True
      Size = 4
    end
    object cdsCTePeridescNomeProduto: TStringField
      FieldName = 'descNomeProduto'
      Required = True
      Size = 150
    end
    object cdsCTePeridescClasseRisco: TStringField
      FieldName = 'descClasseRisco'
      Required = True
      Size = 40
    end
    object cdsCTePerigrupoEmbalagem: TStringField
      FieldName = 'grupoEmbalagem'
      FixedChar = True
      Size = 6
    end
    object cdsCTePeriqtProduto: TStringField
      FieldName = 'qtProduto'
      Required = True
      FixedChar = True
    end
    object cdsCTePeriqtVolume: TStringField
      FieldName = 'qtVolume'
      Size = 60
    end
    object cdsCTePeripontoFulgor: TStringField
      FieldName = 'pontoFulgor'
      FixedChar = True
      Size = 6
    end
    object cdsCTePeriidDocSerie: TStringField
      FieldName = 'idDocSerie'
      Required = True
      Size = 5
    end
  end
  object dspCTePeri: TDataSetProvider
    DataSet = sdsCTePeri
    Options = [poAllowMultiRecordUpdates, poPropogateChanges, poAllowCommandText, poUseQuoteChar]
    BeforeUpdateRecord = dspCTeCompBeforeUpdateRecord
    Left = 1040
    Top = 296
  end
  object sdsCTePeri: TSQLDataSet
    SchemaName = 'gesys'
    CommandText = 'SELECT * FROM CTePeri'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmPadrao.dbConexao
    Left = 976
    Top = 296
  end
  object sdsCTeDocAnt: TSQLDataSet
    SchemaName = 'gesys'
    CommandText = 'SELECT * FROM CTeDocAnt'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmPadrao.dbConexao
    Left = 976
    Top = 248
  end
  object dspCTeDocAnt: TDataSetProvider
    DataSet = sdsCTeDocAnt
    Options = [poAllowMultiRecordUpdates, poPropogateChanges, poAllowCommandText, poUseQuoteChar]
    BeforeUpdateRecord = dspCTeCompBeforeUpdateRecord
    Left = 1040
    Top = 248
  end
  object cdsCTeDocAnt: TClientDataSet
    Aggregates = <>
    CommandText = 'SELECT * FROM CTeDocAnt'
    Params = <>
    ProviderName = 'dspCTeDocAnt'
    AfterOpen = cdsPadraoAfterOpen
    AfterInsert = cdsCTeCompAfterEdit
    AfterEdit = cdsCTeCompAfterEdit
    OnReconcileError = cdsPadraoReconcileError
    Left = 1109
    Top = 248
    object cdsCTeDocAntidEmpresa: TIntegerField
      FieldName = 'idEmpresa'
      Required = True
    end
    object cdsCTeDocAntidCadEmpresa: TSmallintField
      FieldName = 'idCadEmpresa'
      Required = True
    end
    object cdsCTeDocAntidCte: TIntegerField
      FieldName = 'idCte'
      Required = True
    end
    object cdsCTeDocAntidDocAnt: TSmallintField
      FieldName = 'idDocAnt'
      Required = True
    end
    object cdsCTeDocAnttpDoc: TFMTBCDField
      FieldName = 'tpDoc'
      Precision = 2
      Size = 0
    end
    object cdsCTeDocAntserie: TStringField
      FieldName = 'serie'
      FixedChar = True
      Size = 3
    end
    object cdsCTeDocAntnrDoc: TFMTBCDField
      FieldName = 'nrDoc'
      Precision = 20
      Size = 0
    end
    object cdsCTeDocAntidEmissor: TIntegerField
      FieldName = 'idEmissor'
    end
    object cdsCTeDocAntsubser: TStringField
      FieldName = 'subser'
      FixedChar = True
      Size = 2
    end
    object cdsCTeDocAntdtEmissao: TSQLTimeStampField
      FieldName = 'dtEmissao'
    end
    object cdsCTeDocAntchave: TStringField
      FieldName = 'chave'
      Size = 44
    end
    object cdsCTeDocAntidDocSerie: TStringField
      FieldName = 'idDocSerie'
      Required = True
      Size = 5
    end
  end
  object dsCTeDocAnt: TDataSource
    DataSet = cdsCTeDocAnt
    OnStateChange = dsCTeDocAntStateChange
    Left = 1176
    Top = 248
  end
  object dsCTeDocOutro: TDataSource
    DataSet = cdsCTeDocOutro
    OnDataChange = dsCTeDocOutroDataChange
    Left = 1176
    Top = 200
  end
  object cdsCTeDocOutro: TClientDataSet
    Aggregates = <>
    CommandText = 'SELECT * FROM CTeDocOutro'
    Params = <>
    ProviderName = 'dspCTeDocOutro'
    AfterOpen = cdsPadraoAfterOpen
    AfterInsert = cdsCTeCompAfterEdit
    AfterEdit = cdsCTeCompAfterEdit
    OnReconcileError = cdsPadraoReconcileError
    Left = 1109
    Top = 200
    object cdsCTeDocOutroidEmpresa: TIntegerField
      FieldName = 'idEmpresa'
      Required = True
    end
    object cdsCTeDocOutroidCadEmpresa: TSmallintField
      FieldName = 'idCadEmpresa'
      Required = True
    end
    object cdsCTeDocOutroidCte: TIntegerField
      FieldName = 'idCte'
      Required = True
    end
    object cdsCTeDocOutrotpDoc: TFMTBCDField
      FieldName = 'tpDoc'
      Required = True
      Precision = 2
      Size = 0
    end
    object cdsCTeDocOutronrDoc: TFMTBCDField
      FieldName = 'nrDoc'
      Required = True
      Precision = 20
      Size = 0
    end
    object cdsCTeDocOutrodtEmissao: TSQLTimeStampField
      FieldName = 'dtEmissao'
      Required = True
    end
    object cdsCTeDocOutrovlDoc: TFMTBCDField
      FieldName = 'vlDoc'
      Required = True
      Precision = 19
      Size = 4
    end
    object cdsCTeDocOutrodescOutros: TStringField
      FieldName = 'descOutros'
      Size = 100
    end
    object cdsCTeDocOutrodtPrevisao: TSQLTimeStampField
      FieldName = 'dtPrevisao'
    end
    object cdsCTeDocOutroidDocSerie: TStringField
      FieldName = 'idDocSerie'
      Required = True
      Size = 5
    end
  end
  object dspCTeDocOutro: TDataSetProvider
    DataSet = sdsCTeDocOutro
    Options = [poAllowMultiRecordUpdates, poPropogateChanges, poAllowCommandText, poUseQuoteChar]
    BeforeUpdateRecord = dspCTeCompBeforeUpdateRecord
    Left = 1040
    Top = 200
  end
  object sdsCTeDocOutro: TSQLDataSet
    SchemaName = 'gesys'
    CommandText = 'SELECT * FROM CTeDocOutro'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmPadrao.dbConexao
    Left = 976
    Top = 200
  end
  object sdsCTeNF: TSQLDataSet
    SchemaName = 'gesys'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmPadrao.dbConexao
    Left = 976
    Top = 152
  end
  object dspCTeNF: TDataSetProvider
    DataSet = sdsCTeNF
    Options = [poAllowMultiRecordUpdates, poPropogateChanges, poAllowCommandText, poUseQuoteChar]
    BeforeUpdateRecord = dspCTeCompBeforeUpdateRecord
    Left = 1040
    Top = 152
  end
  object cdsCTeNF: TClientDataSet
    Aggregates = <>
    CommandText = 'SELECT * FROM CTeNF'
    Params = <>
    ProviderName = 'dspCTeNF'
    AfterOpen = cdsPadraoAfterOpen
    AfterInsert = cdsCTeCompAfterEdit
    AfterEdit = cdsCTeCompAfterEdit
    OnReconcileError = cdsPadraoReconcileError
    Left = 1109
    Top = 152
  end
  object dsCTeNF: TDataSource
    DataSet = cdsCTeNF
    OnStateChange = dsCTeNFStateChange
    Left = 1176
    Top = 152
  end
  object dsCTeNFe: TDataSource
    DataSet = cdsCTeNFe
    OnStateChange = dsCTeNFeStateChange
    Left = 1176
    Top = 104
  end
  object cdsCTeNFe: TClientDataSet
    Aggregates = <>
    CommandText = 'SELECT * FROM CTeNFe'
    Params = <>
    ProviderName = 'dspCTeNFe'
    AfterOpen = cdsPadraoAfterOpen
    AfterInsert = cdsCTeCompAfterEdit
    AfterEdit = cdsCTeCompAfterEdit
    OnReconcileError = cdsPadraoReconcileError
    Left = 1109
    Top = 104
    object cdsCTeNFeidEmpresa: TIntegerField
      FieldName = 'idEmpresa'
      Required = True
    end
    object cdsCTeNFeidCadEmpresa: TSmallintField
      FieldName = 'idCadEmpresa'
      Required = True
    end
    object cdsCTeNFeidDocSerie: TStringField
      FieldName = 'idDocSerie'
      Required = True
      Size = 5
    end
    object cdsCTeNFeidCte: TIntegerField
      FieldName = 'idCte'
      Required = True
    end
    object cdsCTeNFechave: TStringField
      FieldName = 'chave'
      Required = True
      Size = 44
    end
    object cdsCTeNFePIN: TFMTBCDField
      FieldName = 'PIN'
      Precision = 9
      Size = 0
    end
    object cdsCTeNFedtPrevisao: TSQLTimeStampField
      FieldName = 'dtPrevisao'
    end
  end
  object dspCTeNFe: TDataSetProvider
    DataSet = sdsCTeNFe
    Options = [poAllowMultiRecordUpdates, poPropogateChanges, poAllowCommandText, poUseQuoteChar]
    BeforeUpdateRecord = dspCTeCompBeforeUpdateRecord
    Left = 1040
    Top = 104
  end
  object sdsCTeNFe: TSQLDataSet
    SchemaName = 'gesys'
    CommandText = 'SELECT * FROM CTeNFe'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmPadrao.dbConexao
    Left = 976
    Top = 104
  end
  object FindConta: TCFind
    SelectClause.Strings = (
      
        'SELECT  idConta, idBanco, idAgencia, idContaCorrente, descConta ' +
        'FROM CadGeralConta')
    JoinClause.Strings = (
      'WHERE idCadGeral = [DBEidFornecedor]')
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
    Left = 640
    Top = 56
  end
  object cdsRateio: TClientDataSet
    Aggregates = <>
    CommandText = 'SELECT * FROM RateioItem WHERE 1=2'
    Params = <>
    ProviderName = 'dspLookup'
    Left = 920
    Top = 56
    object cdsRateioidEmpresa: TIntegerField
      FieldName = 'idEmpresa'
      Required = True
    end
    object cdsRateioidRateio: TSmallintField
      FieldName = 'idRateio'
      Required = True
    end
    object cdsRateioidResultado: TIntegerField
      FieldName = 'idResultado'
      Required = True
    end
    object cdsRateioprRateio: TFMTBCDField
      FieldName = 'prRateio'
      Required = True
      Precision = 5
      Size = 3
    end
  end
  object cdsProdMedida: TClientDataSet
    Aggregates = <>
    CommandText = 'SELECT * FROM ProdMedida'
    Params = <>
    ProviderName = 'dspLookup'
    Left = 872
    Top = 56
  end
  object cdsResultado: TClientDataSet
    Aggregates = <>
    CommandText = 'SELECT * FROM Resultado'
    Params = <>
    ProviderName = 'dspLookup'
    Left = 800
    Top = 56
  end
  object cdsProduto: TClientDataSet
    Aggregates = <>
    CommandText = 'SELECT * FROM Produto'
    Params = <>
    ProviderName = 'dspLookup'
    Left = 720
    Top = 56
  end
  object sdsCTe: TSQLDataSet
    SchemaName = 'gesys'
    CommandText = 'SELECT * FROM CTe'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmPadrao.dbConexao
    Left = 680
    Top = 96
  end
  object sdsCTeComp: TSQLDataSet
    SchemaName = 'gesys'
    GetMetadata = False
    CommandText = 'SELECT * FROM CTeComp'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmPadrao.dbConexao
    Left = 680
    Top = 140
  end
  object dspCTeComp: TDataSetProvider
    DataSet = sdsCTeComp
    Options = [poAllowMultiRecordUpdates, poPropogateChanges, poAllowCommandText, poUseQuoteChar]
    BeforeUpdateRecord = dspCTeCompBeforeUpdateRecord
    Left = 760
    Top = 140
  end
  object cdsCTeComp: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    CommandText = 'SELECT * FROM CTeComp'
    Params = <>
    ProviderName = 'dspCTeComp'
    AfterOpen = cdsPadraoAfterOpen
    AfterInsert = cdsCTeCompAfterEdit
    AfterEdit = cdsCTeCompAfterEdit
    OnReconcileError = cdsPadraoReconcileError
    Left = 829
    Top = 140
    object cdsCTeCompdescProduto: TStringField
      FieldKind = fkLookup
      FieldName = 'descProduto'
      LookupDataSet = cdsProduto
      LookupKeyFields = 'idProduto'
      LookupResultField = 'descProduto'
      KeyFields = 'idProduto'
      Size = 50
      Lookup = True
    end
    object cdsCTeCompidEmpresa: TIntegerField
      FieldName = 'idEmpresa'
      Required = True
    end
    object cdsCTeCompidCadEmpresa: TSmallintField
      FieldName = 'idCadEmpresa'
      Required = True
    end
    object cdsCTeCompidProduto: TIntegerField
      FieldName = 'idProduto'
    end
    object cdsCTeCompidCte: TIntegerField
      FieldName = 'idCte'
      Required = True
    end
    object cdsCTeCompidComp: TSmallintField
      FieldName = 'idComp'
      Required = True
    end
    object cdsCTeCompvlComp: TFMTBCDField
      FieldName = 'vlComp'
      Required = True
      Precision = 19
      Size = 4
    end
    object cdsCTeCompidDocSerie: TStringField
      FieldName = 'idDocSerie'
      Required = True
      Size = 5
    end
    object cdsCTeCompdescComp: TStringField
      FieldName = 'descComp'
      Size = 15
    end
    object cdsCTeCompvlTotalGeral: TAggregateField
      FieldName = 'vlTotalGeral'
      Active = True
      currency = True
      DisplayName = ''
      Expression = 'SUM(vlComp)'
    end
  end
  object dsCTeComp: TDataSource
    DataSet = cdsCTeComp
    OnStateChange = dsCTeCompStateChange
    Left = 896
    Top = 140
  end
  object dsCusto: TDataSource
    DataSet = cdsCusto
    OnStateChange = dsCustoStateChange
    Left = 896
    Top = 183
  end
  object cdsCusto: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    CommandText = 'SELECT * FROM CTeCusto'
    Params = <>
    ProviderName = 'dspCusto'
    AfterOpen = cdsPadraoAfterOpen
    AfterInsert = cdsCTeCompAfterEdit
    AfterEdit = cdsCTeCompAfterEdit
    OnReconcileError = cdsPadraoReconcileError
    Left = 829
    Top = 183
    object cdsCustoidEmpresa: TIntegerField
      FieldName = 'idEmpresa'
      Required = True
    end
    object cdsCustoidCadEmpresa: TSmallintField
      FieldName = 'idCadEmpresa'
      Required = True
    end
    object cdsCustoidResultado: TIntegerField
      FieldName = 'idResultado'
      Required = True
    end
    object cdsCustoprRateio: TFMTBCDField
      FieldName = 'prRateio'
      Required = True
      Precision = 6
      Size = 3
    end
    object cdsCustovlRateio: TFMTBCDField
      FieldName = 'vlRateio'
      Required = True
      Precision = 19
      Size = 4
    end
    object cdsCustodescResultado: TStringField
      FieldKind = fkLookup
      FieldName = 'descResultado'
      LookupDataSet = cdsResultado
      LookupKeyFields = 'idResultado'
      LookupResultField = 'descResultado'
      KeyFields = 'idResultado'
      Size = 50
      Lookup = True
    end
    object cdsCustoidGerencial: TIntegerField
      FieldName = 'idGerencial'
      Required = True
    end
    object cdsCustoidDocSerie: TStringField
      FieldName = 'idDocSerie'
      Required = True
      Size = 5
    end
    object cdsCustoidCTe: TIntegerField
      FieldName = 'idCTe'
      Required = True
    end
    object cdsCustovlTotalRateio: TAggregateField
      FieldName = 'vlTotalRateio'
      Active = True
      currency = True
      DisplayName = ''
      Expression = 'SUM(vlRateio)'
    end
  end
  object dspCusto: TDataSetProvider
    DataSet = sdsCusto
    Options = [poAllowMultiRecordUpdates, poPropogateChanges, poAllowCommandText, poUseQuoteChar]
    BeforeUpdateRecord = dspCTeCompBeforeUpdateRecord
    Left = 760
    Top = 183
  end
  object sdsCusto: TSQLDataSet
    SchemaName = 'gesys'
    GetMetadata = False
    CommandText = 'SELECT * FROM CTeCusto'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmPadrao.dbConexao
    Left = 680
    Top = 183
  end
  object sdsMovCaixa: TSQLDataSet
    SchemaName = 'gesys'
    GetMetadata = False
    CommandText = 'SELECT * FROM MovCaixa'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmPadrao.dbConexao
    Left = 680
    Top = 227
  end
  object dspMovCaixa: TDataSetProvider
    DataSet = sdsMovCaixa
    Options = [poAllowMultiRecordUpdates, poPropogateChanges, poAllowCommandText, poUseQuoteChar]
    BeforeUpdateRecord = dspMovCaixaBeforeUpdateRecord
    Left = 760
    Top = 227
  end
  object cdsMovCaixa: TClientDataSet
    Aggregates = <>
    CommandText = 'SELECT * FROM MovCaixa'
    Params = <>
    ProviderName = 'dspMovCaixa'
    AfterOpen = cdsPadraoAfterOpen
    AfterInsert = cdsMovCaixaAfterInsert
    OnReconcileError = cdsPadraoReconcileError
    Left = 832
    Top = 227
    object cdsMovCaixaidMovCaixa: TIntegerField
      FieldName = 'idMovCaixa'
      Required = True
    end
    object cdsMovCaixaidEmpresa: TIntegerField
      FieldName = 'idEmpresa'
      Required = True
    end
    object cdsMovCaixaidCaixa: TIntegerField
      FieldName = 'idCaixa'
      Required = True
    end
    object cdsMovCaixaidCadGeral: TIntegerField
      FieldName = 'idCadGeral'
    end
    object cdsMovCaixaidSafra: TIntegerField
      FieldName = 'idSafra'
    end
    object cdsMovCaixaidMovFinanceira: TIntegerField
      FieldName = 'idMovFinanceira'
      Required = True
    end
    object cdsMovCaixaidGerencial: TIntegerField
      FieldName = 'idGerencial'
    end
    object cdsMovCaixaidResultado: TIntegerField
      FieldName = 'idResultado'
    end
    object cdsMovCaixaidRateio: TSmallintField
      FieldName = 'idRateio'
    end
    object cdsMovCaixadtMovCaixa: TSQLTimeStampField
      FieldName = 'dtMovCaixa'
      Required = True
    end
    object cdsMovCaixadescMovCaixa: TStringField
      FieldName = 'descMovCaixa'
      Required = True
      Size = 250
    end
    object cdsMovCaixavlMovCaixa: TFMTBCDField
      FieldName = 'vlMovCaixa'
      Required = True
      Precision = 19
      Size = 4
    end
    object cdsMovCaixafator: TSmallintField
      FieldName = 'fator'
      Required = True
    end
    object cdsMovCaixaidCadEmpresa: TSmallintField
      FieldName = 'idCadEmpresa'
      Required = True
    end
  end
  object dsMovCaixa: TDataSource
    DataSet = cdsMovCaixa
    Left = 896
    Top = 227
  end
  object cdsMovConta: TClientDataSet
    Aggregates = <>
    CommandText = 'SELECT * FROM MovConta'
    Params = <>
    ProviderName = 'dspMovConta'
    AfterOpen = cdsPadraoAfterOpen
    AfterInsert = cdsMovContaAfterInsert
    OnReconcileError = cdsPadraoReconcileError
    Left = 832
    Top = 270
    object cdsMovContaidMovConta: TIntegerField
      FieldName = 'idMovConta'
      Required = True
    end
    object cdsMovContaidEmpresa: TIntegerField
      FieldName = 'idEmpresa'
      Required = True
    end
    object cdsMovContaidConta: TIntegerField
      FieldName = 'idConta'
      Required = True
    end
    object cdsMovContaidCadGeral: TIntegerField
      FieldName = 'idCadGeral'
    end
    object cdsMovContaidSafra: TIntegerField
      FieldName = 'idSafra'
    end
    object cdsMovContaidMovFinanceira: TIntegerField
      FieldName = 'idMovFinanceira'
      Required = True
    end
    object cdsMovContaidGerencial: TIntegerField
      FieldName = 'idGerencial'
    end
    object cdsMovContaidResultado: TIntegerField
      FieldName = 'idResultado'
    end
    object cdsMovContaidRateio: TSmallintField
      FieldName = 'idRateio'
    end
    object cdsMovContaidCheque: TStringField
      FieldName = 'idCheque'
      Size = 10
    end
    object cdsMovContadtMovConta: TSQLTimeStampField
      FieldName = 'dtMovConta'
      Required = True
    end
    object cdsMovContadtCompensacao: TSQLTimeStampField
      FieldName = 'dtCompensacao'
    end
    object cdsMovContadtVencimento: TSQLTimeStampField
      FieldName = 'dtVencimento'
    end
    object cdsMovContadtCancelamento: TSQLTimeStampField
      FieldName = 'dtCancelamento'
    end
    object cdsMovContadescMovConta: TStringField
      FieldName = 'descMovConta'
      Required = True
      Size = 250
    end
    object cdsMovContavlMovConta: TFMTBCDField
      FieldName = 'vlMovConta'
      Required = True
      Precision = 19
      Size = 4
    end
    object cdsMovContafator: TSmallintField
      FieldName = 'fator'
      Required = True
    end
    object cdsMovContaidCadEmpresa: TSmallintField
      FieldName = 'idCadEmpresa'
      Required = True
    end
  end
  object dspMovConta: TDataSetProvider
    DataSet = sdsMovConta
    Options = [poAllowMultiRecordUpdates, poPropogateChanges, poAllowCommandText, poUseQuoteChar]
    Left = 760
    Top = 270
  end
  object dsMovConta: TDataSource
    DataSet = cdsMovConta
    Left = 896
    Top = 270
  end
  object sdsMovConta: TSQLDataSet
    SchemaName = 'gesys'
    GetMetadata = False
    CommandText = 'SELECT * FROM MovConta'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmPadrao.dbConexao
    Left = 680
    Top = 270
  end
  object sdsTituloRec: TSQLDataSet
    SchemaName = 'gesys'
    GetMetadata = False
    CommandText = 'SELECT * FROM TituloRec'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmPadrao.dbConexao
    Left = 680
    Top = 312
  end
  object dspTituloRec: TDataSetProvider
    DataSet = sdsTituloRec
    Options = [poAllowMultiRecordUpdates, poPropogateChanges, poAllowCommandText, poUseQuoteChar]
    BeforeUpdateRecord = dspMovCaixaBeforeUpdateRecord
    Left = 760
    Top = 312
  end
  object cdsTituloRec: TClientDataSet
    Aggregates = <>
    CommandText = 'SELECT * FROM TituloRec'
    Params = <>
    ProviderName = 'dspTituloRec'
    AfterOpen = cdsPadraoAfterOpen
    AfterInsert = cdsTituloRecAfterInsert
    AfterEdit = cdsTituloRecAfterEdit
    OnReconcileError = cdsPadraoReconcileError
    Left = 832
    Top = 312
    object cdsTituloRecidTituloRec: TIntegerField
      FieldName = 'idTituloRec'
      Required = True
    end
    object cdsTituloRecidEmpresa: TIntegerField
      FieldName = 'idEmpresa'
      Required = True
    end
    object cdsTituloRecidCliente: TIntegerField
      FieldName = 'idCliente'
      Required = True
    end
    object cdsTituloRecnrTituloRec: TStringField
      FieldName = 'nrTituloRec'
      Required = True
    end
    object cdsTituloRecidDocSerie: TStringField
      FieldName = 'idDocSerie'
      Required = True
      Size = 5
    end
    object cdsTituloRectpDocumento: TStringField
      FieldName = 'tpDocumento'
    end
    object cdsTituloRecdtEmissao: TSQLTimeStampField
      FieldName = 'dtEmissao'
      Required = True
    end
    object cdsTituloRecidSafra: TIntegerField
      FieldName = 'idSafra'
      Required = True
    end
    object cdsTituloRecidBanco: TIntegerField
      FieldName = 'idBanco'
      Required = True
    end
    object cdsTituloRecidIndice: TSmallintField
      FieldName = 'idIndice'
      Required = True
    end
    object cdsTituloRecidMovFinanceira: TIntegerField
      FieldName = 'idMovFinanceira'
      Required = True
    end
    object cdsTituloRecidResultado: TIntegerField
      FieldName = 'idResultado'
    end
    object cdsTituloRecidRateio: TSmallintField
      FieldName = 'idRateio'
    end
    object cdsTituloRecidGerencial: TIntegerField
      FieldName = 'idGerencial'
    end
    object cdsTituloRecobsTituloRec: TStringField
      FieldName = 'obsTituloRec'
      Size = 250
    end
    object cdsTituloRecvlTituloRec: TFMTBCDField
      FieldName = 'vlTituloRec'
      Required = True
      Precision = 10
      Size = 2
    end
    object cdsTituloRecqtParcelas: TSmallintField
      FieldName = 'qtParcelas'
      Required = True
    end
    object cdsTituloRecdtVencimentoIni: TSQLTimeStampField
      FieldName = 'dtVencimentoIni'
      Required = True
    end
    object cdsTituloRecdiasVencimento: TSmallintField
      FieldName = 'diasVencimento'
      Required = True
    end
    object cdsTituloRecprMulta: TFMTBCDField
      FieldName = 'prMulta'
      Required = True
      Precision = 5
      Size = 3
    end
    object cdsTituloRecprDesconto: TFMTBCDField
      FieldName = 'prDesconto'
      Required = True
      Precision = 5
      Size = 3
    end
    object cdsTituloRecprJuros: TFMTBCDField
      FieldName = 'prJuros'
      Required = True
      Precision = 5
      Size = 3
    end
    object cdsTituloRecincMes: TStringField
      FieldName = 'incMes'
      Required = True
      FixedChar = True
      Size = 1
    end
    object cdsTituloRecstTituloRec: TStringField
      FieldName = 'stTituloRec'
      Required = True
      Size = 15
    end
    object cdsTituloRecidCadEmpresa: TSmallintField
      FieldName = 'idCadEmpresa'
      Required = True
    end
  end
  object dsTituloRec: TDataSource
    DataSet = cdsTituloRec
    Left = 896
    Top = 312
  end
  object dsTituloRecParc: TDataSource
    DataSet = cdsTituloRecParc
    Left = 896
    Top = 360
  end
  object cdsTituloRecParc: TClientDataSet
    Aggregates = <>
    CommandText = 'SELECT * FROM TituloRecParc'
    Params = <>
    ProviderName = 'dspTituloRecParc'
    AfterOpen = cdsPadraoAfterOpen
    AfterInsert = cdsTituloRecParcAfterInsert
    OnReconcileError = cdsPadraoReconcileError
    Left = 832
    Top = 360
    object cdsTituloRecParcidTituloRec: TIntegerField
      FieldName = 'idTituloRec'
      Required = True
    end
    object cdsTituloRecParcidParcela: TSmallintField
      FieldName = 'idParcela'
      Required = True
    end
    object cdsTituloRecParcvlParcela: TFMTBCDField
      FieldName = 'vlParcela'
      Required = True
      Precision = 10
      Size = 2
    end
    object cdsTituloRecParcdtVencimento: TSQLTimeStampField
      FieldName = 'dtVencimento'
      Required = True
    end
    object cdsTituloRecParcstTituloRecParc: TStringField
      FieldName = 'stTituloRecParc'
      Required = True
      Size = 15
    end
  end
  object dspTituloRecParc: TDataSetProvider
    DataSet = sdsTituloRecParc
    Options = [poAllowMultiRecordUpdates, poPropogateChanges, poAllowCommandText, poUseQuoteChar]
    Left = 760
    Top = 360
  end
  object sdsTituloRecParc: TSQLDataSet
    SchemaName = 'gesys'
    GetMetadata = False
    CommandText = 'SELECT * FROM TituloRecParc'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmPadrao.dbConexao
    Left = 680
    Top = 360
  end
  object cdsTituloRecMov: TClientDataSet
    Aggregates = <>
    CommandText = 'SELECT * FROM TituloRecMov'
    Params = <>
    ProviderName = 'dspTituloRecMov'
    AfterInsert = cdsTituloRecMovAfterInsert
    OnReconcileError = cdsPadraoReconcileError
    Left = 832
    Top = 405
    object cdsTituloRecMovidTituloRecMov: TIntegerField
      FieldName = 'idTituloRecMov'
      Required = True
    end
    object cdsTituloRecMovidEmpresa: TIntegerField
      FieldName = 'idEmpresa'
      Required = True
    end
    object cdsTituloRecMovidCliente: TIntegerField
      FieldName = 'idCliente'
      Required = True
    end
    object cdsTituloRecMovidTituloRec: TIntegerField
      FieldName = 'idTituloRec'
      Required = True
    end
    object cdsTituloRecMovidParcela: TSmallintField
      FieldName = 'idParcela'
      Required = True
    end
    object cdsTituloRecMovidMovFinanceira: TIntegerField
      FieldName = 'idMovFinanceira'
      Required = True
    end
    object cdsTituloRecMovdtTituloRecMov: TSQLTimeStampField
      FieldName = 'dtTituloRecMov'
      Required = True
    end
    object cdsTituloRecMovvlTituloRecMov: TFMTBCDField
      FieldName = 'vlTituloRecMov'
      Required = True
      Precision = 19
      Size = 4
    end
    object cdsTituloRecMovfator: TSmallintField
      FieldName = 'fator'
      Required = True
    end
    object cdsTituloRecMovidCadEmpresa: TSmallintField
      FieldName = 'idCadEmpresa'
      Required = True
    end
    object cdsTituloRecMovvlRealIndice: TFMTBCDField
      FieldName = 'vlRealIndice'
      Precision = 19
      Size = 4
    end
  end
  object dspTituloRecMov: TDataSetProvider
    DataSet = sdsTituloRecMov
    Options = [poAllowMultiRecordUpdates, poPropogateChanges, poAllowCommandText, poUseQuoteChar]
    BeforeUpdateRecord = dspTituloRecMovBeforeUpdateRecord
    Left = 760
    Top = 405
  end
  object sdsTituloRecMov: TSQLDataSet
    SchemaName = 'gesys'
    GetMetadata = False
    CommandText = 'SELECT * FROM TituloRecMov'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmPadrao.dbConexao
    Left = 680
    Top = 405
  end
  object sdsCTeEle: TSQLDataSet
    SchemaName = 'gesys'
    GetMetadata = False
    CommandText = 'SELECT * FROM vCTeEletronico'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmPadrao.dbConexao
    Left = 680
    Top = 452
  end
  object dspCTeEle: TDataSetProvider
    DataSet = sdsCTeEle
    Options = [poAllowMultiRecordUpdates, poPropogateChanges, poAllowCommandText, poUseQuoteChar]
    BeforeUpdateRecord = dspCTeCompBeforeUpdateRecord
    Left = 760
    Top = 452
  end
  object cdsCTeEle: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    CommandText = 'SELECT * FROM vCTeEletronico'
    Params = <>
    ProviderName = 'dspCTeEle'
    AfterOpen = cdsPadraoAfterOpen
    AfterInsert = cdsCTeCompAfterEdit
    AfterEdit = cdsCTeCompAfterEdit
    OnReconcileError = cdsPadraoReconcileError
    Left = 829
    Top = 452
    object cdsCTeEleemit_CNPJ: TStringField
      FieldName = 'emit_CNPJ'
      Required = True
      Size = 14
    end
    object cdsCTeEleide_serie: TFMTBCDField
      FieldName = 'ide_serie'
      Required = True
      Precision = 3
      Size = 0
    end
    object cdsCTeEleidCTe: TFMTBCDField
      FieldName = 'idCTe'
      Required = True
      Precision = 9
      Size = 0
    end
    object cdsCTeEleinfCte_id: TStringField
      FieldName = 'infCte_id'
      Size = 47
    end
    object cdsCTeEleinfCte_chCTe: TStringField
      FieldName = 'infCte_chCTe'
      Size = 44
    end
    object cdsCTeElecStat: TSmallintField
      FieldName = 'cStat'
    end
    object cdsCTeEledescMotivo: TStringField
      FieldName = 'descMotivo'
      Size = 250
    end
    object cdsCTeEledescMsg: TStringField
      FieldName = 'descMsg'
      Size = 250
    end
    object cdsCTeElenrRecibo: TStringField
      FieldName = 'nrRecibo'
      Size = 50
    end
    object cdsCTeElenrProtocolo: TStringField
      FieldName = 'nrProtocolo'
      Size = 50
    end
    object cdsCTeEledtRecebimento: TSQLTimeStampField
      FieldName = 'dtRecebimento'
    end
    object cdsCTeEledescErro: TStringField
      FieldName = 'descErro'
      Size = 500
    end
    object cdsCTeElestCTe: TStringField
      FieldName = 'stCTe'
      Size = 15
    end
    object cdsCTeEleidEmpresa: TIntegerField
      FieldName = 'idEmpresa'
      Required = True
    end
    object cdsCTeEleidCadEmpresa: TSmallintField
      FieldName = 'idCadEmpresa'
      Required = True
    end
    object cdsCTeEleidDocSerie: TStringField
      FieldName = 'idDocSerie'
      Required = True
      Size = 5
    end
    object cdsCTeEledescXML: TStringField
      FieldName = 'descXML'
      Size = 150
    end
  end
  object dsCTeEle: TDataSource
    DataSet = cdsCTeEle
    Left = 896
    Top = 452
  end
  object dsCTeTributo: TDataSource
    DataSet = cdsCTeTributo
    Left = 896
    Top = 496
  end
  object cdsCTeTributo: TClientDataSet
    Aggregates = <>
    CommandText = 'SELECT * FROM CTeTributo'
    Params = <>
    ProviderName = 'dspCTeTributo'
    AfterOpen = cdsPadraoAfterOpen
    AfterInsert = cdsCTeCompAfterEdit
    AfterEdit = cdsCTeCompAfterEdit
    OnReconcileError = cdsPadraoReconcileError
    Left = 829
    Top = 496
  end
  object dspCTeTributo: TDataSetProvider
    DataSet = sdsCTeTributo
    Options = [poAllowMultiRecordUpdates, poPropogateChanges, poAllowCommandText, poUseQuoteChar]
    BeforeUpdateRecord = dspCTeCompBeforeUpdateRecord
    Left = 760
    Top = 496
  end
  object sdsCTeTributo: TSQLDataSet
    SchemaName = 'gesys'
    CommandText = 'SELECT * FROM CTeTributo'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmPadrao.dbConexao
    Left = 680
    Top = 496
  end
  object sdsCTeCarga: TSQLDataSet
    SchemaName = 'gesys'
    CommandText = 'SELECT * FROM CTeCarga'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmPadrao.dbConexao
    Left = 680
    Top = 544
  end
  object dspCTeCarga: TDataSetProvider
    DataSet = sdsCTeCarga
    Options = [poAllowMultiRecordUpdates, poPropogateChanges, poAllowCommandText, poUseQuoteChar]
    BeforeUpdateRecord = dspCTeCompBeforeUpdateRecord
    Left = 760
    Top = 544
  end
  object cdsCTeCarga: TClientDataSet
    Aggregates = <>
    CommandText = 'SELECT * FROM CTeCarga'
    Params = <>
    ProviderName = 'dspCTeCarga'
    AfterOpen = cdsPadraoAfterOpen
    AfterInsert = cdsCTeCompAfterEdit
    AfterEdit = cdsCTeCompAfterEdit
    OnReconcileError = cdsPadraoReconcileError
    Left = 829
    Top = 544
    object cdsCTeCargaidEmpresa: TIntegerField
      FieldName = 'idEmpresa'
      Required = True
    end
    object cdsCTeCargaidCadEmpresa: TSmallintField
      FieldName = 'idCadEmpresa'
      Required = True
    end
    object cdsCTeCargaidCte: TIntegerField
      FieldName = 'idCte'
      Required = True
    end
    object cdsCTeCargaidProdMedida: TSmallintField
      FieldName = 'idProdMedida'
      Required = True
    end
    object cdsCTeCargaqtCarga: TFMTBCDField
      FieldName = 'qtCarga'
      Required = True
      Precision = 15
      Size = 4
    end
    object cdsCTeCargadescTipoMedida: TStringField
      FieldName = 'descTipoMedida'
      Required = True
    end
    object cdsCTeCargadescProdMedida: TStringField
      FieldKind = fkLookup
      FieldName = 'descProdMedida'
      LookupDataSet = cdsProdMedida
      LookupKeyFields = 'idProdMedida'
      LookupResultField = 'descProdMedida'
      KeyFields = 'idProdMedida'
      Size = 40
      Lookup = True
    end
    object cdsCTeCargaidDocSerie: TStringField
      FieldName = 'idDocSerie'
      Required = True
      Size = 5
    end
  end
  object dsCTeCarga: TDataSource
    DataSet = cdsCTeCarga
    OnStateChange = dsCTeCargaStateChange
    Left = 896
    Top = 544
  end
  object cdsCadGeral: TClientDataSet
    Aggregates = <>
    CommandText = 'SELECT * FROM vCadClienteContabil'
    Params = <>
    ProviderName = 'dspLookup'
    Left = 1096
    Top = 56
  end
  object ACBrCTe1: TACBrCTe
    Configuracoes.Geral.SSLLib = libCapicomDelphiSoap
    Configuracoes.Geral.SSLCryptLib = cryCapicom
    Configuracoes.Geral.SSLHttpLib = httpIndy
    Configuracoes.Geral.SSLXmlSignLib = xsMsXmlCapicom
    Configuracoes.Geral.FormatoAlerta = 'TAG:%TAGNIVEL% ID:%ID%/%TAG%(%DESCRICAO%) - %MSG%.'
    Configuracoes.Geral.ValidarDigest = False
    Configuracoes.Arquivos.OrdenacaoPath = <>
    Configuracoes.Geral.FormatoAlerta = 'TAG:%TAGNIVEL% ID:%ID%/%TAG%(%DESCRICAO%) - %MSG%.'
    Configuracoes.Geral.ValidarDigest = False
    Configuracoes.WebServices.UF = 'SP'
    Configuracoes.WebServices.AguardarConsultaRet = 0
    Configuracoes.WebServices.QuebradeLinha = '|'
    DACTE = ACBrCTeDACTEFR1
    Left = 296
  end
  object ACBrCTeDACTEFR1: TACBrCTeDACTEFR
    ACBrCTE = ACBrCTe1
    Sistema = 'Nilus Solu'#231#245'es para o Agroneg'#243'cio'
    PathPDF = 'C:\Program Files\Embarcadero\RAD Studio\8.0\bin\'
    ImprimirHoraSaida = False
    MostrarPreview = True
    MostrarStatus = True
    TipoDACTE = tiSemGeracao
    TamanhoPapel = tpA4
    NumCopias = 1
    MargemInferior = 0.800000000000000000
    MargemSuperior = 0.800000000000000000
    MargemEsquerda = 0.600000000000000000
    MargemDireita = 0.510000000000000000
    CTeCancelada = False
    ExibirResumoCanhoto = False
    EPECEnviado = False
    PosCanhoto = prCabecalho
    ImprimirDescPorc = False
    EspessuraBorda = 1
    Left = 360
  end
  object cdsValidacao: TClientDataSet
    Aggregates = <>
    CommandText = 'EXEC spCTeValidacao 1, 1, '#39'SERIE'#39', 999999'
    Params = <>
    ProviderName = 'dspValidacao'
    AfterOpen = cdsPadraoAfterOpen
    OnReconcileError = cdsPadraoReconcileError
    Left = 1122
    Top = 543
    object cdsValidacaodescValidacao: TStringField
      FieldName = 'descValidacao'
      Size = 100
    end
  end
  object sdsValidacao: TSQLDataSet
    SchemaName = 'gesys'
    GetMetadata = False
    CommandText = 'EXEC spNFeValidacao 1, 1, '#39'SERIE'#39', 999999'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmPadrao.dbConexao
    Left = 976
    Top = 543
  end
  object dspValidacao: TDataSetProvider
    DataSet = sdsValidacao
    Options = [poAllowMultiRecordUpdates, poPropogateChanges, poAllowCommandText, poUseQuoteChar]
    Left = 1049
    Top = 543
  end
  object dsValidacao: TDataSource
    DataSet = cdsValidacao
    Left = 1192
    Top = 543
  end
  object tmpCorrecao: TTimer
    Enabled = False
    Interval = 800
    OnTimer = tmpCorrecaoTimer
    Left = 864
    Top = 104
  end
  object cdsCTeCorrecao: TClientDataSet
    Aggregates = <>
    CommandText = 'SELECT * FROM CTeCorrecao'
    Params = <>
    ProviderName = 'dspCTeCorrecao'
    AfterOpen = cdsPadraoAfterOpen
    AfterScroll = cdsCTeCorrecaoAfterScroll
    OnReconcileError = cdsPadraoReconcileError
    Left = 469
    Top = 576
    object cdsCTeCorrecaoidEmpresa: TIntegerField
      FieldName = 'idEmpresa'
      Required = True
    end
    object cdsCTeCorrecaoidCadEmpresa: TSmallintField
      FieldName = 'idCadEmpresa'
      Required = True
    end
    object cdsCTeCorrecaoidDocSerie: TStringField
      FieldName = 'idDocSerie'
      Required = True
      Size = 5
    end
    object cdsCTeCorrecaoidCte: TIntegerField
      FieldName = 'idCte'
      Required = True
    end
    object cdsCTeCorrecaodtCorrecao: TSQLTimeStampField
      FieldName = 'dtCorrecao'
      Required = True
    end
    object cdsCTeCorrecaostCorrecao: TStringField
      FieldName = 'stCorrecao'
      Required = True
      Size = 15
    end
    object cdsCTeCorrecaoidCorrecao: TSmallintField
      FieldName = 'idCorrecao'
      Required = True
    end
    object cdsCTeCorrecaodescErro: TStringField
      FieldName = 'descErro'
      Size = 1000
    end
  end
  object dsCTeCorrecao: TDataSource
    DataSet = cdsCTeCorrecao
    OnStateChange = dsCTeCargaStateChange
    Left = 552
    Top = 576
  end
  object dspCTeCorrecao: TDataSetProvider
    DataSet = sdsCTeCorrecao
    Options = [poAllowMultiRecordUpdates, poPropogateChanges, poAllowCommandText, poUseQuoteChar]
    BeforeUpdateRecord = dspCTeCompBeforeUpdateRecord
    Left = 384
    Top = 576
  end
  object sdsCTeCorrecao: TSQLDataSet
    SchemaName = 'gesys'
    CommandText = 'SELECT * FROM CTeCorrecao'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmPadrao.dbConexao
    Left = 296
    Top = 576
  end
  object cdsCTeCCampo: TClientDataSet
    Aggregates = <>
    CommandText = 'SELECT * FROM CTeCorrecaoCampo'
    Params = <>
    ProviderName = 'dspCTeCCampo'
    AfterOpen = cdsPadraoAfterOpen
    OnReconcileError = cdsPadraoReconcileError
    Left = 469
    Top = 624
    object cdsCTeCCampoidEmpresa: TIntegerField
      FieldName = 'idEmpresa'
      Required = True
    end
    object cdsCTeCCampoidCadEmpresa: TSmallintField
      FieldName = 'idCadEmpresa'
      Required = True
    end
    object cdsCTeCCampoidDocSerie: TStringField
      FieldName = 'idDocSerie'
      Required = True
      Size = 5
    end
    object cdsCTeCCampoidCte: TIntegerField
      FieldName = 'idCte'
      Required = True
    end
    object cdsCTeCCampoidCorrecao: TSmallintField
      FieldName = 'idCorrecao'
      Required = True
    end
    object cdsCTeCCamponrItem: TSmallintField
      FieldName = 'nrItem'
      Required = True
    end
    object cdsCTeCCamponameNilus: TStringField
      FieldName = 'nameNilus'
      Required = True
      Size = 30
    end
    object cdsCTeCCampovlNovo: TStringField
      FieldName = 'vlNovo'
      Required = True
      Size = 150
    end
  end
  object dsCTeCCampo: TDataSource
    DataSet = cdsCTeCCampo
    OnStateChange = dsCTeCargaStateChange
    Left = 552
    Top = 624
  end
  object dspCTeCCampo: TDataSetProvider
    DataSet = sdsCTeCCampo
    Options = [poAllowMultiRecordUpdates, poPropogateChanges, poAllowCommandText, poUseQuoteChar]
    BeforeUpdateRecord = dspCTeCompBeforeUpdateRecord
    Left = 384
    Top = 624
  end
  object sdsCTeCCampo: TSQLDataSet
    SchemaName = 'gesys'
    CommandText = 'SELECT * FROM CTeCorrecaoCampo'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmPadrao.dbConexao
    Left = 296
    Top = 624
  end
  object dspVCampo: TDataSetProvider
    DataSet = sdsVCampo
    Options = [poAllowMultiRecordUpdates, poPropogateChanges, poAllowCommandText, poUseQuoteChar]
    BeforeUpdateRecord = dspCTeCompBeforeUpdateRecord
    Left = 384
    Top = 672
  end
  object sdsVCampo: TSQLDataSet
    SchemaName = 'gesys'
    CommandText = 'SELECT * FROM vCorrecaoCampo'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmPadrao.dbConexao
    Left = 296
    Top = 672
  end
  object cdsVCampo: TClientDataSet
    Aggregates = <>
    CommandText = 'SELECT * FROM vCorrecaoCampo'
    Params = <>
    ProviderName = 'dspVCampo'
    AfterOpen = cdsPadraoAfterOpen
    OnReconcileError = cdsPadraoReconcileError
    Left = 469
    Top = 672
    object cdsVCampoidEmpresa: TIntegerField
      FieldName = 'idEmpresa'
      Required = True
    end
    object cdsVCampoidCadEmpresa: TSmallintField
      FieldName = 'idCadEmpresa'
      Required = True
    end
    object cdsVCampoidDocSerie: TStringField
      FieldName = 'idDocSerie'
      Required = True
      Size = 5
    end
    object cdsVCampoidCte: TIntegerField
      FieldName = 'idCte'
      Required = True
    end
    object cdsVCampoidCorrecao: TSmallintField
      FieldName = 'idCorrecao'
      Required = True
    end
    object cdsVCamponameNilus: TStringField
      FieldName = 'nameNilus'
      Required = True
      Size = 30
    end
    object cdsVCampogrupoCTe: TStringField
      FieldName = 'grupoCTe'
      Required = True
      Size = 30
    end
    object cdsVCampocampoCTe: TStringField
      FieldName = 'campoCTe'
      Required = True
      Size = 30
    end
    object cdsVCampovlNovo: TStringField
      FieldName = 'vlNovo'
      Required = True
      Size = 150
    end
    object cdsVCamponritem: TSmallintField
      FieldName = 'nritem'
      Required = True
    end
  end
  object dsVCampo: TDataSource
    DataSet = cdsVCampo
    OnStateChange = dsCTeCargaStateChange
    Left = 552
    Top = 672
  end
  object frxPDFExport1: TfrxPDFExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    EmbeddedFonts = True
    PrintOptimized = False
    Outline = False
    Background = False
    HTMLTags = True
    Quality = 95
    Author = 'FastReport'
    Subject = 'FastReport PDF export'
    Creator = 'Nilus (http://www.nilus.com.br)'
    ProtectionFlags = [ePrint, eModify, eCopy, eAnnot]
    HideToolbar = False
    HideMenubar = False
    HideWindowUI = False
    FitWindow = False
    CenterWindow = False
    PrintScaling = False
    Left = 992
    Top = 24
  end
end
