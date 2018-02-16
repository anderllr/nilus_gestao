inherited FrmNotaFiscal: TFrmNotaFiscal
  Left = 0
  Top = 0
  Caption = 'Nota Fiscal Emitida'
  ClientHeight = 610
  ClientWidth = 1360
  Icon.Data = {
    0000010001001010000001002000680400001600000028000000100000002000
    0000010020000000000000040000000000000000000000000000000000000000
    000000000000000000000A090912191919342A474A6C3B757D96162A2D490306
    0613080808211010107801010106000000000000000000000000000000000000
    000000000000010101023D3C3B4CACA9A8C8AEBDBFE6A3E4EBF875A4A9D73E51
    548A1516165B3C3C3CEB21212169020202090000000100000000000000000000
    0000000000000403030668666577F1EFEEF6FDF4F1FFFFE5E0FFFDF9F4FEE2E4
    E4F5979696DD4A4847F26A6969EA3534346B201F1F3B0F0E0E1F020202060000
    0000000000000B0A0A0F8C89889CF8F5F5FCEEEAEBFFF1F2F3FFEAE7E8FFEEE3
    E3FFF6F6F6FF9E9D9BFF454945FEA3A0A0EEBAB6B6D9868383A01A1919210000
    00000000000018181823A8A5A4C1D3CFCEFEBDBBBAFFE2DEDCFFF2F0EFFFECE9
    E9FFE2DFDDFFEAEAEAFF696A66FF1E201DFFF5F3F3FEAAA6A6B71817171A0000
    00000102020439444556CECFD0E6D7CFCEFFF1EDEEFFEBE7E5FFF8F2F3FFEFEC
    EAFFEDE7E8FFF6F2F0FFD6D2D2FF0F100EFF9A9796F875727284070707080000
    00010E191A1E71979CADEFEFEFFCC2BCBBFFD7D4D3FFECE8E8FFF3EDEDFFF9F5
    F6FFFBF7F6FFF1EDEDFFECE7E8FFBBBBBAFF474746EE3837365B01010103070B
    0B0D345E6367A7E0E6EBECC6C1FFAAADAEFFA4A2A1FFBCB9B9FFB9B7B5FFB2AF
    AEFFC6C3C2FFFFFFFFFFF6F1F1FFC2C0C0FF717270F61D1D1D720404040A2D50
    545161B9C4C1CCF9FAFDE0C2BEFFBBBDBCFFCBC7C6FFC2BFBDFFBCB9B8FFC6C3
    C2FFBEBBB7FFAEABAAFFC5C2C1FF929191FEBCBCBCFD343433D00D0D0D2F487F
    87756FC9D4C9E7EFEEFBC1AEACFFB4B4B5FFC2BFBDFFB9B5B6FFC7C4C2FFBFBB
    BCFFC2BFC0FFC4C1C0FFABA8A9FFBCB8B6F6807F7FCF7F7F7EFC0C0C0BB00D15
    1611495A5D59D5D8D8E8D2CECEFFD1CECEFFB3B1B2FFBBBABAFFA5A4A4FFBCBB
    BBFFB6B5B5FFB9B5B6FFC3C0C0FFDBD8D8D970706F8D7F7F7FD8494848F60303
    030354535353E0DDDCECB8B7B6FFF2EFEEFFFFFFFFFFFAF6F5FFE2DFDEFFDEDA
    D9FFCFCBCAFFB2B1AFFFCBCAC8FD9D9B9AA828272722333333434242427F0B0B
    0B0975747370F4F3F2F1F9F8F7FDFBF7F6FFEEEBEAFFE9E5E4FFF3EFEEFFF5F2
    F0FFFCF9F7FFF6F3F1FFECE9E8F5706E6E7206060605030303030B0B0B0A0808
    0805434242388B898880ADAAA9A6CAC7C7C6E2DFDFDFF1EFEFEFF8F7F7F9FBFA
    FAFDFCFAFAFFEEEDEEFFDEDBDBE04442423F0101010100000000000000000000
    0000030303020909090715141410282727214443433B6664645B8A888880ADAA
    AAA5CAC7C7C5E7E4E4DEB4B2B1AE1F1F1E1A0000000000000000000000000000
    00000000000000000000000000000000000000000000060606031211110D2928
    2820504E4E40858282717A7878630E0E0E0A000000000000000000000000E00F
    0000C0030000C0000000C0000000C00000008000000000000000000000000000
    0000000000000000000000000000000000000003000080070000FC070000}
  ExplicitWidth = 1376
  ExplicitHeight = 649
  PixelsPerInch = 96
  TextHeight = 13
  inherited Bevel1: TBevel
    Top = 575
    Width = 1360
    ExplicitTop = 417
    ExplicitWidth = 691
  end
  inherited Bevel2: TBevel
    Top = 27
    Width = 1360
    ExplicitTop = 27
    ExplicitWidth = 945
  end
  inherited PagAbas: TCPageControl
    Top = 31
    Width = 1360
    Height = 544
    OnChange = PagAbasChange
    ExplicitTop = 31
    ExplicitWidth = 1360
    ExplicitHeight = 544
    inherited TabAbas: TTabSheet
      Caption = 'Dados da Nota'
      ExplicitLeft = 4
      ExplicitTop = 25
      ExplicitWidth = 1352
      ExplicitHeight = 515
      object CLabel91: TCLabel
        Left = 27
        Top = 412
        Width = 72
        Height = 13
        Alignment = taRightJustify
        Caption = 'Chave da NF-e'
      end
      object CGroupBox2: TCGroupBox
        Left = 11
        Top = 277
        Width = 634
        Height = 59
        Caption = 'Observa'#231#245'es da nota'
        TabOrder = 3
        object DBMobsNf: TCDBMemo
          Left = 8
          Top = 17
          Width = 618
          Height = 35
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'obsNf'
          DataSource = dsPadrao
          ScrollBars = ssVertical
          TabOrder = 0
          KeyMemo = kmmNormal
        end
      end
      object CGroupBox3: TCGroupBox
        Left = 11
        Top = 342
        Width = 634
        Height = 61
        Caption = 'Informa'#231#245'es Complementares'
        TabOrder = 4
        object DBMcompNf: TCDBMemo
          Left = 8
          Top = 15
          Width = 618
          Height = 36
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'compNf'
          DataSource = dsPadrao
          ScrollBars = ssVertical
          TabOrder = 0
          OnExit = DBMcompNfExit
          KeyMemo = kmmNormal
        end
      end
      object grpNotaSaida: TCGroupBox
        Left = 11
        Top = 3
        Width = 634
        Height = 199
        Caption = 'Dados da Nota'
        TabOrder = 0
        object CLabel4: TCLabel
          Left = 26
          Top = 66
          Width = 24
          Height = 13
          Alignment = taRightJustify
          Caption = 'S'#233'rie'
        end
        object CLabel5: TCLabel
          Left = 340
          Top = 66
          Width = 37
          Height = 13
          Alignment = taRightJustify
          Caption = 'N'#250'mero'
        end
        object CLabel14: TCLabel
          Left = 476
          Top = 66
          Width = 31
          Height = 13
          Alignment = taRightJustify
          Caption = 'Status'
        end
        object LblCad: TCLabel
          Left = 17
          Top = 20
          Width = 33
          Height = 13
          Alignment = taRightJustify
          Caption = 'Cliente'
        end
        object CLabel59: TCLabel
          Left = 461
          Top = 20
          Width = 46
          Height = 13
          Alignment = taRightJustify
          Caption = 'Insc. Est.'
        end
        object CLabel7: TCLabel
          Left = 12
          Top = 88
          Width = 38
          Height = 13
          Alignment = taRightJustify
          Caption = 'Emiss'#227'o'
        end
        object CLabel9: TCLabel
          Left = 142
          Top = 88
          Width = 26
          Height = 13
          Alignment = taRightJustify
          Caption = 'Sa'#237'da'
        end
        object CLabel8: TCLabel
          Left = 260
          Top = 88
          Width = 44
          Height = 13
          Alignment = taRightJustify
          Caption = 'Natureza'
        end
        object CLabel6: TCLabel
          Left = 27
          Top = 110
          Width = 23
          Height = 13
          Alignment = taRightJustify
          Caption = 'Cfop'
        end
        object CLabel10: TCLabel
          Left = 188
          Top = 132
          Width = 42
          Height = 13
          Alignment = taRightJustify
          Caption = 'Dep'#243'sito'
        end
        object CLabel63: TCLabel
          Left = 18
          Top = 154
          Width = 32
          Height = 13
          Alignment = taRightJustify
          Caption = 'Pre'#231'os'
        end
        object CLabel72: TCLabel
          Left = 24
          Top = 176
          Width = 26
          Height = 13
          Alignment = taRightJustify
          Caption = 'Safra'
        end
        object DBEidDocSerie: TCDBEdit
          Left = 56
          Top = 63
          Width = 46
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'idDocSerie'
          DataSource = dsPadrao
          TabOrder = 4
          OnEnter = DBEidDocSerieEnter
          OnExit = DBEidDocSerieExit
          Find = FindSerie
          AcaoCad = frmPrincipal.actCadDocSerie
          DecimalControl = True
          KeyMode = kmUSUpper
        end
        object LookDocSerie: TCLookUp
          Left = 108
          Top = 63
          Width = 226
          Height = 19
          Alignment = taLeftJustify
          BevelInner = bvSpace
          BevelOuter = bvLowered
          Color = 14149350
          ParentBackground = False
          TabOrder = 5
          Key.Strings = (
            'idDocSerie')
          LookUpKey.Strings = (
            'idDocSerie')
          AlternateSQL.Strings = (
            
              'SELECT descDocSerie FROM DocSerie WHERE idTipoDocSerie = 3 AND i' +
              'dDocSerie = ?')
          ClientDataSet = cdsLookup
          DataSource = dsPadrao
          ValidaCampoObrigatorio = True
          CampoObrigatorio = True
          LookUpTable = 'DocSerie'
          ReturnField = 'descDocSerie'
          object lookSerieFiscal: TCLookUp
            Left = 192
            Top = 0
            Width = 34
            Height = 19
            Alignment = taLeftJustify
            BevelInner = bvSpace
            BevelOuter = bvLowered
            Color = 14149350
            ParentBackground = False
            TabOrder = 0
            Visible = False
            Key.Strings = (
              'idDocSerie')
            LookUpKey.Strings = (
              'idDocSerie')
            AlternateSQL.Strings = (
              
                'SELECT serieFiscal FROM DocSerie WHERE idTipoDocSerie = 3 AND id' +
                'DocSerie = ?')
            ClientDataSet = cdsLookup
            DataSource = dsPadrao
            ValidaCampoObrigatorio = True
            CampoObrigatorio = True
            LookUpTable = 'DocSerie'
            ReturnField = 'serieFiscal'
          end
        end
        object DBEidNf: TCDBEdit
          Left = 383
          Top = 63
          Width = 87
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'idNf'
          DataSource = dsPadrao
          MaxLength = 10
          TabOrder = 6
          OnExit = DBEidNfExit
          DecimalControl = True
          KeyMode = kmInteger
        end
        object DBEstNf: TCDBEdit
          Left = 513
          Top = 63
          Width = 113
          Height = 19
          TabStop = False
          BevelKind = bkTile
          BorderStyle = bsNone
          Color = 14149350
          DataField = 'stNf'
          DataSource = dsPadrao
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 7
          DecimalControl = True
          KeyMode = kmUSUpper
        end
        object DBEidCliente: TCDBEdit
          Left = 56
          Top = 17
          Width = 97
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'idCliente'
          DataSource = dsPadrao
          TabOrder = 0
          OnExit = DBEidClienteExit
          OnKeyDown = DBEidClienteKeyDown
          AcaoCad = frmPrincipal.actCadCliente
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEidCadCliente: TCDBEdit
          Left = 159
          Top = 17
          Width = 35
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'idCadCliente'
          DataSource = dsPadrao
          TabOrder = 1
          OnExit = DBEidClienteExit
          OnKeyDown = DBEidClienteKeyDown
          DecimalControl = True
          KeyMode = kmNormal
        end
        object LookClienteFiscal: TCLookUp
          Left = 200
          Top = 17
          Width = 254
          Height = 19
          Alignment = taLeftJustify
          BevelInner = bvSpace
          BevelOuter = bvLowered
          Color = 14149350
          ParentBackground = False
          TabOrder = 2
          Key.Strings = (
            'idCliente'
            'idCadCliente')
          LookUpKey.Strings = (
            'idCliente'
            'idCadCliente')
          ClientDataSet = cdsLookup
          DataSource = dsPadrao
          ValidaCampoObrigatorio = True
          CampoObrigatorio = True
          LookUpTable = 'vCadClienteFiscal'
          ReturnField = 'descCadCliente'
        end
        object lookIeCliente: TCLookUp
          Left = 513
          Top = 17
          Width = 113
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
          ClientDataSet = cdsLookup
          DataSource = dsPadrao
          ValidaCampoObrigatorio = True
          CampoObrigatorio = True
          LookUpTable = 'vCadClienteFiscal'
          ReturnField = 'idInscEstadual'
        end
        object DBEdtEmissao: TCDBEdit
          Left = 56
          Top = 85
          Width = 80
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'dtEmissao'
          DataSource = dsPadrao
          MaxLength = 10
          TabOrder = 8
          DecimalControl = True
          KeyMode = kmDate
        end
        object DBEdtSaida: TCDBEdit
          Left = 174
          Top = 85
          Width = 80
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'dtSaida'
          DataSource = dsPadrao
          MaxLength = 10
          TabOrder = 9
          DecimalControl = True
          KeyMode = kmDate
        end
        object DBEidNatureza: TCDBEdit
          Left = 310
          Top = 85
          Width = 46
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'idNatureza'
          DataSource = dsPadrao
          TabOrder = 10
          OnEnter = DBEidRateioEnter
          OnExit = DBEidNaturezaExit
          Find = FindNatureza
          DecimalControl = True
          KeyMode = kmNormal
        end
        object LookNatureza: TCLookUp
          Left = 362
          Top = 85
          Width = 264
          Height = 19
          Alignment = taLeftJustify
          BevelInner = bvSpace
          BevelOuter = bvLowered
          Color = 14149350
          ParentBackground = False
          TabOrder = 11
          Key.Strings = (
            'idNatureza')
          LookUpKey.Strings = (
            'idNatureza')
          AlternateSQL.Strings = (
            
              'SELECT descNatureza FROM vNatureza WHERE tpNatureza = '#39'SAIDA'#39' AN' +
              'D frete = '#39'N'#39' AND idNatureza = ?')
          ClientDataSet = cdsLookup
          DataSource = dsPadrao
          ValidaCampoObrigatorio = True
          CampoObrigatorio = True
          LookUpTable = 'vNatureza'
          ReturnField = 'descNatureza'
        end
        object LookIdCfop: TCLookUp
          Left = 56
          Top = 107
          Width = 64
          Height = 19
          Alignment = taLeftJustify
          BevelInner = bvSpace
          BevelOuter = bvLowered
          Color = 14149350
          ParentBackground = False
          TabOrder = 12
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
        object LookDescCfop: TCLookUp
          Left = 126
          Top = 107
          Width = 500
          Height = 19
          Alignment = taLeftJustify
          BevelInner = bvSpace
          BevelOuter = bvLowered
          Color = 14149350
          ParentBackground = False
          TabOrder = 13
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
        object DBCKmovEstoque: TCDBCheckBox
          Left = 56
          Top = 131
          Width = 121
          Height = 17
          Caption = 'Movimenta Estoque?'
          DataField = 'movEstoque'
          DataSource = dsPadrao
          TabOrder = 14
          ValueChecked = 'S'
          ValueUnchecked = 'N'
          OnExit = DBCKmovEstoqueExit
        end
        object DBEidProdDeposito: TCDBEdit
          Left = 236
          Top = 129
          Width = 46
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'idProdDeposito'
          DataSource = dsPadrao
          TabOrder = 15
          Find = FindProdDeposito
          DecimalControl = True
          KeyMode = kmNormal
        end
        object LookProdDeposito: TCLookUp
          Left = 288
          Top = 129
          Width = 238
          Height = 19
          Alignment = taLeftJustify
          BevelInner = bvSpace
          BevelOuter = bvLowered
          Color = 14149350
          ParentBackground = False
          TabOrder = 16
          Key.Strings = (
            'idProdDeposito')
          LookUpKey.Strings = (
            'idProdDeposito')
          ClientDataSet = cdsLookup
          DataSource = dsPadrao
          ValidaCampoObrigatorio = True
          CampoObrigatorio = True
          LookUpTable = 'ProdDeposito'
          ReturnField = 'descProdDeposito'
        end
        object DBEidTab: TCDBEdit
          Left = 56
          Top = 151
          Width = 46
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'idTab'
          DataSource = dsPadrao
          TabOrder = 17
          Find = FindTab
          AcaoCad = frmPrincipal.actCadTab
          DecimalControl = True
          KeyMode = kmNormal
        end
        object LookTab: TCLookUp
          Left = 108
          Top = 151
          Width = 316
          Height = 19
          Alignment = taLeftJustify
          BevelInner = bvSpace
          BevelOuter = bvLowered
          Color = 14149350
          ParentBackground = False
          TabOrder = 18
          Key.Strings = (
            'idTab')
          LookUpKey.Strings = (
            'idTab')
          ClientDataSet = cdsLookup
          DataSource = dsPadrao
          ValidaCampoObrigatorio = True
          CampoObrigatorio = True
          LookUpTable = 'Tab'
          ReturnField = 'descTab'
        end
        object DBEidSafra: TCDBEdit
          Left = 56
          Top = 173
          Width = 46
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'idSafra'
          DataSource = dsPadrao
          TabOrder = 19
          Find = FindSafra
          AcaoCad = frmPrincipal.actCadSafra
          DecimalControl = True
          KeyMode = kmNormal
        end
        object LookSafra: TCLookUp
          Left = 108
          Top = 173
          Width = 316
          Height = 19
          Alignment = taLeftJustify
          BevelInner = bvSpace
          BevelOuter = bvLowered
          Color = 14149350
          ParentBackground = False
          TabOrder = 20
          Key.Strings = (
            'idEmpresa'
            'idSafra')
          LookUpKey.Strings = (
            'idEmpresa'
            'idSafra')
          ClientDataSet = cdsLookup
          DataSource = dsPadrao
          ValidaCampoObrigatorio = True
          CampoObrigatorio = True
          LookUpTable = 'Safra'
          ReturnField = 'descSafra'
        end
        object CBitBtn7: TCBitBtn
          Left = 430
          Top = 173
          Width = 96
          Height = 19
          Action = frmPrincipal.actCadSafra
          Caption = '&Safra'
          TabOrder = 21
          TabStop = False
        end
        object CBitBtn1: TCBitBtn
          Left = 430
          Top = 151
          Width = 96
          Height = 19
          Action = frmPrincipal.actCadTab
          Caption = 'Pre'#231'os'
          Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            2000000000000004000000000000000000000000000000000000EBEBEBFFB9B9
            B9FF9B9B9BFFA4A4A4FFB9B9B9FFCACACAFFD0D0D0FFD9D9D9FFEDEDEDFFFBFB
            FBFFFEFEFEFFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00C9A286FF9B55
            29FF734630FF694F43FF656565FF6D6D6DFF707070FF828282FFAAAAAAFFC7C7
            C7FFCECECEFFD7D7D7FFE9E9E9FFF8F8F8FFFEFEFEFFFF00FF00B65A11FFAD48
            03FFA74B10FFC1772FFFC1772FFFC1772FFFC1772FFF5D4337FF605A57FF6B6B
            6BFF6F6F6FFF7F7F7FFFA3A3A3FFCDCDCDFFF1F1F1FFFF00FF00B65A11FFB65A
            11FFBFD6CCFFBEF2FBFFB7F0FBFFB7F0FBFFB7EEFBFFC1772FFFC1772FFFC177
            2FFFC1772FFF67412CFF61544EFF8C8C8CFFDADADAFFFF00FF00B65A11FFC7D0
            BDFFC5F3FCFFC5F3FCFFCC793AFFCC793AFFCC793AFFB7EEFBFFB7EEFBFFB7EE
            FBFFF0CEA6FFB54F00FFB54F00FF707070FFD0D0D0FFFF00FF00D88026FFCBD1
            BCFFCAF5FBFFCAF5FBFFF7A32FFFFFE3C7FFFFE5CCFFCC793AFFCC793AFFCC79
            3AFFD0F6FCFFF0CEA6FFCC6600FF707070FFD0D0D0FFFF00FF00D88026FFCFD2
            BDFFD0F6FCFFD0F6FCFFF7A32FFFFFE5CCFFFFE5CCFFFFE5CCFFFFE5CCFFCC79
            3AFFD0F6FCFFD0F6FCFFCC6600FF707070FFD0D0D0FFFF00FF00D88026FFD4ED
            ECFFD4F6FCFFD4F6FCFFF7A32FFFFFF3E7FF000D13FF000D13FFD98736FFD987
            36FFD98736FFD4F6FCFFCC6600FF646464FFB8B8B8FFF4F4F4FFD88026FFDCF8
            FDFFDCF8FDFFDCF8FDFFF7A32FFFFFF3E7FFFFF2E5FF608492FFFFE4C9FFF5C3
            90FFD98736FFD98736FFCC6600FF4C4C4CFF7C7C7CFFC4C4C4FFD88026FFE1F9
            FDFFE1F9FDFFE1F9FDFFF7A32FFFFFFCF9FFFFF2E5FFFFF3E7FFD98736FFFFE4
            C9FFFFE5CCFFFCD1A6FFD98736FF1030B9FF585858FFA0A0A0FFD88026FFE5E2
            D0FFE8FAFEFFE8FAFEFFF7A32FFFFFFFFFFFFFFAF5FFFFF2E5FFFFEDDCFFD987
            36FFD98736FFFFE5CCFF1E5BD5FF2D86F2FF1030B9FFC4C4C4FFD88026FFD880
            26FFECFBFEFFECFBFEFFF7A32FFFFBB240FFFBB240FFFFFAF5FFFFF2E5FFCC79
            3AFFECFBFEFFD98736FFD98736FF1D2396FFB8B8B8FFF4F4F4FFD88026FFFFED
            BAFFD88026FFF4FCFEFFF4FCFEFFF4FCFEFFF0D8BFFFFBB240FFFBB240FFCC79
            3AFFF4FCFEFFF4FCFEFFD98736FF707070FFD0D0D0FFFF00FF00D88026FFEFA6
            45FFEFA645FFD88026FFF0CEA6FFF0D8BFFFFCFEFFFFFCFEFFFFFCFEFFFFFCFE
            FFFFFCFEFFFFEFA645FFD98736FF707070FFD0D0D0FFFF00FF00FF00FF00E3C9
            BDFFEADBCCFFDDC0A7FFEFA645FFEFA645FFEFA645FFEFA645FFF2D29FFFF2D1
            A3FFEFA645FFFCBD75FFD98736FF949494FFDCDCDCFFFF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00EFA645FFEFA6
            45FFEFA645FFEFA645FFEFA645FFDCDCDCFFF4F4F4FFFF00FF00}
          TabOrder = 22
          TabStop = False
        end
        object CLookUp5: TCLookUp
          Left = 56
          Top = 39
          Width = 281
          Height = 19
          Alignment = taLeftJustify
          BevelInner = bvSpace
          BevelOuter = bvLowered
          Color = 14149350
          ParentBackground = False
          TabOrder = 23
          Key.Strings = (
            'idCliente'
            'idCadCliente')
          LookUpKey.Strings = (
            'idCliente'
            'idCadCliente')
          ClientDataSet = cdsLookup
          DataSource = dsPadrao
          ValidaCampoObrigatorio = True
          CampoObrigatorio = True
          LookUpTable = 'vCadClienteFiscal'
          ReturnField = 'endereco'
        end
        object CLookUp6: TCLookUp
          Left = 343
          Top = 39
          Width = 173
          Height = 19
          Alignment = taLeftJustify
          BevelInner = bvSpace
          BevelOuter = bvLowered
          Color = 14149350
          ParentBackground = False
          TabOrder = 24
          Key.Strings = (
            'idCliente'
            'idCadCliente')
          LookUpKey.Strings = (
            'idCliente'
            'idCadCliente')
          ClientDataSet = cdsLookup
          DataSource = dsPadrao
          ValidaCampoObrigatorio = True
          CampoObrigatorio = True
          LookUpTable = 'vCadClienteFiscal'
          ReturnField = 'descCidade'
        end
        object lookEstadoCli: TCLookUp
          Left = 522
          Top = 39
          Width = 40
          Height = 19
          Alignment = taLeftJustify
          BevelInner = bvSpace
          BevelOuter = bvLowered
          Color = 14149350
          ParentBackground = False
          TabOrder = 25
          Key.Strings = (
            'idCliente'
            'idCadCliente')
          LookUpKey.Strings = (
            'idCliente'
            'idCadCliente')
          ClientDataSet = cdsLookup
          DataSource = dsPadrao
          ValidaCampoObrigatorio = True
          CampoObrigatorio = True
          LookUpTable = 'vCadClienteFiscal'
          ReturnField = 'idEstado'
        end
        object LookTpNatureza: TCLookUp
          Left = 532
          Top = 132
          Width = 99
          Height = 19
          Alignment = taLeftJustify
          BevelInner = bvSpace
          BevelOuter = bvLowered
          Color = 14149350
          ParentBackground = False
          TabOrder = 26
          Visible = False
          Key.Strings = (
            'idNatureza')
          LookUpKey.Strings = (
            'idNatureza')
          AlternateSQL.Strings = (
            'SELECT tpNatureza FROM vNatureza WHERE idNatureza = ?')
          ClientDataSet = cdsLookup
          DataSource = dsPadrao
          ValidaCampoObrigatorio = True
          CampoObrigatorio = True
          LookUpTable = 'vNatureza'
          ReturnField = 'tpNatureza'
        end
      end
      object DBEchaveNFe: TCDBEdit
        Left = 105
        Top = 409
        Width = 532
        Height = 19
        TabStop = False
        BevelKind = bkTile
        BorderStyle = bsNone
        Color = 14149350
        DataField = 'chaveNFe'
        DataSource = dsPadrao
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 5
        DecimalControl = True
        KeyMode = kmNormal
      end
      object DBRGtpEmissao: TCDBRadioGroup
        Left = 11
        Top = 431
        Width = 634
        Height = 43
        BiDiMode = bdLeftToRight
        Caption = 'Forma de Emiss'#227'o'
        Columns = 5
        DataField = 'tpEmissao'
        DataSource = dsPadrao
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Items.Strings = (
          'Normal'
          'Conting'#234'ncia (FS)'
          'SCAN'
          'DPEC'
          'FSDA')
        ParentBiDiMode = False
        ParentFont = False
        TabOrder = 6
        Values.Strings = (
          'Normal'
          'Conting'#234'ncia'
          'SCAN'
          'DPEC'
          'FSDA')
      end
      object BtnEmail: TCBitBtn
        Left = 368
        Top = 480
        Width = 129
        Height = 25
        Caption = 'Enviar Email'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        Glyph.Data = {
          DE000000424DDE000000000000007600000028000000100000000D0000000100
          0400000000006800000000000000000000001000000000000000000000000000
          8000008000000080800080000000800080008080000080808000C0C0C0000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00877777777777
          77787BBBBBBBBBBBBBB77BBBBBBBBBBBBBB77BBBBBBBBBBBBBB77BBBBBBBBBBB
          BBB77BBBBBB33BBBBBB77BBBBB3BB3BBBBB77BBBB3BBBB3BBBB77BBB3BBBBBB3
          BBB77BB3BBBBBBBB3BB77B3BBBBBBBBBB3B733BBBBBBBBBBBB33888888888888
          8888}
        ParentFont = False
        TabOrder = 7
        OnClick = BtnEmailClick
      end
      object BtnCartaCorrecao: TCBitBtn
        Left = 503
        Top = 480
        Width = 141
        Height = 25
        Caption = 'Carta de Corre'#231#227'o'
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
        TabOrder = 8
        OnClick = BtnCartaCorrecaoClick
      end
      object BtnEnviar: TCBitBtn
        Left = 208
        Top = 480
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
        TabOrder = 9
        OnClick = BtnEnviarClick
      end
      object CGroupBox13: TCGroupBox
        Left = 11
        Top = 208
        Width = 473
        Height = 63
        Caption = 'Nota Fiscal do Produtor'
        TabOrder = 1
        object CLabel93: TCLabel
          Left = 17
          Top = 17
          Width = 55
          Height = 13
          Alignment = taRightJustify
          Caption = 'N'#250'mero Nf.'
        end
        object CLabel94: TCLabel
          Left = 181
          Top = 17
          Width = 42
          Height = 13
          Alignment = taRightJustify
          Caption = 'S'#233'rie Nf.'
        end
        object CLabel95: TCLabel
          Left = 306
          Top = 17
          Width = 79
          Height = 13
          Alignment = taRightJustify
          Caption = 'Data de Emiss'#227'o'
        end
        object CLabel110: TCLabel
          Left = 17
          Top = 39
          Width = 78
          Height = 13
          Alignment = taRightJustify
          Caption = 'Chave da NFP-e'
        end
        object DBEidNfProdutor: TCDBEdit
          Left = 78
          Top = 14
          Width = 91
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'idNfProdutor'
          DataSource = dsPadrao
          MaxLength = 10
          TabOrder = 0
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEnrSerieProdutor: TCDBEdit
          Left = 229
          Top = 14
          Width = 53
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'nrSerieProdutor'
          DataSource = dsPadrao
          MaxLength = 10
          TabOrder = 1
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEdtEmissaoProdutor: TCDBEdit
          Left = 391
          Top = 14
          Width = 75
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'dtEmissaoProdutor'
          DataSource = dsPadrao
          MaxLength = 10
          TabOrder = 2
          DecimalControl = True
          KeyMode = kmDate
        end
        object CDBChaveNFPe: TCDBEdit
          Left = 101
          Top = 36
          Width = 365
          Height = 19
          TabStop = False
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'ChaveNFPe'
          DataSource = dsPadrao
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
          DecimalControl = True
          KeyMode = kmNormal
        end
      end
      object CGroupBox15: TCGroupBox
        Left = 490
        Top = 208
        Width = 155
        Height = 63
        Caption = 'Selo Fiscal'
        TabOrder = 2
        object CLabel96: TCLabel
          Left = 7
          Top = 17
          Width = 37
          Height = 13
          Alignment = taRightJustify
          Caption = 'N'#250'mero'
        end
        object DBEseloFiscal: TCDBEdit
          Left = 50
          Top = 14
          Width = 91
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'seloFiscal'
          DataSource = dsPadrao
          MaxLength = 10
          TabOrder = 0
          DecimalControl = True
          KeyMode = kmNormal
        end
      end
      object BtnNfComplemento: TCBitBtn
        Left = 19
        Top = 480
        Width = 154
        Height = 25
        Caption = 'Nota Complementar'
        Glyph.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
          92635DA46769A46769A46769A46769A46769A46769A46769A46769A46769A467
          69A46769FF00FFFF00FFFF00FFFF00FF92635DFCF3DEFFEED5FFEED5FFEED5FF
          EED5FEEBD1FEEBD1FEEBD1FEEBD1F7EDD0A46769FF00FFFF00FFFF00FFFF00FF
          92635DF7EAD8FEBD82FEBD82FEBD82FEBD82FEBD82FEBD82FEBD82FEBD82F2E2
          C7A46769FF00FFFF00FFFF00FFFF00FF92635DF8EFDEFAE9D5FAE7D4FAE7D3F8
          E6D1F8E6D0F8E6D0F8E6D0F8E6D0F0E2C9A46769FF00FFFF00FFFF00FFFF00FF
          92635DEAE2D4FEBD82FEBD82FEBD82FEBD82FEBD82FEBD82FEBD82FEBD82E1D3
          BAA46769FF00FFFF00FFFF00FFFF00FF987468AA9F95A69A92A59991A5998EA4
          978BA39689A19587A19384A19183A49381986B65FF00FFFF00FF8C38168C3816
          8C38168C38168C38168C38168C38168C38168C38168C38168C38168C38168C38
          168C38168C38168C38168C3816FF00FFA77568E0E9EAE17545E17545E17545E1
          7545E17545E17545E17545E17545D7D8CAA46769FF00FF8B35128C38158C3816
          8C38168C38168C38168C38168C38168C38168C38168C38168C38168C38168C38
          168C38168C38168C3816FF00FFFF00FFB17E6BD7B09CD1AF9ED1AF9ECEAA97CC
          A995CCA793CBA591CAA590CAA38BD4A78CA46769FF00FFFF00FFFF00FFFF00FF
          BB846EFFFFFFFFE3C1FFE2C0FFE2BFFFE2BFFFE2BFFFE2BFFFE2BFFFE2BFFFFC
          EFA46769FF00FFFF00FFFF00FFFF00FFC58C70FFFFFFFEBD82FEBD82FEBD82FE
          BD82FEBD82FEBD82FEBD82FEBD82FBF6E9A46769FF00FFFF00FFFF00FFFF00FF
          CB9173FFFFFFFEFFFFFEFFFFFEFEFEFEFBFAFBFAF7FBF8F6FAF7F3F8F4F0FCFA
          F0A46769FF00FFFF00FFFF00FFFF00FFD49876FFFFFFFEBD82FEBD82FEBD82FE
          BD82FEBD82FEBD82FEBD82FEBD82FFFCF4A46769FF00FFFF00FFFF00FFFF00FF
          D49876FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFEFAFFFF
          FFA46769FF00FFFF00FFFF00FFFF00FFD49876CF8E68CF8E68CF8E68CF8E68CF
          8E68CF8E68CF8E68CF8E68CF8E68CF8E68A46769FF00FFFF00FF}
        TabOrder = 10
        TabStop = False
        Visible = False
        OnClick = BtnNfComplementoClick
      end
      object panNfComp: TPanel
        Left = 3
        Top = 557
        Width = 498
        Height = 97
        Color = clGray
        ParentBackground = False
        TabOrder = 11
        Visible = False
        object CLabel97: TCLabel
          Left = 28
          Top = 17
          Width = 24
          Height = 13
          Alignment = taRightJustify
          Caption = 'S'#233'rie'
        end
        object CLabel99: TCLabel
          Left = 342
          Top = 17
          Width = 37
          Height = 13
          Alignment = taRightJustify
          Caption = 'N'#250'mero'
        end
        object CLabel100: TCLabel
          Left = 21
          Top = 42
          Width = 31
          Height = 13
          Alignment = taRightJustify
          Caption = 'Chave'
        end
        object LookDocSerieOri: TCLookUp
          Left = 110
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
            'idDocSerieOri')
          LookUpKey.Strings = (
            'idDocSerie')
          AlternateSQL.Strings = (
            
              'SELECT descDocSerie FROM DocSerie WHERE idTipoDocSerie = 3 AND i' +
              'dDocSerie = ?')
          ClientDataSet = cdsLookup
          DataSource = dsNfComp
          ValidaCampoObrigatorio = True
          CampoObrigatorio = True
          LookUpTable = 'DocSerie'
          ReturnField = 'descDocSerie'
          object lookSerieFiscalOri: TCLookUp
            Left = 192
            Top = 0
            Width = 34
            Height = 19
            Alignment = taLeftJustify
            BevelInner = bvSpace
            BevelOuter = bvLowered
            Color = 14149350
            ParentBackground = False
            TabOrder = 0
            Visible = False
            Key.Strings = (
              'idDocSerieOri')
            LookUpKey.Strings = (
              'idDocSerie')
            AlternateSQL.Strings = (
              
                'SELECT serieFiscal FROM DocSerie WHERE idTipoDocSerie = 3 AND id' +
                'DocSerie = ?')
            ClientDataSet = cdsLookup
            DataSource = dsNfComp
            ValidaCampoObrigatorio = True
            CampoObrigatorio = True
            LookUpTable = 'DocSerie'
            ReturnField = 'serieFiscal'
          end
        end
        object DBEidDocSerieOri: TCDBEdit
          Left = 58
          Top = 14
          Width = 46
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'idDocSerieOri'
          DataSource = dsNfComp
          TabOrder = 0
          Find = FindSerie
          AcaoCad = frmPrincipal.actCadDocSerie
          DecimalControl = True
          KeyMode = kmUSUpper
        end
        object DBEidNfOri: TCDBEdit
          Left = 385
          Top = 14
          Width = 87
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'idNfOri'
          DataSource = dsNfComp
          MaxLength = 10
          TabOrder = 2
          OnEnter = DBEidNfOriEnter
          OnExit = DBEidNfOriExit
          DecimalControl = True
          KeyMode = kmInteger
        end
        object DBEchaveNFeOri: TCDBEdit
          Left = 58
          Top = 39
          Width = 414
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          Color = 14149350
          DataField = 'chaveNFe'
          DataSource = dsNfComp
          ReadOnly = True
          TabOrder = 3
          DecimalControl = True
          KeyMode = kmNormal
        end
        object BtnConfirmar: TCBitBtn
          Left = 382
          Top = 64
          Width = 90
          Height = 25
          Caption = '&Confirmar'
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
          TabOrder = 4
          OnClick = BtnConfirmarClick
        end
      end
      object panInutiliza: TPanel
        Left = 507
        Top = 557
        Width = 498
        Height = 97
        BorderWidth = 1
        Color = clGray
        ParentBackground = False
        TabOrder = 12
        Visible = False
        object CLabel107: TCLabel
          Left = 28
          Top = 41
          Width = 24
          Height = 13
          Alignment = taRightJustify
          Caption = 'S'#233'rie'
        end
        object CLabel108: TCLabel
          Left = 342
          Top = 41
          Width = 37
          Height = 13
          Alignment = taRightJustify
          Caption = 'N'#250'mero'
        end
        object lookSerieInu: TCLookUp
          Left = 110
          Top = 38
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
            
              'SELECT descDocSerie FROM DocSerie WHERE idTipoDocSerie = 3 AND i' +
              'dDocSerie = ?')
          ClientDataSet = cdsLookup
          DataSource = dsInutilizar
          ValidaCampoObrigatorio = True
          CampoObrigatorio = True
          LookUpTable = 'DocSerie'
          ReturnField = 'descDocSerie'
          object lookSerieFiscalInu: TCLookUp
            Left = 192
            Top = 0
            Width = 34
            Height = 19
            Alignment = taLeftJustify
            BevelInner = bvSpace
            BevelOuter = bvLowered
            Color = 14149350
            ParentBackground = False
            TabOrder = 0
            Visible = False
            Key.Strings = (
              'idDocSerie')
            LookUpKey.Strings = (
              'idDocSerie')
            AlternateSQL.Strings = (
              
                'SELECT serieFiscal FROM DocSerie WHERE idTipoDocSerie = 3 AND id' +
                'DocSerie = ?')
            ClientDataSet = cdsLookup
            DataSource = dsInutilizar
            ValidaCampoObrigatorio = True
            CampoObrigatorio = True
            LookUpTable = 'DocSerie'
            ReturnField = 'serieFiscal'
          end
        end
        object DBEidDocSerieInu: TCDBEdit
          Left = 58
          Top = 38
          Width = 46
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'idDocSerie'
          DataSource = dsInutilizar
          TabOrder = 0
          Find = FindSerie
          AcaoCad = frmPrincipal.actCadDocSerie
          DecimalControl = True
          KeyMode = kmUSUpper
        end
        object DBEidNfInu: TCDBEdit
          Left = 385
          Top = 38
          Width = 87
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'idNf'
          DataSource = dsInutilizar
          MaxLength = 10
          TabOrder = 2
          OnEnter = DBEidNfOriEnter
          OnExit = DBEidNfOriExit
          DecimalControl = True
          KeyMode = kmInteger
        end
        object BtnConfirmarInu: TCBitBtn
          Left = 382
          Top = 64
          Width = 90
          Height = 25
          Caption = '&Confirmar'
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
          TabOrder = 3
          OnClick = BtnConfirmarInuClick
        end
        object CPanel1: TCPanel
          Left = 2
          Top = 2
          Width = 494
          Height = 16
          Align = alTop
          Alignment = taLeftJustify
          BorderWidth = 1
          Caption = '  Numera'#231#227'o '#224' Inutilizar'
          Color = clSilver
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentBackground = False
          ParentFont = False
          TabOrder = 4
        end
        object BtnCancelarInu: TCBitBtn
          Left = 58
          Top = 64
          Width = 90
          Height = 25
          Caption = '&Cancelar'
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
          TabOrder = 5
          TabStop = False
          OnClick = BtnCancelarInuClick
        end
      end
    end
    object TabProdutos: TTabSheet
      Caption = '&Produtos'
      ImageIndex = 1
      object CLabel20: TCLabel
        Left = 581
        Top = 358
        Width = 92
        Height = 13
        Alignment = taCenter
        AutoSize = False
        Caption = 'Total da Nota'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object CGroupBox12: TCGroupBox
        Left = 581
        Top = 207
        Width = 92
        Height = 145
        TabOrder = 2
        object BtnSalvarProd: TCBitBtn
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
          OnClick = BtnSalvarProdClick
        end
        object BtnCancelarProd: TCBitBtn
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
          OnClick = BtnSalvarProdClick
        end
        object BtnExcluirProd: TCBitBtn
          Left = 8
          Top = 73
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
          OnClick = BtnSalvarProdClick
        end
        object BtnNovoProd: TCBitBtn
          Left = 8
          Top = 104
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
          OnClick = BtnSalvarProdClick
        end
      end
      object CGroupBox14: TCGroupBox
        Left = 4
        Top = 207
        Width = 571
        Height = 187
        TabOrder = 1
        object DBProdutos: TCDBGrid
          Left = 8
          Top = 14
          Width = 556
          Height = 166
          TabStop = False
          DataSource = dsNfProduto
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
              FieldName = 'idProduto'
              Title.Caption = 'C'#243'digo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'descProduto'
              Title.Caption = 'Descri'#231#227'o'
              Width = 220
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'qtProduto'
              Title.Caption = 'Qtde.'
              Width = 60
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'vlLiquido'
              Title.Caption = 'Valor Unit.'
              Width = 80
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'vlTotal'
              Title.Caption = 'Valor Total'
              Width = 90
              Visible = True
            end>
        end
      end
      object EDvlTotal: TCEdit
        Left = 581
        Top = 375
        Width = 92
        Height = 19
        Alignment = taRightJustify
        BorderStyle = bsNone
        BevelKind = bkTile
        Color = 15003631
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 3
        Text = 'EDvlTotal'
        DataType = ftUnknown
        KeyMode = kmNumber
        Decimals = 0
      end
      object CGroupBox4: TCGroupBox
        Left = 3
        Top = 3
        Width = 670
        Height = 198
        Caption = 'Dados Gerais'
        TabOrder = 0
        object CLabel11: TCLabel
          Left = 31
          Top = 20
          Width = 38
          Height = 13
          Alignment = taRightJustify
          Caption = 'Produto'
        end
        object CLabel12: TCLabel
          Left = 45
          Top = 42
          Width = 24
          Height = 13
          Alignment = taRightJustify
          Caption = 'Valor'
        end
        object CLabel13: TCLabel
          Left = 289
          Top = 42
          Width = 41
          Height = 13
          Alignment = taRightJustify
          Caption = '% Desc.'
        end
        object CLabel15: TCLabel
          Left = 388
          Top = 42
          Width = 54
          Height = 13
          Alignment = taRightJustify
          Caption = 'Valor Desc.'
        end
        object CLabel16: TCLabel
          Left = 549
          Top = 20
          Width = 28
          Height = 13
          Alignment = taRightJustify
          Caption = 'Qtde.'
        end
        object CLabel17: TCLabel
          Left = 541
          Top = 42
          Width = 33
          Height = 13
          Alignment = taRightJustify
          Caption = 'L'#237'quido'
        end
        object CLabel18: TCLabel
          Left = 154
          Top = 42
          Width = 24
          Height = 13
          Alignment = taRightJustify
          Caption = 'Total'
        end
        object CLabel19: TCLabel
          Left = 13
          Top = 64
          Width = 56
          Height = 13
          Alignment = taRightJustify
          Caption = '% Redu'#231#227'o'
        end
        object CLabel21: TCLabel
          Left = 285
          Top = 64
          Width = 51
          Height = 13
          Alignment = taRightJustify
          Caption = 'Base ICMS'
        end
        object CLabel22: TCLabel
          Left = 429
          Top = 64
          Width = 39
          Height = 13
          Alignment = taRightJustify
          Caption = '% ICMS'
        end
        object CLabel23: TCLabel
          Left = 525
          Top = 64
          Width = 52
          Height = 13
          Alignment = taRightJustify
          Caption = 'Valor ICMS'
        end
        object CLabel24: TCLabel
          Left = 134
          Top = 108
          Width = 30
          Height = 13
          Alignment = taRightJustify
          Caption = '% ISS'
        end
        object CLabel25: TCLabel
          Left = 225
          Top = 108
          Width = 43
          Height = 13
          Alignment = taRightJustify
          Caption = 'Valor ISS'
        end
        object CLabel26: TCLabel
          Left = 27
          Top = 108
          Width = 42
          Height = 13
          Alignment = taRightJustify
          Caption = 'Base ISS'
        end
        object CLabel27: TCLabel
          Left = 23
          Top = 130
          Width = 46
          Height = 13
          Alignment = taRightJustify
          Caption = 'Vl. Isento'
        end
        object CLabel28: TCLabel
          Left = 154
          Top = 130
          Width = 48
          Height = 13
          Alignment = taRightJustify
          Caption = 'Vl. Outras'
        end
        object CLabel61: TCLabel
          Left = 127
          Top = 64
          Width = 42
          Height = 13
          Alignment = taRightJustify
          Caption = 'Redu'#231#227'o'
        end
        object CLabel62: TCLabel
          Left = 291
          Top = 130
          Width = 37
          Height = 13
          Alignment = taRightJustify
          Caption = '% INSS'
        end
        object CLabel69: TCLabel
          Left = 353
          Top = 108
          Width = 40
          Height = 13
          Alignment = taRightJustify
          Caption = 'Base IPI'
        end
        object CLabel70: TCLabel
          Left = 462
          Top = 108
          Width = 28
          Height = 13
          Alignment = taRightJustify
          Caption = '% IPI'
        end
        object CLabel71: TCLabel
          Left = 550
          Top = 108
          Width = 41
          Height = 13
          Alignment = taRightJustify
          Caption = 'Valor IPI'
        end
        object CLabel1: TCLabel
          Left = 433
          Top = 152
          Width = 30
          Height = 13
          Alignment = taRightJustify
          Caption = '% PIS'
        end
        object CLabel2: TCLabel
          Left = 533
          Top = 152
          Width = 43
          Height = 13
          Alignment = taRightJustify
          Caption = 'Valor PIS'
        end
        object CLabel3: TCLabel
          Left = 411
          Top = 174
          Width = 52
          Height = 13
          Alignment = taRightJustify
          Caption = '% COFINS'
        end
        object CLabel88: TCLabel
          Left = 525
          Top = 174
          Width = 53
          Height = 13
          Alignment = taRightJustify
          Caption = 'Vl. COFINS'
        end
        object CLabel89: TCLabel
          Left = 432
          Top = 20
          Width = 20
          Height = 13
          Alignment = taRightJustify
          Caption = 'Ncm'
        end
        object CLabel60: TCLabel
          Left = 34
          Top = 152
          Width = 35
          Height = 13
          Alignment = taRightJustify
          Caption = 'CST Pis'
        end
        object CLabel90: TCLabel
          Left = 17
          Top = 174
          Width = 52
          Height = 13
          Alignment = taRightJustify
          Caption = 'CST Cofins'
        end
        object CLabel92: TCLabel
          Left = 385
          Top = 130
          Width = 70
          Height = 13
          Alignment = taRightJustify
          Caption = 'Modalidade BC'
        end
        object CLabel103: TCLabel
          Left = 127
          Top = 86
          Width = 79
          Height = 13
          Alignment = taRightJustify
          Caption = 'Cr'#233'd. Presumido'
        end
        object CLabel104: TCLabel
          Left = 6
          Top = 86
          Width = 63
          Height = 13
          Alignment = taRightJustify
          Caption = '% Presumido'
        end
        object CLabel105: TCLabel
          Left = 508
          Top = 86
          Width = 82
          Height = 13
          Alignment = taRightJustify
          Caption = 'Cr'#233'd. Outorgado'
        end
        object CLabel106: TCLabel
          Left = 384
          Top = 86
          Width = 66
          Height = 13
          Alignment = taRightJustify
          Caption = '% Outorgado'
        end
        object DBEidProduto: TCDBEdit
          Left = 75
          Top = 17
          Width = 46
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'idProduto'
          DataSource = dsNfProduto
          TabOrder = 0
          OnExit = DBEidProdutoExit
          Find = FindProduto
          AcaoCad = frmPrincipal.actCadProduto
          DecimalControl = True
          KeyMode = kmNormal
        end
        object LookProduto: TCLookUp
          Left = 127
          Top = 17
          Width = 251
          Height = 19
          Alignment = taLeftJustify
          BevelInner = bvSpace
          BevelOuter = bvLowered
          Color = 14149350
          ParentBackground = False
          TabOrder = 1
          Key.Strings = (
            'idProduto')
          LookUpKey.Strings = (
            'idProduto')
          ClientDataSet = cdsLookup
          DataSource = dsNfProduto
          ValidaCampoObrigatorio = True
          CampoObrigatorio = True
          LookUpTable = 'Produto'
          ReturnField = 'descProduto'
        end
        object DBEvlBruto: TCDBEdit
          Left = 75
          Top = 39
          Width = 73
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'vlBruto'
          DataSource = dsNfProduto
          TabOrder = 5
          OnEnter = DBEqtProdutoEnter
          OnExit = DBEqtProdutoExit
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEprDesconto: TCDBEdit
          Left = 336
          Top = 39
          Width = 46
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'prDesconto'
          DataSource = dsNfProduto
          TabOrder = 7
          OnEnter = DBEqtProdutoEnter
          OnExit = DBEqtProdutoExit
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEvlDesconto: TCDBEdit
          Left = 448
          Top = 39
          Width = 81
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'vlDesconto'
          DataSource = dsNfProduto
          TabOrder = 8
          OnEnter = DBEqtProdutoEnter
          OnExit = DBEqtProdutoExit
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEvlTotal: TCDBEdit
          Left = 184
          Top = 39
          Width = 99
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'vlTotal'
          DataSource = dsNfProduto
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 6
          OnEnter = DBEqtProdutoEnter
          OnExit = DBEqtProdutoExit
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEqtProduto: TCDBEdit
          Left = 583
          Top = 17
          Width = 80
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'qtProduto'
          DataSource = dsNfProduto
          TabOrder = 4
          OnEnter = DBEqtProdutoEnter
          OnExit = DBEqtProdutoExit
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEvlLiquido: TCDBEdit
          Left = 582
          Top = 39
          Width = 81
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'vlLiquido'
          DataSource = dsNfProduto
          TabOrder = 9
          OnEnter = DBEqtProdutoEnter
          OnExit = DBEqtProdutoExit
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEprReducao: TCDBEdit
          Left = 75
          Top = 61
          Width = 46
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'prReducao'
          DataSource = dsNfProduto
          TabOrder = 10
          OnEnter = DBEqtProdutoEnter
          OnExit = DBEqtProdutoExit
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEvlReducao: TCDBEdit
          Left = 175
          Top = 61
          Width = 81
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'vlReducao'
          DataSource = dsNfProduto
          TabOrder = 11
          OnEnter = DBEqtProdutoEnter
          OnExit = DBEqtProdutoExit
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEvlBaseIcms: TCDBEdit
          Left = 342
          Top = 61
          Width = 81
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'vlBaseIcms'
          DataSource = dsNfProduto
          TabOrder = 12
          OnEnter = DBEvlBaseIcmsEnter
          OnExit = DBEqtProdutoExit
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEprIcms: TCDBEdit
          Left = 474
          Top = 61
          Width = 45
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'prIcms'
          DataSource = dsNfProduto
          TabOrder = 13
          OnEnter = DBEqtProdutoEnter
          OnExit = DBEqtProdutoExit
          DecimalControl = True
          KeyMode = kmNormal
        end
        object LookProdMedida: TCLookUp
          Left = 384
          Top = 17
          Width = 42
          Height = 19
          Alignment = taLeftJustify
          BevelInner = bvSpace
          BevelOuter = bvLowered
          Color = 14149350
          ParentBackground = False
          TabOrder = 2
          Key.Strings = (
            'idProduto')
          LookUpKey.Strings = (
            'idProduto')
          AlternateSQL.Strings = (
            
              'SELECT ProdMedida.descAbreviada FROM Produto, ProdMedida WHERE P' +
              'roduto.idProdMedida = ProdMedida.idProdMedida AND Produto.idProd' +
              'uto = ?')
          ClientDataSet = cdsLookup
          DataSource = dsNfProduto
          ValidaCampoObrigatorio = False
          CampoObrigatorio = True
          LookUpTable = 'Produto'
          ReturnField = 'descAbreviada'
        end
        object DBEvlIcms: TCDBEdit
          Left = 582
          Top = 61
          Width = 81
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'vlIcms'
          DataSource = dsNfProduto
          TabOrder = 14
          OnEnter = DBEqtProdutoEnter
          OnExit = DBEqtProdutoExit
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEprIss: TCDBEdit
          Left = 170
          Top = 105
          Width = 46
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'prIss'
          DataSource = dsNfProduto
          TabOrder = 16
          OnEnter = DBEqtProdutoEnter
          OnExit = DBEqtProdutoExit
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEvlIss: TCDBEdit
          Left = 274
          Top = 105
          Width = 75
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'vlIss'
          DataSource = dsNfProduto
          TabOrder = 17
          OnEnter = DBEqtProdutoEnter
          OnExit = DBEqtProdutoExit
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEvlBaseIss: TCDBEdit
          Left = 75
          Top = 105
          Width = 54
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'vlBaseIss'
          DataSource = dsNfProduto
          TabOrder = 15
          OnEnter = DBEqtProdutoEnter
          OnExit = DBEqtProdutoExit
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEvlIsentasIcms: TCDBEdit
          Left = 75
          Top = 127
          Width = 73
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'vlIsentasIcms'
          DataSource = dsNfProduto
          TabOrder = 21
          OnEnter = DBEqtProdutoEnter
          OnExit = DBEqtProdutoExit
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEvlOutrasIcms: TCDBEdit
          Left = 208
          Top = 127
          Width = 75
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'vlOutrasIcms'
          DataSource = dsNfProduto
          TabOrder = 22
          OnEnter = DBEqtProdutoEnter
          OnExit = DBEqtProdutoExit
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEprInss: TCDBEdit
          Left = 334
          Top = 127
          Width = 45
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'prInss'
          DataSource = dsNfProduto
          TabOrder = 23
          OnEnter = DBEqtProdutoEnter
          OnExit = DBEqtProdutoExit
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEvlBaseIpi: TCDBEdit
          Left = 399
          Top = 105
          Width = 55
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'vlBaseIpi'
          DataSource = dsNfProduto
          TabOrder = 18
          OnEnter = DBEqtProdutoEnter
          OnExit = DBEqtProdutoExit
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEprIpi: TCDBEdit
          Left = 496
          Top = 105
          Width = 46
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'prIpi'
          DataSource = dsNfProduto
          TabOrder = 19
          OnEnter = DBEqtProdutoEnter
          OnExit = DBEqtProdutoExit
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEvlIpi: TCDBEdit
          Left = 597
          Top = 105
          Width = 66
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'vlIpi'
          DataSource = dsNfProduto
          TabOrder = 20
          OnEnter = DBEqtProdutoEnter
          OnExit = DBEqtProdutoExit
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEprPis: TCDBEdit
          Left = 471
          Top = 149
          Width = 48
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'prPis'
          DataSource = dsNfProduto
          TabOrder = 27
          OnEnter = DBEqtProdutoEnter
          OnExit = DBEqtProdutoExit
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEvlPis: TCDBEdit
          Left = 584
          Top = 149
          Width = 79
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'vlPis'
          DataSource = dsNfProduto
          TabOrder = 28
          OnEnter = DBEqtProdutoEnter
          OnExit = DBEqtProdutoExit
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEprCofins: TCDBEdit
          Left = 471
          Top = 171
          Width = 48
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'prCofins'
          DataSource = dsNfProduto
          TabOrder = 31
          OnEnter = DBEqtProdutoEnter
          OnExit = DBEqtProdutoExit
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEvlCofins: TCDBEdit
          Left = 584
          Top = 171
          Width = 79
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'vlCofins'
          DataSource = dsNfProduto
          TabOrder = 32
          OnEnter = DBEqtProdutoEnter
          OnExit = DBEqtProdutoExit
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBENcm: TCDBEdit
          Left = 459
          Top = 17
          Width = 84
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'Ncm'
          DataSource = dsNfProduto
          TabOrder = 3
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEidCSTPis: TCDBEdit
          Left = 75
          Top = 149
          Width = 44
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'idCSTPis'
          DataSource = dsNfProduto
          TabOrder = 25
          Find = dmFind.FindCSTPisCofins
          DecimalControl = True
          KeyMode = kmNormal
        end
        object LookPis: TCLookUp
          Left = 125
          Top = 149
          Width = 266
          Height = 19
          Alignment = taLeftJustify
          BevelInner = bvSpace
          BevelOuter = bvLowered
          Color = 14149350
          ParentBackground = False
          TabOrder = 26
          Key.Strings = (
            'idCSTPis')
          LookUpKey.Strings = (
            'idCST')
          ClientDataSet = cdsLookup
          DataSource = dsNfProduto
          ValidaCampoObrigatorio = True
          CampoObrigatorio = True
          LookUpTable = 'CSTPisCofins'
          ReturnField = 'descCST'
        end
        object DBEidCSTCofins: TCDBEdit
          Left = 75
          Top = 171
          Width = 44
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'idCSTCofins'
          DataSource = dsNfProduto
          TabOrder = 29
          Find = dmFind.FindCSTPisCofins
          DecimalControl = True
          KeyMode = kmNormal
        end
        object CLookUp7: TCLookUp
          Left = 125
          Top = 171
          Width = 266
          Height = 19
          Alignment = taLeftJustify
          BevelInner = bvSpace
          BevelOuter = bvLowered
          Color = 14149350
          ParentBackground = False
          TabOrder = 30
          Key.Strings = (
            'idCSTCofins')
          LookUpKey.Strings = (
            'idCST')
          ClientDataSet = cdsLookup
          DataSource = dsNfProduto
          ValidaCampoObrigatorio = True
          CampoObrigatorio = True
          LookUpTable = 'CSTPisCofins'
          ReturnField = 'descCST'
        end
        object DBEidModBC: TCDBEdit
          Left = 461
          Top = 127
          Width = 44
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'idModBC'
          DataSource = dsNfProduto
          TabOrder = 24
          Find = dmFind.FindModBC
          DecimalControl = True
          KeyMode = kmNormal
        end
        object CLookUp8: TCLookUp
          Left = 511
          Top = 127
          Width = 152
          Height = 19
          Alignment = taLeftJustify
          BevelInner = bvSpace
          BevelOuter = bvLowered
          Color = 14149350
          ParentBackground = False
          TabOrder = 33
          Key.Strings = (
            'idModBC')
          LookUpKey.Strings = (
            'idModBC')
          ClientDataSet = cdsLookup
          DataSource = dsNfProduto
          ValidaCampoObrigatorio = True
          CampoObrigatorio = True
          LookUpTable = 'ModBC'
          ReturnField = 'descModBC'
        end
        object DBEprCredPresumido: TCDBEdit
          Left = 75
          Top = 83
          Width = 46
          Height = 19
          Hint = '% Cr'#233'dito Presumido'
          TabStop = False
          BevelKind = bkTile
          BorderStyle = bsNone
          Color = 14149350
          DataField = 'prCredPresumido'
          DataSource = dsNfProduto
          ReadOnly = True
          TabOrder = 34
          OnEnter = DBEqtProdutoEnter
          OnExit = DBEqtProdutoExit
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEvlCredPresumido: TCDBEdit
          Left = 212
          Top = 83
          Width = 67
          Height = 19
          TabStop = False
          BevelKind = bkTile
          BorderStyle = bsNone
          Color = 14149350
          DataField = 'vlCredPresumido'
          DataSource = dsNfProduto
          ReadOnly = True
          TabOrder = 35
          OnEnter = DBEqtProdutoEnter
          OnExit = DBEqtProdutoExit
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEvlCredOutorgado: TCDBEdit
          Left = 596
          Top = 83
          Width = 67
          Height = 19
          TabStop = False
          BevelKind = bkTile
          BorderStyle = bsNone
          Color = 14149350
          DataField = 'vlCredOutorgado'
          DataSource = dsNfProduto
          ReadOnly = True
          TabOrder = 36
          OnEnter = DBEqtProdutoEnter
          OnExit = DBEqtProdutoExit
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEprCredOutorgado: TCDBEdit
          Left = 456
          Top = 83
          Width = 46
          Height = 19
          Hint = '% Cr'#233'dito Presumido'
          TabStop = False
          BevelKind = bkTile
          BorderStyle = bsNone
          Color = 14149350
          DataField = 'prCredOutorgado'
          DataSource = dsNfProduto
          ReadOnly = True
          TabOrder = 37
          OnEnter = DBEqtProdutoEnter
          OnExit = DBEqtProdutoExit
          DecimalControl = True
          KeyMode = kmNormal
        end
      end
    end
    object tabImpostoOutro: TTabSheet
      Caption = 'Outros Impostos'
      ImageIndex = 2
      object CGroupBox1: TCGroupBox
        Left = 3
        Top = 3
        Width = 550
        Height = 110
        Caption = 'Dados de Outros Impostos'
        TabOrder = 0
        object CLabel64: TCLabel
          Left = 60
          Top = 20
          Width = 38
          Height = 13
          Alignment = taRightJustify
          Caption = 'Produto'
        end
        object CLabel73: TCLabel
          Left = 412
          Top = 42
          Width = 76
          Height = 13
          Alignment = taRightJustify
          Caption = '% Faturamento'
        end
        object CLabel77: TCLabel
          Left = 382
          Top = 86
          Width = 73
          Height = 13
          Alignment = taRightJustify
          Caption = 'Valor Tributado'
        end
        object CLabel65: TCLabel
          Left = 59
          Top = 42
          Width = 39
          Height = 13
          Alignment = taRightJustify
          Caption = 'Imposto'
        end
        object CLabel66: TCLabel
          Left = 15
          Top = 64
          Width = 83
          Height = 13
          Alignment = taRightJustify
          Caption = '% Qtde. Produto'
        end
        object CLabel67: TCLabel
          Left = 156
          Top = 64
          Width = 108
          Height = 13
          Alignment = taRightJustify
          Caption = 'Valor s/ Qtde. Produto'
        end
        object CLabel101: TCLabel
          Left = 368
          Top = 64
          Width = 90
          Height = 13
          Alignment = taRightJustify
          Caption = 'Valor por Tonelada'
        end
        object CLabel102: TCLabel
          Left = 29
          Top = 85
          Width = 69
          Height = 13
          Alignment = taRightJustify
          Caption = 'Valor por Saca'
        end
        object DBEidProdutoO: TCDBEdit
          Left = 104
          Top = 17
          Width = 46
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'idProduto'
          DataSource = dsNfImpostoOutro
          TabOrder = 0
          OnExit = DBEidProdutoOExit
          Find = FindProduto
          AcaoCad = frmPrincipal.actCadProduto
          DecimalControl = True
          KeyMode = kmNormal
        end
        object CLookUp1: TCLookUp
          Left = 156
          Top = 17
          Width = 251
          Height = 19
          Alignment = taLeftJustify
          BevelInner = bvSpace
          BevelOuter = bvLowered
          Color = 14149350
          ParentBackground = False
          TabOrder = 1
          Key.Strings = (
            'idProduto')
          LookUpKey.Strings = (
            'idProduto')
          ClientDataSet = cdsLookup
          DataSource = dsNfImpostoOutro
          ValidaCampoObrigatorio = False
          CampoObrigatorio = True
          LookUpTable = 'Produto'
          ReturnField = 'descProduto'
        end
        object DBEprFaturamento: TCDBEdit
          Left = 494
          Top = 39
          Width = 45
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'prFaturamento'
          DataSource = dsNfImpostoOutro
          TabOrder = 5
          OnEnter = DBEqtProdutoEnter
          DecimalControl = True
          KeyMode = kmNormal
        end
        object CLookUp2: TCLookUp
          Left = 413
          Top = 17
          Width = 42
          Height = 19
          Alignment = taLeftJustify
          BevelInner = bvSpace
          BevelOuter = bvLowered
          Color = 14149350
          ParentBackground = False
          TabOrder = 2
          Key.Strings = (
            'idProduto')
          LookUpKey.Strings = (
            'idProduto')
          AlternateSQL.Strings = (
            
              'SELECT ProdMedida.descAbreviada FROM Produto, ProdMedida WHERE P' +
              'roduto.idProdMedida = ProdMedida.idProdMedida AND Produto.idProd' +
              'uto = ?')
          ClientDataSet = cdsLookup
          DataSource = dsNfImpostoOutro
          ValidaCampoObrigatorio = False
          CampoObrigatorio = True
          LookUpTable = 'Produto'
          ReturnField = 'descAbreviada'
        end
        object DBEvlImpostoOutro: TCDBEdit
          Left = 461
          Top = 83
          Width = 78
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'vlImpostoOutro'
          DataSource = dsNfImpostoOutro
          TabOrder = 10
          OnEnter = DBEqtProdutoEnter
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEidImpostoOutro: TCDBEdit
          Left = 104
          Top = 39
          Width = 46
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'idImpostoOutro'
          DataSource = dsNfImpostoOutro
          TabOrder = 3
          OnExit = DBEidImpostoOutroExit
          Find = dmFind.FindImpostoOutro
          AcaoCad = frmPrincipal.actCadImpostoOutro
          DecimalControl = True
          KeyMode = kmNormal
        end
        object LookidImpostoOutro: TCLookUp
          Left = 156
          Top = 39
          Width = 251
          Height = 19
          Alignment = taLeftJustify
          BevelInner = bvSpace
          BevelOuter = bvLowered
          Color = 14149350
          ParentBackground = False
          TabOrder = 4
          Key.Strings = (
            'idImpostoOutro')
          LookUpKey.Strings = (
            'idImpostoOutro')
          ClientDataSet = cdsLookup
          DataSource = dsNfImpostoOutro
          ValidaCampoObrigatorio = True
          CampoObrigatorio = True
          LookUpTable = 'ImpostoOutro'
          ReturnField = 'descImpostoOutro'
        end
        object DBEprQtdeProduto: TCDBEdit
          Left = 104
          Top = 61
          Width = 45
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'prQtdeProduto'
          DataSource = dsNfImpostoOutro
          TabOrder = 6
          OnEnter = DBEqtProdutoEnter
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEvlQtdeProduto: TCDBEdit
          Left = 270
          Top = 62
          Width = 75
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'vlQtdeProduto'
          DataSource = dsNfImpostoOutro
          TabOrder = 7
          OnEnter = DBEqtProdutoEnter
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEvlTonelada: TCDBEdit
          Left = 464
          Top = 62
          Width = 75
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'vlTonelada'
          DataSource = dsNfImpostoOutro
          TabOrder = 8
          OnEnter = DBEqtProdutoEnter
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEvlSaca: TCDBEdit
          Left = 104
          Top = 83
          Width = 75
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'vlSaca'
          DataSource = dsNfImpostoOutro
          TabOrder = 9
          OnEnter = DBEqtProdutoEnter
          DecimalControl = True
          KeyMode = kmNormal
        end
      end
      object CGroupBox8: TCGroupBox
        Left = 4
        Top = 119
        Width = 549
        Height = 255
        TabOrder = 1
        object DBGridNfOutro: TCDBGrid
          Left = 8
          Top = 14
          Width = 530
          Height = 233
          TabStop = False
          DataSource = dsNfImpostoOutro
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
              FieldName = 'idProduto'
              Title.Caption = 'Prod.'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'descProduto'
              Title.Caption = 'Descri'#231#227'o'
              Width = 180
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'descImpostoOutro'
              Title.Caption = 'Imposto Outro'
              Width = 120
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'prFaturamento'
              Title.Caption = '% Fat.'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'prQtdeProduto'
              Title.Caption = '% Qtde'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'vlQtdeProduto'
              Title.Caption = 'Vl.Qtde.'
              Width = 42
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'vlImpostoOutro'
              Title.Caption = 'Valor'
              Width = 100
              Visible = True
            end>
        end
      end
      object CGroupBox9: TCGroupBox
        Left = 559
        Top = 3
        Width = 92
        Height = 371
        TabOrder = 2
        object BtnSalvarOutro: TCBitBtn
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
          OnClick = BtnSalvarOutroClick
        end
        object BtnCancelarOutro: TCBitBtn
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
          OnClick = BtnSalvarOutroClick
        end
        object BtnExcluirOutro: TCBitBtn
          Left = 8
          Top = 73
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
          OnClick = BtnSalvarOutroClick
        end
        object BtnNovoOutro: TCBitBtn
          Left = 8
          Top = 104
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
          OnClick = BtnSalvarOutroClick
        end
      end
    end
    object TabImpostos: TTabSheet
      Caption = '&Impostos / Transportes'
      ImageIndex = 3
      object CGroupBox5: TCGroupBox
        Left = 11
        Top = 3
        Width = 633
        Height = 67
        Caption = 'Valores da Nota'
        TabOrder = 0
        object CLabel30: TCLabel
          Left = 17
          Top = 20
          Width = 43
          Height = 13
          Alignment = taRightJustify
          Caption = 'Produtos'
        end
        object CLabel31: TCLabel
          Left = 274
          Top = 20
          Width = 41
          Height = 13
          Alignment = taRightJustify
          Caption = '% Desc.'
        end
        object CLabel32: TCLabel
          Left = 372
          Top = 20
          Width = 45
          Height = 13
          Alignment = taRightJustify
          Caption = 'Desconto'
        end
        object CLabel29: TCLabel
          Left = 147
          Top = 20
          Width = 40
          Height = 13
          Alignment = taRightJustify
          Caption = 'Servi'#231'os'
        end
        object CLabel33: TCLabel
          Left = 497
          Top = 20
          Width = 46
          Height = 13
          Alignment = taRightJustify
          Caption = 'Despesas'
        end
        object CLabel36: TCLabel
          Left = 34
          Top = 42
          Width = 26
          Height = 13
          Alignment = taRightJustify
          Caption = 'Frete'
        end
        object CLabel37: TCLabel
          Left = 147
          Top = 42
          Width = 34
          Height = 13
          Alignment = taRightJustify
          Caption = 'Seguro'
        end
        object CLabel38: TCLabel
          Left = 268
          Top = 42
          Width = 40
          Height = 13
          Alignment = taRightJustify
          Caption = 'Base IPI'
        end
        object CLabel39: TCLabel
          Left = 395
          Top = 42
          Width = 14
          Height = 13
          Alignment = taRightJustify
          Caption = 'IPI'
        end
        object CLabel40: TCLabel
          Left = 497
          Top = 42
          Width = 46
          Height = 13
          Alignment = taRightJustify
          Caption = 'Tot. Nota'
        end
        object DBEvlProdutos: TCDBEdit
          Left = 66
          Top = 17
          Width = 75
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'vlProdutos'
          DataSource = dsNfValor
          TabOrder = 0
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEprDescontoN: TCDBEdit
          Left = 321
          Top = 17
          Width = 45
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'prDesconto'
          DataSource = dsNfValor
          TabOrder = 2
          OnEnter = DBEqtProdutoEnter
          OnExit = DBEvlDespesasExit
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEvlDescontoN: TCDBEdit
          Left = 423
          Top = 17
          Width = 68
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'vlDesconto'
          DataSource = dsNfValor
          TabOrder = 3
          OnEnter = DBEqtProdutoEnter
          OnExit = DBEvlDespesasExit
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEvlServicos: TCDBEdit
          Left = 193
          Top = 17
          Width = 75
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'vlServicos'
          DataSource = dsNfValor
          TabOrder = 1
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEvlDespesas: TCDBEdit
          Left = 549
          Top = 17
          Width = 75
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'vlDespesas'
          DataSource = dsNfValor
          TabOrder = 4
          OnEnter = DBEqtProdutoEnter
          OnExit = DBEvlDespesasExit
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEvlFrete: TCDBEdit
          Left = 66
          Top = 39
          Width = 75
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'vlFrete'
          DataSource = dsNfValor
          TabOrder = 5
          OnEnter = DBEqtProdutoEnter
          OnExit = DBEvlDespesasExit
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEvlSeguro: TCDBEdit
          Left = 187
          Top = 39
          Width = 75
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'vlSeguro'
          DataSource = dsNfValor
          TabOrder = 6
          OnEnter = DBEqtProdutoEnter
          OnExit = DBEvlDespesasExit
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEvlBaseIpiN: TCDBEdit
          Left = 314
          Top = 39
          Width = 75
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'vlBaseIpi'
          DataSource = dsNfValor
          TabOrder = 7
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEvlIpiN: TCDBEdit
          Left = 415
          Top = 39
          Width = 75
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'vlIpi'
          DataSource = dsNfValor
          TabOrder = 8
          OnEnter = DBEqtProdutoEnter
          OnExit = DBEvlDespesasExit
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEvlNotaFiscal: TCDBEdit
          Left = 549
          Top = 39
          Width = 75
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'vlNotaFiscal'
          DataSource = dsNfValor
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
      end
      object CGroupBox6: TCGroupBox
        Left = 11
        Top = 76
        Width = 633
        Height = 66
        Caption = 'Informa'#231#245'es sobre impostos'
        TabOrder = 1
        object CLabel48: TCLabel
          Left = 8
          Top = 20
          Width = 42
          Height = 13
          Alignment = taRightJustify
          Caption = 'Redu'#231#227'o'
        end
        object CLabel49: TCLabel
          Left = 137
          Top = 20
          Width = 51
          Height = 13
          Alignment = taRightJustify
          Caption = 'Base ICMS'
        end
        object CLabel51: TCLabel
          Left = 275
          Top = 20
          Width = 25
          Height = 13
          Alignment = taRightJustify
          Caption = 'ICMS'
        end
        object CLabel53: TCLabel
          Left = 137
          Top = 42
          Width = 43
          Height = 13
          Alignment = taRightJustify
          Caption = 'Valor ISS'
        end
        object CLabel54: TCLabel
          Left = 8
          Top = 42
          Width = 42
          Height = 13
          Alignment = taRightJustify
          Caption = 'Base ISS'
        end
        object CLabel34: TCLabel
          Left = 387
          Top = 20
          Width = 36
          Height = 13
          Alignment = taRightJustify
          Caption = 'Isentas'
        end
        object CLabel35: TCLabel
          Left = 510
          Top = 20
          Width = 33
          Height = 13
          Alignment = taRightJustify
          Caption = 'Outras'
        end
        object CLabel68: TCLabel
          Left = 267
          Top = 42
          Width = 80
          Height = 13
          Alignment = taRightJustify
          Caption = 'Outros Impostos'
        end
        object DBEvlReducaoN: TCDBEdit
          Left = 56
          Top = 17
          Width = 75
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'vlReducao'
          DataSource = dsNfValor
          TabOrder = 0
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEvlBaseIcmsN: TCDBEdit
          Left = 194
          Top = 17
          Width = 75
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'vlBaseIcms'
          DataSource = dsNfValor
          TabOrder = 1
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEvlIcmsN: TCDBEdit
          Left = 306
          Top = 17
          Width = 75
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'vlIcms'
          DataSource = dsNfValor
          TabOrder = 2
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEvlIssN: TCDBEdit
          Left = 186
          Top = 39
          Width = 75
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'vlIss'
          DataSource = dsNfValor
          TabOrder = 6
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEvlBaseIssN: TCDBEdit
          Left = 56
          Top = 39
          Width = 75
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'vlBaseIss'
          DataSource = dsNfValor
          TabOrder = 5
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEvlIsentasIcmsN: TCDBEdit
          Left = 429
          Top = 17
          Width = 75
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'vlIsentasIcms'
          DataSource = dsNfValor
          TabOrder = 3
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEvlOutrasIcmsN: TCDBEdit
          Left = 549
          Top = 17
          Width = 75
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'vlOutrasIcms'
          DataSource = dsNfValor
          TabOrder = 4
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEvlOutrosImpostos: TCDBEdit
          Left = 353
          Top = 39
          Width = 75
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'vlOutrosImpostos'
          DataSource = dsNfValor
          TabOrder = 7
          DecimalControl = True
          KeyMode = kmNormal
        end
      end
      object CGroupBox7: TCGroupBox
        Left = 11
        Top = 148
        Width = 633
        Height = 173
        Caption = 'Transportes'
        TabOrder = 2
        object CLabel41: TCLabel
          Left = 8
          Top = 61
          Width = 69
          Height = 13
          Alignment = taRightJustify
          Caption = 'Transportador'
        end
        object CLabel44: TCLabel
          Left = 194
          Top = 83
          Width = 41
          Height = 13
          Alignment = taRightJustify
          Caption = 'UF Placa'
        end
        object CLabel45: TCLabel
          Left = 52
          Top = 83
          Width = 25
          Height = 13
          Alignment = taRightJustify
          Caption = 'Placa'
        end
        object CLabel47: TCLabel
          Left = 497
          Top = 61
          Width = 24
          Height = 13
          Alignment = taRightJustify
          Caption = 'Insc.'
        end
        object CLabel42: TCLabel
          Left = 325
          Top = 61
          Width = 48
          Height = 13
          Alignment = taRightJustify
          Caption = 'CNPJ/CPF'
        end
        object CLabel43: TCLabel
          Left = 315
          Top = 83
          Width = 45
          Height = 13
          Alignment = taRightJustify
          Caption = 'Endere'#231'o'
        end
        object CLabel46: TCLabel
          Left = 44
          Top = 105
          Width = 33
          Height = 13
          Alignment = taRightJustify
          Caption = 'Cidade'
        end
        object CLabel50: TCLabel
          Left = 49
          Top = 127
          Width = 28
          Height = 13
          Alignment = taRightJustify
          Caption = 'Qtde.'
        end
        object CLabel52: TCLabel
          Left = 444
          Top = 105
          Width = 36
          Height = 13
          Alignment = taRightJustify
          Caption = 'Esp'#233'cie'
        end
        object CLabel55: TCLabel
          Left = 154
          Top = 127
          Width = 29
          Height = 13
          Alignment = taRightJustify
          Caption = 'Marca'
        end
        object CLabel56: TCLabel
          Left = 350
          Top = 127
          Width = 37
          Height = 13
          Alignment = taRightJustify
          Caption = 'N'#250'mero'
        end
        object CLabel57: TCLabel
          Left = 501
          Top = 127
          Width = 52
          Height = 13
          Alignment = taRightJustify
          Caption = 'Peso Bruto'
        end
        object CLabel58: TCLabel
          Left = 18
          Top = 149
          Width = 59
          Height = 13
          Alignment = taRightJustify
          Caption = 'Peso L'#237'quido'
        end
        object DBEdescTransportador: TCDBEdit
          Left = 83
          Top = 58
          Width = 236
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'descTransportador'
          DataSource = dsNfTransporte
          TabOrder = 1
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEufPlaca: TCDBEdit
          Left = 241
          Top = 80
          Width = 31
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'ufPlaca'
          DataSource = dsNfTransporte
          TabOrder = 5
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEPlaca: TCDBEdit
          Left = 83
          Top = 80
          Width = 71
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'Placa'
          DataSource = dsNfTransporte
          TabOrder = 4
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEidCnpjCpf: TCDBEdit
          Left = 379
          Top = 58
          Width = 112
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'idCnpjCpf'
          DataSource = dsNfTransporte
          TabOrder = 2
          OnEnter = DBEidRateioEnter
          OnExit = DBEidCnpjCpfExit
          Find = dmFind.FindClienteCpf
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEidInscEstadual: TCDBEdit
          Left = 527
          Top = 58
          Width = 97
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'idInscEstadual'
          DataSource = dsNfTransporte
          TabOrder = 3
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEdescEndereco: TCDBEdit
          Left = 366
          Top = 80
          Width = 258
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'descEndereco'
          DataSource = dsNfTransporte
          TabOrder = 6
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEidCidade: TCDBEdit
          Left = 83
          Top = 102
          Width = 46
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'idCidade'
          DataSource = dsNfTransporte
          TabOrder = 7
          Find = dmFind.FindCidade
          AcaoCad = frmPrincipal.actCadCidade
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEqtProdutoN: TCDBEdit
          Left = 83
          Top = 124
          Width = 53
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'qtProduto'
          DataSource = dsNfTransporte
          TabOrder = 11
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEdescEspecie: TCDBEdit
          Left = 486
          Top = 102
          Width = 138
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'descEspecie'
          DataSource = dsNfTransporte
          TabOrder = 10
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEdescMarca: TCDBEdit
          Left = 189
          Top = 124
          Width = 149
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'descMarca'
          DataSource = dsNfTransporte
          TabOrder = 12
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEdescNumero: TCDBEdit
          Left = 393
          Top = 124
          Width = 102
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'descNumero'
          DataSource = dsNfTransporte
          TabOrder = 13
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEqtPesoBruto: TCDBEdit
          Left = 559
          Top = 124
          Width = 65
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'qtPesoBruto'
          DataSource = dsNfTransporte
          TabOrder = 14
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEqtPesoLiquido: TCDBEdit
          Left = 83
          Top = 146
          Width = 65
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'qtPesoLiquido'
          DataSource = dsNfTransporte
          TabOrder = 15
          DecimalControl = True
          KeyMode = kmNormal
        end
        object LookCidade: TCLookUp
          Left = 135
          Top = 102
          Width = 203
          Height = 19
          Alignment = taLeftJustify
          BevelInner = bvSpace
          BevelOuter = bvLowered
          Color = 14149350
          ParentBackground = False
          TabOrder = 8
          Key.Strings = (
            'idCidade')
          LookUpKey.Strings = (
            'idCidade')
          ClientDataSet = cdsLookup
          DataSource = dsNfTransporte
          ValidaCampoObrigatorio = False
          CampoObrigatorio = True
          LookUpTable = 'Cidade'
          ReturnField = 'descCidade'
        end
        object LookEstado2: TCLookUp
          Left = 344
          Top = 102
          Width = 43
          Height = 19
          Alignment = taLeftJustify
          BevelInner = bvSpace
          BevelOuter = bvLowered
          Color = 14149350
          ParentBackground = False
          TabOrder = 9
          Key.Strings = (
            'idCidade')
          LookUpKey.Strings = (
            'idCidade')
          ClientDataSet = cdsLookup
          DataSource = dsNfTransporte
          ValidaCampoObrigatorio = False
          CampoObrigatorio = True
          LookUpTable = 'Cidade'
          ReturnField = 'idEstado'
        end
        object DBRGidFrete: TCDBRadioGroup
          Left = 56
          Top = 15
          Width = 529
          Height = 29
          Caption = 'Frete por conta do:'
          Columns = 4
          DataField = 'idFrete'
          DataSource = dsNfTransporte
          Items.Strings = (
            'Emitente'
            'Destinat'#225'rio'
            'Terceiros'
            'Sem frete')
          TabOrder = 0
          TabStop = True
          Values.Strings = (
            '0'
            '1'
            '2'
            '9')
        end
      end
    end
    object TabResultado: TTabSheet
      Caption = 'Resultado / Rateio'
      ImageIndex = 7
      object CGroupBox26: TCGroupBox
        Left = 9
        Top = 7
        Width = 578
        Height = 63
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        object CLabel152: TCLabel
          Left = 13
          Top = 17
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
        object CLabel78: TCLabel
          Left = 174
          Top = 17
          Width = 31
          Height = 13
          Alignment = taRightJustify
          Caption = 'Rateio'
        end
        object CLabel85: TCLabel
          Left = 12
          Top = 39
          Width = 62
          Height = 13
          Alignment = taRightJustify
          Caption = 'C. Resultado'
        end
        object DBEvlNotaFiscalR: TCDBEdit
          Left = 80
          Top = 14
          Width = 88
          Height = 19
          TabStop = False
          BevelKind = bkTile
          BorderStyle = bsNone
          Color = 14149350
          DataField = 'vlNotaFiscal'
          DataSource = dsNfValor
          MaxLength = 10
          ReadOnly = True
          TabOrder = 0
          DecimalControl = False
          KeyMode = kmNormal
        end
        object DBEidRateio: TCDBEdit
          Left = 211
          Top = 14
          Width = 48
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'idRateio'
          DataSource = dsPadrao
          TabOrder = 1
          OnEnter = DBEidRateioEnter
          OnExit = DBEidRateioExit
          Find = FindRateio
          AcaoCad = frmPrincipal.actCadPlanoRateio
          DecimalControl = True
          KeyMode = kmNormal
        end
        object LookRateio: TCLookUp
          Left = 265
          Top = 14
          Width = 204
          Height = 19
          Alignment = taLeftJustify
          BevelInner = bvSpace
          BevelOuter = bvLowered
          Color = 14149350
          ParentBackground = False
          TabOrder = 2
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
        object DBEidResultado: TCDBEdit
          Left = 80
          Top = 36
          Width = 57
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'idResultado'
          DataSource = dsPadrao
          TabOrder = 3
          OnEnter = DBEidRateioEnter
          OnExit = DBEidRateioExit
          Find = FindResultado
          AcaoCad = frmPrincipal.actCadResultado
          DecimalControl = True
          KeyMode = kmNormal
        end
        object LookResultado: TCLookUp
          Left = 143
          Top = 36
          Width = 326
          Height = 19
          Alignment = taLeftJustify
          BevelInner = bvSpace
          BevelOuter = bvLowered
          Color = 14149350
          ParentBackground = False
          TabOrder = 4
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
        object BtnGerarRateio: TCBitBtn
          Left = 476
          Top = 20
          Width = 93
          Height = 25
          Action = actGerarRateio
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
          TabOrder = 5
        end
      end
      object CGroupBox27: TCGroupBox
        Left = 9
        Top = 167
        Width = 480
        Height = 170
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        object CDBGrid5: TCDBGrid
          Left = 9
          Top = 12
          Width = 460
          Height = 148
          TabStop = False
          DataSource = dsNfRateio
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
      object CGroupBox28: TCGroupBox
        Left = 495
        Top = 76
        Width = 92
        Height = 261
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 3
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
        object BtnSalvarRat: TCBitBtn
          Left = 8
          Top = 11
          Width = 75
          Height = 25
          Caption = '&Salvar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
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
          ParentFont = False
          TabOrder = 0
          OnClick = BtnSalvarRatClick
        end
        object BtnCancelarRat: TCBitBtn
          Left = 8
          Top = 42
          Width = 75
          Height = 25
          Caption = '&Desfazer'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
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
          ParentFont = False
          TabOrder = 1
          OnClick = BtnSalvarRatClick
        end
        object BtnExcluirRat: TCBitBtn
          Left = 8
          Top = 73
          Width = 75
          Height = 25
          Caption = '&Excluir'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
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
          ParentFont = False
          TabOrder = 2
          OnClick = BtnSalvarRatClick
        end
        object BtnNovoRat: TCBitBtn
          Left = 8
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
          ParentFont = False
          Spacing = 5
          TabOrder = 3
          OnClick = BtnSalvarRatClick
        end
      end
      object CGroupBox10: TCGroupBox
        Left = 9
        Top = 76
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
        object CLabel86: TCLabel
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
          DataSource = dsNfRateio
          TabOrder = 4
          OnEnter = DBEprRateioEnter
          OnExit = DBEprRateioExit
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
          DataSource = dsNfRateio
          TabOrder = 5
          OnEnter = DBEprRateioEnter
          OnExit = DBEprRateioExit
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
          DataSource = dsNfRateio
          TabOrder = 2
          OnExit = DBEidResultadoRTExit
          Find = FindResultado
          AcaoCad = frmPrincipal.actCadResultado
          DecimalControl = True
          KeyMode = kmNormal
        end
        object CLookUp4: TCLookUp
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
          DataSource = dsNfRateio
          ValidaCampoObrigatorio = True
          CampoObrigatorio = True
          LookUpTable = 'Resultado'
          ReturnField = 'descResultado'
        end
        object DBEidGerencial: TCDBEdit
          Left = 80
          Top = 13
          Width = 57
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'idGerencial'
          DataSource = dsNfRateio
          TabOrder = 0
          Find = FindGerencial
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
          DataSource = dsNfRateio
          ValidaCampoObrigatorio = True
          CampoObrigatorio = True
          LookUpTable = 'vGerencial'
          ReturnField = 'descGerencial'
        end
      end
    end
    object TabFinancas: TTabSheet
      Caption = 'Finan'#231'as'
      ImageIndex = 4
      object grpCaixa: TCGroupBox
        Left = 14
        Top = 3
        Width = 627
        Height = 70
        Caption = 'Lan'#231'amento no Caixa'
        TabOrder = 0
        object CLabel75: TCLabel
          Left = 491
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
          Left = 37
          Top = 19
          Width = 27
          Height = 13
          Alignment = taRightJustify
          Caption = 'Caixa'
        end
        object CLabel79: TCLabel
          Left = 6
          Top = 41
          Width = 58
          Height = 13
          Alignment = taRightJustify
          Caption = 'Lan'#231'amento'
        end
        object CLabel87: TCLabel
          Left = 156
          Top = 41
          Width = 41
          Height = 13
          Alignment = taRightJustify
          Caption = 'Hist'#243'rico'
        end
        object DBEvlMovCaixa: TCDBEdit
          Left = 526
          Top = 16
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
          TabOrder = 2
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEidCaixa: TCDBEdit
          Left = 70
          Top = 16
          Width = 48
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'idCaixa'
          DataSource = dsMovCaixa
          TabOrder = 0
          Find = FindCaixa
          AcaoCad = frmPrincipal.actCadCaixa
          DecimalControl = True
          KeyMode = kmNormal
        end
        object LookCaixa: TCLookUp
          Left = 124
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
          Left = 389
          Top = 16
          Width = 96
          Height = 19
          Action = frmPrincipal.actCadCaixa
          Caption = '&Conta Caixa'
          TabOrder = 5
          TabStop = False
        end
        object DBEdtMovCaixa: TCDBEdit
          Left = 70
          Top = 38
          Width = 80
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'dtMovCaixa'
          DataSource = dsMovCaixa
          MaxLength = 10
          TabOrder = 3
          DecimalControl = True
          KeyMode = kmDate
        end
        object DBEdescMovCaixa: TCDBEdit
          Left = 203
          Top = 38
          Width = 417
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'descMovCaixa'
          DataSource = dsMovCaixa
          TabOrder = 4
          OnEnter = DBEqtProdutoEnter
          DecimalControl = True
          KeyMode = kmUSUpper
        end
      end
      object grpBanco: TCGroupBox
        Left = 14
        Top = 79
        Width = 627
        Height = 90
        Caption = 'Lan'#231'amento no Banco'
        TabOrder = 1
        object CLabel83: TCLabel
          Left = 470
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
        object DBEvlMovConta: TCDBEdit
          Left = 505
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
          Find = FindConta
          AcaoCad = frmPrincipal.actCadConta
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
          TabOrder = 6
          OnEnter = DBEqtProdutoEnter
          DecimalControl = True
          KeyMode = kmUSUpper
        end
      end
      object PagTituloRec: TCPageControl
        Left = 14
        Top = 175
        Width = 627
        Height = 172
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
          object CGroupBox20: TCGroupBox
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
            object CLabel118: TCLabel
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
              Find = FindBanco
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
              OnExit = DBEdiasVencimentoExit
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
              Find = FindIndice
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
              Find = FindSerieTit
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
          object CGroupBox21: TCGroupBox
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
            object DBEdtVencimento: TCDBEdit
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
          object CGroupBox22: TCGroupBox
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
      object DBEidMovCaixa: TCDBEdit
        Left = 829
        Top = 135
        Width = 68
        Height = 19
        BevelKind = bkTile
        BorderStyle = bsNone
        DataField = 'idMovCaixa'
        DataSource = dsMovCaixa
        TabOrder = 3
        Visible = False
        DecimalControl = True
        KeyMode = kmNormal
      end
      object DBEidMovConta: TCDBEdit
        Left = 829
        Top = 160
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
      object DBEidTituloRec: TCDBEdit
        Left = 829
        Top = 185
        Width = 68
        Height = 19
        BevelKind = bkTile
        BorderStyle = bsNone
        DataField = 'idTituloRec'
        DataSource = dsTituloRec
        TabOrder = 5
        Visible = False
        DecimalControl = True
        KeyMode = kmNormal
      end
    end
    object TabNFe: TTabSheet
      Caption = 'Dados NF-e'
      ImageIndex = 6
      object CGroupBox48: TCGroupBox
        Left = 9
        Top = 123
        Width = 631
        Height = 160
        Caption = 'Erros'
        TabOrder = 0
        object CDBGrid1: TCDBGrid
          Left = 2
          Top = 15
          Width = 627
          Height = 143
          TabStop = False
          Align = alClient
          DataSource = dsNFeErro
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
              FieldName = 'CD_ERRO'
              Title.Caption = 'C'#243'digo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DESC_ERRO'
              Title.Caption = 'Descri'#231#227'o do Erro'
              Width = 520
              Visible = True
            end>
        end
      end
      object CGroupBox45: TCGroupBox
        Left = 9
        Top = 71
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
        object DBECOD_STATUS_RESP_SEFAZ: TCDBEdit
          Left = 59
          Top = 19
          Width = 59
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          Color = 14149350
          DataField = 'COD_STATUS_RESP_SEFAZ'
          DataSource = dsNFe
          ReadOnly = True
          TabOrder = 0
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBENUM_PROTOC_AUTORZ_SEFAZ: TCDBEdit
          Left = 174
          Top = 19
          Width = 126
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          Color = 14149350
          DataField = 'NUM_PROTOC_AUTORZ_SEFAZ'
          DataSource = dsNFe
          ReadOnly = True
          TabOrder = 1
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBENUM_RECIBO_AUTORZ_SEFAZ: TCDBEdit
          Left = 344
          Top = 19
          Width = 117
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          Color = 14149350
          DataField = 'NUM_RECIBO_AUTORZ_SEFAZ'
          DataSource = dsNFe
          ReadOnly = True
          TabOrder = 2
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEDAT_HOR_PROC_SEFAZ: TCDBEdit
          Left = 531
          Top = 19
          Width = 88
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          Color = 14149350
          DataField = 'DAT_HOR_PROC_SEFAZ'
          DataSource = dsNFe
          ReadOnly = True
          TabOrder = 3
          DecimalControl = True
          KeyMode = kmNormal
        end
      end
      object CGroupBox43: TCGroupBox
        Left = 9
        Top = 16
        Width = 630
        Height = 49
        Caption = 'Chaves e Identificador'
        TabOrder = 2
        object CLabel114: TCLabel
          Left = 22
          Top = 22
          Width = 31
          Height = 13
          Alignment = taRightJustify
          Caption = 'Chave'
        end
        object CLabel115: TCLabel
          Left = 451
          Top = 22
          Width = 46
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
        object DBEA_ID: TCDBEdit
          Left = 59
          Top = 19
          Width = 386
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          Color = 14149350
          DataField = 'A_ID'
          DataSource = dsNFe
          ReadOnly = True
          TabOrder = 0
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEST_NOTA_NFE: TCDBEdit
          Left = 503
          Top = 19
          Width = 116
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          Color = 14149350
          DataField = 'ST_NOTA_NFE'
          DataSource = dsNFe
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 1
          DecimalControl = True
          KeyMode = kmNormal
        end
      end
      object CGroupBox11: TCGroupBox
        Left = 9
        Top = 289
        Width = 631
        Height = 160
        Caption = 'Cr'#237'ticas'
        TabOrder = 3
        object CDBGrid2: TCDBGrid
          Left = 2
          Top = 15
          Width = 627
          Height = 143
          TabStop = False
          Align = alClient
          DataSource = dsNFeCritica
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
              FieldName = 'CD_CRITICA'
              Title.Caption = 'C'#243'digo'
              Width = 64
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DESC_CRITICA'
              Title.Caption = 'Descri'#231#227'o da Cr'#237'tica'
              Width = 520
              Visible = True
            end>
        end
      end
    end
  end
  inherited PanBotoes: TCPanelGradient
    Top = 579
    Width = 1360
    ExplicitTop = 579
    ExplicitWidth = 1360
    inherited BtnFechar: TCBitBtn
      Left = 1271
      Anchors = [akTop, akRight]
      ExplicitLeft = 1271
    end
    object BtnExcluir2: TCBitBtn
      Left = 413
      Top = 2
      Width = 75
      Height = 25
      Action = actExcluir2
      Caption = '&Excluir'
      Glyph.Data = {
        36080000424D3608000000000000360000002800000020000000100000000100
        2000000000000008000000000000000000000000000000000000FF00FF00EFEF
        EF00BDBDBD00F7F7F700FF00FF00FFFFFF00DEDEDE00CECECE00BDBDBD00BDBD
        BD00B5B5B5009C9C9C00A5A5A500A5A5A500FF00FF00FF00FF00FF00FF00E7E7
        E700BDBDBD00F7F7F700FF00FF00FFFFFF00DEDEDE00CECECE00BDBDBD00BDBD
        BD00B5B5B50094949400A5A5A500A5A5A500FF00FF00FF00FF00EFEFEF00E7E7
        E7009C9C9C007B7B7B009494940094949400BDBDBD00DEDEDE00EFEFEF00E7E7
        E700C6C6C600B5B5B5009C9C9C00ADADAD007B7B7B00BDBDBD00EFEFEF00DEDE
        DE009C9C9C007B7B7B00949494008C8C8C00BDBDBD00DEDEDE00EFEFEF00E7E7
        E700C6C6C600B5B5B5009C9C9C00ADADAD007B7B7B00BDBDBD00EFEFEF009494
        9400C6C6C6009C9C9C008C8C8C00C6BDBD00C6A59C00CEAD9C00D6B5AD00DEBD
        B500CECECE00DEDEDE00CECECE00CECECE00DEDEDE00BDBDBD00E7E7E7009494
        9400BDBDBD009C9C9C0084848400BDBDBD00ADADAD00B5B5B500BDBDBD00C6C6
        C600CECECE00D6D6D600CECECE00C6C6C600D6D6D600B5B5B500E7E7E7009C9C
        9C00A5A5A500C6CEC60094736300B5522900BD6B4A00C6947B00DEBDB500DEC6
        B500C6C6C600C6C6C600CECECE00D6D6D600DEDEDE00DEDEDE00E7E7E7009C9C
        9C009C9C9C00C6C6C600737373006B6B6B007B7B7B009C9C9C00C6C6C600C6C6
        C600C6C6C600BDBDBD00CECECE00CECECE00DEDEDE00D6D6D600EFEFEF00B5B5
        B5007B7B7B00DEDEDE00A5948400BD7B5A00C68C6B00D6AD9400E7CEBD00E7D6
        C600C6BDBD00B5B5B500E7E7E700E7E7E700E7EFEF00ADADAD00EFEFEF00ADAD
        AD007B7B7B00DEDEDE00949494008484840094949400ADADAD00CECECE00D6D6
        D600BDBDBD00ADADAD00DEDEDE00DEDEDE00E7E7E700ADADAD00FFFFFF00CECE
        CE007B7B7B00C6C6C600CEC6C600C6846B00CE947300DEB59C00EFD6C600EFDE
        CE00DEBDAD00CEC6BD00D6DEE700BD735A00FFF7F700FF00FF00F7F7F700C6C6
        C6007B7B7B00C6C6C600C6C6C6008C8C8C009C9C9C00B5B5B500D6D6D600DEDE
        DE00BDBDBD00C6C6C600DEDEDE0084848400F7F7F700FF00FF00FFFFFF00DEDE
        DE0084848400ADADAD00E7E7EF00AD6B5200CE8C7300E7BDA500EFD6CE00EFD6
        CE00E7BDAD00D69C7B00D69C7B00C66B4A00FFFFFF00FF00FF00FFFFFF00D6D6
        D6007B7B7B00ADADAD00E7E7E7007B7B7B0094949400BDBDBD00D6D6D600DEDE
        DE00C6C6C600A5A5A500A5A5A5007B7B7B00FFFFFF00FF00FF00FF00FF00D6D6
        D6009C9C9C009CA59C00D6D6DE00A5736300CE947300D6AD9400EFD6CE00EFD6
        CE00E7BDAD00D69C7B00D6947300CE6B4200FFFFFF00FF00FF00FF00FF00D6D6
        D6009C9C9C009C9C9C00D6D6D6007B7B7B009C9C9C00B5B5B500DEDEDE00DEDE
        DE00C6C6C600A5A5A5009C9C9C007B7B7B00FFFFFF00FF00FF00FF00FF00E7E7
        E700ADADAD009C9C9C00BDC6C600A57B6300D6947300DEAD9C00EFD6C600EFDE
        D600E7BDAD00D69C7B00CE947300CE6B4200FFFFFF00FF00FF00FF00FF00E7E7
        E700ADADAD009C9C9C00BDBDBD007B7B7B009C9C9C00B5B5B500D6D6D600DEDE
        DE00C6C6C600A5A5A5009C9C9C007B7B7B00FFFFFF00FF00FF00FF00FF00FFFF
        FF00B5B5B500A5A5A500ADADAD00AD7B5A00CE8C6B00D6AD9400F7D6CE00F7DE
        D600EFC6B500DEA58400D6947300CE734A00FFFFFF00FF00FF00FF00FF00FFFF
        FF00B5B5B500A5A5A500ADADAD007B7B7B0094949400B5B5B500DEDEDE00E7E7
        E700CECECE00ADADAD009C9C9C0084848400FFFFFF00FF00FF00FF00FF00FF00
        FF00E7E7E700DEDEDE0094949400B56B4A00A5735A00AD948400BDADA500C6B5
        AD00B5A59C00AD846B00AD735200BD634200FFFFFF00FF00FF00FF00FF00FF00
        FF00E7E7E700DEDEDE008C8C8C00737373007B7B7B0094949400ADADAD00B5B5
        B500A5A5A5008C8C8C007B7B7B007B7B7B00FFFFFF00FF00FF00FF00FF00FF00
        FF00FFFFFF00F7F7F70084736300A5A5A500BDBDBD00CECECE00D6D6DE00DEDE
        DE00D6D6D600C6C6C600B5B5B5008C7B7B00C6C6C600FF00FF00FF00FF00FF00
        FF00FFFFFF00F7F7F70073737300A5A5A500BDBDBD00CECECE00D6D6D600DEDE
        DE00D6D6D600C6C6C600B5B5B5007B7B7B00C6C6C600FF00FF00FF00FF00FF00
        FF00FF00FF00FFFFFF00ADADAD00B5A59C00CEBDB500C6C6C600DEDEDE00BDBD
        BD00CECECE00D6D6D600C6BDBD00BDBDBD00A5A5A500FF00FF00FF00FF00FF00
        FF00FF00FF00FFFFFF00ADADAD00A5A5A500BDBDBD00C6C6C600DEDEDE00BDBD
        BD00C6C6C600CECECE00BDBDBD00BDBDBD00A5A5A500FF00FF00FF00FF00FF00
        FF00FF00FF00FFFFFF00DEDEDE00948C8C00BDBDBD00C6C6C600C6C6C600DEDE
        DE00D6D6D600D6D6D600B5ADAD00D6D6D600CECECE00FF00FF00FF00FF00FF00
        FF00FF00FF00FFFFFF00DEDEDE008C8C8C00BDBDBD00BDBDBD00C6C6C600D6D6
        D600D6D6D600D6D6D600ADADAD00CECECE00CECECE00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FFFFFF00F7F7EF00D6D6D600A5A5A500C6C6C600D6D6
        D600DEDEDE00E7E7E700F7F7F700F7F7F700FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FFFFFF00EFEFEF00D6D6D600A5A5A500BDBDBD00D6D6
        D600D6D6D600DEDEDE00F7F7F700F7F7F700FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FFFFFF00F7F7F700F7F7
        F700FFFFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FFFFFF00F7F7F700F7F7
        F700FFFFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
      NumGlyphs = 2
      TabOrder = 6
    end
    object EDPar: TCEdit
      Left = 516
      Top = 6
      Width = 49
      Height = 19
      BorderStyle = bsNone
      BevelKind = bkTile
      TabOrder = 7
      Text = 'EDPar'
      Visible = False
      DataType = ftString
      KeyMode = kmUSUpper
      Decimals = 0
    end
    object EDtpDocumento: TCEdit
      Left = 987
      Top = 6
      Width = 49
      Height = 19
      BorderStyle = bsNone
      BevelKind = bkTile
      TabOrder = 8
      Text = 'EDPar'
      Visible = False
      DataType = ftString
      KeyMode = kmUSUpper
      Decimals = 0
    end
    object btnImprimir: TCBitBtn
      Left = 494
      Top = 2
      Width = 75
      Height = 25
      Action = actImprimir
      Caption = '&Imprimir'
      Glyph.Data = {
        36080000424D3608000000000000360000002800000020000000100000000100
        2000000000000008000000000000000000000000000000000000FF00FF00FF00
        FF00F1F1F1FFB8B7B7FFFFFFFFFFFBFBFBFFFDFDFDFFFCFCFCFFFDFDFDFFFFFF
        FFFFFFFFFFFFFFFFFFFFC1BFC0FFF7F7F7FFFF00FF00FF00FF00FF00FF00FF00
        FF00F4F4F4FFFCFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F9F9FFFF00FF00FF00FF00E1E1E1FFC1C1
        C1FFB4B4B4FFB0B0B0FFFAFAFAFFE9E9E9FFECECECFFF3F3F3FFF1F1F1FFF4F4
        F4FFF5F5F5FFFFFFFFFFB8B7B7FFB7B7B7FFC0C0C0FFE2E2E2FFEAEAEAFFD3D3
        D3FFCACACAFFF2F2F2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFF9F9F9FFCCCCCCFFD3D3D3FFEAEAEAFF919191FF7E7F
        7EFF6B6B6BFFB4B4B4FFFBFBFBFFF0F0F0FFF3F3F3FFF3F3F3FFF1F1F1FFF1F1
        F1FFF4F4F4FFFFFFFFFFB8B7B7FF626262FF6B6C6BFF8F8F8FFFBCBCBCFFC6C6
        C6FFB2B2B2FFFCFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFA9A9A9FFB3B3B3FFB7B7B7FF7C7C7CFF6C6C
        6CFF6A6A6AFF969696FFC4C4C4FFC0C0C0FFC0C0C0FFC0C0C0FFC1C1C1FFC5C5
        C5FFC4C4C4FFC5C5C5FF949393FF727271FF797A78FF898989FFAFAFAFFFB3B3
        B3FFB1B1B1FFDDDDDDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFDBDBDBFFB9B9B9FFC0C0C0FFB7B7B7FF696969FF4F4F
        4FFF565656FF4A4949FF484848FF4A4A4AFF4B4B4BFF4A4A4AFF4A4A4AFF4A4A
        4AFF4B4B4BFF464646FF494848FF6D6D6DFF797979FF898989FFA0A0A0FF9797
        97FF9D9D9DFF919191FF8F8F8FFF919191FF929292FF919191FF919191FF9191
        91FF929292FF8D8D8DFF909090FFB4B4B4FFC0C0C0FFB9B9B9FF666666FF5151
        51FF545554FF2B2B2BFF212121FF222222FF222222FF212121FF212121FF2020
        20FF202020FF1F1F1FFF2A2A2AFF666665FF797878FF878787FF9D9D9DFF9898
        98FF9C9C9CFF737373FF686868FF696969FF696969FF686868FF686868FF6767
        67FF676767FF666666FF727272FFADADADFFC0C0C0FFB8B8B8FF676767FF4F4F
        4FFF555556FF4E4D4EFF444444FF464646FF464646FF464646FF474747FF4848
        48FF494949FF484848FF575756FF696869FF747474FF858686FF9F9F9FFF9797
        97FF9D9D9DFF959595FF8B8B8BFF8D8D8DFF8D8D8DFF8D8D8DFF8E8E8EFF8F8F
        8FFF909090FF8F8F8FFF9E9E9EFFB0B0B0FFBBBBBBFFB6B6B6FF6A6B6AFF5152
        52FF5C5D5DFF555554FF494949FF4C4C4CFF4F4F4FFF515151FF545454FF5656
        56FF575757FF555555FF616161FF6B6B6BFF717171FF888888FFA1A1A1FF9999
        99FFA4A4A4FF9C9C9CFF909090FF939393FF979797FF989898FF9C9C9CFF9D9D
        9DFF9E9E9EFF9C9C9CFFA8A8A8FFB2B2B2FFB8B8B8FFB9B9B9FF878787FF9898
        98FFABAAAAFF686868FF4E4E4EFF5C5C5CFF656565FF686868FF696969FF6666
        66FF5F5F5FFF505050FF717172FFC1C1C1FFBCBCBCFF9D9D9DFFBABABAFFDFDF
        DFFFF2F2F2FFB0B0B0FF959595FFA3A3A3FFACACACFFB0B0B0FFB0B0B0FFADAD
        ADFFA6A6A6FF979797FFB9B9B9FFFFFFFFFFFFFFFFFFCCCCCCFF919191FF9D9D
        9DFFACACACFF666666FF3F3F3FFF4F4F4FFF585858FF5C5C5CFF5D5D5DFF5959
        59FF525252FF414141FF696A69FFB3B3B3FFA3A4A3FF989898FFBDBDBDFFE4E4
        E4FFF3F3F3FFADADADFF878787FF979797FF9F9F9FFFA3A3A3FFA4A4A4FFA0A0
        A0FF999999FF888888FFB1B1B1FFFAFAFAFFEBEBEBFFC2C2C2FFB2B1B1FF6868
        68FF6F6F6FFF626161FF808080FF818181FF808080FF818181FF818181FF8282
        82FF848484FF828282FF616161FF727272FF6C6D6DFFB4B5B4FFC8C8C8FF9B9B
        9BFFA1A1A1FFA0A0A0FFC7C7C7FFC8C8C8FFC7C7C7FFC8C8C8FFC8C8C8FFC9C9
        C9FFCBCBCBFFC9C9C9FF9F9F9FFFA4A4A4FFA1A1A1FFCBCBCBFFFF00FF00FF00
        FF00FF00FF00A9A9A8FFF5F4F4FFECECECFFEBEBEBFFEDEDEDFFEEEEEFFFEFEE
        EFFFF1F2F2FFF8F8F8FFA8A6A7FFFF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00CECECEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFCCCCCCFFFF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00A8A8A8FFE7E7E7FFDFDFDFFFDEDEDEFFE0E0E0FFE2E3E1FFE2E2
        E2FFE4E5E4FFECEBECFFAAA9A9FFD9D9D9FF8D8D8DFFDBDBDBFFFF00FF00FF00
        FF00FF00FF00CECECEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFCDCDCDFFE3E3E3FFADADADFFE5E5E5FFFF00FF00FF00
        FF00FF00FF00A8A8A8FFE8E8E8FFE0E0E0FFDFDFDFFFE0DFE0FFE1E1E1FFE3E2
        E3FFE6E5E5FFEBEAEAFF979796FF505050FF626262FF464646FFFF00FF00FF00
        FF00FF00FF00CECECEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFC0C0C0FF898989FFA9A9A9FF7A7A7AFFFF00FF00FF00
        FF00FF00FF00C5C5C5FFE8E9E9FFE7E8E8FFE6E6E6FFE7E7E7FFE6E5E5FFE7E6
        E6FFEBEAEBFFE3E3E3FFB0B0B0FF303030FF707070FF646464FFFF00FF00FF00
        FF00FF00FF00DDDDDDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFCACACAFF747474FFB7B7B7FFA0A0A0FFFF00FF00FF00
        FF00FF00FF00D7D7D7FFC4C4C4FFC7C7C7FFC6C6C6FFC7C7C7FFD7D7D7FFD8D8
        D8FFDCDBDBFFD6D6D6FFE4E4E4FF7E7E7EFF1A1A1AFF939393FFFF00FF00FF00
        FF00FF00FF00E8E8E8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFEDEDEDFFA2A2A2FF5A5A5AFFB2B2B2FF}
      NumGlyphs = 2
      TabOrder = 9
    end
    object BtnInutilizar: TCBitBtn
      Left = 571
      Top = 2
      Width = 94
      Height = 25
      Caption = '&Inutilizar N'#186
      Glyph.Data = {
        36060000424D3606000000000000360000002800000020000000100000000100
        18000000000000060000120B0000120B00000000000000000000FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFDFBCADCCB6ADC4ABA2D5B2A4FF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFC6C6C6BC
        BCBCB3B3B3BCBCBCFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFE1BCACD9CDCAC7CACEB2B0B4B3A39DE1BCACFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFC6C6C6D1D1D1CA
        CACAB2B2B2A8A8A8C6C6C6FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFE1C0AFE8DCD9E3E5E8D0A796C49B8AB4AFB1B4A49FD4B2A3FF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFC8C8C8E0E0E0E5E5E5C0
        C0C0A7A7A7B1B1B1A9A9A9BBBBBBFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFE1BCACEFE6E2F5FEFFD39578BA3C08BC3D0AC27F63B6B3B6B2A19EE1BC
        ACFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFC6C6C6E8E8E8FAFAFAB6B6B67F
        7F7F818181B0B0B0B4B4B4A8A8A8C6C6C6FF00FFFF00FFFF00FFFF00FFFF00FF
        E1BCACF3E8E2FEFFFFD99E84C55C2EE5B39AE5B299C85D2EC1795AB5B2B6B2A2
        9ED3B1A2FF00FFFF00FFFF00FFFF00FFC6C6C6EAEAEAFEFEFEAEAEAE979797C7
        C7C7D3D3D3999999ABABABB4B4B4A8A8A8BABABAFF00FFFF00FFFF00FFE1BCAC
        F5E9E5FFFFFFDFA58BBA4210BF5020F8EBE4F7E8E0BF5020BE4613C27C5EB6B2
        B5B2A19EE1BCACFF00FFFF00FFC6C6C6EDEDEDFFFFFFD1D1D17F7F7F8C8C8CEE
        EEEEEFEFEF8D8D8D868686ADADADB4B4B4A8A8A8C6C6C6FF00FFE1BCABF5E8E3
        FFFFFFE8B99FC45520C14F1FC0501FF5E1D8F4DED4BF4C1DBE4A1BBF4613C179
        5AB4ADB0AE9F9CD4B2A2C6C6C6ECECECFFFFFFC3C3C39090908E8E8E8C8C8CEF
        EFEFEAEAEA8C8C8C8A8A8A878787ABABABB0B0B0A5A5A5BBBBBBE7C9BCFFFFFF
        F6E2D2D3783ECE6F38CA6530C65C2AF6E4DAF4DFD5BF4D1EBE4B1CBF4E1EBF44
        12C49784B3B2B5C2AAA2D1D1D1FFFFFFEFEFEFA6A6A6A1A1A19B9B9B969696F0
        F0F0F2F2F28C8C8C8B8B8B8C8C8C868686A4A4A4B3B3B3B2B2B2E7C9BCFFFFFF
        F8E6D7DD8F50D88348D37840CE6F38F8EAE1F5E3D9C05120BE4B1BBE4B1CBD47
        15D0AC9EC8CACECFB6ADD1D1D1FFFFFFEFEFEFB4B4B4AEAEAEA7A7A7A1A1A1F2
        F2F2FFFFFF8E8E8E8A8A8A8B8B8B878787B7B7B7CBCBCBBEBEBEE1BCABF5E8E2
        FFFFFFF3D7BADF9555D9894ADD9461F5DECDEDC9B3C8602DC1511FBC4614D69F
        87E3E8EBDACBC6DFBAA9C6C6C6EBEBEBFFFFFFD6D6D6B8B8B8AFAFAFBDBDBDEE
        EEEEEEEEEE9898988E8E8E868686C3C3C3E7E7E7D0D0D0C4C4C4FF00FFE1BCAC
        F3E5DFFFFFFFF6DEC3E4A160DF9658E1A070DB9263CE6F37CA622BE0AF97F4FE
        FFE7DAD5E1BCACFF00FFFF00FFC6C6C6E9E9E9FFFFFFEBEBEBC0C0C0B9B9B9C6
        C6C6BDBDBDA0A0A0989898D7D7D7F9F9F9DEDEDEC6C6C6FF00FFFF00FFFF00FF
        E0BAA9F2E5DEFFFFFFF8E0C6E7A865FBEFE3F9E7DBD57E40E8B79AFEFFFFEEE4
        E0E0BCACFF00FFFF00FFFF00FFFF00FFC4C4C4E8E8E8FFFFFFECECECC4C4C4F3
        F3F3F3F3F3A8A8A8DCDCDCFEFEFEE7E7E7C6C6C6FF00FFFF00FFFF00FFFF00FF
        FF00FFE1BCACF2E3DBFFFFFFF8E4CAF4D2A5EFC192F0CBA9FFFFFFF4E9E3E1BC
        ACFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFC6C6C6E6E6E6FFFFFFE1E1E1CC
        CCCCC0C0C0CCCCCCFFFFFFEBEBEBC6C6C6FF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFE0B9A7F2E2DBFFFFFFFBEFDDF8E7D3FFFFFFF7EBE6E1BFAEFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFC3C3C3E6E6E6FFFFFFEC
        ECECE5E5E5FFFFFFEEEEEEC7C7C7FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFE1BCACF2E2DAFFFFFFFFFFFFF6ECE7E1BCACFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFC6C6C6E6E6E6FF
        FFFFFFFFFFEEEEEEC6C6C6FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFE1BCABE7C9BCE7C9BCE1BCABFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFC6C6C6D1
        D1D1D1D1D1C6C6C6FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
      NumGlyphs = 2
      TabOrder = 10
      OnClick = BtnInutilizarClick
    end
  end
  inherited PanEmpresa: TCPanelGradient
    Width = 1360
    Height = 27
    ExplicitWidth = 1360
    ExplicitHeight = 27
    inherited DBEidCadEmpresa: TCDBEdit
      Width = 35
      ExplicitWidth = 35
    end
    inherited LookdescCadEmpresa: TCLookUp
      Left = 152
      Width = 214
      ExplicitLeft = 152
      ExplicitWidth = 214
    end
    inherited LookdescAbreviada: TCLookUp
      Left = 372
      Width = 148
      ExplicitLeft = 372
      ExplicitWidth = 148
    end
    inherited lookidCnpjCpf: TCLookUp
      Left = 755
      Top = 5
      Visible = False
      ExplicitLeft = 755
      ExplicitTop = 5
    end
    inherited LookidInscEstadual: TCLookUp
      Left = 551
      Top = 5
      ExplicitLeft = 551
      ExplicitTop = 5
      object lookEstadoEmp: TCLookUp
        Left = 97
        Top = 0
        Width = 29
        Height = 19
        Alignment = taLeftJustify
        BevelInner = bvSpace
        BevelOuter = bvLowered
        Color = 14149350
        ParentBackground = False
        TabOrder = 0
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
        CampoObrigatorio = True
        LookUpTable = 'vCadEmpresaFiscal'
        ReturnField = 'idEstado'
      end
    end
  end
  object CPanelGradient1: TCPanelGradient [5]
    Left = 0
    Top = 31
    Width = 1360
    Height = 0
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
  end
  inherited imgIcones: TImageList
    Left = 1056
    Top = 160
    Bitmap = {
      494C010109000D00380010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000003000000001002000000000000030
      000000000000000000000000000000000000000000000000000092635D00A467
      6900A4676900A4676900A4676900A4676900A4676900A4676900A4676900A467
      6900A4676900A467690000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000092635D00FCF3
      DE00FFEED500FFEED500FFEED500FFEED500FEEBD100FEEBD100FEEBD100FEEB
      D100F7EDD000A467690000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000092635D00F7EA
      D800FEBD8200FEBD8200FEBD8200FEBD8200FEBD8200FEBD8200FEBD8200FEBD
      8200F2E2C700A467690000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000092635D00F8EF
      DE00FAE9D500FAE7D400FAE7D300F8E6D100F8E6D000F8E6D000F8E6D000F8E6
      D000F0E2C900A467690000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000092635D00EAE2
      D400FEBD8200FEBD8200FEBD8200FEBD8200FEBD8200FEBD8200FEBD8200FEBD
      8200E1D3BA00A467690000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000098746800AA9F
      9500A69A9200A5999100A5998E00A4978B00A3968900A1958700A1938400A191
      8300A4938100986B650000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008C3816008C3816008C3816008C38
      16008C3816008C3816008C3816008C3816008C3816008C3816008C3816008C38
      16008C3816008C3816008C3816008C3816000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008C38160000000000A7756800E0E9
      EA00E1754500E1754500E1754500E1754500E1754500E1754500E1754500E175
      4500D7D8CA00A4676900000000008B3512000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008C3815008C3816008C3816008C38
      16008C3816008C3816008C3816008C3816008C3816008C3816008C3816008C38
      16008C3816008C3816008C3816008C3816000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000B17E6B00D7B0
      9C00D1AF9E00D1AF9E00CEAA9700CCA99500CCA79300CBA59100CAA59000CAA3
      8B00D4A78C00A467690000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000BB846E00FFFF
      FF00FFE3C100FFE2C000FFE2BF00FFE2BF00FFE2BF00FFE2BF00FFE2BF00FFE2
      BF00FFFCEF00A467690000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C58C7000FFFF
      FF00FEBD8200FEBD8200FEBD8200FEBD8200FEBD8200FEBD8200FEBD8200FEBD
      8200FBF6E900A467690000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CB917300FFFF
      FF00FEFFFF00FEFFFF00FEFEFE00FEFBFA00FBFAF700FBF8F600FAF7F300F8F4
      F000FCFAF000A467690000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D4987600FFFF
      FF00FEBD8200FEBD8200FEBD8200FEBD8200FEBD8200FEBD8200FEBD8200FEBD
      8200FFFCF400A467690000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D4987600FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFE00FFFE
      FA00FFFFFF00A467690000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D4987600CF8E
      6800CF8E6800CF8E6800CF8E6800CF8E6800CF8E6800CF8E6800CF8E6800CF8E
      6800CF8E6800A467690000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FFF0F0F0FFCBCBCBFFADAD
      ADFF9D9D9DFF909090FF848484FF818281FF818281FF868686FF939393FFA2A2
      A2FFB5B5B5FFD6D6D6FF000000FF000000FF0000000000000000000000006363
      6300636363006363630063636300636363006363630063636300636363006363
      630063636300636363006363630000000000000000FFF0F0F0FFCBCBCBFFADAD
      ADFF9D9D9DFF909090FF848484FF828181FF828180FF868686FF939393FFA2A2
      A2FFB5B5B5FFD6D6D6FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FFC7C7C7FF707070FF4E4E
      4EFF494D49FF6E776EFF919F92FFA6B4A6FFA6B5A6FF93A193FF6F7970FF4C4F
      4CFF535353FF888888FFE1E1E1FF000000FF0000000000000000A5736B00DEB5
      A500D6ADA500D6A59C00D6A59C00D6A59C00D6A59C00D6A59C00D6A59C00D6A5
      9C00D6A59C00BD948C006363630000000000000000FFC7C7C7FF707070FF4E4E
      4EFF4F4A45FF7D6F63FFA79886FFBEAB92FFC0AE94FFA79B8CFF696661FF4A49
      45FF535353FF888888FFE1E1E1FF000000FF0000000000000000000000000000
      0000BD4C00000000000000000000000000008424050084240500842405008424
      050084240500000000000000000000000000000000FFF4F4F4FFA5A6A5FF6E7A
      6EFFAFC4AFFFD2E5D2FFDAEADAFFDAEADAFFDBEADBFFD9EBDAFFD3E6D3FFB3C7
      B3FF737F73FFB0B0B0FF000000FF000000FF0000000000000000BD847300F7E7
      D600990033009900330099003300F7CEAD00F7CEAD00FFD6AD00FFD6AD00FFD6
      AD00FFD6A500E7BDB5006363630000000000000000FFF4F4F4FFA6A5A5FF806F
      61FFD1B296FFF3D8BDFFF5E1CBFFF5DFC4FFF7EBDBFFF1F1F0FFE0DEDAFFC8B5
      96FF887B65FFB1B0AFFF000000FF000000FF0000000000000000000000000000
      0000BD4C0000BD4C0000BD4C0000C24F000084240500FFC17900E58E4000D36E
      1A0084240500000000000000000000000000000000FFE1E2E1FF7A8C79FFADCA
      ACFFBFDABEFFBED7BBFFBCD4B8FFBBD4B8FFBBD4B8FFBBD4B8FFBED7BBFFBFDA
      BEFFB0CEB0FF7C907CFFDEE0DEFF000000FF0000000000000000BD847300EFE7
      DE00FFE7CE00FFE7CE00FFE7C600FFDEC600F7CEAD00FFD6B500FFD6B500F7CE
      AD00FFD6A500E7BDB5006363630000000000000000FFE3E1E0FF947B6AFFD5B1
      96FFE5C2A5FFD0B69EFFDFC4A9FFE7C9ABFFEBE5DFFFF2F5F9FFE4DDD1FFE5CA
      A1FFE0C49AFF9C8B6DFFE1DFDDFF000000FF0000000000000000000000000000
      0000BD4C00000000000000000000000000008323040084240500842305008323
      040084240500000000000000000000000000000000FF768D7AFF80B08DFF97B8
      93FF90A896FF90A4A0FF90A3A6FF92A5AAFF96A4ACFF92A2A6FF8EA3A0FF8EA4
      97FF91AE91FF86AE86FF768C76FF000000FF0000000000000000CE847B00EFE7
      DE00990033009900330099003300990033009900330099003300FFD6B500F7CE
      AD00FFCEBD00F7CEAD006363630000000000000000FF967564FFBD815DFFCFA7
      8BFFD9CAC0FF9D8F85FF8A735EFFD1B69DFFE7E9EAFFE8E7E6FFCDAC81FFD8AC
      71FFDAB57FFFC9A162FF9A845EFF000000FF0000000000000000000000000000
      0000BD4C00000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B4BBB3FF548560FF65A990FF657F
      89FF6F7CA2FF7381A9FF7886B1FF7088B2FF5C94ADFF698FB6FF717EA9FF6C7B
      A2FF616D89FF637E66FF5B8557FFADB5ADFF0000000000000000C6947B00EFE7
      DE00F7E7D600FFEFD600F7E7D600FFE7C600FFDEC600FFE7CE00FFD6B500FFD6
      B500F7CEAD00F7CEAD006363630000000000C0B2ADFF9C502EFFC06D43FFC18C
      6CFFD1CDCCFFAFAFAFFF7E746DFFB5AFA9FFE8EBEEFFBCAB99FFAD7331FFAD76
      31FFA67B42FFBC873BFFA16E1FFFBAB1A1FF0000000000000000000000000000
      0000BD4C00000000000000000000000000008424050084240500842405008424
      050084240500000000000000000000000000758875FF619560FF55795EFF6172
      9DFF7284AFFF7E94BEFF7A8FBCFF7B8D9DFF639194FF5C8B9BFF7283B2FF7081
      ABFF5D709FFF486D7CFF519778FF708673FF0000000000000000CE9C8400E7E7
      E700990033009900330099003300990033009900330099003300990033009900
      3300F7CEAD00FFCEBD0063636300000000008F7064FFA65433FFAC5B34FFB076
      58FFDDD8D6FFCDCFD0FFB7B7B7FFC5C6C6FFD6D6D6FF8C8378FF796A59FF8980
      77FF8B7861FFB17B31FFB47D2DFF927D5BFF0000000000000000000000000000
      0000BD4C0000BD4C0000BD4C0000BD4C000084240500FFC17900E58E4000D36E
      1A0084240500000000000000000000000000567254FF5D9D72FF4E7E69FF6574
      9AFF7F97C3FF93B2DAFF7991B7FF5C9CA2FF599FA2FF697D89FF7A91BFFF778C
      B6FF5B6C99FF3F5C64FF57966EFF567559FF0000000000000000DEA58400EFEF
      E700FFEFDE00FFEFDE00F7E7D600FFEFD600FFDEC600FFE7CE00FFDEC600FFE7
      C600F7CEAD00E7C6B50063636300000000007F4B3CFFAA5335FFA75331FFAA6F
      52FFDBD6D4FFE2E4E5FFDBDBDBFFD9D9DAFFC7C8C8FFB0B0B1FFC0C5CAFFD6D1
      CBFFC29867FFB57A30FFB57B2CFF886735FF0000000000000000000000000000
      0000BD4C00000000000000000000000000008323040084240500842305008323
      0400842405000000000000000000000000004E6E4EFF619462FF5C8F5EFF506B
      73FF7B92C0FF97B5DAFF869FC9FF5B758FFF3A7B87FF6B85A6FF8CA7D2FF7283
      B0FF4A5C71FF48826DFF5C9B72FF506F4DFF0000000000000000DEA58400FFFF
      F700990033009900330099003300990033009900330099003300990033009900
      3300FFDEBD00FFCEBD006363630000000000834131FFB55134FFAF4F2FFFAC6B
      50FFDAD3D1FFDFE1E2FFE2E2E2FFE2E2E1FFDFDFDFFFE3E7E9FFDFD7CFFFC187
      4FFFB16F2BFFB47227FFB5711EFF865C22FF0000000000000000000000000000
      0000BD4C00000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000557053FF5C9469FF52A289FF528E
      6AFF4D6261FF788EB5FF94B3D9FF8DA7D0FF8A9FC8FF8CA7D1FF768CB9FF4B67
      7BFF527B53FF619865FF5E9262FF547254FF0000000000000000DEA58400FFFF
      F700F7EFE700F7EFE700FFEFD600F7E7D600FFEFD600FFEFD600F7E7D600FFE7
      CE00FFDEC600E7C6B50063636300000000007C483CFFA44A34FFA14A30FFA466
      50FFD6D1CFFFDDDEDFFFDEDEDEFFDEDEDEFFE0E4E7FFD6D0CCFFB68055FFAD65
      25FFAC7137FFAF7333FFAF722CFF856135FF0000000000000000000000000000
      0000BD4C00000000000000000000000000008424050084240500842405008424
      050084240500000000000000000000000000748673FF588C61FF5A9870FF6295
      5FFF5B8C56FF445D4EFF657A99FF7E9BC2FF819BC3FF6E81A9FF54696EFF4C87
      67FF559E7BFF60905EFF5B8B5BFF6E826EFF0000000000000000DEA58400FEFD
      FD0099003300CC333300CC333300CC333300FFEFD60099003300990033009900
      3300FFE7CE00E7C6B50063636300000000008C6A64FF9C4533FF9F4630FFA061
      4DFFD4CFCDFFDADCDCFFDBDBDBFFDDE1E3FFD5C8C1FFAE7753FFA85D28FFAD65
      2DFFA86B35FFAC6E31FFA86B2BFF8E765BFF0000000000000000000000000000
      0000BD4C0000BD4C0000BD4C0000BD4C000084240500FFC17900E58E4000D36E
      1A0084240500000000000000000000000000B3BAB3FF4E754DFF5E8A5CFF5A7F
      5EFF5B835DFF5F905CFF51604FFF766A76FF52575EFF55765CFF639261FF6696
      65FF629569FF629362FF4D764DFFACB4ACFF0000000000000000DEA58400FEFD
      FD0099003300FFCC6600FFCC660099666600E7E7E700FFF7E700FFEFDE00FFEF
      DE00FFE7CE00E7BDB5006363630000000000BFB0AEFF8F3A2DFFAB4834FFA665
      54FFD5CFCEFFDADCDCFFDDE0E1FFD5C6C0FFBA7451FFA65D33FFB16333FFB465
      2EFFAC6B39FFB06A2DFF92551CFFB9AEA2FF0000000000000000000000000000
      0000BD4C00000000000000000000000000008323040084240500842305008323
      040084240500000000000000000000000000000000FF6A7F69FF5F7A61FF848D
      A4FF8996B0FF7F958FFF828782FFA29692FF84987EFF87AF87FF87AC87FF87AB
      87FF8CB08CFF709770FF647A64FF000000FF0000000000000000DEA58400FEFD
      FD0099003300FFFF6600FFECCC0099666600FFEFD600F7E7D600FFD6CE00FFD6
      CE00F7B5AD00F7B5AD006363630000000000000000FF855D58FF9F5548FFBA8A
      80FFDDDAD9FFE3E6E7FFD9CFCDFFC18E79FFBB7B5EFFB78368FFBC8565FFBF86
      63FFBF8F6EFFAB764CFF87694FFF000000FF0000000000000000842405008424
      0500842405008424050084240500000000000000000000000000000000000000
      000000000000000000000000000000000000000000FFE2E4E2FF6A7E6AFFB0BC
      B7FFC5CEDCFFBBC3D1FFB2BEBFFFAFC3B1FFB8CEB8FFB8CDB8FFB9CEB9FFC0D4
      C0FFB8CCB8FF6B7F6BFFDEE1DEFF000000FF0000000000000000DEA58400FEFD
      FD00FF993300FF993300FF993300FF993300FFFFF700F7EFE700F7A54200F7A5
      4200D68C4200636363000000000000000000000000FFE5E0E0FF835D57FFCFB4
      AFFFF3F3F4FFEAE4E3FFD4B8AFFFD3ADA0FFD5B2A4FFD2B4A6FFD6B6A6FFDDBE
      ADFFD3B8A8FF896C58FFE3DFDCFF000000FF000000000000000084240500FFC1
      7900E58E4000D36E1A0084240500000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FFE6E8E6FF8F9B
      8FFFC4CDC2FFEAF1E9FFF4FAF2FFF3F9F3FFF2F8F2FFF3F9F3FFECF3ECFFC8D2
      C8FF8E9A8EFFE2E5E2FF000000FF000000FF0000000000000000DEA58400FEFD
      FD00FEFDFD00FEFDFD00FFFFF700FEFDFD00FFFFF700FEFDFD00DEA58400E7AD
      6B0063636300000000000000000000000000000000FF000000FFE9E5E4FF9E8B
      88FFDCD2D1FFF7EBE9FFFAEEEBFFFCEFECFFFCF0ECFFFCF2EEFFF8EBE5FFD9C6
      BEFF9F8E84FFE6E2E0FF000000FF000000FF0000000000000000832304008424
      0500842305008323040084240500000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FFC5CAC5FF9FA9A0FFA6B0A6FFB1BBB1FFB1BBB1FFA6B0A6FF9FA89FFFC2C8
      C2FF000000FF000000FF000000FF000000FF0000000000000000DEA58400DEA5
      8400DEA58400DEA58400DEA58400DEA58400DEA58400DEA58400DEA584006363
      630000000000000000000000000000000000000000FF000000FF000000FF0000
      00FFCEC3C2FFAD9A98FFB1A19FFFBFAEAAFFBFAFAAFFB2A39FFFAE9D97FFCBC1
      BDFF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FFEDED
      EDFFD0D0D0FFA4B1B2FF8BADB2FFBCC2C2FFECECECFFDFDFDFFF8E8E8EFFF9F9
      F9FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FFFCFCFCFF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FFEAEAEAFFA6A5A6FF7F7C88FF726E82FF7D7A89FFA09FA2FFE0E0
      E0FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FFE2E1E1FFC7C7C6FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FFFDFDFDFFC5C4
      C4FFBDBBBAFFB5C3C5FFA5E4EBFF8AB2B6FF96A0A2FFABABABFF4B4B4BFFA3A3
      A3FFF6F6F6FFFEFEFEFF000000FF000000FF000000FF000000FF000000FFFBFB
      FBFFDEDEDEFFAFAEAFFF858587FF707275FF6C7074FF676668FF919192FFCBCA
      CAFFF2F2F2FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FFA7A6A4FF4E4265FF3C258DFF3D1FA1FF4020A5FF3F1FA4FF371D95FF3F34
      6CFF9F9FA1FFFDFDFDFF000000FF000000FF000000FF000000FF000000FFFDFD
      FDFFA2A09EFFB0B0AFFFB4B2AEFF7A7976FFE3E3E3FFB8B7B7FFBBBABAFF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FFF9F9F9FFB8B7
      B7FFF1EFEEFFFDF4F1FFFFE5E0FFFDF9F4FFE3E5E5FFA4A4A4FF535150FF7675
      75FFAAA9A9FFCBCBCBFFE1E1E1FFF9F9F9FF000000FFF7F7F7FFDEDEDEFF8383
      83FF696F74FF8B9399FFAAB5BBFFCAD7DEFFDFEBEFFF86888BFF787879FF595A
      5BFF646363FFB1B1B1FFEEEEEEFFFEFEFEFF000000FF000000FFFEFEFEFF8481
      80FF503B7BFF4226ABFF4333B4FF4157C3FF466DD3FF4569CEFF434DC2FF472E
      B2FF4F477FFF828284FFFBFBFBFF000000FF000000FF000000FFEFEFEFFFC7C7
      C6FFC8C4BFFFA19D98FFD0CCC6FFAAA8A3FF989692FFC8C4BDFF8F8D8DFF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FFF0F0F0FFB8B6
      B6FFF8F5F5FFEEEAEBFFF1F2F3FFEAE7E8FFEEE3E3FFF6F6F6FF9E9D9BFF4549
      45FFA9A6A6FFC4C0C0FFB3B1B1FFE1E1E1FFFAFAFAFFE6E6E6FFC6C6C6FF8085
      87FFA8B4BBFFB8C6CDFFC6D4DCFFDBEAF0FFEDF6F9FF909496FF8C8D8EFF7D7E
      7EFF686868FF8C8C8CFFCECECEFFF8F8F8FF000000FF000000FF9A9996FF5E4B
      7BFF4932ACFF444BBDFF3D90E0FF389BE5FF416ECDFF4060C5FF3D77D4FF5F8B
      D9FF9D98D5FF696391FF9E9E9FFF000000FF000000FF000000FFB3B2B0FFA9A7
      A4FFB9B7B6FFCDC9C5FFB8B5B4FFCBC8C3FFD5D1CCFFCFCBC4FF7C7B79FFBFBF
      BEFFB9B8B8FFEDEDEDFF000000FF000000FF000000FF000000FFDFDFDFFFBDBA
      BAFFD3CFCEFFBDBBBAFFE2DEDCFFF2F0EFFFECE9E9FFE2DFDDFFEAEAEAFF696A
      66FF1E201DFFF5F3F3FFC2BFBFFFE7E7E7FFFEFEFEFFF9F9F9FFEFEFEFFF8D92
      94FFACB9C0FFBCCAD2FFCAD9E1FFDFEDF4FFF0F7FAFF93979AFF8F9191FF8081
      81FF707070FFCBCBCBFFEAEAEAFFFCFCFCFF000000FFE6E6E6FF5E5159FF4C3C
      9AFF4246A8FF429BE3FF4373CDFF426CCDFF403FB5FF3915A0FF3E1CA5FF7194
      DBFF9AB6E9FF9687D5FF565269FFEEEEEEFF000000FFF7F7F7FFABA8A6FFCFCB
      C6FFA09E9BFFB2B1B0FFD4D4D4FFBBBAB9FFB3B1AFFFD4D0CAFFC5C1BAFFC9C1
      B9FF9B9793FFF0F0F0FF000000FF000000FF000000FFFBFBFBFFBCBFC0FFD2D3
      D4FFD7CFCEFFF1EDEEFFEBE7E5FFF8F2F3FFEFECEAFFEDE7E8FFF6F2F0FFD6D2
      D2FF0F100EFF9C9998FFB7B6B6FFF7F7F7FF000000FF000000FF000000FF9095
      98FFAFBDC4FFC0CFD7FFCEDEE7FFE4F1F7FFF2F9FBFF979B9DFF939494FF8384
      85FF767676FFFEFEFEFF000000FF000000FF000000FF999895FF66547CFF3F2F
      9CFF4478CBFF3F80D1FF47379CFF6163BAFF5E79C9FF493FAFFF4852BBFF829D
      DCFF96ADE3FF9AA4E7FF594E86FFB4B4B4FF000000FFC0BEBDFFBDB9B2FFAFAE
      A9FFCDCCCCFF000000FF000000FF000000FFF3F2F2FFBAB8B6FFBDBAB7FFD4CC
      C3FF999896FF000000FF000000FF000000FFFEFEFEFFE2E3E4FF9EB8BBFFEFEF
      EFFFC2BCBBFFD7D4D3FFECE8E8FFF3EDEDFFF9F5F6FFFBF7F6FFF1EDEDFFECE7
      E8FFBBBBBAFF535352FFB7B7B7FFFCFCFCFF000000FF000000FF000000FF9095
      98FFAFBDC4FFC5D4DCFFD3E4EDFFE8F5FAFFF5FAFCFF999EA1FF909192FF8688
      88FF777777FF000000FF000000FF000000FF000000FF67615CFF665290FF3D3A
      A6FF4392DEFF4348A9FF6556ADFF9695CEFF94BDEBFF899FDBFF7C80CBFF8EA5
      E2FF95B1E5FF96B1E7FF5B4FA2FF808083FF000000FFDFDFDFFFBFBBB5FF8C8B
      89FF000000FF000000FF000000FF000000FF000000FF000000FFB7B5B2FFD9D4
      CCFF8B8986FF989897FFD7D6D6FF000000FFF2F2F2FFADBDBFFFADE2E7FFECC6
      C1FFAAADAEFFA4A2A1FFBCB9B9FFB9B7B5FFB2AFAEFFC6C3C2FFFFFFFFFFF6F1
      F1FFC2C0C0FF767675FF999999FFF5F5F5FF000000FF000000FF000000FF8C91
      93FF769AA7FF3E97B2FF7ABDD3FFECF8FDFFF6FBFDFF9DA1A4FF7B7D7FFF8A8C
      8CFF787879FF000000FF000000FF000000FF000000FF594D49FF614D93FF3F43
      A9FF3E95DCFF4655B4FF7E75C1FF9AADE5FF909FDDFF9199DBFF8B74C5FF8F96
      D8FF9090D4FF90A9E4FF4A3CA6FF6E6C72FF000000FFB8B6B5FFC3C0BBFF9997
      96FFFEFEFEFF000000FF000000FF000000FF000000FF000000FFC0BFBEFFBFBC
      B9FFD5D1CBFFC1BDB7FFB5B4B3FF000000FFBCC7C8FF87CAD2FFCCF9FAFFE0C2
      BEFFBBBDBCFFCBC7C6FFC2BFBDFFBCB9B8FFC6C3C2FFBEBBB7FFAEABAAFFC5C2
      C1FF929191FFBCBCBCFF595958FFD2D2D2FF000000FF000000FF000000FF888B
      8EFF9CA9AEFF3CA0BDFFCAE2EDFFF0FCFEFFF8FCFDFF9FA3A7FF797A7DFF8E90
      90FF7A7B7BFF000000FF000000FF000000FF000000FF544843FF7C6BA0FF787C
      C1FF7EA8DDFF698ED2FF728AD4FF8B81CCFF8B7BCAFF93A7E0FF9297D7FF94A8
      E1FF9284CFFF8793DBFF3D2E9AFF716F73FF000000FFDBDBDBFFBFBCB8FF8786
      84FFFCFCFCFF000000FF000000FF000000FF000000FF000000FFFAFAFAFFAFAD
      ABFFCDC9C4FFA7A6A5FF000000FF000000FFABC4C7FF8DD4DDFFE7EFEEFFC1AE
      ACFFB4B4B5FFC2BFBDFFB9B5B6FFC7C4C2FFBFBBBCFFC2BFC0FFC4C1C0FFABA8
      A9FFBEBAB8FF979797FF80807FFF575756FF000000FF000000FFF3F3F3FF8E92
      93FFB5C0C4FFB3CED9FFE2F5FCFFF0FAFBFFF3F6F7FFA0A5A9FF7C7E81FF9193
      94FF7B7C7DFF000000FF000000FF000000FF000000FF5A504BFFA695AEFF9190
      CEFF96AEE6FF9191D5FF8DB4E6FF9090D5FF8B7FCCFF7D92D7FF8894D9FF949B
      DAFF97A9E0FF6489D9FF3C2A8AFF888686FF000000FFECEBEBFFC4C0BBFF8A89
      87FFDCDCDCFF000000FF000000FF000000FF000000FF000000FFEBEBEBFFBAB8
      B6FFC0BDB9FF7A7977FFDFDFDFFF000000FFEEEFEFFFBFC5C6FFD8DBDBFFD2CE
      CEFFD1CECEFFB3B1B2FFBBBABAFFA5A4A4FFBCBBBBFFB6B5B5FFB9B5B6FFC3C0
      C0FFE0DDDDFFAFAFAFFF929292FF4F4E4EFF000000FF000000FF000000FF959B
      9FFFAAB6BCFFB3BFC5FFC8D5D9FFE8EEEFFFECEFF0FF9EADA6FF809294FF7A83
      7FFF838786FF000000FF000000FF000000FF000000FF7A7674FFA38D94FF9384
      CDFF919DDDFF939EDCFF9296D7FF9198D9FF99AFE7FF6D6CC2FF535BBFFF6768
      C4FF608CD9FF4960CEFF412B62FFBDBDBCFF000000FFF6F6F6FFBCBBBAFFB8B5
      AFFF979695FFF9F9F9FF000000FF000000FF000000FF000000FFE1E1E1FFAAA8
      A5FFD2CFCAFFC9C5BEFF929190FFFEFEFEFFFCFCFCFFC7C7C7FFE2DFDEFFB8B7
      B6FFF2EFEEFFFFFFFFFFFAF6F5FFE2DFDEFFDEDAD9FFCFCBCAFFB2B1AFFFCBCA
      C8FFBEBDBCFFE2E2E2FFC9C9C9FFA0A0A0FF000000FF000000FF000000FF9CA4
      A8FFC8D8E0FFDBEDF4FFEFFDFDFFFDFFFFFFFCFEFFFFA0A8AAFF767A7DFF6669
      6AFF7E8081FF000000FF000000FF000000FF000000FFC5C5C5FF705D56FFA590
      BFFF7C70C8FF97B2E7FF949FDCFF8F7FCCFF999EDCFF797AC7FF6079D1FF5572
      CAFF3D74D7FF533EA3FF564D50FFF7F7F7FF000000FF000000FFE5E4E4FFC4C1
      BEFF908F8CFFAAA9A9FFF8F8F8FF000000FF000000FF000000FFADACABFFCDCA
      C6FFA6A39FFFB1B0AFFFE4E3E3FF000000FFF6F6F6FFC2C1C1FFF4F3F2FFF9F8
      F7FFFBF7F6FFEEEBEAFFE9E5E4FFF3EFEEFFF5F2F0FFFCF9F7FFF6F3F1FFECE9
      E8FFBFBEBEFFFAFAFAFFFCFCFCFFF5F5F5FF000000FF000000FF000000FF9FA8
      ADFFD4E6F0FFE7FAFEFFF9FFFFFFFFFFFFFFFDFFFFFFB0B7BAFFAAAEAFFF989B
      9CFF7D7F80FF000000FF000000FF000000FF000000FFFEFEFEFF66625FFFA189
      8AFF775FB0FF534BB9FF6F9AE1FF87A7E4FF89A5E2FF5D78D1FF4E6DCEFF4373
      D5FF574FB0FF5D475AFFA8A8A6FF000000FF000000FF000000FFF9F9F9FFCECD
      CDFFC8C5BFFF9D9B97FF8E8D8CFFC3C2C2FFC5C5C5FFA09F9EFFA3A3A1FFCDCB
      C9FF979591FFB8B8B8FF000000FF000000FFFAFAFAFFD5D5D5FFC4C3C3FFC9C7
      C7FFD5D3D3FFE5E3E3FFF1F0F0FFF8F7F7FFFBFAFAFFFCFAFAFFEEEDEEFFE2DF
      DFFFD0D0D0FFFEFEFEFF000000FF000000FF000000FF000000FF000000FFABB2
      B5FFEEFBFDFFFCFEFFFFFEFFFFFFFFFFFFFFFBFBFBFFD0D4D6FFD7DEE1FFC1C8
      CAFF999D9EFF000000FF000000FF000000FF000000FF000000FFE4E4E4FF4F49
      45FFA08884FF9174AFFF4B3CADFF4550BDFF4860CAFF4167CCFF4958C0FF6F5B
      A4FF68515AFF7C7B78FF000000FF000000FF000000FF000000FF000000FF0000
      00FFB9B7B5FFBEBBB7FFB8B5B0FFA8A7A3FFA2A19EFFC4C2BFFFC1C0BDFFA09F
      9EFFB6B4B2FFB7B6B5FF000000FF000000FF000000FFFDFDFDFFF8F8F8FFF0F0
      F0FFE3E3E3FFD3D3D3FFC8C7C7FFC4C3C3FFC9C8C8FFD6D3D3FFEAE7E7FFCBCA
      C9FFE8E8E8FF000000FF000000FF000000FF000000FF000000FF000000FFF1F1
      F1FFC2C3C4FFBCBDBEFFBDBEBFFFBCBEBEFFBABBBCFFC2C3C3FFC0C1C2FFBFC0
      C1FFE3E3E3FF000000FF000000FF000000FF000000FF000000FF000000FFDADA
      DAFF595653FF746258FFA1878FFF987A9EFF9071A2FF8E6D98FF836779FF5A4B
      46FF908F8DFF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FFE7E7E7FFB5B3B0FFAFADAAFFC7C2BCFFA7A4A2FFBFBDBBFF9D9B
      9AFF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FFFCFCFCFFF2F2F2FFE4E4E4FFD3D2D2FFC8C7C7FFCBCA
      CAFFF5F5F5FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FFFBFBFBFFA8A8A8FF64625EFF534B43FF53473DFF5B524CFF7C7977FFCBCB
      CBFF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FFFAFAFAFFFEFEFEFFBDBBB9FFE8E8E8FFDDDDDDFFE6E6
      E6FF000000FF000000FF000000FF000000FF424D3E000000000000003E000000
      2800000040000000300000000100010000000000800100000000000000000000
      000000000000000000000000FFFFFF00C003000000000000C003000000000000
      C003000000000000C003000000000000C003000000000000C003000000000000
      000000000000000040020000000000000000000000000000C003000000000000
      C003000000000000C003000000000000C003000000000000C003000000000000
      C003000000000000C0030000000000008003E0018003FFFF8001C0018001F707
      8003C0018003F0078001C0018001F7078001C0018001F7FF0000C0010000F707
      0000C0010000F0070000C0010000F7070000C0010000F7FF0000C0010000F707
      0000C0010000F0070000C0010000F7078001C0018001C1FF8001C0038001C1FF
      C003C007C003C1FFF00FC00FF00FFFFFE00FFF7FF80FFCFFC003E007F003E01F
      C0008000C001C01FC0000000C001C003C0000000800080038000E00380008707
      0000E00780008FC10000E007800087C10000E007800087C30000C007800087C1
      0000E007800083C00000E0078000C1C10000E0078001C0030003E007C003F003
      8007E007E007F80FFC07FFFFF00FFC0F00000000000000000000000000000000
      000000000000}
  end
  inherited Acao: TActionList
    Left = 1120
    Top = 160
    object actGerarRateio: TAction
      Caption = '&Gerar Rateio'
      ImageIndex = 6
      OnExecute = actGerarRateioExecute
    end
    object actExcluir2: TAction
      Caption = '&Excluir'
      ImageIndex = 2
      OnExecute = actExcluir2Execute
    end
    object actImprimir: TAction
      Caption = '&Imprimir'
      ImageIndex = 7
      OnExecute = actImprimirExecute
    end
  end
  inherited cdsPadrao: TClientDataSet
    CommandText = 'SELECT * FROM Nf'
    AfterScroll = cdsPadraoAfterScroll
    Left = 1088
    Top = 96
    object cdsPadraoidEmpresa: TIntegerField
      FieldName = 'idEmpresa'
      Required = True
    end
    object cdsPadraoidCadEmpresa: TSmallintField
      FieldName = 'idCadEmpresa'
      Required = True
    end
    object cdsPadraoidDocSerie: TStringField
      FieldName = 'idDocSerie'
      Required = True
      FixedChar = True
      Size = 5
    end
    object cdsPadraoidNf: TIntegerField
      FieldName = 'idNf'
      Required = True
    end
    object cdsPadraoidCliente: TIntegerField
      FieldName = 'idCliente'
      Required = True
    end
    object cdsPadraoidCadCliente: TSmallintField
      FieldName = 'idCadCliente'
      Required = True
    end
    object cdsPadraoidTab: TSmallintField
      FieldName = 'idTab'
    end
    object cdsPadraoidSafra: TIntegerField
      FieldName = 'idSafra'
    end
    object cdsPadraoidTpNotaFiscal: TSmallintField
      FieldName = 'idTpNotaFiscal'
      Required = True
    end
    object cdsPadraodtEmissao: TSQLTimeStampField
      FieldName = 'dtEmissao'
      Required = True
    end
    object cdsPadraodtSaida: TSQLTimeStampField
      FieldName = 'dtSaida'
      Required = True
    end
    object cdsPadraoidNatureza: TSmallintField
      FieldName = 'idNatureza'
      Required = True
    end
    object cdsPadraomovEstoque: TStringField
      FieldName = 'movEstoque'
      Required = True
      FixedChar = True
      Size = 1
    end
    object cdsPadraomovCusto: TStringField
      FieldName = 'movCusto'
      Required = True
      FixedChar = True
      Size = 1
    end
    object cdsPadraoidProdDeposito: TSmallintField
      FieldName = 'idProdDeposito'
    end
    object cdsPadraoidResultado: TIntegerField
      FieldName = 'idResultado'
    end
    object cdsPadraoidRateio: TSmallintField
      FieldName = 'idRateio'
    end
    object cdsPadraostNf: TStringField
      FieldName = 'stNf'
      Required = True
      FixedChar = True
      Size = 15
    end
    object cdsPadraotpEmissao: TStringField
      FieldName = 'tpEmissao'
    end
    object cdsPadraochaveNFe: TStringField
      FieldName = 'chaveNFe'
      Size = 44
    end
    object cdsPadraoidNfProdutor: TIntegerField
      FieldName = 'idNfProdutor'
    end
    object cdsPadraonrSerieProdutor: TFMTBCDField
      FieldName = 'nrSerieProdutor'
      Precision = 3
      Size = 0
    end
    object cdsPadraodtEmissaoProdutor: TSQLTimeStampField
      FieldName = 'dtEmissaoProdutor'
    end
    object cdsPadraoobsNf: TStringField
      FieldName = 'obsNf'
      Size = 2000
    end
    object cdsPadraocompNf: TStringField
      FieldName = 'compNf'
      Size = 3000
    end
    object cdsPadraoseloFiscal: TStringField
      FieldName = 'seloFiscal'
      Size = 15
    end
    object cdsPadraoChaveNFPe: TStringField
      FieldName = 'ChaveNFPe'
      Size = 44
    end
  end
  inherited dspPadrao: TDataSetProvider
    DataSet = sdsNf
    Left = 1056
    Top = 96
  end
  inherited dsPadrao: TDataSource
    Left = 1120
    Top = 96
  end
  inherited ImgBotoes: TImageList
    Left = 1088
    Bitmap = {
      494C010108000D00380020001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000800000003000000001002000000000000060
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
      0000000000000000000000000000000000000000000000000000F1F1F1FFB8B7
      B7FFFFFFFFFFFBFBFBFFFDFDFDFFFCFCFCFFFDFDFDFFFFFFFFFFFFFFFFFFFFFF
      FFFFC1BFC0FFF7F7F7FF00000000000000000000000000000000F4F4F4FFFCFC
      FCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFF9F9F9FF00000000000000000000000000000000000000000000
      00000000000000000000ADC6CE006B847B00DE5A3100A5391000C6C6C600FFFF
      FF00395A7B00527BAD00426B9400BDBDC6000000000000000000000000000000
      00000000000000000000BDBDBD00737373007B7B7B0052525200C6C6C600FFFF
      FF005A5A5A007B7B7B006B6B6B00BDBDBD000000000000000000000000000000
      00008463630084636300C6636300C66363008442420000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000A5A5A500A5A5A50084848400A5A5A5008484840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000D9D9DAFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000E3E3E3FF0000000000000000000000000000
      000000000000000000000000000000000000E1E1E1FFC1C1C1FFB4B4B4FFB0B0
      B0FFFAFAFAFFE9E9E9FFECECECFFF3F3F3FFF1F1F1FFF4F4F4FFF5F5F5FFFFFF
      FFFFB8B7B7FFB7B7B7FFC0C0C0FFE2E2E2FFEAEAEAFFD3D3D3FFCACACAFFF2F2
      F2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFF9F9F9FFCCCCCCFFD3D3D3FFEAEAEAFF00000000F7F7F700000000000000
      000000000000ADC6C600849C9C00849C9400AD523900DE6B4A00AD3918003152
      73004A7BAD0084A5C600ADC6DE00949CA50000000000F7F7F700000000000000
      000000000000BDBDBD008C8C8C008C8C8C006B6B6B008C8C8C00525252005252
      52007B7B7B00A5A5A500C6C6C6009C9C9C000000000000000000846363008463
      6300C6636300C6636300C6636300C66363008442420084636300846363008463
      6300846363008463630084636300000000000000000000000000A5A5A500A5A5
      A500A5A5A500A5A5A500A5A5A500A5A5A50084848400A5A5A500A5A5A500A5A5
      A500A5A5A500A5A5A500A5A5A500000000000000000000000000000000000000
      00000000000000000000ABA9A8FFDCDCDCFF8C8B8DFFEEEEEEFF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000CACACAFFFFFFFFFFB4B4B4FFF2F2F2FF000000000000
      000000000000000000000000000000000000919191FF7E7F7EFF6B6B6BFFB4B4
      B4FFFBFBFBFFF0F0F0FFF3F3F3FFF3F3F3FFF1F1F1FFF1F1F1FFF4F4F4FFFFFF
      FFFFB8B7B7FF626262FF6B6C6BFF8F8F8FFFBCBCBCFFC6C6C6FFB2B2B2FFFCFC
      FCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFA9A9A9FFB3B3B3FFB7B7B7FFBDADAD00A5422900844A4200846B
      6B00ADADAD005A8C9400B5391000D6735A00EF846300CE7B5A0039394A004A7B
      AD007B9CBD00CED6E700637B9400FFFFFF00B5B5B5005A5A5A005A5A5A007373
      7300ADADAD007B7B7B005A5A5A008C8C8C009C9C9C008C8C8C00424242007B7B
      7B009C9C9C00D6D6D6007B7B7B00FFFFFF00000000000000000084636300C684
      8400C6848400C6638400C6636300C663630084424200F7CEA500F7CEA500F7CE
      A500F7CEA500F7CEA50084636300000000000000000000000000A5A5A500A5A5
      A500A5A5A500A5A5A500A5A5A500A5A5A50084848400C6DEC600C6DEC600C6DE
      C600C6DEC600C6DEC600A5A5A500000000000000000000000000000000000000
      000000000000DFDFDFFFF0EDE9FFE7E5DEFFB5B3B0FFD2D1D2FFC1C0C1FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000E7E7E7FFFFFFFFFFFFFFFFFFF0F0F0FFFFFFFFFFD1D1D1FF0000
      0000000000000000000000000000000000007C7C7CFF6C6C6CFF6A6A6AFF9696
      96FFC4C4C4FFC0C0C0FFC0C0C0FFC0C0C0FFC1C1C1FFC5C5C5FFC4C4C4FFC5C5
      C5FF949393FF727271FF797A78FF898989FFAFAFAFFFB3B3B3FFB1B1B1FFDDDD
      DDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFDBDBDBFFB9B9B9FFC0C0C0FFB7B7B7FFB59C9C00D6734A00D6733900DE73
      3900D6633100A56B6300AD9C9C00CEADAD00B59494009C7B7B00C6ADAD007384
      9C00C6D6EF0063738C00FFFFFF0000000000A5A5A50084848400848484008484
      84007B7B7B007B7B7B009C9C9C00B5B5B5009C9C9C0084848400B5B5B5008484
      8400D6D6D60073737300FFFFFF0000000000000000000000000084636300C684
      8400C6848400C6848400C6848400C66384008442420042C6630042C6630042C6
      630000C66300F7CEA50084636300000000000000000000000000A5A5A500A5A5
      A500A5A5A500A5A5A500A5A5A500A5A5A5008484840084848400848484008484
      840084848400C6DEC600A5A5A500000000000000000000000000000000000000
      000000000000D4CBC2FFE4E1D9FFE5E2DAFFE5E0D8FFD1C9C1FFDDDCDCFF8D8C
      8DFFE9E9E9FF0000000000000000000000000000000000000000000000000000
      000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBCBC
      BCFFEFEFEFFF000000000000000000000000696969FF4F4F4FFF565656FF4A49
      49FF484848FF4A4A4AFF4B4B4BFF4A4A4AFF4A4A4AFF4A4A4AFF4B4B4BFF4646
      46FF494848FF6D6D6DFF797979FF898989FFA0A0A0FF979797FF9D9D9DFF9191
      91FF8F8F8FFF919191FF929292FF919191FF919191FF919191FF929292FF8D8D
      8DFF909090FFB4B4B4FFC0C0C0FFB9B9B9FFAD949400D6846300D6734200CE6B
      3100CEAD9C00DEBDAD00F7C6B500FFDED600F7C6B500DEAD9C00AD9C9C00E7DE
      D60073738400AD391800C6C6C600000000009C9C9C0094949400848484007B7B
      7B00B5B5B500C6C6C600CECECE00E7E7E700CECECE00B5B5B5009C9C9C00DEDE
      DE007B7B7B005A5A5A00C6C6C60000000000000000000000000084636300C684
      8400C6848400C6848400C6848400C68484008442420042C6630042C6630042C6
      630042C66300F7CEA50084636300000000000000000000000000A5A5A500C6C6
      C600A5A5A500A5A5A500A5A5A500A5A5A50084848400A5A5A500A5A5A500A5A5
      A50084848400C6DEC600A5A5A500000000000000000000000000000000000000
      0000A19A94FFE1DAD3FFE5E0D8FFE3DCD5FFDDD6CEFFDCD2C8FFD5C9BDFFB1AD
      A9FFDFDFDFFFB1B0B1FF00000000000000000000000000000000000000000000
      0000C2C2C2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEAEA
      EAFFFFFFFFFFC6C6C6FF0000000000000000666666FF515151FF545554FF2B2B
      2BFF212121FF222222FF222222FF212121FF212121FF202020FF202020FF1F1F
      1FFF2A2A2AFF666665FF797878FF878787FF9D9D9DFF989898FF9C9C9CFF7373
      73FF686868FF696969FF696969FF686868FF686868FF676767FF676767FF6666
      66FF727272FFADADADFFC0C0C0FFB8B8B8FFAD8C8C00E7A58400CE7B5A00D69C
      8400DEB5AD00F7C6B500F7D6C600F7DECE00F7D6C600F7CEB500DEAD9C00A584
      7B00E7CEBD00FF8463009C8C8C00000000009C9C9C00ADADAD008C8C8C00A5A5
      A500BDBDBD00CECECE00DEDEDE00DEDEDE00DEDEDE00CECECE00B5B5B5008C8C
      8C00CECECE00A5A5A5008C8C8C0000000000000000000000000084636300C684
      8400C6848400C6848400C6848400C68484008442420042C6630042C6630042C6
      630042C66300F7CEA50084636300000000000000000000000000A5A5A500C6C6
      C600C6C6C600C6C6C600C6C6C600A5A5A500848484008484840084848400A5A5
      A50084848400C6DEC600A5A5A50000000000000000000000000000000000D1D0
      D1FFE3DBD3FFDCD3C9FFDAD1C8FFDDD3CAFFDDD3C9FFD4C8BDFFCEC0B3FFCCBC
      ADFFB1A297FFE6E6E6FFC5C4C5FF00000000000000000000000000000000DDDD
      DDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFFF9F9
      F9FFE0E0E0FFFFFFFFFFD7D7D7FF00000000676767FF4F4F4FFF555556FF4E4D
      4EFF444444FF464646FF464646FF464646FF474747FF484848FF494949FF4848
      48FF575756FF696869FF747474FF858686FF9F9F9FFF979797FF9D9D9DFF9595
      95FF8B8B8BFF8D8D8DFF8D8D8DFF8D8D8DFF8E8E8EFF8F8F8FFF909090FF8F8F
      8FFF9E9E9EFFB0B0B0FFBBBBBBFFB6B6B6FF8C7B7B00F7BD9C00CE846B00DEC6
      C600E79C7B00EFC6AD00EFC6AD00EFCEB500F7C6B500EFC6AD00E7A58400B5A5
      9C00C6634200A56B5A00000000000000000084848400C6C6C60094949400CECE
      CE00ADADAD00CECECE00CECECE00CECECE00CECECE00C6C6C600ADADAD00A5A5
      A5007B7B7B007B7B7B000000000000000000000000000000000084636300C684
      8400C6848400C6A5A500F7FFFF00C684840084424200C6DEC60084E7840042E7
      840042E78400F7CEA50084636300000000000000000000000000A5A5A500C6C6
      C600C6C6C600C6C6C600F7FFFF00C6C6C60084848400C6DEC600C6C6C600A5A5
      A500A5A5A500C6DEC600A5A5A500000000000000000000000000F6F6F6FFC9BA
      B0FFCEC1B4FFD2C6BAFFD9CEC2FFD6CBBFFFD1C5B9FFD2C4B7FFCEBEB0FFC2B1
      A4FFBDAA9EFFB9A59AFF00000000000000000000000000000000F8F8F8FFF9F9
      F9FFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFCFCFFEFEF
      EFFFE9E9E9FFE4E4E4FF00000000000000006A6B6AFF515252FF5C5D5DFF5555
      54FF494949FF4C4C4CFF4F4F4FFF515151FF545454FF565656FF575757FF5555
      55FF616161FF6B6B6BFF717171FF888888FFA1A1A1FF999999FFA4A4A4FF9C9C
      9CFF909090FF939393FF979797FF989898FF9C9C9CFF9D9D9DFF9E9E9EFF9C9C
      9CFFA8A8A8FFB2B2B2FFB8B8B8FFB9B9B9FF9C7B7300F7C6AD00D6947B00E7CE
      BD00EFC6AD00F7D6C600F7D6C600EFBDA500EFB59C00EFB59400E7A57B00C6B5
      B500AD4A1800FFF7F700000000000000000084848400CECECE009C9C9C00CECE
      CE00C6C6C600D6D6D600D6D6D600C6C6C600BDBDBD00BDBDBD00ADADAD00B5B5
      B5005A5A5A00F7F7F7000000000000000000000000000000000084636300C684
      8400C6848400F7CEA500F7FFFF00C684840084424200FFFFFF00FFFFFF00FFFF
      FF00F7FFFF00F7CEA50084636300000000000000000000000000A5A5A500C6C6
      C600C6C6C600C6C6C600F7FFFF00C6C6C60084848400F7FFFF00F7FFFF00F7FF
      FF00F7FFFF00C6DEC600A5A5A50000000000000000000000000093847FFFC6B6
      A9FFCCBCADFFCFC1B2FFCDBEB0FFCFC0B2FFD1C2B4FFC9B9ABFFB6ABA0FFB680
      7DFFBCA89DFFD4C8C2FF00000000000000000000000000000000B8B8B8FFF4F4
      F4FFF9F9F9FFFDFDFDFFFBFBFBFFFDFDFDFFFFFFFFFFF7F7F7FFE8E8E8FFD3D3
      D3FFE8E8E8FFE5E5E5FF0000000000000000878787FF989898FFABAAAAFF6868
      68FF4E4E4EFF5C5C5CFF656565FF686868FF696969FF666666FF5F5F5FFF5050
      50FF717172FFC1C1C1FFBCBCBCFF9D9D9DFFBABABAFFDFDFDFFFF2F2F2FFB0B0
      B0FF959595FFA3A3A3FFACACACFFB0B0B0FFB0B0B0FFADADADFFA6A6A6FF9797
      97FFB9B9B9FFFFFFFFFFFFFFFFFFCCCCCCFFA56B5A00F7CEB500DE9C8C00DEC6
      C600EFBDAD00F7DEC600F7DECE00F7DECE00EFBDA500EFBD9C00DE946B00BDB5
      B500D68C6300D6A59C0000000000000000007B7B7B00D6D6D600ADADAD00CECE
      CE00C6C6C600DEDEDE00DEDEDE00DEDEDE00C6C6C600C6C6C6009C9C9C00B5B5
      B50094949400B5B5B5000000000000000000000000000000000084636300F7CE
      A500C6848400C6848400C6848400C684840084424200FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00F7CEA50084636300000000000000000000000000A5A5A500C6C6
      C600C6C6C600C6C6C600C6C6C600A5A5A50084848400F7FFFF00F7FFFF00F7FF
      FF00F7FFFF00C6DEC600A5A5A5000000000000000000BEBCBDFFCFC1BAFFC2B0
      A3FFC1B0A3FFC4B3A6FFCABAACFFC9B8AAFFC4B3A5FFB6ABA2FFF2736CFFFDBB
      A1FFA18385FF00000000000000000000000000000000CFCFCFFFFFFFFFFFEEEE
      EEFFEEEEEEFFF1F1F1FFF7F7F7FFF6F6F6FFF1F1F1FFE9E9E9FFE3E3E3FFFFFF
      FFFFBEBEBEFF000000000000000000000000919191FF9D9D9DFFACACACFF6666
      66FF3F3F3FFF4F4F4FFF585858FF5C5C5CFF5D5D5DFF595959FF525252FF4141
      41FF696A69FFB3B3B3FFA3A4A3FF989898FFBDBDBDFFE4E4E4FFF3F3F3FFADAD
      ADFF878787FF979797FF9F9F9FFFA3A3A3FFA4A4A4FFA0A0A0FF999999FF8888
      88FFB1B1B1FFFAFAFAFFEBEBEBFFC2C2C2FFAD847B00FFD6C600F7C6B500DEB5
      A500DEBDB500FFE7D600F7E7D600F7E7D600F7E7D600FFE7DE00DEB5A500C6A5
      9C00D6AD9400D6947B00FFFFFF000000000094949400DEDEDE00CECECE00BDBD
      BD00C6C6C600E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700BDBDBD00ADAD
      AD00B5B5B500A5A5A500FFFFFF0000000000000000000000000084636300F7CE
      A500F7CEA500F7CEA500F7CEA500C684840084424200FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00F7CEA50084636300000000000000000000000000A5A5A500C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C60084848400F7FFFF00F7FFFF00F7FF
      FF00F7FFFF00C6DEC600A5A5A50000000000F4F4F4FFC3B5B0FFBCA9A0FFBEAD
      A3FFC5B4AAFFC9B8AEFFC7B7ACFFC6B6ABFFB7AFA4FFEA161BFFFE584BFFFF6B
      5CFFFD3A32FFCCD0E3FF0000000000000000F7F7F7FFF6F6F6FFEAEAEAFFECEC
      ECFFF4F4F4FFF8F8F8FFF6F6F6FFF5F5F5FFEAEAEAFFAEAEAEFFD5D5D5FFE0E0
      E0FFC7C7C7FFEBEBEBFF0000000000000000B2B1B1FF686868FF6F6F6FFF6261
      61FF808080FF818181FF808080FF818181FF818181FF828282FF848484FF8282
      82FF616161FF727272FF6C6D6DFFB4B5B4FFC8C8C8FF9B9B9BFFA1A1A1FFA0A0
      A0FFC7C7C7FFC8C8C8FFC7C7C7FFC8C8C8FFC8C8C8FFC9C9C9FFCBCBCBFFC9C9
      C9FF9F9F9FFFA4A4A4FFA1A1A1FFCBCBCBFFB58C8400FFDECE00F7CEBD00F7C6
      B500E7CEC600DEBDB500EFCEBD00F7DED600EFCEBD00DEBDB500DED6CE00EFCE
      B500E7CEC600E7C6AD00E7CECE00000000009C9C9C00DEDEDE00D6D6D600CECE
      CE00D6D6D600C6C6C600CECECE00E7E7E700CECECE00C6C6C600D6D6D600CECE
      CE00CECECE00C6C6C600D6D6D60000000000000000000000000084636300F7CE
      A500F7CEA500F7CEA500F7CEA500C684840084424200FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00F7CEA50084636300000000000000000000000000A5A5A500C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C60084848400F7FFFF00F7FFFF00F7FF
      FF00F7FFFF00C6DEC600A5A5A50000000000F6F4F4FFC3B3AEFFC6B6B0FFCDBE
      B7FFCEC0BAFFD1C4BDFFD5C8C2FFCBC8BEFFC00314FFE5010AFFF61615FFF81E
      1BFFF1080BFFD2000FFFC9D4E7FF00000000FFFFFFFFE6E6E6FFF7F7F7FFFEFE
      FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF929292FFA0A0A0FFB2B2B2FFB6B6
      B6FFA9A9A9FF989898FFECECECFF00000000000000000000000000000000A9A9
      A8FFF5F4F4FFECECECFFEBEBEBFFEDEDEDFFEEEEEFFFEFEEEFFFF1F2F2FFF8F8
      F8FFA8A6A7FF000000000000000000000000000000000000000000000000CECE
      CEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFCCCCCCFF000000000000000000000000BD948C00FFE7D600F7DECE00F7D6
      C600F7CEB500EFC6BD00E7CECE00DEC6BD00E7CEC600DEAD9C00D6947B00A57B
      73008494A500BD9CA500AD6B6300FFFFFF009C9C9C00E7E7E700DEDEDE00D6D6
      D600CECECE00CECECE00D6D6D600CECECE00CECECE00B5B5B500A5A5A5008484
      840094949400ADADAD007B7B7B00FFFFFF00000000000000000084636300F7CE
      A500F7CEA500F7CEA500F7CEA500C684840084424200FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00F7CEA50084636300000000000000000000000000A5A5A500C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C60084848400F7FFFF00F7FFFF00F7FF
      FF00F7FFFF00C6DEC600A5A5A500000000000000000000000000D7CDCAFFD5CA
      C7FFD9CFCAFFDCD2CEFFDED4D0FFD197A0FFD41821FFD6242DFFFF5146FFFF55
      4AFFC22636FFB32E41FFAC2E46FF000000000000000000000000FDFDFDFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFEEEEEEFFA6A6A6FFAEAEAEFFD3D3D3FFD5D5
      D5FFA3A3A3FF9E9E9EFF9A9A9AFF00000000000000000000000000000000A8A8
      A8FFE7E7E7FFDFDFDFFFDEDEDEFFE0E0E0FFE2E3E1FFE2E2E2FFE4E5E4FFECEB
      ECFFAAA9A9FFD9D9D9FF8D8D8DFFDBDBDBFF000000000000000000000000CECE
      CEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFCDCDCDFFE3E3E3FFADADADFFE5E5E5FFC6948C00FFEFE700FFE7D600F7DE
      CE00F7D6C600F7D6BD00FFCEB500F7C6AD00F7BDA500F7BD9C00F7B59C005A5A
      520000CEFF0000B5FF0042B5FF00949CA500A5A5A500EFEFEF00E7E7E700DEDE
      DE00D6D6D600D6D6D600D6D6D600CECECE00C6C6C600C6C6C600C6C6C6005252
      52008C8C8C008C8C8C00A5A5A5009C9C9C000000000000000000846363008463
      6300C6848400F7CEA500F7CEA500C684A50084424200FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00F7CEA50084636300000000000000000000000000A5A5A500A5A5
      A500C6C6C600C6C6C600C6C6C600C6C6C60084848400F7FFFF00F7FFFF00F7FF
      FF00F7FFFF00C6DEC600A5A5A50000000000000000000000000000000000FBFA
      FAFFE7E3E3FFE8E5E5FFEBE9E8FFEEEBEBFFF9F9F9FFF9FAF9FFFF7E6DFFFF87
      74FFB6A3CBFF000000000000000000000000000000000000000000000000FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEAEAEAFFEEEE
      EEFFD0D0D0FF000000000000000000000000000000000000000000000000A8A8
      A8FFE8E8E8FFE0E0E0FFDFDFDFFFE0DFE0FFE1E1E1FFE3E2E3FFE6E5E5FFEBEA
      EAFF979796FF505050FF626262FF464646FF000000000000000000000000CECE
      CEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFC0C0C0FF898989FFA9A9A9FF7A7A7AFFB59C9C00FFF7E700FFEFE700FFEF
      DE00FFE7D600A5736B008C635A00AD949400AD8C8400AD847B00BD7B73007B63
      630008FFFF0018B5E7004A7B9400F7F7F700A5A5A500EFEFEF00EFEFEF00E7E7
      E700E7E7E700848484006B6B6B009C9C9C00949494008C8C8C00949494006B6B
      6B00949494008C8C8C006B6B6B00F7F7F7000000000000000000000000000000
      000084636300C6848400C6848400C68484008442420084636300846363008463
      6300846363008463630084636300000000000000000000000000000000000000
      0000A5A5A500A5A5A500A5A5A500C6C6C60084848400A5A5A500A5A5A500A5A5
      A500A5A5A500A5A5A500A5A5A500000000000000000000000000000000000000
      000000000000F2F0F0FFFAFAFAFFF4F3F3FFFDFDFDFFD4DDDCFFFEA696FFF6C8
      C0FFBCB4CBFF0000000000000000000000000000000000000000000000000000
      000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5F5F5FFFFFFFFFFFFFF
      FFFFD8D8D8FF000000000000000000000000000000000000000000000000C5C5
      C5FFE8E9E9FFE7E8E8FFE6E6E6FFE7E7E7FFE6E5E5FFE7E6E6FFEBEAEBFFE3E3
      E3FFB0B0B0FF303030FF707070FF646464FF000000000000000000000000DDDD
      DDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFCACACAFF747474FFB7B7B7FFA0A0A0FFFFFFFF00BDADAD00C6A5A500CEAD
      A500CE9C9400F7F7F70000000000000000000000000000000000000000000000
      0000E7FFFF0084BDE700F7F7F70000000000FFFFFF00B5B5B500ADADAD00B5B5
      B500ADADAD00F7F7F70000000000000000000000000000000000000000000000
      0000F7F7F700B5B5B500F7F7F700000000000000000000000000000000000000
      0000000000000000000084636300846363008442420000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000A5A5A500A5A5A5008484840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FCFCFCFF00000000FEFEFEFF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFFFF00000000FFFFFFFF00000000000000000000
      000000000000000000000000000000000000000000000000000000000000D7D7
      D7FFC4C4C4FFC7C7C7FFC6C6C6FFC7C7C7FFD7D7D7FFD8D8D8FFDCDBDBFFD6D6
      D6FFE4E4E4FF7E7E7EFF1A1A1AFF939393FF000000000000000000000000E8E8
      E8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFEDEDEDFFA2A2A2FF5A5A5AFFB2B2B2FF0000000000000000C6636300C663
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
      2800000080000000300000000100010000000000000300000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FF31FF31FE7FFE7FFFFFFFFFC003C003
      FC00FC00F07FF07FFEFFFEFF00000000B800B800C001C001FC3FFC3F00000000
      00000000C001C001F81FF81F0000000000010001C001C001F807F80700000000
      00010001C001C001F003F0030000000000010001C001C001E001E00100000000
      00030003C001C001C003C0030000000000030003C001C001C003C00300000000
      00030003C001C001800780070000000000010001C001C0010003000300000000
      00010001C001C00100010001E007E00700000000C001C001C001C001E000E000
      00000000C001C001E007E007E000E00000000000F001F001F807F807E000E000
      03F103F1FC7FFC7FFD7FFD7FE000E000C001C0018FFF8FFF88038803FF3FFF3F
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
  inherited cdsTmp: TClientDataSet
    Left = 1384
    Top = 96
  end
  inherited dspTmp: TDataSetProvider
    Left = 1344
    Top = 96
  end
  inherited sdsTmp: TSQLDataSet
    Left = 1296
    Top = 96
  end
  inherited cdsLookup: TClientDataSet
    Left = 1120
    Top = 64
  end
  inherited dspLookup: TDataSetProvider
    Left = 1088
    Top = 64
  end
  inherited sdsLookup: TSQLDataSet
    Left = 1296
    Top = 160
  end
  inherited cdsEmpresa: TClientDataSet
    Left = 1088
    Top = 32
  end
  inherited dsEmpresa: TDataSource
    Left = 1120
    Top = 32
  end
  inherited FindEmpresa: TCFind
    Left = 992
    Top = 16
  end
  object sdsNfProduto: TSQLDataSet
    SchemaName = 'gesys'
    GetMetadata = False
    CommandText = 'SELECT * FROM NfProduto'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmPadrao.dbConexao
    Left = 1144
    Top = 128
  end
  object dspNfProduto: TDataSetProvider
    DataSet = sdsNfProduto
    Options = [poAllowMultiRecordUpdates, poPropogateChanges, poAllowCommandText, poUseQuoteChar]
    BeforeUpdateRecord = dspNfProdutoBeforeUpdateRecord
    Left = 1056
    Top = 128
  end
  object cdsNfProduto: TClientDataSet
    Aggregates = <>
    CommandText = 'SELECT * FROM NfProduto'
    Params = <>
    ProviderName = 'dspNfProduto'
    AfterOpen = cdsPadraoAfterOpen
    AfterInsert = cdsNfProdutoAfterInsert
    AfterEdit = cdsNfProdutoAfterEdit
    OnReconcileError = cdsPadraoReconcileError
    Left = 1088
    Top = 128
    object cdsNfProdutodescProduto: TStringField
      FieldKind = fkLookup
      FieldName = 'descProduto'
      LookupDataSet = cdsProduto
      LookupKeyFields = 'idProduto'
      LookupResultField = 'descProduto'
      KeyFields = 'idProduto'
      Size = 50
      Lookup = True
    end
    object cdsNfProdutoidEmpresa: TIntegerField
      FieldName = 'idEmpresa'
      Required = True
    end
    object cdsNfProdutoidCadEmpresa: TSmallintField
      FieldName = 'idCadEmpresa'
      Required = True
    end
    object cdsNfProdutoidDocSerie: TStringField
      FieldName = 'idDocSerie'
      Required = True
      FixedChar = True
      Size = 5
    end
    object cdsNfProdutoidNf: TIntegerField
      FieldName = 'idNf'
      Required = True
    end
    object cdsNfProdutoidProduto: TIntegerField
      FieldName = 'idProduto'
      Required = True
    end
    object cdsNfProdutoqtProduto: TFMTBCDField
      FieldName = 'qtProduto'
      Required = True
      Precision = 10
      Size = 3
    end
    object cdsNfProdutovlBruto: TFMTBCDField
      FieldName = 'vlBruto'
      Precision = 18
      Size = 4
    end
    object cdsNfProdutoprDesconto: TFMTBCDField
      FieldName = 'prDesconto'
      Precision = 6
      Size = 4
    end
    object cdsNfProdutovlDesconto: TFMTBCDField
      FieldName = 'vlDesconto'
      Precision = 18
      Size = 4
    end
    object cdsNfProdutovlLiquido: TFMTBCDField
      FieldName = 'vlLiquido'
      Precision = 18
      Size = 4
    end
    object cdsNfProdutovlTotal: TFMTBCDField
      FieldName = 'vlTotal'
      Required = True
      Precision = 19
      Size = 4
    end
    object cdsNfProdutoprReducao: TFMTBCDField
      FieldName = 'prReducao'
      Required = True
      Precision = 5
      Size = 3
    end
    object cdsNfProdutovlReducao: TFMTBCDField
      FieldName = 'vlReducao'
      Required = True
      Precision = 19
      Size = 4
    end
    object cdsNfProdutovlBaseIcms: TFMTBCDField
      FieldName = 'vlBaseIcms'
      Required = True
      Precision = 19
      Size = 4
    end
    object cdsNfProdutoprIcms: TFMTBCDField
      FieldName = 'prIcms'
      Required = True
      Precision = 5
      Size = 3
    end
    object cdsNfProdutovlIcms: TFMTBCDField
      FieldName = 'vlIcms'
      Required = True
      Precision = 19
      Size = 4
    end
    object cdsNfProdutovlBaseIpi: TFMTBCDField
      FieldName = 'vlBaseIpi'
      Required = True
      Precision = 19
      Size = 4
    end
    object cdsNfProdutoprIpi: TFMTBCDField
      FieldName = 'prIpi'
      Required = True
      Precision = 5
      Size = 3
    end
    object cdsNfProdutovlIpi: TFMTBCDField
      FieldName = 'vlIpi'
      Required = True
      Precision = 19
      Size = 4
    end
    object cdsNfProdutovlIsentasIcms: TFMTBCDField
      FieldName = 'vlIsentasIcms'
      Required = True
      Precision = 19
      Size = 4
    end
    object cdsNfProdutovlOutrasIcms: TFMTBCDField
      FieldName = 'vlOutrasIcms'
      Required = True
      Precision = 19
      Size = 4
    end
    object cdsNfProdutovlBaseIss: TFMTBCDField
      FieldName = 'vlBaseIss'
      Required = True
      Precision = 19
      Size = 4
    end
    object cdsNfProdutoprIss: TFMTBCDField
      FieldName = 'prIss'
      Required = True
      Precision = 5
      Size = 3
    end
    object cdsNfProdutovlIss: TFMTBCDField
      FieldName = 'vlIss'
      Required = True
      Precision = 19
      Size = 4
    end
    object cdsNfProdutoidStTributaria: TSmallintField
      FieldName = 'idStTributaria'
      Required = True
    end
    object cdsNfProdutoprInss: TFMTBCDField
      FieldName = 'prInss'
      Precision = 5
      Size = 3
    end
    object cdsNfProdutovlPis: TFMTBCDField
      FieldName = 'vlPis'
      Precision = 19
      Size = 4
    end
    object cdsNfProdutovlCofins: TFMTBCDField
      FieldName = 'vlCofins'
      Precision = 19
      Size = 4
    end
    object cdsNfProdutoprPis: TFMTBCDField
      FieldName = 'prPis'
      Precision = 5
      Size = 3
    end
    object cdsNfProdutoprCofins: TFMTBCDField
      FieldName = 'prCofins'
      Precision = 5
      Size = 3
    end
    object cdsNfProdutoidCSTPis: TSmallintField
      FieldName = 'idCSTPis'
    end
    object cdsNfProdutoidCSTCofins: TSmallintField
      FieldName = 'idCSTCofins'
    end
    object cdsNfProdutoidModBC: TSmallintField
      FieldName = 'idModBC'
    end
    object cdsNfProdutoprCredPresumido: TFMTBCDField
      FieldName = 'prCredPresumido'
      Precision = 4
      Size = 2
    end
    object cdsNfProdutoprCredOutorgado: TFMTBCDField
      FieldName = 'prCredOutorgado'
      Precision = 4
      Size = 2
    end
    object cdsNfProdutovlCredPresumido: TFMTBCDField
      FieldName = 'vlCredPresumido'
      Precision = 19
      Size = 4
    end
    object cdsNfProdutovlCredOutorgado: TFMTBCDField
      FieldName = 'vlCredOutorgado'
      Precision = 19
      Size = 4
    end
    object cdsNfProdutoNcm: TStringField
      FieldName = 'Ncm'
      Size = 15
    end
  end
  object dsNfProduto: TDataSource
    DataSet = cdsNfProduto
    OnStateChange = dsNfProdutoStateChange
    Left = 1120
    Top = 128
  end
  object sdsNf: TSQLDataSet
    SchemaName = 'gesys'
    GetMetadata = False
    CommandText = 'SELECT * FROM Nf'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmPadrao.dbConexao
    Left = 1024
    Top = 96
  end
  object FindSerie: TCFind
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
    Left = 1024
    Top = 64
  end
  object FindNatureza: TCFind
    SelectClause.Strings = (
      'SELECT idNatureza, descNatureza, idCfop, descCfop FROM vNatureza')
    JoinClause.Strings = (
      'WHERE tpNatureza = '#39'SAIDA'#39' AND frete = '#39'N'#39)
    OrderByClause.Strings = (
      'ORDER BY descNatureza')
    FindField = 'descNatureza'
    SQLConnection = dmPadrao.dbConexao
    ValueField = 'idNatureza'
    CarregaDados = True
    CollumNames.Strings = (
      'C'#243'digo'
      'Natureza'
      'Cfop'
      'Descri'#231#227'o do Cfop')
    TypeFind = fFindNormal
    Left = 1272
    Top = 416
  end
  object FindProdDeposito: TCFind
    SelectClause.Strings = (
      'SELECT idProdDeposito, descProdDeposito FROM ProdDeposito')
    JoinClause.Strings = (
      'WHERE stProdDeposito = '#39'ATIVO'#39)
    OrderByClause.Strings = (
      'ORDER BY descProdDeposito')
    FindField = 'descProdDeposito'
    SQLConnection = dmPadrao.dbConexao
    ValueField = 'idProdDeposito'
    CarregaDados = True
    CollumNames.Strings = (
      'C'#243'digo'
      'Descri'#231#227'o')
    TypeFind = fFindNormal
    Left = 1248
    Top = 248
  end
  object dspProduto: TDataSetProvider
    DataSet = dmPadrao.sdsLookup
    Options = [poPropogateChanges, poAllowCommandText]
    Left = 1088
    Top = 192
  end
  object cdsProduto: TClientDataSet
    Aggregates = <>
    CommandText = 'SELECT * FROM Produto'
    Params = <>
    ProviderName = 'dspProduto'
    Left = 1120
    Top = 192
  end
  object FindProduto: TCFind
    SelectClause.Strings = (
      'SELECT idProduto, descProduto, stProduto FROM Produto')
    OrderByClause.Strings = (
      'ORDER BY descProduto')
    FindField = 'descProduto'
    SQLConnection = dmPadrao.dbConexao
    ValueField = 'idProduto'
    CarregaDados = True
    CollumNames.Strings = (
      'C'#243'digo'
      'Descri'#231#227'o'
      'Status')
    TypeFind = fFindNormal
    Left = 1056
    Top = 193
  end
  object FindTab: TCFind
    SelectClause.Strings = (
      'SELECT idTab, descTab FROM Tab')
    JoinClause.Strings = (
      'WHERE stTab = '#39'ATIVO'#39)
    OrderByClause.Strings = (
      'ORDER BY descTab')
    FindField = 'descTab'
    SQLConnection = dmPadrao.dbConexao
    ValueField = 'idTab'
    CarregaDados = True
    CollumNames.Strings = (
      'C'#243'digo'
      'Descri'#231#227'o')
    TypeFind = fFindNormal
    Left = 1248
    Top = 280
  end
  object sdsNfImpostoOutro: TSQLDataSet
    SchemaName = 'gesys'
    GetMetadata = False
    CommandText = 'SELECT * FROM NfImpostoOutro'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmPadrao.dbConexao
    Left = 1024
    Top = 224
  end
  object dspNfImpostoOutro: TDataSetProvider
    DataSet = sdsNfImpostoOutro
    Options = [poAllowMultiRecordUpdates, poPropogateChanges, poAllowCommandText, poUseQuoteChar]
    BeforeUpdateRecord = dspNfProdutoBeforeUpdateRecord
    Left = 1056
    Top = 224
  end
  object cdsNfImpostoOutro: TClientDataSet
    Aggregates = <>
    CommandText = 'SELECT * FROM NfImpostoOutro'
    Params = <>
    ProviderName = 'dspNfImpostoOutro'
    AfterOpen = cdsPadraoAfterOpen
    AfterInsert = cdsNfRateioAfterInsert
    AfterEdit = cdsNfImpostoOutroAfterEdit
    OnReconcileError = cdsPadraoReconcileError
    Left = 1088
    Top = 224
    object cdsNfImpostoOutrodescProduto: TStringField
      FieldKind = fkLookup
      FieldName = 'descProduto'
      LookupDataSet = cdsProduto
      LookupKeyFields = 'idProduto'
      LookupResultField = 'descProduto'
      KeyFields = 'idProduto'
      Size = 50
      Lookup = True
    end
    object cdsNfImpostoOutrodescImpostoOutro: TStringField
      FieldKind = fkLookup
      FieldName = 'descImpostoOutro'
      LookupDataSet = cdsImpostoOutro
      LookupKeyFields = 'idImpostoOutro'
      LookupResultField = 'descImpostoOutro'
      KeyFields = 'idImpostoOutro'
      Size = 50
      Lookup = True
    end
    object cdsNfImpostoOutroidEmpresa: TIntegerField
      FieldName = 'idEmpresa'
      Required = True
    end
    object cdsNfImpostoOutroidCadEmpresa: TSmallintField
      FieldName = 'idCadEmpresa'
      Required = True
    end
    object cdsNfImpostoOutroidDocSerie: TStringField
      FieldName = 'idDocSerie'
      Required = True
      FixedChar = True
      Size = 5
    end
    object cdsNfImpostoOutroidNf: TIntegerField
      FieldName = 'idNf'
      Required = True
    end
    object cdsNfImpostoOutroidProduto: TIntegerField
      FieldName = 'idProduto'
      Required = True
    end
    object cdsNfImpostoOutroidImpostoOutro: TSmallintField
      FieldName = 'idImpostoOutro'
      Required = True
    end
    object cdsNfImpostoOutroprFaturamento: TFMTBCDField
      FieldName = 'prFaturamento'
      Required = True
      Precision = 5
      Size = 3
    end
    object cdsNfImpostoOutroprQtdeProduto: TFMTBCDField
      FieldName = 'prQtdeProduto'
      Required = True
      Precision = 5
      Size = 3
    end
    object cdsNfImpostoOutrovlImpostoOutro: TFMTBCDField
      FieldName = 'vlImpostoOutro'
      Required = True
      Precision = 19
      Size = 4
    end
    object cdsNfImpostoOutrovlQtdeProduto: TFMTBCDField
      FieldName = 'vlQtdeProduto'
      Precision = 18
      Size = 4
    end
    object cdsNfImpostoOutrovlTonelada: TFMTBCDField
      FieldName = 'vlTonelada'
      Precision = 18
      Size = 4
    end
    object cdsNfImpostoOutrovlSaca: TFMTBCDField
      FieldName = 'vlSaca'
      Precision = 18
      Size = 4
    end
  end
  object dsNfImpostoOutro: TDataSource
    DataSet = cdsNfImpostoOutro
    OnStateChange = dsNfImpostoOutroStateChange
    Left = 1120
    Top = 224
  end
  object dspImpostoOutro: TDataSetProvider
    DataSet = dmPadrao.sdsLookup
    Options = [poPropogateChanges, poAllowCommandText]
    Left = 1088
    Top = 256
  end
  object cdsImpostoOutro: TClientDataSet
    Aggregates = <>
    CommandText = 'SELECT * FROM ImpostoOutro'
    Params = <>
    ProviderName = 'dspImpostoOutro'
    Left = 1120
    Top = 256
  end
  object sdsNfValor: TSQLDataSet
    SchemaName = 'gesys'
    GetMetadata = False
    CommandText = 'SELECT * FROM NfValor'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmPadrao.dbConexao
    Left = 1024
    Top = 288
  end
  object dspNfValor: TDataSetProvider
    DataSet = sdsNfValor
    Options = [poAllowMultiRecordUpdates, poPropogateChanges, poAllowCommandText, poUseQuoteChar]
    BeforeUpdateRecord = dspNfProdutoBeforeUpdateRecord
    Left = 1056
    Top = 288
  end
  object cdsNfValor: TClientDataSet
    Aggregates = <>
    CommandText = 'SELECT * FROM NfValor'
    Params = <>
    ProviderName = 'dspNfValor'
    AfterOpen = cdsPadraoAfterOpen
    AfterInsert = cdsNfValorAfterInsert
    AfterEdit = cdsNfImpostoOutroAfterEdit
    OnReconcileError = cdsPadraoReconcileError
    Left = 1088
    Top = 288
  end
  object dsNfValor: TDataSource
    DataSet = cdsNfValor
    Left = 1120
    Top = 288
  end
  object sdsNfTransporte: TSQLDataSet
    SchemaName = 'gesys'
    GetMetadata = False
    CommandText = 'SELECT * FROM NfTransporte'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmPadrao.dbConexao
    Left = 1024
    Top = 320
  end
  object dspNfTransporte: TDataSetProvider
    DataSet = sdsNfTransporte
    Options = [poAllowMultiRecordUpdates, poPropogateChanges, poAllowCommandText, poUseQuoteChar]
    BeforeUpdateRecord = dspNfProdutoBeforeUpdateRecord
    Left = 1056
    Top = 320
  end
  object cdsNfTransporte: TClientDataSet
    Aggregates = <>
    CommandText = 'SELECT * FROM NfTransporte'
    Params = <>
    ProviderName = 'dspNfTransporte'
    AfterOpen = cdsPadraoAfterOpen
    AfterInsert = cdsNfRateioAfterInsert
    AfterEdit = cdsNfImpostoOutroAfterEdit
    OnReconcileError = cdsPadraoReconcileError
    Left = 1088
    Top = 320
  end
  object dsNfTransporte: TDataSource
    DataSet = cdsNfTransporte
    Left = 1120
    Top = 320
  end
  object sdsMovCaixa: TSQLDataSet
    SchemaName = 'gesys'
    GetMetadata = False
    CommandText = 'SELECT * FROM MovCaixa'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmPadrao.dbConexao
    Left = 1024
    Top = 352
  end
  object dspMovCaixa: TDataSetProvider
    DataSet = sdsMovCaixa
    Options = [poAllowMultiRecordUpdates, poPropogateChanges, poAllowCommandText, poUseQuoteChar]
    BeforeUpdateRecord = dspMovCaixaBeforeUpdateRecord
    Left = 1056
    Top = 352
  end
  object cdsMovCaixa: TClientDataSet
    Aggregates = <>
    CommandText = 'SELECT * FROM MovCaixa'
    Params = <>
    ProviderName = 'dspMovCaixa'
    AfterOpen = cdsPadraoAfterOpen
    AfterInsert = cdsMovCaixaAfterInsert
    AfterEdit = cdsNfImpostoOutroAfterEdit
    OnReconcileError = cdsPadraoReconcileError
    Left = 1088
    Top = 352
  end
  object dsMovCaixa: TDataSource
    DataSet = cdsMovCaixa
    Left = 1120
    Top = 352
  end
  object sdsNfRateio: TSQLDataSet
    SchemaName = 'gesys'
    GetMetadata = False
    CommandText = 'SELECT * FROM NfRateio'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmPadrao.dbConexao
    Left = 1024
    Top = 384
  end
  object dspNfRateio: TDataSetProvider
    DataSet = sdsNfRateio
    Options = [poAllowMultiRecordUpdates, poPropogateChanges, poAllowCommandText, poUseQuoteChar]
    BeforeUpdateRecord = dspNfProdutoBeforeUpdateRecord
    Left = 1056
    Top = 384
  end
  object cdsNfRateio: TClientDataSet
    Aggregates = <>
    CommandText = 'SELECT * FROM NfRateio'
    Params = <>
    ProviderName = 'dspNfRateio'
    AfterOpen = cdsPadraoAfterOpen
    AfterInsert = cdsNfRateioAfterInsert
    AfterEdit = cdsNfImpostoOutroAfterEdit
    AfterScroll = cdsNfRateioAfterScroll
    OnCalcFields = cdsNfRateioCalcFields
    OnReconcileError = cdsPadraoReconcileError
    Left = 1088
    Top = 384
    object cdsNfRateiodescResultado: TStringField
      FieldKind = fkLookup
      FieldName = 'descResultado'
      LookupDataSet = cdsResultado
      LookupKeyFields = 'idResultado'
      LookupResultField = 'descResultado'
      KeyFields = 'idResultado'
      Size = 50
      Lookup = True
    end
    object cdsNfRateioidEmpresa: TIntegerField
      FieldName = 'idEmpresa'
      Required = True
    end
    object cdsNfRateioidCadEmpresa: TSmallintField
      FieldName = 'idCadEmpresa'
      Required = True
    end
    object cdsNfRateioidDocSerie: TStringField
      FieldName = 'idDocSerie'
      Required = True
      FixedChar = True
      Size = 5
    end
    object cdsNfRateioidNf: TIntegerField
      FieldName = 'idNf'
      Required = True
    end
    object cdsNfRateioidResultado: TIntegerField
      FieldName = 'idResultado'
      Required = True
      OnValidate = cdsNfRateioidResultadoValidate
    end
    object cdsNfRateioidGerencial: TIntegerField
      FieldName = 'idGerencial'
      Required = True
    end
    object cdsNfRateioprRateio: TFMTBCDField
      FieldName = 'prRateio'
      Required = True
      Precision = 6
      Size = 3
    end
    object cdsNfRateiovlRateio: TFMTBCDField
      FieldName = 'vlRateio'
      Required = True
      Precision = 19
      Size = 4
    end
  end
  object dsNfRateio: TDataSource
    DataSet = cdsNfRateio
    OnStateChange = dsNfRateioStateChange
    Left = 1120
    Top = 384
  end
  object FindMovFinanceira: TCFind
    SelectClause.Strings = (
      'SELECT  idMovFinanceira, descMovFinanceira FROM MovFinanceira')
    JoinClause.Strings = (
      
        'WHERE StMovFinanceira = '#39'ATIVO'#39' AND idMovOrigem = 1 AND idTpMovF' +
        'inanceira = 1')
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
    Left = 1056
    Top = 256
  end
  object sdsMovConta: TSQLDataSet
    SchemaName = 'gesys'
    GetMetadata = False
    CommandText = 'SELECT * FROM MovConta'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmPadrao.dbConexao
    Left = 1024
    Top = 416
  end
  object dspMovConta: TDataSetProvider
    DataSet = sdsMovConta
    Options = [poAllowMultiRecordUpdates, poPropogateChanges, poAllowCommandText, poUseQuoteChar]
    BeforeUpdateRecord = dspMovCaixaBeforeUpdateRecord
    Left = 1056
    Top = 416
  end
  object cdsMovConta: TClientDataSet
    Aggregates = <>
    CommandText = 'SELECT * FROM MovConta'
    Params = <>
    ProviderName = 'dspMovConta'
    AfterOpen = cdsPadraoAfterOpen
    AfterInsert = cdsMovContaAfterInsert
    AfterEdit = cdsNfImpostoOutroAfterEdit
    OnReconcileError = cdsPadraoReconcileError
    Left = 1088
    Top = 416
  end
  object dsMovConta: TDataSource
    DataSet = cdsMovConta
    Left = 1120
    Top = 416
  end
  object FindGerencial: TCFind
    SelectClause.Strings = (
      
        'SELECT DISTINCT idGerencial, classificacao, descGerencial FROM v' +
        'Gerencial')
    JoinClause.Strings = (
      
        'WHERE StGerencial = '#39'ATIVO'#39' AND tpGerencial = '#39'ENTRADAS'#39' AND idE' +
        'mpresa = [DBEidEmpresa]')
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
    Left = 1024
    Top = 256
  end
  object FindRateio: TCFind
    SelectClause.Strings = (
      'SELECT DISTINCT Rateio.idRateio, Rateio.descRateio FROM Rateio')
    JoinClause.Strings = (
      'WHERE idEmpresa = [DBEidEmpresa] AND stRateio = '#39'ATIVO'#39)
    OrderByClause.Strings = (
      'ORDER BY Rateio.descRateio')
    FindField = 'descRateio'
    SQLConnection = dmPadrao.dbConexao
    ValueField = 'idRateio'
    CarregaDados = True
    CollumNames.Strings = (
      'C'#243'digo'
      'Descri'#231#227'o')
    TypeFind = fFindNormal
    Left = 992
    Top = 64
  end
  object sdsTituloRec: TSQLDataSet
    SchemaName = 'gesys'
    GetMetadata = False
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmPadrao.dbConexao
    Left = 1152
    Top = 32
  end
  object dspTituloRec: TDataSetProvider
    DataSet = sdsTituloRec
    Options = [poAllowMultiRecordUpdates, poPropogateChanges, poAllowCommandText, poUseQuoteChar]
    BeforeUpdateRecord = dspMovCaixaBeforeUpdateRecord
    Left = 1184
    Top = 32
  end
  object cdsTituloRec: TClientDataSet
    Aggregates = <>
    CommandText = 'SELECT * FROM TituloRec'
    Params = <>
    ProviderName = 'dspTituloRec'
    AfterOpen = cdsPadraoAfterOpen
    AfterInsert = cdsTituloRecAfterInsert
    OnReconcileError = cdsPadraoReconcileError
    Left = 1216
    Top = 32
  end
  object dsTituloRec: TDataSource
    DataSet = cdsTituloRec
    Left = 1248
    Top = 32
  end
  object sdsTituloRecParc: TSQLDataSet
    SchemaName = 'gesys'
    GetMetadata = False
    CommandText = 'SELECT * FROM TituloRecParc'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmPadrao.dbConexao
    Left = 1152
    Top = 64
  end
  object dspTituloRecParc: TDataSetProvider
    DataSet = sdsTituloRecParc
    Options = [poAllowMultiRecordUpdates, poPropogateChanges, poAllowCommandText, poUseQuoteChar]
    BeforeUpdateRecord = dspMovCaixaBeforeUpdateRecord
    Left = 1184
    Top = 64
  end
  object cdsTituloRecParc: TClientDataSet
    Aggregates = <>
    CommandText = 'SELECT * FROM TituloRecParc'
    Params = <>
    ProviderName = 'dspTituloRecParc'
    AfterOpen = cdsPadraoAfterOpen
    OnReconcileError = cdsPadraoReconcileError
    Left = 1216
    Top = 64
  end
  object dsTituloRecParc: TDataSource
    DataSet = cdsTituloRecParc
    OnStateChange = dsTituloRecParcStateChange
    Left = 1248
    Top = 64
  end
  object cdsGerencial: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 992
    Top = 96
    object cdsGerencialidGerencial: TIntegerField
      FieldName = 'idGerencial'
    end
    object cdsGerencialvlGerencial: TCurrencyField
      FieldName = 'vlGerencial'
    end
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
    Left = 1208
    Top = 216
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
    Left = 1224
    Top = 248
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
    Left = 1224
    Top = 280
  end
  object cdsResultado: TClientDataSet
    Aggregates = <>
    CommandText = 'SELECT * FROM Resultado'
    Params = <>
    ProviderName = 'dspLookUp'
    Left = 992
    Top = 224
  end
  object FindSafra: TCFind
    SelectClause.Strings = (
      'SELECT idSafra, descSafra FROM Safra')
    JoinClause.Strings = (
      'WHERE idEmpresa = [DBEidEmpresa] AND stSafra = '#39'ATIVO'#39)
    OrderByClause.Strings = (
      'ORDER BY descSafra')
    FindField = 'descRateio'
    SQLConnection = dmPadrao.dbConexao
    ValueField = 'idSafra'
    CarregaDados = True
    CollumNames.Strings = (
      'C'#243'digo'
      'Descri'#231#227'o')
    TypeFind = fFindNormal
    Left = 992
    Top = 256
  end
  object FindSerieTit: TCFind
    SelectClause.Strings = (
      'SELECT  idDocSerie, descDocSerie FROM DocSerie')
    JoinClause.Strings = (
      'WHERE idTipoDocSerie = 1')
    OrderByClause.Strings = (
      'ORDER BY descDocSerie')
    FindField = 'descDocSerie'
    SQLConnection = dmPadrao.dbConexao
    ValueField = 'idDocSerie'
    CarregaDados = True
    CollumNames.Strings = (
      'C'#243'digo'
      'Descri'#231#227'o')
    TypeFind = fFindNormal
    Left = 992
    Top = 290
  end
  object FindIndice: TCFind
    SelectClause.Strings = (
      'SELECT  idIndice, descIndice FROM Indice')
    JoinClause.Strings = (
      'WHERE StIndice = '#39'ATIVO'#39)
    OrderByClause.Strings = (
      'ORDER BY descIndice')
    FindField = 'descIndice'
    SQLConnection = dmPadrao.dbConexao
    ValueField = 'idIndice'
    CarregaDados = True
    CollumNames.Strings = (
      'C'#243'digo'
      'Descri'#231#227'o')
    TypeFind = fFindNormal
    Left = 1152
    Top = 168
  end
  object FindBanco: TCFind
    SelectClause.Strings = (
      'SELECT  idBanco, descBanco FROM Banco')
    JoinClause.Strings = (
      'WHERE StBanco = '#39'ATIVO'#39' AND ehPortador = '#39'S'#39)
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
    Left = 1184
    Top = 168
  end
  object sdsTituloRecMov: TSQLDataSet
    SchemaName = 'gesys'
    GetMetadata = False
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmPadrao.dbConexao
    Left = 1168
    Top = 128
  end
  object dspTituloRecMov: TDataSetProvider
    DataSet = sdsTituloRecMov
    Options = [poAllowMultiRecordUpdates, poPropogateChanges, poAllowCommandText, poUseQuoteChar]
    Left = 1200
    Top = 128
  end
  object cdsTituloRecMov: TClientDataSet
    Aggregates = <>
    CommandText = 'SELECT * FROM TituloRecMov'
    Params = <>
    ProviderName = 'dspTituloRecMov'
    OnReconcileError = cdsPadraoReconcileError
    Left = 1232
    Top = 128
  end
  object cdsNFe: TClientDataSet
    Aggregates = <>
    CommandText = 'SELECT * FROM vNFe WHERE 1=2'
    Params = <>
    ProviderName = 'dspNFe'
    AfterOpen = cdsPadraoAfterOpen
    OnReconcileError = cdsPadraoReconcileError
    Left = 1290
    Top = 512
    object cdsNFeE_CNPJ: TStringField
      FieldName = 'E_CNPJ'
      Size = 14
    end
    object cdsNFeB_SERIE: TFMTBCDField
      FieldName = 'B_SERIE'
      Required = True
      Precision = 3
      Size = 0
    end
    object cdsNFeidNFe: TFMTBCDField
      FieldName = 'idNFe'
      Required = True
      Precision = 20
      Size = 0
    end
    object cdsNFeA_ID: TStringField
      FieldName = 'A_ID'
      Size = 44
    end
    object cdsNFeCOD_STATUS_RESP_SEFAZ: TFMTBCDField
      FieldName = 'COD_STATUS_RESP_SEFAZ'
      Precision = 4
      Size = 0
    end
    object cdsNFeNUM_RECIBO_AUTORZ_SEFAZ: TStringField
      FieldName = 'NUM_RECIBO_AUTORZ_SEFAZ'
      Size = 50
    end
    object cdsNFeNUM_PROTOC_AUTORZ_SEFAZ: TFMTBCDField
      FieldName = 'NUM_PROTOC_AUTORZ_SEFAZ'
      Precision = 15
      Size = 0
    end
    object cdsNFeDAT_HOR_PROC_SEFAZ: TSQLTimeStampField
      FieldName = 'DAT_HOR_PROC_SEFAZ'
    end
    object cdsNFeST_NOTA_NFE: TStringField
      FieldName = 'ST_NOTA_NFE'
      Required = True
      Size = 25
    end
    object cdsNFeidEmpresa: TIntegerField
      FieldName = 'idEmpresa'
      Required = True
    end
    object cdsNFeidCadEmpresa: TSmallintField
      FieldName = 'idCadEmpresa'
      Required = True
    end
    object cdsNFeidDocSerie: TStringField
      FieldName = 'idDocSerie'
      Required = True
      Size = 5
    end
    object cdsNFeDSC_ARQUIVO_XML: TStringField
      FieldName = 'DSC_ARQUIVO_XML'
      Size = 250
    end
  end
  object dsNFe: TDataSource
    DataSet = cdsNFe
    Left = 1360
    Top = 512
  end
  object dspNFe: TDataSetProvider
    DataSet = sdsNFe
    Options = [poAllowMultiRecordUpdates, poPropogateChanges, poAllowCommandText, poUseQuoteChar]
    Left = 1073
    Top = 560
  end
  object sdsNFe: TSQLDataSet
    SchemaName = 'gesys'
    GetMetadata = False
    CommandText = 'SELECT * FROM vNFe'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmPadrao.dbConexao
    Left = 1000
    Top = 560
  end
  object cdsNFeCritica: TClientDataSet
    Aggregates = <>
    CommandText = 'SELECT * FROM vNFeCritica WHERE 1=2'
    Params = <>
    ProviderName = 'dspNFeCritica'
    AfterOpen = cdsPadraoAfterOpen
    OnReconcileError = cdsPadraoReconcileError
    Left = 1290
    Top = 560
    object cdsNFeCriticaidEmpresa: TIntegerField
      FieldName = 'idEmpresa'
      Required = True
    end
    object cdsNFeCriticaidCadEmpresa: TSmallintField
      FieldName = 'idCadEmpresa'
      Required = True
    end
    object cdsNFeCriticaidDocSerie: TStringField
      FieldName = 'idDocSerie'
      Required = True
      Size = 5
    end
    object cdsNFeCriticaCD_CRITICA: TFMTBCDField
      FieldName = 'CD_CRITICA'
      Required = True
      Precision = 18
      Size = 0
    end
    object cdsNFeCriticaDESC_CRITICA: TStringField
      FieldName = 'DESC_CRITICA'
      Size = 255
    end
    object cdsNFeCriticaidNFe: TIntegerField
      FieldName = 'idNFe'
      Required = True
    end
  end
  object dsNFeCritica: TDataSource
    DataSet = cdsNFeCritica
    Left = 1360
    Top = 560
  end
  object dspNFeCritica: TDataSetProvider
    DataSet = sdsNFeCritica
    Options = [poAllowMultiRecordUpdates, poPropogateChanges, poAllowCommandText, poUseQuoteChar]
    Left = 1217
    Top = 560
  end
  object sdsNFeCritica: TSQLDataSet
    SchemaName = 'gesys'
    GetMetadata = False
    CommandText = 'SELECT * FROM vNFeCritica WHERE 1=2'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmPadrao.dbConexao
    Left = 1144
    Top = 560
  end
  object cdsNFeErro: TClientDataSet
    Aggregates = <>
    CommandText = 'SELECT * FROM vNFeErro WHERE 1=2'
    Params = <>
    ProviderName = 'dspNFeErro'
    AfterOpen = cdsPadraoAfterOpen
    OnReconcileError = cdsPadraoReconcileError
    Left = 1290
    Top = 608
    object cdsNFeErroidEmpresa: TIntegerField
      FieldName = 'idEmpresa'
      Required = True
    end
    object cdsNFeErroidCadEmpresa: TSmallintField
      FieldName = 'idCadEmpresa'
      Required = True
    end
    object cdsNFeErroidDocSerie: TStringField
      FieldName = 'idDocSerie'
      Required = True
      Size = 5
    end
    object cdsNFeErroCD_ERRO: TSmallintField
      FieldName = 'CD_ERRO'
      Required = True
    end
    object cdsNFeErroDESC_ERRO: TStringField
      FieldName = 'DESC_ERRO'
      Required = True
      Size = 5000
    end
    object cdsNFeErroidNFe: TIntegerField
      FieldName = 'idNFe'
      Required = True
    end
  end
  object dsNFeErro: TDataSource
    DataSet = cdsNFeErro
    Left = 1360
    Top = 608
  end
  object dspNFeErro: TDataSetProvider
    DataSet = sdsNFeErro
    Options = [poAllowMultiRecordUpdates, poPropogateChanges, poAllowCommandText, poUseQuoteChar]
    Left = 1217
    Top = 608
  end
  object sdsNFeErro: TSQLDataSet
    SchemaName = 'gesys'
    GetMetadata = False
    CommandText = 'SELECT * FROM vNFeErro WHERE 1=2'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmPadrao.dbConexao
    Left = 1144
    Top = 608
  end
  object cdsValidacao: TClientDataSet
    Aggregates = <>
    CommandText = 'EXEC spNFeValidacao 1, 1, '#39'SERIE'#39', 999999'
    Params = <>
    ProviderName = 'dspValidacao'
    AfterOpen = cdsPadraoAfterOpen
    OnReconcileError = cdsPadraoReconcileError
    Left = 1290
    Top = 664
    object cdsValidacaodescValidacao: TStringField
      FieldName = 'descValidacao'
      Size = 100
    end
  end
  object dsValidacao: TDataSource
    DataSet = cdsValidacao
    Left = 1360
    Top = 664
  end
  object dspValidacao: TDataSetProvider
    DataSet = sdsValidacao
    Options = [poAllowMultiRecordUpdates, poPropogateChanges, poAllowCommandText, poUseQuoteChar]
    Left = 1217
    Top = 664
  end
  object sdsValidacao: TSQLDataSet
    SchemaName = 'gesys'
    GetMetadata = False
    CommandText = 'EXEC spNFeValidacao 1, 1, '#39'SERIE'#39', 999999'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmPadrao.dbConexao
    Left = 1144
    Top = 664
  end
  object ACBrNFe1: TACBrNFe
    Configuracoes.Geral.SSLLib = libCapicomDelphiSoap
    Configuracoes.Geral.SSLCryptLib = cryCapicom
    Configuracoes.Geral.SSLHttpLib = httpIndy
    Configuracoes.Geral.SSLXmlSignLib = xsMsXmlCapicom
    Configuracoes.Geral.FormatoAlerta = 'TAG:%TAGNIVEL% ID:%ID%/%TAG%(%DESCRICAO%) - %MSG%.'
    Configuracoes.Geral.ValidarDigest = False
    Configuracoes.Geral.IncluirQRCodeXMLNFCe = False
    Configuracoes.WebServices.UF = 'SP'
    Configuracoes.WebServices.AguardarConsultaRet = 0
    Configuracoes.WebServices.QuebradeLinha = '|'
    DANFE = ACBrNFeDANFEFR1
    Left = 1328
    Top = 328
  end
  object cdsNfComp: TClientDataSet
    Aggregates = <>
    CommandText = 'SELECT * FROM NfComplementar'
    Params = <>
    ProviderName = 'dspNfComp'
    AfterOpen = cdsPadraoAfterOpen
    AfterInsert = cdsNfRateioAfterInsert
    AfterEdit = cdsNfImpostoOutroAfterEdit
    OnReconcileError = cdsPadraoReconcileError
    Left = 1184
    Top = 496
  end
  object dsNfComp: TDataSource
    DataSet = cdsNfComp
    Left = 1216
    Top = 496
  end
  object dspNfComp: TDataSetProvider
    DataSet = sdsNfComp
    Options = [poAllowMultiRecordUpdates, poPropogateChanges, poAllowCommandText, poUseQuoteChar]
    BeforeUpdateRecord = dspNfProdutoBeforeUpdateRecord
    Left = 1152
    Top = 496
  end
  object sdsNfComp: TSQLDataSet
    SchemaName = 'gesys'
    GetMetadata = False
    CommandText = 'SELECT * FROM NfComplementar'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmPadrao.dbConexao
    Left = 1120
    Top = 496
  end
  object cdsInutilizar: TClientDataSet
    Aggregates = <>
    Params = <>
    AfterOpen = cdsPadraoAfterOpen
    OnReconcileError = cdsPadraoReconcileError
    Left = 952
    Top = 568
    object cdsInutilizaridDocSerie: TStringField
      FieldName = 'idDocSerie'
      Size = 5
    end
    object cdsInutilizaridNf: TIntegerField
      FieldName = 'idNf'
    end
  end
  object dsInutilizar: TDataSource
    DataSet = cdsInutilizar
    Left = 1040
    Top = 640
  end
  object frxReport1: TfrxReport
    Tag = 1
    Version = '5.2.3'
    DotMatrixReport = False
    EngineOptions.DoublePass = True
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 40401.475989294000000000
    ReportOptions.LastChange = 42879.509567187500000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'const '
      '  LINHAS_DADOS_ADICIONAIS = 12;'
      'var'
      
        '  FooterHeight : Double;                                        ' +
        '                 '
      '  '
      
        'procedure DadosProdutosFooterOnBeforePrint(Sender: TfrxComponent' +
        ');'
      'var'
      
        '  FatorEspaco : Extended;                                       ' +
        '                                  '
      'begin'
      '  FatorEspaco := DadosAdicionais.Height + PageFooter.Height;'
      '  if <Parametros."poscanhoto"> = '#39'1'#39' then'
      
        '    FatorEspaco := FatorEspaco + CanhotoRodape.Height;          ' +
        '                                                                ' +
        '                   '
      '  if Engine.FinalPass then'
      '  begin'
      '    while ( Engine.FreeSpace > FatorEspaco ) do'
      '      Engine.ShowBand(Child1);'
      '    Engine.ShowBand(Child2);'
      '  end;            '
      'end;'
      ''
      
        'procedure DadosProdutosHeaderOnBeforePrint(Sender: TfrxComponent' +
        ');'
      'begin'
      '  if Engine.FinalPass then'
      '  begin    '
      '    set('#39'LinhasImpressas'#39',0);'
      '  end;              '
      'end;'
      ''
      'procedure DadosProdutosOnAfterPrint(Sender: TfrxComponent);'
      'begin'
      '  if Engine.FinalPass then'
      '  begin    '
      '    set('#39'LinhasImpressas'#39',StrToInt(get('#39'LinhasImpressas'#39'))+1);'
      
        '    if (StrToInt(VarToStr(<Parametros."LinhasPorPagina">)) > 0) ' +
        'then'
      '    begin              '
      
        '      if (StrToInt(get('#39'LinhasImpressas'#39')) = StrToInt(VarToStr(<' +
        'Parametros."LinhasPorPagina">))) then    '
      '        Engine.ShowBand(DadosProdutosFooter);              '
      '    end;'
      '  end;            '
      'end;'
      ''
      'procedure EmitenteOnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  if Engine.FinalPass then'
      '  begin              '
      '    if Trim(VarToStr(<Parametros."Imagem">)) <> '#39#39' then'
      '    begin              '
      '      if Trim(VarToStr(<Parametros."LogoExpandido">)) = '#39'1'#39' then'
      '      begin'
      '        MemEmitente.Font.Color := clWhite;'
      '        MemDadosEmitente.Visible := False;'
      '        imgLogo.Top := 5;'
      
        '        imgLogo.Height := memDadosEmitente.Height + (memDadosEmi' +
        'tente.Top - imgLogo.Top);                                       ' +
        '                                '
      
        '        imgLogo.Width := memDadosEmitente.Width + (memDadosEmite' +
        'nte.Left - imgLogo.Left);                                       ' +
        '       '
      '      end;'
      '    end '
      '    else'
      '    begin'
      '      MemDadosEmitente.Left := MemEmitente.Left;'
      '      MemDadosEmitente.Width := MemEmitente.Width;        '
      
        '      imgLogo.Visible := False;                                 ' +
        '                                     '
      '    end;'
      ''
      
        '    if (Trim(VarToStr(<Parametros."Contingencia_ID">)) = '#39#39') the' +
        'n'
      '      BarCodeContigencia.Visible := False;'
      ''
      '    // Restaura a altura original da PageFooter'
      '    if ( <Page> = 1 ) then'
      '    begin              '
      '      PageFooter.Height := FooterHeight;'
      '      PageFooter.Visible := True;'
      '    end'
      '    else'
      '    begin'
      '      PageFooter.Height := 0;'
      '      PageFooter.Visible := False;'
      '    end;            '
      '  end;'
      'end;'
      ''
      'procedure PageFooterOnAfterPrint(Sender: TfrxComponent);'
      'begin'
      '{  if Engine.FinalPass then'
      '  begin              '
      '  //Fabio'
      '    PageFooter.Height := 0;      '
      '    PageFooter.Visible := False;'
      '  end;'
      '  }      '
      'end;'
      ''
      'procedure Page1OnBeforePrint(Sender: TfrxComponent);'
      'var'
      '  sLinha : String;                              '
      'begin'
      '  Canhoto.Visible := <Parametros."poscanhoto"> = '#39'0'#39';'
      '  CanhotoRodape.Visible := <Parametros."poscanhoto"> = '#39'1'#39';'
      '    '
      '  // Salva a altura atual da band Footer'
      '  FooterHeight := PageFooter.Height;'
      '    '
      '  // verifica se existem mais de  linhas nas observa'#231#245'es'
      '  memOBS.Lines.Text := <InformacoesAdicionais."OBS">;      '
      '  memContInfAdicionais.Lines.Clear;'
      
        '  // Se a quantidade de linhas for maior que LINHAS_DADOS_ADICIO' +
        'NAIS, exibe a se'#231#227'o "continua'#231#227'o dos dados adicionais", sen'#227'o oc' +
        'ulta.                                                           ' +
        '                                                                ' +
        '                                                                ' +
        '                                                                ' +
        '            '
      '  if ( memOBS.Lines.Count > LINHAS_DADOS_ADICIONAIS ) then'
      '    pgContDadosAdicionais.Visible := True'
      '  else'
      '    pgContDadosAdicionais.Visible := False;'
      ''
      
        '  //Se a quantidade de linhas for maior que LINHAS_DADOS_ADICION' +
        'AIS, copia as demais linhas para a se'#231#227'o "continua'#231#227'o dos dados ' +
        'adicionais"'
      '  while ( memOBS.Lines.Count > LINHAS_DADOS_ADICIONAIS ) do'
      '  begin              '
      '    sLinha := memOBS.Lines.Strings(LINHAS_DADOS_ADICIONAIS-1);'
      
        '    // Copia a linha para a continua'#231#227'o das informa'#231#245'es adiciona' +
        'is                                                              ' +
        '                                                                ' +
        '                          '
      '    memContInfAdicionais.Lines.Add(sLinha);'
      '    // Apaga a linha do memOBS'
      
        '    memOBS.Lines.Delete(LINHAS_DADOS_ADICIONAIS-1);             ' +
        '               '
      '  end;'
      '    '
      '  if Engine.FinalPass then'
      '  begin'
      ''
      '    if  ('
      '          ( Trim(VarToStr(<ISSQN."vBC">)) = '#39#39' ) or'
      '          ( Trim(VarToStr(<ISSQN."vBC">)) ='#39'0'#39') and    '
      '          ( Trim(VarToStr(<ISSQN."vISS">)) = '#39#39' ) or'
      '          ( Trim(VarToStr(<ISSQN."vISS">)) ='#39'0'#39') and    '
      '          ( Trim(VarToStr(<ISSQN."vServ">)) = '#39#39' ) or'
      '          ( Trim(VarToStr(<ISSQN."vServ">)) ='#39'0'#39') '
      '       )  then'
      '          begin'
      '             ColumnFooter1.Visible := False;'
      '             ColumnFooter1.Height := 0;'
      '          end;                  '
      '  end;                       '
      'end;'
      ''
      'procedure ImpostoOnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  if Engine.FinalPass then'
      '  begin              '
      
        '    if (StrToFloat(VarToStr(<CalculoImposto."VTotTrib">)) = 0) t' +
        'hen        '
      '    begin              '
      '      QuadroVTOTTRIB.Visible:=False;'
      '      memVTOTTRIB.Visible:=False;'
      '    '
      '      QuadroVST.Left := QuadroVST.Left+QuadroVTOTTRIB.Width;'
      '      memVST.Left := QuadroVST.Left;                       '
      ''
      '      QuadroVBCST.Left := QuadroVBCST.Left+QuadroVTOTTRIB.Width;'
      '      memVBCST.Left := QuadroVBCST.Left;                       '
      ''
      
        '      QuadroVBC.Width := QuadroVBC.Width+(QuadroVTOTTRIB.Width/2' +
        ');'
      
        '      memVBC.Width := QuadroVBC.Width;                          ' +
        '                      '
      '      QuadroVICMS.Left := QuadroVBC.Width;'
      ''
      '      memVICMS.Left := QuadroVICMS.Left;'
      
        '      QuadroVICMS.Width := QuadroVICMS.Width+(QuadroVTOTTRIB.Wid' +
        'th/2);'
      
        '      memVICMS.Width := QuadroVICMS.Width;                      ' +
        '           '
      '    end;                                            '
      '  end;                   '
      'end;'
      ''
      'procedure PageHeader1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      
        '  Engine.ShowBand(Emitente);                                    ' +
        '                           '
      'end;'
      ''
      'procedure FaturaOnBeforePrint(Sender: TfrxComponent);'
      'begin'
      
        '  Fatura.Visible     := ( VarToStr(<Fatura."iForma">) <> '#39'2'#39');  ' +
        '  '
      
        '  MemoFatura.Visible := ( Trim( VarToStr(<Fatura."nfat">)) <> '#39#39 +
        ');'
      'end;'
      ''
      'begin'
      ''
      ''
      'end.')
    OnReportPrint = 'frxReportOnReportPrint'
    Left = 692
    Top = 232
    Datasets = <
      item
        DataSetName = 'CalculoImposto'
      end
      item
        DataSetName = 'DadosProdutos'
      end
      item
        DataSetName = 'Destinatario'
      end
      item
        DataSetName = 'Duplicatas'
      end
      item
        DataSetName = 'Emitente'
      end
      item
        DataSetName = 'Fatura'
      end
      item
        DataSetName = 'Identificacao'
      end
      item
        DataSetName = 'InformacoesAdicionais'
      end
      item
        DataSetName = 'ISSQN'
      end
      item
        DataSetName = 'LocalEntrega'
      end
      item
        DataSetName = 'LocalRetirada'
      end
      item
        DataSetName = 'Pagamento'
      end
      item
        DataSetName = 'Parametros'
      end
      item
        DataSetName = 'Transportador'
      end
      item
        DataSetName = 'Veiculo'
      end
      item
        DataSetName = 'Volumes'
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
      LeftMargin = 6.000000000000000000
      RightMargin = 7.000000000000000000
      TopMargin = 7.000000000000000000
      BottomMargin = 7.000000000000000000
      BackPictureVisible = False
      LargeDesignHeight = True
      OnBeforePrint = 'Page1OnBeforePrint'
      object DadosProdutos: TfrxMasterData
        FillType = ftBrush
        Height = 11.338582680000000000
        Top = 1062.047930000000000000
        Width = 744.567410000000000000
        OnAfterPrint = 'DadosProdutosOnAfterPrint'
        DataSetName = 'DadosProdutos'
        RowCount = 0
        Stretched = True
        object Memo131: TfrxMemoView
          Width = 60.472480000000000000
          Height = 11.338582680000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[DadosProdutos."CProd"]')
          ParentFont = False
        end
        object Memo132: TfrxMemoView
          Left = 60.472480000000000000
          Width = 222.992089370000000000
          Height = 11.338582680000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haBlock
          Memo.UTF8W = (
            '[DadosProdutos."DescricaoProduto"]')
          ParentFont = False
        end
        object Memo133: TfrxMemoView
          Left = 283.464537640000000000
          Width = 37.795300000000000000
          Height = 11.338582680000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[DadosProdutos."NCM"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo134: TfrxMemoView
          Left = 321.259813230000000000
          Width = 26.456695350000000000
          Height = 11.338582680000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[DadosProdutos."ORIGEM"][DadosProdutos."CST"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo135: TfrxMemoView
          Left = 347.716506140000000000
          Width = 24.566929130000000000
          Height = 11.338582680000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[DadosProdutos."CFOP"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo136: TfrxMemoView
          Left = 372.283493860000000000
          Width = 22.677180000000000000
          Height = 11.338582680000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[DadosProdutos."Unidade"]')
          ParentFont = False
        end
        object memqCom: TfrxMemoView
          Left = 394.960659210000000000
          Width = 39.685039370000000000
          Height = 11.338582680000000000
          StretchMode = smMaxHeight
          DisplayFormat.FormatStr = '%2.0n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[DadosProdutos."Quantidade"]')
          ParentFont = False
        end
        object memvUnCom: TfrxMemoView
          Left = 434.645669290000000000
          Width = 47.244094490000000000
          Height = 11.338582680000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[DadosProdutos."ValorUnitario"]')
          ParentFont = False
        end
        object Memo139: TfrxMemoView
          Left = 481.889763780000000000
          Width = 45.354360000000000000
          Height = 11.338582680000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[DadosProdutos."vDesc"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo140: TfrxMemoView
          Left = 527.244094490000000000
          Width = 51.023622050000000000
          Height = 11.338582680000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[DadosProdutos."VProd"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo141: TfrxMemoView
          Left = 578.268090000000000000
          Width = 41.574830000000000000
          Height = 11.338582680000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[DadosProdutos."VBC"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo142: TfrxMemoView
          Left = 619.842920000000000000
          Width = 41.574803150000000000
          Height = 11.338582680000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[DadosProdutos."VICMS"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo143: TfrxMemoView
          Left = 661.417322830000000000
          Width = 41.574830000000000000
          Height = 11.338582680000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[DadosProdutos."VIPI"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo144: TfrxMemoView
          Left = 702.992125980000000000
          Width = 20.787401570000000000
          Height = 11.338582680000000000
          StretchMode = smMaxHeight
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[DadosProdutos."PICMS"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo145: TfrxMemoView
          Left = 723.779527560000000000
          Width = 20.787401570000000000
          Height = 11.338582680000000000
          StretchMode = smMaxHeight
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[DadosProdutos."PIPI"]')
          ParentFont = False
          WordWrap = False
        end
      end
      object Canhoto: TfrxReportTitle
        FillType = ftBrush
        Height = 79.370078740000000000
        Top = 18.897650000000000000
        Width = 744.567410000000000000
        object Memo2: TfrxMemoView
          Width = 642.520100000000000000
          Height = 37.795275590000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          Memo.UTF8W = (
            
              'Recebemos de [Emitente."XNome"] os produtos e/ou servi'#231'os consta' +
              'ntes da Nota Fiscal Eletr'#244'nica indicada ao lado. '
            '[Parametros."ResumoCanhoto"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo3: TfrxMemoView
          Left = 143.622140000000000000
          Top = 37.795275590000000000
          Width = 498.897960000000000000
          Height = 30.236240000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          Memo.UTF8W = (
            'IDENTIFICA'#199#195'O E ASSINATURA DO RECEBEDOR')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Top = 37.795275590000000000
          Width = 143.622140000000000000
          Height = 30.236240000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          Memo.UTF8W = (
            'DATA DO RECEBIMENTO')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Align = baWidth
          Top = 73.811070000000000000
          Width = 744.567410000000000000
          Color = clBlack
          Frame.Style = fsDot
          Frame.Typ = [ftTop]
          Frame.Width = 0.500000000000000000
        end
        object Memo17: TfrxMemoView
          Left = 642.520100000000000000
          Width = 102.047212360000000000
          Height = 68.031496060000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'NF-e'
            'N'#186' [Identificacao."NNF"]'
            'S'#233'rie [Identificacao."Serie" #n#000]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object Emitente: TfrxPageHeader
        FillType = ftBrush
        Height = 173.858362910000000000
        Top = 120.944960000000000000
        Width = 744.567410000000000000
        OnBeforePrint = 'EmitenteOnBeforePrint'
        object BarCodeContigencia: TfrxBarCodeView
          ShiftMode = smWhenOverlapped
          Left = 469.764070000000000000
          Top = 84.370130000000000000
          Width = 233.000000000000000000
          Height = 34.015745590000000000
          BarType = bcCode128C
          DataField = 'Contingencia_ID'
          DataSetName = 'Parametros'
          Rotation = 0
          ShowText = False
          Text = '123456789012345678901234567890123456'
          WideBarRatio = 2.000000000000000000
          Zoom = 1.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
        end
        object memConsultaAutenticidade: TfrxMemoView
          Left = 423.307360000000000000
          Top = 79.370130000000000000
          Width = 321.260050000000000000
          Height = 41.574805590000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[Parametros."ConsultaAutenticidade"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo1: TfrxMemoView
          Left = 423.307360000000000000
          Width = 321.259842520000000000
          Height = 49.133890000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          ParentFont = False
        end
        object BarCodeChave: TfrxBarCodeView
          Left = 445.677177560000000000
          Top = 5.559060000000000000
          Width = 277.000000000000000000
          Height = 37.795275590000000000
          BarType = bcCode128C
          DataField = 'Id'
          DataSetName = 'Identificacao'
          Rotation = 0
          ShowText = False
          Text = '12345678901234567890123456789012345678901234'
          WideBarRatio = 2.000000000000000000
          Zoom = 1.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
        end
        object Memo6: TfrxMemoView
          Left = 423.307360000000000000
          Top = 49.133890000000000000
          Width = 321.260050000000000000
          Height = 30.236240000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          Memo.UTF8W = (
            'CHAVE DE ACESSO')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 423.307360000000000000
          Top = 56.692913390000000000
          Width = 321.260050000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[Identificacao."Chave"]')
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo9: TfrxMemoView
          Left = 309.921460000000000000
          Width = 113.385826770000000000
          Height = 120.944960000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'DANFE')
          ParentFont = False
        end
        object memEmitente: TfrxMemoView
          Width = 309.921460000000000000
          Height = 120.944960000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapX = 1.000000000000000000
          GapY = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[Emitente."XNome"]')
          ParentFont = False
        end
        object memDadosEmitente: TfrxMemoView
          Left = 100.826840000000000000
          Top = 37.795275590000000000
          Width = 207.874020630000000000
          Height = 81.259842520000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          GapX = 1.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[Emitente."DADOS_ENDERECO"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo12: TfrxMemoView
          Left = 313.157700000000000000
          Top = 16.897650000000000000
          Width = 105.826840000000000000
          Height = 22.677180000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'Documento Auxiliar da '
            'Nota Fiscal Eletr'#244'nica')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo13: TfrxMemoView
          Left = 321.716760000000000000
          Top = 70.811070000000000000
          Width = 98.267780000000000000
          Height = 49.133890000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'N'#186' [Identificacao."NNF"]'
            '   S'#201'RIE [Identificacao."Serie" #n#000]'
            '   FOLHA [Page]/[TotalPages#]')
          ParentFont = False
          WordWrap = False
        end
        object Memo15: TfrxMemoView
          Left = 313.716760000000000000
          Top = 45.354360000000000000
          Width = 75.590600000000000000
          Height = 22.677180000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '0 - ENTRADA'
            '1 - SA'#205'DA')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo16: TfrxMemoView
          Left = 389.748300000000000000
          Top = 45.354330710000000000
          Width = 22.677165350000000000
          Height = 22.677165350000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[Identificacao."TpNF"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo19: TfrxMemoView
          Top = 120.944960000000000000
          Width = 423.307360000000000000
          Height = 26.456692910000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          Memo.UTF8W = (
            'NATUREZA DA OPERA'#199#195'O')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          Top = 129.259842520000000000
          Width = 423.307360000000000000
          Height = 17.007874020000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          GapX = 5.000000000000000000
          Memo.UTF8W = (
            '[Identificacao."NatOp"]')
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo21: TfrxMemoView
          Left = 423.307360000000000000
          Top = 120.944960000000000000
          Width = 321.260050000000000000
          Height = 26.456692910000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          Memo.UTF8W = (
            '[Parametros."Contingencia_Descricao"]')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          Left = 423.307360000000000000
          Top = 129.259842520000000000
          Width = 321.260050000000000000
          Height = 17.007874020000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[Parametros."Contingencia_Valor"]')
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo23: TfrxMemoView
          Top = 147.401670000000000000
          Width = 253.228510000000000000
          Height = 26.456692910000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          Memo.UTF8W = (
            'INSCRI'#199#195'O ESTADUAL')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          Top = 156.850410790000000000
          Width = 253.228510000000000000
          Height = 17.007874020000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          GapX = 5.000000000000000000
          Memo.UTF8W = (
            '[Emitente."IE"]')
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo25: TfrxMemoView
          Left = 253.228510000000000000
          Top = 147.401670000000000000
          Width = 253.228510000000000000
          Height = 26.456692910000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          Memo.UTF8W = (
            'INSCRI'#199#195'O ESTADUAL DO SUBSTITUTO TRIBUT'#193'RIO')
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          Left = 253.228510000000000000
          Top = 156.850410790000000000
          Width = 253.228510000000000000
          Height = 17.007874020000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          GapX = 5.000000000000000000
          Memo.UTF8W = (
            '[Emitente."IEST"]')
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo27: TfrxMemoView
          Left = 506.457020000000000000
          Top = 147.401670000000000000
          Width = 238.110390000000000000
          Height = 26.456692910000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          Memo.UTF8W = (
            'CNPJ')
          ParentFont = False
        end
        object Memo28: TfrxMemoView
          Left = 506.457020000000000000
          Top = 156.850410790000000000
          Width = 238.110390000000000000
          Height = 17.007874020000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          GapX = 5.000000000000000000
          Memo.UTF8W = (
            '[Emitente."CNPJ"]')
          ParentFont = False
          VAlign = vaBottom
        end
        object imgLogo: TfrxPictureView
          Left = 1.889763780000000000
          Top = 37.795275590000000000
          Width = 98.267711650000000000
          Height = 81.259842520000000000
          Center = True
          DataField = 'LogoCarregado'
          DataSetName = 'Parametros'
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
      end
      object PageFooter: TfrxPageFooter
        FillType = ftBrush
        Height = 14.117988190000000000
        Top = 2683.466300000000000000
        Width = 744.567410000000000000
        OnAfterPrint = 'PageFooterOnAfterPrint'
        object memDataHora: TfrxMemoView
          Align = baLeft
          Top = 0.889641730000221100
          Width = 445.984540000000000000
          Height = 13.228346460000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            
              'DATA E HORA DA IMPRESS'#195'O: [Date #ddd/mm/yyyy] [Time #dhh:mm:ss] ' +
              '[Parametros."Usuario"]')
          ParentFont = False
        end
        object memSistema: TfrxMemoView
          Align = baRight
          Left = 453.543600000000000000
          Top = 0.889641730000221100
          Width = 291.023810000000000000
          Height = 13.228346460000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[Parametros."Sistema"]')
          ParentFont = False
        end
      end
      object Destinatario: TfrxMasterData
        FillType = ftBrush
        Height = 96.267762910000000000
        Top = 355.275820000000000000
        Width = 744.567410000000000000
        OnBeforePrint = 'DestinatarioOnBeforePrint'
        DataSetName = 'Identificacao'
        RowCount = 1
        object Memo29: TfrxMemoView
          Top = 16.897650000000000000
          Width = 468.661720000000000000
          Height = 26.456692910000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          Memo.UTF8W = (
            'NOME / RAZ'#195'O SOCIAL')
          ParentFont = False
        end
        object Memo30: TfrxMemoView
          Top = 26.346390790000000000
          Width = 464.882190000000000000
          Height = 17.007874020000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          GapX = 5.000000000000000000
          Memo.UTF8W = (
            '[Destinatario."XNome"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo31: TfrxMemoView
          Left = 631.181510000000000000
          Top = 16.897650000000000000
          Width = 113.385900000000000000
          Height = 26.456692910000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          Memo.UTF8W = (
            'DATA DA EMISS'#195'O')
          ParentFont = False
        end
        object Memo32: TfrxMemoView
          Left = 631.181510000000000000
          Top = 26.346390790000000000
          Width = 113.385900000000000000
          Height = 17.007874020000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          GapX = 5.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[Identificacao."DEmi"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo33: TfrxMemoView
          Left = 631.181510000000000000
          Top = 43.354360000000000000
          Width = 113.385900000000000000
          Height = 26.456692910000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          Memo.UTF8W = (
            'DATA DA SA'#205'DA')
          ParentFont = False
        end
        object Memo34: TfrxMemoView
          Left = 631.181510000000000000
          Top = 52.803100790000000000
          Width = 113.385900000000000000
          Height = 17.007874020000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          GapX = 5.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[Identificacao."DSaiEnt"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo35: TfrxMemoView
          Left = 631.181510000000000000
          Top = 69.811070000000000000
          Width = 113.385900000000000000
          Height = 26.456692910000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          Memo.UTF8W = (
            'HORA DA SA'#205'DA')
          ParentFont = False
        end
        object Memo36: TfrxMemoView
          Left = 631.181510000000000000
          Top = 79.259810790000000000
          Width = 113.385900000000000000
          Height = 17.007874020000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          GapX = 5.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[Identificacao."HoraSaida"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo37: TfrxMemoView
          Left = 468.661720000000000000
          Top = 16.897650000000000000
          Width = 162.519790000000000000
          Height = 26.456692910000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          Memo.UTF8W = (
            'CNPJ / CPF')
          ParentFont = False
        end
        object Memo38: TfrxMemoView
          Left = 468.661720000000000000
          Top = 26.346390790000000000
          Width = 162.519790000000000000
          Height = 17.007874020000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          GapX = 5.000000000000000000
          Memo.UTF8W = (
            '[Destinatario."CNPJCPF"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo39: TfrxMemoView
          Left = 555.590910000000000000
          Top = 43.354360000000000000
          Width = 75.590600000000000000
          Height = 26.456692910000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          Memo.UTF8W = (
            'CEP')
          ParentFont = False
        end
        object Memo40: TfrxMemoView
          Left = 555.590910000000000000
          Top = 52.803100790000000000
          Width = 75.590600000000000000
          Height = 17.007874020000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          GapX = 5.000000000000000000
          Memo.UTF8W = (
            '[Destinatario."CEP"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo41: TfrxMemoView
          Left = 385.512060000000000000
          Top = 43.354360000000000000
          Width = 170.078850000000000000
          Height = 26.456692910000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          Memo.UTF8W = (
            'BAIRRO / DISTRITO')
          ParentFont = False
        end
        object Memo42: TfrxMemoView
          Left = 385.512060000000000000
          Top = 52.803100790000000000
          Width = 170.078850000000000000
          Height = 17.007874020000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          GapX = 5.000000000000000000
          Memo.UTF8W = (
            '[Destinatario."XBairro"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo43: TfrxMemoView
          Top = 43.354360000000000000
          Width = 385.512060000000000000
          Height = 26.456692910000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          Memo.UTF8W = (
            'ENDERE'#199'O')
          ParentFont = False
        end
        object Memo44: TfrxMemoView
          Top = 52.803100790000000000
          Width = 381.732530000000000000
          Height = 17.007874020000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          GapX = 5.000000000000000000
          Memo.UTF8W = (
            
              '[Destinatario."XLgr"], [Destinatario."Nro"]  [Destinatario."XCpl' +
              '"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo45: TfrxMemoView
          Top = 69.811070000000000000
          Width = 355.275820000000000000
          Height = 26.456692910000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          Memo.UTF8W = (
            'MUNIC'#205'PIO')
          ParentFont = False
        end
        object Memo46: TfrxMemoView
          Top = 79.259810790000000000
          Width = 351.496290000000000000
          Height = 17.007874020000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          GapX = 5.000000000000000000
          Memo.UTF8W = (
            '[Destinatario."XMun"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo47: TfrxMemoView
          Left = 355.275820000000000000
          Top = 69.811070000000000000
          Width = 30.236240000000000000
          Height = 26.456692910000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          Memo.UTF8W = (
            'UF')
          ParentFont = False
        end
        object Memo48: TfrxMemoView
          Left = 355.275820000000000000
          Top = 79.259810790000000000
          Width = 30.236240000000000000
          Height = 17.007874020000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          GapX = 5.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[Destinatario."UF"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo49: TfrxMemoView
          Left = 385.512060000000000000
          Top = 69.811070000000000000
          Width = 113.385900000000000000
          Height = 26.456692910000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          Memo.UTF8W = (
            'TELEFONE / FAX')
          ParentFont = False
        end
        object Memo50: TfrxMemoView
          Left = 385.512060000000000000
          Top = 79.259810790000000000
          Width = 113.385900000000000000
          Height = 17.007874020000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          GapX = 5.000000000000000000
          Memo.UTF8W = (
            '[Destinatario."Fone"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo51: TfrxMemoView
          Left = 498.897960000000000000
          Top = 69.811070000000000000
          Width = 132.283550000000000000
          Height = 26.456692910000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          Memo.UTF8W = (
            'INSCRI'#199#195'O ESTADUAL')
          ParentFont = False
        end
        object Memo52: TfrxMemoView
          Left = 498.897960000000000000
          Top = 79.259810790000000000
          Width = 132.283550000000000000
          Height = 17.007874020000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          GapX = 5.000000000000000000
          Memo.UTF8W = (
            '[Destinatario."IE"]')
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo53: TfrxMemoView
          Top = 3.779530000000020000
          Width = 430.866420000000000000
          Height = 13.228344020000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'DESTINAT'#193'RIO / REMETENTE')
          ParentFont = False
          VAlign = vaBottom
        end
      end
      object Fatura: TfrxMasterData
        FillType = ftBrush
        Height = 43.464566929133900000
        Top = 612.283860000000000000
        Width = 744.567410000000000000
        OnBeforePrint = 'FaturaOnBeforePrint'
        DataSetName = 'Fatura'
        RowCount = 0
        object Memo146: TfrxMemoView
          Align = baLeft
          Top = 17.007874015748000000
          Width = 744.566929130000000000
          Height = 20.787404020000000000
          OnBeforePrint = 'Memo191OnBeforePrint'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapX = 3.000000000000000000
          Memo.UTF8W = (
            '[Fatura."Pagamento"]  ')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
          Formats = <
            item
            end
            item
            end
            item
            end
            item
            end
            item
            end>
        end
        object Memo190: TfrxMemoView
          Top = 3.779527560000020000
          Width = 430.866420000000000000
          Height = 13.228344020000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'FATURA')
          ParentFont = False
          VAlign = vaBottom
        end
        object MemoFatura: TfrxMemoView
          Left = 128.504508190000000000
          Top = 17.007874015748000000
          Width = 616.062901810000000000
          Height = 20.787404020000000000
          OnBeforePrint = 'Memo191OnBeforePrint'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapX = 3.000000000000000000
          Memo.UTF8W = (
            
              '  N'#250'mero:   [Fatura."nFat"]     -   Valor Original: R$ [Fatura."' +
              'vOrig" #n%2,2n]    -   Valor Desconto:  R$ [Fatura."vDesc" #n%2,' +
              '2n]    -   ValorL'#237'quido: R$ [Fatura."vLiq" #n%2,2n]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
          Formats = <
            item
            end
            item
            end
            item
            end
            item
            end>
        end
      end
      object DuplicatasHeader: TfrxGroupHeader
        FillType = ftBrush
        Height = 17.007874020000000000
        Top = 680.315400000000000000
        Width = 744.567410000000000000
        Condition = 'Duplicatas."ChaveNFe"'
        ReprintOnNewPage = True
        object Memo205: TfrxMemoView
          Top = 3.779530000000020000
          Width = 430.866420000000000000
          Height = 13.228344020000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'DUPLICATAS')
          ParentFont = False
          VAlign = vaBottom
        end
      end
      object DadosProdutosHeader: TfrxGroupHeader
        FillType = ftBrush
        Height = 41.196850390000000000
        Top = 997.795920000000000000
        Width = 744.567410000000000000
        OnBeforePrint = 'DadosProdutosHeaderOnBeforePrint'
        Condition = 'DadosProdutos."ChaveNFe"'
        ReprintOnNewPage = True
        object Memo115: TfrxMemoView
          Top = 3.779530000000020000
          Width = 430.866420000000000000
          Height = 13.228344020000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'DADOS DOS PRODUTOS / SERVI'#199'OS')
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo116: TfrxMemoView
          Top = 18.338592440000000000
          Width = 60.472480000000000000
          Height = 22.677162910000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'C'#211'DIGO'
            'PRODUTO')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo117: TfrxMemoView
          Left = 60.472480000000000000
          Top = 18.338592440000000000
          Width = 222.992089370000000000
          Height = 22.677162910000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'DESCRI'#199#195'O DO PRODUTO / SERVI'#199'O')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo118: TfrxMemoView
          Left = 283.464537640000000000
          Top = 18.338592440000000000
          Width = 37.795300000000000000
          Height = 22.677162910000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'NCM/SH')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo119: TfrxMemoView
          Left = 321.259813230000000000
          Top = 18.338592440000000000
          Width = 26.456695350000000000
          Height = 22.677162910000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[Emitente."DESCR_CST"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo120: TfrxMemoView
          Left = 347.716506140000000000
          Top = 18.338592440000000000
          Width = 24.566929130000000000
          Height = 22.677167800000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'CFOP')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo121: TfrxMemoView
          Left = 372.283493860000000000
          Top = 18.338592440000000000
          Width = 22.677180000000000000
          Height = 22.677162910000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'UNID.')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo122: TfrxMemoView
          Left = 394.960659210000000000
          Top = 18.338592440000000000
          Width = 39.685039370078740000
          Height = 22.677162910000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'QTDE.')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo123: TfrxMemoView
          Left = 434.645669290000000000
          Top = 18.338592440000000000
          Width = 47.244094488188980000
          Height = 22.677162910000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'VALOR'
            'UNIT'#193'RIO')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo124: TfrxMemoView
          Left = 481.889763780000000000
          Top = 18.338592440000000000
          Width = 45.354330710000000000
          Height = 22.677162910000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[Parametros."Desconto"]'
            'DESCONTO')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo125: TfrxMemoView
          Left = 527.244094490000000000
          Top = 18.338592440000000000
          Width = 51.023622050000000000
          Height = 22.677162910000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'VALOR'
            '[Parametros."TotalLiquido"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo126: TfrxMemoView
          Left = 578.268090000000000000
          Top = 18.338592440000000000
          Width = 41.574830000000000000
          Height = 22.677162910000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'BASE DE '
            'C'#193'LC. ICMS')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo127: TfrxMemoView
          Left = 619.842920000000000000
          Top = 18.338592440000000000
          Width = 41.574803150000000000
          Height = 22.677162910000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'VALOR'
            'ICMS')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo128: TfrxMemoView
          Left = 661.417322830000000000
          Top = 18.338592440000000000
          Width = 41.574803150000000000
          Height = 22.677162910000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'VALOR'
            'IPI')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo129: TfrxMemoView
          Left = 702.992125980000000000
          Top = 29.677182440000000000
          Width = 20.787401570000000000
          Height = 11.338572910000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'ICMS')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo130: TfrxMemoView
          Left = 723.779527560000000000
          Top = 29.677182440000000000
          Width = 20.787401570000000000
          Height = 11.338572910000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'IPI')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo189: TfrxMemoView
          Left = 702.992123540000000000
          Top = 18.338592440000000000
          Width = 41.574830000000000000
          Height = 11.338572910000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'AL'#205'Q. %')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
      end
      object Imposto: TfrxMasterData
        FillType = ftBrush
        Height = 70.031525350000000000
        Top = 782.362710000000000000
        Width = 744.567410000000000000
        OnBeforePrint = 'ImpostoOnBeforePrint'
        DataSetName = 'CalculoImposto'
        RowCount = 1
        object Memo58: TfrxMemoView
          Top = 3.779530000000020000
          Width = 430.866420000000000000
          Height = 13.228344020000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'C'#193'LCULO DO IMPOSTO')
          ParentFont = False
          VAlign = vaBottom
        end
        object QuadroVBC: TfrxMemoView
          Top = 17.118122440000000000
          Width = 114.897637800000000000
          Height = 26.456692910000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          Memo.UTF8W = (
            'BASE DE C'#193'LCULO DO ICMS')
          ParentFont = False
        end
        object memVBC: TfrxMemoView
          Top = 26.566863230000000000
          Width = 114.897637800000000000
          Height = 17.007874020000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          GapX = 5.000000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[CalculoImposto."VBC"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object QuadroVICMS: TfrxMemoView
          Left = 114.897637800000000000
          Top = 17.118122440000000000
          Width = 114.897637800000000000
          Height = 26.456692910000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          Memo.UTF8W = (
            'VALOR DO ICMS')
          ParentFont = False
        end
        object memVICMS: TfrxMemoView
          Left = 114.897637800000000000
          Top = 26.566863230000000000
          Width = 114.897637800000000000
          Height = 17.007874020000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          GapX = 5.000000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[CalculoImposto."VICMS"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object QuadroVBCST: TfrxMemoView
          Left = 229.795275590000000000
          Top = 17.118122440000000000
          Width = 128.504020000000000000
          Height = 26.456692910000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          Memo.UTF8W = (
            'BASE DE C'#193'LCULO DO ICMS SUBST.')
          ParentFont = False
        end
        object memVBCST: TfrxMemoView
          Left = 229.795275590000000000
          Top = 26.566863230000000000
          Width = 128.504020000000000000
          Height = 17.007874020000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          GapX = 5.000000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[CalculoImposto."VBCST"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object QuadrovST: TfrxMemoView
          Left = 358.299212600000000000
          Top = 17.118122440000000000
          Width = 113.385900000000000000
          Height = 26.456692910000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          Memo.UTF8W = (
            'VALOR DO ICMS SUBST.')
          ParentFont = False
        end
        object memVST: TfrxMemoView
          Left = 358.299212600000000000
          Top = 26.566863230000000000
          Width = 113.385900000000000000
          Height = 17.007874020000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          GapX = 5.000000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[CalculoImposto."VST"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo67: TfrxMemoView
          Left = 597.165740000000000000
          Top = 17.118122440000000000
          Width = 147.401670000000000000
          Height = 26.456692910000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          Memo.UTF8W = (
            'VALOR TOTAL DOS PRODUTOS')
          ParentFont = False
        end
        object Memo68: TfrxMemoView
          Left = 597.165740000000000000
          Top = 25.566863230000000000
          Width = 147.401670000000000000
          Height = 17.007874020000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          GapX = 5.000000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[CalculoImposto."VProd"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo69: TfrxMemoView
          Left = 459.590848000000000000
          Top = 43.574832440000000000
          Width = 137.574892000000000000
          Height = 26.456692910000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          Memo.UTF8W = (
            'VALOR DO IPI')
          ParentFont = False
        end
        object Memo70: TfrxMemoView
          Left = 459.590848000000000000
          Top = 53.023573230000000000
          Width = 137.574892000000000000
          Height = 17.007874020000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          GapX = 5.000000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[CalculoImposto."VIPI"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo71: TfrxMemoView
          Left = 329.575016000000000000
          Top = 43.574832440000000000
          Width = 130.015832000000000000
          Height = 26.456692910000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          Memo.UTF8W = (
            'OUTRAS DESPESAS ACESS'#211'RIAS')
          ParentFont = False
        end
        object Memo72: TfrxMemoView
          Left = 329.575016000000000000
          Top = 53.023573230000000000
          Width = 130.015832000000000000
          Height = 17.007874020000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          GapX = 5.000000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[CalculoImposto."VOutro"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo73: TfrxMemoView
          Left = 229.795424000000000000
          Top = 43.574832440000000000
          Width = 99.779592000000000000
          Height = 26.456692910000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          Memo.UTF8W = (
            'DESCONTO')
          ParentFont = False
        end
        object Memo74: TfrxMemoView
          Left = 229.795424000000000000
          Top = 53.023573230000000000
          Width = 99.779592000000000000
          Height = 17.007874020000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          GapX = 5.000000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[CalculoImposto."VDesc"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo75: TfrxMemoView
          Left = 114.897712000000000000
          Top = 43.574832440000000000
          Width = 114.897712000000000000
          Height = 26.456692910000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          Memo.UTF8W = (
            'VALOR DO SEGURO')
          ParentFont = False
        end
        object Memo76: TfrxMemoView
          Left = 114.897712000000000000
          Top = 53.023573230000000000
          Width = 114.897712000000000000
          Height = 17.007874020000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          GapX = 5.000000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[CalculoImposto."VSeg"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo77: TfrxMemoView
          Top = 43.574832440000000000
          Width = 114.897712000000000000
          Height = 26.456692910000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          Memo.UTF8W = (
            'VALOR DO FRETE')
          ParentFont = False
        end
        object Memo78: TfrxMemoView
          Top = 53.023573230000000000
          Width = 114.897712000000000000
          Height = 17.007874020000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          GapX = 5.000000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[CalculoImposto."VFrete"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo79: TfrxMemoView
          Left = 597.165740000000000000
          Top = 43.574832440000000000
          Width = 147.401670000000000000
          Height = 26.456692910000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          Memo.UTF8W = (
            'VALOR TOTAL DA NOTA')
          ParentFont = False
        end
        object Memo80: TfrxMemoView
          Left = 597.165740000000000000
          Top = 52.023573230000000000
          Width = 147.401670000000000000
          Height = 17.007874020000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          GapX = 5.000000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[CalculoImposto."VNF"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object QuadroVTOTTRIB: TfrxMemoView
          Left = 471.685029610000000000
          Top = 17.196850390000000000
          Width = 125.480339370000000000
          Height = 26.267716540000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          Memo.UTF8W = (
            'V.APROX. TRIBUTOS [CalculoImposto."VTribFonte"]')
          ParentFont = False
        end
        object memVTOTTRIB: TfrxMemoView
          Left = 472.441250000000000000
          Top = 26.645669290000000000
          Width = 124.724490000000000000
          Height = 17.007874020000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          GapX = 5.000000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[CalculoImposto."VTotTrib"] ([CalculoImposto."VTribPerc"] %)')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
      end
      object TransportadorVolumes: TfrxMasterData
        FillType = ftBrush
        Height = 96.378045510000000000
        Top = 876.850960000000000000
        Width = 744.567410000000000000
        DataSetName = 'Transportador'
        RowCount = 1
        object Memo82: TfrxMemoView
          Top = 3.779530000000020000
          Width = 430.866420000000000000
          Height = 13.228344020000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'TRANSPORTADOR / VOLUMES TRANSPORTADOS')
          ParentFont = False
        end
        object Memo83: TfrxMemoView
          Left = 636.094512600000000000
          Top = 17.007932600000000000
          Width = 108.472433620000000000
          Height = 26.456692910000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          Memo.UTF8W = (
            'CNPJ / CPF')
          ParentFont = False
        end
        object Memo84: TfrxMemoView
          Left = 636.094512600000000000
          Top = 26.456673390000000000
          Width = 108.472433620000000000
          Height = 17.007874020000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          GapX = 5.000000000000000000
          Memo.UTF8W = (
            '[Transportador."CNPJCPF"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo85: TfrxMemoView
          Left = 608.504330000000000000
          Top = 17.007932600000000000
          Width = 27.590548740000000000
          Height = 26.456692910000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          Memo.UTF8W = (
            'UF')
          ParentFont = False
        end
        object Memo86: TfrxMemoView
          Left = 608.504330000000000000
          Top = 26.456673390000000000
          Width = 27.590548740000000000
          Height = 17.007874020000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          GapX = 5.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[Veiculo."UF"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo87: TfrxMemoView
          Left = 521.575140000000000000
          Top = 17.007932600000000000
          Width = 86.929190000000000000
          Height = 26.456692910000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          Memo.UTF8W = (
            'PLACA DO VE'#205'CULO')
          ParentFont = False
        end
        object Memo88: TfrxMemoView
          Left = 521.575140000000000000
          Top = 26.456673390000000000
          Width = 86.929190000000000000
          Height = 17.007874020000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          GapX = 5.000000000000000000
          Memo.UTF8W = (
            '[Veiculo."PLACA"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo89: TfrxMemoView
          Left = 438.425480000000000000
          Top = 17.007932600000000000
          Width = 83.149660000000000000
          Height = 26.456692910000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          Memo.UTF8W = (
            'C'#211'DIGO ANTT')
          ParentFont = False
        end
        object Memo90: TfrxMemoView
          Left = 438.425480000000000000
          Top = 26.456673390000000000
          Width = 79.370130000000000000
          Height = 17.007874020000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          GapX = 5.000000000000000000
          Memo.UTF8W = (
            '[Veiculo."RNTC"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo91: TfrxMemoView
          Left = 355.275820000000000000
          Top = 17.007932600000000000
          Width = 83.149660000000000000
          Height = 26.456692910000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          Memo.UTF8W = (
            'FRETE POR CONTA')
          ParentFont = False
        end
        object Memo92: TfrxMemoView
          Left = 355.275820000000000000
          Top = 26.456673390000000000
          Width = 83.149660000000000000
          Height = 17.007874020000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          GapX = 5.000000000000000000
          Memo.UTF8W = (
            '[Transportador."ModFrete"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo93: TfrxMemoView
          Top = 17.007932600000000000
          Width = 355.275820000000000000
          Height = 26.456692910000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          Memo.UTF8W = (
            'NOME / RAZ'#195'O SOCIAL')
          ParentFont = False
        end
        object Memo94: TfrxMemoView
          Top = 26.456673390000000000
          Width = 355.275820000000000000
          Height = 17.007874020000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          GapX = 5.000000000000000000
          Memo.UTF8W = (
            '[Transportador."XNome"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo95: TfrxMemoView
          Left = 608.504330000000000000
          Top = 43.464642600000000000
          Width = 27.590548740000000000
          Height = 26.456692910000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          Memo.UTF8W = (
            'UF')
          ParentFont = False
        end
        object Memo96: TfrxMemoView
          Left = 608.504330000000000000
          Top = 52.913383390000000000
          Width = 27.590548740000000000
          Height = 17.007874020000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          GapX = 5.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[Transportador."UF"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo97: TfrxMemoView
          Left = 636.094512600000000000
          Top = 43.464642600000000000
          Width = 108.472433620000000000
          Height = 26.456692910000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          Memo.UTF8W = (
            'INSCRI'#199#195'O ESTADUAL')
          ParentFont = False
        end
        object Memo98: TfrxMemoView
          Left = 636.094512600000000000
          Top = 52.913383390000000000
          Width = 108.472433620000000000
          Height = 17.007874020000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          GapX = 5.000000000000000000
          Memo.UTF8W = (
            '[Transportador."IE"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo99: TfrxMemoView
          Left = 355.275820000000000000
          Top = 43.464642600000000000
          Width = 253.228510000000000000
          Height = 26.456692910000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          Memo.UTF8W = (
            'MUNIC'#205'PIO')
          ParentFont = False
        end
        object Memo100: TfrxMemoView
          Left = 355.275820000000000000
          Top = 52.913383390000000000
          Width = 253.228510000000000000
          Height = 17.007874020000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          GapX = 5.000000000000000000
          Memo.UTF8W = (
            '[Transportador."XMun"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo101: TfrxMemoView
          Top = 43.464642600000000000
          Width = 355.275820000000000000
          Height = 26.456692910000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          Memo.UTF8W = (
            'ENDERE'#199'O')
          ParentFont = False
        end
        object Memo102: TfrxMemoView
          Top = 52.913383390000000000
          Width = 355.275820000000000000
          Height = 17.007874020000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          GapX = 5.000000000000000000
          Memo.UTF8W = (
            '[Transportador."XEnder"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo103: TfrxMemoView
          Top = 69.921352600000000000
          Width = 59.212636670000000000
          Height = 26.456692910000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          HideZeros = True
          Memo.UTF8W = (
            'QUANTIDADE')
          ParentFont = False
        end
        object Memo104: TfrxMemoView
          Top = 79.370093390000000000
          Width = 59.212636670000000000
          Height = 17.007874020000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          GapX = 5.000000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8W = (
            '[Volumes."QVol"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo105: TfrxMemoView
          Left = 59.212636670000000000
          Top = 69.921352600000000000
          Width = 153.700886670000000000
          Height = 26.456692910000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          Memo.UTF8W = (
            'ESP'#201'CIE')
          ParentFont = False
        end
        object Memo106: TfrxMemoView
          Left = 59.212636670000000000
          Top = 79.370093390000000000
          Width = 153.700886670000000000
          Height = 17.007874020000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          GapX = 5.000000000000000000
          Memo.UTF8W = (
            '[Volumes."Esp"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo107: TfrxMemoView
          Left = 212.913523330000000000
          Top = 69.921352600000000000
          Width = 142.362296670000000000
          Height = 26.456692910000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          Memo.UTF8W = (
            'MARCA')
          ParentFont = False
        end
        object Memo108: TfrxMemoView
          Left = 212.913523330000000000
          Top = 79.370093390000000000
          Width = 142.362296670000000000
          Height = 17.007874020000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          GapX = 5.000000000000000000
          Memo.UTF8W = (
            '[Volumes."Marca"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo109: TfrxMemoView
          Left = 355.275820000000000000
          Top = 69.921352600000000000
          Width = 161.259946670000000000
          Height = 26.456692910000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          Memo.UTF8W = (
            'NUMERA'#199#195'O')
          ParentFont = False
        end
        object Memo110: TfrxMemoView
          Left = 355.275820000000000000
          Top = 79.370093390000000000
          Width = 161.259946670000000000
          Height = 17.007874020000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          GapX = 5.000000000000000000
          Memo.UTF8W = (
            '[Volumes."NVol"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo111: TfrxMemoView
          Left = 516.535766670000000000
          Top = 69.921352600000000000
          Width = 119.685116670000000000
          Height = 26.456692910000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          Memo.UTF8W = (
            'PESO BRUTO')
          ParentFont = False
        end
        object Memo112: TfrxMemoView
          Left = 516.535766670000000000
          Top = 79.370093390000000000
          Width = 119.685116670000000000
          Height = 17.007874020000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.3n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          GapX = 5.000000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8W = (
            '[Volumes."PesoB"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo113: TfrxMemoView
          Left = 636.220883330000000000
          Top = 69.921352600000000000
          Width = 108.346526670000000000
          Height = 26.456692910000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          Memo.UTF8W = (
            'PESO L'#205'QUIDO')
          ParentFont = False
        end
        object Memo114: TfrxMemoView
          Left = 636.220883330000000000
          Top = 79.370093390000000000
          Width = 108.346526670000000000
          Height = 17.007874020000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.3n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          GapX = 5.000000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8W = (
            '[Volumes."PesoL"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
      end
      object MarcaDagua: TfrxOverlay
        FillType = ftBrush
        Height = 1122.519685040000000000
        Top = 1432.441870000000000000
        Width = 744.567410000000000000
        object memWatermark: TfrxMemoView
          Align = baClient
          Width = 744.567410000000000000
          Height = 1122.519685040000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 14211288
          Font.Height = -67
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '[Parametros."Mensagem0"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object Child1: TfrxChild
        FillType = ftBrush
        Height = 3.779527560000000000
        Top = 1118.740880000000000000
        Width = 744.567410000000000000
        object Memo161: TfrxMemoView
          Width = 60.472480000000000000
          Height = 3.779527560000000000
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          HAlign = haCenter
          ParentFont = False
        end
        object Memo162: TfrxMemoView
          Left = 60.472480000000000000
          Width = 222.992270000000000000
          Height = 3.779527560000000000
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          ParentFont = False
        end
        object Memo163: TfrxMemoView
          Left = 283.464750000000000000
          Width = 37.795300000000000000
          Height = 3.779527560000000000
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          HAlign = haCenter
          ParentFont = False
        end
        object Memo164: TfrxMemoView
          Left = 321.260050000000000000
          Width = 26.456695350000000000
          Height = 3.779527560000000000
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          HAlign = haCenter
          ParentFont = False
        end
        object Memo165: TfrxMemoView
          Left = 347.716564720000000000
          Width = 24.566929130000000000
          Height = 3.779527560000000000
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          HAlign = haCenter
          ParentFont = False
        end
        object Memo166: TfrxMemoView
          Left = 372.283493860000000000
          Width = 22.677180000000000000
          Height = 3.779527560000000000
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          HAlign = haCenter
          HideZeros = True
          ParentFont = False
        end
        object Memo167: TfrxMemoView
          Left = 394.960659210000000000
          Width = 39.685039370078740000
          Height = 3.779527560000000000
          StretchMode = smActualHeight
          DisplayFormat.FormatStr = ',0.00##'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          HAlign = haRight
          HideZeros = True
          ParentFont = False
        end
        object Memo168: TfrxMemoView
          Left = 434.645669291338600000
          Width = 47.244094490000000000
          Height = 3.779527560000000000
          StretchMode = smActualHeight
          DisplayFormat.FormatStr = ',0.00##'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          HAlign = haRight
          HideZeros = True
          ParentFont = False
        end
        object Memo169: TfrxMemoView
          Left = 481.889763780000000000
          Width = 45.354360000000000000
          Height = 3.779527560000000000
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          HAlign = haCenter
          HideZeros = True
          ParentFont = False
        end
        object Memo170: TfrxMemoView
          Left = 527.244094488189000000
          Width = 51.023622047244090000
          Height = 3.779527560000000000
          StretchMode = smActualHeight
          DisplayFormat.FormatStr = ',0.00##'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          HAlign = haRight
          HideZeros = True
          ParentFont = False
        end
        object Memo171: TfrxMemoView
          Left = 578.267716535433000000
          Width = 41.574830000000000000
          Height = 3.779527560000000000
          StretchMode = smActualHeight
          DisplayFormat.FormatStr = ',0.00##'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          HAlign = haRight
          HideZeros = True
          ParentFont = False
        end
        object Memo172: TfrxMemoView
          Left = 619.842920000000000000
          Width = 41.574803150000000000
          Height = 3.779527560000000000
          StretchMode = smActualHeight
          DisplayFormat.FormatStr = ',0.00##'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          HAlign = haRight
          HideZeros = True
          ParentFont = False
        end
        object Memo173: TfrxMemoView
          Left = 661.417322830000000000
          Width = 41.574803150000000000
          Height = 3.779527560000000000
          StretchMode = smActualHeight
          DisplayFormat.FormatStr = ',0.00##'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          HAlign = haRight
          HideZeros = True
          ParentFont = False
        end
        object Memo174: TfrxMemoView
          Left = 702.992125980000000000
          Width = 20.787401570000000000
          Height = 3.779527560000000000
          StretchMode = smActualHeight
          DisplayFormat.FormatStr = ',0.00##'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          HAlign = haRight
          HideZeros = True
          ParentFont = False
        end
        object Memo175: TfrxMemoView
          Left = 723.779527560000000000
          Width = 20.787401570000000000
          Height = 3.779527560000000000
          StretchMode = smActualHeight
          DisplayFormat.FormatStr = ',0.00##'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          HAlign = haRight
          HideZeros = True
          ParentFont = False
        end
      end
      object DadosProdutosFooter: TfrxGroupFooter
        FillType = ftBrush
        Top = 1096.063700000000000000
        Width = 744.567410000000000000
        OnBeforePrint = 'DadosProdutosFooterOnBeforePrint'
      end
      object Child2: TfrxChild
        FillType = ftBrush
        Top = 1145.197590000000000000
        Width = 744.567410000000000000
        Child = frxReport1.DadosAdicionais
        object Line2: TfrxLineView
          Align = baWidth
          Width = 744.567410000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
          Frame.Width = 0.500000000000000000
        end
      end
      object LocalRetirada: TfrxMasterData
        FillType = ftBrush
        Height = 43.354342910000000000
        Top = 476.220780000000000000
        Width = 744.567410000000000000
        DataSetName = 'LocalRetirada'
        RowCount = 0
        object Memo10: TfrxMemoView
          Top = 16.897650000000000000
          Width = 113.385900000000000000
          Height = 26.456692910000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          Memo.UTF8W = (
            'CNPJ / CPF')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Top = 26.346390790000000000
          Width = 113.385826770000000000
          Height = 17.007874020000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          GapX = 5.000000000000000000
          Memo.UTF8W = (
            '[LocalRetirada."CNPJ"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo14: TfrxMemoView
          Left = 113.385900000000000000
          Top = 16.897650000000000000
          Width = 631.181510000000000000
          Height = 26.456692910000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          Memo.UTF8W = (
            'ENDERE'#199'O')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Left = 113.385900000000000000
          Top = 26.346390790000000000
          Width = 631.181510000000000000
          Height = 17.007874020000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          GapX = 5.000000000000000000
          Memo.UTF8W = (
            
              '[LocalRetirada."XLgr"] [LocalRetirada."Nro"] [LocalRetirada."XCp' +
              'l"] - [LocalRetirada."XBairro"] - [LocalRetirada."XMun"] - [Loca' +
              'lRetirada."UF"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo185: TfrxMemoView
          Top = 3.779530000000020000
          Width = 430.866420000000000000
          Height = 13.228344020000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'LOCAL RETIRADA')
          ParentFont = False
          VAlign = vaBottom
        end
      end
      object LocalEntrega: TfrxMasterData
        FillType = ftBrush
        Height = 43.354342910000000000
        Top = 544.252320000000000000
        Width = 744.567410000000000000
        DataSetName = 'LocalEntrega'
        RowCount = 0
        object Memo54: TfrxMemoView
          Top = 16.897650000000000000
          Width = 113.385900000000000000
          Height = 26.456692910000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          Memo.UTF8W = (
            'CNPJ / CPF')
          ParentFont = False
        end
        object Memo55: TfrxMemoView
          Top = 26.346390790000000000
          Width = 113.385826770000000000
          Height = 17.007874020000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          GapX = 5.000000000000000000
          Memo.UTF8W = (
            '[LocalEntrega."CNPJ"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo56: TfrxMemoView
          Left = 113.385900000000000000
          Top = 16.897650000000000000
          Width = 631.181510000000000000
          Height = 26.456692910000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          Memo.UTF8W = (
            'ENDERE'#199'O')
          ParentFont = False
        end
        object Memo57: TfrxMemoView
          Left = 113.385900000000000000
          Top = 26.346390790000000000
          Width = 631.181510000000000000
          Height = 17.007874020000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          GapX = 5.000000000000000000
          Memo.UTF8W = (
            
              '[LocalEntrega."XLgr"] [LocalEntrega."Nro"] [LocalEntrega."XCpl"]' +
              ' - [LocalEntrega."XBairro"] - [LocalEntrega."XMun"] - [LocalEntr' +
              'ega."UF"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo81: TfrxMemoView
          Top = 3.779530000000020000
          Width = 430.866420000000000000
          Height = 13.228344020000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'LOCAL ENTREGA')
          ParentFont = False
          VAlign = vaBottom
        end
      end
      object ColumnFooter1: TfrxColumnFooter
        FillType = ftBrush
        Height = 43.464566930000000000
        Top = 2615.434760000000000000
        Width = 744.567410000000000000
        object ISSQN: TfrxSubreport
          Width = 744.567410000000000000
          Height = 43.464566930000000000
          Page = frxReport1.PageISSQN
          PrintOnParent = True
        end
      end
      object CanhotoRodape: TfrxChild
        FillType = ftBrush
        Height = 77.370105590000000000
        Top = 1330.394560000000000000
        Width = 744.567410000000000000
        Stretched = True
        object canhotorodaperecebemos: TfrxMemoView
          Top = 9.338590000000070000
          Width = 642.520100000000000000
          Height = 37.795275590000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          Memo.UTF8W = (
            
              'Recebemos de [Emitente."XNome"] os produtos e/ou servi'#231'os consta' +
              'ntes da Nota Fiscal Eletr'#244'nica indicada ao lado. '
            '[Parametros."ResumoCanhoto"]')
          ParentFont = False
          WordWrap = False
        end
        object canhotorodapeassinatura: TfrxMemoView
          Left = 143.622140000000000000
          Top = 47.133865589999900000
          Width = 498.897960000000000000
          Height = 30.236240000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          Memo.UTF8W = (
            'IDENTIFICA'#199#195'O E ASSINATURA DO RECEBEDOR')
          ParentFont = False
        end
        object canhotorodapedata: TfrxMemoView
          Top = 47.133865589999900000
          Width = 143.622140000000000000
          Height = 30.236240000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          Memo.UTF8W = (
            'DATA DO RECEBIMENTO')
          ParentFont = False
        end
        object canhotorodapelinha: TfrxLineView
          Align = baWidth
          Top = 3.779530000000020000
          Width = 744.567410000000000000
          Color = clBlack
          Frame.Style = fsDot
          Frame.Typ = [ftTop]
          Frame.Width = 0.500000000000000000
        end
        object canhotorodapenumeronfe: TfrxMemoView
          Left = 642.520100000000000000
          Top = 9.338590000000070000
          Width = 102.047212360000000000
          Height = 68.031496060000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'NF-e'
            'N'#186' [Identificacao."NNF"]'
            'S'#233'rie [Identificacao."Serie" #n#000]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object DadosAdicionais: TfrxChild
        FillType = ftBrush
        Height = 141.401589450000000000
        Top = 1167.874770000000000000
        Width = 744.567410000000000000
        Child = frxReport1.CanhotoRodape
        Stretched = True
        object memFisco: TfrxMemoView
          Left = 487.559055120000000000
          Top = 16.677179999999900000
          Width = 257.007852050000000000
          Height = 124.724409450000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          Memo.UTF8W = (
            'RESERVADO AO FISCO')
          ParentFont = False
        end
        object memInformacoesComplementares: TfrxMemoView
          Top = 16.677179999999900000
          Width = 487.559055120000000000
          Height = 124.724402130000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          Memo.UTF8W = (
            'INFORMA'#199#213'ES COMPLEMENTARES')
          ParentFont = False
        end
        object memOBS: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Top = 23.881862910000100000
          Width = 485.669288900000000000
          Height = 117.165354330000000000
          ExpressionDelimiters = '[%,%]'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          ParentFont = False
        end
        object memDadosAdicionais: TfrxMemoView
          Top = 1.889763780000070000
          Width = 430.866420000000000000
          Height = 13.228344020000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'DADOS ADICIONAIS')
          ParentFont = False
          VAlign = vaBottom
        end
      end
      object Duplicatas: TfrxMasterData
        FillType = ftBrush
        Height = 37.795300000000000000
        Top = 721.890230000000000000
        Width = 744.567410000000000000
        Columns = 5
        ColumnWidth = 148.913385826772000000
        DataSetName = 'Duplicatas'
        RowCount = 0
        object Shape1: TfrxShapeView
          Align = baClient
          Width = 744.567410000000000000
          Height = 37.795300000000000000
          Frame.Width = 0.500000000000000000
        end
        object Memo66: TfrxMemoView
          Width = 148.913385830000000000
          Height = 37.795275590000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapX = 3.000000000000000000
          Memo.UTF8W = (
            'N'#250'mero'
            'Vencimento'
            'Valor')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo138: TfrxMemoView
          Left = 56.692950000000000000
          Width = 3.779530000000000000
          Height = 37.795275590000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          LineSpacing = 3.000000000000000000
          Memo.UTF8W = (
            ':'
            ':'
            ':')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo147: TfrxMemoView
          Left = 60.472480000000000000
          Width = 86.929190000000000000
          Height = 12.472440940000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          GapX = 3.000000000000000000
          Memo.UTF8W = (
            '[Duplicatas."NDup"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo148: TfrxMemoView
          Left = 60.472480000000000000
          Top = 12.472440940000000000
          Width = 86.929190000000000000
          Height = 12.472440940000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          GapX = 3.000000000000000000
          Memo.UTF8W = (
            '[Duplicatas."DVenc"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo156: TfrxMemoView
          Left = 60.472480000000000000
          Top = 24.944881890000000000
          Width = 86.929190000000000000
          Height = 12.472440940000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          GapX = 3.000000000000000000
          Memo.UTF8W = (
            '[Duplicatas."VDup"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
      end
    end
    object PageISSQN: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object subISSQN: TfrxMasterData
        FillType = ftBrush
        Height = 43.354342910000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        DataSetName = 'ISSQN'
        RowCount = 0
        object Memo5: TfrxMemoView
          Top = 3.779530000000000000
          Width = 430.866420000000000000
          Height = 13.228344020000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'C'#193'LCULO DO ISSQN')
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo7: TfrxMemoView
          Top = 16.897650000000000000
          Width = 217.322859060000000000
          Height = 26.456692910000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          Memo.UTF8W = (
            'INSCRI'#199#195'O MUNICIPAL')
          ParentFont = False
        end
        object Memo59: TfrxMemoView
          Top = 26.346390790000000000
          Width = 217.322859060000000000
          Height = 17.007874020000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          GapX = 5.000000000000000000
          Memo.UTF8W = (
            '[Emitente."IM"]')
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo60: TfrxMemoView
          Left = 217.322859060000000000
          Top = 16.897650000000000000
          Width = 179.527559060000000000
          Height = 26.456692910000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          Memo.UTF8W = (
            'VALOR TOTAL DOS SERVI'#199'OS')
          ParentFont = False
        end
        object Memo61: TfrxMemoView
          Left = 217.322859060000000000
          Top = 26.346390790000000000
          Width = 179.527559060000000000
          Height = 17.007874020000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          GapX = 5.000000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[ISSQN."VServ"]')
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo62: TfrxMemoView
          Left = 396.850418110000000000
          Top = 16.897650000000000000
          Width = 179.527559060000000000
          Height = 26.456692910000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          Memo.UTF8W = (
            'BASE DE C'#193'LCULO DO ISSQN')
          ParentFont = False
        end
        object Memo63: TfrxMemoView
          Left = 396.850418110000000000
          Top = 26.346390790000000000
          Width = 179.527559060000000000
          Height = 17.007874020000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          GapX = 5.000000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[ISSQN."VBC"]')
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo64: TfrxMemoView
          Left = 576.377977170000000000
          Top = 16.897650000000000000
          Width = 179.527559060000000000
          Height = 26.456692910000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          Memo.UTF8W = (
            'VALOR TOTAL DO ISSQN')
          ParentFont = False
        end
        object Memo65: TfrxMemoView
          Left = 576.377977170000000000
          Top = 26.346390790000000000
          Width = 179.527559060000000000
          Height = 17.007874020000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          GapX = 5.000000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[ISSQN."VISS"]')
          ParentFont = False
          VAlign = vaBottom
        end
      end
    end
    object pgContDadosAdicionais: TfrxReportPage
      Visible = False
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 7.000000000000000000
      RightMargin = 7.000000000000000000
      TopMargin = 7.000000000000000000
      BottomMargin = 7.000000000000000000
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 124.724490000000000000
        Top = 90.708720000000000000
        Width = 740.787880000000000000
        OnBeforePrint = 'MasterData1OnBeforePrint'
        RowCount = 1
        Stretched = True
        object Memo137: TfrxMemoView
          Width = 740.787565120000000000
          Height = 124.724402130000000000
          StretchMode = smMaxHeight
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          Memo.UTF8W = (
            'CONTINUACAO DAS INFORMA'#199#213'ES COMPLEMENTARES')
          ParentFont = False
        end
        object memContInfAdicionais: TfrxMemoView
          Top = 11.000000000000000000
          Width = 738.897798900000000000
          Height = 109.606294330000000000
          StretchMode = smMaxHeight
          ExpressionDelimiters = '[%,%]'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Height = 11.338590000000000000
        Top = 18.897650000000000000
        Width = 740.787880000000000000
        OnBeforePrint = 'PageHeader1OnBeforePrint'
      end
    end
  end
  object ACBrNFeDANFEFR1: TACBrNFeDANFEFR
    ACBrNFe = ACBrNFe1
    MostrarPreview = True
    MostrarStatus = True
    TipoDANFE = tiSemGeracao
    NumCopias = 1
    ImprimeNomeFantasia = False
    ImprimirDescPorc = False
    ImprimirTotalLiquido = True
    MargemInferior = 0.800000000000000000
    MargemSuperior = 0.800000000000000000
    MargemEsquerda = 0.600000000000000000
    MargemDireita = 0.510000000000000000
    CasasDecimais.Formato = tdetInteger
    CasasDecimais._qCom = 0
    CasasDecimais._vUnCom = 4
    CasasDecimais._Mask_qCom = ',0.'
    CasasDecimais._Mask_vUnCom = ',0.0000'
    ExibirResumoCanhoto = False
    FormularioContinuo = False
    TamanhoFonte_DemaisCampos = 10
    ProdutosPorPagina = 0
    ImprimirDetalhamentoEspecifico = True
    NFeCancelada = False
    ImprimirItens = True
    ViaConsumidor = True
    TamanhoLogoHeight = 0
    TamanhoLogoWidth = 0
    RecuoEndereco = 0
    RecuoEmpresa = 0
    LogoemCima = False
    TamanhoFonteEndereco = 0
    RecuoLogo = 0
    TributosSeparadamente = False
    EspessuraBorda = 1
    ExibirTotalTributosItem = False
    ExibeCampoFatura = True
    TributosPercentual = ptValorProdutos
    ImprimirUnQtVlComercial = iuComercial
    Detalhado = False
    DescricaoViaEstabelec = 'Via do Consumidor'
    ExpandirDadosAdicionaisAuto = False
    ImprimirDadosArma = True
    QuebraLinhaEmDetalhamentoEspecifico = True
    IncorporarBackgroundPdf = True
    IncorporarFontesPdf = True
    Left = 700
    Top = 408
  end
end
