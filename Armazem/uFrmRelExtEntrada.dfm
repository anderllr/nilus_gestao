inherited FrmRelExtEntrada: TFrmRelExtEntrada
  Caption = 'Extrato de Entrada'
  ClientHeight = 389
  ClientWidth = 786
  ExplicitWidth = 802
  ExplicitHeight = 425
  PixelsPerInch = 96
  TextHeight = 13
  inherited Bevel3: TBevel
    Width = 786
    ExplicitWidth = 695
  end
  inherited Bevel1: TBevel
    Top = 351
    Width = 786
    ExplicitTop = 340
    ExplicitWidth = 695
  end
  inherited Bevel5: TBevel
    Width = 786
    ExplicitWidth = 695
  end
  inherited PanBotoes: TCPanelGradient
    Top = 355
    Width = 786
    ExplicitTop = 355
    ExplicitWidth = 786
  end
  inherited LookdescCadEmpresa: TCLookUp
    Left = 149
    Width = 156
    ExplicitLeft = 149
    ExplicitWidth = 156
  end
  inherited LookdescAbreviada: TCLookUp
    Left = 311
    Width = 162
    ExplicitLeft = 311
    ExplicitWidth = 162
  end
  object CGroupBox1: TCGroupBox [8]
    Left = 8
    Top = 35
    Width = 473
    Height = 110
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
      Top = 85
      Width = 38
      Height = 13
      Alignment = taRightJustify
      Caption = 'Data de'
    end
    object CLabel4: TCLabel
      Left = 113
      Top = 85
      Width = 16
      Height = 13
      Alignment = taRightJustify
      Caption = 'at'#233
    end
    object LblCad: TCLabel
      Left = 10
      Top = 63
      Width = 37
      Height = 13
      Alignment = taRightJustify
      Caption = 'Fornec.'
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
      Width = 255
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
      Left = 369
      Top = 17
      Width = 93
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
      Left = 114
      Top = 38
      Width = 254
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
      Left = 369
      Top = 39
      Width = 93
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
      Top = 82
      Width = 56
      Height = 19
      BevelKind = bkTile
      BorderStyle = bsNone
      DataField = 'dtInicial'
      DataSource = dsPadrao
      MaxLength = 10
      TabOrder = 9
      DecimalControl = True
      KeyMode = kmDate
    end
    object DBEdtFinal: TCDBEdit
      Left = 134
      Top = 82
      Width = 59
      Height = 19
      BevelKind = bkTile
      BorderStyle = bsNone
      DataField = 'dtFinal'
      DataSource = dsPadrao
      MaxLength = 10
      TabOrder = 10
      DecimalControl = True
      KeyMode = kmDate
    end
    object DBEidFornecedor: TCDBEdit
      Left = 53
      Top = 60
      Width = 46
      Height = 19
      BevelKind = bkTile
      BorderStyle = bsNone
      DataField = 'idFornecedor'
      DataSource = dsPadrao
      TabOrder = 6
      Find = FindFornecedor
      DecimalControl = True
      KeyMode = kmNormal
    end
    object DBEidCadFornecedor: TCDBEdit
      Left = 105
      Top = 60
      Width = 35
      Height = 19
      BevelKind = bkTile
      BorderStyle = bsNone
      DataField = 'idCadFornecedor'
      DataSource = dsPadrao
      TabOrder = 7
      DecimalControl = True
      KeyMode = kmNormal
    end
    object LookFornecedorFiscal: TCLookUp
      Left = 146
      Top = 60
      Width = 222
      Height = 19
      Alignment = taLeftJustify
      BevelInner = bvSpace
      BevelOuter = bvLowered
      Color = 14149350
      ParentBackground = False
      TabOrder = 8
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
    object CBitBtn2: TCBitBtn
      Left = 369
      Top = 61
      Width = 93
      Height = 19
      Caption = 'Fornecedores'
      TabOrder = 11
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
  object DBEidCadEmpresa: TCDBEdit [9]
    Left = 109
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
    Left = 552
    Top = 40
  end
  inherited Acao: TActionList
    Left = 520
    Top = 40
  end
  inherited dspRelatorio: TDataSetProvider
    DataSet = dmPadrao.sdsTabela
    Left = 584
    Top = 40
  end
  inherited cdsRelatorio: TClientDataSet
    CommandText = '  EXEC spRelExtEntrada 1,1,0,0,'#39'01/01/2008'#39','#39'10/04/2008'#39',0,0'
    Left = 616
    Top = 40
  end
  inherited frxJPEGExport1: TfrxJPEGExport
    Left = 520
    Top = 104
  end
  inherited frxTIFFExport1: TfrxTIFFExport
    Left = 552
    Top = 104
  end
  inherited frxRTFExport1: TfrxRTFExport
    Left = 584
    Top = 104
  end
  inherited frxSimpleTextExport1: TfrxSimpleTextExport
    Left = 616
    Top = 104
  end
  inherited frxHTMLExport1: TfrxHTMLExport
    Left = 520
    Top = 136
  end
  inherited dspLookUp: TDataSetProvider
    Left = 520
    Top = 200
  end
  inherited cdsLookUp: TClientDataSet
    Left = 552
    Top = 200
  end
  inherited frxXLSExport1: TfrxXLSExport
    Left = 552
    Top = 136
  end
  inherited frxXMLExport1: TfrxXMLExport
    Left = 584
    Top = 136
  end
  inherited frxPDFExport1: TfrxPDFExport
    Left = 616
    Top = 136
  end
  inherited frxODSExport1: TfrxODSExport
    Left = 520
    Top = 168
  end
  inherited frxODTExport1: TfrxODTExport
    Left = 552
    Top = 168
  end
  inherited frxMailExport1: TfrxMailExport
    Left = 616
    Top = 168
  end
  inherited frxCSVExport1: TfrxCSVExport
    Left = 585
    Top = 168
  end
  inherited frxDataset: TfrxDBDataset
    FieldAliases.Strings = (
      'idEmpresa=idEmpresa'
      'idCadEmpresa=idCadEmpresa'
      'descCadEmpresa=descCadEmpresa'
      'idFornecedor=idFornecedor'
      'idCadFornecedor=idCadFornecedor'
      'descCadFornecedor=descCadFornecedor'
      'idProduto=idProduto'
      'descProduto=descProduto'
      'idSafra=idSafra'
      'descSafra=descSafra'
      'dtRomaneio=dtRomaneio'
      'dtLancamento=dtLancamento'
      'idRomaneio=idRomaneio'
      'idNfE=idNfE'
      'Placa=Placa'
      'descBem=descBem'
      'descCadDesconto=descCadDesconto'
      'qtProdDesconto=qtProdDesconto'
      'qtProdBruto=qtProdBruto'
      'qtProdLiquido=qtProdLiquido'
      'idCnpjCpf=idCnpjCpf')
    Left = 584
    Top = 72
  end
  inherited dsPadrao: TDataSource
    Left = 616
    Top = 200
  end
  inherited cdsPadrao: TClientDataSet
    Left = 584
    Top = 200
    object cdsPadraoidEmpresa: TIntegerField
      FieldName = 'idEmpresa'
    end
    object cdsPadraoidCadEmpresa: TIntegerField
      FieldName = 'idCadEmpresa'
    end
    object cdsPadraoidProduto: TIntegerField
      FieldName = 'idProduto'
    end
    object cdsPadraoidSafra: TIntegerField
      FieldName = 'idSafra'
    end
    object cdsPadraoidFornecedor: TIntegerField
      FieldName = 'idFornecedor'
    end
    object cdsPadraoidCadFornecedor: TIntegerField
      FieldName = 'idCadFornecedor'
    end
    object cdsPadraodtInicial: TDateTimeField
      FieldName = 'dtInicial'
    end
    object cdsPadraodtFinal: TDateTimeField
      FieldName = 'dtFinal'
    end
  end
  inherited sdsEmpresa: TSQLDataSet
    Left = 512
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
    ReportOptions.LastChange = 39554.364458182870000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      '                                   '
      
        'procedure GroupHeaderExtEntradaOnBeforePrint(Sender: TfrxCompone' +
        'nt);'
      'begin'
      ' { if <frxDataset."qtProdDesconto"> = 0.00 then'
      '    Begin'
      '      Memo8.visible := false;        '
      '      Memo9.visible := false;        '
      '      Memo11.visible := false;        '
      '      Memo12.visible := false;        '
      '      Memo16.visible := false;'
      '    End;}  '
      '  end;'
      ''
      'begin'
      'end.  ')
    OnAfterPrint = frxRelAfterPrint
    Left = 552
    Top = 72
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
        Top = 444.850681000000000000
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
      object GroupHeaderExtEntrada: TfrxGroupHeader
        Height = 37.905516700000000000
        Top = 240.378108000000000000
        Width = 793.701300000000000000
        OnBeforePrint = 'GroupHeaderExtEntradaOnBeforePrint'
        Condition = '<frxDataset."dtLancamento">'
        ExpandDrillDown = True
        ReprintOnNewPage = True
        Stretched = True
        object Memo8: TfrxMemoView
          Left = 486.463306300000000000
          Top = 20.897640240000000000
          Width = 60.850433000000000000
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
        object Memo9: TfrxMemoView
          Left = 576.755905511811000000
          Top = 20.897640240000000000
          Width = 106.582677165354000000
          Height = 13.228346456692900000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Tipo de desconto')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo11: TfrxMemoView
          Left = 685.606311420000000000
          Top = 20.897640240000000000
          Width = 74.456692910000000000
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
            'Qt.Descontada')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo19: TfrxMemoView
          Left = 170.834635910000000000
          Top = 2.000000000000000000
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
        object MstTituloPag: TfrxMemoView
          Left = 686.362216930000000000
          Top = 2.000000000000000000
          Width = 74.456692910000000000
          Height = 13.228346460000000000
          DataField = 'qtProdBruto'
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
            '[frxDataset."qtProdBruto"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo31: TfrxMemoView
          Left = 46.866141730000000000
          Top = 2.000000000000000000
          Width = 120.566904720000000000
          Height = 13.228346460000000000
          DataField = 'descCadFornecedor'
          DataSet = frxDataset
          DataSetName = 'frxDataset'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDataset."descCadFornecedor"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object DBMvlReal: TfrxMemoView
          Left = 481.511845200000000000
          Top = 2.000000000000000000
          Width = 112.629916380000000000
          Height = 13.228346460000000000
          DataSet = frxDataset
          DataSetName = 'frxDataset'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
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
        object DBMnrTitulo: TfrxMemoView
          Left = 238.488186540000000000
          Top = 2.000000000000000000
          Width = 45.732278580000000000
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
          Left = 360.189015430000000000
          Top = 2.000000000000000000
          Width = 117.165349450000000000
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
          Left = 612.716557400000000000
          Top = 2.000000000000000000
          Width = 52.535433070000000000
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
            '[frxDataset."idNfE"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo20: TfrxMemoView
          Left = 294.803340000000000000
          Top = 2.000000000000000000
          Width = 49.511808580000000000
          Height = 13.228346460000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDataset."Placa"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
      end
      object MasterDataDescontos: TfrxMasterData
        Height = 21.921265460000000000
        Top = 301.228541000000000000
        Width = 793.701300000000000000
        Columns = 1
        ColumnWidth = 200.000000000000000000
        ColumnGap = 20.000000000000000000
        DataSet = frxDataset
        DataSetName = 'frxDataset'
        RowCount = 0
        Stretched = True
        object Memo12: TfrxMemoView
          Left = 576.755905510000000000
          Top = 4.913389000000000000
          Width = 106.582677170000000000
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
            '[frxDataset."descCadDesconto"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo16: TfrxMemoView
          Left = 685.606311420000000000
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
            '[frxDataset."qtProdDesconto"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 98.119774600000000000
        Top = 18.897650000000000000
        Width = 793.701300000000000000
        object Memo3: TfrxMemoView
          Left = 88.937044000000000000
          Top = 84.697684100000000000
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
          Top = 84.477214100000000000
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
          Top = 83.697684100000000000
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
            'Extrato de Entradas no Armaz'#195#169'm')
          ParentFont = False
          WordWrap = False
        end
      end
      object HeaderExtEntrada: TfrxHeader
        Height = 39.685046700000000000
        Top = 177.637910000000000000
        Width = 793.701300000000000000
        object Shape3: TfrxShapeView
          Left = 39.685051570000000000
          Top = 19.880327800000000000
          Width = 721.889751570000000000
          Height = 18.141732280000000000
          Color = 12369084
          Frame.Color = 15790320
        end
        object Memo10: TfrxMemoView
          Left = 170.834635910000000000
          Top = 22.677165350000000000
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
          Left = 360.189015430000000000
          Top = 22.677165350000000000
          Width = 117.165349450000000000
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
          Left = 238.488186540000000000
          Top = 22.677165350000000000
          Width = 45.732278580000000000
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
        object Memo21: TfrxMemoView
          Left = 612.716557400000000000
          Top = 22.677165350000000000
          Width = 52.535433070000000000
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
            'NF Transp.')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo23: TfrxMemoView
          Left = 46.866141732283500000
          Top = 22.677165350000000000
          Width = 120.566904720000000000
          Height = 13.228346460000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Fornecedor')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo4: TfrxMemoView
          Left = 686.362216930000000000
          Top = 22.677165350000000000
          Width = 74.456692910000000000
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
            'Peso Bruto')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo5: TfrxMemoView
          Left = 481.511845200000000000
          Top = 22.677165350000000000
          Width = 112.629916380000000000
          Height = 13.228346460000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Propriedade')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Shape4: TfrxShapeView
          Left = 39.685051570000000000
          Width = 721.889751570000000000
          Height = 17.196861500000000000
          Frame.Width = 0.100000000000000000
        end
        object Memo24: TfrxMemoView
          Left = 370.847470170000000000
          Top = 2.645669290000000000
          Width = 56.692913390000000000
          Height = 13.228346456692900000
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
          Left = 430.828572950000000000
          Top = 2.645669290000000000
          Width = 75.590551180000000000
          Height = 13.228346460000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo32: TfrxMemoView
          Left = 510.011330400000000000
          Top = 2.645669290000000000
          Width = 24.718126200000000000
          Height = 13.228346456692900000
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
          Left = 537.968832000000000000
          Top = 2.645669290000000000
          Width = 75.590551180000000000
          Height = 13.228346460000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo28: TfrxMemoView
          Left = 46.866141732283500000
          Top = 2.779530000000000000
          Width = 49.133853390000000000
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
            'Safra:')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object LookdescSafra: TfrxMemoView
          Left = 99.092959300000000000
          Top = 2.779530000000000000
          Width = 247.974963300000000000
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
        object Memo1: TfrxMemoView
          Left = 294.803340000000000000
          Top = 22.677180000000000000
          Width = 49.511808580000000000
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
            'Placa')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
      end
      object GroupFooterExtEntrada: TfrxGroupFooter
        Height = 37.795300000000000000
        Top = 346.204948000000000000
        Width = 793.701300000000000000
        Stretched = True
        object Line2: TfrxLineView
          Printable = False
          Left = 22.677180000000000000
          Top = 37.795300000000000000
          Width = 737.008350000000000000
          Visible = False
          Frame.Typ = [ftTop]
          Frame.Width = 0.100000000000000000
        end
        object Memo29: TfrxMemoView
          Left = 578.645664410000000000
          Top = 1.133858270000000000
          Width = 101.669310870000000000
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
        object Memo18: TfrxMemoView
          Left = 685.606311420000000000
          Top = 1.133858270000000000
          Width = 74.456692910000000000
          Height = 13.228346460000000000
          DataField = 'qtProdLiquido'
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
            '[frxDataset."qtProdLiquido"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
      end
    end
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
    Left = 521
    Top = 231
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
    Left = 553
    Top = 231
  end
  object FindFornecedor: TCFind
    SelectClause.Strings = (
      
        'SELECT  idFornecedor, descCadFornecedor FROM vCadFornecedorConta' +
        'bil')
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
      'Descri'#231#227'o')
    TypeFind = fFindNormal
    Left = 585
    Top = 231
  end
end
