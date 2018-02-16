object dmFind: TdmFind
  OldCreateOrder = False
  Height = 793
  Width = 1083
  object FindBanco: TCFind
    SelectClause.Strings = (
      'SELECT  idBanco, descBanco FROM Banco')
    JoinClause.Strings = (
      'WHERE StBanco = '#39'ATIVO'#39)
    OrderByClause.Strings = (
      'ORDER BY descBanco')
    FindField = 'descBanco'
    SQLConnection = dmPadrao.dbConexao
    ValueField = 'idBanco'
    CarregaDados = True
    CollumNames.Strings = (
      'C'#243'digo'
      'Descri'#231#227'o')
    TypeFind = fFindNormal
    Left = 16
    Top = 8
  end
  object FindSegmento: TCFind
    SelectClause.Strings = (
      'SELECT  idSegmento, descSegmento FROM Segmento')
    JoinClause.Strings = (
      'WHERE stSegmento = '#39'ATIVO'#39)
    OrderByClause.Strings = (
      'ORDER BY descSegmento')
    FindField = 'descSegmento'
    SQLConnection = dmPadrao.dbConexao
    ValueField = 'idSegmento'
    CarregaDados = True
    CollumNames.Strings = (
      'C'#243'digo'
      'Descri'#231#227'o'
      'Status')
    TypeFind = fFindNormal
    Left = 80
    Top = 8
  end
  object FindGrupoCad: TCFind
    SelectClause.Strings = (
      'SELECT  idGrupoCad, descGrupoCad FROM GrupoCad')
    JoinClause.Strings = (
      'WHERE stGrupoCad = '#39'ATIVO'#39)
    OrderByClause.Strings = (
      'ORDER BY descGrupoCad')
    FindField = 'descGrupoCad'
    SQLConnection = dmPadrao.dbConexao
    ValueField = 'idGrupoCad'
    CarregaDados = True
    CollumNames.Strings = (
      'C'#243'digo'
      'Descri'#231#227'o'
      'Status')
    TypeFind = fFindNormal
    Left = 152
    Top = 8
  end
  object FindPortador: TCFind
    SelectClause.Strings = (
      'SELECT  idPortador, descPortador FROM Portador')
    JoinClause.Strings = (
      'WHERE stPortador = '#39'ATIVO'#39)
    OrderByClause.Strings = (
      'ORDER BY descPortador')
    FindField = 'descPortador'
    SQLConnection = dmPadrao.dbConexao
    ValueField = 'idPortador'
    CarregaDados = True
    CollumNames.Strings = (
      'C'#243'digo'
      'Descri'#231#227'o')
    TypeFind = fFindNormal
    Left = 232
    Top = 8
  end
  object FindProduto: TCFind
    SelectClause.Strings = (
      
        'SELECT idProduto, descProduto, codFabricante, stProduto FROM Pro' +
        'duto')
    JoinClause.Strings = (
      'WHERE stProduto = '#39'ATIVO'#39)
    OrderByClause.Strings = (
      'ORDER BY descProduto')
    FindField = 'descProduto'
    SQLConnection = dmPadrao.dbConexao
    ValueField = 'idProduto'
    CarregaDados = True
    CollumNames.Strings = (
      'C'#243'digo'
      'Descri'#231#227'o'
      'C'#243'd. Fabricante'
      'Status')
    TypeFind = fFindNormal
    Left = 304
    Top = 9
  end
  object FindEquipamentos: TCFind
    SelectClause.Strings = (
      'SELECT idBem, descBem, stBem FROM vEquipamentos')
    JoinClause.Strings = (
      'WHERE stBem = '#39'ATIVO'#39)
    OrderByClause.Strings = (
      'ORDER BY descBem')
    FindField = 'descBem'
    SQLConnection = dmPadrao.dbConexao
    ValueField = 'idBem'
    CarregaDados = True
    CollumNames.Strings = (
      'C'#243'digo'
      'Descri'#231#227'o'
      'Status')
    TypeFind = fFindNormal
    Left = 392
    Top = 8
  end
  object FindUsuario: TCFind
    SelectClause.Strings = (
      'SELECT idUsuario, descUsuario, Login FROM Usuario')
    OrderByClause.Strings = (
      'ORDER BY descUsuario')
    FindField = 'descUsuario'
    SQLConnection = dmPadrao.dbConexao
    ValueField = 'idUsuario'
    CarregaDados = True
    CollumNames.Strings = (
      'C'#243'digo'
      'Descri'#231#227'o'
      'Login')
    TypeFind = fFindNormal
    Left = 472
    Top = 8
  end
  object FindProdDeposito: TCFind
    SelectClause.Strings = (
      'SELECT idProdDeposito, descProdDeposito FROM ProdDeposito')
    JoinClause.Strings = (
      'WHERE stProdDeposito = '#39'ATIVO'#39)
    OrderByClause.Strings = (
      'ORDER BY descProdDeposito')
    FindField = 'descProdDeposito'
    SQLConnection = dmPadrao.dbConexao
    ValueField = 'idProdDeposito'
    CarregaDados = True
    CollumNames.Strings = (
      'C'#243'digo'
      'Descri'#231#227'o')
    TypeFind = fFindNormal
    Left = 552
    Top = 8
  end
  object FindCriterioCompra: TCFind
    SelectClause.Strings = (
      
        'SELECT  idCriterioCompra, descCriterioCompra, stCriterioCompra F' +
        'ROM CriterioCompra')
    JoinClause.Strings = (
      'WHERE stCriterioCompra = '#39'ATIVO'#39)
    OrderByClause.Strings = (
      'ORDER BY descCriterioCompra')
    FindField = 'descCriterioCompra'
    SQLConnection = dmPadrao.dbConexao
    ValueField = 'idCriterioCompra'
    CarregaDados = True
    CollumNames.Strings = (
      'C'#243'digo'
      'Descri'#231#227'o'
      'Status')
    TypeFind = fFindNormal
    Left = 648
    Top = 8
  end
  object FindCondicaoPgto: TCFind
    SelectClause.Strings = (
      
        'SELECT  idCondicaoPgto, descCondicaoPgto, stCondicaoPgto FROM Co' +
        'ndicaoPgto')
    JoinClause.Strings = (
      'WHERE stCondicaoPgto = '#39'ATIVO'#39)
    OrderByClause.Strings = (
      'ORDER BY descCondicaoPgto')
    FindField = 'descCondicaoPgto'
    SQLConnection = dmPadrao.dbConexao
    ValueField = 'idCondicaoPgto'
    CarregaDados = True
    CollumNames.Strings = (
      'C'#243'digo'
      'Descri'#231#227'o'
      'Status')
    TypeFind = fFindNormal
    Left = 32
    Top = 72
  end
  object FindFornecedor: TCFind
    SelectClause.Strings = (
      
        'SELECT  idFornecedor, descCadFornecedor, descAbreviada, idCnpjCp' +
        'f FROM vCadFornecedorContabil')
    JoinClause.Strings = (
      'WHERE stCadGeral = '#39'ATIVO'#39)
    OrderByClause.Strings = (
      'ORDER BY descCadFornecedor')
    FindField = 'descCadFornecedor'
    SQLConnection = dmPadrao.dbConexao
    ValueField = 'idFornecedor'
    CarregaDados = True
    CollumNames.Strings = (
      'C'#243'digo'
      'Descri'#231#227'o'
      'Fantasia'
      'CNPJ/CPF')
    TypeFind = fFindNormal
    Left = 120
    Top = 72
  end
  object FindFabricante: TCFind
    SelectClause.Strings = (
      'SELECT  idFabricante, descFabricante FROM Fabricante')
    JoinClause.Strings = (
      'WHERE stFabricante = '#39'ATIVO'#39)
    OrderByClause.Strings = (
      'ORDER BY descFabricante')
    FindField = 'descFabricante'
    SQLConnection = dmPadrao.dbConexao
    ValueField = 'idFabricante'
    CarregaDados = True
    CollumNames.Strings = (
      'C'#243'digo'
      'Descri'#231#227'o')
    TypeFind = fFindNormal
    Left = 200
    Top = 72
  end
  object FindSerieEntrada: TCFind
    SelectClause.Strings = (
      'SELECT idDocSerie, descDocSerie FROM DocSerie')
    JoinClause.Strings = (
      'WHERE idTipoDocSerie IN ( 4,8)')
    OrderByClause.Strings = (
      'ORDER BY descDocSerie')
    FindField = 'descDocSerie'
    SQLConnection = dmPadrao.dbConexao
    ValueField = 'idDocSerie'
    CarregaDados = True
    CollumNames.Strings = (
      'S'#233'rie'
      'Descri'#231#227'o')
    TypeFind = fFindNormal
    Left = 288
    Top = 72
  end
  object FindPropriedade: TCFind
    SelectClause.Strings = (
      'SELECT idBem, descBem, descLocalidade FROM vPropriedade')
    OrderByClause.Strings = (
      'ORDER BY descBem')
    FindField = 'descBem'
    SQLConnection = dmPadrao.dbConexao
    ValueField = 'idBem'
    CarregaDados = True
    CollumNames.Strings = (
      'C'#243'digo'
      'Descri'#231#227'o'
      'Localidade')
    TypeFind = fFindNormal
    Left = 392
    Top = 72
  end
  object FindSubGrupo: TCFind
    SelectClause.Strings = (
      'SELECT idProdSubGrupo, descProdSubGrupo FROM ProdSubGrupo')
    OrderByClause.Strings = (
      'ORDER BY descProdSubGrupo')
    FindField = 'descProdSubGrupo'
    SQLConnection = dmPadrao.dbConexao
    ValueField = 'idProdSubGrupo'
    CarregaDados = True
    CollumNames.Strings = (
      'C'#243'digo'
      'Descri'#231#227'o')
    TypeFind = fFindNormal
    Left = 552
    Top = 73
  end
  object FindGrupo: TCFind
    SelectClause.Strings = (
      'SELECT idProdGrupo, descProdGrupo FROM ProdGrupo')
    OrderByClause.Strings = (
      'ORDER BY descProdGrupo')
    FindField = 'descProdGrupo'
    SQLConnection = dmPadrao.dbConexao
    ValueField = 'idProdGrupo'
    CarregaDados = True
    CollumNames.Strings = (
      'C'#243'digo'
      'Descri'#231#227'o')
    TypeFind = fFindNormal
    Left = 472
    Top = 73
  end
  object FindCfop: TCFind
    SelectClause.Strings = (
      'SELECT idCfop, descCfop FROM Cfop')
    OrderByClause.Strings = (
      'ORDER BY descCfop')
    FindField = 'descCfop'
    SQLConnection = dmPadrao.dbConexao
    ValueField = 'idCfop'
    CarregaDados = True
    CollumNames.Strings = (
      'Cfop'
      'Descri'#231#227'o')
    TypeFind = fFindNormal
    Left = 632
    Top = 72
  end
  object FindSegModulo: TCFind
    SelectClause.Strings = (
      'SELECT idSegModulo, descSegModulo, stSegModulo FROM SegModulo')
    OrderByClause.Strings = (
      'ORDER BY descSegModulo')
    FindField = 'descSegModulo'
    SQLConnection = dmPadrao.dbConexao
    ValueField = 'idSegModulo'
    CarregaDados = True
    CollumNames.Strings = (
      'C'#243'digo'
      'Nome'
      'Status')
    TypeFind = fFindNormal
    Left = 712
    Top = 72
  end
  object FindUsuarioGrupo: TCFind
    SelectClause.Strings = (
      'SELECT idUsuarioGrupo, descUsuarioGrupo FROM UsuarioGrupo')
    OrderByClause.Strings = (
      'ORDER BY descUsuarioGrupo')
    FindField = 'descUsuarioGrupo'
    SQLConnection = dmPadrao.dbConexao
    ValueField = 'idUsuarioGrupo'
    CarregaDados = True
    CollumNames.Strings = (
      'C'#243'digo'
      'Descri'#231#227'o')
    TypeFind = fFindNormal
    Left = 48
    Top = 128
  end
  object FindTipoMaquina: TCFind
    SelectClause.Strings = (
      'SELECT idTipoMaquina, descTipoMaquina FROM TipoMaquina')
    JoinClause.Strings = (
      'WHERE stTipoMaquina = '#39'ATIVO'#39)
    OrderByClause.Strings = (
      'ORDER BY descTipoMaquina')
    FindField = 'descTipoMaquina'
    SQLConnection = dmPadrao.dbConexao
    ValueField = 'idTipoMaquina'
    CarregaDados = True
    CollumNames.Strings = (
      'C'#243'digo'
      'Descri'#231#227'o')
    TypeFind = fFindNormal
    Left = 144
    Top = 129
  end
  object FindMaquinaMarca: TCFind
    SelectClause.Strings = (
      'SELECT idMaquinaMarca, descMaquinaMarca FROM MaquinaMarca')
    JoinClause.Strings = (
      'WHERE stMaquinaMarca = '#39'ATIVO'#39)
    OrderByClause.Strings = (
      'ORDER BY descMaquinaMarca')
    FindField = 'descMaquinaMarca'
    SQLConnection = dmPadrao.dbConexao
    ValueField = 'idMaquinaMarca'
    CarregaDados = True
    CollumNames.Strings = (
      'C'#243'digo'
      'Descri'#231#227'o')
    TypeFind = fFindNormal
    Left = 232
    Top = 129
  end
  object FindMaquina: TCFind
    SelectClause.Strings = (
      
        'SELECT idMaquina, SUBSTRING(nrPatrimonio, 1, 15) nrPatrimonio, d' +
        'escMaquina FROM Maquina')
    JoinClause.Strings = (
      'WHERE stMaquina = '#39'ATIVO'#39)
    OrderByClause.Strings = (
      'ORDER BY descMaquina')
    FindField = 'descMaquina'
    SQLConnection = dmPadrao.dbConexao
    ValueField = 'idMaquina'
    CarregaDados = True
    CollumNames.Strings = (
      'C'#243'digo'
      'Nr.Patrimonio'
      'Descri'#231#227'o')
    TypeFind = fFindNormal
    Left = 328
    Top = 129
  end
  object FindSegGrupoMenu: TCFind
    SelectClause.Strings = (
      
        'SELECT idSegGrupoMenu, descSegGrupoMenu, stSegGrupoMenu FROM Seg' +
        'GrupoMenu')
    JoinClause.Strings = (
      'WHERE idSegModulo = [DBEidSegModulo]')
    OrderByClause.Strings = (
      'ORDER BY descSegGrupoMenu')
    FindField = 'descSegGrupoMenu'
    SQLConnection = dmPadrao.dbConexao
    ValueField = 'idSegGrupoMenu'
    CarregaDados = True
    CollumNames.Strings = (
      'C'#243'digo'
      'Nome'
      'Status')
    TypeFind = fFindNormal
    Left = 504
    Top = 128
  end
  object FindSegMenu: TCFind
    SelectClause.Strings = (
      'SELECT idSegMenu, descSegMenu, stSegMenu FROM SegMenu')
    JoinClause.Strings = (
      
        'WHERE idSegModulo = [DBEidSegModulo] AND idSegGrupoMenu = [DBEid' +
        'SegGrupoMenu]')
    OrderByClause.Strings = (
      'ORDER BY descSegMenu')
    FindField = 'descSegMenu'
    SQLConnection = dmPadrao.dbConexao
    ValueField = 'idSegMenu'
    CarregaDados = True
    CollumNames.Strings = (
      'C'#243'digo'
      'Nome'
      'Status')
    TypeFind = fFindNormal
    Left = 416
    Top = 128
  end
  object FindCultura: TCFind
    SelectClause.Strings = (
      'SELECT idCultura, descCultura FROM Cultura')
    OrderByClause.Strings = (
      'ORDER BY descCultura')
    FindField = 'descCultura'
    SQLConnection = dmPadrao.dbConexao
    ValueField = 'idCultura'
    CarregaDados = True
    CollumNames.Strings = (
      'Cultura'
      'Descri'#231#227'o')
    TypeFind = fFindNormal
    Left = 624
    Top = 128
  end
  object FindSafra: TCFind
    SelectClause.Strings = (
      'SELECT idSafra, descSafra, dtInicial  FROM Safra')
    JoinClause.Strings = (
      'WHERE idEmpresa = [DBEidEmpresa]')
    OrderByClause.Strings = (
      'ORDER BY descSafra')
    FindField = 'descSafra'
    SQLConnection = dmPadrao.dbConexao
    ValueField = 'idSafra'
    CarregaDados = True
    CollumNames.Strings = (
      'Safra'
      'Descri'#231#227'o'
      'Data Inicial')
    TypeFind = fFindNormal
    Left = 712
    Top = 128
  end
  object FindGerencial: TCFind
    SelectClause.Strings = (
      
        'SELECT DISTINCT idGerencial, classificacao, descGerencial FROM v' +
        'Gerencial')
    JoinClause.Strings = (
      'WHERE idEmpresa = [DBEidEmpresa]')
    OrderByClause.Strings = (
      'ORDER BY descGerencial')
    FindField = 'descGerencial'
    SQLConnection = dmPadrao.dbConexao
    ValueField = 'idGerencial'
    CarregaDados = True
    CollumNames.Strings = (
      'C'#243'digo'
      'Classifica'#231#227'o'
      'Descri'#231#227'o')
    TypeFind = fFindNormal
    Left = 48
    Top = 183
  end
  object FindTalhao: TCFind
    SelectClause.Strings = (
      
        'SELECT  idResultado, descResultado, Talhao, stResultado FROM Res' +
        'ultado')
    JoinClause.Strings = (
      'WHERE idEmpresa = [DBEidEmpresa] AND talhao = '#39'S'#39)
    OrderByClause.Strings = (
      'ORDER BY descResultado')
    FindField = 'descResultado'
    SQLConnection = dmPadrao.dbConexao
    ValueField = 'idResultado'
    CarregaDados = True
    CollumNames.Strings = (
      'C'#243'digo'
      'Descri'#231#227'o'
      #201' Talh'#227'o'
      'Status')
    TypeFind = fFindNormal
    Left = 137
    Top = 192
  end
  object FindDocSerie: TCFind
    SelectClause.Strings = (
      'SELECT idDocSerie, descDocSerie FROM DocSerie')
    JoinClause.Strings = (
      '')
    OrderByClause.Strings = (
      'ORDER BY descDocSerie')
    FindField = 'descDocSerie'
    SQLConnection = dmPadrao.dbConexao
    ValueField = 'idDocSerie'
    CarregaDados = True
    CollumNames.Strings = (
      'C'#243'digo'
      'Descri'#231#227'o')
    TypeFind = fFindNormal
    Left = 217
    Top = 184
  end
  object FindGrupoGerencial: TCFind
    SelectClause.Strings = (
      'SELECT idGrupoGerencial, descGrupoGerencial FROM GrupoGerencial')
    JoinClause.Strings = (
      'WHERE stGrupoGerencial = '#39'ATIVO'#39)
    OrderByClause.Strings = (
      'ORDER BY descGrupoGerencial')
    FindField = 'descGrupoGerencial'
    SQLConnection = dmPadrao.dbConexao
    ValueField = 'idGrupoGerencial'
    CarregaDados = True
    CollumNames.Strings = (
      'C'#243'digo'
      'Descri'#231#227'o')
    TypeFind = fFindNormal
    Left = 304
    Top = 185
  end
  object FindCaixa: TCFind
    SelectClause.Strings = (
      'SELECT  idCaixa, descCaixa FROM Caixa')
    JoinClause.Strings = (
      'WHERE StCaixa = '#39'ATIVO'#39' AND idEmpresa = [DBEidEmpresa]')
    OrderByClause.Strings = (
      'ORDER BY descCaixa')
    FindField = 'descCaixa'
    SQLConnection = dmPadrao.dbConexao
    ValueField = 'idCaixa'
    CarregaDados = True
    CollumNames.Strings = (
      'C'#243'digo'
      'Descri'#231#227'o')
    TypeFind = fFindNormal
    Left = 408
    Top = 184
  end
  object FindConta: TCFind
    SelectClause.Strings = (
      
        'SELECT  idConta, idBanco, idAgencia, idContaCorrente, descConta ' +
        'FROM vConta')
    JoinClause.Strings = (
      'WHERE StConta = '#39'ATIVO'#39' AND idEmpresa = [DBEidEmpresa]')
    OrderByClause.Strings = (
      'ORDER BY descConta')
    FindField = 'descConta'
    SQLConnection = dmPadrao.dbConexao
    ValueField = 'idConta'
    CarregaDados = True
    CollumNames.Strings = (
      'C'#243'digo'
      'Banco'
      'Ag'#234'ncia'
      'Conta'
      'Descri'#231#227'o')
    TypeFind = fFindNormal
    Left = 488
    Top = 184
  end
  object FindTipoPneu: TCFind
    SelectClause.Strings = (
      'SELECT idTipoPneu, descTipoPneu FROM TipoPneu')
    JoinClause.Strings = (
      'WHERE stTipoPneu = '#39'ATIVO'#39)
    OrderByClause.Strings = (
      'ORDER BY descTipoPneu')
    FindField = 'descTipoPneu'
    SQLConnection = dmPadrao.dbConexao
    ValueField = 'idTipoPneu'
    CarregaDados = True
    CollumNames.Strings = (
      'C'#243'digo'
      'Descri'#231#227'o')
    TypeFind = fFindNormal
    Left = 576
    Top = 185
  end
  object FindTipoOleo: TCFind
    SelectClause.Strings = (
      'SELECT idTipoOleo, descTipoOleo FROM TipoOleo')
    JoinClause.Strings = (
      'WHERE stTipoOleo = '#39'ATIVO'#39)
    OrderByClause.Strings = (
      'ORDER BY descTipoOleo')
    FindField = 'descTipoOleo'
    SQLConnection = dmPadrao.dbConexao
    ValueField = 'idTipoOleo'
    CarregaDados = True
    CollumNames.Strings = (
      'C'#243'digo'
      'Descri'#231#227'o')
    TypeFind = fFindNormal
    Left = 656
    Top = 185
  end
  object FindTipoFiltro: TCFind
    SelectClause.Strings = (
      'SELECT idTipoFiltro, descTipoFiltro FROM TipoFiltro')
    JoinClause.Strings = (
      'WHERE stTipoFiltro = '#39'ATIVO'#39)
    OrderByClause.Strings = (
      'ORDER BY descTipoFiltro')
    FindField = 'descTipoFiltro'
    SQLConnection = dmPadrao.dbConexao
    ValueField = 'idTipoFiltro'
    CarregaDados = True
    CollumNames.Strings = (
      'C'#243'digo'
      'Descri'#231#227'o')
    TypeFind = fFindNormal
    Left = 728
    Top = 185
  end
  object FindTipoAtividade: TCFind
    SelectClause.Strings = (
      'SELECT idTipoAtividade, descTipoAtividade FROM TipoAtividade')
    JoinClause.Strings = (
      'WHERE stTipoAtividade = '#39'ATIVO'#39)
    OrderByClause.Strings = (
      'ORDER BY descTipoAtividade')
    FindField = 'descTipoAtividade'
    SQLConnection = dmPadrao.dbConexao
    ValueField = 'idTipoAtividade'
    CarregaDados = True
    CollumNames.Strings = (
      'C'#243'digo'
      'Descri'#231#227'o')
    TypeFind = fFindNormal
    Left = 48
    Top = 249
  end
  object FindResultadoTalhao: TCFind
    SelectClause.Strings = (
      
        'SELECT  idResultado, descResultado, Talhao, stResultado FROM Res' +
        'ultado')
    JoinClause.Strings = (
      
        'WHERE idEmpresa = [DBEidEmpresa] AND idResultado IN (SELECT idRe' +
        'sultado FROM SafraTalhao WHERE idEmpresa = [DBEidEmpresa] AND id' +
        'Safra = [DBEidSafra])')
    OrderByClause.Strings = (
      'ORDER BY descResultado')
    FindField = 'descResultado'
    SQLConnection = dmPadrao.dbConexao
    ValueField = 'idResultado'
    CarregaDados = True
    CollumNames.Strings = (
      'C'#243'digo'
      'Descri'#231#227'o'
      #201' Talh'#227'o'
      'Status')
    TypeFind = fFindNormal
    Left = 144
    Top = 248
  end
  object FindRateio: TCFind
    SelectClause.Strings = (
      'SELECT  idRateio, descRateio, stRateio FROM Rateio')
    JoinClause.Strings = (
      'WHERE idEmpresa = [DBEidEmpresa]')
    OrderByClause.Strings = (
      'ORDER BY descRateio')
    FindField = 'descRateio'
    SQLConnection = dmPadrao.dbConexao
    ValueField = 'idRateio'
    CarregaDados = True
    CollumNames.Strings = (
      'C'#243'digo'
      'Descri'#231#227'o'
      'Status')
    TypeFind = fFindNormal
    Left = 232
    Top = 248
  end
  object FindNilus: TCFind
    SelectClause.Strings = (
      'SELECT  idNilus, descNilus, stNilus FROM Nilus')
    JoinClause.Strings = (
      'WHERE stNilus = '#39'ATIVO'#39)
    OrderByClause.Strings = (
      'ORDER BY descNilus')
    FindField = 'descNilus'
    SQLConnection = dmPadrao.dbConexao
    ValueField = 'idNilus'
    CarregaDados = True
    CollumNames.Strings = (
      'C'#243'digo'
      'Descri'#231#227'o'
      'Status')
    TypeFind = fFindNormal
    Left = 808
    Top = 8
  end
  object FindTipoDepreciacao: TCFind
    SelectClause.Strings = (
      
        'SELECT idTipoDepreciacao, descTipoDepreciacao FROM TipoDepreciac' +
        'ao')
    OrderByClause.Strings = (
      'ORDER BY descTipoDepreciacao')
    FindField = 'descTipoDepreciacao'
    SQLConnection = dmPadrao.dbConexao
    ValueField = 'idTipoDepreciacao'
    CarregaDados = True
    CollumNames.Strings = (
      'C'#243'digo'
      'Descri'#231#227'o')
    TypeFind = fFindNormal
    Left = 312
    Top = 249
  end
  object FindGerenciaP: TCFind
    SelectClause.Strings = (
      
        'SELECT DISTINCT idGerencial, classificacao, descGerencial FROM v' +
        'Gerencial')
    JoinClause.Strings = (
      
        'WHERE StGerencial = '#39'ATIVO'#39' AND tpGerencial = '#39'SAIDAS'#39' AND idEmp' +
        'resa = [DBEidEmpresa]')
    OrderByClause.Strings = (
      'ORDER BY descGerencial')
    FindField = 'descGerencial'
    SQLConnection = dmPadrao.dbConexao
    ValueField = 'idGerencial'
    CarregaDados = True
    CollumNames.Strings = (
      'C'#243'digo'
      'Classifica'#231#227'o'
      'Descri'#231#227'o')
    TypeFind = fFindNormal
    Left = 408
    Top = 248
  end
  object FindIndice: TCFind
    SelectClause.Strings = (
      'SELECT  idIndice, descIndice FROM Indice')
    JoinClause.Strings = (
      'WHERE StIndice = '#39'ATIVO'#39)
    OrderByClause.Strings = (
      'ORDER BY descIndice')
    FindField = 'descIndice'
    SQLConnection = dmPadrao.dbConexao
    ValueField = 'idIndice'
    CarregaDados = True
    CollumNames.Strings = (
      'C'#243'digo'
      'Descri'#231#227'o')
    TypeFind = fFindNormal
    Left = 488
    Top = 248
  end
  object FindPlanoConta: TCFind
    SelectClause.Strings = (
      
        'SELECT DISTINCT cdPlanoConta, classificacao, descPlanoConta FROM' +
        ' vPlanoConta')
    JoinClause.Strings = (
      
        'WHERE stPlanoConta = '#39'ATIVO'#39' AND tpPlanoConta = [EDtpPlanoConta]' +
        ' AND idEmpresa = [DBEidEmpresa]')
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
    Left = 568
    Top = 250
  end
  object FindResultado: TCFind
    SelectClause.Strings = (
      
        'SELECT  idResultado, descResultado, Talhao, stResultado FROM Res' +
        'ultado')
    JoinClause.Strings = (
      'WHERE idEmpresa = [DBEidEmpresa]')
    OrderByClause.Strings = (
      'ORDER BY descResultado')
    FindField = 'descResultado'
    SQLConnection = dmPadrao.dbConexao
    ValueField = 'idResultado'
    CarregaDados = True
    CollumNames.Strings = (
      'C'#243'digo'
      'Descri'#231#227'o'
      #201' Talh'#227'o'
      'Status')
    TypeFind = fFindNormal
    Left = 656
    Top = 248
  end
  object FindDocSerieTpag: TCFind
    SelectClause.Strings = (
      'SELECT  idDocSerie, descDocSerie FROM DocSerie')
    JoinClause.Strings = (
      'WHERE idTipoDocSerie = 2')
    OrderByClause.Strings = (
      'ORDER BY descDocSerie')
    FindField = 'descDocSerie'
    SQLConnection = dmPadrao.dbConexao
    ValueField = 'idDocSerie'
    CarregaDados = True
    CollumNames.Strings = (
      'C'#243'digo'
      'Descri'#231#227'o')
    TypeFind = fFindNormal
    Left = 736
    Top = 248
  end
  object FindDepartamento: TCFind
    SelectClause.Strings = (
      'SELECT idDepartamento, descDepartamento FROM Departamento')
    JoinClause.Strings = (
      'WHERE stDepartamento = '#39'ATIVO'#39)
    OrderByClause.Strings = (
      'ORDER BY descDepartamento')
    FindField = 'descDepartamento'
    SQLConnection = dmPadrao.dbConexao
    ValueField = 'idDepartamento'
    CarregaDados = True
    CollumNames.Strings = (
      'C'#243'digo'
      'Descri'#231#227'o')
    TypeFind = fFindNormal
    Left = 48
    Top = 304
  end
  object FindFuncao: TCFind
    SelectClause.Strings = (
      'SELECT idFuncao, descFuncao FROM Funcao')
    JoinClause.Strings = (
      'WHERE stFuncao = '#39'ATIVO'#39)
    OrderByClause.Strings = (
      'ORDER BY descFuncao')
    FindField = 'descFuncao'
    SQLConnection = dmPadrao.dbConexao
    ValueField = 'idFuncao'
    CarregaDados = True
    CollumNames.Strings = (
      'C'#243'digo'
      'Descri'#231#227'o')
    TypeFind = fFindNormal
    Left = 141
    Top = 304
  end
  object FindTipoAdmissao: TCFind
    SelectClause.Strings = (
      'SELECT idTipoAdmissao, descTipoAdmissao FROM TipoAdmissao')
    JoinClause.Strings = (
      'WHERE stTipoAdmissao = '#39'ATIVO'#39)
    OrderByClause.Strings = (
      'ORDER BY descTipoAdmissao')
    FindField = 'descTipoAdmissao'
    SQLConnection = dmPadrao.dbConexao
    ValueField = 'idTipoAdmissao'
    CarregaDados = True
    CollumNames.Strings = (
      'C'#243'digo'
      'Descri'#231#227'o')
    TypeFind = fFindNormal
    Left = 216
    Top = 304
  end
  object FindArmOperacao: TCFind
    SelectClause.Strings = (
      'SELECT idArmOperacao, descArmOperacao FROM ArmOperacao')
    JoinClause.Strings = (
      'WHERE stArmOperacao = '#39'ATIVO'#39)
    OrderByClause.Strings = (
      'ORDER BY descArmOperacao')
    FindField = 'descArmOperacao'
    SQLConnection = dmPadrao.dbConexao
    ValueField = 'idArmOperacao'
    CarregaDados = True
    CollumNames.Strings = (
      'C'#243'digo'
      'Descri'#231#227'o')
    TypeFind = fFindNormal
    Left = 312
    Top = 304
  end
  object FindVariedade: TCFind
    SelectClause.Strings = (
      'SELECT idVariedade, descVariedade FROM ProdutoVariedade')
    JoinClause.Strings = (
      'WHERE idProduto = [DBEidProduto]')
    OrderByClause.Strings = (
      'ORDER BY descVariedade')
    FindField = 'descVariedade'
    SQLConnection = dmPadrao.dbConexao
    ValueField = 'idVariedade'
    CarregaDados = True
    CollumNames.Strings = (
      'C'#243'digo'
      'Descri'#231#227'o')
    TypeFind = fFindNormal
    Left = 552
    Top = 304
  end
  object FindArmOperacaoE: TCFind
    SelectClause.Strings = (
      'SELECT idArmOperacao, descArmOperacao FROM ArmOperacao')
    JoinClause.Strings = (
      'WHERE stArmOperacao = '#39'ATIVO'#39' AND tpArmOperacao = '#39'E'#39)
    OrderByClause.Strings = (
      'ORDER BY descArmOperacao')
    FindField = 'descArmOperacao'
    SQLConnection = dmPadrao.dbConexao
    ValueField = 'idArmOperacao'
    CarregaDados = True
    CollumNames.Strings = (
      'C'#243'digo'
      'Descri'#231#227'o')
    TypeFind = fFindNormal
    Left = 408
    Top = 304
  end
  object FindSeguradora: TCFind
    SelectClause.Strings = (
      'SELECT idSeguradora, descSeguradora FROM CadSeguradora')
    OrderByClause.Strings = (
      'ORDER BY descSeguradora')
    FindField = 'descSeguradora'
    SQLConnection = dmPadrao.dbConexao
    ValueField = 'idSeguradora'
    CarregaDados = True
    CollumNames.Strings = (
      'C'#243'digo'
      'Descri'#231#227'o')
    TypeFind = fFindNormal
    Left = 488
    Top = 304
  end
  object FindDocumento: TCFind
    SelectClause.Strings = (
      'SELECT idDocumento, descDocumento FROM Documento')
    JoinClause.Strings = (
      '')
    OrderByClause.Strings = (
      'ORDER BY descDocumento')
    FindField = 'descDocumento'
    SQLConnection = dmPadrao.dbConexao
    ValueField = 'idDocumento'
    CarregaDados = True
    CollumNames.Strings = (
      'C'#243'digo'
      'Descri'#231#227'o')
    TypeFind = fFindNormal
    Left = 624
    Top = 304
  end
  object FindCidade: TCFind
    SelectClause.Strings = (
      'SELECT idCidade, descCidade, idEstado FROM Cidade')
    OrderByClause.Strings = (
      'ORDER BY descCidade')
    FindField = 'descCidade'
    SQLConnection = dmPadrao.dbConexao
    ValueField = 'idCidade'
    CarregaDados = True
    CollumNames.Strings = (
      'C'#243'digo'
      'Descri'#231#227'o'
      'Uf')
    TypeFind = fFindNormal
    Left = 720
    Top = 8
  end
  object FindSubGrupoAplic: TCFind
    SelectClause.Strings = (
      'SELECT idSubGrupo, descSubGrupo FROM AplicacaoSubGrupo')
    OrderByClause.Strings = (
      'ORDER BY descSubGrupo')
    FindField = 'descSubGrupo'
    SQLConnection = dmPadrao.dbConexao
    ValueField = 'idSubGrupo'
    CarregaDados = True
    CollumNames.Strings = (
      'C'#243'digo'
      'Descri'#231#227'o')
    TypeFind = fFindNormal
    Left = 688
    Top = 304
  end
  object FindMedida: TCFind
    SelectClause.Strings = (
      'SELECT idProdMedida, descProdMedida FROM ProdMedida')
    OrderByClause.Strings = (
      'ORDER BY descProdMedida')
    FindField = 'descProdMedida'
    SQLConnection = dmPadrao.dbConexao
    ValueField = 'idProdMedida'
    CarregaDados = True
    CollumNames.Strings = (
      'C'#243'digo'
      'Descri'#231#227'o')
    TypeFind = fFindNormal
    Left = 48
    Top = 361
  end
  object FindTrpUnidadeMedida: TCFind
    SelectClause.Strings = (
      'SELECT cUnid, descUnidade FROM TrpUnidadeMedida')
    OrderByClause.Strings = (
      'ORDER BY descUnidade')
    FindField = 'descUnidade'
    SQLConnection = dmPadrao.dbConexao
    ValueField = 'cUnid'
    CarregaDados = True
    CollumNames.Strings = (
      'C'#243'digo'
      'Descri'#231#227'o')
    TypeFind = fFindNormal
    Left = 136
    Top = 361
  end
  object FindDocSerieCTe: TCFind
    SelectClause.Strings = (
      'SELECT  idDocSerie, descDocSerie FROM DocSerie')
    JoinClause.Strings = (
      'WHERE idTipoDocSerie = 8')
    OrderByClause.Strings = (
      'ORDER BY descDocSerie')
    FindField = 'descDocSerie'
    SQLConnection = dmPadrao.dbConexao
    ValueField = 'idDocSerie'
    CarregaDados = True
    CollumNames.Strings = (
      'C'#243'digo'
      'Descri'#231#227'o')
    TypeFind = fFindNormal
    Left = 240
    Top = 360
  end
  object FindTrpTipoServico: TCFind
    SelectClause.Strings = (
      'SELECT  tpServ, descTipoServico FROM TrpTipoServico')
    OrderByClause.Strings = (
      'ORDER BY descTipoServico')
    FindField = 'descTipoServico'
    SQLConnection = dmPadrao.dbConexao
    ValueField = 'tpServ'
    CarregaDados = True
    CollumNames.Strings = (
      'Tipo'
      'Descri'#231#227'o')
    TypeFind = fFindNormal
    Left = 336
    Top = 360
  end
  object FindTrpTipoCte: TCFind
    SelectClause.Strings = (
      'SELECT  tpCTe, descTipoCTe FROM TrpTipoCte')
    OrderByClause.Strings = (
      'ORDER BY descTipoCTe')
    FindField = 'descTipoCTe'
    SQLConnection = dmPadrao.dbConexao
    ValueField = 'tpCTe'
    CarregaDados = True
    CollumNames.Strings = (
      'Tipo'
      'Descri'#231#227'o')
    TypeFind = fFindNormal
    Left = 424
    Top = 360
  end
  object FindTrpModal: TCFind
    SelectClause.Strings = (
      'SELECT  modal, descModal FROM TrpModal')
    OrderByClause.Strings = (
      'ORDER BY descModal')
    FindField = 'descModal'
    SQLConnection = dmPadrao.dbConexao
    ValueField = 'modal'
    CarregaDados = True
    CollumNames.Strings = (
      'Modal'
      'Descri'#231#227'o')
    TypeFind = fFindNormal
    Left = 498
    Top = 360
  end
  object FindTrpFormaPgto: TCFind
    SelectClause.Strings = (
      'SELECT  forPag, descFormaPagto FROM TrpFormaPagto')
    OrderByClause.Strings = (
      'ORDER BY descFormaPagto')
    FindField = 'descFormaPagto'
    SQLConnection = dmPadrao.dbConexao
    ValueField = 'forPag'
    CarregaDados = True
    CollumNames.Strings = (
      'Forma'
      'Descri'#231#227'o')
    TypeFind = fFindNormal
    Left = 578
    Top = 360
  end
  object FindNaturezaCTe: TCFind
    SelectClause.Strings = (
      'SELECT idNatureza, descNatureza, idCfop, descCfop FROM vNatureza')
    JoinClause.Strings = (
      'WHERE tpNatureza = '#39'SAIDA'#39' AND frete = '#39'S'#39)
    OrderByClause.Strings = (
      'ORDER BY descNatureza')
    FindField = 'descNatureza'
    SQLConnection = dmPadrao.dbConexao
    ValueField = 'idNatureza'
    CarregaDados = True
    CollumNames.Strings = (
      'C'#243'digo'
      'Natureza'
      'Cfop'
      'Descri'#231#227'o do Cfop')
    TypeFind = fFindNormal
    Left = 808
    Top = 72
  end
  object FindTrpModeloNF: TCFind
    SelectClause.Strings = (
      'SELECT  mod, descModelo FROM TrpModeloNF')
    OrderByClause.Strings = (
      'ORDER BY descModelo')
    FindField = 'descModelo'
    SQLConnection = dmPadrao.dbConexao
    ValueField = 'mod'
    CarregaDados = True
    CollumNames.Strings = (
      'Modelo'
      'Descri'#231#227'o')
    TypeFind = fFindNormal
    Left = 650
    Top = 360
  end
  object FindTrpTipoDocumento: TCFind
    SelectClause.Strings = (
      'SELECT  tpDoc, descDoc FROM TrpTipoDocumento')
    OrderByClause.Strings = (
      'ORDER BY descDoc')
    FindField = 'descDoc'
    SQLConnection = dmPadrao.dbConexao
    ValueField = 'tpDoc'
    CarregaDados = True
    CollumNames.Strings = (
      'Modelo'
      'Descri'#231#227'o')
    TypeFind = fFindNormal
    Left = 730
    Top = 360
  end
  object FindTpCarroceria: TCFind
    SelectClause.Strings = (
      'SELECT  tpCar, descTipoCarroceria FROM TrpTipoCarroceria')
    OrderByClause.Strings = (
      'ORDER BY descTipoCarroceria')
    FindField = 'descTipoCarroceria'
    SQLConnection = dmPadrao.dbConexao
    ValueField = 'tpCar'
    CarregaDados = True
    CollumNames.Strings = (
      'Tipo'
      'Descri'#231#227'o')
    TypeFind = fFindNormal
    Left = 130
    Top = 416
  end
  object FindTpProprietario: TCFind
    SelectClause.Strings = (
      'SELECT  tpProp, descTipoProprietario FROM TrpTipoProprietario')
    OrderByClause.Strings = (
      'ORDER BY descTipoProprietario')
    FindField = 'descTipoProprietario'
    SQLConnection = dmPadrao.dbConexao
    ValueField = 'tpProp'
    CarregaDados = True
    CollumNames.Strings = (
      'Tipo'
      'Descri'#231#227'o')
    TypeFind = fFindNormal
    Left = 226
    Top = 416
  end
  object FindTpRodado: TCFind
    SelectClause.Strings = (
      'SELECT  tpRod, descTipoRodado FROM TrpTipoRodado')
    OrderByClause.Strings = (
      'ORDER BY descTipoRodado')
    FindField = 'descTipoRodado'
    SQLConnection = dmPadrao.dbConexao
    ValueField = 'tpRod'
    CarregaDados = True
    CollumNames.Strings = (
      'Tipo'
      'Descri'#231#227'o')
    TypeFind = fFindNormal
    Left = 322
    Top = 416
  end
  object FindEstado: TCFind
    SelectClause.Strings = (
      'SELECT idEstado, descEstado FROM Estado')
    OrderByClause.Strings = (
      'ORDER BY descEstado')
    FindField = 'descEstado'
    SQLConnection = dmPadrao.dbConexao
    ValueField = 'idEstado'
    CarregaDados = True
    CollumNames.Strings = (
      'Uf'
      'Descri'#231#227'o')
    TypeFind = fFindNormal
    Left = 408
    Top = 416
  end
  object FindDocSerieTRec: TCFind
    SelectClause.Strings = (
      'SELECT  idDocSerie, descDocSerie FROM DocSerie')
    JoinClause.Strings = (
      'WHERE idTipoDocSerie = 1')
    OrderByClause.Strings = (
      'ORDER BY descDocSerie')
    FindField = 'descDocSerie'
    SQLConnection = dmPadrao.dbConexao
    ValueField = 'idDocSerie'
    CarregaDados = True
    CollumNames.Strings = (
      'C'#243'digo'
      'Descri'#231#227'o')
    TypeFind = fFindNormal
    Left = 496
    Top = 418
  end
  object FindMedidaCTe: TCFind
    SelectClause.Strings = (
      'SELECT idProdMedida, descProdMedida FROM ProdMedida')
    JoinClause.Strings = (
      'WHERE cUnid IS NOT NULL')
    OrderByClause.Strings = (
      'ORDER BY descProdMedida')
    FindField = 'descProdMedida'
    SQLConnection = dmPadrao.dbConexao
    ValueField = 'idProdMedida'
    CarregaDados = True
    CollumNames.Strings = (
      'C'#243'digo'
      'Descri'#231#227'o')
    TypeFind = fFindNormal
    Left = 584
    Top = 417
  end
  object FindServico: TCFind
    SelectClause.Strings = (
      
        'SELECT idProduto, descProduto, codFabricante, stProduto FROM Pro' +
        'duto')
    JoinClause.Strings = (
      'WHERE stProduto = '#39'ATIVO'#39' AND idProdCategoria = 3')
    OrderByClause.Strings = (
      'ORDER BY descProduto')
    FindField = 'descProduto'
    SQLConnection = dmPadrao.dbConexao
    ValueField = 'idProduto'
    CarregaDados = True
    CollumNames.Strings = (
      'C'#243'digo'
      'Descri'#231#227'o'
      'C'#243'd. Fabricante'
      'Status')
    TypeFind = fFindNormal
    Left = 664
    Top = 417
  end
  object FindTributacao: TCFind
    SelectClause.Strings = (
      'SELECT idStTributaria, descStTributaria FROM StTributaria')
    OrderByClause.Strings = (
      'ORDER BY descStTributaria')
    FindField = 'descStTributaria'
    SQLConnection = dmPadrao.dbConexao
    ValueField = 'idStTributaria'
    CarregaDados = True
    CollumNames.Strings = (
      'C'#243'digo'
      'Descri'#231#227'o')
    TypeFind = fFindNormal
    Left = 728
    Top = 417
  end
  object FindTrpTpDocTransporte: TCFind
    SelectClause.Strings = (
      'SELECT  tpDoc, descTpDocTransporte FROM TrpTpDocTransporte')
    OrderByClause.Strings = (
      'ORDER BY descTpDocTransporte')
    FindField = 'descTpDocTransporte'
    SQLConnection = dmPadrao.dbConexao
    ValueField = 'tpDoc'
    CarregaDados = True
    CollumNames.Strings = (
      'Tipo'
      'Descri'#231#227'o')
    TypeFind = fFindNormal
    Left = 18
    Top = 416
  end
  object FindGerencialR: TCFind
    SelectClause.Strings = (
      
        'SELECT DISTINCT idGerencial, classificacao, descGerencial FROM v' +
        'Gerencial')
    JoinClause.Strings = (
      
        'WHERE StGerencial = '#39'ATIVO'#39' AND tpGerencial = '#39'ENTRADAS'#39' AND idE' +
        'mpresa = [DBEidEmpresa]')
    OrderByClause.Strings = (
      'ORDER BY descGerencial')
    FindField = 'descGerencial'
    SQLConnection = dmPadrao.dbConexao
    ValueField = 'idGerencial'
    CarregaDados = True
    CollumNames.Strings = (
      'C'#243'digo'
      'Classifica'#231#227'o'
      'Descri'#231#227'o')
    TypeFind = fFindNormal
    Left = 808
    Top = 128
  end
  object FindTrpRespSeguro: TCFind
    SelectClause.Strings = (
      'SELECT  respSeg, descRespSeguro FROM TrpRespSeguro')
    OrderByClause.Strings = (
      'ORDER BY descRespSeguro')
    FindField = 'descRespSeguro'
    SQLConnection = dmPadrao.dbConexao
    ValueField = 'respSeg'
    CarregaDados = True
    CollumNames.Strings = (
      'Resp'
      'Descri'#231#227'o')
    TypeFind = fFindNormal
    Left = 810
    Top = 184
  end
  object FindCSTPisCofins: TCFind
    SelectClause.Strings = (
      'SELECT idCST, descCST FROM CSTPisCofins')
    OrderByClause.Strings = (
      'ORDER BY descCST')
    FindField = 'descCST'
    SQLConnection = dmPadrao.dbConexao
    ValueField = 'idCST'
    CarregaDados = True
    CollumNames.Strings = (
      'C'#243'digo'
      'Descri'#231#227'o')
    TypeFind = fFindNormal
    Left = 808
    Top = 417
  end
  object FindNaturezaNf: TCFind
    SelectClause.Strings = (
      'SELECT idNatureza, descNatureza, idCfop, descCfop FROM vNatureza')
    JoinClause.Strings = (
      'WHERE tpNatureza = '#39'SAIDA'#39' AND frete = '#39'N'#39)
    OrderByClause.Strings = (
      'ORDER BY descNatureza')
    FindField = 'descNatureza'
    SQLConnection = dmPadrao.dbConexao
    ValueField = 'idNatureza'
    CarregaDados = True
    CollumNames.Strings = (
      'C'#243'digo'
      'Natureza'
      'Cfop'
      'Descri'#231#227'o do Cfop')
    TypeFind = fFindNormal
    Left = 824
    Top = 248
  end
  object FindCadastroCpf: TCFind
    SelectClause.Strings = (
      
        'SELECT  idCnpjCpf, descCadFornecedor, descAbreviada FROM vCadFor' +
        'necedorContabil')
    JoinClause.Strings = (
      'WHERE stCadGeral = '#39'ATIVO'#39)
    OrderByClause.Strings = (
      'ORDER BY descCadFornecedor')
    FindField = 'descCadFornecedor'
    SQLConnection = dmPadrao.dbConexao
    ValueField = 'idCnpjCpf'
    CarregaDados = True
    CollumNames.Strings = (
      'CNPJ/CPF'
      'Descri'#231#227'o'
      'Fantasia')
    TypeFind = fFindNormal
    Left = 40
    Top = 472
  end
  object FindDocSerieNf: TCFind
    SelectClause.Strings = (
      'SELECT idDocSerie, descDocSerie FROM DocSerie')
    JoinClause.Strings = (
      'WHERE idTipoDocSerie = 3')
    OrderByClause.Strings = (
      'ORDER BY descDocSerie')
    FindField = 'descDocSerie'
    SQLConnection = dmPadrao.dbConexao
    ValueField = 'idDocSerie'
    CarregaDados = True
    CollumNames.Strings = (
      'S'#233'rie'
      'Descri'#231#227'o')
    TypeFind = fFindNormal
    Left = 128
    Top = 472
  end
  object FindDesconto: TCFind
    SelectClause.Strings = (
      'SELECT idDesconto, descDesconto FROM Desconto')
    JoinClause.Strings = (
      'WHERE stDesconto = '#39'ATIVO'#39)
    OrderByClause.Strings = (
      'ORDER BY descDesconto')
    FindField = 'descDesconto'
    SQLConnection = dmPadrao.dbConexao
    ValueField = 'idDesconto'
    CarregaDados = True
    CollumNames.Strings = (
      'C'#243'digo'
      'Descri'#231#227'o')
    TypeFind = fFindNormal
    Left = 213
    Top = 472
  end
  object FindProdOrigem: TCFind
    SelectClause.Strings = (
      'SELECT idProdOrigem, descProdOrigem FROM ProdOrigem')
    OrderByClause.Strings = (
      'ORDER BY descProdOrigem')
    FindField = 'descProdOrigem'
    SQLConnection = dmPadrao.dbConexao
    ValueField = 'idProdOrigem'
    CarregaDados = True
    CollumNames.Strings = (
      'C'#243'digo'
      'Descri'#231#227'o')
    TypeFind = fFindNormal
    Left = 285
    Top = 472
  end
  object FindContaCad: TCFind
    SelectClause.Strings = (
      
        'SELECT  idConta, idBanco, idAgencia, idContaCorrente, descConta ' +
        'FROM CadGeralConta')
    JoinClause.Strings = (
      'WHERE idCadGeral = [DBEidFornecedor]')
    OrderByClause.Strings = (
      'ORDER BY descConta')
    FindField = 'descConta'
    SQLConnection = dmPadrao.dbConexao
    ValueField = 'idConta'
    CarregaDados = True
    CollumNames.Strings = (
      'C'#243'digo'
      'Banco'
      'Ag'#234'ncia'
      'Conta'
      'Descri'#231#227'o')
    TypeFind = fFindNormal
    Left = 368
    Top = 472
  end
  object FindModBC: TCFind
    SelectClause.Strings = (
      'SELECT idModBC, descModBC FROM ModBC')
    OrderByClause.Strings = (
      'ORDER BY descModBC')
    FindField = 'descModBC'
    SQLConnection = dmPadrao.dbConexao
    ValueField = 'idModBC'
    CarregaDados = True
    CollumNames.Strings = (
      'C'#243'digo'
      'Descri'#231#227'o')
    TypeFind = fFindNormal
    Left = 456
    Top = 472
  end
  object FindTrangenia: TCFind
    SelectClause.Strings = (
      'SELECT idTrangenia, descTrangenia FROM Trangenia')
    JoinClause.Strings = (
      'WHERE idProduto = [DBEidProduto]')
    OrderByClause.Strings = (
      'ORDER BY descTrangenia')
    FindField = 'descTrangenia'
    SQLConnection = dmPadrao.dbConexao
    ValueField = 'idTrangenia'
    CarregaDados = True
    CollumNames.Strings = (
      'C'#243'digo'
      'Descri'#231#227'o')
    TypeFind = fFindNormal
    Left = 528
    Top = 472
  end
  object FindImpostoOutro: TCFind
    SelectClause.Strings = (
      
        'SELECT idImpostoOutro, descImpostoOutro, dtInicio, stImpostoOutr' +
        'o FROM ImpostoOutro')
    OrderByClause.Strings = (
      'ORDER BY descImpostoOutro')
    FindField = 'descImpostoOutro'
    SQLConnection = dmPadrao.dbConexao
    ValueField = 'idImpostoOutro'
    CarregaDados = True
    CollumNames.Strings = (
      'C'#243'digo'
      'Descri'#231#227'o'
      'Data Inicio'
      'Status')
    TypeFind = fFindNormal
    Left = 640
    Top = 473
  end
  object FindClienteCpf: TCFind
    SelectClause.Strings = (
      'SELECT  idCnpjCpf, descCadCliente FROM vCadClienteContabil')
    OrderByClause.Strings = (
      'ORDER BY descCadCliente')
    FindField = 'descCadCliente'
    SQLConnection = dmPadrao.dbConexao
    ValueField = 'idCnpjCpf'
    CarregaDados = True
    CollumNames.Strings = (
      'CPF'
      'Descri'#231#227'o')
    TypeFind = fFindNormal
    Left = 736
    Top = 472
  end
  object FindItemFrete: TCFind
    SelectClause.Strings = (
      'SELECT idItemFrete, descItemFrete, stItemFrete FROM ItemFrete')
    JoinClause.Strings = (
      'WHERE stItemFrete = '#39'ATIVO'#39)
    OrderByClause.Strings = (
      'ORDER BY descItemFrete')
    FindField = 'descItemFrete'
    SQLConnection = dmPadrao.dbConexao
    ValueField = 'idItemFrete'
    CarregaDados = True
    CollumNames.Strings = (
      'C'#243'digo'
      'Descri'#231#227'o'
      'Status')
    TypeFind = fFindNormal
    Left = 816
    Top = 473
  end
  object FindDREFinanceiro: TCFind
    SelectClause.Strings = (
      'SELECT idDREFinanceiro, descDREFinanceiro FROM DREFinanceiro')
    JoinClause.Strings = (
      'WHERE stDREFinanceiro = '#39'ATIVO'#39)
    OrderByClause.Strings = (
      'ORDER BY descDREFinanceiro')
    FindField = 'descDREFinanceiro'
    SQLConnection = dmPadrao.dbConexao
    ValueField = 'idDREFinanceiro'
    CarregaDados = True
    CollumNames.Strings = (
      'C'#243'digo'
      'Descri'#231#227'o')
    TypeFind = fFindNormal
    Left = 40
    Top = 529
  end
  object FindDREGrupo: TCFind
    SelectClause.Strings = (
      
        'SELECT idDREFinanceiroGrupo, descDREFinanceiroGrupo FROM DREFina' +
        'nceiroGrupo')
    JoinClause.Strings = (
      'WHERE idDREFinanceiro = [DBEidDREFinanceiro]')
    OrderByClause.Strings = (
      'ORDER BY descDREFinanceiro')
    FindField = 'descDREFinanceiroGrupo'
    SQLConnection = dmPadrao.dbConexao
    ValueField = 'idDREFinanceiroGrupo'
    CarregaDados = True
    CollumNames.Strings = (
      'C'#243'digo'
      'Descri'#231#227'o')
    TypeFind = fFindNormal
    Left = 144
    Top = 529
  end
  object FindCfopE: TCFind
    SelectClause.Strings = (
      'SELECT idCfop, descCfop FROM Cfop')
    JoinClause.Strings = (
      'WHERE idCfop > 1000 AND idCfop < 4000')
    OrderByClause.Strings = (
      'ORDER BY descCfop')
    FindField = 'descCfop'
    SQLConnection = dmPadrao.dbConexao
    ValueField = 'idCfop'
    CarregaDados = True
    CollumNames.Strings = (
      'Cfop'
      'Descri'#231#227'o')
    TypeFind = fFindNormal
    Left = 224
    Top = 536
  end
  object FindMovFinanceiraBco: TCFind
    SelectClause.Strings = (
      'SELECT  idMovFinanceira, descMovFinanceira FROM MovFinanceira')
    JoinClause.Strings = (
      
        'WHERE StMovFinanceira = '#39'ATIVO'#39' AND idMovOrigem = 4 AND idTpMovF' +
        'inanceira IN (7, 8, 15)')
    OrderByClause.Strings = (
      'ORDER BY descMovFinanceira')
    FindField = 'descMovFinanceira'
    SQLConnection = dmPadrao.dbConexao
    ValueField = 'idMovFinanceira'
    CarregaDados = True
    CollumNames.Strings = (
      'C'#243'digo'
      'Descri'#231#227'o')
    TypeFind = fFindNormal
    Left = 296
    Top = 536
  end
  object FindNaturezaE: TCFind
    SelectClause.Strings = (
      'SELECT idNatureza, descNatureza, idCfop, descCfop FROM vNatureza')
    JoinClause.Strings = (
      'WHERE tpNatureza = '#39'ENTRADA'#39' AND frete = '#39'N'#39)
    OrderByClause.Strings = (
      'ORDER BY descNatureza')
    FindField = 'descNatureza'
    SQLConnection = dmPadrao.dbConexao
    ValueField = 'idNatureza'
    CarregaDados = True
    CollumNames.Strings = (
      'C'#243'digo'
      'Natureza'
      'Cfop'
      'Descri'#231#227'o do Cfop')
    TypeFind = fFindNormal
    Left = 824
    Top = 304
  end
  object FindSerTpContrato: TCFind
    SelectClause.Strings = (
      'SELECT  idSerTpContrato, descSerTpContrato FROM SerTpContrato')
    OrderByClause.Strings = (
      'ORDER BY descSerTpContrato')
    FindField = 'descSerTpContrato'
    SQLConnection = dmPadrao.dbConexao
    ValueField = 'idSerTpContrato'
    CarregaDados = True
    CollumNames.Strings = (
      'C'#243'digo'
      'Descri'#231#227'o')
    TypeFind = fFindNormal
    Left = 40
    Top = 616
  end
  object FindMovFinanceiraCAP: TCFind
    SelectClause.Strings = (
      'SELECT  idMovFinanceira, descMovFinanceira FROM MovFinanceira')
    JoinClause.Strings = (
      
        'WHERE StMovFinanceira = '#39'ATIVO'#39' AND idMovOrigem = 2 AND idTpMovF' +
        'inanceira = 1')
    OrderByClause.Strings = (
      'ORDER BY descMovFinanceira')
    FindField = 'descIndice'
    SQLConnection = dmPadrao.dbConexao
    ValueField = 'idMovFinanceira'
    CarregaDados = True
    CollumNames.Strings = (
      'C'#243'digo'
      'Descri'#231#227'o')
    TypeFind = fFindNormal
    Left = 416
    Top = 536
  end
  object FindContHistorico: TCFind
    SelectClause.Strings = (
      
        'SELECT idContHistorico, descContHistorico, stContHistorico FROM ' +
        'ContHistorico')
    JoinClause.Strings = (
      'WHERE stContHistorico = '#39'ATIVO'#39)
    OrderByClause.Strings = (
      'ORDER BY descContHistorico')
    FindField = 'descContHistorico'
    SQLConnection = dmPadrao.dbConexao
    ValueField = 'idContHistorico'
    CarregaDados = True
    CollumNames.Strings = (
      'C'#243'digo'
      'Descri'#231#227'o'
      'Status')
    TypeFind = fFindNormal
    Left = 136
    Top = 619
  end
end
