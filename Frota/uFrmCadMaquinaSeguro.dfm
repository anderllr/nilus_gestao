inherited FrmCadMaquinaSeguro: TFrmCadMaquinaSeguro
  Caption = 'Lancamento de Seguro de Maquina/Veiculos'
  ClientHeight = 618
  ClientWidth = 1089
  ExplicitWidth = 1105
  ExplicitHeight = 657
  PixelsPerInch = 96
  TextHeight = 13
  inherited Bevel1: TBevel
    Top = 583
    Width = 1089
    ExplicitTop = 484
    ExplicitWidth = 1088
  end
  inherited Bevel2: TBevel
    Width = 1089
    ExplicitWidth = 1088
  end
  inherited PagAbas: TCPageControl
    Width = 1089
    Height = 530
    ActivePage = TabFinancas
    ExplicitWidth = 1089
    ExplicitHeight = 530
    inherited TabAbas: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 25
      ExplicitWidth = 1081
      ExplicitHeight = 501
      object CGroupBox1: TCGroupBox
        Left = 8
        Top = 7
        Width = 657
        Height = 179
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
          Left = 164
          Top = 49
          Width = 64
          Height = 13
          Alignment = taRightJustify
          Caption = 'Data Emiss'#227'o'
        end
        object CLabel4: TCLabel
          Left = 43
          Top = 23
          Width = 33
          Height = 13
          Alignment = taRightJustify
          Caption = 'C'#243'digo'
        end
        object CLabel5: TCLabel
          Left = 18
          Top = 145
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
          Left = 25
          Top = 47
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
        object CLabel6: TCLabel
          Left = 319
          Top = 48
          Width = 81
          Height = 13
          Alignment = taRightJustify
          Caption = 'Data Vencimento'
        end
        object CLabel8: TCLabel
          Left = 20
          Top = 120
          Width = 56
          Height = 13
          Alignment = taRightJustify
          Caption = 'Seguradora'
        end
        object CLabel9: TCLabel
          Left = 493
          Top = 22
          Width = 31
          Height = 13
          Alignment = taRightJustify
          Caption = 'Status'
        end
        object DBEidMaquina: TCDBEdit
          Left = 207
          Top = 20
          Width = 58
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
        object DBEdtEmissao: TCDBEdit
          Left = 234
          Top = 45
          Width = 79
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'dtEmissao'
          DataSource = dsPadrao
          MaxLength = 10
          TabOrder = 4
          DecimalControl = True
          KeyMode = kmDate
        end
        object CLookUp10: TCLookUp
          Left = 271
          Top = 20
          Width = 216
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
        object DBMMdescSeguro: TCDBMemo
          Tag = 4
          Left = 82
          Top = 142
          Width = 566
          Height = 31
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'descSeguro'
          DataSource = dsPadrao
          ScrollBars = ssVertical
          TabOrder = 15
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
          TabOrder = 6
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEvlSeguro: TCDBEdit
          Left = 82
          Top = 44
          Width = 76
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'vlSeguro'
          DataSource = dsPadrao
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
          TabOrder = 12
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
          TabOrder = 11
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
          TabOrder = 10
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
          TabOrder = 9
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
          TabOrder = 8
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
          TabOrder = 7
          Find = dmFind.FindFornecedor
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEidSeguro: TCDBEdit
          Left = 82
          Top = 20
          Width = 62
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'idSeguro'
          DataSource = dsPadrao
          TabOrder = 0
          OnExit = DBEidSeguroExit
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEdtVencimentoSeg: TCDBEdit
          Left = 406
          Top = 45
          Width = 79
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'dtVencimento'
          DataSource = dsPadrao
          MaxLength = 10
          TabOrder = 5
          DecimalControl = True
          KeyMode = kmDate
        end
        object DBEidSeguradora: TCDBEdit
          Left = 82
          Top = 117
          Width = 62
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'idSeguradora'
          DataSource = dsPadrao
          TabOrder = 13
          Find = dmFind.FindSeguradora
          DecimalControl = True
          KeyMode = kmNormal
        end
        object LookSeguradora: TCLookUp
          Left = 150
          Top = 117
          Width = 280
          Height = 19
          Alignment = taLeftJustify
          BevelInner = bvSpace
          BevelOuter = bvLowered
          Color = 14149350
          ParentBackground = False
          TabOrder = 14
          Key.Strings = (
            'idSeguradora')
          LookUpKey.Strings = (
            'idSeguradora')
          ClientDataSet = cdsLookup
          DataSource = dsPadrao
          ValidaCampoObrigatorio = True
          CampoObrigatorio = True
          LookUpTable = 'CadSeguradora'
          ReturnField = 'descSeguradora'
        end
        object DBEstSeguro: TCDBEdit
          Left = 530
          Top = 19
          Width = 118
          Height = 19
          TabStop = False
          BevelKind = bkTile
          BorderStyle = bsNone
          Color = 14149350
          DataField = 'stSeguro'
          DataSource = dsPadrao
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 16
          DecimalControl = True
          KeyMode = kmUSUpper
        end
      end
      object CGroupBox2: TCGroupBox
        Left = 8
        Top = 192
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
    end
    object TabCustos: TTabSheet
      Caption = 'Custos'
      ImageIndex = 2
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
        object DBEvlSeguro2: TCDBEdit
          Left = 62
          Top = 17
          Width = 80
          Height = 19
          TabStop = False
          BevelKind = bkTile
          BorderStyle = bsNone
          Color = 14149350
          DataField = 'vlSeguro'
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
      object DBEidMovCaixa: TCDBEdit
        Left = 641
        Top = 138
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
        Left = 641
        Top = 163
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
        Left = 641
        Top = 188
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
        TabOrder = 4
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
            TabOrder = 22
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
            TabOrder = 19
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
            TabOrder = 20
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
            TabOrder = 21
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
            TabOrder = 18
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
            TabOrder = 17
            ValueChecked = 'S'
            ValueUnchecked = 'N'
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
            TabOrder = 16
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
            TabOrder = 15
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
            TabOrder = 14
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
            TabOrder = 13
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
            TabOrder = 12
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
            TabOrder = 11
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
            TabOrder = 7
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
            TabOrder = 4
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
            TabOrder = 5
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
            TabOrder = 6
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
            DataField = 'nrTituloPag'
            DataSource = dsTituloPag
            TabOrder = 2
            DecimalControl = True
            KeyMode = kmNormal
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
            OnExit = DBEidDocSerieTExit
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
            TabOrder = 3
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
    end
    object TabAntigos: TTabSheet
      Caption = 'Anteriores'
      ImageIndex = 1
      object Group1: TCGroupBox
        Left = 3
        Top = 3
        Width = 656
        Height = 294
        TabOrder = 0
        object DBGrid: TCDBGrid
          Left = 2
          Top = 15
          Width = 652
          Height = 277
          TabStop = False
          Align = alClient
          DataSource = dsSegAnteriores
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
              FieldName = 'idEmpresa'
              Title.Caption = 'Emp'
              Visible = False
            end
            item
              Expanded = False
              FieldName = 'idCadEmpresa'
              Title.Caption = 'Filial'
              Visible = False
            end
            item
              Expanded = False
              FieldName = 'idMaquina'
              Title.Caption = 'Maquina'
              Visible = False
            end
            item
              Expanded = False
              FieldName = 'idSeguro'
              Title.Caption = 'Seguro'
              Width = 45
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'descSeguro'
              Title.Caption = 'Descri'#231#227'o'
              Width = 250
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'dtEmissao'
              Title.Caption = 'Data Emiss'#227'o'
              Width = 70
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'dtVencimento'
              Title.Caption = 'Data Venc.'
              Width = 70
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'idFornecedor'
              Visible = False
            end
            item
              Expanded = False
              FieldName = 'idSeguradora'
              Visible = False
            end
            item
              Expanded = False
              FieldName = 'hr_kmAtual'
              Visible = False
            end
            item
              Expanded = False
              FieldName = 'idSafra'
              Visible = False
            end
            item
              Expanded = False
              FieldName = 'idGerencial'
              Visible = False
            end
            item
              Expanded = False
              FieldName = 'idResultado'
              Visible = False
            end
            item
              Expanded = False
              FieldName = 'idRateio'
              Visible = False
            end
            item
              Expanded = False
              FieldName = 'vlSeguro'
              Title.Caption = 'Valor'
              Width = 80
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'stSeguro'
              Title.Caption = 'Status'
              Width = 90
              Visible = True
            end>
        end
      end
    end
  end
  inherited PanBotoes: TCPanelGradient
    Top = 587
    Width = 1089
    ExplicitTop = 587
    ExplicitWidth = 1089
    inherited BtnFechar: TCBitBtn
      Left = 557
      ExplicitLeft = 557
    end
  end
  inherited PanEmpresa: TCPanelGradient
    Width = 1089
    ExplicitWidth = 1089
  end
  inherited imgIcones: TImageList
    Left = 480
    Top = 32
    Bitmap = {
      494C01010600A800940010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000002000000001002000000000000020
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFEFEFE00FEFEFE00F6F6F700ECECED00FDFDFD00FEFEFE00FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF92635D00A467
      6900A4676900A4676900A4676900A4676900A4676900A4676900A4676900A467
      6900A4676900A4676900FFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFEFEFE00FEFEFE00F5F5F700A3A3B90085859B00E5E5E900FDFDFE00FEFE
      FE00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF92635D00FCF3
      DE00FFEED500FFEED500FFEED500FFEED500FEEBD100FEEBD100FEEBD100FEEB
      D100F7EDD000A4676900FFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFEFE
      FE00FEFEFE00F6F6FA00A7A7D000616190007676B2009393C900E5E5EC00FDFD
      FE00FEFEFE00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF92635D00F7EA
      D800FEBD8200FEBD8200FEBD8200FEBD8200FEBD8200FEBD8200FEBD8200FEBD
      8200F2E2C700A4676900FFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFEFE
      FE00F6F6FA00A2A2DF007272D00042427F006F6FD0007F7FE7008787CF00E4E4
      EC00FDFDFE00FEFEFE00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF92635D00F8EF
      DE00FAE9D500FAE7D400FAE7D300F8E6D100F8E6D000F8E6D000F8E6D000F8E6
      D000F0E2C900A4676900FFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFEFEFE00F6F6
      F9009292D8006161E8004E4EC80033337C005656C8006161E7006161DF007373
      C300E2E2E700FDFDFD00FEFEFE00FFFFFFFFFFFFFFFFFFFFFFFF92635D00EAE2
      D400FEBD8200FEBD8200FEBD8200FEBD8200FEBD8200FEBD8200FEBD8200FEBD
      8200E1D3BA00A4676900FFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFEFEFE00F5F5F7007E7E
      B6003E3EBF003636C8003434AC0027275C00363683004343B9003F3FC7003737
      9C005C5CA200E1E1E900FDFDFE00FEFEFE00FFFFFFFFFFFFFFFF98746800AA9F
      9500A69A9200A5999100A5998E00A4978B00A3968900A1958700A1938400A191
      8300A4938100986B6500FFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FEFEFE00F5F5F8007676AE002525
      8C001414800014146B0023235B00505064007171820039395D00222272001C1C
      9B002D2DD0005757C100E0E0E800FDFDFD008C3816008C3816008C3816008C38
      16008C3816008C3816008C3816008C3816008C3816008C3816008C3816008C38
      16008C3816008C3816008C3816008C3816000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FAFAFC008787C7002B2BC2001313
      BA001010AD001111850033334500BABABD00D0D0D0008A8A9400202065001616
      BC001616CF002323C4006161B400E8E8EB008C381600FFFFFFFFA7756800E0E9
      EA00E1754500E1754500E1754500E1754500E1754500E1754500E1754500E175
      4500D7D8CA00A4676900FFFFFFFF8B3512000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FAFAFC008A8AD5002D2DBE001010
      9E000A0A77000909510031314E00B7B7BA00CDCDCE00868694001C1C59000E0E
      99001010A300232391006C6C9F00F1F1F4008C3815008C3816008C3816008C38
      16008C3816008C3816008C3816008C3816008C3816008C3816008C3816008C38
      16008C3816008C3816008C3816008C3816000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FEFEFE00F7F7FB007878A6002525
      85001111A2000F0FA0001919590043435400616174002B2B5000161688001010
      940024249F006363B400F2F2F600FEFEFE00FFFFFFFFFFFFFFFFB17E6B00D7B0
      9C00D1AF9E00D1AF9E00CEAA9700CCA99500CCA79300CBA59100CAA59000CAA3
      8B00D4A78C00A4676900FFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFEFEFE00F7F7FA007D7D
      CE002B2BC5001212AF000C0C640012126D001111550013138C001414B5002929
      C9006868D100F2F2F900FEFEFE00FFFFFFFFFFFFFFFFFFFFFFFFBB846E00FFFF
      FF00FFE3C100FFE2C000FFE2BF00FFE2BF00FFE2BF00FFE2BF00FFE2BF00FFE2
      BF00FFFCEF00A4676900FFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFEFEFE00F7F7
      FC007E7EDB002B2BB4000D0D6B001010A4000E0E96000F0F84002828C0006767
      D700F2F2FB00FEFEFE00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC58C7000FFFF
      FF00FEBD8200FEBD8200FEBD8200FEBD8200FEBD8200FEBD8200FEBD8200FEBD
      8200FBF6E900A4676900FFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFEFE
      FE00F7F7FC007C7CC200262684001515B4001515B80022227C006868C400F2F2
      F900FEFEFE00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCB917300FFFF
      FF00FEFFFF00FEFFFF00FEFEFE00FEFBFA00FBFAF700FBF8F600FAF7F300F8F4
      F000FCFAF000A4676900FFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFEFEFE00F7F7FA007777B9003030C2002D2DC2006868BC00F2F2F600FEFE
      FE00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD4987600FFFF
      FF00FEBD8200FEBD8200FEBD8200FEBD8200FEBD8200FEBD8200FEBD8200FEBD
      8200FFFCF400A4676900FFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFEFEFE00F7F7FC008B8BDC007B7BD800F2F2F900FEFEFE00FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD4987600FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFE00FFFE
      FA00FFFFFF00A4676900FFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFEFEFE00FAFAFD00F7F7FC00FEFEFE00FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD4987600CF8E
      6800CF8E6800CF8E6800CF8E6800CF8E6800CF8E6800CF8E6800CF8E6800CF8E
      6800CF8E6800A4676900FFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF00000000000000000000000000000000000000FF0000
      00FF000000FF000000FF000000FF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFCFC00FFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFE
      FE00FCFCFC00BCC1C200EAEAEA00FEFEFE00FFFFFFFFF1F1F100FEFEFE00FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0F0F000CBCBCB00ADAD
      AD009D9D9D00909090008484840081828100818281008686860093939300A2A2
      A200B5B5B500D6D6D600FFFFFFFFFFFFFFFF000000FF00000000000000000000
      0000E1E1E100A7A7A7005E5E5E005952520051484800898989009A9A9A000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFBFB
      FB00DEDEDE00AFAEAF0085858700707275006C7074006766680091919200CBCA
      CA00F2F2F200FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFE00ADAC
      AC009A9B9B0053DCEC0078D2DC00B2B6B700F4F4F400A2A2A200DFDFDF00FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC7C7C700707070004E4E
      4E00494D49006E776E00919F9200A6B4A600A6B5A60093A193006F7970004C4F
      4C005353530088888800E1E1E100FFFFFFFF0000000000000000000000007777
      770063666600493F3F00B7939300CFA7A700CAA2A200796262004F4B4B006364
      640073737300696969000000000000000000FFFFFFFFF7F7F700DEDEDE008383
      8300696F74008B939900AAB5BB00CAD7DE00DFEBEF0086888B0078787900595A
      5B0064636300B1B1B100EEEEEE00FEFEFE00FFFFFFFFFFFFFFFFFBFBFB00DEDB
      DA00F2EFEE00FFFFFF00FFEFEC00C9D3D4008290910085858500C9C9C900D2D2
      D200FBFBFB00FEFEFE00FFFFFFFFFFFFFFFFFFFFFFFFF4F4F400A5A6A5006E7A
      6E00AFC4AF00D2E5D200DAEADA00DAEADA00DBEADB00D9EBDA00D3E6D300B3C7
      B300737F7300B0B0B000FFFFFFFFFFFFFFFF0000000000000000B6B6B600B4B5
      B500655A5A007A606000EFBDBD00F3C2C200E3B5B500DCB3B3005B5050005050
      5000A6A6A600AAAAAA000000000000000000FAFAFA00E6E6E600C6C6C6008085
      8700A8B4BB00B8C6CD00C6D4DC00DBEAF000EDF6F900909496008C8D8E007D7E
      7E00686868008C8C8C00CECECE00F8F8F800FFFFFFFFFFFFFFFFEEEEEE00FAF6
      F600EFECEA00EFEBEA00EEE8E900E9E6E700E8E3E300FFFFFF0048484B008D8B
      8B00A4A1A100A7A6A600DCDCDC00FFFFFFFFFFFFFFFFE1E2E1007A8C7900ADCA
      AC00BFDABE00BED7BB00BCD4B800BBD4B800BBD4B800BBD4B800BED7BB00BFDA
      BE00B0CEB0007C907C00DEE0DE00FFFFFFFF0000000090909000B5B5B500B2B3
      B3008B7A7A00D5ABAB00A77E7E003C2C2C00B18D8D009A777700D1ABAB00827B
      7B00ABACAC00ABABAB000000000000000000FEFEFE00F9F9F900EFEFEF008D92
      9400ACB9C000BCCAD200CAD9E100DFEDF400F0F7FA0093979A008F9191008081
      810070707000CBCBCB00EAEAEA00FCFCFC00FFFFFFFFFFFFFFFFD1D1D100FDFD
      FD00FFFCFA00F5F2F200EEEAE800EEEAEA00F0EAEA00ECE8E600CBCACC003E3F
      3B00D9D5D300E8E1E200BDBBBB00FFFFFFFFFFFFFFFF768D7A0080B08D0097B8
      930090A8960090A4A00090A3A60092A5AA0096A4AC0092A2A6008EA3A0008EA4
      970091AE910086AE8600768C7600FFFFFFFF000000008F8F8F00B5B5B500BABB
      BB00726A6A00DBACAC00C59E9E00826B6B00E6B4B400785B5B00B08E8E005454
      5400A8A9A900ABABAB000000000000000000FFFFFFFFFFFFFFFFFFFFFFFF9095
      9800AFBDC400C0CFD700CEDEE700E4F1F700F2F9FB00979B9D00939494008384
      850076767600FEFEFE00FFFFFFFFFFFFFFFFFFFFFFFFFEFEFE00ADADAD00AFAC
      AB00C2C0BE0084828100FDF8F900F0EAEA00EEEAEA00EEEAE800FDF8F7008C8C
      86008A898A00FBFBFA00E2E2E200FFFFFFFFB4BBB3005485600065A99000657F
      89006F7CA2007381A9007886B1007088B2005C94AD00698FB600717EA9006C7B
      A200616D8900637E66005B855700ADB5AD000000000090909000B8B8B800ADAE
      AE007F6B6B00E5BFBF00D7ABAB00B48C8C006C5050008B6F6F00E3BEBE007F77
      7700A1A3A300ACACAC000000000000000000FFFFFFFFFFFFFFFFFFFFFFFF9095
      9800AFBDC400C5D4DC00D3E4ED00E8F5FA00F5FAFC00999EA100909192008688
      880077777700FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEEEEEE00D1E9ED00E6E3
      E600FFFFFF00FBF6F600EEE9E900ECE8E700EFEBEA00EFEBEA00EEEBEA00BEBC
      BD0055555100D0CCCC00FBFBFB00FFFFFFFF758875006195600055795E006172
      9D007284AF007E94BE007A8FBC007B8D9D00639194005C8B9B007283B2007081
      AB005D709F00486D7C0051977800708673000000000090909000B7B7B700BEBE
      BE00A7A9A900786D6D00E1B4B400A48686008E737300BEA0A000837F7F00AAAA
      AA00BABABA00A9A9A9006161610000000000FFFFFFFFFFFFFFFFFFFFFFFF8C91
      9300769AA7003E97B2007ABDD300ECF8FD00F6FBFD009DA1A4007B7D7F008A8C
      8C0078787900FFFFFFFFFFFFFFFFFFFFFFFFFDFDFD0097BABE00FFE7E200A3A0
      A000C5C2C200A9A6A600E1DCDD00CBC6C700F2EDEE00F1EDED00EFEBEB00FFFC
      FD00FFFFFF0085848400FAFAFA00FFFFFFFF567254005D9D72004E7E69006574
      9A007F97C30093B2DA007991B7005C9CA200599FA200697D89007A91BF00778C
      B6005B6C99003F5C640057966E0056755900000000008F8F8F00B4B4B400BEBE
      BE00B8BABA006F6767009C909000937C7C00937F7F00746969008F909000C3C3
      C300B9B9B900A9A9A9000000000000000000FFFFFFFFFFFFFFFFFFFFFFFF888B
      8E009CA9AE003CA0BD00CAE2ED00F0FCFE00F8FCFD009FA3A700797A7D008E90
      90007A7B7B00FFFFFFFFFFFFFFFFFFFFFFFFE1E2E20067F9FE00FFFFFB00C9C5
      C40098979600B2AFAF00C1BEBD00BFBEBD00C4C0BF00D4D1D000EEEBEA00FFFF
      FF008C8B8B007B7B7900D2D2D200FFFFFFFF4E6E4E00619462005C8F5E00506B
      73007B92C00097B5DA00869FC9005B758F003A7B87006B85A6008CA7D2007283
      B0004A5C710048826D005C9B7200506F4D00000000008F8F8F00B4B4B400BDBD
      BD00BDBDBD00B8B8B800AFB1B1007B7A7A00888888009C9D9D00B5B4B400B5B5
      B500B0B0B000000000000000000000000000FFFFFFFFFFFFFFFFF3F3F3008E92
      9300B5C0C400B3CED900E2F5FC00F0FAFB00F3F6F700A0A5A9007C7E81009193
      94007B7C7D00FFFFFFFFFFFFFFFFFFFFFFFF8FD0D80055D9EC00F3E7E500C9C7
      C600B2AFAE00CBC6C500BCBABA00B4B2B000CDCAC900C0BDBC00CCC7C500BBB6
      B500A09E9F00F8F8F80083838400F7F7F700557053005C94690052A28900528E
      6A004D626100788EB50094B3D9008DA7D0008A9FC8008CA7D100768CB9004B67
      7B00527B5300619865005E926200547254000000000090909000B6B6B600BEBE
      BE00BEBEBE00BEBEBE00B7B7B700AAABAB009B9B9B0098989800959595009494
      940000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFF959B
      9F00AAB6BC00B3BFC500C8D5D900E8EEEF00ECEFF0009EADA600809294007A83
      7F0083878600FFFFFFFFFFFFFFFFFFFFFFFFD2D8D800A2E6F000B2B3B400C3C0
      C000B4B2AF00B3B0B000C0BBBD00D5D0D000BBB8B800C3C0C000C2BEBE00D1CE
      CF00ECEAEA0069696900ACACAA00C2C2C20074867300588C61005A9870006295
      5F005B8C5600445D4E00657A99007E9BC200819BC3006E81A90054696E004C87
      6700559E7B0060905E005B8B5B006E826E000000000000000000B0B0B000B7B7
      B700B7B7B700B4B4B400A6A6A6009B9B9B00A6A6A600ABABAB00ACACAC000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFF9CA4
      A800C8D8E000DBEDF400EFFDFD00FDFFFF00FCFEFF00A0A8AA00767A7D006669
      6A007E808100FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCAC8C700DBD8D800FFFF
      FF00FAF6F700DDD9DA00B5B2B200B2AFAF00D2D1CF00B4B2B000A8A6A700F4F3
      F200CAC9C900C4C4C400DDDDDD0095959500B3BAB3004E754D005E8A5C005A7F
      5E005B835D005F905C0051604F00766A760052575E0055765C00639261006696
      650062956900629362004D764D00ACB4AC000000000000000000000000009E9E
      9E009F9F9F009D9D9D0095959500A9A9A900A9A9A900A0A0A000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFF9FA8
      AD00D4E6F000E7FAFE00F9FFFF00FFFFFF00FDFFFF00B0B7BA00AAAEAF00989B
      9C007D7F8000FFFFFFFFFFFFFFFFFFFFFFFFFDFDFD00EBE9E800FFFFFF00F3F0
      EF00F3F0EF00EEEBEA00EEEBEA00FCF8F700FFFFFF00FFFEFD00EDE9EA00BFBD
      BC00F1F1F100FFFFFFFFEEEEEE00F6F6F600FFFFFFFF6A7F69005F7A6100848D
      A4008996B0007F958F0082878200A296920084987E0087AF870087AC870087AB
      87008CB08C0070977000647A6400FFFFFFFF0000000000000000000000000000
      0000999999009999990095959500696969009A9A9A0000000000000000000000
      0000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFABB2
      B500EEFBFD00FCFEFF00FEFFFF00FFFFFF00FBFBFB00D0D4D600D7DEE100C1C8
      CA00999D9E00FFFFFFFFFFFFFFFFFFFFFFFFF6F6F600F6F5F400FEFEFD00F3F0
      EF00ECE8E700EDEAE800EFECEC00F1EEEF00F3F0EF00F1EEEE00EFECEC00E0DD
      DC00FEFEFE00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE2E4E2006A7E6A00B0BC
      B700C5CEDC00BBC3D100B2BEBF00AFC3B100B8CEB800B8CDB800B9CEB900C0D4
      C000B8CCB8006B7F6B00DEE1DE00FFFFFFFF0000000000000000000000000000
      000000000000C1C1C1009E9E9E005B5B5B0000000000000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FFFFFFFFFFFFFFFFFFFFFFFFFFF1F1
      F100C2C3C400BCBDBE00BDBEBF00BCBEBE00BABBBC00C2C3C300C0C1C200BFC0
      C100E3E3E300FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFD00EFEEEE00D5D5
      D500CAC8C800DEDBDB00F7F5F500FEFDFD00F5F1F100EEEAEA00E6E2E200C6C5
      C400FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE6E8E6008F9B
      8F00C4CDC200EAF1E900F4FAF200F3F9F300F2F8F200F3F9F300ECF3EC00C8D2
      C8008E9A8E00E2E5E200FFFFFFFFFFFFFFFF0000000000000000000000000000
      000000000000000000009F9F9F0000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFDFDFD00EFEFEF00D6D6D600CBC9C900DFDCDC00E6E6
      E600FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFC5CAC5009FA9A000A6B0A600B1BBB100B1BBB100A6B0A6009FA89F00C2C8
      C200FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF424D3E000000000000003E000000
      2800000040000000200000000100010000000000000100000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FFFF000000000000F01F000000000000
      E003000000000000C00300000000000080030000000000008003000000000000
      8003000000000000800100000000000080030000000000008007000000000000
      800F000000000000C01F000000000000E03F000000000000F07F000000000000
      F8FF000000000000FDFF00000000000000000000000000000000000000000000
      000000000000}
  end
  inherited Acao: TActionList
    Left = 720
    Top = 8
  end
  inherited cdsPadrao: TClientDataSet
    CommandText = 'SELECT * FROM MaquinaSeguro'
    Left = 920
    Top = 192
    object cdsPadraoidEmpresa: TIntegerField
      FieldName = 'idEmpresa'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsPadraoidCadEmpresa: TIntegerField
      FieldName = 'idCadEmpresa'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsPadraoidMaquina: TIntegerField
      FieldName = 'idMaquina'
      Required = True
    end
    object cdsPadraoidSeguro: TIntegerField
      FieldName = 'idSeguro'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsPadraodescSeguro: TStringField
      FieldName = 'descSeguro'
      Size = 80
    end
    object cdsPadraodtEmissao: TSQLTimeStampField
      FieldName = 'dtEmissao'
    end
    object cdsPadraodtVencimento: TSQLTimeStampField
      FieldName = 'dtVencimento'
    end
    object cdsPadraoidFornecedor: TIntegerField
      FieldName = 'idFornecedor'
    end
    object cdsPadraoidSeguradora: TIntegerField
      FieldName = 'idSeguradora'
    end
    object cdsPadraohr_kmAtual: TFMTBCDField
      FieldName = 'hr_kmAtual'
      Precision = 18
      Size = 1
    end
    object cdsPadraoidSafra: TIntegerField
      FieldName = 'idSafra'
    end
    object cdsPadraoidGerencial: TIntegerField
      FieldName = 'idGerencial'
    end
    object cdsPadraoidResultado: TIntegerField
      FieldName = 'idResultado'
    end
    object cdsPadraoidRateio: TIntegerField
      FieldName = 'idRateio'
    end
    object cdsPadraovlSeguro: TFMTBCDField
      FieldName = 'vlSeguro'
      Precision = 19
      Size = 4
    end
    object cdsPadraostSeguro: TStringField
      FieldName = 'stSeguro'
      Size = 15
    end
    object cdsPadraovlParcelaDif: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'vlParcelaDif'
      Calculated = True
    end
  end
  inherited dspPadrao: TDataSetProvider
    DataSet = sdsPadrao
    Left = 824
    Top = 192
  end
  inherited dsPadrao: TDataSource
    Left = 1000
    Top = 192
  end
  inherited ImgBotoes: TImageList
    Left = 568
    Top = 8
    Bitmap = {
      494C010106000800840020001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
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
    Left = 896
    Top = 104
  end
  inherited dspLookup: TDataSetProvider
    Left = 856
    Top = 104
  end
  inherited sdsLookup: TSQLDataSet
    CommandText = 'SELECT * FROM Resultado'
    Left = 808
    Top = 104
  end
  inherited cdsEmpresa: TClientDataSet
    Left = 776
    Top = 8
  end
  inherited dsEmpresa: TDataSource
    Left = 808
    Top = 8
  end
  object cdsTituloPagMov: TClientDataSet
    Aggregates = <>
    CommandText = 'SELECT * FROM TituloPagMov'
    Params = <>
    ProviderName = 'dspTituloPagMov'
    AfterInsert = cdsTituloPagMovAfterInsert
    OnReconcileError = cdsPadraoReconcileError
    Left = 920
    Top = 408
    object cdsTituloPagMovidTituloPagMov: TIntegerField
      FieldName = 'idTituloPagMov'
      Required = True
    end
    object cdsTituloPagMovidEmpresa: TIntegerField
      FieldName = 'idEmpresa'
      Required = True
    end
    object cdsTituloPagMovidFornecedor: TIntegerField
      FieldName = 'idFornecedor'
      Required = True
    end
    object cdsTituloPagMovidTituloPag: TIntegerField
      FieldName = 'idTituloPag'
      Required = True
    end
    object cdsTituloPagMovidParcela: TSmallintField
      FieldName = 'idParcela'
      Required = True
    end
    object cdsTituloPagMovidMovFinanceira: TIntegerField
      FieldName = 'idMovFinanceira'
      Required = True
    end
    object cdsTituloPagMovdtTituloPagMov: TSQLTimeStampField
      FieldName = 'dtTituloPagMov'
      Required = True
    end
    object cdsTituloPagMovvlTituloPagMov: TFMTBCDField
      FieldName = 'vlTituloPagMov'
      Required = True
      Precision = 19
      Size = 4
    end
    object cdsTituloPagMovfator: TSmallintField
      FieldName = 'fator'
      Required = True
    end
    object cdsTituloPagMovidCadEmpresa: TSmallintField
      FieldName = 'idCadEmpresa'
      Required = True
    end
  end
  object dsTituloPagParc: TDataSource
    DataSet = cdsTituloPagParc
    Left = 1000
    Top = 364
  end
  object cdsTituloPagParc: TClientDataSet
    Aggregates = <>
    CommandText = 'SELECT * FROM TituloPagParc'
    Params = <>
    ProviderName = 'dspTituloPagParc'
    AfterOpen = cdsPadraoAfterOpen
    AfterInsert = cdsTituloPagParcAfterInsert
    OnReconcileError = cdsPadraoReconcileError
    Left = 920
    Top = 364
  end
  object dspTituloPagParc: TDataSetProvider
    DataSet = sdsTituloPagParc
    Options = [poAllowMultiRecordUpdates, poPropogateChanges, poAllowCommandText, poUseQuoteChar]
    BeforeUpdateRecord = dspTituloPagMovBeforeUpdateRecord
    Left = 824
    Top = 364
  end
  object dspTituloPagMov: TDataSetProvider
    DataSet = sdsTituloPagMov
    Options = [poAllowMultiRecordUpdates, poPropogateChanges, poAllowCommandText, poUseQuoteChar]
    BeforeUpdateRecord = dspTituloPagMovBeforeUpdateRecord
    Left = 824
    Top = 408
  end
  object sdsTituloPagMov: TSQLDataSet
    SchemaName = 'gesys'
    GetMetadata = False
    CommandText = 'SELECT * FROM TituloPagMov'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmPadrao.dbConexao
    Left = 728
    Top = 408
  end
  object sdsTituloPagParc: TSQLDataSet
    SchemaName = 'gesys'
    GetMetadata = False
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
  object cdsTituloPag: TClientDataSet
    Aggregates = <>
    CommandText = 'SELECT * FROM TituloPag'
    Params = <>
    ProviderName = 'dspTituloPag'
    AfterOpen = cdsPadraoAfterOpen
    AfterInsert = cdsTituloPagAfterInsert
    AfterEdit = cdsTituloPagAfterEdit
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
  object dsTituloPag: TDataSource
    DataSet = cdsTituloPag
    Left = 1000
    Top = 320
  end
  object dsMovConta: TDataSource
    DataSet = cdsMovConta
    Left = 1000
    Top = 278
  end
  object dsMovCaixa: TDataSource
    DataSet = cdsMovCaixa
    Left = 1000
    Top = 235
  end
  object cdsMovCaixa: TClientDataSet
    Aggregates = <>
    CommandText = 'SELECT * FROM MovCaixa'
    Params = <>
    ProviderName = 'dspMovCaixa'
    AfterOpen = cdsPadraoAfterOpen
    AfterInsert = cdsMovCaixaAfterInsert
    OnReconcileError = cdsPadraoReconcileError
    Left = 920
    Top = 235
  end
  object cdsMovConta: TClientDataSet
    Aggregates = <>
    CommandText = 'SELECT * FROM MovConta'
    Params = <>
    ProviderName = 'dspMovConta'
    AfterOpen = cdsPadraoAfterOpen
    AfterInsert = cdsMovContaAfterInsert
    OnReconcileError = cdsPadraoReconcileError
    Left = 920
    Top = 278
  end
  object dspMovConta: TDataSetProvider
    DataSet = sdsMovConta
    Options = [poAllowMultiRecordUpdates, poPropogateChanges, poAllowCommandText, poUseQuoteChar]
    BeforeUpdateRecord = dspMovCaixaBeforeUpdateRecord
    Left = 824
    Top = 278
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
  object dsSegAnteriores: TDataSource
    DataSet = cdsSegAnteriores
    Left = 1000
    Top = 452
  end
  object cdsSegAnteriores: TClientDataSet
    Aggregates = <>
    CommandText = 'select * from "MaquinaSeguro"'
    Params = <>
    ProviderName = 'dspSegAnteriores'
    AfterOpen = cdsPadraoAfterOpen
    OnReconcileError = cdsPadraoReconcileError
    Left = 920
    Top = 452
    object cdsSegAnterioresidEmpresa: TIntegerField
      FieldName = 'idEmpresa'
      Required = True
    end
    object cdsSegAnterioresidCadEmpresa: TSmallintField
      FieldName = 'idCadEmpresa'
      Required = True
    end
    object cdsSegAnterioresidSeguro: TIntegerField
      FieldName = 'idSeguro'
      Required = True
    end
    object cdsSegAnterioresidMaquina: TIntegerField
      FieldName = 'idMaquina'
      Required = True
    end
    object cdsSegAnterioresdescSeguro: TStringField
      FieldName = 'descSeguro'
      Size = 80
    end
    object cdsSegAnterioresdtEmissao: TSQLTimeStampField
      FieldName = 'dtEmissao'
    end
    object cdsSegAnterioresdtVencimento: TSQLTimeStampField
      FieldName = 'dtVencimento'
    end
    object cdsSegAnterioresidFornecedor: TIntegerField
      FieldName = 'idFornecedor'
    end
    object cdsSegAnterioresidSeguradora: TIntegerField
      FieldName = 'idSeguradora'
    end
    object cdsSegAnterioreshr_kmAtual: TFMTBCDField
      FieldName = 'hr_kmAtual'
      Precision = 18
      Size = 1
    end
    object cdsSegAnterioresidSafra: TIntegerField
      FieldName = 'idSafra'
    end
    object cdsSegAnterioresidGerencial: TIntegerField
      FieldName = 'idGerencial'
    end
    object cdsSegAnterioresidResultado: TIntegerField
      FieldName = 'idResultado'
    end
    object cdsSegAnterioresidRateio: TSmallintField
      FieldName = 'idRateio'
    end
    object cdsSegAnterioresvlSeguro: TFMTBCDField
      FieldName = 'vlSeguro'
      Precision = 19
      Size = 4
    end
    object cdsSegAnterioresstSeguro: TStringField
      FieldName = 'stSeguro'
      Size = 15
    end
  end
  object dspSegAnteriores: TDataSetProvider
    DataSet = sdsSegAnteriores
    Options = [poAllowMultiRecordUpdates, poPropogateChanges, poAllowCommandText, poUseQuoteChar]
    Left = 824
    Top = 452
  end
  object sdsSegAnteriores: TSQLDataSet
    SchemaName = 'dbo'
    GetMetadata = False
    CommandText = 'select * from "MaquinaSeguro"'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmPadrao.dbConexao
    Left = 728
    Top = 452
  end
  object dsCusto: TDataSource
    DataSet = cdsCusto
    OnStateChange = dsCustoStateChange
    Left = 1000
    Top = 151
  end
  object cdsCusto: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    CommandText = 'SELECT * FROM MaquinaSeguroCusto'
    Params = <>
    ProviderName = 'dspCusto'
    AfterOpen = cdsPadraoAfterOpen
    AfterInsert = cdsCustoAfterEdit
    AfterEdit = cdsCustoAfterEdit
    OnReconcileError = cdsPadraoReconcileError
    Left = 917
    Top = 151
    object cdsCustoidEmpresa: TIntegerField
      FieldName = 'idEmpresa'
      Required = True
    end
    object cdsCustoidCadEmpresa: TSmallintField
      FieldName = 'idCadEmpresa'
      Required = True
    end
    object cdsCustoidSeguro: TIntegerField
      FieldName = 'idSeguro'
      Required = True
    end
    object cdsCustoidGerencial: TIntegerField
      FieldName = 'idGerencial'
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
    object cdsCustovlRateio: TFMTBCDField
      FieldName = 'vlRateio'
      Required = True
      Precision = 19
      Size = 4
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
    BeforeUpdateRecord = dspCustoBeforeUpdateRecord
    Left = 824
    Top = 151
  end
  object sdsCusto: TSQLDataSet
    SchemaName = 'gesys'
    GetMetadata = False
    CommandText = 'SELECT * FROM MaquinaSeguroCusto'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmPadrao.dbConexao
    Left = 728
    Top = 151
  end
  object cdsResultado: TClientDataSet
    Active = True
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
    Left = 728
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
  object sdsPadrao: TSQLDataSet
    SchemaName = 'gesys'
    GetMetadata = False
    CommandText = 'SELECT * FROM MaquinaSeguro'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmPadrao.dbConexao
    Left = 728
    Top = 199
  end
  object dspFinanc: TDataSetProvider
    DataSet = sdsFinanc
    Options = [poAllowMultiRecordUpdates, poPropogateChanges, poAllowCommandText, poUseQuoteChar]
    BeforeApplyUpdates = dspPadraoBeforeApplyUpdates
    Left = 832
    Top = 512
  end
  object cdsFinanc: TClientDataSet
    Aggregates = <>
    CommandText = 'SELECT * FROM MaquinaSeguroFinanc'
    Params = <>
    ProviderName = 'dspFinanc'
    AfterOpen = cdsPadraoAfterOpen
    OnReconcileError = cdsPadraoReconcileError
    Left = 912
    Top = 512
    object cdsFinancidEmpresa: TIntegerField
      FieldName = 'idEmpresa'
      Required = True
    end
    object cdsFinancidCadEmpresa: TSmallintField
      FieldName = 'idCadEmpresa'
      Required = True
    end
    object cdsFinancidSeguro: TIntegerField
      FieldName = 'idSeguro'
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
  object sdsFinanc: TSQLDataSet
    SchemaName = 'gesys'
    GetMetadata = False
    CommandText = 'SELECT * FROM MaquinaSeguroFinanc'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmPadrao.dbConexao
    Left = 744
    Top = 512
  end
end
