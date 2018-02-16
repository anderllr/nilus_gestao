inherited FrmCadOrdemFrete: TFrmCadOrdemFrete
  Caption = 'Lan'#231'amento de Ordens de Frete'
  ClientHeight = 590
  ClientWidth = 1106
  Icon.Data = {
    0000010001001010000001002000680400001600000028000000100000002000
    0000010020000000000000040000000000000000000000000000000000000000
    000000000000000000006768692268686867595A5B2400000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    000000000000000000007C7C7C60E2DAD5FFBBB8B5E588888AA76566665B5354
    5416000000000000000000000000000000000000000000000000000000000000
    00000000000000000000A09C999EFCEDE5FFF4EBE6FFF4EFECFFDEDBDAFFB2B2
    B3DF8686879D6162624E54545418000000000000000000000000000000000000
    0000000000005D5E5E10C7C2C1D1F3E8E3FFE7E2E0FFEEE5DFFFEEE4DFFFF3EC
    E9FFF1EBE9FFD9D7D7FDAFAEAED87C7D7D935C5C5C495B5B5B0C000000000000
    0000000000006B6B6C3AE5DEDAF5EFE8E4FFE7E4E4FFECE8E7FFE7E3E2FFE6E1
    DEFFF1E8E3FFF2E9E4FFF7EFECFFF4EFEDFFD8D5D5FFA8A7A7D47979796E0000
    0000000000008A898976F5ECE7FFF3EDECFFF4F0EEFFF1ECEBFFEDE8E8FFEAE6
    E5FFEAE7E6FFE7E3E2FFEDE6E3FFEFE7E2FFF3EBE7FFF8F1EDFFEFEAEAAD0000
    000000000000B3B0AEB5FBF1ECFFECE8E7FFE5E1E0FFF0ECEAFFF3EEEDFFF5EF
    EFFFEFEBEAFFEAE6E5FFEDE9E8FFF1EEECFFEFEAE8FFEDE6E2F5F1EBE9380000
    00005E5F6017D8D2D0E9F9F0EBFFE5E2E0FFDAD8D7FFDFDCDAFFE3E0E0FFE8E4
    E4FFEFEBEAFFF4F0EFFFF2EDECFFF1EDEBFFF0ECECFFEFEAE9A9EDE7E6020000
    00007D7C7C4EF1E9E7FFF6EFEDFFE4E1E0FFDDDAD9FFE2DEDDFFDCD8D8FFDDD9
    D9FFDFDCDCFFE4E1E0FFF2EEEDFFF1EDECFFF1EDEBFBEDE7E739000000000000
    00009999988AFDF5F1FFF0EAEAFFDFDCDBFFE1DDDCFFE5E0E0FFE2DDDDFFE2DE
    DEFFDDD9D9FFE6E2E1FFF4EFEEFFF3EFEEFFF0EBE9AF00000000000000005D5D
    5D0AC2BFBDC4FFF7F4FFECE8E8FFDBD8D7FFE1DDDCFFE1DEDEFFE2DEDDFFE5E1
    E0FFE6E2E1FFF4F2F2FFF5F1F2FFF3EEEEF7ECE9E83D00000000000000006466
    672CE5E0DEEDFCF6F4FFF7F3F2FFF1EDEDFFEEEAE9FFE6E4E3FFE3E0E1FFD9D6
    D7FFD2CDCCFFD2CCC3FFDBD4C8FFF4F0F1B0EBE9E80300000000000000008383
    8365FBF6F5FFFBF6F5FFF9F5F3FFFBF7F6FFEEECEBFFDAD6D1FFCEC7BBFFCDC5
    B5FFDDD4C2FFEDE4D6FFF5EEE9FCEEEBEB40000000000000000000000000ADAC
    AB93FFFFFCFFFAF5F5FFFBF7F5FFF9F4F3FFC9CACCFFD8D5CCFFF6EDE2FFEEE9
    E6FFFCF7F8FFFAF6F8FFF4F0EFB7EDEAE901000000000000000000000000C3C3
    C31AFFFFFF67FEFAF9B6FCF9F7E9FBF6F5FFFCF9F8FFFFFDFCFFEDE9EBFFDDDE
    DFFFE0DDDDFFF5F1EFFDF3EEED43000000000000000000000000000000000000
    000000000000FFFDFD03FFFDFD29FEFCFB70FBF8F7BCEAE7E6D3E9E7E6B9F7F6
    F59CECEBEB87DDDBDB57E4E1E00300000000000000000000000000000000E3FF
    0000E07F0000E00F0000C0010000C0000000C0000000C0000000800000008001
    00008003000000030000000300000007000000070000000F0000C00F0000}
  OnKeyDown = FormKeyDown
  ExplicitTop = -100
  ExplicitWidth = 1122
  ExplicitHeight = 629
  PixelsPerInch = 96
  TextHeight = 13
  inherited Bevel1: TBevel
    Top = 555
    Width = 1106
    ExplicitTop = 392
    ExplicitWidth = 798
  end
  inherited Bevel2: TBevel
    Width = 1106
    ExplicitWidth = 791
  end
  inherited PagAbas: TCPageControl
    Width = 1106
    Height = 502
    ExplicitWidth = 1106
    ExplicitHeight = 502
    inherited TabAbas: TTabSheet
      Caption = 'Cadastro'
      ExplicitLeft = 4
      ExplicitTop = 25
      ExplicitWidth = 1098
      ExplicitHeight = 473
      object CGroupBox13: TCGroupBox
        Left = 3
        Top = 3
        Width = 536
        Height = 46
        Caption = 'Dados Gerais'
        TabOrder = 0
        object CLabel2: TCLabel
          Left = 137
          Top = 22
          Width = 23
          Height = 13
          Alignment = taRightJustify
          Caption = 'Data'
        end
        object CLabel14: TCLabel
          Left = 10
          Top = 22
          Width = 37
          Height = 13
          Alignment = taRightJustify
          Caption = 'N'#250'mero'
        end
        object CLabel34: TCLabel
          Left = 247
          Top = 22
          Width = 50
          Height = 13
          Alignment = taRightJustify
          Caption = 'Nr. Fatura'
        end
        object CLabel37: TCLabel
          Left = 387
          Top = 22
          Width = 58
          Height = 13
          Alignment = taRightJustify
          Caption = 'Lan'#231'amento'
        end
        object DBEdtEmissao: TCDBEdit
          Left = 166
          Top = 19
          Width = 75
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'dtEmissao'
          DataSource = dsPadrao
          MaxLength = 10
          TabOrder = 1
          DecimalControl = True
          KeyMode = kmDate
        end
        object DBEidOrdemFrete: TCDBEdit
          Left = 53
          Top = 19
          Width = 78
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'idOrdemFrete'
          DataSource = dsPadrao
          TabOrder = 0
          OnExit = DBEidOrdemFreteExit
          OnKeyDown = DBEidOrdemFreteKeyDown
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEnrFatura: TCDBEdit
          Left = 303
          Top = 19
          Width = 78
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'nrFatura'
          DataSource = dsPadrao
          TabOrder = 2
          OnExit = DBEnrFaturaExit
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEdtLancamento: TCDBEdit
          Left = 451
          Top = 19
          Width = 75
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'dtLancamento'
          DataSource = dsPadrao
          MaxLength = 10
          TabOrder = 3
          DecimalControl = True
          KeyMode = kmDate
        end
      end
      object grpDadosFrete: TCGroupBox
        Left = 3
        Top = 356
        Width = 640
        Height = 108
        Caption = 'Dados do Frete'
        TabOrder = 5
        object CLabel15: TCLabel
          Left = 139
          Top = 42
          Width = 92
          Height = 13
          Alignment = taRightJustify
          Caption = 'Desconto (Quebra)'
        end
        object CLabel1: TCLabel
          Left = 9
          Top = 20
          Width = 65
          Height = 13
          Alignment = taRightJustify
          Caption = 'Tarifa (Bruto)'
        end
        object CLabel16: TCLabel
          Left = 141
          Top = 20
          Width = 90
          Height = 13
          Alignment = taRightJustify
          Caption = 'Valor Frete (Bruto)'
        end
        object CLabel3: TCLabel
          Left = 455
          Top = 20
          Width = 105
          Height = 13
          Alignment = taRightJustify
          Caption = 'Valor Frete (Empresa)'
        end
        object CLabel5: TCLabel
          Left = 310
          Top = 20
          Width = 80
          Height = 13
          Alignment = taRightJustify
          Caption = 'Tarifa (Empresa)'
        end
        object CLabel7: TCLabel
          Left = 40
          Top = 42
          Width = 34
          Height = 13
          Alignment = taRightJustify
          Caption = 'Seguro'
        end
        object CLabel17: TCLabel
          Left = 316
          Top = 42
          Width = 60
          Height = 13
          Alignment = taRightJustify
          Caption = 'Valor L'#237'quido'
        end
        object CLabel18: TCLabel
          Left = 480
          Top = 42
          Width = 82
          Height = 13
          Alignment = taRightJustify
          Caption = 'Outras Despesas'
        end
        object CLabel21: TCLabel
          Left = 7
          Top = 64
          Width = 67
          Height = 13
          Alignment = taRightJustify
          Caption = 'Adiantamento'
        end
        object CLabel22: TCLabel
          Left = 443
          Top = 64
          Width = 119
          Height = 13
          Alignment = taRightJustify
          Caption = 'Saldo do Frete (A Pagar)'
        end
        object CLabel23: TCLabel
          Left = 171
          Top = 64
          Width = 144
          Height = 13
          Alignment = taRightJustify
          Caption = 'Adicional de Peso de Chegada'
        end
        object CLabel35: TCLabel
          Left = 6
          Top = 86
          Width = 68
          Height = 13
          Alignment = taRightJustify
          Caption = 'Tarifa (Class.)'
        end
        object CLabel36: TCLabel
          Left = 167
          Top = 86
          Width = 64
          Height = 13
          Alignment = taRightJustify
          Caption = 'Total (Class.)'
        end
        object DBEvlDescontoQuebra: TCDBEdit
          Left = 237
          Top = 39
          Width = 67
          Height = 19
          TabStop = False
          BevelKind = bkTile
          BorderStyle = bsNone
          Color = 14149350
          DataField = 'vlDescontoQuebra'
          DataSource = dsPadrao
          ReadOnly = True
          TabOrder = 5
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEvlFreteBruto: TCDBEdit
          Left = 80
          Top = 17
          Width = 53
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'vlFreteBruto'
          DataSource = dsPadrao
          TabOrder = 0
          OnEnter = DBEvlFreteBrutoEnter
          OnExit = DBEvlFreteBrutoExit
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEvlFreteTotal: TCDBEdit
          Left = 237
          Top = 17
          Width = 67
          Height = 19
          TabStop = False
          BevelKind = bkTile
          BorderStyle = bsNone
          Color = 14149350
          DataField = 'vlFreteTotal'
          DataSource = dsPadrao
          ReadOnly = True
          TabOrder = 1
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEvlFreteEmpresaTotal: TCDBEdit
          Left = 566
          Top = 17
          Width = 69
          Height = 19
          TabStop = False
          BevelKind = bkTile
          BorderStyle = bsNone
          Color = 14149350
          DataField = 'vlFreteEmpresaTotal'
          DataSource = dsPadrao
          ReadOnly = True
          TabOrder = 3
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEvlFreteEmpresa: TCDBEdit
          Left = 396
          Top = 17
          Width = 53
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'vlFreteEmpresa'
          DataSource = dsPadrao
          TabOrder = 2
          OnEnter = DBEvlFreteBrutoEnter
          OnExit = DBEvlFreteBrutoExit
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEvlSeguro: TCDBEdit
          Left = 80
          Top = 39
          Width = 53
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'vlSeguro'
          DataSource = dsPadrao
          TabOrder = 4
          OnEnter = DBEvlFreteBrutoEnter
          OnExit = DBEvlFreteBrutoExit
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEvlFreteLiquido: TCDBEdit
          Left = 382
          Top = 39
          Width = 67
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'vlFreteLiquido'
          DataSource = dsPadrao
          TabOrder = 6
          OnEnter = DBEvlFreteBrutoEnter
          OnExit = DBEvlFreteBrutoExit
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEvlOutrasDespesas: TCDBEdit
          Left = 568
          Top = 39
          Width = 67
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'vlOutrasDespesas'
          DataSource = dsPadrao
          TabOrder = 7
          OnEnter = DBEvlFreteBrutoEnter
          OnExit = DBEvlFreteBrutoExit
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEvlAdiantamento: TCDBEdit
          Left = 80
          Top = 61
          Width = 67
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'vlAdiantamento'
          DataSource = dsPadrao
          TabOrder = 8
          OnEnter = DBEvlFreteBrutoEnter
          OnExit = DBEvlFreteBrutoExit
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEvlFreteSaldo: TCDBEdit
          Left = 568
          Top = 61
          Width = 67
          Height = 19
          TabStop = False
          BevelKind = bkTile
          BorderStyle = bsNone
          Color = 14149350
          DataField = 'vlFreteSaldo'
          DataSource = dsPadrao
          ReadOnly = True
          TabOrder = 10
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEvlSaldoAPagar: TCDBEdit
          Left = 321
          Top = 61
          Width = 67
          Height = 19
          TabStop = False
          BevelKind = bkTile
          BorderStyle = bsNone
          Color = 14149350
          DataField = 'vlSaldoAPagar'
          DataSource = dsPadrao
          ReadOnly = True
          TabOrder = 9
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEvlTarifaClassif: TCDBEdit
          Left = 80
          Top = 83
          Width = 53
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'vlTarifaClassif'
          DataSource = dsPadrao
          TabOrder = 11
          OnEnter = DBEvlFreteBrutoEnter
          OnExit = DBEvlFreteBrutoExit
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEvlTotalClassif: TCDBEdit
          Left = 237
          Top = 83
          Width = 67
          Height = 19
          TabStop = False
          BevelKind = bkTile
          BorderStyle = bsNone
          Color = 14149350
          DataField = 'vlTotalClassif'
          DataSource = dsPadrao
          ReadOnly = True
          TabOrder = 12
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBCKabonaQuebra: TCDBCheckBox
          Left = 344
          Top = 85
          Width = 218
          Height = 17
          Caption = 'Abona Desconto de quebra do Motorista?'
          DataField = 'abonaQuebra'
          DataSource = dsPadrao
          TabOrder = 13
          ValueChecked = 'S'
          ValueUnchecked = 'N'
          OnEnter = DBCKabonaQuebraEnter
          OnExit = DBCKabonaQuebraExit
        end
      end
      object grpNf: TCGroupBox
        Left = 3
        Top = 135
        Width = 542
        Height = 107
        Caption = 'Notas Fiscais'
        TabOrder = 2
        object CLabel6: TCLabel
          Left = 16
          Top = 17
          Width = 42
          Height = 13
          Alignment = taRightJustify
          Caption = 'S'#233'rie Nf.'
        end
        object CLabel4: TCLabel
          Left = 289
          Top = 17
          Width = 37
          Height = 13
          Alignment = taRightJustify
          Caption = 'N'#250'mero'
        end
        object CLabel9: TCLabel
          Left = 409
          Top = 17
          Width = 42
          Height = 13
          Alignment = taRightJustify
          Caption = 'Valor Nf.'
        end
        object CLabel20: TCLabel
          Left = 35
          Top = 39
          Width = 23
          Height = 13
          Alignment = taRightJustify
          Caption = 'Unit.'
        end
        object CLabel8: TCLabel
          Left = 145
          Top = 39
          Width = 52
          Height = 13
          Alignment = taRightJustify
          Caption = 'Peso Sa'#237'da'
        end
        object CLabel13: TCLabel
          Left = 284
          Top = 39
          Width = 55
          Height = 13
          Alignment = taRightJustify
          Caption = 'Peso Cheg.'
        end
        object CLabel10: TCLabel
          Left = 430
          Top = 39
          Width = 36
          Height = 13
          Alignment = taRightJustify
          Caption = 'Quebra'
        end
        object CLabel19: TCLabel
          Left = 8
          Top = 60
          Width = 50
          Height = 13
          Alignment = taRightJustify
          Caption = '% Quebra'
        end
        object CLabel24: TCLabel
          Left = 371
          Top = 61
          Width = 92
          Height = 13
          Alignment = taRightJustify
          Caption = 'Desconto (Quebra)'
        end
        object CLabel11: TCLabel
          Left = 127
          Top = 61
          Width = 42
          Height = 13
          Alignment = taRightJustify
          Caption = '% Toler.'
        end
        object CLabel12: TCLabel
          Left = 239
          Top = 61
          Width = 49
          Height = 13
          Alignment = taRightJustify
          Caption = 'Toler'#226'ncia'
        end
        object CLabel25: TCLabel
          Left = 13
          Top = 83
          Width = 45
          Height = 13
          Alignment = taRightJustify
          Caption = 'Motorista'
        end
        object CLabel26: TCLabel
          Left = 420
          Top = 83
          Width = 25
          Height = 13
          Alignment = taRightJustify
          Caption = 'Placa'
        end
        object DBEidDocSerie: TCDBEdit
          Left = 64
          Top = 14
          Width = 46
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'idDocSerie'
          DataSource = dsOrdemNf
          TabOrder = 0
          Find = dmFind.FindDocSerieNf
          AcaoCad = frmPrincipal.actCadDocSerie
          DecimalControl = True
          KeyMode = kmUSUpper
        end
        object LookDocSerie: TCLookUp
          Left = 116
          Top = 14
          Width = 167
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
          DataSource = dsOrdemNf
          ValidaCampoObrigatorio = True
          CampoObrigatorio = True
          LookUpTable = 'DocSerie'
          ReturnField = 'descDocSerie'
        end
        object DBEidNf: TCDBEdit
          Left = 332
          Top = 14
          Width = 64
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'idNf'
          DataSource = dsOrdemNf
          MaxLength = 10
          TabOrder = 2
          OnEnter = DBEqtQuebraEnter
          OnExit = DBEidNfExit
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEvlNf: TCDBEdit
          Left = 457
          Top = 14
          Width = 79
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          Color = 14149350
          DataField = 'vlNf'
          DataSource = dsOrdemNf
          TabOrder = 3
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEvlProduto: TCDBEdit
          Left = 64
          Top = 36
          Width = 59
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          Color = 14149350
          DataField = 'vlProduto'
          DataSource = dsOrdemNf
          TabOrder = 4
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEqtPesoSaida: TCDBEdit
          Left = 203
          Top = 36
          Width = 69
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          Color = 14149350
          DataField = 'qtPesoSaida'
          DataSource = dsOrdemNf
          TabOrder = 5
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEqtPesoChegada: TCDBEdit
          Left = 345
          Top = 36
          Width = 69
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'qtPesoChegada'
          DataSource = dsOrdemNf
          MaxLength = 10
          TabOrder = 6
          OnEnter = DBEqtQuebraEnter
          OnExit = DBEqtPesoChegadaExit
          DecimalControl = True
          KeyMode = kmInteger
        end
        object DBEqtQuebra: TCDBEdit
          Left = 472
          Top = 36
          Width = 64
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'qtQuebra'
          DataSource = dsOrdemNf
          MaxLength = 10
          TabOrder = 7
          OnEnter = DBEqtQuebraEnter
          OnExit = DBEqtQuebraExit
          DecimalControl = True
          KeyMode = kmInteger
        end
        object DBEprQuebra: TCDBEdit
          Left = 64
          Top = 58
          Width = 48
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          Color = 14149350
          DataField = 'prQuebra'
          DataSource = dsOrdemNf
          TabOrder = 8
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEvlDescontoQuebraN: TCDBEdit
          Left = 469
          Top = 58
          Width = 67
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'vlDescontoQuebra'
          DataSource = dsOrdemNf
          TabOrder = 11
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEprTolerancia: TCDBEdit
          Left = 175
          Top = 58
          Width = 48
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          Color = 14149350
          DataField = 'prTolerancia'
          DataSource = dsOrdemNf
          TabOrder = 9
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEqtTolerancia: TCDBEdit
          Left = 294
          Top = 58
          Width = 67
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          Color = 14149350
          DataField = 'qtTolerancia'
          DataSource = dsOrdemNf
          TabOrder = 10
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEidMotorista: TCDBEdit
          Left = 64
          Top = 80
          Width = 53
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'idMotorista'
          DataSource = dsOrdemNf
          TabOrder = 12
          Find = dmFind.FindFornecedor
          DecimalControl = True
          KeyMode = kmNormal
        end
        object LookMotorista: TCLookUp
          Left = 123
          Top = 80
          Width = 273
          Height = 19
          Alignment = taLeftJustify
          BevelInner = bvSpace
          BevelOuter = bvLowered
          Color = 14149350
          ParentBackground = False
          TabOrder = 13
          Key.Strings = (
            'idMotorista')
          LookUpKey.Strings = (
            'idCliente')
          ClientDataSet = cdsLookup
          DataSource = dsOrdemNf
          ValidaCampoObrigatorio = True
          CampoObrigatorio = True
          LookUpTable = 'vCadClienteContabil'
          ReturnField = 'descCadCliente'
        end
        object DBEplaca: TCDBEdit
          Left = 451
          Top = 80
          Width = 85
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'placa'
          DataSource = dsOrdemNf
          TabOrder = 14
          DecimalControl = True
          KeyMode = kmUSUpper
        end
      end
      object grpBotoes: TCGroupBox
        Left = 551
        Top = 135
        Width = 92
        Height = 138
        TabOrder = 4
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
      object grpGradeNf: TCGroupBox
        Left = 3
        Top = 248
        Width = 542
        Height = 102
        TabOrder = 3
        object CDBGrid1: TCDBGrid
          Left = 7
          Top = 6
          Width = 529
          Height = 89
          TabStop = False
          DataSource = dsOrdemNf
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
              FieldName = 'idDocSerie'
              Title.Caption = 'Serie'
              Width = 64
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'idNf'
              Title.Caption = 'Nr. Nota'
              Width = 55
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'vlNf'
              Title.Caption = 'Valor Nf.'
              Width = 80
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'vlProduto'
              Title.Caption = 'Valor Produto'
              Width = 80
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'qtPesoSaida'
              Title.Caption = 'Peso Sa'#237'da'
              Width = 65
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'prQuebra'
              Title.Caption = '% Queb.'
              Width = 50
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'qtQuebra'
              Title.Caption = 'Qt.Quebra'
              Width = 60
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'prTolerancia'
              Title.Caption = '% Tol.'
              Width = 40
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'qtTolerancia'
              Title.Caption = 'Qt.Tol.'
              Width = 65
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'qtPesoChegada'
              Title.Caption = 'Peso Chegada'
              Width = 75
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'vlDescontoQuebra'
              Title.Caption = 'Valor Quebra'
              Width = 80
              Visible = True
            end>
        end
      end
      object grpSoma: TCGroupBox
        Left = 551
        Top = 279
        Width = 92
        Height = 71
        TabOrder = 6
        object CLabel43: TCLabel
          Left = 16
          Top = 0
          Width = 59
          Height = 13
          Alignment = taRightJustify
          Caption = 'Peso Total'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object CLabel27: TCLabel
          Left = 23
          Top = 31
          Width = 49
          Height = 13
          Alignment = taRightJustify
          Caption = 'Chegada'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object DBEqtPesoSaidaTotal: TCDBEdit
          Left = 8
          Top = 13
          Width = 77
          Height = 19
          TabStop = False
          BevelKind = bkTile
          BorderStyle = bsNone
          Color = 15201011
          DataField = 'qtPesoSaidaTotal'
          DataSource = dsOrdemNf
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
        object DBEqtPesoChegadaTotal: TCDBEdit
          Left = 8
          Top = 45
          Width = 77
          Height = 19
          TabStop = False
          BevelKind = bkTile
          BorderStyle = bsNone
          Color = 15201011
          DataField = 'qtPesoChegadaTotal'
          DataSource = dsOrdemNf
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
      object grpFinanceiro: TCGroupBox
        Left = 3
        Top = 55
        Width = 640
        Height = 74
        Caption = 'Gera'#231#227'o do Financeiro'
        TabOrder = 1
        object CLabel28: TCLabel
          Left = 11
          Top = 22
          Width = 56
          Height = 13
          Alignment = taRightJustify
          Caption = 'Forn. Adto.'
        end
        object CLabel29: TCLabel
          Left = 12
          Top = 47
          Width = 55
          Height = 13
          Alignment = taRightJustify
          Caption = 'Forn. Saldo'
        end
        object CLabel30: TCLabel
          Left = 441
          Top = 22
          Width = 31
          Height = 13
          Alignment = taRightJustify
          Caption = 'Status'
        end
        object CLabel31: TCLabel
          Left = 441
          Top = 47
          Width = 31
          Height = 13
          Alignment = taRightJustify
          Caption = 'Status'
        end
        object CLabel32: TCLabel
          Left = 327
          Top = 22
          Width = 27
          Height = 13
          Alignment = taRightJustify
          Caption = 'Venc.'
        end
        object CLabel33: TCLabel
          Left = 327
          Top = 47
          Width = 27
          Height = 13
          Alignment = taRightJustify
          Caption = 'Venc.'
        end
        object DBEidFornecedorAdto: TCDBEdit
          Left = 73
          Top = 19
          Width = 62
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'idFornecedorAdto'
          DataSource = dsPadrao
          TabOrder = 0
          Find = dmFind.FindFornecedor
          DecimalControl = True
          KeyMode = kmNormal
        end
        object LookFornecedor: TCLookUp
          Left = 141
          Top = 19
          Width = 180
          Height = 19
          Alignment = taLeftJustify
          BevelInner = bvSpace
          BevelOuter = bvLowered
          Color = 14149350
          ParentBackground = False
          TabOrder = 1
          Key.Strings = (
            'idFornecedorAdto')
          LookUpKey.Strings = (
            'idFornecedor')
          ClientDataSet = cdsLookup
          DataSource = dsPadrao
          ValidaCampoObrigatorio = True
          CampoObrigatorio = True
          LookUpTable = 'vCadFornecedorContabil'
          ReturnField = 'descCadFornecedor'
        end
        object DBEidFornecedorSaldo: TCDBEdit
          Left = 73
          Top = 44
          Width = 62
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'idFornecedorSaldo'
          DataSource = dsPadrao
          TabOrder = 5
          Find = dmFind.FindFornecedor
          DecimalControl = True
          KeyMode = kmNormal
        end
        object CLookUp1: TCLookUp
          Left = 141
          Top = 44
          Width = 180
          Height = 19
          Alignment = taLeftJustify
          BevelInner = bvSpace
          BevelOuter = bvLowered
          Color = 14149350
          ParentBackground = False
          TabOrder = 6
          Key.Strings = (
            'idFornecedorSaldo')
          LookUpKey.Strings = (
            'idFornecedor')
          ClientDataSet = cdsLookup
          DataSource = dsPadrao
          ValidaCampoObrigatorio = True
          CampoObrigatorio = True
          LookUpTable = 'vCadFornecedorContabil'
          ReturnField = 'descCadFornecedor'
        end
        object DBEstFinancAdto: TCDBEdit
          Left = 478
          Top = 19
          Width = 67
          Height = 19
          TabStop = False
          BevelKind = bkTile
          BorderStyle = bsNone
          Color = 14149350
          DataField = 'stFinancAdto'
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
          KeyMode = kmNormal
        end
        object DBEstFinancSaldo: TCDBEdit
          Left = 478
          Top = 44
          Width = 67
          Height = 19
          TabStop = False
          BevelKind = bkTile
          BorderStyle = bsNone
          Color = 14149350
          DataField = 'stFinancSaldo'
          DataSource = dsPadrao
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 8
          DecimalControl = True
          KeyMode = kmNormal
        end
        object BtnFinanceiroAdto: TCBitBtn
          Left = 551
          Top = 19
          Width = 82
          Height = 19
          Caption = 'Gerar [F7]'
          Glyph.Data = {
            36060000424D3606000000000000360000002800000020000000100000000100
            18000000000000060000120B0000120B00000000000000000000FF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF1C98CE
            1C98CE1C98CE1C98CEFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FF848484848484848484848484FF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF1C98CE
            AAF0F87DF4FB6CEAF730B1DC30B1DC30B1DC1C98CE1C98CE1193CEFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FF848484DBDBDBC8C8C8BFBFBF96969696969696
            96968484848484847D7D7DFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF1C98CE
            84D8ED92FFFF7DFBFF80FBFF81FAFF7DF4FF70EAFC63DEF430B1DC30B1DCFF00
            FFFF00FFFF00FFFF00FFFF00FF848484C6C6C6D3D3D3CACACACBCBCBCCCCCCCA
            CACAC3C3C3BABABA969696969696FF00FFFF00FFFF00FFFF00FFFF00FF1C98CE
            65C5E397FBFE77F6FF78F4FF76F0FF75F0FF77F2FF78F2FF7EF4FF53C6E71C98
            CEFF00FFFF00FFFF00FFFF00FF848484B4B4B4D5D5D5C7C7C7C8C8C8C7C7C7C6
            C6C6C7C7C7C8C8C8CACACAADADAD848484FF00FFFF00FFFF00FFFF00FF1C98CE
            1C98CE86E6F47BFBFF78F4FF77F2FF74EFFF74EFFF70EDFE72EBFF55C9E91C98
            CEFF00FFFF00FFFF00FFFF00FF848484848484CACACAC9C9C9C8C8C8C7C7C7C6
            C6C6C6C6C6C4C4C4C5C5C5AFAFAF848484FF00FFFF00FFFF00FFFF00FF1C98CE
            57D8EF1C98CE92FEFE76F7FF79F3FF74F0FF73EFFF73EDFE73EDFF55C9E968E2
            FB1C98CEFF00FFFF00FFFF00FF848484B2B2B2848484D3D3D3C7C7C7C8C8C8C6
            C6C6C5C5C5C5C5C5C5C5C5AFAFAFBFBFBF848484FF00FFFF00FFFF00FF1C98CE
            7EF8FC1C98CE77CEE97FDDEF7FE0F290EEFA80F6FF6DEEFF6FEDFF51C5E673ED
            FF41C4E3FF00FFFF00FFFF00FF848484C9C9C9848484BFBFBFC5C5C5C6C6C6D0
            D0D0CBCBCBC3C3C3C4C4C4ACACACC5C5C5A2A2A2FF00FFFF00FFFF00FF1C98CE
            8CFFFF67E6F41C98CE1C98CE1C98CE5BC0E27BDDF28EF4FE7EF4FF5ED3F279EF
            FF77EFF81EA1D3FF00FFFF00FF848484D1D1D1BCBCBC848484848484848484AF
            AFAFC4C4C4D1D1D1CACACAB7B7B7C8C8C8C5C5C5888888FF00FFFF00FF1C98CE
            86FFFF81FFFF82FEFF7EFAFF7BF7FE1C98CE1C98CE6ECEE991E0F086D9F391E1
            F4A4F0FA38AFD9FF00FFFF00FF848484CECECECCCCCCCCCCCCCACACAC9C9C984
            8484848484BBBBBBCDCDCDC9C9C9CFCFCFD9D9D99A9A9AFF00FFFF00FF1C98CE
            8AFFFF79FAFF79F6FF7AF4FF80F8FF82FCFF77F4FE1C98CE1C98CE1C98CE1E96
            CB289DCE1C98CCFF00FFFF00FF848484D0D0D0C8C8C8C8C8C8C9C9C9CBCBCBCC
            CCCCC7C7C78484848484848484848585858C8C8C848484FF00FFFF00FF1C98CE
            84F0F891FFFF8AFFFF81FCFF60D5EE1C98CE1C98CE1C98CE1C98CE1C98CE1EA1
            D3FF00FFFF00FFFF00FFFF00FF848484CBCBCBD3D3D3D0D0D0CCCCCCB6B6B684
            8484848484848484848484848484888888FF00FFFF00FFFF00FFFF00FFFF00FF
            1C98CE1C98CE1C98CE1C98CE1C98CE48B6DCFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FF848484848484848484848484848484A3
            A3A3FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
          Margin = 5
          NumGlyphs = 2
          Spacing = 5
          TabOrder = 4
          OnClick = BtnFinanceiroAdtoClick
        end
        object BtnFinanceiroSaldo: TCBitBtn
          Left = 551
          Top = 44
          Width = 82
          Height = 19
          Caption = 'Gerar [F8]'
          Glyph.Data = {
            36060000424D3606000000000000360000002800000020000000100000000100
            18000000000000060000120B0000120B00000000000000000000FF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF1C98CE
            1C98CE1C98CE1C98CEFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FF848484848484848484848484FF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF1C98CE
            AAF0F87DF4FB6CEAF730B1DC30B1DC30B1DC1C98CE1C98CE1193CEFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FF848484DBDBDBC8C8C8BFBFBF96969696969696
            96968484848484847D7D7DFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF1C98CE
            84D8ED92FFFF7DFBFF80FBFF81FAFF7DF4FF70EAFC63DEF430B1DC30B1DCFF00
            FFFF00FFFF00FFFF00FFFF00FF848484C6C6C6D3D3D3CACACACBCBCBCCCCCCCA
            CACAC3C3C3BABABA969696969696FF00FFFF00FFFF00FFFF00FFFF00FF1C98CE
            65C5E397FBFE77F6FF78F4FF76F0FF75F0FF77F2FF78F2FF7EF4FF53C6E71C98
            CEFF00FFFF00FFFF00FFFF00FF848484B4B4B4D5D5D5C7C7C7C8C8C8C7C7C7C6
            C6C6C7C7C7C8C8C8CACACAADADAD848484FF00FFFF00FFFF00FFFF00FF1C98CE
            1C98CE86E6F47BFBFF78F4FF77F2FF74EFFF74EFFF70EDFE72EBFF55C9E91C98
            CEFF00FFFF00FFFF00FFFF00FF848484848484CACACAC9C9C9C8C8C8C7C7C7C6
            C6C6C6C6C6C4C4C4C5C5C5AFAFAF848484FF00FFFF00FFFF00FFFF00FF1C98CE
            57D8EF1C98CE92FEFE76F7FF79F3FF74F0FF73EFFF73EDFE73EDFF55C9E968E2
            FB1C98CEFF00FFFF00FFFF00FF848484B2B2B2848484D3D3D3C7C7C7C8C8C8C6
            C6C6C5C5C5C5C5C5C5C5C5AFAFAFBFBFBF848484FF00FFFF00FFFF00FF1C98CE
            7EF8FC1C98CE77CEE97FDDEF7FE0F290EEFA80F6FF6DEEFF6FEDFF51C5E673ED
            FF41C4E3FF00FFFF00FFFF00FF848484C9C9C9848484BFBFBFC5C5C5C6C6C6D0
            D0D0CBCBCBC3C3C3C4C4C4ACACACC5C5C5A2A2A2FF00FFFF00FFFF00FF1C98CE
            8CFFFF67E6F41C98CE1C98CE1C98CE5BC0E27BDDF28EF4FE7EF4FF5ED3F279EF
            FF77EFF81EA1D3FF00FFFF00FF848484D1D1D1BCBCBC848484848484848484AF
            AFAFC4C4C4D1D1D1CACACAB7B7B7C8C8C8C5C5C5888888FF00FFFF00FF1C98CE
            86FFFF81FFFF82FEFF7EFAFF7BF7FE1C98CE1C98CE6ECEE991E0F086D9F391E1
            F4A4F0FA38AFD9FF00FFFF00FF848484CECECECCCCCCCCCCCCCACACAC9C9C984
            8484848484BBBBBBCDCDCDC9C9C9CFCFCFD9D9D99A9A9AFF00FFFF00FF1C98CE
            8AFFFF79FAFF79F6FF7AF4FF80F8FF82FCFF77F4FE1C98CE1C98CE1C98CE1E96
            CB289DCE1C98CCFF00FFFF00FF848484D0D0D0C8C8C8C8C8C8C9C9C9CBCBCBCC
            CCCCC7C7C78484848484848484848585858C8C8C848484FF00FFFF00FF1C98CE
            84F0F891FFFF8AFFFF81FCFF60D5EE1C98CE1C98CE1C98CE1C98CE1C98CE1EA1
            D3FF00FFFF00FFFF00FFFF00FF848484CBCBCBD3D3D3D0D0D0CCCCCCB6B6B684
            8484848484848484848484848484888888FF00FFFF00FFFF00FFFF00FFFF00FF
            1C98CE1C98CE1C98CE1C98CE1C98CE48B6DCFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FF848484848484848484848484848484A3
            A3A3FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
          Margin = 5
          NumGlyphs = 2
          Spacing = 5
          TabOrder = 9
          OnClick = BtnFinanceiroSaldoClick
        end
        object DBEdtVencimentoAdto: TCDBEdit
          Left = 360
          Top = 19
          Width = 75
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'dtVencimentoAdto'
          DataSource = dsPadrao
          MaxLength = 10
          TabOrder = 2
          DecimalControl = True
          KeyMode = kmDate
        end
        object DBEdtVencimentoSaldo: TCDBEdit
          Left = 360
          Top = 44
          Width = 75
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'dtVencimentoSaldo'
          DataSource = dsPadrao
          MaxLength = 10
          TabOrder = 7
          DecimalControl = True
          KeyMode = kmDate
        end
      end
      object DBEidSafra: TCDBEdit
        Left = 880
        Top = 423
        Width = 53
        Height = 19
        BevelKind = bkTile
        BorderStyle = bsNone
        DataField = 'idSafra'
        DataSource = dsPadrao
        TabOrder = 7
        Visible = False
        DecimalControl = True
        KeyMode = kmNormal
      end
      object EDtpTitulo: TCEdit
        Left = 880
        Top = 448
        Width = 53
        Height = 19
        BorderStyle = bsNone
        BevelKind = bkTile
        TabOrder = 8
        Text = 'S'
        Visible = False
        DataType = ftUnknown
        KeyMode = kmNormal
        Decimals = 0
      end
    end
  end
  inherited PanBotoes: TCPanelGradient
    Top = 559
    Width = 1106
    ExplicitTop = 559
    ExplicitWidth = 1106
    inherited BtnFechar: TCBitBtn
      Left = 572
      ExplicitLeft = 572
    end
    inherited BtnPesquisar: TCBitBtn
      Left = 413
      ExplicitLeft = 413
    end
  end
  inherited PanEmpresa: TCPanelGradient
    Width = 1106
    ExplicitWidth = 1106
    inherited LookdescCadEmpresa: TCLookUp
      CampoObrigatorio = False
    end
    inherited LookdescAbreviada: TCLookUp
      CampoObrigatorio = False
    end
    inherited lookidCnpjCpf: TCLookUp
      CampoObrigatorio = False
    end
    inherited LookidInscEstadual: TCLookUp
      CampoObrigatorio = False
    end
  end
  inherited imgIcones: TImageList
    Left = 704
    Top = 16
    Bitmap = {
      494C010101000600180110001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
      000000000000000000000000000000000000000000000000000000000000EAEA
      EB22C2C2C267E7E7E72400000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000CDCD
      CD60E2DAD5FFC1BFBCE5B1B1B2A7C8C8C85BF0F0F01600000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C4C1
      BF9EFCEDE5FFF4EBE6FFF4EFECFFDEDBDAFFBBBBBCDFB4B4B59DCECECE4EEEEE
      EE18000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F4F4F410D1CD
      CCD1F3E8E3FFE7E2E0FFEEE5DFFFEEE4DFFFF3ECE9FFF1EBE9FFD9D7D7FDBBBA
      BAD8B3B4B493D0D0D049F7F7F70C000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000DDDDDD3AE6DF
      DBF5EFE8E4FFE7E4E4FFECE8E7FFE7E3E2FFE6E1DEFFF1E8E3FFF2E9E4FFF7EF
      ECFFF4EFEDFFD8D5D5FFB6B5B5D4C5C5C56E0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C8C8C876F5EC
      E7FFF3EDECFFF4F0EEFFF1ECEBFFEDE8E8FFEAE6E5FFEAE7E6FFE7E3E2FFEDE6
      E3FFEFE7E2FFF3EBE7FFF8F1EDFFF4F0F0AD0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C9C6C5B5FBF1
      ECFFECE8E7FFE5E1E0FFF0ECEAFFF3EEEDFFF5EFEFFFEFEBEAFFEAE6E5FFEDE9
      E8FFF1EEECFFEFEAE8FFEDE6E3F5FBFAFA380000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F0F0F017DBD5D4E9F9F0
      EBFFE5E2E0FFDAD8D7FFDFDCDAFFE3E0E0FFE8E4E4FFEFEBEAFFF4F0EFFFF2ED
      ECFFF1EDEBFFF0ECECFFF4F1F0A9FEFEFE020000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000D7D6D64EF1E9E7FFF6EF
      EDFFE4E1E0FFDDDAD9FFE2DEDDFFDCD8D8FFDDD9D9FFDFDCDCFFE4E1E0FFF2EE
      EDFFF1EDECFFF1EDEBFBFAF9F939000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C7C7C78AFDF5F1FFF0EA
      EAFFDFDCDBFFE1DDDCFFE5E0E0FFE2DDDDFFE2DEDEFFDDD9D9FFE6E2E1FFF4EF
      EEFFF3EFEEFFF4F1EFAF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F8F8F80AD0CDCCC4FFF7F4FFECE8
      E8FFDBD8D7FFE1DDDCFFE1DEDEFFE2DEDDFFE5E1E0FFE6E2E1FFF4F2F2FFF5F1
      F2FFF3EEEEF7FAF9F93D00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E4E4E42CE6E2E0EDFCF6F4FFF7F3
      F2FFF1EDEDFFEEEAE9FFE6E4E3FFE3E0E1FFD9D6D7FFD2CDCCFFD2CCC3FFDBD4
      C8FFF7F4F5B0FEFEFE0300000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CDCDCD65FBF6F5FFFBF6F5FFF9F5
      F3FFFBF7F6FFEEECEBFFDAD6D1FFCEC7BBFFCDC5B5FFDDD4C2FFEDE4D6FFF5EE
      E9FCFAF9F9400000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CFCFCE93FFFFFCFFFAF5F5FFFBF7
      F5FFF9F4F3FFC9CACCFFD8D5CCFFF6EDE2FFEEE9E6FFFCF7F8FFFAF6F8FFF7F4
      F3B7FEFEFE010000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F8F8F81AFFFFFF67FEFBFAB6FCF9
      F7E9FBF6F5FFFCF9F8FFFFFDFCFFEDE9EBFFDDDEDFFFE0DDDDFFF5F1EFFDFBFA
      FA43000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFEFE03FFFE
      FE29FEFDFD70FCF9F9BCEDEBEAD3EFEDECB9FAF9F89CF4F4F487F3F2F257FEFE
      FE03000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF00E3FF000000000000E07F000000000000
      E00F000000000000C001000000000000C000000000000000C000000000000000
      C000000000000000800000000000000080010000000000008003000000000000
      0003000000000000000300000000000000070000000000000007000000000000
      000F000000000000C00F00000000000000000000000000000000000000000000
      000000000000}
  end
  inherited Acao: TActionList
    Left = 768
    Top = 16
    object actCadCidade: TAction
      Caption = '&Cidades'
      ImageIndex = 6
    end
  end
  inherited cdsPadrao: TClientDataSet
    CommandText = 'SELECT * FROM OrdemFrete'
    Left = 848
    Top = 184
    object cdsPadraoidEmpresa: TIntegerField
      FieldName = 'idEmpresa'
      Required = True
    end
    object cdsPadraoidCadEmpresa: TSmallintField
      FieldName = 'idCadEmpresa'
      Required = True
    end
    object cdsPadraoidOrdemFrete: TIntegerField
      FieldName = 'idOrdemFrete'
      Required = True
    end
    object cdsPadraodtEmissao: TSQLTimeStampField
      FieldName = 'dtEmissao'
      Required = True
    end
    object cdsPadraovlDescontoQuebra: TFMTBCDField
      FieldName = 'vlDescontoQuebra'
      Required = True
      Precision = 19
      Size = 4
    end
    object cdsPadraovlFreteTotal: TFMTBCDField
      FieldName = 'vlFreteTotal'
      Required = True
      Precision = 19
      Size = 4
    end
    object cdsPadraovlFreteBruto: TFMTBCDField
      FieldName = 'vlFreteBruto'
      Precision = 19
      Size = 4
    end
    object cdsPadraovlFreteEmpresa: TFMTBCDField
      FieldName = 'vlFreteEmpresa'
      Precision = 19
      Size = 4
    end
    object cdsPadraovlFreteEmpresaTotal: TFMTBCDField
      FieldName = 'vlFreteEmpresaTotal'
      Precision = 19
      Size = 4
    end
    object cdsPadraovlSeguro: TFMTBCDField
      FieldName = 'vlSeguro'
      Precision = 19
      Size = 4
    end
    object cdsPadraovlFreteLiquido: TFMTBCDField
      FieldName = 'vlFreteLiquido'
      Precision = 19
      Size = 4
    end
    object cdsPadraovlAdiantamento: TFMTBCDField
      FieldName = 'vlAdiantamento'
      Precision = 19
      Size = 4
    end
    object cdsPadraovlFreteSaldo: TFMTBCDField
      FieldName = 'vlFreteSaldo'
      Precision = 19
      Size = 4
    end
    object cdsPadraovlSaldoAPagar: TFMTBCDField
      FieldName = 'vlSaldoAPagar'
      Precision = 19
      Size = 4
    end
    object cdsPadraovlOutrasDespesas: TFMTBCDField
      FieldName = 'vlOutrasDespesas'
      Precision = 19
      Size = 4
    end
    object cdsPadraoidFornecedorAdto: TIntegerField
      FieldName = 'idFornecedorAdto'
    end
    object cdsPadraoidFornecedorSaldo: TIntegerField
      FieldName = 'idFornecedorSaldo'
    end
    object cdsPadraostFinancAdto: TStringField
      FieldName = 'stFinancAdto'
      Size = 15
    end
    object cdsPadraostFinancSaldo: TStringField
      FieldName = 'stFinancSaldo'
      Size = 15
    end
    object cdsPadraoidTituloPagAdto: TIntegerField
      FieldName = 'idTituloPagAdto'
    end
    object cdsPadraoidTituloPagSaldo: TIntegerField
      FieldName = 'idTituloPagSaldo'
    end
    object cdsPadraodtVencimentoAdto: TSQLTimeStampField
      FieldName = 'dtVencimentoAdto'
    end
    object cdsPadraodtVencimentoSaldo: TSQLTimeStampField
      FieldName = 'dtVencimentoSaldo'
    end
    object cdsPadraonrFatura: TStringField
      FieldName = 'nrFatura'
      Size = 30
    end
    object cdsPadraoidSafra: TIntegerField
      FieldName = 'idSafra'
    end
    object cdsPadraovlTarifaClassif: TFMTBCDField
      FieldName = 'vlTarifaClassif'
      Precision = 19
      Size = 4
    end
    object cdsPadraovlTotalClassif: TFMTBCDField
      FieldName = 'vlTotalClassif'
      Precision = 19
      Size = 4
    end
    object cdsPadraodtLancamento: TSQLTimeStampField
      FieldName = 'dtLancamento'
      Required = True
    end
    object cdsPadraoabonaQuebra: TStringField
      FieldName = 'abonaQuebra'
      Required = True
      FixedChar = True
      Size = 1
    end
  end
  inherited dspPadrao: TDataSetProvider
    DataSet = sdsOrdemFrete
    Left = 768
    Top = 184
  end
  inherited dsPadrao: TDataSource
    Left = 928
    Top = 184
  end
  inherited ImgBotoes: TImageList
    Left = 736
    Top = 16
    Bitmap = {
      494C010108000A00040120001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
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
      0000000000000000000000000000000000000000000000000000426363008484
      8400002163000021630000216300848484008463630042212100000000000000
      0000000000004221420000214200000000000000000000000000A5A5A5000000
      000084848400848484008463630000000000A5A5A50042636300424242004242
      4200424242008463630042636300424242000000000000000000000000000000
      000000000000000043000000430000003C000000370000003600000036000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000007F7F7F007F7F7F007D7D7D007C7C7C007B7B7B007B7B7B000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000ADC6CE006B847B00DE5A3100A5391000C6C6C600FFFF
      FF00395A7B00527BAD00426B9400BDBDC6000000000000000000000000000000
      00000000000000000000BDBDBD00737373007B7B7B0052525200C6C6C600FFFF
      FF005A5A5A007B7B7B006B6B6B00BDBDBD000000000000000000000000000000
      00008463630084636300C6636300C66363008442420000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000A5A5A500A5A5A50084848400A5A5A5008484840000000000000000000000
      0000000000000000000000000000000000000000000000000000848484000000
      00008484C6000063C6000042A500000000008484840000000000422121004242
      4200848484008484A5004242630000000000000000000000000000000000FFFF
      FF00C6DEC60000000000A5A5A500FFFFFF000000000042636300426363008484
      8400000000000000000084848400424242000000000000000000000000000000
      93000000930000028400151889002B2D8C002A2A83000F0F6200000040000000
      3A0000003A000000000000000000000000000000000000000000000000009292
      92009292920090909000A0A0A000A9A9A900A6A6A600949494007E7E7E007C7C
      7C007C7C7C0000000000000000000000000000000000F7F7F700000000000000
      000000000000ADC6C600849C9C00849C9400AD523900DE6B4A00AD3918003152
      73004A7BAD0084A5C600ADC6DE00949CA50000000000F7F7F700000000000000
      000000000000BDBDBD008C8C8C008C8C8C006B6B6B008C8C8C00525252005252
      52007B7B7B00A5A5A500C6C6C6009C9C9C000000000000000000846363008463
      6300C6636300C6636300C6636300C66363008442420084636300846363008463
      6300846363008463630084636300000000000000000000000000A5A5A500A5A5
      A500A5A5A500A5A5A500A5A5A500A5A5A50084848400A5A5A500A5A5A500A5A5
      A500A5A5A500A5A5A500A5A5A500000000000000000000000000848484000000
      0000C6A5E7004284E7000042A500000000008484840042636300A5A5A500A5A5
      A500A5A5A5008484A5004242630000000000000000000000000000000000FFFF
      FF00FFFFFF0000000000A5A5A500FFFFFF0000000000A5A5A500C6DEC600C6DE
      C600C6DEC60000000000848484004242420000000000000000000004B3000104
      A7003D45C300B3B7EA00FFFFFF00FFFFFF00FFFFFF00FFFFFF00A0A2CC002D2D
      740000003A0000004E0000000000000000000000000000000000999999009999
      9900B9B9B900DBDBDB00EDEDED00EDEDED00EDEDED00EDEDED00D3D3D300A4A4
      A4007D7D7D00828282000000000000000000BDADAD00A5422900844A4200846B
      6B00ADADAD005A8C9400B5391000D6735A00EF846300CE7B5A0039394A004A7B
      AD007B9CBD00CED6E700637B9400FFFFFF00B5B5B5005A5A5A005A5A5A007373
      7300ADADAD007B7B7B005A5A5A008C8C8C009C9C9C008C8C8C00424242007B7B
      7B009C9C9C00D6D6D6007B7B7B00FFFFFF00000000000000000084636300C684
      8400C6848400C6638400C6636300C663630084424200F7CEA500F7CEA500F7CE
      A500F7CEA500F7CEA50084636300000000000000000000000000A5A5A500A5A5
      A500A5A5A500A5A5A500A5A5A500A5A5A50084848400C6DEC600C6DEC600C6DE
      C600C6DEC600C6DEC600A5A5A50000000000002142000021630084638400C6DE
      C60084A5C6004284C6004263A500C6DEC6008484A50084638400A5A5A500A5A5
      A500A5A5A5008484A5004242630000000000846363008463630000000000FFFF
      FF00F7FFFF0000000000A5A5A500FFFFFF000000000000000000F7FFFF00C6DE
      C600C6DEC600000000008484840042424200000000000005CC000107BA007F89
      E200FFFFFF00FFFFFF009B9CDB005E5EB7005F5FB600ADADDD00FFFFFF00FFFF
      FF005E5E9B0000003A000000430000000000000000009D9D9D009C9C9C00CFCF
      CF00EDEDED00EDEDED00D4D4D400C0C0C000C0C0C000D8D8D800EDEDED00EDED
      ED00BABABA007D7D7D007F7F7F0000000000B59C9C00D6734A00D6733900DE73
      3900D6633100A56B6300AD9C9C00CEADAD00B59494009C7B7B00C6ADAD007384
      9C00C6D6EF0063738C00FFFFFF0000000000A5A5A50084848400848484008484
      84007B7B7B007B7B7B009C9C9C00B5B5B5009C9C9C0084848400B5B5B5008484
      8400D6D6D60073737300FFFFFF0000000000000000000000000084636300C684
      8400C6848400C6848400C6848400C66384008442420042C6630042C6630042C6
      630000C66300F7CEA50084636300000000000000000000000000A5A5A500A5A5
      A500A5A5A500A5A5A500A5A5A500A5A5A5008484840084848400848484008484
      840084848400C6DEC600A5A5A50000000000002142004242A50042638400C6DE
      C600F7FFFF000000000000000000F7FFFF008484A5004221840084638400A5A5
      A500A5A5A5008484A500424263000000000084636300A5A5A500A5A5A500FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000008484840000000000F7FF
      FF00C6DEC600000000008484840042424200000000000005CC006472E500FFFF
      FF00D7DAF5002427B30000008300000072000000680000006A0031319C00E6E6
      F700FFFFFF0036367D000000430000000000000000009D9D9D00CACACA00EDED
      ED00E4E4E400AEAEAE008F8F8F008B8B8B008888880089898900AEAEAE00E7E7
      E700EDEDED00A9A9A9007F7F7F0000000000AD949400D6846300D6734200CE6B
      3100CEAD9C00DEBDAD00F7C6B500FFDED600F7C6B500DEAD9C00AD9C9C00E7DE
      D60073738400AD391800C6C6C600000000009C9C9C0094949400848484007B7B
      7B00B5B5B500C6C6C600CECECE00E7E7E700CECECE00B5B5B5009C9C9C00DEDE
      DE007B7B7B005A5A5A00C6C6C60000000000000000000000000084636300C684
      8400C6848400C6848400C6848400C68484008442420042C6630042C6630042C6
      630042C66300F7CEA50084636300000000000000000000000000A5A5A500C6C6
      C600A5A5A500A5A5A500A5A5A500A5A5A50084848400A5A5A500A5A5A500A5A5
      A50084848400C6DEC600A5A5A5000000000000216300424284008463C6008484
      A50084A5C600A5A5A500A5A5A5008484A5004221A50042218400A5A5A500A5A5
      A500A5A5A5008484A500424263000000000084636300A5A5A500C6DEC6000000
      0000F7FFFF00F7FFFF00F7FFFF0000000000A5A5A50084848400F7FFFF00F7FF
      FF00F7FFFF000000000084848400424242000007E8000B1BD800F8F8FF00F2F3
      FC001621C40000009F0004079C00898FD800797BCD0001027500000061002626
      9500FFFFFF00C3C3DB000101500000004B00A2A2A200AAAAAA00EBEBEB00EAEA
      EA00ACACAC00959595009A9A9A00D0D0D000CACACA008F8F8F0087878700A9A9
      A900EDEDED00DCDCDC008686860081818100AD8C8C00E7A58400CE7B5A00D69C
      8400DEB5AD00F7C6B500F7D6C600F7DECE00F7D6C600F7CEB500DEAD9C00A584
      7B00E7CEBD00FF8463009C8C8C00000000009C9C9C00ADADAD008C8C8C00A5A5
      A500BDBDBD00CECECE00DEDEDE00DEDEDE00DEDEDE00CECECE00B5B5B5008C8C
      8C00CECECE00A5A5A5008C8C8C0000000000000000000000000084636300C684
      8400C6848400C6848400C6848400C68484008442420042C6630042C6630042C6
      630042C66300F7CEA50084636300000000000000000000000000A5A5A500C6C6
      C600C6C6C600C6C6C600C6C6C600A5A5A500848484008484840084848400A5A5
      A50084848400C6DEC600A5A5A5000000000000000000002142004263840084A5
      E7004263E7004242C6004221C6000021C600002184008484A500000000000000
      0000A5A5A5008484A50042426300000000000000000084636300A5A5A500FFFF
      FF00C6DEC6000000000000000000A5A5A50084848400C6DEC600FFFFFF00F7FF
      FF00F7FFFF000000000084848400424242000007E8004358F000FFFFFF006476
      ED000002C4000001B6000407AE00E8EDFD00CACFF0000001800000006E000000
      66008484C900FFFFFF002727880000004B00A2A2A200C3C3C300EDEDED00CBCB
      CB009C9C9C00999999009D9D9D00E8E8E800E1E1E100909090008A8A8A008888
      8800CCCCCC00EDEDED00A7A7A700818181008C7B7B00F7BD9C00CE846B00DEC6
      C600E79C7B00EFC6AD00EFC6AD00EFCEB500F7C6B500EFC6AD00E7A58400B5A5
      9C00C6634200A56B5A00000000000000000084848400C6C6C60094949400CECE
      CE00ADADAD00CECECE00CECECE00CECECE00CECECE00C6C6C600ADADAD00A5A5
      A5007B7B7B007B7B7B000000000000000000000000000000000084636300C684
      8400C6848400C6A5A500F7FFFF00C684840084424200C6DEC60084E7840042E7
      840042E78400F7CEA50084636300000000000000000000000000A5A5A500C6C6
      C600C6C6C600C6C6C600F7FFFF00C6C6C60084848400C6DEC600C6C6C600A5A5
      A500A5A5A500C6DEC600A5A5A500000000000000000000000000422121008484
      A5008484E7004263E7004242C6000021A5008484A50000000000000000000000
      0000000000008484A50042426300000000000000000000000000426363000000
      0000FFFFFF00C6DEC60000000000A5A5A50000000000FFFFFF00FFFFFF00FFFF
      FF00F7FFFF00C6DEC60084848400424242000009F3007F94FA00FFFFFF001932
      F0000512E0007587EA00979CE800F3F5FD00EBEDF8009194DB006A6DC7000202
      78002D2E9E00FFFFFF005558BE0000004A00A4A4A400D4D4D400EDEDED00B5B5
      B500A7A7A700CFCFCF00D5D5D500EAEAEA00E8E8E800D2D2D200C6C6C6009090
      9000ADADAD00EDEDED00BFBFBF00818181009C7B7300F7C6AD00D6947B00E7CE
      BD00EFC6AD00F7D6C600F7D6C600EFBDA500EFB59C00EFB59400E7A57B00C6B5
      B500AD4A1800FFF7F700000000000000000084848400CECECE009C9C9C00CECE
      CE00C6C6C600D6D6D600D6D6D600C6C6C600BDBDBD00BDBDBD00ADADAD00B5B5
      B5005A5A5A00F7F7F7000000000000000000000000000000000084636300C684
      8400C6848400F7CEA500F7FFFF00C684840084424200FFFFFF00FFFFFF00FFFF
      FF00F7FFFF00F7CEA50084636300000000000000000000000000A5A5A500C6C6
      C600C6C6C600C6C6C600F7FFFF00C6C6C60084848400F7FFFF00F7FFFF00F7FF
      FF00F7FFFF00C6DEC600A5A5A500000000000000000000000000000000004263
      6300C6A5E7008484E700002184008484A500C6DEC60000000000000000000000
      000000000000A5A5A5004242630000000000000000000000000042636300A5A5
      A500FFFFFF00F7FFFF008484840000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00C6DEC60084848400424242000218FD00A6B4FD00FFFFFF00112C
      FD000B20F500F7FAFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00DFE0F5000405
      8B002024A000FFFFFF006267C30000007800AAAAAA00DCDCDC00EDEDED00B4B4
      B400AFAFAF00EBEBEB00EDEDED00EDEDED00EDEDED00EDEDED00E5E5E5009696
      9600A9A9A900EDEDED00C3C3C3008C8C8C00A56B5A00F7CEB500DE9C8C00DEC6
      C600EFBDAD00F7DEC600F7DECE00F7DECE00EFBDA500EFBD9C00DE946B00BDB5
      B500D68C6300D6A59C0000000000000000007B7B7B00D6D6D600ADADAD00CECE
      CE00C6C6C600DEDEDE00DEDEDE00DEDEDE00C6C6C600C6C6C6009C9C9C00B5B5
      B50094949400B5B5B5000000000000000000000000000000000084636300F7CE
      A500C6848400C6848400C6848400C684840084424200FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00F7CEA50084636300000000000000000000000000A5A5A500C6C6
      C600C6C6C600C6C6C600C6C6C600A5A5A50084848400F7FFFF00F7FFFF00F7FF
      FF00F7FFFF00C6DEC600A5A5A500000000000000000000000000424242000000
      0000C6A5C6004263A500C6A5C600F7FFFF00C6DEC600C6DEC600000000000000
      0000A5A5A5008484A5004242630000000000000000000000000084848400FFFF
      FF00F7FFFF0000000000F7FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00F7FFFF00C6DEC60084848400424242001735FF00A4B6FF00FFFFFF002C4A
      FF00000FFF00142FF8002B3EED00E6EBFD00D2D7F700232DCA00121EB9000000
      9300464DBE00FFFFFF004A4EBD0000007F00B6B6B600DCDCDC00EDEDED00BFBF
      BF00A7A7A700B4B4B400BBBBBB00E8E8E800E3E3E300B2B2B200A8A8A8009292
      9200BBBBBB00EDEDED00BCBCBC008E8E8E00AD847B00FFD6C600F7C6B500DEB5
      A500DEBDB500FFE7D600F7E7D600F7E7D600F7E7D600FFE7DE00DEB5A500C6A5
      9C00D6AD9400D6947B00FFFFFF000000000094949400DEDEDE00CECECE00BDBD
      BD00C6C6C600E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700BDBDBD00ADAD
      AD00B5B5B500A5A5A500FFFFFF0000000000000000000000000084636300F7CE
      A500F7CEA500F7CEA500F7CEA500C684840084424200FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00F7CEA50084636300000000000000000000000000A5A5A500C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C60084848400F7FFFF00F7FFFF00F7FF
      FF00F7FFFF00C6DEC600A5A5A50000000000000000000000000084848400FFFF
      FF00FFFFFF00FFFFFF00F7FFFF00F7FFFF0000000000A5A5A500426384008484
      84008484A5004284A5004263840000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F7FFFF00A5A5A5000000
      00000000000000000000A5A5A500424242000318FF0091A6FF00FFFFFF00A9B9
      FF00000EFF000008FF000515F800EBF0FF00CFD5F7000108C7000001B3000206
      AE00C3C7EF00FCFCFD001017AA0000007F00AAAAAA00D8D8D800EDEDED00DDDD
      DD00A7A7A700A6A6A600ABABAB00E9E9E900E3E3E3009E9E9E00999999009B9B
      9B00DFDFDF00EBEBEB00A4A4A4008E8E8E00B58C8400FFDECE00F7CEBD00F7C6
      B500E7CEC600DEBDB500EFCEBD00F7DED600EFCEBD00DEBDB500DED6CE00EFCE
      B500E7CEC600E7C6AD00E7CECE00000000009C9C9C00DEDEDE00D6D6D600CECE
      CE00D6D6D600C6C6C600CECECE00E7E7E700CECECE00C6C6C600D6D6D600CECE
      CE00CECECE00C6C6C600D6D6D60000000000000000000000000084636300F7CE
      A500F7CEA500F7CEA500F7CEA500C684840084424200FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00F7CEA50084636300000000000000000000000000A5A5A500C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C60084848400F7FFFF00F7FFFF00F7FF
      FF00F7FFFF00C6DEC600A5A5A50000000000000000000000000084848400FFFF
      FF00FFFFFF00FFFFFF00F7FFFF0000000000426384004284C60084C6E70084A5
      C60084C6E70084C6E7004263840000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00A5A5A500C6DEC600F7FFFF00C6DE
      C600FFFFFF00FFFFFF00A5A5A50042424200000000005F7AFF00FFFFFF00FFFF
      FF005C75FF00000BFF00000EFF001E3BFF001A35F3000007DB000006CC007684
      E800FFFFFF008F97E200000198000000000000000000CDCDCD00EDEDED00EDED
      ED00CCCCCC00A6A6A600A6A6A600B9B9B900B6B6B600A0A0A0009F9F9F00CFCF
      CF00EDEDED00D3D3D3009393930000000000BD948C00FFE7D600F7DECE00F7D6
      C600F7CEB500EFC6BD00E7CECE00DEC6BD00E7CEC600DEAD9C00D6947B00A57B
      73008494A500BD9CA500AD6B6300FFFFFF009C9C9C00E7E7E700DEDEDE00D6D6
      D600CECECE00CECECE00D6D6D600CECECE00CECECE00B5B5B500A5A5A5008484
      840094949400ADADAD007B7B7B00FFFFFF00000000000000000084636300F7CE
      A500F7CEA500F7CEA500F7CEA500C684840084424200FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00F7CEA50084636300000000000000000000000000A5A5A500C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C60084848400F7FFFF00F7FFFF00F7FF
      FF00F7FFFF00C6DEC600A5A5A50000000000000000000000000084848400FFFF
      FF00F7FFFF00000000008484A5008484A50084A5C6008484A50084E7E70084E7
      E70084848400424242000021420000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF000000000000000000F7FFFF0000000000FFFFFF00FFFF
      FF000000000084848400426363000000000000000000425FFF00C4CFFF00FFFF
      FF00FFFFFF008B9FFF00162FFF000414FF000515FD002037F3009FADF700FFFF
      FF00E2E5FA00101ABA00000198000000000000000000C5C5C500E2E2E200EDED
      ED00EDEDED00D7D7D700B6B6B600ACACAC00ACACAC00B8B8B800DADADA00EDED
      ED00E6E6E600A7A7A7009393930000000000C6948C00FFEFE700FFE7D600F7DE
      CE00F7D6C600F7D6BD00FFCEB500F7C6AD00F7BDA500F7BD9C00F7B59C005A5A
      520000CEFF0000B5FF0042B5FF00949CA500A5A5A500EFEFEF00E7E7E700DEDE
      DE00D6D6D600D6D6D600D6D6D600CECECE00C6C6C600C6C6C600C6C6C6005252
      52008C8C8C008C8C8C00A5A5A5009C9C9C000000000000000000846363008463
      6300C6848400F7CEA500F7CEA500C684A50084424200FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00F7CEA50084636300000000000000000000000000A5A5A500A5A5
      A500C6C6C600C6C6C600C6C6C600C6C6C60084848400F7FFFF00F7FFFF00F7FF
      FF00F7FFFF00C6DEC600A5A5A500000000000000000000000000846363000000
      0000426384008484C60084C6E7008484A5004242630000214200000000000000
      0000426363000000000000000000000000000000000000000000A5A5A500FFFF
      FF000000000000000000FFFFFF00000000008484840084636300426363004263
      6300A5A5A50042424200424242000000000000000000000000005975FF00D7DF
      FF00FFFFFF00FFFFFF00FCFCFF00D1DBFF00D4DFFF00FFFFFF00FFFFFF00C6CD
      F7001825CD000001B00000000000000000000000000000000000CBCBCB00E5E5
      E500EDEDED00EDEDED00ECECEC00E4E4E400E5E5E500EDEDED00EDEDED00E1E1
      E100AEAEAE00989898000000000000000000B59C9C00FFF7E700FFEFE700FFEF
      DE00FFE7D600A5736B008C635A00AD949400AD8C8400AD847B00BD7B73007B63
      630008FFFF0018B5E7004A7B9400F7F7F700A5A5A500EFEFEF00EFEFEF00E7E7
      E700E7E7E700848484006B6B6B009C9C9C00949494008C8C8C00949494006B6B
      6B00949494008C8C8C006B6B6B00F7F7F7000000000000000000000000000000
      000084636300C6848400C6848400C68484008442420084636300846363008463
      6300846363008463630084636300000000000000000000000000000000000000
      0000A5A5A500A5A5A500A5A5A500C6C6C60084848400A5A5A500A5A5A500A5A5
      A500A5A5A500A5A5A500A5A5A500000000000000000000000000424242004263
      840084C6E70084A5C60000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000084848400A5A5
      A500FFFFFF00C6DEC60042424200424242004242420000000000000000000000
      0000000000000000000000000000000000000000000000000000000000005C76
      FF0097A9FD00DAE0FF00FFFFFF00FFFFFF00FFFFFF00D4DBFD00596FF0000514
      D7000001B000000000000000000000000000000000000000000000000000CCCC
      CC00D9D9D900E6E6E600EDEDED00EDEDED00EDEDED00E5E5E500C9C9C900A5A5
      A50098989800000000000000000000000000FFFFFF00BDADAD00C6A5A500CEAD
      A500CE9C9400F7F7F70000000000000000000000000000000000000000000000
      0000E7FFFF0084BDE700F7F7F70000000000FFFFFF00B5B5B500ADADAD00B5B5
      B500ADADAD00F7F7F70000000000000000000000000000000000000000000000
      0000F7F7F700B5B5B500F7F7F700000000000000000000000000000000000000
      0000000000000000000084636300846363008442420000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000A5A5A500A5A5A5008484840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000004221
      2100422142000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000424242004263
      6300846363004242420000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000005C75FF005C79FF00627DFF004A66FD00203CF5000619E5000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000CCCCCC00CCCCCC00CECECE00C7C7C700B9B9B900A9A9A9000000
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
      2800000080000000300000000100010000000000000300000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FF31FF31FE7FFE7FC000D100F81FF81F
      FC00FC00F07FF07FD100E48CE007E007B800B800C001C001D100E484C003C003
      00000000C001C001000024C48001800100010001C001C001060000A480018001
      00010001C001C001000011040000000000010001C001C0018030860400000000
      00030003C001C001C078D2800000000000030003C001C001C078C10000000000
      00030003C001C001D030C4000000000000010001C001C001C080E01C00000000
      00010001C001C001C100E0008001800100000000C001C001C401E34980018001
      00000000C001C001D001CD01C003C00300000000F001F001C07FC07FE007E007
      03F103F1FC7FFC7FC3FFC3FFF81FF81FC001C0018FFF8FFF88038803FF3FFF3F
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
    Left = 704
    Top = 104
  end
  inherited dspLookup: TDataSetProvider
    Left = 672
    Top = 104
  end
  inherited sdsLookup: TSQLDataSet
    CommandText = 'SELECT * FROM vCadFornecedorContabil'
  end
  inherited cdsEmpresa: TClientDataSet
    Left = 592
    Top = 0
    inherited cdsEmpresaidCadEmpresa: TIntegerField
      OnValidate = cdsEmpresaidEmpresaValidate
    end
  end
  inherited dsEmpresa: TDataSource
    Left = 624
    Top = 0
  end
  object sdsOrdemFrete: TSQLDataSet
    SchemaName = 'gesys'
    CommandText = 'SELECT * FROM OrdemFrete'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmPadrao.dbConexao
    Left = 680
    Top = 184
  end
  object sdsOrdemNf: TSQLDataSet
    SchemaName = 'gesys'
    GetMetadata = False
    CommandText = 'SELECT * FROM OrdemFreteNf'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmPadrao.dbConexao
    Left = 680
    Top = 232
  end
  object dspOrdemNf: TDataSetProvider
    DataSet = sdsOrdemNf
    Options = [poAllowMultiRecordUpdates, poPropogateChanges, poAllowCommandText, poUseQuoteChar]
    BeforeUpdateRecord = dspOrdemNfBeforeUpdateRecord
    Left = 768
    Top = 232
  end
  object cdsOrdemNf: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    CommandText = 'SELECT * FROM OrdemFreteNf'
    Params = <>
    ProviderName = 'dspOrdemNf'
    AfterOpen = cdsPadraoAfterOpen
    AfterInsert = cdsOrdemNfAfterInsert
    AfterEdit = cdsOrdemNfAfterEdit
    OnReconcileError = cdsPadraoReconcileError
    Left = 848
    Top = 232
    object cdsOrdemNfidEmpresa: TIntegerField
      FieldName = 'idEmpresa'
      Required = True
    end
    object cdsOrdemNfidCadEmpresa: TSmallintField
      FieldName = 'idCadEmpresa'
      Required = True
    end
    object cdsOrdemNfidOrdemFrete: TIntegerField
      FieldName = 'idOrdemFrete'
      Required = True
    end
    object cdsOrdemNfidDocSerie: TStringField
      FieldName = 'idDocSerie'
      Required = True
      Size = 5
    end
    object cdsOrdemNfidNf: TIntegerField
      FieldName = 'idNf'
      Required = True
    end
    object cdsOrdemNfidMotorista: TIntegerField
      FieldName = 'idMotorista'
    end
    object cdsOrdemNfplaca: TStringField
      FieldName = 'placa'
      Size = 8
    end
    object cdsOrdemNfvlNf: TFMTBCDField
      FieldName = 'vlNf'
      Required = True
      Precision = 19
      Size = 4
    end
    object cdsOrdemNfvlProduto: TFMTBCDField
      FieldName = 'vlProduto'
      Required = True
      Precision = 18
      Size = 4
    end
    object cdsOrdemNfqtPesoSaida: TIntegerField
      FieldName = 'qtPesoSaida'
      Required = True
    end
    object cdsOrdemNfprQuebra: TFMTBCDField
      FieldName = 'prQuebra'
      Precision = 4
      Size = 2
    end
    object cdsOrdemNfqtQuebra: TIntegerField
      FieldName = 'qtQuebra'
      Required = True
    end
    object cdsOrdemNfprTolerancia: TFMTBCDField
      FieldName = 'prTolerancia'
      Required = True
      Precision = 4
      Size = 2
    end
    object cdsOrdemNfqtTolerancia: TIntegerField
      FieldName = 'qtTolerancia'
      Required = True
    end
    object cdsOrdemNfqtPesoChegada: TIntegerField
      FieldName = 'qtPesoChegada'
      Required = True
    end
    object cdsOrdemNfvlDescontoQuebra: TFMTBCDField
      FieldName = 'vlDescontoQuebra'
      Required = True
      Precision = 19
      Size = 4
    end
    object cdsOrdemNfqtPesoSaidaTotal: TAggregateField
      FieldName = 'qtPesoSaidaTotal'
      Active = True
      DisplayName = ''
      DisplayFormat = '###,###,###,##0'
      Expression = 'SUM(qtPesoSaida)'
    end
    object cdsOrdemNfqtPesoChegadaTotal: TAggregateField
      FieldName = 'qtPesoChegadaTotal'
      Active = True
      DisplayName = ''
      DisplayFormat = '###,###,###,##0'
      Expression = 'SUM(qtPesoChegada)'
    end
    object cdsOrdemNfvlDescontoQuebraSoma: TAggregateField
      FieldName = 'vlDescontoQuebraSoma'
      Active = True
      DisplayName = ''
      Expression = 'SUM(vlDescontoQuebra)'
    end
  end
  object dsOrdemNf: TDataSource
    DataSet = cdsOrdemNf
    OnStateChange = dsOrdemNfStateChange
    Left = 928
    Top = 232
  end
  object cdsItem: TClientDataSet
    Aggregates = <>
    CommandText = 
      'SELECT it.*,  CASE WHEN fator > 0 THEN '#39'(+)'#39' ELSE '#39'(-)'#39' END sina' +
      'l  FROM ItemFrete it'
    Params = <>
    ProviderName = 'dspLookUp'
    Left = 840
    Top = 408
  end
  object cdsFornecedor: TClientDataSet
    Aggregates = <>
    CommandText = 'SELECT * FROM vCadFornecedorContabil'
    Params = <>
    ProviderName = 'dspLookUp'
    Left = 912
    Top = 408
  end
  object cdsRomaneio: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    CommandText = 'SELECT * FROM vRomaneioClassNF'
    Params = <>
    ProviderName = 'dspRomaneio'
    AfterOpen = cdsPadraoAfterOpen
    OnReconcileError = cdsPadraoReconcileError
    Left = 848
    Top = 288
    object cdsRomaneioidEmpresa: TIntegerField
      FieldName = 'idEmpresa'
      Required = True
    end
    object cdsRomaneioidCadEmpresa: TSmallintField
      FieldName = 'idCadEmpresa'
      Required = True
    end
    object cdsRomaneioidRomaneio: TIntegerField
      FieldName = 'idRomaneio'
      Required = True
    end
    object cdsRomaneioidDocSerie: TStringField
      FieldName = 'idDocSerie'
      Size = 5
    end
    object cdsRomaneioidNf: TIntegerField
      FieldName = 'idNf'
    end
    object cdsRomaneioidDesconto: TSmallintField
      FieldName = 'idDesconto'
      Required = True
    end
    object cdsRomaneioprDesconto: TFMTBCDField
      FieldName = 'prDesconto'
      Required = True
      Precision = 5
      Size = 3
    end
    object cdsRomaneioqtDesconto: TIntegerField
      FieldName = 'qtDesconto'
      Required = True
    end
    object cdsRomaneioqtPesoProduto: TIntegerField
      FieldName = 'qtPesoProduto'
    end
    object cdsRomaneioqtDescontoTotal: TAggregateField
      FieldName = 'qtDescontoTotal'
      Active = True
      DisplayName = ''
      Expression = 'SUM(qtDesconto)'
    end
    object cdsRomaneioqtPesoTotal: TAggregateField
      FieldName = 'qtPesoTotal'
      Active = True
      DisplayName = ''
      Expression = 'SUM(qtPesoProduto)'
    end
  end
  object dsRomaneio: TDataSource
    DataSet = cdsRomaneio
    Left = 928
    Top = 288
  end
  object dspRomaneio: TDataSetProvider
    DataSet = sdsRomaneio
    Options = [poAllowMultiRecordUpdates, poPropogateChanges, poAllowCommandText, poUseQuoteChar]
    BeforeUpdateRecord = dspOrdemNfBeforeUpdateRecord
    Left = 768
    Top = 288
  end
  object sdsRomaneio: TSQLDataSet
    SchemaName = 'gesys'
    GetMetadata = False
    CommandText = 'SELECT * FROM vRomaneioClassNF'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmPadrao.dbConexao
    Left = 680
    Top = 288
  end
end
