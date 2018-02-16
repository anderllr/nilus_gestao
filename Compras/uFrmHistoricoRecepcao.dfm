object FrmHistoricoRecepcao: TFrmHistoricoRecepcao
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Hist'#243'rico de Recep'#231#227'o'
  ClientHeight = 241
  ClientWidth = 486
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object CPanelGradient2: TCPanelGradient
    Left = 0
    Top = 0
    Width = 486
    Height = 33
    Align = alTop
    BevelOuter = bvNone
    Caption = 'PanBotoes'
    TabOrder = 0
    CaptionNo = 0
    HintNo = 0
    BackgroundGradientColor = 12306636
    BackgroundGradientDirection = gdVertical
    TextColor = clBlack
    GradientColor = clBlack
    RegularButtonColor = clBlack
    SelectedButtonColor = clBlack
    ButtonOptions = []
    object CLabel25: TCLabel
      Left = 423
      Top = 10
      Width = 45
      Height = 13
      Alignment = taRightJustify
      Caption = 'Produto'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBEdescProduto: TCDBEdit
      Left = 13
      Top = 7
      Width = 404
      Height = 19
      TabStop = False
      BevelKind = bkTile
      BorderStyle = bsNone
      Color = 14149350
      DataField = 'descProduto'
      DataSource = FrmPesConferencia.dsPedidoProd
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
      DecimalControl = True
      KeyMode = kmUSUpper
    end
  end
  object CDBGrid1: TCDBGrid
    Left = 0
    Top = 33
    Width = 486
    Height = 208
    Align = alClient
    DataSource = dsPedidoRec
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection]
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    UtilizaOrdenar = False
    Zebrado = True
    Columns = <
      item
        Expanded = False
        FieldName = 'dtRecepcao'
        Title.Caption = 'Data Recebida'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'qtRecepcao'
        Title.Caption = 'Qtde. Recebida'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'idDocSerie'
        Title.Caption = 'S'#233'rie NF'
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'idNfE'
        Title.Caption = 'N'#250'mero Nota'
        Width = 80
        Visible = True
      end>
  end
  object dsPedidoRec: TDataSource
    DataSet = cdsPedidoRec
    Left = 73
    Top = 64
  end
  object cdsPedidoRec: TClientDataSet
    Aggregates = <>
    CommandText = 
      'SELECT dtRecepcao, qtRecepcao, idDocSerie, idNfE FROM PedidoComp' +
      'raRec WHERE 1=2'
    Params = <>
    ProviderName = 'dspPedidoRec'
    Left = 150
    Top = 64
    object cdsPedidoRecdtRecepcao: TSQLTimeStampField
      FieldName = 'dtRecepcao'
      Required = True
    end
    object cdsPedidoRecqtRecepcao: TFMTBCDField
      FieldName = 'qtRecepcao'
      Required = True
      Precision = 18
      Size = 3
    end
    object cdsPedidoRecidDocSerie: TStringField
      FieldName = 'idDocSerie'
      Size = 5
    end
    object cdsPedidoRecidNfE: TIntegerField
      FieldName = 'idNfE'
    end
  end
  object dspPedidoRec: TDataSetProvider
    DataSet = sdsPedidoRec
    Options = [poAllowMultiRecordUpdates, poPropogateChanges, poAllowCommandText, poUseQuoteChar]
    Left = 228
    Top = 64
  end
  object sdsPedidoRec: TSQLDataSet
    CommandText = 
      'SELECT dtRecepcao, qtRecepcao, idDocSerie, idNfE FROM PedidoComp' +
      'raRec WHERE 1=2'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmPadrao.dbConexao
    Left = 305
    Top = 64
  end
end
