inherited FrmNFETransito: TFrmNFETransito
  Left = 46
  Top = 100
  Caption = 'Nota Fiscal de Tr'#226'nsito - [ENTRADA]'
  ClientHeight = 462
  ClientWidth = 879
  Icon.Data = {
    0000010001001010000001002000680400001600000028000000100000002000
    0000010020000000000000040000000000000000000000000000000000000000
    00000000000000000000000000004342417A413F3DF37E7871FA867F77FD847D
    74FD8A8278FC58534DFA5B544BD89385760B0000000000000000000000000000
    0000000000005554551B4A4948E2747575FF939393FF3D3A72FF2C2AA3FF2F2E
    A3FF484676FFA4A09FFF727272FF2D2A27FD796F636400000000000000000000
    00007C7C7C1B616161EF939394FF8E8C8FFF2B2AC0FF3F3C92FF7A748FFF807A
    90FF7C79A6FF6363C5FFD0CCCDFFB0B1B1FF2A2927FE756D6259000000000000
    0000848483D3959595FF877F75FF323091FF3C3778FFB6A795FFB6A795FFB6A7
    95FFB6A795FF77718DFF2F2C84FFD2C9C0FFAEAEAFFF2E2B27FC5049400AA7A8
    A96C9B9B9BFF61594EFF99846AFF2D2893FF5D4F59FF947E63FF45645AFF3E70
    6EFF947E63FF6C5D5EFF1A15A6FF99846AFFC7BFB4FF6D6D6DFF5D574FC4BCBC
    BCC47E7B78FC70583BFF745835FF322989FF4B3E3DFF425443FF14C6DDFF4ADB
    EFFF395F57FF493E3DFF19118EFF745835FF856E51FFB8B8B7FF3B3935FCAFAF
    AFAA725A39F55A390FFF5A390FFF2A1E80FF44382BFF415946FFB4DDE2FFADBC
    BBFF39584CFF332A2EFF150B84FF5A390FFF5A390FFF695235FF7D776EFDA7A7
    A7AB61421BF8512E02FF512E02FF28217EFF453126FF7B725EFFF5EEECFFE6E3
    E0FF6D6B5BFF382923FF100979FF512E02FF512E02FF503008FF7D766DFDA8A8
    A8AA61421BF8512E02FF512E02FF251D72FF453944FFBCB5A3FFCBC8C6FFBDBB
    B7FFA0998AFF483B46FF110A75FF512E02FF512E02FF513008FF7E766DFD9F9F
    9FD4433524F9512E02FF512E02FF201A78FF3F2D27FF867D6AFFFFFFFFFFFFFF
    FFFF817968FF47342AFF110B74FF512E02FF512E02FF4E3515FF6D675EFCE6E6
    E6D85E5E5EFF492A02FF543106FF251E78FF5C5573FFF3F1F0FFC1BCAFFFB5AF
    A3FFEDECE6FF6C6683FF1D1676FF543106FF55350EFF8B8A88FF4B4844FCEAEA
    EA68B8B8B8FF291A06FF816848FF514B90FF5853A6FF76644EFF887052FF8870
    52FF7C6952FF6662A1FF1F1A7DFF816848FF5E4F3BFF7E7E7EFF746E66C50000
    0000E9E9E9D3797A7AFF635645FFA39B92FF6362C0FF3A367EFF756C7DFF7C73
    81FF413D79FF1211C0FF857E8BFF756757FF8B8B8CFF5E5B58FC797167090000
    0000F0F0F01EEBEBEAEE757575FF473B2DFF8F8477FF65628AFF4B49A4FF3F3D
    A2FF36338CFF7C7173FF514537FF888888FF807E7CFE8B83785B000000000000
    000000000000F5F5F51EEDECEBE2B3B3B3FF4A4844FF4C300CFF533106FF5230
    06FF503514FF595654FFA6A6A7FF9C9996FD978D826600000000000000000000
    0000000000000000000000000000F1F0EF7DDCDAD7F3958E84F991877BFC8E84
    77FCA1998FFDC4C2BEFCB0A9A0D6A99D8E0C000000000000000000000000F007
    0000C00300008001000080000000000000000000000000000000000000000000
    00000000000000000000000000008000000080010000C0030000F0070000}
  ExplicitWidth = 887
  ExplicitHeight = 489
  PixelsPerInch = 96
  TextHeight = 13
  inherited Bevel1: TBevel
    Top = 427
    Width = 879
    ExplicitTop = 417
    ExplicitWidth = 691
  end
  inherited Bevel2: TBevel
    Top = 27
    Width = 879
  end
  inherited PagAbas: TCPageControl
    Top = 31
    Width = 879
    Height = 396
    ExplicitTop = 31
    ExplicitWidth = 879
    ExplicitHeight = 396
    inherited TabAbas: TTabSheet
      Caption = 'Dados da Nota'
      ExplicitWidth = 871
      ExplicitHeight = 367
      object grpNotaSaida: TCGroupBox
        Left = 11
        Top = 3
        Width = 662
        Height = 134
        Caption = 'Dados da Nota'
        TabOrder = 0
        object CLabel4: TCLabel
          Left = 42
          Top = 42
          Width = 24
          Height = 13
          Alignment = taRightJustify
          Caption = 'S'#233'rie'
        end
        object CLabel5: TCLabel
          Left = 356
          Top = 42
          Width = 37
          Height = 13
          Alignment = taRightJustify
          Caption = 'N'#250'mero'
        end
        object CLabel14: TCLabel
          Left = 502
          Top = 42
          Width = 31
          Height = 13
          Alignment = taRightJustify
          Caption = 'Status'
        end
        object LblCad: TCLabel
          Left = 33
          Top = 20
          Width = 33
          Height = 13
          Alignment = taRightJustify
          Caption = 'Cliente'
        end
        object CLabel59: TCLabel
          Left = 462
          Top = 20
          Width = 46
          Height = 13
          Alignment = taRightJustify
          Caption = 'Insc. Est.'
        end
        object CLabel7: TCLabel
          Left = 28
          Top = 64
          Width = 38
          Height = 13
          Alignment = taRightJustify
          Caption = 'Emiss'#227'o'
        end
        object CLabel8: TCLabel
          Left = 158
          Top = 64
          Width = 44
          Height = 13
          Alignment = taRightJustify
          Caption = 'Natureza'
        end
        object CLabel6: TCLabel
          Left = 559
          Top = 64
          Width = 23
          Height = 13
          Alignment = taRightJustify
          Caption = 'Cfop'
        end
        object CLabel72: TCLabel
          Left = 40
          Top = 86
          Width = 26
          Height = 13
          Alignment = taRightJustify
          Caption = 'Safra'
        end
        object CLabel11: TCLabel
          Left = 28
          Top = 108
          Width = 38
          Height = 13
          Alignment = taRightJustify
          Caption = 'Produto'
        end
        object CLabel16: TCLabel
          Left = 329
          Top = 108
          Width = 28
          Height = 13
          Alignment = taRightJustify
          Caption = 'Qtde.'
        end
        object CLabel12: TCLabel
          Left = 445
          Top = 108
          Width = 37
          Height = 13
          Alignment = taRightJustify
          Caption = 'Unit'#225'rio'
        end
        object DBEidDocSerie: TCDBEdit
          Left = 72
          Top = 39
          Width = 46
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'idDocSerie'
          DataSource = dsPadrao
          TabOrder = 4
          Find = FindSerie
          DecimalControl = True
          KeyMode = kmUSUpper
        end
        object LookDocSerie: TCLookUp
          Left = 124
          Top = 39
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
            
              'SELECT descDocSerie FROM DocSerie WHERE idTipoDocSerie IN (4,8) ' +
              'AND idDocSerie = ?')
          ClientDataSet = cdsLookUp
          DataSource = dsPadrao
          ValidaCampoObrigatorio = True
          CampoObrigatorio = True
          LookUpTable = 'DocSerie'
          ReturnField = 'descDocSerie'
        end
        object DBEstNfE: TCDBEdit
          Left = 539
          Top = 39
          Width = 113
          Height = 19
          TabStop = False
          BevelKind = bkTile
          BorderStyle = bsNone
          Color = 14149350
          DataField = 'stNfE'
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
        object lookIeFornecedor: TCLookUp
          Left = 514
          Top = 17
          Width = 138
          Height = 19
          Alignment = taLeftJustify
          BevelInner = bvSpace
          BevelOuter = bvLowered
          Color = 14149350
          ParentBackground = False
          TabOrder = 3
          Key.Strings = (
            'idFornecedor'
            'idCadFornecedor')
          LookUpKey.Strings = (
            'idFornecedor'
            'idCadFornecedor')
          ClientDataSet = cdsLookUp
          DataSource = dsPadrao
          ValidaCampoObrigatorio = True
          CampoObrigatorio = True
          LookUpTable = 'vCadFornecedorFiscal'
          ReturnField = 'idInscEstadual'
        end
        object DBEdtEmissao: TCDBEdit
          Left = 72
          Top = 61
          Width = 80
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'dtEmissao'
          DataSource = dsPadrao
          MaxLength = 10
          TabOrder = 8
          OnExit = DBEdtEmissaoExit
          DecimalControl = True
          KeyMode = kmDate
        end
        object DBEidNatureza: TCDBEdit
          Left = 208
          Top = 61
          Width = 46
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'idNatureza'
          DataSource = dsPadrao
          TabOrder = 9
          Find = FindNatureza
          DecimalControl = True
          KeyMode = kmNormal
        end
        object LookNatureza: TCLookUp
          Left = 260
          Top = 61
          Width = 293
          Height = 19
          Alignment = taLeftJustify
          BevelInner = bvSpace
          BevelOuter = bvLowered
          Color = 14149350
          ParentBackground = False
          TabOrder = 10
          Key.Strings = (
            'idNatureza')
          LookUpKey.Strings = (
            'idNatureza')
          AlternateSQL.Strings = (
            
              'SELECT descNatureza FROM vNatureza WHERE tpNatureza = '#39'ENTRADA'#39' ' +
              'AND idNatureza = ?')
          ClientDataSet = cdsLookUp
          DataSource = dsPadrao
          ValidaCampoObrigatorio = True
          CampoObrigatorio = True
          LookUpTable = 'vNatureza'
          ReturnField = 'descNatureza'
        end
        object LookIdCfop: TCLookUp
          Left = 588
          Top = 61
          Width = 64
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
            
              'SELECT idCfop FROM vNatureza WHERE tpNatureza = '#39'ENTRADA'#39' AND id' +
              'Natureza = ?')
          ClientDataSet = cdsLookUp
          DataSource = dsPadrao
          ValidaCampoObrigatorio = True
          CampoObrigatorio = True
          LookUpTable = 'vNatureza'
          ReturnField = 'idCfop'
        end
        object DBEidSafra: TCDBEdit
          Left = 72
          Top = 83
          Width = 46
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'idSafra'
          DataSource = dsPadrao
          TabOrder = 12
          Find = FindSafra
          DecimalControl = True
          KeyMode = kmNormal
        end
        object CBitBtn7: TCBitBtn
          Left = 445
          Top = 83
          Width = 96
          Height = 19
          Action = frmPrincipal.actCadSafra
          Caption = '&Safra'
          TabOrder = 13
          TabStop = False
          Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            2000000000000004000000000000000000000000000000000000FF00FF00FF00
            FF00FF00FF00ACACA5FF80806BFF858570FF868670FF898972FF898972FF8787
            71FF858571FF80806BFFADADA5FFFF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF0092926FFF8C8C56FF95955FFFA5A56EFFADAB79FFAFAC79FFA6A6
            6FFF989862FF8C8C54FF91916CFFFF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF008A8A66FF888753FF9B9865FFB2AD77FFA2AB8DFFA8AF8CFFB4AF
            7AFF9C9866FF8B8A56FF8D8D68FFFF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00A5A38BFF949C68FF9EB081FFA8B98EFFB4C69CFFB6C9A1FFABBC
            92FFA6B88AFF989F6BFFA3A38AFFFF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00BAB9A8FF859D69FF72AD79FF6EA572FF6FA572FF6FA572FF6CA2
            70FF7FB986FF90A572FFB9B8A8FFFF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00B8B7A6FF8AA06CFF86BC89FF7DB07DFF7FB27FFF7FB27FFF7BAE
            7BFF84BA87FF8DA16DFFB8B6A6FFFF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00BBB9AAFF8DA370FF99D09DFF8ABD8AFF89BC89FF8ABD8AFF86B9
            86FF8BC28FFF8B9F6CFFBBB9AAFFFF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00BCBAABFF90A672FFA8DFACFF9DD09DFF92C592FF94C794FF91C4
            91FF92C895FF869A66FFBCBAABFFFF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00BEBDB0FF91A773FFB2E8B5FFB2E5B2FFA3D6A3FF9CCF9CFF9CCF
            9CFF9BD19DFF889B67FFBFBDB0FFFF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00C2C0B3FF94A975FFBDF3C0FFBEF0BDFFBEF1BEFFACDFACFFA5D8
            A5FFA7DCA9FF8DA06CFFC2C1B3FFFF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00C3C2B6FF9AB07BFFC4FCC8FFC6FAC7FFCEFFCEFFC9F9C9FFB1E4
            B1FFACE3AFFF90A471FFC4C3B7FFFF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00CDCCC0FFA0B683FFD0FFD6FFDAFFDCFFE5FFE7FFE9FFEBFFD1FA
            D3FFB5EFBBFF96AB77FFCDCCC1FFFF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00B8B7A9FF99AA77FFB5DDAFFFC3DFBAFFD2E3C8FFD6E5CCFFCAE4
            C1FFA3D09CFF92A26CFFB9B8AAFFFF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00A1A184FFABAB76FFAEAE7AFFBCBE8AFFC8CA9CFFCACC9EFFC1C2
            8EFFA5A576FF9F9F70FFA2A285FFFF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00AAAA89FFC3C28EFFD0D09EFFDFDFB3FFEEEECDFFEDEDCAFFE4E4
            B8FF9F9F7FFF7F7F66FFA7A786FFFF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00B9B99DFFCDCDA0FFD4D4AFFFE5E5C6FFEEEED6FFEEEED9FFE6E6
            CAFFC9C9AAFFB8B891FFBABA9EFFFF00FF00FF00FF00FF00FF00}
        end
        object DBEidNfE: TCDBEdit
          Left = 399
          Top = 39
          Width = 87
          Height = 19
          TabStop = False
          BevelKind = bkTile
          BorderStyle = bsNone
          Color = clWhite
          DataField = 'idNfE'
          DataSource = dsPadrao
          MaxLength = 8
          TabOrder = 6
          OnExit = DBEidNfEExit
          DecimalControl = True
          KeyMode = kmInteger
        end
        object DBEidFornecedor: TCDBEdit
          Left = 72
          Top = 17
          Width = 46
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'idFornecedor'
          DataSource = dsPadrao
          TabOrder = 0
          OnExit = DBEidFornecedorExit
          OnKeyDown = DBEidFornecedorKeyDown
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEidCadFornecedor: TCDBEdit
          Left = 124
          Top = 17
          Width = 35
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'idCadFornecedor'
          DataSource = dsPadrao
          TabOrder = 1
          OnExit = DBEidFornecedorExit
          OnKeyDown = DBEidFornecedorKeyDown
          DecimalControl = True
          KeyMode = kmNormal
        end
        object LookFornecedorFiscal: TCLookUp
          Left = 165
          Top = 17
          Width = 281
          Height = 19
          Alignment = taLeftJustify
          BevelInner = bvSpace
          BevelOuter = bvLowered
          Color = 14149350
          ParentBackground = False
          TabOrder = 2
          Key.Strings = (
            'idFornecedor'
            'idCadFornecedor')
          LookUpKey.Strings = (
            'idFornecedor'
            'idCadFornecedor')
          ClientDataSet = cdsLookUp
          DataSource = dsPadrao
          ValidaCampoObrigatorio = True
          CampoObrigatorio = True
          LookUpTable = 'vCadFornecedorFiscal'
          ReturnField = 'descCadFornecedor'
        end
        object DBEidProduto: TCDBEdit
          Left = 72
          Top = 105
          Width = 46
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'idProduto'
          DataSource = dsNfEProduto
          TabOrder = 14
          OnExit = DBEidProdutoExit
          Find = FindProduto
          DecimalControl = True
          KeyMode = kmNormal
        end
        object LookProduto: TCLookUp
          Left = 124
          Top = 105
          Width = 162
          Height = 19
          Alignment = taLeftJustify
          BevelInner = bvSpace
          BevelOuter = bvLowered
          Color = 14149350
          ParentBackground = False
          TabOrder = 15
          Key.Strings = (
            'idProduto')
          LookUpKey.Strings = (
            'idProduto')
          ClientDataSet = cdsLookUp
          DataSource = dsNfEProduto
          ValidaCampoObrigatorio = True
          CampoObrigatorio = True
          LookUpTable = 'Produto'
          ReturnField = 'descProduto'
        end
        object LookProdMedida: TCLookUp
          Left = 292
          Top = 105
          Width = 31
          Height = 19
          Alignment = taLeftJustify
          BevelInner = bvSpace
          BevelOuter = bvLowered
          Color = 14149350
          ParentBackground = False
          TabOrder = 16
          Key.Strings = (
            'idProduto')
          LookUpKey.Strings = (
            'idProduto')
          AlternateSQL.Strings = (
            
              'SELECT ProdMedida.descAbreviada FROM Produto, ProdMedida WHERE P' +
              'roduto.idProdMedida = ProdMedida.idProdMedida AND Produto.idProd' +
              'uto = ?')
          ClientDataSet = cdsLookUp
          DataSource = dsNfEProduto
          ValidaCampoObrigatorio = False
          CampoObrigatorio = True
          LookUpTable = 'Produto'
          ReturnField = 'descAbreviada'
        end
        object DBEqtProduto: TCDBEdit
          Left = 363
          Top = 105
          Width = 76
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'qtProduto'
          DataSource = dsNfEProduto
          TabOrder = 17
          OnEnter = DBEqtProdutoEnter
          OnExit = DBEvlOutrasIcmsExit
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEvlBruto: TCDBEdit
          Left = 487
          Top = 105
          Width = 71
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'vlBruto'
          DataSource = dsNfEProduto
          TabOrder = 18
          OnEnter = DBEqtProdutoEnter
          OnExit = DBEvlOutrasIcmsExit
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEvlTotal: TCDBEdit
          Left = 564
          Top = 105
          Width = 88
          Height = 19
          TabStop = False
          BevelKind = bkTile
          BorderStyle = bsNone
          Color = 14149350
          DataField = 'vlTotal'
          DataSource = dsNfEProduto
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 19
          OnEnter = DBEqtProdutoEnter
          OnExit = DBEvlOutrasIcmsExit
          DecimalControl = True
          KeyMode = kmNormal
        end
      end
      object CGroupBox5: TCGroupBox
        Left = 11
        Top = 214
        Width = 662
        Height = 123
        Caption = 'Resumo da Nota'
        TabOrder = 2
        object CLabel30: TCLabel
          Left = 29
          Top = 20
          Width = 43
          Height = 13
          Alignment = taRightJustify
          Caption = 'Produtos'
        end
        object CLabel36: TCLabel
          Left = 292
          Top = 20
          Width = 26
          Height = 13
          Alignment = taRightJustify
          Caption = 'Frete'
        end
        object CLabel37: TCLabel
          Left = 405
          Top = 20
          Width = 34
          Height = 13
          Alignment = taRightJustify
          Caption = 'Seguro'
        end
        object CLabel40: TCLabel
          Left = 522
          Top = 20
          Width = 46
          Height = 13
          Alignment = taRightJustify
          Caption = 'Tot. Nota'
        end
        object CLabel33: TCLabel
          Left = 159
          Top = 20
          Width = 46
          Height = 13
          Alignment = taRightJustify
          Caption = 'Despesas'
        end
        object CLabel9: TCLabel
          Left = 9
          Top = 42
          Width = 63
          Height = 13
          Alignment = taRightJustify
          Caption = 'Observa'#231#245'es'
        end
        object CLabel17: TCLabel
          Left = 20
          Top = 80
          Width = 52
          Height = 13
          Alignment = taRightJustify
          Caption = 'Inf. Comp.'
        end
        object DBEvlProdutos: TCDBEdit
          Left = 78
          Top = 17
          Width = 75
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'vlProdutos'
          DataSource = dsNfEValor
          TabOrder = 0
          OnEnter = DBEvlProdutosEnter
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEvlFrete: TCDBEdit
          Left = 324
          Top = 17
          Width = 75
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'vlFrete'
          DataSource = dsNfEValor
          TabOrder = 2
          OnEnter = DBEqtProdutoEnter
          OnExit = DBEvlDespesasExit
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEvlSeguro: TCDBEdit
          Left = 445
          Top = 17
          Width = 71
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'vlSeguro'
          DataSource = dsNfEValor
          TabOrder = 3
          OnEnter = DBEqtProdutoEnter
          OnExit = DBEvlDespesasExit
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEvlNotaFiscal: TCDBEdit
          Left = 574
          Top = 17
          Width = 78
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'vlNotaFiscal'
          DataSource = dsNfEValor
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 4
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEvlDespesas: TCDBEdit
          Left = 211
          Top = 17
          Width = 75
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'vlDespesas'
          DataSource = dsNfEValor
          TabOrder = 1
          OnEnter = DBEqtProdutoEnter
          OnExit = DBEvlDespesasExit
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBMcompNfE: TCDBMemo
          Left = 78
          Top = 77
          Width = 574
          Height = 36
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'compNfE'
          DataSource = dsPadrao
          ScrollBars = ssVertical
          TabOrder = 6
          KeyMemo = kmmNormal
        end
        object DBMobsNfE: TCDBMemo
          Left = 78
          Top = 39
          Width = 574
          Height = 35
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'obsNfE'
          DataSource = dsPadrao
          ScrollBars = ssVertical
          TabOrder = 5
          KeyMemo = kmmNormal
        end
      end
      object CGroupBox7: TCGroupBox
        Left = 11
        Top = 143
        Width = 662
        Height = 65
        Caption = 'Transportes'
        TabOrder = 1
        object CLabel10: TCLabel
          Left = 35
          Top = 16
          Width = 25
          Height = 13
          Alignment = taRightJustify
          Caption = 'Placa'
          Transparent = True
        end
        object CLabel13: TCLabel
          Left = 155
          Top = 16
          Width = 63
          Height = 13
          Alignment = taRightJustify
          Caption = 'Desc. Veiculo'
          Transparent = True
        end
        object CLabel15: TCLabel
          Left = 15
          Top = 37
          Width = 45
          Height = 13
          Alignment = taRightJustify
          Caption = 'Motorista'
          Transparent = True
        end
        object CLabel52: TCLabel
          Left = 515
          Top = 38
          Width = 36
          Height = 13
          Alignment = taRightJustify
          Caption = 'Esp'#233'cie'
        end
        object DBEPlaca: TCDBEdit
          Left = 66
          Top = 13
          Width = 83
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          CharCase = ecUpperCase
          DataField = 'Placa'
          DataSource = dsNfETransporte
          TabOrder = 0
          OnExit = DBEPlacaExit
          Find = FindPlaca
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEdescVeiculo: TCDBEdit
          Left = 224
          Top = 13
          Width = 285
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          CharCase = ecUpperCase
          DataField = 'descVeiculo'
          DataSource = dsNfETransporte
          TabOrder = 1
          Find = FindProduto
          AcaoCad = frmPrincipal.actCadProduto
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEidMotorista: TCDBEdit
          Left = 66
          Top = 35
          Width = 54
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'idMotorista'
          DataSource = dsNfETransporte
          TabOrder = 2
          DecimalControl = True
          KeyMode = kmNormal
        end
        object LookdescMotorista: TCLookUp
          Left = 126
          Top = 35
          Width = 276
          Height = 19
          Alignment = taLeftJustify
          BevelInner = bvSpace
          BevelOuter = bvLowered
          Color = 14149350
          ParentBackground = False
          TabOrder = 3
          Key.Strings = (
            'idMotorista')
          LookUpKey.Strings = (
            'idMotorista')
          ClientDataSet = cdsLookUp
          DataSource = dsNfETransporte
          ValidaCampoObrigatorio = True
          CampoObrigatorio = True
          LookUpTable = 'Motorista'
          ReturnField = 'descMotorista'
        end
        object BtnCadMotorista: TCBitBtn
          Left = 408
          Top = 35
          Width = 101
          Height = 19
          Caption = '&Motorista'
          TabOrder = 4
          TabStop = False
          Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            2000000000000004000000000000000000000000000000000000FF00FF00DEDE
            DEFF989A9BFF9B9B9CFFC8C8C8FFF4F4F4FFFF00FF00FF00FF00FF00FF00FF00
            FF00FAFAFAFFD1D1D1FFC5C5C5FFEBEBEBFFFDFDFDFFFF00FF00F9F9F9FF939E
            A3FF58BFDBFF59BDD3FF548D9DFF8B9092FFDCDCDCFFFF00FF00FF00FF00FCFC
            FCFFBFBFBFFF628C99FF5096AAFF828E94FFE7E7E7FFFF00FF00EFEFEFFF648C
            A9FF7EE0FFFF87EBFFFF75ECFFFF53BAD9FF6D858FFFD9D9D9FFEFEFEFFFB1B1
            B1FF638C99FF7AE6F9FF72EBFFFF469CD4FFD5D5D5FFFF00FF00FCFCFCFF8C9A
            ABFF7D99BBFF97C7E5FF7AD1F4FF72E5FFFF57CAECFF697E84FF757D7FFF5C9F
            AFFF70E3FDFF70DAFFFF6DB9EDFF708EADFFF9F9F9FFFF00FF00FF00FF00FF00
            FF00D1D1D3FF7C869BFF77A6D0FF69C8F5FF71E2FFFF65C7DBFF6CCDE0FF79EB
            FFFF61CDF9FF67B6EFFF6081ACFFDCDCDDFFFF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FCFCFCFF7C8A9EFF59A4DDFF61CCF9FF7BE5FFFF75E1FFFF66CC
            F7FF79BCECFF708DB2FFCDCED1FFFF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00D4D4D5FF3779B7FF3DAFF5FF4AC3FFFF69CCFFFF90C9
            ECFF657F99FF9C9CA0FFE7E7E7FFF8F8F8FFFF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00EBEBEBFF4478ACFF2CA1F3FF38B8FFFF4FC3FFFF4EB0
            DDFF4C90A5FF53919FFF617C84FFAEAEAEFFF5F5F5FFFF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FAFAFAFF5D7EA2FF2A94E9FF37B3FBFF40BEFFFF5ED0
            FDFF81ECFFFF7FF0FFFF55CEFFFF5A8CB1FFEEEEEEFFFF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00A0A7B3FF3E7FC7FF3C9CEBFF48A6EDFF8DBA
            DDFF9BB1C7FFA7C1D5FF84B3E0FF8C9DB2FFFF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00F8F8F8FF74839CFF8AA7D1FF7B93BCFF7277
            8BFFDADADAFFC2C3C6FFB2B4BAFFF4F4F4FFFF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00F7F7F7FF9B9CA2FF5D7079FF7194
            94FF939D9DFFEAEAEAFFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF009EA7B0FF70CBE3FFA3FF
            FFFF70D1E9FF8A99A5FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF006D8AB0FF49BFFFFF6ED2
            FBFF4CC3FFFF6384B0FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF009C9FB1FF5586CEFF87C8
            F6FF5788CFFF9699AEFFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FCFCFCFFAEACB3FF9491
            9AFFACAAB0FFFBFBFBFFFF00FF00FF00FF00FF00FF00FF00FF00}
        end
        object DBEdescEspecie: TCDBEdit
          Left = 557
          Top = 35
          Width = 95
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'descEspecie'
          DataSource = dsNfETransporte
          TabOrder = 5
          DecimalControl = True
          KeyMode = kmNormal
        end
      end
      object lookEstadoFor: TCLookUp
        Left = 727
        Top = 295
        Width = 46
        Height = 19
        Alignment = taLeftJustify
        BevelInner = bvSpace
        BevelOuter = bvLowered
        Color = 14149350
        ParentBackground = False
        TabOrder = 3
        Visible = False
        Key.Strings = (
          'idFornecedor'
          'idCadFornecedor')
        LookUpKey.Strings = (
          'idFornecedor'
          'idCadFornecedor')
        ClientDataSet = cdsLookUp
        DataSource = dsPadrao
        ValidaCampoObrigatorio = True
        CampoObrigatorio = True
        LookUpTable = 'vCadFornecedorFiscal'
        ReturnField = 'idEstado'
      end
    end
  end
  inherited PanBotoes: TCPanelGradient
    Top = 431
    Width = 879
    ExplicitTop = 431
    ExplicitWidth = 879
    inherited BtnFechar: TCBitBtn
      Left = 798
      Anchors = [akTop, akRight]
      TabStop = False
      ExplicitLeft = 798
    end
    inherited BtnCancelar: TCBitBtn
      TabStop = False
    end
    inherited BtnExcluir: TCBitBtn
      TabStop = False
    end
    inherited BtnNovo: TCBitBtn
      TabStop = False
    end
    inherited BtnPesquisar: TCBitBtn
      TabStop = False
    end
    object EDPar: TCEdit
      Left = 676
      Top = 6
      Width = 49
      Height = 19
      BorderStyle = bsNone
      BevelKind = bkTile
      TabOrder = 6
      Text = 'EDPar'
      Visible = False
      DataType = ftString
      KeyMode = kmUSUpper
      Decimals = 0
    end
    object EDtpDocumento: TCEdit
      Left = 731
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
    object CBitBtn3: TCBitBtn
      Left = 413
      Top = 2
      Width = 75
      Height = 25
      Action = actExcluir2
      Caption = '&Excluir'
      TabOrder = 8
      TabStop = False
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
    end
  end
  inherited PanEmpresa: TCPanelGradient
    Width = 879
    Height = 27
    ExplicitWidth = 879
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
    end
    object lookEstadoEmp: TCLookUp
      Left = 676
      Top = 6
      Width = 29
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
      ClientDataSet = cdsLookUp
      DataSource = dsEmpresa
      ValidaCampoObrigatorio = False
      CampoObrigatorio = True
      LookUpTable = 'vCadEmpresaFiscal'
      ReturnField = 'idEstado'
    end
  end
  object CPanelGradient1: TCPanelGradient [5]
    Left = 0
    Top = 31
    Width = 879
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
  object LookSafra: TCLookUp [6]
    Left = 139
    Top = 142
    Width = 315
    Height = 19
    Alignment = taLeftJustify
    BevelInner = bvSpace
    BevelOuter = bvLowered
    Color = 14149350
    ParentBackground = False
    TabOrder = 4
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
  inherited imgIcones: TImageList
    Left = 760
    Top = 144
    Bitmap = {
      494C010109000E00040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
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
      630063636300636363006363630000000000000000FF000000FF000000FF0000
      00FF000000FFFEFEFEFFFEFEFEFFF6F6F7FFECECEDFFFDFDFDFFFEFEFEFF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FFC7C7C7FF707070FF4E4E
      4EFF494D49FF6E776EFF919F92FFA6B4A6FFA6B5A6FF93A193FF6F7970FF4C4F
      4CFF535353FF888888FFE1E1E1FF000000FF0000000000000000A5736B00DEB5
      A500D6ADA500D6A59C00D6A59C00D6A59C00D6A59C00D6A59C00D6A59C00D6A5
      9C00D6A59C00BD948C006363630000000000000000FF000000FF000000FF0000
      00FFFEFEFEFFFEFEFEFFF5F5F7FFA3A3B9FF85859BFFE5E5E9FFFDFDFEFFFEFE
      FEFF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000BD4C00000000000000000000000000008424050084240500842405008424
      050084240500000000000000000000000000000000FFF4F4F4FFA5A6A5FF6E7A
      6EFFAFC4AFFFD2E5D2FFDAEADAFFDAEADAFFDBEADBFFD9EBDAFFD3E6D3FFB3C7
      B3FF737F73FFB0B0B0FF000000FF000000FF0000000000000000BD847300F7E7
      D600990033009900330099003300F7CEAD00F7CEAD00FFD6AD00FFD6AD00FFD6
      AD00FFD6A500E7BDB5006363630000000000000000FF000000FF000000FFFEFE
      FEFFFEFEFEFFF6F6FAFFA7A7D0FF616190FF7676B2FF9393C9FFE5E5ECFFFDFD
      FEFFFEFEFEFF000000FF000000FF000000FF0000000000000000000000000000
      0000BD4C0000BD4C0000BD4C0000C24F000084240500FFC17900E58E4000D36E
      1A0084240500000000000000000000000000000000FFE1E2E1FF7A8C79FFADCA
      ACFFBFDABEFFBED7BBFFBCD4B8FFBBD4B8FFBBD4B8FFBBD4B8FFBED7BBFFBFDA
      BEFFB0CEB0FF7C907CFFDEE0DEFF000000FF0000000000000000BD847300EFE7
      DE00FFE7CE00FFE7CE00FFE7C600FFDEC600F7CEAD00FFD6B500FFD6B500F7CE
      AD00FFD6A500E7BDB5006363630000000000000000FF000000FF000000FFFEFE
      FEFFF6F6FAFFA2A2DFFF7272D0FF42427FFF6F6FD0FF7F7FE7FF8787CFFFE4E4
      ECFFFDFDFEFFFEFEFEFF000000FF000000FF0000000000000000000000000000
      0000BD4C00000000000000000000000000008323040084240500842305008323
      040084240500000000000000000000000000000000FF768D7AFF80B08DFF97B8
      93FF90A896FF90A4A0FF90A3A6FF92A5AAFF96A4ACFF92A2A6FF8EA3A0FF8EA4
      97FF91AE91FF86AE86FF768C76FF000000FF0000000000000000CE847B00EFE7
      DE00990033009900330099003300990033009900330099003300FFD6B500F7CE
      AD00FFCEBD00F7CEAD006363630000000000000000FF000000FFFEFEFEFFF6F6
      F9FF9292D8FF6161E8FF4E4EC8FF33337CFF5656C8FF6161E7FF6161DFFF7373
      C3FFE2E2E7FFFDFDFDFFFEFEFEFF000000FF0000000000000000000000000000
      0000BD4C00000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B4BBB3FF548560FF65A990FF657F
      89FF6F7CA2FF7381A9FF7886B1FF7088B2FF5C94ADFF698FB6FF717EA9FF6C7B
      A2FF616D89FF637E66FF5B8557FFADB5ADFF0000000000000000C6947B00EFE7
      DE00F7E7D600FFEFD600F7E7D600FFE7C600FFDEC600FFE7CE00FFD6B500FFD6
      B500F7CEAD00F7CEAD006363630000000000000000FFFEFEFEFFF5F5F7FF7E7E
      B6FF3E3EBFFF3636C8FF3434ACFF27275CFF363683FF4343B9FF3F3FC7FF3737
      9CFF5C5CA2FFE1E1E9FFFDFDFEFFFEFEFEFF0000000000000000000000000000
      0000BD4C00000000000000000000000000008424050084240500842405008424
      050084240500000000000000000000000000758875FF619560FF55795EFF6172
      9DFF7284AFFF7E94BEFF7A8FBCFF7B8D9DFF639194FF5C8B9BFF7283B2FF7081
      ABFF5D709FFF486D7CFF519778FF708673FF0000000000000000CE9C8400E7E7
      E700990033009900330099003300990033009900330099003300990033009900
      3300F7CEAD00FFCEBD006363630000000000FEFEFEFFF5F5F8FF7676AEFF2525
      8CFF141480FF14146BFF23235BFF505064FF717182FF39395DFF222272FF1C1C
      9BFF2D2DD0FF5757C1FFE0E0E8FFFDFDFDFF0000000000000000000000000000
      0000BD4C0000BD4C0000BD4C0000BD4C000084240500FFC17900E58E4000D36E
      1A0084240500000000000000000000000000567254FF5D9D72FF4E7E69FF6574
      9AFF7F97C3FF93B2DAFF7991B7FF5C9CA2FF599FA2FF697D89FF7A91BFFF778C
      B6FF5B6C99FF3F5C64FF57966EFF567559FF0000000000000000DEA58400EFEF
      E700FFEFDE00FFEFDE00F7E7D600FFEFD600FFDEC600FFE7CE00FFDEC600FFE7
      C600F7CEAD00E7C6B5006363630000000000FAFAFCFF8787C7FF2B2BC2FF1313
      BAFF1010ADFF111185FF333345FFBABABDFFD0D0D0FF8A8A94FF202065FF1616
      BCFF1616CFFF2323C4FF6161B4FFE8E8EBFF0000000000000000000000000000
      0000BD4C00000000000000000000000000008323040084240500842305008323
      0400842405000000000000000000000000004E6E4EFF619462FF5C8F5EFF506B
      73FF7B92C0FF97B5DAFF869FC9FF5B758FFF3A7B87FF6B85A6FF8CA7D2FF7283
      B0FF4A5C71FF48826DFF5C9B72FF506F4DFF0000000000000000DEA58400FFFF
      F700990033009900330099003300990033009900330099003300990033009900
      3300FFDEBD00FFCEBD006363630000000000FAFAFCFF8A8AD5FF2D2DBEFF1010
      9EFF0A0A77FF090951FF31314EFFB7B7BAFFCDCDCEFF868694FF1C1C59FF0E0E
      99FF1010A3FF232391FF6C6C9FFFF1F1F4FF0000000000000000000000000000
      0000BD4C00000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000557053FF5C9469FF52A289FF528E
      6AFF4D6261FF788EB5FF94B3D9FF8DA7D0FF8A9FC8FF8CA7D1FF768CB9FF4B67
      7BFF527B53FF619865FF5E9262FF547254FF0000000000000000DEA58400FFFF
      F700F7EFE700F7EFE700FFEFD600F7E7D600FFEFD600FFEFD600F7E7D600FFE7
      CE00FFDEC600E7C6B5006363630000000000FEFEFEFFF7F7FBFF7878A6FF2525
      85FF1111A2FF0F0FA0FF191959FF434354FF616174FF2B2B50FF161688FF1010
      94FF24249FFF6363B4FFF2F2F6FFFEFEFEFF0000000000000000000000000000
      0000BD4C00000000000000000000000000008424050084240500842405008424
      050084240500000000000000000000000000748673FF588C61FF5A9870FF6295
      5FFF5B8C56FF445D4EFF657A99FF7E9BC2FF819BC3FF6E81A9FF54696EFF4C87
      67FF559E7BFF60905EFF5B8B5BFF6E826EFF0000000000000000DEA58400FEFD
      FD0099003300CC333300CC333300CC333300FFEFD60099003300990033009900
      3300FFE7CE00E7C6B5006363630000000000000000FFFEFEFEFFF7F7FAFF7D7D
      CEFF2B2BC5FF1212AFFF0C0C64FF12126DFF111155FF13138CFF1414B5FF2929
      C9FF6868D1FFF2F2F9FFFEFEFEFF000000FF0000000000000000000000000000
      0000BD4C0000BD4C0000BD4C0000BD4C000084240500FFC17900E58E4000D36E
      1A0084240500000000000000000000000000B3BAB3FF4E754DFF5E8A5CFF5A7F
      5EFF5B835DFF5F905CFF51604FFF766A76FF52575EFF55765CFF639261FF6696
      65FF629569FF629362FF4D764DFFACB4ACFF0000000000000000DEA58400FEFD
      FD0099003300FFCC6600FFCC660099666600E7E7E700FFF7E700FFEFDE00FFEF
      DE00FFE7CE00E7BDB5006363630000000000000000FF000000FFFEFEFEFFF7F7
      FCFF7E7EDBFF2B2BB4FF0D0D6BFF1010A4FF0E0E96FF0F0F84FF2828C0FF6767
      D7FFF2F2FBFFFEFEFEFF000000FF000000FF0000000000000000000000000000
      0000BD4C00000000000000000000000000008323040084240500842305008323
      040084240500000000000000000000000000000000FF6A7F69FF5F7A61FF848D
      A4FF8996B0FF7F958FFF828782FFA29692FF84987EFF87AF87FF87AC87FF87AB
      87FF8CB08CFF709770FF647A64FF000000FF0000000000000000DEA58400FEFD
      FD0099003300FFFF6600FFECCC0099666600FFEFD600F7E7D600FFD6CE00FFD6
      CE00F7B5AD00F7B5AD006363630000000000000000FF000000FF000000FFFEFE
      FEFFF7F7FCFF7C7CC2FF262684FF1515B4FF1515B8FF22227CFF6868C4FFF2F2
      F9FFFEFEFEFF000000FF000000FF000000FF0000000000000000842405008424
      0500842405008424050084240500000000000000000000000000000000000000
      000000000000000000000000000000000000000000FFE2E4E2FF6A7E6AFFB0BC
      B7FFC5CEDCFFBBC3D1FFB2BEBFFFAFC3B1FFB8CEB8FFB8CDB8FFB9CEB9FFC0D4
      C0FFB8CCB8FF6B7F6BFFDEE1DEFF000000FF0000000000000000DEA58400FEFD
      FD00FF993300FF993300FF993300FF993300FFFFF700F7EFE700F7A54200F7A5
      4200D68C4200636363000000000000000000000000FF000000FF000000FF0000
      00FFFEFEFEFFF7F7FAFF7777B9FF3030C2FF2D2DC2FF6868BCFFF2F2F6FFFEFE
      FEFF000000FF000000FF000000FF000000FF000000000000000084240500FFC1
      7900E58E4000D36E1A0084240500000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FFE6E8E6FF8F9B
      8FFFC4CDC2FFEAF1E9FFF4FAF2FFF3F9F3FFF2F8F2FFF3F9F3FFECF3ECFFC8D2
      C8FF8E9A8EFFE2E5E2FF000000FF000000FF0000000000000000DEA58400FEFD
      FD00FEFDFD00FEFDFD00FFFFF700FEFDFD00FFFFF700FEFDFD00DEA58400E7AD
      6B0063636300000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FFFEFEFEFFF7F7FCFF8B8BDCFF7B7BD8FFF2F2F9FFFEFEFEFF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000832304008424
      0500842305008323040084240500000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FFC5CAC5FF9FA9A0FFA6B0A6FFB1BBB1FFB1BBB1FFA6B0A6FF9FA89FFFC2C8
      C2FF000000FF000000FF000000FF000000FF0000000000000000DEA58400DEA5
      8400DEA58400DEA58400DEA58400DEA58400DEA58400DEA58400DEA584006363
      630000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FFFEFEFEFFFAFAFDFFF7F7FCFFFEFEFEFF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
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
      C003000000000000C0030000000000008003E001F81FFFFF8001C001F00FF707
      8003C001E007F0078001C001E003F7078001C001C001F7FF0000C0018000F707
      0000C0010000F0070000C0010000F7070000C0010000F7FF0000C0010000F707
      0000C0018001F0070000C001C003F7078001C001E007C1FF8001C003F00FC1FF
      C003C007F81FC1FFF00FC00FFC3FFFFFE00FFF7FF80FFCFFC003E007F003E01F
      C0008000C001C01FC0000000C001C003C0000000800080038000E00380008707
      0000E00780008FC10000E007800087C10000E007800087C30000C007800087C1
      0000E007800083C00000E0078000C1C10000E0078001C0030003E007C003F003
      8007E007E007F80FFC07FFFFF00FFC0F00000000000000000000000000000000
      000000000000}
  end
  inherited Acao: TActionList
    Left = 824
    Top = 144
    object actGerarRateio: TAction
      Caption = '&Gerar Rateio'
      ImageIndex = 6
    end
    object actExcluir2: TAction
      Caption = '&Excluir'
      ImageIndex = 2
      OnExecute = actExcluir2Execute
    end
  end
  inherited cdsPadrao: TClientDataSet
    CommandText = 'SELECT * FROM NfE'
    Left = 792
    Top = 80
  end
  inherited dspPadrao: TDataSetProvider
    DataSet = sdsNfE
    Left = 760
    Top = 80
  end
  inherited dsPadrao: TDataSource
    Left = 824
    Top = 80
  end
  inherited cdsLookUp: TClientDataSet
    Left = 824
    Top = 48
  end
  inherited dspLookUp: TDataSetProvider
    Left = 792
    Top = 48
  end
  inherited ImgBotoes: TImageList
    Left = 792
    Top = 144
    Bitmap = {
      494C010107000900040020001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
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
      0000000000000000000000000000D9D9DAFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000E3E3E3FF0000000000000000000000000000
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
      00000000000000000000ABA9A8FFDCDCDCFF8C8B8DFFEEEEEEFF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000CACACAFFFFFFFFFFB4B4B4FFF2F2F2FF000000000000
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
      000000000000DFDFDFFFF0EDE9FFE7E5DEFFB5B3B0FFD2D1D2FFC1C0C1FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000E7E7E7FFFFFFFFFFFFFFFFFFF0F0F0FFFFFFFFFFD1D1D1FF0000
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
      000000000000D4CBC2FFE4E1D9FFE5E2DAFFE5E0D8FFD1C9C1FFDDDCDCFF8D8C
      8DFFE9E9E9FF0000000000000000000000000000000000000000000000000000
      000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBCBC
      BCFFEFEFEFFF0000000000000000000000000000000000000000000000000000
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
      0000A19A94FFE1DAD3FFE5E0D8FFE3DCD5FFDDD6CEFFDCD2C8FFD5C9BDFFB1AD
      A9FFDFDFDFFFB1B0B1FF00000000000000000000000000000000000000000000
      0000C2C2C2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEAEA
      EAFFFFFFFFFFC6C6C6FF00000000000000000000000000000000000000000000
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
      A50084848400C6DEC600A5A5A50000000000000000000000000000000000D1D0
      D1FFE3DBD3FFDCD3C9FFDAD1C8FFDDD3CAFFDDD3C9FFD4C8BDFFCEC0B3FFCCBC
      ADFFB1A297FFE6E6E6FFC5C4C5FF00000000000000000000000000000000DDDD
      DDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFFF9F9
      F9FFE0E0E0FFFFFFFFFFD7D7D7FF000000000000000000000000000000000000
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
      A500A5A5A500C6DEC600A5A5A500000000000000000000000000F6F6F6FFC9BA
      B0FFCEC1B4FFD2C6BAFFD9CEC2FFD6CBBFFFD1C5B9FFD2C4B7FFCEBEB0FFC2B1
      A4FFBDAA9EFFB9A59AFF00000000000000000000000000000000F8F8F8FFF9F9
      F9FFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFCFCFFEFEF
      EFFFE9E9E9FFE4E4E4FF00000000000000000000000000000000000000000000
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
      FF00F7FFFF00C6DEC600A5A5A50000000000000000000000000093847FFFC6B6
      A9FFCCBCADFFCFC1B2FFCDBEB0FFCFC0B2FFD1C2B4FFC9B9ABFFB6ABA0FFB680
      7DFFBCA89DFFD4C8C2FF00000000000000000000000000000000B8B8B8FFF4F4
      F4FFF9F9F9FFFDFDFDFFFBFBFBFFFDFDFDFFFFFFFFFFF7F7F7FFE8E8E8FFD3D3
      D3FFE8E8E8FFE5E5E5FF00000000000000000000000000000000000000000000
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
      FF00F7FFFF00C6DEC600A5A5A5000000000000000000BEBCBDFFCFC1BAFFC2B0
      A3FFC1B0A3FFC4B3A6FFCABAACFFC9B8AAFFC4B3A5FFB6ABA2FFF2736CFFFDBB
      A1FFA18385FF00000000000000000000000000000000CFCFCFFFFFFFFFFFEEEE
      EEFFEEEEEEFFF1F1F1FFF7F7F7FFF6F6F6FFF1F1F1FFE9E9E9FFE3E3E3FFFFFF
      FFFFBEBEBEFF0000000000000000000000000000000000000000000000000000
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
      FF00F7FFFF00C6DEC600A5A5A50000000000F4F4F4FFC3B5B0FFBCA9A0FFBEAD
      A3FFC5B4AAFFC9B8AEFFC7B7ACFFC6B6ABFFB7AFA4FFEA161BFFFE584BFFFF6B
      5CFFFD3A32FFCCD0E3FF0000000000000000F7F7F7FFF6F6F6FFEAEAEAFFECEC
      ECFFF4F4F4FFF8F8F8FFF6F6F6FFF5F5F5FFEAEAEAFFAEAEAEFFD5D5D5FFE0E0
      E0FFC7C7C7FFEBEBEBFF00000000000000000000000000000000000000000000
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
      FF00F7FFFF00C6DEC600A5A5A50000000000F6F4F4FFC3B3AEFFC6B6B0FFCDBE
      B7FFCEC0BAFFD1C4BDFFD5C8C2FFCBC8BEFFC00314FFE5010AFFF61615FFF81E
      1BFFF1080BFFD2000FFFC9D4E7FF00000000FFFFFFFFE6E6E6FFF7F7F7FFFEFE
      FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF929292FFA0A0A0FFB2B2B2FFB6B6
      B6FFA9A9A9FF989898FFECECECFF000000000000000000000000000000000000
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
      FF00F7FFFF00C6DEC600A5A5A500000000000000000000000000D7CDCAFFD5CA
      C7FFD9CFCAFFDCD2CEFFDED4D0FFD197A0FFD41821FFD6242DFFFF5146FFFF55
      4AFFC22636FFB32E41FFAC2E46FF000000000000000000000000FDFDFDFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFEEEEEEFFA6A6A6FFAEAEAEFFD3D3D3FFD5D5
      D5FFA3A3A3FF9E9E9EFF9A9A9AFF000000000000000000000000000000000000
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
      FF00F7FFFF00C6DEC600A5A5A50000000000000000000000000000000000FBFA
      FAFFE7E3E3FFE8E5E5FFEBE9E8FFEEEBEBFFF9F9F9FFF9FAF9FFFF7E6DFFFF87
      74FFB6A3CBFF000000000000000000000000000000000000000000000000FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEAEAEAFFEEEE
      EEFFD0D0D0FF0000000000000000000000000000000000000000000000000000
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
      000000000000F2F0F0FFFAFAFAFFF4F3F3FFFDFDFDFFD4DDDCFFFEA696FFF6C8
      C0FFBCB4CBFF0000000000000000000000000000000000000000000000000000
      000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5F5F5FFFFFFFFFFFFFF
      FFFFD8D8D8FF0000000000000000000000000000000000000000000000000000
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
      00000000000000000000FCFCFCFF00000000FEFEFEFF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFFFF00000000FFFFFFFF00000000000000000000
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
      000000000000000000000000FFFFFF00FF31FF31FE7FFE7FFFFFFFFF00000000
      FC00FC00F07FF07FFEFFFEFF00000000B800B800C001C001FC3FFC3F00000000
      00000000C001C001F81FF81F0000000000010001C001C001F807F80700000000
      00010001C001C001F003F0030000000000010001C001C001E001E00100000000
      00030003C001C001C003C0030000000000030003C001C001C003C00300000000
      00030003C001C001800780070000000000010001C001C0010003000300000000
      00010001C001C001000100010000000000000000C001C001C001C00100000000
      00000000C001C001E007E0070000000000000000F001F001F807F80700000000
      03F103F1FC7FFC7FFD7FFD7F00000000C001C0018FFF8FFF88038803FF3FFF3F
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
    Left = 792
    Top = 16
  end
  inherited dsEmpresa: TDataSource
    Left = 824
    Top = 16
  end
  object sdsNfEProduto: TSQLDataSet
    SchemaName = 'gesys'
    GetMetadata = False
    CommandText = 'SELECT * FROM NfEProduto'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmPadrao.dbConexao
    Left = 728
    Top = 112
  end
  object dspNfEProduto: TDataSetProvider
    DataSet = sdsNfEProduto
    Options = [poAllowMultiRecordUpdates, poPropogateChanges, poAllowCommandText, poUseQuoteChar]
    BeforeUpdateRecord = dspNfEProdutoBeforeUpdateRecord
    Left = 760
    Top = 112
  end
  object cdsNfEProduto: TClientDataSet
    Aggregates = <>
    CommandText = 'SELECT * FROM NfEProduto'
    Params = <>
    ProviderName = 'dspNfEProduto'
    AfterOpen = cdsPadraoAfterOpen
    AfterInsert = cdsNfEProdutoAfterInsert
    AfterEdit = cdsNfEProdutoAfterEdit
    OnReconcileError = cdsPadraoReconcileError
    Left = 792
    Top = 112
    object cdsNfEProdutodescProduto: TStringField
      FieldKind = fkLookup
      FieldName = 'descProduto'
      LookupDataSet = cdsProduto
      LookupKeyFields = 'idProduto'
      LookupResultField = 'descProduto'
      KeyFields = 'idProduto'
      Size = 50
      Lookup = True
    end
    object cdsNfEProdutoidEmpresa: TIntegerField
      FieldName = 'idEmpresa'
      Required = True
    end
    object cdsNfEProdutoidCadEmpresa: TSmallintField
      FieldName = 'idCadEmpresa'
      Required = True
    end
    object cdsNfEProdutoidDocSerie: TStringField
      FieldName = 'idDocSerie'
      Required = True
      FixedChar = True
      Size = 5
    end
    object cdsNfEProdutoidFornecedor: TIntegerField
      FieldName = 'idFornecedor'
      Required = True
    end
    object cdsNfEProdutoidCadFornecedor: TSmallintField
      FieldName = 'idCadFornecedor'
      Required = True
    end
    object cdsNfEProdutoidNfE: TIntegerField
      FieldName = 'idNfE'
      Required = True
    end
    object cdsNfEProdutoidProduto: TIntegerField
      FieldName = 'idProduto'
      Required = True
    end
    object cdsNfEProdutoqtProduto: TFMTBCDField
      FieldName = 'qtProduto'
      Required = True
      Precision = 10
      Size = 3
    end
    object cdsNfEProdutovlBruto: TFMTBCDField
      FieldName = 'vlBruto'
      Precision = 18
      Size = 4
    end
    object cdsNfEProdutoprDesconto: TFMTBCDField
      FieldName = 'prDesconto'
      Precision = 6
      Size = 4
    end
    object cdsNfEProdutovlDesconto: TFMTBCDField
      FieldName = 'vlDesconto'
      Precision = 18
      Size = 4
    end
    object cdsNfEProdutovlLiquido: TFMTBCDField
      FieldName = 'vlLiquido'
      Precision = 18
      Size = 4
    end
    object cdsNfEProdutovlTotal: TFMTBCDField
      FieldName = 'vlTotal'
      Required = True
      Precision = 19
      Size = 4
    end
    object cdsNfEProdutoprReducao: TFMTBCDField
      FieldName = 'prReducao'
      Required = True
      Precision = 5
      Size = 3
    end
    object cdsNfEProdutovlReducao: TFMTBCDField
      FieldName = 'vlReducao'
      Required = True
      Precision = 19
      Size = 4
    end
    object cdsNfEProdutovlBaseIcms: TFMTBCDField
      FieldName = 'vlBaseIcms'
      Required = True
      Precision = 19
      Size = 4
    end
    object cdsNfEProdutoprIcms: TFMTBCDField
      FieldName = 'prIcms'
      Required = True
      Precision = 5
      Size = 3
    end
    object cdsNfEProdutovlIcms: TFMTBCDField
      FieldName = 'vlIcms'
      Required = True
      Precision = 19
      Size = 4
    end
    object cdsNfEProdutovlBaseIpi: TFMTBCDField
      FieldName = 'vlBaseIpi'
      Required = True
      Precision = 19
      Size = 4
    end
    object cdsNfEProdutoprIpi: TFMTBCDField
      FieldName = 'prIpi'
      Required = True
      Precision = 5
      Size = 3
    end
    object cdsNfEProdutovlIpi: TFMTBCDField
      FieldName = 'vlIpi'
      Required = True
      Precision = 19
      Size = 4
    end
    object cdsNfEProdutovlIsentasIcms: TFMTBCDField
      FieldName = 'vlIsentasIcms'
      Required = True
      Precision = 19
      Size = 4
    end
    object cdsNfEProdutovlOutrasIcms: TFMTBCDField
      FieldName = 'vlOutrasIcms'
      Required = True
      Precision = 19
      Size = 4
    end
    object cdsNfEProdutovlBaseIss: TFMTBCDField
      FieldName = 'vlBaseIss'
      Required = True
      Precision = 19
      Size = 4
    end
    object cdsNfEProdutoprIss: TFMTBCDField
      FieldName = 'prIss'
      Required = True
      Precision = 5
      Size = 3
    end
    object cdsNfEProdutovlIss: TFMTBCDField
      FieldName = 'vlIss'
      Required = True
      Precision = 19
      Size = 4
    end
    object cdsNfEProdutoprInss: TFMTBCDField
      FieldName = 'prInss'
      Precision = 5
      Size = 3
    end
    object cdsNfEProdutoidBem: TIntegerField
      FieldName = 'idBem'
    end
  end
  object dsNfEProduto: TDataSource
    DataSet = cdsNfEProduto
    Left = 824
    Top = 112
  end
  object sdsNfE: TSQLDataSet
    SchemaName = 'gesys'
    GetMetadata = False
    CommandText = 'SELECT * FROM NfE'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmPadrao.dbConexao
    Left = 728
    Top = 80
  end
  object FindSerie: TCFind
    SelectClause.Strings = (
      'SELECT idDocSerie, descDocSerie FROM DocSerie')
    JoinClause.Strings = (
      'WHERE idTipoDocSerie IN ( 4,8)')
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
    Left = 728
    Top = 48
  end
  object FindNatureza: TCFind
    SelectClause.Strings = (
      'SELECT idNatureza, descNatureza, idCfop, descCfop FROM vNatureza')
    JoinClause.Strings = (
      'WHERE tpNatureza = '#39'ENTRADA'#39)
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
    Left = 760
    Top = 48
  end
  object FindProdDeposito: TCFind
    SelectClause.Strings = (
      'SELECT idProdDeposito, descProdDeposito FROM ProdDeposito')
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
    Left = 728
    Top = 144
  end
  object dspProduto: TDataSetProvider
    DataSet = dmPadrao.sdsLookUp
    Options = [poPropogateChanges, poAllowCommandText]
    Left = 792
    Top = 176
  end
  object cdsProduto: TClientDataSet
    Aggregates = <>
    CommandText = 'SELECT * FROM Produto'
    Params = <>
    ProviderName = 'dspProduto'
    Left = 824
    Top = 176
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
    Left = 760
    Top = 177
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
    Left = 728
    Top = 176
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
    Left = 792
    Top = 208
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
    Left = 760
    Top = 208
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
    Left = 696
    Top = 48
  end
  object cdsGerencial: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 696
    Top = 80
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
    Left = 696
    Top = 112
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
    Top = 144
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
    Left = 696
    Top = 176
  end
  object cdsResultado: TClientDataSet
    Aggregates = <>
    CommandText = 'SELECT * FROM Resultado'
    Params = <>
    ProviderName = 'dspLookUp'
    Left = 696
    Top = 208
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
    Left = 728
    Top = 208
  end
  object FindSerieTit: TCFind
    SelectClause.Strings = (
      'SELECT  idDocSerie, descDocSerie FROM DocSerie')
    JoinClause.Strings = (
      'WHERE idTipoDocSerie = 2')
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
    Left = 824
    Top = 208
  end
  object sdsNfEValor: TSQLDataSet
    SchemaName = 'gesys'
    GetMetadata = False
    CommandText = 'SELECT * FROM NfEValor'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmPadrao.dbConexao
    Left = 728
    Top = 272
  end
  object dspNfEValor: TDataSetProvider
    DataSet = sdsNfEValor
    Options = [poAllowMultiRecordUpdates, poPropogateChanges, poAllowCommandText, poUseQuoteChar]
    BeforeUpdateRecord = dspNfEProdutoBeforeUpdateRecord
    Left = 760
    Top = 272
  end
  object cdsNfEValor: TClientDataSet
    Aggregates = <>
    CommandText = 'SELECT * FROM NfEValor'
    Params = <>
    ProviderName = 'dspNfEValor'
    AfterOpen = cdsPadraoAfterOpen
    AfterInsert = cdsNfEValorAfterInsert
    OnReconcileError = cdsPadraoReconcileError
    Left = 792
    Top = 272
  end
  object dsNfEValor: TDataSource
    DataSet = cdsNfEValor
    Left = 824
    Top = 272
  end
  object dsNfETransporte: TDataSource
    DataSet = cdsNfETransporte
    Left = 824
    Top = 304
  end
  object cdsNfETransporte: TClientDataSet
    Aggregates = <>
    CommandText = 'SELECT * FROM NfETransporte'
    Params = <>
    ProviderName = 'dspNfETransporte'
    AfterOpen = cdsPadraoAfterOpen
    OnReconcileError = cdsPadraoReconcileError
    Left = 792
    Top = 304
  end
  object dspNfETransporte: TDataSetProvider
    DataSet = sdsNfETransporte
    Options = [poAllowMultiRecordUpdates, poPropogateChanges, poAllowCommandText, poUseQuoteChar]
    BeforeUpdateRecord = dspNfEProdutoBeforeUpdateRecord
    Left = 760
    Top = 304
  end
  object sdsNfETransporte: TSQLDataSet
    SchemaName = 'gesys'
    GetMetadata = False
    CommandText = 'SELECT * FROM NfETransporte'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmPadrao.dbConexao
    Left = 728
    Top = 304
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
    Left = 728
    Top = 240
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
    Left = 760
    Top = 240
  end
  object FindBem: TCFind
    SelectClause.Strings = (
      'SELECT idBem, descBem, descMarca, anoModelo  FROM vEquipamentos')
    JoinClause.Strings = (
      
        'WHERE idEmpresa = [DBEidEmpresa] AND idCadEmpresa = [DBEidCadEmp' +
        'resa]')
    OrderByClause.Strings = (
      'ORDER BY descBem')
    FindField = 'descBem'
    SQLConnection = dmPadrao.dbConexao
    ValueField = 'idBem'
    CarregaDados = True
    CollumNames.Strings = (
      'C'#243'digo'
      'Descri'#231#227'o'
      'Marca'
      'Modelo')
    TypeFind = fFindNormal
    Left = 792
    Top = 240
  end
  object FindPlaca: TCFind
    SelectClause.Strings = (
      'SELECT DISTINCT  Placa, descVeiculo FROM Romaneio')
    OrderByClause.Strings = (
      'ORDER BY descVeiculo')
    FindField = 'Placa,descVeiculo'
    SQLConnection = dmPadrao.dbConexao
    ValueField = 'Placa'
    CarregaDados = True
    CollumNames.Strings = (
      'Placa'
      'Veiculo')
    TypeFind = fFindNormal
    Left = 824
    Top = 241
  end
  object cdsMotorista: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 792
    Top = 336
  end
  object DataSource1: TDataSource
    DataSet = cdsNfETransporte
    Left = 824
    Top = 336
  end
  object sdsNfETransito: TSQLDataSet
    SchemaName = 'gesys'
    GetMetadata = False
    CommandText = 'SELECT * FROM NfETransito'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmPadrao.dbConexao
    Left = 728
    Top = 360
  end
  object dspNfETransito: TDataSetProvider
    DataSet = sdsNfETransito
    Options = [poAllowMultiRecordUpdates, poPropogateChanges, poAllowCommandText, poUseQuoteChar]
    BeforeUpdateRecord = dspNfEProdutoBeforeUpdateRecord
    Left = 760
    Top = 368
  end
  object cdsNfETransito: TClientDataSet
    Aggregates = <>
    CommandText = 'SELECT * FROM NfETransito'
    Params = <>
    ProviderName = 'dspNfETransito'
    AfterOpen = cdsPadraoAfterOpen
    OnReconcileError = cdsPadraoReconcileError
    Left = 792
    Top = 368
  end
  object dsNfETransito: TDataSource
    DataSet = cdsNfETransito
    Left = 824
    Top = 368
  end
end
