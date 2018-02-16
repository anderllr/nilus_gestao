object FrmNFeValidacao: TFrmNFeValidacao
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Valida'#231#227'o NF-e - Dados b'#225'sicos'
  ClientHeight = 465
  ClientWidth = 824
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
  object PanBotoes: TCPanelGradient
    Left = 0
    Top = 432
    Width = 824
    Height = 33
    Align = alBottom
    BevelOuter = bvNone
    Caption = 'PanBotoes'
    TabOrder = 0
    CaptionNo = 0
    HintNo = 0
    BackgroundGradientColor = 13099746
    BackgroundGradientDirection = gdVertical
    TextColor = clBlack
    GradientColor = clBlack
    RegularButtonColor = clBlack
    SelectedButtonColor = clBlack
    ButtonOptions = []
    object BtnFechar: TCBitBtn
      Left = 726
      Top = 6
      Width = 75
      Height = 25
      Caption = '&Fechar'
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000FDFDFF00CED7
        EF00AEB8E000AEB8E000B0B9E100B0B9E100B0B9E100AFBAE200ADB9E300ADB9
        E300ACB7E300ABB6E300ABB6E300AAB5E100CDD6ED00FDFDFF00CED8F3003F5B
        C9001234BA001638BD001C3CBC001C3CBC00183BBE00183BBF001439C1001137
        C3000B33C2000831C200022DC2000029BC003752B900CDD6ED00AEBBF100143B
        D700214ADF002B50DE003255DE002F53DE002F54DF002B53DF00244FE0001F4F
        E400164AE3000F45E500073CE2000236DC000029BC00AAB5E100B0BEF4001D44
        DF002D53E200365AE3004161E4004B6AE6008AA0F000ADC0F600A9BBF4007B97
        F0002A5BE900144CE9000B42E600063CE200032DC200ABB6E300B2BFF400264B
        E000395EE5004465E5007E93ED00DDE3FA00D8DFF900B3C2F500B3C3F600D5DF
        FB00D2DDFA00537EEF001049E9000A41E500052FC300ABB7E300B4C1F4003054
        E1004463E5005975E800DDE3FA00BEC9F600637EEA004368E7003E67E8004D76
        EC00B9C9F700D0DAFA002154E8001146E3000C35C400ADB8E300B7C4F5003659
        E3004C69E5009AABF100D6DCF900637DE9004A69E600C1CDF700BBC9F7002E5C
        E800466EEA00D2DBFA007593EF00194CE4001338C200AEB9E300BAC6F5004061
        E5005370E700C1CBF700B3BEF500516EE7004968E600C1CBF600BBC8F6002F57
        E3002957E700A9BAF500A3B7F4001E4DE100193CC000B0BBE300BCC7F5004967
        E5005B76E800C4CDF700B3BEF500516EE7004766E500C1CBF600BBC7F6002F55
        E2002954E500A8B8F300A7B9F400254DDE001D3EBF00B1BBE300BEC9F600516E
        E600627CE900A7B5F200D6DDF900637DE9004766E500C1CBF600BAC6F5002F54
        E2004367E700D0D9F9007E95EE002B4FDE002141C000B2BCE200BFCAF6005974
        E7006D86EA00758CEB00E0E8FC00B9C4F5005F79E8004563E5003C5EE3004B6B
        E600B4C2F400D7DEFA003B5DE4002D52DE002443C000B3BCE200C2CCF600647E
        E900778FEC006D86EA0091A3EF00E6EAFB00D3DAF900ABB9F400A9B8F300CFD8
        F800D9E2FA006A84EA003055E2002F53DE002443C000B3BCE200C4CEF7007089
        EB008DA1EF007E94ED006C86EA00728AEB00A6B4F300C5CEF700C3CDF60098A9
        F0005772E7004262E4003B5DE3003254DE001E3EBE00B1BBE200C7D1F7007D93
        ED009CADF100899DEF00788FEC006E86EA006982EA00647EE900627BE9005D77
        E8005672E8004D6BE6004161E4003255DE001D3DBE00B0BAE100DAE3FA00869B
        EE00788FEC006B84EA005E79E8005974E7005470E700506DE6004E6BE6004867
        E5004464E5003E5FE4003055E200264BDB004963CD00D0D9F000FEFEFF00DAE2
        FA00C7D0F700C5CEF700C1CCF600BFCBF600BECAF600BECAF600BDC9F600BBC7
        F500BAC6F500BAC6F500B6C3F500B4C0F200D1DBF500FEFEFF00}
      TabOrder = 0
      OnClick = BtnFecharClick
    end
  end
  object PanTopo: TCPanelGradient
    Left = 0
    Top = 0
    Width = 824
    Height = 35
    Align = alTop
    TabOrder = 1
    CaptionNo = 0
    HintNo = 0
    BackgroundGradientColor = 12306636
    BackgroundGradientDirection = gdVertical
    TextColor = clBlack
    GradientColor = clBlack
    RegularButtonColor = clBlack
    SelectedButtonColor = clBlack
    ButtonOptions = []
    object LblCad: TCLabel
      Left = 9
      Top = 12
      Width = 367
      Height = 13
      Caption = 
        'Problemas na valida'#231#227'o de cadastros b'#225'sicos - Verificar e corrig' +
        'ir'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object GrupoGrid: TCGroupBox
    Left = 0
    Top = 35
    Width = 824
    Height = 397
    Align = alClient
    TabOrder = 2
    object DBGrid: TCDBGrid
      Left = 2
      Top = 15
      Width = 820
      Height = 380
      Align = alClient
      DataSource = FrmNotaFiscal.dsValidacao
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      UtilizaOrdenar = False
      Columns = <
        item
          Expanded = False
          FieldName = 'descValidacao'
          Title.Caption = 'Descri'#231#227'o'
          Width = 64
          Visible = True
        end>
    end
  end
end
