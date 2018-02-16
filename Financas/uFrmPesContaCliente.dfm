inherited FrmPesContaCliente: TFrmPesContaCliente
  Caption = 'Pesquisa de Conta de Clientes'
  ClientHeight = 525
  ClientWidth = 841
  ExplicitWidth = 849
  ExplicitHeight = 552
  PixelsPerInch = 96
  TextHeight = 13
  inherited GrupoGrid: TCGroupBox
    Top = 186
    Width = 841
    Height = 339
    ExplicitTop = 186
    ExplicitWidth = 841
    ExplicitHeight = 339
    inherited DBGrid: TCDBGrid
      Width = 837
      Height = 322
      Columns = <
        item
          Expanded = False
          FieldName = 'descCadCliente'
          Title.Caption = 'Cliente/Fornecedor'
          Width = 244
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'descCadEmpresa'
          Title.Caption = 'Empresa'
          Width = 231
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'cdPlanoContaCre'
          Title.Caption = 'C'#243'd. Cr'#233'dito'
          Width = 71
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'descContaCredito'
          Title.Caption = 'Cr'#233'dito'
          Width = 205
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'cdPlanoContaDeb'
          Title.Caption = 'C'#243'd. D'#233'bito'
          Width = 71
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'descContaDebito'
          Title.Caption = 'D'#233'bito'
          Visible = True
        end>
    end
  end
  inherited PanBotoes: TCPanelGradient
    Top = 153
    Width = 841
    ExplicitTop = 153
    ExplicitWidth = 841
    inherited BtnExecutar: TCBitBtn
      Left = 13
      ExplicitLeft = 13
    end
    inherited BtnFechar: TCBitBtn
      Left = 752
      Top = 6
      ExplicitLeft = 752
      ExplicitTop = 6
    end
  end
  inherited PanTopo: TCPanelGradient
    Width = 841
    Height = 153
    ExplicitWidth = 841
    ExplicitHeight = 153
    inherited PanEmpresa: TCPanelGradient
      Width = 839
      Height = 32
      ExplicitWidth = 839
      ExplicitHeight = 32
      inherited LookdescAbreviada: TCLookUp
        Width = 269
        ExplicitWidth = 269
      end
      inherited lookidCnpjCpf: TCLookUp
        Left = 696
        Top = 5
        ExplicitLeft = 696
        ExplicitTop = 5
      end
    end
    object CGroupBox7: TCGroupBox
      Left = 13
      Top = 40
      Width = 814
      Height = 100
      Caption = 'Contas Cont'#225'beis - Gerencial'
      TabOrder = 1
      object CLabel30: TCLabel
        Left = 48
        Top = 43
        Width = 31
        Height = 13
        Alignment = taRightJustify
        Caption = 'D'#233'bito'
      end
      object CLabel45: TCLabel
        Left = 44
        Top = 65
        Width = 35
        Height = 13
        Alignment = taRightJustify
        Caption = 'Cr'#233'dito'
      end
      object CLabel9: TCLabel
        Left = 5
        Top = 21
        Width = 74
        Height = 13
        Alignment = taRightJustify
        Caption = 'Cliente/Fornec.'
      end
      object DBEcdPlanoContaDeb: TCDBEdit
        Left = 85
        Top = 40
        Width = 48
        Height = 19
        BevelKind = bkTile
        BorderStyle = bsNone
        DataField = 'cdPlanoContaDeb'
        DataSource = dsPadrao
        TabOrder = 0
        Find = FindPlanoContaDeb
        DecimalControl = True
        KeyMode = kmNormal
      end
      object LookdescPlanoContaDeb: TCLookUp
        Left = 139
        Top = 40
        Width = 366
        Height = 19
        Alignment = taLeftJustify
        BevelInner = bvSpace
        BevelOuter = bvLowered
        Color = 14149350
        ParentBackground = False
        TabOrder = 1
        Key.Strings = (
          'idEmpresa'
          'cdPlanoContaDeb')
        LookUpKey.Strings = (
          'cdPlanoConta')
        AlternateSQL.Strings = (
          
            'SELECT descPlanoConta FROM vPlanoConta WHERE tpPlanoConta = '#39'G'#39' ' +
            'AND  naturezaPlanoConta = '#39'D'#39' AND idEmpresa = ? AND cdPlanoConta' +
            ' = ?')
        ClientDataSet = cdsLookUp
        DataSource = dsPadrao
        ValidaCampoObrigatorio = True
        CampoObrigatorio = True
        LookUpTable = 'vPlanoConta'
        ReturnField = 'descPlanoConta'
      end
      object DBEcdPlanoContaCre: TCDBEdit
        Left = 85
        Top = 62
        Width = 48
        Height = 19
        BevelKind = bkTile
        BorderStyle = bsNone
        DataField = 'cdPlanoContaCre'
        DataSource = dsPadrao
        TabOrder = 2
        Find = FindPlanoContaCre
        DecimalControl = True
        KeyMode = kmNormal
      end
      object LookdescPlanoContaCre: TCLookUp
        Left = 139
        Top = 62
        Width = 366
        Height = 19
        Alignment = taLeftJustify
        BevelInner = bvSpace
        BevelOuter = bvLowered
        Color = 14149350
        ParentBackground = False
        TabOrder = 3
        Key.Strings = (
          'idEmpresa'
          'cdPlanoContaCre')
        LookUpKey.Strings = (
          'cdPlanoConta')
        AlternateSQL.Strings = (
          
            'SELECT descPlanoConta FROM vPlanoConta WHERE tpPlanoConta = '#39'G'#39' ' +
            'AND  naturezaPlanoConta = '#39'C'#39' AND idEmpresa = ? AND cdPlanoConta' +
            ' = ?')
        ClientDataSet = cdsLookUp
        DataSource = dsPadrao
        ValidaCampoObrigatorio = True
        CampoObrigatorio = True
        LookUpTable = 'vPlanoConta'
        ReturnField = 'descPlanoConta'
      end
      object DBEidCliente: TCDBEdit
        Left = 85
        Top = 18
        Width = 62
        Height = 19
        BevelKind = bkTile
        BorderStyle = bsNone
        DataField = 'idCliente'
        DataSource = dsPadrao
        TabOrder = 4
        AcaoCad = frmPrincipal.actCadCliente
        DecimalControl = True
        KeyMode = kmNormal
      end
      object LookCliente: TCLookUp
        Left = 153
        Top = 18
        Width = 352
        Height = 19
        Alignment = taLeftJustify
        BevelInner = bvSpace
        BevelOuter = bvLowered
        Color = 14149350
        ParentBackground = False
        TabOrder = 5
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
      object CBitBtn2: TCBitBtn
        Left = 511
        Top = 19
        Width = 138
        Height = 19
        Action = frmPrincipal.actCadCliente
        Caption = '&Clientes/Fornecedores'
        TabOrder = 6
        TabStop = False
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
      end
      object CBitBtn1: TCBitBtn
        Left = 511
        Top = 50
        Width = 138
        Height = 19
        Action = frmPrincipal.actCadPlanoConta
        Caption = 'Plano de Contas'
        TabOrder = 7
        TabStop = False
        Glyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000FF00FF00FF00
          FF00EEEEEEFFD5D5D5FFC0C0C0FFB1B1B1FFA8A8A8FFA6A6A6FFA7A7A7FFAFAF
          AFFFBCBCBCFFD1D1D1FFEAEAEAFFFF00FF00FF00FF00FF00FF00FF00FF00D9D9
          D9FF707070FF4E4E4EFF494949FF4B5056FF6E7A89FF8191A5FF7C8C9DFF5E67
          72FF454647FF4F4F4FFF656565FFC5C5C5FFFF00FF00FF00FF00FF00FF00EAEA
          EAFFA7A7A7FF5C6167FF9AAFC8FFBDCFE4FFCBDAECFFCEDCEEFFCDDCEEFFC6D7
          EAFFB2C5DCFF738398FF9C9C9CFFDFDFDFFFFF00FF00FF00FF00FF00FF00FF00
          FF006D7887FF8BA1BDFFABC4E0FFB3CAE7FFB4CBE6FFAFC0D3FFADC0D6FFAFC5
          DFFFB1C8E4FFA7C0DFFF748FAFFFF3F3F4FFFF00FF00FF00FF00FF00FF00A1A9
          B4FF616C80FFBD815EFFAF7F62FFA37A62FF8F7E76FF8F8889FF94A9C7FF9A99
          9DFFA29D9EFFA8A8ABFF90969FFF39577AFFFF00FF00FF00FF00FF00FF003055
          82FF56637CFFC5662DFFE0702EFF93664DFF83563DFF6E7588FF698CACFF6052
          4FFF8E6C5BFF887E7AFF5B6E86FF4E5B70FF7D8A9AFFFF00FF00A9B0B9FF3868
          A2FF42506AFFA9460AFFD8570AFF683922FF506078FF7BA5CEFFCAC8C6FFC8C6
          C6FFA8A9ABFF838081FFA5A2A4FF272630FF284B75FFFF00FF004C6078FF396D
          AAFF3D4B66FF9F3C00FFD55000FF693A24FF72A3D2FF1E191AFF353237FF4240
          46FF838185FF787576FF99989AFF1B1F2FFF305B8FFFFF00FF002C4666FF396D
          AAFF3D4A65FF633D27FFC8510FFF607395FFBE9176FF100D0FFF2C292BFF3D39
          3FFF807F82FF8D898BFFBCB9B7FF325078FF325F95FFFF00FF00314A67FF386B
          A8FF3B4A66FFAA6033FF596065FFDE6318FFBE9C89FF000000FF161215FF2825
          28FF79767AFF2A2327FF3B3234FF3E5578FF305C90FFFF00FF00717E8EFF3767
          A2FF3C4B67FFBA8566FFBA6F42FFC17649FFC48E6DFFD4B39FFFD1B19FFF898A
          8EFF939497FF3A3437FF4A4143FF7B625CFF2B5280FFFF00FF00EAECEEFF2F5A
          8DFF3B4C68FFC7A896FFBF9479FFD69872FFD69772FFD5966FFFD5946DFFDD98
          6EFFDB956BFFCD8C67FFB8876DFF9B6D57FF2D4968FFFF00FF00FF00FF002D46
          63FF475874FFDAD1CBFFD4C4BBFFD0B6A7FFA98876FF9A7C6CFF8B7167FF7E69
          63FF746767FF616C81FF5D89BCFF2C588CFFE2E4E7FFFF00FF00FF00FF00FF00
          FF002C4565FFD6CFCBFFC5BFBDFFB2ADAFFF96B3D5FF97B3D3FF97B3D2FF98B2
          D1FF97B2D0FF97B1D0FF90A8C6FF6A7889FFFF00FF00FF00FF00FF00FF00FF00
          FF00F3F4F5FF798BA0FFDBE5F1FFD3DEEBFFD3DDEAFFD3DDEAFFD3DDEAFFD3DD
          EAFFD3DEEBFFD7E0EAFF6A7888FFFF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00818B99FFA4AFBBFFF2F5F8FFFCFEFFFFFAFBFDFFD7DD
          E3FF6D7C8DFFDEE1E4FFFF00FF00FF00FF00FF00FF00FF00FF00}
      end
    end
  end
  inherited imgIcones: TImageList
    Left = 224
    Top = 334
  end
  inherited Acao: TActionList
    Left = 192
    Top = 334
  end
  inherited cdsPadrao: TClientDataSet
    object cdsPadraoidCliente: TIntegerField
      FieldName = 'idCliente'
    end
    object cdsPadraocdPlanoContaCre: TIntegerField
      FieldName = 'cdPlanoContaCre'
    end
    object cdsPadraocdPlanoContaDeb: TIntegerField
      FieldName = 'cdPlanoContaDeb'
    end
  end
  inherited cdsGrid: TClientDataSet
    CommandText = 'SELECT * FROM vContaCliente'
  end
  inherited sdsGrid: TSQLDataSet
    CommandText = 'SELECT * FROM vContaCliente'
  end
  inherited FindEmpresa: TCFind
    Left = 224
    Top = 240
  end
  object FindPlanoContaCre: TCFind
    SelectClause.Strings = (
      
        'SELECT DISTINCT cdPlanoConta, classificacao, descPlanoConta FROM' +
        ' vPlanoConta')
    JoinClause.Strings = (
      
        'WHERE stPlanoConta = '#39'ATIVO'#39' AND tpPlanoConta = '#39'G'#39'  AND naturez' +
        'aPlanoConta = '#39'C'#39' AND idEmpresa = [DBEidEmpresa]')
    OrderByClause.Strings = (
      'ORDER BY descPlanoConta')
    FindField = 'descPlanoConta'
    SQLConnection = dmPadrao.dbConexao
    ValueField = 'cdPlanoConta'
    CarregaDados = True
    CollumNames.Strings = (
      'C'#243'digo'
      'Classifica'#231#227'o'
      'Descri'#231#227'o')
    TypeFind = fFindNormal
    Left = 128
    Top = 333
  end
  object FindPlanoContaDeb: TCFind
    SelectClause.Strings = (
      
        'SELECT DISTINCT cdPlanoConta, classificacao, descPlanoConta FROM' +
        ' vPlanoConta')
    JoinClause.Strings = (
      
        'WHERE stPlanoConta = '#39'ATIVO'#39' AND tpPlanoConta = '#39'G'#39'  AND naturez' +
        'aPlanoConta = '#39'D'#39' AND idEmpresa = [DBEidEmpresa]')
    OrderByClause.Strings = (
      'ORDER BY descPlanoConta')
    FindField = 'descPlanoConta'
    SQLConnection = dmPadrao.dbConexao
    ValueField = 'cdPlanoConta'
    CarregaDados = True
    CollumNames.Strings = (
      'C'#243'digo'
      'Classifica'#231#227'o'
      'Descri'#231#227'o')
    TypeFind = fFindNormal
    Left = 160
    Top = 333
  end
  object FindCliente: TCFind
    SelectClause.Strings = (
      
        'SELECT  idCliente, descCadCliente, descAbreviada, idCnpjCpf FROM' +
        ' vCadClienteContabil')
    JoinClause.Strings = (
      'WHERE StCadGeral = '#39'ATIVO'#39)
    OrderByClause.Strings = (
      'ORDER BY descCadCliente')
    FindField = 'descCadCliente'
    SQLConnection = dmPadrao.dbConexao
    ValueField = 'idCliente'
    CarregaDados = True
    CollumNames.Strings = (
      'C'#243'digo'
      'Raz'#227'o Social'
      'Nome Fantasia'
      'CNPJ/CPF')
    TypeFind = fFindNormal
    Left = 128
    Top = 240
  end
end
