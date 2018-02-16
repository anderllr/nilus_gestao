inherited FrmPesGerencial: TFrmPesGerencial
  Caption = 'Pesquisa Centro Gerencial'
  ClientWidth = 538
  ExplicitWidth = 546
  PixelsPerInch = 96
  TextHeight = 13
  inherited GrupoGrid: TCGroupBox
    Top = 114
    Width = 538
    Height = 257
    TabOrder = 2
    ExplicitTop = 114
    ExplicitWidth = 538
    ExplicitHeight = 257
    inherited DBGrid: TCDBGrid
      Width = 534
      Height = 240
      Columns = <
        item
          Expanded = False
          FieldName = 'idGerencialItem'
          Title.Caption = 'C'#243'digo'
          Width = 55
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'classificacao'
          Title.Caption = 'Classifica'#231#227'o'
          Width = 110
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'descGerencialItem'
          Title.Caption = 'Descri'#231#227'o'
          Width = 300
          Visible = True
        end>
    end
  end
  inherited PanBotoes: TCPanelGradient
    Top = 81
    Width = 538
    ExplicitTop = 81
    ExplicitWidth = 538
    inherited BtnExecutar: TCBitBtn
      Tag = 1
    end
  end
  inherited PanTopo: TCPanelGradient
    Width = 538
    Height = 81
    TabOrder = 0
    ExplicitWidth = 538
    ExplicitHeight = 81
    object CLabel8: TCLabel [0]
      Left = 6
      Top = 58
      Width = 46
      Height = 13
      Alignment = taRightJustify
      Caption = 'Descri'#231#227'o'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object CLabel3: TCLabel [1]
      Left = 343
      Top = 58
      Width = 61
      Height = 13
      Alignment = taRightJustify
      Caption = 'Classifica'#231#227'o'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    inherited PanEmpresa: TCPanelGradient
      Width = 536
      ExplicitWidth = 536
    end
    object DBEdescGerencialItem: TCDBEdit
      Left = 58
      Top = 55
      Width = 279
      Height = 19
      BevelKind = bkTile
      BorderStyle = bsNone
      DataField = 'descGerencialItem'
      DataSource = dsPadrao
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnChange = DBEdescGerencialItemChange
      DecimalControl = True
      KeyMode = kmUSUpper
    end
    object DBEclassificacao: TCDBEdit
      Left = 410
      Top = 55
      Width = 123
      Height = 19
      BevelKind = bkTile
      BorderStyle = bsNone
      DataField = 'classificacao'
      DataSource = dsPadrao
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      DecimalControl = True
      KeyMode = kmNormal
    end
  end
  inherited cdsPadrao: TClientDataSet
    object cdsPadraodescGerencialItem: TStringField
      FieldName = 'descGerencialItem'
      Size = 50
    end
    object cdsPadraoclassificacao: TStringField
      FieldName = 'classificacao'
      Size = 30
    end
  end
  inherited cdsGrid: TClientDataSet
    CommandText = 'SELECT * FROM vGerencial'
  end
  inherited sdsGrid: TSQLDataSet
    CommandText = 'SELECT * FROM vResultado'
  end
end
