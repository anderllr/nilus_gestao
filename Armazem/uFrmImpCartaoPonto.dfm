inherited FrmImpCartaoPonto: TFrmImpCartaoPonto
  Caption = 'Impress'#227'o de Cart'#245'es de Ponto'
  ClientWidth = 313
  ExplicitWidth = 321
  ExplicitHeight = 156
  PixelsPerInch = 96
  TextHeight = 13
  inherited Bevel1: TBevel
    Width = 313
    ExplicitWidth = 316
  end
  inherited PanBotoes: TCPanelGradient
    Width = 313
    ExplicitTop = 91
    ExplicitWidth = 313
  end
  inherited cdsTabela: TClientDataSet
    CommandText = 'SELECT * FROM CadGeral'
  end
  object sdsTabelaGrp: TSQLDataSet
    SchemaName = 'gesys'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmPadrao.dbConexao
    Left = 304
    Top = 96
  end
  object dspTabelaGrp: TDataSetProvider
    DataSet = dmPadrao.sdsTabela
    Options = [poAllowMultiRecordUpdates, poPropogateChanges, poAllowCommandText, poUseQuoteChar]
    Left = 336
    Top = 96
  end
  object cdsTabelaGrp: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspTabelaGrp'
    Left = 368
    Top = 96
  end
end
