object DMESTOQUE: TDMESTOQUE
  OldCreateOrder = False
  Left = 664
  Height = 404
  Width = 776
  object UPGrupo: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  COD_GRUPOPROD,'
      '  DESCRICAO,'
      '  COD_INTERNO,'
      '  TIPO'
      'from GRUPOPROD '
      'where'
      '  COD_GRUPOPROD = :COD_GRUPOPROD')
    ModifySQL.Strings = (
      'update GRUPOPROD'
      'set'
      '  COD_GRUPOPROD = :COD_GRUPOPROD,'
      '  DESCRICAO = :DESCRICAO,'
      '  COD_INTERNO = :COD_INTERNO,'
      '  TIPO = :TIPO'
      'where'
      '  COD_GRUPOPROD = :OLD_COD_GRUPOPROD')
    InsertSQL.Strings = (
      'insert into GRUPOPROD'
      '  (COD_GRUPOPROD, DESCRICAO, COD_INTERNO, TIPO)'
      'values'
      '  (:COD_GRUPOPROD, :DESCRICAO, :COD_INTERNO, :TIPO)')
    DeleteSQL.Strings = (
      'delete from GRUPOPROD'
      'where'
      '  COD_GRUPOPROD = :OLD_COD_GRUPOPROD')
    Left = 123
    Top = 94
  end
  object TGrupo: TIBQuery
    Database = DBEstoque
    Transaction = TransacEstoque
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from GRUPOPROD')
    UpdateObject = UPGrupo
    GeneratorField.Field = 'COD_GRUPOPROD'
    Left = 123
    Top = 51
    object TGrupoCOD_GRUPOPROD: TIntegerField
      FieldName = 'COD_GRUPOPROD'
      Required = True
    end
    object TGrupoDESCRICAO: TIBStringField
      FieldName = 'DESCRICAO'
      Size = 60
    end
    object TGrupoCOD_INTERNO: TIBStringField
      FieldName = 'COD_INTERNO'
      Size = 5
    end
    object TGrupoTIPO: TIBStringField
      FieldName = 'TIPO'
      Size = 1
    end
  end
  object DSGrupo: TDataSource
    DataSet = TGrupo
    Left = 123
    Top = 137
  end
  object TSubgru: TIBQuery
    Database = DBEstoque
    Transaction = TransacEstoque
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from SUBGRUPOPROD')
    UpdateObject = UPSubgru
    GeneratorField.Field = 'COD_SUBGRUPOPROD'
    Left = 176
    Top = 51
    object TSubgruCOD_SUBGRUPOPROD: TIntegerField
      FieldName = 'COD_SUBGRUPOPROD'
      Required = True
    end
    object TSubgruDESCRICAO: TIBStringField
      FieldName = 'DESCRICAO'
      Size = 60
    end
    object TSubgruCOD_INTERNO: TIBStringField
      FieldName = 'COD_INTERNO'
      Size = 5
    end
    object TSubgruTIPO: TIBStringField
      FieldName = 'TIPO'
      Size = 1
    end
  end
  object UPSubgru: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  COD_SUBGRUPOPROD,'
      '  DESCRICAO,'
      '  COD_INTERNO,'
      '  TIPO'
      'from SUBGRUPOPROD '
      'where'
      '  COD_SUBGRUPOPROD = :COD_SUBGRUPOPROD')
    ModifySQL.Strings = (
      'update SUBGRUPOPROD'
      'set'
      '  COD_SUBGRUPOPROD = :COD_SUBGRUPOPROD,'
      '  DESCRICAO = :DESCRICAO,'
      '  COD_INTERNO = :COD_INTERNO,'
      '  TIPO = :TIPO'
      'where'
      '  COD_SUBGRUPOPROD = :OLD_COD_SUBGRUPOPROD')
    InsertSQL.Strings = (
      'insert into SUBGRUPOPROD'
      '  (COD_SUBGRUPOPROD, DESCRICAO, COD_INTERNO, TIPO)'
      'values'
      '  (:COD_SUBGRUPOPROD, :DESCRICAO, :COD_INTERNO, :TIPO)')
    DeleteSQL.Strings = (
      'delete from SUBGRUPOPROD'
      'where'
      '  COD_SUBGRUPOPROD = :OLD_COD_SUBGRUPOPROD')
    Left = 176
    Top = 94
  end
  object DSSubgru: TDataSource
    DataSet = TSubgru
    Left = 176
    Top = 137
  end
  object TUnidade: TIBQuery
    Database = DBEstoque
    Transaction = TransacEstoque
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from UNIDADE')
    UpdateObject = UPUnidade
    GeneratorField.Field = 'COD_UNIDADE'
    Left = 233
    Top = 50
    object TUnidadeCOD_UNIDADE: TIntegerField
      FieldName = 'COD_UNIDADE'
      Required = True
    end
    object TUnidadeSIGLA_UNID: TIBStringField
      FieldName = 'SIGLA_UNID'
      Size = 3
    end
    object TUnidadeDESC_UNID: TIBStringField
      FieldName = 'DESC_UNID'
      Size = 25
    end
    object TUnidadeARREDONDAR: TIBStringField
      FieldName = 'ARREDONDAR'
      Size = 1
    end
  end
  object UPUnidade: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  COD_UNIDADE,'
      '  DESC_UNID,'
      '  SIGLA_UNID,'
      '  ARREDONDAR'
      'from UNIDADE '
      'where'
      '  COD_UNIDADE = :COD_UNIDADE')
    ModifySQL.Strings = (
      'update UNIDADE'
      'set'
      '  COD_UNIDADE = :COD_UNIDADE,'
      '  DESC_UNID = :DESC_UNID,'
      '  SIGLA_UNID = :SIGLA_UNID,'
      '  ARREDONDAR = :ARREDONDAR'
      'where'
      '  COD_UNIDADE = :OLD_COD_UNIDADE')
    InsertSQL.Strings = (
      'insert into UNIDADE'
      '  (COD_UNIDADE, DESC_UNID, SIGLA_UNID, ARREDONDAR)'
      'values'
      '  (:COD_UNIDADE, :DESC_UNID, :SIGLA_UNID, :ARREDONDAR)')
    DeleteSQL.Strings = (
      'delete from UNIDADE'
      'where'
      '  COD_UNIDADE = :OLD_COD_UNIDADE')
    Left = 233
    Top = 93
  end
  object DSUnidade: TDataSource
    DataSet = TUnidade
    Left = 233
    Top = 137
  end
  object UPProduto: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  COD_PRODUTO,'
      '  COD_INTERNO,'
      '  DESCRICAO,'
      '  APLICACAO,'
      '  COD_SUBGRUPOPROD,'
      '  COD_GRUPOPROD,'
      '  COD_CST,'
      '  COD_LOJA,'
      '  VENDVISTA,'
      '  VENDPRAZO,'
      '  CUSTOVENDA,'
      '  COMPVISTA,'
      '  COMPPRAZO,'
      '  QTDCOMP,'
      '  QTDVEND,'
      '  ATIVO'
      'from PRODUTO '
      'where'
      '  COD_PRODUTO = :COD_PRODUTO')
    ModifySQL.Strings = (
      'update PRODUTO'
      'set'
      '  COD_PRODUTO = :COD_PRODUTO,'
      '  COD_INTERNO = :COD_INTERNO,'
      '  DESCRICAO = :DESCRICAO,'
      '  APLICACAO = :APLICACAO,'
      '  COD_SUBGRUPOPROD = :COD_SUBGRUPOPROD,'
      '  COD_GRUPOPROD = :COD_GRUPOPROD,'
      '  COD_CST = :COD_CST,'
      '  COD_LOJA = :COD_LOJA,'
      '  VENDVISTA = :VENDVISTA,'
      '  VENDPRAZO = :VENDPRAZO,'
      '  CUSTOVENDA = :CUSTOVENDA,'
      '  COMPVISTA = :COMPVISTA,'
      '  COMPPRAZO = :COMPPRAZO,'
      '  QTDCOMP = :QTDCOMP,'
      '  QTDVEND = :QTDVEND,'
      '  ATIVO = :ATIVO'
      'where'
      '  COD_PRODUTO = :OLD_COD_PRODUTO')
    InsertSQL.Strings = (
      'insert into PRODUTO'
      
        '  (COD_PRODUTO, COD_INTERNO, DESCRICAO, APLICACAO, COD_SUBGRUPOP' +
        'ROD, COD_GRUPOPROD, '
      
        '   COD_CST, COD_LOJA, VENDVISTA, VENDPRAZO, CUSTOVENDA, COMPVIST' +
        'A, COMPPRAZO, '
      '   QTDCOMP, QTDVEND, ATIVO)'
      'values'
      
        '  (:COD_PRODUTO, :COD_INTERNO, :DESCRICAO, :APLICACAO, :COD_SUBG' +
        'RUPOPROD, '
      
        '   :COD_GRUPOPROD, :COD_CST, :COD_LOJA, :VENDVISTA, :VENDPRAZO, ' +
        ':CUSTOVENDA, '
      '   :COMPVISTA, :COMPPRAZO, :QTDCOMP, :QTDVEND, :ATIVO)')
    DeleteSQL.Strings = (
      'delete from PRODUTO'
      'where'
      '  COD_PRODUTO = :OLD_COD_PRODUTO')
    Left = 13
    Top = 227
  end
  object DSProduto: TDataSource
    DataSet = TProduto
    Left = 13
    Top = 271
  end
  object TCFOP: TIBQuery
    Database = DBEstoque
    Transaction = TransacEstoque
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'Select  *from CFOP')
    UpdateObject = UPCFOP
    GeneratorField.Field = 'COD_CFOP'
    Left = 286
    Top = 50
    object TCFOPCOD_CFOP: TIntegerField
      FieldName = 'COD_CFOP'
      Required = True
    end
    object TCFOPDESCRICAO: TIBStringField
      FieldName = 'DESCRICAO'
      Size = 60
    end
    object TCFOPCFOP: TIBStringField
      FieldName = 'CFOP'
      Size = 4
    end
    object TCFOPLOCAL: TIBStringField
      FieldName = 'LOCAL'
      Size = 25
    end
    object TCFOPTIPOCFOP: TIBStringField
      FieldName = 'TIPOCFOP'
      Size = 10
    end
    object TCFOPCOD_PLNCTAFIL: TIntegerField
      FieldName = 'COD_PLNCTAFIL'
    end
    object TCFOPNCI: TIBStringField
      FieldName = 'NCI'
      Origin = 'CFOP.NCI'
      FixedChar = True
      Size = 1
    end
    object TCFOPTXTCFOP: TIBStringField
      FieldName = 'TXTCFOP'
      Origin = 'CFOP.TXTCFOP'
      Size = 100
    end
    object TCFOPDEVOLUCAO: TIBStringField
      FieldName = 'DEVOLUCAO'
      Origin = 'CFOP.DEVOLUCAO'
      FixedChar = True
      Size = 1
    end
    object TCFOPNAOGERAST: TIBStringField
      FieldName = 'NAOGERAST'
      Origin = 'CFOP.NAOGERAST'
      FixedChar = True
      Size = 1
    end
    object TCFOPNAOGERAICMSOP: TIBStringField
      FieldName = 'NAOGERAICMSOP'
      Origin = 'CFOP.NAOGERAICMSOP'
      FixedChar = True
      Size = 1
    end
  end
  object UPCFOP: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  COD_CFOP,'
      '  DESCRICAO,'
      '  CFOP,'
      '  LOCAL,'
      '  TIPOCFOP,'
      '  COD_PLNCTAFIL,'
      '  NCI,'
      '  TXTCFOP,'
      '  DEVOLUCAO'
      'from CFOP '
      'where'
      '  COD_CFOP = :COD_CFOP')
    ModifySQL.Strings = (
      'update CFOP'
      'set'
      '  COD_CFOP = :COD_CFOP,'
      '  DESCRICAO = :DESCRICAO,'
      '  CFOP = :CFOP,'
      '  LOCAL = :LOCAL,'
      '  TIPOCFOP = :TIPOCFOP,'
      '  COD_PLNCTAFIL = :COD_PLNCTAFIL,'
      '  NCI = :NCI,'
      '  TXTCFOP = :TXTCFOP,'
      '  DEVOLUCAO = :DEVOLUCAO'
      'where'
      '  COD_CFOP = :OLD_COD_CFOP')
    InsertSQL.Strings = (
      'insert into CFOP'
      
        '  (COD_CFOP, DESCRICAO, CFOP, LOCAL, TIPOCFOP, COD_PLNCTAFIL, NC' +
        'I, TXTCFOP, '
      '   DEVOLUCAO)'
      'values'
      
        '  (:COD_CFOP, :DESCRICAO, :CFOP, :LOCAL, :TIPOCFOP, :COD_PLNCTAF' +
        'IL, :NCI, '
      '   :TXTCFOP, :DEVOLUCAO)')
    DeleteSQL.Strings = (
      'delete from CFOP'
      'where'
      '  COD_CFOP = :OLD_COD_CFOP')
    Left = 286
    Top = 93
  end
  object DSCFOP: TDataSource
    DataSet = TCFOP
    Left = 286
    Top = 137
  end
  object TSubProd: TIBQuery
    Database = DBEstoque
    Transaction = TransacEstoque
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'SELECT first 1 * FROM SUBPRODUTO')
    UpdateObject = UPSubProd
    GeneratorField.Field = 'COD_SUBPRODUTO'
    Left = 69
    Top = 182
    object TSubProdCOD_SUBPRODUTO: TIntegerField
      FieldName = 'COD_SUBPRODUTO'
      Origin = 'SUBPRODUTO.COD_SUBPRODUTO'
      Required = True
    end
    object TSubProdCODCOMPOSTO: TIBStringField
      FieldName = 'CODCOMPOSTO'
      Origin = 'SUBPRODUTO.CODCOMPOSTO'
    end
    object TSubProdCODPRODFABR: TIBStringField
      FieldName = 'CODPRODFABR'
      Origin = 'SUBPRODUTO.CODPRODFABR'
      Size = 25
    end
    object TSubProdFABRICANTE: TIBStringField
      FieldName = 'FABRICANTE'
      Origin = 'SUBPRODUTO.FABRICANTE'
      FixedChar = True
      Size = 60
    end
    object TSubProdMARCA: TIBStringField
      FieldName = 'MARCA'
      Origin = 'SUBPRODUTO.MARCA'
      Size = 40
    end
    object TSubProdQUANTGARANTIA: TFloatField
      FieldName = 'QUANTGARANTIA'
      Origin = 'SUBPRODUTO.QUANTGARANTIA'
    end
    object TSubProdTIPOGARANTIA: TIBStringField
      FieldName = 'TIPOGARANTIA'
      Origin = 'SUBPRODUTO.TIPOGARANTIA'
      FixedChar = True
      Size = 10
    end
    object TSubProdLOCALESTANTE: TIBStringField
      FieldName = 'LOCALESTANTE'
      Origin = 'SUBPRODUTO.LOCALESTANTE'
      FixedChar = True
      Size = 10
    end
    object TSubProdATIVO: TIBStringField
      FieldName = 'ATIVO'
      Origin = 'SUBPRODUTO.ATIVO'
      FixedChar = True
      Size = 1
    end
    object TSubProdIPIPROD: TFloatField
      FieldName = 'IPIPROD'
      Origin = 'SUBPRODUTO.IPIPROD'
    end
    object TSubProdPESOLIQ: TFloatField
      FieldName = 'PESOLIQ'
      Origin = 'SUBPRODUTO.PESOLIQ'
    end
    object TSubProdPESOBRUTO: TFloatField
      FieldName = 'PESOBRUTO'
      Origin = 'SUBPRODUTO.PESOBRUTO'
    end
    object TSubProdCOD_PRODUTO: TIntegerField
      FieldName = 'COD_PRODUTO'
      Origin = 'SUBPRODUTO.COD_PRODUTO'
    end
    object TSubProdCOD_INTERNO: TIBStringField
      FieldName = 'COD_INTERNO'
      Origin = 'SUBPRODUTO.COD_INTERNO'
      Size = 10
    end
    object TSubProdMOTIVO: TIBStringField
      FieldName = 'MOTIVO'
      Origin = 'SUBPRODUTO.MOTIVO'
      Size = 40
    end
    object TSubProdQTDATC: TIBBCDField
      FieldName = 'QTDATC'
      Origin = 'SUBPRODUTO.QTDATC'
      Precision = 9
      Size = 2
    end
    object TSubProdEMBPROD: TIBBCDField
      FieldName = 'EMBPROD'
      Origin = 'SUBPRODUTO.EMBPROD'
      Precision = 18
      Size = 2
    end
    object TSubProdLOTE: TIBStringField
      FieldName = 'LOTE'
      Origin = 'SUBPRODUTO.LOTE'
      Size = 10
    end
    object TSubProdPENEIRA: TIBStringField
      FieldName = 'PENEIRA'
      Origin = 'SUBPRODUTO.PENEIRA'
      Size = 10
    end
    object TSubProdGERMI: TIBBCDField
      FieldName = 'GERMI'
      Origin = 'SUBPRODUTO.GERMI'
      Precision = 18
      Size = 2
    end
    object TSubProdPUREZA: TIBBCDField
      FieldName = 'PUREZA'
      Origin = 'SUBPRODUTO.PUREZA'
      Precision = 18
      Size = 2
    end
    object TSubProdATESTVAL: TIBStringField
      FieldName = 'ATESTVAL'
      Origin = 'SUBPRODUTO.ATESTVAL'
      Size = 25
    end
    object TSubProdATESTGAR: TIBStringField
      FieldName = 'ATESTGAR'
      Origin = 'SUBPRODUTO.ATESTGAR'
      Size = 10
    end
    object TSubProdSAFRA: TIBStringField
      FieldName = 'SAFRA'
      Origin = 'SUBPRODUTO.SAFRA'
      Size = 10
    end
    object TSubProdCOD_UNIDCOMPRA: TIntegerField
      FieldName = 'COD_UNIDCOMPRA'
      Origin = 'SUBPRODUTO.COD_UNIDCOMPRA'
    end
    object TSubProdCOD_UNIDVENDA: TIntegerField
      FieldName = 'COD_UNIDVENDA'
      Origin = 'SUBPRODUTO.COD_UNIDVENDA'
    end
    object TSubProdCOD_CST: TIntegerField
      FieldName = 'COD_CST'
      Origin = 'SUBPRODUTO.COD_CST'
    end
    object TSubProdDTCAD: TDateField
      FieldName = 'DTCAD'
      Origin = 'SUBPRODUTO.DTCAD'
    end
    object TSubProdCODEAN1: TIBStringField
      FieldName = 'CODEAN1'
      Origin = 'SUBPRODUTO.CODEAN1'
      Size = 15
    end
    object TSubProdCONTRINT: TIBStringField
      FieldName = 'CONTRINT'
      Origin = 'SUBPRODUTO.CONTRINT'
      Size = 15
    end
    object TSubProdCOR: TIBStringField
      FieldName = 'COR'
      Origin = 'SUBPRODUTO.COR'
      Size = 15
    end
    object TSubProdCLASSIFICACAO: TIBStringField
      FieldName = 'CLASSIFICACAO'
      Origin = 'SUBPRODUTO.CLASSIFICACAO'
      Size = 30
    end
    object TSubProdDESCCUPOM: TIBStringField
      FieldName = 'DESCCUPOM'
      Origin = 'SUBPRODUTO.DESCCUPOM'
      Size = 60
    end
    object TSubProdNCM: TIBStringField
      FieldName = 'NCM'
      Origin = 'SUBPRODUTO.NCM'
      Size = 10
    end
    object TSubProdOBSFISCAL: TIBStringField
      FieldName = 'OBSFISCAL'
      Origin = 'SUBPRODUTO.OBSFISCAL'
      Size = 150
    end
    object TSubProdCOMPOSICAO: TIBStringField
      FieldName = 'COMPOSICAO'
      Origin = 'SUBPRODUTO.COMPOSICAO'
      Size = 40
    end
    object TSubProdALTURA: TIBStringField
      FieldName = 'ALTURA'
      Origin = 'SUBPRODUTO.ALTURA'
      Size = 10
    end
    object TSubProdLARGURA: TIBStringField
      FieldName = 'LARGURA'
      Origin = 'SUBPRODUTO.LARGURA'
      Size = 10
    end
    object TSubProdESPECIFICACAO: TIBStringField
      FieldName = 'ESPECIFICACAO'
      Origin = 'SUBPRODUTO.ESPECIFICACAO'
      Size = 100
    end
    object TSubProdMARK: TIBStringField
      FieldName = 'MARK'
      Origin = 'SUBPRODUTO.MARK'
      FixedChar = True
      Size = 1
    end
    object TSubProdBALANCA: TIBStringField
      FieldName = 'BALANCA'
      Origin = 'SUBPRODUTO.BALANCA'
      FixedChar = True
      Size = 1
    end
    object TSubProdANVISA: TIBStringField
      FieldName = 'ANVISA'
      Origin = 'SUBPRODUTO.ANVISA'
      Size = 25
    end
    object TSubProdMINSAUDE: TIBStringField
      FieldName = 'MINSAUDE'
      Origin = 'SUBPRODUTO.MINSAUDE'
      Size = 25
    end
    object TSubProdDENSIDADE: TSmallintField
      FieldName = 'DENSIDADE'
      Origin = 'SUBPRODUTO.DENSIDADE'
    end
    object TSubProdUSOCONSUMO: TIBStringField
      FieldName = 'USOCONSUMO'
      Origin = 'SUBPRODUTO.USOCONSUMO'
      FixedChar = True
      Size = 1
    end
    object TSubProdGERARPISCOFINS: TIBStringField
      FieldName = 'GERARPISCOFINS'
      Origin = 'SUBPRODUTO.GERARPISCOFINS'
      FixedChar = True
      Size = 1
    end
    object TSubProdCOMPLEMENTOFISCAL: TIBStringField
      FieldName = 'COMPLEMENTOFISCAL'
      Origin = 'SUBPRODUTO.COMPLEMENTOFISCAL'
      Size = 500
    end
    object TSubProdCODBARRA: TIBStringField
      FieldName = 'CODBARRA'
      Origin = 'SUBPRODUTO.CODBARRA'
      Size = 30
    end
    object TSubProdCTRL_DESGASTE: TIBStringField
      FieldName = 'CTRL_DESGASTE'
      FixedChar = True
      Size = 1
    end
    object TSubProdCTRL_HORA: TIBStringField
      FieldName = 'CTRL_HORA'
      Origin = 'SUBPRODUTO.CTRL_HORA'
      FixedChar = True
      Size = 1
    end
    object TSubProdCOD_CFOPDENTROESTADO: TIntegerField
      FieldName = 'COD_CFOPDENTROESTADO'
      Origin = 'SUBPRODUTO.COD_CFOPDENTROESTADO'
    end
    object TSubProdCOD_CFOPFORAESTADO: TIntegerField
      FieldName = 'COD_CFOPFORAESTADO'
      Origin = 'SUBPRODUTO.COD_CFOPFORAESTADO'
    end
    object TSubProdANP: TIBStringField
      FieldName = 'ANP'
      Origin = 'SUBPRODUTO.ANP'
      Size = 10
    end
    object TSubProdCOMPONENTE: TIBStringField
      FieldName = 'COMPONENTE'
      Origin = 'SUBPRODUTO.COMPONENTE'
      FixedChar = True
      Size = 1
    end
    object TSubProdDESCRICAO: TIBStringField
      FieldName = 'DESCRICAO'
      Origin = 'SUBPRODUTO.DESCRICAO'
      Size = 120
    end
    object TSubProdEST_PERMANENTE: TIBStringField
      FieldName = 'EST_PERMANENTE'
      Origin = 'SUBPRODUTO.EST_PERMANENTE'
      FixedChar = True
      Size = 1
    end
    object TSubProdDESCRICAO_ANP: TIBStringField
      FieldName = 'DESCRICAO_ANP'
      Origin = 'SUBPRODUTO.DESCRICAO_ANP'
      Size = 100
    end
    object TSubProdCODIGOBENEFICIOFISCAL: TIBStringField
      FieldName = 'CODIGOBENEFICIOFISCAL'
      Origin = 'SUBPRODUTO.CODIGOBENEFICIOFISCAL'
      Size = 10
    end
    object TSubProdRETEM_PIS_COFINS: TIBStringField
      FieldName = 'RETEM_PIS_COFINS'
      Origin = 'SUBPRODUTO.RETEM_PIS_COFINS'
      FixedChar = True
      Size = 1
    end
  end
  object UPSubProd: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  COD_SUBPRODUTO,'
      '  CODCOMPOSTO,'
      '  DESCRICAO,'
      '  CODBARRA,'
      '  CODPRODFABR,'
      '  FABRICANTE,'
      '  MARCA,'
      '  QUANTGARANTIA,'
      '  TIPOGARANTIA,'
      '  LOCALESTANTE,'
      '  ATIVO,'
      '  IPIPROD,'
      '  PESOLIQ,'
      '  PESOBRUTO,'
      '  COD_PRODUTO,'
      '  COD_INTERNO,'
      '  MOTIVO,'
      '  QTDATC,'
      '  EMBPROD,'
      '  LOTE,'
      '  PENEIRA,'
      '  GERMI,'
      '  PUREZA,'
      '  ATESTVAL,'
      '  ATESTGAR,'
      '  SAFRA,'
      '  COD_UNIDCOMPRA,'
      '  COD_UNIDVENDA,'
      '  COD_CST,'
      '  DTCAD,'
      '  CODEAN1,'
      '  CONTRINT,'
      '  COR,'
      '  CLASSIFICACAO,'
      '  DESCCUPOM,'
      '  NCM,'
      '  OBSFISCAL,'
      '  COMPOSICAO,'
      '  ALTURA,'
      '  LARGURA,'
      '  ESPECIFICACAO,'
      '  MARK,'
      '  BALANCA,'
      '  ANVISA,'
      '  MINSAUDE,'
      '  DENSIDADE,'
      '  USOCONSUMO,'
      '  GERARPISCOFINS,'
      '  COMPLEMENTOFISCAL,'
      '  CTRL_HORA,'
      '  CTRL_DESGASTE,'
      '  COMPONENTE,'
      '  ANP,'
      '  COD_CFOPDENTROESTADO,'
      '  COD_CFOPFORAESTADO,'
      '  EST_PERMANENTE,'
      '  DESCRICAO_ANP,'
      '  CODIGOBENEFICIOFISCAL,'
      '  RETEM_PIS_COFINS'
      'from SUBPRODUTO '
      'where'
      '  COD_SUBPRODUTO = :COD_SUBPRODUTO')
    ModifySQL.Strings = (
      'update SUBPRODUTO'
      'set'
      '  COD_SUBPRODUTO = :COD_SUBPRODUTO,'
      '  CODCOMPOSTO = :CODCOMPOSTO,'
      '  DESCRICAO = :DESCRICAO,'
      '  CODBARRA = :CODBARRA,'
      '  CODPRODFABR = :CODPRODFABR,'
      '  FABRICANTE = :FABRICANTE,'
      '  MARCA = :MARCA,'
      '  QUANTGARANTIA = :QUANTGARANTIA,'
      '  TIPOGARANTIA = :TIPOGARANTIA,'
      '  LOCALESTANTE = :LOCALESTANTE,'
      '  ATIVO = :ATIVO,'
      '  IPIPROD = :IPIPROD,'
      '  PESOLIQ = :PESOLIQ,'
      '  PESOBRUTO = :PESOBRUTO,'
      '  COD_PRODUTO = :COD_PRODUTO,'
      '  COD_INTERNO = :COD_INTERNO,'
      '  MOTIVO = :MOTIVO,'
      '  QTDATC = :QTDATC,'
      '  EMBPROD = :EMBPROD,'
      '  LOTE = :LOTE,'
      '  PENEIRA = :PENEIRA,'
      '  GERMI = :GERMI,'
      '  PUREZA = :PUREZA,'
      '  ATESTVAL = :ATESTVAL,'
      '  ATESTGAR = :ATESTGAR,'
      '  SAFRA = :SAFRA,'
      '  COD_UNIDCOMPRA = :COD_UNIDCOMPRA,'
      '  COD_UNIDVENDA = :COD_UNIDVENDA,'
      '  COD_CST = :COD_CST,'
      '  DTCAD = :DTCAD,'
      '  CODEAN1 = :CODEAN1,'
      '  CONTRINT = :CONTRINT,'
      '  COR = :COR,'
      '  CLASSIFICACAO = :CLASSIFICACAO,'
      '  DESCCUPOM = :DESCCUPOM,'
      '  NCM = :NCM,'
      '  OBSFISCAL = :OBSFISCAL,'
      '  COMPOSICAO = :COMPOSICAO,'
      '  ALTURA = :ALTURA,'
      '  LARGURA = :LARGURA,'
      '  ESPECIFICACAO = :ESPECIFICACAO,'
      '  MARK = :MARK,'
      '  BALANCA = :BALANCA,'
      '  ANVISA = :ANVISA,'
      '  MINSAUDE = :MINSAUDE,'
      '  DENSIDADE = :DENSIDADE,'
      '  USOCONSUMO = :USOCONSUMO,'
      '  GERARPISCOFINS = :GERARPISCOFINS,'
      '  COMPLEMENTOFISCAL = :COMPLEMENTOFISCAL,'
      '  CTRL_HORA = :CTRL_HORA,'
      '  CTRL_DESGASTE = :CTRL_DESGASTE,'
      '  COMPONENTE = :COMPONENTE,'
      '  ANP = :ANP,'
      '  COD_CFOPDENTROESTADO = :COD_CFOPDENTROESTADO,'
      '  COD_CFOPFORAESTADO = :COD_CFOPFORAESTADO,'
      '  EST_PERMANENTE = :EST_PERMANENTE,'
      '  DESCRICAO_ANP = :DESCRICAO_ANP,'
      '  CODIGOBENEFICIOFISCAL = :CODIGOBENEFICIOFISCAL,'
      '  RETEM_PIS_COFINS = :RETEM_PIS_COFINS'
      'where'
      '  COD_SUBPRODUTO = :OLD_COD_SUBPRODUTO')
    InsertSQL.Strings = (
      'insert into SUBPRODUTO'
      
        '  (COD_SUBPRODUTO, CODCOMPOSTO, DESCRICAO, CODBARRA, CODPRODFABR' +
        ', FABRICANTE, '
      
        '   MARCA, QUANTGARANTIA, TIPOGARANTIA, LOCALESTANTE, ATIVO, IPIP' +
        'ROD, PESOLIQ, '
      
        '   PESOBRUTO, COD_PRODUTO, COD_INTERNO, MOTIVO, QTDATC, EMBPROD,' +
        ' LOTE, '
      
        '   PENEIRA, GERMI, PUREZA, ATESTVAL, ATESTGAR, SAFRA, COD_UNIDCO' +
        'MPRA, COD_UNIDVENDA, '
      
        '   COD_CST, DTCAD, CODEAN1, CONTRINT, COR, CLASSIFICACAO, DESCCU' +
        'POM, NCM, '
      
        '   OBSFISCAL, COMPOSICAO, ALTURA, LARGURA, ESPECIFICACAO, MARK, ' +
        'BALANCA, '
      
        '   ANVISA, MINSAUDE, DENSIDADE, USOCONSUMO, GERARPISCOFINS, COMP' +
        'LEMENTOFISCAL, '
      
        '   CTRL_HORA, CTRL_DESGASTE, COMPONENTE, ANP, COD_CFOPDENTROESTA' +
        'DO, COD_CFOPFORAESTADO, '
      
        '   EST_PERMANENTE, DESCRICAO_ANP, CODIGOBENEFICIOFISCAL, RETEM_P' +
        'IS_COFINS)'
      'values'
      
        '  (:COD_SUBPRODUTO, :CODCOMPOSTO, :DESCRICAO, :CODBARRA, :CODPRO' +
        'DFABR, '
      
        '   :FABRICANTE, :MARCA, :QUANTGARANTIA, :TIPOGARANTIA, :LOCALEST' +
        'ANTE, :ATIVO, '
      
        '   :IPIPROD, :PESOLIQ, :PESOBRUTO, :COD_PRODUTO, :COD_INTERNO, :' +
        'MOTIVO, '
      
        '   :QTDATC, :EMBPROD, :LOTE, :PENEIRA, :GERMI, :PUREZA, :ATESTVA' +
        'L, :ATESTGAR, '
      
        '   :SAFRA, :COD_UNIDCOMPRA, :COD_UNIDVENDA, :COD_CST, :DTCAD, :C' +
        'ODEAN1, '
      
        '   :CONTRINT, :COR, :CLASSIFICACAO, :DESCCUPOM, :NCM, :OBSFISCAL' +
        ', :COMPOSICAO, '
      
        '   :ALTURA, :LARGURA, :ESPECIFICACAO, :MARK, :BALANCA, :ANVISA, ' +
        ':MINSAUDE, '
      
        '   :DENSIDADE, :USOCONSUMO, :GERARPISCOFINS, :COMPLEMENTOFISCAL,' +
        ' :CTRL_HORA, '
      
        '   :CTRL_DESGASTE, :COMPONENTE, :ANP, :COD_CFOPDENTROESTADO, :CO' +
        'D_CFOPFORAESTADO, '
      
        '   :EST_PERMANENTE, :DESCRICAO_ANP, :CODIGOBENEFICIOFISCAL, :RET' +
        'EM_PIS_COFINS)')
    DeleteSQL.Strings = (
      'delete from SUBPRODUTO'
      'where'
      '  COD_SUBPRODUTO = :OLD_COD_SUBPRODUTO')
    Left = 69
    Top = 228
  end
  object DSSubProd: TDataSource
    DataSet = TSubProd
    Left = 69
    Top = 271
  end
  object TCST: TIBQuery
    Database = DBEstoque
    Transaction = TransacEstoque
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from CST')
    UpdateObject = UPCST
    GeneratorField.Field = 'COD_CST'
    Left = 78
    Top = 52
    object TCSTCOD_CST: TIntegerField
      FieldName = 'COD_CST'
      Required = True
    end
    object TCSTDESCRICAO: TIBStringField
      FieldName = 'DESCRICAO'
      Required = True
      Size = 100
    end
    object TCSTCOD_SIT_TRIB: TIBStringField
      FieldName = 'COD_SIT_TRIB'
      Size = 5
    end
    object TCSTINDICEECF: TIBStringField
      FieldName = 'INDICEECF'
      Size = 2
    end
    object TCSTSUBSTITUICAO: TIBStringField
      FieldName = 'SUBSTITUICAO'
      Origin = 'CST.SUBSTITUICAO'
      FixedChar = True
      Size = 1
    end
    object TCSTREDUCAO: TIBStringField
      FieldName = 'REDUCAO'
      Origin = 'CST.REDUCAO'
      FixedChar = True
      Size = 1
    end
    object TCSTVENDA: TIBStringField
      FieldName = 'VENDA'
      Origin = 'CST.VENDA'
      FixedChar = True
      Size = 1
    end
    object TCSTISENTA: TIBStringField
      FieldName = 'ISENTA'
      Origin = 'CST.ISENTA'
      FixedChar = True
      Size = 1
    end
    object TCSTICMSOP: TIBStringField
      FieldName = 'ICMSOP'
      Origin = 'CST.ICMSOP'
      Size = 5
    end
    object TCSTAPROVEITACREDITO: TIBStringField
      FieldName = 'APROVEITACREDITO'
      Origin = 'CST.APROVEITACREDITO'
      FixedChar = True
      Size = 1
    end
    object TCSTDIFERENCIAL_ALIQ: TIBStringField
      FieldName = 'DIFERENCIAL_ALIQ'
      Origin = 'CST.DIFERENCIAL_ALIQ'
      Size = 1
    end
  end
  object UPCST: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  COD_CST,'
      '  DESCRICAO,'
      '  COD_SIT_TRIB,'
      '  INDICEECF,'
      '  SUBSTITUICAO,'
      '  REDUCAO,'
      '  VENDA,'
      '  ISENTA,'
      '  ICMSOP,'
      '  APROVEITACREDITO,'
      '  DIFERENCIAL_ALIQ'
      'from CST '
      'where'
      '  COD_CST = :COD_CST')
    ModifySQL.Strings = (
      'update CST'
      'set'
      '  COD_CST = :COD_CST,'
      '  DESCRICAO = :DESCRICAO,'
      '  COD_SIT_TRIB = :COD_SIT_TRIB,'
      '  INDICEECF = :INDICEECF,'
      '  SUBSTITUICAO = :SUBSTITUICAO,'
      '  REDUCAO = :REDUCAO,'
      '  VENDA = :VENDA,'
      '  ISENTA = :ISENTA,'
      '  ICMSOP = :ICMSOP,'
      '  APROVEITACREDITO = :APROVEITACREDITO,'
      '  DIFERENCIAL_ALIQ = :DIFERENCIAL_ALIQ'
      'where'
      '  COD_CST = :OLD_COD_CST')
    InsertSQL.Strings = (
      'insert into CST'
      '  (COD_CST, DESCRICAO, COD_SIT_TRIB, INDICEECF, SUBSTITUICAO, '
      'REDUCAO, '
      '   VENDA, ISENTA, ICMSOP, APROVEITACREDITO, DIFERENCIAL_ALIQ)'
      'values'
      
        '  (:COD_CST, :DESCRICAO, :COD_SIT_TRIB, :INDICEECF, :SUBSTITUICA' +
        'O, '
      ':REDUCAO, '
      
        '   :VENDA, :ISENTA, :ICMSOP, :APROVEITACREDITO, :DIFERENCIAL_ALI' +
        'Q)')
    DeleteSQL.Strings = (
      'delete from CST'
      'where'
      '  COD_CST = :OLD_COD_CST')
    Left = 78
    Top = 95
  end
  object DSCST: TDataSource
    DataSet = TCST
    Left = 78
    Top = 138
  end
  object TProduto: TIBQuery
    Database = DBEstoque
    Transaction = TransacEstoque
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'SELECT first 1 * FROM PRODUTO')
    UpdateObject = UPProduto
    GeneratorField.Field = 'COD_PRODUTO'
    Left = 13
    Top = 181
    object TProdutoCOD_PRODUTO: TIntegerField
      FieldName = 'COD_PRODUTO'
      Required = True
    end
    object TProdutoCOD_INTERNO: TIBStringField
      FieldName = 'COD_INTERNO'
      Size = 5
    end
    object TProdutoDESCRICAO: TIBStringField
      FieldName = 'DESCRICAO'
      Size = 100
    end
    object TProdutoAPLICACAO: TIBStringField
      FieldName = 'APLICACAO'
      Size = 100
    end
    object TProdutoCOD_SUBGRUPOPROD: TIntegerField
      FieldName = 'COD_SUBGRUPOPROD'
    end
    object TProdutoCOD_GRUPOPROD: TIntegerField
      FieldName = 'COD_GRUPOPROD'
    end
    object TProdutoCOD_CST: TIntegerField
      FieldName = 'COD_CST'
    end
    object TProdutoCOD_LOJA: TIntegerField
      FieldName = 'COD_LOJA'
    end
    object TProdutoVENDVISTA: TIBBCDField
      FieldName = 'VENDVISTA'
      Origin = 'PRODUTO.VENDVISTA'
      Precision = 9
      Size = 2
    end
    object TProdutoVENDPRAZO: TIBBCDField
      FieldName = 'VENDPRAZO'
      Origin = 'PRODUTO.VENDPRAZO'
      Precision = 9
      Size = 2
    end
    object TProdutoCUSTOVENDA: TIBBCDField
      FieldName = 'CUSTOVENDA'
      Origin = 'PRODUTO.CUSTOVENDA'
      Precision = 9
      Size = 2
    end
    object TProdutoCOMPVISTA: TIBBCDField
      FieldName = 'COMPVISTA'
      Origin = 'PRODUTO.COMPVISTA'
      Precision = 9
      Size = 2
    end
    object TProdutoCOMPPRAZO: TIBBCDField
      FieldName = 'COMPPRAZO'
      Origin = 'PRODUTO.COMPPRAZO'
      Precision = 9
      Size = 2
    end
    object TProdutoQTDCOMP: TIBBCDField
      FieldName = 'QTDCOMP'
      Origin = 'PRODUTO.QTDCOMP'
      Precision = 18
      Size = 3
    end
    object TProdutoQTDVEND: TIBBCDField
      FieldName = 'QTDVEND'
      Origin = 'PRODUTO.QTDVEND'
      Precision = 18
      Size = 3
    end
    object TProdutoATIVO: TIBStringField
      FieldName = 'ATIVO'
      Origin = 'PRODUTO.ATIVO'
      FixedChar = True
      Size = 1
    end
  end
  object TEstoque: TIBQuery
    Database = DBEstoque
    Transaction = TransacEstoque
    BufferChunks = 10000
    CachedUpdates = False
    SQL.Strings = (
      'select first 1 * from ESTOQUE')
    UpdateObject = UPEstoque
    GeneratorField.Field = 'COD_ESTOQUE'
    Left = 127
    Top = 182
    object TEstoqueCOD_ESTOQUE: TIntegerField
      FieldName = 'COD_ESTOQUE'
      Origin = 'ESTOQUE.COD_ESTOQUE'
      Required = True
    end
    object TEstoqueCOD_LOJA: TIntegerField
      FieldName = 'COD_LOJA'
      Origin = 'ESTOQUE.COD_LOJA'
    end
    object TEstoqueCOD_SUBPROD: TIntegerField
      FieldName = 'COD_SUBPROD'
      Origin = 'ESTOQUE.COD_SUBPROD'
    end
    object TEstoqueULTCOMPRA: TDateField
      FieldName = 'ULTCOMPRA'
      Origin = 'ESTOQUE.ULTCOMPRA'
    end
    object TEstoqueULTVENDA: TDateField
      FieldName = 'ULTVENDA'
      Origin = 'ESTOQUE.ULTVENDA'
    end
    object TEstoqueESTMAX: TFloatField
      FieldName = 'ESTMAX'
      Origin = 'ESTOQUE.ESTMAX'
    end
    object TEstoqueESTMIN: TFloatField
      FieldName = 'ESTMIN'
      Origin = 'ESTOQUE.ESTMIN'
    end
    object TEstoqueICMS: TFloatField
      FieldName = 'ICMS'
      Origin = 'ESTOQUE.ICMS'
    end
    object TEstoqueFRETE: TFloatField
      FieldName = 'FRETE'
      Origin = 'ESTOQUE.FRETE'
    end
    object TEstoqueESTFISICO: TFloatField
      FieldName = 'ESTFISICO'
      Origin = 'ESTOQUE.ESTFISICO'
    end
    object TEstoqueESTRESERV: TFloatField
      FieldName = 'ESTRESERV'
      Origin = 'ESTOQUE.ESTRESERV'
    end
    object TEstoqueESTPED: TFloatField
      FieldName = 'ESTPED'
      Origin = 'ESTOQUE.ESTPED'
    end
    object TEstoqueESTSALDO: TFloatField
      FieldName = 'ESTSALDO'
      Origin = 'ESTOQUE.ESTSALDO'
    end
    object TEstoqueCVVPROAT: TFloatField
      FieldName = 'CVVPROAT'
      Origin = 'ESTOQUE.CVVPROAT'
    end
    object TEstoqueCVPPROAT: TFloatField
      FieldName = 'CVPPROAT'
      Origin = 'ESTOQUE.CVPPROAT'
    end
    object TEstoqueCVVPROVAR: TFloatField
      FieldName = 'CVVPROVAR'
      Origin = 'ESTOQUE.CVVPROVAR'
    end
    object TEstoqueCVPPROVAR: TFloatField
      FieldName = 'CVPPROVAR'
      Origin = 'ESTOQUE.CVPPROVAR'
    end
    object TEstoqueVENDATAP: TIBBCDField
      FieldName = 'VENDATAP'
      Origin = 'ESTOQUE.VENDATAP'
      Precision = 18
      Size = 2
    end
    object TEstoqueVENDATAV: TIBBCDField
      FieldName = 'VENDATAV'
      Origin = 'ESTOQUE.VENDATAV'
      Precision = 18
      Size = 2
    end
    object TEstoqueVENDVARP: TIBBCDField
      FieldName = 'VENDVARP'
      Origin = 'ESTOQUE.VENDVARP'
      Precision = 18
      Size = 2
    end
    object TEstoqueVENDVARV: TIBBCDField
      FieldName = 'VENDVARV'
      Origin = 'ESTOQUE.VENDVARV'
      Precision = 18
      Size = 2
    end
    object TEstoqueVALUNIT: TIBBCDField
      FieldName = 'VALUNIT'
      Origin = 'ESTOQUE.VALUNIT'
      Precision = 18
      Size = 2
    end
    object TEstoqueVALREP: TIBBCDField
      FieldName = 'VALREP'
      Origin = 'ESTOQUE.VALREP'
      Precision = 18
      Size = 2
    end
    object TEstoqueVALCUSTO: TIBBCDField
      FieldName = 'VALCUSTO'
      Origin = 'ESTOQUE.VALCUSTO'
      Precision = 18
      Size = 2
    end
    object TEstoqueAVVPROAT: TIBBCDField
      FieldName = 'AVVPROAT'
      Origin = 'ESTOQUE.AVVPROAT'
      Precision = 18
      Size = 2
    end
    object TEstoqueAVPPROAT: TIBBCDField
      FieldName = 'AVPPROAT'
      Origin = 'ESTOQUE.AVPPROAT'
      Precision = 18
      Size = 2
    end
    object TEstoqueAVVPROVAR: TIBBCDField
      FieldName = 'AVVPROVAR'
      Origin = 'ESTOQUE.AVVPROVAR'
      Precision = 18
      Size = 2
    end
    object TEstoqueAVPPROVAR: TIBBCDField
      FieldName = 'AVPPROVAR'
      Origin = 'ESTOQUE.AVPPROVAR'
      Precision = 18
      Size = 2
    end
    object TEstoqueLUCRATIVIDADE: TIBBCDField
      FieldName = 'LUCRATIVIDADE'
      Origin = 'ESTOQUE.LUCRATIVIDADE'
      Precision = 18
      Size = 2
    end
    object TEstoqueCOEFDIV: TIBBCDField
      FieldName = 'COEFDIV'
      Origin = 'ESTOQUE.COEFDIV'
      Precision = 18
      Size = 2
    end
    object TEstoqueVALOREST: TIBBCDField
      FieldName = 'VALOREST'
      Origin = 'ESTOQUE.VALOREST'
      Precision = 18
      Size = 2
    end
    object TEstoqueOUTROS: TIBBCDField
      FieldName = 'OUTROS'
      Origin = 'ESTOQUE.OUTROS'
      Precision = 18
      Size = 2
    end
    object TEstoqueQUANT2: TIBBCDField
      FieldName = 'QUANT2'
      Origin = 'ESTOQUE.QUANT2'
      Precision = 18
      Size = 3
    end
    object TEstoqueDTCAD: TDateField
      FieldName = 'DTCAD'
      Origin = 'ESTOQUE.DTCAD'
    end
    object TEstoqueESTINI: TIBBCDField
      FieldName = 'ESTINI'
      Origin = 'ESTOQUE.ESTINI'
      Precision = 18
      Size = 3
    end
    object TEstoqueVALCUSDESP: TIBBCDField
      FieldName = 'VALCUSDESP'
      Origin = 'ESTOQUE.VALCUSDESP'
      Precision = 18
      Size = 2
    end
    object TEstoqueESTANTCONT: TIBBCDField
      FieldName = 'ESTANTCONT'
      Origin = 'ESTOQUE.ESTANTCONT'
      Precision = 18
      Size = 3
    end
    object TEstoqueCONTAGEM: TIBBCDField
      FieldName = 'CONTAGEM'
      Origin = 'ESTOQUE.CONTAGEM'
      Precision = 18
      Size = 3
    end
    object TEstoqueESTSIMULADO: TIBBCDField
      FieldName = 'ESTSIMULADO'
      Origin = 'ESTOQUE.ESTSIMULADO'
      Precision = 18
      Size = 3
    end
    object TEstoqueVLRUNITCOMP: TIBBCDField
      FieldName = 'VLRUNITCOMP'
      Origin = 'ESTOQUE.VLRUNITCOMP'
      Precision = 18
      Size = 2
    end
    object TEstoqueINDICE: TIBBCDField
      FieldName = 'INDICE'
      Origin = 'ESTOQUE.INDICE'
      Precision = 18
      Size = 2
    end
    object TEstoqueBONIFICACAO: TIBBCDField
      FieldName = 'BONIFICACAO'
      Origin = 'ESTOQUE.BONIFICACAO'
      Precision = 18
      Size = 2
    end
    object TEstoqueVLRBONIFIC: TIBBCDField
      FieldName = 'VLRBONIFIC'
      Origin = 'ESTOQUE.VLRBONIFIC'
      Precision = 18
      Size = 2
    end
    object TEstoqueDESCONTO: TIBBCDField
      FieldName = 'DESCONTO'
      Origin = 'ESTOQUE.DESCONTO'
      Precision = 18
      Size = 2
    end
    object TEstoqueCLNC: TIBBCDField
      FieldName = 'CLNC'
      Origin = 'ESTOQUE.CLNC'
      Precision = 18
      Size = 2
    end
    object TEstoqueMOD: TIBBCDField
      FieldName = 'MOD'
      Origin = 'ESTOQUE.MOD'
      Precision = 18
      Size = 2
    end
    object TEstoqueIMPEXP: TIBBCDField
      FieldName = 'IMPEXP'
      Origin = 'ESTOQUE.IMPEXP'
      Precision = 18
      Size = 2
    end
    object TEstoqueIMPREND: TIBBCDField
      FieldName = 'IMPREND'
      Origin = 'ESTOQUE.IMPREND'
      Precision = 18
      Size = 2
    end
    object TEstoqueCONTSOC: TIBBCDField
      FieldName = 'CONTSOC'
      Origin = 'ESTOQUE.CONTSOC'
      Precision = 18
      Size = 2
    end
    object TEstoqueCOFINS: TIBBCDField
      FieldName = 'COFINS'
      Origin = 'ESTOQUE.COFINS'
      Precision = 18
      Size = 2
    end
    object TEstoquePIS: TIBBCDField
      FieldName = 'PIS'
      Origin = 'ESTOQUE.PIS'
      Precision = 18
      Size = 2
    end
    object TEstoqueMARGEMSEG: TIBBCDField
      FieldName = 'MARGEMSEG'
      Origin = 'ESTOQUE.MARGEMSEG'
      Precision = 18
      Size = 2
    end
    object TEstoquePERCMARGSEG: TIBBCDField
      FieldName = 'PERCMARGSEG'
      Origin = 'ESTOQUE.PERCMARGSEG'
      Precision = 18
      Size = 2
    end
    object TEstoqueREDUCBASE: TIBBCDField
      FieldName = 'REDUCBASE'
      Origin = 'ESTOQUE.REDUCBASE'
      Precision = 18
      Size = 2
    end
    object TEstoqueVLRCOMPSD: TIBBCDField
      FieldName = 'VLRCOMPSD'
      Origin = 'ESTOQUE.VLRCOMPSD'
      Precision = 18
      Size = 2
    end
    object TEstoqueACRECIMO: TIBBCDField
      FieldName = 'ACRECIMO'
      Origin = 'ESTOQUE.ACRECIMO'
      Precision = 4
      Size = 2
    end
    object TEstoqueESTCALC: TIBBCDField
      FieldName = 'ESTCALC'
      Origin = 'ESTOQUE.ESTCALC'
      Precision = 18
      Size = 3
    end
    object TEstoqueDATAATU: TDateField
      FieldName = 'DATAATU'
      Origin = 'ESTOQUE.DATAATU'
    end
    object TEstoqueHORAATU: TTimeField
      FieldName = 'HORAATU'
      Origin = 'ESTOQUE.HORAATU'
    end
    object TEstoquePRECOOFERTA: TIBBCDField
      FieldName = 'PRECOOFERTA'
      Origin = 'ESTOQUE.PRECOOFERTA'
      Precision = 18
      Size = 2
    end
    object TEstoqueDATAOFERTA: TDateField
      FieldName = 'DATAOFERTA'
      Origin = 'ESTOQUE.DATAOFERTA'
    end
    object TEstoqueVENCIMENTOOFERTA: TDateField
      FieldName = 'VENCIMENTOOFERTA'
      Origin = 'ESTOQUE.VENCIMENTOOFERTA'
    end
    object TEstoqueCOD_USUARIOALT: TIntegerField
      FieldName = 'COD_USUARIOALT'
      Origin = 'ESTOQUE.COD_USUARIOALT'
    end
    object TEstoqueULTVLR_VNDVVAR: TIBBCDField
      FieldName = 'ULTVLR_VNDVVAR'
      Origin = 'ESTOQUE.ULTVLR_VNDVVAR'
      Precision = 18
      Size = 2
    end
    object TEstoqueULTVLR_VNDPVAR: TIBBCDField
      FieldName = 'ULTVLR_VNDPVAR'
      Origin = 'ESTOQUE.ULTVLR_VNDPVAR'
      Precision = 18
      Size = 2
    end
    object TEstoqueULTVLR_VNDVATAC: TIBBCDField
      FieldName = 'ULTVLR_VNDVATAC'
      Origin = 'ESTOQUE.ULTVLR_VNDVATAC'
      Precision = 18
      Size = 2
    end
    object TEstoqueULTVLR_VPATAC: TIBBCDField
      FieldName = 'ULTVLR_VPATAC'
      Origin = 'ESTOQUE.ULTVLR_VPATAC'
      Precision = 18
      Size = 2
    end
    object TEstoqueMEDIABASEICMST: TIBBCDField
      FieldName = 'MEDIABASEICMST'
      Origin = 'ESTOQUE.MEDIABASEICMST'
      Precision = 18
      Size = 2
    end
    object TEstoqueMEDIAVLRICMST: TIBBCDField
      FieldName = 'MEDIAVLRICMST'
      Origin = 'ESTOQUE.MEDIAVLRICMST'
      Precision = 18
      Size = 2
    end
    object TEstoqueIPI_VND: TIBBCDField
      FieldName = 'IPI_VND'
      Origin = 'ESTOQUE.IPI_VND'
      Precision = 18
      Size = 2
    end
    object TEstoquePMC: TIBBCDField
      FieldName = 'PMC'
      Origin = 'ESTOQUE.PMC'
      Precision = 18
      Size = 2
    end
    object TEstoqueMVA: TIBBCDField
      FieldName = 'MVA'
      Origin = 'ESTOQUE.MVA'
      Precision = 4
      Size = 2
    end
    object TEstoqueGERACOMIS: TIntegerField
      FieldName = 'GERACOMIS'
      Origin = 'ESTOQUE.GERACOMIS'
    end
    object TEstoqueATUALIZAR: TIBStringField
      FieldName = 'ATUALIZAR'
      Origin = 'ESTOQUE.ATUALIZAR'
      FixedChar = True
      Size = 1
    end
    object TEstoqueESTLOJA: TIBBCDField
      FieldName = 'ESTLOJA'
      Origin = 'ESTOQUE.ESTLOJA'
      Precision = 18
      Size = 3
    end
    object TEstoqueEXPORTAR: TIBStringField
      FieldName = 'EXPORTAR'
      Origin = 'ESTOQUE.EXPORTAR'
      FixedChar = True
      Size = 1
    end
    object TEstoqueAVPPROIND: TIBBCDField
      FieldName = 'AVPPROIND'
      Origin = 'ESTOQUE.AVPPROIND'
      Precision = 18
      Size = 2
    end
    object TEstoqueAVVPROIND: TIBBCDField
      FieldName = 'AVVPROIND'
      Origin = 'ESTOQUE.AVVPROIND'
      Precision = 18
      Size = 2
    end
    object TEstoqueVENDINDP: TIBBCDField
      FieldName = 'VENDINDP'
      Origin = 'ESTOQUE.VENDINDP'
      Precision = 18
      Size = 2
    end
    object TEstoqueVENDINDV: TIBBCDField
      FieldName = 'VENDINDV'
      Origin = 'ESTOQUE.VENDINDV'
      Precision = 18
      Size = 2
    end
    object TEstoqueESTOQUE4CASAS: TIBStringField
      FieldName = 'ESTOQUE4CASAS'
      Origin = 'ESTOQUE.ESTOQUE4CASAS'
      Size = 15
    end
    object TEstoqueVALCUSTONFE: TIBBCDField
      FieldName = 'VALCUSTONFE'
      Origin = 'ESTOQUE.VALCUSTONFE'
      Precision = 18
      Size = 2
    end
    object TEstoqueCOMPALIQST: TIBBCDField
      FieldName = 'COMPALIQST'
      Origin = 'ESTOQUE.COMPALIQST'
      Precision = 9
      Size = 4
    end
    object TEstoqueCOMPVLRST: TIBBCDField
      FieldName = 'COMPVLRST'
      Origin = 'ESTOQUE.COMPVLRST'
      Precision = 18
      Size = 2
    end
    object TEstoqueCOMPVLRBCST: TIBBCDField
      FieldName = 'COMPVLRBCST'
      Origin = 'ESTOQUE.COMPVLRBCST'
      Precision = 18
      Size = 2
    end
    object TEstoqueCOMPVLRICMS: TIBBCDField
      FieldName = 'COMPVLRICMS'
      Origin = 'ESTOQUE.COMPVLRICMS'
      Precision = 18
      Size = 2
    end
  end
  object UPEstoque: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  COD_ESTOQUE,'
      '  COD_LOJA,'
      '  COD_SUBPROD,'
      '  ULTCOMPRA,'
      '  ULTVENDA,'
      '  ESTMAX,'
      '  ESTMIN,'
      '  ICMS,'
      '  FRETE,'
      '  CVVPROAT,'
      '  CVPPROAT,'
      '  CVVPROVAR,'
      '  CVPPROVAR,'
      '  VENDATAP,'
      '  VENDATAV,'
      '  VENDVARP,'
      '  VENDVARV,'
      '  VALUNIT,'
      '  VALREP,'
      '  VALCUSTO,'
      '  AVVPROAT,'
      '  AVPPROAT,'
      '  AVVPROVAR,'
      '  AVPPROVAR,'
      '  LUCRATIVIDADE,'
      '  COEFDIV,'
      '  VALOREST,'
      '  OUTROS,'
      '  QUANT2,'
      '  DTCAD,'
      '  ESTINI,'
      '  VALCUSDESP,'
      '  ESTANTCONT,'
      '  CONTAGEM,'
      '  ESTSIMULADO,'
      '  VLRUNITCOMP,'
      '  INDICE,'
      '  BONIFICACAO,'
      '  VLRBONIFIC,'
      '  DESCONTO,'
      '  CLNC,'
      '  MOD,'
      '  IMPEXP,'
      '  IMPREND,'
      '  CONTSOC,'
      '  COFINS,'
      '  PIS,'
      '  MARGEMSEG,'
      '  PERCMARGSEG,'
      '  REDUCBASE,'
      '  VLRCOMPSD,'
      '  ACRECIMO,'
      '  ESTCALC,'
      '  DATAATU,'
      '  HORAATU,'
      '  PRECOOFERTA,'
      '  DATAOFERTA,'
      '  VENCIMENTOOFERTA,'
      '  COD_USUARIOALT,'
      '  ULTVLR_VNDVVAR,'
      '  ULTVLR_VNDPVAR,'
      '  ULTVLR_VNDVATAC,'
      '  ULTVLR_VPATAC,'
      '  MEDIABASEICMST,'
      '  MEDIAVLRICMST,'
      '  IPI_VND,'
      '  PMC,'
      '  MVA,'
      '  GERACOMIS,'
      '  ATUALIZAR,'
      '  ESTLOJA,'
      '  EXPORTAR,'
      '  VENDINDV,'
      '  VENDINDP,'
      '  AVVPROIND,'
      '  AVPPROIND,'
      '  ESTOQUE4CASAS,'
      '  VALCUSTONFE,'
      '  COMPALIQST,'
      '  COMPVLRST,'
      '  COMPVLRBCST,'
      '  COMPVLRICMS'
      'from ESTOQUE '
      'where'
      '  COD_ESTOQUE = :COD_ESTOQUE')
    ModifySQL.Strings = (
      'update ESTOQUE'
      'set'
      '  COD_ESTOQUE = :COD_ESTOQUE,'
      '  COD_LOJA = :COD_LOJA,'
      '  COD_SUBPROD = :COD_SUBPROD,'
      '  ULTCOMPRA = :ULTCOMPRA,'
      '  ULTVENDA = :ULTVENDA,'
      '  ESTMAX = :ESTMAX,'
      '  ESTMIN = :ESTMIN,'
      '  ICMS = :ICMS,'
      '  FRETE = :FRETE,'
      '  CVVPROAT = :CVVPROAT,'
      '  CVPPROAT = :CVPPROAT,'
      '  CVVPROVAR = :CVVPROVAR,'
      '  CVPPROVAR = :CVPPROVAR,'
      '  VENDATAP = :VENDATAP,'
      '  VENDATAV = :VENDATAV,'
      '  VENDVARP = :VENDVARP,'
      '  VENDVARV = :VENDVARV,'
      '  VALUNIT = :VALUNIT,'
      '  VALREP = :VALREP,'
      '  VALCUSTO = :VALCUSTO,'
      '  AVVPROAT = :AVVPROAT,'
      '  AVPPROAT = :AVPPROAT,'
      '  AVVPROVAR = :AVVPROVAR,'
      '  AVPPROVAR = :AVPPROVAR,'
      '  LUCRATIVIDADE = :LUCRATIVIDADE,'
      '  COEFDIV = :COEFDIV,'
      '  VALOREST = :VALOREST,'
      '  OUTROS = :OUTROS,'
      '  QUANT2 = :QUANT2,'
      '  DTCAD = :DTCAD,'
      '  ESTINI = :ESTINI,'
      '  VALCUSDESP = :VALCUSDESP,'
      '  ESTANTCONT = :ESTANTCONT,'
      '  CONTAGEM = :CONTAGEM,'
      '  ESTSIMULADO = :ESTSIMULADO,'
      '  VLRUNITCOMP = :VLRUNITCOMP,'
      '  INDICE = :INDICE,'
      '  BONIFICACAO = :BONIFICACAO,'
      '  VLRBONIFIC = :VLRBONIFIC,'
      '  DESCONTO = :DESCONTO,'
      '  CLNC = :CLNC,'
      '  MOD = :MOD,'
      '  IMPEXP = :IMPEXP,'
      '  IMPREND = :IMPREND,'
      '  CONTSOC = :CONTSOC,'
      '  COFINS = :COFINS,'
      '  PIS = :PIS,'
      '  MARGEMSEG = :MARGEMSEG,'
      '  PERCMARGSEG = :PERCMARGSEG,'
      '  REDUCBASE = :REDUCBASE,'
      '  VLRCOMPSD = :VLRCOMPSD,'
      '  ACRECIMO = :ACRECIMO,'
      '  ESTCALC = :ESTCALC,'
      '  DATAATU = :DATAATU,'
      '  HORAATU = :HORAATU,'
      '  PRECOOFERTA = :PRECOOFERTA,'
      '  DATAOFERTA = :DATAOFERTA,'
      '  VENCIMENTOOFERTA = :VENCIMENTOOFERTA,'
      '  COD_USUARIOALT = :COD_USUARIOALT,'
      '  ULTVLR_VNDVVAR = :ULTVLR_VNDVVAR,'
      '  ULTVLR_VNDPVAR = :ULTVLR_VNDPVAR,'
      '  ULTVLR_VNDVATAC = :ULTVLR_VNDVATAC,'
      '  ULTVLR_VPATAC = :ULTVLR_VPATAC,'
      '  MEDIABASEICMST = :MEDIABASEICMST,'
      '  MEDIAVLRICMST = :MEDIAVLRICMST,'
      '  IPI_VND = :IPI_VND,'
      '  PMC = :PMC,'
      '  MVA = :MVA,'
      '  GERACOMIS = :GERACOMIS,'
      '  ATUALIZAR = :ATUALIZAR,'
      '  ESTLOJA = :ESTLOJA,'
      '  EXPORTAR = :EXPORTAR,'
      '  VENDINDV = :VENDINDV,'
      '  VENDINDP = :VENDINDP,'
      '  AVVPROIND = :AVVPROIND,'
      '  AVPPROIND = :AVPPROIND,'
      '  ESTOQUE4CASAS = :ESTOQUE4CASAS,'
      '  VALCUSTONFE = :VALCUSTONFE,'
      '  COMPALIQST = :COMPALIQST,'
      '  COMPVLRST = :COMPVLRST,'
      '  COMPVLRBCST = :COMPVLRBCST,'
      '  COMPVLRICMS = :COMPVLRICMS'
      'where'
      '  COD_ESTOQUE = :OLD_COD_ESTOQUE')
    InsertSQL.Strings = (
      'insert into ESTOQUE'
      '  (COD_ESTOQUE, COD_LOJA, COD_SUBPROD, ULTCOMPRA, ULTVENDA, '
      'ESTMAX, ESTMIN, '
      
        '   ICMS, FRETE, ESTFISICO, ESTRESERV, ESTPED, ESTSALDO, CVVPROAT' +
        ', '
      'CVPPROAT, '
      
        '   CVVPROVAR, CVPPROVAR, VENDATAP, VENDATAV, VENDVARP, VENDVARV,' +
        ' '
      'VALUNIT, '
      '   VALREP, VALCUSTO, AVVPROAT, AVPPROAT, AVVPROVAR, AVPPROVAR, '
      'LUCRATIVIDADE, '
      
        '   COEFDIV, VALOREST, OUTROS, QUANT2, DTCAD, ESTINI, VALCUSDESP,' +
        ' '
      'ESTANTCONT, '
      '   CONTAGEM, ESTSIMULADO, VLRUNITCOMP, INDICE, BONIFICACAO, '
      'VLRBONIFIC, '
      '   DESCONTO, CLNC, MOD, IMPEXP, IMPREND, CONTSOC, COFINS, PIS, '
      'MARGEMSEG, '
      '   PERCMARGSEG, REDUCBASE, VLRCOMPSD, ACRECIMO, ESTCALC, '
      'DATAATU, HORAATU, '
      '   PRECOOFERTA, DATAOFERTA, VENCIMENTOOFERTA, COD_USUARIOALT, '
      'ULTVLR_VNDVVAR, '
      '   ULTVLR_VNDPVAR, ULTVLR_VNDVATAC, ULTVLR_VPATAC, '
      'MEDIABASEICMST, MEDIAVLRICMST, '
      '   IPI_VND, PMC, MVA, GERACOMIS, ATUALIZAR, ESTLOJA, EXPORTAR, '
      'VENDINDV, '
      '   VENDINDP, AVVPROIND, AVPPROIND, ESTOQUE4CASAS, VALCUSTONFE, '
      'COMPALIQST, '
      '   COMPVLRST, COMPVLRBCST, COMPVLRICMS)'
      'values'
      
        '  (:COD_ESTOQUE, :COD_LOJA, :COD_SUBPROD, :ULTCOMPRA, :ULTVENDA,' +
        ' '
      ':ESTMAX, '
      
        '   :ESTMIN, :ICMS, :FRETE, :ESTFISICO, :ESTRESERV, :ESTPED, :EST' +
        'SALDO, '
      '   :CVVPROAT, :CVPPROAT, :CVVPROVAR, :CVPPROVAR, :VENDATAP, '
      ':VENDATAV, '
      
        '   :VENDVARP, :VENDVARV, :VALUNIT, :VALREP, :VALCUSTO, :AVVPROAT' +
        ', '
      ':AVPPROAT, '
      '   :AVVPROVAR, :AVPPROVAR, :LUCRATIVIDADE, :COEFDIV, :VALOREST, '
      ':OUTROS, '
      
        '   :QUANT2, :DTCAD, :ESTINI, :VALCUSDESP, :ESTANTCONT, :CONTAGEM' +
        ', '
      ':ESTSIMULADO, '
      
        '   :VLRUNITCOMP, :INDICE, :BONIFICACAO, :VLRBONIFIC, :DESCONTO, ' +
        ':CLNC, '
      
        '   :MOD, :IMPEXP, :IMPREND, :CONTSOC, :COFINS, :PIS, :MARGEMSEG,' +
        ' '
      ':PERCMARGSEG, '
      
        '   :REDUCBASE, :VLRCOMPSD, :ACRECIMO, :ESTCALC, :DATAATU, :HORAA' +
        'TU, '
      ':PRECOOFERTA, '
      '   :DATAOFERTA, :VENCIMENTOOFERTA, :COD_USUARIOALT, '
      ':ULTVLR_VNDVVAR, :ULTVLR_VNDPVAR, '
      '   :ULTVLR_VNDVATAC, :ULTVLR_VPATAC, :MEDIABASEICMST, '
      ':MEDIAVLRICMST, :IPI_VND, '
      
        '   :PMC, :MVA, :GERACOMIS, :ATUALIZAR, :ESTLOJA, :EXPORTAR, :VEN' +
        'DINDV, '
      
        '   :VENDINDP, :AVVPROIND, :AVPPROIND, :ESTOQUE4CASAS, :VALCUSTON' +
        'FE, '
      ':COMPALIQST, '
      '   :COMPVLRST, :COMPVLRBCST, :COMPVLRICMS)')
    DeleteSQL.Strings = (
      'delete from ESTOQUE'
      'where'
      '  COD_ESTOQUE = :OLD_COD_ESTOQUE')
    Left = 127
    Top = 229
  end
  object DSEstoque: TDataSource
    DataSet = TEstoque
    Left = 128
    Top = 271
  end
  object DSAlx: TDataSource
    DataSet = Alx
    Left = 200
  end
  object WProduto: TIBQuery
    Database = DBEstoque
    Transaction = TransacEstoque
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from VWPRODUTO')
    GeneratorField.Field = 'COD_ESTOQUE'
    Left = 17
    Top = 317
    object WProdutoCOD_PRODUTO: TIntegerField
      FieldName = 'COD_PRODUTO'
      Origin = 'VWPRODUTO.COD_PRODUTO'
    end
    object WProdutoCOD_GRUPOPROD: TIntegerField
      FieldName = 'COD_GRUPOPROD'
      Origin = 'VWPRODUTO.COD_GRUPOPROD'
    end
    object WProdutoCOD_SUBGRUPOPROD: TIntegerField
      FieldName = 'COD_SUBGRUPOPROD'
      Origin = 'VWPRODUTO.COD_SUBGRUPOPROD'
    end
    object WProdutoCOD_INTERNO: TIBStringField
      FieldName = 'COD_INTERNO'
      Origin = 'VWPRODUTO.COD_INTERNO'
      Size = 10
    end
    object WProdutoPRODUTO: TIBStringField
      FieldName = 'PRODUTO'
      Origin = 'VWPRODUTO.PRODUTO'
      Size = 100
    end
    object WProdutoAPLICACAO: TIBStringField
      FieldName = 'APLICACAO'
      Origin = 'VWPRODUTO.APLICACAO'
      Size = 100
    end
    object WProdutoCOD_CST: TIntegerField
      FieldName = 'COD_CST'
      Origin = 'VWPRODUTO.COD_CST'
    end
    object WProdutoCI_GRUPO: TIBStringField
      FieldName = 'CI_GRUPO'
      Origin = 'VWPRODUTO.CI_GRUPO'
      Size = 10
    end
    object WProdutoGRUPO: TIBStringField
      FieldName = 'GRUPO'
      Origin = 'VWPRODUTO.GRUPO'
      Size = 100
    end
    object WProdutoCI_SUBGRUPO: TIBStringField
      FieldName = 'CI_SUBGRUPO'
      Origin = 'VWPRODUTO.CI_SUBGRUPO'
      Size = 10
    end
    object WProdutoSUBGRUPO: TIBStringField
      FieldName = 'SUBGRUPO'
      Origin = 'VWPRODUTO.SUBGRUPO'
      Size = 100
    end
  end
  object DWProduto: TDataSource
    DataSet = WProduto
    Left = 18
    Top = 366
  end
  object DWSimilar: TDataSource
    DataSet = WSimilar
    Left = 74
    Top = 366
  end
  object TSlave: TIBQuery
    Tag = 5
    Database = DBEstoque
    Transaction = TransacEstoque
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'Select despadic.despesa as DISCRIMINACAO, despadic.vlrtotfin as ' +
        'TOTAL, despadic.vlrtotfin as BASE,'
      'SERVICO_NFSE.num_servico  from despadic'
      
        'left join SERVICO_NFSE on despadic.cod_servico = SERVICO_NFSE.CO' +
        'D_SERVICO')
    Left = 123
    Top = 318
  end
  object DSSlave: TDataSource
    DataSet = TSlave
    Left = 123
    Top = 366
  end
  object TRel: TIBQuery
    Tag = 5
    Database = DBEstoque
    Transaction = TransacEstoque
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'Select vwordem.numero as OS, ordem.descprod, vwfuncionario.nome,' +
        ' vwsimilar.cod_estoque, vwsimilar.descricao as PRODUTO, itprodor' +
        'd.cod_itprodord,'
      
        ' comprod.cod_gerador, comprod.percento, itprodord.total from com' +
        'prod'
      
        ' left join itprodord on comprod.cod_gerador = itprodord.cod_itpr' +
        'odord'
      
        ' left join vwsimilar on itprodord.cod_estoque = vwsimilar.cod_es' +
        'toque'
      ' left join vwordem on itprodord.cod_ordem = vwordem.cod_ordem'
      ' left join ordem on vwordem.cod_ordem = ordem.cod_ordem'
      
        ' left join vwfuncionario on comprod.cod_funcionario = vwfunciona' +
        'rio.cod_func')
    Left = 221
    Top = 318
  end
  object DRel: TDataSource
    DataSet = TRel
    Left = 221
    Top = 367
  end
  object DBEstoque: TIBDatabase
    DatabaseName = 'NOTE:C:\MZR\MACS\DBMACS.GDB'
    Params.Strings = (
      'user_name=SYSDBA'
      'password=masterkey'
      'sql_role_name=3'
      'lc_ctype=ISO8859_1')
    LoginPrompt = False
    DefaultTransaction = TransacEstoque
    IdleTimer = 0
    SQLDialect = 3
    TraceFlags = []
    Left = 24
    Top = 8
  end
  object Alx1: TIBQuery
    Tag = 5
    Database = DBEstoque
    Transaction = TransacEstoque
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        ' Select vwsimilar.contrint, vwsimilar.descricao, subproduto.anvi' +
        'sa as CSTANT, subproduto.USOCONSUMO as SUBSTITDOANT, cst.cod_sit' +
        '_trib cstATUAL, cst.substituicao as SUBTITUICAOATUAl from vwsimi' +
        'lar'
      
        ' left join subproduto on vwsimilar.cod_subproduto = subproduto.c' +
        'od_subproduto'
      ' left join cst on subproduto.cod_cst = cst.cod_cst'
      '')
    Left = 248
  end
  object DSAlx1: TDataSource
    DataSet = Alx1
    Left = 288
  end
  object Alx2: TIBQuery
    Tag = 5
    Database = DBEstoque
    Transaction = TransacEstoque
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'SELECT * FROM vwpedv'
      '')
    Left = 339
  end
  object DSAlx2: TDataSource
    DataSet = Alx2
    Left = 371
  end
  object Alx3: TIBQuery
    Tag = 5
    Database = DBEstoque
    Transaction = TransacEstoque
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from despadic')
    Left = 418
  end
  object DSAlx3: TDataSource
    DataSet = Alx3
    Left = 458
  end
  object Alx4: TIBQuery
    Tag = 5
    Database = DBEstoque
    Transaction = TransacEstoque
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * From despadic')
    Left = 504
  end
  object DSAlx4: TDataSource
    DataSet = Alx4
    Left = 536
  end
  object TRel1: TIBQuery
    Tag = 5
    Database = DBEstoque
    Transaction = TransacEstoque
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from itservord')
    Left = 256
    Top = 318
    object TRel1PRODUTO: TIBStringField
      FieldName = 'PRODUTO'
      Size = 60
    end
    object TRel1MARCA: TIBStringField
      FieldName = 'MARCA'
      Size = 40
    end
    object TRel1DATA: TDateField
      FieldName = 'DATA'
    end
    object TRel1DESCONTO: TIBBCDField
      FieldName = 'DESCONTO'
      Precision = 18
      Size = 2
    end
    object TRel1LUCMOE: TIBBCDField
      FieldName = 'LUCMOE'
      Precision = 9
      Size = 2
    end
    object TRel1LUCPER: TIBBCDField
      FieldName = 'LUCPER'
      Precision = 18
      Size = 2
    end
    object TRel1NUMREQ: TIBStringField
      FieldName = 'NUMREQ'
      Size = 10
    end
    object TRel1QTD: TIBBCDField
      FieldName = 'QTD'
      Precision = 18
      Size = 4
    end
    object TRel1TOTAL: TIBBCDField
      FieldName = 'TOTAL'
      Precision = 9
      Size = 2
    end
    object TRel1VLRUNIT: TIBBCDField
      FieldName = 'VLRUNIT'
      Precision = 9
      Size = 2
    end
  end
  object DRel1: TDataSource
    DataSet = TRel1
    Left = 256
    Top = 368
  end
  object TRel2: TIBQuery
    Tag = 5
    Database = DBEstoque
    Transaction = TransacEstoque
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      ' select subservico.descricao As servico, itservord.data, '
      ' itservord.desconto, itservord.lucmoe, itservord.lucper, '
      ' itservord.qtd, itservord.total, itservord.vlrunit from '
      
        ' itservord left join subservico ON itservord.cod_servico =  subs' +
        'ervico.cod_subservico ')
    Left = 288
    Top = 318
    object TRel2SERVICO: TIBStringField
      FieldName = 'SERVICO'
      Size = 60
    end
    object TRel2DATA: TDateField
      FieldName = 'DATA'
    end
    object TRel2DESCONTO: TIBBCDField
      FieldName = 'DESCONTO'
      Precision = 18
      Size = 2
    end
    object TRel2LUCMOE: TIBBCDField
      FieldName = 'LUCMOE'
      Precision = 9
      Size = 2
    end
    object TRel2LUCPER: TIBBCDField
      FieldName = 'LUCPER'
      Precision = 18
      Size = 2
    end
    object TRel2QTD: TIBStringField
      FieldName = 'QTD'
      Size = 15
    end
    object TRel2TOTAL: TIBBCDField
      FieldName = 'TOTAL'
      Precision = 9
      Size = 2
    end
    object TRel2VLRUNIT: TIBBCDField
      FieldName = 'VLRUNIT'
      Precision = 9
      Size = 2
    end
  end
  object DRel2: TDataSource
    DataSet = TRel2
    Left = 288
    Top = 368
  end
  object TDesp: TIBQuery
    Database = DBEstoque
    Transaction = TransacEstoque
    AutoCalcFields = False
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'Select * from DESPADIC')
    UpdateObject = UDesp
    GeneratorField.Field = 'COD_DESPADIC'
    GeneratorField.Generator = 'GEN_DESPADIC_ID'
    Left = 334
    Top = 49
  end
  object UDesp: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  COD_DESPADIC,'
      '  COD_GERADOR,'
      '  GERADOR,'
      '  DESPESA,'
      '  QTD,'
      '  VLRREAL,'
      '  VLRFINAL,'
      '  LUCMOE,'
      '  LUCPER,'
      '  VLRTOTFIN,'
      '  DESCONTO,'
      '  MARCA,'
      '  UNIDADE,'
      '  COD_EQUIPE,'
      '  COD_FUNCIONARIO,'
      '  CFOP,'
      '  COMISSAO,'
      '  ALIQISSQN,'
      '  DESCNF,'
      '  CST,'
      '  COD_SERVICO,'
      '  NFSE_CODSERVICO,'
      '  NFSE_NUMERODOCUMENTO,'
      '  NFSE_SERIERPS,'
      '  NFSE_NUMERORPS,'
      '  NFSE_STATUS,'
      '  CLASSIFICACAO,'
      '  COD_EQUIP'
      'from DESPADIC '
      'where'
      '  COD_DESPADIC = :COD_DESPADIC')
    ModifySQL.Strings = (
      'update DESPADIC'
      'set'
      '  COD_DESPADIC = :COD_DESPADIC,'
      '  COD_GERADOR = :COD_GERADOR,'
      '  GERADOR = :GERADOR,'
      '  DESPESA = :DESPESA,'
      '  QTD = :QTD,'
      '  VLRREAL = :VLRREAL,'
      '  VLRFINAL = :VLRFINAL,'
      '  LUCMOE = :LUCMOE,'
      '  LUCPER = :LUCPER,'
      '  VLRTOTFIN = :VLRTOTFIN,'
      '  DESCONTO = :DESCONTO,'
      '  MARCA = :MARCA,'
      '  UNIDADE = :UNIDADE,'
      '  COD_EQUIPE = :COD_EQUIPE,'
      '  COD_FUNCIONARIO = :COD_FUNCIONARIO,'
      '  CFOP = :CFOP,'
      '  COMISSAO = :COMISSAO,'
      '  ALIQISSQN = :ALIQISSQN,'
      '  DESCNF = :DESCNF,'
      '  CST = :CST,'
      '  COD_SERVICO = :COD_SERVICO,'
      '  NFSE_CODSERVICO = :NFSE_CODSERVICO,'
      '  NFSE_NUMERODOCUMENTO = :NFSE_NUMERODOCUMENTO,'
      '  NFSE_SERIERPS = :NFSE_SERIERPS,'
      '  NFSE_NUMERORPS = :NFSE_NUMERORPS,'
      '  NFSE_STATUS = :NFSE_STATUS,'
      '  CLASSIFICACAO = :CLASSIFICACAO,'
      '  COD_EQUIP = :COD_EQUIP'
      'where'
      '  COD_DESPADIC = :OLD_COD_DESPADIC')
    InsertSQL.Strings = (
      'insert into DESPADIC'
      '  (COD_DESPADIC, COD_GERADOR, GERADOR, DESPESA, QTD, VLRREAL, '
      'VLRFINAL, '
      '   LUCMOE, LUCPER, VLRTOTFIN, DESCONTO, MARCA, UNIDADE, '
      'COD_EQUIPE, COD_FUNCIONARIO, '
      '   CFOP, COMISSAO, ALIQISSQN, DESCNF, CST, COD_SERVICO, '
      'NFSE_CODSERVICO, '
      '   NFSE_NUMERODOCUMENTO, NFSE_SERIERPS, NFSE_NUMERORPS, '
      'NFSE_STATUS, CLASSIFICACAO, '
      '   COD_EQUIP)'
      'values'
      
        '  (:COD_DESPADIC, :COD_GERADOR, :GERADOR, :DESPESA, :QTD, :VLRRE' +
        'AL, '
      ':VLRFINAL, '
      '   :LUCMOE, :LUCPER, :VLRTOTFIN, :DESCONTO, :MARCA, :UNIDADE, '
      ':COD_EQUIPE, '
      
        '   :COD_FUNCIONARIO, :CFOP, :COMISSAO, :ALIQISSQN, :DESCNF, :CST' +
        ', '
      ':COD_SERVICO, '
      '   :NFSE_CODSERVICO, :NFSE_NUMERODOCUMENTO, :NFSE_SERIERPS, '
      ':NFSE_NUMERORPS, '
      '   :NFSE_STATUS, :CLASSIFICACAO, :COD_EQUIP)')
    DeleteSQL.Strings = (
      'delete from DESPADIC'
      'where'
      '  COD_DESPADIC = :OLD_COD_DESPADIC')
    Left = 334
    Top = 95
  end
  object DDesp: TDataSource
    DataSet = TDesp
    Left = 335
    Top = 137
  end
  object TProduc: TIBQuery
    Database = DBEstoque
    Transaction = TransacEstoque
    AutoCalcFields = False
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select first 1 *  from PRODUCAO')
    UpdateObject = UProduc
    GeneratorField.Field = 'COD_ESTOQUE'
    Left = 382
    Top = 49
    object TProducCOD_PRODUCAO: TIntegerField
      FieldName = 'COD_PRODUCAO'
      Required = True
    end
    object TProducCOD_FCHTECPROD: TIntegerField
      FieldName = 'COD_FCHTECPROD'
    end
    object TProducDTPRODUC: TDateField
      FieldName = 'DTPRODUC'
    end
    object TProducPRODUZIDO: TIBStringField
      FieldName = 'PRODUZIDO'
      Size = 1
    end
    object TProducQTD: TIBBCDField
      FieldName = 'QTD'
      Precision = 18
      Size = 3
    end
    object TProducVLRTOTAL: TIBBCDField
      FieldName = 'VLRTOTAL'
      Precision = 9
      Size = 2
    end
  end
  object UProduc: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  COD_PRODUCAO,'
      '  COD_FCHTECPROD,'
      '  DTPRODUC,'
      '  PRODUZIDO,'
      '  QTD,'
      '  VLRTOTAL'
      'from PRODUCAO '
      'where'
      '  COD_PRODUCAO = :COD_PRODUCAO')
    ModifySQL.Strings = (
      'update PRODUCAO'
      'set'
      '  COD_PRODUCAO = :COD_PRODUCAO,'
      '  COD_FCHTECPROD = :COD_FCHTECPROD,'
      '  DTPRODUC = :DTPRODUC,'
      '  PRODUZIDO = :PRODUZIDO,'
      '  QTD = :QTD,'
      '  VLRTOTAL = :VLRTOTAL'
      'where'
      '  COD_PRODUCAO = :OLD_COD_PRODUCAO')
    InsertSQL.Strings = (
      'insert into PRODUCAO'
      
        '  (COD_PRODUCAO, COD_FCHTECPROD, DTPRODUC, PRODUZIDO, QTD, VLRTO' +
        'TAL)'
      'values'
      
        '  (:COD_PRODUCAO, :COD_FCHTECPROD, :DTPRODUC, :PRODUZIDO, :QTD, ' +
        ':VLRTOTAL)')
    DeleteSQL.Strings = (
      'delete from PRODUCAO'
      'where'
      '  COD_PRODUCAO = :OLD_COD_PRODUCAO')
    Left = 383
    Top = 94
  end
  object DProduc: TDataSource
    DataSet = TProduc
    Left = 383
    Top = 137
  end
  object TIPrdMat: TIBQuery
    Database = DBEstoque
    Transaction = TransacEstoque
    AutoCalcFields = False
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select *   from IPRDMAT')
    UpdateObject = UIPrdMat
    GeneratorField.Field = 'COD_ESTOQUE'
    Left = 427
    Top = 49
    object TIPrdMatCOD_IPRDMAT: TIntegerField
      FieldName = 'COD_IPRDMAT'
      Required = True
    end
    object TIPrdMatCOD_PRODUCAO: TIntegerField
      FieldName = 'COD_PRODUCAO'
    end
    object TIPrdMatCOD_SUBPRODUTO: TIntegerField
      FieldName = 'COD_SUBPRODUTO'
    end
    object TIPrdMatQTD: TIBBCDField
      FieldName = 'QTD'
      Precision = 18
      Size = 3
    end
    object TIPrdMatCLASS: TIBStringField
      FieldName = 'CLASS'
      Size = 10
    end
    object TIPrdMatVLRUNIT: TIBBCDField
      FieldName = 'VLRUNIT'
      Precision = 9
      Size = 2
    end
    object TIPrdMatVLRTOT: TIBBCDField
      FieldName = 'VLRTOT'
      Precision = 9
      Size = 2
    end
  end
  object UIPrdMat: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  COD_IPRDMAT,'
      '  COD_PRODUCAO,'
      '  COD_SUBPRODUTO,'
      '  QTD,'
      '  CLASS,'
      '  VLRUNIT,'
      '  VLRTOT'
      'from IPRDMAT '
      'where'
      '  COD_IPRDMAT = :COD_IPRDMAT')
    ModifySQL.Strings = (
      'update IPRDMAT'
      'set'
      '  COD_IPRDMAT = :COD_IPRDMAT,'
      '  COD_PRODUCAO = :COD_PRODUCAO,'
      '  COD_SUBPRODUTO = :COD_SUBPRODUTO,'
      '  QTD = :QTD,'
      '  CLASS = :CLASS,'
      '  VLRUNIT = :VLRUNIT,'
      '  VLRTOT = :VLRTOT'
      'where'
      '  COD_IPRDMAT = :OLD_COD_IPRDMAT')
    InsertSQL.Strings = (
      'insert into IPRDMAT'
      
        '  (COD_IPRDMAT, COD_PRODUCAO, COD_SUBPRODUTO, QTD, CLASS, VLRUNI' +
        'T, VLRTOT)'
      'values'
      
        '  (:COD_IPRDMAT, :COD_PRODUCAO, :COD_SUBPRODUTO, :QTD, :CLASS, :' +
        'VLRUNIT, '
      '   :VLRTOT)')
    DeleteSQL.Strings = (
      'delete from IPRDMAT'
      'where'
      '  COD_IPRDMAT = :OLD_COD_IPRDMAT')
    Left = 428
    Top = 94
  end
  object DPrdMat: TDataSource
    DataSet = TIPrdMat
    Left = 428
    Top = 137
  end
  object TIPrdMao: TIBQuery
    Database = DBEstoque
    Transaction = TransacEstoque
    AutoCalcFields = False
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select  *    from IPRDMAO')
    UpdateObject = UIPrdMao
    GeneratorField.Field = 'COD_ESTOQUE'
    Left = 475
    Top = 49
    object TIPrdMaoCOD_IPRDMAO: TIntegerField
      FieldName = 'COD_IPRDMAO'
      Required = True
    end
    object TIPrdMaoCOD_PRODUCAO: TIntegerField
      FieldName = 'COD_PRODUCAO'
    end
    object TIPrdMaoCOD_SUBSERVICO: TIntegerField
      FieldName = 'COD_SUBSERVICO'
    end
    object TIPrdMaoQTD: TIBBCDField
      FieldName = 'QTD'
      Precision = 18
      Size = 3
    end
    object TIPrdMaoCLASS: TIBStringField
      FieldName = 'CLASS'
      Size = 10
    end
    object TIPrdMaoVLRUNIT: TIBBCDField
      FieldName = 'VLRUNIT'
      Precision = 9
      Size = 2
    end
    object TIPrdMaoVLRTOT: TIBBCDField
      FieldName = 'VLRTOT'
      Precision = 9
      Size = 2
    end
  end
  object UIPrdMao: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  COD_IPRDMAO,'
      '  COD_PRODUCAO,'
      '  COD_SUBSERVICO,'
      '  QTD,'
      '  CLASS,'
      '  VLRUNIT,'
      '  VLRTOT'
      'from IPRDMAO '
      'where'
      '  COD_IPRDMAO = :COD_IPRDMAO')
    ModifySQL.Strings = (
      'update IPRDMAO'
      'set'
      '  COD_IPRDMAO = :COD_IPRDMAO,'
      '  COD_PRODUCAO = :COD_PRODUCAO,'
      '  COD_SUBSERVICO = :COD_SUBSERVICO,'
      '  QTD = :QTD,'
      '  CLASS = :CLASS,'
      '  VLRUNIT = :VLRUNIT,'
      '  VLRTOT = :VLRTOT'
      'where'
      '  COD_IPRDMAO = :OLD_COD_IPRDMAO')
    InsertSQL.Strings = (
      'insert into IPRDMAO'
      
        '  (COD_IPRDMAO, COD_PRODUCAO, COD_SUBSERVICO, QTD, CLASS, VLRUNI' +
        'T, VLRTOT)'
      'values'
      
        '  (:COD_IPRDMAO, :COD_PRODUCAO, :COD_SUBSERVICO, :QTD, :CLASS, :' +
        'VLRUNIT, '
      '   :VLRTOT)')
    DeleteSQL.Strings = (
      'delete from IPRDMAO'
      'where'
      '  COD_IPRDMAO = :OLD_COD_IPRDMAO')
    Left = 476
    Top = 94
  end
  object DPrdMao: TDataSource
    DataSet = TIPrdMao
    Left = 476
    Top = 137
  end
  object TRFch: TIBQuery
    Tag = 5
    Database = DBEstoque
    Transaction = TransacEstoque
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'select producao.cod_producao as cod_fchtecprod, vwsimilar.contri' +
        'nt, vwsimilar.codfabricante, vwsimilar.descricao, vwsimilar.marc' +
        'a, '#9'producao.qtd AS PORCAO, producao.dtproduc from producao '
      
        'Left join fchtecprod on fchtecprod.cod_fchtecprod = producao.cod' +
        '_fchtecprod '
      
        'Left join vwsimilar on fchtecprod.cod_subproduto=vwsimilar.cod_s' +
        'ubproduto ')
    Left = 15
    Top = 412
    object TRFchCOD_FCHTECPROD: TIntegerField
      FieldName = 'COD_FCHTECPROD'
      Origin = 'PRODUCAO.COD_PRODUCAO'
    end
    object TRFchCONTRINT: TIBStringField
      FieldName = 'CONTRINT'
      Origin = 'VWSIMILAR.CONTRINT'
      Size = 15
    end
    object TRFchCODFABRICANTE: TIBStringField
      FieldName = 'CODFABRICANTE'
      Origin = 'VWSIMILAR.CODFABRICANTE'
      Size = 25
    end
    object TRFchDESCRICAO: TIBStringField
      FieldName = 'DESCRICAO'
      Origin = 'VWSIMILAR.DESCRICAO'
      Size = 60
    end
    object TRFchMARCA: TIBStringField
      FieldName = 'MARCA'
      Origin = 'VWSIMILAR.MARCA'
      Size = 40
    end
    object TRFchPORCAO: TIBBCDField
      FieldName = 'PORCAO'
      Origin = 'PRODUCAO.QTD'
      Precision = 18
      Size = 3
    end
    object TRFchDTPRODUC: TDateField
      FieldName = 'DTPRODUC'
      Origin = 'PRODUCAO.DTPRODUC'
    end
  end
  object TRFchP: TIBQuery
    Tag = 5
    Database = DBEstoque
    Transaction = TransacEstoque
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'Select subproduto.contrint, subproduto.descricao, iprdmat.class,' +
        ' iprdmat.qtd as QTDUTILIZ,'
      '    iprdmat.vlrunit, iprdmat.vlrtot from iprdmat'
      
        'left join subproduto on subproduto.cod_subproduto=iprdmat.cod_su' +
        'bproduto')
    Left = 62
    Top = 412
    object TRFchPCONTRINT: TIBStringField
      FieldName = 'CONTRINT'
      Origin = 'SUBPRODUTO.CONTRINT'
      Size = 15
    end
    object TRFchPDESCRICAO: TIBStringField
      FieldName = 'DESCRICAO'
      Origin = 'SUBPRODUTO.DESCRICAO'
      Size = 60
    end
    object TRFchPCLASS: TIBStringField
      FieldName = 'CLASS'
      Origin = 'IPRDMAT.CLASS'
      Size = 10
    end
    object TRFchPQTDUTILIZ: TIBBCDField
      FieldName = 'QTDUTILIZ'
      Origin = 'IPRDMAT.QTD'
      Precision = 18
      Size = 3
    end
    object TRFchPVLRUNIT: TIBBCDField
      FieldName = 'VLRUNIT'
      Origin = 'IPRDMAT.VLRUNIT'
      Precision = 18
      Size = 2
    end
    object TRFchPVLRTOT: TIBBCDField
      FieldName = 'VLRTOT'
      Origin = 'IPRDMAT.VLRTOT'
      Precision = 18
      Size = 2
    end
  end
  object TRFchM: TIBQuery
    Tag = 5
    Database = DBEstoque
    Transaction = TransacEstoque
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'Select subservico.descricao, iprdmao.class, iprdmao.qtd AS QTDUT' +
        'ILIZ, iprdmao.vlrtot, iprdmao.vlrunit'
      ' from iprdmao'
      
        'left join subservico on subservico.cod_subservico=iprdmao.cod_su' +
        'bservico')
    Left = 112
    Top = 412
    object TRFchMDESCRICAO: TIBStringField
      FieldName = 'DESCRICAO'
      Origin = 'SUBSERVICO.DESCRICAO'
      Size = 60
    end
    object TRFchMCLASS: TIBStringField
      FieldName = 'CLASS'
      Origin = 'IPRDMAO.CLASS'
      Size = 10
    end
    object TRFchMQTDUTILIZ: TIBBCDField
      FieldName = 'QTDUTILIZ'
      Origin = 'IPRDMAO.QTD'
      Precision = 18
      Size = 3
    end
    object TRFchMVLRTOT: TIBBCDField
      FieldName = 'VLRTOT'
      Origin = 'IPRDMAO.VLRTOT'
      Precision = 18
      Size = 2
    end
    object TRFchMVLRUNIT: TIBBCDField
      FieldName = 'VLRUNIT'
      Origin = 'IPRDMAO.VLRUNIT'
      Precision = 18
      Size = 2
    end
  end
  object DRFchM: TDataSource
    DataSet = TRFchM
    Left = 112
    Top = 455
  end
  object DRFchP: TDataSource
    DataSet = TRFchP
    Left = 62
    Top = 455
  end
  object DRFch: TDataSource
    DataSet = TRFch
    Left = 15
    Top = 454
  end
  object TRFchD: TIBQuery
    Tag = 5
    Database = DBEstoque
    Transaction = TransacEstoque
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'Select * from despadic')
    Left = 160
    Top = 412
    object TRFchDCOD_DESPADIC: TIntegerField
      FieldName = 'COD_DESPADIC'
      Origin = 'DESPADIC.COD_DESPADIC'
    end
    object TRFchDCOD_GERADOR: TIntegerField
      FieldName = 'COD_GERADOR'
      Origin = 'DESPADIC.COD_GERADOR'
    end
    object TRFchDGERADOR: TIBStringField
      FieldName = 'GERADOR'
      Origin = 'DESPADIC.GERADOR'
      Size = 10
    end
    object TRFchDDESPESA: TIBStringField
      FieldName = 'DESPESA'
      Origin = 'DESPADIC.DESPESA'
      Size = 40
    end
    object TRFchDQTD: TIBBCDField
      FieldName = 'QTD'
      Origin = 'DESPADIC.QTD'
      Precision = 18
      Size = 3
    end
    object TRFchDVLRREAL: TIBBCDField
      FieldName = 'VLRREAL'
      Origin = 'DESPADIC.VLRREAL'
      Precision = 18
      Size = 2
    end
    object TRFchDVLRFINAL: TIBBCDField
      FieldName = 'VLRFINAL'
      Origin = 'DESPADIC.VLRFINAL'
      Precision = 18
      Size = 2
    end
    object TRFchDLUCMOE: TIBBCDField
      FieldName = 'LUCMOE'
      Origin = 'DESPADIC.LUCMOE'
      Precision = 18
      Size = 2
    end
    object TRFchDLUCPER: TIBBCDField
      FieldName = 'LUCPER'
      Origin = 'DESPADIC.LUCPER'
      Precision = 18
      Size = 2
    end
    object TRFchDVLRTOTFIN: TIBBCDField
      FieldName = 'VLRTOTFIN'
      Origin = 'DESPADIC.VLRTOTFIN'
      Precision = 18
      Size = 2
    end
    object TRFchDDESCONTO: TIBBCDField
      FieldName = 'DESCONTO'
      Origin = 'DESPADIC.DESCONTO'
      Precision = 4
      Size = 2
    end
    object TRFchDMARCA: TIBStringField
      FieldName = 'MARCA'
      Origin = 'DESPADIC.MARCA'
      Size = 40
    end
    object TRFchDUNIDADE: TIBStringField
      FieldName = 'UNIDADE'
      Origin = 'DESPADIC.UNIDADE'
      FixedChar = True
      Size = 2
    end
    object TRFchDCOD_EQUIPE: TIntegerField
      FieldName = 'COD_EQUIPE'
      Origin = 'DESPADIC.COD_EQUIPE'
    end
    object TRFchDCOD_FUNCIONARIO: TIntegerField
      FieldName = 'COD_FUNCIONARIO'
      Origin = 'DESPADIC.COD_FUNCIONARIO'
    end
  end
  object DRFchD: TDataSource
    DataSet = TRFchD
    Left = 160
    Top = 455
  end
  object TSlaveServ: TIBQuery
    Tag = 5
    Database = DBEstoque
    Transaction = TransacEstoque
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'Select despadic.cod_despadic CodigoDespesa, despadic.despesa as ' +
        'servico,despadic.cst , despadic.nfse_status STATUS, despadic.nfs' +
        'e_codservico CodigoServicoNfse, '
      
        ' despadic.cfop, despadic.qtd,despadic.unidade, despadic.desconto' +
        ', despadic.vlrfinal AS VlrUnitario, despadic.vlrtotfin as Total,' +
        ' servico_nfse.descricao DescricaoServico from despadic '
      
        'left join servico_nfse on servico_nfse.num_servico = despadic.nf' +
        'se_codservico')
    Left = 178
    Top = 318
  end
  object DSSlaveServ: TDataSource
    DataSet = TSlaveServ
    Left = 178
    Top = 366
  end
  object TConvert: TIBQuery
    Database = DBEstoque
    Transaction = TransacEstoque
    AutoCalcFields = False
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'Select  *    from CONVUNID')
    UpdateObject = UConvert
    GeneratorField.Field = 'COD_ESTOQUE'
    Left = 531
    Top = 49
    object TConvertCOD_CONVUNID: TIntegerField
      FieldName = 'COD_CONVUNID'
    end
    object TConvertCOD_UNIDENT: TIntegerField
      FieldName = 'COD_UNIDENT'
    end
    object TConvertCOD_UNIDSAI: TIntegerField
      FieldName = 'COD_UNIDSAI'
    end
    object TConvertQTDCONVERT: TIBStringField
      FieldName = 'QTDCONVERT'
      Size = 15
    end
  end
  object UConvert: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  COD_CONVUNID,'
      '  COD_UNIDENT,'
      '  COD_UNIDSAI,'
      '  QTDCONVERT'
      'from CONVUNID '
      'where'
      '  COD_CONVUNID = :COD_CONVUNID')
    ModifySQL.Strings = (
      'update CONVUNID'
      'set'
      '  COD_CONVUNID = :COD_CONVUNID,'
      '  COD_UNIDENT = :COD_UNIDENT,'
      '  COD_UNIDSAI = :COD_UNIDSAI,'
      '  QTDCONVERT = :QTDCONVERT'
      'where'
      '  COD_CONVUNID = :OLD_COD_CONVUNID')
    InsertSQL.Strings = (
      'insert into CONVUNID'
      '  (COD_CONVUNID, COD_UNIDENT, COD_UNIDSAI, QTDCONVERT)'
      'values'
      '  (:COD_CONVUNID, :COD_UNIDENT, :COD_UNIDSAI, :QTDCONVERT)')
    DeleteSQL.Strings = (
      'delete from CONVUNID'
      'where'
      '  COD_CONVUNID = :OLD_COD_CONVUNID')
    Left = 532
    Top = 94
  end
  object DConvert: TDataSource
    DataSet = TConvert
    Left = 532
    Top = 137
  end
  object TCodBarra: TIBQuery
    Database = DBEstoque
    Transaction = TransacEstoque
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from  CODIGOBARRA')
    UpdateObject = UCodBarra
    GeneratorField.Field = 'COD_ESTOQUE'
    Left = 183
    Top = 182
    object TCodBarraCOD_CODBARRA: TIntegerField
      FieldName = 'COD_CODBARRA'
      Origin = 'CODIGOBARRA.COD_CODBARRA'
    end
    object TCodBarraCOD_ESTOQUE: TIntegerField
      FieldName = 'COD_ESTOQUE'
      Origin = 'CODIGOBARRA.COD_ESTOQUE'
    end
    object TCodBarraCODBARRA: TIBStringField
      FieldName = 'CODBARRA'
      Origin = 'CODIGOBARRA.CODBARRA'
      Required = True
      Size = 15
    end
    object TCodBarraCODFORNERC: TIntegerField
      FieldName = 'CODFORNERC'
      Origin = 'CODIGOBARRA.CODFORNERC'
    end
    object TCodBarraQTDEMB: TIntegerField
      FieldName = 'QTDEMB'
      Origin = 'CODIGOBARRA.QTDEMB'
    end
  end
  object UCodBarra: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  COD_ESTOQUE,'
      '  CODBARRA,'
      '  CODFORNERC,'
      '  COD_CODBARRA,'
      '  QTDEMB'
      'from CODIGOBARRA '
      'where'
      '  COD_ESTOQUE = :COD_ESTOQUE')
    ModifySQL.Strings = (
      'update CODIGOBARRA'
      'set'
      '  COD_ESTOQUE = :COD_ESTOQUE,'
      '  CODBARRA = :CODBARRA,'
      '  CODFORNERC = :CODFORNERC,'
      '  COD_CODBARRA = :COD_CODBARRA,'
      '  QTDEMB = :QTDEMB'
      'where'
      '  COD_ESTOQUE = :OLD_COD_ESTOQUE')
    InsertSQL.Strings = (
      'insert into CODIGOBARRA'
      '  (COD_ESTOQUE, CODBARRA, CODFORNERC, COD_CODBARRA, QTDEMB)'
      'values'
      '  (:COD_ESTOQUE, :CODBARRA, :CODFORNERC, :COD_CODBARRA, :QTDEMB)')
    DeleteSQL.Strings = (
      'delete from CODIGOBARRA'
      'where'
      '  COD_ESTOQUE = :OLD_COD_ESTOQUE')
    Left = 183
    Top = 229
  end
  object DCodBarra: TDataSource
    DataSet = TCodBarra
    Left = 184
    Top = 271
  end
  object TransacEstoque: TIBTransaction
    Active = False
    DefaultDatabase = DBEstoque
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    AutoStopAction = saNone
    Left = 24
    Top = 56
  end
  object TRel3: TIBQuery
    Tag = 5
    Database = DBEstoque
    Transaction = TransacEstoque
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'SELECT despadic.cod_gerador, despadic.COD_DESPADIC, despadic.cod' +
        '_equipe, despadic.despesa, despadic.vlrfinal, despadic.vlrtotfin' +
        ', despadic.qtd, despadic.desconto,'
      'equipe.cod_equipe, equipe.descricao AS EQUIPE'
      
        'from despadic left join equipe on despadic.cod_equipe = equipe.c' +
        'od_equipe'
      '')
    Left = 344
    Top = 318
    object TRel3COD_GERADOR: TIntegerField
      FieldName = 'COD_GERADOR'
      Origin = 'DESPADIC.COD_GERADOR'
    end
    object TRel3COD_DESPADIC: TIntegerField
      FieldName = 'COD_DESPADIC'
      Origin = 'DESPADIC.COD_DESPADIC'
    end
    object TRel3COD_EQUIPE: TIntegerField
      FieldName = 'COD_EQUIPE'
      Origin = 'DESPADIC.COD_EQUIPE'
    end
    object TRel3DESPESA: TIBStringField
      FieldName = 'DESPESA'
      Origin = 'DESPADIC.DESPESA'
      Size = 40
    end
    object TRel3VLRFINAL: TIBBCDField
      FieldName = 'VLRFINAL'
      Origin = 'DESPADIC.VLRFINAL'
      Precision = 18
      Size = 2
    end
    object TRel3VLRTOTFIN: TIBBCDField
      FieldName = 'VLRTOTFIN'
      Origin = 'DESPADIC.VLRTOTFIN'
      Precision = 18
      Size = 2
    end
    object TRel3QTD: TIBBCDField
      FieldName = 'QTD'
      Origin = 'DESPADIC.QTD'
      Precision = 18
      Size = 3
    end
    object TRel3COD_EQUIPE1: TIntegerField
      FieldName = 'COD_EQUIPE1'
      Origin = 'EQUIPE.COD_EQUIPE'
    end
    object TRel3EQUIPE: TIBStringField
      FieldName = 'EQUIPE'
      Origin = 'EQUIPE.DESCRICAO'
      Size = 40
    end
    object TRel3DESCONTO: TIBBCDField
      FieldName = 'DESCONTO'
      Origin = 'DESPADIC.DESCONTO'
      Precision = 4
      Size = 2
    end
  end
  object DRel3: TDataSource
    DataSet = TRel3
    Left = 344
    Top = 368
  end
  object TRel4: TIBQuery
    Tag = 5
    Database = DBEstoque
    Transaction = TransacEstoque
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'select itprodord.cod_ordem, itprodord.qtd, itprodord.total, itpr' +
        'odord.vlrunit, itprodord.cod_ESTOQUE, itprodord.desconto,'
      
        'estoque.cod_estoque, estoque.cod_subprod, subproduto.cod_subprod' +
        'uto, subproduto.descricao AS PRODUTO'
      'from itprodord'
      'left join estoque on itprodord.cod_estoque = estoque.cod_estoque'
      
        'left join subproduto on estoque.cod_subprod = subproduto.cod_sub' +
        'produto')
    Left = 384
    Top = 318
    object TRel4COD_ORDEM: TIntegerField
      FieldName = 'COD_ORDEM'
      Origin = 'ITPRODORD.COD_ORDEM'
    end
    object TRel4QTD: TIBBCDField
      FieldName = 'QTD'
      Origin = 'ITPRODORD.QTD'
      Precision = 18
      Size = 4
    end
    object TRel4TOTAL: TIBBCDField
      FieldName = 'TOTAL'
      Origin = 'ITPRODORD.TOTAL'
      Precision = 18
      Size = 2
    end
    object TRel4VLRUNIT: TIBBCDField
      FieldName = 'VLRUNIT'
      Origin = 'ITPRODORD.VLRUNIT'
      Precision = 18
      Size = 2
    end
    object TRel4COD_ESTOQUE: TIntegerField
      FieldName = 'COD_ESTOQUE'
      Origin = 'ITPRODORD.COD_ESTOQUE'
    end
    object TRel4COD_ESTOQUE1: TIntegerField
      FieldName = 'COD_ESTOQUE1'
      Origin = 'ESTOQUE.COD_ESTOQUE'
    end
    object TRel4COD_SUBPROD: TIntegerField
      FieldName = 'COD_SUBPROD'
      Origin = 'ESTOQUE.COD_SUBPROD'
    end
    object TRel4COD_SUBPRODUTO: TIntegerField
      FieldName = 'COD_SUBPRODUTO'
      Origin = 'SUBPRODUTO.COD_SUBPRODUTO'
    end
    object TRel4PRODUTO: TIBStringField
      FieldName = 'PRODUTO'
      Origin = 'SUBPRODUTO.DESCRICAO'
      Size = 60
    end
    object TRel4DESCONTO: TIBBCDField
      FieldName = 'DESCONTO'
      Origin = 'ITPRODORD.DESCONTO'
      Precision = 18
      Size = 2
    end
  end
  object DSRel4: TDataSource
    DataSet = TRel4
    Left = 384
    Top = 368
  end
  object Alx5: TIBQuery
    Tag = 5
    Database = DBEstoque
    Transaction = TransacEstoque
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'select equipamento.descricao as EQUIPAMENTO, equipamento.cod_equ' +
        'ipamento, equipamento.placa, equipamento.num_frota, equipamento.' +
        'cod_cliente, ordem.status,'
      
        'ordem.cod_cliente, ordem.cod_ordem, ordem.cod_funcionario, ORDEM' +
        '.NUMERO, ORDEM.DTABERT, itens_locacao.valortotkm, itens_locacao.' +
        'vlrkm_cobrado,'
      'itens_locacao.data,'
      
        'itens_locacao.hrs_normais, itens_locacao.hrs_extras, itens_locac' +
        'ao.vlrserv_cobrado, itens_locacao.vlr_extra, ITENS_LOCACAO.VALOR' +
        'TOTHRS, itens_locacao.km_total, ordem.totajudante,'
      'pessoa.cod_pessoa, cliente.cod_pessoa, pessoa.nome'
      'from ORDEM'
      
        'left join itens_locacao on ordem.cod_ordem = itens_locacao.cod_o' +
        'rdem'
      
        'left join equipamento on itens_locacao.cod_equipamento = equipam' +
        'ento.cod_equipamento'
      'left join cliente on ordem.cod_cliente = cliente.cod_cliente'
      'left join pessoa on cliente.cod_pessoa = pessoa.cod_pessoa')
    Left = 584
  end
  object DsAlx5: TDataSource
    DataSet = Alx5
    Left = 616
  end
  object TMotoristaVeiculo: TIBQuery
    Database = DBEstoque
    Transaction = TransacEstoque
    AutoCalcFields = False
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'Select  *    from  MOTORISTAVEICULO')
    UpdateObject = UMotoristaVeiculo
    GeneratorField.Field = 'COD_ESTOQUE'
    Left = 555
    Top = 185
    object TMotoristaVeiculoCOD_MOTORISTAVEICULO: TIntegerField
      FieldName = 'COD_MOTORISTAVEICULO'
      Origin = 'MOTORISTAVEICULO.COD_MOTORISTAVEICULO'
    end
    object TMotoristaVeiculoCOD_PEDVENDA: TIntegerField
      FieldName = 'COD_PEDVENDA'
      Origin = 'MOTORISTAVEICULO.COD_PEDVENDA'
    end
    object TMotoristaVeiculoCOD_EQUIPAMENTO: TIntegerField
      FieldName = 'COD_EQUIPAMENTO'
      Origin = 'MOTORISTAVEICULO.COD_EQUIPAMENTO'
    end
    object TMotoristaVeiculoCOD_FUNCIONARIO: TIntegerField
      FieldName = 'COD_FUNCIONARIO'
      Origin = 'MOTORISTAVEICULO.COD_FUNCIONARIO'
    end
    object TMotoristaVeiculoDTENTRADA: TDateField
      FieldName = 'DTENTRADA'
      Origin = 'MOTORISTAVEICULO.DTENTRADA'
    end
    object TMotoristaVeiculoDTSAIDA: TDateField
      FieldName = 'DTSAIDA'
      Origin = 'MOTORISTAVEICULO.DTSAIDA'
    end
    object TMotoristaVeiculoHRENTRADA: TTimeField
      FieldName = 'HRENTRADA'
      Origin = 'MOTORISTAVEICULO.HRENTRADA'
    end
    object TMotoristaVeiculoHRSAIDA: TTimeField
      FieldName = 'HRSAIDA'
      Origin = 'MOTORISTAVEICULO.HRSAIDA'
    end
    object TMotoristaVeiculoTARA: TIBBCDField
      FieldName = 'TARA'
      Origin = 'MOTORISTAVEICULO.TARA'
      Precision = 18
      Size = 4
    end
  end
  object UMotoristaVeiculo: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  COD_MOTORISTAVEICULO,'
      '  COD_PEDVENDA,'
      '  COD_EQUIPAMENTO,'
      '  COD_FUNCIONARIO,'
      '  DTENTRADA,'
      '  DTSAIDA,'
      '  HRENTRADA,'
      '  HRSAIDA,'
      '  TARA'
      'from MOTORISTAVEICULO '
      'where'
      '  COD_MOTORISTAVEICULO = :COD_MOTORISTAVEICULO')
    ModifySQL.Strings = (
      'update MOTORISTAVEICULO'
      'set'
      '  COD_MOTORISTAVEICULO = :COD_MOTORISTAVEICULO,'
      '  COD_PEDVENDA = :COD_PEDVENDA,'
      '  COD_EQUIPAMENTO = :COD_EQUIPAMENTO,'
      '  COD_FUNCIONARIO = :COD_FUNCIONARIO,'
      '  DTENTRADA = :DTENTRADA,'
      '  DTSAIDA = :DTSAIDA,'
      '  HRENTRADA = :HRENTRADA,'
      '  HRSAIDA = :HRSAIDA,'
      '  TARA = :TARA'
      'where'
      '  COD_MOTORISTAVEICULO = :OLD_COD_MOTORISTAVEICULO')
    InsertSQL.Strings = (
      'insert into MOTORISTAVEICULO'
      
        '  (COD_MOTORISTAVEICULO, COD_PEDVENDA, COD_EQUIPAMENTO, COD_FUNC' +
        'IONARIO, '
      '   DTENTRADA, DTSAIDA, HRENTRADA, HRSAIDA, TARA)'
      'values'
      
        '  (:COD_MOTORISTAVEICULO, :COD_PEDVENDA, :COD_EQUIPAMENTO, :COD_' +
        'FUNCIONARIO, '
      '   :DTENTRADA, :DTSAIDA, :HRENTRADA, :HRSAIDA, :TARA)')
    DeleteSQL.Strings = (
      'delete from MOTORISTAVEICULO'
      'where'
      '  COD_MOTORISTAVEICULO = :OLD_COD_MOTORISTAVEICULO')
    Left = 556
    Top = 230
  end
  object DMotoristaVeiculo: TDataSource
    DataSet = TMotoristaVeiculo
    Left = 556
    Top = 273
  end
  object CDS: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    FileName = 'C:\PRODUTOS.XML'
    FieldDefs = <
      item
        Name = 'CI_SUBPRODUTO'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'CODCOMPOSTO'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'CLASSIFICACAO'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'CONTRINT'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'SUBPRODUTO'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'REFERENCIA'
        DataType = ftString
        Size = 25
      end
      item
        Name = 'MARCA'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'ESTFISICO'
        DataType = ftFloat
      end
      item
        Name = 'BONIFICACAO'
        DataType = ftBCD
        Precision = 18
        Size = 2
      end
      item
        Name = 'DATA'
        DataType = ftDate
      end
      item
        Name = 'ESTRESERV'
        DataType = ftFloat
      end
      item
        Name = 'ESTPED'
        DataType = ftFloat
      end
      item
        Name = 'ESTSALDO'
        DataType = ftFloat
      end
      item
        Name = 'VENDVARV'
        DataType = ftBCD
        Precision = 18
        Size = 2
      end
      item
        Name = 'VENDVARP'
        DataType = ftBCD
        Precision = 18
        Size = 2
      end
      item
        Name = 'VALUNIT'
        DataType = ftBCD
        Precision = 18
        Size = 2
      end
      item
        Name = 'VALREP'
        DataType = ftBCD
        Precision = 18
        Size = 2
      end
      item
        Name = 'LUCRATIVIDADE'
        DataType = ftBCD
        Precision = 18
        Size = 2
      end
      item
        Name = 'COD_LOJA'
        DataType = ftInteger
      end
      item
        Name = 'CI_PRODUTO'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'PRODUTO'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'CI_GRUPO'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'GRUPO'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'CI_SUBGRUPO'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'SUBGRUPO'
        DataType = ftString
        Size = 100
      end>
    IndexDefs = <>
    Params = <>
    ProviderName = 'DSP'
    StoreDefs = True
    Left = 448
    Top = 328
  end
  object DSP: TDataSetProvider
    DataSet = TRel
    ResolveToDataSet = True
    Left = 448
    Top = 376
  end
  object DataSource1: TDataSource
    DataSet = TRel
    Left = 448
    Top = 424
  end
  object WSimilar: TIBQuery
    Database = DBEstoque
    Transaction = TransacEstoque
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'SELECT * FROM VWSIMILAR')
    Left = 80
    Top = 320
    object WSimilarCOD_SUBPRODUTO: TIntegerField
      FieldName = 'COD_SUBPRODUTO'
      Origin = 'VWSIMILAR.COD_SUBPRODUTO'
    end
    object WSimilarCODCOMPOSTO: TIBStringField
      FieldName = 'CODCOMPOSTO'
      Origin = 'VWSIMILAR.CODCOMPOSTO'
    end
    object WSimilarCODBARRA: TIBStringField
      FieldName = 'CODBARRA'
      Origin = 'VWSIMILAR.CODBARRA'
      Size = 30
    end
    object WSimilarMARCA: TIBStringField
      FieldName = 'MARCA'
      Origin = 'VWSIMILAR.MARCA'
      Size = 40
    end
    object WSimilarCOD_INTERNO: TIBStringField
      FieldName = 'COD_INTERNO'
      Origin = 'VWSIMILAR.COD_INTERNO'
      Size = 10
    end
    object WSimilarCOD_PRODUTO: TIntegerField
      FieldName = 'COD_PRODUTO'
      Origin = 'VWSIMILAR.COD_PRODUTO'
    end
    object WSimilarCOD_ESTOQUE: TIntegerField
      FieldName = 'COD_ESTOQUE'
      Origin = 'VWSIMILAR.COD_ESTOQUE'
    end
    object WSimilarCOD_LOJA: TIntegerField
      FieldName = 'COD_LOJA'
      Origin = 'VWSIMILAR.COD_LOJA'
    end
    object WSimilarULTCOMPRA: TDateField
      FieldName = 'ULTCOMPRA'
      Origin = 'VWSIMILAR.ULTCOMPRA'
    end
    object WSimilarULTVENDA: TDateField
      FieldName = 'ULTVENDA'
      Origin = 'VWSIMILAR.ULTVENDA'
    end
    object WSimilarESTFISICO: TFloatField
      FieldName = 'ESTFISICO'
      Origin = 'VWSIMILAR.ESTFISICO'
      DisplayFormat = '#,###,####0.0000'
      EditFormat = '#,##0.####'
    end
    object WSimilarVENDVARP: TIBBCDField
      FieldName = 'VENDVARP'
      Origin = 'VWSIMILAR.VENDVARP'
      DisplayFormat = '#,###,##0.00'
      Precision = 18
      Size = 2
    end
    object WSimilarVANDATAP: TIBBCDField
      FieldName = 'VANDATAP'
      Origin = 'VWSIMILAR.VANDATAP'
      DisplayFormat = '#,###,##0.00'
      Precision = 18
      Size = 2
    end
    object WSimilarVENDATAV: TIBBCDField
      FieldName = 'VENDATAV'
      Origin = 'VWSIMILAR.VENDATAV'
      DisplayFormat = '#,###,##0.00'
      Precision = 18
      Size = 2
    end
    object WSimilarVENDVARV: TIBBCDField
      FieldName = 'VENDVARV'
      Origin = 'VWSIMILAR.VENDVARV'
      DisplayFormat = '#,###,##0.00'
      Precision = 18
      Size = 2
    end
    object WSimilarCODFABRICANTE: TIBStringField
      FieldName = 'CODFABRICANTE'
      Origin = 'VWSIMILAR.CODFABRICANTE'
      Size = 25
    end
    object WSimilarCONTRINT: TIBStringField
      FieldName = 'CONTRINT'
      Origin = 'VWSIMILAR.CONTRINT'
      Size = 15
    end
    object WSimilarVLRBONIFIC: TIBBCDField
      FieldName = 'VLRBONIFIC'
      Origin = 'VWSIMILAR.VLRBONIFIC'
      Precision = 18
      Size = 2
    end
    object WSimilarESPECIFICACAO: TIBStringField
      FieldName = 'ESPECIFICACAO'
      Origin = 'VWSIMILAR.ESPECIFICACAO'
      Size = 100
    end
    object WSimilarMARK: TIBStringField
      FieldName = 'MARK'
      Origin = 'VWSIMILAR.MARK'
      FixedChar = True
      Size = 1
    end
    object WSimilarVLRUNITCOMPRA: TIBBCDField
      FieldName = 'VLRUNITCOMPRA'
      Origin = 'VWSIMILAR.VLRUNITCOMPRA'
      DisplayFormat = '#,###,##0.00'
      Precision = 18
      Size = 2
    end
    object WSimilarLOCALESTANTE: TIBStringField
      FieldName = 'LOCALESTANTE'
      Origin = 'VWSIMILAR.LOCALESTANTE'
      FixedChar = True
      Size = 10
    end
    object WSimilarESTLOJA: TIBBCDField
      FieldName = 'ESTLOJA'
      Origin = 'VWSIMILAR.ESTLOJA'
      Precision = 18
      Size = 3
    end
    object WSimilarDESCRICAO: TIBStringField
      FieldName = 'DESCRICAO'
      Origin = 'VWSIMILAR.DESCRICAO'
      Size = 120
    end
    object WSimilarATIVO: TIBStringField
      FieldName = 'ATIVO'
      Origin = 'VWSIMILAR.ATIVO'
      FixedChar = True
      Size = 1
    end
    object WSimilarIPI: TFloatField
      FieldName = 'IPI'
      Origin = 'VWSIMILAR.IPI'
    end
    object WSimilarST: TIBBCDField
      FieldName = 'ST'
      Origin = 'VWSIMILAR.ST'
      Precision = 18
      Size = 2
    end
    object WSimilarESTOQUE4CASAS: TIBStringField
      FieldName = 'ESTOQUE4CASAS'
      Origin = 'VWSIMILAR.ESTOQUE4CASAS'
      Size = 15
    end
    object WSimilarVLRCUSTONFE: TIBBCDField
      FieldName = 'VLRCUSTONFE'
      Origin = 'VWSIMILAR.VLRCUSTONFE'
      DisplayFormat = '#,###,##0.00'
      Precision = 18
      Size = 2
    end
  end
  object TNcm: TIBQuery
    Database = DBEstoque
    Transaction = TransacEstoque
    AutoCalcFields = False
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'Select  *    from  NCM')
    UpdateObject = UNcm
    GeneratorField.Field = 'COD_ESTOQUE'
    Left = 491
    Top = 185
    object TNcmNCM: TIBStringField
      FieldName = 'NCM'
      Origin = 'NCM.NCM'
      Required = True
      FixedChar = True
      Size = 8
    end
    object TNcmDESCRICAO: TIBStringField
      FieldName = 'DESCRICAO'
      Origin = 'NCM.DESCRICAO'
      Size = 1100
    end
    object TNcmALIQTOTALTRIBUTANAC: TIBBCDField
      FieldName = 'ALIQTOTALTRIBUTANAC'
      Origin = 'NCM.ALIQTOTALTRIBUTANAC'
      Precision = 18
      Size = 2
    end
    object TNcmALIQTOTALTRIBUTAIMP: TIBBCDField
      FieldName = 'ALIQTOTALTRIBUTAIMP'
      Origin = 'NCM.ALIQTOTALTRIBUTAIMP'
      Precision = 18
      Size = 2
    end
    object TNcmVALORAPROXTRIBUTACAO: TIBBCDField
      FieldName = 'VALORAPROXTRIBUTACAO'
      Origin = 'NCM.VALORAPROXTRIBUTACAO'
      Precision = 18
      Size = 2
    end
    object TNcmALIQTOTALTRIBUTAEST: TIBBCDField
      FieldName = 'ALIQTOTALTRIBUTAEST'
      Origin = 'NCM.ALIQTOTALTRIBUTAEST'
      Precision = 18
      Size = 2
    end
    object TNcmCEST: TIBStringField
      FieldName = 'CEST'
      Origin = 'NCM.CEST'
      Size = 10
    end
    object TNcmATIVO: TIBStringField
      FieldName = 'ATIVO'
      Origin = 'NCM.ATIVO'
      FixedChar = True
      Size = 1
    end
  end
  object UNcm: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  NCM,'
      '  DESCRICAO,'
      '  ALIQTOTALTRIBUTANAC,'
      '  ALIQTOTALTRIBUTAIMP,'
      '  ALIQTOTALTRIBUTAEST,'
      '  VALORAPROXTRIBUTACAO,'
      '  CEST,'
      '  ATIVO'
      'from NCM '
      'where'
      '  NCM = :NCM')
    ModifySQL.Strings = (
      'update NCM'
      'set'
      '  NCM = :NCM,'
      '  DESCRICAO = :DESCRICAO,'
      '  ALIQTOTALTRIBUTANAC = :ALIQTOTALTRIBUTANAC,'
      '  ALIQTOTALTRIBUTAIMP = :ALIQTOTALTRIBUTAIMP,'
      '  ALIQTOTALTRIBUTAEST = :ALIQTOTALTRIBUTAEST,'
      '  VALORAPROXTRIBUTACAO = :VALORAPROXTRIBUTACAO,'
      '  CEST = :CEST,'
      '  ATIVO = :ATIVO'
      'where'
      '  NCM = :OLD_NCM')
    InsertSQL.Strings = (
      'insert into NCM'
      '  (NCM, DESCRICAO, ALIQTOTALTRIBUTANAC, ALIQTOTALTRIBUTAIMP, '
      'ALIQTOTALTRIBUTAEST, '
      '   VALORAPROXTRIBUTACAO, CEST, ATIVO)'
      'values'
      
        '  (:NCM, :DESCRICAO, :ALIQTOTALTRIBUTANAC, :ALIQTOTALTRIBUTAIMP,' +
        ' '
      ':ALIQTOTALTRIBUTAEST, '
      '   :VALORAPROXTRIBUTACAO, :CEST, :ATIVO)')
    DeleteSQL.Strings = (
      'delete from NCM'
      'where'
      '  NCM = :OLD_NCM')
    Left = 492
    Top = 230
  end
  object DNcm: TDataSource
    DataSet = TNcm
    Left = 492
    Top = 273
  end
  object TVendaAgrupada: TIBQuery
    Database = DBEstoque
    Transaction = TransacEstoque
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from VENDAAGRUPADA')
    UpdateObject = UVendaAgrupada
    Left = 640
    Top = 184
    object TVendaAgrupadaCOD_VENDAAGRUPADA: TIntegerField
      FieldName = 'COD_VENDAAGRUPADA'
      Origin = 'VENDAAGRUPADA.COD_VENDAAGRUPADA'
      Required = True
    end
  end
  object UVendaAgrupada: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  COD_VENDAAGRUPADA'
      'from VENDAAGRUPADA '
      'where'
      '  COD_VENDAAGRUPADA = :COD_VENDAAGRUPADA')
    ModifySQL.Strings = (
      'update VENDAAGRUPADA'
      'set'
      '  COD_VENDAAGRUPADA = :COD_VENDAAGRUPADA'
      'where'
      '  COD_VENDAAGRUPADA = :OLD_COD_VENDAAGRUPADA')
    InsertSQL.Strings = (
      'insert into VENDAAGRUPADA'
      '  (COD_VENDAAGRUPADA)'
      'values'
      '  (:COD_VENDAAGRUPADA)')
    DeleteSQL.Strings = (
      'delete from VENDAAGRUPADA'
      'where'
      '  COD_VENDAAGRUPADA = :OLD_COD_VENDAAGRUPADA')
    Left = 640
    Top = 232
  end
  object DVendaAgrupada: TDataSource
    DataSet = TVendaAgrupada
    Left = 640
    Top = 280
  end
  object TItemVenAg: TIBQuery
    Database = DBEstoque
    Transaction = TransacEstoque
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from ITENSVENDAAGRUPADA')
    UpdateObject = UItemVenAg
    Left = 600
    Top = 48
    object TItemVenAgCOD_ITENVENDAAGRUP: TIntegerField
      FieldName = 'COD_ITENVENDAAGRUP'
      Origin = 'ITENSVENDAAGRUPADA.COD_ITENVENDAAGRUP'
    end
    object TItemVenAgCOD_VENDAAGRUPADA: TIntegerField
      FieldName = 'COD_VENDAAGRUPADA'
      Origin = 'ITENSVENDAAGRUPADA.COD_VENDAAGRUPADA'
    end
    object TItemVenAgCOD_ESTOQUE: TIntegerField
      FieldName = 'COD_ESTOQUE'
      Origin = 'ITENSVENDAAGRUPADA.COD_ESTOQUE'
    end
    object TItemVenAgQUANTIDADE: TIntegerField
      FieldName = 'QUANTIDADE'
      Origin = 'ITENSVENDAAGRUPADA.QUANTIDADE'
    end
  end
  object UItemVenAg: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  COD_ITENVENDAAGRUP,'
      '  COD_VENDAAGRUPADA,'
      '  COD_ESTOQUE,'
      '  QUANTIDADE'
      'from ITENSVENDAAGRUPADA '
      'where'
      '  COD_ITENVENDAAGRUP = :COD_ITENVENDAAGRUP')
    ModifySQL.Strings = (
      'update ITENSVENDAAGRUPADA'
      'set'
      '  COD_ITENVENDAAGRUP = :COD_ITENVENDAAGRUP,'
      '  COD_VENDAAGRUPADA = :COD_VENDAAGRUPADA,'
      '  COD_ESTOQUE = :COD_ESTOQUE,'
      '  QUANTIDADE = :QUANTIDADE'
      'where'
      '  COD_ITENVENDAAGRUP = :OLD_COD_ITENVENDAAGRUP')
    InsertSQL.Strings = (
      'insert into ITENSVENDAAGRUPADA'
      '  (COD_ITENVENDAAGRUP, COD_VENDAAGRUPADA, COD_ESTOQUE, '
      'QUANTIDADE)'
      'values'
      '  (:COD_ITENVENDAAGRUP, :COD_VENDAAGRUPADA, :COD_ESTOQUE, '
      ':QUANTIDADE)')
    DeleteSQL.Strings = (
      'delete from ITENSVENDAAGRUPADA'
      'where'
      '  COD_ITENVENDAAGRUP = :OLD_COD_ITENVENDAAGRUP')
    Left = 600
    Top = 96
  end
  object DItemVenAg: TDataSource
    DataSet = TItemVenAg
    Left = 600
    Top = 144
  end
  object DEstoqueLote: TDataSource
    DataSet = TEstoqueLote
    Left = 552
    Top = 432
  end
  object UEstoqueLote: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  COD_ESTOQUELOTE,'
      '  COD_ESTOQUE,'
      '  COD_LOTE,'
      '  QUANTIDADE'
      'from ESTOQUELOTE '
      'where'
      '  COD_ESTOQUELOTE = :COD_ESTOQUELOTE')
    ModifySQL.Strings = (
      'update ESTOQUELOTE'
      'set'
      '  COD_ESTOQUELOTE = :COD_ESTOQUELOTE,'
      '  COD_ESTOQUE = :COD_ESTOQUE,'
      '  COD_LOTE = :COD_LOTE,'
      '  QUANTIDADE = :QUANTIDADE'
      'where'
      '  COD_ESTOQUELOTE = :OLD_COD_ESTOQUELOTE')
    InsertSQL.Strings = (
      'insert into ESTOQUELOTE'
      '  (COD_ESTOQUELOTE, COD_ESTOQUE, COD_LOTE, QUANTIDADE)'
      'values'
      '  (:COD_ESTOQUELOTE, :COD_ESTOQUE, :COD_LOTE, :QUANTIDADE)')
    DeleteSQL.Strings = (
      'delete from ESTOQUELOTE'
      'where'
      '  COD_ESTOQUELOTE = :OLD_COD_ESTOQUELOTE')
    Left = 552
    Top = 384
  end
  object TEstoqueLote: TIBQuery
    Database = DBEstoque
    Transaction = TransacEstoque
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from ESTOQUELOTE')
    UpdateObject = UEstoqueLote
    Left = 552
    Top = 336
    object TEstoqueLoteCOD_ESTOQUELOTE: TIntegerField
      FieldName = 'COD_ESTOQUELOTE'
      Origin = 'ESTOQUELOTE.COD_ESTOQUELOTE'
    end
    object TEstoqueLoteCOD_ESTOQUE: TIntegerField
      FieldName = 'COD_ESTOQUE'
      Origin = 'ESTOQUELOTE.COD_ESTOQUE'
    end
    object TEstoqueLoteCOD_LOTE: TIntegerField
      FieldName = 'COD_LOTE'
      Origin = 'ESTOQUELOTE.COD_LOTE'
    end
    object TEstoqueLoteQUANTIDADE: TIBBCDField
      FieldName = 'QUANTIDADE'
      Origin = 'ESTOQUELOTE.QUANTIDADE'
      Precision = 18
      Size = 3
    end
  end
  object DProducaoLote: TDataSource
    DataSet = TProducaoLote
    Left = 640
    Top = 432
  end
  object UProducaoLote: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  COD_PRODUCAOLOTE,'
      '  QUANTSAIDA,'
      '  QUANTENT,'
      '  COD_LOTE_ENT,'
      '  COD_LOTE_SAIDA,'
      '  DATA,'
      '  CODUSUARIO'
      'from PRODUCAOLOTE '
      'where'
      '  COD_PRODUCAOLOTE = :COD_PRODUCAOLOTE')
    ModifySQL.Strings = (
      'update PRODUCAOLOTE'
      'set'
      '  COD_PRODUCAOLOTE = :COD_PRODUCAOLOTE,'
      '  QUANTSAIDA = :QUANTSAIDA,'
      '  QUANTENT = :QUANTENT,'
      '  COD_LOTE_ENT = :COD_LOTE_ENT,'
      '  COD_LOTE_SAIDA = :COD_LOTE_SAIDA,'
      '  DATA = :DATA,'
      '  CODUSUARIO = :CODUSUARIO'
      'where'
      '  COD_PRODUCAOLOTE = :OLD_COD_PRODUCAOLOTE')
    InsertSQL.Strings = (
      'insert into PRODUCAOLOTE'
      '  (COD_PRODUCAOLOTE, QUANTSAIDA, QUANTENT, COD_LOTE_ENT, '
      'COD_LOTE_SAIDA, '
      '   DATA, CODUSUARIO)'
      'values'
      '  (:COD_PRODUCAOLOTE, :QUANTSAIDA, :QUANTENT, :COD_LOTE_ENT, '
      ':COD_LOTE_SAIDA, '
      '   :DATA, :CODUSUARIO)')
    DeleteSQL.Strings = (
      'delete from PRODUCAOLOTE'
      'where'
      '  COD_PRODUCAOLOTE = :OLD_COD_PRODUCAOLOTE')
    Left = 640
    Top = 384
  end
  object TProducaoLote: TIBQuery
    Database = DBEstoque
    Transaction = TransacEstoque
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from PRODUCAOLOTE')
    UpdateObject = UProducaoLote
    Left = 640
    Top = 336
    object TProducaoLoteCOD_PRODUCAOLOTE: TIntegerField
      FieldName = 'COD_PRODUCAOLOTE'
      Origin = 'PRODUCAOLOTE.COD_PRODUCAOLOTE'
    end
    object TProducaoLoteQUANTSAIDA: TIBBCDField
      FieldName = 'QUANTSAIDA'
      Origin = 'PRODUCAOLOTE.QUANTSAIDA'
      Precision = 18
      Size = 3
    end
    object TProducaoLoteQUANTENT: TIBBCDField
      FieldName = 'QUANTENT'
      Origin = 'PRODUCAOLOTE.QUANTENT'
      Precision = 18
      Size = 3
    end
    object TProducaoLoteCOD_LOTE_ENT: TIntegerField
      FieldName = 'COD_LOTE_ENT'
      Origin = 'PRODUCAOLOTE.COD_LOTE_ENT'
    end
    object TProducaoLoteCOD_LOTE_SAIDA: TIntegerField
      FieldName = 'COD_LOTE_SAIDA'
      Origin = 'PRODUCAOLOTE.COD_LOTE_SAIDA'
    end
    object TProducaoLoteDATA: TDateField
      FieldName = 'DATA'
      Origin = 'PRODUCAOLOTE.DATA'
    end
    object TProducaoLoteCODUSUARIO: TIntegerField
      FieldName = 'CODUSUARIO'
      Origin = 'PRODUCAOLOTE.CODUSUARIO'
    end
  end
  object DsMdoSlq01: TDataSource
    Left = 240
    Top = 444
  end
  object DsMdoSql02: TDataSource
    Left = 320
    Top = 444
  end
  object TFichaTecnica: TIBQuery
    Database = DBEstoque
    Transaction = TransacEstoque
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select first 1 * from FICHATECNICA')
    UpdateObject = UFichaTecnica
    Left = 252
    Top = 181
    object TFichaTecnicaCOD_SETOR: TIntegerField
      FieldName = 'COD_SETOR'
      Origin = 'FICHATECNICA.COD_SETOR'
      Required = True
    end
    object TFichaTecnicaCOD_ESTOQUE: TIntegerField
      FieldName = 'COD_ESTOQUE'
      Origin = 'FICHATECNICA.COD_ESTOQUE'
    end
  end
  object UFichaTecnica: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  COD_SETOR,'
      '  COD_ESTOQUE'
      'from FICHATECNICA '
      'where'
      '  COD_SETOR = :COD_SETOR')
    ModifySQL.Strings = (
      'update FICHATECNICA'
      'set'
      '  COD_SETOR = :COD_SETOR,'
      '  COD_ESTOQUE = :COD_ESTOQUE'
      'where'
      '  COD_SETOR = :OLD_COD_SETOR')
    InsertSQL.Strings = (
      'insert into FICHATECNICA'
      '  (COD_SETOR, COD_ESTOQUE)'
      'values'
      '  (:COD_SETOR, :COD_ESTOQUE)')
    DeleteSQL.Strings = (
      'delete from FICHATECNICA'
      'where'
      '  COD_SETOR = :OLD_COD_SETOR')
    Left = 252
    Top = 224
  end
  object DFichaTecnica: TDataSource
    DataSet = TFichaTecnica
    Left = 252
    Top = 270
  end
  object TSetorProducao: TIBQuery
    Database = DBEstoque
    Transaction = TransacEstoque
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'SELECT FIRST 1 * FROM SETORPRODUCAO')
    UpdateObject = USetorProducao
    Left = 331
    Top = 183
    object TSetorProducaoCOD_SETORPRODUCAO: TIntegerField
      FieldName = 'COD_SETORPRODUCAO'
      Origin = 'SETORPRODUCAO.COD_SETORPRODUCAO'
      Required = True
    end
    object TSetorProducaoDESCRICAO: TIBStringField
      FieldName = 'DESCRICAO'
      Origin = 'SETORPRODUCAO.DESCRICAO'
      Size = 700
    end
  end
  object USetorProducao: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  COD_SETORPRODUCAO,'
      '  DESCRICAO'
      'from SETORPRODUCAO '
      'where'
      '  COD_SETORPRODUCAO = :COD_SETORPRODUCAO')
    ModifySQL.Strings = (
      'update SETORPRODUCAO'
      'set'
      '  COD_SETORPRODUCAO = :COD_SETORPRODUCAO,'
      '  DESCRICAO = :DESCRICAO'
      'where'
      '  COD_SETORPRODUCAO = :OLD_COD_SETORPRODUCAO')
    InsertSQL.Strings = (
      'insert into SETORPRODUCAO'
      '  (COD_SETORPRODUCAO, DESCRICAO)'
      'values'
      '  (:COD_SETORPRODUCAO, :DESCRICAO)')
    DeleteSQL.Strings = (
      'delete from SETORPRODUCAO'
      'where'
      '  COD_SETORPRODUCAO = :OLD_COD_SETORPRODUCAO')
    Left = 331
    Top = 224
  end
  object DSetorProducao: TDataSource
    DataSet = TSetorProducao
    Left = 331
    Top = 272
  end
  object TItemFichaTecnica: TIBQuery
    Database = DBEstoque
    Transaction = TransacEstoque
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'SELECT FIRST 1 * FROM ITEMFICHATECNICA')
    UpdateObject = UItemFichaTecnica
    Left = 419
    Top = 182
    object TItemFichaTecnicaCOD_ITEMFICHATECNICA: TIntegerField
      FieldName = 'COD_ITEMFICHATECNICA'
      Origin = 'ITEMFICHATECNICA.COD_ITEMFICHATECNICA'
      Required = True
    end
    object TItemFichaTecnicaCOD_ESTOQUE: TIntegerField
      FieldName = 'COD_ESTOQUE'
      Origin = 'ITEMFICHATECNICA.COD_ESTOQUE'
    end
    object TItemFichaTecnicaCOD_SETORPRODUCAO: TIntegerField
      FieldName = 'COD_SETORPRODUCAO'
      Origin = 'ITEMFICHATECNICA.COD_SETORPRODUCAO'
    end
    object TItemFichaTecnicaQUANTIDADE: TIBBCDField
      FieldName = 'QUANTIDADE'
      Origin = 'ITEMFICHATECNICA.QUANTIDADE'
      Precision = 18
      Size = 2
    end
    object TItemFichaTecnicaCOD_FICHATECNICA: TIntegerField
      FieldName = 'COD_FICHATECNICA'
      Origin = 'ITEMFICHATECNICA.COD_FICHATECNICA'
    end
  end
  object UItemFichaTecnica: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  COD_ITEMFICHATECNICA,'
      '  COD_ESTOQUE,'
      '  COD_SETORPRODUCAO,'
      '  COD_FICHATECNICA,'
      '  QUANTIDADE'
      'from ITEMFICHATECNICA '
      'where'
      '  COD_ITEMFICHATECNICA = :COD_ITEMFICHATECNICA')
    ModifySQL.Strings = (
      'update ITEMFICHATECNICA'
      'set'
      '  COD_ITEMFICHATECNICA = :COD_ITEMFICHATECNICA,'
      '  COD_ESTOQUE = :COD_ESTOQUE,'
      '  COD_SETORPRODUCAO = :COD_SETORPRODUCAO,'
      '  COD_FICHATECNICA = :COD_FICHATECNICA,'
      '  QUANTIDADE = :QUANTIDADE  '
      'where'
      '  COD_ITEMFICHATECNICA = :OLD_COD_ITEMFICHATECNICA')
    InsertSQL.Strings = (
      'insert into ITEMFICHATECNICA'
      '  (COD_ITEMFICHATECNICA, COD_ESTOQUE, COD_SETORPRODUCAO, '
      'COD_FICHATECNICA, '
      '   QUANTIDADE)'
      'values'
      '  (:COD_ITEMFICHATECNICA, :COD_ESTOQUE, :COD_SETORPRODUCAO, '
      ':COD_FICHATECNICA, '
      '   :QUANTIDADE)')
    DeleteSQL.Strings = (
      'delete from ITEMFICHATECNICA'
      'where'
      '  COD_ITEMFICHATECNICA = :OLD_COD_ITEMFICHATECNICA')
    Left = 419
    Top = 225
  end
  object DItemFichaTecnica: TDataSource
    DataSet = TItemFichaTecnica
    Left = 419
    Top = 273
  end
  object TItensExp: TIBQuery
    Database = DBEstoque
    Transaction = TransacEstoque
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from ITENSEXP')
    UpdateObject = UItensExp
    Left = 14
    Top = 512
    object TItensExpCOD_ITENSEXP: TIntegerField
      FieldName = 'COD_ITENSEXP'
      Origin = 'ITENSEXP.COD_ITENSEXP'
      Required = True
    end
    object TItensExpCOD_ITENSPEDVEN: TIntegerField
      FieldName = 'COD_ITENSPEDVEN'
      Origin = 'ITENSEXP.COD_ITENSPEDVEN'
      Required = True
    end
    object TItensExpCONTRINT: TIBStringField
      FieldName = 'CONTRINT'
      Origin = 'ITENSEXP.CONTRINT'
      Size = 15
    end
    object TItensExpQTDENTREGUE: TIBBCDField
      FieldName = 'QTDENTREGUE'
      Origin = 'ITENSEXP.QTDENTREGUE'
      Precision = 18
      Size = 3
    end
    object TItensExpQTDDISPONIVEL: TIBBCDField
      FieldName = 'QTDDISPONIVEL'
      Origin = 'ITENSEXP.QTDDISPONIVEL'
      Precision = 18
      Size = 3
    end
    object TItensExpDESCRICAO: TIBStringField
      FieldName = 'DESCRICAO'
      Origin = 'ITENSEXP.DESCRICAO'
      Size = 60
    end
    object TItensExpCODBARRA: TIBStringField
      FieldName = 'CODBARRA'
      Origin = 'ITENSEXP.CODBARRA'
      Size = 30
    end
    object TItensExpCOD_PEDVEN: TIntegerField
      FieldName = 'COD_PEDVEN'
      Origin = 'ITENSEXP.COD_PEDVEN'
      Required = True
    end
    object TItensExpCOD_ESTOQUE: TIntegerField
      FieldName = 'COD_ESTOQUE'
      Origin = 'ITENSEXP.COD_ESTOQUE'
    end
  end
  object UItensExp: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  COD_ITENSEXP,'
      '  COD_ITENSPEDVEN,'
      '  CONTRINT,'
      '  QTDENTREGUE,'
      '  QTDDISPONIVEL,'
      '  DESCRICAO,'
      '  CODBARRA,'
      '  COD_PEDVEN,'
      '  COD_ESTOQUE'
      'from ITENSEXP '
      'where'
      '  COD_ITENSEXP = :COD_ITENSEXP')
    ModifySQL.Strings = (
      'update ITENSEXP'
      'set'
      '  COD_ITENSEXP = :COD_ITENSEXP,'
      '  COD_ITENSPEDVEN = :COD_ITENSPEDVEN,'
      '  CONTRINT = :CONTRINT,'
      '  QTDENTREGUE = :QTDENTREGUE,'
      '  QTDDISPONIVEL = :QTDDISPONIVEL,'
      '  DESCRICAO = :DESCRICAO,'
      '  CODBARRA = :CODBARRA,'
      '  COD_PEDVEN = :COD_PEDVEN,'
      '  COD_ESTOQUE = :COD_ESTOQUE'
      'where'
      '  COD_ITENSEXP = :OLD_COD_ITENSEXP')
    InsertSQL.Strings = (
      'insert into ITENSEXP'
      '  (COD_ITENSEXP, COD_ITENSPEDVEN, CONTRINT, QTDENTREGUE, '
      'QTDDISPONIVEL, '
      '   DESCRICAO, CODBARRA, COD_PEDVEN, COD_ESTOQUE)'
      'values'
      '  (:COD_ITENSEXP, :COD_ITENSPEDVEN, :CONTRINT, :QTDENTREGUE, '
      ':QTDDISPONIVEL, '
      '   :DESCRICAO, :CODBARRA, :COD_PEDVEN, :COD_ESTOQUE)')
    DeleteSQL.Strings = (
      'delete from ITENSEXP'
      'where'
      '  COD_ITENSEXP = :OLD_COD_ITENSEXP')
    Left = 14
    Top = 560
  end
  object DItensExp: TDataSource
    DataSet = TItensExp
    Left = 15
    Top = 608
  end
  object TVolumes: TIBQuery
    Database = DBEstoque
    Transaction = TransacEstoque
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from VOLUMES')
    UpdateObject = UVolumes
    Left = 72
    Top = 512
    object TVolumesCOD_VOLUME: TIntegerField
      FieldName = 'COD_VOLUME'
      Origin = 'VOLUMES.COD_VOLUME'
      Required = True
    end
    object TVolumesCOD_PEDIDO: TIntegerField
      FieldName = 'COD_PEDIDO'
      Origin = 'VOLUMES.COD_PEDIDO'
      Required = True
    end
    object TVolumesDESCRICAO: TIBStringField
      FieldName = 'DESCRICAO'
      Origin = 'VOLUMES.DESCRICAO'
      Size = 30
    end
    object TVolumesSTATUS: TIBStringField
      FieldName = 'STATUS'
    end
    object TVolumesNUMVOLUME: TIntegerField
      FieldName = 'NUMVOLUME'
    end
  end
  object UVolumes: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  COD_VOLUME,'
      '  COD_PEDIDO,'
      '  DESCRICAO,'
      '  STATUS,'
      '  NUMVOLUME'
      'from VOLUMES '
      'where'
      '  COD_VOLUME = :COD_VOLUME')
    ModifySQL.Strings = (
      'update VOLUMES'
      'set'
      '  COD_VOLUME = :COD_VOLUME,'
      '  COD_PEDIDO = :COD_PEDIDO,'
      '  DESCRICAO = :DESCRICAO,'
      '  STATUS = :STATUS,'
      '  NUMVOLUME = :NUMVOLUME'
      'where'
      '  COD_VOLUME = :OLD_COD_VOLUME')
    InsertSQL.Strings = (
      'insert into VOLUMES'
      '  (COD_VOLUME, COD_PEDIDO, DESCRICAO, STATUS, NUMVOLUME)'
      'values'
      '  (:COD_VOLUME, :COD_PEDIDO, :DESCRICAO, :STATUS, :NUMVOLUME)')
    DeleteSQL.Strings = (
      'delete from VOLUMES'
      'where'
      '  COD_VOLUME = :OLD_COD_VOLUME')
    Left = 72
    Top = 568
  end
  object DVolumes: TDataSource
    DataSet = TVolumes
    Left = 72
    Top = 608
  end
  object TItensVolume: TIBQuery
    Database = DBEstoque
    Transaction = TransacEstoque
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from ITENSVOLUME')
    UpdateObject = UItensVolume
    Left = 134
    Top = 512
    object TItensVolumeCOD_ITENSVOLUME: TIntegerField
      FieldName = 'COD_ITENSVOLUME'
      Origin = 'ITENSVOLUME.COD_ITENSVOLUME'
      Required = True
    end
    object TItensVolumeCOD_ITEM: TIntegerField
      FieldName = 'COD_ITEM'
      Origin = 'ITENSVOLUME.COD_ITEM'
      Required = True
    end
    object TItensVolumeQUANTIDADE: TIntegerField
      FieldName = 'QUANTIDADE'
      Origin = 'ITENSVOLUME.QUANTIDADE'
      Required = True
    end
    object TItensVolumeCOD_VOL: TIntegerField
      FieldName = 'COD_VOL'
      Origin = 'ITENSVOLUME.COD_VOL'
      Required = True
    end
  end
  object UItensVolume: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  COD_ITENSVOLUME,'
      '  COD_ITEM,'
      '  QUANTIDADE,'
      '  COD_VOL'
      'from ITENSVOLUME '
      'where'
      '  COD_ITENSVOLUME = :COD_ITENSVOLUME')
    ModifySQL.Strings = (
      'update ITENSVOLUME'
      'set'
      '  COD_ITENSVOLUME = :COD_ITENSVOLUME,'
      '  COD_ITEM = :COD_ITEM,'
      '  QUANTIDADE = :QUANTIDADE,'
      '  COD_VOL = :COD_VOL'
      'where'
      '  COD_ITENSVOLUME = :OLD_COD_ITENSVOLUME')
    InsertSQL.Strings = (
      'insert into ITENSVOLUME'
      '  (COD_ITENSVOLUME, COD_ITEM, QUANTIDADE, COD_VOL)'
      'values'
      '  (:COD_ITENSVOLUME, :COD_ITEM, :QUANTIDADE, :COD_VOL)')
    DeleteSQL.Strings = (
      'delete from ITENSVOLUME'
      'where'
      '  COD_ITENSVOLUME = :OLD_COD_ITENSVOLUME')
    Left = 133
    Top = 560
  end
  object DItensVolume: TDataSource
    DataSet = TItensVolume
    Left = 134
    Top = 608
  end
  object TCustoItemPedido: TIBQuery
    Database = DBEstoque
    Transaction = TransacEstoque
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select  first 1 * from CUSTOITEMPEDIDO')
    UpdateObject = UCustoItemPedido
    Left = 240
    Top = 512
    object TCustoItemPedidoCOD_CUSTOITEMPEDIDO: TIntegerField
      FieldName = 'COD_CUSTOITEMPEDIDO'
      Origin = 'CUSTOITEMPEDIDO.COD_CUSTOITEMPEDIDO'
      Required = True
    end
    object TCustoItemPedidoCOD_CUSTOESTOQUEEMPRESA: TIntegerField
      FieldName = 'COD_CUSTOESTOQUEEMPRESA'
      Origin = 'CUSTOITEMPEDIDO.COD_CUSTOESTOQUEEMPRESA'
    end
    object TCustoItemPedidoCOD_GERADOR: TIntegerField
      FieldName = 'COD_GERADOR'
      Origin = 'CUSTOITEMPEDIDO.COD_GERADOR'
    end
    object TCustoItemPedidoTIPOGERADOR: TIBStringField
      FieldName = 'TIPOGERADOR'
      Origin = 'CUSTOITEMPEDIDO.TIPOGERADOR'
    end
    object TCustoItemPedidoQUANTIDADE: TIBBCDField
      FieldName = 'QUANTIDADE'
      Origin = 'CUSTOITEMPEDIDO.QUANTIDADE'
      Precision = 18
      Size = 3
    end
    object TCustoItemPedidoVALORCUSTOANTERIOR: TIBBCDField
      FieldName = 'VALORCUSTOANTERIOR'
      Origin = 'CUSTOITEMPEDIDO.VALORCUSTOANTERIOR'
      Precision = 18
      Size = 2
    end
  end
  object UCustoItemPedido: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  COD_CUSTOITEMPEDIDO,'
      '  COD_CUSTOESTOQUEEMPRESA,'
      '  COD_GERADOR,'
      '  TIPOGERADOR,'
      '  QUANTIDADE,'
      '  VALORCUSTOANTERIOR'
      'from CUSTOITEMPEDIDO '
      'where'
      '  COD_CUSTOITEMPEDIDO = :COD_CUSTOITEMPEDIDO')
    ModifySQL.Strings = (
      'update CUSTOITEMPEDIDO'
      'set'
      '  COD_CUSTOITEMPEDIDO = :COD_CUSTOITEMPEDIDO,'
      '  COD_CUSTOESTOQUEEMPRESA = :COD_CUSTOESTOQUEEMPRESA,'
      '  COD_GERADOR = :COD_GERADOR,'
      '  TIPOGERADOR = :TIPOGERADOR,'
      '  QUANTIDADE = :QUANTIDADE,'
      '  VALORCUSTOANTERIOR = :VALORCUSTOANTERIOR'
      'where'
      '  COD_CUSTOITEMPEDIDO = :OLD_COD_CUSTOITEMPEDIDO')
    InsertSQL.Strings = (
      'insert into CUSTOITEMPEDIDO'
      '  (COD_CUSTOITEMPEDIDO, COD_CUSTOESTOQUEEMPRESA, COD_GERADOR, '
      'TIPOGERADOR, '
      '   QUANTIDADE, VALORCUSTOANTERIOR)'
      'values'
      '  (:COD_CUSTOITEMPEDIDO, :COD_CUSTOESTOQUEEMPRESA, '
      ':COD_GERADOR, :TIPOGERADOR, '
      '   :QUANTIDADE, :VALORCUSTOANTERIOR)')
    DeleteSQL.Strings = (
      'delete from CUSTOITEMPEDIDO'
      'where'
      '  COD_CUSTOITEMPEDIDO = :OLD_COD_CUSTOITEMPEDIDO')
    Left = 240
    Top = 560
  end
  object DSTCustoItemPedido: TDataSource
    DataSet = TCustoItemPedido
    Left = 240
    Top = 608
  end
  object Alx: TIBQuery
    Tag = 5
    Database = DBEstoque
    Transaction = TransacEstoque
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from movimentoestoque')
    Left = 168
  end
  object TItensContagem: TIBQuery
    Database = DBEstoque
    Transaction = TransacEstoque
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        ' SELECT ESTOQUE.COD_ESTOQUE, SUBPRODUTO.CONTRINT, SUBPRODUTO.COD' +
        'PRODFABR, SUBPRODUTO.DESCRICAO,'
      ' ESTOQUE.ESTFISICO, ESTOQUE.CONTAGEM, ESTOQUE.EXPORTAR'
      ' FROM SUBPRODUTO'
      
        ' LEFT JOIN ESTOQUE ON ESTOQUE.COD_SUBPROD = SUBPRODUTO.COD_SUBPR' +
        'ODUTO')
    Left = 352
    Top = 520
    object TItensContagemCOD_ESTOQUE: TIntegerField
      FieldName = 'COD_ESTOQUE'
      Origin = 'ESTOQUE.COD_ESTOQUE'
    end
    object TItensContagemCONTRINT: TIBStringField
      FieldName = 'CONTRINT'
      Origin = 'SUBPRODUTO.CONTRINT'
      Size = 15
    end
    object TItensContagemCODPRODFABR: TIBStringField
      FieldName = 'CODPRODFABR'
      Origin = 'SUBPRODUTO.CODPRODFABR'
      Size = 25
    end
    object TItensContagemDESCRICAO: TIBStringField
      FieldName = 'DESCRICAO'
      Origin = 'SUBPRODUTO.DESCRICAO'
      Size = 60
    end
    object TItensContagemESTFISICO: TFloatField
      FieldName = 'ESTFISICO'
      Origin = 'ESTOQUE.ESTFISICO'
      DisplayFormat = '#,###,####0.0000'
      EditFormat = '#,##0.####'
    end
    object TItensContagemCONTAGEM: TIBBCDField
      FieldName = 'CONTAGEM'
      Origin = 'ESTOQUE.CONTAGEM'
      Precision = 18
      Size = 3
    end
    object TItensContagemEXPORTAR: TIBStringField
      FieldName = 'EXPORTAR'
      Origin = 'ESTOQUE.EXPORTAR'
      FixedChar = True
      Size = 1
    end
  end
  object dItensContagem: TDataSource
    DataSet = TItensContagem
    Left = 354
    Top = 570
  end
end
