object FrmSelNfE: TFrmSelNfE
  Left = 0
  Top = 0
  Caption = 'Selecione NFE'
  ClientHeight = 354
  ClientWidth = 730
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PagAbas: TCPageControl
    Left = 0
    Top = 0
    Width = 730
    Height = 354
    ActivePage = TabAbas
    Align = alClient
    MultiLine = True
    TabOrder = 0
    TabStop = False
    object TabAbas: TTabSheet
      Caption = 'Dados Gerais'
      object DBGrid: TCDBGrid
        Left = 0
        Top = 0
        Width = 722
        Height = 326
        Align = alClient
        DataSource = dsGrid
        Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnDblClick = DBGridDblClick
        UtilizaOrdenar = False
        Columns = <
          item
            Expanded = False
            FieldName = 'idEmpresa'
            Title.Caption = 'Empresa'
            Width = 50
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'idCadEmpresa'
            Title.Caption = 'Filial'
            Width = 40
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'idDocSerie'
            Title.Caption = 'DocSerie'
            Width = 50
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'idNfE'
            Title.Caption = 'NfE'
            Width = 45
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'idPedido'
            Title.Caption = 'Pedido'
            Width = 50
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'descFornecedor'
            Title.Caption = 'Fornecedor'
            Width = 210
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'descProd'
            Title.Caption = 'Produto'
            Width = 200
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'qtde'
            Title.Caption = 'Qtde'
            Width = 50
            Visible = True
          end>
      end
    end
  end
  object cdsGrid: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 504
    Top = 144
    object cdsGrididEmpresa: TIntegerField
      FieldName = 'idEmpresa'
    end
    object cdsGrididCadEmpresa: TIntegerField
      FieldName = 'idCadEmpresa'
    end
    object cdsGrididPedido: TIntegerField
      FieldName = 'idPedido'
    end
    object cdsGridqtde: TFloatField
      FieldName = 'qtde'
    end
    object cdsGriddescFornecedor: TStringField
      FieldName = 'descFornecedor'
      Size = 50
    end
    object cdsGriddescProd: TStringField
      FieldName = 'descProd'
      Size = 50
    end
    object cdsGrididNfE: TIntegerField
      FieldName = 'idNfE'
    end
    object cdsGrididFornecedor: TIntegerField
      FieldName = 'idFornecedor'
    end
    object cdsGrididProduto: TIntegerField
      FieldName = 'idProduto'
    end
    object cdsGrididDocSerie: TStringField
      FieldName = 'idDocSerie'
    end
    object cdsGrididPedidoProd: TIntegerField
      FieldName = 'idPedidoProd'
    end
    object cdsGrididMaquina: TIntegerField
      FieldName = 'idMaquina'
    end
  end
  object dsGrid: TDataSource
    DataSet = cdsGrid
    Left = 544
    Top = 144
  end
end
