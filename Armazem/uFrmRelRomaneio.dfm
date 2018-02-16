inherited FrmRelRomaneio: TFrmRelRomaneio
  Caption = 'Rela'#231#227'o de Romaneios'
  ClientHeight = 318
  ClientWidth = 692
  ExplicitWidth = 708
  ExplicitHeight = 354
  PixelsPerInch = 96
  TextHeight = 13
  inherited Bevel3: TBevel
    Width = 692
    Height = 55
    ExplicitLeft = 0
    ExplicitTop = 0
    ExplicitWidth = 522
    ExplicitHeight = 55
  end
  inherited Bevel1: TBevel
    Top = 280
    Width = 692
    ExplicitTop = 229
    ExplicitWidth = 884
  end
  inherited Bevel5: TBevel
    Top = 55
    Width = 692
    ExplicitTop = 55
    ExplicitWidth = 884
  end
  object CLabel1: TCLabel [4]
    Left = 10
    Top = 32
    Width = 43
    Height = 13
    Alignment = taRightJustify
    Caption = 'Cnpj/Cpf'
  end
  object CLabel5: TCLabel [5]
    Left = 219
    Top = 32
    Width = 68
    Height = 13
    Alignment = taRightJustify
    Caption = 'Insc. Estadual'
  end
  inherited PanBotoes: TCPanelGradient
    Top = 284
    Width = 692
    ExplicitTop = 284
    ExplicitWidth = 692
  end
  inherited LookdescCadEmpresa: TCLookUp
    Left = 152
    Key.Strings = (
      'idEmpresa'
      'idCadEmpresa')
    LookUpKey.Strings = (
      'idEmpresa'
      'idCadEmpresa')
    LookUpTable = 'vCadEmpresaFiscal'
    ExplicitLeft = 152
  end
  inherited LookdescAbreviada: TCLookUp
    Left = 360
    Key.Strings = (
      'idEmpresa'
      'idCadEmpresa')
    LookUpKey.Strings = (
      'idEmpresa'
      'idCadEmpresa')
    LookUpTable = 'vCadEmpresaFiscal'
    ExplicitLeft = 360
  end
  object DBEidCadEmpresa: TCDBEdit [10]
    Left = 111
    Top = 7
    Width = 35
    Height = 19
    TabStop = False
    BevelKind = bkTile
    BorderStyle = bsNone
    DataField = 'idCadEmpresa'
    DataSource = dsEmpresa
    TabOrder = 4
    OnKeyDown = DBEidEmpresaKeyDown
    DecimalControl = True
    KeyMode = kmNormal
  end
  object CGroupBox1: TCGroupBox [11]
    Left = 8
    Top = 61
    Width = 502
    Height = 116
    TabOrder = 5
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
      Left = 9
      Top = 85
      Width = 38
      Height = 13
      Alignment = taRightJustify
      Caption = 'Data de'
    end
    object CLabel4: TCLabel
      Left = 139
      Top = 85
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
      Top = 16
      Width = 75
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
      Width = 275
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
      Top = 38
      Width = 75
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
      Left = 53
      Top = 82
      Width = 80
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
      Left = 161
      Top = 82
      Width = 80
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
      OnKeyDown = DBEidClienteKeyDown
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
      OnKeyDown = DBEidClienteKeyDown
      DecimalControl = True
      KeyMode = kmNormal
    end
    object LookClienteFiscal: TCLookUp
      Left = 165
      Top = 60
      Width = 304
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
  end
  object LookidCnpjCpf: TCLookUp [12]
    Left = 59
    Top = 29
    Width = 154
    Height = 19
    Alignment = taLeftJustify
    BevelInner = bvSpace
    BevelOuter = bvLowered
    Color = 14149350
    ParentBackground = False
    TabOrder = 6
    Key.Strings = (
      'idEmpresa'
      'idCadEmpresa')
    LookUpKey.Strings = (
      'idEmpresa'
      'idCadEmpresa')
    ClientDataSet = cdsLookUp
    DataSource = dsEmpresa
    ValidaCampoObrigatorio = False
    CampoObrigatorio = False
    LookUpTable = 'vCadEmpresaFiscal'
    ReturnField = 'idCnpjCpf'
  end
  object LookidInscEstadual: TCLookUp [13]
    Left = 293
    Top = 29
    Width = 154
    Height = 19
    Alignment = taLeftJustify
    BevelInner = bvSpace
    BevelOuter = bvLowered
    Color = 14149350
    ParentBackground = False
    TabOrder = 7
    Key.Strings = (
      'idEmpresa'
      'idCadEmpresa')
    LookUpKey.Strings = (
      'idEmpresa'
      'idCadEmpresa')
    ClientDataSet = cdsLookUp
    DataSource = dsEmpresa
    ValidaCampoObrigatorio = False
    CampoObrigatorio = False
    LookUpTable = 'vCadEmpresaFiscal'
    ReturnField = 'idInscEstadual'
  end
  inherited dspRelatorio: TDataSetProvider
    DataSet = dmPadrao.sdsRelatorio
  end
  inherited cdsRelatorio: TClientDataSet
    CommandText = 'SELECT * FROM vImpRomaneio'
  end
  inherited frxDataset: TfrxDBDataset
    FieldAliases.Strings = (
      'idEmpresa=idEmpresa'
      'idCadEmpresa=idCadEmpresa'
      'idRomaneio=idRomaneio'
      'descEmpresa=descEmpresa'
      'descAbreEmpresa=descAbreEmpresa'
      'CnpjCpfEmpresa=CnpjCpfEmpresa'
      'InscricaoEmpresa=InscricaoEmpresa'
      'InscMunicipalEmpresa=InscMunicipalEmpresa'
      'EnderecoEmpresa=EnderecoEmpresa'
      'ComplementoEmpresa=ComplementoEmpresa'
      'BairroEmpresa=BairroEmpresa'
      'CepEmpresa=CepEmpresa'
      'CidadeEmpresa=CidadeEmpresa'
      'FoneEmpresa=FoneEmpresa'
      'FaxEmpresa=FaxEmpresa'
      'idCliente=idCliente'
      'idCadCliente=idCadCliente'
      'descCliente=descCliente'
      'descAbreCliente=descAbreCliente'
      'CnpjCpfCliente=CnpjCpfCliente'
      'InscricaoCliente=InscricaoCliente'
      'EnderecoCliente=EnderecoCliente'
      'NumeroCliente=NumeroCliente'
      'ComplementoCliente=ComplementoCliente'
      'BairroCliente=BairroCliente'
      'CepCliente=CepCliente'
      'CidadeCliente=CidadeCliente'
      'EstadoCliente=EstadoCliente'
      'FoneCliente=FoneCliente'
      'FaxCliente=FaxCliente'
      'dtRomaneio=dtRomaneio'
      'idProduto=idProduto'
      'descProduto=descProduto'
      'CodMotorista=CodMotorista'
      'descMotorista=descMotorista'
      'CnpjCpfMotorista=CnpjCpfMotorista'
      'Cnh=Cnh'
      'CidadeMotorista=CidadeMotorista'
      'EnderecoMotorista=EnderecoMotorista'
      'EstadoMotorista=EstadoMotorista'
      'descVeiculo=descVeiculo'
      'Placa=Placa'
      'fone=fone'
      'qtPesoBruto=qtPesoBruto'
      'qtPesoLiquido=qtPesoLiquido'
      'qtPesoTara=qtPesoTara'
      'qtProdBruto=qtProdBruto'
      'qtProdLiquido=qtProdLiquido'
      'qtProdDesconto=qtProdDesconto'
      'TipoRomaneio=TipoRomaneio'
      'descBem=descBem'
      'descLocalidade=descLocalidade'
      'descCidade=descCidade'
      'idEstado=idEstado'
      'idSafra=idSafra'
      'descSafra=descSafra'
      'descCadDesconto=descCadDesconto'
      'tpRomaneio=tpRomaneio'
      'descProdDeposito=descProdDeposito'
      'prMedido=prMedido'
      'prDesconto=prDesconto'
      'qtDesconto=qtDesconto')
  end
  inherited cdsPadrao: TClientDataSet
    object cdsPadraoidProduto: TIntegerField
      FieldName = 'idProduto'
    end
    object cdsPadraoidSafra: TIntegerField
      FieldName = 'idSafra'
    end
    object cdsPadraoidCliente: TIntegerField
      FieldName = 'idCliente'
    end
    object cdsPadraodtInicial: TDateTimeField
      FieldName = 'dtInicial'
    end
    object cdsPadraodtFinal: TDateTimeField
      FieldName = 'dtFinal'
    end
    object cdsPadraoidCadCliente: TIntegerField
      FieldName = 'idCadCliente'
    end
  end
  inherited cdsEmpresa: TClientDataSet
    CommandText = 'SELECT * FROM vCadEmpresaFiscal'
  end
  inherited sdsEmpresa: TSQLDataSet
    CommandText = 'SELECT * FROM vCadEmpresaFiscal'
  end
  object frxRel: TfrxReport
    Version = '4.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.MDIChild = True
    PreviewOptions.Modal = False
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.Author = 'Gesys Sistemas de Informa'#231#227'o'
    ReportOptions.CreateDate = 39263.419322395800000000
    ReportOptions.LastChange = 39517.705507442100000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'procedure Page1OnBeforePrint(Sender: TfrxComponent);'
      ''
      
        'begin                                                           ' +
        '                                       '
      ''
      'end;'
      ''
      'begin'
      ''
      'end.')
    OnAfterPrint = frxRelAfterPrint
    Left = 488
    Top = 56
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
      PaperHeight = 287.000000000000000000
      PaperSize = 256
      OnBeforePrint = 'Page1OnBeforePrint'
      object PageFooter1: TfrxPageFooter
        Height = 36.948064400000000000
        Top = 381.732530000000000000
        Width = 793.701300000000000000
        object Memo13: TfrxMemoView
          Left = 340.157700000000000000
          Top = 5.677180000000000000
          Width = 117.165430000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Nilus Report ')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo15: TfrxMemoView
          Left = 26.456692910000000000
          Top = 5.677180000000000000
          Width = 275.905690000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Vita Sistemas de Informa'#195#167#195#163'o Ltda.')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo17: TfrxMemoView
          Left = 700.551640000000000000
          Top = 5.677180000000000000
          Width = 56.692950000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[(<Page>)]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Line1: TfrxLineView
          Left = 26.456692910000000000
          Top = 0.401360000000000000
          Width = 733.228346460000000000
          Frame.Typ = [ftTop]
          Frame.Width = 0.100000000000000000
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 141.354422000000000000
        Top = 18.897650000000000000
        Width = 793.701300000000000000
        object Memo1: TfrxMemoView
          Left = 26.456692910000000000
          Top = 28.346456690000000000
          Width = 733.228346460000000000
          Height = 34.015770000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -24
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'Rela'#195#167#195#163'o de Romaneios')
          ParentFont = False
          WordWrap = False
        end
        object Shape2: TfrxShapeView
          Left = 25.965371100000000000
          Top = 66.103979700000000000
          Width = 734.022521300000000000
          Height = 53.971688400000000000
        end
        object LookdescCadEmpresa: TfrxMemoView
          Left = 83.535484090000000000
          Top = 68.069335300000000000
          Width = 331.578166900000000000
          Height = 12.434646380000000000
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
          Left = 28.988995100000000000
          Top = 68.848865300000000000
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
          Left = 31.960654090000000000
          Top = 99.762285300000000000
          Width = 46.714990800000000000
          Height = 11.338582680000000000
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
        object Memo8: TfrxMemoView
          Left = 231.522946030000000000
          Top = 100.762285300000000000
          Width = 30.207757900000000000
          Height = 10.809448480000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Safra')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object LookdescProduto: TfrxMemoView
          Left = 84.527614590000000000
          Top = 99.875671200000000000
          Width = 141.581193800000000000
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
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object LookdescSafra: TfrxMemoView
          Left = 265.471037890000000000
          Top = 99.875671200000000000
          Width = 148.573324300000000000
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
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object LookidCnpjCpf: TfrxMemoView
          Left = 83.009517880000000000
          Top = 84.121332900000000000
          Width = 116.636295800000000000
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
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo20: TfrxMemoView
          Left = 43.450440790000000000
          Top = 83.900862900000000000
          Width = 35.074038400000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'CNPJ :')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object LookidInscEstadual: TfrxMemoView
          Left = 278.978148380000000000
          Top = 84.577996400000000000
          Width = 135.609536400000000000
          Height = 11.036220280000000000
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
        object Memo21: TfrxMemoView
          Left = 204.437945690000000000
          Top = 84.357526400000000000
          Width = 71.055164000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Insc. Estadual :')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Shape1: TfrxShapeView
          Left = 26.003166400000000000
          Top = 121.133936500000000000
          Width = 744.566936460000000000
          Height = 18.897650000000000000
          Color = 15790320
          Frame.Color = 15790320
        end
        object Memo31: TfrxMemoView
          Left = 87.911901980000000000
          Top = 123.023700280000000000
          Width = 49.133858270000000000
          Height = 15.118110240000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Romaneio')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo33: TfrxMemoView
          Left = 141.548151280000000000
          Top = 123.023700280000000000
          Width = 130.393700790000000000
          Height = 15.118110240000000000
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
        object Memo34: TfrxMemoView
          Left = 26.003166400000000000
          Top = 123.023700280000000000
          Width = 47.244094490000000000
          Height = 15.118110240000000000
          AutoWidth = True
          DataSet = frxDataset
          DataSetName = 'frxDataset'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Data Mvt')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo35: TfrxMemoView
          Left = 275.830133580000000000
          Top = 123.023700280000000000
          Width = 58.582674720000000000
          Height = 15.118110240000000000
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
        object Memo36: TfrxMemoView
          Left = 362.041212880000000000
          Top = 123.023700280000000000
          Width = 41.574788500000000000
          Height = 15.118110240000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'PsBruto')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo37: TfrxMemoView
          Left = 436.515276080000000000
          Top = 123.023700280000000000
          Width = 34.015728500000000000
          Height = 15.118110240000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'PsTara')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo38: TfrxMemoView
          Left = 486.223648610000000000
          Top = 123.023700280000000000
          Width = 77.480324720000000000
          Height = 15.118110240000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Descontos')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo39: TfrxMemoView
          Left = 585.215779470000000000
          Top = 123.023700280000000000
          Width = 30.236220470000000000
          Height = 15.118110240000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Indice')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo40: TfrxMemoView
          Left = 625.656721920000000000
          Top = 123.023700280000000000
          Width = 26.456692910000000000
          Height = 15.118110240000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Perc')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo41: TfrxMemoView
          Left = 662.772113180000000000
          Top = 123.023700280000000000
          Width = 41.574798270000000000
          Height = 15.118110240000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Qd.Desc')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo42: TfrxMemoView
          Left = 709.719699400000000000
          Top = 123.023700280000000000
          Width = 56.692913390000000000
          Height = 15.118110240000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Ps.Liquido')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
      end
      object MasterData1: TfrxMasterData
        Height = 17.083465840000000000
        Top = 257.008040000000000000
        Width = 793.701300000000000000
        DataSet = frxDataset
        DataSetName = 'frxDataset'
        RowCount = 0
        object Memo11: TfrxMemoView
          Left = 487.962530200000000000
          Width = 77.480324720000000000
          Height = 15.118110240000000000
          AutoWidth = True
          DataField = 'descCadDesconto'
          DataSet = frxDataset
          DataSetName = 'frxDataset'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '[frxDataset."descCadDesconto"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo12: TfrxMemoView
          Left = 586.954661060000000000
          Width = 30.236220470000000000
          Height = 15.118110240000000000
          AutoWidth = True
          DataSet = frxDataset
          DataSetName = 'frxDataset'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDataset."prMedido"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo14: TfrxMemoView
          Left = 627.395603510000000000
          Width = 26.456692910000000000
          Height = 15.118110240000000000
          AutoWidth = True
          DataField = 'prDesconto'
          DataSet = frxDataset
          DataSetName = 'frxDataset'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDataset."prDesconto"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo16: TfrxMemoView
          Left = 664.434954060000000000
          Width = 41.574803150000000000
          Height = 15.118110240000000000
          AutoWidth = True
          DataField = 'qtDesconto'
          DataSet = frxDataset
          DataSetName = 'frxDataset'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDataset."qtDesconto"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
      end
      object GroupHeader1: TfrxGroupHeader
        Height = 15.118110240000000000
        Top = 219.212740000000000000
        Width = 793.701300000000000000
        Condition = '<frxDataset."idRomaneio">'
        object Memo2: TfrxMemoView
          Left = 26.003166400000000000
          Width = 47.244094490000000000
          Height = 15.118110240000000000
          AutoWidth = True
          DataSet = frxDataset
          DataSetName = 'frxDataset'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '[frxDataset."dtRomaneio"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo3: TfrxMemoView
          Left = 99.326015690000000000
          Width = 34.015730940000000000
          Height = 15.118110240000000000
          AutoWidth = True
          DataField = 'idRomaneio'
          DataSet = frxDataset
          DataSetName = 'frxDataset'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDataset."idRomaneio"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo4: TfrxMemoView
          Left = 141.656709710000000000
          Width = 130.393700790000000000
          Height = 15.118110240000000000
          AutoWidth = True
          DataField = 'descCliente'
          DataSet = frxDataset
          DataSetName = 'frxDataset'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '[frxDataset."descCliente"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo6: TfrxMemoView
          Left = 279.231693490000000000
          Width = 58.582674720000000000
          Height = 15.118110240000000000
          AutoWidth = True
          DataField = 'Placa'
          DataSet = frxDataset
          DataSetName = 'frxDataset'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '[frxDataset."Placa"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo9: TfrxMemoView
          Left = 343.483703490000000000
          Width = 60.472438500000000000
          Height = 15.118110240000000000
          AutoWidth = True
          DataSet = frxDataset
          DataSetName = 'frxDataset'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDataset."qtPesoBruto"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo10: TfrxMemoView
          Left = 411.515243490000000000
          Width = 60.472438500000000000
          Height = 15.118110240000000000
          AutoWidth = True
          DataSet = frxDataset
          DataSetName = 'frxDataset'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDataset."qtPesoTara"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
      end
      object GroupFooter1: TfrxGroupFooter
        Height = 22.677180000000000000
        Top = 298.582870000000000000
        Width = 793.701300000000000000
        object Memo18: TfrxMemoView
          Left = 710.173228350000000000
          Width = 56.692918270000000000
          Height = 15.118110240000000000
          AutoWidth = True
          DataSet = frxDataset
          DataSetName = 'frxDataset'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            '[<frxDataset."qtPesoLiquido"> - <frxDataset."qtProdDesconto">]')
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
    Left = 489
    Top = 215
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
    Left = 457
    Top = 215
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
    Left = 521
    Top = 215
  end
end
