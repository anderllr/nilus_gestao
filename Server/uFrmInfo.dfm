object FrmInfo: TFrmInfo
  Left = 0
  Top = 0
  BorderIcons = []
  Caption = 'Informa'#231#245'es do Sistema'
  ClientHeight = 154
  ClientWidth = 376
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object CLabel1: TCLabel
    Left = 29
    Top = 24
    Width = 35
    Height = 13
    Caption = 'Nome:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblNome: TCLabel
    Left = 70
    Top = 25
    Width = 37
    Height = 13
    Caption = 'lblNome'
  end
  object lblCpf: TCLabel
    Left = 70
    Top = 44
    Width = 27
    Height = 13
    Caption = 'lblCpf'
  end
  object CLabel3: TCLabel
    Left = 8
    Top = 43
    Width = 56
    Height = 13
    Caption = 'CPF/CNPJ:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object CLabel4: TCLabel
    Left = 13
    Top = 61
    Width = 51
    Height = 13
    Caption = 'M'#225'quina:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblMaquina: TCLabel
    Left = 70
    Top = 62
    Width = 50
    Height = 13
    Caption = 'lblMaquina'
  end
  object lblSerial: TCLabel
    Left = 70
    Top = 81
    Width = 36
    Height = 13
    Caption = 'lblSerial'
  end
  object CLabel7: TCLabel
    Left = 29
    Top = 80
    Width = 35
    Height = 13
    Caption = 'Serial:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblTempo: TCLabel
    Left = 8
    Top = 133
    Width = 3
    Height = 13
  end
  object CBitBtn1: TCBitBtn
    Left = 224
    Top = 114
    Width = 134
    Height = 25
    Caption = 'Copiar e Fechar'
    DoubleBuffered = True
    Glyph.Data = {
      36030000424D3603000000000000360000002800000010000000100000000100
      18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FF1C98CE1C98CE1C98CE1C98CEFF00FFFF
      00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      1C98CEAAF0F87DF4FB6CEAF730B1DC30B1DC30B1DC1C98CE1C98CE1193CEFF00
      FFFF00FFFF00FFFF00FFA6686BAA6F6EAB706EAA6F6CAA6E6BAA6F6BAA6D6B81
      FAFF7DF4FF70EAFC63DEF430B1DC30B1DCFF00FFFF00FFFF00FFB27D76E6C5AC
      EECFAAE9C195E6BA83E6BB7EDDAD7A76F0FF75F0FF77F2FF78F2FF7EF4FF53C6
      E71C98CEFF00FFFF00FFBB8E7FEFD9C4F8E2C4F2D4AB7498535C8E4B347B2902
      74070370070155035CD5D072EBFF55C9E91C98CEFF00FFFF00FFCA9C84F3E2D4
      F8E9D5F3DCBCEFD1A9EFCC98E2B58275864B0D8311036F0701570373EDFF55C9
      E968E2FB1C98CEFF00FFD9A78BF7EAE3FCF4EBF6E5CEF3DABBF4D7ABA9A76C86
      A0561578160C921A0157034AC1AA41B1BA73EDFF41C4E3FF00FFEAB892FAF0E9
      FFFEFEFAEFE5F7E5CFFCE9C61965140B761426AC4422B53E0D8C19056C0A278B
      6479EFFF77EFF81EA1D3EEBD93FBF2EAFFFFFFFFFCFAF8EAE0CCA79D80765F0B
      5E0D2DB7513CDD6B0C86160153027FD3E691E1F4A4F0FA38AFD9EABA92FCF4EF
      FFFFFFFFFFFFEDE6EDB07062C99786BBC49F116F1824AA420355041B96C71C98
      CE1E96CB289DCE1C98CCD79D7AE3BBA4E7C5AFE7C5AFDDB6A4CC9D88FEFCFBFB
      F2EA8CAF7929802B8F866C1C98CE1C98CEFF00FFFF00FFFF00FFFF00FFFF00FF
      FF00FF1C98CEEEBF93FFFFFFFFFFFFFFFFFFE6D3CFAC746AA46C69FF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFE2AD8AFAF0EBFAF3EFFC
      F7F4D9C1C4B67456FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      FF00FFFF00FFD19572D9A483D9A484DAA687D49C7EFF00FFFF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
      00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
    ParentDoubleBuffered = False
    TabOrder = 0
    OnClick = CBitBtn1Click
  end
  object Timer1: TTimer
    Enabled = False
    OnTimer = Timer1Timer
    Left = 160
    Top = 48
  end
end
