inherited FrmRelacionamento: TFrmRelacionamento
  Caption = 'Relacionamento'
  PixelsPerInch = 96
  TextHeight = 13
  inherited PagAbas: TCPageControl
    inherited TabAbas: TTabSheet
      Caption = 'Relacionamento'
      object CGroupBox7: TCGroupBox
        Left = 3
        Top = 3
        Width = 593
        Height = 270
        TabOrder = 0
        object CDBRadioGroup1: TCDBRadioGroup
          Left = 3
          Top = 10
          Width = 587
          Height = 45
          Caption = 'Origem'
          Columns = 2
          DataField = 'tpPlanoConta'
          DataSource = dsPadrao
          Items.Strings = (
            'Gerencial'
            'Fiscal')
          ParentBackground = True
          TabOrder = 0
          TabStop = True
          Values.Strings = (
            'G'
            'F')
        end
        object CLookUp1: TCLookUp
          Left = 67
          Top = 58
          Width = 350
          Height = 19
          Alignment = taLeftJustify
          BevelInner = bvSpace
          BevelOuter = bvLowered
          Color = 14149350
          ParentBackground = False
          TabOrder = 1
          Key.Strings = (
            'idEmpresa')
          LookUpKey.Strings = (
            'idEmpresa')
          ClientDataSet = cdsLookUp
          DataSource = dsEmpresa
          ValidaCampoObrigatorio = True
          CampoObrigatorio = True
          LookUpTable = 'vCadEmpresaContabil'
          ReturnField = 'descCadEmpresa'
        end
        object CLookUp2: TCLookUp
          Left = 67
          Top = 83
          Width = 350
          Height = 19
          Alignment = taLeftJustify
          BevelInner = bvSpace
          BevelOuter = bvLowered
          Color = 14149350
          ParentBackground = False
          TabOrder = 2
          Key.Strings = (
            'idEmpresa')
          LookUpKey.Strings = (
            'idEmpresa')
          ClientDataSet = cdsLookUp
          DataSource = dsEmpresa
          ValidaCampoObrigatorio = True
          CampoObrigatorio = True
          LookUpTable = 'vCadEmpresaContabil'
          ReturnField = 'descCadEmpresa'
        end
        object CLookUp3: TCLookUp
          Left = 67
          Top = 108
          Width = 350
          Height = 19
          Alignment = taLeftJustify
          BevelInner = bvSpace
          BevelOuter = bvLowered
          Color = 14149350
          ParentBackground = False
          TabOrder = 3
          Key.Strings = (
            'idEmpresa')
          LookUpKey.Strings = (
            'idEmpresa')
          ClientDataSet = cdsLookUp
          DataSource = dsEmpresa
          ValidaCampoObrigatorio = True
          CampoObrigatorio = True
          LookUpTable = 'vCadEmpresaContabil'
          ReturnField = 'descCadEmpresa'
        end
        object CLookUp4: TCLookUp
          Left = 67
          Top = 149
          Width = 350
          Height = 19
          Alignment = taLeftJustify
          BevelInner = bvSpace
          BevelOuter = bvLowered
          Color = 14149350
          ParentBackground = False
          TabOrder = 4
          Key.Strings = (
            'idEmpresa')
          LookUpKey.Strings = (
            'idEmpresa')
          ClientDataSet = cdsLookUp
          DataSource = dsEmpresa
          ValidaCampoObrigatorio = True
          CampoObrigatorio = True
          LookUpTable = 'vCadEmpresaContabil'
          ReturnField = 'descCadEmpresa'
        end
        object CLookUp5: TCLookUp
          Left = 67
          Top = 174
          Width = 350
          Height = 19
          Alignment = taLeftJustify
          BevelInner = bvSpace
          BevelOuter = bvLowered
          Color = 14149350
          ParentBackground = False
          TabOrder = 5
          Key.Strings = (
            'idEmpresa')
          LookUpKey.Strings = (
            'idEmpresa')
          ClientDataSet = cdsLookUp
          DataSource = dsEmpresa
          ValidaCampoObrigatorio = True
          CampoObrigatorio = True
          LookUpTable = 'vCadEmpresaContabil'
          ReturnField = 'descCadEmpresa'
        end
        object CLookUp6: TCLookUp
          Left = 67
          Top = 199
          Width = 350
          Height = 19
          Alignment = taLeftJustify
          BevelInner = bvSpace
          BevelOuter = bvLowered
          Color = 14149350
          ParentBackground = False
          TabOrder = 6
          Key.Strings = (
            'idEmpresa')
          LookUpKey.Strings = (
            'idEmpresa')
          ClientDataSet = cdsLookUp
          DataSource = dsEmpresa
          ValidaCampoObrigatorio = True
          CampoObrigatorio = True
          LookUpTable = 'vCadEmpresaContabil'
          ReturnField = 'descCadEmpresa'
        end
        object DBEidMovFinanceira: TCDBEdit
          Left = 15
          Top = 58
          Width = 46
          Height = 19
          TabStop = False
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'idEmpresa'
          DataSource = dsEmpresa
          TabOrder = 7
          OnEnter = DBEidEmpresaEnter
          OnExit = DBEidEmpresaExit
          OnKeyDown = DBEidEmpresaKeyDown
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEidGerencial: TCDBEdit
          Left = 15
          Top = 83
          Width = 46
          Height = 19
          TabStop = False
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'idEmpresa'
          DataSource = dsEmpresa
          TabOrder = 8
          OnEnter = DBEidEmpresaEnter
          OnExit = DBEidEmpresaExit
          OnKeyDown = DBEidEmpresaKeyDown
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEidResultado: TCDBEdit
          Left = 15
          Top = 108
          Width = 46
          Height = 19
          TabStop = False
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'idEmpresa'
          DataSource = dsEmpresa
          TabOrder = 9
          OnEnter = DBEidEmpresaEnter
          OnExit = DBEidEmpresaExit
          OnKeyDown = DBEidEmpresaKeyDown
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEidHistorico: TCDBEdit
          Left = 15
          Top = 149
          Width = 46
          Height = 19
          TabStop = False
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'idEmpresa'
          DataSource = dsEmpresa
          TabOrder = 10
          OnEnter = DBEidEmpresaEnter
          OnExit = DBEidEmpresaExit
          OnKeyDown = DBEidEmpresaKeyDown
          DecimalControl = True
          KeyMode = kmNormal
        end
        object CDBEdit5: TCDBEdit
          Left = 15
          Top = 174
          Width = 46
          Height = 19
          TabStop = False
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'idEmpresa'
          DataSource = dsEmpresa
          TabOrder = 11
          OnEnter = DBEidEmpresaEnter
          OnExit = DBEidEmpresaExit
          OnKeyDown = DBEidEmpresaKeyDown
          DecimalControl = True
          KeyMode = kmNormal
        end
        object CDBEdit6: TCDBEdit
          Left = 15
          Top = 199
          Width = 46
          Height = 19
          TabStop = False
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'idEmpresa'
          DataSource = dsEmpresa
          TabOrder = 12
          OnEnter = DBEidEmpresaEnter
          OnExit = DBEidEmpresaExit
          OnKeyDown = DBEidEmpresaKeyDown
          DecimalControl = True
          KeyMode = kmNormal
        end
      end
    end
  end
  inherited imgIcones: TImageList
    Left = 368
    Top = 336
  end
  inherited Acao: TActionList
    Left = 432
    Top = 336
  end
  inherited cdsPadrao: TClientDataSet
    CommandText = 'SELECT * FROM ContRelaciona'
    Left = 568
    Top = 320
  end
  inherited dspPadrao: TDataSetProvider
    DataSet = dmPadrao.sdsTabela
    Left = 536
    Top = 320
  end
  inherited dsPadrao: TDataSource
    Left = 600
    Top = 320
  end
  inherited cdsLookUp: TClientDataSet
    Left = 568
    Top = 288
  end
  inherited dspLookUp: TDataSetProvider
    Left = 536
    Top = 288
  end
  inherited ImgBotoes: TImageList
    Left = 400
    Top = 336
  end
  object FindPlanoContaGrupo: TCFind
    SelectClause.Strings = (
      
        'select idPlanoContaGrupo, descPlanoContaGrupo from PlanoContaGru' +
        'po')
    OrderByClause.Strings = (
      'ORDER BY descPlanoContaGrupo')
    FindField = 'descPlanoContaGrupo'
    SQLConnection = dmPadrao.dbConexao
    ValueField = 'idPlanoContaGrupo'
    CarregaDados = True
    CollumNames.Strings = (
      'C'#243'd.'
      'Descri'#231#227'o')
    TypeFind = fFindNormal
    Left = 472
    Top = 336
  end
end
