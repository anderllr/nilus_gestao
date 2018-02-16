inherited FrmCadMaquinaManutencao: TFrmCadMaquinaManutencao
  Caption = 'Lan'#231'amento de Manuten'#231#245'es do Ve'#237'culo/M'#225'quina'
  ClientHeight = 742
  ClientWidth = 1184
  Icon.Data = {
    0000010001001010000001002000680400001600000028000000100000002000
    0000010020000000000000040000000000000000000000000000000000000000
    00000000000000000000000000000000000000000000000000050000001C0000
    0044000000050000000000000000000000000000000000000000000000000000
    00000000000D00000022000000230000001E0806065A060505A4281E1EC43228
    28D800000076000000650000002A000000210000002200000010000000010505
    0522323232A84A4A4AC84F4F4FC4363939C53F3434F1B79393FFCFA7A7FFCAA2
    A2FF796262FE484343F43A3B3BC94B4B4BC5424242CA1313138F000000181B1B
    1B66888888FDB0B0B0E9ADAEAEE7645959FD7A6060FFEFBDBDFFF3C2C2FFE3B5
    B5FFDCB3B3FF5B5050FE4C4C4CF89F9F9FEAA6A6A6F1494949E40000003A2020
    206E8C8C8CF5ACACACE1A8A9A9E0887676F7D5ABABFFA77E7EFF3C2C2CFFB18D
    8DFF9A7777FFD1ABABFF7D7676F4A0A1A1E0A4A4A4E9515151E7000000411F1F
    1F6C8B8B8BF5ACACACE2B0B1B1DE6A6161F0DBACACFFC59E9EFF826B6BFFE6B4
    B4FF785B5BFFB08E8EFF4B4B4BF29D9E9EE2A4A4A4E9505050E6000000401F1F
    1F6C8C8C8CF5AFAFAFE2A2A3A3E07D6969FBE5BFBFFED7ABABFFB48C8CFF6C50
    50FF8B6F6FFFE3BEBEFF7C7474F8969898E2A5A5A5E9505050E6000000401F1F
    1F6C8C8C8CF5AEAEAEE2B5B5B5DF9C9E9EE2746969F7E1B4B4FFA48686FF8E73
    73FFBEA0A0FF7E7A7AF5A0A0A0E2B1B1B1DFA1A1A1E9505050E6000000402020
    206C8B8B8BF5ABABABE2B5B5B5DEAEB0B0DD696161F4998C8CF6937C7CFE937F
    7FFE736868FC848585E8BABABADCB0B0B0E0A1A1A1E9505050E6000000402020
    206C8B8B8BF5ABABABE2B4B4B4DEB4B4B4DEAEAEAEDFA4A6A6DF717070ED7F7F
    7FED919292E4ACABABE2ACACACE1A7A7A7E3999999EC4D4D4DE8000000401F1F
    1F6C8C8C8CF5ADADADE2B5B5B5DEB5B5B5DEB5B5B5DEAEAEAEE0A1A2A2E49292
    92E88F8F8FE98C8C8CE98B8B8BEA898989EB858585F3494949EA000000401F1F
    1F6C888888F7A7A7A7E4AEAEAEE0AEAEAEE0ABABABE19D9D9DE5949494EEA4A4
    A4F8AAAAAAFBABABABFBABABABFBADADADFB979797FF434343EF0000003A1E1E
    1E6D7C7C7CFB8F8F8FEB959595E7969696E7939393E78E8E8EEDA7A7A7F8A7A7
    A7F89B9B9BF19B9B9BF19B9B9BF29E9E9EF27A7A7AF3272727A5000000131C1C
    1C70787878FF929292F6949494F4959595F4959595F4939393F9656565F70707
    07670000001A0000001C0000001D0000001D0000001D0000000A000000001313
    1354707070FFBABABAFFBEBEBEFFBDBDBDFFC1C1C1FF9E9E9EFF3D3D3DD70000
    0022000000000000000000000000000000000000000000000000000000000404
    04061111114E17171768171717671717176717171767141414680A0A0A350000
    000000000000000000000000000000000000000000000000000000000000FC3F
    0000800000000000000000000000000000000000000000000000000000000000
    00000000000000000000000000000000000000010000007F000000FF0000}
  ExplicitWidth = 1200
  ExplicitHeight = 781
  PixelsPerInch = 96
  TextHeight = 13
  inherited Bevel1: TBevel
    Top = 707
    Width = 1184
    ExplicitTop = 561
    ExplicitWidth = 497
  end
  inherited Bevel2: TBevel
    Width = 1184
    ExplicitWidth = 1067
  end
  inherited PagAbas: TCPageControl
    Width = 1184
    Height = 654
    OnChange = PagAbasChange
    ExplicitWidth = 1184
    ExplicitHeight = 654
    inherited TabAbas: TTabSheet
      Caption = 'Dados Gerais'
      ExplicitLeft = 4
      ExplicitTop = 25
      ExplicitWidth = 1176
      ExplicitHeight = 625
      object CGroupBox1: TCGroupBox
        Left = 8
        Top = 7
        Width = 657
        Height = 187
        Caption = 'Dados da Opera'#231#227'o'
        TabOrder = 0
        object CLabel60: TCLabel
          Left = 150
          Top = 23
          Width = 51
          Height = 13
          Alignment = taRightJustify
          Caption = 'M'#225'q./Ve'#237'c.'
        end
        object CLabel3: TCLabel
          Left = 363
          Top = 49
          Width = 23
          Height = 13
          Alignment = taRightJustify
          Caption = 'Data'
        end
        object CLabel4: TCLabel
          Left = 43
          Top = 23
          Width = 33
          Height = 13
          Alignment = taRightJustify
          Caption = 'C'#243'digo'
        end
        object CLabel8: TCLabel
          Left = 31
          Top = 48
          Width = 45
          Height = 13
          Alignment = taRightJustify
          Caption = 'Atividade'
        end
        object CLabel5: TCLabel
          Left = 18
          Top = 154
          Width = 58
          Height = 13
          Alignment = taRightJustify
          Caption = 'Observa'#231#227'o'
        end
        object CLabel7: TCLabel
          Left = 491
          Top = 47
          Width = 75
          Height = 13
          Alignment = taRightJustify
          Caption = 'Hora / Km Atual'
        end
        object CLabel11: TCLabel
          Left = 515
          Top = 23
          Width = 51
          Height = 13
          Alignment = taRightJustify
          Caption = 'Valor Total'
        end
        object CLabel59: TCLabel
          Left = 436
          Top = 73
          Width = 68
          Height = 13
          Alignment = taRightJustify
          Caption = 'Insc. Estadual'
        end
        object LblCad: TCLabel
          Left = 39
          Top = 73
          Width = 37
          Height = 13
          Alignment = taRightJustify
          Caption = 'Fornec.'
        end
        object CLabel24: TCLabel
          Left = 488
          Top = 95
          Width = 52
          Height = 13
          Alignment = taRightJustify
          Caption = 'Nota Fiscal'
        end
        object DBEidMaquina: TCDBEdit
          Left = 207
          Top = 20
          Width = 62
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'idMaquina'
          DataSource = dsPadrao
          TabOrder = 1
          OnEnter = DBEidMaquinaEnter
          OnExit = DBEidMaquinaExit
          Find = dmFind.FindMaquina
          AcaoCad = frmPrincipal.actCadMaquina
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEdtManutencao: TCDBEdit
          Left = 392
          Top = 45
          Width = 79
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'dtManutencao'
          DataSource = dsPadrao
          MaxLength = 10
          TabOrder = 6
          DecimalControl = True
          KeyMode = kmDate
        end
        object DBEidManutencao: TCDBEdit
          Left = 82
          Top = 20
          Width = 62
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'idManutencao'
          DataSource = dsPadrao
          TabOrder = 0
          OnExit = DBEidManutencaoExit
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEidTipoAtividade: TCDBEdit
          Left = 82
          Top = 45
          Width = 46
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'idTipoAtividade'
          DataSource = dsPadrao
          TabOrder = 4
          Find = dmFind.FindTipoAtividade
          AcaoCad = frmPrincipal.actCadTipoAtividade
          DecimalControl = True
          KeyMode = kmNormal
        end
        object LookTipoAtividade: TCLookUp
          Left = 134
          Top = 45
          Width = 223
          Height = 19
          Alignment = taLeftJustify
          BevelInner = bvSpace
          BevelOuter = bvLowered
          Color = 14149350
          ParentBackground = False
          TabOrder = 5
          Key.Strings = (
            'idTipoAtividade')
          LookUpKey.Strings = (
            'idTipoAtividade')
          AlternateSQL.Strings = (
            
              'SELECT descTipoAtividade FROM TipoAtividade WHERE stTipoAtividad' +
              'e = '#39'ATIVO'#39' AND idTipoAtividade = ?')
          ClientDataSet = cdsLookup
          DataSource = dsPadrao
          ValidaCampoObrigatorio = True
          CampoObrigatorio = True
          LookUpTable = 'TipoAtividade'
          ReturnField = 'descTipoAtividade'
        end
        object CLookUp10: TCLookUp
          Left = 275
          Top = 20
          Width = 234
          Height = 19
          Alignment = taLeftJustify
          BevelInner = bvSpace
          BevelOuter = bvLowered
          Color = 14149350
          ParentBackground = False
          TabOrder = 2
          Key.Strings = (
            'idMaquina')
          LookUpKey.Strings = (
            'idMaquina')
          ClientDataSet = cdsLookup
          DataSource = dsPadrao
          ValidaCampoObrigatorio = True
          CampoObrigatorio = True
          LookUpTable = 'Maquina'
          ReturnField = 'descMaquina'
        end
        object DBMobsManutencao: TCDBMemo
          Tag = 4
          Left = 82
          Top = 151
          Width = 566
          Height = 31
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'obsManutencao'
          DataSource = dsPadrao
          ScrollBars = ssVertical
          TabOrder = 16
          KeyMemo = kmmNormal
        end
        object DBEhr_kmAtual: TCDBEdit
          Left = 572
          Top = 45
          Width = 76
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'hr_kmAtual'
          DataSource = dsPadrao
          TabOrder = 7
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEvlManutencao: TCDBEdit
          Left = 572
          Top = 20
          Width = 76
          Height = 19
          TabStop = False
          BevelKind = bkTile
          BorderStyle = bsNone
          Color = 15201011
          DataField = 'vlManutencao'
          DataSource = dsPadrao
          ReadOnly = True
          TabOrder = 3
          DecimalControl = True
          KeyMode = kmNormal
        end
        object lookEstadoFor: TCLookUp
          Left = 436
          Top = 92
          Width = 46
          Height = 19
          Alignment = taLeftJustify
          BevelInner = bvSpace
          BevelOuter = bvLowered
          Color = 14149350
          ParentBackground = False
          TabOrder = 13
          Key.Strings = (
            'idFornecedor')
          LookUpKey.Strings = (
            'idFornecedor')
          AlternateSQL.Strings = (
            
              'SELECT idEstado FROM vCadFornecedorFiscal WHERE idCadFornecedor ' +
              '= 1 AND idFornecedor = ?')
          ClientDataSet = cdsLookup
          DataSource = dsPadrao
          ValidaCampoObrigatorio = True
          CampoObrigatorio = True
          LookUpTable = 'vCadFornecedorFiscal'
          ReturnField = 'idEstado'
        end
        object lookCidadeFor: TCLookUp
          Left = 280
          Top = 92
          Width = 150
          Height = 19
          Alignment = taLeftJustify
          BevelInner = bvSpace
          BevelOuter = bvLowered
          Color = 14149350
          ParentBackground = False
          TabOrder = 12
          Key.Strings = (
            'idFornecedor')
          LookUpKey.Strings = (
            'idFornecedor')
          AlternateSQL.Strings = (
            
              'SELECT descCidade FROM vCadFornecedorFiscal WHERE idCadFornecedo' +
              'r = 1 AND idFornecedor = ?')
          ClientDataSet = cdsLookup
          DataSource = dsPadrao
          ValidaCampoObrigatorio = True
          CampoObrigatorio = True
          LookUpTable = 'vCadFornecedorFiscal'
          ReturnField = 'descCidade'
        end
        object lookEnderecoFor: TCLookUp
          Left = 82
          Top = 92
          Width = 192
          Height = 19
          Alignment = taLeftJustify
          BevelInner = bvSpace
          BevelOuter = bvLowered
          Color = 14149350
          ParentBackground = False
          TabOrder = 11
          Key.Strings = (
            'idFornecedor')
          LookUpKey.Strings = (
            'idFornecedor')
          AlternateSQL.Strings = (
            
              'SELECT endereco FROM vCadFornecedorFiscal WHERE idCadFornecedor ' +
              '= 1 AND idFornecedor = ?')
          ClientDataSet = cdsLookup
          DataSource = dsPadrao
          ValidaCampoObrigatorio = True
          CampoObrigatorio = True
          LookUpTable = 'vCadFornecedorFiscal'
          ReturnField = 'endereco'
        end
        object lookIeFornecedor: TCLookUp
          Left = 510
          Top = 70
          Width = 138
          Height = 19
          Alignment = taLeftJustify
          BevelInner = bvSpace
          BevelOuter = bvLowered
          Color = 14149350
          ParentBackground = False
          TabOrder = 10
          Key.Strings = (
            'idFornecedor')
          LookUpKey.Strings = (
            'idFornecedor')
          AlternateSQL.Strings = (
            
              'SELECT idInscEstadual FROM vCadFornecedorFiscal WHERE idCadForne' +
              'cedor = 1 AND idFornecedor = ?')
          ClientDataSet = cdsLookup
          DataSource = dsPadrao
          ValidaCampoObrigatorio = True
          CampoObrigatorio = True
          LookUpTable = 'vCadFornecedorFiscal'
          ReturnField = 'idInscEstadual'
        end
        object LookFornecedorFiscal: TCLookUp
          Left = 150
          Top = 70
          Width = 280
          Height = 19
          Alignment = taLeftJustify
          BevelInner = bvSpace
          BevelOuter = bvLowered
          Color = 14149350
          ParentBackground = False
          TabOrder = 9
          Key.Strings = (
            'idFornecedor')
          LookUpKey.Strings = (
            'idFornecedor')
          AlternateSQL.Strings = (
            
              'SELECT descCadFornecedor FROM vCadFornecedorFiscal WHERE idCadFo' +
              'rnecedor = 1 AND idFornecedor = ?')
          ClientDataSet = cdsLookup
          DataSource = dsPadrao
          ValidaCampoObrigatorio = True
          CampoObrigatorio = True
          LookUpTable = 'vCadFornecedorFiscal'
          ReturnField = 'descCadFornecedor'
        end
        object DBEidFornecedor: TCDBEdit
          Left = 82
          Top = 70
          Width = 62
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'idFornecedor'
          DataSource = dsPadrao
          TabOrder = 8
          Find = dmFind.FindFornecedor
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBRGtpManutencao: TCDBRadioGroup
          Left = 82
          Top = 114
          Width = 566
          Height = 31
          Caption = 'Tipo de Manuten'#231#227'o'
          Color = 16120570
          Columns = 2
          DataField = 'tpManutencao'
          DataSource = dsPadrao
          Items.Strings = (
            'Preventiva'
            'Corretiva')
          ParentBackground = False
          ParentColor = False
          TabOrder = 15
          Values.Strings = (
            'P'
            'C')
        end
        object DBEidNf: TCDBEdit
          Left = 546
          Top = 92
          Width = 102
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'idNf'
          DataSource = dsPadrao
          TabOrder = 14
          OnExit = DBEidNfExit
          DecimalControl = True
          KeyMode = kmNormal
        end
      end
      object CGroupBox2: TCGroupBox
        Left = 8
        Top = 200
        Width = 566
        Height = 119
        Caption = 'Dados relativos '#224' Produ'#231#227'o'
        TabOrder = 1
        object CLabel12: TCLabel
          Left = 45
          Top = 95
          Width = 31
          Height = 13
          Alignment = taRightJustify
          Caption = 'Rateio'
        end
        object CLabel1: TCLabel
          Left = 28
          Top = 70
          Width = 48
          Height = 13
          Alignment = taRightJustify
          Caption = 'Resultado'
        end
        object CLabel2: TCLabel
          Left = 50
          Top = 20
          Width = 26
          Height = 13
          Alignment = taRightJustify
          Caption = 'Safra'
        end
        object CLabel86: TCLabel
          Left = 32
          Top = 45
          Width = 44
          Height = 13
          Alignment = taRightJustify
          Caption = 'Gerencial'
        end
        object CBitBtn6: TCBitBtn
          Left = 346
          Top = 92
          Width = 104
          Height = 19
          Action = frmPrincipal.actCadPlanoRateio
          Caption = '&Plano de Rateio'
          TabOrder = 11
          TabStop = False
        end
        object LookRateio: TCLookUp
          Left = 136
          Top = 92
          Width = 204
          Height = 19
          Alignment = taLeftJustify
          BevelInner = bvSpace
          BevelOuter = bvLowered
          Color = 14149350
          ParentBackground = False
          TabOrder = 10
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
          Left = 82
          Top = 92
          Width = 48
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'idRateio'
          DataSource = dsPadrao
          TabOrder = 9
          OnEnter = DBEidMaquinaEnter
          OnExit = DBEidResultadoExit
          Find = dmFind.FindRateio
          DecimalControl = True
          KeyMode = kmNormal
        end
        object CBitBtn5: TCBitBtn
          Left = 456
          Top = 67
          Width = 96
          Height = 19
          Action = frmPrincipal.actCadResultado
          Caption = '&Resultado'
          TabOrder = 8
          TabStop = False
        end
        object LookTalhao: TCLookUp
          Left = 136
          Top = 67
          Width = 314
          Height = 19
          Alignment = taLeftJustify
          BevelInner = bvSpace
          BevelOuter = bvLowered
          Color = 14149350
          ParentBackground = False
          TabOrder = 7
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
          Left = 82
          Top = 67
          Width = 48
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'idResultado'
          DataSource = dsPadrao
          TabOrder = 6
          OnEnter = DBEidMaquinaEnter
          OnExit = DBEidResultadoExit
          Find = dmFind.FindResultado
          DecimalControl = True
          KeyMode = kmNormal
        end
        object CBitBtn7: TCBitBtn
          Left = 456
          Top = 17
          Width = 96
          Height = 19
          Action = frmPrincipal.actCadSafra
          Caption = '&Safra'
          TabOrder = 2
          TabStop = False
        end
        object LookSafra: TCLookUp
          Left = 136
          Top = 17
          Width = 314
          Height = 19
          Alignment = taLeftJustify
          BevelInner = bvSpace
          BevelOuter = bvLowered
          Color = 14149350
          ParentBackground = False
          TabOrder = 1
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
        object DBEidSafra: TCDBEdit
          Left = 82
          Top = 17
          Width = 48
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'idSafra'
          DataSource = dsPadrao
          TabOrder = 0
          Find = dmFind.FindSafra
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEidGerencial: TCDBEdit
          Left = 82
          Top = 42
          Width = 48
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'idGerencial'
          DataSource = dsPadrao
          TabOrder = 3
          Find = dmFind.FindGerenciaP
          DecimalControl = True
          KeyMode = kmNormal
        end
        object CLookUp2: TCLookUp
          Left = 136
          Top = 42
          Width = 314
          Height = 19
          Alignment = taLeftJustify
          BevelInner = bvSpace
          BevelOuter = bvLowered
          Color = 14149350
          ParentBackground = False
          TabOrder = 4
          Key.Strings = (
            'idGerencial')
          LookUpKey.Strings = (
            'idGerencial')
          AlternateSQL.Strings = (
            
              'SELECT DISTINCT descGerencial FROM vGerencial WHERE tpGerencial ' +
              '= '#39'SAIDAS'#39' AND idEmpresa = [DBEidEmpresa] AND idGerencial = ?')
          ClientDataSet = cdsLookup
          DataSource = dsPadrao
          ValidaCampoObrigatorio = True
          CampoObrigatorio = True
          LookUpTable = 'vGerencial'
          ReturnField = 'descGerencial'
        end
        object CBitBtn1: TCBitBtn
          Left = 456
          Top = 42
          Width = 96
          Height = 19
          Action = frmPrincipal.actCadGerencial
          Caption = '&Gerencial'
          TabOrder = 5
          TabStop = False
        end
      end
      object CGroupBox8: TCGroupBox
        Left = 8
        Top = 330
        Width = 566
        Height = 42
        Caption = 'Dep'#243'sito que ser'#227'o baixados os produtos conforme o caso'
        TabOrder = 2
        object CLabel10: TCLabel
          Left = 26
          Top = 18
          Width = 42
          Height = 13
          Alignment = taRightJustify
          Caption = 'Dep'#243'sito'
        end
        object CBitBtn4: TCBitBtn
          Left = 448
          Top = 16
          Width = 96
          Height = 19
          Action = frmPrincipal.actCadProdDeposito
          Caption = 'Dep'#243'sito'
          TabOrder = 2
          TabStop = False
        end
        object LookProdDeposito: TCLookUp
          Left = 128
          Top = 16
          Width = 314
          Height = 19
          Alignment = taLeftJustify
          BevelInner = bvSpace
          BevelOuter = bvLowered
          Color = 14149350
          ParentBackground = False
          TabOrder = 1
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
        object DBEidProdDeposito: TCDBEdit
          Left = 74
          Top = 16
          Width = 48
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'idProdDeposito'
          DataSource = dsPadrao
          TabOrder = 0
          OnExit = DBEidProdDepositoExit
          Find = dmFind.FindProdDeposito
          DecimalControl = True
          KeyMode = kmNormal
        end
      end
    end
    object TabProdutos: TTabSheet
      Caption = 'Produtos Consumidos'
      ImageIndex = 1
      object CGroupBox9: TCGroupBox
        Left = 9
        Top = 16
        Width = 561
        Height = 179
        Caption = 'Lan'#231'amento dos itens da manuten'#231#227'o'
        TabOrder = 0
        object CLabel40: TCLabel
          Left = 25
          Top = 129
          Width = 28
          Height = 13
          Alignment = taRightJustify
          Caption = 'Qtde.'
        end
        object CLabel45: TCLabel
          Left = 143
          Top = 129
          Width = 24
          Height = 13
          Alignment = taRightJustify
          Caption = 'Valor'
        end
        object CLabel46: TCLabel
          Left = 257
          Top = 129
          Width = 24
          Height = 13
          Alignment = taRightJustify
          Caption = 'Total'
        end
        object CLabel6: TCLabel
          Left = 31
          Top = 22
          Width = 22
          Height = 13
          Alignment = taRightJustify
          Caption = 'Item'
        end
        object CLabel9: TCLabel
          Left = 7
          Top = 95
          Width = 46
          Height = 13
          Alignment = taRightJustify
          Caption = 'Descri'#231#227'o'
        end
        object CLabel16: TCLabel
          Left = 371
          Top = 128
          Width = 82
          Height = 13
          Alignment = taRightJustify
          Caption = 'Data da Garantia'
        end
        object CLabel17: TCLabel
          Left = 14
          Top = 154
          Width = 39
          Height = 13
          Alignment = taRightJustify
          Caption = 'Inf.Gar.'
        end
        object CLabel23: TCLabel
          Left = 183
          Top = 22
          Width = 50
          Height = 13
          Alignment = taRightJustify
          Caption = 'Cod Fabri.'
        end
        object CLabel41: TCLabel
          Left = 98
          Top = 22
          Width = 26
          Height = 13
          Alignment = taRightJustify
          Caption = 'Prod.'
        end
        object DBEqtItem: TCDBEdit
          Left = 59
          Top = 126
          Width = 78
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'qtItem'
          DataSource = dsProdutos
          TabOrder = 5
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEvlItem: TCDBEdit
          Left = 173
          Top = 126
          Width = 78
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'vlItem'
          DataSource = dsProdutos
          TabOrder = 6
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEvlTotalProd: TCDBEdit
          Left = 287
          Top = 126
          Width = 78
          Height = 19
          TabStop = False
          BevelKind = bkTile
          BorderStyle = bsNone
          Color = 14149350
          DataField = 'vlTotalProd'
          DataSource = dsProdutos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 7
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBCKmovimentaEstoque: TCDBCheckBox
          Left = 420
          Top = 152
          Width = 130
          Height = 17
          Caption = 'Movimenta Estoque?'
          DataField = 'movimentaEstoque'
          DataSource = dsProdutos
          TabOrder = 10
          ValueChecked = 'S'
          ValueUnchecked = 'N'
          OnExit = DBCKmovimentaEstoqueExit
        end
        object DBEidItem: TCDBEdit
          Left = 59
          Top = 19
          Width = 33
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          Color = 14149350
          DataField = 'idItem'
          DataSource = dsProdutos
          ReadOnly = True
          TabOrder = 0
          OnExit = DBEidItemExit
          Find = dmFind.FindProduto
          AcaoCad = frmPrincipal.actCadProduto
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBRGtpItem: TCDBRadioGroup
          Left = 59
          Top = 47
          Width = 492
          Height = 31
          Caption = 'Tipo de Item de Manuten'#231#227'o'
          Color = 15201011
          Columns = 6
          DataField = 'tpItem'
          DataSource = dsProdutos
          Items.Strings = (
            'Pe'#231'as'
            'Servi'#231'os'
            'Filtros'
            'Lubrificantes'
            'Pneus'
            'Outros')
          ParentBackground = False
          ParentColor = False
          TabOrder = 3
          Values.Strings = (
            'P'
            'S'
            'F'
            'L'
            'N'
            'O')
          OnExit = DBRGtpItemExit
        end
        object DBMdescItem: TCDBMemo
          Tag = 4
          Left = 59
          Top = 84
          Width = 492
          Height = 36
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'descItem'
          DataSource = dsProdutos
          ParentShowHint = False
          ScrollBars = ssVertical
          ShowHint = False
          TabOrder = 4
          KeyMemo = kmmNormal
        end
        object DBEdtGarantia: TCDBEdit
          Left = 459
          Top = 126
          Width = 78
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'dtGarantia'
          DataSource = dsProdutos
          MaxLength = 10
          TabOrder = 8
          DecimalControl = True
          KeyMode = kmDate
        end
        object DBEinfoGarantia: TCDBEdit
          Left = 59
          Top = 151
          Width = 355
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'infoGarantia'
          DataSource = dsProdutos
          TabOrder = 9
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEcodFabricante: TCDBEdit
          Left = 238
          Top = 19
          Width = 64
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'codFabricante'
          DataSource = dsProdutos
          TabOrder = 2
          OnExit = DBEcodFabricanteExit
          Find = dmFind.FindProduto
          AcaoCad = frmPrincipal.actCadProduto
          DecimalControl = True
          KeyMode = kmNormal
        end
        object LookProduto: TCLookUp
          Left = 308
          Top = 19
          Width = 201
          Height = 19
          Alignment = taLeftJustify
          BevelInner = bvSpace
          BevelOuter = bvLowered
          Color = 14149350
          ParentBackground = False
          TabOrder = 11
          Key.Strings = (
            'idProduto')
          LookUpKey.Strings = (
            'idProduto')
          ClientDataSet = cdsLookup
          DataSource = dsProdutos
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
          TabOrder = 12
          Key.Strings = (
            'idProduto')
          LookUpKey.Strings = (
            'idProduto')
          AlternateSQL.Strings = (
            
              'SELECT ProdMedida.descAbreviada FROM Produto, ProdMedida WHERE P' +
              'roduto.idProdMedida = ProdMedida.idProdMedida AND Produto.idProd' +
              'uto = ?')
          ClientDataSet = cdsLookup
          DataSource = dsProdutos
          ValidaCampoObrigatorio = False
          CampoObrigatorio = True
          LookUpTable = 'Produto'
          ReturnField = 'descAbreviada'
        end
        object DBEidProduto: TCDBEdit
          Left = 130
          Top = 19
          Width = 47
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'idProduto'
          DataSource = dsProdutos
          TabOrder = 1
          OnEnter = DBEidProdutoEnter
          OnExit = DBEidProdutoExit
          Find = dmFind.FindProduto
          AcaoCad = frmPrincipal.actCadProduto
          DecimalControl = True
          KeyMode = kmNormal
        end
      end
      object CGroupBox10: TCGroupBox
        Left = 573
        Top = 16
        Width = 92
        Height = 179
        TabOrder = 1
        object BtnAdicionarProd: TCBitBtn
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
          OnClick = BtnAdicionarProdClick
        end
        object BtnCancelarProd: TCBitBtn
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
          OnClick = BtnAdicionarProdClick
        end
        object BtnRetirarProd: TCBitBtn
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
          OnClick = BtnAdicionarProdClick
        end
        object BtnNovoProd: TCBitBtn
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
          OnClick = BtnAdicionarProdClick
        end
      end
      object CGroupBox11: TCGroupBox
        Left = 8
        Top = 201
        Width = 562
        Height = 179
        TabOrder = 2
        object CDBGrid1: TCDBGrid
          Left = 7
          Top = 14
          Width = 537
          Height = 156
          TabStop = False
          DataSource = dsProdutos
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
              FieldName = 'idItem'
              Title.Caption = 'It.'
              Width = 20
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'idProduto'
              Title.Caption = 'Produto'
              Width = 40
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'descProduto'
              Title.Caption = 'Desc. Produto'
              Width = 120
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'descItem'
              Title.Caption = 'Descri'#231#227'o'
              Width = 120
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'qtProduto'
              Title.Caption = 'Qtde.'
              Width = 50
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'vlProduto'
              Title.Caption = 'Valor'
              Width = 70
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'vlTotalProd'
              Title.Caption = 'Valor Total'
              Width = 70
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'movimentaEstoque'
              Title.Caption = 'Est.?'
              Width = 30
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'vlDesconto'
              Title.Caption = 'Desconto'
              Visible = True
            end>
        end
      end
      object CGroupBox12: TCGroupBox
        Left = 573
        Top = 201
        Width = 92
        Height = 179
        TabOrder = 3
        object CLabel43: TCLabel
          Left = 14
          Top = 88
          Width = 62
          Height = 13
          Alignment = taRightJustify
          Caption = 'Total Geral'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object CLabel21: TCLabel
          Left = 14
          Top = 132
          Width = 58
          Height = 13
          Alignment = taRightJustify
          Caption = 'Financeiro'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object CLabel22: TCLabel
          Left = 14
          Top = 9
          Width = 53
          Height = 13
          Alignment = taRightJustify
          Caption = 'Desconto'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object DBEvlTotalGeral: TCDBEdit
          Left = 8
          Top = 107
          Width = 77
          Height = 19
          TabStop = False
          BevelKind = bkTile
          BorderStyle = bsNone
          Color = 15201011
          DataField = 'vlTotalGeral'
          DataSource = dsProdutos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 2
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEvlTotalFin: TCDBEdit
          Left = 7
          Top = 151
          Width = 77
          Height = 19
          TabStop = False
          BevelKind = bkTile
          BorderStyle = bsNone
          Color = 15201011
          DataField = 'vlTotalFin'
          DataSource = dsProdutos
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
        object DBEvlDescontoTotal: TCDBEdit
          Left = 7
          Top = 28
          Width = 77
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'vlDescontoTotal'
          DataSource = dsPadrao
          TabOrder = 0
          DecimalControl = True
          KeyMode = kmNormal
        end
        object BtnRecalcular: TCBitBtn
          Left = 6
          Top = 55
          Width = 80
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
      object DBEidMovCaixa: TCDBEdit
        Left = 671
        Top = 138
        Width = 68
        Height = 19
        BevelKind = bkTile
        BorderStyle = bsNone
        DataField = 'idMovCaixa'
        DataSource = dsMovCaixa
        TabOrder = 4
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
        TabOrder = 5
        Visible = False
        DecimalControl = True
        KeyMode = kmNormal
      end
      object DBEidTituloPag: TCDBEdit
        Left = 671
        Top = 188
        Width = 79
        Height = 19
        BevelKind = bkTile
        BorderStyle = bsNone
        DataField = 'idTituloPag'
        DataSource = dsTituloPag
        TabOrder = 6
        Visible = False
        DecimalControl = True
        KeyMode = kmNormal
      end
    end
    object TabCusto: TTabSheet
      Caption = 'Custos de Produ'#231#227'o'
      ImageIndex = 2
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object CGroupBox15: TCGroupBox
        Left = 573
        Top = 9
        Width = 92
        Height = 272
        TabOrder = 1
        object BtnAdicionarCusto: TCBitBtn
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
          OnClick = BtnAdicionarCustoClick
        end
        object BtnCancelarCusto: TCBitBtn
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
          OnClick = BtnAdicionarCustoClick
        end
        object BtnRetirarCusto: TCBitBtn
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
          OnClick = BtnAdicionarCustoClick
        end
        object BtnNovoCusto: TCBitBtn
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
          OnClick = BtnAdicionarCustoClick
        end
      end
      object CGroupBox3: TCGroupBox
        Left = 9
        Top = 9
        Width = 558
        Height = 73
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        object CLabel44: TCLabel
          Left = 368
          Top = 45
          Width = 11
          Height = 13
          Alignment = taRightJustify
          Caption = '%'
        end
        object CLabel14: TCLabel
          Left = 434
          Top = 45
          Width = 24
          Height = 13
          Alignment = taRightJustify
          Caption = 'Valor'
        end
        object CLabel157: TCLabel
          Left = 9
          Top = 20
          Width = 63
          Height = 13
          Alignment = taCenter
          AutoSize = False
          Caption = 'Total'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object CLabel13: TCLabel
          Left = 10
          Top = 45
          Width = 48
          Height = 13
          Alignment = taRightJustify
          Caption = 'Resultado'
        end
        object CLabel18: TCLabel
          Left = 162
          Top = 20
          Width = 44
          Height = 13
          Alignment = taRightJustify
          Caption = 'Gerencial'
        end
        object DBEprRateio: TCDBEdit
          Left = 385
          Top = 42
          Width = 43
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'prRateio'
          DataSource = dsCusto
          TabOrder = 5
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEvlRateio: TCDBEdit
          Left = 464
          Top = 42
          Width = 85
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'vlRateio'
          DataSource = dsCusto
          TabOrder = 6
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEvlManutencao2: TCDBEdit
          Left = 62
          Top = 17
          Width = 80
          Height = 19
          TabStop = False
          BevelKind = bkTile
          BorderStyle = bsNone
          Color = 14149350
          DataField = 'vlManutencao'
          DataSource = dsPadrao
          MaxLength = 10
          ReadOnly = True
          TabOrder = 0
          DecimalControl = False
          KeyMode = kmNormal
        end
        object LookResultadoC: TCLookUp
          Left = 116
          Top = 42
          Width = 246
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
          DataSource = dsCusto
          ValidaCampoObrigatorio = True
          CampoObrigatorio = True
          LookUpTable = 'Resultado'
          ReturnField = 'descResultado'
        end
        object DBEidResultadoR: TCDBEdit
          Left = 62
          Top = 42
          Width = 48
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'idResultado'
          DataSource = dsCusto
          TabOrder = 3
          OnExit = DBEidResultadoRExit
          Find = dmFind.FindResultadoTalhao
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEidGerencialR: TCDBEdit
          Left = 212
          Top = 17
          Width = 57
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'idGerencial'
          DataSource = dsCusto
          TabOrder = 1
          Find = dmFind.FindGerenciaP
          DecimalControl = True
          KeyMode = kmNormal
        end
        object LookGerencialC: TCLookUp
          Left = 275
          Top = 17
          Width = 274
          Height = 19
          Alignment = taLeftJustify
          BevelInner = bvSpace
          BevelOuter = bvLowered
          Color = 14149350
          ParentBackground = False
          TabOrder = 2
          Key.Strings = (
            'idGerencial')
          LookUpKey.Strings = (
            'idGerencial')
          AlternateSQL.Strings = (
            
              'SELECT DISTINCT descGerencial FROM vGerencial WHERE tpGerencial ' +
              '= '#39'SAIDAS'#39' AND idEmpresa = [DBEidEmpresa] AND idGerencial = ?')
          ClientDataSet = cdsLookup
          DataSource = dsCusto
          ValidaCampoObrigatorio = True
          CampoObrigatorio = True
          LookUpTable = 'vGerencial'
          ReturnField = 'descGerencial'
        end
      end
      object CGroupBox4: TCGroupBox
        Left = 9
        Top = 88
        Width = 558
        Height = 264
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        object DBGridCusto: TCDBGrid
          Left = 10
          Top = 14
          Width = 539
          Height = 238
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
              FieldName = 'idResultado'
              Title.Caption = 'C.Result.'
              Width = 50
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'descResultado'
              Title.Caption = 'Descri'#231#227'o'
              Width = 220
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'prRateio'
              Title.Caption = '(%)Rateio'
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
        Left = 573
        Top = 287
        Width = 92
        Height = 65
        TabOrder = 3
        object CLabel15: TCLabel
          Left = 17
          Top = 16
          Width = 51
          Height = 13
          Alignment = taRightJustify
          Caption = 'Valor Total'
        end
        object DBEvlTotalRateio: TCDBEdit
          Left = 8
          Top = 35
          Width = 78
          Height = 19
          TabStop = False
          BevelKind = bkTile
          BorderStyle = bsNone
          Color = 15201011
          DataField = 'vlTotalRateio'
          DataSource = dsCusto
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
    object TabFinancas: TTabSheet
      Caption = 'Finan'#231'as'
      ImageIndex = 3
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
      object PagTituloPag: TCPageControl
        Left = 8
        Top = 175
        Width = 627
        Height = 178
        ActivePage = TabTituloPag
        Images = imgIcones
        MultiLine = True
        TabOrder = 2
        TabPosition = tpLeft
        TabStop = False
        OnChange = PagTituloPagChange
        object TabTituloPag: TTabSheet
          Caption = 'Dados'
          ImageIndex = 4
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
          object CLabel19: TCLabel
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
          object CLabel20: TCLabel
            Left = 157
            Top = 28
            Width = 42
            Height = 13
            Alignment = taRightJustify
            Caption = 'Portador'
          end
          object CLabel80: TCLabel
            Left = 347
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
            TabOrder = 23
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
            TabOrder = 20
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
            TabOrder = 21
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
            TabOrder = 22
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
            TabOrder = 19
            DecimalControl = True
            KeyMode = kmNormal
          end
          object DBCKincMes: TCDBCheckBox
            Left = 300
            Top = 93
            Width = 88
            Height = 17
            Caption = 'Mesmo Dia?'
            DataField = 'incMes'
            DataSource = dsTituloPag
            TabOrder = 18
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
            TabOrder = 17
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
            TabOrder = 16
            DecimalControl = True
            KeyMode = kmNormal
          end
          object CBitBtn18: TCBitBtn
            Left = 463
            Top = 69
            Width = 96
            Height = 19
            Caption = '&'#205'ndices'
            Glyph.Data = {
              36040000424D3604000000000000360000002800000010000000100000000100
              2000000000000004000000000000000000000000000000000000FF00FF00FF00
              FF00E8E8E8FFC6C6C6FFC8C8C8FFC8C8C8FFC8C8C8FFC8C8C8FFC8C8C8FFC8C8
              C8FFC8C8C8FFC8C8C8FFC6C6C6FFE5E5E5FFFF00FF00FF00FF00FF00FF00FF00
              FF00A6A6A6FFFFFFFFFFEBEBEBFFF7F7F7FFE0E0E0FFEEEEEEFFF2F2F2FFE8E8
              E8FFF5F5F5FFD7D7D7FFFFFFFFFFACACACFFFF00FF00FF00FF00FF00FF00FF00
              FF00A1A1A1FFFFFFFFFFB3B3B3FFE4E4E4FFFFFFFFFFF2F2F2FFD7D7D7FFCCCC
              CCFFE6E6E6FFFFFFFFFFFFFFFFFFA7A7A7FFFF00FF00FF00FF00FF00FF00FF00
              FF00A2A2A2FFFFFFFFFFC4C4C4FFD3D3D3FFD3D3D3FFD4D4D4FFD4D4D4FFD6D6
              D6FFD8D8D8FFBABABAFFFFFFFFFFA5A5A5FFFF00FF00FF00FF00FF00FF00FF00
              FF009F9F9FFFFFFFFFFFC5C5C5FFE5E5E5FFB6B6B6FFD4D4D4FFD9D9D9FFB6B6
              B6FFDDDDDDFFFFFFFFFFFFFFFFFFA4A4A4FFFF00FF00FF00FF00FF00FF00FF00
              FF00A2A2A2FFFFFFFFFFD1D1D1FFD4D4D4FFD0D0D0FFD4D4D4FFD3D3D3FFD1D1
              D1FFD3D3D3FFCECECEFFFFFFFFFFA7A7A7FFFF00FF00FF00FF00FF00FF00FF00
              FF00A0A0A0FFFFFFFFFFB7B7B7FFE9E9E9FFC3C3C3FFDEDEDEFFD2D2D2FFACAC
              ACFFEBEBEBFFCFCFCFFFFFFFFFFFA5A5A5FFFF00FF00FF00FF00FF00FF00FF00
              FF00A3A3A3FFFFFFFFFFC8C8C8FFD6D6D6FFCACACAFFD2D2D2FFD1D1D1FFD4D4
              D4FFD2D2D2FFC3C3C3FFFFFFFFFFA9A9A9FFFF00FF00FF00FF00FF00FF00FF00
              FF00A0A0A0FFFFFFFFFFCBCBCBFFF0F0F0FF9B9B9BFFD1D1D1FFDDDDDDFFA8A8
              A8FFE4E4E4FFF6F6F6FFFFFFFFFFA4A4A4FFFF00FF00FF00FF00FF00FF00FF00
              FF00A3A3A3FFFFFFFFFFBEBEBEFFD4D4D4FFD3D3D3FFD3D3D3FFCECECEFFC4C4
              C4FFD6D6D6FFC1C1C1FFFFFFFFFFA8A8A8FFFF00FF00FF00FF00FF00FF00FF00
              FF00A1A1A1FFFFFFFFFFB8B8B8FFE6E6E6FFAEAEAEFFCACACAFFD9D9D9FFE2E2
              E2FFD0D0D0FFECECECFFFFFFFFFFA6A6A6FFFF00FF00FF00FF00FF00FF00FF00
              FF009F9F9FFFFFFFFFFFEDEDEDFFEAEAEAFFF2F2F2FFFFFFFFFFFFFFFFFFFFFF
              FFFFFCFCFCFFFFFFFFFFFFFFFFFFA3A3A3FFFF00FF00FF00FF00FF00FF00FF00
              FF00A1A1A1FFFFFFFFFFF0F0F0FFFFFFFFFFE9E9E9FF6F6F6FFF777777FF6464
              64FF8D8D8DFF333333FFFFFFFFFFACACACFFFF00FF00FF00FF00FF00FF00FF00
              FF00A1A1A1FFFBFBFBFFADADADFFB8B8B8FFB8B8B8FFA9A9A9FFA9A9A9FFA5A5
              A5FFB8B8B8FF939393FFFFFFFFFFA8A8A8FFFF00FF00FF00FF00FF00FF00FF00
              FF009B9B9BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFA3A3A3FFFF00FF00FF00FF00FF00FF00FF00
              FF00C7C7C7FFAFAFAFFFA4A4A4FFA3A3A3FFA3A3A3FFA2A2A2FFA2A2A2FFA2A2
              A2FFA3A3A3FFA3A3A3FFAFAFAFFFC3C3C3FFFF00FF00FF00FF00}
            TabOrder = 15
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
            TabOrder = 14
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
            TabOrder = 13
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
            TabOrder = 12
            Find = dmFind.FindIndice
            DecimalControl = True
            KeyMode = kmNormal
          end
          object CLookUp4: TCLookUp
            Left = 281
            Top = 47
            Width = 279
            Height = 19
            Alignment = taLeftJustify
            BevelInner = bvSpace
            BevelOuter = bvLowered
            Color = 14149350
            ParentBackground = False
            TabOrder = 11
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
            TabOrder = 10
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
            TabOrder = 8
            Find = dmFind.FindConta
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
            TabOrder = 5
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
            TabOrder = 6
            OnEnter = DBEidPortadorEnter
            OnExit = DBEidPortadorExit
            Find = dmFind.FindPortador
            DecimalControl = True
            KeyMode = kmNormal
          end
          object LookPortador: TCLookUp
            Left = 259
            Top = 25
            Width = 301
            Height = 19
            Alignment = taLeftJustify
            BevelInner = bvSpace
            BevelOuter = bvLowered
            Color = 14149350
            ParentBackground = False
            TabOrder = 7
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
            Left = 390
            Top = 3
            Width = 82
            Height = 19
            BevelKind = bkTile
            BorderStyle = bsNone
            DataField = 'nrTituloPag'
            DataSource = dsTituloPag
            TabOrder = 2
            DecimalControl = True
            KeyMode = kmNormal
          end
          object CLookUp3: TCLookUp
            Left = 131
            Top = 3
            Width = 210
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
            Find = dmFind.FindDocSerieTpag
            DecimalControl = True
            KeyMode = kmUSUpper
          end
          object LookHabilita: TCLookUp
            Left = 566
            Top = 17
            Width = 23
            Height = 19
            Alignment = taLeftJustify
            BevelInner = bvSpace
            BevelOuter = bvLowered
            Color = 14149350
            ParentBackground = False
            TabOrder = 4
            Visible = False
            Key.Strings = (
              'idPortador')
            LookUpKey.Strings = (
              'idPortador')
            ClientDataSet = cdsLookup
            DataSource = dsTituloPag
            ValidaCampoObrigatorio = True
            CampoObrigatorio = True
            LookUpTable = 'Portador'
            ReturnField = 'HabilitaConta'
          end
          object DBEstTituloPag: TCDBEdit
            Left = 478
            Top = 3
            Width = 82
            Height = 19
            TabStop = False
            BevelKind = bkTile
            BorderStyle = bsNone
            Color = 14149350
            DataField = 'stTituloPag'
            DataSource = dsTituloPag
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
        end
        object TabParcelas: TTabSheet
          Caption = 'Parcelas'
          ImageIndex = 5
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
                  Width = 50
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
    end
  end
  inherited PanBotoes: TCPanelGradient
    Top = 711
    Width = 1184
    ExplicitTop = 711
    ExplicitWidth = 1184
    inherited BtnFechar: TCBitBtn
      Left = 594
      ExplicitLeft = 594
    end
  end
  inherited PanEmpresa: TCPanelGradient
    Width = 1184
    ExplicitWidth = 1184
  end
  inherited imgIcones: TImageList
    Left = 680
    Top = 0
    Bitmap = {
      494C01010600D000D40210001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000002000000001002000000000000020
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FEFEFE01FEFEFE0DF6F6F729ECECED3CFDFDFD11FEFEFE020000
      000000000000000000000000000000000000000000000000000092635D00A467
      6900A4676900A4676900A4676900A4676900A4676900A4676900A4676900A467
      6900A4676900A467690000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FEFEFE01FEFEFE0BF5F5F733A3A3B9B785859BCFE5E5E94FFDFDFE10FEFE
      FE0200000000000000000000000000000000000000000000000092635D00FCF3
      DE00FFEED500FFEED500FFEED500FFEED500FEEBD100FEEBD100FEEBD100FEEB
      D100F7EDD000A467690000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FEFE
      FE01FEFEFE0AF6F6FA30A7A7D0BB616190F47676B2F69393C9D8E5E5EC4EFDFD
      FE0FFEFEFE02000000000000000000000000000000000000000092635D00F7EA
      D800FEBD8200FEBD8200FEBD8200FEBD8200FEBD8200FEBD8200FEBD8200FEBD
      8200F2E2C700A467690000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FEFE
      FE09F6F6FA2BA2A2DFB97272D0F442427FFD6F6FD0FE7F7FE7F78787CFD7E4E4
      EC4AFDFDFE0EFEFEFE020000000000000000000000000000000092635D00F8EF
      DE00FAE9D500FAE7D400FAE7D300F8E6D100F8E6D000F8E6D000F8E6D000F8E6
      D000F0E2C900A467690000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FEFEFE06F6F6
      F9229292D8B56161E8F44E4EC8FD33337CFF5656C8FF6161E7FE6161DFF77373
      C3D5E2E2E747FDFDFD0DFEFEFE0100000000000000000000000092635D00EAE2
      D400FEBD8200FEBD8200FEBD8200FEBD8200FEBD8200FEBD8200FEBD8200FEBD
      8200E1D3BA00A467690000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FEFEFE06F5F5F71D7E7E
      B6B03E3EBFF33636C8FD3434ACFF27275CFF363683FF4343B9FF3F3FC7FE3737
      9CF75C5CA2D4E1E1E943FDFDFE0BFEFEFE01000000000000000098746800AA9F
      9500A69A9200A5999100A5998E00A4978B00A3968900A1958700A1938400A191
      8300A4938100986B650000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FEFEFE06F5F5F81D7676AEAF2525
      8CF3141480FC14146BFF23235BFF505064FF717182FF39395DFF222272FF1C1C
      9BFE2D2DD0F75757C1D2E0E0E83EFDFDFD0B8C3816008C3816008C3816008C38
      16008C3816008C3816008C3816008C3816008C3816008C3816008C3816008C38
      16008C3816008C3816008C3816008C3816000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FAFAFC128787C7A82B2BC2F11313
      BAFC1010ADFF111185FF333345FFBABABDFFD0D0D0FF8A8A94FF202065FF1616
      BCFF1616CFFE2323C4F56161B4C9E8E8EB308C38160000000000A7756800E0E9
      EA00E1754500E1754500E1754500E1754500E1754500E1754500E1754500E175
      4500D7D8CA00A4676900000000008B3512000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FAFAFC188A8AD5B52D2DBEF21010
      9EFD0A0A77FF090951FF31314EFFB7B7BAFFCDCDCEFF868694FF1C1C59FF0E0E
      99FF1010A3FD232391F46C6C9FC7F1F1F4288C3815008C3816008C3816008C38
      16008C3816008C3816008C3816008C3816008C3816008C3816008C3816008C38
      16008C3816008C3816008C3816008C3816000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FEFEFE07F7F7FB227878A6BF2525
      85F41111A2FD0F0FA0FF191959FF434354FF616174FF2B2B50FF161688FF1010
      94FD24249FF56363B4CEF2F2F62EFEFEFE090000000000000000B17E6B00D7B0
      9C00D1AF9E00D1AF9E00CEAA9700CCA99500CCA79300CBA59100CAA59000CAA3
      8B00D4A78C00A467690000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FEFEFE07F7F7FA217D7D
      CEBD2B2BC5F41212AFFD0C0C64FF12126DFF111155FF13138CFF1414B5FD2929
      C9F56868D1CEF2F2F92EFEFEFE08000000000000000000000000BB846E00FFFF
      FF00FFE3C100FFE2C000FFE2BF00FFE2BF00FFE2BF00FFE2BF00FFE2BF00FFE2
      BF00FFFCEF00A467690000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FEFEFE07F7F7
      FC227E7EDBBE2B2BB4F40D0D6BFD1010A4FF0E0E96FF0F0F84FD2828C0F56767
      D7CEF2F2FB2EFEFEFE0800000000000000000000000000000000C58C7000FFFF
      FF00FEBD8200FEBD8200FEBD8200FEBD8200FEBD8200FEBD8200FEBD8200FEBD
      8200FBF6E900A467690000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FEFE
      FE07F7F7FC227C7CC2BE262684F41515B4FD1515B8FD22227CF56868C4CEF2F2
      F92FFEFEFE080000000000000000000000000000000000000000CB917300FFFF
      FF00FEFFFF00FEFFFF00FEFEFE00FEFBFA00FBFAF700FBF8F600FAF7F300F8F4
      F000FCFAF000A467690000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FEFEFE07F7F7FA237777B9C03030C2F32D2DC2F46868BCCEF2F2F62FFEFE
      FE08000000000000000000000000000000000000000000000000D4987600FFFF
      FF00FEBD8200FEBD8200FEBD8200FEBD8200FEBD8200FEBD8200FEBD8200FEBD
      8200FFFCF400A467690000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FEFEFE07F7F7FC228B8BDCB87B7BD8C6F2F2F92EFEFEFE080000
      0000000000000000000000000000000000000000000000000000D4987600FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFE00FFFE
      FA00FFFFFF00A467690000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FEFEFE07FAFAFD1CF7F7FC25FEFEFE09000000000000
      0000000000000000000000000000000000000000000000000000D4987600CF8E
      6800CF8E6800CF8E6800CF8E6800CF8E6800CF8E6800CF8E6800CF8E6800CF8E
      6800CF8E6800A467690000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FAFAFA05E3E3E31CBBBBBB44FAFAFA05000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FCFCFC0300000000000000000000
      000000000000000000000000000000000000000000000000000000000000FEFE
      FE01FCFCFC03BCC1C249EAEAEA15FEFEFE0100000000F1F1F10EFEFEFE010000
      00000000000000000000000000000000000000000000F0F0F00FCBCBCB34ADAD
      AD529D9D9D629090906F8484847B8182818081828180868686799393936CA2A2
      A25DB5B5B54AD6D6D629000000000000000000000000F2F2F20DDDDDDD22DCDC
      DC23E1E1E11EA7A7A75A5E5E5EA4595252C4514848D8898989769A9A9A65D5D5
      D52ADEDEDE21DDDDDD22EFEFEF10FEFEFE01000000000000000000000000FBFB
      FB04DEDEDE21AFAEAF558585878E707275C56C7074E1676668B691919275CBCA
      CA35F2F2F20D0000000000000000000000000000000000000000FEFEFE01ADAC
      AC759A9B9B8053DCECFA78D2DCE1B2B6B752F4F4F40BA2A2A27ADFDFDF200000
      00000000000000000000000000000000000000000000C7C7C7387070708F4E4E
      4EB1494D49D16E776EEA919F92F9A6B4A6FFA6B5A6FF93A193F96F7970EA4C4F
      4CD1535353AC88888877E1E1E11E00000000DDDDDD22777777A8717171C87777
      77C4636666C5493F3FF1B79393FFCFA7A7FFCAA2A2FF796262FE4F4B4BF46364
      64C9737373C5696969CA7A7A7A8FE7E7E71800000000F7F7F708DEDEDE218383
      838D696F74FA8B9399FEAAB5BBFFCAD7DEFFDFEBEFFF86888BFF787879FE595A
      5BFC646363B3B1B1B14EEEEEEE11FEFEFE010000000000000000FBFBFB04DEDB
      DAE3F2EFEEFFFFFFFFFFFFEFECFFC9D3D4FE829091C88585858CC9C9C9E2D2D2
      D22EFBFBFB04FEFEFE01000000000000000000000000F4F4F40BA5A6A55C6E7A
      6EE0AFC4AFFFD2E5D2FFDAEADAFFDAEADAFFDBEADBFFD9EBDAFFD3E6D3FFB3C7
      B3FF737F73E0B0B0B0520000000000000000A3A3A366888888FDB6B6B6E9B4B5
      B5E7655A5AFD7A6060FFEFBDBDFFF3C2C2FFE3B5B5FFDCB3B3FF5B5050FE5050
      50F8A6A6A6EAAAAAAAF15C5C5CE4C5C5C53AFAFAFA05E6E6E619C6C6C6398085
      87C4A8B4BBFFB8C6CDFFC6D4DCFFDBEAF0FFEDF6F9FF909496FF8C8D8EFF7D7E
      7EFF686868E78C8C8C73CECECE31F8F8F8070000000000000000EEEEEE11FAF6
      F6FAEFECEAFFEFEBEAFFEEE8E9FFE9E6E7FFE8E3E3FFFFFFFFFF48484BFF8D8B
      8BF1A4A1A1B6A7A6A672DCDCDC240000000000000000E1E2E1207A8C79D1ADCA
      ACFFBFDABEFFBED7BBFFBCD4B8FFBBD4B8FFBBD4B8FFBBD4B8FFBED7BBFFBFDA
      BEFFB0CEB0FF7C907CD6DEE0DE25000000009E9E9E6E909090F5B5B5B5E1B2B3
      B3E08B7A7AF7D5ABABFFA77E7EFF3C2C2CFFB18D8DFF9A7777FFD1ABABFF827B
      7BF4ABACACE0ABABABE9616161E7BEBEBE41FEFEFE01F9F9F906EFEFEF108D92
      94B8ACB9C0FFBCCAD2FFCAD9E1FFDFEDF4FFF0F7FAFF93979AFF8F9191FF8081
      81FF707070E4CBCBCB34EAEAEA15FCFCFC030000000000000000D1D1D135FDFD
      FDFFFFFCFAFFF5F2F2FFEEEAE8FFEEEAEAFFF0EAEAFFECE8E6FFCBCACCFF3E3F
      3BFFD9D5D3FFE8E1E2FFBDBBBB720000000000000000768D7AB980B08DFF97B8
      93FF90A896FF90A4A0FF90A3A6FF92A5AAFF96A4ACFF92A2A6FF8EA3A0FF8EA4
      97FF91AE91FF86AE86FF768C76C000000000A0A0A06C8F8F8FF5B5B5B5E2BABB
      BBDE726A6AF0DBACACFFC59E9EFF826B6BFFE6B4B4FF785B5BFFB08E8EFF5454
      54F2A8A9A9E2ABABABE9616161E6BFBFBF400000000000000000000000009095
      98B4AFBDC4FFC0CFD7FFCEDEE7FFE4F1F7FFF2F9FBFF979B9DFF939494FF8384
      85FF767676E1FEFEFE01000000000000000000000000FEFEFE01ADADAD83AFAC
      ABFFC2C0BEFF848281FFFDF8F9FFF0EAEAFFEEEAEAFFEEEAE8FFFDF8F7FF8C8C
      86FF8A898AFFFBFBFAFEE2E2E22000000000B4BBB359548560FF65A990FF657F
      89FF6F7CA2FF7381A9FF7886B1FF7088B2FF5C94ADFF698FB6FF717EA9FF6C7B
      A2FF616D89FF637E66FF5B8557FFADB5AD62A0A0A06C909090F5B8B8B8E2ADAE
      AEE07F6B6BFBE5BFBFFED7ABABFFB48C8CFF6C5050FF8B6F6FFFE3BEBEFF7F77
      77F8A1A3A3E2ACACACE9616161E6BFBFBF400000000000000000000000009095
      98B6AFBDC4FFC5D4DCFFD3E4EDFFE8F5FAFFF5FAFCFF999EA1FF909192FF8688
      88FF777777E400000000000000000000000000000000EEEEEE11D1E9EDF1E6E3
      E6FFFFFFFFFFFBF6F6FFEEE9E9FFECE8E7FFEFEBEAFFEFEBEAFFEEEBEAFFBEBC
      BDFF555551FFD0CCCCE8FBFBFB0400000000758875AE619560FF55795EFF6172
      9DFF7284AFFF7E94BEFF7A8FBCFF7B8D9DFF639194FF5C8B9BFF7283B2FF7081
      ABFF5D709FFF486D7CFF519778FF708673B6A0A0A06C909090F5B7B7B7E2BEBE
      BEDFA7A9A9E2786D6DF7E1B4B4FFA48686FF8E7373FFBEA0A0FF837F7FF5AAAA
      AAE2BABABADFA9A9A9E9616161E6BFBFBF400000000000000000000000008C91
      93B9769AA7FF3E97B2FF7ABDD3FFECF8FDFFF6FBFDFF9DA1A4FF7B7D7FFF8A8C
      8CFF787879E6000000000000000000000000FDFDFD0297BABE92FFE7E2FFA3A0
      A0FFC5C2C2FFA9A6A6FFE1DCDDFFCBC6C7FFF2EDEEFFF1EDEDFFEFEBEBFFFFFC
      FDFFFFFFFFFF858484C5FAFAFA0500000000567254E15D9D72FF4E7E69FF6574
      9AFF7F97C3FF93B2DAFF7991B7FF5C9CA2FF599FA2FF697D89FF7A91BFFF778C
      B6FF5B6C99FF3F5C64FF57966EFF567559E3A0A0A06C8F8F8FF5B4B4B4E2BEBE
      BEDEB8BABADD6F6767F49C9090F6937C7CFE937F7FFE746969FC8F9090E8C3C3
      C3DCB9B9B9E0A9A9A9E9616161E6BFBFBF40000000000000000000000000888B
      8EC19CA9AEFF3CA0BDFFCAE2EDFFF0FCFEFFF8FCFDFF9FA3A7FF797A7DFF8E90
      90FF7A7B7BE8000000000000000000000000E1E2E22067F9FEFBFFFFFBFFC9C5
      C4FF989796FFB2AFAFFFC1BEBDFFBFBEBDFFC4C0BFFFD4D1D0FFEEEBEAFFFFFF
      FFFF8C8B8BFF7B7B79EBD2D2D230000000004E6E4EF0619462FF5C8F5EFF506B
      73FF7B92C0FF97B5DAFF869FC9FF5B758FFF3A7B87FF6B85A6FF8CA7D2FF7283
      B0FF4A5C71FF48826DFF5C9B72FF506F4DF0A0A0A06C8F8F8FF5B4B4B4E2BDBD
      BDDEBDBDBDDEB8B8B8DFAFB1B1DF7B7A7AED888888ED9C9D9DE4B5B4B4E2B5B5
      B5E1B0B0B0E3A0A0A0EC5D5D5DE8BFBFBF400000000000000000F3F3F30C8E92
      93DDB5C0C4FFB3CED9FFE2F5FCFFF0FAFBFFF3F6F7FFA0A5A9FF7C7E81FF9193
      94FF7B7C7DEA0000000000000000000000008FD0D8BB55D9ECFFF3E7E5FFC9C7
      C6FFB2AFAEFFCBC6C5FFBCBABAFFB4B2B0FFCDCAC9FFC0BDBCFFCCC7C5FFBBB6
      B5FFA09E9FF9F8F8F8E9838384AAF7F7F708557053E15C9469FF52A289FF528E
      6AFF4D6261FF788EB5FF94B3D9FF8DA7D0FF8A9FC8FF8CA7D1FF768CB9FF4B67
      7BFF527B53FF619865FF5E9262FF547254E3A0A0A06C909090F5B6B6B6E2BEBE
      BEDEBEBEBEDEBEBEBEDEB7B7B7E0AAABABE49B9B9BE8989898E9959595E99494
      94EA929292EB8A8A8AF3575757EABFBFBF40000000000000000000000000959B
      9FBEAAB6BCFFB3BFC5FFC8D5D9FFE8EEEFFFECEFF0FF9EADA6FF809294FF7A83
      7FFF838786ED000000000000000000000000D2D8D835A2E6F0E4B2B3B4FFC3C0
      C0FFB4B2AFFFB3B0B0FFC0BBBDFFD5D0D0FFBBB8B8FFC3C0C0FFC2BEBEFFD1CE
      CFFFECEAEAD2696969CEACACAAFEC2C2C23E748673AE588C61FF5A9870FF6295
      5FFF5B8C56FF445D4EFF657A99FF7E9BC2FF819BC3FF6E81A9FF54696EFF4C87
      67FF559E7BFF60905EFF5B8B5BFF6E826EB6A0A0A06C8B8B8BF7B0B0B0E4B7B7
      B7E0B7B7B7E0B4B4B4E1A6A6A6E59B9B9BEEA6A6A6F8ABABABFBACACACFBACAC
      ACFBAEAEAEFB979797FF4E4E4EEFC5C5C53A0000000000000000000000009CA4
      A8C5C8D8E0FFDBEDF4FFEFFDFDFFFDFFFFFFFCFEFFFFA0A8AAFF767A7DFF6669
      6AFF7E8081EF00000000000000000000000000000000CAC8C7B4DBD8D8FFFFFF
      FFFFFAF6F7FFDDD9DAFFB5B2B2FFB2AFAFFFD2D1CFFFB4B2B0FFA8A6A7FFF4F3
      F2FFCAC9C953C4C4C469DDDDDDDD95959574B3BAB3594E754DFF5E8A5CFF5A7F
      5EFF5B835DFF5F905CFF51604FFF766A76FF52575EFF55765CFF639261FF6696
      65FF629569FF629362FF4D764DFFACB4AC629E9E9E6D7E7E7EFB979797EB9E9E
      9EE79F9F9FE79D9D9DE7959595EDA9A9A9F8A9A9A9F8A0A0A0F1A0A0A0F1A0A0
      A0F2A2A2A2F2808080F3737373A5ECECEC130000000000000000000000009FA8
      ADC7D4E6F0FFE7FAFEFFF9FFFFFFFFFFFFFFFDFFFFFFB0B7BAFFAAAEAFFF989B
      9CFF7D7F80F2000000000000000000000000FDFDFD02EBE9E8E6FFFFFFFFF3F0
      EFFFF3F0EFFFEEEBEAFFEEEBEAFFFCF8F7FFFFFFFFFFFFFEFDFFEDE9EAFFBFBD
      BCFBF1F1F10F00000000EEEEEE12F6F6F609000000006A7F69B95F7A61FF848D
      A4FF8996B0FF7F958FFF828782FFA29692FF84987EFF87AF87FF87AC87FF87AB
      87FF8CB08CFF709770FF647A64BF000000009B9B9B70787878FF959595F69898
      98F4999999F4999999F4959595F9696969F79A9A9A67E5E5E51AE3E3E31CE2E2
      E21DE2E2E21DE2E2E21DF5F5F50A00000000000000000000000000000000ABB2
      B5A9EEFBFDFFFCFEFFFFFEFFFFFFFFFFFFFFFBFBFBFFD0D4D6FFD7DEE1FFC1C8
      CAFF999D9EDD000000000000000000000000F6F6F609F6F5F4ECFEFEFDFDF3F0
      EFFFECE8E7FFEDEAE8FFEFECECFFF1EEEFFFF3F0EFFFF1EEEEFFEFECECFFE0DD
      DCD5FEFEFE0100000000000000000000000000000000E2E4E2216A7E6AD3B0BC
      B7FFC5CEDCFFBBC3D1FFB2BEBFFFAFC3B1FFB8CEB8FFB8CDB8FFB9CEB9FFC0D4
      C0FFB8CCB8FF6B7F6BD8DEE1DE2500000000B1B1B154707070FFBABABAFFBEBE
      BEFFBDBDBDFFC1C1C1FF9E9E9EFF5B5B5BD7DDDDDD2200000000000000000000
      000000000000000000000000000000000000000000000000000000000000F1F1
      F10EC2C3C44BBCBDBE55BDBEBF55BCBEBE56BABBBC55C2C3C355C0C1C255BFC0
      C153E3E3E31E00000000000000000000000000000000FDFDFD02EFEEEE12D5D5
      D53DCAC8C882DEDBDBC6F7F5F5EEFEFDFDFDF5F1F1FFEEEAEAFFE6E2E2FFC6C5
      C477000000000000000000000000000000000000000000000000E6E8E61C8F9B
      8FAFC4CDC2FFEAF1E9FFF4FAF2FFF3F9F3FFF2F8F2FFF3F9F3FFECF3ECFFC8D2
      C8FF8E9A8EB4E2E5E2200000000000000000F9F9F900B6B6B64EA0A0A068A1A1
      A167A1A1A167A1A1A1679F9F9F68CCCCCC350000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FDFDFD02EFEFEF11D6D6D63BCBC9C97EDFDCDCC2E6E6
      E61D000000000000000000000000000000000000000000000000000000000000
      0000C5CAC5469FA9A0A0A6B0A6D6B1BBB1F0B1BBB1F0A6B0A6D89FA89FA2C2C8
      C24A00000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000200000000100010000000000000100000000000000000000
      000000000000000000000000FFFFFF00F81FC00300000000F00FC00300000000
      E007C00300000000E003C00300000000C001C003000000008000C00300000000
      0000000000000000000040020000000000000000000000000000C00300000000
      8001C00300000000C003C00300000000E007C00300000000F00FC00300000000
      F81FC00300000000FC3FC00300000000FC3FFF7FE09F80038000E007C01F8001
      00008000C003800300000000C001800100000000C00180010000E00380010000
      0000E007800100000000E007000100000000E007000100000000C00700000000
      0000E007000000000000E007800000000000E007000480010001E00700078001
      007FE007800FC00300FFFFFFFC0FF00F00000000000000000000000000000000
      000000000000}
  end
  inherited Acao: TActionList
    Left = 792
    Top = 0
  end
  inherited cdsPadrao: TClientDataSet
    CommandText = 'SELECT * FROM MaquinaManutencao'
    Left = 917
    Top = 104
    object cdsPadraoidEmpresa: TIntegerField
      FieldName = 'idEmpresa'
      Required = True
    end
    object cdsPadraoidCadEmpresa: TSmallintField
      FieldName = 'idCadEmpresa'
      Required = True
    end
    object cdsPadraoidManutencao: TIntegerField
      FieldName = 'idManutencao'
      Required = True
    end
    object cdsPadraoidMaquina: TIntegerField
      FieldName = 'idMaquina'
      Required = True
    end
    object cdsPadraoidTipoAtividade: TSmallintField
      FieldName = 'idTipoAtividade'
      Required = True
    end
    object cdsPadraotpManutencao: TStringField
      FieldName = 'tpManutencao'
      Required = True
      FixedChar = True
      Size = 1
    end
    object cdsPadraodtManutencao: TSQLTimeStampField
      FieldName = 'dtManutencao'
      Required = True
    end
    object cdsPadraohr_kmAtual: TFMTBCDField
      FieldName = 'hr_kmAtual'
      Required = True
      Precision = 18
      Size = 1
    end
    object cdsPadraoidSafra: TIntegerField
      FieldName = 'idSafra'
      Required = True
    end
    object cdsPadraoidResultado: TIntegerField
      FieldName = 'idResultado'
    end
    object cdsPadraoidRateio: TSmallintField
      FieldName = 'idRateio'
    end
    object cdsPadraoidProdDeposito: TSmallintField
      FieldName = 'idProdDeposito'
    end
    object cdsPadraovlManutencao: TFMTBCDField
      FieldName = 'vlManutencao'
      Required = True
      Precision = 19
      Size = 4
    end
    object cdsPadraoobsManutencao: TStringField
      FieldName = 'obsManutencao'
      Size = 250
    end
    object cdsPadraoidGerencial: TIntegerField
      FieldName = 'idGerencial'
    end
    object cdsPadraoidFornecedor: TIntegerField
      FieldName = 'idFornecedor'
    end
    object cdsPadraovlDescontoTotal: TFMTBCDField
      FieldName = 'vlDescontoTotal'
      Precision = 19
      Size = 4
    end
    object cdsPadraoidNf: TStringField
      FieldName = 'idNf'
      Size = 30
    end
  end
  inherited dspPadrao: TDataSetProvider
    DataSet = sdsManutencao
    Left = 824
    Top = 104
  end
  inherited dsPadrao: TDataSource
    Left = 1000
    Top = 104
  end
  inherited ImgBotoes: TImageList
    Left = 744
    Top = 0
    Bitmap = {
      494C0101060008000C0220001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
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
  inherited cdsTmp: TClientDataSet
    Left = 1032
    Top = 56
  end
  inherited dspTmp: TDataSetProvider
    Left = 992
    Top = 56
  end
  inherited sdsTmp: TSQLDataSet
    Left = 944
    Top = 56
  end
  inherited cdsLookup: TClientDataSet
    Left = 968
    Top = 8
  end
  inherited dspLookup: TDataSetProvider
    Left = 912
    Top = 8
  end
  inherited sdsLookup: TSQLDataSet
    CommandText = 'SELECT * FROM Resultado'
    Left = 856
    Top = 8
  end
  inherited cdsEmpresa: TClientDataSet
    Left = 576
    Top = 8
  end
  inherited dsEmpresa: TDataSource
    Left = 608
    Top = 8
  end
  object sdsManutencao: TSQLDataSet
    SchemaName = 'gesys'
    CommandText = 'SELECT * FROM MaquinaManutencao'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmPadrao.dbConexao
    Left = 728
    Top = 104
  end
  object cdsProdutos: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    CommandText = 'SELECT * FROM MaquinaManutencaoItem'
    Params = <>
    ProviderName = 'dspProdutos'
    AfterOpen = cdsPadraoAfterOpen
    AfterInsert = cdsProdutosAfterEdit
    AfterEdit = cdsProdutosAfterEdit
    OnCalcFields = cdsProdutosCalcFields
    OnReconcileError = cdsPadraoReconcileError
    Left = 917
    Top = 148
    object cdsProdutosdescProduto: TStringField
      FieldKind = fkLookup
      FieldName = 'descProduto'
      LookupDataSet = cdsProduto
      LookupKeyFields = 'idProduto'
      LookupResultField = 'descProduto'
      KeyFields = 'idProduto'
      Size = 50
      Lookup = True
    end
    object cdsProdutosvlTotalProd: TCurrencyField
      FieldKind = fkInternalCalc
      FieldName = 'vlTotalProd'
    end
    object cdsProdutosidEmpresa: TIntegerField
      FieldName = 'idEmpresa'
      Required = True
    end
    object cdsProdutosidCadEmpresa: TSmallintField
      FieldName = 'idCadEmpresa'
      Required = True
    end
    object cdsProdutosidManutencao: TIntegerField
      FieldName = 'idManutencao'
      Required = True
    end
    object cdsProdutosidItem: TSmallintField
      FieldName = 'idItem'
      Required = True
    end
    object cdsProdutostpItem: TStringField
      FieldName = 'tpItem'
      Required = True
      FixedChar = True
      Size = 1
    end
    object cdsProdutosdescItem: TStringField
      FieldName = 'descItem'
      Size = 250
    end
    object cdsProdutosidProduto: TIntegerField
      FieldName = 'idProduto'
    end
    object cdsProdutosvlItem: TFMTBCDField
      FieldName = 'vlItem'
      Required = True
      Precision = 19
      Size = 4
    end
    object cdsProdutosqtItem: TFMTBCDField
      FieldName = 'qtItem'
      Required = True
      Precision = 18
      Size = 3
    end
    object cdsProdutosmovimentaEstoque: TStringField
      FieldName = 'movimentaEstoque'
      Required = True
      FixedChar = True
      Size = 1
    end
    object cdsProdutosdtGarantia: TSQLTimeStampField
      FieldName = 'dtGarantia'
    end
    object cdsProdutosinfoGarantia: TStringField
      FieldName = 'infoGarantia'
      Size = 150
    end
    object cdsProdutosfin: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'fin'
    end
    object cdsProdutoscodFabricante: TStringField
      FieldName = 'codFabricante'
      Size = 30
    end
    object cdsProdutosvlTotalGeral: TAggregateField
      FieldName = 'vlTotalGeral'
      Active = True
      currency = True
      DisplayName = ''
      Expression = 'SUM(vlTotalProd)'
    end
    object cdsProdutosvlTotalFin: TAggregateField
      FieldName = 'vlTotalFin'
      Active = True
      currency = True
      DisplayName = ''
      Expression = 'SUM(vlTotalProd*fin)'
    end
  end
  object dsProdutos: TDataSource
    DataSet = cdsProdutos
    OnStateChange = dsProdutosStateChange
    Left = 1000
    Top = 148
  end
  object dspProdutos: TDataSetProvider
    DataSet = sdsProdutos
    Options = [poAllowMultiRecordUpdates, poPropogateChanges, poAllowCommandText, poUseQuoteChar]
    BeforeUpdateRecord = dspProdutosBeforeUpdateRecord
    Left = 824
    Top = 148
  end
  object sdsProdutos: TSQLDataSet
    SchemaName = 'gesys'
    GetMetadata = False
    CommandText = 'SELECT * FROM MaquinaManutencaoItem'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmPadrao.dbConexao
    Left = 728
    Top = 148
  end
  object cdsCusto: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    CommandText = 'SELECT * FROM MaquinaManutencaoCusto'
    Params = <>
    ProviderName = 'dspCusto'
    AfterOpen = cdsPadraoAfterOpen
    AfterInsert = cdsProdutosAfterEdit
    AfterEdit = cdsProdutosAfterEdit
    OnReconcileError = cdsPadraoReconcileError
    Left = 917
    Top = 191
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
    object cdsCustoidManutencao: TIntegerField
      FieldName = 'idManutencao'
      Required = True
    end
    object cdsCustoidGerencial: TIntegerField
      FieldName = 'idGerencial'
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
  object dsCusto: TDataSource
    DataSet = cdsCusto
    OnStateChange = dsCustoStateChange
    Left = 1000
    Top = 191
  end
  object dspCusto: TDataSetProvider
    DataSet = sdsCusto
    Options = [poAllowMultiRecordUpdates, poPropogateChanges, poAllowCommandText, poUseQuoteChar]
    BeforeUpdateRecord = dspProdutosBeforeUpdateRecord
    Left = 824
    Top = 191
  end
  object sdsCusto: TSQLDataSet
    SchemaName = 'gesys'
    GetMetadata = False
    CommandText = 'SELECT * FROM MaquinaManutencaoCusto'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmPadrao.dbConexao
    Left = 728
    Top = 191
  end
  object cdsProduto: TClientDataSet
    Aggregates = <>
    CommandText = 'SELECT * FROM Produto'
    Params = <>
    ProviderName = 'dspLookup'
    Left = 728
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
  object cdsRateio: TClientDataSet
    Aggregates = <>
    CommandText = 'SELECT * FROM RateioItem WHERE 1=2'
    Params = <>
    ProviderName = 'dspLookup'
    Left = 888
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
  object dspMovCaixa: TDataSetProvider
    DataSet = sdsMovCaixa
    Options = [poAllowMultiRecordUpdates, poPropogateChanges, poAllowCommandText, poUseQuoteChar]
    BeforeUpdateRecord = dspMovCaixaBeforeUpdateRecord
    Left = 824
    Top = 235
  end
  object sdsMovCaixa: TSQLDataSet
    SchemaName = 'gesys'
    GetMetadata = False
    CommandText = 'SELECT * FROM MovCaixa'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmPadrao.dbConexao
    Left = 728
    Top = 235
  end
  object cdsMovCaixa: TClientDataSet
    Aggregates = <>
    CommandText = 'SELECT * FROM MovCaixa'
    Params = <>
    ProviderName = 'dspMovCaixa'
    AfterOpen = cdsPadraoAfterOpen
    AfterInsert = cdsMovCaixaAfterInsert
    AfterEdit = cdsMovCaixaAfterEdit
    OnReconcileError = cdsPadraoReconcileError
    Left = 920
    Top = 235
  end
  object dsMovCaixa: TDataSource
    DataSet = cdsMovCaixa
    Left = 1000
    Top = 235
  end
  object dspMovConta: TDataSetProvider
    DataSet = sdsMovConta
    Options = [poAllowMultiRecordUpdates, poPropogateChanges, poAllowCommandText, poUseQuoteChar]
    BeforeUpdateRecord = dspMovCaixaBeforeUpdateRecord
    Left = 824
    Top = 278
  end
  object sdsMovConta: TSQLDataSet
    SchemaName = 'gesys'
    GetMetadata = False
    CommandText = 'SELECT * FROM MovConta'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmPadrao.dbConexao
    Left = 728
    Top = 278
  end
  object cdsMovConta: TClientDataSet
    Aggregates = <>
    CommandText = 'SELECT * FROM MovConta'
    Params = <>
    ProviderName = 'dspMovConta'
    AfterOpen = cdsPadraoAfterOpen
    AfterInsert = cdsMovContaAfterInsert
    AfterEdit = cdsMovCaixaAfterEdit
    OnReconcileError = cdsPadraoReconcileError
    Left = 920
    Top = 278
  end
  object dsMovConta: TDataSource
    DataSet = cdsMovConta
    Left = 1000
    Top = 278
  end
  object dsTituloPagParc: TDataSource
    DataSet = cdsTituloPagParc
    OnStateChange = dsTituloPagParcStateChange
    Left = 1000
    Top = 364
  end
  object cdsTituloPagParc: TClientDataSet
    Aggregates = <>
    CommandText = 'SELECT * FROM TituloPagParc'
    Params = <>
    ProviderName = 'dspTituloPagParc'
    AfterOpen = cdsPadraoAfterOpen
    AfterInsert = cdsMovCaixaAfterEdit
    AfterEdit = cdsMovCaixaAfterEdit
    OnReconcileError = cdsPadraoReconcileError
    Left = 920
    Top = 364
  end
  object dspTituloPagParc: TDataSetProvider
    DataSet = sdsTituloPagParc
    Options = [poAllowMultiRecordUpdates, poPropogateChanges, poAllowCommandText, poUseQuoteChar]
    Left = 824
    Top = 364
  end
  object sdsTituloPagParc: TSQLDataSet
    SchemaName = 'gesys'
    GetMetadata = False
    CommandText = 'SELECT * FROM TituloPagParc'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmPadrao.dbConexao
    Left = 728
    Top = 364
  end
  object sdsTituloPag: TSQLDataSet
    SchemaName = 'gesys'
    GetMetadata = False
    CommandText = 'SELECT * FROM TituloPag'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmPadrao.dbConexao
    Left = 728
    Top = 320
  end
  object dspTituloPag: TDataSetProvider
    DataSet = sdsTituloPag
    Options = [poAllowMultiRecordUpdates, poPropogateChanges, poAllowCommandText, poUseQuoteChar]
    BeforeUpdateRecord = dspMovCaixaBeforeUpdateRecord
    Left = 824
    Top = 320
  end
  object dsTituloPag: TDataSource
    DataSet = cdsTituloPag
    Left = 1000
    Top = 320
  end
  object cdsTituloPag: TClientDataSet
    Aggregates = <>
    CommandText = 'SELECT * FROM TituloPag'
    Params = <>
    ProviderName = 'dspTituloPag'
    AfterOpen = cdsPadraoAfterOpen
    AfterInsert = cdsTituloPagAfterInsert
    AfterEdit = cdsMovCaixaAfterEdit
    OnReconcileError = cdsPadraoReconcileError
    Left = 920
    Top = 320
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
    end
    object cdsTituloPagidConta: TSmallintField
      FieldName = 'idConta'
    end
    object cdsTituloPagidDocumento: TIntegerField
      FieldName = 'idDocumento'
    end
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
    Left = 664
    Top = 56
  end
  object cdsFinanc: TClientDataSet
    Aggregates = <>
    CommandText = 'SELECT * FROM MaquinaManutencaoFinanc'
    Params = <>
    ProviderName = 'dspFinanc'
    AfterOpen = cdsPadraoAfterOpen
    OnReconcileError = cdsPadraoReconcileError
    Left = 912
    Top = 456
    object cdsFinancidEmpresa: TIntegerField
      FieldName = 'idEmpresa'
      Required = True
    end
    object cdsFinancidCadEmpresa: TSmallintField
      FieldName = 'idCadEmpresa'
      Required = True
    end
    object cdsFinancidManutencao: TIntegerField
      FieldName = 'idManutencao'
      Required = True
    end
    object cdsFinancidTituloPag: TIntegerField
      FieldName = 'idTituloPag'
    end
    object cdsFinancidMovConta: TIntegerField
      FieldName = 'idMovConta'
    end
    object cdsFinancidMovCaixa: TIntegerField
      FieldName = 'idMovCaixa'
    end
  end
  object dspFinanc: TDataSetProvider
    DataSet = sdsFinanc
    Options = [poAllowMultiRecordUpdates, poPropogateChanges, poAllowCommandText, poUseQuoteChar]
    BeforeApplyUpdates = dspPadraoBeforeApplyUpdates
    Left = 832
    Top = 456
  end
  object sdsFinanc: TSQLDataSet
    SchemaName = 'gesys'
    GetMetadata = False
    CommandText = 'SELECT * FROM MaquinaManutencaoFinanc'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmPadrao.dbConexao
    Left = 744
    Top = 456
  end
end
