inherited uFrmLayout: TuFrmLayout
  Caption = 'Nota Fiscal Armazem'
  ClientHeight = 430
  ExplicitHeight = 457
  PixelsPerInch = 96
  TextHeight = 13
  inherited Bevel1: TBevel
    Top = 426
  end
  inherited PagAbas: TCPageControl
    Height = 342
    inherited TabAbas: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 25
    end
  end
  inherited PanBotoes: TCPanelGradient
    Top = 395
  end
  object CDBGrid1: TCDBGrid [5]
    Left = 8
    Top = 88
    Width = 320
    Height = 120
    Options = [dgRowLines, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    UtilizaOrdenar = False
  end
end
