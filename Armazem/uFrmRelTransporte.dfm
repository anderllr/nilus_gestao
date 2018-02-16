inherited FrmRelTransporte: TFrmRelTransporte
  Caption = 'Rela'#231#227'o de Transportes'
  ClientHeight = 403
  ClientWidth = 774
  ExplicitWidth = 790
  ExplicitHeight = 439
  PixelsPerInch = 96
  TextHeight = 13
  inherited Bevel3: TBevel
    Width = 774
    ExplicitWidth = 817
  end
  inherited Bevel1: TBevel
    Top = 365
    Width = 774
    ExplicitTop = 399
    ExplicitWidth = 817
  end
  inherited Bevel5: TBevel
    Width = 774
    ExplicitWidth = 817
  end
  inherited PanBotoes: TCPanelGradient
    Top = 369
    Width = 774
    ExplicitTop = 369
    ExplicitWidth = 774
  end
  inherited LookdescCadEmpresa: TCLookUp
    Left = 159
    Width = 178
    Key.Strings = (
      'idEmpresa'
      'idCadEmpresa')
    LookUpKey.Strings = (
      'idEmpresa'
      'idCadEmpresa')
    LookUpTable = 'vCadEmpresaFiscal'
    ExplicitLeft = 159
    ExplicitWidth = 178
  end
  inherited LookdescAbreviada: TCLookUp
    Left = 343
    Width = 178
    Key.Strings = (
      'idEmpresa'
      'idCadEmpresa')
    LookUpKey.Strings = (
      'idEmpresa'
      'idCadEmpresa')
    LookUpTable = 'vCadEmpresaFiscal'
    ExplicitLeft = 343
    ExplicitWidth = 178
  end
  object CGroupBox1: TCGroupBox [8]
    Left = 8
    Top = 34
    Width = 513
    Height = 135
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
    object CLabel6: TCLabel
      Left = 14
      Top = 41
      Width = 33
      Height = 13
      Alignment = taRightJustify
      Caption = 'Cliente'
      Transparent = True
    end
    object CLabel30: TCLabel
      Left = 21
      Top = 63
      Width = 26
      Height = 13
      Alignment = taRightJustify
      Caption = 'Safra'
    end
    object CLabel3: TCLabel
      Left = 7
      Top = 108
      Width = 38
      Height = 13
      Alignment = taRightJustify
      Caption = 'Data de'
    end
    object CLabel4: TCLabel
      Left = 132
      Top = 108
      Width = 16
      Height = 13
      Alignment = taRightJustify
      Caption = 'at'#233
    end
    object CLabel9: TCLabel
      Left = 2
      Top = 85
      Width = 45
      Height = 13
      Alignment = taRightJustify
      Caption = 'Motorista'
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
      DecimalControl = True
      KeyMode = kmNormal
    end
    object LookdescProduto: TCLookUp
      Left = 113
      Top = 17
      Width = 298
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
      Left = 417
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
    object DBEidCliente: TCDBEdit
      Left = 53
      Top = 38
      Width = 54
      Height = 19
      BevelKind = bkTile
      BorderStyle = bsNone
      DataField = 'idCliente'
      DataSource = dsPadrao
      TabOrder = 3
      DecimalControl = True
      KeyMode = kmNormal
    end
    object DBEidCadCliente: TCDBEdit
      Left = 113
      Top = 38
      Width = 46
      Height = 19
      BevelKind = bkTile
      BorderStyle = bsNone
      DataField = 'idCadCliente'
      DataSource = dsPadrao
      TabOrder = 4
      DecimalControl = True
      KeyMode = kmNormal
    end
    object LookClienteFiscal: TCLookUp
      Left = 166
      Top = 38
      Width = 245
      Height = 19
      Alignment = taLeftJustify
      BevelInner = bvSpace
      BevelOuter = bvLowered
      Color = 14149350
      ParentBackground = False
      TabOrder = 5
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
    object CBitBtn2: TCBitBtn
      Left = 417
      Top = 39
      Width = 80
      Height = 19
      Caption = '&Clientes/Fornecedores'
      TabOrder = 6
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
    object DBEidSafra: TCDBEdit
      Left = 53
      Top = 60
      Width = 54
      Height = 19
      BevelKind = bkTile
      BorderStyle = bsNone
      DataField = 'idSafra'
      DataSource = dsPadrao
      TabOrder = 7
      AcaoCad = frmPrincipal.actCadSafra
      DecimalControl = True
      KeyMode = kmNormal
    end
    object LookdescSafra: TCLookUp
      Left = 113
      Top = 60
      Width = 298
      Height = 19
      Alignment = taLeftJustify
      BevelInner = bvSpace
      BevelOuter = bvLowered
      Color = 14149350
      ParentBackground = False
      TabOrder = 8
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
      Left = 417
      Top = 61
      Width = 80
      Height = 19
      Action = frmPrincipal.actCadSafra
      Caption = '&Safra'
      TabOrder = 9
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
      Left = 53
      Top = 105
      Width = 75
      Height = 19
      BevelKind = bkTile
      BorderStyle = bsNone
      DataField = 'dtInicial'
      DataSource = dsPadrao
      MaxLength = 10
      TabOrder = 13
      DecimalControl = True
      KeyMode = kmDate
    end
    object DBEdtFinal: TCDBEdit
      Left = 151
      Top = 105
      Width = 80
      Height = 19
      BevelKind = bkTile
      BorderStyle = bsNone
      DataField = 'dtFinal'
      DataSource = dsPadrao
      MaxLength = 10
      TabOrder = 14
      DecimalControl = True
      KeyMode = kmDate
    end
    object DBEidMotorista: TCDBEdit
      Left = 53
      Top = 82
      Width = 54
      Height = 19
      BevelKind = bkTile
      BorderStyle = bsNone
      DataField = 'idMotorista'
      DataSource = dsPadrao
      TabOrder = 10
      DecimalControl = True
      KeyMode = kmNormal
    end
    object LookdescMotorista: TCLookUp
      Left = 113
      Top = 82
      Width = 298
      Height = 19
      Alignment = taLeftJustify
      BevelInner = bvSpace
      BevelOuter = bvLowered
      Color = 14149350
      ParentBackground = False
      TabOrder = 11
      Key.Strings = (
        'idMotorista')
      LookUpKey.Strings = (
        'idMotorista')
      ClientDataSet = cdsLookUp
      DataSource = dsPadrao
      ValidaCampoObrigatorio = True
      CampoObrigatorio = True
      LookUpTable = 'Motorista'
      ReturnField = 'descMotorista'
    end
    object BtnCadMotorista: TCBitBtn
      Left = 417
      Top = 83
      Width = 80
      Height = 19
      Caption = '&Motorista'
      TabOrder = 12
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
  end
  object DBEidCadEmpresa: TCDBEdit [9]
    Left = 111
    Top = 7
    Width = 42
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
    Left = 608
    Top = 88
  end
  inherited Acao: TActionList
    Left = 576
    Top = 88
  end
  inherited dspRelatorio: TDataSetProvider
    DataSet = dmPadrao.sdsTabela
    Left = 640
    Top = 88
  end
  inherited cdsRelatorio: TClientDataSet
    CommandText = 'EXEC spRelTransporte 1,1,113,1122,1,1,3,'#39'04/03/08'#39','#39'28/03/08'#39
    Left = 672
    Top = 88
  end
  inherited frxJPEGExport1: TfrxJPEGExport
    Left = 576
    Top = 152
  end
  inherited frxTIFFExport1: TfrxTIFFExport
    Left = 608
    Top = 152
  end
  inherited frxRTFExport1: TfrxRTFExport
    Left = 640
    Top = 152
  end
  inherited frxSimpleTextExport1: TfrxSimpleTextExport
    Left = 672
    Top = 152
  end
  inherited frxHTMLExport1: TfrxHTMLExport
    Left = 576
    Top = 184
  end
  inherited dspLookUp: TDataSetProvider
    Left = 576
    Top = 248
  end
  inherited cdsLookUp: TClientDataSet
    Left = 608
    Top = 248
  end
  inherited frxXLSExport1: TfrxXLSExport
    Left = 608
    Top = 184
  end
  inherited frxXMLExport1: TfrxXMLExport
    Left = 640
    Top = 184
  end
  inherited frxPDFExport1: TfrxPDFExport
    Left = 672
    Top = 184
  end
  inherited frxODSExport1: TfrxODSExport
    Left = 576
    Top = 216
  end
  inherited frxODTExport1: TfrxODTExport
    Left = 608
    Top = 216
  end
  inherited frxMailExport1: TfrxMailExport
    Left = 672
    Top = 216
  end
  inherited frxCSVExport1: TfrxCSVExport
    Left = 641
    Top = 216
  end
  inherited frxDataset: TfrxDBDataset
    FieldAliases.Strings = (
      'nrTotal=nrTotal'
      'idEmpresa=idEmpresa'
      'idCadEmpresa=idCadEmpresa'
      'idProduto=idProduto'
      'descProduto=descProduto'
      'idCliente=idCliente'
      'idCadCliente=idCadCliente'
      'descAbreviada=descAbreviada'
      'idSafra=idSafra'
      'descSafra=descSafra'
      'idMotorista=idMotorista'
      'descMotorista=descMotorista'
      'placa=placa'
      'idRomaneio=idRomaneio'
      'qtPesoLiquido=qtPesoLiquido'
      'dtRomaneio=dtRomaneio'
      'idNf=idNf'
      'idNfT=idNfT'
      'idBem=idBem'
      'descBem=descBem'
      'idTalhao=idTalhao')
    Left = 640
    Top = 120
  end
  inherited dsPadrao: TDataSource
    Left = 672
    Top = 248
  end
  inherited cdsPadrao: TClientDataSet
    Left = 640
    Top = 248
    object cdsPadraoidEmpresa: TIntegerField
      FieldName = 'idEmpresa'
    end
    object cdsPadraoidCadEmpresa: TIntegerField
      FieldName = 'idCadEmpresa'
    end
    object cdsPadraoidProduto: TIntegerField
      FieldName = 'idProduto'
    end
    object cdsPadraoidCliente: TIntegerField
      FieldName = 'idCliente'
    end
    object cdsPadraoidCadCliente: TIntegerField
      FieldName = 'idCadCliente'
    end
    object cdsPadraoidSafra: TIntegerField
      FieldName = 'idSafra'
    end
    object cdsPadraoidMotorista: TIntegerField
      FieldName = 'idMotorista'
    end
    object cdsPadraodtInicial: TDateTimeField
      FieldName = 'dtInicial'
    end
    object cdsPadraodtFinal: TDateTimeField
      FieldName = 'dtFinal'
    end
  end
  inherited dspEmpresa: TDataSetProvider
    Left = 608
    Top = 48
  end
  inherited cdsEmpresa: TClientDataSet
    CommandText = 'SELECT * FROM vCadEmpresaFiscal'
    Left = 640
    Top = 48
  end
  inherited dsEmpresa: TDataSource
    Left = 672
    Top = 48
  end
  inherited FindEmpresa: TCFind
    Left = 704
    Top = 48
  end
  inherited sdsEmpresa: TSQLDataSet
    Left = 576
    Top = 48
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
    Left = 576
    Top = 280
  end
  object FindMotorista: TCFind
    SelectClause.Strings = (
      
        'SELECT idMotorista, descMotorista, Cnh, idCnpjCpf  FROM Motorist' +
        'a')
    OrderByClause.Strings = (
      'ORDER BY descMotorista')
    FindField = 'descMotorista'
    SQLConnection = dmPadrao.dbConexao
    ValueField = 'idMotorista'
    CarregaDados = True
    CollumNames.Strings = (
      'C'#243'digo'
      'Nome'
      'CNH'
      'CNPJ/CPF')
    TypeFind = fFindNormal
    Left = 608
    Top = 281
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
    Left = 673
    Top = 279
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
    Left = 641
    Top = 279
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
    ReportOptions.LastChange = 39553.606488715300000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'var nrTotal, psLiquido, psMedio: real;               '
      ''
      'begin'
      '  nrTotal := MAX(<frxDataset."nrTotal">);'
      
        '  psLiquido := SUM(<frxDataset."qtPesoLiquido">);               ' +
        '                                                                ' +
        '                          '
      '  psMedio := psLiquido / nrTotal;'
      ''
      '               '
      '                                                   '
      'end.')
    OnAfterPrint = frxRelAfterPrint
    Left = 608
    Top = 120
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
      PaperSize = 256
      object PageFooter1: TfrxPageFooter
        Height = 28.133890000000000000
        Top = 411.590817000000000000
        Width = 793.701300000000000000
        object Memo13: TfrxMemoView
          Left = 340.157700000000000000
          Top = 8.677180000000000000
          Width = 117.165430000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Nilus Report ')
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo15: TfrxMemoView
          Left = 15.118110240000000000
          Top = 8.677180000000000000
          Width = 275.905690000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Vita Sistemas de Informa'#195#167#195#163'o Ltda.')
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo17: TfrxMemoView
          Left = 696.772110000000000000
          Top = 8.677180000000000000
          Width = 56.692950000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[(<Page>)]')
          ParentFont = False
          VAlign = vaBottom
        end
        object Line1: TfrxLineView
          Left = 13.661400240000000000
          Top = 2.401360000000000000
          Width = 740.787386930000000000
          Frame.Typ = [ftTop]
          Frame.Width = 0.100000000000000000
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 100.157543780000000000
        Top = 18.897650000000000000
        Width = 793.701300000000000000
        object Line2: TfrxLineView
          Left = 26.456700240000000000
          Top = 0.000002439999999999
          Width = 763.464566930000000000
          Frame.Typ = [ftTop]
          Frame.Width = 0.100000000000000000
        end
        object Memo1: TfrxMemoView
          Left = 7.559060000000000000
          Top = 22.677180000000000000
          Width = 786.142240000000000000
          Height = 34.015770000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -24
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'Rela'#195#167#195#163'o de Transportes')
          ParentFont = False
        end
        object LookCadEmpresa: TfrxMemoView
          Left = 81.003198990000000000
          Top = 68.031540000000000000
          Width = 331.578166900000000000
          Height = 13.228346456692900000
          AutoWidth = True
          DataSet = frxDataset
          DataSetName = 'frxDataset'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          Left = 26.456710000000000000
          Top = 68.811070000000000000
          Width = 50.003181900000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            'Empresa :')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo5: TfrxMemoView
          Left = 442.205000240000000000
          Top = 85.039423780000000000
          Width = 49.133890000000000000
          Height = 13.228346460000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Motorista:')
          ParentFont = False
          VAlign = vaBottom
        end
        object LookdescMotorista: TfrxMemoView
          Left = 498.897960000000000000
          Top = 85.039423780000000000
          Width = 196.535560000000000000
          Height = 13.228346460000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          VAlign = vaBottom
        end
        object LookDescSafra: TfrxMemoView
          Left = 306.141930000000000000
          Top = 85.039423780000000000
          Width = 113.385900000000000000
          Height = 13.228346460000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo6: TfrxMemoView
          Left = 26.456710000000000000
          Top = 85.039423780000000000
          Width = 64.252010000000000000
          Height = 13.228346460000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Periodo de:')
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo10: TfrxMemoView
          Left = 154.960730000000000000
          Top = 85.039423780000000000
          Width = 18.897650000000000000
          Height = 13.228346460000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'at'#195#169)
          ParentFont = False
          VAlign = vaBottom
        end
        object DBMdtInicial: TfrxMemoView
          Left = 94.488250000000000000
          Top = 85.039423780000000000
          Width = 56.692950000000000000
          Height = 13.228346460000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          VAlign = vaBottom
        end
        object DBMdtFinal: TfrxMemoView
          Left = 177.637910000000000000
          Top = 85.039423780000000000
          Width = 75.590600000000000000
          Height = 13.228346460000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo12: TfrxMemoView
          Left = 272.126160000000000000
          Top = 85.039423780000000000
          Width = 30.236240000000000000
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
          VAlign = vaBottom
        end
      end
      object MasterData2: TfrxMasterData
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        Height = 18.897650000000000000
        ParentFont = False
        Top = 225.637941000000000000
        Width = 793.701300000000000000
        Columns = 1
        ColumnWidth = 149.291338582677000000
        ColumnGap = 10.000000000000000000
        DataSet = frxDataset
        DataSetName = 'frxDataset'
        RowCount = 0
        object LookdescCadCliente: TfrxMemoView
          Left = 147.401670000000000000
          Top = 5.669293780000000000
          Width = 98.267780000000000000
          Height = 13.228346460000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDataset."descAbreviada"]')
          ParentFont = False
          VAlign = vaBottom
        end
        object LookdescProduto: TfrxMemoView
          Left = 257.008040000000000000
          Top = 5.669293780000000000
          Width = 94.488250000000000000
          Height = 13.228346460000000000
          AutoWidth = True
          DataField = 'descProduto'
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
          VAlign = vaBottom
        end
        object Memo24: TfrxMemoView
          Left = 86.929138740000000000
          Top = 5.669293780000000000
          Width = 44.976377950000000000
          Height = 13.228346460000000000
          DataField = 'idRomaneio'
          DataSet = frxDataset
          DataSetName = 'frxDataset'
          DisplayFormat.DecimalSeparator = ','
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
        object Memo27: TfrxMemoView
          Left = 26.456692910000000000
          Top = 5.669293780000000000
          Width = 48.755905510000000000
          Height = 13.228346460000000000
          DataField = 'dtRomaneio'
          DataSet = frxDataset
          DataSetName = 'frxDataset'
          DisplayFormat.DecimalSeparator = ','
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
        object Memo29: TfrxMemoView
          Left = 472.441250000000000000
          Top = 5.669293780000000000
          Width = 41.196855280000000000
          Height = 13.228346460000000000
          DataField = 'idNf'
          DataSet = frxDataset
          DataSetName = 'frxDataset'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDataset."idNf"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo33: TfrxMemoView
          Left = 529.134200000000000000
          Top = 5.669293780000000000
          Width = 101.669335280000000000
          Height = 13.228346460000000000
          DataField = 'descBem'
          DataSet = frxDataset
          DataSetName = 'frxDataset'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDataset."descBem"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo35: TfrxMemoView
          Left = 642.520100000000000000
          Top = 5.669293780000000000
          Width = 29.858265280000000000
          Height = 13.228346460000000000
          DataField = 'idTalhao'
          DataSet = frxDataset
          DataSetName = 'frxDataset'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDataset."idTalhao"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo37: TfrxMemoView
          Left = 680.315400000000000000
          Top = 5.669293780000000000
          Width = 75.212625280000000000
          Height = 13.228346460000000000
          DataField = 'qtPesoLiquido'
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
        object Memo3: TfrxMemoView
          Left = 409.189240000000000000
          Top = 5.669293780000000000
          Width = 48.755915280000000000
          Height = 13.228346460000000000
          DataField = 'idNfT'
          DataSet = frxDataset
          DataSetName = 'frxDataset'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDataset."idNfT"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo23: TfrxMemoView
          Left = 359.055350000000000000
          Top = 5.669293780000000000
          Width = 44.976385280000000000
          Height = 13.228346460000000000
          DataField = 'placa'
          DataSet = frxDataset
          DataSetName = 'frxDataset'
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
      end
      object GroupHeader1: TfrxGroupHeader
        Height = 22.677187330000000000
        Top = 179.905628000000000000
        Width = 793.701300000000000000
        Condition = 'frxDataset."idRomaneio"'
        object Shape2: TfrxShapeView
          Left = 22.677180000000000000
          Top = 3.669293780000000000
          Width = 737.008350000000000000
          Height = 18.897650000000000000
          Color = clSilver
          Frame.Width = 0.100000000000000000
          Shape = skRoundRectangle
        end
        object Memo4: TfrxMemoView
          Left = 359.055350000000000000
          Top = 6.803152050000000000
          Width = 29.858265280000000000
          Height = 13.228346460000000000
          DataSet = frxDataset
          DataSetName = 'frxDataset'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            'Placa')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo8: TfrxMemoView
          Left = 257.055227950000000000
          Top = 6.803152050000000000
          Width = 39.921150000000000000
          Height = 13.228346460000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Produto')
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo2: TfrxMemoView
          Left = 147.401670000000000000
          Top = 6.803152050000000000
          Width = 100.393630000000000000
          Height = 13.228346460000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Cliente:')
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo9: TfrxMemoView
          Left = 86.929138740000000000
          Top = 6.803152050000000000
          Width = 44.976377950000000000
          Height = 13.228346460000000000
          DataSet = frxDataset
          DataSetName = 'frxDataset'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            'Romaneio')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo14: TfrxMemoView
          Left = 413.968770000000000000
          Top = 6.803152050000000000
          Width = 44.976385280000000000
          Height = 13.228346460000000000
          DataSet = frxDataset
          DataSetName = 'frxDataset'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            'N.F.Trans')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo26: TfrxMemoView
          Left = 26.456692910000000000
          Top = 6.803152050000000000
          Width = 48.755905510000000000
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
            'Dt.Entrada')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo28: TfrxMemoView
          Left = 468.661720000000000000
          Top = 6.803152050000000000
          Width = 44.976385280000000000
          Height = 13.228346460000000000
          DataSet = frxDataset
          DataSetName = 'frxDataset'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            'N.F.Saida')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo32: TfrxMemoView
          Left = 529.134200000000000000
          Top = 6.803152050000000000
          Width = 101.669335280000000000
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
            'Endere'#195#167'o')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo34: TfrxMemoView
          Left = 638.740570000000000000
          Top = 6.803152050000000000
          Width = 33.637795280000000000
          Height = 13.228346460000000000
          DataSet = frxDataset
          DataSetName = 'frxDataset'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            'Talh'#195#163'o')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo36: TfrxMemoView
          Left = 692.094930000000000000
          Top = 6.803152050000000000
          Width = 56.314975280000000000
          Height = 13.228346460000000000
          DataSet = frxDataset
          DataSetName = 'frxDataset'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            'PesoLiquido')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
      end
      object GroupFooter1: TfrxGroupFooter
        Height = 83.149650240000000000
        Top = 267.590724000000000000
        Width = 793.701300000000000000
        object Memo41: TfrxMemoView
          Left = 661.417750000000000000
          Top = 30.236240000000000000
          Width = 94.110275280000000000
          Height = 15.118110240000000000
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
            '[SUM(<frxDataset."qtPesoLiquido">)]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo11: TfrxMemoView
          Printable = False
          Left = 464.882190000000000000
          Top = 60.472480000000000000
          Width = 67.653565280000000000
          Height = 15.118110240000000000
          Visible = False
          DataSet = frxDataset
          DataSetName = 'frxDataset'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[MAX(<frxDataset."nrTotal">)]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo44: TfrxMemoView
          Left = 661.417750000000000000
          Top = 49.133890000000000000
          Width = 94.110275280000000000
          Height = 15.118110240000000000
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
            
              '[(SUM(<frxDataset."qtPesoLiquido">))/MAX(<frxDataset."nrTotal">)' +
              ']')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo42: TfrxMemoView
          Left = 661.417750000000000000
          Top = 67.811070000000000000
          Width = 94.110275280000000000
          Height = 15.118110240000000000
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
            '[SUM(<frxDataset."qtPesoLiquido">)/60]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo38: TfrxMemoView
          Left = 585.827150000000000000
          Top = 30.456710000000000000
          Width = 71.433095280000000000
          Height = 15.118110240000000000
          DataSet = frxDataset
          DataSetName = 'frxDataset'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            'Total Opera'#195#167#195#163'o:')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo39: TfrxMemoView
          Left = 600.945270000000000000
          Top = 49.354360000000000000
          Width = 56.314975280000000000
          Height = 15.118110240000000000
          DataSet = frxDataset
          DataSetName = 'frxDataset'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            'Peso M'#195#169'dio:')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo40: TfrxMemoView
          Left = 619.842920000000000000
          Top = 68.031540000000000000
          Width = 37.417325280000000000
          Height = 15.118110240000000000
          DataSet = frxDataset
          DataSetName = 'frxDataset'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            'Sacas:')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
      end
    end
  end
end
