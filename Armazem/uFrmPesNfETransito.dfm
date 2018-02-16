inherited FrmPesNfETransito: TFrmPesNfETransito
  Caption = 'Pesquisa de Notas Fiscais de Tr'#226'nsito '
  ClientWidth = 610
  ExplicitWidth = 618
  PixelsPerInch = 96
  TextHeight = 13
  inherited GrupoGrid: TCGroupBox
    Top = 130
    Width = 610
    Height = 229
    ExplicitTop = 130
    ExplicitWidth = 610
    ExplicitHeight = 229
    inherited DBGrid: TCDBGrid
      Width = 606
      Height = 212
      Columns = <
        item
          Expanded = False
          FieldName = 'idDocSerie'
          Title.Caption = 'S'#233'rie'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'idNfE'
          Title.Caption = 'Numero'
          Width = 69
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'dtEmissao'
          Title.Caption = 'Emiss'#227'o'
          Width = 70
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'descProduto'
          Title.Caption = 'Produto'
          Width = 206
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'descCadFornecedor'
          Title.Caption = 'Cliente'
          Width = 394
          Visible = True
        end>
    end
  end
  inherited PanBotoes: TCPanelGradient
    Top = 97
    Width = 610
    ExplicitTop = 97
    ExplicitWidth = 610
    inherited BtnFechar: TCBitBtn
      Left = 510
      ExplicitLeft = 510
    end
  end
  inherited PanTopo: TCPanelGradient
    Width = 610
    Height = 97
    ExplicitWidth = 610
    ExplicitHeight = 97
    object LblCad: TCLabel [0]
      Left = 21
      Top = 56
      Width = 33
      Height = 13
      Alignment = taRightJustify
      Caption = 'Cliente'
      Transparent = True
    end
    object CLabel4: TCLabel [1]
      Left = 16
      Top = 78
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
    object CLabel7: TCLabel [2]
      Left = 146
      Top = 78
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
    inherited PanEmpresa: TCPanelGradient
      Width = 608
      ExplicitWidth = 608
    end
    object DBEidCliente: TCDBEdit
      Left = 60
      Top = 53
      Width = 54
      Height = 19
      BevelKind = bkTile
      BorderStyle = bsNone
      DataField = 'idCliente'
      DataSource = dsPadrao
      TabOrder = 1
      OnKeyDown = DBEidClienteKeyDown
      DecimalControl = True
      KeyMode = kmNormal
    end
    object DBEidCadCliente: TCDBEdit
      Left = 120
      Top = 53
      Width = 46
      Height = 19
      BevelKind = bkTile
      BorderStyle = bsNone
      DataField = 'idCadCliente'
      DataSource = dsPadrao
      TabOrder = 2
      OnKeyDown = DBEidClienteKeyDown
      DecimalControl = True
      KeyMode = kmNormal
    end
    object LookClienteFiscal: TCLookUp
      Left = 172
      Top = 53
      Width = 304
      Height = 19
      Alignment = taLeftJustify
      BevelInner = bvSpace
      BevelOuter = bvLowered
      Color = 14149350
      ParentBackground = False
      TabOrder = 3
      Key.Strings = (
        'idCliente'
        'idCadCliente')
      LookUpKey.Strings = (
        'idCliente'
        'idCadCliente')
      ClientDataSet = cdsLookUp
      DataSource = dsPadrao
      ValidaCampoObrigatorio = True
      CampoObrigatorio = True
      LookUpTable = 'vCadClienteFiscal'
      ReturnField = 'descCadCliente'
    end
    object DBEdtInicial: TCDBEdit
      Left = 60
      Top = 75
      Width = 80
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
      TabOrder = 4
      DecimalControl = True
      KeyMode = kmDate
    end
    object DBEdtFinal: TCDBEdit
      Left = 168
      Top = 75
      Width = 80
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
      TabOrder = 5
      DecimalControl = True
      KeyMode = kmDate
    end
  end
  inherited cdsPadrao: TClientDataSet
    object cdsPadraodtInicial: TDateTimeField
      FieldName = 'dtInicial'
    end
    object cdsPadraodtFinal: TDateTimeField
      FieldName = 'dtFinal'
    end
    object cdsPadraoidCliente: TIntegerField
      FieldName = 'idCliente'
    end
    object cdsPadraoidCadCliente: TIntegerField
      FieldName = 'idCadCliente'
    end
  end
  inherited cdsGrid: TClientDataSet
    CommandText = 
      'Select nft.idDocSerie, nft.idNfE,nfe.dtEmissao,f.idFornecedor, f' +
      '.idCadFornecedor,f.descCadFornecedor,p.idProduto, p.descProduto,' +
      ' nfe.idSafra,  nfet.Placa, nfet.descVeiculo, nfet.idMotorista Fr' +
      'om NfETransito AS nft INNER JOIN NfE AS nfe ON nft.idEmpresa = n' +
      'fe.idEmpresa AND nft.idCadEmpresa = nfe.idCadEmpresa AND nft.idD' +
      'ocSerie = nfe.idDocSerie AND nft.idFornecedor = nfe.idFornecedor' +
      ' AND nft.idCadFornecedor = nfe.idCadFornecedor AND nft.idNfE = n' +
      'fe.idNfE INNER JOIN NfEProduto nfep ON nft.idNfE = nfep.idNfE IN' +
      'NER JOIN NfETransporte AS nfet ON nft.idNfE = nfet.idNfE INNER J' +
      'OIN Produto AS p ON nfep.idProduto = p.idProduto INNER JOIN vCad' +
      'FornecedorFiscal AS f ON f.idFornecedor = nft.idFornecedor AND f' +
      '.idCadFornecedor = nft.idCadFornecedor WHERE 1 = 2'
    object cdsGrididNfE: TIntegerField
      FieldName = 'idNfE'
      Required = True
    end
    object cdsGriddtEmissao: TSQLTimeStampField
      FieldName = 'dtEmissao'
      Required = True
    end
    object cdsGrididFornecedor: TIntegerField
      FieldName = 'idFornecedor'
      Required = True
    end
    object cdsGrididCadFornecedor: TSmallintField
      FieldName = 'idCadFornecedor'
      Required = True
    end
    object cdsGriddescCadFornecedor: TStringField
      FieldName = 'descCadFornecedor'
      Required = True
      FixedChar = True
      Size = 50
    end
    object cdsGrididProduto: TIntegerField
      FieldName = 'idProduto'
      Required = True
    end
    object cdsGriddescProduto: TStringField
      FieldName = 'descProduto'
      Required = True
      FixedChar = True
      Size = 50
    end
    object cdsGrididSafra: TIntegerField
      FieldName = 'idSafra'
    end
    object cdsGridPlaca: TStringField
      FieldName = 'Placa'
      FixedChar = True
      Size = 8
    end
    object cdsGriddescVeiculo: TStringField
      FieldName = 'descVeiculo'
      FixedChar = True
      Size = 30
    end
    object cdsGrididMotorista: TSmallintField
      FieldName = 'idMotorista'
    end
    object cdsGrididDocSerie: TStringField
      FieldName = 'idDocSerie'
      Required = True
      FixedChar = True
      Size = 5
    end
  end
  inherited sdsGrid: TSQLDataSet
    CommandText = 
      'Select nft.idDocSerie, nft.idNfE,nfe.dtEmissao,f.idFornecedor, f' +
      '.idCadFornecedor,f.descCadFornecedor,p.idProduto, p.descProduto,' +
      ' nfe.idSafra,  nfet.Placa, nfet.descVeiculo, nfet.idMotorista Fr' +
      'om NfETransito AS nft INNER JOIN NfE AS nfe ON nft.idEmpresa = n' +
      'fe.idEmpresa AND nft.idCadEmpresa = nfe.idCadEmpresa AND nft.idD' +
      'ocSerie = nfe.idDocSerie AND nft.idFornecedor = nfe.idFornecedor' +
      ' AND nft.idCadFornecedor = nfe.idCadFornecedor AND nft.idNfE = n' +
      'fe.idNfE INNER JOIN NfEProduto nfep ON nft.idNfE = nfep.idNfE IN' +
      'NER JOIN NfETransporte AS nfet ON nft.idNfE = nfet.idNfE INNER J' +
      'OIN Produto AS p ON nfep.idProduto = p.idProduto INNER JOIN vCad' +
      'FornecedorFiscal AS f ON f.idFornecedor = nft.idFornecedor AND f' +
      '.idCadFornecedor = nft.idCadFornecedor WHERE 1 = 2'
  end
end
