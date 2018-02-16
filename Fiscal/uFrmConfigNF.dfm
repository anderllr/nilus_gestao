inherited FrmConfigNF: TFrmConfigNF
  Caption = 'Configura'#231#227'o'
  ClientWidth = 703
  ExplicitWidth = 719
  ExplicitHeight = 463
  PixelsPerInch = 96
  TextHeight = 13
  inherited Bevel1: TBevel
    Width = 703
    ExplicitWidth = 569
  end
  inherited Bevel2: TBevel
    Width = 703
    ExplicitWidth = 703
  end
  inherited PagAbas: TCPageControl
    Width = 703
    ExplicitWidth = 703
    inherited TabAbas: TTabSheet
      Caption = 'Configura'#231#227'o por S'#233'rie'
      ExplicitLeft = 4
      ExplicitTop = 25
      ExplicitWidth = 695
      object CGroupBox1: TCGroupBox
        Left = 3
        Top = 3
        Width = 553
        Height = 46
        Caption = 'Dados'
        TabOrder = 0
        object CLabel4: TCLabel
          Left = 14
          Top = 16
          Width = 24
          Height = 13
          Alignment = taRightJustify
          Caption = 'S'#233'rie'
        end
        object LookDocSerie: TCLookUp
          Left = 96
          Top = 13
          Width = 226
          Height = 19
          Alignment = taLeftJustify
          BevelInner = bvSpace
          BevelOuter = bvLowered
          Color = 14149350
          ParentBackground = False
          TabOrder = 0
          Key.Strings = (
            'idDocSerie')
          LookUpKey.Strings = (
            'idDocSerie')
          AlternateSQL.Strings = (
            
              'SELECT descDocSerie FROM DocSerie WHERE idTipoDocSerie IN (3,4) ' +
              'AND idDocSerie = ?')
          ClientDataSet = cdsLookup
          DataSource = dsPadrao
          ValidaCampoObrigatorio = True
          CampoObrigatorio = True
          LookUpTable = 'DocSerie'
          ReturnField = 'descDocSerie'
        end
        object DBEidDocSerie: TCDBEdit
          Left = 44
          Top = 13
          Width = 46
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'idDocSerie'
          DataSource = dsPadrao
          TabOrder = 1
          OnExit = DBEidDocSerieExit
          Find = FindSerie
          DecimalControl = True
          KeyMode = kmUSUpper
        end
        object CBitBtn1: TCBitBtn
          Left = 328
          Top = 13
          Width = 137
          Height = 19
          Caption = 'S'#233'ries de &Documentos'
          Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            2000000000000004000000000000000000000000000000000000FF00FF00F6F6
            F6FFF0F0F0FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00EEEEEEFF7380
            87FF9CA7AFFF7D7D7FFFA3A3A3FFA4A4A8FFA3A3A5FFA3A3A5FFA3A3A5FFA3A3
            A5FFA3A3A6FFA2A2A5FF9A9A9FFFAAACB0FFFF00FF00FF00FF009CB1BBFF67DD
            F8FFDCF7FFFFA0E8FCFF3AA5BEFFA3E0F5FFA7ECFFFFA0E6FEFF9EE6FDFF9AE6
            FCFF92E4FAFF8AE1F8FF87EAFEFF3BC1EDFFFDFDFDFFFF00FF00A4B8C0FFD3FF
            FFFFA6CEE3FF71C8F4FF76EAF4FFB5D4D5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFF7FFFFFFF7FFFFFF70D9F2FFFF00FF00FF00FF00A6B6BEFFA4E5
            ECFFD0E9E3FF6DABD4FF75CBF5FF58D0DDFFA4BDBEFFFBFBF8FFECF6F7FFE2EF
            F1FFD5E9EBFFC8E3E5FFC5E7E3FF5ABDD9FFFF00FF00FF00FF00A6B7C0FF9DF3
            FFFFC5F2F3FFC5E8E9FF62A8D8FF7CD9F9FF51C8D6FFB4CBCDFFE6FAFBFFD3F2
            F6FFC8EEF2FFBDEAEEFFBFF4F5FF56C8E8FFFF00FF00FF00FF00A6B5BEFF81D1
            DEFF9ACBD1FFABD5D7FFAACCD1FF58A2D7FF87E3FDFF4FB8C6FFAAC0C2FFBDDE
            E1FFA8D3D7FF9CCBD1FF9CD1D3FF47B3D4FFFF00FF00FF00FF00A6B7C0FF82E6
            F8FF98DCE5FF99DBE3FFADE5E8FF89C3D6FF57A9E0FF7EE6FAFF52AFBDFF9BCA
            CFFFA0E1EAFF93D8E2FF98E3EAFF44C0E4FFFF00FF00FF00FF00A6B5BEFF6ACC
            E0FF7EC1CCFF7EBFCBFF83C3CEFF92CCD2FF68AEC7FF5FB2E7FF78E6F5FF4099
            A5FF82B4BDFF87C7D1FF87CBD4FF39ACD0FFFF00FF00FF00FF00A6B6C0FF62D8
            F3FF74CDDEFF6FC9DBFF70C8DAFF76CCDCFF8ED7DFFF69ADCEFF73C1EFFF6BDE
            ECFF6AA9B4FFC0E3EBFFCAF7FEFF67C8EAFFFF00FF00FF00FF00A6B6BFFF68C4
            DBFF6BAFBEFF70B5C5FF85C2D1FFA6CCD6FFC9E0E6FFD5E7E7FF75ADD3FF70C7
            F1FF5ACDDBFF84ACB3FFEEF7F6FF82CAEAFFFF00FF00FF00FF00ADBAC1FFF0FF
            FFFFEDFBFDFFE6F7FBFFECFBFEFFEBFAFEFFE5F6FBFFEAFAFCFFEDF6F4FF6EAC
            D9FF7AD8F8FF5ACAD5FFD8DFDCFFA5DFFCFFFF00FF00FF00FF00ADBAC1FFFFFF
            FFFFFFFFFFFFF5FAFAFFF4F8F8FFF3F8F8FFF2F7F8FFF3F8F8FFFFFEFCFFF1F1
            F1FF63A8DDFF72D6F6FF73CDD3FF80B5D2FFFF00FF00FF00FF00ABB8BFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFF7F1F0FF6CB0E1FF89F5FFFF3D96A5FFF2F2F2FFFF00FF00AAB6BDFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFE4EEF8FF87B4CEFFBFBBD5FFAEACB6FFFF00FF00EDF0F2FFABE8
            FFFFB2E4FFFFB4E4FFFFB4E4FFFFB4E4FFFFB4E4FFFFB4E4FFFFB4E4FFFFB4E4
            FFFFB5E6FFFFBAE8FFFFA1ACB7FF9F96B5FFFBFBFBFFFF00FF00}
          TabOrder = 2
          TabStop = False
        end
      end
      object CGroupBox2: TCGroupBox
        Left = 3
        Top = 55
        Width = 553
        Height = 242
        TabOrder = 1
        object DBGrid: TCDBGrid
          Left = 6
          Top = 12
          Width = 539
          Height = 224
          DataSource = dsGrid
          Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection]
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          OnCellClick = DBGridCellClick
          OnColEnter = DBGridColEnter
          OnDrawColumnCell = DBGridDrawColumnCell
          UtilizaOrdenar = False
          Columns = <
            item
              Expanded = False
              FieldName = 'imprime'
              Title.Caption = 'Imprimir ?'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'descConfigNFItem'
              Title.Caption = 'Descri'#231#227'o'
              Width = 356
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'posX'
              Title.Caption = 'Horizontal'
              Width = 52
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'posY'
              Title.Caption = 'Vertical'
              Width = 42
              Visible = True
            end>
        end
      end
      object DBEidConfigNF: TCDBEdit
        Left = 586
        Top = 200
        Width = 65
        Height = 19
        BevelKind = bkTile
        BorderStyle = bsNone
        DataField = 'idConfigNF'
        DataSource = dsPadrao
        TabOrder = 2
        Visible = False
        DecimalControl = True
        KeyMode = kmNormal
      end
    end
  end
  inherited PanBotoes: TCPanelGradient
    Width = 703
    ExplicitWidth = 703
    inherited BtnFechar: TCBitBtn
      Left = 484
      ExplicitLeft = 484
    end
  end
  inherited PanEmpresa: TCPanelGradient
    Width = 703
    ExplicitWidth = 703
  end
  inherited imgIcones: TImageList
    Left = 600
    Top = 176
  end
  inherited Acao: TActionList
    Left = 664
    Top = 176
  end
  inherited cdsPadrao: TClientDataSet
    CommandText = 'Select * From ConfigNF'
    Left = 632
    Top = 112
  end
  inherited dspPadrao: TDataSetProvider
    Left = 600
    Top = 112
  end
  inherited dsPadrao: TDataSource
    Left = 664
    Top = 112
  end
  inherited ImgBotoes: TImageList
    Left = 632
    Top = 176
  end
  inherited cdsLookup: TClientDataSet
    Left = 632
    Top = 80
  end
  inherited dspLookup: TDataSetProvider
    Left = 600
    Top = 80
  end
  inherited cdsEmpresa: TClientDataSet
    Left = 632
    Top = 8
  end
  inherited dsEmpresa: TDataSource
    Left = 664
    Top = 8
  end
  object FindSerie: TCFind
    SelectClause.Strings = (
      'SELECT idDocSerie, descDocSerie FROM DocSerie')
    JoinClause.Strings = (
      'WHERE idTipoDocSerie IN ( 3,4)')
    OrderByClause.Strings = (
      'ORDER BY descDocSerie')
    FindField = 'descDocSerie'
    SQLConnection = dmPadrao.dbConexao
    ValueField = 'idDocSerie'
    CarregaDados = True
    CollumNames.Strings = (
      'S'#233'rie'
      'Descri'#231#227'o')
    OnClose = FindSerieClose
    TypeFind = fFindNormal
    Left = 664
    Top = 80
  end
  object dsGrid: TDataSource
    DataSet = cdsGrid
    Left = 664
    Top = 208
  end
  object cdsGrid: TClientDataSet
    Aggregates = <>
    CommandText = 'SELECT * FROM ConfigNFItem'
    Params = <>
    ProviderName = 'dspGrid'
    AfterOpen = cdsPadraoAfterOpen
    Left = 632
    Top = 208
  end
  object dspGrid: TDataSetProvider
    DataSet = sdsGrid
    Options = [poAllowMultiRecordUpdates, poPropogateChanges, poAllowCommandText, poUseQuoteChar]
    Left = 600
    Top = 208
  end
  object sdsGrid: TSQLDataSet
    CommandText = 'SELECT * FROM ConfigNFItem'
    DataSource = dsGrid
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmPadrao.dbConexao
    Left = 568
    Top = 208
  end
  object FindConfigNF: TCFind
    SelectClause.Strings = (
      
        'SELECT ds.idDocSerie, ds.descDocSerie FROM ConfigNf cf, DocSerie' +
        ' ds')
    JoinClause.Strings = (
      'WHERE cf.idDocSerie = ds.idDocSerie')
    OrderByClause.Strings = (
      'ORDER BY ds.descDocSerie')
    FindField = 'descDocSerie'
    SQLConnection = dmPadrao.dbConexao
    ValueField = 'idDocSerie'
    CarregaDados = True
    CollumNames.Strings = (
      'S'#233'rie'
      'Descri'#231#227'o')
    OnClose = FindConfigNFClose
    TypeFind = fFindNormal
    Left = 568
    Top = 168
  end
end
