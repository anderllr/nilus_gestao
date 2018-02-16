inherited uFrmFaturamento: TuFrmFaturamento
  Caption = 'uFrmFaturamento'
  ExplicitWidth = 649
  ExplicitHeight = 469
  PixelsPerInch = 96
  TextHeight = 13
  object CLabel1: TCLabel [1]
    Left = 8
    Top = 9
    Width = 41
    Height = 13
    Alignment = taRightJustify
    Caption = 'Empresa'
  end
  object Bevel3: TBevel [2]
    Left = 0
    Top = 0
    Width = 633
    Height = 28
    Align = alTop
    ExplicitLeft = -172
    ExplicitWidth = 805
  end
  object cd_empresa: TCEdit [4]
    Left = 55
    Top = 6
    Width = 57
    Height = 19
    Alignment = taRightJustify
    BorderStyle = bsNone
    BevelKind = bkTile
    TabOrder = 1
    DataType = ftUnknown
    KeyMode = kmInteger
    Decimals = 0
  end
  object LookRazao: TCLookUp [5]
    Left = 118
    Top = 6
    Width = 281
    Height = 19
    Alignment = taLeftJustify
    BevelInner = bvSpace
    BevelOuter = bvLowered
    Color = 14149350
    ParentBackground = False
    TabOrder = 2
    Key.Strings = (
      'cd_empresa')
    LookUpKey.Strings = (
      'cd_empresa')
    ValidaCampoObrigatorio = False
    CampoObrigatorio = True
    LookUpTable = 'vCadastroEmpresa'
    ReturnField = 'razao'
  end
  object CDBRadioGroup1: TCDBRadioGroup [6]
    Left = 8
    Top = 34
    Width = 391
    Height = 151
    Caption = 'Op'#231#245'es'
    ParentBackground = True
    TabOrder = 3
  end
  object CDBRadioGroup2: TCDBRadioGroup [7]
    Left = 16
    Top = 48
    Width = 369
    Height = 57
    Caption = 'Nota Fiscal de Entrada'
    DataField = 'dtFaturamento'
    DataSource = dsPadrao
    Items.Strings = (
      'Data de Emiss'#227'o'
      'Data de Saida')
    ParentBackground = True
    TabOrder = 4
  end
  object CDBRadioGroup3: TCDBRadioGroup [8]
    Left = 16
    Top = 111
    Width = 369
    Height = 57
    Caption = 'Nota Fiscal de Saida'
    DataField = 'dtFaturamento'
    DataSource = dsPadrao
    Items.Strings = (
      'Data de Emiss'#227'o'
      'Data de Lan'#231'amento')
    ParentBackground = True
    TabOrder = 5
  end
  object CBitBtn1: TCBitBtn [9]
    Left = 279
    Top = 126
    Width = 75
    Height = 25
    Caption = '&Pesquisar'
    TabOrder = 6
    Glyph.Data = {
      36080000424D3608000000000000360000002800000020000000100000000100
      2000000000000008000000000000000000000000000000000000FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00BDADAD00CECE
      CE00FF00FF00FF00FF00FFFFFF008C9CA500BDBDBD00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00B5B5B500CECE
      CE00FF00FF00FF00FF00FFFFFF0094949400BDBDBD00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00ADC6CE006B847B00DE5A3100A539
      1000C6C6C600FFFFFF00395A7B00527BAD00426B9400BDBDC600FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00BDBDBD00737373007B7B7B005252
      5200C6C6C600FFFFFF005A5A5A007B7B7B006B6B6B00BDBDBD00FF00FF00F7F7
      F700FF00FF00FF00FF00FF00FF00ADC6C600849C9C00849C9400AD523900DE6B
      4A00AD391800315273004A7BAD0084A5C600ADC6DE00949CA500FF00FF00F7F7
      F700FF00FF00FF00FF00FF00FF00BDBDBD008C8C8C008C8C8C006B6B6B008C8C
      8C0052525200525252007B7B7B00A5A5A500C6C6C6009C9C9C00BDADAD00A542
      2900844A4200846B6B00ADADAD005A8C9400B5391000D6735A00EF846300CE7B
      5A0039394A004A7BAD007B9CBD00CED6E700637B9400FFFFFF00B5B5B5005A5A
      5A005A5A5A0073737300ADADAD007B7B7B005A5A5A008C8C8C009C9C9C008C8C
      8C00424242007B7B7B009C9C9C00D6D6D6007B7B7B00FFFFFF00B59C9C00D673
      4A00D6733900DE733900D6633100A56B6300AD9C9C00CEADAD00B59494009C7B
      7B00C6ADAD0073849C00C6D6EF0063738C00FFFFFF00FF00FF00A5A5A5008484
      840084848400848484007B7B7B007B7B7B009C9C9C00B5B5B5009C9C9C008484
      8400B5B5B50084848400D6D6D60073737300FFFFFF00FF00FF00AD949400D684
      6300D6734200CE6B3100CEAD9C00DEBDAD00F7C6B500FFDED600F7C6B500DEAD
      9C00AD9C9C00E7DED60073738400AD391800C6C6C600FF00FF009C9C9C009494
      9400848484007B7B7B00B5B5B500C6C6C600CECECE00E7E7E700CECECE00B5B5
      B5009C9C9C00DEDEDE007B7B7B005A5A5A00C6C6C600FF00FF00AD8C8C00E7A5
      8400CE7B5A00D69C8400DEB5AD00F7C6B500F7D6C600F7DECE00F7D6C600F7CE
      B500DEAD9C00A5847B00E7CEBD00FF8463009C8C8C00FF00FF009C9C9C00ADAD
      AD008C8C8C00A5A5A500BDBDBD00CECECE00DEDEDE00DEDEDE00DEDEDE00CECE
      CE00B5B5B5008C8C8C00CECECE00A5A5A5008C8C8C00FF00FF008C7B7B00F7BD
      9C00CE846B00DEC6C600E79C7B00EFC6AD00EFC6AD00EFCEB500F7C6B500EFC6
      AD00E7A58400B5A59C00C6634200A56B5A00FF00FF00FF00FF0084848400C6C6
      C60094949400CECECE00ADADAD00CECECE00CECECE00CECECE00CECECE00C6C6
      C600ADADAD00A5A5A5007B7B7B007B7B7B00FF00FF00FF00FF009C7B7300F7C6
      AD00D6947B00E7CEBD00EFC6AD00F7D6C600F7D6C600EFBDA500EFB59C00EFB5
      9400E7A57B00C6B5B500AD4A1800FFF7F700FF00FF00FF00FF0084848400CECE
      CE009C9C9C00CECECE00C6C6C600D6D6D600D6D6D600C6C6C600BDBDBD00BDBD
      BD00ADADAD00B5B5B5005A5A5A00F7F7F700FF00FF00FF00FF00A56B5A00F7CE
      B500DE9C8C00DEC6C600EFBDAD00F7DEC600F7DECE00F7DECE00EFBDA500EFBD
      9C00DE946B00BDB5B500D68C6300D6A59C00FF00FF00FF00FF007B7B7B00D6D6
      D600ADADAD00CECECE00C6C6C600DEDEDE00DEDEDE00DEDEDE00C6C6C600C6C6
      C6009C9C9C00B5B5B50094949400B5B5B500FF00FF00FF00FF00AD847B00FFD6
      C600F7C6B500DEB5A500DEBDB500FFE7D600F7E7D600F7E7D600F7E7D600FFE7
      DE00DEB5A500C6A59C00D6AD9400D6947B00FFFFFF00FF00FF0094949400DEDE
      DE00CECECE00BDBDBD00C6C6C600E7E7E700E7E7E700E7E7E700E7E7E700E7E7
      E700BDBDBD00ADADAD00B5B5B500A5A5A500FFFFFF00FF00FF00B58C8400FFDE
      CE00F7CEBD00F7C6B500E7CEC600DEBDB500EFCEBD00F7DED600EFCEBD00DEBD
      B500DED6CE00EFCEB500E7CEC600E7C6AD00E7CECE00FF00FF009C9C9C00DEDE
      DE00D6D6D600CECECE00D6D6D600C6C6C600CECECE00E7E7E700CECECE00C6C6
      C600D6D6D600CECECE00CECECE00C6C6C600D6D6D600FF00FF00BD948C00FFE7
      D600F7DECE00F7D6C600F7CEB500EFC6BD00E7CECE00DEC6BD00E7CEC600DEAD
      9C00D6947B00A57B73008494A500BD9CA500AD6B6300FFFFFF009C9C9C00E7E7
      E700DEDEDE00D6D6D600CECECE00CECECE00D6D6D600CECECE00CECECE00B5B5
      B500A5A5A5008484840094949400ADADAD007B7B7B00FFFFFF00C6948C00FFEF
      E700FFE7D600F7DECE00F7D6C600F7D6BD00FFCEB500F7C6AD00F7BDA500F7BD
      9C00F7B59C005A5A520000CEFF0000B5FF0042B5FF00949CA500A5A5A500EFEF
      EF00E7E7E700DEDEDE00D6D6D600D6D6D600D6D6D600CECECE00C6C6C600C6C6
      C600C6C6C600525252008C8C8C008C8C8C00A5A5A5009C9C9C00B59C9C00FFF7
      E700FFEFE700FFEFDE00FFE7D600A5736B008C635A00AD949400AD8C8400AD84
      7B00BD7B73007B63630008FFFF0018B5E7004A7B9400F7F7F700A5A5A500EFEF
      EF00EFEFEF00E7E7E700E7E7E700848484006B6B6B009C9C9C00949494008C8C
      8C00949494006B6B6B00949494008C8C8C006B6B6B00F7F7F700FFFFFF00BDAD
      AD00C6A5A500CEADA500CE9C9400F7F7F700FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00E7FFFF0084BDE700F7F7F700FF00FF00FFFFFF00B5B5
      B500ADADAD00B5B5B500ADADAD00F7F7F700FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00F7F7F700B5B5B500F7F7F700FF00FF00}
    NumGlyphs = 2
  end
  object CBitBtn2: TCBitBtn [10]
    Left = 279
    Top = 66
    Width = 75
    Height = 25
    Caption = '&Pesquisar'
    TabOrder = 7
    Glyph.Data = {
      36080000424D3608000000000000360000002800000020000000100000000100
      2000000000000008000000000000000000000000000000000000FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00BDADAD00CECE
      CE00FF00FF00FF00FF00FFFFFF008C9CA500BDBDBD00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00B5B5B500CECE
      CE00FF00FF00FF00FF00FFFFFF0094949400BDBDBD00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00ADC6CE006B847B00DE5A3100A539
      1000C6C6C600FFFFFF00395A7B00527BAD00426B9400BDBDC600FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00BDBDBD00737373007B7B7B005252
      5200C6C6C600FFFFFF005A5A5A007B7B7B006B6B6B00BDBDBD00FF00FF00F7F7
      F700FF00FF00FF00FF00FF00FF00ADC6C600849C9C00849C9400AD523900DE6B
      4A00AD391800315273004A7BAD0084A5C600ADC6DE00949CA500FF00FF00F7F7
      F700FF00FF00FF00FF00FF00FF00BDBDBD008C8C8C008C8C8C006B6B6B008C8C
      8C0052525200525252007B7B7B00A5A5A500C6C6C6009C9C9C00BDADAD00A542
      2900844A4200846B6B00ADADAD005A8C9400B5391000D6735A00EF846300CE7B
      5A0039394A004A7BAD007B9CBD00CED6E700637B9400FFFFFF00B5B5B5005A5A
      5A005A5A5A0073737300ADADAD007B7B7B005A5A5A008C8C8C009C9C9C008C8C
      8C00424242007B7B7B009C9C9C00D6D6D6007B7B7B00FFFFFF00B59C9C00D673
      4A00D6733900DE733900D6633100A56B6300AD9C9C00CEADAD00B59494009C7B
      7B00C6ADAD0073849C00C6D6EF0063738C00FFFFFF00FF00FF00A5A5A5008484
      840084848400848484007B7B7B007B7B7B009C9C9C00B5B5B5009C9C9C008484
      8400B5B5B50084848400D6D6D60073737300FFFFFF00FF00FF00AD949400D684
      6300D6734200CE6B3100CEAD9C00DEBDAD00F7C6B500FFDED600F7C6B500DEAD
      9C00AD9C9C00E7DED60073738400AD391800C6C6C600FF00FF009C9C9C009494
      9400848484007B7B7B00B5B5B500C6C6C600CECECE00E7E7E700CECECE00B5B5
      B5009C9C9C00DEDEDE007B7B7B005A5A5A00C6C6C600FF00FF00AD8C8C00E7A5
      8400CE7B5A00D69C8400DEB5AD00F7C6B500F7D6C600F7DECE00F7D6C600F7CE
      B500DEAD9C00A5847B00E7CEBD00FF8463009C8C8C00FF00FF009C9C9C00ADAD
      AD008C8C8C00A5A5A500BDBDBD00CECECE00DEDEDE00DEDEDE00DEDEDE00CECE
      CE00B5B5B5008C8C8C00CECECE00A5A5A5008C8C8C00FF00FF008C7B7B00F7BD
      9C00CE846B00DEC6C600E79C7B00EFC6AD00EFC6AD00EFCEB500F7C6B500EFC6
      AD00E7A58400B5A59C00C6634200A56B5A00FF00FF00FF00FF0084848400C6C6
      C60094949400CECECE00ADADAD00CECECE00CECECE00CECECE00CECECE00C6C6
      C600ADADAD00A5A5A5007B7B7B007B7B7B00FF00FF00FF00FF009C7B7300F7C6
      AD00D6947B00E7CEBD00EFC6AD00F7D6C600F7D6C600EFBDA500EFB59C00EFB5
      9400E7A57B00C6B5B500AD4A1800FFF7F700FF00FF00FF00FF0084848400CECE
      CE009C9C9C00CECECE00C6C6C600D6D6D600D6D6D600C6C6C600BDBDBD00BDBD
      BD00ADADAD00B5B5B5005A5A5A00F7F7F700FF00FF00FF00FF00A56B5A00F7CE
      B500DE9C8C00DEC6C600EFBDAD00F7DEC600F7DECE00F7DECE00EFBDA500EFBD
      9C00DE946B00BDB5B500D68C6300D6A59C00FF00FF00FF00FF007B7B7B00D6D6
      D600ADADAD00CECECE00C6C6C600DEDEDE00DEDEDE00DEDEDE00C6C6C600C6C6
      C6009C9C9C00B5B5B50094949400B5B5B500FF00FF00FF00FF00AD847B00FFD6
      C600F7C6B500DEB5A500DEBDB500FFE7D600F7E7D600F7E7D600F7E7D600FFE7
      DE00DEB5A500C6A59C00D6AD9400D6947B00FFFFFF00FF00FF0094949400DEDE
      DE00CECECE00BDBDBD00C6C6C600E7E7E700E7E7E700E7E7E700E7E7E700E7E7
      E700BDBDBD00ADADAD00B5B5B500A5A5A500FFFFFF00FF00FF00B58C8400FFDE
      CE00F7CEBD00F7C6B500E7CEC600DEBDB500EFCEBD00F7DED600EFCEBD00DEBD
      B500DED6CE00EFCEB500E7CEC600E7C6AD00E7CECE00FF00FF009C9C9C00DEDE
      DE00D6D6D600CECECE00D6D6D600C6C6C600CECECE00E7E7E700CECECE00C6C6
      C600D6D6D600CECECE00CECECE00C6C6C600D6D6D600FF00FF00BD948C00FFE7
      D600F7DECE00F7D6C600F7CEB500EFC6BD00E7CECE00DEC6BD00E7CEC600DEAD
      9C00D6947B00A57B73008494A500BD9CA500AD6B6300FFFFFF009C9C9C00E7E7
      E700DEDEDE00D6D6D600CECECE00CECECE00D6D6D600CECECE00CECECE00B5B5
      B500A5A5A5008484840094949400ADADAD007B7B7B00FFFFFF00C6948C00FFEF
      E700FFE7D600F7DECE00F7D6C600F7D6BD00FFCEB500F7C6AD00F7BDA500F7BD
      9C00F7B59C005A5A520000CEFF0000B5FF0042B5FF00949CA500A5A5A500EFEF
      EF00E7E7E700DEDEDE00D6D6D600D6D6D600D6D6D600CECECE00C6C6C600C6C6
      C600C6C6C600525252008C8C8C008C8C8C00A5A5A5009C9C9C00B59C9C00FFF7
      E700FFEFE700FFEFDE00FFE7D600A5736B008C635A00AD949400AD8C8400AD84
      7B00BD7B73007B63630008FFFF0018B5E7004A7B9400F7F7F700A5A5A500EFEF
      EF00EFEFEF00E7E7E700E7E7E700848484006B6B6B009C9C9C00949494008C8C
      8C00949494006B6B6B00949494008C8C8C006B6B6B00F7F7F700FFFFFF00BDAD
      AD00C6A5A500CEADA500CE9C9400F7F7F700FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00E7FFFF0084BDE700F7F7F700FF00FF00FFFFFF00B5B5
      B500ADADAD00B5B5B500ADADAD00F7F7F700FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00F7F7F700B5B5B500F7F7F700FF00FF00}
    NumGlyphs = 2
  end
  object Lookdtpesq: TCLookUp [11]
    Left = 144
    Top = 68
    Width = 105
    Height = 19
    Alignment = taLeftJustify
    BevelInner = bvSpace
    BevelOuter = bvLowered
    Caption = 'Lookdtpesq'
    Color = 14149350
    ParentBackground = False
    TabOrder = 8
    ValidaCampoObrigatorio = False
    CampoObrigatorio = True
  end
  object Lookdtpesq2: TCLookUp [12]
    Left = 144
    Top = 128
    Width = 105
    Height = 19
    Alignment = taLeftJustify
    BevelInner = bvSpace
    BevelOuter = bvLowered
    Caption = 'Lookdtpesq2'
    Color = 14149350
    ParentBackground = False
    TabOrder = 9
    ValidaCampoObrigatorio = False
    CampoObrigatorio = True
  end
  inherited cdsRelatorio: TClientDataSet
    CommandText = 
      'SELECT prod.idProduto,prodep.idProdDeposito, prodep.descProdDepo' +
      'sito, emp.idEmpresa, emp.descCadEmpresa,NfE.idDocSerie, NfE.dtla' +
      'ncamento, NfE.dtEmissao, NfE.obsNfE, prod.qtProduto, Nf.idDocSer' +
      'ie, Nf.dtEmissao, Nf.dtsaida, vl.vlProdutos, vl.vlNotaFiscal, Nf' +
      '.idNf, NfE.idNfE FROM NfProduto prod, Nf, NfE, NfValor vl, vCadE' +
      'mpresaContabil emp, ProdDeposito prodep WHERE Nf.idEmpresa = emp' +
      '.idEmpresa AND NfE.idEmpresa = emp.idEmpresa AND Nf.idProdDeposi' +
      'to = prodep.idProdDeposito AND NfE.idProdDeposito = prodep.idPro' +
      'dDeposito AND prod.idEmpresa = emp.idEmpresa ORDER BY Nf.dtEmiss' +
      'ao'
  end
  inherited cdsPadrao: TClientDataSet
    object cdsPadraodtFaturamento: TDateField
      FieldName = 'dtFaturamento'
    end
  end
  object C: TfrxReport
    Version = '4.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.Author = 'Gesys Sistemas de Informa'#231#227'o'
    ReportOptions.CreateDate = 39263.419322395800000000
    ReportOptions.LastChange = 39342.901807152800000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
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
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      object DetailData1: TfrxDetailData
        Height = 22.677180000000000000
        Top = 317.480520000000000000
        Width = 793.701300000000000000
        DataSet = frxDataset
        DataSetName = 'frxDataset'
        RowCount = 0
        object Memo2: TfrxMemoView
          Left = 45.354360000000000000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          DataField = 'idProdDeposito'
          DataSet = frxDataset
          DataSetName = 'frxDataset'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDataset."idProdDeposito"]')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 154.960730000000000000
          Width = 207.874150000000000000
          Height = 18.897650000000000000
          DataField = 'descProdDeposito'
          DataSet = frxDataset
          DataSetName = 'frxDataset'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDataset."descProdDeposito"]')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 372.614410000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          DataSet = frxDataset
          DataSetName = 'frxDataset'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'R$[frxDataset."vlProdutos"]')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 502.677490000000000000
          Width = 207.874150000000000000
          Height = 18.897650000000000000
          DataField = 'obsNfE'
          DataSet = frxDataset
          DataSetName = 'frxDataset'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDataset."obsNfE"]')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Left = 706.772110000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          DataSet = frxDataset
          DataSetName = 'frxDataset'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'R$[frxDataset."vlNotaFiscal"]')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Top = 294.803340000000000000
        Visible = False
        Width = 793.701300000000000000
        DataSet = frxDataset
        DataSetName = 'frxDataset'
        RowCount = 0
      end
      object PageHeader1: TfrxPageHeader
        Height = 215.433210000000000000
        Top = 18.897650000000000000
        Width = 793.701300000000000000
        object Memo1: TfrxMemoView
          Left = 3.779530000000000000
          Top = 18.897650000000000000
          Width = 786.142240000000000000
          Height = 26.456710000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -24
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'Faturamento')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 124.724490000000000000
          Top = 75.590600000000000000
          Width = 449.764070000000000000
          Height = 18.897650000000000000
          DataSet = frxDataset
          DataSetName = 'frxDataset'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDataset."idEmpresa"] - [frxDataset."descCadEmpresa"]')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 11.338590000000000000
          Top = 75.590600000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'Empresa :')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 3.779530000000000000
          Top = 185.196970000000000000
          Width = 109.606370000000000000
          Height = 22.677180000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'Produto')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 173.858380000000000000
          Top = 185.196970000000000000
          Width = 117.165430000000000000
          Height = 26.456710000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'Desc. Produto')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 336.378170000000000000
          Top = 185.196970000000000000
          Width = 143.622140000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'Valor dos Produtos')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 525.354670000000000000
          Top = 185.196970000000000000
          Width = 128.504020000000000000
          Height = 26.456710000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'Observa'#195#167#195#163'o ')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 15.118120000000000000
          Top = 102.047310000000000000
          Width = 177.637910000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'Nota Fiscal de Entrada')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 680.315400000000000000
          Top = 173.858380000000000000
          Width = 113.385900000000000000
          Height = 37.795300000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'Valor da Nota Fiscal')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 7.559060000000000000
          Top = 132.283550000000000000
          Width = 177.637910000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'Nota Fiscal de Saida')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          Left = 279.685220000000000000
          Top = 102.047310000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'Emiss'#195#163'o')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          Left = 279.685220000000000000
          Top = 132.283550000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'Emiss'#195#163'o')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          Left = 532.913730000000000000
          Top = 102.047310000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'Saida')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          Left = 498.897960000000000000
          Top = 136.063080000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'Lan'#195#167'amento')
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          Left = 366.614410000000000000
          Top = 102.047310000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          DataSet = frxDataset
          DataSetName = 'frxDataset'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDataset."dtEmissao"]')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          Left = 366.614410000000000000
          Top = 132.283550000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          DataSet = frxDataset
          DataSetName = 'frxDataset'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDataset."dtEmissao"]')
          ParentFont = False
        end
        object Memo28: TfrxMemoView
          Left = 612.283860000000000000
          Top = 102.047310000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataSet = frxDataset
          DataSetName = 'frxDataset'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDataset."dtSaida"]')
          ParentFont = False
        end
        object Memo29: TfrxMemoView
          Left = 612.283860000000000000
          Top = 136.063080000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataSet = frxDataset
          DataSetName = 'frxDataset'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDataset."dtLancamento"]')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          Left = 204.094620000000000000
          Top = 102.047310000000000000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          DataSet = frxDataset
          DataSetName = 'frxDataset'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDataset."idNfE"]')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          Left = 204.094620000000000000
          Top = 132.283550000000000000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          DataSet = frxDataset
          DataSetName = 'frxDataset'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDataset."idNf"]')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        Height = 64.252010000000000000
        Top = 400.630180000000000000
        Width = 793.701300000000000000
        object Memo13: TfrxMemoView
          Left = 340.157700000000000000
          Top = 18.897650000000000000
          Width = 117.165430000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Nilus Report ')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 22.677180000000000000
          Top = 18.897650000000000000
          Width = 275.905690000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Vita Sistemas de Informa'#195#167#195#163'o Ltda.')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Left = 491.338900000000000000
          Top = 18.897650000000000000
          Width = 139.842610000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[(<Date>)]')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Left = 687.874460000000000000
          Top = 18.897650000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[(<Page>)]')
          ParentFont = False
        end
      end
    end
  end
end
