inherited FrmComissaoContrato: TFrmComissaoContrato
  Caption = 'Controle de Comiss'#227'o de Contratos'
  ClientHeight = 545
  ClientWidth = 1288
  ExplicitWidth = 1304
  ExplicitHeight = 584
  PixelsPerInch = 96
  TextHeight = 13
  inherited Bevel1: TBevel
    Top = 541
    Width = 1288
    ExplicitTop = 541
    ExplicitWidth = 895
  end
  inherited PagAbas: TCPageControl
    Width = 1288
    Height = 493
    ExplicitWidth = 1288
    ExplicitHeight = 493
    inherited TabAbas: TTabSheet
      Caption = 'Informe os Par'#226'metros'
      ExplicitLeft = 4
      ExplicitTop = 25
      ExplicitWidth = 1280
      ExplicitHeight = 464
      object CPageControl1: TCPageControl
        Left = 868
        Top = 8
        Width = 121
        Height = 57
        ActivePage = TabSheet1
        Align = alCustom
        MultiLine = True
        TabOrder = 0
        Visible = False
        object TabSheet1: TTabSheet
          Caption = 'Padr'#227'o'
          Highlighted = True
          ExplicitLeft = 0
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
        end
      end
      object GrupoGrid: TCGroupBox
        Left = 0
        Top = 140
        Width = 1280
        Height = 324
        Align = alClient
        TabOrder = 1
        object DBGrid: TCDBGrid
          Left = 2
          Top = 15
          Width = 1276
          Height = 307
          Align = alClient
          DataSource = dsGrid
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection]
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          OnCellClick = DBGridCellClick
          OnColEnter = DBGridColEnter
          OnDrawColumnCell = DBGridDrawColumnCell
          UtilizaOrdenar = False
          Columns = <
            item
              Expanded = False
              FieldName = 'sel'
              Title.Caption = '?'
              Width = 15
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'idEmpresa'
              Title.Caption = 'Emp.'
              Width = 40
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
              FieldName = 'idContrato'
              Title.Caption = 'Contrato'
              Width = 90
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'dtEmissao'
              Title.Caption = 'Data Emiss'#227'o'
              Width = 75
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'idCadGeral'
              Title.Caption = 'C'#243'd.Cli.'
              Width = 50
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'descCadGeral'
              Title.Caption = 'Nome Cliente/Fornecedor'
              Width = 250
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'stContrato'
              Title.Caption = 'Status'
              Width = 80
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'tpContrato'
              Title.Caption = 'Tipo'
              Width = 80
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'vlComissao'
              Title.Caption = 'Valor Comiss'#227'o'
              Width = 80
              Visible = True
            end>
        end
      end
      object CPanelGradient1: TCPanelGradient
        Left = 0
        Top = 107
        Width = 1280
        Height = 33
        Align = alTop
        BevelOuter = bvNone
        Caption = 'PanBotoes'
        TabOrder = 2
        CaptionNo = 0
        HintNo = 0
        BackgroundGradientColor = 13099746
        BackgroundGradientDirection = gdVertical
        TextColor = clBlack
        GradientColor = clBlack
        RegularButtonColor = clBlack
        SelectedButtonColor = clBlack
        ButtonOptions = []
        object BtnExecutar: TCBitBtn
          Left = 8
          Top = 4
          Width = 75
          Height = 25
          Caption = '&Pesquisar'
          Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            2000000000000004000000000000000000000000000000000000FF00FF00C2C2
            C2FF404040FF1E1E1EFF252525FF252525FF252525FF252525FF252525FF2525
            25FF252525FF252525FF1E1E1EFF353535FF8A8A8AFFFEFEFEFFFF00FF00C4C4
            C4FFFCFCFCFFFBFBFBFFFBFBFBFFFBFBFBFFFBFBFBFFFAFAFAFFFAFAFAFFF9F9
            F9FFF9F9F9FFF8F8F8FFCBCBCBFF434343FF505050FFB8B8B8FFFF00FF00C6C6
            C6FFFAFAFAFFFCFCFCFFFCFCFCFFFCFCFCFFFBFBFBFFFBFBFBFFFAFAFAFFF9F9
            F9FFF9F9F9FFC9C9C9FF434343FF6F6F6FFF4E4E4EFFD4D4D4FFFF00FF00C6C6
            C6FFF8F8F8FFFAFAFAFFFAFAFAFFF9F9F9FFF9F9F9FFF8F8F8FFF7F7F7FFF7F7
            F7FFC6C6C6FF444444FF767676FF5C5C5CFF979797FFFF00FF00FF00FF00C6C6
            C6FFF7F7F7FFF6F6F6FFF2F2F1FFEAEAEAFFECECECFFF2F2F2FFF5F5F5FFCACA
            CAFF464646FF7C7C7CFF5F5F5FFFD0D0D0FFB1B1B1FFFF00FF00FF00FF00C6C6
            C6FFE7E7E7FFABABABFF979797FF989898FF969696FFAEAEAEFFD5D5D5FF5D5D
            5DFF838383FF626262FFD2D2D2FFEBEBEBFFB1B1B1FFFF00FF00FF00FF00B4B4
            B4FF989898FFC3C3C3FFDDDDDDFFE2E2E2FFDADADAFFBDBDBDFF7D7D7DFF9B9B
            9BFF707070FFD1D1D1FFEBEBEBFFE2E2E2FFB1B1B1FFFF00FF00F6F6F6FF8989
            89FFCECECEFFE7E7E7FFEBEBEBFFECECECFFE9E9E9FFE6E6E6FFCECECEFF8989
            89FFD1D1D1FFE9E9E9FFE1E1E1FFD3D3D3FFB1B1B1FFFF00FF00B8B8B8FF9D9D
            9DFFE1E1E1FFE9E9E9FFECECECFFEEEEEEFFEAEAEAFFE7E7E7FFE1E1E1FFADAD
            ADFFA3A3A3FFE2E2E2FFD5D5D5FFC6C6C6FFB6B6B6FFFF00FF00A9A9A9FFAEAE
            AEFFDEDEDEFFE2E2E2FFE7E7E7FFEAEAEAFFE4E4E4FFE0E0E0FFDDDDDDFFC1C1
            C1FF868686FFD3D3D3FFC6C6C6FFAFAFAFFFBBBBBBFFFF00FF00ACACACFFB3B3
            B3FFD9D9D9FFDDDDDDFFE4E4E4FFE5E5E5FFDCDCDCFFD8D8D8FFD6D6D6FFBCBC
            BCFF7B7B7BFFB0B0B0FFAFAFAFFF959595FFC1C1C1FFFF00FF00B6B6B6FFB1B1
            B1FFD6D6D6FFE0E0E0FFE7E7E7FFE6E6E6FFDFDFDFFFD5D5D5FFCCCCCCFF8B8B
            8BFF606060FF7D7D7DFF949494FFA2A2A2FFD8D8D8FFFF00FF00BFBFBFFFB1B1
            B1FFDBDBDBFFE3E3E3FFE5E5E5FFE6E6E6FFE3E3E3FFD6D6D6FFC4C4C4FF7878
            78FFC1C1C1FFFBFBFBFFDFDFDFFFAEAEAEFFEBEBEBFFFF00FF00E1E1E1FFA4A4
            A4FFD9D9D9FFE7E7E7FFE8E8E8FFE8E8E8FFE3E3E3FFD6D6D6FFABABABFF8484
            84FFF7F7F7FFDFDFDFFFABABABFFE0E0E0FFFF00FF00FF00FF00FF00FF00B5B5
            B5FFA1A1A1FFCCCCCCFFDFDFDFFFE2E2E2FFD2D2D2FFADADADFFB2B2B2FFBBBB
            BBFFDFDFDFFFAFAFAFFFE1E1E1FFFF00FF00FF00FF00FF00FF00FF00FF00DADA
            DAFFB7B7B7FF9E9E9EFFA3A3A3FF9A9A9AFF939393FFA6A6A6FFB5B5B5FFB9B9
            B9FFC6C6C6FFE7E7E7FFFF00FF00FF00FF00FF00FF00FF00FF00}
          TabOrder = 0
          OnClick = BtnExecutarClick
        end
        object CBitBtn1: TCBitBtn
          Left = 651
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
          TabOrder = 1
          OnClick = actFecharExecute
        end
        object btnNenhum: TCBitBtn
          Tag = 1
          Left = 380
          Top = 6
          Width = 123
          Height = 25
          Caption = '&Desmarcar Todos'
          Enabled = False
          Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
            96675E9F6F609F6F609F6F609F6F609F6F609F6F609F6F609F6F609F6F609F6F
            609F6F609F6F60FF00FFFF00FFFF00FF99695FF6E0BFF4DDB8F3DAB4F3D7ADF2
            D5A7F0D3A3F0D09EEECC99EECA93EDC990EDC68C9F6F60FF00FFFF00FFFF00FF
            9D6C60F6E3C6F6E1C1F4DDBBF3DCB4008100F2D5AAF0D3A4F0CF9FEFCC99EFCB
            95EEC9909F6F60FF00FFFF00FFFF00FFA16E60F7E6CEF6E5C7F4E1C100810000
            8100008100F3D5ABF0D3A5EFD19FEFCE9AEFCB969F6F60FF00FFFF00FFFF00FF
            A67262F8EAD4F7E7CE008100307A2A5F924B00810050883CF2D5ABF0D3A5F0D0
            A0EFCF9C9F6F60FF00FFFF00FFFF00FFAB7663FAEEDAFAEBD5008100EFE2C2F6
            E2C2A7B883008100008100EDD4A9F0D4A6F0D1A19F6F60FF00FFFF00FFFF00FF
            B07864FAF0E2FAEEDCF8EBD5F8E9D0F7E6CAF6E3C5E6D8B4008100008100F2D7
            ADF2D4A79F6F60FF00FFFF00FFFF00FFB57D64FCF3E7FBF0E3FAEFDDFAEDD8F7
            E9D1F8E6CBF6E3C5F6E1C0F4DEBAF4DAB5F3D7AD9F6F60FF00FFFF00FFFF00FF
            BB8065FCF7EDD58127D58127D58127D58127D58127D58127D58127D58127D581
            27F3DAB69F6F60FF00FFFF00FFFF00FFC08366FCF8F3FCF7EFFCF4EAFBF2E5FB
            EFDEF8EDD9F8EBD4F8E7CEF7E3C7F6E1C2F4DEBB9F6F60FF00FFFF00FFFF00FF
            C48767FEFBF8FEFAF3FEF7EFFCF4EAFBF2E6FAEFE0F8EDDAF8EAD4F7E9CFF7E5
            C9F6E2C49F6F60FF00FFFF00FFFF00FFC98967FEFCFBD58127D58127D58127D5
            8127D58127D58127D58127D58127D58127F7E5CA9F6F60FF00FFFF00FFFF00FF
            CC8B68FFFFFFFFFEFCFEFCFAFEFBF4FEF8F0FCF6EDFCF4E7FAF2E2FAEFDCF8ED
            D7F8EAD19F6F60FF00FFFF00FFFF00FFCF8E68FFFFFFFFFFFFFFFFFCFFFCFAFE
            FBF6FEF8F0FCF7EEFBF4E9FBF2E3FBEFDDF8EDD89F6F60FF00FFFF00FFFF00FF
            CF8E68CF8E68CF8E68CF8E68CF8E68CF8E68CF8E68CF8E68CF8E68CF8E68CF8E
            68CF8E68CF8E68FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
          TabOrder = 2
          OnClick = btnNenhumClick
        end
        object BtnSelTodos: TCBitBtn
          Tag = 1
          Left = 239
          Top = 6
          Width = 122
          Height = 25
          Caption = '&Selecionar Todos'
          Enabled = False
          Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FF7A2D067A2D067A2D067A2D06FF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF7A2D06E9AD68
            E2751F7A2D06FF00FF0000000000000000000000000000000000000000000000
            00000000000000FF00FF7A2D0642C555F4CFA47A2D06FF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF7A2D067A2D06
            7A2D067A2D06FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF7A2D067A2D06
            7A2D067A2D06FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FF7A2D06E9AD68E2751F7A2D06FF00FF00000000000000
            0000000000000000000000000000000000000000000000FF00FF7A2D0642C555
            F4CFA47A2D06FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FF7A2D067A2D067A2D067A2D06FF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FF7A2D067A2D067A2D067A2D06FF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF7A2D06E9AD68
            E2751F7A2D06FF00FF0000000000000000000000000000000000000000000000
            00000000000000FF00FF7A2D0642C555F4CFA47A2D06FF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF7A2D067A2D06
            7A2D067A2D06FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
          TabOrder = 3
          OnClick = BtnSelTodosClick
        end
      end
      object PanTopo: TCPanelGradient
        Left = 0
        Top = 0
        Width = 1280
        Height = 107
        Align = alTop
        Caption = 'PanTopo'
        TabOrder = 3
        CaptionNo = 0
        HintNo = 0
        BackgroundGradientColor = 12306636
        BackgroundGradientDirection = gdVertical
        TextColor = clBlack
        GradientColor = clBlack
        RegularButtonColor = clBlack
        SelectedButtonColor = clBlack
        ButtonOptions = []
        object CLabel7: TCLabel
          Left = 29
          Top = 32
          Width = 38
          Height = 13
          Alignment = taRightJustify
          Caption = 'Repres.'
          Transparent = True
        end
        object CLabel9: TCLabel
          Left = 546
          Top = 32
          Width = 48
          Height = 13
          Alignment = taRightJustify
          Caption = 'CNPJ/CPF'
          Transparent = True
        end
        object CLabel23: TCLabel
          Left = 41
          Top = 57
          Width = 26
          Height = 13
          Alignment = taRightJustify
          Caption = 'Safra'
        end
        object CLabel8: TCLabel
          Left = 9
          Top = 82
          Width = 58
          Height = 13
          Alignment = taRightJustify
          Caption = 'Contrato de'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object CLabel4: TCLabel
          Left = 135
          Top = 82
          Width = 16
          Height = 13
          Alignment = taRightJustify
          Caption = 'at'#233
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object CLabel5: TCLabel
          Left = 233
          Top = 82
          Width = 38
          Height = 13
          Alignment = taRightJustify
          Caption = 'Data de'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object CLabel6: TCLabel
          Left = 358
          Top = 82
          Width = 16
          Height = 13
          Alignment = taRightJustify
          Caption = 'at'#233
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object PanEmpresa: TCPanelGradient
          Left = 1
          Top = 1
          Width = 1278
          Height = 24
          Align = alTop
          Caption = 'PanEmpresa'
          TabOrder = 0
          CaptionNo = 0
          HintNo = 0
          BackgroundGradientColor = 15201011
          BackgroundGradientDirection = gdVertical
          TextColor = clBlack
          GradientColor = clBlack
          RegularButtonColor = clBlack
          SelectedButtonColor = clBlack
          ButtonOptions = []
          object lblEmpresa: TCLabel
            Left = 12
            Top = 8
            Width = 41
            Height = 13
            Alignment = taRightJustify
            Caption = 'Empresa'
            Transparent = True
          end
          object lblCNPJ: TCLabel
            Left = 5
            Top = 30
            Width = 48
            Height = 13
            Alignment = taRightJustify
            Caption = 'CNPJ/CPF'
            Transparent = True
            Visible = False
          end
          object lblInscricao: TCLabel
            Left = 191
            Top = 30
            Width = 72
            Height = 13
            Alignment = taRightJustify
            Caption = 'Inscr. Estadual'
            Transparent = True
            Visible = False
          end
          object DBEidEmpresa: TCDBEdit
            Left = 59
            Top = 5
            Width = 46
            Height = 19
            TabStop = False
            BevelKind = bkTile
            BorderStyle = bsNone
            DataField = 'idEmpresa'
            DataSource = dsPadrao
            TabOrder = 0
            DecimalControl = True
            KeyMode = kmNormal
          end
          object DBEidCadEmpresa: TCDBEdit
            Left = 111
            Top = 5
            Width = 46
            Height = 19
            TabStop = False
            BevelKind = bkTile
            BorderStyle = bsNone
            DataField = 'idCadEmpresa'
            DataSource = dsPadrao
            TabOrder = 1
            DecimalControl = True
            KeyMode = kmNormal
          end
          object LookdescCadEmpresa: TCLookUp
            Left = 163
            Top = 5
            Width = 250
            Height = 19
            Alignment = taLeftJustify
            BevelInner = bvSpace
            BevelOuter = bvLowered
            Color = 14149350
            ParentBackground = False
            TabOrder = 2
            Key.Strings = (
              'idEmpresa'
              'idCadEmpresa')
            LookUpKey.Strings = (
              'idEmpresa'
              'idCadEmpresa')
            ClientDataSet = cdsLookUp
            DataSource = dsPadrao
            ValidaCampoObrigatorio = True
            CampoObrigatorio = True
            LookUpTable = 'vCadEmpresaFiscal'
            ReturnField = 'descCadEmpresa'
          end
          object LookdescAbreviada: TCLookUp
            Left = 419
            Top = 5
            Width = 165
            Height = 19
            Alignment = taLeftJustify
            BevelInner = bvSpace
            BevelOuter = bvLowered
            Color = 14149350
            ParentBackground = False
            TabOrder = 3
            Key.Strings = (
              'idEmpresa'
              'idCadEmpresa')
            LookUpKey.Strings = (
              'idEmpresa'
              'idCadEmpresa')
            ClientDataSet = cdsLookUp
            DataSource = dsPadrao
            ValidaCampoObrigatorio = True
            CampoObrigatorio = True
            LookUpTable = 'vCadEmpresaFiscal'
            ReturnField = 'descAbreviada'
          end
          object lookidCnpjCpf: TCLookUp
            Left = 59
            Top = 27
            Width = 126
            Height = 19
            Alignment = taLeftJustify
            BevelInner = bvSpace
            BevelOuter = bvLowered
            Color = 14149350
            ParentBackground = False
            TabOrder = 4
            Visible = False
            Key.Strings = (
              'idEmpresa'
              'idCadEmpresa')
            LookUpKey.Strings = (
              'idEmpresa'
              'idCadEmpresa')
            ClientDataSet = cdsLookUp
            DataSource = dsEmpresa
            ValidaCampoObrigatorio = True
            CampoObrigatorio = True
            LookUpTable = 'vCadEmpresaFiscal'
            ReturnField = 'idCnpjCpf'
          end
          object LookidInscEstadual: TCLookUp
            Left = 269
            Top = 27
            Width = 126
            Height = 19
            Alignment = taLeftJustify
            BevelInner = bvSpace
            BevelOuter = bvLowered
            Color = 14149350
            ParentBackground = False
            TabOrder = 5
            Visible = False
            Key.Strings = (
              'idEmpresa'
              'idCadEmpresa')
            LookUpKey.Strings = (
              'idEmpresa'
              'idCadEmpresa')
            ClientDataSet = cdsLookUp
            DataSource = dsEmpresa
            ValidaCampoObrigatorio = True
            CampoObrigatorio = True
            LookUpTable = 'vCadEmpresaFiscal'
            ReturnField = 'idInscEstadual'
          end
        end
        object DBEidCliente: TCDBEdit
          Left = 73
          Top = 29
          Width = 46
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'idCliente'
          DataSource = dsPadrao
          TabOrder = 1
          Find = dmFind.FindFornecedor
          DecimalControl = True
          KeyMode = kmNormal
        end
        object LookDescCadCliente: TCLookUp
          Left = 125
          Top = 29
          Width = 236
          Height = 19
          Alignment = taLeftJustify
          BevelInner = bvSpace
          BevelOuter = bvLowered
          Color = 14149350
          ParentBackground = False
          TabOrder = 2
          Key.Strings = (
            'idCliente')
          LookUpKey.Strings = (
            'idCliente')
          ClientDataSet = cdsLookUp
          DataSource = dsPadrao
          ValidaCampoObrigatorio = True
          CampoObrigatorio = True
          LookUpTable = 'vCadClienteContabil'
          ReturnField = 'descCadCliente'
        end
        object LookDescAbreviadaCliente: TCLookUp
          Left = 367
          Top = 29
          Width = 173
          Height = 19
          Alignment = taLeftJustify
          BevelInner = bvSpace
          BevelOuter = bvLowered
          Color = 14149350
          ParentBackground = False
          TabOrder = 3
          Key.Strings = (
            'idCliente')
          LookUpKey.Strings = (
            'idCliente')
          ClientDataSet = cdsLookUp
          DataSource = dsPadrao
          ValidaCampoObrigatorio = True
          CampoObrigatorio = True
          LookUpTable = 'vCadClienteContabil'
          ReturnField = 'descAbreviada'
        end
        object LookidCnpjCpfCliente: TCLookUp
          Left = 600
          Top = 29
          Width = 126
          Height = 19
          Alignment = taLeftJustify
          BevelInner = bvSpace
          BevelOuter = bvLowered
          Color = 14149350
          ParentBackground = False
          TabOrder = 4
          Key.Strings = (
            'idCliente')
          LookUpKey.Strings = (
            'idCliente')
          ClientDataSet = cdsLookUp
          DataSource = dsPadrao
          ValidaCampoObrigatorio = False
          CampoObrigatorio = True
          LookUpTable = 'vCadClienteContabil'
          ReturnField = 'idCnpjCpf'
        end
        object DBEidSafra: TCDBEdit
          Left = 73
          Top = 54
          Width = 46
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'idSafra'
          DataSource = dsPadrao
          TabOrder = 5
          Find = dmFind.FindSafra
          AcaoCad = frmPrincipal.actCadSafra
          DecimalControl = True
          KeyMode = kmNormal
        end
        object LookSafra: TCLookUp
          Left = 125
          Top = 54
          Width = 292
          Height = 19
          Alignment = taLeftJustify
          BevelInner = bvSpace
          BevelOuter = bvLowered
          Color = 14149350
          ParentBackground = False
          TabOrder = 6
          Key.Strings = (
            'idEmpresa'
            'idSafra')
          LookUpKey.Strings = (
            'idEmpresa'
            'idSafra')
          ClientDataSet = cdsLookUp
          DataSource = dsPadrao
          ValidaCampoObrigatorio = True
          CampoObrigatorio = True
          LookUpTable = 'Safra'
          ReturnField = 'descSafra'
        end
        object DBEidContratoIni: TCDBEdit
          Left = 73
          Top = 79
          Width = 60
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'idContratoIni'
          DataSource = dsPadrao
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 10
          DecimalControl = True
          KeyMode = kmUSUpper
        end
        object DBEidContratoFim: TCDBEdit
          Left = 157
          Top = 79
          Width = 60
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'idContratoFim'
          DataSource = dsPadrao
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 11
          DecimalControl = True
          KeyMode = kmUSUpper
        end
        object DBEdtInicial: TCDBEdit
          Left = 277
          Top = 79
          Width = 75
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'dtInicial'
          DataSource = dsPadrao
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          MaxLength = 10
          ParentFont = False
          TabOrder = 12
          DecimalControl = True
          KeyMode = kmDate
        end
        object DBEdtFinal: TCDBEdit
          Left = 380
          Top = 79
          Width = 75
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'dtFinal'
          DataSource = dsPadrao
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          MaxLength = 10
          ParentFont = False
          TabOrder = 13
          DecimalControl = True
          KeyMode = kmDate
        end
        object DBCKconsolidafilial: TCDBCheckBox
          Left = 558
          Top = 55
          Width = 127
          Height = 17
          Caption = 'Consolida Filiais?'
          DataField = 'consolidafilial'
          DataSource = dsPadrao
          TabOrder = 8
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
        object DBCKconsolidaemp: TCDBCheckBox
          Left = 423
          Top = 55
          Width = 127
          Height = 17
          Caption = 'Consolida Empresas?'
          DataField = 'consolidaemp'
          DataSource = dsPadrao
          TabOrder = 7
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
        object DBEidUsuario: TCDBEdit
          Left = 842
          Top = 25
          Width = 75
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'idUsuario'
          DataSource = dsPadrao
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          MaxLength = 10
          ParentFont = False
          TabOrder = 9
          Visible = False
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBRGtpContrato: TCDBRadioGroup
          Left = 461
          Top = 71
          Width = 265
          Height = 33
          Caption = 'Tipo de Contrato'
          Columns = 3
          DataField = 'tpContrato'
          DataSource = dsPadrao
          Items.Strings = (
            'Compra'
            'Venda'
            'Ambos')
          TabOrder = 14
          TabStop = True
          Values.Strings = (
            'C'
            'D'
            'A')
        end
        object DBEobsTituloPag: TCDBEdit
          Left = 946
          Top = 25
          Width = 75
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'obsTituloPag'
          DataSource = dsPadrao
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          MaxLength = 10
          ParentFont = False
          TabOrder = 15
          Visible = False
          DecimalControl = True
          KeyMode = kmNormal
        end
      end
    end
  end
  inherited PanBotoes: TCPanelGradient
    Top = 493
    Width = 1288
    Height = 48
    ExplicitTop = 493
    ExplicitWidth = 1288
    ExplicitHeight = 48
    object CLabel34: TCLabel [0]
      Left = 10
      Top = 20
      Width = 75
      Height = 13
      Alignment = taRightJustify
      Caption = 'Total a Pagar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object CLabel1: TCLabel [1]
      Left = 182
      Top = 20
      Width = 55
      Height = 13
      Alignment = taRightJustify
      Caption = 'Vencimento'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    inherited BtnSalvar: TCBitBtn
      Left = 646
      Top = 6
      Caption = '&Gerar'
      TabOrder = 3
      Visible = False
      ExplicitLeft = 646
      ExplicitTop = 6
    end
    inherited BtnFechar: TCBitBtn
      Left = 758
      Top = 17
      TabOrder = 4
      Visible = False
      ExplicitLeft = 758
      ExplicitTop = 17
    end
    object DBRGtpFinanceiro: TCDBRadioGroup
      Left = 805
      Top = -18
      Width = 331
      Height = 40
      Caption = 'Financeiro Gerar:'
      Color = 15201011
      Columns = 3
      DataField = 'tpFinanceiro'
      DataSource = dsPadrao
      Items.Strings = (
        'T'#237'tulo a Pagar'
        'Caixa'
        'Banco')
      ParentBackground = False
      ParentColor = False
      TabOrder = 5
      Values.Strings = (
        'T'
        'C'
        'B')
      Visible = False
    end
    object BtnGerar: TCBitBtn
      Left = 324
      Top = 13
      Width = 75
      Height = 25
      Caption = '&Gerar'
      Enabled = False
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000FF00FF00C7BC
        B7FFC9BDB8FFC8BFBCFFC5C5C5FFC5C5C6FFC5C4C3FFC5C3C2FFC5C3C2FFC5C3
        C2FFC5C1BFFFC8BBB6FFC8BDB8FFC9BEB9FFC8BCB7FFE6E6E6FFFDF9F7FFE26C
        2FFFED8444FFC77B58FFD6CEC6FFD58C5EFFCBC0B8FFCFD1D2FFCCCCCCFFC9CB
        CDFFC4AC9CFFEC7E3FFFCF5B28FFEB8346FFF18042FFB5A39CFFFCF9F8FFE179
        3BFFED8E50FFC6805EFFD5C6BBFFDB7C3AFFCDBCAFFFD8D9D9FFD1D1D1FFCED0
        D1FFC3AF9FFFD88044FFC55F2EFFEB8E52FFF18D4FFFB8A8A1FFFCF9F7FFE179
        3CFFE88B4EFFBE7E5FFFDECEC3FFD97938FFD5C4B7FFE4E6E7FFDFDFDFFFDADC
        DEFFCBB6A7FFD88043FFBA582BFFE2894EFFF18D4FFFB8A8A0FFFCF9F8FFE379
        3BFFD98349FFBF7F5FFFEDEBE7FFD2966CFFE5E0DCFFF5FCFFFFEFF5F8FFEBF3
        F7FFD2C0B3FFD67A3FFFBA5829FFD5834AFFEF8C4DFFB8A8A1FFFCF9F8FFDA74
        39FFD8864DFFC5612CFFB86C4AFFBA6F50FFBA6C49FFBE6C47FFBE6B47FFBA6B
        47FFB5552AFFB74C1CFFC45F2CFFD8854CFFE48549FFB8A8A1FFFDF9F8FFD372
        37FFD1753EFFC7A08EFFCFA593FFCDA592FFCFA592FFCEA492FFCEA492FFCFA5
        92FFCEA695FFCEA897FFC89E8CFFD2753DFFDE8248FFB8A8A1FFFDF9F8FFD070
        36FFC66B3BFFEEF9FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFE9F4FAFFC76936FFDD8247FFB8A8A0FFFDF9F8FFD170
        36FFC56A3AFFF0F7FBFFF5F5F5FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3
        F3FFF3F3F3FFF5F5F5FFEBF3F7FFC76834FFDD8247FFB8A8A0FFFDF9F8FFD471
        37FFC46A3AFFEFF6FAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFEAF2F6FFC76834FFDE8347FFB8A8A1FFFCF9F8FFDB74
        39FFC46A3AFFF0F7FBFFF5F5F5FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3
        F3FFF3F3F3FFF5F5F5FFEBF2F6FFC76834FFE5854AFFB8A8A1FFFCF9F8FFE37A
        3CFFC76B3AFFEFF6FAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFEAF2F6FFC56734FFEF8C4DFFB8A8A1FFFCF9F8FFE77A
        39FFD26F3DFFEFF7FBFFF5F5F5FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3
        F3FFF3F3F3FFF5F5F5FFEBF2F6FFD16D38FFF49050FFB8A8A0FFFEFAF7FF9662
        52FFAF684FFFF3FBFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFECF4F9FFC25D2EFFCD6435FFB9A9A1FFFDF9F7FF9036
        17FFAD512CFFD1CBC8FFD9CEC8FFD9CDC7FFD9CDC7FFD9CDC7FFD9CDC7FFD9CD
        C7FFD9CDC7FFDACEC8FFCCC7C5FFC55A26FFCC5B27FFB4A39AFFFF00FF00FBF2
        EDFFFAF0ECFFFAEFEAFFFAEFEAFFFAEFEAFFFAEFEAFFFAEFEAFFFAEFEAFFFAEF
        EAFFFAEFEAFFFAEFEAFFFAEFEAFFFAF0ECFFFBF0ECFFFDFDFDFF}
      TabOrder = 2
      OnClick = BtnGerarClick
    end
    object DBEdtVencimento: TCDBEdit
      Left = 243
      Top = 17
      Width = 75
      Height = 19
      BevelKind = bkTile
      BorderStyle = bsNone
      DataField = 'dtVencimento'
      DataSource = dsPadrao
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      MaxLength = 10
      ParentFont = False
      TabOrder = 1
      DecimalControl = True
      KeyMode = kmDate
    end
    object DBEvlSaldoFinal: TCDBEdit
      Left = 91
      Top = 17
      Width = 75
      Height = 19
      TabStop = False
      BevelKind = bkTile
      BorderStyle = bsNone
      Color = 14149350
      DataField = 'vlSaldoFinal'
      DataSource = dsPadrao
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      MaxLength = 10
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
      DecimalControl = True
      KeyMode = kmNormal
    end
  end
  inherited imgIcones: TImageList
    Left = 816
    Top = 80
    Bitmap = {
      494C010107000900500010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000002000000001002000000000000020
      000000000000000000000000000000000000000000008E8E8E008E8E8E008E8E
      8E00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FEFEFEFF8F98A1FFBBBDBEFF000000000000000000000000000000000000
      000000000000000000000000000000000000BAAEABFFCDCDCDFF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000008E8E8E00CBCBCB00BABA
      BA00A5A5A500A2A2A20094949400858585007E7E7E0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FEFE
      FEFF3F5B78FF517DAAFF406892FFBDBFC0FF0000000000000000000000000000
      00000000000000000000AEC7CCFF6F807CFFDC5B35FFA53915FFC4C4C4FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000008E8E8E00D8D8D800D4D4
      D400CFCFCF00C9C9C900C5C5C500BEBEBE00ABABAB00A1A1A100949494008787
      87009595950000000000000000000000000000000000F4F5F5FF000000000000
      000000000000000000000000000000000000000000000000000000000000445F
      7DFF4F7BA8FF86A4C1FFADC3D9FF929BA4FF0000000000000000000000000000
      000000000000ABC1C6FF849B9AFF879990FFAD5639FFDC6A49FFA93C1AFFC4C4
      C4FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000008E8E8E00DCDCDC00D8D8
      D800D3D3D300CDCDCD00C8C8C800C2C2C200BDBDBD00B9B9B900B6B6B600B8B8
      B800B1B1B1009E9E9E008E8E8E0000000000BAADACFFA6422BFF844D40FF856F
      6EFFACACACFFE6E6E6FFFEFEFEFFF9F9F9FF00000000E6E5E5FF44546AFF4E7C
      AAFF7F9EBCFFC8D6E5FF667D95FFFDFDFDFF0000000000000000000000000000
      000000000000679EA2FFB73A14FFD67A5FFFE88363FFE68566FFD6633EFFAE40
      1DFFC4C4C4FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000008E8E8E00DEDEDE00DBDB
      DB00D7D7D700D2D2D200CDCDCD00C7C7C700C2C2C200B2B2B200B9B9B900B6B6
      B600B6B6B600AEAEAE008E8E8E0000000000B09E9CFFD0724EFFD7713EFFDA72
      3EFFD06132FFA76D63FFB0A2A3FFCAACA9FFB39FA0FF9D8F90FFC0AEADFF7287
      9EFFC7D7E8FF6C819AFFFEFEFEFF00000000000000000000000000000000AEC7
      CCFF717C78FFB58871FFB0998AFFE27E60FFE48367FFE57F5FFFD26846FFF7AD
      94FFAB3916FFC4C4C4FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000008E8E8E00DEDEDE00DDDD
      DD00DADADA00D7D7D700D2D2D200CCCCCC00C7C7C700686868009B9B9B00B8B8
      B800B6B6B600B1B1B1008E8E8E0000000000AD9694FFD38267FFD17444FFCF68
      35FFCFA99FFFDFBBAFFFF0C6B3FFFADED0FFF1C7B4FFDAAC9FFFAD9A9CFFE0D9
      D6FF727F8FFFFEFEFEFF00000000000000000000000000000000ABC1C6FF849B
      9AFF879A90FFAE5337FFEC8669FFE4886EFFE48161FFE48163FFE57E5CFFD686
      63FFFFC2A9FFAD3C19FFC7C7C7FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000008E8E8E00DEDEDE00DDDD
      DD00DDDDDD00DBDBDB00D6D6D600D1D1D100CBCBCB00BEBEBE0068686800BCBC
      BC00B8B8B800B4B4B4008E8E8E0000000000AB8F8CFFE5A187FFCF7D59FFD59D
      83FFDCB7AAFFF1C7B0FFF4D7C5FFF4DAC9FFF4D7C7FFF2CBB3FFD9A89AFFA186
      7FFFE7D6D4FF0000000000000000000000000000000000000000679EA3FFB73B
      16FFD67D66FFE8896DFFE48870FFE58365FFE5896DFFE6876AFFCF6341FFF5C4
      A0FFFFEDD2FFFA8463FF9D8888FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000008E8E8E00DDDDDD00DDDD
      DD00DDDDDD00DDDDDD00D9D9D900D5D5D500D0D0D000C9C9C900787878006868
      6800BBBBBB00B5B5B5008E8E8E0000000000A68985FFF3B89EFFCD8269FFDFC7
      C2FFE29F7EFFEFC4ABFFEFC6AEFFEFC8B2FFF0C7B0FFEFC2A8FFE5A484FFB6A0
      9FFFC27D66FF000000000000000000000000CAE2E6FF6B7773FFB58974FFB097
      87FFE28165FFE4886FFFE58569FFCF7E68FFD9876FFFD66B46FFFFD0AEFFFFEC
      D2FFFCA286FFA46D5DFF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000008E8E8E00E0E0E000DDDD
      DD00DDDDDD009898980070707000D9D9D900D5D5D500D5D5D5007C7C7C006868
      6800BFBFBF00B9B9B9008E8E8E0000000000AD8883FFF3C2AAFFD3907AFFE0C8
      BFFFEEC1AAFFF3D4C2FFF3D6C5FFEDBDA3FFEBB699FFEBB393FFE7A17CFFC5B2
      B3FFBF673BFFF8F2F2FF0000000000000000D2D7D4FF7F9289FFAD5033FFEB86
      6AFFE48D75FFE79882FFECAB98FFCC9489FFB96C5AFF71A1C4FF7892A8FFF99C
      79FFA46C5DFF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000008E8E8E00F6F6F600EDED
      ED00D2D2D2007575750075757500D6D6D600D5D5D500707070007E7E7E006868
      6800C3C3C300BDBDBD008E8E8E0000000000AA8580FFF7CDB5FFDB9F8AFFDCC7
      C6FFEBBFAAFFF4D8C7FFF3D8C8FFF4D8C8FFEDBEA2FFEDBB9EFFDF916CFFC1B2
      B2FFD78860FFD7A79BFF0000000000000000E3A794FFEE9D87FFF2B9ABFFEEB9
      ACFFEFB9A9FFEFBAABFFF2BFB1FFCE775DFF76BEE5FF08B8FFFF1F8FFFFF4D50
      69FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000008E8E8E00949494009494
      9400686868008A8A8A006C6C6C006C6C6C007070700088888800686868007070
      7000C8C8C800C1C1C1008E8E8E0000000000B18781FFF8D5C1FFF1C7B2FFDDB2
      A4FFDFBDB1FFF8E0D3FFF6E0D3FFF6E0D3FFF7E2D6FFF9E4D8FFDCB3A7FFC9A7
      9CFFE9BBA4FFD5987FFFFDFCFCFF00000000F6F4F3FFDE8469FFEFC0B2FFF3CD
      C3FFF3CCC3FFF5D3C9FFD58167FFFFD9C7FF1BEAFFFF02CAFFFF05B3FEFF2997
      FFFF647D96FFFDFDFDFF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000008E8E8E00C1C1C1009191
      910081818100B2B2B2008F8F8F007E7E7E00727272007575750068686800D3D3
      D300CDCDCD00C5C5C5008E8E8E0000000000B78B85FFFADDCBFFF3CFBDFFF1C7
      B1FFE4CEC7FFDFBEB4FFEECBBAFFF6DED3FFEDCABAFFDFBDB3FFDCD0CEFFEBCA
      B7FFF2D1C0FFF0CBB8FFE8D1CDFF0000000000000000C18D7EFFFAD9D2FFF3D2
      C7FFFAE9E6FFD58871FFF4DCCDFFFFFFFCFFBEBAAAFF17FAFFFF05CAFFFF05B3
      FEFF2D98FFFF647D96FFFCFCFCFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000008E8E8E00DEDEDE006868
      6800A2A2A200AEAEAE0091919100686868006868680068686800DBDBDB00D7D7
      D700D2D2D200CBCBCB008E8E8E0000000000BA9089FFFCE6D6FFF4D8C8FFF3D2
      C0FFF2C9B4FFE9C7B9FFE3CFCAFFDFC3BBFFE1CBC6FFD9A999FFD6927BFFB47D
      74FFCEADA7FFD8ABA0FFC08075FF0000000000000000FAFAFAFFE9987FFFFFFF
      FFFFDC8265FFF7ECE8FFFFFFFFFFFDAF92FFA86660FFBCD4D6FF20FFFFFF05C9
      FFFF05B3FEFF2D98FFFF5C748EFFFDFDFDFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000008E8E8E00E1E1E100B1B1
      B100686868007D7D7D007A7A7A0068686800A5A5A500E5E5E500E1E1E100D6D6
      D600DBDBDB00CBCBCB008E8E8E0000000000C0918CFFFFEEE1FFF8E0D1FFF6DA
      CAFFF4D4C4FFF7D2BFFFF9C9B2FFF6C4ABFFF4BEA3FFF0B89BFFF4B698FF8758
      51FF000000000000000000000000000000000000000000000000C39E93FFE294
      7BFFBFA2A0FFEF9775FFFCB399FFA2695DFF0000000000000000BCD3D5FF1DFF
      FFFF05C9FFFF02B4FFFF40B0FFFF959FA6FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000008E8E8E00CECECE00DEDE
      DE00CBCBCB00767676007D7D7D0068686800686868008B8B8B008E8E8E008E8E
      8E008E8E8E008E8E8E008E8E8E0000000000B09C9BFFFFF0E4FFFFEFE1FFFDE9
      DAFFFFE5D5FFAE7B75FFB8ABABFFAD9795FFA98984FFAD8078FFBF7D70FF9976
      73FF00000000000000000000000000000000000000000000000000000000F3F2
      F2FF00000000D2C1BCFFBC9081FF00000000000000000000000000000000C2D9
      DBFF0FFAFFFF1FB6E5FF4C7A90FFF7F7F7FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000008E8E8E008E8E
      8E008E8E8E008E8E8E008E8E8E00000000000000000000000000000000000000
      000000000000000000000000000000000000FEFEFEFFBFAAA9FFC0A6A3FFCBA8
      A3FFC89D97FFF5F4F4FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000E6FDFFFF85BFE2FFF4F5F5FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000824B4B004E1E1F0000000000000000000000
      00000000000000000000000000000000000000000000C7BCB7FFC9BDB8FFC8BF
      BCFFC5C5C5FFC5C5C6FFC5C4C3FFC5C3C2FFC5C3C2FFC5C3C2FFC5C1BFFFC8BB
      B6FFC8BDB8FFC9BEB9FFC8BCB7FFE6E6E6FF00000000E8E8E8FFBFBFBFFFF4F4
      F4FF00000000F9F9F9FFDFDFDFFFCACACAFFBEBEBEFFBCBCBCFFB6B6B6FF9898
      98FFA5A5A5FFA2A2A2FF00000000000000000000000000000000000000000000
      000049455100978683009F7F7700643D3300A97D7300A97D7300643D33000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000824B4B00824B4B00A64B4B00A94D4D004E1E1F0000000000000000000000
      000000000000000000000000000000000000FDF9F7FFE26C2FFFED8444FFC77B
      58FFD6CEC6FFD58C5EFFCBC0B8FFCFD1D2FFCCCCCCFFC9CBCDFFC4AC9CFFEC7E
      3FFFCF5B28FFEB8346FFF18042FFB5A39CFFEAEAEAFFE1E1E0FF9F9E9EFF7F7F
      7FFF959595FF919191FFBCBDBDFFDCDEDDFFEBEDEEFFE2E3E4FFC5C5C5FFB7B7
      B7FF9C9C9CFFABABABFF7F7F7FFFBCBCBCFF0000000000000000000000004945
      51007A717100DED3D300F7E6E700FCE8E5002B64D1003D79E70070616100B1AC
      AE00A47D73005A484B0000000000000000000000000000000000824B4B00824B
      4B00B64F5000C24F5000C54D4E00B24D4E004E1E1F00824B4B00824B4B00824B
      4B00824B4B00824B4B00824B4B0000000000FCF9F8FFE1793BFFED8E50FFC680
      5EFFD5C6BBFFDB7C3AFFCDBCAFFFD8D9D9FFD1D1D1FFCED0D1FFC3AF9FFFD880
      44FFC55F2EFFEB8E52FFF18D4FFFB8A8A1FFE9E9E9FF939392FFC1C1C0FF9E9E
      9DFF888A89FFC3BBB8FFC0A79FFFCBAA9EFFD5B7ACFFDABCB1FFCFCAC9FFD8D8
      D8FFCDCDCDFFC8C8C8FFD9D9D9FFB8B8B8FF0000000000000000494551007D74
      74006C646B00E5DADE00FAE7E600FDF0F0002961CC004C7CE10084625F00F7E6
      E700F9EAEC005A484B0000000000000000000000000000000000824B4B00D458
      5900CB555600C9545500C9525300B74F52004E1E1F00FE8B8C00FB9A9C00F8AA
      AB00F7B5B600F7B5B600824B4B0000000000FCF9F7FFE1793CFFE88B4EFFBE7E
      5FFFDECEC3FFD97938FFD5C4B7FFE4E6E7FFDFDFDFFFDADCDEFFCBB6A7FFD880
      43FFBA582BFFE2894EFFF18D4FFFB8A8A0FFE7E7E7FF9E9E9FFFA1A2A1FFC5C8
      C7FF937064FFB3552EFFB86F4EFFC4937DFFDCBEB0FFDCC1B3FFC7C6C6FFC0C0
      C0FFCBCBCBFFD1D1D1FFDBDBDBFFD8D8D8FF0000000049455100887F7E007D74
      74006A5F6200E0D5D600FAE7E600FDF0F0002455B4004C78D4006A5F6200F7E6
      E700FAEAEB005A484B0000000000000000000000000000000000824B4B00D75C
      5D00D05A5B00CF595A00CF575800BD5356004E1E1F0023B54A0013C1480016BD
      48000CBC4100F7B5B600824B4B0000000000FCF9F8FFE3793BFFD98349FFBF7F
      5FFFEDEBE7FFD2966CFFE5E0DCFFF5FCFFFFEFF5F8FFEBF3F7FFD2C0B3FFD67A
      3FFFBA5829FFD5834AFFEF8C4DFFB8A8A1FFEEEEEEFFB2B2B1FF7E7F7EFFDADB
      DCFFA29087FFBE7B5BFFC5896BFFD4A995FFE2CCBFFFE7D0C5FFC0BBB8FFB1B2
      B3FFE2E2E2FFE1E2E3FFE7E8E8FFAEAEAEFF0000000049455100887F7E007B6D
      6D0041435000EADEE200FAEDEF00FAEBEE001F4284001F3E780049455100F7E6
      E700FAEBEE005A484B0000000000000000000000000000000000824B4B00DD63
      6400D75F6000D55E5F00D55C5D00C2575A004E1E1F002AB44D001CBF4C001EBC
      4C0013BC4500F7B5B600824B4B0000000000FCF9F8FFDA7439FFD8864DFFC561
      2CFFB86C4AFFBA6F50FFBA6C49FFBE6C47FFBE6B47FFBA6B47FFB5552AFFB74C
      1CFFC45F2CFFD8854CFFE48549FFB8A8A1FFF8F8F8FFCACAC9FF7B7C7BFFC6C6
      C6FFC8C7C6FFC38568FFCE9173FFDAB09AFFE9D3C7FFEED9CEFFDBBAABFFCFC1
      B8FFD6DEE1FFB87458FFF9F6F5FF0000000000000000494551007D7474006A5F
      62004143500036292F00FBEEEF00FEF0F800B0B1B20096858400F6E5E600FAEA
      EB00FDF0F1005A484B0000000000000000000000000000000000824B4B00E368
      6900DD656600DA636400DE666700C6595B004E1E1F0026B1490016BC48001BBB
      490010BB4300F7B5B600824B4B0000000000FDF9F8FFD37237FFD1753EFFC7A0
      8EFFCFA593FFCDA592FFCFA592FFCEA492FFCEA492FFCFA592FFCEA695FFCEA8
      97FFC89E8CFFD2753DFFDE8248FFB8A8A1FFFDFDFDFFD9D9DAFF828382FFADAF
      ADFFE3E7E9FFAB6F51FFCB8E70FFE4B9A4FFECD6C9FFEBD6CDFFE0BCA8FFD498
      7BFFD29A7EFFC66F49FFFDF9F8FF0000000000000000494551006C616500333D
      54001B3665002034580053474E00FDF2F300AE918C009ED8D30084625F00FEFD
      FD00FDF1F500948584001A315F00000000000000000000000000824B4B00EB6D
      6E00E2676800E67E7F00FAD3D400CC6E70004E1E1F00A5D8970050D16F0042C9
      66002DC75800F7B5B600824B4B0000000000FDF9F8FFD07036FFC66B3BFFEEF9
      FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFE9F4FAFFC76936FFDD8247FFB8A8A0FF00000000D4D4D4FF9A9B9AFF9FA0
      9FFFD4D7D9FFA57660FFCE9071FFD6AC97FFEDD6CBFFEBD6CDFFE3BEADFFD29B
      7EFFD19172FFC86E46FFFCF9F8FF0000000000000000494551003D4251001934
      65001B3665001D3B6800243E6C00B1ACAE00887F7E009ED8D30084625F00FEFD
      FD0080777D001A315F0000000000000000000000000000000000824B4B00F273
      7400E96C6D00EB818200FCD1D300CF6E70004E1E1F00FFF2CC00FFFFD700FFFF
      D400E6FCC700F7B5B600824B4B0000000000FDF9F8FFD17036FFC56A3AFFF0F7
      FBFFF5F5F5FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF5F5
      F5FFEBF3F7FFC76834FFDD8247FFB8A8A0FF00000000E2E2E2FFACACACFF9C9D
      9CFFBFC2C3FFA47A65FFD09272FFD9AF9AFFEAD3C7FFEFDAD0FFE4BFADFFD59C
      7FFFCF9072FFC96E45FFFCF9F8FF00000000000000004446540019315D001D39
      67001D3866001D3B68001D3A68002E3B5600DBD2D200FEF8FC00FEFDFD004143
      50001A315F000000000000000000000000000000000000000000824B4B00F878
      7900F0757600EE727300F0737400D16566004E1E1F00FCEFC700FFFFD500FFFF
      D300FFFFD700F7B5B600824B4B0000000000FDF9F8FFD47137FFC46A3AFFEFF6
      FAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFEAF2F6FFC76834FFDE8347FFB8A8A1FF00000000FAFAFAFFB3B3B3FFA6A7
      A6FFA9ADAEFFA9785FFFC98A6CFFD6AB95FFF0D7CCFFF4DED3FFE8C3B2FFDAA1
      83FFD49575FFC9734DFFFCF9F8FF00000000000000001D325C001B3665001D38
      6600223D6B00203D6C001E3C6A00203E760049455100D6D4D200050206001A31
      5F00000000000000000000000000000000000000000000000000824B4B00FE7F
      8000F77A7B00F6797A00F7777900D76B6B004E1E1F00FCEFC700FFFFD500FFFF
      D300FFFFD500F7B5B600824B4B0000000000FCF9F8FFDB7439FFC46A3AFFF0F7
      FBFFF5F5F5FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF5F5
      F5FFEBF2F6FFC76834FFE5854AFFB8A8A1FF0000000000000000E2E1E1FFDDDC
      DDFF949190FFB36C49FFA2745DFFAC9185FFBBADA7FFC0B5AFFFB6A198FFAC81
      6EFFAE7457FFBF6641FFFDFAF8FF0000000000000000000000001A3565001B36
      65001D3B6800223D6B00244170002441700023416E00203458001A315F000000
      0000000000000000000000000000000000000000000000000000824B4B00FF83
      8400FC7F8000FB7E7F00FE7F8000DA6E6F004E1E1F00FCEFC700FFFFD500FFFF
      D300FFFFD500F7B5B600824B4B0000000000FCF9F8FFE37A3CFFC76B3AFFEFF6
      FAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFEAF2F6FFC56734FFEF8C4DFFB8A8A1FF0000000000000000FEFEFEFFF4F4
      F4FF857067FFA1A4A5FFB9BCBEFFCBCCCCFFD6D7D8FFDEDDDDFFD3D5D4FFC2C6
      C7FFB0B5B6FF897D78FFC6C3C2FF000000000000000000000000000000001B36
      6500234075001E3C6A002441700025417300203E76001A315F00000000000000
      0000000000000000000000000000000000000000000000000000824B4B00FF88
      8900FF828300FF818200FF828300E07374004E1E1F00FCEFC700FFFFD500FFFF
      D300FFFFD500F7B5B600824B4B0000000000FCF9F8FFE77A39FFD26F3DFFEFF7
      FBFFF5F5F5FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF5F5
      F5FFEBF2F6FFD16D38FFF49050FFB8A8A0FF000000000000000000000000FDFD
      FDFFAAABACFFB2A29AFFC8B9B3FFC6C6C5FFDBDADAFFBEBCBCFFC9C8C8FFD1D1
      D1FFC6BEB9FFBEBCBBFFA5A5A5FF000000000000000000000000000000000000
      0000223D6B001E3C6A0024417000223D6B001A315F0000000000000000000000
      0000000000000000000000000000000000000000000000000000824B4B00824B
      4B00E2757600FE818200FF868700E57677004E1E1F00FAEBC500FCFBD100FCFB
      CF00FCFBD100F7B5B600824B4B0000000000FEFAF7FF966252FFAF684FFFF3FB
      FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFECF4F9FFC25D2EFFCD6435FFB9A9A1FF000000000000000000000000FEFE
      FEFFDDDFDFFF928F8DFFBDBCBDFFC0C0C0FFC4C4C4FFD9D9D9FFD5D5D5FFD7D7
      D7FFB1ADABFFD1D0D1FFC9C9CAFF000000000000000000000000000000000000
      00000000000025407400203E76001A315F000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000824B4B009C565700CB6C6D00CF6E6E004E1E1F00824B4B00824B4B00824B
      4B00824B4B00824B4B00824B4B0000000000FDF9F7FF903617FFAD512CFFD1CB
      C8FFD9CEC8FFD9CDC7FFD9CDC7FFD9CDC7FFD9CDC7FFD9CDC7FFD9CDC7FFDACE
      C8FFCCC7C5FFC55A26FFCC5B27FFB4A39AFF0000000000000000000000000000
      0000FDFDFCFFF1F0EFFFD3D4D4FFA4A4A4FFC0C0C0FFD5D5D5FFD8D8D8FFE1E0
      E1FFF3F3F4FFF4F3F2FF00000000000000000000000000000000000000000000
      000000000000000000001A315F00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000824B4B00824B4B004E1E1F0000000000000000000000
      00000000000000000000000000000000000000000000FBF2EDFFFAF0ECFFFAEF
      EAFFFAEFEAFFFAEFEAFFFAEFEAFFFAEFEAFFFAEFEAFFFAEFEAFFFAEFEAFFFAEF
      EAFFFAEFEAFFFAF0ECFFFBF0ECFFFDFDFDFF0000000000000000000000000000
      0000000000000000000000000000FFFFFFFFF1F1F1FFF2F2F2FFFEFEFEFF0000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000200000000100010000000000000100000000000000000000
      000000000000000000000000FFFFFF008FFFFFF1FF3F0000807FFFE0FC1F0000
      8007BFE0F80F000080010080F807000080010001E003000080010003C0010000
      80010007C00100008001000700030000800100030007000080010003000F0000
      8001000100030000800100018001000080010001800000008001000FC0C00000
      8001000FE9E00000C1FF03FFFFF10000FFFFFE7F80008803F01FF07F00000000
      E003C00100000000C003C001000000008003C001000000008003C00100000001
      8003C001000000018001C001000080018003C001000080018007C00100008001
      800FC0010000C001C01FC0010000C001E03FC0010000E001F07FC0010000E001
      F8FFF0010000F003FDFFFC7F8000FE1F00000000000000000000000000000000
      000000000000}
  end
  inherited Acao: TActionList
    Left = 800
    Top = 40
  end
  object dspLookUp: TDataSetProvider
    DataSet = dmPadrao.sdsLookup
    Options = [poPropogateChanges, poAllowCommandText]
    Left = 160
    Top = 240
  end
  object cdsLookUp: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspLookUp'
    Left = 192
    Top = 240
  end
  object dspPadrao: TDataSetProvider
    DataSet = sdsPadrao
    Options = [poAllowMultiRecordUpdates, poPropogateChanges, poAllowCommandText, poUseQuoteChar]
    Left = 160
    Top = 272
  end
  object cdsPadrao: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPadrao'
    AfterInsert = cdsPadraoAfterInsert
    Left = 192
    Top = 272
    object cdsPadraoidEmpresa: TIntegerField
      FieldName = 'idEmpresa'
    end
    object cdsPadraoidCadEmpresa: TIntegerField
      FieldName = 'idCadEmpresa'
    end
    object cdsPadraoidCliente: TIntegerField
      FieldName = 'idCliente'
    end
    object cdsPadraodtInicial: TDateTimeField
      FieldName = 'dtInicial'
    end
    object cdsPadraodtFinal: TDateTimeField
      FieldName = 'dtFinal'
    end
    object cdsPadraoconsolidaemp: TStringField
      FieldName = 'consolidaemp'
      Size = 1
    end
    object cdsPadraoconsolidafilial: TStringField
      FieldName = 'consolidafilial'
      Size = 1
    end
    object cdsPadraoidSafra: TIntegerField
      FieldName = 'idSafra'
    end
    object cdsPadraoidUsuario: TIntegerField
      FieldName = 'idUsuario'
    end
    object cdsPadraotpFinanceiro: TStringField
      FieldName = 'tpFinanceiro'
    end
    object cdsPadraoidContratoIni: TStringField
      FieldName = 'idContratoIni'
    end
    object cdsPadraoidContratoFim: TStringField
      FieldName = 'idContratoFim'
    end
    object cdsPadraotpContrato: TStringField
      FieldName = 'tpContrato'
      Size = 1
    end
    object cdsPadraodtVencimento: TDateTimeField
      FieldName = 'dtVencimento'
    end
    object cdsPadraoobsTituloPag: TStringField
      FieldName = 'obsTituloPag'
      Size = 250
    end
    object cdsPadraovlSaldoFinal: TCurrencyField
      FieldName = 'vlSaldoFinal'
    end
  end
  object dsPadrao: TDataSource
    DataSet = cdsPadrao
    Left = 224
    Top = 272
  end
  object cdsGrid: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    CommandText = 
      'EXEC spRetComissaoContrato 9999, 1, 1, 1, NULL, NULL, NULL, NULL' +
      ', '#39'A'#39', '#39'N'#39', '#39'N'#39
    Params = <>
    ProviderName = 'dspGrid'
    Left = 192
    Top = 304
    object cdsGridsel: TStringField
      FieldName = 'sel'
      FixedChar = True
      Size = 1
    end
    object cdsGrididEmpresa: TIntegerField
      FieldName = 'idEmpresa'
    end
    object cdsGrididCadEmpresa: TSmallintField
      FieldName = 'idCadEmpresa'
    end
    object cdsGrididContrato: TStringField
      FieldName = 'idContrato'
      Size = 30
    end
    object cdsGriddtEmissao: TSQLTimeStampField
      FieldName = 'dtEmissao'
    end
    object cdsGrididCadGeral: TIntegerField
      FieldName = 'idCadGeral'
    end
    object cdsGriddescCadGeral: TStringField
      FieldName = 'descCadGeral'
      Size = 60
    end
    object cdsGriddescAbreviada: TStringField
      FieldName = 'descAbreviada'
      Size = 30
    end
    object cdsGridstContrato: TStringField
      FieldName = 'stContrato'
      Size = 15
    end
    object cdsGridvlComissao: TFMTBCDField
      FieldName = 'vlComissao'
      DisplayFormat = '#,##0.00'
      Precision = 19
      Size = 4
    end
    object cdsGridtpContrato: TStringField
      FieldName = 'tpContrato'
      Size = 10
    end
    object cdsGrididCadAdicional: TSmallintField
      FieldName = 'idCadAdicional'
    end
    object cdsGridvlTotal: TAggregateField
      FieldName = 'vlTotal'
      Active = True
      currency = True
      DisplayName = ''
      Expression = 'SUM(vlComissao)'
    end
  end
  object dsGrid: TDataSource
    DataSet = cdsGrid
    Left = 224
    Top = 304
  end
  object dspGrid: TDataSetProvider
    DataSet = sdsGrid
    Options = [poAllowMultiRecordUpdates, poPropogateChanges, poAllowCommandText, poUseQuoteChar]
    Left = 160
    Top = 304
  end
  object sdsPadrao: TSQLDataSet
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmPadrao.dbConexao
    Left = 128
    Top = 272
  end
  object sdsGrid: TSQLDataSet
    CommandText = 
      'EXEC spRetComissaoContrato 9999, 1, 1, 1, NULL, NULL, NULL, NULL' +
      ', '#39'A'#39', '#39'N'#39', '#39'N'#39
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmPadrao.dbConexao
    Left = 128
    Top = 304
  end
  object dsEmpresa: TDataSource
    DataSet = cdsEmpresa
    Left = 528
  end
  object cdsEmpresa: TClientDataSet
    Aggregates = <>
    CommandText = 'select * from vCadEmpresaFiscal'
    Params = <>
    ProviderName = 'dspEmpresa'
    Left = 496
    object cdsEmpresaidEmpresa: TIntegerField
      FieldName = 'idEmpresa'
    end
    object cdsEmpresaidCadEmpresa: TIntegerField
      FieldName = 'idCadEmpresa'
    end
  end
  object FindEmpresa: TCFind
    SelectClause.Strings = (
      
        'SELECT  idEmpresa, descCadEmpresa, descAbreviada, idCnpjCpf FROM' +
        ' vCadEmpresaContabil')
    OrderByClause.Strings = (
      'ORDER BY descCadEmpresa')
    FindField = 'descCadEmpresa'
    SQLConnection = dmPadrao.dbConexao
    ValueField = 'idEmpresa'
    CarregaDados = True
    CollumNames.Strings = (
      'C'#243'digo'
      'Raz'#227'o Social'
      'Nome Fantasia'
      'Cnpj/Cpf')
    TypeFind = fFindNormal
    Left = 648
  end
  object ActionList1: TActionList
    Images = ImageList1
    Left = 880
    Top = 80
    object Action1: TAction
      Caption = '&Fechar'
      ImageIndex = 0
      OnExecute = actFecharExecute
    end
    object Action2: TAction
      Caption = '&Pesquisar'
      ImageIndex = 1
    end
  end
  object ImageList1: TImageList
    DrawingStyle = dsTransparent
    Left = 912
    Top = 80
    Bitmap = {
      494C010102000400880010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
      000000000000000000000000000000000000FDFDFF00CED7EF00AEB8E000AEB8
      E000B0B9E100B0B9E100B0B9E100AFBAE200ADB9E300ADB9E300ACB7E300ABB6
      E300ABB6E300AAB5E100CDD6ED00FDFDFF0000000000C2C2C2FF404040FF1E1E
      1EFF252525FF252525FF252525FF252525FF252525FF252525FF252525FF2525
      25FF1E1E1EFF353535FF8A8A8AFFFEFEFEFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CED8F3003F5BC9001234BA001638
      BD001C3CBC001C3CBC00183BBE00183BBF001439C1001137C3000B33C2000831
      C200022DC2000029BC003752B900CDD6ED0000000000C4C4C4FFFCFCFCFFFBFB
      FBFFFBFBFBFFFBFBFBFFFBFBFBFFFAFAFAFFFAFAFAFFF9F9F9FFF9F9F9FFF8F8
      F8FFCBCBCBFF434343FF505050FFB8B8B8FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000AEBBF100143BD700214ADF002B50
      DE003255DE002F53DE002F54DF002B53DF00244FE0001F4FE400164AE3000F45
      E500073CE2000236DC000029BC00AAB5E10000000000C6C6C6FFFAFAFAFFFCFC
      FCFFFCFCFCFFFCFCFCFFFBFBFBFFFBFBFBFFFAFAFAFFF9F9F9FFF9F9F9FFC9C9
      C9FF434343FF6F6F6FFF4E4E4EFFD4D4D4FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B0BEF4001D44DF002D53E200365A
      E3004161E4004B6AE6008AA0F000ADC0F600A9BBF4007B97F0002A5BE900144C
      E9000B42E600063CE200032DC200ABB6E30000000000C6C6C6FFF8F8F8FFFAFA
      FAFFFAFAFAFFF9F9F9FFF9F9F9FFF8F8F8FFF7F7F7FFF7F7F7FFC6C6C6FF4444
      44FF767676FF5C5C5CFF979797FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B2BFF400264BE000395EE5004465
      E5007E93ED00DDE3FA00D8DFF900B3C2F500B3C3F600D5DFFB00D2DDFA00537E
      EF001049E9000A41E500052FC300ABB7E30000000000C6C6C6FFF7F7F7FFF6F6
      F6FFF2F2F1FFEAEAEAFFECECECFFF2F2F2FFF5F5F5FFCACACAFF464646FF7C7C
      7CFF5F5F5FFFD0D0D0FFB1B1B1FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B4C1F4003054E1004463E5005975
      E800DDE3FA00BEC9F600637EEA004368E7003E67E8004D76EC00B9C9F700D0DA
      FA002154E8001146E3000C35C400ADB8E30000000000C6C6C6FFE7E7E7FFABAB
      ABFF979797FF989898FF969696FFAEAEAEFFD5D5D5FF5D5D5DFF838383FF6262
      62FFD2D2D2FFEBEBEBFFB1B1B1FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B7C4F5003659E3004C69E5009AAB
      F100D6DCF900637DE9004A69E600C1CDF700BBC9F7002E5CE800466EEA00D2DB
      FA007593EF00194CE4001338C200AEB9E30000000000B4B4B4FF989898FFC3C3
      C3FFDDDDDDFFE2E2E2FFDADADAFFBDBDBDFF7D7D7DFF9B9B9BFF707070FFD1D1
      D1FFEBEBEBFFE2E2E2FFB1B1B1FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000BAC6F5004061E5005370E700C1CB
      F700B3BEF500516EE7004968E600C1CBF600BBC8F6002F57E3002957E700A9BA
      F500A3B7F4001E4DE100193CC000B0BBE300F6F6F6FF898989FFCECECEFFE7E7
      E7FFEBEBEBFFECECECFFE9E9E9FFE6E6E6FFCECECEFF898989FFD1D1D1FFE9E9
      E9FFE1E1E1FFD3D3D3FFB1B1B1FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000BCC7F5004967E5005B76E800C4CD
      F700B3BEF500516EE7004766E500C1CBF600BBC7F6002F55E2002954E500A8B8
      F300A7B9F400254DDE001D3EBF00B1BBE300B8B8B8FF9D9D9DFFE1E1E1FFE9E9
      E9FFECECECFFEEEEEEFFEAEAEAFFE7E7E7FFE1E1E1FFADADADFFA3A3A3FFE2E2
      E2FFD5D5D5FFC6C6C6FFB6B6B6FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000BEC9F600516EE600627CE900A7B5
      F200D6DDF900637DE9004766E500C1CBF600BAC6F5002F54E2004367E700D0D9
      F9007E95EE002B4FDE002141C000B2BCE200A9A9A9FFAEAEAEFFDEDEDEFFE2E2
      E2FFE7E7E7FFEAEAEAFFE4E4E4FFE0E0E0FFDDDDDDFFC1C1C1FF868686FFD3D3
      D3FFC6C6C6FFAFAFAFFFBBBBBBFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000BFCAF6005974E7006D86EA00758C
      EB00E0E8FC00B9C4F5005F79E8004563E5003C5EE3004B6BE600B4C2F400D7DE
      FA003B5DE4002D52DE002443C000B3BCE200ACACACFFB3B3B3FFD9D9D9FFDDDD
      DDFFE4E4E4FFE5E5E5FFDCDCDCFFD8D8D8FFD6D6D6FFBCBCBCFF7B7B7BFFB0B0
      B0FFAFAFAFFF959595FFC1C1C1FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C2CCF600647EE900778FEC006D86
      EA0091A3EF00E6EAFB00D3DAF900ABB9F400A9B8F300CFD8F800D9E2FA006A84
      EA003055E2002F53DE002443C000B3BCE200B6B6B6FFB1B1B1FFD6D6D6FFE0E0
      E0FFE7E7E7FFE6E6E6FFDFDFDFFFD5D5D5FFCCCCCCFF8B8B8BFF606060FF7D7D
      7DFF949494FFA2A2A2FFD8D8D8FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C4CEF7007089EB008DA1EF007E94
      ED006C86EA00728AEB00A6B4F300C5CEF700C3CDF60098A9F0005772E7004262
      E4003B5DE3003254DE001E3EBE00B1BBE200BFBFBFFFB1B1B1FFDBDBDBFFE3E3
      E3FFE5E5E5FFE6E6E6FFE3E3E3FFD6D6D6FFC4C4C4FF787878FFC1C1C1FFFBFB
      FBFFDFDFDFFFAEAEAEFFEBEBEBFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C7D1F7007D93ED009CADF100899D
      EF00788FEC006E86EA006982EA00647EE900627BE9005D77E8005672E8004D6B
      E6004161E4003255DE001D3DBE00B0BAE100E1E1E1FFA4A4A4FFD9D9D9FFE7E7
      E7FFE8E8E8FFE8E8E8FFE3E3E3FFD6D6D6FFABABABFF848484FFF7F7F7FFDFDF
      DFFFABABABFFE0E0E0FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000DAE3FA00869BEE00788FEC006B84
      EA005E79E8005974E7005470E700506DE6004E6BE6004867E5004464E5003E5F
      E4003055E200264BDB004963CD00D0D9F00000000000B5B5B5FFA1A1A1FFCCCC
      CCFFDFDFDFFFE2E2E2FFD2D2D2FFADADADFFB2B2B2FFBBBBBBFFDFDFDFFFAFAF
      AFFFE1E1E1FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FEFEFF00DAE2FA00C7D0F700C5CE
      F700C1CCF600BFCBF600BECAF600BECAF600BDC9F600BBC7F500BAC6F500BAC6
      F500B6C3F500B4C0F200D1DBF500FEFEFF0000000000DADADAFFB7B7B7FF9E9E
      9EFFA3A3A3FF9A9A9AFF939393FFA6A6A6FFB5B5B5FFB9B9B9FFC6C6C6FFE7E7
      E7FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF0000008000000000000000800000000000
      0000800000000000000080010000000000008001000000000000800100000000
      0000800100000000000000010000000000000001000000000000000100000000
      0000000100000000000000010000000000000001000000000000000300000000
      00008007000000000000800F0000000000000000000000000000000000000000
      000000000000}
  end
end
