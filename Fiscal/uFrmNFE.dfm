inherited FrmNfE: TFrmNfE
  Left = 46
  Top = 100
  Caption = 'Nota Fiscal de Entrada'
  ClientHeight = 695
  ClientWidth = 1362
  FormStyle = fsNormal
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
  Visible = False
  ExplicitWidth = 1378
  ExplicitHeight = 734
  PixelsPerInch = 96
  TextHeight = 13
  inherited Bevel1: TBevel
    Top = 660
    Width = 1362
    ExplicitTop = 417
    ExplicitWidth = 691
  end
  inherited Bevel2: TBevel
    Top = 27
    Width = 1362
    ExplicitTop = 27
    ExplicitWidth = 958
  end
  inherited PagAbas: TCPageControl
    Top = 31
    Width = 1362
    Height = 629
    TabOrder = 2
    OnChange = PagAbasChange
    ExplicitTop = 31
    ExplicitWidth = 1362
    ExplicitHeight = 629
    inherited TabAbas: TTabSheet
      Caption = 'Dados da Nota'
      ExplicitLeft = 4
      ExplicitTop = 25
      ExplicitWidth = 1354
      ExplicitHeight = 600
      object grpNotaSaida: TCGroupBox
        Left = 11
        Top = 3
        Width = 634
        Height = 200
        Caption = 'Dados da Nota'
        TabOrder = 0
        object CLabel4: TCLabel
          Left = 26
          Top = 64
          Width = 24
          Height = 13
          Alignment = taRightJustify
          Caption = 'S'#233'rie'
        end
        object CLabel5: TCLabel
          Left = 340
          Top = 64
          Width = 37
          Height = 13
          Alignment = taRightJustify
          Caption = 'N'#250'mero'
        end
        object CLabel14: TCLabel
          Left = 476
          Top = 64
          Width = 31
          Height = 13
          Alignment = taRightJustify
          Caption = 'Status'
        end
        object LblCad: TCLabel
          Left = 13
          Top = 20
          Width = 37
          Height = 13
          Alignment = taRightJustify
          Caption = 'Fornec.'
        end
        object CLabel59: TCLabel
          Left = 450
          Top = 19
          Width = 46
          Height = 13
          Alignment = taRightJustify
          Caption = 'Insc. Est.'
        end
        object CLabel7: TCLabel
          Left = 12
          Top = 86
          Width = 38
          Height = 13
          Alignment = taRightJustify
          Caption = 'Emiss'#227'o'
        end
        object CLabel9: TCLabel
          Left = 142
          Top = 86
          Width = 58
          Height = 13
          Alignment = taRightJustify
          Caption = 'Lancamento'
        end
        object CLabel8: TCLabel
          Left = 292
          Top = 86
          Width = 44
          Height = 13
          Alignment = taRightJustify
          Caption = 'Natureza'
        end
        object CLabel6: TCLabel
          Left = 27
          Top = 108
          Width = 23
          Height = 13
          Alignment = taRightJustify
          Caption = 'Cfop'
        end
        object lblDeposito: TCLabel
          Left = 313
          Top = 130
          Width = 42
          Height = 13
          Alignment = taRightJustify
          Caption = 'Dep'#243'sito'
        end
        object CLabel72: TCLabel
          Left = 24
          Top = 152
          Width = 26
          Height = 13
          Alignment = taRightJustify
          Caption = 'Safra'
        end
        object CLabel78: TCLabel
          Left = 21
          Top = 176
          Width = 29
          Height = 13
          Alignment = taRightJustify
          Caption = #205'ndice'
        end
        object CLabel85: TCLabel
          Left = 305
          Top = 176
          Width = 40
          Height = 13
          Alignment = taRightJustify
          Caption = 'Cota'#231#227'o'
        end
        object DBEidDocSerie: TCDBEdit
          Left = 56
          Top = 61
          Width = 46
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'idDocSerie'
          DataSource = dsPadrao
          TabOrder = 8
          Find = FindSerie
          AcaoCad = frmPrincipal.actCadDocSerie
          DecimalControl = True
          KeyMode = kmUSUpper
        end
        object LookDocSerie: TCLookUp
          Left = 108
          Top = 61
          Width = 226
          Height = 19
          Alignment = taLeftJustify
          BevelInner = bvSpace
          BevelOuter = bvLowered
          Color = 14149350
          ParentBackground = False
          TabOrder = 9
          Key.Strings = (
            'idDocSerie')
          LookUpKey.Strings = (
            'idDocSerie')
          AlternateSQL.Strings = (
            
              'SELECT descDocSerie FROM DocSerie WHERE idTipoDocSerie IN (4,8) ' +
              'AND idDocSerie = ?')
          ClientDataSet = cdsLookup
          DataSource = dsPadrao
          ValidaCampoObrigatorio = True
          CampoObrigatorio = True
          LookUpTable = 'DocSerie'
          ReturnField = 'descDocSerie'
        end
        object DBEstNfE: TCDBEdit
          Left = 513
          Top = 61
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
          TabOrder = 11
          DecimalControl = True
          KeyMode = kmUSUpper
        end
        object lookIeFornecedor: TCLookUp
          Left = 501
          Top = 16
          Width = 125
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
          ClientDataSet = cdsLookup
          DataSource = dsPadrao
          ValidaCampoObrigatorio = True
          CampoObrigatorio = True
          LookUpTable = 'vCadFornecedorFiscal'
          ReturnField = 'idInscEstadual'
        end
        object DBEdtEmissao: TCDBEdit
          Left = 56
          Top = 83
          Width = 80
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'dtEmissao'
          DataSource = dsPadrao
          MaxLength = 10
          TabOrder = 12
          DecimalControl = True
          KeyMode = kmDate
        end
        object DBEdtLancamento: TCDBEdit
          Left = 206
          Top = 83
          Width = 80
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'dtLancamento'
          DataSource = dsPadrao
          MaxLength = 10
          TabOrder = 13
          DecimalControl = True
          KeyMode = kmDate
        end
        object DBEidNatureza: TCDBEdit
          Left = 342
          Top = 83
          Width = 46
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'idNatureza'
          DataSource = dsPadrao
          TabOrder = 14
          Find = FindNatureza
          AcaoCad = frmPrincipal.actCadNatureza
          DecimalControl = True
          KeyMode = kmNormal
        end
        object LookNatureza: TCLookUp
          Left = 394
          Top = 83
          Width = 232
          Height = 19
          Alignment = taLeftJustify
          BevelInner = bvSpace
          BevelOuter = bvLowered
          Color = 14149350
          ParentBackground = False
          TabOrder = 15
          Key.Strings = (
            'idNatureza')
          LookUpKey.Strings = (
            'idNatureza')
          AlternateSQL.Strings = (
            
              'SELECT descNatureza FROM vNatureza WHERE tpNatureza = '#39'ENTRADA'#39' ' +
              'AND frete = '#39'N'#39' AND idNatureza = ?')
          ClientDataSet = cdsLookup
          DataSource = dsPadrao
          ValidaCampoObrigatorio = True
          CampoObrigatorio = True
          LookUpTable = 'vNatureza'
          ReturnField = 'descNatureza'
        end
        object LookIdCfop: TCLookUp
          Left = 56
          Top = 105
          Width = 64
          Height = 19
          Alignment = taLeftJustify
          BevelInner = bvSpace
          BevelOuter = bvLowered
          Color = 14149350
          ParentBackground = False
          TabOrder = 16
          Key.Strings = (
            'idNatureza')
          LookUpKey.Strings = (
            'idNatureza')
          AlternateSQL.Strings = (
            
              'SELECT idCfop FROM vNatureza WHERE tpNatureza = '#39'ENTRADA'#39' AND id' +
              'Natureza = ?')
          ClientDataSet = cdsLookup
          DataSource = dsPadrao
          ValidaCampoObrigatorio = True
          CampoObrigatorio = True
          LookUpTable = 'vNatureza'
          ReturnField = 'idCfop'
        end
        object LookDescCfop: TCLookUp
          Left = 126
          Top = 105
          Width = 500
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
            
              'SELECT descCfop FROM vNatureza WHERE tpNatureza = '#39'ENTRADA'#39' AND ' +
              'idNatureza = ?')
          ClientDataSet = cdsLookup
          DataSource = dsPadrao
          ValidaCampoObrigatorio = True
          CampoObrigatorio = True
          LookUpTable = 'vNatureza'
          ReturnField = 'descCfop'
        end
        object DBCKmovEstoque: TCDBCheckBox
          Left = 56
          Top = 129
          Width = 121
          Height = 17
          Caption = 'Movimenta Estoque?'
          DataField = 'movEstoque'
          DataSource = dsPadrao
          TabOrder = 18
          ValueChecked = 'S'
          ValueUnchecked = 'N'
          OnExit = DBCKmovEstoqueExit
        end
        object DBCKmovCusto: TCDBCheckBox
          Left = 193
          Top = 129
          Width = 112
          Height = 17
          Caption = 'Movimenta Custo?'
          DataField = 'movCusto'
          DataSource = dsPadrao
          TabOrder = 19
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
        object DBEidProdDeposito: TCDBEdit
          Left = 361
          Top = 127
          Width = 46
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'idProdDeposito'
          DataSource = dsPadrao
          TabOrder = 20
          Find = FindProdDeposito
          AcaoCad = frmPrincipal.actCadProdDeposito
          DecimalControl = True
          KeyMode = kmNormal
        end
        object LookProdDeposito: TCLookUp
          Left = 413
          Top = 127
          Width = 213
          Height = 19
          Alignment = taLeftJustify
          BevelInner = bvSpace
          BevelOuter = bvLowered
          Color = 14149350
          ParentBackground = False
          TabOrder = 21
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
        object DBEidSafra: TCDBEdit
          Left = 56
          Top = 149
          Width = 46
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'idSafra'
          DataSource = dsPadrao
          TabOrder = 22
          Find = FindSafra
          AcaoCad = frmPrincipal.actCadSafra
          DecimalControl = True
          KeyMode = kmNormal
        end
        object LookSafra: TCLookUp
          Left = 108
          Top = 149
          Width = 316
          Height = 19
          Alignment = taLeftJustify
          BevelInner = bvSpace
          BevelOuter = bvLowered
          Color = 14149350
          ParentBackground = False
          TabOrder = 23
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
          Top = 149
          Width = 96
          Height = 19
          Action = frmPrincipal.actCadSafra
          Caption = '&Safra'
          TabOrder = 24
          TabStop = False
        end
        object DBEidNfE: TCDBEdit
          Left = 383
          Top = 61
          Width = 87
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'idNfE'
          DataSource = dsPadrao
          MaxLength = 10
          TabOrder = 10
          OnExit = DBEidNfEExit
          DecimalControl = True
          KeyMode = kmInteger
        end
        object DBEidFornecedor: TCDBEdit
          Left = 56
          Top = 16
          Width = 60
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'idFornecedor'
          DataSource = dsPadrao
          TabOrder = 0
          OnExit = DBEidFornecedorExit
          OnKeyDown = DBEidFornecedorKeyDown
          AcaoCad = frmPrincipal.actCadCliente
          DecimalControl = True
          KeyMode = kmNormal
        end
        object LookFornecedorFiscal: TCLookUp
          Left = 177
          Top = 16
          Width = 267
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
          ClientDataSet = cdsLookup
          DataSource = dsPadrao
          ValidaCampoObrigatorio = True
          CampoObrigatorio = True
          LookUpTable = 'vCadFornecedorFiscal'
          ReturnField = 'descCadFornecedor'
        end
        object lookEnderecoFor: TCLookUp
          Left = 56
          Top = 39
          Width = 230
          Height = 19
          Alignment = taLeftJustify
          BevelInner = bvSpace
          BevelOuter = bvLowered
          Color = 14149350
          ParentBackground = False
          TabOrder = 5
          Key.Strings = (
            'idFornecedor'
            'idCadFornecedor')
          LookUpKey.Strings = (
            'idFornecedor'
            'idCadFornecedor')
          ClientDataSet = cdsLookup
          DataSource = dsPadrao
          ValidaCampoObrigatorio = True
          CampoObrigatorio = True
          LookUpTable = 'vCadFornecedorFiscal'
          ReturnField = 'endereco'
        end
        object lookCidadeFor: TCLookUp
          Left = 292
          Top = 39
          Width = 173
          Height = 19
          Alignment = taLeftJustify
          BevelInner = bvSpace
          BevelOuter = bvLowered
          Color = 14149350
          ParentBackground = False
          TabOrder = 6
          Key.Strings = (
            'idFornecedor'
            'idCadFornecedor')
          LookUpKey.Strings = (
            'idFornecedor'
            'idCadFornecedor')
          ClientDataSet = cdsLookup
          DataSource = dsPadrao
          ValidaCampoObrigatorio = True
          CampoObrigatorio = True
          LookUpTable = 'vCadFornecedorFiscal'
          ReturnField = 'descCidade'
        end
        object lookEstadoFor: TCLookUp
          Left = 471
          Top = 39
          Width = 46
          Height = 19
          Alignment = taLeftJustify
          BevelInner = bvSpace
          BevelOuter = bvLowered
          Color = 14149350
          ParentBackground = False
          TabOrder = 7
          Key.Strings = (
            'idFornecedor'
            'idCadFornecedor')
          LookUpKey.Strings = (
            'idFornecedor'
            'idCadFornecedor')
          ClientDataSet = cdsLookup
          DataSource = dsPadrao
          ValidaCampoObrigatorio = True
          CampoObrigatorio = True
          LookUpTable = 'vCadFornecedorFiscal'
          ReturnField = 'idEstado'
        end
        object BtnBuscaPedido: TCBitBtn
          Left = 523
          Top = 39
          Width = 103
          Height = 19
          Caption = '&Busca Pedidos'
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
          NumGlyphs = 2
          TabOrder = 4
          TabStop = False
          OnClick = BtnBuscaPedidoClick
        end
        object DBEidCadFornecedor: TCDBEdit
          Left = 122
          Top = 16
          Width = 49
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'idCadFornecedor'
          DataSource = dsPadrao
          TabOrder = 1
          OnExit = DBEidFornecedorExit
          OnKeyDown = DBEidFornecedorKeyDown
          AcaoCad = frmPrincipal.actCadCliente
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEidIndice1: TCDBEdit
          Left = 56
          Top = 173
          Width = 48
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'idIndice'
          DataSource = dsPadrao
          TabOrder = 25
          Find = FindIndice
          AcaoCad = frmPrincipal.actIndice
          DecimalControl = True
          KeyMode = kmNormal
        end
        object CLookUp7: TCLookUp
          Left = 110
          Top = 173
          Width = 189
          Height = 19
          Alignment = taLeftJustify
          BevelInner = bvSpace
          BevelOuter = bvLowered
          Color = 14149350
          ParentBackground = False
          TabOrder = 26
          Key.Strings = (
            'idIndice')
          LookUpKey.Strings = (
            'idIndice')
          ClientDataSet = cdsLookup
          DataSource = dsPadrao
          ValidaCampoObrigatorio = True
          CampoObrigatorio = True
          LookUpTable = 'Indice'
          ReturnField = 'descIndice'
        end
        object CLookUp8: TCLookUp
          Left = 351
          Top = 173
          Width = 73
          Height = 19
          Alignment = taRightJustify
          BevelInner = bvSpace
          BevelOuter = bvLowered
          Color = 14149350
          ParentBackground = False
          TabOrder = 27
          Key.Strings = (
            'idIndice')
          LookUpKey.Strings = (
            'idIndice')
          AlternateSQL.Strings = (
            
              'SELECT vlLancamento FROM indicelancamento WHERE dtLancamento = (' +
              'SELECT MAX(ind.dtLancamento) FROM indicelancamento ind WHERE ind' +
              '.idIndice = indicelancamento.idIndice) AND idIndice = ?')
          ClientDataSet = cdsLookup
          DataSource = dsPadrao
          ValidaCampoObrigatorio = False
          CampoObrigatorio = True
          LookUpTable = 'IndiceLancamento'
          ReturnField = 'vlLancamento'
        end
        object CBitBtn6: TCBitBtn
          Left = 430
          Top = 173
          Width = 96
          Height = 19
          Action = frmPrincipal.actIndice
          Caption = #205'ndices'
          TabOrder = 28
          TabStop = False
        end
      end
      object CGroupBox2: TCGroupBox
        Left = 11
        Top = 337
        Width = 634
        Height = 59
        Caption = 'Observa'#231#245'es da nota'
        TabOrder = 1
        object DBMobsNfE: TCDBMemo
          Left = 8
          Top = 17
          Width = 618
          Height = 35
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'obsNfE'
          DataSource = dsPadrao
          ScrollBars = ssVertical
          TabOrder = 0
          KeyMemo = kmmNormal
        end
      end
      object CGroupBox3: TCGroupBox
        Left = 11
        Top = 402
        Width = 634
        Height = 59
        Caption = 'Informa'#231#245'es Complementares'
        TabOrder = 2
        object DBMcompNfE: TCDBMemo
          Left = 8
          Top = 16
          Width = 618
          Height = 36
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'compNfE'
          DataSource = dsPadrao
          ScrollBars = ssVertical
          TabOrder = 0
          OnExit = DBMcompNfEExit
          KeyMemo = kmmNormal
        end
      end
      object CGroupBox11: TCGroupBox
        Left = 11
        Top = 207
        Width = 634
        Height = 124
        Caption = 'Pedidos relacionados'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        object CDBGrid1: TCDBGrid
          Left = 2
          Top = 15
          Width = 630
          Height = 107
          TabStop = False
          Align = alClient
          DataSource = dsPedidoCompra
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
              FieldName = 'idCadEmpresaOri'
              Title.Caption = 'Filial Pedido'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'idPedidoCompra'
              Title.Caption = 'Nr. Pedido'
              Width = 80
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'dtPedido'
              Title.Caption = 'Data do Pedido'
              Width = 90
              Visible = True
            end>
        end
      end
    end
    object TabProdutos: TTabSheet
      Caption = '&Produtos'
      ImageIndex = 1
      object CGroupBox12: TCGroupBox
        Left = 923
        Top = 247
        Width = 92
        Height = 218
        TabOrder = 4
        object BtnSalvarProd: TCBitBtn
          Left = 8
          Top = 8
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
          Top = 39
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
          OnClick = BtnSalvarProdClick
        end
        object BtnNovoProd: TCBitBtn
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
          OnClick = BtnSalvarProdClick
        end
      end
      object CGroupBox4: TCGroupBox
        Left = 4
        Top = 3
        Width = 1110
        Height = 70
        Caption = 'Dados Gerais'
        TabOrder = 0
        object CLabel11: TCLabel
          Left = 31
          Top = 18
          Width = 38
          Height = 13
          Alignment = taRightJustify
          Caption = 'Produto'
        end
        object CLabel12: TCLabel
          Left = 165
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
          Left = 41
          Top = 42
          Width = 28
          Height = 13
          Alignment = taRightJustify
          Caption = 'Qtde.'
        end
        object CLabel17: TCLabel
          Left = 535
          Top = 42
          Width = 33
          Height = 13
          Alignment = taRightJustify
          Caption = 'L'#237'quido'
        end
        object CLabel18: TCLabel
          Left = 769
          Top = 42
          Width = 51
          Height = 13
          Alignment = taRightJustify
          Caption = 'Valor Total'
        end
        object CLabel67: TCLabel
          Left = 586
          Top = 18
          Width = 40
          Height = 13
          Alignment = taRightJustify
          Caption = 'M'#225'quina'
        end
        object CLabel89: TCLabel
          Left = 668
          Top = 42
          Width = 20
          Height = 13
          Alignment = taRightJustify
          Caption = 'Ncm'
        end
        object CLabel10: TCLabel
          Left = 127
          Top = 19
          Width = 69
          Height = 13
          Alignment = taRightJustify
          Caption = 'OU Fabricante'
        end
        object CLabel73: TCLabel
          Left = 949
          Top = 18
          Width = 69
          Height = 13
          Alignment = taRightJustify
          Caption = 'Hora/Km Atual'
        end
        object DBEidProduto: TCDBEdit
          Left = 75
          Top = 15
          Width = 46
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'idProduto'
          DataSource = dsNfEProduto
          TabOrder = 0
          OnEnter = DBEidProdutoEnter
          OnExit = DBEidProdutoExit
          Find = dmFind.FindProduto
          AcaoCad = frmPrincipal.actCadProduto
          DecimalControl = True
          KeyMode = kmNormal
        end
        object LookProduto: TCLookUp
          Left = 281
          Top = 16
          Width = 251
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
          ClientDataSet = cdsLookup
          DataSource = dsNfEProduto
          ValidaCampoObrigatorio = True
          CampoObrigatorio = True
          LookUpTable = 'Produto'
          ReturnField = 'descProduto'
        end
        object DBEvlBruto: TCDBEdit
          Left = 195
          Top = 39
          Width = 81
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'vlBruto'
          DataSource = dsNfEProduto
          TabOrder = 8
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
          DataSource = dsNfEProduto
          TabOrder = 9
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
          DataSource = dsNfEProduto
          TabOrder = 10
          OnEnter = DBEqtProdutoEnter
          OnExit = DBEqtProdutoExit
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEvlTotal: TCDBEdit
          Left = 826
          Top = 39
          Width = 99
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'vlTotal'
          DataSource = dsNfEProduto
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 13
          OnEnter = DBEqtProdutoEnter
          OnExit = DBEqtProdutoExit
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEqtProduto: TCDBEdit
          Left = 75
          Top = 39
          Width = 80
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'qtProduto'
          DataSource = dsNfEProduto
          TabOrder = 7
          OnEnter = DBEqtProdutoEnter
          OnExit = DBEqtProdutoExit
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEvlLiquido: TCDBEdit
          Left = 574
          Top = 39
          Width = 81
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'vlLiquido'
          DataSource = dsNfEProduto
          TabOrder = 11
          OnEnter = DBEqtProdutoEnter
          OnExit = DBEqtProdutoExit
          DecimalControl = True
          KeyMode = kmNormal
        end
        object LookProdMedida: TCLookUp
          Left = 538
          Top = 16
          Width = 42
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
          DataSource = dsNfEProduto
          ValidaCampoObrigatorio = False
          CampoObrigatorio = True
          LookUpTable = 'Produto'
          ReturnField = 'descAbreviada'
        end
        object DBEidMaquina: TCDBEdit
          Left = 632
          Top = 16
          Width = 46
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'idMaquina'
          DataSource = dsNfEProduto
          TabOrder = 4
          OnExit = DBEidMaquinaExit
          Find = dmFind.FindMaquina
          AcaoCad = frmPrincipal.actCadMaquina
          DecimalControl = True
          KeyMode = kmNormal
        end
        object LookMaquina: TCLookUp
          Left = 684
          Top = 16
          Width = 259
          Height = 19
          Alignment = taLeftJustify
          BevelInner = bvSpace
          BevelOuter = bvLowered
          Color = 14149350
          ParentBackground = False
          TabOrder = 5
          Key.Strings = (
            'idMaquina')
          LookUpKey.Strings = (
            'idMaquina')
          ClientDataSet = cdsLookup
          DataSource = dsNfEProduto
          ValidaCampoObrigatorio = True
          CampoObrigatorio = True
          LookUpTable = 'Maquina'
          ReturnField = 'descMaquina'
        end
        object DBENcm: TCDBEdit
          Left = 696
          Top = 39
          Width = 63
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'Ncm'
          DataSource = dsNfEProduto
          TabOrder = 12
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEcodFabricante: TCDBEdit
          Left = 202
          Top = 16
          Width = 73
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'codFabricante'
          DataSource = dsNfEProduto
          TabOrder = 1
          OnExit = DBEcodFabricanteExit
          Find = dmFind.FindProduto
          AcaoCad = frmPrincipal.actCadProduto
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEhr_kmAtual: TCDBEdit
          Left = 1024
          Top = 16
          Width = 76
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'hr_kmAtual'
          DataSource = dsNfEProduto
          TabOrder = 6
          DecimalControl = True
          KeyMode = kmNormal
        end
      end
      object CGroupBox14: TCGroupBox
        Left = 4
        Top = 247
        Width = 911
        Height = 218
        TabOrder = 3
        object DBProdutos: TCDBGrid
          Left = 2
          Top = 15
          Width = 907
          Height = 201
          TabStop = False
          Align = alClient
          DataSource = dsNfEProduto
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
      object CGroupBox1: TCGroupBox
        Left = 1021
        Top = 247
        Width = 92
        Height = 218
        TabOrder = 5
        object CLabel20: TCLabel
          Left = 6
          Top = 83
          Width = 81
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
        object CLabel3: TCLabel
          Left = 7
          Top = 8
          Width = 67
          Height = 13
          Alignment = taCenter
          AutoSize = False
          Caption = 'Descontos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object EDvlTotal: TCEdit
          Left = 6
          Top = 99
          Width = 82
          Height = 19
          TabStop = False
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
          TabOrder = 2
          Text = 'EDvlTotal'
          DataType = ftUnknown
          KeyMode = kmNumber
          Decimals = 0
        end
        object DBEvlDescontoTot: TCDBEdit
          Left = 6
          Top = 26
          Width = 82
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'vlDesconto'
          DataSource = dsPadrao
          TabOrder = 0
          OnExit = DBEvlDescontoTotExit
          DecimalControl = True
          KeyMode = kmNormal
        end
        object BtnRecalcular: TCBitBtn
          Left = 4
          Top = 51
          Width = 85
          Height = 25
          Caption = '&Recalcular'
          Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            2000000000000004000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000080000000D00000028000000540000
            001E000000000000000000000000000000000000000000000000000000000000
            0000000000000101010B14141458292929A63F4040B9171611AA211F18E70000
            0082000000130000000000000000000000000000000000000000000000000000
            0000000000000B0B0B5E717171FF6F6F6FFF515153FF27241FFF393325FF0606
            05E6000000660000000A00000000000000000000000000000000000000000000
            000000000000393939A78C8C8CFF818181FF333333FF373838FF181611FF1715
            0DFF000000D60000004E00000003000000000000000000000000000000000000
            00000302023A8C8C8CF2858587FF343333FF989897FFFFFFFFFF5C5C5DFF1D1D
            1AFF161614FF000000A600000010000000000000000000000000000000000000
            00133F3F3FCD6C6C6CFF424241FFCACACAFFC5C5C5FF4B4B4BFFA6A6A6FF6565
            66FF575757FF4C4C4CF00B0B0B750000000600000000000000000101010B3333
            33A7434343FF696968FFE1E1E1FF888889FF1D1D1DFF0A0A0AFFDBDBDBFFEEEE
            EEFF505050FF797979FF9B9B9BFF404040B70C0C0C40000000011717184C3F3F
            3EFF8A8A89FFDEDEDEFF6E6E6EFF515151FF151515FF525252FFFFFFFFFFFFFF
            FFFFE3E3E3FF4A4A4AFF7E7E7EFFC6C6C6FF636363BE0000000137373643AEAE
            ADFFC6C6C6FF797979FFA8A8A8FF666564FF242424FFC3C3C3FFFFFFFFFFFFFF
            FFFFFFFFFFFFD3D3D3FF474646FF919191FF383838A70000000D2B2B2A155D5D
            5DA5999999FFDFDFDFFFC8C9CAFF101314FF6C6C6CFFFCFCFCFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFCACACAFF454545FF373533EC0100003F000000020000
            00065A5A5A7BEBE8E6F73C4854FF173852FFC1C3C4FFFFFFFFFFFBFBFBFFFEFE
            FEFFFEFEFEFFFEFEFEFFFFFFFFFFC3C3C3FF1A1814E40000002B000000010000
            00000000000037343376142730FF798B97FFF4F4F4FFF0F0F0FFF3F3F3FFF6F6
            F6FFF7F7F7FFF7F7F7FFF8F8F8FFFFFFFFFFA8A9A9DD1818180D000000000000
            000000000000010B11AE223740DE898380C5E2E2E2FFDEDEDEFFE1E1E1FFE6E6
            E6FFE8E8E8FFECECECFFE8E8E8FFCACACAD9B1B1B167A3A3A305000000000000
            00000001013909202AFF090B0D533534330C777777A4C5C5C5FFD0D1D1FFD5D5
            D5FFD7D7D7FFC4C4C4EEA1A1A18A919191180000000000000000000000000307
            0801010C11A8020D11A40000000000000000000000006A6A697AA8A8A8FDABAB
            ABF98989899A8989892900000000000000000000000000000000000000003C9D
            BC0D15465C880000000F00000000000000000000000000000000535352496C6C
            6C3A000000000000000000000000000000000000000000000000}
          Margin = 5
          Spacing = 5
          TabOrder = 1
          OnClick = BtnRecalcularClick
        end
      end
      object CGroupBox8: TCGroupBox
        Left = 4
        Top = 149
        Width = 689
        Height = 92
        Caption = 'Dados Financeiros'
        TabOrder = 2
        object CLabel63: TCLabel
          Left = 14
          Top = 20
          Width = 44
          Height = 13
          Alignment = taRightJustify
          Caption = 'Gerencial'
        end
        object CLabel77: TCLabel
          Left = 10
          Top = 45
          Width = 48
          Height = 13
          Alignment = taRightJustify
          Caption = 'Resultado'
        end
        object CLabel87: TCLabel
          Left = 27
          Top = 70
          Width = 31
          Height = 13
          Alignment = taRightJustify
          Caption = 'Rateio'
        end
        object DBEidGerencial: TCDBEdit
          Left = 64
          Top = 17
          Width = 46
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'idGerencial'
          DataSource = dsNfEProduto
          TabOrder = 0
          Find = FindGerencial
          DecimalControl = True
          KeyMode = kmNormal
        end
        object LookGerencial: TCLookUp
          Left = 116
          Top = 17
          Width = 265
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
          ClientDataSet = cdsLookup
          DataSource = dsNfEProduto
          ValidaCampoObrigatorio = True
          CampoObrigatorio = True
          LookUpTable = 'vGerencial'
          ReturnField = 'descGerencial'
        end
        object CBitBtn8: TCBitBtn
          Left = 387
          Top = 17
          Width = 96
          Height = 19
          Caption = '&Gerencial'
          Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            2000000000000004000000000000000000000000000000000000FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00CA680000CA680000CA680000CA680000CA680000CA680000CA680000CA68
            0000CA680000CA680000CA680000CA680000FF00FF00FF00FF00FF00FF00CA68
            0000FFE9CF00FFE5C900FEE2C100FEDEBC00FEDAB500FED9B000FED5AA00FFD3
            A500FED0A000FECF9D00FECC9900FECB9600CA680000FF00FF00FF00FF00CA68
            0000FFEBD700FEE7CF00FFE5C900FEE2C200FEDEBB00FEDCB500FED9B000FED5
            AB00FED3A500FED0A000FECF9D00FECC9800CA680000FF00FF00FF00FF00CA68
            0000FFEEDC000081000000810000008100000081000000810000008100000081
            0000008100000081000000810000FECE9C00CA680000FF00FF00FF00FF00CA68
            0000FEF2E300FEEEDD00FEEBD500FFE9CF00FFE5C900FEE2C100FEDEBC00FEDA
            B600FED8AF00FED5AA00FED3A500FED0A000CA680000FF00FF00FF00FF00CA68
            0000FFF4E900008100000081000000810000008100000081000000810000FEDE
            BC00FFDCB600FED9AF00FED5AA00FED3A500CA680000FF00FF00FF00FF00CA68
            0000FFF7EE00FFF4E900FEF2E200FFEFDD00FFEBD700FFE9D000FFE5C900FFE1
            C200FEDEBB00FEDCB600FFD8AF00FED5AA00CA680000FF00FF00FF00FF00CA68
            0000FFFAF4000081000000810000008100000081000000810000008100000081
            0000008100000081000000810000FED8AF00CA680000FF00FF00FF00FF00CA68
            0000FFFBF800FFFAF300FFF7EF00FFF4E700FEF0E200FFEEDC00FFEBD700FEE9
            D000FEE5C900FEE1C100FEDEBC00FEDCB600CA680000FF00FF00FF00FF00CA68
            0000FFFCFB00008100000081000000810000008100000081000000810000FFEB
            D500FEE7D000FEE5C900FFE1C200FFDEBB00CA680000FF00FF00FF00FF00CA68
            0000FFFFFF00FFFEFC00FFFCF700FFFAF300FFF7EE00FFF4E900FFF2E200FFEF
            DD00FFEAD700FEE9D000FEE5C900FEE1C200CA680000FF00FF00FF00FF00CA68
            0000FFFFFF000081000000810000008100000081000000810000008100000081
            0000008100000081000000810000FFE5C900CA680000FF00FF00FF00FF00CA68
            0000FFFFFF00FFFFFF00FFFFFF00FFFCFC00FFFCF700FFFAF300FFF7EE00FFF4
            E900FFF2E200FFEFDD00FFEBD500FEE9CF00CA680000FF00FF00FF00FF00FF00
            FF00CA680000CA680000CA680000CA680000CA680000CA680000CA680000CA68
            0000CA680000CA680000CA680000CA680000FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
          TabOrder = 2
          TabStop = False
        end
        object DBEidResultado1: TCDBEdit
          Left = 64
          Top = 42
          Width = 48
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'idResultado'
          DataSource = dsNfEProduto
          TabOrder = 4
          OnExit = DBEidResultado1Exit
          Find = dmFind.FindResultado
          DecimalControl = True
          KeyMode = kmNormal
        end
        object CBitBtn1: TCBitBtn
          Left = 387
          Top = 43
          Width = 96
          Height = 19
          Action = frmPrincipal.actCadResultado
          Caption = '&Resultado'
          TabOrder = 6
          TabStop = False
        end
        object DBEidRateio1: TCDBEdit
          Left = 64
          Top = 67
          Width = 48
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'idRateio'
          DataSource = dsNfEProduto
          TabOrder = 7
          OnExit = DBEidRateio1Exit
          Find = FindRateio
          AcaoCad = frmPrincipal.actCadPlanoRateio
          DecimalControl = True
          KeyMode = kmNormal
        end
        object CBitBtn4: TCBitBtn
          Left = 387
          Top = 68
          Width = 104
          Height = 19
          Action = frmPrincipal.actCadPlanoRateio
          Caption = '&Plano de Rateio'
          TabOrder = 8
          TabStop = False
        end
        object chkRepeteGerencial: TCheckBox
          Left = 497
          Top = 19
          Width = 174
          Height = 17
          TabStop = False
          Caption = 'Repetir Em Todos os Produtos?'
          TabOrder = 3
        end
        object chkRepeteResultado: TCheckBox
          Left = 497
          Top = 45
          Width = 174
          Height = 17
          TabStop = False
          Caption = 'Repetir Em Todos os Produtos?'
          TabOrder = 5
        end
        object chkRepeteRateio: TCheckBox
          Left = 497
          Top = 69
          Width = 169
          Height = 17
          TabStop = False
          Caption = 'Repetir Em Todos os Produtos?'
          TabOrder = 9
        end
        object LookRateio: TCLookUp
          Left = 116
          Top = 67
          Width = 265
          Height = 19
          Alignment = taLeftJustify
          BevelInner = bvSpace
          BevelOuter = bvLowered
          Color = 14149350
          ParentBackground = False
          TabOrder = 10
          Key.Strings = (
            'idRateio')
          LookUpKey.Strings = (
            'idRateio')
          ClientDataSet = cdsLookup
          DataSource = dsNfEProduto
          ValidaCampoObrigatorio = True
          CampoObrigatorio = True
          LookUpTable = 'Rateio'
          ReturnField = 'descRateio'
        end
        object LookResultado: TCLookUp
          Left = 116
          Top = 42
          Width = 265
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
          ClientDataSet = cdsLookup
          DataSource = dsNfEProduto
          ValidaCampoObrigatorio = True
          CampoObrigatorio = True
          LookUpTable = 'Resultado'
          ReturnField = 'descResultado'
        end
      end
      object CGroupBox9: TCGroupBox
        Left = 4
        Top = 79
        Width = 1110
        Height = 64
        Caption = 'Tributa'#231#227'o'
        TabOrder = 1
        object CLabel19: TCLabel
          Left = 493
          Top = 18
          Width = 56
          Height = 13
          Alignment = taRightJustify
          Caption = '% Redu'#231#227'o'
        end
        object CLabel21: TCLabel
          Left = 732
          Top = 18
          Width = 51
          Height = 13
          Alignment = taRightJustify
          Caption = 'Base ICMS'
        end
        object CLabel22: TCLabel
          Left = 876
          Top = 18
          Width = 39
          Height = 13
          Alignment = taRightJustify
          Caption = '% ICMS'
        end
        object CLabel23: TCLabel
          Left = 972
          Top = 18
          Width = 52
          Height = 13
          Alignment = taRightJustify
          Caption = 'Valor ICMS'
        end
        object CLabel24: TCLabel
          Left = 159
          Top = 40
          Width = 30
          Height = 13
          Alignment = taRightJustify
          Caption = '% ISS'
        end
        object CLabel25: TCLabel
          Left = 247
          Top = 40
          Width = 43
          Height = 13
          Alignment = taRightJustify
          Caption = 'Valor ISS'
        end
        object CLabel26: TCLabel
          Left = 27
          Top = 40
          Width = 42
          Height = 13
          Alignment = taRightJustify
          Caption = 'Base ISS'
        end
        object CLabel27: TCLabel
          Left = 813
          Top = 40
          Width = 46
          Height = 13
          Alignment = taRightJustify
          Caption = 'Vl. Isento'
        end
        object CLabel28: TCLabel
          Left = 944
          Top = 40
          Width = 48
          Height = 13
          Alignment = taRightJustify
          Caption = 'Vl. Outras'
        end
        object CLabel61: TCLabel
          Left = 602
          Top = 18
          Width = 42
          Height = 13
          Alignment = taRightJustify
          Caption = 'Redu'#231#227'o'
        end
        object CLabel62: TCLabel
          Left = 377
          Top = 40
          Width = 37
          Height = 13
          Alignment = taRightJustify
          Caption = '% INSS'
        end
        object CLabel69: TCLabel
          Left = 471
          Top = 40
          Width = 40
          Height = 13
          Alignment = taRightJustify
          Caption = 'Base IPI'
        end
        object CLabel70: TCLabel
          Left = 599
          Top = 40
          Width = 28
          Height = 13
          Alignment = taRightJustify
          Caption = '% IPI'
        end
        object CLabel71: TCLabel
          Left = 685
          Top = 40
          Width = 41
          Height = 13
          Alignment = taRightJustify
          Caption = 'Valor IPI'
        end
        object CLabel88: TCLabel
          Left = 46
          Top = 18
          Width = 23
          Height = 13
          Alignment = taRightJustify
          Caption = 'Cfop'
        end
        object DBEprReducao: TCDBEdit
          Left = 555
          Top = 15
          Width = 41
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'prReducao'
          DataSource = dsNfEProduto
          TabOrder = 0
          OnEnter = DBEqtProdutoEnter
          OnExit = DBEqtProdutoExit
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEvlReducao: TCDBEdit
          Left = 650
          Top = 15
          Width = 76
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'vlReducao'
          DataSource = dsNfEProduto
          TabOrder = 1
          OnEnter = DBEqtProdutoEnter
          OnExit = DBEqtProdutoExit
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEvlBaseIcms: TCDBEdit
          Left = 789
          Top = 15
          Width = 81
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'vlBaseIcms'
          DataSource = dsNfEProduto
          TabOrder = 2
          OnEnter = DBEvlBaseIcmsEnter
          OnExit = DBEqtProdutoExit
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEprIcms: TCDBEdit
          Left = 921
          Top = 15
          Width = 45
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'prIcms'
          DataSource = dsNfEProduto
          TabOrder = 3
          OnEnter = DBEqtProdutoEnter
          OnExit = DBEqtProdutoExit
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEvlIcms: TCDBEdit
          Left = 1029
          Top = 15
          Width = 71
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'vlIcms'
          DataSource = dsNfEProduto
          TabOrder = 4
          OnEnter = DBEqtProdutoEnter
          OnExit = DBEqtProdutoExit
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEprIss: TCDBEdit
          Left = 195
          Top = 37
          Width = 46
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'prIss'
          DataSource = dsNfEProduto
          TabOrder = 6
          OnEnter = DBEqtProdutoEnter
          OnExit = DBEqtProdutoExit
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEvlIss: TCDBEdit
          Left = 296
          Top = 37
          Width = 75
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'vlIss'
          DataSource = dsNfEProduto
          TabOrder = 7
          OnEnter = DBEqtProdutoEnter
          OnExit = DBEqtProdutoExit
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEvlBaseIss: TCDBEdit
          Left = 75
          Top = 37
          Width = 78
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'vlBaseIss'
          DataSource = dsNfEProduto
          TabOrder = 5
          OnEnter = DBEqtProdutoEnter
          OnExit = DBEqtProdutoExit
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEvlIsentasIcms: TCDBEdit
          Left = 865
          Top = 37
          Width = 73
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'vlIsentasIcms'
          DataSource = dsNfEProduto
          TabOrder = 12
          OnEnter = DBEqtProdutoEnter
          OnExit = DBEqtProdutoExit
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEvlOutrasIcms: TCDBEdit
          Left = 998
          Top = 37
          Width = 75
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'vlOutrasIcms'
          DataSource = dsNfEProduto
          TabOrder = 13
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEprInss: TCDBEdit
          Left = 420
          Top = 37
          Width = 45
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'prInss'
          DataSource = dsNfEProduto
          TabOrder = 8
          OnEnter = DBEqtProdutoEnter
          OnExit = DBEqtProdutoExit
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEvlBaseIpi: TCDBEdit
          Left = 517
          Top = 37
          Width = 78
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'vlBaseIpi'
          DataSource = dsNfEProduto
          TabOrder = 9
          OnEnter = DBEqtProdutoEnter
          OnExit = DBEqtProdutoExit
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEprIpi: TCDBEdit
          Left = 633
          Top = 37
          Width = 46
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'prIpi'
          DataSource = dsNfEProduto
          TabOrder = 10
          OnEnter = DBEqtProdutoEnter
          OnExit = DBEqtProdutoExit
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEvlIpi: TCDBEdit
          Left = 732
          Top = 37
          Width = 75
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'vlIpi'
          DataSource = dsNfEProduto
          TabOrder = 11
          OnEnter = DBEqtProdutoEnter
          OnExit = DBEqtProdutoExit
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEidCfop: TCDBEdit
          Left = 75
          Top = 15
          Width = 62
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'idCfop'
          DataSource = dsNfEProduto
          TabOrder = 14
          Find = dmFind.FindCfopE
          DecimalControl = True
          KeyMode = kmNormal
        end
        object LookCfop: TCLookUp
          Left = 143
          Top = 15
          Width = 344
          Height = 19
          Alignment = taLeftJustify
          BevelInner = bvSpace
          BevelOuter = bvLowered
          Color = 14149350
          ParentBackground = False
          TabOrder = 15
          Key.Strings = (
            'idCfop')
          LookUpKey.Strings = (
            'idCfop')
          AlternateSQL.Strings = (
            
              'SELECT descCfop FROM Cfop WHERE idCfop > 1000 AND idCfop < 4000 ' +
              'AND idCfop = ?')
          ClientDataSet = cdsLookup
          DataSource = dsNfEProduto
          ValidaCampoObrigatorio = True
          CampoObrigatorio = True
          LookUpTable = 'Cfop'
          ReturnField = 'descCfop'
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
          DataSource = dsNfEValor
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
          DataSource = dsNfEValor
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
          DataSource = dsNfEValor
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
          DataSource = dsNfEValor
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
          DataSource = dsNfEValor
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
          DataSource = dsNfEValor
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
          DataSource = dsNfEValor
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
          DataSource = dsNfEValor
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
          DataSource = dsNfEValor
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
          DataSource = dsNfEValor
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
        object CLabel60: TCLabel
          Left = 440
          Top = 42
          Width = 74
          Height = 13
          Alignment = taRightJustify
          Caption = 'Frete a Faturar'
        end
        object DBEvlReducaoN: TCDBEdit
          Left = 56
          Top = 17
          Width = 75
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'vlReducao'
          DataSource = dsNfEValor
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
          DataSource = dsNfEValor
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
          DataSource = dsNfEValor
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
          DataSource = dsNfEValor
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
          DataSource = dsNfEValor
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
          DataSource = dsNfEValor
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
          DataSource = dsNfEValor
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
          DataSource = dsNfEValor
          TabOrder = 7
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEvlFreteFaturar: TCDBEdit
          Left = 520
          Top = 39
          Width = 75
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'vlFreteFaturar'
          DataSource = dsNfEValor
          TabOrder = 8
          DecimalControl = True
          KeyMode = kmNormal
        end
      end
      object CGroupBox7: TCGroupBox
        Left = 11
        Top = 148
        Width = 633
        Height = 133
        Caption = 'Transportes'
        TabOrder = 2
        object CLabel41: TCLabel
          Left = 8
          Top = 20
          Width = 69
          Height = 13
          Alignment = taRightJustify
          Caption = 'Transportador'
        end
        object CLabel44: TCLabel
          Left = 194
          Top = 42
          Width = 41
          Height = 13
          Alignment = taRightJustify
          Caption = 'UF Placa'
        end
        object CLabel45: TCLabel
          Left = 52
          Top = 42
          Width = 25
          Height = 13
          Alignment = taRightJustify
          Caption = 'Placa'
        end
        object CLabel47: TCLabel
          Left = 497
          Top = 20
          Width = 24
          Height = 13
          Alignment = taRightJustify
          Caption = 'Insc.'
        end
        object CLabel42: TCLabel
          Left = 325
          Top = 20
          Width = 48
          Height = 13
          Alignment = taRightJustify
          Caption = 'CNPJ/CPF'
        end
        object CLabel43: TCLabel
          Left = 315
          Top = 42
          Width = 45
          Height = 13
          Alignment = taRightJustify
          Caption = 'Endere'#231'o'
        end
        object CLabel46: TCLabel
          Left = 44
          Top = 64
          Width = 33
          Height = 13
          Alignment = taRightJustify
          Caption = 'Cidade'
        end
        object CLabel50: TCLabel
          Left = 49
          Top = 86
          Width = 28
          Height = 13
          Alignment = taRightJustify
          Caption = 'Qtde.'
        end
        object CLabel52: TCLabel
          Left = 444
          Top = 64
          Width = 36
          Height = 13
          Alignment = taRightJustify
          Caption = 'Esp'#233'cie'
        end
        object CLabel55: TCLabel
          Left = 154
          Top = 86
          Width = 29
          Height = 13
          Alignment = taRightJustify
          Caption = 'Marca'
        end
        object CLabel56: TCLabel
          Left = 350
          Top = 86
          Width = 37
          Height = 13
          Alignment = taRightJustify
          Caption = 'N'#250'mero'
        end
        object CLabel57: TCLabel
          Left = 501
          Top = 86
          Width = 52
          Height = 13
          Alignment = taRightJustify
          Caption = 'Peso Bruto'
        end
        object CLabel58: TCLabel
          Left = 18
          Top = 108
          Width = 59
          Height = 13
          Alignment = taRightJustify
          Caption = 'Peso L'#237'quido'
        end
        object DBEdescTransportador: TCDBEdit
          Left = 83
          Top = 17
          Width = 236
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'descTransportador'
          DataSource = dsNfETransporte
          TabOrder = 0
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEufPlaca: TCDBEdit
          Left = 241
          Top = 39
          Width = 31
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'ufPlaca'
          DataSource = dsNfETransporte
          TabOrder = 4
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEPlaca: TCDBEdit
          Left = 83
          Top = 39
          Width = 71
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'Placa'
          DataSource = dsNfETransporte
          TabOrder = 3
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEidCnpjCpf: TCDBEdit
          Left = 379
          Top = 17
          Width = 112
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'idCnpjCpf'
          DataSource = dsNfETransporte
          TabOrder = 1
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEidInscEstadual: TCDBEdit
          Left = 527
          Top = 17
          Width = 97
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'idInscEstadual'
          DataSource = dsNfETransporte
          TabOrder = 2
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEdescEndereco: TCDBEdit
          Left = 366
          Top = 39
          Width = 258
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'descEndereco'
          DataSource = dsNfETransporte
          TabOrder = 5
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEidCidade: TCDBEdit
          Left = 83
          Top = 61
          Width = 46
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'idCidade'
          DataSource = dsNfETransporte
          TabOrder = 6
          AcaoCad = frmPrincipal.actCadCidade
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEqtProdutoN: TCDBEdit
          Left = 83
          Top = 83
          Width = 53
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'qtProduto'
          DataSource = dsNfETransporte
          TabOrder = 10
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEdescEspecie: TCDBEdit
          Left = 486
          Top = 61
          Width = 138
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'descEspecie'
          DataSource = dsNfETransporte
          TabOrder = 9
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEdescMarca: TCDBEdit
          Left = 189
          Top = 83
          Width = 149
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'descMarca'
          DataSource = dsNfETransporte
          TabOrder = 11
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEdescNumero: TCDBEdit
          Left = 393
          Top = 83
          Width = 102
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'descNumero'
          DataSource = dsNfETransporte
          TabOrder = 12
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEqtPesoBruto: TCDBEdit
          Left = 559
          Top = 83
          Width = 65
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'qtPesoBruto'
          DataSource = dsNfETransporte
          TabOrder = 13
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEqtPesoLiquido: TCDBEdit
          Left = 83
          Top = 105
          Width = 65
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'qtPesoLiquido'
          DataSource = dsNfETransporte
          TabOrder = 14
          DecimalControl = True
          KeyMode = kmNormal
        end
        object LookCidade: TCLookUp
          Left = 135
          Top = 61
          Width = 203
          Height = 19
          Alignment = taLeftJustify
          BevelInner = bvSpace
          BevelOuter = bvLowered
          Color = 14149350
          ParentBackground = False
          TabOrder = 7
          Key.Strings = (
            'idCidade')
          LookUpKey.Strings = (
            'idCidade')
          ClientDataSet = cdsLookup
          DataSource = dsNfETransporte
          ValidaCampoObrigatorio = False
          CampoObrigatorio = True
          LookUpTable = 'Cidade'
          ReturnField = 'descCidade'
        end
        object LookEstado2: TCLookUp
          Left = 344
          Top = 61
          Width = 43
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
          DataSource = dsNfETransporte
          ValidaCampoObrigatorio = False
          CampoObrigatorio = True
          LookUpTable = 'Cidade'
          ReturnField = 'idEstado'
        end
      end
    end
    object TabResultado: TTabSheet
      Caption = 'Resultado / Rateio'
      ImageIndex = 7
      object CGroupBox27: TCGroupBox
        Left = 3
        Top = 94
        Width = 480
        Height = 245
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        object CDBGrid5: TCDBGrid
          Left = 2
          Top = 15
          Width = 476
          Height = 228
          TabStop = False
          Align = alClient
          DataSource = dsNfERateio
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
        Left = 489
        Top = 3
        Width = 92
        Height = 336
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        object CLabel157: TCLabel
          Left = 8
          Top = 255
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
          Left = 8
          Top = 274
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
          Left = 8
          Top = 296
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
          Left = 8
          Top = 315
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
        object BtnRecalcula: TCBitBtn
          Left = 8
          Top = 135
          Width = 75
          Height = 25
          Caption = '&Recalc.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
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
          Margin = 5
          ParentFont = False
          TabOrder = 4
          OnClick = BtnRecalculaClick
        end
      end
      object CGroupBox10: TCGroupBox
        Left = 3
        Top = 6
        Width = 480
        Height = 82
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
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
          DataSource = dsNfERateio
          TabOrder = 3
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
          DataSource = dsNfERateio
          TabOrder = 4
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
          DataSource = dsNfERateio
          TabOrder = 2
          OnExit = DBEidResultadoRTExit
          Find = FindResultado
          AcaoCad = frmPrincipal.actCadResultado
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEidGerencialRT: TCDBEdit
          Left = 80
          Top = 13
          Width = 57
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'idGerencial'
          DataSource = dsNfERateio
          TabOrder = 0
          Find = FindGerencial
          AcaoCad = frmPrincipal.actCadGerencial
          DecimalControl = True
          KeyMode = kmNormal
        end
        object CLookUp2: TCLookUp
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
          ClientDataSet = cdsLookup
          DataSource = dsNfERateio
          ValidaCampoObrigatorio = False
          CampoObrigatorio = True
          LookUpTable = 'vGerencial'
          ReturnField = 'descGerencial'
        end
        object CLookUp1: TCLookUp
          Left = 143
          Top = 35
          Width = 326
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
          DataSource = dsNfERateio
          ValidaCampoObrigatorio = True
          CampoObrigatorio = True
          LookUpTable = 'Resultado'
          ReturnField = 'descResultado'
        end
      end
    end
    object TabFinancas: TTabSheet
      Caption = 'Finan'#231'as'
      ImageIndex = 4
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
          Find = FindCaixa
          AcaoCad = frmPrincipal.actCadCaixa
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
          Action = frmPrincipal.actCadCaixa
          Caption = '&Conta Caixa'
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
          OnEnter = DBEqtProdutoEnter
          OnExit = DBEvlOutrasIcmsExit
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
          TabOrder = 8
          OnEnter = DBEqtProdutoEnter
          OnExit = DBEvlOutrasIcmsExit
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
          OnExit = DBEidChequeExit
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
      object PagTituloPag: TCPageControl
        Left = 8
        Top = 175
        Width = 627
        Height = 172
        ActivePage = TabTituloPag
        Images = imgIcones
        MultiLine = True
        TabOrder = 4
        TabPosition = tpLeft
        TabStop = False
        OnChange = PagTituloPagChange
        object TabTituloPag: TTabSheet
          Caption = 'Dados'
          ImageIndex = 6
          object CLabel84: TCLabel
            Left = 22
            Top = 138
            Width = 41
            Height = 13
            Alignment = taRightJustify
            Caption = 'Hist'#243'rico'
          end
          object CLabel124: TCLabel
            Left = 12
            Top = 116
            Width = 51
            Height = 13
            Alignment = taRightJustify
            Caption = 'Multa (%) '
          end
          object CLabel125: TCLabel
            Left = 150
            Top = 116
            Width = 51
            Height = 13
            Alignment = taRightJustify
            Caption = 'Juros (%) '
          end
          object CLabel126: TCLabel
            Left = 298
            Top = 116
            Width = 191
            Height = 13
            Alignment = taRightJustify
            Caption = 'Desconto para pagamento pontual (%) '
          end
          object CLabel127: TCLabel
            Left = 400
            Top = 94
            Width = 92
            Height = 13
            Alignment = taRightJustify
            Caption = 'Dias entre parcelas'
          end
          object CLabel128: TCLabel
            Left = 130
            Top = 94
            Width = 78
            Height = 13
            Alignment = taRightJustify
            Caption = 'Primeira vencto.'
          end
          object CLabel129: TCLabel
            Left = 23
            Top = 94
            Width = 40
            Height = 13
            Alignment = taRightJustify
            Caption = 'Parcelas'
          end
          object CLabel131: TCLabel
            Left = 338
            Top = 72
            Width = 40
            Height = 13
            Alignment = taRightJustify
            Caption = 'Cota'#231#227'o'
          end
          object CLabel130: TCLabel
            Left = 34
            Top = 72
            Width = 29
            Height = 13
            Alignment = taRightJustify
            Caption = #205'ndice'
          end
          object CLabel2: TCLabel
            Left = 34
            Top = 50
            Width = 29
            Height = 13
            Alignment = taRightJustify
            Caption = 'Conta'
          end
          object CLabel117: TCLabel
            Left = 34
            Top = 28
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
          object CLabel1: TCLabel
            Left = 157
            Top = 28
            Width = 42
            Height = 13
            Alignment = taRightJustify
            Caption = 'Portador'
          end
          object CLabel80: TCLabel
            Left = 435
            Top = 6
            Width = 37
            Height = 13
            Alignment = taRightJustify
            Caption = 'N'#250'mero'
          end
          object CLabel76: TCLabel
            Left = 39
            Top = 6
            Width = 24
            Height = 13
            Alignment = taRightJustify
            Caption = 'S'#233'rie'
          end
          object DBEobsTituloPag: TCDBEdit
            Left = 69
            Top = 135
            Width = 491
            Height = 19
            BevelKind = bkTile
            BorderStyle = bsNone
            DataField = 'obsTituloPag'
            DataSource = dsTituloPag
            TabOrder = 21
            OnExit = DBEobsTituloPagExit
            DecimalControl = True
            KeyMode = kmUSUpper
          end
          object DBEprMulta: TCDBEdit
            Left = 69
            Top = 113
            Width = 66
            Height = 19
            BevelKind = bkTile
            BorderStyle = bsNone
            DataField = 'prMulta'
            DataSource = dsTituloPag
            TabOrder = 18
            DecimalControl = True
            KeyMode = kmNormal
          end
          object DBEprJuros: TCDBEdit
            Left = 207
            Top = 113
            Width = 65
            Height = 19
            BevelKind = bkTile
            BorderStyle = bsNone
            DataField = 'prJuros'
            DataSource = dsTituloPag
            TabOrder = 19
            DecimalControl = True
            KeyMode = kmNormal
          end
          object DBEprDescontoT: TCDBEdit
            Left = 495
            Top = 113
            Width = 65
            Height = 19
            BevelKind = bkTile
            BorderStyle = bsNone
            DataField = 'prDesconto'
            DataSource = dsTituloPag
            TabOrder = 20
            DecimalControl = True
            KeyMode = kmNormal
          end
          object DBEdiasVencimento: TCDBEdit
            Left = 498
            Top = 91
            Width = 62
            Height = 19
            BevelKind = bkTile
            BorderStyle = bsNone
            DataField = 'diasVencimento'
            DataSource = dsTituloPag
            TabOrder = 17
            OnExit = DBEdiasVencimentoExit
            DecimalControl = True
            KeyMode = kmNormal
          end
          object DBCKincMes: TCDBCheckBox
            Left = 300
            Top = 94
            Width = 88
            Height = 16
            Caption = 'Mesmo Dia?'
            DataField = 'incMes'
            DataSource = dsTituloPag
            TabOrder = 16
            ValueChecked = 'S'
            ValueUnchecked = 'N'
            OnExit = DBCKincMesExit
          end
          object DBEdtVencimentoIni: TCDBEdit
            Left = 214
            Top = 91
            Width = 80
            Height = 19
            BevelKind = bkTile
            BorderStyle = bsNone
            DataField = 'dtVencimentoIni'
            DataSource = dsTituloPag
            MaxLength = 10
            TabOrder = 15
            DecimalControl = True
            KeyMode = kmDate
          end
          object DBEqtParcelas: TCDBEdit
            Left = 69
            Top = 91
            Width = 48
            Height = 19
            BevelKind = bkTile
            BorderStyle = bsNone
            DataField = 'qtParcelas'
            DataSource = dsTituloPag
            TabOrder = 14
            DecimalControl = True
            KeyMode = kmNormal
          end
          object CBitBtn18: TCBitBtn
            Left = 463
            Top = 69
            Width = 96
            Height = 19
            Action = frmPrincipal.actIndice
            Caption = #205'ndices'
            TabOrder = 13
            TabStop = False
          end
          object LookLancamento: TCLookUp
            Left = 384
            Top = 69
            Width = 73
            Height = 19
            Alignment = taRightJustify
            BevelInner = bvSpace
            BevelOuter = bvLowered
            Color = 14149350
            ParentBackground = False
            TabOrder = 12
            Key.Strings = (
              'idIndice')
            LookUpKey.Strings = (
              'idIndice')
            AlternateSQL.Strings = (
              
                'SELECT vlLancamento FROM indicelancamento WHERE dtLancamento = (' +
                'SELECT MAX(ind.dtLancamento) FROM indicelancamento ind WHERE ind' +
                '.idIndice = indicelancamento.idIndice) AND idIndice = ?')
            ClientDataSet = cdsLookup
            DataSource = dsTituloPag
            ValidaCampoObrigatorio = False
            CampoObrigatorio = True
            LookUpTable = 'IndiceLancamento'
            ReturnField = 'vlLancamento'
          end
          object LookIndice: TCLookUp
            Left = 123
            Top = 69
            Width = 209
            Height = 19
            Alignment = taLeftJustify
            BevelInner = bvSpace
            BevelOuter = bvLowered
            Color = 14149350
            ParentBackground = False
            TabOrder = 11
            Key.Strings = (
              'idIndice')
            LookUpKey.Strings = (
              'idIndice')
            ClientDataSet = cdsLookup
            DataSource = dsTituloPag
            ValidaCampoObrigatorio = True
            CampoObrigatorio = True
            LookUpTable = 'Indice'
            ReturnField = 'descIndice'
          end
          object DBEidIndice: TCDBEdit
            Left = 69
            Top = 69
            Width = 48
            Height = 19
            BevelKind = bkTile
            BorderStyle = bsNone
            DataField = 'idIndice'
            DataSource = dsTituloPag
            TabOrder = 10
            Find = FindIndice
            AcaoCad = frmPrincipal.actIndice
            DecimalControl = True
            KeyMode = kmNormal
          end
          object CLookUp4: TCLookUp
            Left = 281
            Top = 47
            Width = 258
            Height = 19
            Alignment = taLeftJustify
            BevelInner = bvSpace
            BevelOuter = bvLowered
            Color = 14149350
            ParentBackground = False
            TabOrder = 9
            Key.Strings = (
              'idFornecedor'
              'idConta')
            LookUpKey.Strings = (
              'idCadGeral'
              'idConta')
            ClientDataSet = cdsLookup
            DataSource = dsTituloPag
            ValidaCampoObrigatorio = True
            CampoObrigatorio = True
            LookUpTable = 'CadGeralConta'
            ReturnField = 'descConta'
          end
          object CLookUp5: TCLookUp
            Left = 181
            Top = 47
            Width = 94
            Height = 19
            Alignment = taLeftJustify
            BevelInner = bvSpace
            BevelOuter = bvLowered
            Color = 14149350
            ParentBackground = False
            TabOrder = 8
            Key.Strings = (
              'idFornecedor'
              'idConta')
            LookUpKey.Strings = (
              'idCadGeral'
              'idConta')
            ClientDataSet = cdsLookup
            DataSource = dsTituloPag
            ValidaCampoObrigatorio = True
            CampoObrigatorio = True
            LookUpTable = 'CadGeralConta'
            ReturnField = 'idContaCorrente'
          end
          object CLookUp6: TCLookUp
            Left = 123
            Top = 47
            Width = 52
            Height = 19
            Alignment = taLeftJustify
            BevelInner = bvSpace
            BevelOuter = bvLowered
            Color = 14149350
            ParentBackground = False
            TabOrder = 7
            Key.Strings = (
              'idFornecedor'
              'idConta')
            LookUpKey.Strings = (
              'idCadGeral'
              'idConta')
            ClientDataSet = cdsLookup
            DataSource = dsTituloPag
            ValidaCampoObrigatorio = True
            CampoObrigatorio = True
            LookUpTable = 'CadGeralConta'
            ReturnField = 'idAgencia'
          end
          object DBEidContaFor: TCDBEdit
            Left = 69
            Top = 47
            Width = 48
            Height = 19
            BevelKind = bkTile
            BorderStyle = bsNone
            DataField = 'idConta'
            DataSource = dsTituloPag
            TabOrder = 6
            Find = FindContaFor
            DecimalControl = True
            KeyMode = kmNormal
          end
          object DBEvlTituloPag: TCDBEdit
            Left = 69
            Top = 25
            Width = 81
            Height = 19
            BevelKind = bkTile
            BorderStyle = bsNone
            DataField = 'vlTituloPag'
            DataSource = dsTituloPag
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 3
            OnEnter = DBEvlTituloPagEnter
            OnExit = DBEvlTituloPagExit
            DecimalControl = True
            KeyMode = kmNormal
          end
          object DBEidPortador: TCDBEdit
            Left = 205
            Top = 25
            Width = 48
            Height = 19
            BevelKind = bkTile
            BorderStyle = bsNone
            DataField = 'idPortador'
            DataSource = dsTituloPag
            TabOrder = 4
            Find = dmFind.FindPortador
            DecimalControl = True
            KeyMode = kmNormal
          end
          object LookPortador: TCLookUp
            Left = 259
            Top = 25
            Width = 302
            Height = 19
            Alignment = taLeftJustify
            BevelInner = bvSpace
            BevelOuter = bvLowered
            Color = 14149350
            ParentBackground = False
            TabOrder = 5
            Key.Strings = (
              'idPortador')
            LookUpKey.Strings = (
              'idPortador')
            ClientDataSet = cdsLookup
            DataSource = dsTituloPag
            ValidaCampoObrigatorio = True
            CampoObrigatorio = True
            LookUpTable = 'Portador'
            ReturnField = 'descPortador'
          end
          object DBEnrTituloPag: TCDBEdit
            Left = 478
            Top = 3
            Width = 82
            Height = 19
            BevelKind = bkTile
            BorderStyle = bsNone
            Color = 14149350
            DataField = 'nrTituloPag'
            DataSource = dsTituloPag
            ReadOnly = True
            TabOrder = 2
            DecimalControl = True
            KeyMode = kmInteger
          end
          object CLookUp3: TCLookUp
            Left = 131
            Top = 3
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
              
                'SELECT descDocSerie FROM DocSerie WHERE idTipoDocSerie = 2 AND i' +
                'dDocSerie = ?')
            ClientDataSet = cdsLookup
            DataSource = dsTituloPag
            ValidaCampoObrigatorio = True
            CampoObrigatorio = True
            LookUpTable = 'DocSerie'
            ReturnField = 'descDocSerie'
          end
          object DBEidDocSerieT: TCDBEdit
            Left = 69
            Top = 3
            Width = 56
            Height = 19
            BevelKind = bkTile
            BorderStyle = bsNone
            DataField = 'idDocSerie'
            DataSource = dsTituloPag
            TabOrder = 0
            Find = FindSerieTit
            DecimalControl = True
            KeyMode = kmUSUpper
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
              DataSource = dsTituloPagParc
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
              DataSource = dsTituloPagParc
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
              DataSource = dsTituloPagParc
              MaxLength = 10
              TabOrder = 2
              DecimalControl = True
              KeyMode = kmDate
            end
            object DBEstTituloPagParc: TCDBEdit
              Left = 468
              Top = 11
              Width = 109
              Height = 19
              TabStop = False
              BevelKind = bkTile
              BorderStyle = bsNone
              Color = 14149350
              DataField = 'stTituloPagParc'
              DataSource = dsTituloPagParc
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
              DataSource = dsTituloPagParc
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
                  FieldName = 'stTituloPagParc'
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
        TabOrder = 2
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
        TabOrder = 3
        Visible = False
        DecimalControl = True
        KeyMode = kmNormal
      end
      object DBEidTituloPag: TCDBEdit
        Left = 829
        Top = 185
        Width = 79
        Height = 19
        BevelKind = bkTile
        BorderStyle = bsNone
        DataField = 'idTituloPag'
        DataSource = dsTituloPag
        TabOrder = 5
        Visible = False
        DecimalControl = True
        KeyMode = kmNormal
      end
    end
  end
  inherited PanBotoes: TCPanelGradient
    Top = 664
    Width = 1362
    TabOrder = 3
    ExplicitTop = 664
    ExplicitWidth = 1362
    DesignSize = (
      1362
      31)
    inherited BtnSalvar: TCBitBtn
      TabStop = False
    end
    inherited BtnFechar: TCBitBtn
      Left = 1375
      Anchors = [akTop, akRight]
      TabOrder = 7
      TabStop = False
      ExplicitLeft = 1375
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
      TabOrder = 8
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
      TabOrder = 9
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
      TabOrder = 5
      TabStop = False
    end
    object CBitBtn5: TCBitBtn
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
      TabOrder = 6
    end
  end
  inherited PanEmpresa: TCPanelGradient
    Width = 1362
    Height = 27
    ExplicitWidth = 1362
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
      Left = 526
      Top = 6
      TabOrder = 6
      ExplicitLeft = 526
      ExplicitTop = 6
    end
    object lookEstadoEmp: TCLookUp
      Left = 676
      Top = 5
      Width = 29
      Height = 19
      Alignment = taLeftJustify
      BevelInner = bvSpace
      BevelOuter = bvLowered
      Color = 14149350
      ParentBackground = False
      TabOrder = 4
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
  object CPanelGradient1: TCPanelGradient [5]
    Left = 0
    Top = 31
    Width = 1362
    Height = 0
    Align = alTop
    Caption = 'PanEmpresa'
    TabOrder = 1
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
    Left = 1224
    Top = 200
    Bitmap = {
      494C010109000D00140010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000A5A4A4FF494846FF807A73FF868078FF847E75FF8B8379FF5B5650FF746E
      66FFFAF9F9FF000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FFFCFCFCFF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FFEAEAEAFFA6A5A6FF7F7C88FF726E82FF7D7A89FFA09FA2FFE0E0
      E0FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FFE2E1E1FFC7C7C6FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000EDECEDFF5E5D
      5CFF747575FF939393FF3D3A72FF2C2AA3FF2F2EA3FF484676FFA4A09FFF7272
      72FF2E2B28FFCAC6C1FF0000000000000000000000FF000000FF000000FFFBFB
      FBFFDEDEDEFFAFAEAFFF858587FF707275FF6C7074FF676668FF919192FFCBCA
      CAFFF2F2F2FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FFA7A6A4FF4E4265FF3C258DFF3D1FA1FF4020A5FF3F1FA4FF371D95FF3F34
      6CFF9F9FA1FFFDFDFDFF000000FF000000FF000000FF000000FF000000FFFDFD
      FDFFA2A09EFFB0B0AFFFB4B2AEFF7A7976FFE3E3E3FFB8B7B7FFBBBABAFF0000
      00FF000000FF000000FF000000FF000000FF00000000F1F1F1FF6A6A6AFF9393
      94FF8E8C8FFF2B2AC0FF3F3C92FF7A748FFF807A90FF7C79A6FF6363C5FFD0CC
      CDFFB0B1B1FF2A2927FFCECCC8FF00000000000000FFF7F7F7FFDEDEDEFF8383
      83FF696F74FF8B9399FFAAB5BBFFCAD7DEFFDFEBEFFF86888BFF787879FF595A
      5BFF646363FFB1B1B1FFEEEEEEFFFEFEFEFF000000FF000000FFFEFEFEFF8481
      80FF503B7BFF4226ABFF4333B4FF4157C3FF466DD3FF4569CEFF434DC2FF472E
      B2FF4F477FFF828284FFFBFBFBFF000000FF000000FF000000FFEFEFEFFFC7C7
      C6FFC8C4BFFFA19D98FFD0CCC6FFAAA8A3FF989692FFC8C4BDFF8F8D8DFF0000
      00FF000000FF000000FF000000FF000000FF00000000999998FF959595FF877F
      75FF323091FF3C3778FFB6A795FFB6A795FFB6A795FFB6A795FF77718DFF2F2C
      84FFD2C9C0FFAEAEAFFF302D29FFF8F7F7FFFAFAFAFFE6E6E6FFC6C6C6FF8085
      87FFA8B4BBFFB8C6CDFFC6D4DCFFDBEAF0FFEDF6F9FF909496FF8C8D8EFF7D7E
      7EFF686868FF8C8C8CFFCECECEFFF8F8F8FF000000FF000000FF9A9996FF5E4B
      7BFF4932ACFF444BBDFF3D90E0FF389BE5FF416ECDFF4060C5FF3D77D4FF5F8B
      D9FF9D98D5FF696391FF9E9E9FFF000000FF000000FF000000FFB3B2B0FFA9A7
      A4FFB9B7B6FFCDC9C5FFB8B5B4FFCBC8C3FFD5D1CCFFCFCBC4FF7C7B79FFBFBF
      BEFFB9B8B8FFEDEDEDFF000000FF000000FFD9DADAFF9B9B9BFF61594EFF9984
      6AFF2D2893FF5D4F59FF947E63FF45645AFF3E706EFF947E63FF6C5D5EFF1A15
      A6FF99846AFFC7BFB4FF6D6D6DFF827D77FFFEFEFEFFF9F9F9FFEFEFEFFF8D92
      94FFACB9C0FFBCCAD2FFCAD9E1FFDFEDF4FFF0F7FAFF93979AFF8F9191FF8081
      81FF707070FFCBCBCBFFEAEAEAFFFCFCFCFF000000FFE6E6E6FF5E5159FF4C3C
      9AFF4246A8FF429BE3FF4373CDFF426CCDFF403FB5FF3915A0FF3E1CA5FF7194
      DBFF9AB6E9FF9687D5FF565269FFEEEEEEFF000000FFF7F7F7FFABA8A6FFCFCB
      C6FFA09E9BFFB2B1B0FFD4D4D4FFBBBAB9FFB3B1AFFFD4D0CAFFC5C1BAFFC9C1
      B9FF9B9793FFF0F0F0FF000000FF000000FFCBCBCBFF7F7C79FF70583BFF7458
      35FF322989FF4B3E3DFF425443FF14C6DDFF4ADBEFFF395F57FF493E3DFF1911
      8EFF745835FF856E51FFB8B8B7FF3D3B37FF000000FF000000FF000000FF9095
      98FFAFBDC4FFC0CFD7FFCEDEE7FFE4F1F7FFF2F9FBFF979B9DFF939494FF8384
      85FF767676FFFEFEFEFF000000FF000000FF000000FF999895FF66547CFF3F2F
      9CFF4478CBFF3F80D1FF47379CFF6163BAFF5E79C9FF493FAFFF4852BBFF829D
      DCFF96ADE3FF9AA4E7FF594E86FFB4B4B4FF000000FFC0BEBDFFBDB9B2FFAFAE
      A9FFCDCCCCFF000000FF000000FF000000FFF3F2F2FFBAB8B6FFBDBAB7FFD4CC
      C3FF999896FF000000FF000000FF000000FFC9C9C9FF776040FF5A390FFF5A39
      0FFF2A1E80FF44382BFF415946FFB4DDE2FFADBCBBFF39584CFF332A2EFF150B
      84FF5A390FFF5A390FFF695235FF7E786FFF000000FF000000FF000000FF9095
      98FFAFBDC4FFC5D4DCFFD3E4EDFFE8F5FAFFF5FAFCFF999EA1FF909192FF8688
      88FF777777FF000000FF000000FF000000FF000000FF67615CFF665290FF3D3A
      A6FF4392DEFF4348A9FF6556ADFF9695CEFF94BDEBFF899FDBFF7C80CBFF8EA5
      E2FF95B1E5FF96B1E7FF5B4FA2FF808083FF000000FFDFDFDFFFBFBBB5FF8C8B
      89FF000000FF000000FF000000FF000000FF000000FF000000FFB7B5B2FFD9D4
      CCFF8B8986FF989897FFD7D6D6FF000000FFC3C3C3FF654721FF512E02FF512E
      02FF28217EFF453126FF7B725EFFF5EEECFFE6E3E0FF6D6B5BFF382923FF1009
      79FF512E02FF512E02FF503008FF7E776EFF000000FF000000FF000000FF8C91
      93FF769AA7FF3E97B2FF7ABDD3FFECF8FDFFF6FBFDFF9DA1A4FF7B7D7FFF8A8C
      8CFF787879FF000000FF000000FF000000FF000000FF594D49FF614D93FF3F43
      A9FF3E95DCFF4655B4FF7E75C1FF9AADE5FF909FDDFF9199DBFF8B74C5FF8F96
      D8FF9090D4FF90A9E4FF4A3CA6FF6E6C72FF000000FFB8B6B5FFC3C0BBFF9997
      96FFFEFEFEFF000000FF000000FF000000FF000000FF000000FFC0BFBEFFBFBC
      B9FFD5D1CBFFC1BDB7FFB5B4B3FF000000FFC5C5C5FF654721FF512E02FF512E
      02FF251D72FF453944FFBCB5A3FFCBC8C6FFBDBBB7FFA0998AFF483B46FF110A
      75FF512E02FF512E02FF513008FF7F776EFF000000FF000000FF000000FF888B
      8EFF9CA9AEFF3CA0BDFFCAE2EDFFF0FCFEFFF8FCFDFF9FA3A7FF797A7DFF8E90
      90FF7A7B7BFF000000FF000000FF000000FF000000FF544843FF7C6BA0FF787C
      C1FF7EA8DDFF698ED2FF728AD4FF8B81CCFF8B7BCAFF93A7E0FF9297D7FF94A8
      E1FF9284CFFF8793DBFF3D2E9AFF716F73FF000000FFDBDBDBFFBFBCB8FF8786
      84FFFCFCFCFF000000FF000000FF000000FF000000FF000000FFFAFAFAFFAFAD
      ABFFCDC9C4FFA7A6A5FF000000FF000000FFAFAFAFFF473929FF512E02FF512E
      02FF201A78FF3F2D27FF867D6AFFFFFFFFFFFFFFFFFF817968FF47342AFF110B
      74FF512E02FF512E02FF4E3515FF6E685FFF000000FF000000FFF3F3F3FF8E92
      93FFB5C0C4FFB3CED9FFE2F5FCFFF0FAFBFFF3F6F7FFA0A5A9FF7C7E81FF9193
      94FF7B7C7DFF000000FF000000FF000000FF000000FF5A504BFFA695AEFF9190
      CEFF96AEE6FF9191D5FF8DB4E6FF9090D5FF8B7FCCFF7D92D7FF8894D9FF949B
      DAFF97A9E0FF6489D9FF3C2A8AFF888686FF000000FFECEBEBFFC4C0BBFF8A89
      87FFDCDCDCFF000000FF000000FF000000FF000000FF000000FFEBEBEBFFBAB8
      B6FFC0BDB9FF7A7977FFDFDFDFFF000000FFE9E9E9FF5E5E5EFF492A02FF5431
      06FF251E78FF5C5573FFF3F1F0FFC1BCAFFFB5AFA3FFEDECE6FF6C6683FF1D16
      76FF543106FF55350EFF8B8A88FF4D4A46FF000000FF000000FF000000FF959B
      9FFFAAB6BCFFB3BFC5FFC8D5D9FFE8EEEFFFECEFF0FF9EADA6FF809294FF7A83
      7FFF838786FF000000FF000000FF000000FF000000FF7A7674FFA38D94FF9384
      CDFF919DDDFF939EDCFF9296D7FF9198D9FF99AFE7FF6D6CC2FF535BBFFF6768
      C4FF608CD9FF4960CEFF412B62FFBDBDBCFF000000FFF6F6F6FFBCBBBAFFB8B5
      AFFF979695FFF9F9F9FF000000FF000000FF000000FF000000FFE1E1E1FFAAA8
      A5FFD2CFCAFFC9C5BEFF929190FFFEFEFEFFF6F6F6FFB8B8B8FF291A06FF8168
      48FF514B90FF5853A6FF76644EFF887052FF887052FF7C6952FF6662A1FF1F1A
      7DFF816848FF5E4F3BFF7E7E7EFF938E88FF000000FF000000FF000000FF9CA4
      A8FFC8D8E0FFDBEDF4FFEFFDFDFFFDFFFFFFFCFEFFFFA0A8AAFF767A7DFF6669
      6AFF7E8081FF000000FF000000FF000000FF000000FFC5C5C5FF705D56FFA590
      BFFF7C70C8FF97B2E7FF949FDCFF8F7FCCFF999EDCFF797AC7FF6079D1FF5572
      CAFF3D74D7FF533EA3FF564D50FFF7F7F7FF000000FF000000FFE5E4E4FFC4C1
      BEFF908F8CFFAAA9A9FFF8F8F8FF000000FF000000FF000000FFADACABFFCDCA
      C6FFA6A39FFFB1B0AFFFE4E3E3FF000000FF00000000ECECECFF797A7AFF6356
      45FFA39B92FF6362C0FF3A367EFF756C7DFF7C7381FF413D79FF1211C0FF857E
      8BFF756757FF8B8B8CFF5F5C59FFFAF9F9FF000000FF000000FF000000FF9FA8
      ADFFD4E6F0FFE7FAFEFFF9FFFFFFFFFFFFFFFDFFFFFFB0B7BAFFAAAEAFFF989B
      9CFF7D7F80FF000000FF000000FF000000FF000000FFFEFEFEFF66625FFFA189
      8AFF775FB0FF534BB9FF6F9AE1FF87A7E4FF89A5E2FF5D78D1FF4E6DCEFF4373
      D5FF574FB0FF5D475AFFA8A8A6FF000000FF000000FF000000FFF9F9F9FFCECD
      CDFFC8C5BFFF9D9B97FF8E8D8CFFC3C2C2FFC5C5C5FFA09F9EFFA3A3A1FFCDCB
      C9FF979591FFB8B8B8FF000000FF000000FF00000000FDFDFDFFECECEBFF7575
      75FF473B2DFF8F8477FF65628AFF4B49A4FF3F3DA2FF36338CFF7C7173FF5145
      37FF888888FF807E7CFFD5D2CEFF00000000000000FF000000FF000000FFABB2
      B5FFEEFBFDFFFCFEFFFFFEFFFFFFFFFFFFFFFBFBFBFFD0D4D6FFD7DEE1FFC1C8
      CAFF999D9EFF000000FF000000FF000000FF000000FF000000FFE4E4E4FF4F49
      45FFA08884FF9174AFFF4B3CADFF4550BDFF4860CAFF4167CCFF4958C0FF6F5B
      A4FF68515AFF7C7B78FF000000FF000000FF000000FF000000FF000000FF0000
      00FFB9B7B5FFBEBBB7FFB8B5B0FFA8A7A3FFA2A19EFFC4C2BFFFC1C0BDFFA09F
      9EFFB6B4B2FFB7B6B5FF000000FF000000FF0000000000000000FDFDFDFFEFEE
      EDFFB3B3B3FF4A4844FF4C300CFF533106FF523006FF503514FF595654FFA6A6
      A7FF9C9996FFD5D1CDFF0000000000000000000000FF000000FF000000FFF1F1
      F1FFC2C3C4FFBCBDBEFFBDBEBFFFBCBEBEFFBABBBCFFC2C3C3FFC0C1C2FFBFC0
      C1FFE3E3E3FF000000FF000000FF000000FF000000FF000000FF000000FFDADA
      DAFF595653FF746258FFA1878FFF987A9EFF9071A2FF8E6D98FF836779FF5A4B
      46FF908F8DFF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FFE7E7E7FFB5B3B0FFAFADAAFFC7C2BCFFA7A4A2FFBFBDBBFF9D9B
      9AFF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000F8F7F7FFDDDBD8FF979086FF92887CFF8F8578FFA1998FFFC4C2BEFFBCB6
      AFFFFAFAF9FF000000000000000000000000000000FF000000FF000000FF0000
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
      C003C007F81FC1FFF00FC00FFC3FFFFFF007FF7FF80FFCFFC003E007F003E01F
      80018000C001C01F80000000C001C00300000000800080030000E00380008707
      0000E00780008FC10000E007800087C10000E007800087C30000C007800087C1
      0000E007800083C00000E0078000C1C18000E0078001C0038001E007C003F003
      C003E007E007F80FF007FFFFF00FFC0F00000000000000000000000000000000
      000000000000}
  end
  inherited Acao: TActionList
    Left = 1288
    Top = 200
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
    CommandText = 'SELECT * FROM NfE'
    AfterScroll = cdsPadraoAfterScroll
    Left = 1256
    Top = 136
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
    object cdsPadraoidFornecedor: TIntegerField
      FieldName = 'idFornecedor'
      Required = True
    end
    object cdsPadraoidCadFornecedor: TSmallintField
      FieldName = 'idCadFornecedor'
      Required = True
    end
    object cdsPadraoidNfE: TIntegerField
      FieldName = 'idNfE'
      Required = True
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
    object cdsPadraodtLancamento: TSQLTimeStampField
      FieldName = 'dtLancamento'
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
    object cdsPadraoidGerencial: TIntegerField
      FieldName = 'idGerencial'
    end
    object cdsPadraoidResultado: TIntegerField
      FieldName = 'idResultado'
    end
    object cdsPadraoidRateio: TSmallintField
      FieldName = 'idRateio'
    end
    object cdsPadraoobsNfE: TStringField
      FieldName = 'obsNfE'
      FixedChar = True
      Size = 250
    end
    object cdsPadraocompNfE: TStringField
      FieldName = 'compNfE'
      FixedChar = True
      Size = 250
    end
    object cdsPadraostNfE: TStringField
      FieldName = 'stNfE'
      Required = True
      FixedChar = True
      Size = 15
    end
    object cdsPadraovlDesconto: TFMTBCDField
      FieldName = 'vlDesconto'
      Precision = 15
      Size = 3
    end
    object cdsPadraoidIndice: TSmallintField
      FieldName = 'idIndice'
    end
  end
  inherited dspPadrao: TDataSetProvider
    DataSet = sdsNfE
    Left = 1224
    Top = 136
  end
  inherited dsPadrao: TDataSource
    OnDataChange = dsPadraoDataChange
    Left = 1288
    Top = 136
  end
  inherited ImgBotoes: TImageList
    Left = 1256
    Top = 200
    Bitmap = {
      494C010108000D00140020001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
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
    Left = 1200
    Top = 16
  end
  inherited dspTmp: TDataSetProvider
    Left = 1160
    Top = 16
  end
  inherited sdsTmp: TSQLDataSet
    SQLConnection = dmPadrao.dbConexao
    Left = 1112
    Top = 16
  end
  inherited cdsLookup: TClientDataSet
    Left = 776
    Top = 48
  end
  inherited dspLookup: TDataSetProvider
    Left = 1256
    Top = 104
  end
  inherited sdsLookup: TSQLDataSet
    CommandText = 'SELECT * FROM Resultado'
    Left = 1392
    Top = 232
  end
  inherited cdsEmpresa: TClientDataSet
    Left = 744
    Top = 16
  end
  inherited dsEmpresa: TDataSource
    Left = 776
    Top = 16
  end
  object sdsNfEProduto: TSQLDataSet
    SchemaName = 'gesys'
    GetMetadata = False
    CommandText = 'SELECT * FROM NfEProduto'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmPadrao.dbConexao
    Left = 1192
    Top = 168
  end
  object dspNfEProduto: TDataSetProvider
    DataSet = sdsNfEProduto
    Options = [poAllowMultiRecordUpdates, poPropogateChanges, poAllowCommandText, poUseQuoteChar]
    BeforeUpdateRecord = dspNfEProdutoBeforeUpdateRecord
    Left = 1224
    Top = 168
  end
  object cdsNfEProduto: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    CommandText = 'SELECT * FROM NfEProduto'
    Params = <>
    ProviderName = 'dspNfEProduto'
    AfterOpen = cdsPadraoAfterOpen
    AfterInsert = cdsNfEProdutoAfterInsert
    AfterEdit = cdsNfEProdutoAfterEdit
    AfterScroll = cdsNfEProdutoAfterScroll
    OnReconcileError = cdsPadraoReconcileError
    Left = 1256
    Top = 168
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
      Precision = 15
      Size = 2
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
    object cdsNfEProdutoidNfEProduto: TSmallintField
      FieldName = 'idNfEProduto'
      Required = True
    end
    object cdsNfEProdutoNcm: TIntegerField
      FieldName = 'Ncm'
    end
    object cdsNfEProdutoidMaquina: TIntegerField
      FieldName = 'idMaquina'
    end
    object cdsNfEProdutocodFabricante: TStringField
      FieldName = 'codFabricante'
      Size = 30
    end
    object cdsNfEProdutohr_kmAtual: TFMTBCDField
      FieldName = 'hr_kmAtual'
      Precision = 18
      Size = 1
    end
    object cdsNfEProdutoidGerencial: TIntegerField
      FieldName = 'idGerencial'
    end
    object cdsNfEProdutoidResultado: TIntegerField
      FieldName = 'idResultado'
    end
    object cdsNfEProdutoidRateio: TIntegerField
      FieldName = 'idRateio'
    end
    object cdsNfEProdutoidCfop: TIntegerField
      FieldName = 'idCfop'
    end
    object cdsNfEProdutovlTotalNf: TAggregateField
      FieldName = 'vlTotalNf'
      Active = True
      currency = True
      DisplayName = ''
      Expression = 'SUM(vlTotal)'
    end
  end
  object dsNfEProduto: TDataSource
    DataSet = cdsNfEProduto
    OnStateChange = dsNfEProdutoStateChange
    Left = 1288
    Top = 168
  end
  object sdsNfE: TSQLDataSet
    SchemaName = 'gesys'
    GetMetadata = False
    CommandText = 'SELECT * FROM NfE'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmPadrao.dbConexao
    Left = 1192
    Top = 136
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
    Left = 1192
    Top = 104
  end
  object FindNatureza: TCFind
    SelectClause.Strings = (
      'SELECT idNatureza, descNatureza, idCfop, descCfop FROM vNatureza')
    JoinClause.Strings = (
      'WHERE tpNatureza = '#39'ENTRADA'#39' AND frete = '#39'N'#39)
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
    Left = 1224
    Top = 104
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
    Left = 1192
    Top = 200
  end
  object dspProduto: TDataSetProvider
    DataSet = dmPadrao.sdsLookup
    Options = [poPropogateChanges, poAllowCommandText]
    Left = 1256
    Top = 232
  end
  object cdsProduto: TClientDataSet
    Aggregates = <>
    CommandText = 'SELECT * FROM Produto'
    Params = <>
    ProviderName = 'dspProduto'
    Left = 1288
    Top = 232
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
    Left = 1224
    Top = 233
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
    Left = 1192
    Top = 232
  end
  object sdsMovCaixa: TSQLDataSet
    SchemaName = 'gesys'
    GetMetadata = False
    CommandText = 'SELECT * FROM MovCaixa'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmPadrao.dbConexao
    Left = 1192
    Top = 392
  end
  object dspMovCaixa: TDataSetProvider
    DataSet = sdsMovCaixa
    Options = [poAllowMultiRecordUpdates, poPropogateChanges, poAllowCommandText, poUseQuoteChar]
    BeforeUpdateRecord = dspMovCaixaBeforeUpdateRecord
    Left = 1224
    Top = 392
  end
  object cdsMovCaixa: TClientDataSet
    Aggregates = <>
    CommandText = 'SELECT * FROM MovCaixa'
    Params = <>
    ProviderName = 'dspMovCaixa'
    AfterOpen = cdsPadraoAfterOpen
    AfterInsert = cdsMovCaixaAfterInsert
    AfterEdit = cdsNfEValorAfterEdit
    OnReconcileError = cdsPadraoReconcileError
    Left = 1256
    Top = 392
  end
  object dsMovCaixa: TDataSource
    DataSet = cdsMovCaixa
    Left = 1288
    Top = 392
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
    Left = 1256
    Top = 264
  end
  object sdsMovConta: TSQLDataSet
    SchemaName = 'gesys'
    GetMetadata = False
    CommandText = 'SELECT * FROM MovConta'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmPadrao.dbConexao
    Left = 1192
    Top = 456
  end
  object dspMovConta: TDataSetProvider
    DataSet = sdsMovConta
    Options = [poAllowMultiRecordUpdates, poPropogateChanges, poAllowCommandText, poUseQuoteChar]
    BeforeUpdateRecord = dspMovCaixaBeforeUpdateRecord
    Left = 1224
    Top = 456
  end
  object cdsMovConta: TClientDataSet
    Aggregates = <>
    CommandText = 'SELECT * FROM MovConta'
    Params = <>
    ProviderName = 'dspMovConta'
    AfterOpen = cdsPadraoAfterOpen
    AfterInsert = cdsMovContaAfterInsert
    AfterEdit = cdsNfEValorAfterEdit
    OnReconcileError = cdsPadraoReconcileError
    Left = 1256
    Top = 456
  end
  object dsMovConta: TDataSource
    DataSet = cdsMovConta
    Left = 1288
    Top = 456
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
    Left = 1224
    Top = 264
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
    Left = 1160
    Top = 104
  end
  object cdsGerencial: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 1160
    Top = 136
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
    Left = 1160
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
    Left = 1160
    Top = 200
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
    Left = 1160
    Top = 232
  end
  object cdsResultado: TClientDataSet
    Aggregates = <>
    CommandText = 'SELECT * FROM Resultado'
    Params = <>
    ProviderName = 'dspLookUp'
    Left = 1160
    Top = 264
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
    Left = 1192
    Top = 264
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
    Left = 1288
    Top = 264
  end
  object sdsNfEValor: TSQLDataSet
    SchemaName = 'gesys'
    GetMetadata = False
    CommandText = 'SELECT * FROM NfEValor'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmPadrao.dbConexao
    Left = 1192
    Top = 328
  end
  object dspNfEValor: TDataSetProvider
    DataSet = sdsNfEValor
    Options = [poAllowMultiRecordUpdates, poPropogateChanges, poAllowCommandText, poUseQuoteChar]
    BeforeUpdateRecord = dspNfEProdutoBeforeUpdateRecord
    Left = 1224
    Top = 328
  end
  object cdsNfEValor: TClientDataSet
    Aggregates = <>
    CommandText = 'SELECT * FROM NfEValor'
    Params = <>
    ProviderName = 'dspNfEValor'
    AfterOpen = cdsPadraoAfterOpen
    AfterInsert = cdsNfEValorAfterInsert
    AfterEdit = cdsNfEValorAfterEdit
    OnReconcileError = cdsPadraoReconcileError
    Left = 1256
    Top = 328
    object cdsNfEValoridEmpresa: TIntegerField
      FieldName = 'idEmpresa'
      Required = True
    end
    object cdsNfEValoridCadEmpresa: TSmallintField
      FieldName = 'idCadEmpresa'
      Required = True
    end
    object cdsNfEValoridDocSerie: TStringField
      FieldName = 'idDocSerie'
      Required = True
      Size = 5
    end
    object cdsNfEValoridFornecedor: TIntegerField
      FieldName = 'idFornecedor'
      Required = True
    end
    object cdsNfEValoridCadFornecedor: TSmallintField
      FieldName = 'idCadFornecedor'
      Required = True
    end
    object cdsNfEValoridNfE: TIntegerField
      FieldName = 'idNfE'
      Required = True
    end
    object cdsNfEValorvlProdutos: TFMTBCDField
      FieldName = 'vlProdutos'
      Required = True
      Precision = 19
      Size = 4
    end
    object cdsNfEValorvlServicos: TFMTBCDField
      FieldName = 'vlServicos'
      Required = True
      Precision = 19
      Size = 4
    end
    object cdsNfEValorprDesconto: TFMTBCDField
      FieldName = 'prDesconto'
      Required = True
      Precision = 5
      Size = 3
    end
    object cdsNfEValorvlDesconto: TFMTBCDField
      FieldName = 'vlDesconto'
      Required = True
      Precision = 19
      Size = 4
    end
    object cdsNfEValorvlReducao: TFMTBCDField
      FieldName = 'vlReducao'
      Required = True
      Precision = 19
      Size = 4
    end
    object cdsNfEValorvlBaseIcms: TFMTBCDField
      FieldName = 'vlBaseIcms'
      Required = True
      Precision = 19
      Size = 4
    end
    object cdsNfEValorvlBaseIss: TFMTBCDField
      FieldName = 'vlBaseIss'
      Required = True
      Precision = 19
      Size = 4
    end
    object cdsNfEValorvlIcms: TFMTBCDField
      FieldName = 'vlIcms'
      Required = True
      Precision = 19
      Size = 4
    end
    object cdsNfEValorvlIss: TFMTBCDField
      FieldName = 'vlIss'
      Required = True
      Precision = 19
      Size = 4
    end
    object cdsNfEValorvlIsentasIcms: TFMTBCDField
      FieldName = 'vlIsentasIcms'
      Required = True
      Precision = 19
      Size = 4
    end
    object cdsNfEValorvlOutrasIcms: TFMTBCDField
      FieldName = 'vlOutrasIcms'
      Required = True
      Precision = 19
      Size = 4
    end
    object cdsNfEValorvlBaseIpi: TFMTBCDField
      FieldName = 'vlBaseIpi'
      Required = True
      Precision = 19
      Size = 4
    end
    object cdsNfEValorvlIpi: TFMTBCDField
      FieldName = 'vlIpi'
      Required = True
      Precision = 19
      Size = 4
    end
    object cdsNfEValorvlFrete: TFMTBCDField
      FieldName = 'vlFrete'
      Required = True
      Precision = 19
      Size = 4
    end
    object cdsNfEValorvlDespesas: TFMTBCDField
      FieldName = 'vlDespesas'
      Required = True
      Precision = 19
      Size = 4
    end
    object cdsNfEValorvlSeguro: TFMTBCDField
      FieldName = 'vlSeguro'
      Required = True
      Precision = 19
      Size = 4
    end
    object cdsNfEValorvlOutrosImpostos: TFMTBCDField
      FieldName = 'vlOutrosImpostos'
      Required = True
      Precision = 19
      Size = 4
    end
    object cdsNfEValorvlFreteFaturar: TFMTBCDField
      FieldName = 'vlFreteFaturar'
      Required = True
      Precision = 19
      Size = 4
    end
    object cdsNfEValorvlNotaFiscal: TFMTBCDField
      FieldName = 'vlNotaFiscal'
      Required = True
      Precision = 19
      Size = 4
    end
  end
  object dsNfEValor: TDataSource
    DataSet = cdsNfEValor
    Left = 1288
    Top = 328
  end
  object sdsNfERateio: TSQLDataSet
    SchemaName = 'gesys'
    GetMetadata = False
    CommandText = 'SELECT * FROM NfERateio'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmPadrao.dbConexao
    Left = 1192
    Top = 424
  end
  object dspNfERateio: TDataSetProvider
    DataSet = sdsNfERateio
    Options = [poAllowMultiRecordUpdates, poPropogateChanges, poAllowCommandText, poUseQuoteChar]
    BeforeUpdateRecord = dspNfERateioBeforeUpdateRecord
    Left = 1224
    Top = 424
  end
  object cdsNfERateio: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    CommandText = 'SELECT * FROM NfERateio'
    Params = <>
    ProviderName = 'dspNfERateio'
    AfterOpen = cdsPadraoAfterOpen
    AfterInsert = cdsNfERateioAfterInsert
    AfterEdit = cdsNfEValorAfterEdit
    OnReconcileError = cdsPadraoReconcileError
    Left = 1256
    Top = 424
    object cdsNfERateioidEmpresa: TIntegerField
      FieldName = 'idEmpresa'
      Required = True
    end
    object cdsNfERateioidCadEmpresa: TSmallintField
      FieldName = 'idCadEmpresa'
      Required = True
    end
    object cdsNfERateioidDocSerie: TStringField
      FieldName = 'idDocSerie'
      Required = True
      Size = 5
    end
    object cdsNfERateioidFornecedor: TIntegerField
      FieldName = 'idFornecedor'
      Required = True
    end
    object cdsNfERateioidCadFornecedor: TSmallintField
      FieldName = 'idCadFornecedor'
      Required = True
    end
    object cdsNfERateioidNfE: TIntegerField
      FieldName = 'idNfE'
      Required = True
    end
    object cdsNfERateioidResultado: TIntegerField
      FieldName = 'idResultado'
      Required = True
    end
    object cdsNfERateioidGerencial: TIntegerField
      FieldName = 'idGerencial'
      Required = True
    end
    object cdsNfERateioprRateio: TFMTBCDField
      FieldName = 'prRateio'
      Required = True
      Precision = 6
      Size = 3
    end
    object cdsNfERateiovlRateio: TFMTBCDField
      FieldName = 'vlRateio'
      Required = True
      Precision = 19
      Size = 4
    end
    object cdsNfERateioidNfERateio: TIntegerField
      FieldName = 'idNfERateio'
      Required = True
    end
    object cdsNfERateiodescResultado: TStringField
      FieldKind = fkLookup
      FieldName = 'descResultado'
      LookupDataSet = cdsResultado
      LookupKeyFields = 'idResultado'
      LookupResultField = 'descResultado'
      KeyFields = 'idResultado'
      Size = 100
      Lookup = True
    end
    object cdsNfERateiovlTotalRateio: TAggregateField
      FieldName = 'vlTotalRateio'
      Active = True
      currency = True
      DisplayName = ''
      Expression = 'SUM(vlRateio)'
    end
  end
  object dsNfERateio: TDataSource
    DataSet = cdsNfERateio
    OnStateChange = dsNfERateioStateChange
    Left = 1288
    Top = 424
  end
  object sdsTituloPag: TSQLDataSet
    SchemaName = 'gesys'
    GetMetadata = False
    CommandText = 'SELECT * FROM TituloPag'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmPadrao.dbConexao
    Left = 1320
    Top = 80
  end
  object dspTituloPag: TDataSetProvider
    DataSet = sdsTituloPag
    Options = [poAllowMultiRecordUpdates, poPropogateChanges, poAllowCommandText, poUseQuoteChar]
    BeforeUpdateRecord = dspMovCaixaBeforeUpdateRecord
    Left = 1352
    Top = 80
  end
  object cdsTituloPag: TClientDataSet
    Aggregates = <>
    CommandText = 'SELECT * FROM TituloPag'
    Params = <>
    ProviderName = 'dspTituloPag'
    AfterOpen = cdsPadraoAfterOpen
    AfterInsert = cdsTituloPagAfterInsert
    AfterEdit = cdsTituloPagAfterEdit
    OnReconcileError = cdsPadraoReconcileError
    Left = 1384
    Top = 80
    object cdsTituloPagidTituloPag: TIntegerField
      FieldName = 'idTituloPag'
      Required = True
    end
    object cdsTituloPagidEmpresa: TIntegerField
      FieldName = 'idEmpresa'
      Required = True
    end
    object cdsTituloPagidFornecedor: TIntegerField
      FieldName = 'idFornecedor'
      Required = True
    end
    object cdsTituloPagnrTituloPag: TStringField
      FieldName = 'nrTituloPag'
      Required = True
      FixedChar = True
    end
    object cdsTituloPagidDocSerie: TStringField
      FieldName = 'idDocSerie'
      Required = True
      FixedChar = True
      Size = 5
    end
    object cdsTituloPagtpDocumento: TStringField
      FieldName = 'tpDocumento'
      FixedChar = True
    end
    object cdsTituloPagdtEmissao: TSQLTimeStampField
      FieldName = 'dtEmissao'
      Required = True
    end
    object cdsTituloPagidSafra: TIntegerField
      FieldName = 'idSafra'
      Required = True
    end
    object cdsTituloPagidBanco: TIntegerField
      FieldName = 'idBanco'
    end
    object cdsTituloPagidIndice: TSmallintField
      FieldName = 'idIndice'
      Required = True
    end
    object cdsTituloPagidMovFinanceira: TIntegerField
      FieldName = 'idMovFinanceira'
      Required = True
    end
    object cdsTituloPagidResultado: TIntegerField
      FieldName = 'idResultado'
    end
    object cdsTituloPagidRateio: TSmallintField
      FieldName = 'idRateio'
    end
    object cdsTituloPagidGerencial: TIntegerField
      FieldName = 'idGerencial'
    end
    object cdsTituloPagobsTituloPag: TStringField
      FieldName = 'obsTituloPag'
      FixedChar = True
      Size = 250
    end
    object cdsTituloPagvlTituloPag: TFMTBCDField
      FieldName = 'vlTituloPag'
      Required = True
      Precision = 10
      Size = 2
    end
    object cdsTituloPagqtParcelas: TSmallintField
      FieldName = 'qtParcelas'
      Required = True
    end
    object cdsTituloPagdtVencimentoIni: TSQLTimeStampField
      FieldName = 'dtVencimentoIni'
      Required = True
    end
    object cdsTituloPagdiasVencimento: TSmallintField
      FieldName = 'diasVencimento'
      Required = True
    end
    object cdsTituloPagprMulta: TFMTBCDField
      FieldName = 'prMulta'
      Required = True
      Precision = 5
      Size = 3
    end
    object cdsTituloPagprDesconto: TFMTBCDField
      FieldName = 'prDesconto'
      Required = True
      Precision = 5
      Size = 3
    end
    object cdsTituloPagprJuros: TFMTBCDField
      FieldName = 'prJuros'
      Required = True
      Precision = 5
      Size = 3
    end
    object cdsTituloPagincMes: TStringField
      FieldName = 'incMes'
      Required = True
      FixedChar = True
      Size = 1
    end
    object cdsTituloPagstTituloPag: TStringField
      FieldName = 'stTituloPag'
      Required = True
      FixedChar = True
      Size = 15
    end
    object cdsTituloPagidCadEmpresa: TSmallintField
      FieldName = 'idCadEmpresa'
      Required = True
    end
    object cdsTituloPagidPortador: TSmallintField
      FieldName = 'idPortador'
      OnValidate = cdsTituloPagidPortadorValidate
    end
    object cdsTituloPagidConta: TSmallintField
      FieldName = 'idConta'
    end
    object cdsTituloPagidDocumento: TIntegerField
      FieldName = 'idDocumento'
    end
  end
  object dsTituloPag: TDataSource
    DataSet = cdsTituloPag
    Left = 1416
    Top = 80
  end
  object sdsTituloPagParc: TSQLDataSet
    SchemaName = 'gesys'
    GetMetadata = False
    CommandText = 'SELECT * FROM TituloPagParc'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmPadrao.dbConexao
    Left = 1320
    Top = 112
  end
  object dspTituloPagParc: TDataSetProvider
    DataSet = sdsTituloPagParc
    Options = [poAllowMultiRecordUpdates, poPropogateChanges, poAllowCommandText, poUseQuoteChar]
    BeforeUpdateRecord = dspMovCaixaBeforeUpdateRecord
    Left = 1352
    Top = 112
  end
  object cdsTituloPagParc: TClientDataSet
    Aggregates = <>
    CommandText = 'SELECT * FROM TituloPagParc'
    Params = <>
    ProviderName = 'dspTituloPagParc'
    AfterOpen = cdsPadraoAfterOpen
    OnReconcileError = cdsPadraoReconcileError
    Left = 1384
    Top = 112
  end
  object dsTituloPagParc: TDataSource
    DataSet = cdsTituloPagParc
    OnStateChange = dsTituloPagParcStateChange
    Left = 1416
    Top = 112
  end
  object dsNfETransporte: TDataSource
    DataSet = cdsNfETransporte
    Left = 1288
    Top = 360
  end
  object cdsNfETransporte: TClientDataSet
    Aggregates = <>
    CommandText = 'SELECT * FROM NfETransporte'
    Params = <>
    ProviderName = 'dspNfETransporte'
    AfterOpen = cdsPadraoAfterOpen
    AfterInsert = cdsNfEValorAfterEdit
    AfterEdit = cdsNfEValorAfterEdit
    OnReconcileError = cdsPadraoReconcileError
    Left = 1256
    Top = 360
    object cdsNfETransporteidEmpresa: TIntegerField
      FieldName = 'idEmpresa'
      Required = True
    end
    object cdsNfETransporteidCadEmpresa: TSmallintField
      FieldName = 'idCadEmpresa'
      Required = True
    end
    object cdsNfETransporteidDocSerie: TStringField
      FieldName = 'idDocSerie'
      Required = True
      Size = 5
    end
    object cdsNfETransporteidFornecedor: TIntegerField
      FieldName = 'idFornecedor'
      Required = True
    end
    object cdsNfETransporteidCadFornecedor: TSmallintField
      FieldName = 'idCadFornecedor'
      Required = True
    end
    object cdsNfETransporteidNfE: TIntegerField
      FieldName = 'idNfE'
      Required = True
    end
    object cdsNfETransportedescTransportador: TStringField
      FieldName = 'descTransportador'
      Size = 50
    end
    object cdsNfETransporteidCnpjCpf: TStringField
      FieldName = 'idCnpjCpf'
      Size = 18
    end
    object cdsNfETransporteidInscEstadual: TStringField
      FieldName = 'idInscEstadual'
    end
    object cdsNfETransportePlaca: TStringField
      FieldName = 'Placa'
      Size = 8
    end
    object cdsNfETransporteufPlaca: TStringField
      FieldName = 'ufPlaca'
      Size = 2
    end
    object cdsNfETransportedescEndereco: TStringField
      FieldName = 'descEndereco'
      Size = 60
    end
    object cdsNfETransporteidFrete: TSmallintField
      FieldName = 'idFrete'
    end
    object cdsNfETransporteidCidade: TIntegerField
      FieldName = 'idCidade'
    end
    object cdsNfETransporteqtProduto: TFMTBCDField
      FieldName = 'qtProduto'
      Precision = 10
      Size = 3
    end
    object cdsNfETransportedescEspecie: TStringField
      FieldName = 'descEspecie'
    end
    object cdsNfETransportedescMarca: TStringField
      FieldName = 'descMarca'
    end
    object cdsNfETransportedescNumero: TStringField
      FieldName = 'descNumero'
    end
    object cdsNfETransporteqtPesoBruto: TFMTBCDField
      FieldName = 'qtPesoBruto'
      Precision = 10
      Size = 3
    end
    object cdsNfETransporteqtPesoLiquido: TFMTBCDField
      FieldName = 'qtPesoLiquido'
      Precision = 10
      Size = 3
    end
    object cdsNfETransportedescVeiculo: TStringField
      FieldName = 'descVeiculo'
      Size = 30
    end
    object cdsNfETransporteidMotorista: TSmallintField
      FieldName = 'idMotorista'
    end
  end
  object dspNfETransporte: TDataSetProvider
    DataSet = sdsNfETransporte
    Options = [poAllowMultiRecordUpdates, poPropogateChanges, poAllowCommandText, poUseQuoteChar]
    BeforeUpdateRecord = dspNfEProdutoBeforeUpdateRecord
    Left = 1224
    Top = 360
  end
  object sdsNfETransporte: TSQLDataSet
    SchemaName = 'gesys'
    GetMetadata = False
    CommandText = 'SELECT * FROM NfETransporte'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmPadrao.dbConexao
    Left = 1192
    Top = 360
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
    Left = 1192
    Top = 296
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
    Left = 1224
    Top = 296
  end
  object dsRomaneioNf: TDataSource
    DataSet = cdsRomaneioNf
    Left = 1288
    Top = 480
  end
  object cdsRomaneioNf: TClientDataSet
    Aggregates = <>
    CommandText = 'SELECT * FROM RomaneioNf'
    Params = <>
    ProviderName = 'dspRomaneioNf'
    AfterOpen = cdsPadraoAfterOpen
    OnReconcileError = cdsPadraoReconcileError
    Left = 1256
    Top = 488
    object cdsRomaneioNfidEmpresa: TIntegerField
      FieldName = 'idEmpresa'
      Required = True
    end
    object cdsRomaneioNfidCadEmpresa: TSmallintField
      FieldName = 'idCadEmpresa'
      Required = True
    end
    object cdsRomaneioNfidRomaneio: TIntegerField
      FieldName = 'idRomaneio'
      Required = True
    end
    object cdsRomaneioNfidDocSerie: TStringField
      FieldName = 'idDocSerie'
      Required = True
      FixedChar = True
      Size = 5
    end
    object cdsRomaneioNfidNf: TIntegerField
      FieldName = 'idNf'
      Required = True
    end
  end
  object dspRomaneioNf: TDataSetProvider
    DataSet = sdsRomaneioNf
    Options = [poAllowMultiRecordUpdates, poPropogateChanges, poAllowCommandText, poUseQuoteChar]
    Left = 1224
    Top = 488
  end
  object sdsRomaneioNf: TSQLDataSet
    SchemaName = 'gesys'
    GetMetadata = False
    CommandText = 'SELECT * FROM RomaneioNf'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmPadrao.dbConexao
    Left = 1192
    Top = 488
  end
  object dspTituloPagMov: TDataSetProvider
    DataSet = sdsTituloPagMov
    Options = [poAllowMultiRecordUpdates, poPropogateChanges, poAllowCommandText, poUseQuoteChar]
    BeforeUpdateRecord = dspTituloPagMovBeforeUpdateRecord
    Left = 1368
    Top = 168
  end
  object cdsTituloPagMov: TClientDataSet
    Aggregates = <>
    CommandText = 'SELECT * FROM TituloPagMov'
    Params = <>
    ProviderName = 'dspTituloPagMov'
    AfterInsert = cdsTituloPagMovAfterInsert
    OnReconcileError = cdsPadraoReconcileError
    Left = 1400
    Top = 168
  end
  object sdsTituloPagMov: TSQLDataSet
    SchemaName = 'gesys'
    GetMetadata = False
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmPadrao.dbConexao
    Left = 1336
    Top = 168
  end
  object FindContaFor: TCFind
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
    Left = 1288
    Top = 296
  end
  object cdsTemp: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    Params = <>
    AfterOpen = cdsPadraoAfterOpen
    OnReconcileError = cdsPadraoReconcileError
    Left = 1088
    Top = 488
    object cdsTempidEmpresa: TIntegerField
      FieldName = 'idEmpresa'
    end
    object cdsTempidCadEmpresa: TIntegerField
      FieldName = 'idCadEmpresa'
    end
    object cdsTempidFornecedor: TIntegerField
      FieldName = 'idFornecedor'
    end
    object cdsTempidCadFornecedor: TIntegerField
      FieldName = 'idCadFornecedor'
    end
    object cdsTempidNfE: TIntegerField
      FieldName = 'idNfE'
    end
    object cdsTempidGerencial: TIntegerField
      FieldName = 'idGerencial'
    end
    object cdsTempidResult: TIntegerField
      FieldName = 'idResult'
    end
    object cdsTempprRateio: TFloatField
      FieldName = 'prRateio'
    end
    object cdsTempvlRateio: TCurrencyField
      FieldName = 'vlRateio'
    end
    object cdsTempidNfERateio: TIntegerField
      FieldName = 'idNfERateio'
    end
    object cdsTempidNfEProduto: TIntegerField
      FieldName = 'idNfEProduto'
    end
    object cdsTempidResultado: TIntegerField
      FieldName = 'idResultado'
    end
    object cdsTempidDocSerie: TStringField
      FieldName = 'idDocSerie'
    end
    object cdsTempidRateio: TIntegerField
      FieldName = 'idRateio'
    end
    object cdsTempvlTotalRateio: TAggregateField
      FieldName = 'vlTotalRateio'
      Active = True
      currency = True
      DisplayName = ''
      Expression = 'SUM(vlRateio)'
    end
  end
  object cdsTmpProd: TClientDataSet
    Aggregates = <>
    Params = <>
    AfterOpen = cdsPadraoAfterOpen
    OnReconcileError = cdsPadraoReconcileError
    Left = 1384
    Top = 464
    object cdsTmpProdidProduto: TIntegerField
      FieldName = 'idProduto'
    end
  end
  object sdsPedidoCompra: TSQLDataSet
    SchemaName = 'gesys'
    GetMetadata = False
    CommandText = 'SELECT * FROM vPedidoCompraNFE'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmPadrao.dbConexao
    Left = 1192
    Top = 536
  end
  object dspPedidoCompra: TDataSetProvider
    DataSet = sdsPedidoCompra
    Options = [poAllowMultiRecordUpdates, poPropogateChanges, poAllowCommandText, poUseQuoteChar]
    Left = 1224
    Top = 536
  end
  object cdsPedidoCompra: TClientDataSet
    Aggregates = <>
    CommandText = 'SELECT * FROM vPedidoCompraNFE'
    Params = <>
    ProviderName = 'dspPedidoCompra'
    OnReconcileError = cdsPadraoReconcileError
    Left = 1256
    Top = 536
    object cdsPedidoCompraidEmpresa: TIntegerField
      FieldName = 'idEmpresa'
      Required = True
    end
    object cdsPedidoCompraidCadEmpresaOri: TSmallintField
      FieldName = 'idCadEmpresaOri'
    end
    object cdsPedidoCompraidPedidoCompra: TIntegerField
      FieldName = 'idPedidoCompra'
      Required = True
    end
    object cdsPedidoCompraidCadEmpresa: TSmallintField
      FieldName = 'idCadEmpresa'
      Required = True
    end
    object cdsPedidoCompraidFornecedor: TIntegerField
      FieldName = 'idFornecedor'
      Required = True
    end
    object cdsPedidoCompraidCadFornecedor: TSmallintField
      FieldName = 'idCadFornecedor'
      Required = True
    end
    object cdsPedidoCompraidDocSerie: TStringField
      FieldName = 'idDocSerie'
      Required = True
      Size = 5
    end
    object cdsPedidoCompraidNfE: TIntegerField
      FieldName = 'idNfE'
      Required = True
    end
    object cdsPedidoCompradtPedido: TSQLTimeStampField
      FieldName = 'dtPedido'
      Required = True
    end
  end
  object dsPedidoCompra: TDataSource
    DataSet = cdsPedidoCompra
    Left = 1296
    Top = 536
  end
  object dspNfEImporta: TDataSetProvider
    DataSet = sdsNfEImporta
    Options = [poAllowMultiRecordUpdates, poPropogateChanges, poAllowCommandText, poUseQuoteChar]
    BeforeUpdateRecord = dspNfEProdutoBeforeUpdateRecord
    Left = 1224
    Top = 584
  end
  object dsNfEImporta: TDataSource
    DataSet = cdsNfEImporta
    Left = 1288
    Top = 584
  end
  object cdsNfEImporta: TClientDataSet
    Aggregates = <>
    CommandText = 'SELECT * FROM NfEImporta'
    Params = <>
    ProviderName = 'dspNfEImporta'
    AfterOpen = cdsPadraoAfterOpen
    AfterInsert = cdsNfEValorAfterEdit
    AfterEdit = cdsNfEValorAfterEdit
    OnReconcileError = cdsPadraoReconcileError
    Left = 1256
    Top = 584
    object cdsNfEImportaidEmpresa: TIntegerField
      FieldName = 'idEmpresa'
      Required = True
    end
    object cdsNfEImportaidCadEmpresa: TSmallintField
      FieldName = 'idCadEmpresa'
      Required = True
    end
    object cdsNfEImportaidDocSerie: TStringField
      FieldName = 'idDocSerie'
      Required = True
      Size = 5
    end
    object cdsNfEImportaidFornecedor: TIntegerField
      FieldName = 'idFornecedor'
      Required = True
    end
    object cdsNfEImportaidCadFornecedor: TSmallintField
      FieldName = 'idCadFornecedor'
      Required = True
    end
    object cdsNfEImportaidNfE: TIntegerField
      FieldName = 'idNfE'
      Required = True
    end
    object cdsNfEImportachaveNFe: TStringField
      FieldName = 'chaveNFe'
      Required = True
      Size = 44
    end
  end
  object sdsNfEImporta: TSQLDataSet
    SchemaName = 'gesys'
    GetMetadata = False
    CommandText = 'SELECT * FROM NfEImporta'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmPadrao.dbConexao
    Left = 1192
    Top = 584
  end
  object cdsProdFornecedor: TClientDataSet
    Aggregates = <>
    CommandText = 'SELECT * FROM ProdutoFornecedor WHERE 1=2'
    Params = <>
    ProviderName = 'dspProdFornecedor'
    AfterOpen = cdsPadraoAfterOpen
    OnReconcileError = cdsPadraoReconcileError
    Left = 1256
    Top = 632
    object cdsProdFornecedoridProduto: TIntegerField
      FieldName = 'idProduto'
      Required = True
    end
    object cdsProdFornecedoridFornecedor: TIntegerField
      FieldName = 'idFornecedor'
      Required = True
    end
    object cdsProdFornecedorcodFornecedor: TStringField
      FieldName = 'codFornecedor'
      Size = 60
    end
  end
  object dsProdFornecedor: TDataSource
    DataSet = cdsProdFornecedor
    Left = 1288
    Top = 632
  end
  object dspProdFornecedor: TDataSetProvider
    DataSet = sdsProdFornecedor
    Options = [poAllowMultiRecordUpdates, poPropogateChanges, poAllowCommandText, poUseQuoteChar]
    Left = 1224
    Top = 632
  end
  object sdsProdFornecedor: TSQLDataSet
    SchemaName = 'gesys'
    GetMetadata = False
    CommandText = 'SELECT * FROM ProdutoFornecedor WHERE 1=2'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmPadrao.dbConexao
    Left = 1192
    Top = 632
  end
end
