object frmBackup: TfrmBackup
  Left = 185
  Top = 217
  BorderIcons = [biSystemMenu]
  Caption = 'Formul'#225'rio de backup do sitema'
  ClientHeight = 374
  ClientWidth = 545
  Color = 15201011
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object ImgFaixa: TImage
    Left = 0
    Top = 0
    Width = 55
    Height = 374
    Align = alLeft
    ExplicitHeight = 167
  end
  object Bevel3: TBevel
    Left = 439
    Top = 8
    Width = 89
    Height = 349
    Style = bsRaised
  end
  object Bevel1: TBevel
    Left = 58
    Top = 8
    Width = 375
    Height = 186
    Shape = bsFrame
  end
  object Label1: TLabel
    Left = 72
    Top = 16
    Width = 334
    Height = 13
    Caption = 'O backup ser'#225' realizado e o arquivo salvo ter'#225' o nome de:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblNome: TLabel
    Left = 72
    Top = 35
    Width = 139
    Height = 13
    Caption = 'DBNilus-04-10-2006.bak'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 72
    Top = 126
    Width = 63
    Height = 13
    Caption = 'ATEN'#199#195'O:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 72
    Top = 145
    Width = 347
    Height = 33
    AutoSize = False
    Caption = 
      'Para maior seguran'#231'a o arquivo de backup tamb'#233'm dever'#225' ser copia' +
      'do em disco ou pela rede em outra m'#225'quina.'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    WordWrap = True
  end
  object Label2: TLabel
    Left = 72
    Top = 70
    Width = 196
    Height = 13
    Caption = 'Selecione o caminho do Backup...'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Bevel2: TBevel
    Left = 58
    Top = 200
    Width = 375
    Height = 157
    Shape = bsFrame
  end
  object lbl1: TLabel
    Left = 72
    Top = 207
    Width = 214
    Height = 13
    Caption = 'ENVIO DE EMAIL PARA O SUPORTE'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label5: TLabel
    Left = 73
    Top = 226
    Width = 343
    Height = 26
    Caption = 
      'Esse email s'#243' deve ser enviado ap'#243's ter sido solicitado pelo sup' +
      'orte do Nilus'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    WordWrap = True
  end
  object Label6: TLabel
    Left = 73
    Top = 279
    Width = 347
    Height = 55
    AutoSize = False
    Caption = 
      'O Processo pode ser demorado conforme a disponibilidade da inter' +
      'net'#13#10'Esse Processo deve ser obrigatoriamente feito no servidor '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    WordWrap = True
  end
  object Label7: TLabel
    Left = 73
    Top = 260
    Width = 63
    Height = 13
    Caption = 'ATEN'#199#195'O:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object BtnBackup: TBitBtn
    Left = 447
    Top = 17
    Width = 75
    Height = 25
    Caption = '&Backup'
    Glyph.Data = {
      36040000424D3604000000000000360000002800000010000000100000000100
      2000000000000004000000000000000000000000000000000000FFFFFF55FDFD
      FCFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFBFD9D999F55FEFEFEFE85B7
      85FF0F6F0FFF167416FF1A761AFF1A761AFF187818FF177917FF137D13FF0D7F
      0DFF0A7E0AFF077C07FF027B02FF007000FF7FB07FFFFAFAFAFCFFFFFFFF1183
      11FF1F8C1FFF2A912AFF2F932FFF2E942EFF2C962CFF299A29FF239E23FF1CA3
      1CFF15A415FF0DA40DFF059F05FF019101FF006F00FFFFFFFFFFFFFFFFFF198D
      19FF2C962CFF379C37FF3D9F3DFF3C9F3CFF39A139FFA3D6A3FFFFFFFFFF24AF
      24FF1CB11CFF13B213FF0AAD0AFF049F04FF027902FFFFFFFFFFFFFFFFFF2291
      22FF389C38FF43A243FF48A448FF45A545FF42A642FFFFFFFFFFFFFFFFFFFFFF
      FFFF21B521FF18B618FF0EB10EFF08A308FF057E05FFFFFFFFFFFFFFFFFF2C96
      2CFF42A042FF4CA54CFF4FA74FFF4CA74CFF46A746FF40AA40FFFFFFFFFFFFFF
      FFFFFFFFFFFF1AB31AFF14AF14FF0FA30FFF0B800BFFFFFFFFFFFFFFFFFF359A
      35FF4BA54BFF52A852FF53A953FF4EA84EFF49A749FF41A841FF38AA38FFFFFF
      FFFFFFFFFFFFFFFFFFFF19AC19FF18A218FF128212FFFFFFFFFFFFFFFFFF3F9F
      3FFF53A953FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF1F9E1FFF188118FFFFFFFFFFFFFFFFFF45A2
      45FF5AAC5AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF259A25FF1D7F1DFFFFFFFFFFFFFFFFFF4FA7
      4FFF63B163FF61AF61FF59AB59FF51A651FF48A248FF3F9F3FFF369C36FFFFFF
      FFFFFFFFFFFFFFFFFFFF269926FF2A972AFF217E21FFFFFFFFFFFFFFFFFF53A9
      53FF6CB66CFF68B468FF5EAD5EFF54A854FF4CA34CFF429F42FFFFFFFFFFFFFF
      FFFFFFFFFFFF299729FF2B982BFF2D952DFF237E23FFFFFFFFFFFFFFFFFF5EAF
      5EFF7ABD7AFF70B870FF63B063FF5AAB5AFF52A652FFFFFFFFFFFFFFFFFFFFFF
      FFFF339933FF309930FF309830FF2F942FFF237D23FFFFFFFFFFFFFFFFFF6BB5
      6BFF8DC68DFF80C080FF6FB76FFF67B267FF60AE60FFB4D9B4FFFFFFFFFF4CA5
      4CFF49A449FF41A141FF3A9D3AFF309530FF1E7A1EFFFFFFFFFFFFFFFFFF77BB
      77FF9DCF9DFF8CC68CFF79BC79FF70B870FF69B469FF65B265FF62B062FF5DAE
      5DFF56AB56FF4EA74EFF41A141FF2F942FFF197719FFFFFFFFFFFEFDFDFFB1D8
      B1FF76BB76FF67B367FF5BAD5BFF54A954FF4FA74FFF4AA44AFF4BA54BFF46A3
      46FF3FA03FFF3B9E3BFF319831FF238C23FF8ABB8AFFFFFFFEFBFFFFFF55FFFF
      FFFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFCFCFBCEB3AA55}
    Margin = 3
    TabOrder = 0
    OnClick = BtnBackupClick
  end
  object BtnSair: TBitBtn
    Left = 447
    Top = 326
    Width = 75
    Height = 25
    Caption = '&Sair'
    Glyph.Data = {
      36040000424D3604000000000000360000002800000010000000100000000100
      2000000000000004000000000000000000000000000000000000FFFFFF2FEEEC
      EBF5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3F3F4EB8782892FF5F4F4F58596
      DCFF0F30B5FF1636B8FF1A39B8FF1A39B7FF1839BBFF1739B9FF1337BDFF0D35
      C0FF0A32C0FF072FBEFF022CC0FF0026B6FF7F90D1FFEFEDEDE5FFFFFFFF1138
      D4FF1F44D9FF2A4DDAFF2F51DAFF2E51DBFF2C51DBFF2951DCFF244FDFFF1C4B
      E0FF1547E0FF0D42E0FF053AE0FF0132D7FF0026B5FFFFFFFFFFFFFFFFFF1941
      DEFF2C50E1FF3759E3FF4464E5FF7E94EDFFE2E8FBFFFFFFFFFFFFFFFFFFDCE4
      FBFF7192F1FF134BE9FF0A43E8FF0439E0FF022BBEFFFFFFFFFFFFFFFFFF2248
      DFFF385AE3FF4363E4FFA2B2F2FFFFFFFFFFBBC8F6FF728FEEFF6F8FEFFFBACA
      F8FFFFFFFFFF98B1F6FF0E48E9FF083EE1FF052EC1FFFFFFFFFFFFFFFFFF2C51
      E1FF4261E4FF8B9EEEFFFFFFFFFF8398EEFF4669E6FF4066E7FF3763E8FF2C5D
      E9FF7294F1FFFFFFFFFF6B8DF0FF0F43E1FF0B33C1FFFFFFFFFFFFFFFFFF3558
      E2FF4B68E5FFEBEFFCFFBBC6F5FF4E6DE6FF496AE6FFFFFFFFFFFFFFFFFF2D5C
      E8FF2456E8FFB6C7F8FFDBE3FBFF1848E0FF1238C2FFFFFFFFFFFFFFFFFF3F5F
      E4FF536FE7FFFFFFFFFF8195EDFF506DE6FF4868E5FFFFFFFFFFFFFFFFFF2C58
      E6FF2352E6FF6587EEFFFFFFFFFF1F4CDFFF183CC0FFFFFFFFFFFFFFFFFF4564
      E5FF5A75E8FFFFFFFFFF8195EDFF506CE6FF4867E5FFFFFFFFFFFFFFFFFF2C55
      E4FF2450E4FF6483ECFFFFFFFFFF254EDEFF1D3FBFFFFFFFFFFFFFFFFFFF4F6C
      E6FF637DE8FFEFF1FDFFB7C2F5FF516CE6FF4865E4FFFFFFFFFFFFFFFFFF2C52
      E2FF264EE2FFB0BFF5FFE0E6FBFF2A50DCFF2141BFFFFFFFFFFFFFFFFFFF536F
      E7FF6C85EAFF97A9F1FFFFFFFFFF8093EDFF4C67E5FF4261E4FF3A5BE3FF3054
      E2FF6C86EBFFFFFFFFFF728AECFF2D51DCFF2342BEFFFFFFFFFFFFFFFFFF5E79
      E8FF7A91ECFF7089EBFFA6B5F2FFFFFFFFFFB1BDF4FF7086EAFF6B83E9FFB0BD
      F4FFFFFFFFFF95A8F0FF3053E1FF2F52DBFF2342BDFFFFFFFFFFFFFFFFFF6B85
      EAFF8DA1EFFF8097EDFF6F88EBFF97A8F0FFEEF0FCFFFFFFFFFFFFFFFFFFE9ED
      FCFF899DEEFF4162E4FF3A5CE3FF3053DCFF1E3EBCFFFFFFFFFFFFFFFFFF778E
      ECFF9DAEF1FF8CA0EFFF7990ECFF7089EBFF6A83E9FF657EE9FF627CE9FF5D78
      E8FF5673E7FF4E6CE6FF4162E4FF2F52DBFF1939BAFFFFFFFFFFF5F0F0FDB2BF
      F4FF768DECFF6781EAFF5B76E8FF5470E7FF4F6CE6FF4A69E6FF4B69E5FF4665
      E5FF3F60E3FF3B5DE3FF3154E2FF2347D8FF8A9BDEFFFFFDF7DFFFFFFF2FFFFF
      FFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F1EFDFC3A2972F}
    Margin = 3
    TabOrder = 1
    OnClick = BtnSairClick
  end
  object EDCaminho: TCEdit
    Left = 73
    Top = 85
    Width = 296
    Height = 19
    BorderStyle = bsNone
    BevelKind = bkTile
    Color = 12506838
    ReadOnly = True
    TabOrder = 2
    Text = ''
    DataType = ftUnknown
    KeyMode = kmNormal
    Decimals = 0
  end
  object BtnCaminho: TCBitBtn
    Left = 370
    Top = 85
    Width = 21
    Height = 19
    Glyph.Data = {
      36040000424D3604000000000000360000002800000010000000100000000100
      2000000000000004000000000000000000000000000000000000FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00F9F6F5FFE0D8D6FFC7BFBEFFBEB9B8FFD5D3D3FFF8F8F8FFFF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FCFAFAFFEBE0DEFFCEB3ACFFA7857DFF83625BFF78635FFF9B9593FFDAD9
      D9FFE7E6E6FFE0DFDFFFE4E3E3FFEEEEEEFFF9F9F9FFFF00FF00FF00FF00FF00
      FF00F9F7F6FFE8DBD8FFCBB1ACFFAC8A82FF956A60FF936257FF906055FF8669
      62FF9B9492FFC9C7C7FFC5C3C2FFB9B7B6FFCECCCCFFFF00FF00FF00FF00FEFE
      FEFFF7F3F2FFE4D5D1FFC6ACA6FFA8857DFF946A60FF936257FFA57266FFB991
      88FFB58B82FF8E7570FFB5B2B1FFC2C0BFFFE1E0DFFFFF00FF00FF00FF00FCFB
      FBFFF3EDEBFFDECCC8FFC1A59FFFA58179FF976A60FF9F6A5EFFAC7D72FFBC96
      8DFFCBAEA7FFD3BBB5FFAA796EFFA19B9AFFFBFBFBFFFF00FF00FF00FF00FCF9
      F9FFEFE6E3FFD8C3BFFFBDA099FFA67F76FF9E6D62FFA8766BFFB68D84FFC5A4
      9DFFCDB0AAFFD0B5AFFFC9ACA5FFBEB6B4FFFF00FF00FF00FF00FF00FF00FAF7
      F7FFEADEDCFFD2BBB7FFB99A92FFA87D74FFA67569FFB1857BFFBF9B93FFCAAD
      A6FFCDB0AAFFCDB0AAFFB5A09BFFFF00FF00FF00FF00FF00FF00FEFEFEFFF7F4
      F3FFE6D8D5FFCEB5B0FFB8958EFFAD7E74FFAD7F74FFBA938AFFC7A7A0FFCAAC
      A5FFCDB0AAFFBD988FFFEBEAEAFFFF00FF00FF00FF00FF00FF00FEFEFEFFF5EF
      EEFFE3D3CFFFCCB1ABFFBB948CFFB2867CFFB58B82FFC29F97FFC7A7A0FFC8A9
      A2FFC09D95FFE1DFDFFFECEBEBFFEEEEEEFFFF00FF00FF00FF00FDFCFCFFF2EB
      E9FFDDCAC6FFCAADA6FFBD978EFFB78F85FFBC968EFFC3A199FFC3A199FFC3A2
      9BFFD6D0CFFFFF00FF00E6E5E5FFEBEAEAFFFF00FF00FF00FF00FEFEFEFFFAF8
      F8FFEADEDCFFCDB1ABFFBA938AFFBA948BFFBE9991FFBF9B93FFC29F97FFAF82
      78FFE2E1E0FFFAFAFAFFEFEFEFFFFBFBFBFFFF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00F7F3F2FFE3D3CFFFC2A099FFBA938AFFBA938AFFB78E85FFB185
      7BFFCEC2BFFFFF00FF00FBFBFBFFFF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00F6F1F0FFD4BCB7FFB4897FFFAE8075FFD9C3
      BEFFFEFEFDFFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00E9DCDAFFD2B9B4FFFCFC
      FCFFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
    TabOrder = 3
    OnClick = BtnCaminhoClick
  end
  object btnEnviarEmail: TBitBtn
    Left = 72
    Top = 326
    Width = 92
    Height = 25
    Caption = '&Enviar Email'
    Enabled = False
    Glyph.Data = {
      36030000424D3603000000000000360000002800000010000000100000000100
      18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFBD4C00BD4C00BD4C00BD4C00BD4C00BD4C00BD
      4C00BD4C00BD4C00BD4C00BD4C00BD4C00BD4C00BD4C00BD4C00FF00FFBD4C00
      FFFFFFFFFFFFFFF8F2FFEFDEFEE5C9FEDAB2FED1A1FECB96FECB96FECB96FECB
      96FECB96FECB96BD4C00FF00FFBD4C00FFFFFFFFFFFFFFFFFFFFF8F2FFEFDEFE
      E5C9FEDAB4FED1A1FECB96FECB96FECB96FECB96FECB96BD4C00FF00FFBD4C00
      FFFFFF2D56F82D56F82D56F8FFFAF28B28038B28038B2803FED0A10182BF0182
      BF0182BFFECB96BD4C00FF00FFBD4C00FFFFFF2D56F82D56F82D56F8FFFFFF8B
      28038B28038B2803FEDAB40182BF0182BF0182BFFECB96BD4C00FF00FFBD4C00
      FFFFFF2D56F82D56F82D56F8FFFFFF8B28038B28038B2803FFE5C90182BF0182
      BF0182BFFECB96BD4C00FF00FFBD4C00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFEF8F2FEEFE0FEE5C9FFDAB2FED1A1FECB96BD4C00FF00FFBD4C00
      FFFFFFBD8281BD8281BD8281FFFFFFD96401D96401D96401FFF8F00082010082
      01008201FED1A1BD4C00FF00FFBD4C00FFFFFFBD8281BD8281BD8281FFFFFFD9
      6401D96401D96401FFFFFF008201008201008201FEDAB4BD4C00FF00FFBD4C00
      FFFFFFBD8281BD8281BD8281FFFFFFD96401D96401D96401FFFFFF0082010082
      01008201FFE5C9BD4C00FF00FFBD4C00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8F2FFEFDEBD4C00FF00FFBD4C00
      BD4C00BD4C00BD4C00BD4C00BD4C00BD4C00BD4C00BD4C00BD4C00BD4C00BD4C
      00BD4C00BD4C00BD4C00FF00FFFF00FFBD4C00BD4C00BD4C00BD4C00BD4C00BD
      4C00BD4C00BD4C00BD4C00BD4C00BD4C00BD4C00BD4C00FF00FFFF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
      00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
    Margin = 3
    TabOrder = 4
    OnClick = btnEnviarEmailClick
  end
  object AbrePasta: TcxShellBrowserDialog
    Left = 312
    Top = 80
  end
  object AbZipper1: TAbZipper
    AutoSave = False
    DOSMode = False
    Left = 464
    Top = 144
  end
end
