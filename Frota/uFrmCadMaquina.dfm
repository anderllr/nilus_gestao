inherited FrmCadMaquina: TFrmCadMaquina
  Caption = 'Cadastro de M'#225'quinas e Ve'#237'culos'
  ClientHeight = 695
  ClientWidth = 1067
  Icon.Data = {
    0000010001001010000001002000680400001600000028000000100000002000
    0000010020000000000000040000000000000000000000000000000000000000
    000000000000000000000000000000000000E8E8E4FFF8F8F7FF000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000939283FF535446FF70726AFFCDCECAFF0000
    0000000000000000000000000000000000000000000000000000000000000000
    00000000000000000000F5F5F5FF4D4E41FFA8ACAAFFEEF3FAFF838580FFF4F4
    F3FF000000000000000000000000000000000000000000000000000000000000
    0000ACACA0FF878880FFA3A69BFF4E5045FF888B88FFDEE3E9FFB0B4B2FFB5C8
    C5FF0000000000000000F1F1EFFFB9B8ACFFEBEBE8FF0000000000000000CCCD
    C9FF4E5041FF415933FF1A612EFF1BA690FF405844FF8B8F8BFF6C6D62FF3AC4
    BAFF00000000C9C8BEFF464222FF4B4C3CFF5C5E54FFE2E2DFFF00000000BCBD
    B9FF2A4A1EFF09470EFF02862FFF099077FF107C6AFF326954FF2C8473FF248F
    78FF5E5F4EFF605D46FF45442CFF9EA2A0FFBFC3C1FF77796FFF00000000B1E5
    DEFF0C6F3BFF025310FF52A664FF0D8426FF09691EFF09722EFF049F3FFF0C7F
    1DFF1F4F16FF1BA287FF25BBBBFF9FA2A1FFEEF3FBFF818480FFD8D8D5FFD4EE
    E5FF025414FF097520FFBDC0BAFF527746FF019F26FF019F26FF019F26FF01A0
    26FF007317FF08BF7CFF13EAE4FF5E6C64FFDBE0E5FF898B80FFC0C1BCFF8FBE
    9DFF017B1BFF095C14FF087019FF039022FF01A428FF01A729FF01A327FF009A
    24FF00871EFF02A635FF0ED8BCFF2A8F80FF62655DFF505144FFB1BAB1FFC8CD
    C6FF93A990FF648861FF405B3CFF1A4917FF0D5111FF086416FF047F1EFF0497
    24FF059422FF00A126FF05A251FF0B8E80FF2C7463FF345640FF4AB2C7FF0000
    00000000000000000000C0B2C4FFDADCDCFFA4C8AAFF499133FF8AA13AFFBFC6
    46FF50B133FF89C23EFF90C642FF609D3DFF549068FFAFEFEEFF000000000000
    00000000000000000000B8A8BDFFF4F1F4FFF0F9F2FFCAE5A5FFE0E99AFFD8DE
    6FFF89C346FF7AC755FFE0EB9CFFC8DB97FFABE1B8FF00000000000000000000
    00000000000000000000B19FB7FF0000000000000000C1E4C0FFE5F0D8FFE5EF
    CEFFCCE5A5FF51BE5BFFE4F0C2FFCBDDABFFABE1B8FF00000000000000000000
    00000000000000000000DFD8E0FF0000000000000000B5E1BAFFA3D9A7FF78C9
    87FF4CB95DFF0AA02AFF39B04AFF47B552FFADE1BAFF00000000000000000000
    00000000000000000000000000000000000000000000CCEBD3FF5DB770FF46A2
    56FF389244FF539057FF729D75FF93B998FFEFF7F1FF00000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    000000000000000000000000000000000000000000000000000000000000F9FF
    0000F0FF0000E07F000080630000004100000001000000000000000000000000
    000000000000E0010000E0030000EC030000EC030000FC030000FFFF0000}
  ExplicitWidth = 1083
  ExplicitHeight = 734
  PixelsPerInch = 96
  TextHeight = 13
  inherited Bevel1: TBevel
    Top = 660
    Width = 1067
    ExplicitTop = 391
    ExplicitWidth = 497
  end
  inherited PagAbas: TCPageControl
    Width = 1067
    Height = 660
    OnChange = PagAbasChange
    ExplicitWidth = 1067
    ExplicitHeight = 660
    inherited TabAbas: TTabSheet
      Caption = 'Dados Gerais'
      ExplicitWidth = 1059
      ExplicitHeight = 631
      object CGroupBox1: TCGroupBox
        Left = 3
        Top = 3
        Width = 693
        Height = 174
        Caption = 'Dados da M'#225'quina/Ve'#237'culo'
        TabOrder = 0
        object CLabel60: TCLabel
          Left = 43
          Top = 23
          Width = 33
          Height = 13
          Alignment = taRightJustify
          Caption = 'C'#243'digo'
        end
        object CLabel58: TCLabel
          Left = 30
          Top = 48
          Width = 46
          Height = 13
          Alignment = taRightJustify
          Caption = 'Descri'#231#227'o'
        end
        object CLabel2: TCLabel
          Left = 525
          Top = 23
          Width = 31
          Height = 13
          Alignment = taRightJustify
          Caption = 'Status'
        end
        object CLabel1: TCLabel
          Left = 408
          Top = 48
          Width = 74
          Height = 13
          Alignment = taRightJustify
          Caption = 'Ano Fabrica'#231#227'o'
        end
        object CLabel3: TCLabel
          Left = 5
          Top = 73
          Width = 71
          Height = 13
          Alignment = taRightJustify
          Caption = 'Data Aquisi'#231#227'o'
        end
        object CLabel4: TCLabel
          Left = 556
          Top = 48
          Width = 56
          Height = 13
          Alignment = taRightJustify
          Caption = 'Ano Modelo'
        end
        object CLabel62: TCLabel
          Left = 170
          Top = 73
          Width = 71
          Height = 13
          Alignment = taRightJustify
          Caption = 'Valor aquisi'#231#227'o'
        end
        object CLabel61: TCLabel
          Left = 353
          Top = 73
          Width = 57
          Height = 13
          Alignment = taRightJustify
          Caption = 'Valor Venda'
        end
        object CLabel9: TCLabel
          Left = 11
          Top = 148
          Width = 65
          Height = 13
          Alignment = taRightJustify
          Caption = 'Nr.Patrim'#244'nio'
        end
        object CLabel59: TCLabel
          Left = 42
          Top = 98
          Width = 34
          Height = 13
          Alignment = taRightJustify
          Caption = 'Modelo'
        end
        object CLabel8: TCLabel
          Left = 294
          Top = 98
          Width = 115
          Height = 13
          Alignment = taRightJustify
          Caption = 'Tipo da M'#225'quina/Ve'#237'culo'
        end
        object CLabel6: TCLabel
          Left = 47
          Top = 123
          Width = 29
          Height = 13
          Alignment = taRightJustify
          Caption = 'Marca'
        end
        object CLabel5: TCLabel
          Left = 353
          Top = 123
          Width = 24
          Height = 13
          Alignment = taRightJustify
          Caption = 'S'#233'rie'
        end
        object CLabel21: TCLabel
          Left = 522
          Top = 73
          Width = 60
          Height = 13
          Alignment = taRightJustify
          Caption = 'Valor Sucata'
        end
        object DBEidMaquina: TCDBEdit
          Left = 82
          Top = 20
          Width = 62
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'idMaquina'
          DataSource = dsPadrao
          TabOrder = 0
          OnExit = DBEidMaquinaExit
          Find = dmFind.FindMaquina
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEdescMaquina: TCDBEdit
          Left = 82
          Top = 45
          Width = 320
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'descMaquina'
          DataSource = dsPadrao
          TabOrder = 2
          DecimalControl = True
          KeyMode = kmUSUpper
        end
        object DBEstMaquina: TCDBEdit
          Left = 562
          Top = 20
          Width = 118
          Height = 19
          TabStop = False
          BevelKind = bkTile
          BorderStyle = bsNone
          Color = 14149350
          DataField = 'stMaquina'
          DataSource = dsPadrao
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          MaxLength = 10
          ParentFont = False
          ReadOnly = True
          TabOrder = 1
          DecimalControl = True
          KeyMode = kmUSUpper
        end
        object DBEanoFabricacao: TCDBEdit
          Left = 488
          Top = 45
          Width = 62
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'anoFabricacao'
          DataSource = dsPadrao
          TabOrder = 3
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEdtAquisicao: TCDBEdit
          Left = 82
          Top = 70
          Width = 79
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'dtAquisicao'
          DataSource = dsPadrao
          MaxLength = 10
          TabOrder = 5
          DecimalControl = True
          KeyMode = kmDate
        end
        object DBEanoModelo: TCDBEdit
          Left = 618
          Top = 45
          Width = 62
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'anoModelo'
          DataSource = dsPadrao
          TabOrder = 4
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEvlAquisicao: TCDBEdit
          Left = 247
          Top = 70
          Width = 92
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'vlAquisicao'
          DataSource = dsPadrao
          TabOrder = 6
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEvlVenda: TCDBEdit
          Left = 416
          Top = 70
          Width = 92
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'vlVenda'
          DataSource = dsPadrao
          TabOrder = 7
          DecimalControl = True
          KeyMode = kmUSUpper
        end
        object DBEnrPatrimonio: TCDBEdit
          Left = 82
          Top = 145
          Width = 76
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'nrPatrimonio'
          DataSource = dsPadrao
          TabOrder = 16
          DecimalControl = True
          KeyMode = kmUSUpper
        end
        object DBEdescModelo: TCDBEdit
          Left = 82
          Top = 95
          Width = 206
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'descModelo'
          DataSource = dsPadrao
          TabOrder = 9
          DecimalControl = True
          KeyMode = kmUSUpper
        end
        object DBEidTipoMaquina: TCDBEdit
          Left = 415
          Top = 95
          Width = 46
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'idTipoMaquina'
          DataSource = dsPadrao
          TabOrder = 10
          Find = dmFind.FindTipoMaquina
          DecimalControl = True
          KeyMode = kmNormal
        end
        object LookTipoMaquina: TCLookUp
          Left = 467
          Top = 95
          Width = 213
          Height = 19
          Alignment = taLeftJustify
          BevelInner = bvSpace
          BevelOuter = bvLowered
          Color = 14149350
          ParentBackground = False
          TabOrder = 11
          Key.Strings = (
            'idTipoMaquina')
          LookUpKey.Strings = (
            'idTipoMaquina')
          ClientDataSet = cdsLookup
          DataSource = dsPadrao
          ValidaCampoObrigatorio = True
          CampoObrigatorio = True
          LookUpTable = 'TipoMaquina'
          ReturnField = 'descTipoMaquina'
        end
        object LookMaquinaMarca: TCLookUp
          Left = 134
          Top = 120
          Width = 213
          Height = 19
          Alignment = taLeftJustify
          BevelInner = bvSpace
          BevelOuter = bvLowered
          Color = 14149350
          ParentBackground = False
          TabOrder = 13
          Key.Strings = (
            'idMaquinaMarca')
          LookUpKey.Strings = (
            'idMaquinaMarca')
          ClientDataSet = cdsLookup
          DataSource = dsPadrao
          ValidaCampoObrigatorio = True
          CampoObrigatorio = True
          LookUpTable = 'MaquinaMarca'
          ReturnField = 'descMaquinaMarca'
        end
        object DBEidMaquinaMarca: TCDBEdit
          Left = 82
          Top = 120
          Width = 46
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'idMaquinaMarca'
          DataSource = dsPadrao
          TabOrder = 12
          Find = dmFind.FindMaquinaMarca
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEnrSerie: TCDBEdit
          Left = 383
          Top = 120
          Width = 196
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'nrSerie'
          DataSource = dsPadrao
          TabOrder = 14
          DecimalControl = True
          KeyMode = kmUSUpper
        end
        object DBCKveiculo: TCDBCheckBox
          Left = 585
          Top = 122
          Width = 97
          Height = 17
          Caption = #201' Ve'#237'culo?'
          DataField = 'veiculo'
          DataSource = dsPadrao
          TabOrder = 15
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
        object DBEvlSucata: TCDBEdit
          Left = 588
          Top = 70
          Width = 92
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'vlSucata'
          DataSource = dsPadrao
          TabOrder = 8
          DecimalControl = True
          KeyMode = kmNormal
        end
      end
      object CGroupBox2: TCGroupBox
        Left = 3
        Top = 183
        Width = 693
        Height = 78
        Caption = 'Registro da M'#225'quina/Ve'#237'culo'
        TabOrder = 1
        object CLabel15: TCLabel
          Left = 42
          Top = 25
          Width = 34
          Height = 13
          Alignment = taRightJustify
          Caption = 'Placa 1'
        end
        object CLabel7: TCLabel
          Left = 167
          Top = 25
          Width = 34
          Height = 13
          Alignment = taRightJustify
          Caption = 'Placa 2'
        end
        object CLabel10: TCLabel
          Left = 12
          Top = 50
          Width = 64
          Height = 13
          Alignment = taRightJustify
          Caption = 'Nr. do Chassi'
        end
        object CLabel13: TCLabel
          Left = 501
          Top = 25
          Width = 45
          Height = 13
          Alignment = taRightJustify
          Caption = 'Renavam'
        end
        object CLabel16: TCLabel
          Left = 292
          Top = 25
          Width = 85
          Height = 13
          Alignment = taRightJustify
          Caption = 'Nr. do Certificado'
        end
        object DBEdescPlaca1: TCDBEdit
          Left = 82
          Top = 22
          Width = 79
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'descPlaca1'
          DataSource = dsPadrao
          TabOrder = 0
          DecimalControl = True
          KeyMode = kmUSUpper
        end
        object DBEdescPlaca2: TCDBEdit
          Left = 207
          Top = 22
          Width = 79
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'descPlaca2'
          DataSource = dsPadrao
          TabOrder = 1
          DecimalControl = True
          KeyMode = kmUSUpper
        end
        object DBEidChassi: TCDBEdit
          Left = 82
          Top = 47
          Width = 182
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'idChassi'
          DataSource = dsPadrao
          TabOrder = 4
          DecimalControl = True
          KeyMode = kmUSUpper
        end
        object DBEidRenavam: TCDBEdit
          Left = 552
          Top = 22
          Width = 128
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'idRenavam'
          DataSource = dsPadrao
          TabOrder = 3
          DecimalControl = True
          KeyMode = kmUSUpper
        end
        object DBEidCertificado: TCDBEdit
          Left = 383
          Top = 22
          Width = 112
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'idCertificado'
          DataSource = dsPadrao
          TabOrder = 2
          DecimalControl = True
          KeyMode = kmUSUpper
        end
      end
      object CGroupBox3: TCGroupBox
        Left = 3
        Top = 330
        Width = 693
        Height = 71
        Caption = 'Informa'#231#245'es para efeito de Custo'
        TabOrder = 4
        object CLabel11: TCLabel
          Left = 162
          Top = 21
          Width = 64
          Height = 13
          Alignment = taRightJustify
          Caption = 'Kilometragem'
        end
        object CLabel12: TCLabel
          Left = 29
          Top = 21
          Width = 51
          Height = 13
          Alignment = taRightJustify
          Caption = 'Hora Atual'
        end
        object CLabel14: TCLabel
          Left = 323
          Top = 21
          Width = 41
          Height = 13
          Alignment = taRightJustify
          Caption = 'Pot'#234'ncia'
        end
        object CLabel18: TCLabel
          Left = 7
          Top = 46
          Width = 73
          Height = 13
          Alignment = taRightJustify
          Caption = 'Vida '#218'til (Anos)'
        end
        object CLabel17: TCLabel
          Left = 146
          Top = 46
          Width = 77
          Height = 13
          Alignment = taRightJustify
          Caption = 'Vida '#218'til (Horas)'
        end
        object CLabel19: TCLabel
          Left = 300
          Top = 46
          Width = 63
          Height = 13
          Alignment = taRightJustify
          Caption = 'Vida '#218'til (Km)'
        end
        object CLabel20: TCLabel
          Left = 440
          Top = 46
          Width = 153
          Height = 13
          Alignment = taRightJustify
          Caption = 'Uso aproximado por ano (H/Km)'
        end
        object CLabel22: TCLabel
          Left = 521
          Top = 21
          Width = 99
          Height = 13
          Alignment = taRightJustify
          Caption = 'Consumo por (H/Km)'
        end
        object DBEkilometragem: TCDBEdit
          Left = 232
          Top = 18
          Width = 73
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'kilometragem'
          DataSource = dsPadrao
          TabOrder = 1
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEhora: TCDBEdit
          Left = 86
          Top = 18
          Width = 68
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'hora'
          DataSource = dsPadrao
          TabOrder = 0
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEvlPotencia: TCDBEdit
          Left = 370
          Top = 18
          Width = 50
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'vlPotencia'
          DataSource = dsPadrao
          TabOrder = 2
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBCBtpPotencia: TCDBComboBox
          Left = 426
          Top = 18
          Width = 89
          Height = 19
          Style = csDropDownList
          DataField = 'tpPotencia'
          DataSource = dsPadrao
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = []
          Items.Strings = (
            'CV'
            'KW')
          ParentFont = False
          TabOrder = 3
        end
        object DBEqtAnosVida: TCDBEdit
          Left = 86
          Top = 43
          Width = 54
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'qtAnosVida'
          DataSource = dsPadrao
          TabOrder = 5
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEqtHorasVida: TCDBEdit
          Left = 229
          Top = 43
          Width = 65
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'qtHorasVida'
          DataSource = dsPadrao
          TabOrder = 6
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEqtKmVida: TCDBEdit
          Left = 369
          Top = 43
          Width = 65
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'qtKmVida'
          DataSource = dsPadrao
          TabOrder = 7
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEqtTempoUsoAno: TCDBEdit
          Left = 599
          Top = 43
          Width = 81
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'qtTempoUsoAno'
          DataSource = dsPadrao
          TabOrder = 8
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEqtConsumoHoraKM: TCDBEdit
          Left = 626
          Top = 18
          Width = 54
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'qtConsumoHoraKM'
          DataSource = dsPadrao
          TabOrder = 4
          DecimalControl = True
          KeyMode = kmNormal
        end
      end
      object DBRGtpMaquina: TCDBRadioGroup
        Left = 3
        Top = 267
        Width = 128
        Height = 57
        Caption = 'Controle Efetuado por'
        DataField = 'tpMaquina'
        DataSource = dsPadrao
        Items.Strings = (
          'Hora (h)'
          'Kilometragem (km)')
        TabOrder = 2
        Values.Strings = (
          'H'
          'K')
      end
      object CGroupBox4: TCGroupBox
        Left = 137
        Top = 267
        Width = 559
        Height = 57
        Caption = 'Observa'#231#245'es adicionais da M'#225'quina / Ve'#237'culo'
        TabOrder = 3
        object DBMobsMaquina: TCDBMemo
          Left = 7
          Top = 15
          Width = 539
          Height = 37
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'obsMaquina'
          DataSource = dsPadrao
          ScrollBars = ssVertical
          TabOrder = 0
          KeyMemo = kmmUSUpper
        end
      end
    end
    object tabVeiculos: TTabSheet
      Caption = 'Comp. Ve'#237'culos'
      ImageIndex = 6
      object CLabel76: TCLabel
        Left = 24
        Top = 359
        Width = 145
        Height = 13
        Alignment = taRightJustify
        Caption = '* C'#243'digo Interno '#233' obrigat'#243'rio'
      end
      object CGroupBox22: TCGroupBox
        Left = 3
        Top = 3
        Width = 561
        Height = 194
        Caption = 
          'Composi'#231#227'o do Ve'#237'culo (Ex.: Cavalo, Reboque)    * Permitido no m' +
          #225'ximo 4 '
        TabOrder = 0
        object CLabel64: TCLabel
          Left = 153
          Top = 45
          Width = 68
          Height = 13
          Alignment = taRightJustify
          Caption = 'Capac. em M3'
        end
        object CLabel68: TCLabel
          Left = 5
          Top = 20
          Width = 72
          Height = 13
          Alignment = taRightJustify
          Caption = 'C'#243'digo Interno'
        end
        object CLabel69: TCLabel
          Left = 172
          Top = 20
          Width = 25
          Height = 13
          Alignment = taRightJustify
          Caption = 'Placa'
        end
        object CLabel70: TCLabel
          Left = 290
          Top = 20
          Width = 48
          Height = 13
          Alignment = taRightJustify
          Caption = 'RENAVAM'
        end
        object CLabel71: TCLabel
          Left = 445
          Top = 20
          Width = 22
          Height = 13
          Alignment = taRightJustify
          Caption = 'Tara'
        end
        object CLabel72: TCLabel
          Left = 10
          Top = 45
          Width = 67
          Height = 13
          Alignment = taRightJustify
          Caption = 'Capac. em KG'
        end
        object CLabel73: TCLabel
          Left = 12
          Top = 70
          Width = 65
          Height = 13
          Alignment = taRightJustify
          Caption = 'UF Licenciado'
        end
        object CLabel65: TCLabel
          Left = 327
          Top = 70
          Width = 50
          Height = 13
          Alignment = taRightJustify
          Caption = 'Carroceria'
        end
        object CLabel120: TCLabel
          Left = 21
          Top = 140
          Width = 56
          Height = 13
          Alignment = taRightJustify
          Caption = 'Propriet'#225'rio'
        end
        object CLabel66: TCLabel
          Left = 14
          Top = 165
          Width = 63
          Height = 13
          Alignment = taRightJustify
          Caption = 'RNTRC Prop.'
        end
        object CLabel67: TCLabel
          Left = 168
          Top = 165
          Width = 79
          Height = 13
          Alignment = taRightJustify
          Caption = 'Tipo Propriet'#225'rio'
        end
        object CLabel74: TCLabel
          Left = 289
          Top = 45
          Width = 60
          Height = 13
          Alignment = taRightJustify
          Caption = 'Tipo Rodado'
        end
        object CLabel75: TCLabel
          Left = 160
          Top = 15
          Width = 6
          Height = 13
          Alignment = taRightJustify
          Caption = '*'
        end
        object DBEcapM3: TCDBEdit
          Left = 227
          Top = 42
          Width = 56
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'capM3'
          DataSource = dsVeiculos
          TabOrder = 5
          OnEnter = DBEvlJurosAnoEnter
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBRGtpPropriedade: TCDBRadioGroup
          Left = 83
          Top = 92
          Width = 230
          Height = 39
          Caption = 'Tipo de Propriedade'
          Color = 16120570
          Columns = 2
          DataField = 'tpPropriedade'
          DataSource = dsVeiculos
          Items.Strings = (
            'Pr'#243'prio'
            'Terceiro')
          ParentBackground = False
          ParentColor = False
          TabOrder = 12
          Values.Strings = (
            'P'
            'T')
          OnEnter = DBRGtpCustoEnter
          OnExit = DBRGtpPropriedadeExit
        end
        object DBEcodInterno: TCDBEdit
          Left = 83
          Top = 17
          Width = 78
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'codInterno'
          DataSource = dsVeiculos
          TabOrder = 0
          OnEnter = DBEvlJurosAnoEnter
          OnExit = DBEcodInternoExit
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEplaca: TCDBEdit
          Left = 203
          Top = 17
          Width = 78
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'placa'
          DataSource = dsVeiculos
          TabOrder = 1
          OnEnter = DBEvlJurosAnoEnter
          DecimalControl = True
          KeyMode = kmUSUpper
        end
        object DBERenavam: TCDBEdit
          Left = 344
          Top = 17
          Width = 95
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'Renavam'
          DataSource = dsVeiculos
          TabOrder = 2
          OnEnter = DBEvlJurosAnoEnter
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEtara: TCDBEdit
          Left = 473
          Top = 17
          Width = 78
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'tara'
          DataSource = dsVeiculos
          TabOrder = 3
          OnEnter = DBEvlJurosAnoEnter
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEcapKG: TCDBEdit
          Left = 83
          Top = 42
          Width = 64
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'capKG'
          DataSource = dsVeiculos
          TabOrder = 4
          OnEnter = DBEvlJurosAnoEnter
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEUFLicenciamento: TCDBEdit
          Left = 83
          Top = 67
          Width = 44
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'UFLicenciamento'
          DataSource = dsVeiculos
          TabOrder = 8
          Find = dmFind.FindEstado
          DecimalControl = True
          KeyMode = kmUSUpper
        end
        object LookEstado: TCLookUp
          Left = 133
          Top = 67
          Width = 186
          Height = 19
          Alignment = taLeftJustify
          BevelInner = bvSpace
          BevelOuter = bvLowered
          Color = 14149350
          ParentBackground = False
          TabOrder = 9
          Key.Strings = (
            'UFLicenciamento')
          LookUpKey.Strings = (
            'idEstado')
          ClientDataSet = cdsLookup
          DataSource = dsVeiculos
          ValidaCampoObrigatorio = True
          CampoObrigatorio = True
          LookUpTable = 'Estado'
          ReturnField = 'descEstado'
        end
        object DBEtpCarroceria: TCDBEdit
          Left = 383
          Top = 67
          Width = 44
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'tpCarroceria'
          DataSource = dsVeiculos
          TabOrder = 10
          Find = dmFind.FindTpCarroceria
          DecimalControl = True
          KeyMode = kmUSUpper
        end
        object lookCarroceria: TCLookUp
          Left = 433
          Top = 67
          Width = 118
          Height = 19
          Alignment = taLeftJustify
          BevelInner = bvSpace
          BevelOuter = bvLowered
          Color = 14149350
          ParentBackground = False
          TabOrder = 11
          Key.Strings = (
            'tpCarroceria')
          LookUpKey.Strings = (
            'tpCar')
          ClientDataSet = cdsLookup
          DataSource = dsVeiculos
          ValidaCampoObrigatorio = True
          CampoObrigatorio = True
          LookUpTable = 'TrpTipoCarroceria'
          ReturnField = 'descTipoCarroceria'
        end
        object DBRGtpVeiculo: TCDBRadioGroup
          Left = 319
          Top = 92
          Width = 232
          Height = 39
          Caption = 'Tipo do Ve'#237'culo'
          Color = 16120570
          Columns = 2
          DataField = 'tpVeiculo'
          DataSource = dsVeiculos
          Items.Strings = (
            'Tra'#231#227'o'
            'Reboque')
          ParentBackground = False
          ParentColor = False
          TabOrder = 13
          Values.Strings = (
            '0'
            '1')
          OnEnter = DBRGtpCustoEnter
          OnExit = DBRGtpCustoExit
        end
        object CLookUp22: TCLookUp
          Left = 153
          Top = 137
          Width = 248
          Height = 19
          Alignment = taLeftJustify
          BevelInner = bvSpace
          BevelOuter = bvLowered
          Color = 14149350
          ParentBackground = False
          TabOrder = 15
          Key.Strings = (
            'idProprietario')
          LookUpKey.Strings = (
            'idCliente')
          ClientDataSet = cdsLookup
          DataSource = dsVeiculos
          ValidaCampoObrigatorio = True
          CampoObrigatorio = True
          LookUpTable = 'vCadClienteContabil'
          ReturnField = 'descCadCliente'
        end
        object CLookUp23: TCLookUp
          Left = 407
          Top = 137
          Width = 144
          Height = 19
          Alignment = taLeftJustify
          BevelInner = bvSpace
          BevelOuter = bvLowered
          Color = 14149350
          ParentBackground = False
          TabOrder = 16
          Key.Strings = (
            'idProprietario')
          LookUpKey.Strings = (
            'idCliente')
          ClientDataSet = cdsLookup
          DataSource = dsVeiculos
          ValidaCampoObrigatorio = True
          CampoObrigatorio = True
          LookUpTable = 'vCadClienteContabil'
          ReturnField = 'descAbreviada'
        end
        object DBEidProprietario: TCDBEdit
          Left = 83
          Top = 137
          Width = 64
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'idProprietario'
          DataSource = dsVeiculos
          TabOrder = 14
          Find = dmFind.FindFornecedor
          AcaoCad = frmPrincipal.actCadCliente
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBERNTRCProp: TCDBEdit
          Left = 83
          Top = 162
          Width = 78
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'RNTRCProp'
          DataSource = dsVeiculos
          TabOrder = 17
          OnEnter = DBEvlJurosAnoEnter
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEtpProprietario: TCDBEdit
          Left = 253
          Top = 162
          Width = 44
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'tpProprietario'
          DataSource = dsVeiculos
          TabOrder = 18
          Find = dmFind.FindTpProprietario
          DecimalControl = True
          KeyMode = kmUSUpper
        end
        object LookTipoProprietario: TCLookUp
          Left = 303
          Top = 162
          Width = 186
          Height = 19
          Alignment = taLeftJustify
          BevelInner = bvSpace
          BevelOuter = bvLowered
          Color = 14149350
          ParentBackground = False
          TabOrder = 19
          Key.Strings = (
            'tpProprietario')
          LookUpKey.Strings = (
            'tpProp')
          ClientDataSet = cdsLookup
          DataSource = dsVeiculos
          ValidaCampoObrigatorio = True
          CampoObrigatorio = True
          LookUpTable = 'TrpTipoProprietario'
          ReturnField = 'descTipoProprietario'
        end
        object DBEtpRodado: TCDBEdit
          Left = 355
          Top = 42
          Width = 44
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'tpRodado'
          DataSource = dsVeiculos
          TabOrder = 6
          Find = dmFind.FindTpRodado
          DecimalControl = True
          KeyMode = kmUSUpper
        end
        object LookTipoRodado: TCLookUp
          Left = 405
          Top = 42
          Width = 146
          Height = 19
          Alignment = taLeftJustify
          BevelInner = bvSpace
          BevelOuter = bvLowered
          Color = 14149350
          ParentBackground = False
          TabOrder = 7
          Key.Strings = (
            'tpRodado')
          LookUpKey.Strings = (
            'tpRod')
          ClientDataSet = cdsLookup
          DataSource = dsVeiculos
          ValidaCampoObrigatorio = True
          CampoObrigatorio = True
          LookUpTable = 'TrpTipoRodado'
          ReturnField = 'descTipoRodado'
        end
      end
      object CGroupBox23: TCGroupBox
        Left = 3
        Top = 203
        Width = 659
        Height = 150
        TabOrder = 1
        object CDBGrid5: TCDBGrid
          Left = 7
          Top = 14
          Width = 625
          Height = 123
          TabStop = False
          DataSource = dsVeiculos
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
              FieldName = 'codInterno'
              Title.Caption = 'C'#243'd.Interno'
              Width = 65
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'placa'
              Title.Caption = 'Placa'
              Width = 70
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Renavam'
              Width = 90
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'tara'
              Title.Caption = 'Tara'
              Width = 60
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'capKG'
              Title.Caption = 'Capac.KG'
              Width = 60
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'capM3'
              Title.Caption = 'Capac.M3'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'tpPropriedade'
              Title.Caption = 'Tp.Prop.'
              Width = 50
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'tpVeiculo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'tpRodado'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'tpCarroceria'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'UFLicenciamento'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'idProprietario'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'RNTRCProp'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'tpProprietario'
              Visible = True
            end>
        end
      end
      object CGroupBox24: TCGroupBox
        Left = 570
        Top = 3
        Width = 92
        Height = 194
        TabOrder = 2
        object BtnAdicionarVeic: TCBitBtn
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
          OnClick = BtnAdicionarVeicClick
        end
        object BtnCancelarVeic: TCBitBtn
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
          OnClick = BtnAdicionarVeicClick
        end
        object BtnRetirarVeic: TCBitBtn
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
          OnClick = BtnAdicionarVeicClick
        end
        object BtnNovoVeic: TCBitBtn
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
          OnClick = BtnAdicionarVeicClick
        end
      end
    end
    object TabFixos: TTabSheet
      Caption = '&Custos Fixos'
      ImageIndex = 1
      object CGroupBox5: TCGroupBox
        Left = 3
        Top = 3
        Width = 693
        Height = 97
        Caption = 'Custos Fixos'
        TabOrder = 0
        object CLabel23: TCLabel
          Left = 8
          Top = 21
          Width = 109
          Height = 13
          Alignment = taRightJustify
          Caption = 'Valor de Juros por Ano'
        end
        object CLabel24: TCLabel
          Left = 204
          Top = 21
          Width = 73
          Height = 13
          Alignment = taRightJustify
          Caption = 'Juros por H/Km'
        end
        object CLabel25: TCLabel
          Left = 551
          Top = 21
          Width = 69
          Height = 13
          Alignment = taRightJustify
          Caption = 'Seg. por H/Km'
        end
        object CLabel26: TCLabel
          Left = 343
          Top = 21
          Width = 117
          Height = 13
          Alignment = taRightJustify
          Caption = 'Valor de Seguro por Ano'
        end
        object CLabel27: TCLabel
          Left = 551
          Top = 46
          Width = 69
          Height = 13
          Alignment = taRightJustify
          Caption = 'Imp. por H/Km'
        end
        object CLabel28: TCLabel
          Left = 375
          Top = 46
          Width = 85
          Height = 13
          Alignment = taRightJustify
          Caption = 'Impostos por Ano'
        end
        object CLabel29: TCLabel
          Left = 208
          Top = 46
          Width = 69
          Height = 13
          Alignment = taRightJustify
          Caption = 'Aloj. por H/Km'
        end
        object CLabel30: TCLabel
          Left = 22
          Top = 46
          Width = 95
          Height = 13
          Alignment = taRightJustify
          Caption = 'Alojamento por Ano'
        end
        object CLabel31: TCLabel
          Left = 208
          Top = 71
          Width = 69
          Height = 13
          Alignment = taRightJustify
          Caption = 'Out. por H/Km'
        end
        object CLabel32: TCLabel
          Left = 12
          Top = 71
          Width = 105
          Height = 13
          Alignment = taRightJustify
          Caption = 'Outras Desp. por Ano'
        end
        object DBEvlJurosAno: TCDBEdit
          Left = 123
          Top = 18
          Width = 75
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'vlJurosAno'
          DataSource = dsCustoFixo
          TabOrder = 0
          OnEnter = DBEvlJurosAnoEnter
          OnExit = DBEvlJurosAnoExit
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEvlJurosHoraKM: TCDBEdit
          Left = 283
          Top = 18
          Width = 54
          Height = 19
          TabStop = False
          BevelKind = bkTile
          BorderStyle = bsNone
          Color = 15201011
          DataField = 'vlJurosHoraKM'
          DataSource = dsCustoFixo
          ReadOnly = True
          TabOrder = 1
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEvlSeguroHoraKM: TCDBEdit
          Left = 626
          Top = 18
          Width = 54
          Height = 19
          TabStop = False
          BevelKind = bkTile
          BorderStyle = bsNone
          Color = 15201011
          DataField = 'vlSeguroHoraKM'
          DataSource = dsCustoFixo
          ReadOnly = True
          TabOrder = 3
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEvlSeguroAno: TCDBEdit
          Left = 466
          Top = 18
          Width = 75
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'vlSeguroAno'
          DataSource = dsCustoFixo
          TabOrder = 2
          OnEnter = DBEvlJurosAnoEnter
          OnExit = DBEvlJurosAnoExit
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEvlImpostosHoraKM: TCDBEdit
          Left = 626
          Top = 43
          Width = 54
          Height = 19
          TabStop = False
          BevelKind = bkTile
          BorderStyle = bsNone
          Color = 15201011
          DataField = 'vlImpostosHoraKM'
          DataSource = dsCustoFixo
          ReadOnly = True
          TabOrder = 7
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEvlImpostosAno: TCDBEdit
          Left = 466
          Top = 43
          Width = 75
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'vlImpostosAno'
          DataSource = dsCustoFixo
          TabOrder = 6
          OnEnter = DBEvlJurosAnoEnter
          OnExit = DBEvlJurosAnoExit
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEvlAlojamentoHoraKM: TCDBEdit
          Left = 283
          Top = 43
          Width = 54
          Height = 19
          TabStop = False
          BevelKind = bkTile
          BorderStyle = bsNone
          Color = 15201011
          DataField = 'vlAlojamentoHoraKM'
          DataSource = dsCustoFixo
          ReadOnly = True
          TabOrder = 5
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEvlAlojamentoAno: TCDBEdit
          Left = 123
          Top = 43
          Width = 75
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'vlAlojamentoAno'
          DataSource = dsCustoFixo
          TabOrder = 4
          OnEnter = DBEvlJurosAnoEnter
          OnExit = DBEvlJurosAnoExit
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEvlOutrasAno: TCDBEdit
          Left = 123
          Top = 68
          Width = 75
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'vlOutrasAno'
          DataSource = dsCustoFixo
          TabOrder = 8
          OnEnter = DBEvlJurosAnoEnter
          OnExit = DBEvlJurosAnoExit
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEvlOutrasHoraKM: TCDBEdit
          Left = 283
          Top = 68
          Width = 54
          Height = 19
          TabStop = False
          BevelKind = bkTile
          BorderStyle = bsNone
          Color = 15201011
          DataField = 'vlOutrasHoraKM'
          DataSource = dsCustoFixo
          ReadOnly = True
          TabOrder = 9
          DecimalControl = True
          KeyMode = kmNormal
        end
      end
      object CGroupBox6: TCGroupBox
        Left = 3
        Top = 106
        Width = 693
        Height = 244
        Caption = 'Custos Fixos / C'#225'lculo de Deprecia'#231#227'o'
        TabOrder = 1
        object CLabel33: TCLabel
          Left = 12
          Top = 22
          Width = 82
          Height = 13
          Alignment = taRightJustify
          Caption = 'Tipo Deprecia'#231#227'o'
        end
        object CLabel34: TCLabel
          Left = 480
          Top = 22
          Width = 33
          Height = 13
          Alignment = taRightJustify
          Caption = '% Ano'
        end
        object CLabel35: TCLabel
          Left = 579
          Top = 22
          Width = 41
          Height = 13
          Alignment = taRightJustify
          Caption = 'R$ H/Km'
        end
        object CLabel36: TCLabel
          Left = 152
          Top = 44
          Width = 180
          Height = 13
          Alignment = taRightJustify
          Caption = 'Tabela de Cotas de Deprecia'#231#227'o'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object LookTipoDepreciacao: TCLookUp
          Left = 152
          Top = 19
          Width = 322
          Height = 19
          Alignment = taLeftJustify
          BevelInner = bvSpace
          BevelOuter = bvLowered
          Color = 14149350
          ParentBackground = False
          TabOrder = 1
          Key.Strings = (
            'idTipoDepreciacao')
          LookUpKey.Strings = (
            'idTipoDepreciacao')
          ClientDataSet = cdsLookup
          DataSource = dsCustoFixo
          ValidaCampoObrigatorio = True
          CampoObrigatorio = True
          LookUpTable = 'TipoDepreciacao'
          ReturnField = 'descTipoDepreciacao'
        end
        object DBEidTipoDepreciacao: TCDBEdit
          Left = 100
          Top = 19
          Width = 46
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'idTipoDepreciacao'
          DataSource = dsCustoFixo
          TabOrder = 0
          OnEnter = DBEvlJurosAnoEnter
          OnExit = DBEidTipoDepreciacaoExit
          Find = dmFind.FindTipoDepreciacao
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEprDepreciacaoAno: TCDBEdit
          Left = 519
          Top = 19
          Width = 54
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'prDepreciacaoAno'
          DataSource = dsCustoFixo
          TabOrder = 2
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEvlDepreciacaoHoraKM: TCDBEdit
          Left = 626
          Top = 19
          Width = 54
          Height = 19
          TabStop = False
          BevelKind = bkTile
          BorderStyle = bsNone
          Color = 15201011
          DataField = 'vlDepreciacaoHoraKM'
          DataSource = dsCustoFixo
          ReadOnly = True
          TabOrder = 3
          DecimalControl = True
          KeyMode = kmNormal
        end
        object GridDepreciacao: TCDBGrid
          Left = 152
          Top = 59
          Width = 361
          Height = 176
          TabStop = False
          DataSource = dsDepreciacao
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection]
          TabOrder = 5
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          UtilizaOrdenar = False
          Columns = <
            item
              Expanded = False
              FieldName = 'ano'
              Title.Caption = 'Ano'
              Width = 50
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'vlDepreciacao'
              Title.Caption = 'Valor Deprecia'#231#227'o'
              Width = 90
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'prDepreciacao'
              Title.Caption = '% Deprecia'#231#227'o'
              Width = 80
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'vlMaquina'
              Title.Caption = 'Valor da M'#225'q/Ve'#237'culo'
              Width = 105
              Visible = True
            end>
        end
        object BtnCalcDepreciacao: TCBitBtn
          Left = 53
          Top = 59
          Width = 93
          Height = 25
          Caption = '&Gerar Cotas'
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
          Margin = 5
          NumGlyphs = 2
          TabOrder = 4
          OnClick = BtnCalcDepreciacaoClick
        end
      end
      object CGroupBox7: TCGroupBox
        Left = 3
        Top = 356
        Width = 693
        Height = 50
        Caption = 'Custos Fixos'
        TabOrder = 2
        object CLabel37: TCLabel
          Left = 21
          Top = 21
          Width = 171
          Height = 13
          Alignment = taRightJustify
          Caption = 'Valor Total de Custos Fixos por Ano'
        end
        object CLabel38: TCLabel
          Left = 316
          Top = 21
          Width = 177
          Height = 13
          Alignment = taRightJustify
          Caption = 'Valor Total de Custos Fixos por H/Km'
        end
        object DBEvlTotalCusto: TCDBEdit
          Left = 198
          Top = 18
          Width = 86
          Height = 19
          TabStop = False
          BevelKind = bkTile
          BorderStyle = bsNone
          Color = 15201011
          DataField = 'vlTotalCusto'
          DataSource = dsCustoFixo
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 0
          OnEnter = DBEvlJurosAnoEnter
          OnExit = DBEvlJurosAnoExit
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEvlTotalCustoHoraKM: TCDBEdit
          Left = 499
          Top = 18
          Width = 74
          Height = 19
          TabStop = False
          BevelKind = bkTile
          BorderStyle = bsNone
          Color = 15201011
          DataField = 'vlTotalCustoHoraKM'
          DataSource = dsCustoFixo
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
    end
    object TabVariaveis: TTabSheet
      Caption = 'Custos Vari'#225'veis'
      ImageIndex = 2
      object CGroupBox8: TCGroupBox
        Left = 3
        Top = 3
        Width = 659
        Height = 49
        Caption = 'Custos Vari'#225'veis'
        TabOrder = 0
        object CLabel39: TCLabel
          Left = 16
          Top = 21
          Width = 133
          Height = 13
          Alignment = taRightJustify
          Caption = 'Valor de Operador por Hora'
        end
        object CLabel42: TCLabel
          Left = 279
          Top = 21
          Width = 186
          Height = 13
          Alignment = taRightJustify
          Caption = 'Valor de Outras despesas por Hora/KM'
        end
        object DBEvlOperadorHoraKM: TCDBEdit
          Left = 155
          Top = 18
          Width = 62
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'vlOperadorHoraKM'
          DataSource = dsCustoVariavel
          TabOrder = 0
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEvlOutrasHoraKMV: TCDBEdit
          Left = 471
          Top = 18
          Width = 62
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'vlOutrasHoraKM'
          DataSource = dsCustoVariavel
          TabOrder = 1
          DecimalControl = True
          KeyMode = kmNormal
        end
      end
      object CGroupBox9: TCGroupBox
        Left = 3
        Top = 58
        Width = 561
        Height = 136
        Caption = 'Lan'#231'amento dos itens consumidos no uso da m'#225'quina'
        TabOrder = 1
        object CLabel40: TCLabel
          Left = 14
          Top = 92
          Width = 75
          Height = 13
          Alignment = taRightJustify
          Caption = 'Qtde. por H/KM'
        end
        object CLabel41: TCLabel
          Left = 51
          Top = 22
          Width = 38
          Height = 13
          Alignment = taRightJustify
          Caption = 'Produto'
        end
        object CLabel45: TCLabel
          Left = 188
          Top = 93
          Width = 80
          Height = 13
          Alignment = taRightJustify
          Caption = 'Valor do Produto'
        end
        object CLabel46: TCLabel
          Left = 380
          Top = 92
          Width = 87
          Height = 13
          Alignment = taRightJustify
          Caption = 'Valor por Hora/KM'
        end
        object DBEqtProdutoHoraKM: TCDBEdit
          Left = 95
          Top = 89
          Width = 78
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'qtProdutoHoraKM'
          DataSource = dsMaquinaProduto
          TabOrder = 5
          OnEnter = DBEvlJurosAnoEnter
          OnExit = DBEqtProdutoHoraKMExit
          DecimalControl = True
          KeyMode = kmNormal
        end
        object LookProduto: TCLookUp
          Left = 154
          Top = 19
          Width = 262
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
          DataSource = dsMaquinaProduto
          ValidaCampoObrigatorio = False
          CampoObrigatorio = True
          LookUpTable = 'Produto'
          ReturnField = 'descProduto'
        end
        object DBEidProduto: TCDBEdit
          Left = 95
          Top = 19
          Width = 53
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'idProduto'
          DataSource = dsMaquinaProduto
          TabOrder = 0
          OnExit = DBEidProdutoExit
          Find = dmFind.FindProduto
          AcaoCad = frmPrincipal.actCadProduto
          DecimalControl = True
          KeyMode = kmNormal
        end
        object LookProdMedida: TCLookUp
          Left = 422
          Top = 19
          Width = 45
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
          DataSource = dsMaquinaProduto
          ValidaCampoObrigatorio = False
          CampoObrigatorio = True
          LookUpTable = 'Produto'
          ReturnField = 'descAbreviada'
        end
        object DBEvlProduto: TCDBEdit
          Left = 274
          Top = 89
          Width = 78
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'vlProduto'
          DataSource = dsMaquinaProduto
          TabOrder = 6
          OnEnter = DBEvlJurosAnoEnter
          OnExit = DBEqtProdutoHoraKMExit
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEvlProdutoHoraKM: TCDBEdit
          Left = 473
          Top = 89
          Width = 78
          Height = 19
          TabStop = False
          BevelKind = bkTile
          BorderStyle = bsNone
          Color = 14149350
          DataField = 'vlProdutoHoraKM'
          DataSource = dsMaquinaProduto
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
        object CBitBtn8: TCBitBtn
          Left = 473
          Top = 19
          Width = 78
          Height = 19
          Action = frmPrincipal.actCadProduto
          Caption = '&Produtos'
          TabOrder = 3
          TabStop = False
        end
        object DBRGtpCusto: TCDBRadioGroup
          Left = 95
          Top = 44
          Width = 456
          Height = 39
          Caption = 'Tipo do Valor informado'
          Color = 16120570
          Columns = 3
          DataField = 'tpCusto'
          DataSource = dsMaquinaProduto
          Items.Strings = (
            'Valor Fixado'
            'Custo M'#233'dio'
            #218'ltimo Valor de Compra')
          ParentBackground = False
          ParentColor = False
          TabOrder = 4
          Values.Strings = (
            'F'
            'M'
            'U')
          OnEnter = DBRGtpCustoEnter
          OnExit = DBRGtpCustoExit
        end
        object DBCKmovimentaEstoque: TCDBCheckBox
          Left = 95
          Top = 112
          Width = 130
          Height = 17
          Caption = 'Movimenta Estoque?'
          DataField = 'movimentaEstoque'
          DataSource = dsMaquinaProduto
          TabOrder = 8
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
      end
      object CGroupBox10: TCGroupBox
        Left = 570
        Top = 58
        Width = 92
        Height = 136
        TabOrder = 2
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
        Left = 3
        Top = 200
        Width = 659
        Height = 150
        TabOrder = 3
        object CDBGrid1: TCDBGrid
          Left = 7
          Top = 14
          Width = 625
          Height = 123
          TabStop = False
          DataSource = dsMaquinaProduto
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
              Title.Caption = 'Produto'
              Width = 50
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'descProduto'
              Title.Caption = 'Descri'#231#227'o'
              Width = 260
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'qtProdutoHoraKM'
              Title.Caption = 'Qtde.'
              Width = 60
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'vlProduto'
              Title.Caption = 'Valor'
              Width = 80
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'vlProdutoHoraKM'
              Title.Caption = 'Valor por H/KM'
              Width = 80
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'movimentaEstoque'
              Title.Caption = 'Estoque?'
              Width = 50
              Visible = True
            end>
        end
      end
      object CGroupBox12: TCGroupBox
        Left = 3
        Top = 356
        Width = 659
        Height = 50
        Caption = 'Custos Fixos'
        TabOrder = 4
        object CLabel43: TCLabel
          Left = 24
          Top = 21
          Width = 168
          Height = 13
          Alignment = taRightJustify
          Caption = 'Total de Custos Vari'#225'veis por H/Km'
        end
        object CLabel44: TCLabel
          Left = 334
          Top = 21
          Width = 159
          Height = 13
          Alignment = taRightJustify
          Caption = 'Valor Total de Produtos por H/Km'
        end
        object DBEvlTotalCustoHoraKMV: TCDBEdit
          Left = 198
          Top = 18
          Width = 86
          Height = 19
          TabStop = False
          BevelKind = bkTile
          BorderStyle = bsNone
          Color = 15201011
          DataField = 'vlTotalCustoHoraKM'
          DataSource = dsCustoVariavel
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 0
          OnEnter = DBEvlJurosAnoEnter
          OnExit = DBEvlJurosAnoExit
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEvlTotalProdutoHoraKM: TCDBEdit
          Left = 499
          Top = 18
          Width = 74
          Height = 19
          TabStop = False
          BevelKind = bkTile
          BorderStyle = bsNone
          Color = 15201011
          DataField = 'vlTotalProdutoHoraKM'
          DataSource = dsMaquinaProduto
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
    end
    object TabPneu: TTabSheet
      Caption = 'Pneus'
      ImageIndex = 3
      object CGroupBox15: TCGroupBox
        Left = 604
        Top = 9
        Width = 92
        Height = 341
        TabOrder = 1
        object BtnAdicionarPneu: TCBitBtn
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
          OnClick = BtnAdicionarPneuClick
        end
        object BtnCancelarPneu: TCBitBtn
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
          OnClick = BtnAdicionarPneuClick
        end
        object BtnRetirarPneu: TCBitBtn
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
          OnClick = BtnAdicionarPneuClick
        end
        object BtnNovoPneu: TCBitBtn
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
          OnClick = BtnAdicionarPneuClick
        end
      end
      object CGroupBox13: TCGroupBox
        Left = 3
        Top = 9
        Width = 595
        Height = 75
        Caption = 'Configura'#231#227'o dos Pneus'
        TabOrder = 0
        object CLabel47: TCLabel
          Left = 325
          Top = 24
          Width = 24
          Height = 13
          Alignment = taRightJustify
          Caption = 'Qtde'
        end
        object CLabel48: TCLabel
          Left = 32
          Top = 49
          Width = 38
          Height = 13
          Alignment = taRightJustify
          Caption = 'Produto'
        end
        object CLabel51: TCLabel
          Left = 8
          Top = 24
          Width = 62
          Height = 13
          Alignment = taRightJustify
          Caption = 'Tipo do Pneu'
        end
        object CLabel57: TCLabel
          Left = 394
          Top = 24
          Width = 113
          Height = 13
          Alignment = taRightJustify
          Caption = 'Tempo de Uso em H/KM'
        end
        object DBEqtPneu: TCDBEdit
          Left = 355
          Top = 21
          Width = 33
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'qtPneu'
          DataSource = dsPneu
          TabOrder = 2
          DecimalControl = True
          KeyMode = kmNormal
        end
        object CLookUp1: TCLookUp
          Left = 135
          Top = 46
          Width = 262
          Height = 19
          Alignment = taLeftJustify
          BevelInner = bvSpace
          BevelOuter = bvLowered
          Color = 14149350
          ParentBackground = False
          TabOrder = 5
          Key.Strings = (
            'idProduto')
          LookUpKey.Strings = (
            'idProduto')
          ClientDataSet = cdsLookup
          DataSource = dsPneu
          ValidaCampoObrigatorio = False
          CampoObrigatorio = True
          LookUpTable = 'Produto'
          ReturnField = 'descProduto'
        end
        object DBEidProdutoPneu: TCDBEdit
          Left = 76
          Top = 46
          Width = 53
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'idProduto'
          DataSource = dsPneu
          TabOrder = 4
          Find = dmFind.FindProduto
          AcaoCad = frmPrincipal.actCadProduto
          DecimalControl = True
          KeyMode = kmNormal
        end
        object CLookUp2: TCLookUp
          Left = 403
          Top = 46
          Width = 45
          Height = 19
          Alignment = taLeftJustify
          BevelInner = bvSpace
          BevelOuter = bvLowered
          Color = 14149350
          ParentBackground = False
          TabOrder = 6
          Key.Strings = (
            'idProduto')
          LookUpKey.Strings = (
            'idProduto')
          AlternateSQL.Strings = (
            
              'SELECT ProdMedida.descAbreviada FROM Produto, ProdMedida WHERE P' +
              'roduto.idProdMedida = ProdMedida.idProdMedida AND Produto.idProd' +
              'uto = ?')
          ClientDataSet = cdsLookup
          DataSource = dsPneu
          ValidaCampoObrigatorio = False
          CampoObrigatorio = True
          LookUpTable = 'Produto'
          ReturnField = 'descAbreviada'
        end
        object CBitBtn1: TCBitBtn
          Left = 454
          Top = 46
          Width = 78
          Height = 19
          Action = frmPrincipal.actCadProduto
          Caption = '&Produtos'
          TabOrder = 7
          TabStop = False
        end
        object DBEidTipoPneu: TCDBEdit
          Left = 76
          Top = 21
          Width = 46
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'idTipoPneu'
          DataSource = dsPneu
          TabOrder = 0
          OnExit = DBEidTipoPneuExit
          Find = dmFind.FindTipoPneu
          DecimalControl = True
          KeyMode = kmNormal
        end
        object CLookUp3: TCLookUp
          Left = 128
          Top = 21
          Width = 191
          Height = 19
          Alignment = taLeftJustify
          BevelInner = bvSpace
          BevelOuter = bvLowered
          Color = 14149350
          ParentBackground = False
          TabOrder = 1
          Key.Strings = (
            'idTipoPneu')
          LookUpKey.Strings = (
            'idTipoPneu')
          ClientDataSet = cdsLookup
          DataSource = dsPneu
          ValidaCampoObrigatorio = True
          CampoObrigatorio = True
          LookUpTable = 'TipoPneu'
          ReturnField = 'descTipoPneu'
        end
        object DBEqtTempoUsoHoraKm: TCDBEdit
          Left = 513
          Top = 21
          Width = 72
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'qtTempoUsoHoraKm'
          DataSource = dsPneu
          TabOrder = 3
          DecimalControl = True
          KeyMode = kmNormal
        end
      end
      object CGroupBox14: TCGroupBox
        Left = 3
        Top = 90
        Width = 595
        Height = 260
        TabOrder = 2
        object CDBGrid2: TCDBGrid
          Left = 7
          Top = 14
          Width = 578
          Height = 228
          TabStop = False
          DataSource = dsPneu
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
              FieldName = 'idTipoPneu'
              Title.Caption = 'C'#243'd.'
              Width = 40
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'descTipoPneu'
              Title.Caption = 'Tipo do Pneu'
              Width = 180
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'qtPneu'
              Title.Caption = 'Qtde'
              Width = 40
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'qtTempoUsoHoraKm'
              Title.Caption = 'Tempo de Uso'
              Width = 75
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'descProduto'
              Title.Caption = 'Produto'
              Width = 200
              Visible = True
            end>
        end
      end
    end
    object TabOleo: TTabSheet
      Caption = 'Lubrificantes'
      ImageIndex = 4
      object CGroupBox16: TCGroupBox
        Left = 3
        Top = 9
        Width = 595
        Height = 75
        Caption = 'Configura'#231#227'o dos Lubrificantes'
        TabOrder = 0
        object CLabel49: TCLabel
          Left = 325
          Top = 24
          Width = 24
          Height = 13
          Alignment = taRightJustify
          Caption = 'Qtde'
        end
        object CLabel50: TCLabel
          Left = 32
          Top = 49
          Width = 38
          Height = 13
          Alignment = taRightJustify
          Caption = 'Produto'
        end
        object CLabel52: TCLabel
          Left = 10
          Top = 24
          Width = 60
          Height = 13
          Alignment = taRightJustify
          Caption = 'Tipo do '#211'leo'
        end
        object CLabel53: TCLabel
          Left = 394
          Top = 24
          Width = 113
          Height = 13
          Alignment = taRightJustify
          Caption = 'Tempo de Uso em H/KM'
        end
        object DBEqtOleo: TCDBEdit
          Left = 355
          Top = 21
          Width = 33
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'qtOleo'
          DataSource = dsOleo
          TabOrder = 2
          DecimalControl = True
          KeyMode = kmNormal
        end
        object CLookUp4: TCLookUp
          Left = 135
          Top = 46
          Width = 262
          Height = 19
          Alignment = taLeftJustify
          BevelInner = bvSpace
          BevelOuter = bvLowered
          Color = 14149350
          ParentBackground = False
          TabOrder = 5
          Key.Strings = (
            'idProduto')
          LookUpKey.Strings = (
            'idProduto')
          ClientDataSet = cdsLookup
          DataSource = dsOleo
          ValidaCampoObrigatorio = False
          CampoObrigatorio = True
          LookUpTable = 'Produto'
          ReturnField = 'descProduto'
        end
        object DBEidProdutoOleo: TCDBEdit
          Left = 76
          Top = 46
          Width = 53
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'idProduto'
          DataSource = dsOleo
          TabOrder = 4
          Find = dmFind.FindProduto
          AcaoCad = frmPrincipal.actCadProduto
          DecimalControl = True
          KeyMode = kmNormal
        end
        object CLookUp5: TCLookUp
          Left = 403
          Top = 46
          Width = 45
          Height = 19
          Alignment = taLeftJustify
          BevelInner = bvSpace
          BevelOuter = bvLowered
          Color = 14149350
          ParentBackground = False
          TabOrder = 6
          Key.Strings = (
            'idProduto')
          LookUpKey.Strings = (
            'idProduto')
          AlternateSQL.Strings = (
            
              'SELECT ProdMedida.descAbreviada FROM Produto, ProdMedida WHERE P' +
              'roduto.idProdMedida = ProdMedida.idProdMedida AND Produto.idProd' +
              'uto = ?')
          ClientDataSet = cdsLookup
          DataSource = dsOleo
          ValidaCampoObrigatorio = False
          CampoObrigatorio = True
          LookUpTable = 'Produto'
          ReturnField = 'descAbreviada'
        end
        object CBitBtn2: TCBitBtn
          Left = 454
          Top = 46
          Width = 78
          Height = 19
          Action = frmPrincipal.actCadProduto
          Caption = '&Produtos'
          TabOrder = 7
          TabStop = False
        end
        object DBEidTipoOleo: TCDBEdit
          Left = 76
          Top = 21
          Width = 46
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'idTipoOleo'
          DataSource = dsOleo
          TabOrder = 0
          OnExit = DBEidTipoOleoExit
          Find = dmFind.FindTipoOleo
          DecimalControl = True
          KeyMode = kmNormal
        end
        object CLookUp6: TCLookUp
          Left = 128
          Top = 21
          Width = 191
          Height = 19
          Alignment = taLeftJustify
          BevelInner = bvSpace
          BevelOuter = bvLowered
          Color = 14149350
          ParentBackground = False
          TabOrder = 1
          Key.Strings = (
            'idTipoOleo')
          LookUpKey.Strings = (
            'idTipoOleo')
          ClientDataSet = cdsLookup
          DataSource = dsOleo
          ValidaCampoObrigatorio = True
          CampoObrigatorio = True
          LookUpTable = 'TipoOleo'
          ReturnField = 'descTipoOleo'
        end
        object DBEqtTempoUsoHoraKmO: TCDBEdit
          Left = 513
          Top = 21
          Width = 72
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'qtTempoUsoHoraKm'
          DataSource = dsOleo
          TabOrder = 3
          DecimalControl = True
          KeyMode = kmNormal
        end
      end
      object CGroupBox17: TCGroupBox
        Left = 604
        Top = 9
        Width = 92
        Height = 341
        TabOrder = 1
        object BtnAdicionarOleo: TCBitBtn
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
          OnClick = BtnAdicionarOleoClick
        end
        object BtnCancelarOleo: TCBitBtn
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
          OnClick = BtnAdicionarOleoClick
        end
        object BtnRetirarOleo: TCBitBtn
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
          OnClick = BtnAdicionarOleoClick
        end
        object BtnNovoOleo: TCBitBtn
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
          OnClick = BtnAdicionarOleoClick
        end
      end
      object CGroupBox18: TCGroupBox
        Left = 3
        Top = 90
        Width = 595
        Height = 260
        TabOrder = 2
        object CDBGrid3: TCDBGrid
          Left = 7
          Top = 14
          Width = 578
          Height = 228
          TabStop = False
          DataSource = dsOleo
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
              FieldName = 'idTipoOleo'
              Title.Caption = 'C'#243'd.'
              Width = 40
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'descTipoOleo'
              Title.Caption = 'Tipo do '#211'leo'
              Width = 180
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'qtOleo'
              Title.Caption = 'Qtde'
              Width = 40
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'qtTempoUsoHoraKm'
              Title.Caption = 'Tempo de Uso'
              Width = 75
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'descProduto'
              Title.Caption = 'Produto'
              Width = 200
              Visible = True
            end>
        end
      end
    end
    object TabFiltro: TTabSheet
      Caption = 'Filtro'
      ImageIndex = 5
      object CGroupBox19: TCGroupBox
        Left = 3
        Top = 9
        Width = 595
        Height = 75
        Caption = 'Configura'#231#227'o dos Filtros utilizados'
        TabOrder = 0
        object CLabel54: TCLabel
          Left = 325
          Top = 24
          Width = 24
          Height = 13
          Alignment = taRightJustify
          Caption = 'Qtde'
        end
        object CLabel55: TCLabel
          Left = 32
          Top = 49
          Width = 38
          Height = 13
          Alignment = taRightJustify
          Caption = 'Produto'
        end
        object CLabel56: TCLabel
          Left = 8
          Top = 24
          Width = 62
          Height = 13
          Alignment = taRightJustify
          Caption = 'Tipo do Filtro'
        end
        object CLabel63: TCLabel
          Left = 394
          Top = 24
          Width = 113
          Height = 13
          Alignment = taRightJustify
          Caption = 'Tempo de Uso em H/KM'
        end
        object DBEqtFiltro: TCDBEdit
          Left = 355
          Top = 21
          Width = 33
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'qtFiltro'
          DataSource = dsFiltro
          TabOrder = 2
          DecimalControl = True
          KeyMode = kmNormal
        end
        object CLookUp7: TCLookUp
          Left = 135
          Top = 46
          Width = 262
          Height = 19
          Alignment = taLeftJustify
          BevelInner = bvSpace
          BevelOuter = bvLowered
          Color = 14149350
          ParentBackground = False
          TabOrder = 5
          Key.Strings = (
            'idProduto')
          LookUpKey.Strings = (
            'idProduto')
          ClientDataSet = cdsLookup
          DataSource = dsFiltro
          ValidaCampoObrigatorio = False
          CampoObrigatorio = True
          LookUpTable = 'Produto'
          ReturnField = 'descProduto'
        end
        object DBEidProdutoF: TCDBEdit
          Left = 76
          Top = 46
          Width = 53
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'idProduto'
          DataSource = dsFiltro
          TabOrder = 4
          Find = dmFind.FindProduto
          AcaoCad = frmPrincipal.actCadProduto
          DecimalControl = True
          KeyMode = kmNormal
        end
        object CLookUp8: TCLookUp
          Left = 403
          Top = 46
          Width = 45
          Height = 19
          Alignment = taLeftJustify
          BevelInner = bvSpace
          BevelOuter = bvLowered
          Color = 14149350
          ParentBackground = False
          TabOrder = 6
          Key.Strings = (
            'idProduto')
          LookUpKey.Strings = (
            'idProduto')
          AlternateSQL.Strings = (
            
              'SELECT ProdMedida.descAbreviada FROM Produto, ProdMedida WHERE P' +
              'roduto.idProdMedida = ProdMedida.idProdMedida AND Produto.idProd' +
              'uto = ?')
          ClientDataSet = cdsLookup
          DataSource = dsFiltro
          ValidaCampoObrigatorio = False
          CampoObrigatorio = True
          LookUpTable = 'Produto'
          ReturnField = 'descAbreviada'
        end
        object CBitBtn3: TCBitBtn
          Left = 454
          Top = 46
          Width = 78
          Height = 19
          Action = frmPrincipal.actCadProduto
          Caption = '&Produtos'
          TabOrder = 7
          TabStop = False
        end
        object DBEidTipoFiltro: TCDBEdit
          Left = 76
          Top = 21
          Width = 46
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'idTipoFiltro'
          DataSource = dsFiltro
          TabOrder = 0
          OnExit = DBEidTipoFiltroExit
          Find = dmFind.FindTipoFiltro
          DecimalControl = True
          KeyMode = kmNormal
        end
        object CLookUp9: TCLookUp
          Left = 128
          Top = 21
          Width = 191
          Height = 19
          Alignment = taLeftJustify
          BevelInner = bvSpace
          BevelOuter = bvLowered
          Color = 14149350
          ParentBackground = False
          TabOrder = 1
          Key.Strings = (
            'idTipoFiltro')
          LookUpKey.Strings = (
            'idTipoFiltro')
          ClientDataSet = cdsLookup
          DataSource = dsFiltro
          ValidaCampoObrigatorio = True
          CampoObrigatorio = True
          LookUpTable = 'TipoFiltro'
          ReturnField = 'descTipoFiltro'
        end
        object DBEqtTempoUsoHoraKmF: TCDBEdit
          Left = 513
          Top = 21
          Width = 72
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'qtTempoUsoHoraKm'
          DataSource = dsFiltro
          TabOrder = 3
          DecimalControl = True
          KeyMode = kmNormal
        end
      end
      object CGroupBox20: TCGroupBox
        Left = 604
        Top = 9
        Width = 92
        Height = 341
        TabOrder = 1
        object BtnAdicionarFiltro: TCBitBtn
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
          OnClick = BtnAdicionarFiltroClick
        end
        object BtnCancelarFiltro: TCBitBtn
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
          OnClick = BtnAdicionarFiltroClick
        end
        object BtnRetirarFiltro: TCBitBtn
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
          OnClick = BtnAdicionarFiltroClick
        end
        object BtnNovoFiltro: TCBitBtn
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
          OnClick = BtnAdicionarFiltroClick
        end
      end
      object CGroupBox21: TCGroupBox
        Left = 3
        Top = 90
        Width = 595
        Height = 260
        TabOrder = 2
        object CDBGrid4: TCDBGrid
          Left = 7
          Top = 14
          Width = 578
          Height = 228
          TabStop = False
          DataSource = dsFiltro
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
              FieldName = 'idTipoFiltro'
              Title.Caption = 'C'#243'd.'
              Width = 40
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'descTipoFiltro'
              Title.Caption = 'Tipo do Filtro'
              Width = 180
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'qtFiltro'
              Title.Caption = 'Qtde'
              Width = 40
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'qtTempoUsoHoraKm'
              Title.Caption = 'Tempo de Uso'
              Width = 75
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'descProduto'
              Title.Caption = 'Produto'
              Width = 200
              Visible = True
            end>
        end
      end
    end
  end
  inherited PanBotoes: TCPanelGradient
    Top = 664
    Width = 1067
    ExplicitTop = 664
    ExplicitWidth = 1067
    inherited BtnFechar: TCBitBtn
      Left = 625
      TabOrder = 6
      ExplicitLeft = 625
    end
    inherited BtnNovo: TCBitBtn
      TabOrder = 4
    end
    inherited BtnPesquisar: TCBitBtn
      Left = 251
      TabOrder = 3
      Visible = False
      ExplicitLeft = 251
    end
    object BtnAlteraCod: TCBitBtn
      Left = 332
      Top = 2
      Width = 109
      Height = 25
      Caption = '&Altera Codigo'
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
        FFFFB6B6B6FFFFFFFFFFFAFAFAFFC4C4C4FF7171719F000000003184B3FFC5E1
        EEFF65B0D0FF63B0D0FF61AED0FFB6B6B6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFB6B6B6FFFAFAFAFFC4C4C4FF7171719F00000000000000003184B3FFC6E2
        EEFF67B1D1FF66B0D1FF5CA7C8FFB6B6B6FFB6B6B6FFB6B6B6FFB6B6B6FFB6B6
        B6FFB6B6B6FFB6B6B6FF7171719F0000000000000000000000003184B3FFC6E2
        EEFF80BED8FF73AAC2FF588CA5FF4C7E98FF43728EFF286386FFBEDEEDFF2C53
        7AFF0000000000000000000000000000000000000000000000003184B3FFC6E2
        EEFFC6E2EEFF4C4C4CFF4C4C4CFF4C4C4CFF4C4C4CFF407591FFBFDEEDFF2D5A
        82FF0000000000000000000000000000000000000000000000003184B3FF3184
        B3FF3184B3FFA9A9A9FFDBDBDBFFDBDBDBFFA9A9A9FF10446CFF3184B3FF2F74
        A1FF000000000000000000000000000000000000000000000000000000000000
        000000000000848484FF848484FF848484FF848484FF00000000000000000000
        0000000000000000000000000000000000000000000000000000}
      TabOrder = 5
      OnClick = BtnAlteraCodClick
    end
  end
  inherited imgIcones: TImageList
    Left = 680
    Top = 0
    Bitmap = {
      494C01010700D000280110001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000002000000001002000000000000020
      00000000000000000000000000000000000000000000FEFEFE01E9E9E916B9B5
      B263A8A098A9B5AAA0C8C4B7ADDCD4C6BBE3E2D4C8E6E9D9CEE7E4D4C8E7D6C7
      BCE3C6B9B0DABDB1A8C4BEB3AAA0E6DED752000000000000000000000000C5C5
      C53A9595956AB6B3B36D78787887605351FFBEBBBBFFC5C0BFEF7C7979A18686
      8679BEBEBE410000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000EBEBEB14B8B8B8486560
      5BD262554AFF8C7769FFAD9583FFC9B09CFFD9BFAAFFE1C6B0FFDCC1ACFFCBB2
      9FFFB29986FF968170FF7B695DFFAB9D92C10000000000000000DCDCDC238686
      8679B9B4B4DAE5DBDBFFBEBBBBFF827E7EFFAEACACFFEBE9E8FFA5A3A3FFBEBB
      BBFF86868679EBEAEA1B00000000000000000000000000000000000000000000
      000000000000F6F6F6FFDCDCDCFFBEBEBEFFF2F2F2FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FBFBFB04CCCCCC33ACACAB545F5C
      59CF686564FF9C9D9DFFBFC0C2FFDADDDEFFEDF0F1FFF5F8FAFFEFF2F4FFDDDF
      E1FFC4C6C6FFA9A9A8FF8B8887FFB0A8A1B80000000000000000BDBDBD429089
      88FFA99F9FFF574948FF292828FF463C3CFF63524EFFA4918FFF2B2A2AFF6C5F
      5FFF786E6DDCC6C5C540000000000000000000000000EAEAEAFFC6C6C6FF9E9E
      9EFF868686FF808080FF393939FF3A3A3AFF808080FFA4A4A4FFEEEEEEFF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F5F5F50AD3D3D32CC9C9C9366868
      69C76A6A6BFF9C9C9CFFBEBEBEFFD9D9D9FFEBEBEAFFF3F3F2FFEDEDECFFDCDC
      DBFFC3C3C3FFA9A9A8FF8C8C8DFFB6B8B9B800000000F9F9F906D4D4D42C7874
      74FF443836FF4A3A38FF3A3939FFA4918FFF3A3939FF605351FF6E5E5CFF4C40
      40FF7E7A79D09D9A9A72FAFAFA050000000000000000747474FF666660FFB2AF
      9FFFAFAA94FF73664EFF484644FF7F8080FF191919FF7E7E7EFF808080FF9C9C
      9CFFE6E6E6FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FEFEFE0100000000FAFAFA068C8B
      8BB5646464FF9C9C9CFFBEBEBEFFD9D9D9FFEBEBEBFFF3F3F3FFEDEDEDFFDCDC
      DCFFC3C3C3FFA9A9A9FF8C8C8CFFB6B6B6B800000000F1F1F10EA9A9A9576352
      4EFF1B1A1AFFA4918FFF757575FF2B2A2AFF707070FFA4918FFF2B2A2AFF7B7B
      7BFF4C4040FF9696966BEAE9E91D00000000C2BFAAFFBBB6A8FF8C877FFF6E6C
      6AFF9A5F31FF494BACFFAEA39AFF1B1B1BFF000000FF7A6D54FF787263FF7E7E
      7EFF7E7E7EFF929292FFDEDEDEFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FBFBFB069191
      91B6606060FF9D9D9DFFBEBEBEFFD9D9D9FFEBEBEBFFF3F3F3FFEDEDEDFFDCDC
      DCFFC3C3C3FFA9A9A9FF8C8C8CFFB6B6B6B800000000FAFAFA05BDBDBD434A3A
      38FF777677FF4A3A38FF292828FFA4918FFF292828FF4A3A38FF747474FF4A3A
      38FFA4918FFF7A7A7A86F0EEEE1700000000976452FF8B8681FF928E8AFFDED9
      D5FFDDD9D5FF8D8680FF857C73FFA9A299FF000000FF564A35FF7F7561FF9589
      76FF706963FF5D5D5DFF3E3E3EFFE0E0E0FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FBFBFB068D8D
      8DB6616161FF9D9D9DFFBEBEBEFFD9D9D9FFEBEBEBFFF3F3F3FFEDEDEDFFDCDC
      DCFFC3C3C3FFA9A9A9FF8C8C8CFFB6B6B6B80000000000000000B1B1B14E7E7E
      7ED91B1A1AFF9D8986FF696A6AF71B1A1AFF646464F79D8986FF1B1A1AFF6C6C
      6CFC1B1A1AFFAAA8A8620000000000000000CFC6BFFFCFC6BFFFD4CDC7FFA9A4
      A0FF837F7AFF968D85FF9F9486FF8F857BFF04860BFF185B0CFF504E31FF6154
      3EFF766957FF383838FF161616FFEDEAE7FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FBFBFB068E8E
      8EB6616161FF9D9D9DFFBEBEBEFFD9D9D9FFEBEBEBFFF3F3F3FFEDEDEDFFDCDC
      DCFFC3C3C3FFA9A9A9FF8C8C8CFFB6B6B6B800000000F4F3F312C0C0C0444A3A
      38FF828282FD4A3A38FF1B1A1AFFA4918FFF1B1A1AFF4A3A38FF707070FF4A3A
      38FF9C9C9CE98E89889DF4F3F31200000000848280FF212121FF302D2AFF544E
      48FF6F675EFF9F968DFF564F49FF6F6B68FF04850BFF096C06FF077507FF0681
      0AFF217319FF635940FF665B46FFBAB2A9FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FBFBFB068E8E
      8EB6616161FF9D9D9DFFBEBEBEFFD9D9D9FFEBEBEBFFF3F3F3FFEDEDEDFFDCDC
      DCFFC3C3C3FFA9A9A9FF8C8C8CFFB6B6B6B800000000F4F3F312ACACAC677070
      70FF1B1A1AFF9D8986FF737373F61B1A1AFF757575FF9D8986FF1B1A1AFF7575
      75FF63524EFFBAB9B870F4F3F31200000000B4B3B2FF858585FF666565FF6260
      5DFF746E6AFFB7AEA7FF575554FF131212FF04850BFF077908FF06800AFF0589
      0BFF06910DFF07990EFF08A20FFFADC2A4FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FBFBFB068E8E
      8EB6616161FF9D9C9DFFBEBFBFFFD9DADAFFEBECECFFF3F3F3FFEDEDEDFFDBDB
      DBFFC2C2C2FFA8A8A8FF8C8C8CFFB6B6B6B800000000F4F3F312B5B2B17E5B5B
      5BFC8D8D8DF8A29E9EFF4D4D4DFFE5DBDBFF6E5E5CFFA29E9EFF767676FF3A3A
      3AFF716E6DFF94949491E2DEDE3300000000F1F1F0FFA7A6A6FF979696FFA3A1
      9FFFBAB5B1FFD8D3CEFF998C82FF5A5550FF04880BFF05870BFF058B0CFF0690
      0DFF06970DFF079F0EFF08A70FFFC1EAC2FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FBFBFB068C8E
      8EB65E6163FF9D9FA1FFBFC0C2FFDADBDCFFEBECEDFFF3F3F4FFEFEDEEFFDCDB
      DBFFC0C1C1FFA4A6A6FF898C8DFFB6B7B9B800000000E5E5E51A9A9898FF4D4D
      4DFFEFEEEEFFE5DBDBFFEFEEEEFFBBB6B6FFF9F5F5FFEFEEEEFFB2AFAFFFA29E
      9EFF423F3EFFA9A5A499E5E5E51A0000000000000000F7F6F6FFCFC8C3FFC3BA
      B2FFC3C0B6FF90AC8BFF539054FF107E14FF058F0CFF06910DFF06940DFF0699
      0DFF079E0EFF08A50FFF09AD10FFC1EBC3FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FBFBFB07908B
      88B76F5C4FFF9B8778FFB3A194FFC8BAB0FFD8CEC7FFE7E0DBFFF1EFEBFFF4F3
      F1FFEDEBEBFFCEC7C3FF978A81FFB0ABA6BAF4F3F312B5B5B54A78787887B5B1
      B1FF7D7C7CFB717171FF555353FF383737EE1A1919F9555353FF555353FFB2AF
      AFFFC1BEBEFF8A8989FFB5B2B15D000000000000000000000000000000000000
      000009AA10FF08A70FFF08A10FFF079B0EFF06940DFF079B0EFF079D0EFF07A1
      0EFF08A60FFF09AD10FF09B310FFC1ECC3FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FBFAFA07BBA6
      95B7CBBAADFFC6BDB7FFB0ADA7FF9B9894FF8B8987FF848281FF8A8987FF9C99
      97FFB4B0ADFFCBC3BEFFCDBFB3FFBCA99BBCE5E5E51A6C6C6C93B5B1B1FF5553
      53FF434242FF252525FF5E5E5EFF4F4F4FFFBFBFBFFF717171FF383737FF3837
      37FF757575FF666363CF9E9B9BD0E5E5E51A0000000000000000000000000000
      00000AB411FF0BBB12FF0DC514FF0ED016FF0ECF16FF0DCA15FF0AB611FF08AA
      0FFF09AF10FF0AB411FF0AB611FFC1ECC3FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F4EF
      EB3DF6EFEB95E8E1DBBCDAD2CBD2C8BCB4E2B8AAA0E7AE9D91E7A89588E7AA98
      88E2B7A496D3CEC0B4BDEAE1D999F6F0ED45DCDBDB2A868686C35F5858FF3A3A
      3AFF959595FF4F4F4FFF3A3A3AFF2F2F2FFF585858FF9A9A9AFF969696FF3E3E
      3EFF383737FF5F5858FF868686C3E5E5E51A0000000000000000000000000000
      00000000000000000000C3F0C5FF42D648FF0ED116FF0FD217FF0FD117FF0FD1
      16FF0FD016FF0ECD15FF0BBF12FFC1ECC3FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C4C4C43B767676994842
      42F45E5757FB9F9D9DDBBABABAFFA4918FFF858282C7636262DD3A3A3AFF7575
      75F9575353F271707099C4C4C43B000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C5F0C7FFE2F7
      E3FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CECECE31A3A2
      A2677E7C7CB1606060DE494848F33E3C3CF9434343F54C4B4BF2616161DD817F
      7FB1B5B4B457D7D7D72800000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000E8E8E4FFF8F8F7FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C3C3C43F88919B816E7E94A06D7D919F888E957DC4C4C43CF6F6
      F609000000000000000000000000000000000000000000000000000000000000
      0000E0E0E01F444240BF4E4B49BF262320EF282421EF504E4BBF474643BFE0E0
      E01F000000000000000000000000000000000000000000000000000000000000
      0000939283FF535446FF70726AFFCDCECAFF0000000000000000000000000000
      00000000000000000000000000000000000000000000E7E7E718D2D2D22DD3D3
      D32CD3D3D32CD3D3D32CD3D3D32CD3D3D32CD3D3D32CD3D3D32CD3D3D32CD3D3
      D32CD3D3D32CD3D3D32CE3E3E31C00000000000000000000000000000000C6C7
      C93F4E72A1CC3D86E9FD4D99FFFF539DFEFE529CFFFF4A97FEFE387BD3F9536A
      88BCC5C5C53A0000000000000000000000000000000000000000E0E0E01F3030
      30CF494642CF352F29FF3D3630FF3D3830FF3D3830FF3D3830FF38322CFF504C
      49CF373634CFE0E0E01F0000000000000000000000000000000000000000F5F5
      F5FF4D4E41FFA8ACAAFFEEF3FAFF838580FFF4F4F3FF00000000000000000000
      00000000000000000000000000000000000000000000DEDEDE21B29E92F3E4D3
      C8FFE2D1C7FFE3D4CBFFE3D5CDFFE2D6CFFFE4D6CFFFE2D5CEFFE3D4CCFFE2D2
      CAFFE1D0C6FFDBC6B9FFBFBFBF40000000000000000000000000A4A9B063347B
      DBF8519BFFFF5FA4FFFF67A8FFFF6AAAFFFF6AAAFFFF65A7FFFF5CA2FFFF4A98
      FEFF3469B2EBABACAD54000000000000000000000000E0E0E01F7574728F2C25
      20FF3D3831FF342D28FF292420FF241F1BFF231F1AFF28221EFF312C25FF3D36
      30FF342D28FF7B7A778FE0E0E01F0000000000000000ACACA0FF878880FFA3A6
      9BFF4E5045FF888B88FFDEE3E9FFB0B4B2FFB5C8C5FF0000000000000000F1F1
      EFFFB9B8ACFFEBEBE8FF000000000000000000000000DFDFDF20C2B3A8ECFCEF
      E9FFFAEFE9FFFBF2EDFFFCF5F2FFFCF6F4FFFDF6F4FFFCF5F3FFFBF3F0FFFAF0
      ECFFFAEEE7FFF1DFD6FFCBCBCB340000000000000000B9BCBF462C79E1FA519B
      FEFE5FA4FFFF68A9FEFE6EACFFFF71AEFEFE71AEFFFF6DABFEFE619FF2FF5A9D
      F6FE4A97FEFF2D65B0EAC8C8C8370000000000000000303030CF29241FFF3D36
      30FF2C2520FF5F534AFF8E7F73FFA49489FFA49489FF8F8075FF5D5249FF2722
      1EFF39342CFF342D28FF373634CF00000000CCCDC9FF4E5041FF415933FF1A61
      2EFF1BA690FF405844FF8B8F8BFF6C6D62FF3AC4BAFF00000000C9C8BEFF4642
      22FF4B4C3CFF5C5E54FFE2E2DFFF0000000000000000F8F8F807C0B0A7E8F9E9
      E2FFF5EAE3FFF8EBE5FFF7EDE9FFF9F0EBFFF9F0EBFFF9EFEAFFF8ECE6FFF7EB
      E4FFF7E7DFFFEFDCD1FFE5E5E51A00000000F7F7F7083066AFDB4092FFFF559E
      FFFF5EA3FFFF64A6FFFF68A8FFFF69A9FFFF69A9FFFF9DC5FAFFF1F4F9FFADC2
      DFFF5096F4FF378CFEFE4C6484B800000000E0E0E01F45413FCF3D3830FF2C27
      22FF857669FFB2A69CDF00000000BBB4ADFFBBB4ADFF00000000B6ABA1DF8576
      6AFF27221EFF3D3630FF504C49CFE0E0E01FBCBDB9FF2A4A1EFF09470EFF0286
      2FFF099077FF107C6AFF326954FF2C8473FF248F78FF5E5F4EFF605D46FF4544
      2CFF9EA2A0FFBFC3C1FF77796FFF000000000000000000000000D3C3BAE5F7E7
      DEFFF6E6DEFFF5E8E1FFF7EBE3FFF6ECE6FFF6ECE6FFF6EAE4FFF7EAE2FFF6E7
      DFFFF5E5DDFFE1CFC4FFFCFCFC1800000000AAAEB4551A7BFCFE4293FFFF4B97
      FCFE4E96F6FF549DFEFE569FFFFF579FFEFE88B9FBFFFBFCFEFEFFFFFFFFFAFC
      FDFE488FEDFF3C90FEFE1866CDF8CACACA35404040BF2D2923FF38312CFF6054
      4BFFB2A49BDF00000000000000009F968EFF9D948DFF0000000000000000B6AB
      A1DF5D5249FF312C25FF38322CFF474643BFB1E5DEFF0C6F3BFF025310FF52A6
      64FF0D8426FF09691EFF09722EFF049F3FFF0C7F1DFF1F4F16FF1BA287FF25BB
      BBFF9FA2A1FFEEF3FBFF818480FFD8D8D5FF0000000000000000D4C6BDE5F7E6
      DEFFF4E5DDFFF6E8DFFFF5E8E2FFF5E8E1FFF5E8E1FFF5E8E1FFF6E7E0FFF4E6
      DEFFF5E5DDFFE1CEC5FFFEFEFE1800000000647EA09E187BFFFF348BFFFFC2D9
      F8FFCEDBEBFF518EDFFF3E91FFFF67A7FCFFF6F9FEFFFFFFFFFFFFFFFFFF99C2
      F8FF398EFEFF3189FFFF1378FEFE8B909674464442BF39322CFF2F2923FF8E7F
      72FFBAB1AAFFBBB4AECFA49D96CF7E7569FF7D7368FFA29B93CFB7B1AACFBDB4
      ACFF908176FF28221EFF3D3830FF504E4BBFD4EEE5FF025414FF097520FFBDC0
      BAFF527746FF019F26FF019F26FF019F26FF01A026FF007317FF08BF7CFF13EA
      E4FF5E6C64FFDBE0E5FF898B80FFC0C1BCFF0000000000000000D4C8C0E5F8EA
      E1FFF6E7E1FFF5E7E0FFF5E8E1FFF5E8E1FFF5E8E1FFF5E8E1FFF5E7E0FFF6E7
      E0FFF7E9E0FFE2D1C9FFFEFDFD1800000000416DA9C31077FEFE2683FFFFFCFD
      FEFEFFFFFFFFA2BEE4FE4492FBFFECF4FDFEFFFFFFFFFEFEFEFEA7CAF9FF4192
      FDFE67A8FFFF7EB5FEFE71ADFFFF707D8F95191814EF3C362FFF2B2420FFA193
      85FFBFB8B2EFA09890FF827B71FF8B7E6EFF8B7E6EFF7E766CFF9C948BFFBEB5
      B1EFA7978BFF231F1AFF3D3830FF282421EF8FBE9DFF017B1BFF095C14FF0870
      19FF039022FF01A428FF01A729FF01A327FF009A24FF00871EFF02A635FF0ED8
      BCFF2A8F80FF62655DFF505144FFB1BAB1FF0000000000000000D6CAC3E5F9EE
      E7FFF6EAE4FFF6ECE4FFF6EAE4FFF6EAE4FFF6ECE4FFF6EAE4FFF6EAE4FFF6EA
      E4FFF7ECE6FFE4D8CFFFFEFDFD1800000000406DAAC70D75FFFF2080FFFFDBEA
      FFFFFFFFFFFFD5E1F0FFDFEBFBFFFFFFFFFFFFFFFFFFD6E5FAFF7AB2FDFF88BB
      FFFF88BBFFFF85B9FFFF7CB4FFFF78839295191714EF3C352FFF2B2520FFA192
      85FFFAFAF90FCDC9C57F827B71FFACA094FFACA096FF7E766CFFCBC7C37F0000
      0000A7978BFF241F1BFF3D3830FF262320EFC8CDC6FF93A990FF648861FF405B
      3CFF1A4917FF0D5111FF086416FF047F1EFF049724FF059422FF00A126FF05A2
      51FF0B8E80FF2C7463FF345640FF4AB2C7FF0000000000000000D7CDC6E5FBF1
      ECFFF9EFEAFFF9EEEAFFF9EFEAFFF9EFEAFFF9EEE9FFF9EEE9FFF8F0EBFFFAF3
      EFFFFCF6F4FFE7DFD9FFFEFDFD1800000000607CA2AB197BFEFE4393FFFFBAD8
      FEFEFFFFFFFFFEFEFEFEFFFFFFFFFEFEFEFEE7F0FBFF9CC5FCFE99C5FFFF99C5
      FEFE99C5FFFF99C4FEFE7BB3FEFE8E949B75444240BF38312CFF302B25FF8F80
      73FF00000000D9D5D36F948D83FF837D72FF827B71FF928980FFD7D4D16F0000
      0000928277FF292420FF3D3630FF4E4B49BF000000000000000000000000C0B2
      C4FFDADCDCFFA4C8AAFF499133FF8AA13AFFBFC646FF50B133FF89C23EFF90C6
      42FF609D3DFF549068FFAFEFEEFF000000000000000000000000D8D0CAE5FCF5
      F1FFF9F2EEFFF9F2EEFFF9F2EEFFF9F2EEFFFBF3F0FFFAF6F4FFFCF8F6FFFCF8
      F6FFFDF9F7FFE8E2DEFFFEFDFD180000000099A0A96A529CFEFE6FADFFFFAED0
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFCFDFFBFCFE5FFAFC5E3FFA4C4EDFFB0D2
      FEFFB0D2FFFFAFD1FFFF659BE2FCCBCBCB34404040BF292420FF39342DFF6459
      4FFFB9AEA4DFC6BEBAEFB5ADA8FFC4C0BB9FC3BEB99FB4ACA5FFC6BEB9EFBEB3
      ABDF61574EFF342D28FF352F29FF444240BF000000000000000000000000B8A8
      BDFFF4F1F4FFF0F9F2FFCAE5A5FFE0E99AFFD8DE6FFF89C346FF7AC755FFE0EB
      9CFFC8DB97FFABE1B8FF00000000000000000000000000000000DAD2CEE5FEFA
      F8FFFCF8F6FFFCF8F6FFFBF8F6FFFDF9F7FFFDFBF9FFFDFBF9FFFDFBF9FFFCF9
      F8FFFDFAF9FFECE6E3FFFCFCFC1900000000EBEBEB14638FC9EDC5DDFFFFD3E6
      FEFEFFFFFFFFFEFEFEFEFFFFFFFFFEFEFEFEFFFFFFFFFEFEFEFECDD5E0FFC4DC
      FCFEC6DEFFFFB9D7FEFE627998C200000000E0E0E01F413D3ACF3F3932FF352F
      2BFF93867DFFC4BAB2FFD1CAC4CF0000000000000000D2CBC6CFC7BDB6FF9386
      7DFF2F2B25FF423A35FF494643CFE0E0E01F000000000000000000000000B19F
      B7FF0000000000000000C1E4C0FFE5F0D8FFE5EFCEFFCCE5A5FF51BE5BFFE4F0
      C2FFCBDDABFFABE1B8FF00000000000000000000000000000000DBD4D2E5FFFE
      FEFFFEFCFCFFFEFCFCFFFEFCFCFFFEFCFCFFFEFBFCFFFEFBFCFFFEFCFDFFEBE9
      E8FFF3F3F3FF99928CE4FEFEFE04000000000000000099A0A86BB4D0F6FEDCEB
      FFFFFAFCFFFFFDFDFFFFFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFEBEEF3FFD9E8
      FCFFDAEAFFFF8BAAD2F5CBCBCC340000000000000000303030CF2B2522FF4F49
      43FF433E39FF797066FFB4AAA1FFCEC3BBFFCEC4BDFFB4AAA1FF776E66FF3F3A
      36FF4F4943FF35302CFF303030CF00000000000000000000000000000000DFD8
      E0FF0000000000000000B5E1BAFFA3D9A7FF78C987FF4CB95DFF0AA02AFF39B0
      4AFF47B552FFADE1BAFF00000000000000000000000000000000DBD7D2E5FFFF
      FFFFFEFEFDFFFEFEFDFFFEFEFDFFFEFEFDFFFEFEFDFFFEFEFDFFFEFFFEFFF8F8
      F7FFC9C4BEFAF1F0F01F00000000000000000000000000000000858E9A92D7E4
      F6FEEBF3FFFFEBF3FEFEECF4FFFFEEF5FEFEF1F7FFFFF3F8FEFEEDF4FEFFEBF3
      FEFEB2C3DAF7ACAEB257000000000000000000000000E0E0E01F7070708F3A38
      32FF66615CFF65605BFF5D5954FF595450FF58544FFF5B5853FF635D59FF6863
      5DFF433E39FF7574728FE0E0E01F000000000000000000000000000000000000
      00000000000000000000CCEBD3FF5DB770FF46A256FF389244FF539057FF729D
      75FF93B998FFEFF7F1FF00000000000000000000000000000000DDDAD5EAFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDDD7
      D4FFE0DFDE41000000000000000000000000000000000000000000000000A4A6
      AA68B8BDC5EBF7FAFEFEF8FBFFFFF8FBFFFFF8FBFFFFF8FBFFFFEDF2F9FE969E
      A9D2C4C5C63C0000000000000000000000000000000000000000E0E0E01F3030
      30CF524F4DCF5F5B58FF898682FF8A8783FF8A8783FF898682FF635F5BFF5653
      51CF303030CFE0E0E01F00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D8D7D732D3D2
      D138D3D2D138D3D2D138D3D2D138D3D2D138D3D2D138D3D2D138D2D2D139DADA
      DA29000000000000000000000000000000000000000000000000000000000000
      0000EEEEEE11AAABAB65A0A1A2A5A8A9A9C0A5A6A7BB9E9FA095B8B9BA4B0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000E0E0E01F404040BF444240BF302D2DEF302D2DEF464442BF404040BFE0E0
      E01F00000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000200000000100010000000000000100000000000000000000
      000000000000000000000000FFFFFF008000E007FFFF00008000C003F87F0000
      0000C003801F000000008001800700004000800100010000C000800100000000
      C000C00300000000C000800100000000C000800100000000C000800100000000
      C000800180000000C0000001F0000000C0000000F0000000E0000000FC000000
      FFFF8001FFCF0000FFFFC003FFFF0000F9FFFFFFF80FF00FF0FF8001E007C003
      E07F8001C0038001806380018001800100418001000102400001C00100000660
      0000C001000000000000C001000000000000C001000000100000C00100000810
      E001C00100000000E003C00100010180EC03C00180018001EC03C003C0038001
      FC03C007E007C003FFFFC00FF01FF00F00000000000000000000000000000000
      000000000000}
  end
  inherited Acao: TActionList
    Left = 792
    Top = 0
  end
  inherited cdsPadrao: TClientDataSet
    CommandText = 'SELECT * FROM Maquina'
    Left = 925
    Top = 144
  end
  inherited dspPadrao: TDataSetProvider
    DataSet = sdsMaquina
    Left = 832
    Top = 144
  end
  inherited dsPadrao: TDataSource
    Left = 1008
    Top = 144
  end
  inherited ImgBotoes: TImageList
    Left = 744
    Top = 0
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
    Left = 920
    Top = 32
  end
  inherited dspLookup: TDataSetProvider
    Left = 864
    Top = 32
  end
  inherited sdsLookup: TSQLDataSet
    CommandText = 'SELECT * FROM TipoFiltro'
    Left = 808
    Top = 32
  end
  object sdsMaquina: TSQLDataSet
    SchemaName = 'gesys'
    CommandText = 'SELECT * FROM Maquina'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmPadrao.dbConexao
    Left = 736
    Top = 144
  end
  object cdsCustoFixo: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    CommandText = 'SELECT * FROM MaquinaCustoFixo'
    Params = <>
    ProviderName = 'dspCustoFixo'
    AfterOpen = cdsPadraoAfterOpen
    AfterInsert = cdsCustoFixoAfterEdit
    AfterEdit = cdsCustoFixoAfterEdit
    OnReconcileError = cdsPadraoReconcileError
    Left = 925
    Top = 188
    object cdsCustoFixoidMaquina: TIntegerField
      FieldName = 'idMaquina'
      Required = True
    end
    object cdsCustoFixoidTipoDepreciacao: TSmallintField
      FieldName = 'idTipoDepreciacao'
      Required = True
    end
    object cdsCustoFixoprDepreciacaoAno: TFMTBCDField
      FieldName = 'prDepreciacaoAno'
      Required = True
      Precision = 4
      Size = 2
    end
    object cdsCustoFixovlDepreciacaoHoraKM: TFMTBCDField
      FieldName = 'vlDepreciacaoHoraKM'
      Required = True
      Precision = 19
      Size = 4
    end
    object cdsCustoFixovlJurosAno: TFMTBCDField
      FieldName = 'vlJurosAno'
      Required = True
      Precision = 19
      Size = 4
    end
    object cdsCustoFixovlJurosHoraKM: TFMTBCDField
      FieldName = 'vlJurosHoraKM'
      Required = True
      Precision = 19
      Size = 4
    end
    object cdsCustoFixovlSeguroAno: TFMTBCDField
      FieldName = 'vlSeguroAno'
      Required = True
      Precision = 19
      Size = 4
    end
    object cdsCustoFixovlSeguroHoraKM: TFMTBCDField
      FieldName = 'vlSeguroHoraKM'
      Required = True
      Precision = 19
      Size = 4
    end
    object cdsCustoFixovlAlojamentoAno: TFMTBCDField
      FieldName = 'vlAlojamentoAno'
      Required = True
      Precision = 19
      Size = 4
    end
    object cdsCustoFixovlAlojamentoHoraKM: TFMTBCDField
      FieldName = 'vlAlojamentoHoraKM'
      Required = True
      Precision = 19
      Size = 4
    end
    object cdsCustoFixovlOutrasAno: TFMTBCDField
      FieldName = 'vlOutrasAno'
      Required = True
      Precision = 19
      Size = 4
    end
    object cdsCustoFixovlOutrasHoraKM: TFMTBCDField
      FieldName = 'vlOutrasHoraKM'
      Required = True
      Precision = 19
      Size = 4
    end
    object cdsCustoFixovlImpostosAno: TFMTBCDField
      FieldName = 'vlImpostosAno'
      Required = True
      Precision = 19
      Size = 4
    end
    object cdsCustoFixovlImpostosHoraKM: TFMTBCDField
      FieldName = 'vlImpostosHoraKM'
      Required = True
      Precision = 19
      Size = 4
    end
    object cdsCustoFixovlDepreciacaoAno: TFMTBCDField
      FieldName = 'vlDepreciacaoAno'
      Required = True
      Precision = 19
      Size = 4
    end
    object cdsCustoFixovlTotalCusto: TAggregateField
      FieldName = 'vlTotalCusto'
      Active = True
      currency = True
      DisplayName = ''
      Expression = 
        'SUM(vlJurosAno+vlSeguroAno+vlAlojamentoAno+vlOutrasAno+vlImposto' +
        'sAno+vlDepreciacaoAno)'
    end
    object cdsCustoFixovlTotalCustoHoraKM: TAggregateField
      FieldName = 'vlTotalCustoHoraKM'
      Active = True
      currency = True
      DisplayName = ''
      Expression = 
        'SUM(vlDepreciacaoHoraKM+vlJurosHoraKM+vlSeguroHoraKM+vlAlojament' +
        'oHoraKM+vlOutrasHoraKM+vlImpostosHoraKM)'
    end
  end
  object dsCustoFixo: TDataSource
    DataSet = cdsCustoFixo
    Left = 1008
    Top = 188
  end
  object dspCustoFixo: TDataSetProvider
    DataSet = sdsCustoFixo
    Options = [poAllowMultiRecordUpdates, poPropogateChanges, poAllowCommandText, poUseQuoteChar]
    BeforeUpdateRecord = dspCustoFixoBeforeUpdateRecord
    Left = 832
    Top = 188
  end
  object sdsCustoFixo: TSQLDataSet
    SchemaName = 'gesys'
    GetMetadata = False
    CommandText = 'SELECT * FROM MaquinaCustoFixo'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmPadrao.dbConexao
    Left = 736
    Top = 188
  end
  object cdsDepreciacao: TClientDataSet
    Aggregates = <>
    CommandText = 'SELECT * FROM MaquinaDepreciacao'
    Params = <>
    ProviderName = 'dspDepreciacao'
    AfterOpen = cdsPadraoAfterOpen
    AfterInsert = cdsCustoFixoAfterEdit
    AfterEdit = cdsCustoFixoAfterEdit
    OnReconcileError = cdsPadraoReconcileError
    Left = 925
    Top = 231
    object cdsDepreciacaoidMaquina: TIntegerField
      FieldName = 'idMaquina'
      Required = True
    end
    object cdsDepreciacaoano: TSmallintField
      FieldName = 'ano'
      Required = True
    end
    object cdsDepreciacaovlDepreciacao: TFMTBCDField
      FieldName = 'vlDepreciacao'
      Required = True
      Precision = 19
      Size = 4
    end
    object cdsDepreciacaoprDepreciacao: TFMTBCDField
      FieldName = 'prDepreciacao'
      Required = True
      Precision = 5
      Size = 2
    end
    object cdsDepreciacaovlMaquina: TFMTBCDField
      FieldName = 'vlMaquina'
      Required = True
      Precision = 19
      Size = 4
    end
  end
  object dsDepreciacao: TDataSource
    DataSet = cdsDepreciacao
    Left = 1008
    Top = 231
  end
  object dspDepreciacao: TDataSetProvider
    DataSet = sdsDepreciacao
    Options = [poAllowMultiRecordUpdates, poPropogateChanges, poAllowCommandText, poUseQuoteChar]
    BeforeUpdateRecord = dspCustoFixoBeforeUpdateRecord
    Left = 832
    Top = 231
  end
  object sdsDepreciacao: TSQLDataSet
    SchemaName = 'gesys'
    GetMetadata = False
    CommandText = 'SELECT * FROM MaquinaDepreciacao'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmPadrao.dbConexao
    Left = 736
    Top = 231
  end
  object cdsCustoVariavel: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    CommandText = 'SELECT * FROM MaquinaCustoVariavel'
    Params = <>
    ProviderName = 'dspCustoVariavel'
    AfterOpen = cdsPadraoAfterOpen
    AfterInsert = cdsCustoFixoAfterEdit
    AfterEdit = cdsCustoFixoAfterEdit
    OnReconcileError = cdsPadraoReconcileError
    Left = 925
    Top = 275
    object cdsCustoVariavelidMaquina: TIntegerField
      FieldName = 'idMaquina'
      Required = True
    end
    object cdsCustoVariavelvlOperadorHoraKM: TFMTBCDField
      FieldName = 'vlOperadorHoraKM'
      Required = True
      Precision = 19
      Size = 4
    end
    object cdsCustoVariavelvlOutrasHoraKM: TFMTBCDField
      FieldName = 'vlOutrasHoraKM'
      Required = True
      Precision = 19
      Size = 4
    end
    object cdsCustoVariavelvlTotalCustoHoraKM: TAggregateField
      FieldName = 'vlTotalCustoHoraKM'
      Active = True
      DisplayName = ''
      Expression = 'SUM(vlOperadorHoraKM+vlOutrasHoraKM)'
    end
  end
  object dsCustoVariavel: TDataSource
    DataSet = cdsCustoVariavel
    Left = 1008
    Top = 275
  end
  object dspCustoVariavel: TDataSetProvider
    DataSet = sdsCustoVariavel
    Options = [poAllowMultiRecordUpdates, poPropogateChanges, poAllowCommandText, poUseQuoteChar]
    BeforeUpdateRecord = dspCustoFixoBeforeUpdateRecord
    Left = 832
    Top = 275
  end
  object sdsCustoVariavel: TSQLDataSet
    SchemaName = 'gesys'
    GetMetadata = False
    CommandText = 'SELECT * FROM MaquinaProduto'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmPadrao.dbConexao
    Left = 736
    Top = 275
  end
  object dsMaquinaProduto: TDataSource
    DataSet = cdsMaquinaProduto
    OnStateChange = dsMaquinaProdutoStateChange
    Left = 1008
    Top = 318
  end
  object cdsMaquinaProduto: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    CommandText = 'SELECT * FROM MaquinaProduto'
    Params = <>
    ProviderName = 'dspMaquinaProduto'
    AfterOpen = cdsPadraoAfterOpen
    AfterInsert = cdsMaquinaProdutoAfterInsert
    AfterEdit = cdsMaquinaProdutoAfterInsert
    OnCalcFields = cdsMaquinaProdutoCalcFields
    OnReconcileError = cdsPadraoReconcileError
    Left = 925
    Top = 318
    object cdsMaquinaProdutoidMaquina: TIntegerField
      FieldName = 'idMaquina'
      Required = True
    end
    object cdsMaquinaProdutoidProduto: TIntegerField
      FieldName = 'idProduto'
      Required = True
    end
    object cdsMaquinaProdutoqtProdutoHoraKM: TFMTBCDField
      FieldName = 'qtProdutoHoraKM'
      Required = True
      Precision = 18
      Size = 3
    end
    object cdsMaquinaProdutotpCusto: TStringField
      FieldName = 'tpCusto'
      Required = True
      FixedChar = True
      Size = 1
    end
    object cdsMaquinaProdutovlProduto: TFMTBCDField
      FieldName = 'vlProduto'
      Precision = 19
      Size = 4
    end
    object cdsMaquinaProdutovlProdutoHoraKM: TFMTBCDField
      FieldName = 'vlProdutoHoraKM'
      Precision = 19
      Size = 4
    end
    object cdsMaquinaProdutodescTpValor: TStringField
      FieldKind = fkCalculated
      FieldName = 'descTpValor'
      Size = 30
      Calculated = True
    end
    object cdsMaquinaProdutodescProduto: TStringField
      FieldKind = fkLookup
      FieldName = 'descProduto'
      LookupDataSet = cdsProduto
      LookupKeyFields = 'idProduto'
      LookupResultField = 'descProduto'
      KeyFields = 'idProduto'
      Lookup = True
    end
    object cdsMaquinaProdutomovimentaEstoque: TStringField
      FieldName = 'movimentaEstoque'
      Required = True
      FixedChar = True
      Size = 1
    end
    object cdsMaquinaProdutovlTotalProdutoHoraKM: TAggregateField
      FieldName = 'vlTotalProdutoHoraKM'
      Active = True
      DisplayName = ''
      Expression = 'SUM(vlProdutoHoraKM)'
    end
  end
  object dspMaquinaProduto: TDataSetProvider
    DataSet = sdsMaquinaProduto
    Options = [poAllowMultiRecordUpdates, poPropogateChanges, poAllowCommandText, poUseQuoteChar]
    BeforeUpdateRecord = dspCustoFixoBeforeUpdateRecord
    Left = 832
    Top = 318
  end
  object sdsMaquinaProduto: TSQLDataSet
    SchemaName = 'gesys'
    GetMetadata = False
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmPadrao.dbConexao
    Left = 736
    Top = 318
  end
  object cdsProduto: TClientDataSet
    Aggregates = <>
    CommandText = 'SELECT * FROM Produto'
    Params = <>
    ProviderName = 'dspLookup'
    Left = 832
    Top = 496
  end
  object cdsPneu: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    CommandText = 'SELECT * FROM MaquinaPneu'
    Params = <>
    ProviderName = 'dspPneu'
    AfterOpen = cdsPadraoAfterOpen
    AfterInsert = cdsPneuAfterInsert
    AfterEdit = cdsPneuAfterInsert
    OnReconcileError = cdsPadraoReconcileError
    Left = 925
    Top = 360
    object cdsPneuidMaquina: TIntegerField
      FieldName = 'idMaquina'
      Required = True
    end
    object cdsPneuidTipoPneu: TSmallintField
      FieldName = 'idTipoPneu'
      Required = True
    end
    object cdsPneuidProduto: TIntegerField
      FieldName = 'idProduto'
    end
    object cdsPneuqtPneu: TSmallintField
      FieldName = 'qtPneu'
      Required = True
    end
    object cdsPneuqtTempoUsoHoraKm: TIntegerField
      FieldName = 'qtTempoUsoHoraKm'
      Required = True
    end
    object cdsPneudescProduto: TStringField
      FieldKind = fkLookup
      FieldName = 'descProduto'
      LookupDataSet = cdsProduto
      LookupKeyFields = 'idProduto'
      LookupResultField = 'descProduto'
      KeyFields = 'idProduto'
      Size = 50
      Lookup = True
    end
    object cdsPneudescTipoPneu: TStringField
      FieldKind = fkLookup
      FieldName = 'descTipoPneu'
      LookupDataSet = cdsTipoPneu
      LookupKeyFields = 'idTipoPneu'
      LookupResultField = 'descTipoPneu'
      KeyFields = 'idTipoPneu'
      Size = 50
      Lookup = True
    end
  end
  object dsPneu: TDataSource
    DataSet = cdsPneu
    OnStateChange = dsPneuStateChange
    Left = 1008
    Top = 360
  end
  object dspPneu: TDataSetProvider
    DataSet = sdsPneu
    Options = [poAllowMultiRecordUpdates, poPropogateChanges, poAllowCommandText, poUseQuoteChar]
    BeforeUpdateRecord = dspCustoFixoBeforeUpdateRecord
    Left = 832
    Top = 360
  end
  object sdsPneu: TSQLDataSet
    SchemaName = 'gesys'
    GetMetadata = False
    CommandText = 'SELECT * FROM MaquinaPneu'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmPadrao.dbConexao
    Left = 736
    Top = 360
  end
  object cdsFiltro: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    CommandText = 'SELECT * FROM MaquinaFiltro'
    Params = <>
    ProviderName = 'dspFiltro'
    AfterOpen = cdsPadraoAfterOpen
    AfterInsert = cdsPneuAfterInsert
    AfterEdit = cdsPneuAfterInsert
    OnReconcileError = cdsPadraoReconcileError
    Left = 925
    Top = 402
    object cdsFiltroidMaquina: TIntegerField
      FieldName = 'idMaquina'
      Required = True
    end
    object cdsFiltroidTipoFiltro: TSmallintField
      FieldName = 'idTipoFiltro'
      Required = True
    end
    object cdsFiltroidProduto: TIntegerField
      FieldName = 'idProduto'
    end
    object cdsFiltroqtFiltro: TSmallintField
      FieldName = 'qtFiltro'
      Required = True
    end
    object cdsFiltroqtTempoUsoHoraKm: TIntegerField
      FieldName = 'qtTempoUsoHoraKm'
      Required = True
    end
    object cdsFiltrodescProduto: TStringField
      FieldKind = fkLookup
      FieldName = 'descProduto'
      LookupDataSet = cdsProduto
      LookupKeyFields = 'idProduto'
      LookupResultField = 'descProduto'
      KeyFields = 'idProduto'
      Size = 50
      Lookup = True
    end
    object cdsFiltrodescTipoFiltro: TStringField
      FieldKind = fkLookup
      FieldName = 'descTipoFiltro'
      LookupDataSet = cdsTipoFiltro
      LookupKeyFields = 'idTipoFiltro'
      LookupResultField = 'descTipoFiltro'
      KeyFields = 'idTipoFiltro'
      Size = 50
      Lookup = True
    end
  end
  object dsFiltro: TDataSource
    DataSet = cdsFiltro
    OnStateChange = dsFiltroStateChange
    Left = 1008
    Top = 402
  end
  object dspFiltro: TDataSetProvider
    DataSet = sdsFiltro
    Options = [poAllowMultiRecordUpdates, poPropogateChanges, poAllowCommandText, poUseQuoteChar]
    BeforeUpdateRecord = dspCustoFixoBeforeUpdateRecord
    Left = 832
    Top = 402
  end
  object sdsFiltro: TSQLDataSet
    SchemaName = 'gesys'
    GetMetadata = False
    CommandText = 'SELECT * FROM MaquinaFiltro'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmPadrao.dbConexao
    Left = 736
    Top = 402
  end
  object cdsOleo: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    CommandText = 'SELECT * FROM MaquinaOleo'
    Params = <>
    ProviderName = 'dspOleo'
    AfterOpen = cdsPadraoAfterOpen
    AfterInsert = cdsPneuAfterInsert
    AfterEdit = cdsPneuAfterInsert
    OnReconcileError = cdsPadraoReconcileError
    Left = 925
    Top = 445
    object cdsOleoidMaquina: TIntegerField
      FieldName = 'idMaquina'
      Required = True
    end
    object cdsOleoidTipoOleo: TSmallintField
      FieldName = 'idTipoOleo'
      Required = True
    end
    object cdsOleoidProduto: TIntegerField
      FieldName = 'idProduto'
    end
    object cdsOleoqtOleo: TFMTBCDField
      FieldName = 'qtOleo'
      Required = True
      Precision = 10
      Size = 1
    end
    object cdsOleoqtTempoUsoHoraKm: TIntegerField
      FieldName = 'qtTempoUsoHoraKm'
      Required = True
    end
    object cdsOleodescProduto: TStringField
      FieldKind = fkLookup
      FieldName = 'descProduto'
      LookupDataSet = cdsProduto
      LookupKeyFields = 'idProduto'
      LookupResultField = 'descProduto'
      KeyFields = 'idProduto'
      Size = 50
      Lookup = True
    end
    object cdsOleodescTipoOleo: TStringField
      FieldKind = fkLookup
      FieldName = 'descTipoOleo'
      LookupDataSet = cdsTipoOleo
      LookupKeyFields = 'idTipoOleo'
      LookupResultField = 'descTipoOleo'
      KeyFields = 'idTipoOleo'
      Size = 50
      Lookup = True
    end
  end
  object dsOleo: TDataSource
    DataSet = cdsOleo
    OnStateChange = dsOleoStateChange
    Left = 1008
    Top = 445
  end
  object dspOleo: TDataSetProvider
    DataSet = sdsOleo
    Options = [poAllowMultiRecordUpdates, poPropogateChanges, poAllowCommandText, poUseQuoteChar]
    BeforeUpdateRecord = dspCustoFixoBeforeUpdateRecord
    Left = 832
    Top = 445
  end
  object sdsOleo: TSQLDataSet
    SchemaName = 'gesys'
    GetMetadata = False
    CommandText = 'SELECT * FROM MaquinaOleo'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmPadrao.dbConexao
    Left = 736
    Top = 445
  end
  object cdsTipoPneu: TClientDataSet
    Aggregates = <>
    CommandText = 'SELECT * FROM TipoPneu'
    Params = <>
    ProviderName = 'dspLookup'
    Left = 736
    Top = 496
  end
  object cdsTipoOleo: TClientDataSet
    Aggregates = <>
    CommandText = 'SELECT * FROM TipoOleo'
    Params = <>
    ProviderName = 'dspLookup'
    Left = 928
    Top = 496
  end
  object cdsTipoFiltro: TClientDataSet
    Aggregates = <>
    CommandText = 'SELECT * FROM TipoFiltro'
    Params = <>
    ProviderName = 'dspLookup'
    Left = 1008
    Top = 496
  end
  object cdsVeiculos: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    CommandText = 'SELECT * FROM MaquinaVeiculo'
    Params = <>
    ProviderName = 'dspVeiculos'
    AfterOpen = cdsPadraoAfterOpen
    AfterInsert = cdsPneuAfterInsert
    AfterEdit = cdsPneuAfterInsert
    OnReconcileError = cdsPadraoReconcileError
    Left = 925
    Top = 549
    object cdsVeiculosidMaquina: TIntegerField
      FieldName = 'idMaquina'
      Required = True
    end
    object cdsVeiculoscodInterno: TStringField
      FieldName = 'codInterno'
      Required = True
      FixedChar = True
      Size = 10
    end
    object cdsVeiculosplaca: TStringField
      FieldName = 'placa'
      Required = True
      FixedChar = True
      Size = 7
    end
    object cdsVeiculosRenavam: TStringField
      FieldName = 'Renavam'
      Required = True
      FixedChar = True
      Size = 11
    end
    object cdsVeiculostara: TFMTBCDField
      FieldName = 'tara'
      Precision = 6
      Size = 0
    end
    object cdsVeiculoscapKG: TFMTBCDField
      FieldName = 'capKG'
      Precision = 6
      Size = 0
    end
    object cdsVeiculoscapM3: TFMTBCDField
      FieldName = 'capM3'
      Precision = 3
      Size = 0
    end
    object cdsVeiculostpPropriedade: TStringField
      FieldName = 'tpPropriedade'
      FixedChar = True
      Size = 1
    end
    object cdsVeiculostpVeiculo: TStringField
      FieldName = 'tpVeiculo'
      FixedChar = True
      Size = 1
    end
    object cdsVeiculostpRodado: TFMTBCDField
      FieldName = 'tpRodado'
      Precision = 2
      Size = 0
    end
    object cdsVeiculostpCarroceria: TFMTBCDField
      FieldName = 'tpCarroceria'
      Precision = 2
      Size = 0
    end
    object cdsVeiculosUFLicenciamento: TStringField
      FieldName = 'UFLicenciamento'
      FixedChar = True
      Size = 2
    end
    object cdsVeiculosidProprietario: TIntegerField
      FieldName = 'idProprietario'
    end
    object cdsVeiculosRNTRCProp: TStringField
      FieldName = 'RNTRCProp'
      FixedChar = True
      Size = 8
    end
    object cdsVeiculostpProprietario: TFMTBCDField
      FieldName = 'tpProprietario'
      Precision = 1
      Size = 0
    end
  end
  object dsVeiculos: TDataSource
    DataSet = cdsVeiculos
    OnStateChange = dsVeiculosStateChange
    Left = 1008
    Top = 549
  end
  object dspVeiculos: TDataSetProvider
    DataSet = sdsVeiculos
    Options = [poAllowMultiRecordUpdates, poPropogateChanges, poAllowCommandText, poUseQuoteChar]
    BeforeUpdateRecord = dspCustoFixoBeforeUpdateRecord
    Left = 832
    Top = 549
  end
  object sdsVeiculos: TSQLDataSet
    SchemaName = 'gesys'
    GetMetadata = False
    CommandText = 'SELECT * FROM MaquinaVeiculo'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmPadrao.dbConexao
    Left = 736
    Top = 549
  end
end
