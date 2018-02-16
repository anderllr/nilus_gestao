object FrmSeguranca: TFrmSeguranca
  Left = 0
  Top = 0
  BorderIcons = []
  Caption = 'Habilitar Menus de Seguran'#231'a'
  ClientHeight = 110
  ClientWidth = 418
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object CLabel1: TCLabel
    Left = 24
    Top = 37
    Width = 165
    Height = 13
    Caption = 'Informe a senha de libera'#231#227'o'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object CLabel2: TCLabel
    Left = 24
    Top = 78
    Width = 202
    Height = 13
    Caption = '* ESC - Sair                   ENTER - Confirmar'
  end
  object EDSenha: TCEdit
    Left = 195
    Top = 34
    Width = 121
    Height = 19
    BorderStyle = bsNone
    BevelKind = bkTile
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    PasswordChar = '*'
    TabOrder = 0
    DataType = ftUnknown
    KeyMode = kmNormal
    Decimals = 0
  end
  object BtnOK: TCBitBtn
    Left = 304
    Top = 65
    Width = 75
    Height = 25
    DoubleBuffered = True
    Kind = bkOK
    ParentDoubleBuffered = False
    TabOrder = 1
    OnClick = BtnOKClick
  end
end
