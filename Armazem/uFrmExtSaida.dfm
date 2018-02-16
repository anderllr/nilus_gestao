inherited FrmRelExtSaida: TFrmRelExtSaida
  Caption = 'Extrato de Sa'#237'da'
  ClientHeight = 428
  ClientWidth = 750
  ExplicitWidth = 766
  ExplicitHeight = 464
  PixelsPerInch = 96
  TextHeight = 13
  inherited Bevel3: TBevel
    Width = 750
    Height = 29
    ExplicitLeft = 0
    ExplicitTop = 0
    ExplicitWidth = 745
    ExplicitHeight = 29
  end
  inherited Bevel1: TBevel
    Top = 390
    Width = 750
    ExplicitTop = 415
    ExplicitWidth = 798
  end
  inherited Bevel5: TBevel
    Top = 32
    Width = 750
    Height = 0
    ExplicitLeft = 0
    ExplicitTop = 57
    ExplicitWidth = 811
    ExplicitHeight = 0
  end
  object Bevel2: TBevel [4]
    Left = 0
    Top = 32
    Width = 750
    Height = 1
    Align = alTop
    Shape = bsTopLine
    Style = bsRaised
    ExplicitWidth = 745
  end
  object Bevel4: TBevel [5]
    Left = 0
    Top = 29
    Width = 750
    Height = 3
    Align = alTop
    Shape = bsTopLine
    Style = bsRaised
    ExplicitTop = 26
    ExplicitWidth = 745
  end
  inherited PanBotoes: TCPanelGradient
    Top = 394
    Width = 750
    ExplicitTop = 394
    ExplicitWidth = 750
  end
  inherited LookdescCadEmpresa: TCLookUp
    Left = 152
    Width = 186
    Key.Strings = (
      'idEmpresa'
      'idCadEmpresa')
    LookUpKey.Strings = (
      'idEmpresa'
      'idCadEmpresa')
    LookUpTable = 'vCadEmpresaFiscal'
    ExplicitLeft = 152
    ExplicitWidth = 186
  end
  inherited LookdescAbreviada: TCLookUp
    Left = 344
    Width = 166
    Key.Strings = (
      'idEmpresa'
      'idCadEmpresa')
    LookUpKey.Strings = (
      'idEmpresa'
      'idCadEmpresa')
    LookUpTable = 'vCadEmpresaFiscal'
    ExplicitLeft = 344
    ExplicitWidth = 166
  end
  object CGroupBox1: TCGroupBox [10]
    Left = 8
    Top = 35
    Width = 502
    Height = 134
    TabOrder = 4
    object CLabel7: TCLabel
      Left = 9
      Top = 19
      Width = 38
      Height = 13
      Alignment = taRightJustify
      Caption = 'Produto'
      Transparent = True
    end
    object CLabel30: TCLabel
      Left = 21
      Top = 41
      Width = 26
      Height = 13
      Alignment = taRightJustify
      Caption = 'Safra'
    end
    object CLabel3: TCLabel
      Left = 7
      Top = 106
      Width = 38
      Height = 13
      Alignment = taRightJustify
      Caption = 'Data de'
    end
    object CLabel4: TCLabel
      Left = 133
      Top = 106
      Width = 16
      Height = 13
      Alignment = taRightJustify
      Caption = 'at'#233
    end
    object CLabel6: TCLabel
      Left = 14
      Top = 63
      Width = 33
      Height = 13
      Alignment = taRightJustify
      Caption = 'Cliente'
      Transparent = True
    end
    object CLabel13: TCLabel
      Left = 2
      Top = 86
      Width = 43
      Height = 13
      Alignment = taRightJustify
      Caption = 'Contrato'
      Transparent = True
    end
    object DBEidProduto: TCDBEdit
      Left = 53
      Top = 16
      Width = 54
      Height = 19
      BevelKind = bkTile
      BorderStyle = bsNone
      DataField = 'idProduto'
      DataSource = dsPadrao
      TabOrder = 0
      Find = FindProduto
      DecimalControl = True
      KeyMode = kmNormal
    end
    object LookdescProduto: TCLookUp
      Left = 113
      Top = 16
      Width = 276
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
      ClientDataSet = cdsLookUp
      DataSource = dsPadrao
      ValidaCampoObrigatorio = True
      CampoObrigatorio = True
      LookUpTable = 'Produto'
      ReturnField = 'descProduto'
    end
    object CBitBtn1: TCBitBtn
      Left = 395
      Top = 17
      Width = 80
      Height = 19
      Caption = '&Produtos'
      TabOrder = 2
      TabStop = False
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FCFCFCFFFF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FBFBFBFFDEDEDEFFAFAEAFFF858587FF707275FF6C7074FF6766
        68FF919192FFCBCACAFFF2F2F2FFFF00FF00FF00FF00FF00FF00FF00FF00F7F7
        F7FFDEDEDEFF838383FF696F74FF8B9399FFAAB5BBFFCAD7DEFFDFEBEFFF8688
        8BFF787879FF595A5BFF646363FFB1B1B1FFEEEEEEFFFEFEFEFFFAFAFAFFE6E6
        E6FFC6C6C6FF808587FFA8B4BBFFB8C6CDFFC6D4DCFFDBEAF0FFEDF6F9FF9094
        96FF8C8D8EFF7D7E7EFF686868FF8C8C8CFFCECECEFFF8F8F8FFFEFEFEFFF9F9
        F9FFEFEFEFFF8D9294FFACB9C0FFBCCAD2FFCAD9E1FFDFEDF4FFF0F7FAFF9397
        9AFF8F9191FF808181FF707070FFCBCBCBFFEAEAEAFFFCFCFCFFFF00FF00FF00
        FF00FF00FF00909598FFAFBDC4FFC0CFD7FFCEDEE7FFE4F1F7FFF2F9FBFF979B
        9DFF939494FF838485FF767676FFFEFEFEFFFF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00909598FFAFBDC4FFC5D4DCFFD3E4EDFFE8F5FAFFF5FAFCFF999E
        A1FF909192FF868888FF777777FFFF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF008C9193FF769AA7FF3E97B2FF7ABDD3FFECF8FDFFF6FBFDFF9DA1
        A4FF7B7D7FFF8A8C8CFF787879FFFF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00888B8EFF9CA9AEFF3CA0BDFFCAE2EDFFF0FCFEFFF8FCFDFF9FA3
        A7FF797A7DFF8E9090FF7A7B7BFFFF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00F3F3F3FF8E9293FFB5C0C4FFB3CED9FFE2F5FCFFF0FAFBFFF3F6F7FFA0A5
        A9FF7C7E81FF919394FF7B7C7DFFFF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00959B9FFFAAB6BCFFB3BFC5FFC8D5D9FFE8EEEFFFECEFF0FF9EAD
        A6FF809294FF7A837FFF838786FFFF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF009CA4A8FFC8D8E0FFDBEDF4FFEFFDFDFFFDFFFFFFFCFEFFFFA0A8
        AAFF767A7DFF66696AFF7E8081FFFF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF009FA8ADFFD4E6F0FFE7FAFEFFF9FFFFFFFFFFFFFFFDFFFFFFB0B7
        BAFFAAAEAFFF989B9CFF7D7F80FFFF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00ABB2B5FFEEFBFDFFFCFEFFFFFEFFFFFFFFFFFFFFFBFBFBFFD0D4
        D6FFD7DEE1FFC1C8CAFF999D9EFFFF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00F1F1F1FFC2C3C4FFBCBDBEFFBDBEBFFFBCBEBEFFBABBBCFFC2C3
        C3FFC0C1C2FFBFC0C1FFE3E3E3FFFF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
    end
    object DBEidSafra: TCDBEdit
      Left = 53
      Top = 38
      Width = 54
      Height = 19
      BevelKind = bkTile
      BorderStyle = bsNone
      DataField = 'idSafra'
      DataSource = dsPadrao
      TabOrder = 3
      Find = FindSafra
      AcaoCad = frmPrincipal.actCadSafra
      DecimalControl = True
      KeyMode = kmNormal
    end
    object LookdescSafra: TCLookUp
      Left = 113
      Top = 38
      Width = 276
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
    object CBitBtn7: TCBitBtn
      Left = 394
      Top = 39
      Width = 81
      Height = 19
      Action = frmPrincipal.actCadSafra
      Caption = '&Safra'
      TabOrder = 5
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
    object DBEdtInicial: TCDBEdit
      Left = 51
      Top = 106
      Width = 80
      Height = 19
      BevelKind = bkTile
      BorderStyle = bsNone
      DataField = 'dtInicial'
      DataSource = dsPadrao
      MaxLength = 10
      TabOrder = 12
      DecimalControl = True
      KeyMode = kmDate
    end
    object DBEdtFinal: TCDBEdit
      Left = 155
      Top = 106
      Width = 80
      Height = 19
      BevelKind = bkTile
      BorderStyle = bsNone
      DataField = 'dtFinal'
      DataSource = dsPadrao
      MaxLength = 10
      TabOrder = 13
      DecimalControl = True
      KeyMode = kmDate
    end
    object DBEidCliente: TCDBEdit
      Left = 53
      Top = 60
      Width = 54
      Height = 19
      BevelKind = bkTile
      BorderStyle = bsNone
      DataField = 'idCliente'
      DataSource = dsPadrao
      TabOrder = 6
      Find = FindCliente
      DecimalControl = True
      KeyMode = kmNormal
    end
    object DBEidCadCliente: TCDBEdit
      Left = 113
      Top = 60
      Width = 46
      Height = 19
      BevelKind = bkTile
      BorderStyle = bsNone
      DataField = 'idCadCliente'
      DataSource = dsPadrao
      TabOrder = 7
      Find = FindCliente
      DecimalControl = True
      KeyMode = kmNormal
    end
    object LookClienteFiscal: TCLookUp
      Left = 165
      Top = 60
      Width = 224
      Height = 19
      Alignment = taLeftJustify
      BevelInner = bvSpace
      BevelOuter = bvLowered
      Color = 14149350
      ParentBackground = False
      TabOrder = 8
      Key.Strings = (
        'idCliente'
        'idCadCliente')
      LookUpKey.Strings = (
        'idCliente'
        'idCadCliente')
      ClientDataSet = cdsLookUp
      DataSource = dsPadrao
      ValidaCampoObrigatorio = True
      CampoObrigatorio = True
      LookUpTable = 'vCadClienteFiscal'
      ReturnField = 'descCadCliente'
    end
    object DBEidContratoArm: TCDBEdit
      Left = 53
      Top = 83
      Width = 54
      Height = 19
      BevelKind = bkTile
      BorderStyle = bsNone
      DataField = 'idContratoArm'
      DataSource = dsPadrao
      TabOrder = 9
      Find = FindContrato
      DecimalControl = True
      KeyMode = kmNormal
    end
    object LookContrato: TCLookUp
      Left = 113
      Top = 83
      Width = 276
      Height = 19
      Alignment = taLeftJustify
      BevelInner = bvSpace
      BevelOuter = bvLowered
      Color = 14149350
      ParentBackground = False
      TabOrder = 10
      Key.Strings = (
        'idContratoArm')
      LookUpKey.Strings = (
        'idContratoArm')
      AlternateSQL.Strings = (
        
          'Select nrContratoArm + '#39' - '#39' + descContratoArm From ContratoArm ' +
          'Where idContratoArm = ?')
      ClientDataSet = cdsLookUp
      DataSource = dsPadrao
      ValidaCampoObrigatorio = False
      CampoObrigatorio = True
      LookUpTable = 'ContratoArm'
    end
    object BtnCadContrato: TCBitBtn
      Left = 395
      Top = 84
      Width = 80
      Height = 19
      Caption = '&Contratos'
      TabOrder = 11
      TabStop = False
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FEFEFEFFFEFEFEFFFF00FF00FF00FF00FF00
        FF00FBFBFBFFE8E8E8FFB2B2B2FF908F8FFFA9A9A9FFB1B1B1FFBBBBBBFFCBCB
        CBFFCBCBCBFFCACACAFFCBCBCBFFD2D2D2FFE6E6E6FFF6F6F6FFFCFCFCFFEDED
        EDFFD2D2D2FFADADADFF8C8C8CFFEFF7F9FFB9BFC0FF878A8AFF848687FF8282
        82FFA09FA0FFEFEFEFFFFCFCFCFFFCFCFCFFFCFCFCFFFEFEFEFFFEFEFEFFFAFA
        FAFFF1F1F1FFE4E4E4FFB4B4B5FFE0E8EAFF90989EFFC4CBCDFFC4CBCDFFB5BC
        BEFFA3A9ABFFDAD9D9FFFDFDFDFFFF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00BFC0C0FFE5EDEFFF7A8F99FF4D6D57FFB5BEBEFFB3BA
        BCFF9FA4A5FFF2F2F2FFFAFAFAFFFF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00C0C1C1FFE7F0F2FFB8C6C1FF1F5321FF436447FFB0B8
        B9FF9FA2A3FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00D9DADAFFE6EEF0FFD7DFE1FF97AA9FFF184F1AFF4C69
        51FFA2A3A5FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00F6F6F6FFF3F9FBFFE7EFF2FFDBE3E6FFD0D9DBFF7D9584FF1750
        19FF6B796CFFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00DFDEDEFFEFF7FAFFE1E9EBFFD8E0E2FFD0D8DAFFC3CBCDFF607F
        65FF18521AFF8E958DFFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00D1D1D1FFEDF6F8FFE4EDEFFFDAE2E5FFCED7D9FFC1C9CBFFB4BC
        BEFF4F6C51FF1A521CFFA5A9A4FFFF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00C8C8C8FFECF4F7FFDFE8EAFFD8E1E3FFCBD3D5FFBEC6C8FFB3BB
        BDFFE5E5E5FF456645FF1E5421FFBABCB9FFFF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00C3C3C3FFE9F1F4FFDFE7EAFFD4DCDFFFC8D0D2FFBBC3C5FFA7AE
        B0FFFF00FF00EDEDEDFF2B562BFF245526FFCCCDCCFFFF00FF00FF00FF00FF00
        FF00FF00FF00C1C1C1FFC1C7C9FFBBC1C3FFB3B9BBFFAAB0B2FFA0A6A7FF9095
        96FFFF00FF00FF00FF00DDDDDDFF1C511DFF2B562DFFE3E3E3FFFF00FF00FF00
        FF00FF00FF00E7E6E6FFA2A2A3FFA3A4A4FFA1A2A3FFA0A0A1FF9D9E9FFF9D9E
        9EFFFF00FF00FF00FF00FF00FF00C9CBC9FF5B6F5AFFF5F5F5FFFF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
    end
    object CBitBtn2: TCBitBtn
      Left = 395
      Top = 61
      Width = 80
      Height = 19
      Caption = '&Clientes/Fornecedores'
      TabOrder = 14
      TabStop = False
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00F9F6F5FFE0D8D6FFC7BFBEFFBEB9B8FFD5D3D3FFF8F8F8FFFF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FCFAFAFFEBE0DEFFCEB3ACFFA7857DFF83625BFF78635FFF9B9593FFDAD9
        D9FFE7E6E6FFE0DFDFFFE4E3E3FFEEEEEEFFF9F9F9FFFF00FF00FF00FF00FF00
        FF00F9F7F6FFE8DBD8FFCBB1ACFFAC8A82FF956A60FF936257FF906055FF8669
        62FF9B9492FFC9C7C7FFC5C3C2FFB9B7B6FFCECCCCFFFF00FF00FF00FF00FEFE
        FEFFF7F3F2FFE4D5D1FFC6ACA6FFA8857DFF946A60FF936257FFA57266FFB991
        88FFB58B82FF8E7570FFB5B2B1FFC2C0BFFFE1E0DFFFFF00FF00FF00FF00FCFB
        FBFFF3EDEBFFDECCC8FFC1A59FFFA58179FF976A60FF9F6A5EFFAC7D72FFBC96
        8DFFCBAEA7FFD3BBB5FFAA796EFFA19B9AFFFBFBFBFFFF00FF00FF00FF00FCF9
        F9FFEFE6E3FFD8C3BFFFBDA099FFA67F76FF9E6D62FFA8766BFFB68D84FFC5A4
        9DFFCDB0AAFFD0B5AFFFC9ACA5FFBEB6B4FFFF00FF00FF00FF00FF00FF00FAF7
        F7FFEADEDCFFD2BBB7FFB99A92FFA87D74FFA67569FFB1857BFFBF9B93FFCAAD
        A6FFCDB0AAFFCDB0AAFFB5A09BFFFF00FF00FF00FF00FF00FF00FEFEFEFFF7F4
        F3FFE6D8D5FFCEB5B0FFB8958EFFAD7E74FFAD7F74FFBA938AFFC7A7A0FFCAAC
        A5FFCDB0AAFFBD988FFFEBEAEAFFFF00FF00FF00FF00FF00FF00FEFEFEFFF5EF
        EEFFE3D3CFFFCCB1ABFFBB948CFFB2867CFFB58B82FFC29F97FFC7A7A0FFC8A9
        A2FFC09D95FFE1DFDFFFECEBEBFFEEEEEEFFFF00FF00FF00FF00FDFCFCFFF2EB
        E9FFDDCAC6FFCAADA6FFBD978EFFB78F85FFBC968EFFC3A199FFC3A199FFC3A2
        9BFFD6D0CFFFFF00FF00E6E5E5FFEBEAEAFFFF00FF00FF00FF00FEFEFEFFFAF8
        F8FFEADEDCFFCDB1ABFFBA938AFFBA948BFFBE9991FFBF9B93FFC29F97FFAF82
        78FFE2E1E0FFFAFAFAFFEFEFEFFFFBFBFBFFFF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00F7F3F2FFE3D3CFFFC2A099FFBA938AFFBA938AFFB78E85FFB185
        7BFFCEC2BFFFFF00FF00FBFBFBFFFF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00F6F1F0FFD4BCB7FFB4897FFFAE8075FFD9C3
        BEFFFEFEFDFFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00E9DCDAFFD2B9B4FFFCFC
        FCFFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
    end
  end
  object DBEidCadEmpresa: TCDBEdit [11]
    Left = 111
    Top = 7
    Width = 35
    Height = 19
    TabStop = False
    BevelKind = bkTile
    BorderStyle = bsNone
    DataField = 'idCadEmpresa'
    DataSource = dsEmpresa
    TabOrder = 5
    OnKeyDown = DBEidEmpresaKeyDown
    DecimalControl = True
    KeyMode = kmNormal
  end
  inherited imgIcones: TImageList
    Left = 632
    Top = 112
  end
  inherited Acao: TActionList
    Left = 664
    Top = 112
  end
  inherited dspRelatorio: TDataSetProvider
    DataSet = dmPadrao.sdsTabela
    Left = 600
    Top = 80
  end
  inherited cdsRelatorio: TClientDataSet
    CommandText = #9'EXEC spRelExtSaida 1,1,1122,1,113,4,0,'#39'01/01/2008'#39','#39'29/02/2008'#39
    Left = 632
    Top = 80
  end
  inherited frxJPEGExport1: TfrxJPEGExport
    Left = 600
    Top = 144
  end
  inherited frxTIFFExport1: TfrxTIFFExport
    Left = 632
    Top = 144
  end
  inherited frxRTFExport1: TfrxRTFExport
    Left = 664
    Top = 144
  end
  inherited frxSimpleTextExport1: TfrxSimpleTextExport
    Left = 696
    Top = 144
  end
  inherited frxHTMLExport1: TfrxHTMLExport
    Left = 600
    Top = 176
  end
  inherited dspLookUp: TDataSetProvider
    Left = 600
    Top = 240
  end
  inherited cdsLookUp: TClientDataSet
    Left = 632
    Top = 240
  end
  inherited frxXLSExport1: TfrxXLSExport
    Left = 632
    Top = 176
  end
  inherited frxXMLExport1: TfrxXMLExport
    Left = 664
    Top = 176
  end
  inherited frxPDFExport1: TfrxPDFExport
    Left = 696
    Top = 176
  end
  inherited frxODSExport1: TfrxODSExport
    Left = 600
    Top = 208
  end
  inherited frxODTExport1: TfrxODTExport
    Left = 632
    Top = 208
  end
  inherited frxMailExport1: TfrxMailExport
    Left = 696
    Top = 208
  end
  inherited frxCSVExport1: TfrxCSVExport
    Left = 665
    Top = 208
  end
  inherited frxDataset: TfrxDBDataset
    FieldAliases.Strings = (
      'nrTotal=nrTotal'
      'idEmpresa=idEmpresa'
      'idCadEmpresa=idCadEmpresa'
      'descCadEmpresa=descCadEmpresa'
      'idCliente=idCliente'
      'idCadCliente=idCadCliente'
      'descAbreviada=descAbreviada'
      'idProduto=idProduto'
      'descProduto=descProduto'
      'idSafra=idSafra'
      'descSafra=descSafra'
      'dtRomaneio=dtRomaneio'
      'dtSaida=dtSaida'
      'idRomaneio=idRomaneio'
      'placa=placa'
      'descCadDesconto=descCadDesconto'
      'qtDesconto=qtDesconto'
      'idContratoArm=idContratoArm'
      'nrContratoArm=nrContratoArm'
      'vlContratoArm=vlContratoArm'
      'qtProduto=qtProduto'
      'vlFrete=vlFrete'
      'qtPesoLiquido=qtPesoLiquido')
    Left = 664
    Top = 80
  end
  inherited dsPadrao: TDataSource
    Left = 696
    Top = 240
  end
  inherited cdsPadrao: TClientDataSet
    Left = 664
    Top = 240
    object cdsPadraoidProduto: TIntegerField
      FieldName = 'idProduto'
    end
    object cdsPadraoidSafra: TIntegerField
      FieldName = 'idSafra'
    end
    object cdsPadraoidCliente: TIntegerField
      FieldName = 'idCliente'
    end
    object cdsPadraoidCadCliente: TIntegerField
      FieldName = 'idCadCliente'
    end
    object cdsPadraodtInicial: TDateTimeField
      FieldName = 'dtInicial'
    end
    object cdsPadraodtFinal: TDateTimeField
      FieldName = 'dtFinal'
    end
    object cdsPadraoidCadEmpresa: TIntegerField
      FieldName = 'idCadEmpresa'
    end
    object cdsPadraoidContratoArm: TIntegerField
      FieldName = 'idContratoArm'
    end
    object cdsPadraoidEmpresa: TIntegerField
      FieldName = 'idEmpresa'
    end
  end
  inherited dspEmpresa: TDataSetProvider
    Left = 552
    Top = 8
  end
  inherited cdsEmpresa: TClientDataSet
    CommandText = 'SELECT * FROM vCadEmpresaFiscal'
    Left = 584
    Top = 8
  end
  inherited dsEmpresa: TDataSource
    Left = 616
    Top = 8
  end
  inherited FindEmpresa: TCFind
    Left = 648
    Top = 8
  end
  inherited sdsEmpresa: TSQLDataSet
    CommandText = 'SELECT * FROM vCadEmpresaFiscal'
    Left = 520
    Top = 8
  end
  object FindCliente: TCFind
    SelectClause.Strings = (
      'SELECT  idCliente, descCadCliente FROM vCadClienteContabil')
    JoinClause.Strings = (
      'WHERE StCadGeral = '#39'ATIVO'#39)
    OrderByClause.Strings = (
      'ORDER BY descCadCliente')
    FindField = 'descCadCliente'
    SQLConnection = dmPadrao.dbConexao
    ValueField = 'idCliente'
    CarregaDados = True
    CollumNames.Strings = (
      'C'#243'digo'
      'Descri'#231#227'o')
    TypeFind = fFindNormal
    Left = 601
    Top = 271
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
    Left = 633
    Top = 271
  end
  object FindSafra: TCFind
    SelectClause.Strings = (
      'SELECT idSafra, descSafra, dtInicial  FROM Safra')
    JoinClause.Strings = (
      'WHERE stSafra = '#39'ATIVO'#39' AND idEmpresa = [DBEidEmpresa]')
    OrderByClause.Strings = (
      'ORDER BY descSafra')
    FindField = 'descSafra'
    SQLConnection = dmPadrao.dbConexao
    ValueField = 'idSafra'
    CarregaDados = True
    CollumNames.Strings = (
      'Safra'
      'Descri'#231#227'o'
      'Data Inicial')
    TypeFind = fFindNormal
    Left = 665
    Top = 271
  end
  object frxRel: TfrxReport
    Version = '4.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.Author = 'Gesys Sistemas de Informa'#231#227'o'
    ReportOptions.CreateDate = 39263.419322395800000000
    ReportOptions.LastChange = 39553.658483252300000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      
        'procedure GroupHeaderContaPagOnBeforePrint(Sender: TfrxComponent' +
        ');'
      
        'var vlUnitario, vlLiquido, vlBruto: Real;                       ' +
        '                                                                ' +
        '                 '
      'begin'
      ' //vlUnitario := StrToFloat(Memo18.text);'
      ' //vlLiquido := StrToFloat(DBMvlReal.text);'
      ' // vlBruto := vlUnitario * vlLiquido;'
      'end;'
      ''
      'BEGIN'
      'END.    '
      ''
      ''
      '    ')
    OnAfterPrint = frxRelAfterPrint
    Left = 696
    Top = 272
    Datasets = <
      item
        DataSet = frxDataset
        DataSetName = 'frxDataset'
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
      object PageFooter1: TfrxPageFooter
        Height = 27.113416900000000000
        Top = 483.779840000000000000
        Width = 793.701300000000000000
        object Memo13: TfrxMemoView
          Left = 340.157700000000000000
          Top = 7.937002990000000000
          Width = 117.165430000000000000
          Height = 13.228346460000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Nilus Report ')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo15: TfrxMemoView
          Left = 39.685039370000000000
          Top = 7.937002990000000000
          Width = 267.459591990000000000
          Height = 13.228346460000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Vita Sistemas de Informa'#195#167#195#163'o Ltda.')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo17: TfrxMemoView
          Left = 659.756340000000000000
          Top = 7.937002990000000000
          Width = 94.488250000000000000
          Height = 13.228346460000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[(<Page>)]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Line1: TfrxLineView
          Left = 39.685039370000000000
          Top = 3.152748900000000000
          Width = 718.110221570000000000
          Frame.Typ = [ftTop]
          Frame.Width = 0.100000000000000000
        end
      end
      object GroupHeaderContaPag: TfrxGroupHeader
        Height = 35.905526460000000000
        Top = 260.787570000000000000
        Width = 793.701300000000000000
        OnBeforePrint = 'GroupHeaderContaPagOnBeforePrint'
        Condition = '<frxDataset."idRomaneio">'
        ExpandDrillDown = True
        ReprintOnNewPage = True
        Stretched = True
        object Memo19: TfrxMemoView
          Left = 174.614175670000000000
          Width = 51.779527560000000000
          Height = 13.228346460000000000
          DataSet = frxDataset
          DataSetName = 'frxDataset'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = 'dd/mm/yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDataset."dtRomaneio"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo31: TfrxMemoView
          Left = 46.866141730000000000
          Width = 124.346459130000000000
          Height = 13.228346460000000000
          DataSet = frxDataset
          DataSetName = 'frxDataset'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDataset."descAbreviada"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object DBMvlReal: TfrxMemoView
          Left = 428.598408110000000000
          Width = 74.834650550000000000
          Height = 13.228346460000000000
          DataSet = frxDataset
          DataSetName = 'frxDataset'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDataset."qtPesoLiquido"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object DBMnrTitulo: TfrxMemoView
          Left = 230.551181100000000000
          Width = 45.732283460000000000
          Height = 13.228346460000000000
          DataSet = frxDataset
          DataSetName = 'frxDataset'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%g'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDataset."idRomaneio"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object DBMdtEmissao: TfrxMemoView
          Left = 337.511813460000000000
          Width = 86.929114330000000000
          Height = 13.228346460000000000
          DataSet = frxDataset
          DataSetName = 'frxDataset'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDataset."descProduto"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo41: TfrxMemoView
          Left = 594.141729840000000000
          Width = 75.212605750000000000
          Height = 13.228346460000000000
          DataSet = frxDataset
          DataSetName = 'frxDataset'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            
              '[(<frxDataset."vlContratoArm"> / <frxDataset."qtProduto">) * (<f' +
              'rxDataset."qtPesoLiquido">)]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo20: TfrxMemoView
          Left = 283.464569370000000000
          Width = 49.511811020000000000
          Height = 13.228346460000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDataset."placa"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo12: TfrxMemoView
          Left = 682.582657640000000000
          Top = 1.133859000000000000
          Width = 68.787408900000000000
          Height = 13.228346460000000000
          DataSet = frxDataset
          DataSetName = 'frxDataset'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[<frxDataset."qtPesoLiquido">*<frxDataset."vlFrete">]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo18: TfrxMemoView
          Left = 512.881880000000000000
          Top = 1.133858270000000000
          Width = 71.055130310000000000
          Height = 13.228346460000000000
          DataSet = frxDataset
          DataSetName = 'frxDataset'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[<frxDataset."vlContratoArm">/<frxDataset."qtProduto">]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo8: TfrxMemoView
          Left = 418.431766300000000000
          Top = 22.677170240000000000
          Width = 53.291373000000000000
          Height = 13.228346460000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Descontos:')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo11: TfrxMemoView
          Left = 593.385826770000000000
          Top = 22.677170240000000000
          Width = 74.456692910000000000
          Height = 13.228346460000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Qt.Descontada')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo37: TfrxMemoView
          Left = 491.338582680000000000
          Top = 22.677180000000000000
          Width = 86.929133860000000000
          Height = 13.228346460000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Tipo Desconto')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo29: TfrxMemoView
          Left = 691.653555510000000000
          Top = 22.031508270000000000
          Width = 63.874003540000000000
          Height = 13.228346460000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Peso L'#195#173'quido:')
          ParentFont = False
          VAlign = vaBottom
        end
      end
      object MasterDataContaPag: TfrxMasterData
        Height = 30.236240000000000000
        Top = 321.260050000000000000
        Width = 793.701300000000000000
        OnBeforePrint = 'MasterDataContaPagOnBeforePrint'
        Columns = 1
        ColumnWidth = 200.000000000000000000
        ColumnGap = 20.000000000000000000
        DataSet = frxDataset
        DataSetName = 'frxDataset'
        RowCount = 0
        Stretched = True
      end
      object PageHeader1: TfrxPageHeader
        Height = 92.256736780000000000
        Top = 18.897650000000000000
        Width = 793.701300000000000000
        object Memo3: TfrxMemoView
          Left = 88.937044000000000000
          Top = 73.359094100000000000
          Width = 449.764070000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DataSet = frxDataset
          DataSetName = 'frxDataset'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            
              '[frxDataset."idEmpresa"]-[frxDataset."idCadEmpresa"] - [frxDatas' +
              'et."descCadEmpresa"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo7: TfrxMemoView
          Left = 39.125991570000000000
          Top = 73.138624100000000000
          Width = 49.058299400000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Empresa :')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object SMData: TfrxMemoView
          Left = 661.094930000000000000
          Top = 72.359094100000000000
          Width = 94.488250000000000000
          Height = 11.338582680000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[(Date)]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo2: TfrxMemoView
          Left = 41.574812910000000000
          Top = 28.346456690000000000
          Width = 714.330696460000000000
          Height = 34.015770000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -24
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'Extrato de Sa'#195#173'das no Armaz'#195#169'm')
          ParentFont = False
          WordWrap = False
        end
      end
      object HeaderContaPag: TfrxHeader
        Height = 68.258300080000000000
        Top = 170.078850000000000000
        Width = 793.701300000000000000
        object Shape3: TfrxShapeView
          Left = 38.905521570000000000
          Top = 50.116567800000000000
          Width = 721.889751570000000000
          Height = 18.141732280000000000
          Color = 12369084
          Frame.Color = 15790320
        end
        object Memo10: TfrxMemoView
          Left = 174.614175670000000000
          Top = 52.913405350000000000
          Width = 51.779527560000000000
          Height = 13.228346460000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Data')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object MdtEmissao: TfrxMemoView
          Left = 337.511813460000000000
          Top = 52.913405350000000000
          Width = 86.929114330000000000
          Height = 13.228346460000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Produto')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object MnrTitulo: TfrxMemoView
          Left = 230.551181100000000000
          Top = 52.913405350000000000
          Width = 45.732283460000000000
          Height = 13.228346460000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'Romaneio')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo14: TfrxMemoView
          Left = 512.881880000000000000
          Top = 52.913405350000000000
          Width = 71.055130310000000000
          Height = 13.228346460000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            'Vl.Unitario')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo21: TfrxMemoView
          Left = 594.141729840000000000
          Top = 52.913405350000000000
          Width = 75.212605750000000000
          Height = 13.228346460000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            'Vl.Bruto')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo23: TfrxMemoView
          Left = 46.866141730000000000
          Top = 52.913405350000000000
          Width = 124.346459130000000000
          Height = 13.228346460000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Cliente')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo5: TfrxMemoView
          Left = 428.598408110000000000
          Top = 52.913405350000000000
          Width = 74.834650550000000000
          Height = 13.228346460000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            'Ps.Liquido')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo1: TfrxMemoView
          Left = 283.464569370000000000
          Top = 52.913420000000000000
          Width = 49.511811020000000000
          Height = 13.228346460000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Placa')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Shape2: TfrxShapeView
          Left = 39.574830000000000000
          Width = 721.889751570000000000
          Height = 51.212631500000000000
          Frame.Width = 0.100000000000000000
        end
        object Memo22: TfrxMemoView
          Left = 47.133890000000000000
          Width = 86.929190000000000000
          Height = 13.228346460000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Dados do Contrato')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          Left = 48.354360000000000000
          Top = 15.874015748031500000
          Width = 60.472480000000000000
          Height = 13.228346460000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Nr.Contrato: ')
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          Left = 113.385900000000000000
          Top = 15.874015750000000000
          Width = 71.811070000000000000
          Height = 13.228346460000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '[frxDataset."nrContratoArm"]')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          Left = 211.653680000000000000
          Top = 15.874015748031500000
          Width = 56.692950000000000000
          Height = 13.228346460000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Qt.Produto:')
          ParentFont = False
        end
        object Memo30: TfrxMemoView
          Left = 272.126160000000000000
          Top = 15.874015748031500000
          Width = 68.031540000000000000
          Height = 13.228346460000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDataset."qtProduto"]')
          ParentFont = False
        end
        object Memo33: TfrxMemoView
          Left = 366.614410000000000000
          Top = 15.874015750000000000
          Width = 56.692950000000000000
          Height = 13.228346460000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Vl.Contrato: ')
          ParentFont = False
        end
        object Memo34: TfrxMemoView
          Left = 427.086890000000000000
          Top = 15.874015748031500000
          Width = 68.031540000000000000
          Height = 13.228346460000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDataset."vlContratoArm"]')
          ParentFont = False
        end
        object Memo35: TfrxMemoView
          Left = 517.795610000000000000
          Top = 15.874015748031500000
          Width = 41.574830000000000000
          Height = 13.228346460000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Vl.Frete:')
          ParentFont = False
        end
        object Memo36: TfrxMemoView
          Left = 563.149970000000000000
          Top = 15.874015748031500000
          Width = 68.031540000000000000
          Height = 13.228346460000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDataset."vlFrete"]')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 682.582657640000000000
          Top = 52.913410240000000000
          Width = 68.787408900000000000
          Height = 13.228346460000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            'Frete')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo24: TfrxMemoView
          Left = 274.847438440000000000
          Top = 34.015770000000000000
          Width = 56.692913390000000000
          Height = 13.228346460000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            'Per'#195#173'odo de:')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object DBMdtInicial: TfrxMemoView
          Left = 334.828541220000000000
          Top = 34.015770000000000000
          Width = 75.590551180000000000
          Height = 13.228346460000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo32: TfrxMemoView
          Left = 414.011298670000000000
          Top = 34.015770000000000000
          Width = 24.718126200000000000
          Height = 13.228346460000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'At'#195#169)
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object DBMdtFinal: TfrxMemoView
          Left = 441.968800270000000000
          Top = 34.015770000000000000
          Width = 75.590551180000000000
          Height = 13.228346460000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo28: TfrxMemoView
          Left = 49.133890000000000000
          Top = 34.149630710000000000
          Width = 30.236203390000000000
          Height = 13.228346460000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Safra:')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object LookdescSafra: TfrxMemoView
          Left = 82.463057570000000000
          Top = 34.149630710000000000
          Width = 130.809533300000000000
          Height = 13.228346460000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
      end
      object GroupFooter1: TfrxGroupFooter
        Height = 49.133890000000000000
        Top = 374.173470000000000000
        Width = 793.701300000000000000
        Stretched = True
        object Memo16: TfrxMemoView
          Left = 593.385826770000000000
          Top = 4.913389000000000000
          Width = 74.456692910000000000
          Height = 13.228346460000000000
          DataSet = frxDataset
          DataSetName = 'frxDataset'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDataset."qtDesconto"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo4: TfrxMemoView
          Left = 491.338582680000000000
          Top = 3.779530000000000000
          Width = 86.929133860000000000
          Height = 13.228346460000000000
          DataSet = frxDataset
          DataSetName = 'frxDataset'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDataset."descCadDesconto"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo6: TfrxMemoView
          Left = 672.755905510000000000
          Top = 4.913388270000000000
          Width = 82.771653540000000000
          Height = 13.228346460000000000
          DataSet = frxDataset
          DataSetName = 'frxDataset'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            
              '[(<frxDataset."vlContratoArm">/<frxDataset."qtProduto">)*(<frxDa' +
              'taset."qtPesoLiquido">-<frxDataset."qtDesconto">)]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Line2: TfrxLineView
          Printable = False
          Left = 22.677180000000000000
          Top = 30.236240000000000000
          Width = 737.008350000000000000
          Visible = False
          Frame.Typ = [ftTop]
          Frame.Width = 0.100000000000000000
        end
      end
    end
  end
  object FindContrato: TCFind
    SelectClause.Strings = (
      
        'SELECT idContratoArm, nrContratoArm, descContratoArm FROM Contra' +
        'toArm')
    JoinClause.Strings = (
      'WHERE idCadGeral = [DBEidCliente] AND stContratoArm = '#39'ATIVO'#39' ')
    OrderByClause.Strings = (
      'ORDER BY descContratoArm')
    FindField = 'descContratoArm'
    SQLConnection = dmPadrao.dbConexao
    ValueField = 'idContratoArm'
    CarregaDados = True
    CollumNames.Strings = (
      'C'#243'digo'
      'N'#250'mero'
      'Descri'#231#227'o')
    TypeFind = fFindNormal
    Left = 568
    Top = 272
  end
end
