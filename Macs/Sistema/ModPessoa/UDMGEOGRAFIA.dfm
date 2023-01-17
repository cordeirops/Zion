object DMGEOGRAFIA: TDMGEOGRAFIA
  OldCreateOrder = False
  Left = 389
  Top = 127
  Height = 458
  Width = 800
  object IBDB: TIBDatabase
    DatabaseName = 'SERV:C:\MZR\DataBase\JD\dbmacs.gdb'
    Params.Strings = (
      'user_name=SYSDBA'
      'password=masterkey'
      'sql_role_name=3'
      'lc_ctype=ISO8859_1')
    LoginPrompt = False
    DefaultTransaction = IBT
    IdleTimer = 0
    SQLDialect = 3
    TraceFlags = []
    Left = 24
    Top = 8
  end
  object IBT: TIBTransaction
    Active = False
    DefaultDatabase = IBDB
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    AutoStopAction = saNone
    Left = 64
    Top = 8
  end
  object TAlx: TIBQuery
    Tag = 5
    Database = IBDB
    Transaction = IBT
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'select cidade_ibge.nome, cidade_ibge.sigla, cidade_ibge.cod_ibge' +
        ' from cidade_ibge')
    Left = 160
    Top = 8
  end
  object DAlx: TDataSource
    DataSet = TAlx
    Left = 200
    Top = 8
  end
  object TCidade: TIBQuery
    Database = IBDB
    Transaction = IBT
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select  first 1 * from CIDADE')
    UpdateObject = UCidade
    Left = 24
    Top = 80
    object TCidadeCOD_CIDADE: TIntegerField
      FieldName = 'COD_CIDADE'
      Origin = 'CIDADE.COD_CIDADE'
      Required = True
    end
    object TCidadeNOME: TIBStringField
      FieldName = 'NOME'
      Origin = 'CIDADE.NOME'
      Size = 100
    end
    object TCidadeDDD: TIBStringField
      FieldName = 'DDD'
      Origin = 'CIDADE.DDD'
      Size = 10
    end
    object TCidadeCOD_ESTADO: TIntegerField
      FieldName = 'COD_ESTADO'
      Origin = 'CIDADE.COD_ESTADO'
    end
    object TCidadeCOD_REGIAO: TIntegerField
      FieldName = 'COD_REGIAO'
      Origin = 'CIDADE.COD_REGIAO'
    end
    object TCidadeCOD_IBGE: TIntegerField
      FieldName = 'COD_IBGE'
      Origin = 'CIDADE.COD_IBGE'
    end
    object TCidadeCOD_FEDERAL: TIntegerField
      FieldName = 'COD_FEDERAL'
      Origin = 'CIDADE.COD_FEDERAL'
    end
    object TCidadeCOD_ESTADUAL: TIntegerField
      FieldName = 'COD_ESTADUAL'
      Origin = 'CIDADE.COD_ESTADUAL'
    end
    object TCidadeUFEMBARQUE: TIBStringField
      FieldName = 'UFEMBARQUE'
      Origin = 'CIDADE.UFEMBARQUE'
      Size = 2
    end
    object TCidadeLOCALEMBARQUE: TIBStringField
      FieldName = 'LOCALEMBARQUE'
      Origin = 'CIDADE.LOCALEMBARQUE'
      Size = 150
    end
    object TCidadeSIGLA: TIBStringField
      FieldName = 'SIGLA'
      Origin = 'CIDADE.SIGLA'
      Size = 10
    end
  end
  object TEstado: TIBQuery
    Database = IBDB
    Transaction = IBT
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select first 1  * from ESTADO')
    UpdateObject = UEstado
    Left = 80
    Top = 80
    object TEstadoCOD_ESTADO: TIntegerField
      FieldName = 'COD_ESTADO'
      Origin = 'ESTADO.COD_ESTADO'
      Required = True
    end
    object TEstadoDESCRICAO: TIBStringField
      FieldName = 'DESCRICAO'
      Origin = 'ESTADO.DESCRICAO'
      Size = 100
    end
    object TEstadoUF_ESTADO: TIBStringField
      FieldName = 'UF_ESTADO'
      Origin = 'ESTADO.UF_ESTADO'
      FixedChar = True
      Size = 2
    end
    object TEstadoCOD_REGIAO: TIntegerField
      FieldName = 'COD_REGIAO'
      Origin = 'ESTADO.COD_REGIAO'
    end
    object TEstadoCST_INTERNA: TIBStringField
      FieldName = 'CST_INTERNA'
      Origin = 'ESTADO.CST_INTERNA'
      Size = 10
    end
    object TEstadoCST_EXTERNA: TIBStringField
      FieldName = 'CST_EXTERNA'
      Origin = 'ESTADO.CST_EXTERNA'
      Size = 10
    end
    object TEstadoALIQINTERNA: TIBBCDField
      FieldName = 'ALIQINTERNA'
      Origin = 'ESTADO.ALIQINTERNA'
      Precision = 4
      Size = 2
    end
    object TEstadoALIQINTERESTAUAL: TIBBCDField
      FieldName = 'ALIQINTERESTAUAL'
      Origin = 'ESTADO.ALIQINTERESTAUAL'
      Precision = 4
      Size = 2
    end
    object TEstadoMVA: TIBBCDField
      FieldName = 'MVA'
      Origin = 'ESTADO.MVA'
      Precision = 4
      Size = 2
    end
    object TEstadoTXT_SUBSTITUICAO: TIBStringField
      FieldName = 'TXT_SUBSTITUICAO'
      Origin = 'ESTADO.TXT_SUBSTITUICAO'
      Size = 100
    end
    object TEstadoISENTOST: TIBStringField
      FieldName = 'ISENTOST'
      Origin = 'ESTADO.ISENTOST'
      FixedChar = True
      Size = 1
    end
    object TEstadoCOD_CSTINTERESTADUAL: TIntegerField
      FieldName = 'COD_CSTINTERESTADUAL'
      Origin = 'ESTADO.COD_CSTINTERESTADUAL'
    end
    object TEstadoEXTERIOR: TIntegerField
      FieldName = 'EXTERIOR'
    end
    object TEstadoMVAFORASIMPLES: TIBBCDField
      FieldName = 'MVAFORASIMPLES'
      Precision = 4
      Size = 2
    end
    object TEstadoCODBACEN: TIBStringField
      FieldName = 'CODBACEN'
      Origin = 'ESTADO.CODBACEN'
      Size = 5
    end
    object TEstadoNOMEPAIS: TIBStringField
      FieldName = 'NOMEPAIS'
      Origin = 'ESTADO.NOMEPAIS'
      Size = 100
    end
  end
  object TRegiao: TIBQuery
    Database = IBDB
    Transaction = IBT
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select  first 1 * from REGIAO')
    UpdateObject = URegiao
    Left = 136
    Top = 80
    object TRegiaoCOD_REGIAO: TIntegerField
      FieldName = 'COD_REGIAO'
      Origin = 'REGIAO.COD_REGIAO'
      Required = True
    end
    object TRegiaoDESCRICAO: TIBStringField
      FieldName = 'DESCRICAO'
      Origin = 'REGIAO.DESCRICAO'
      Size = 100
    end
  end
  object UCidade: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  COD_CIDADE,'
      '  NOME,'
      '  DDD,'
      '  COD_ESTADO,'
      '  COD_REGIAO,'
      '  COD_IBGE,'
      '  COD_FEDERAL,'
      '  COD_ESTADUAL,'
      '  SIGLA,'
      '  UFEMBARQUE,'
      '  LOCALEMBARQUE'
      'from CIDADE '
      'where'
      '  COD_CIDADE = :COD_CIDADE')
    ModifySQL.Strings = (
      'update CIDADE'
      'set'
      '  COD_CIDADE = :COD_CIDADE,'
      '  NOME = :NOME,'
      '  DDD = :DDD,'
      '  COD_ESTADO = :COD_ESTADO,'
      '  COD_REGIAO = :COD_REGIAO,'
      '  COD_IBGE = :COD_IBGE,'
      '  COD_FEDERAL = :COD_FEDERAL,'
      '  COD_ESTADUAL = :COD_ESTADUAL,'
      '  SIGLA = :SIGLA,'
      '  UFEMBARQUE = :UFEMBARQUE,'
      '  LOCALEMBARQUE = :LOCALEMBARQUE'
      'where'
      '  COD_CIDADE = :OLD_COD_CIDADE')
    InsertSQL.Strings = (
      'insert into CIDADE'
      '  (COD_CIDADE, NOME, DDD, COD_ESTADO, COD_REGIAO, COD_IBGE, '
      'COD_FEDERAL, '
      '   COD_ESTADUAL, SIGLA, UFEMBARQUE, LOCALEMBARQUE)'
      'values'
      
        '  (:COD_CIDADE, :NOME, :DDD, :COD_ESTADO, :COD_REGIAO, :COD_IBGE' +
        ', '
      ':COD_FEDERAL, '
      '   :COD_ESTADUAL, :SIGLA, :UFEMBARQUE, :LOCALEMBARQUE)')
    DeleteSQL.Strings = (
      'delete from CIDADE'
      'where'
      '  COD_CIDADE = :OLD_COD_CIDADE')
    Left = 24
    Top = 128
  end
  object UEstado: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  COD_ESTADO,'
      '  DESCRICAO,'
      '  UF_ESTADO,'
      '  COD_REGIAO,'
      '  CST_INTERNA,'
      '  CST_EXTERNA,'
      '  TXT_SUBSTITUICAO,'
      '  ALIQINTERNA,'
      '  ALIQINTERESTAUAL,'
      '  MVA,'
      '  ISENTOST,'
      '  COD_CSTINTERESTADUAL,'
      '  EXTERIOR,'
      '  MVAFORASIMPLES,'
      '  CODBACEN,'
      '  NOMEPAIS'
      'from ESTADO '
      'where'
      '  COD_ESTADO = :COD_ESTADO')
    ModifySQL.Strings = (
      'update ESTADO'
      'set'
      '  COD_ESTADO = :COD_ESTADO,'
      '  DESCRICAO = :DESCRICAO,'
      '  UF_ESTADO = :UF_ESTADO,'
      '  COD_REGIAO = :COD_REGIAO,'
      '  CST_INTERNA = :CST_INTERNA,'
      '  CST_EXTERNA = :CST_EXTERNA,'
      '  TXT_SUBSTITUICAO = :TXT_SUBSTITUICAO,'
      '  ALIQINTERNA = :ALIQINTERNA,'
      '  ALIQINTERESTAUAL = :ALIQINTERESTAUAL,'
      '  MVA = :MVA,'
      '  ISENTOST = :ISENTOST,'
      '  COD_CSTINTERESTADUAL = :COD_CSTINTERESTADUAL,'
      '  EXTERIOR = :EXTERIOR,'
      '  MVAFORASIMPLES = :MVAFORASIMPLES,'
      '  CODBACEN = :CODBACEN,'
      '  NOMEPAIS = :NOMEPAIS'
      'where'
      '  COD_ESTADO = :OLD_COD_ESTADO')
    InsertSQL.Strings = (
      'insert into ESTADO'
      '  (COD_ESTADO, DESCRICAO, UF_ESTADO, COD_REGIAO, CST_INTERNA, '
      'CST_EXTERNA, '
      
        '   TXT_SUBSTITUICAO, ALIQINTERNA, ALIQINTERESTAUAL, MVA, ISENTOS' +
        'T, '
      'COD_CSTINTERESTADUAL, '
      '   EXTERIOR, MVAFORASIMPLES, CODBACEN, NOMEPAIS)'
      'values'
      
        '  (:COD_ESTADO, :DESCRICAO, :UF_ESTADO, :COD_REGIAO, :CST_INTERN' +
        'A, '
      ':CST_EXTERNA, '
      '   :TXT_SUBSTITUICAO, :ALIQINTERNA, :ALIQINTERESTAUAL, :MVA, '
      ':ISENTOST, '
      
        '   :COD_CSTINTERESTADUAL, :EXTERIOR, :MVAFORASIMPLES, :CODBACEN,' +
        ' '
      ':NOMEPAIS)')
    DeleteSQL.Strings = (
      'delete from ESTADO'
      'where'
      '  COD_ESTADO = :OLD_COD_ESTADO')
    Left = 80
    Top = 128
  end
  object URegiao: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  COD_REGIAO,'
      '  DESCRICAO'
      'from REGIAO '
      'where'
      '  COD_REGIAO = :COD_REGIAO')
    ModifySQL.Strings = (
      'update REGIAO'
      'set'
      '  COD_REGIAO = :COD_REGIAO,'
      '  DESCRICAO = :DESCRICAO'
      'where'
      '  COD_REGIAO = :OLD_COD_REGIAO')
    InsertSQL.Strings = (
      'insert into REGIAO'
      '  (COD_REGIAO, DESCRICAO)'
      'values'
      '  (:COD_REGIAO, :DESCRICAO)')
    DeleteSQL.Strings = (
      'delete from REGIAO'
      'where'
      '  COD_REGIAO = :OLD_COD_REGIAO')
    Left = 136
    Top = 128
  end
  object DCidade: TDataSource
    DataSet = TCidade
    Left = 24
    Top = 176
  end
  object DEstado: TDataSource
    DataSet = TEstado
    Left = 80
    Top = 176
  end
  object DRegiao: TDataSource
    DataSet = TRegiao
    Left = 136
    Top = 176
  end
  object WEstado: TIBQuery
    Database = IBDB
    Transaction = IBT
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select  first 1 * from VWESTADO order by descricao')
    Left = 80
    Top = 240
    object WEstadoCOD_ESTADO: TIntegerField
      FieldName = 'COD_ESTADO'
      Origin = 'VWESTADO.COD_ESTADO'
    end
    object WEstadoDESCRICAO: TIBStringField
      FieldName = 'DESCRICAO'
      Origin = 'VWESTADO.DESCRICAO'
      Size = 100
    end
    object WEstadoUF: TIBStringField
      FieldName = 'UF'
      Origin = 'VWESTADO.UF'
      FixedChar = True
      Size = 2
    end
    object WEstadoCOD_REGIAO: TIntegerField
      FieldName = 'COD_REGIAO'
      Origin = 'VWESTADO.COD_REGIAO'
    end
    object WEstadoREGIAO: TIBStringField
      FieldName = 'REGIAO'
      Origin = 'VWESTADO.REGIAO'
      Size = 100
    end
  end
  object DWEstado: TDataSource
    DataSet = WEstado
    Left = 80
    Top = 288
  end
  object WCidade: TIBQuery
    Database = IBDB
    Transaction = IBT
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select  first 1 * from VWCIDADE order by nome')
    Left = 24
    Top = 240
    object WCidadeCOD_CIDADE: TIntegerField
      FieldName = 'COD_CIDADE'
    end
    object WCidadeNOME: TIBStringField
      FieldName = 'NOME'
      Size = 100
    end
    object WCidadeCOD_ESTADO: TIntegerField
      FieldName = 'COD_ESTADO'
    end
    object WCidadeUF: TIBStringField
      FieldName = 'UF'
      Size = 2
    end
    object WCidadeCOD_REGIAO: TIntegerField
      FieldName = 'COD_REGIAO'
    end
    object WCidadeCOD_FEDERAL: TIntegerField
      FieldName = 'COD_FEDERAL'
      Origin = 'VWCIDADE.COD_FEDERAL'
    end
  end
  object DWCidade: TDataSource
    DataSet = WCidade
    Left = 24
    Top = 288
  end
end
