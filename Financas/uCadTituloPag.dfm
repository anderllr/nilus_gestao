inherited FrmCadTituloPag: TFrmCadTituloPag
  Caption = 'Lan'#231'amento de Titulos a Pagar'
  ClientHeight = 521
  ClientWidth = 763
  Icon.Data = {
    0000010001001010000001002000680400001600000028000000100000002000
    0000010020000000000000040000000000000000000000000000000000000000
    000000000000000000000000000000000000FDFDFD01F0F0F20DCCCCD029B2B2
    B63CE2E2E411F9F9F90200000000000000000000000000000000000000000000
    0000000000000000000000000000FDFDFD01F4F4F80BD1D1DB3380809EB76969
    84CFAEAEBB4FEBEBF010F9F9F902000000000000000000000000000000000000
    00000000000000000000FDFDFD01F2F2F80AD4D4E7308888C0BB5A5A8CF47171
    B0F68080C0D8ADADC24EE8E8EF0FF9F9F9020000000000000000000000000000
    00000000000000000000EFEFF609CCCCE32B8080D4B96C6CCEF441417EFD6F6F
    D0FE7B7BE7F77171C7D7A5A5BE4AE6E6EE0EF8F8F80200000000000000000000
    000000000000EAEAF106BEBED6226666C9B55A5AE7F44D4DC8FD33337CFF5656
    C8FF6161E7FE5C5CDEF75858B8D59898AC47E3E3E80DF8F8F801000000000000
    0000E8E8ED06AEAEBE1D454596B03535BCF33535C8FD3434ACFF27275CFF3636
    83FF4343B9FF3F3FC7FE313199F73C3C90D48F8FAE43E0E0EB0BF6F6F701E7E7
    EF06AEAEC81D383889AF1B1B87F312127FFC14146BFF23235BFF505064FF7171
    82FF39395DFF222272FF1C1C9BFE2727CFF73333B4D28181A43ED6D6E00BC4C4
    D6124949ABA81F1FBFF11111BAFC1010ADFF111185FF333345FFBABABDFFD0D0
    D0FF8A8A94FF202065FF1616BCFF1616CFFE1B1BC2F53737A0C986869730CDCD
    E3185B5BC4B52222BBF20F0F9EFD0A0A77FF090951FF31314EFFB7B7BAFFCDCD
    CEFF868694FF1C1C59FF0E0E99FF0F0FA3FD1A1A8DF4434385C7ACACBE28EDED
    F807C7C7E4224B4B89BF1C1C80F41010A2FD0F0FA0FF191959FF434354FF6161
    74FF2B2B50FF161688FF0F0F94FD1C1C9CF53F3FA3CEB7B7D12EE6E6EB090000
    0000EEEEF207C7C7DD215050BDBD2222C3F41111AFFD0C0C64FF12126DFF1111
    55FF13138CFF1313B5FD2121C7F54545C7CEB8B8DE2EEBEBF508000000000000
    000000000000EFEFF907C9C9ED225353CFBE2222B1F40C0C6AFD1010A4FF0E0E
    96FF0E0E84FD2020BEF54444CECEBCBCE92EECECF90800000000000000000000
    00000000000000000000EFEFFA07C9C9EB225050AEBE1D1D7FF41414B4FD1414
    B8FD1A1A77F54545B7CEB9B9E32FEBEBF8080000000000000000000000000000
    0000000000000000000000000000EFEFF707C6C6DB234B4BA3C02626C0F32424
    C0F44545ADCEBABAD22FECECF608000000000000000000000000000000000000
    000000000000000000000000000000000000EEEEF507C9C9E9225F5FCFB85656
    CEC6BBBBE22EECECF40800000000000000000000000000000000000000000000
    00000000000000000000000000000000000000000000EEEEF907D3D3EF1CCCCC
    EC25EAEAF709000000000000000000000000000000000000000000000000F81F
    0000F00F0000E0070000E0030000C00100008000000000000000000000000000
    00000000000080010000C0030000E0070000F00F0000F81F0000FC3F0000}
  ExplicitWidth = 779
  ExplicitHeight = 559
  PixelsPerInch = 96
  TextHeight = 13
  inherited Bevel1: TBevel
    Top = 486
    Width = 763
    ExplicitTop = 509
    ExplicitWidth = 629
  end
  inherited Bevel2: TBevel
    Width = 763
    ExplicitLeft = 8
    ExplicitTop = 101
    ExplicitWidth = 765
  end
  object Bevel6: TCPanel [2]
    Left = 0
    Top = 53
    Width = 763
    Height = 53
    Align = alTop
    TabOrder = 1
    object CLabel9: TCLabel
      Left = 12
      Top = 8
      Width = 55
      Height = 13
      Alignment = taRightJustify
      Caption = 'Fornecedor'
    end
    object CLabel3: TCLabel
      Left = 43
      Top = 30
      Width = 24
      Height = 13
      Alignment = taRightJustify
      Caption = 'S'#233'rie'
    end
    object CLabel1: TCLabel
      Left = 356
      Top = 31
      Width = 37
      Height = 13
      Alignment = taRightJustify
      Caption = 'N'#250'mero'
    end
    object CLabel4: TCLabel
      Left = 450
      Top = 8
      Width = 31
      Height = 13
      Alignment = taRightJustify
      Caption = 'Status'
    end
    object DBEidFornecedor: TCDBEdit
      Left = 73
      Top = 5
      Width = 62
      Height = 19
      BevelKind = bkTile
      BorderStyle = bsNone
      DataField = 'idFornecedor'
      DataSource = dsPadrao
      TabOrder = 0
      OnExit = DBEidFornecedorExit
      Find = FindFornecedor
      DecimalControl = True
      KeyMode = kmNormal
    end
    object LookFornecedor: TCLookUp
      Left = 141
      Top = 5
      Width = 303
      Height = 19
      Alignment = taLeftJustify
      BevelInner = bvSpace
      BevelOuter = bvLowered
      Color = 14149350
      ParentBackground = False
      TabOrder = 1
      Key.Strings = (
        'idFornecedor')
      LookUpKey.Strings = (
        'idFornecedor')
      ClientDataSet = cdsLookup
      DataSource = dsPadrao
      ValidaCampoObrigatorio = True
      CampoObrigatorio = True
      LookUpTable = 'vCadFornecedorContabil'
      ReturnField = 'descCadFornecedor'
    end
    object DBEidDocSerie: TCDBEdit
      Left = 73
      Top = 27
      Width = 56
      Height = 19
      BevelKind = bkTile
      BorderStyle = bsNone
      DataField = 'idDocSerie'
      DataSource = dsPadrao
      TabOrder = 3
      Find = FindSerie
      DecimalControl = True
      KeyMode = kmUSUpper
    end
    object LookDocSerie: TCLookUp
      Left = 135
      Top = 28
      Width = 215
      Height = 19
      Alignment = taLeftJustify
      BevelInner = bvSpace
      BevelOuter = bvLowered
      Color = 14149350
      ParentBackground = False
      TabOrder = 4
      Key.Strings = (
        'idDocSerie')
      LookUpKey.Strings = (
        'idDocSerie')
      AlternateSQL.Strings = (
        
          'SELECT descDocSerie FROM DocSerie WHERE idTipoDocSerie = 2 AND i' +
          'dDocSerie = ?')
      ClientDataSet = cdsLookup
      DataSource = dsPadrao
      ValidaCampoObrigatorio = True
      CampoObrigatorio = True
      LookUpTable = 'DocSerie'
      ReturnField = 'descDocSerie'
    end
    object DBEnrTituloPag: TCDBEdit
      Left = 399
      Top = 28
      Width = 82
      Height = 19
      BevelKind = bkTile
      BorderStyle = bsNone
      Color = clWhite
      DataField = 'nrTituloPag'
      DataSource = dsPadrao
      TabOrder = 5
      OnExit = DBEnrTituloPagExit
      OnKeyDown = DBEnrTituloPagKeyDown
      DecimalControl = True
      KeyMode = kmNormal
    end
    object DBEidTituloPag: TCDBEdit
      Left = 487
      Top = 28
      Width = 94
      Height = 19
      TabStop = False
      BevelKind = bkTile
      BorderStyle = bsNone
      Color = 14149350
      DataField = 'idTituloPag'
      DataSource = dsPadrao
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 6
      DecimalControl = True
      KeyMode = kmNormal
    end
    object DBEstTituloPag: TCDBEdit
      Left = 487
      Top = 5
      Width = 94
      Height = 19
      TabStop = False
      BevelKind = bkTile
      BorderStyle = bsNone
      Color = 14149350
      DataField = 'stTituloPag'
      DataSource = dsPadrao
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      MaxLength = 10
      ParentFont = False
      ReadOnly = True
      TabOrder = 2
      DecimalControl = True
      KeyMode = kmUSUpper
    end
    object BtnStatus: TCBitBtn
      Left = 515
      Top = 2
      Width = 45
      Height = 19
      Caption = '&Status'
      Margin = 5
      TabOrder = 7
      Visible = False
      OnClick = BtnStatusClick
    end
  end
  inherited PagAbas: TCPageControl
    Top = 106
    Width = 763
    Height = 380
    TabOrder = 2
    OnChange = PagAbasChange
    ExplicitTop = 106
    ExplicitWidth = 763
    ExplicitHeight = 380
    inherited TabAbas: TTabSheet
      Caption = 'Dados do t'#237'tulo'
      ExplicitLeft = 4
      ExplicitTop = 25
      ExplicitWidth = 755
      ExplicitHeight = 351
      object CGroupBox1: TCGroupBox
        Left = 7
        Top = 4
        Width = 582
        Height = 334
        TabOrder = 0
        object CLabel5: TCLabel
          Left = 207
          Top = 16
          Width = 54
          Height = 13
          Alignment = taRightJustify
          Caption = 'Documento'
          Visible = False
        end
        object CLabel6: TCLabel
          Left = 44
          Top = 16
          Width = 38
          Height = 13
          Alignment = taRightJustify
          Caption = 'Emiss'#227'o'
        end
        object CLabel7: TCLabel
          Left = 389
          Top = 16
          Width = 81
          Height = 13
          Alignment = taRightJustify
          Caption = 'Valor do Titulo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object CLabel8: TCLabel
          Left = 40
          Top = 85
          Width = 42
          Height = 13
          Alignment = taRightJustify
          Caption = 'Portador'
        end
        object CLabel11: TCLabel
          Left = 34
          Top = 151
          Width = 48
          Height = 13
          Alignment = taRightJustify
          Caption = 'Resultado'
        end
        object CLabel12: TCLabel
          Left = 51
          Top = 173
          Width = 31
          Height = 13
          Alignment = taRightJustify
          Caption = 'Rateio'
        end
        object CLabel13: TCLabel
          Left = 38
          Top = 195
          Width = 44
          Height = 13
          Alignment = taRightJustify
          Caption = 'Gerencial'
        end
        object CLabel20: TCLabel
          Left = 19
          Top = 261
          Width = 63
          Height = 13
          Alignment = taRightJustify
          Caption = 'Observa'#231#245'es'
        end
        object CLabel17: TCLabel
          Left = 31
          Top = 239
          Width = 51
          Height = 13
          Alignment = taRightJustify
          Caption = 'Multa (%) '
        end
        object CLabel18: TCLabel
          Left = 160
          Top = 239
          Width = 51
          Height = 13
          Alignment = taRightJustify
          Caption = 'Juros (%) '
        end
        object CLabel19: TCLabel
          Left = 308
          Top = 239
          Width = 191
          Height = 13
          Alignment = taRightJustify
          Caption = 'Desconto para pagamento pontual (%) '
        end
        object CLabel16: TCLabel
          Left = 410
          Top = 217
          Width = 92
          Height = 13
          Alignment = taRightJustify
          Caption = 'Dias entre parcelas'
        end
        object CLabel15: TCLabel
          Left = 142
          Top = 217
          Width = 76
          Height = 13
          Alignment = taRightJustify
          Caption = 'Primeira parcela'
        end
        object CLabel14: TCLabel
          Left = 42
          Top = 217
          Width = 40
          Height = 13
          Alignment = taRightJustify
          Caption = 'Parcelas'
        end
        object CLabel21: TCLabel
          Left = 53
          Top = 129
          Width = 29
          Height = 13
          Alignment = taRightJustify
          Caption = #205'ndice'
        end
        object CLabel22: TCLabel
          Left = 337
          Top = 129
          Width = 40
          Height = 13
          Alignment = taRightJustify
          Caption = 'Cota'#231#227'o'
        end
        object CLabel23: TCLabel
          Left = 56
          Top = 63
          Width = 26
          Height = 13
          Alignment = taRightJustify
          Caption = 'Safra'
        end
        object CLabel2: TCLabel
          Left = 53
          Top = 107
          Width = 29
          Height = 13
          Alignment = taRightJustify
          Caption = 'Conta'
        end
        object CLabel10: TCLabel
          Left = 22
          Top = 38
          Width = 60
          Height = 13
          Alignment = taRightJustify
          Caption = 'Tipo de Doc.'
        end
        object DBEtpDocumento: TCDBEdit
          Left = 267
          Top = 10
          Width = 90
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'tpDocumento'
          DataSource = dsPadrao
          TabOrder = 0
          Visible = False
          OnEnter = DBEtpDocumentoEnter
          DecimalControl = True
          KeyMode = kmUSUpper
        end
        object DBEdtEmissao: TCDBEdit
          Left = 88
          Top = 13
          Width = 78
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'dtEmissao'
          DataSource = dsPadrao
          MaxLength = 10
          TabOrder = 1
          OnEnter = DBEdtEmissaoEnter
          DecimalControl = True
          KeyMode = kmDate
        end
        object DBEvlTituloPag: TCDBEdit
          Left = 476
          Top = 13
          Width = 94
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'vlTituloPag'
          DataSource = dsPadrao
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 2
          OnEnter = DBEvlTituloPagEnter
          OnExit = DBEvlTituloPagExit
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEidPortador: TCDBEdit
          Left = 88
          Top = 82
          Width = 48
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'idPortador'
          DataSource = dsPadrao
          TabOrder = 8
          OnEnter = DBEidPortadorEnter
          OnExit = DBEidPortadorExit
          Find = dmFind.FindPortador
          AcaoCad = frmPrincipal.actCadPortador
          DecimalControl = True
          KeyMode = kmNormal
        end
        object LookPortador: TCLookUp
          Left = 142
          Top = 82
          Width = 314
          Height = 19
          Alignment = taLeftJustify
          BevelInner = bvSpace
          BevelOuter = bvLowered
          Color = 14149350
          ParentBackground = False
          TabOrder = 9
          Key.Strings = (
            'idPortador')
          LookUpKey.Strings = (
            'idPortador')
          ClientDataSet = cdsLookup
          DataSource = dsPadrao
          ValidaCampoObrigatorio = True
          CampoObrigatorio = True
          LookUpTable = 'Portador'
          ReturnField = 'descPortador'
        end
        object DBEidResultado: TCDBEdit
          Left = 88
          Top = 148
          Width = 48
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'idResultado'
          DataSource = dsPadrao
          TabOrder = 19
          OnEnter = DBEidResultadoEnter
          OnExit = DBEidResultadoExit
          Find = FindResultado
          AcaoCad = frmPrincipal.actCadResultado
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEidRateio: TCDBEdit
          Left = 88
          Top = 170
          Width = 48
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'idRateio'
          DataSource = dsPadrao
          TabOrder = 22
          OnEnter = DBEidRateioEnter
          OnExit = DBEidResultadoExit
          Find = FindRateio
          AcaoCad = frmPrincipal.actCadPlanoRateio
          DecimalControl = True
          KeyMode = kmNormal
        end
        object LookRateio: TCLookUp
          Left = 142
          Top = 170
          Width = 204
          Height = 19
          Alignment = taLeftJustify
          BevelInner = bvSpace
          BevelOuter = bvLowered
          Color = 14149350
          ParentBackground = False
          TabOrder = 23
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
        object DBEidGerencial: TCDBEdit
          Left = 88
          Top = 192
          Width = 48
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'idGerencial'
          DataSource = dsPadrao
          TabOrder = 25
          OnEnter = DBEidGerencialEnter
          OnExit = DBEidResultadoExit
          Find = FindGerenciaP
          AcaoCad = frmPrincipal.actCadGerencial
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBMobsTituloPag: TCDBMemo
          Left = 88
          Top = 258
          Width = 482
          Height = 59
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'obsTituloPag'
          DataSource = dsPadrao
          ScrollBars = ssVertical
          TabOrder = 35
          OnExit = DBMobsTituloPagExit
          KeyMemo = kmmUSUpper
        end
        object DBEprMulta: TCDBEdit
          Left = 88
          Top = 236
          Width = 66
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'prMulta'
          DataSource = dsPadrao
          TabOrder = 32
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEprJuros: TCDBEdit
          Left = 217
          Top = 236
          Width = 65
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'prJuros'
          DataSource = dsPadrao
          TabOrder = 33
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEprDesconto: TCDBEdit
          Left = 505
          Top = 236
          Width = 65
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'prDesconto'
          DataSource = dsPadrao
          TabOrder = 34
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEdiasVencimento: TCDBEdit
          Left = 508
          Top = 214
          Width = 62
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'diasVencimento'
          DataSource = dsPadrao
          TabOrder = 31
          OnEnter = DBEvlTituloPagEnter
          OnExit = DBEvlTituloPagExit
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEdtVencimentoIni: TCDBEdit
          Left = 224
          Top = 214
          Width = 80
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'dtVencimentoIni'
          DataSource = dsPadrao
          MaxLength = 10
          TabOrder = 29
          OnEnter = DBEvlTituloPagEnter
          OnExit = DBEvlTituloPagExit
          DecimalControl = True
          KeyMode = kmDate
        end
        object DBEqtParcelas: TCDBEdit
          Left = 88
          Top = 214
          Width = 48
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'qtParcelas'
          DataSource = dsPadrao
          TabOrder = 28
          OnEnter = DBEvlTituloPagEnter
          OnExit = DBEvlTituloPagExit
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEidIndice: TCDBEdit
          Left = 88
          Top = 126
          Width = 48
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'idIndice'
          DataSource = dsPadrao
          TabOrder = 15
          Find = FindIndice
          AcaoCad = frmPrincipal.actIndice
          DecimalControl = True
          KeyMode = kmNormal
        end
        object LookIndice: TCLookUp
          Left = 142
          Top = 126
          Width = 189
          Height = 19
          Alignment = taLeftJustify
          BevelInner = bvSpace
          BevelOuter = bvLowered
          Color = 14149350
          ParentBackground = False
          TabOrder = 16
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
        object LookLancamento: TCLookUp
          Left = 383
          Top = 126
          Width = 73
          Height = 19
          Alignment = taRightJustify
          BevelInner = bvSpace
          BevelOuter = bvLowered
          Color = 14149350
          ParentBackground = False
          TabOrder = 17
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
          OnSetText = LookLancamentoSetText
          CampoObrigatorio = True
          LookUpTable = 'IndiceLancamento'
          ReturnField = 'vlLancamento'
        end
        object CBitBtn2: TCBitBtn
          Left = 462
          Top = 126
          Width = 96
          Height = 19
          Action = frmPrincipal.actIndice
          Caption = #205'ndices'
          TabOrder = 18
          TabStop = False
        end
        object CBitBtn4: TCBitBtn
          Left = 462
          Top = 151
          Width = 96
          Height = 19
          Action = frmPrincipal.actCadResultado
          Caption = '&Resultado'
          TabOrder = 21
          TabStop = False
        end
        object CBitBtn5: TCBitBtn
          Left = 352
          Top = 170
          Width = 104
          Height = 19
          Action = frmPrincipal.actCadPlanoRateio
          Caption = '&Plano de Rateio'
          TabOrder = 24
          TabStop = False
        end
        object CBitBtn6: TCBitBtn
          Left = 462
          Top = 192
          Width = 96
          Height = 19
          Action = frmPrincipal.actCadGerencial
          Caption = '&Gerencial'
          TabOrder = 27
          TabStop = False
        end
        object DBEidSafra: TCDBEdit
          Left = 88
          Top = 60
          Width = 48
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'idSafra'
          DataSource = dsPadrao
          TabOrder = 5
          Find = FindSafra
          AcaoCad = frmPrincipal.actCadSafra
          DecimalControl = True
          KeyMode = kmNormal
        end
        object LookSafra: TCLookUp
          Left = 142
          Top = 60
          Width = 314
          Height = 19
          Alignment = taLeftJustify
          BevelInner = bvSpace
          BevelOuter = bvLowered
          Color = 14149350
          ParentBackground = False
          TabOrder = 6
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
          Left = 462
          Top = 60
          Width = 96
          Height = 19
          Action = frmPrincipal.actCadSafra
          Caption = '&Safra'
          TabOrder = 7
          TabStop = False
        end
        object DBCKincMes: TCDBCheckBox
          Left = 310
          Top = 216
          Width = 88
          Height = 17
          Caption = 'Mesmo Dia?'
          DataField = 'incMes'
          DataSource = dsPadrao
          TabOrder = 30
          ValueChecked = 'S'
          ValueUnchecked = 'N'
          OnExit = DBCKincMesExit
        end
        object LookGerencialP: TCLookUp
          Left = 142
          Top = 192
          Width = 314
          Height = 19
          Alignment = taLeftJustify
          BevelInner = bvSpace
          BevelOuter = bvLowered
          Color = 14149350
          ParentBackground = False
          TabOrder = 26
          Key.Strings = (
            'idGerencial')
          LookUpKey.Strings = (
            'idGerencial')
          AlternateSQL.Strings = (
            
              'SELECT DISTINCT descGerencial FROM vGerencial WHERE StGerencial ' +
              '= '#39'ATIVO'#39' AND tpGerencial = '#39'SAIDAS'#39' AND idEmpresa = [DBEidEmpre' +
              'sa] AND idGerencial = ?')
          ClientDataSet = cdsLookup
          DataSource = dsPadrao
          ValidaCampoObrigatorio = True
          CampoObrigatorio = True
          LookUpTable = 'vGerencial'
          ReturnField = 'descGerencial'
        end
        object CLookUp1: TCLookUp
          Left = 142
          Top = 148
          Width = 314
          Height = 19
          Alignment = taLeftJustify
          BevelInner = bvSpace
          BevelOuter = bvLowered
          Color = 14149350
          ParentBackground = False
          TabOrder = 20
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
        object LookdescConta: TCLookUp
          Left = 300
          Top = 104
          Width = 258
          Height = 19
          Alignment = taLeftJustify
          BevelInner = bvSpace
          BevelOuter = bvLowered
          Color = 14149350
          ParentBackground = False
          TabOrder = 14
          Key.Strings = (
            'idFornecedor'
            'idConta')
          LookUpKey.Strings = (
            'idCadGeral'
            'idConta')
          ClientDataSet = cdsLookup
          DataSource = dsPadrao
          ValidaCampoObrigatorio = True
          CampoObrigatorio = True
          LookUpTable = 'CadGeralConta'
          ReturnField = 'descConta'
        end
        object LookContaCorrente: TCLookUp
          Left = 200
          Top = 104
          Width = 94
          Height = 19
          Alignment = taLeftJustify
          BevelInner = bvSpace
          BevelOuter = bvLowered
          Color = 14149350
          ParentBackground = False
          TabOrder = 13
          Key.Strings = (
            'idFornecedor'
            'idConta')
          LookUpKey.Strings = (
            'idCadGeral'
            'idConta')
          ClientDataSet = cdsLookup
          DataSource = dsPadrao
          ValidaCampoObrigatorio = True
          CampoObrigatorio = True
          LookUpTable = 'CadGeralConta'
          ReturnField = 'idContaCorrente'
        end
        object LookAgencia: TCLookUp
          Left = 142
          Top = 104
          Width = 52
          Height = 19
          Alignment = taLeftJustify
          BevelInner = bvSpace
          BevelOuter = bvLowered
          Color = 14149350
          ParentBackground = False
          TabOrder = 12
          Key.Strings = (
            'idFornecedor'
            'idConta')
          LookUpKey.Strings = (
            'idCadGeral'
            'idConta')
          ClientDataSet = cdsLookup
          DataSource = dsPadrao
          ValidaCampoObrigatorio = True
          CampoObrigatorio = True
          LookUpTable = 'CadGeralConta'
          ReturnField = 'idAgencia'
        end
        object DBEidConta: TCDBEdit
          Left = 88
          Top = 104
          Width = 48
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'idConta'
          DataSource = dsPadrao
          TabOrder = 11
          Find = FindConta
          DecimalControl = True
          KeyMode = kmNormal
        end
        object LookHabilita: TCLookUp
          Left = 460
          Top = 82
          Width = 23
          Height = 19
          Alignment = taLeftJustify
          BevelInner = bvSpace
          BevelOuter = bvLowered
          Color = 14149350
          ParentBackground = False
          TabOrder = 10
          Visible = False
          Key.Strings = (
            'idPortador')
          LookUpKey.Strings = (
            'idPortador')
          ClientDataSet = cdsLookup
          DataSource = dsPadrao
          ValidaCampoObrigatorio = True
          CampoObrigatorio = True
          LookUpTable = 'Portador'
          ReturnField = 'HabilitaConta'
        end
        object CLookUp2: TCLookUp
          Left = 142
          Top = 35
          Width = 314
          Height = 19
          Alignment = taLeftJustify
          BevelInner = bvSpace
          BevelOuter = bvLowered
          Color = 14149350
          ParentBackground = False
          TabOrder = 4
          Key.Strings = (
            'idDocumento')
          LookUpKey.Strings = (
            'idDocumento')
          ClientDataSet = cdsLookup
          DataSource = dsPadrao
          ValidaCampoObrigatorio = True
          CampoObrigatorio = True
          LookUpTable = 'Documento'
          ReturnField = 'descDocumento'
        end
        object DBEidDocumento: TCDBEdit
          Left = 88
          Top = 35
          Width = 48
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'idDocumento'
          DataSource = dsPadrao
          TabOrder = 3
          Find = FindDocumento
          AcaoCad = frmPrincipal.actCadSafra
          DecimalControl = True
          KeyMode = kmNormal
        end
      end
      object DBEidMovFinanceira: TCDBEdit
        Left = 656
        Top = 205
        Width = 48
        Height = 19
        BevelKind = bkTile
        BorderStyle = bsNone
        DataField = 'idMovFinanceira'
        DataSource = dsPadrao
        TabOrder = 1
        Visible = False
        DecimalControl = True
        KeyMode = kmNormal
      end
    end
    object TabParcelas: TTabSheet
      Caption = 'Parcelas'
      ImageIndex = 1
      object CGroupBox6: TCGroupBox
        Left = 3
        Top = 3
        Width = 586
        Height = 38
        TabOrder = 0
        object CLabel24: TCLabel
          Left = 8
          Top = 14
          Width = 35
          Height = 13
          Alignment = taRightJustify
          Caption = 'Parcela'
        end
        object CLabel25: TCLabel
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
        object CLabel26: TCLabel
          Left = 284
          Top = 14
          Width = 55
          Height = 13
          Alignment = taRightJustify
          Caption = 'Vencimento'
        end
        object CLabel27: TCLabel
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
          OnExit = DBEidParcelaExit
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
          OnEnter = DBEvlParcelaEnter
          OnExit = DBEvlParcelaExit
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
          DataSource = dsTituloPagParc
          MaxLength = 10
          TabOrder = 2
          OnDblClick = DBEdtVencimentoDblClick
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
      object CGroupBox7: TCGroupBox
        Left = 3
        Top = 47
        Width = 474
        Height = 259
        TabOrder = 1
        object GridParcelas: TCDBGrid
          Left = 8
          Top = 14
          Width = 454
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
          OnKeyDown = GridParcelasKeyDown
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
        Left = 483
        Top = 47
        Width = 106
        Height = 259
        TabOrder = 2
        object CLabel28: TCLabel
          Left = 15
          Top = 163
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
          Left = 6
          Top = 182
          Width = 93
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
        object CLabel29: TCLabel
          Left = 15
          Top = 204
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
          Left = 6
          Top = 223
          Width = 93
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
          Left = 16
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
          Left = 16
          Top = 42
          Width = 75
          Height = 25
          Action = actCancelar
          Caption = '&Desfazer'
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
          TabOrder = 1
        end
        object BtnExcluirParc: TCBitBtn
          Left = 16
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
          TabStop = False
          OnClick = BtnSalvarParcClick
        end
        object BtnNovoParc: TCBitBtn
          Left = 16
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
          TabStop = False
          OnClick = BtnSalvarParcClick
        end
        object BtnParcCancela: TCBitBtn
          Left = 16
          Top = 132
          Width = 75
          Height = 25
          Action = actCancelaParc
          Caption = '&Cancelar'
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
          Spacing = 5
          TabOrder = 4
          TabStop = False
        end
      end
    end
    object TabRateio: TTabSheet
      Caption = 'Rateio'
      ImageIndex = 2
      object GrpRateioTitulo: TCGroupBox
        Left = 3
        Top = 0
        Width = 586
        Height = 316
        Caption = 'Rateio no total do t'#237'tulo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        object CLabel36: TCLabel
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
        object CLabel39: TCLabel
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
        object CGroupBox9: TCGroupBox
          Left = 9
          Top = 13
          Width = 470
          Height = 110
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          object CLabel41: TCLabel
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
          object CLabel42: TCLabel
            Left = 12
            Top = 39
            Width = 62
            Height = 13
            Alignment = taRightJustify
            Caption = 'C. Resultado'
          end
          object CLabel43: TCLabel
            Left = 16
            Top = 62
            Width = 58
            Height = 13
            Alignment = taRightJustify
            Caption = 'C. Gerencial'
          end
          object CLabel44: TCLabel
            Left = 23
            Top = 84
            Width = 51
            Height = 13
            Alignment = taRightJustify
            Caption = 'Percentual'
          end
          object CLabel45: TCLabel
            Left = 144
            Top = 84
            Width = 24
            Height = 13
            Alignment = taRightJustify
            Caption = 'Valor'
          end
          object DBEvlTituloPagR: TCDBEdit
            Left = 80
            Top = 14
            Width = 105
            Height = 19
            TabStop = False
            BevelKind = bkTile
            BorderStyle = bsNone
            Color = 14149350
            DataField = 'vlTituloPag'
            DataSource = dsPadrao
            MaxLength = 10
            ReadOnly = True
            TabOrder = 0
            DecimalControl = False
            KeyMode = kmNormal
          end
          object DBEidResultadoRT: TCDBEdit
            Left = 80
            Top = 36
            Width = 57
            Height = 19
            BevelKind = bkTile
            BorderStyle = bsNone
            DataField = 'idResultado'
            DataSource = dsTituloRateio
            TabOrder = 3
            OnExit = DBEidResultadoRTExit
            Find = FindResultado
            DecimalControl = True
            KeyMode = kmNormal
          end
          object DBEidGerencialRT: TCDBEdit
            Left = 80
            Top = 59
            Width = 57
            Height = 19
            BevelKind = bkTile
            BorderStyle = bsNone
            DataField = 'idGerencial'
            DataSource = dsTituloRateio
            TabOrder = 5
            Find = FindGerenciaP
            DecimalControl = True
            KeyMode = kmNormal
          end
          object DBEprRateioRT: TCDBEdit
            Left = 80
            Top = 81
            Width = 57
            Height = 19
            BevelKind = bkTile
            BorderStyle = bsNone
            DataField = 'prRateio'
            DataSource = dsTituloRateio
            TabOrder = 7
            OnEnter = DBEprRateioRTEnter
            OnExit = DBEprRateioRTExit
            DecimalControl = True
            KeyMode = kmNormal
          end
          object DBEvlRateioRT: TCDBEdit
            Left = 174
            Top = 81
            Width = 91
            Height = 19
            BevelKind = bkTile
            BorderStyle = bsNone
            DataField = 'vlRateio'
            DataSource = dsTituloRateio
            TabOrder = 8
            OnEnter = DBEprRateioRTEnter
            OnExit = DBEprRateioRTExit
            DecimalControl = True
            KeyMode = kmNormal
          end
          object RBRatTitulo: TCRadioButton
            Left = 200
            Top = 16
            Width = 113
            Height = 17
            Caption = 'Rateio no Total'
            Checked = True
            TabOrder = 1
            TabStop = True
          end
          object RBRatParcela: TCRadioButton
            Left = 344
            Top = 16
            Width = 113
            Height = 17
            Caption = 'Rateio na Parcela'
            TabOrder = 2
            OnClick = RBRatParcelaClick
          end
          object LookGerencialRT: TCLookUp
            Left = 143
            Top = 59
            Width = 314
            Height = 19
            Alignment = taLeftJustify
            BevelInner = bvSpace
            BevelOuter = bvLowered
            Color = 14149350
            ParentBackground = False
            TabOrder = 6
            Key.Strings = (
              'idGerencial')
            LookUpKey.Strings = (
              'idGerencial')
            AlternateSQL.Strings = (
              
                'SELECT DISTINCT descGerencial FROM vGerencial WHERE StGerencial ' +
                '= '#39'ATIVO'#39' AND tpGerencial = '#39'SAIDAS'#39' AND idEmpresa = [DBEidEmpre' +
                'sa] AND idGerencial = ?')
            ClientDataSet = cdsLookup
            DataSource = dsTituloRateio
            ValidaCampoObrigatorio = True
            CampoObrigatorio = True
            LookUpTable = 'vGerencial'
            ReturnField = 'descGerencial'
          end
          object LookResultadoRT: TCLookUp
            Left = 143
            Top = 36
            Width = 314
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
            DataSource = dsTituloRateio
            ValidaCampoObrigatorio = True
            CampoObrigatorio = True
            LookUpTable = 'Resultado'
            ReturnField = 'descResultado'
          end
        end
        object CGroupBox10: TCGroupBox
          Left = 9
          Top = 129
          Width = 470
          Height = 178
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          object CDBGrid3: TCDBGrid
            Left = 10
            Top = 12
            Width = 451
            Height = 156
            TabStop = False
            DataSource = dsTituloRateio
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
        object CGroupBox11: TCGroupBox
          Left = 485
          Top = 13
          Width = 92
          Height = 294
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
          object CLabel46: TCLabel
            Left = 9
            Top = 189
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
          object LblTotalRatTit: TCLabel
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
          object CLabel48: TCLabel
            Left = 9
            Top = 230
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
          object LblRestanteRatTit: TCLabel
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
          object BtnSalvarRatTit: TCBitBtn
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
            OnClick = BtnSalvarRatTitClick
          end
          object BtnCancelarRatTit: TCBitBtn
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
            OnClick = BtnSalvarRatTitClick
          end
          object BtnExcluirRatTit: TCBitBtn
            Left = 8
            Top = 70
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
            OnClick = BtnSalvarRatTitClick
          end
          object BtnNovoRatTit: TCBitBtn
            Left = 8
            Top = 101
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
            OnClick = BtnSalvarRatTitClick
          end
          object btnGerar: TCBitBtn
            Left = 9
            Top = 132
            Width = 75
            Height = 25
            Caption = '&Gerar'
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
            TabOrder = 4
            OnClick = btnGerarClick
          end
        end
      end
      object GrpRateioParc: TCGroupBox
        Left = 3
        Top = 3
        Width = 586
        Height = 316
        Caption = 'Rateio nas parcelas'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        object CLabel38: TCLabel
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
        object CLabel40: TCLabel
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
        object CGroupBox2: TCGroupBox
          Left = 9
          Top = 13
          Width = 470
          Height = 110
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          object CLabel30: TCLabel
            Left = 32
            Top = 17
            Width = 42
            Height = 13
            Alignment = taRightJustify
            Caption = 'Parcela'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object CLabel34: TCLabel
            Left = 23
            Top = 84
            Width = 51
            Height = 13
            Alignment = taRightJustify
            Caption = 'Percentual'
          end
          object CLabel35: TCLabel
            Left = 144
            Top = 84
            Width = 24
            Height = 13
            Alignment = taRightJustify
            Caption = 'Valor'
          end
          object CLabel32: TCLabel
            Left = 16
            Top = 62
            Width = 58
            Height = 13
            Alignment = taRightJustify
            Caption = 'C. Gerencial'
          end
          object CLabel33: TCLabel
            Left = 12
            Top = 39
            Width = 62
            Height = 13
            Alignment = taRightJustify
            Caption = 'C. Resultado'
          end
          object DBEidParcelaR: TCDBEdit
            Left = 80
            Top = 14
            Width = 41
            Height = 19
            TabStop = False
            BevelKind = bkTile
            BorderStyle = bsNone
            Color = 14149350
            DataField = 'idParcela'
            DataSource = dsTituloPagParc
            MaxLength = 10
            ReadOnly = True
            TabOrder = 0
            DecimalControl = False
            KeyMode = kmNormal
          end
          object DBEprRateio: TCDBEdit
            Left = 80
            Top = 81
            Width = 57
            Height = 19
            BevelKind = bkTile
            BorderStyle = bsNone
            DataField = 'prRateio'
            DataSource = dsTituloPagRat
            TabOrder = 8
            OnEnter = DBEprRateioEnter
            OnExit = DBEprRateioExit
            DecimalControl = True
            KeyMode = kmNormal
          end
          object DBEvlRateio: TCDBEdit
            Left = 174
            Top = 81
            Width = 91
            Height = 19
            BevelKind = bkTile
            BorderStyle = bsNone
            DataField = 'vlRateio'
            DataSource = dsTituloPagRat
            TabOrder = 9
            OnEnter = DBEprRateioEnter
            OnExit = DBEprRateioExit
            DecimalControl = True
            KeyMode = kmNormal
          end
          object RBRatTitulo2: TCRadioButton
            Left = 239
            Top = 16
            Width = 113
            Height = 17
            Caption = 'Rateio no Total'
            TabOrder = 2
            OnClick = RBRatTitulo2Click
          end
          object RBRatParcela2: TCRadioButton
            Left = 357
            Top = 16
            Width = 105
            Height = 17
            Caption = 'Rateio na Parcela'
            Checked = True
            TabOrder = 3
            TabStop = True
          end
          object DBEidGerencialR: TCDBEdit
            Left = 80
            Top = 59
            Width = 57
            Height = 19
            BevelKind = bkTile
            BorderStyle = bsNone
            DataField = 'idGerencial'
            DataSource = dsTituloPagRat
            TabOrder = 6
            Find = FindGerenciaP
            DecimalControl = True
            KeyMode = kmNormal
          end
          object DBEidResultadoR: TCDBEdit
            Left = 80
            Top = 36
            Width = 57
            Height = 19
            BevelKind = bkTile
            BorderStyle = bsNone
            DataField = 'idResultado'
            DataSource = dsTituloPagRat
            TabOrder = 4
            OnExit = DBEidResultadoRExit
            Find = FindResultado
            DecimalControl = True
            KeyMode = kmNormal
          end
          object DBEvlParcelaR: TCDBEdit
            Left = 127
            Top = 14
            Width = 98
            Height = 19
            TabStop = False
            BevelKind = bkTile
            BorderStyle = bsNone
            Color = 14149350
            DataField = 'vlParcela'
            DataSource = dsTituloPagParc
            MaxLength = 10
            ReadOnly = True
            TabOrder = 1
            DecimalControl = False
            KeyMode = kmNormal
          end
          object LookGerencialR: TCLookUp
            Left = 143
            Top = 59
            Width = 314
            Height = 19
            Alignment = taLeftJustify
            BevelInner = bvSpace
            BevelOuter = bvLowered
            Color = 14149350
            ParentBackground = False
            TabOrder = 7
            Key.Strings = (
              'idGerencial')
            LookUpKey.Strings = (
              'idGerencial')
            AlternateSQL.Strings = (
              
                'SELECT DISTINCT descGerencial FROM vGerencial WHERE StGerencial ' +
                '= '#39'ATIVO'#39' AND tpGerencial = '#39'SAIDAS'#39' AND idEmpresa = [DBEidEmpre' +
                'sa] AND idGerencial = ?')
            ClientDataSet = cdsLookup
            DataSource = dsTituloPagRat
            ValidaCampoObrigatorio = True
            CampoObrigatorio = True
            LookUpTable = 'vGerencial'
            ReturnField = 'descGerencial'
          end
          object LookResultadoR: TCLookUp
            Left = 143
            Top = 36
            Width = 314
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
            DataSource = dsTituloPagRat
            ValidaCampoObrigatorio = True
            CampoObrigatorio = True
            LookUpTable = 'Resultado'
            ReturnField = 'descResultado'
          end
        end
        object CGroupBox4: TCGroupBox
          Left = 9
          Top = 129
          Width = 470
          Height = 178
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 2
          object CDBGrid1: TCDBGrid
            Left = 8
            Top = 14
            Width = 451
            Height = 156
            TabStop = False
            DataSource = dsTituloPagRat
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection]
            ParentFont = False
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
        object CGroupBox3: TCGroupBox
          Left = 485
          Top = 13
          Width = 92
          Height = 294
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
          object CLabel31: TCLabel
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
          object CLabel37: TCLabel
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
            Left = 9
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
            Top = 70
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
            Top = 101
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
      end
    end
    object TabMovimentacao: TTabSheet
      Caption = 'Movimenta'#231#227'o'
      ImageIndex = 3
      object CLabel50: TCLabel
        Left = 16
        Top = 314
        Width = 114
        Height = 13
        Alignment = taCenter
        AutoSize = False
        Caption = 'Saldo da Parcela'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object CGroupBox12: TCGroupBox
        Left = 3
        Top = 71
        Width = 488
        Height = 234
        TabOrder = 2
        object CDBGrid4: TCDBGrid
          Left = 8
          Top = 14
          Width = 471
          Height = 211
          TabStop = False
          DataSource = dsTituloPagMov
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
              FieldName = 'idMovFinanceira'
              Title.Caption = 'Mov.'
              Width = 40
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'descMovFinanceira'
              Title.Caption = 'Descri'#231#227'o'
              Width = 200
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'vlTituloPagMov'
              Title.Caption = 'Valor'
              Width = 85
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'vlRealIndice'
              Title.Caption = 'Real'
              Width = 85
              Visible = True
            end>
        end
      end
      object CGroupBox5: TCGroupBox
        Left = 3
        Top = 0
        Width = 488
        Height = 65
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        object CLabel47: TCLabel
          Left = 45
          Top = 17
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
        object CLabel49: TCLabel
          Left = 5
          Top = 39
          Width = 69
          Height = 13
          Alignment = taRightJustify
          Caption = 'Movimenta'#231#227'o'
        end
        object CLabel53: TCLabel
          Left = 366
          Top = 17
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
        end
        object DBEvlTituloPagMov: TCDBEdit
          Left = 80
          Top = 14
          Width = 89
          Height = 19
          TabStop = False
          BevelKind = bkTile
          BorderStyle = bsNone
          Color = 14149350
          DataField = 'vlTituloPagMov'
          DataSource = dsTituloPagMov
          MaxLength = 10
          ReadOnly = True
          TabOrder = 0
          DecimalControl = False
          KeyMode = kmNormal
        end
        object DBEidMovFinanceiraM: TCDBEdit
          Left = 80
          Top = 36
          Width = 57
          Height = 19
          TabStop = False
          BevelKind = bkTile
          BorderStyle = bsNone
          Color = 14149350
          DataField = 'idMovFinanceira'
          DataSource = dsTituloPagMov
          ReadOnly = True
          TabOrder = 2
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEdtTituloPagMov: TCDBEdit
          Left = 399
          Top = 14
          Width = 80
          Height = 19
          TabStop = False
          BevelKind = bkTile
          BorderStyle = bsNone
          Color = 14149350
          DataField = 'dtTituloPagMov'
          DataSource = dsTituloPagMov
          MaxLength = 10
          ReadOnly = True
          TabOrder = 1
          DecimalControl = False
          KeyMode = kmNormal
        end
        object LookMovFinanceiraM: TCLookUp
          Left = 143
          Top = 36
          Width = 336
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
            
              'SELECT descMovFinanceira FROM MovFinanceira WHERE idMovFinanceir' +
              'a = ?')
          ClientDataSet = cdsLookup
          DataSource = dsTituloPagMov
          ValidaCampoObrigatorio = True
          CampoObrigatorio = True
          LookUpTable = 'MovFinanceira'
          ReturnField = 'descMovFinanceira'
        end
      end
      object CGroupBox8: TCGroupBox
        Left = 497
        Top = 0
        Width = 92
        Height = 319
        TabOrder = 1
        object BtnAlterarMov: TCBitBtn
          Left = 8
          Top = 10
          Width = 75
          Height = 25
          Caption = '&Alterar'
          Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF05710AFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FF05710A05710AFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FF05710A05710A05710A05710A05710A05710A20B33505710AFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF05710A76F9A776F9A776
            F9A76BF09751DA7533C24D19AC2A05710AFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FF05710A05710A05710A05710A05710A05710A47D36805710AFF00
            FFFF00FFFF00FFFF00FFFF00FF1C78D51C78D51C78D51C78D51C5996FF00FFFF
            00FFFF00FF05710A05710AE4F0FC1C78D51C78D51C78D51C78D51C78D582C6F9
            57BCFF4EB5FF4DB4FF1C5996FF00FFFF00FFFF00FF05710AFF00FFE4F0FC2A95
            FF369BFF379CFF1C78D51C78D57DC3F756BCFF4EB4FE4DB3FF1C5996FF00FFFF
            00FFFF00FFFF00FFFF00FFE4F0FC2893FF3499FF359AFF1C78D51C78D580C6F9
            5BC1FF53BAFF52B8FF1C5996FF00FFFF00FFFF00FFFF00FFFF00FFE4F0FC1F8E
            FF2B95FF2C96FF1C78D51C78D580C6F95BC1FF53BAFF52B8FF1C5996FF00FFFF
            00FFFF00FFFF00FFFF00FFE4F0FCE4F0FCE4F0FCE4F0FCE4F0FC1C78D5629DCF
            3589CF3589CF3589CF1C59961C59961C59961C59961C59961C5996FF00FFFF00
            FFFF00FFFF00FFFF00FF1C78D586CCF965CBFF5DC3FF5CC4FF3589CF53BAFF53
            BAFF4EB4FF4DB4FF1C78D5FF00FFFF00FFFF00FFFF00FFFF00FF1C78D584C9F7
            65CAFF5EC3FE5EC4FF3589CF53BAFF54BAFF4FB4FE4FB4FF1C78D5FF00FFFF00
            FFFF00FFFF00FFFF00FF1C78D585CBF864CBFF5EC6FF5EC7FF3589CF53BAFF55
            BDFF50B7FF50B7FF1C78D5FF00FFFF00FFFF00FFFF00FFFF00FF1C78D59ECFF5
            92D7FD88D2FC8CD5FD629DCF85CEFD85CEFD80C9FC84CBFD1C78D5FF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FF1C78D51C78D51C78D51C78D51C78D51C78D51C
            78D51C78D51C78D5FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
          Margin = 5
          TabOrder = 0
          OnClick = BtnAlterarMovClick
        end
        object BtnExcluirMov: TCBitBtn
          Left = 8
          Top = 41
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
          TabOrder = 1
          OnClick = BtnExcluirMovClick
        end
      end
      object DBEidTituloPagMov: TCDBEdit
        Left = 635
        Top = 271
        Width = 94
        Height = 19
        TabStop = False
        BevelKind = bkTile
        BorderStyle = bsNone
        Color = 14149350
        DataField = 'idTituloPagMov'
        DataSource = dsTituloPagMov
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 3
        Visible = False
        DecimalControl = True
        KeyMode = kmNormal
      end
      object DBEvlSaldoParc: TCDBEdit
        Left = 125
        Top = 311
        Width = 100
        Height = 19
        TabStop = False
        BevelKind = bkTile
        BiDiMode = bdRightToLeft
        BorderStyle = bsNone
        Color = 14149350
        DataField = 'vlSaldoParc'
        DataSource = dsTituloPagMov
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBiDiMode = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 4
        DecimalControl = True
        KeyMode = kmNormal
      end
    end
  end
  inherited PanBotoes: TCPanelGradient
    Top = 490
    Width = 763
    TabOrder = 3
    ExplicitTop = 490
    ExplicitWidth = 763
    inherited BtnFechar: TCBitBtn
      Left = 518
      TabOrder = 6
      ExplicitLeft = 518
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
      TabOrder = 5
    end
  end
  inherited PanEmpresa: TCPanelGradient
    Width = 763
    ExplicitWidth = 763
  end
  inherited imgIcones: TImageList
    Left = 592
    Top = 72
    Bitmap = {
      494C010104000900540010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000002000000001002000000000000020
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FEFEFEFFFEFEFEFFF6F6F7FFECECEDFFFDFDFDFFFEFEFEFF0000
      000000000000000000000000000000000000000000000000000092635D00A467
      6900A4676900A4676900A4676900A4676900A4676900A4676900A4676900A467
      6900A4676900A467690000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FEFEFEFFFEFEFEFFF5F5F7FFA3A3B9FF85859BFFE5E5E9FFFDFDFEFFFEFE
      FEFF00000000000000000000000000000000000000000000000092635D00FCF3
      DE00FFEED500FFEED500FFEED500FFEED500FEEBD100FEEBD100FEEBD100FEEB
      D100F7EDD000A467690000000000000000000000000000000000000000000000
      0000BD4C00000000000000000000000000008424050084240500842405008424
      05008424050000000000000000000000000000000000FBFBFBFFD6D6D6FFC8C8
      C8FFCCCCCCFFD2D2D2FFA5A7A9FF64AFB8FF68B9C4FF97A0A3FFD0D0D0FFCFCF
      CFFFC9C9C9FFD3D3D3FFF7F7F7FF00000000000000000000000000000000FEFE
      FEFFFEFEFEFFF6F6FAFFA7A7D0FF616190FF7676B2FF9393C9FFE5E5ECFFFDFD
      FEFFFEFEFEFF000000000000000000000000000000000000000092635D00F7EA
      D800FEBD8200FEBD8200FEBD8200FEBD8200FEBD8200FEBD8200FEBD8200FEBD
      8200F2E2C700A467690000000000000000000000000000000000000000000000
      0000BD4C0000BD4C0000BD4C0000C24F000084240500FFC17900E58E4000D36E
      1A008424050000000000000000000000000000000000F6F6F6FFB9B9B9FFBABA
      BAFFA8A8A8FF4F959EFF9AFBFFFFEDFFFFFFF3FFFFFFABFFFFFF4DA1ABFFA1A1
      A1FFBBBBBBFFB4B4B4FFEFEFEFFF00000000000000000000000000000000FEFE
      FEFFF6F6FAFFA2A2DFFF7272D0FF42427FFF6F6FD0FF7F7FE7FF8787CFFFE4E4
      ECFFFDFDFEFFFEFEFEFF0000000000000000000000000000000092635D00F8EF
      DE00FAE9D500FAE7D400FAE7D300F8E6D100F8E6D000F8E6D000F8E6D000F8E6
      D000F0E2C900A467690000000000000000000000000000000000000000000000
      0000BD4C00000000000000000000000000008323040084240500842305008323
      0400842405000000000000000000000000000000000000000000FDFDFDFF8AAA
      AEFF70D9E5FFD4FFFFFFEAFFFFFFDCFFFFFFDBFFFFFFE8FFFFFFDDFFFFFF75E2
      EDFF7CA5AAFFF6F6F6FF00000000000000000000000000000000FEFEFEFFF6F6
      F9FF9292D8FF6161E8FF4E4EC8FF33337CFF5656C8FF6161E7FF6161DFFF7373
      C3FFE2E2E7FFFDFDFDFFFEFEFEFF00000000000000000000000092635D00EAE2
      D400FEBD8200FEBD8200FEBD8200FEBD8200FEBD8200FEBD8200FEBD8200FEBD
      8200E1D3BA00A467690000000000000000000000000000000000000000000000
      0000BD4C00000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000D2E8EBFF42CFE0FF8AFF
      FFFFCCFFFFFFE9F0E9FFDAF1F2FFE8E9DFFFEEE5D6FFD7F5F7FFEAEDE4FFD2FF
      FFFF9CFFFFFF45D6E6FFC0DFE4FF0000000000000000FEFEFEFFF5F5F7FF7E7E
      B6FF3E3EBFFF3636C8FF3434ACFF27275CFF363683FF4343B9FF3F3FC7FF3737
      9CFF5C5CA2FFE1E1E9FFFDFDFEFFFEFEFEFF000000000000000098746800AA9F
      9500A69A9200A5999100A5998E00A4978B00A3968900A1958700A1938400A191
      8300A4938100986B650000000000000000000000000000000000000000000000
      0000BD4C00000000000000000000000000008424050084240500842405008424
      0500842405000000000000000000000000000000000084E2EFFF5AFFFFFF73FA
      FFFF8AF2FFFFD6D4BFFFFFCEA1FFFED2ABFFFED2AAFFFED1A6FFE3D2B3FF96F0
      FFFF7EF8FFFF64FFFFFF67E0F0FF00000000FEFEFEFFF5F5F8FF7676AEFF2525
      8CFF141480FF14146BFF23235BFF505064FF717182FF39395DFF222272FF1C1C
      9BFF2D2DD0FF5757C1FFE0E0E8FFFDFDFDFF8C3816008C3816008C3816008C38
      16008C3816008C3816008C3816008C3816008C3816008C3816008C3816008C38
      16008C3816008C3816008C3816008C3816000000000000000000000000000000
      0000BD4C0000BD4C0000BD4C0000BD4C000084240500FFC17900E58E4000D36E
      1A00842405000000000000000000000000000000000086DAE6FF2BF5FFFF72C3
      B5FFD99C46FFE7AF5BFFDCBA81FFADD9CEFFACDDD3FFD5C191FFECB360FFE0A2
      4DFF89BBA2FF34F7FFFF68D5E3FF00000000FAFAFCFF8787C7FF2B2BC2FF1313
      BAFF1010ADFF111185FF333345FFBABABDFFD0D0D0FF8A8A94FF202065FF1616
      BCFF1616CFFF2323C4FF6161B4FFE8E8EBFF8C38160000000000A7756800E0E9
      EA00E1754500E1754500E1754500E1754500E1754500E1754500E1754500E175
      4500D7D8CA00A4676900000000008B3512000000000000000000000000000000
      0000BD4C00000000000000000000000000008323040084240500842305008323
      0400842405000000000000000000000000000000000087D9E5FF2AECFFFF34D5
      E7FFD39822FFD39D29FF48DAECFF44F2FFFF47F2FFFF47E3FFFFC7AA52FFE597
      1CFF42CDDCFF20EEFFFF66D3E3FF00000000FAFAFCFF8A8AD5FF2D2DBEFF1010
      9EFF0A0A77FF090951FF31314EFFB7B7BAFFCDCDCEFF868694FF1C1C59FF0E0E
      99FF1010A3FF232391FF6C6C9FFFF1F1F4FF8C3815008C3816008C3816008C38
      16008C3816008C3816008C3816008C3816008C3816008C3816008C3816008C38
      16008C3816008C3816008C3816008C3816000000000000000000000000000000
      0000BD4C00000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000008EDAE5FFA3F4FFFFD9D4
      AEFFFFCB61FFB8C691FF23E3FFFF22DFF5FF30E1F5FF16ECFFFF81B688FFFFA5
      00FFCE9217FF24D1E5FF60D4E7FF00000000FEFEFEFFF7F7FBFF7878A6FF2525
      85FF1111A2FF0F0FA0FF191959FF434354FF616174FF2B2B50FF161688FF1010
      94FF24249FFF6363B4FFF2F2F6FFFEFEFEFF0000000000000000B17E6B00D7B0
      9C00D1AF9E00D1AF9E00CEAA9700CCA99500CCA79300CBA59100CAA59000CAA3
      8B00D4A78C00A467690000000000000000000000000000000000000000000000
      0000BD4C00000000000000000000000000008424050084240500842405008424
      050084240500000000000000000000000000000000008FD9E5FFC4FAFFFFD7EB
      E6FFFFEDB9FFFDEEC9FFACF1FFFF48E1F5FF09D8F4FF00CFFBFFB0AD3BFFFFA7
      00FF47A588FF0AD7F4FF64D2E3FF0000000000000000FEFEFEFFF7F7FAFF7D7D
      CEFF2B2BC5FF1212AFFF0C0C64FF12126DFF111155FF13138CFF1414B5FF2929
      C9FF6868D1FFF2F2F9FFFEFEFEFF000000000000000000000000BB846E00FFFF
      FF00FFE3C100FFE2C000FFE2BF00FFE2BF00FFE2BF00FFE2BF00FFE2BF00FFE2
      BF00FFFCEF00A467690000000000000000000000000000000000000000000000
      0000BD4C0000BD4C0000BD4C0000BD4C000084240500FFC17900E58E4000D36E
      1A0084240500000000000000000000000000000000008ED9E4FFDDFFFFFFE3F5
      F2FFFFF2CFFFFFF4CDFFFAEFDDFFE0F5F8FFA4EDFCFF9DC8AFFFFFCB34FFFFC9
      32FF97CDBAFFACFAFFFF85D7E3FF000000000000000000000000FEFEFEFFF7F7
      FCFF7E7EDBFF2B2BB4FF0D0D6BFF1010A4FF0E0E96FF0F0F84FF2828C0FF6767
      D7FFF2F2FBFFFEFEFEFF00000000000000000000000000000000C58C7000FFFF
      FF00FEBD8200FEBD8200FEBD8200FEBD8200FEBD8200FEBD8200FEBD8200FEBD
      8200FBF6E900A467690000000000000000000000000000000000000000000000
      0000BD4C00000000000000000000000000008323040084240500842305008323
      040084240500000000000000000000000000000000008AD8E3FFFDFFFFFFFFFF
      FFFFF0F5F3FFFAF7E9FFFFFAE2FFFFF7E4FFFFF9E6FFFFFFE8FFFFFCF1FFF6F9
      FBFFFFFFFFFFFFFFFFFF83D5E2FF00000000000000000000000000000000FEFE
      FEFFF7F7FCFF7C7CC2FF262684FF1515B4FF1515B8FF22227CFF6868C4FFF2F2
      F9FFFEFEFEFF0000000000000000000000000000000000000000CB917300FFFF
      FF00FEFFFF00FEFFFF00FEFEFE00FEFBFA00FBFAF700FBF8F600FAF7F300F8F4
      F000FCFAF000A467690000000000000000000000000000000000842405008424
      0500842405008424050084240500000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E5F5F8FF76D1E0FFC9F3
      FAFFFFFFFFFFFFFFF9FFFCFAF5FFFFFBF5FFFFFCF4FFFAFBF8FFFFFEFCFFFFFF
      FFFFDCFBFFFF76D3E1FFCEEDF2FF000000000000000000000000000000000000
      0000FEFEFEFFF7F7FAFF7777B9FF3030C2FF2D2DC2FF6868BCFFF2F2F6FFFEFE
      FEFF000000000000000000000000000000000000000000000000D4987600FFFF
      FF00FEBD8200FEBD8200FEBD8200FEBD8200FEBD8200FEBD8200FEBD8200FEBD
      8200FFFCF400A46769000000000000000000000000000000000084240500FFC1
      7900E58E4000D36E1A0084240500000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000B8E5
      ECFF82D6E4FFF8FFFFFFFFFFFFFFFFFFFEFFFFFEFDFFFFFFFFFFFFFFFFFF8BDC
      E7FF9BDCE6FF0000000000000000000000000000000000000000000000000000
      000000000000FEFEFEFFF7F7FCFF8B8BDCFF7B7BD8FFF2F2F9FFFEFEFEFF0000
      0000000000000000000000000000000000000000000000000000D4987600FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFE00FFFE
      FA00FFFFFF00A467690000000000000000000000000000000000832304008424
      0500842305008323040084240500000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000095DBE5FF95DEE9FFFFFFFFFFFFFFFFFFA6E4EEFF8ED8E3FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FEFEFEFFFAFAFDFFF7F7FCFFFEFEFEFF000000000000
      0000000000000000000000000000000000000000000000000000D4987600CF8E
      6800CF8E6800CF8E6800CF8E6800CF8E6800CF8E6800CF8E6800CF8E6800CF8E
      6800CF8E6800A467690000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000089D6E2FF83D4E1FFFBFDFDFF000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000200000000100010000000000000100000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000F81FC003FFFFFFFFF00FC003F7078001
      E007C003F0078001E003C003F707C003C001C003F7FF80018000C003F7078001
      00000000F007800100004002F707800100000000F7FF80010000C003F7078001
      8001C003F0078001C003C003F7078001E007C003C1FF8001F00FC003C1FFE007
      F81FC003C1FFF81FFC3FC003FFFFFE3F00000000000000000000000000000000
      000000000000}
  end
  inherited Acao: TActionList
    Left = 656
    Top = 72
    object actExcluir2: TAction
      Caption = '&Excluir'
      ImageIndex = 2
      OnExecute = actExcluir2Execute
    end
    object actCancelaParc: TAction
      Caption = '&Cancelar'
      ImageIndex = 2
      OnExecute = actCancelaParcExecute
    end
  end
  inherited cdsPadrao: TClientDataSet
    CommandText = 'SELECT * FROM TituloPag'
    AfterScroll = cdsPadraoAfterScroll
    Left = 656
    Top = 104
    object cdsPadraoidTituloPag: TIntegerField
      FieldName = 'idTituloPag'
      Required = True
    end
    object cdsPadraoidEmpresa: TIntegerField
      FieldName = 'idEmpresa'
      Required = True
    end
    object cdsPadraoidFornecedor: TIntegerField
      FieldName = 'idFornecedor'
      Required = True
    end
    object cdsPadraonrTituloPag: TStringField
      FieldName = 'nrTituloPag'
      Required = True
      FixedChar = True
    end
    object cdsPadraoidDocSerie: TStringField
      FieldName = 'idDocSerie'
      Required = True
      FixedChar = True
      Size = 5
    end
    object cdsPadraotpDocumento: TStringField
      FieldName = 'tpDocumento'
      FixedChar = True
    end
    object cdsPadraodtEmissao: TSQLTimeStampField
      FieldName = 'dtEmissao'
      Required = True
    end
    object cdsPadraoidSafra: TIntegerField
      FieldName = 'idSafra'
      Required = True
    end
    object cdsPadraoidBanco: TIntegerField
      FieldName = 'idBanco'
    end
    object cdsPadraoidIndice: TSmallintField
      FieldName = 'idIndice'
      Required = True
    end
    object cdsPadraoidMovFinanceira: TIntegerField
      FieldName = 'idMovFinanceira'
      Required = True
    end
    object cdsPadraoidResultado: TIntegerField
      FieldName = 'idResultado'
    end
    object cdsPadraoidRateio: TSmallintField
      FieldName = 'idRateio'
    end
    object cdsPadraoidGerencial: TIntegerField
      FieldName = 'idGerencial'
    end
    object cdsPadraoobsTituloPag: TStringField
      FieldName = 'obsTituloPag'
      FixedChar = True
      Size = 500
    end
    object cdsPadraovlTituloPag: TFMTBCDField
      FieldName = 'vlTituloPag'
      Required = True
      Precision = 10
      Size = 2
    end
    object cdsPadraoqtParcelas: TSmallintField
      FieldName = 'qtParcelas'
      Required = True
    end
    object cdsPadraodtVencimentoIni: TSQLTimeStampField
      FieldName = 'dtVencimentoIni'
      Required = True
    end
    object cdsPadraodiasVencimento: TSmallintField
      FieldName = 'diasVencimento'
      Required = True
    end
    object cdsPadraoprMulta: TFMTBCDField
      FieldName = 'prMulta'
      Required = True
      Precision = 5
      Size = 3
    end
    object cdsPadraoprDesconto: TFMTBCDField
      FieldName = 'prDesconto'
      Required = True
      Precision = 5
      Size = 3
    end
    object cdsPadraoprJuros: TFMTBCDField
      FieldName = 'prJuros'
      Required = True
      Precision = 5
      Size = 3
    end
    object cdsPadraoincMes: TStringField
      FieldName = 'incMes'
      Required = True
      FixedChar = True
      Size = 1
    end
    object cdsPadraostTituloPag: TStringField
      FieldName = 'stTituloPag'
      Required = True
      FixedChar = True
      Size = 15
    end
    object cdsPadraoidCadEmpresa: TSmallintField
      FieldName = 'idCadEmpresa'
      Required = True
    end
    object cdsPadraoidPortador: TSmallintField
      FieldName = 'idPortador'
    end
    object cdsPadraoidConta: TSmallintField
      FieldName = 'idConta'
    end
    object cdsPadraoidDocumento: TIntegerField
      FieldName = 'idDocumento'
    end
  end
  inherited dspPadrao: TDataSetProvider
    DataSet = sdsTituloPag
    Left = 624
    Top = 104
  end
  inherited dsPadrao: TDataSource
    Left = 688
    Top = 104
  end
  inherited ImgBotoes: TImageList
    Left = 624
    Top = 72
    Bitmap = {
      494C0101060008009C0020001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
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
    Left = 624
    Top = 40
  end
  inherited dspLookup: TDataSetProvider
    Left = 592
    Top = 40
  end
  inherited sdsLookup: TSQLDataSet
    CommandText = 'SELECT * FROM Resultado'
  end
  inherited cdsEmpresa: TClientDataSet
    Left = 624
    Top = 8
  end
  inherited dsEmpresa: TDataSource
    Left = 656
    Top = 8
  end
  object sdsTituloPag: TSQLDataSet
    GetMetadata = False
    CommandText = 'SELECT * FROM TituloPag'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmPadrao.dbConexao
    Left = 592
    Top = 104
  end
  object FindSerie: TCFind
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
    Left = 656
    Top = 40
  end
  object FindFornecedor: TCFind
    SelectClause.Strings = (
      
        'SELECT  idFornecedor, descCadFornecedor, descAbreviada, idCnpjCp' +
        'f FROM vCadFornecedorContabil')
    JoinClause.Strings = (
      'WHERE StCadGeral = '#39'ATIVO'#39)
    OrderByClause.Strings = (
      'ORDER BY descCadFornecedor')
    FindField = 'descCadFornecedor'
    SQLConnection = dmPadrao.dbConexao
    ValueField = 'idFornecedor'
    CarregaDados = True
    CollumNames.Strings = (
      'C'#243'digo'
      'Raz'#227'o Social'
      'Nome Fantasia'
      'CNPJ/CPF')
    TypeFind = fFindNormal
    Left = 688
    Top = 40
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
    Left = 688
    Top = 72
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
    Left = 592
    Top = 136
  end
  object FindMovFinanceira: TCFind
    SelectClause.Strings = (
      'SELECT  idMovFinanceira, descMovFinanceira FROM MovFinanceira')
    JoinClause.Strings = (
      
        'WHERE StMovFinanceira = '#39'ATIVO'#39' AND idMovOrigem = 2 AND idTpMovF' +
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
    Left = 624
    Top = 136
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
    Left = 656
    Top = 136
  end
  object FindSafra: TCFind
    SelectClause.Strings = (
      'SELECT idSafra, descSafra FROM Safra')
    JoinClause.Strings = (
      'WHERE idEmpresa = [DBEidEmpresa] AND stSafra = '#39'ATIVO'#39)
    OrderByClause.Strings = (
      'ORDER BY descSafra')
    FindField = 'descSafra'
    SQLConnection = dmPadrao.dbConexao
    ValueField = 'idSafra'
    CarregaDados = True
    CollumNames.Strings = (
      'C'#243'digo'
      'Descri'#231#227'o')
    TypeFind = fFindNormal
    Left = 688
    Top = 136
  end
  object sdsTituloPagParc: TSQLDataSet
    SchemaName = 'gesys'
    GetMetadata = False
    CommandText = 'SELECT * FROM TituloPagParc'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmPadrao.dbConexao
    Left = 592
    Top = 168
  end
  object dspTituloPagParc: TDataSetProvider
    DataSet = sdsTituloPagParc
    Options = [poAllowMultiRecordUpdates, poPropogateChanges, poAllowCommandText, poUseQuoteChar]
    BeforeUpdateRecord = dspTituloPagParcBeforeUpdateRecord
    Left = 624
    Top = 168
  end
  object cdsTituloPagParc: TClientDataSet
    Aggregates = <>
    CommandText = 'SELECT * FROM TituloPagParc'
    Params = <>
    ProviderName = 'dspTituloPagParc'
    AfterOpen = cdsPadraoAfterOpen
    AfterInsert = cdsTituloPagParcAfterInsert
    AfterEdit = cdsTituloPagParcAfterInsert
    AfterScroll = cdsTituloPagParcAfterScroll
    OnReconcileError = cdsPadraoReconcileError
    Left = 656
    Top = 168
  end
  object dsTituloPagParc: TDataSource
    DataSet = cdsTituloPagParc
    OnStateChange = dsTituloPagParcStateChange
    Left = 688
    Top = 168
  end
  object sdsTituloPagRat: TSQLDataSet
    SchemaName = 'gesys'
    GetMetadata = False
    CommandText = 'SELECT * FROM TituloPagRateio'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmPadrao.dbConexao
    Left = 592
    Top = 200
  end
  object dspTituloPagRat: TDataSetProvider
    DataSet = sdsTituloPagRat
    Options = [poAllowMultiRecordUpdates, poPropogateChanges, poAllowCommandText, poUseQuoteChar]
    BeforeUpdateRecord = dspTituloPagParcBeforeUpdateRecord
    Left = 624
    Top = 200
  end
  object cdsTituloPagRat: TClientDataSet
    Aggregates = <>
    CommandText = 'SELECT * FROM TituloPagRateio'
    Params = <>
    ProviderName = 'dspTituloPagRat'
    AfterOpen = cdsPadraoAfterOpen
    AfterInsert = cdsTituloPagRatAfterInsert
    OnReconcileError = cdsPadraoReconcileError
    Left = 656
    Top = 200
    object cdsTituloPagRatidTituloPag: TIntegerField
      FieldName = 'idTituloPag'
      Required = True
    end
    object cdsTituloPagRatidParcela: TSmallintField
      FieldName = 'idParcela'
      Required = True
    end
    object cdsTituloPagRatidEmpresa: TIntegerField
      FieldName = 'idEmpresa'
      Required = True
    end
    object cdsTituloPagRatidResultado: TIntegerField
      FieldName = 'idResultado'
      Required = True
    end
    object cdsTituloPagRatidGerencial: TIntegerField
      FieldName = 'idGerencial'
      Required = True
    end
    object cdsTituloPagRatprRateio: TFMTBCDField
      FieldName = 'prRateio'
      Required = True
      Precision = 6
      Size = 3
    end
    object cdsTituloPagRatvlRateio: TFMTBCDField
      FieldName = 'vlRateio'
      Required = True
      Precision = 19
      Size = 4
    end
    object cdsTituloPagRatidCadEmpresa: TSmallintField
      FieldName = 'idCadEmpresa'
      Required = True
    end
    object cdsTituloPagRatdescResultado: TStringField
      FieldKind = fkLookup
      FieldName = 'descResultado'
      LookupDataSet = cdsResultado
      LookupKeyFields = 'idResultado'
      LookupResultField = 'descResultado'
      KeyFields = 'idResultado'
      Lookup = True
    end
  end
  object dsTituloPagRat: TDataSource
    DataSet = cdsTituloPagRat
    OnStateChange = dsTituloPagRatStateChange
    Left = 688
    Top = 200
  end
  object cdsTituloRateio: TClientDataSet
    Aggregates = <>
    Params = <>
    AfterOpen = cdsPadraoAfterOpen
    AfterInsert = cdsTituloPagRatAfterInsert
    OnReconcileError = cdsPadraoReconcileError
    Left = 624
    Top = 232
    object cdsTituloRateioidTituloPag: TIntegerField
      FieldName = 'idTituloPag'
    end
    object cdsTituloRateioidEmpresa: TIntegerField
      FieldName = 'idEmpresa'
    end
    object cdsTituloRateioidResultado: TIntegerField
      FieldName = 'idResultado'
    end
    object cdsTituloRateioidGerencial: TIntegerField
      FieldName = 'idGerencial'
    end
    object cdsTituloRateioprRateio: TFloatField
      FieldName = 'prRateio'
      DisplayFormat = '#,##0.000'
    end
    object cdsTituloRateiovlRateio: TCurrencyField
      FieldName = 'vlRateio'
    end
    object cdsTituloRateiodescResultado: TStringField
      FieldKind = fkLookup
      FieldName = 'descResultado'
      LookupDataSet = cdsResultado
      LookupKeyFields = 'idResultado'
      LookupResultField = 'descResultado'
      KeyFields = 'idResultado'
      Size = 50
      Lookup = True
    end
    object cdsTituloRateioidCadEmpresa: TIntegerField
      FieldName = 'idCadEmpresa'
    end
  end
  object dsTituloRateio: TDataSource
    DataSet = cdsTituloRateio
    OnStateChange = dsTituloRateioStateChange
    Left = 656
    Top = 232
  end
  object cdsResultado: TClientDataSet
    Aggregates = <>
    CommandText = 'SELECT * FROM Resultado'
    Params = <>
    ProviderName = 'dspLookUp'
    Left = 592
    Top = 296
  end
  object sdsTituloPagMov: TSQLDataSet
    SchemaName = 'gesys'
    GetMetadata = False
    CommandText = 'SELECT * FROM TituloPagMov'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmPadrao.dbConexao
    Left = 592
    Top = 264
  end
  object dspTituloPagMov: TDataSetProvider
    DataSet = sdsTituloPagMov
    Options = [poAllowMultiRecordUpdates, poPropogateChanges, poAllowCommandText, poUseQuoteChar]
    BeforeUpdateRecord = dspTituloPagParcBeforeUpdateRecord
    Left = 624
    Top = 264
  end
  object cdsTituloPagMov: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    CommandText = 'SELECT * FROM TituloPagMov'
    Params = <>
    ProviderName = 'dspTituloPagMov'
    AfterOpen = cdsPadraoAfterOpen
    AfterInsert = cdsTituloPagMovAfterInsert
    AfterScroll = cdsTituloPagMovAfterScroll
    OnReconcileError = cdsPadraoReconcileError
    Left = 656
    Top = 264
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
    object cdsTituloPagMovdescMovFinanceira: TStringField
      FieldKind = fkLookup
      FieldName = 'descMovFinanceira'
      LookupDataSet = cdsMovFinanceira
      LookupKeyFields = 'idMovFinanceira'
      LookupResultField = 'descMovFinanceira'
      KeyFields = 'idMovFinanceira'
      Size = 50
      Lookup = True
    end
    object cdsTituloPagMovidCadEmpresa: TSmallintField
      FieldName = 'idCadEmpresa'
      Required = True
    end
    object cdsTituloPagMovvlRealIndice: TFMTBCDField
      FieldName = 'vlRealIndice'
      Precision = 19
      Size = 4
    end
    object cdsTituloPagMovvlSaldoParc: TAggregateField
      FieldName = 'vlSaldoParc'
      Active = True
      DisplayName = ''
      DisplayFormat = '#,##0.00'
      Expression = 'SUM(vlTituloPagMov*fator)'
    end
  end
  object dsTituloPagMov: TDataSource
    DataSet = cdsTituloPagMov
    OnStateChange = dsTituloPagRatStateChange
    Left = 688
    Top = 264
  end
  object cdsMovFinanceira: TClientDataSet
    Aggregates = <>
    CommandText = 'SELECT * FROM MovFinanceira'
    Params = <>
    ProviderName = 'dspLookUp'
    AfterOpen = cdsPadraoAfterOpen
    Left = 632
    Top = 296
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
    Left = 592
    Top = 232
  end
  object FindGerenciaP: TCFind
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
    Left = 688
    Top = 232
  end
  object FindDocumento: TCFind
    SelectClause.Strings = (
      'SELECT  idDocumento, descDocumento FROM Documento')
    JoinClause.Strings = (
      'WHERE StDocumento = '#39'ATIVO'#39)
    OrderByClause.Strings = (
      'ORDER BY descDocumento')
    FindField = 'descDocumento'
    SQLConnection = dmPadrao.dbConexao
    ValueField = 'idDocumento'
    CarregaDados = True
    CollumNames.Strings = (
      'C'#243'digo'
      'Descri'#231#227'o')
    TypeFind = fFindNormal
    Left = 704
    Top = 296
  end
end
