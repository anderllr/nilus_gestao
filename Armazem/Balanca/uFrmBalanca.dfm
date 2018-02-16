object Form1: TForm1
  Left = 254
  Top = 158
  Caption = 'Teste para comunica'#231#227'o com a balan'#231'a'
  ClientHeight = 232
  ClientWidth = 442
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel1: TBevel
    Left = 352
    Top = 8
    Width = 89
    Height = 217
  end
  object Label2: TLabel
    Left = 8
    Top = 8
    Width = 32
    Height = 13
    Caption = 'Leitura'
  end
  object Label3: TLabel
    Left = 8
    Top = 184
    Width = 57
    Height = 13
    Caption = 'Peso Lido'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object btnIniciar: TBitBtn
    Left = 360
    Top = 16
    Width = 75
    Height = 25
    Caption = '&Iniciar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    OnClick = btnIniciarClick
  end
  object edPeso: TEdit
    Left = 8
    Top = 200
    Width = 129
    Height = 21
    Color = 15395562
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
  end
  object btnPesar: TBitBtn
    Left = 360
    Top = 48
    Width = 75
    Height = 25
    Caption = 'Pesar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    OnClick = btnPesarClick
  end
  object BtnFechar: TBitBtn
    Left = 360
    Top = 192
    Width = 75
    Height = 25
    Caption = '&Fechar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    OnClick = BtnFecharClick
  end
  object EdLeitura: TMemo
    Left = 8
    Top = 24
    Width = 321
    Height = 121
    TabOrder = 4
  end
  object BtnSalvar: TBitBtn
    Left = 8
    Top = 152
    Width = 321
    Height = 25
    Caption = '&Salvar leitura em arquivo texto'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 5
    OnClick = BtnSalvarClick
  end
  object CbPorta: TCComboBox
    Left = 145
    Top = 200
    Width = 66
    Height = 21
    ItemHeight = 13
    TabOrder = 6
    Items.Strings = (
      'COM1'
      'COM2'
      'COM3'
      'COM4'
      'COM5')
  end
  object cboVelocidade: TCComboBox
    Left = 217
    Top = 200
    Width = 92
    Height = 21
    CharCase = ecUpperCase
    ItemHeight = 13
    TabOrder = 7
    Items.Strings = (
      'BR110'
      'BR300'
      'BR600'
      'BR1200'
      'BR2400'
      'BR4800'
      'BR9600'
      'BR14400'
      'BR19200'
      'BR38400'
      'BR56000'
      'BR57600'
      'BR115200')
  end
  object XPManifest1: TXPManifest
    Left = 232
    Top = 16
  end
  object RDserial1: TRDserial
    About = 'RDserial 2.0 - Registrado'
    Velocidade = br2400
    Porta = COM3
    Paridade.Bits = prNone
    Paridade.Check = False
    Paridade.Replace = False
    Paridade.ReplaceChar = 0
    StopBits = sbOneStopBit
    DataBits = dbEight
    DiscardNull = False
    EventChar = 0
    Events = [evRxChar, evTxEmpty, evRxFlag, evRing, evBreak, evCTS, evDSR, evError, evRLSD, evRx80Full]
    BufferWrite = 1024
    BufferRead = 1024
    FlowControl.OutCtsFlow = False
    FlowControl.OutDsrFlow = False
    FlowControl.ControlDtr = dtrDisable
    FlowControl.ControlRts = rtsDisable
    FlowControl.XonXoffOut = False
    FlowControl.XonXoffIn = False
    Timeouts.ReadInterval = -1
    Timeouts.ReadTotalMultiplier = 0
    Timeouts.ReadTotalConstant = 0
    Timeouts.WriteTotalMultiplier = 100
    Timeouts.WriteTotalConstant = 1000
    SyncMethod = smSynchronize
    OnRxChar = RDserial1RxChar
    OnError = RDserial1Error
    Left = 264
    Top = 16
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 500
    OnTimer = Timer1Timer
    Left = 296
    Top = 16
  end
end
