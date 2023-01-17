object DMCONTA: TDMCONTA
  OldCreateOrder = False
  Left = 142
  Top = 150
  Height = 462
  Width = 799
  object IBDB: TIBDatabase
    DatabaseName = 'note:'
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
    Left = 16
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
    Left = 56
    Top = 8
  end
  object TAlx: TIBQuery
    Tag = 5
    Database = IBDB
    Transaction = IBT
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'SELECT PARCELACR.NUMPARC, PARCELACR.VALOR, PARCELACR.DTVENC, PAR' +
        'CELACR.HISTORICO FROM PARCELACR')
    Left = 136
    Top = 8
  end
  object DAlx: TDataSource
    DataSet = TAlx
    Left = 176
    Top = 8
  end
  object TPlnCta: TIBQuery
    Database = IBDB
    Transaction = IBT
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select first 1  * from PLNCTA')
    UpdateObject = UPlnCta
    Left = 16
    Top = 88
    object TPlnCtaCOD_PLNCTA: TIntegerField
      FieldName = 'COD_PLNCTA'
      Required = True
    end
    object TPlnCtaCLASSIFICACAO: TIBStringField
      FieldName = 'CLASSIFICACAO'
    end
    object TPlnCtaDESCRICAO: TIBStringField
      FieldName = 'DESCRICAO'
      Size = 100
    end
    object TPlnCtaCODIGOGER: TIBStringField
      FieldName = 'CODIGOGER'
    end
    object TPlnCtaNATUREZA: TIBStringField
      FieldName = 'NATUREZA'
      Size = 1
    end
    object TPlnCtaTIPO: TIBStringField
      FieldName = 'TIPO'
      Size = 1
    end
    object TPlnCtaCOD_FILIAL: TIntegerField
      FieldName = 'COD_FILIAL'
    end
    object TPlnCtaVLRPREV: TIBBCDField
      FieldName = 'VLRPREV'
      Precision = 9
      Size = 2
    end
    object TPlnCtaVLRREAL: TIBBCDField
      FieldName = 'VLRREAL'
      Precision = 9
      Size = 2
    end
    object TPlnCtaPERPREV: TIBBCDField
      FieldName = 'PERPREV'
      Precision = 4
      Size = 2
    end
    object TPlnCtaNIVEL: TIntegerField
      FieldName = 'NIVEL'
    end
    object TPlnCtaPERREAL: TIBBCDField
      FieldName = 'PERREAL'
      Precision = 4
      Size = 2
    end
    object TPlnCtaCCF: TIBStringField
      FieldName = 'CCF'
      Size = 5
    end
    object TPlnCtaORDEM: TSmallintField
      FieldName = 'ORDEM'
    end
    object TPlnCtaMARKREL: TIBStringField
      FieldName = 'MARKREL'
      Origin = 'PLNCTA.MARKREL'
      FixedChar = True
      Size = 1
    end
    object TPlnCtaCONTAPADRAO: TIBStringField
      FieldName = 'CONTAPADRAO'
      Origin = 'PLNCTA.CONTAPADRAO'
      FixedChar = True
      Size = 1
    end
    object TPlnCtaMOSTRANORMAL: TIBStringField
      FieldName = 'MOSTRANORMAL'
      Origin = 'PLNCTA.MOSTRANORMAL'
      FixedChar = True
      Size = 1
    end
    object TPlnCtaCOD_ESTOQUE: TIntegerField
      FieldName = 'COD_ESTOQUE'
      Origin = 'PLNCTA.COD_ESTOQUE'
    end
  end
  object TCtaP: TIBQuery
    Database = IBDB
    Transaction = IBT
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select  first 1 * from CTAPAGAR')
    UpdateObject = UCtaP
    Left = 111
    Top = 88
    object TCtaPCOD_CTAPAGAR: TIntegerField
      FieldName = 'COD_CTAPAGAR'
      Origin = 'CTAPAGAR.COD_CTAPAGAR'
      Required = True
    end
    object TCtaPCOD_USUARIO: TIntegerField
      FieldName = 'COD_USUARIO'
      Origin = 'CTAPAGAR.COD_USUARIO'
    end
    object TCtaPDTLANC: TDateField
      FieldName = 'DTLANC'
      Origin = 'CTAPAGAR.DTLANC'
      EditMask = '!99/99/0000;1;_'
    end
    object TCtaPCOBRANCA: TIBStringField
      FieldName = 'COBRANCA'
      Origin = 'CTAPAGAR.COBRANCA'
      Size = 25
    end
    object TCtaPCOD_FORNEC: TIntegerField
      FieldName = 'COD_FORNEC'
      Origin = 'CTAPAGAR.COD_FORNEC'
    end
    object TCtaPCOD_PLNCTA: TIntegerField
      FieldName = 'COD_PLNCTA'
      Origin = 'CTAPAGAR.COD_PLNCTA'
    end
    object TCtaPHISTORICO: TIBStringField
      FieldName = 'HISTORICO'
      Origin = 'CTAPAGAR.HISTORICO'
      Size = 100
    end
    object TCtaPTIPOGERADOR: TIBStringField
      FieldName = 'TIPOGERADOR'
      Origin = 'CTAPAGAR.TIPOGERADOR'
      Size = 10
    end
    object TCtaPCOD_GERADOR: TIntegerField
      FieldName = 'COD_GERADOR'
      Origin = 'CTAPAGAR.COD_GERADOR'
    end
    object TCtaPVALOR: TIBBCDField
      FieldName = 'VALOR'
      Origin = 'CTAPAGAR.VALOR'
      Precision = 18
      Size = 2
    end
    object TCtaPCOD_COTAMOEDA: TIntegerField
      FieldName = 'COD_COTAMOEDA'
      Origin = 'CTAPAGAR.COD_COTAMOEDA'
    end
    object TCtaPCOD_FORMPAG: TIntegerField
      FieldName = 'COD_FORMPAG'
      Origin = 'CTAPAGAR.COD_FORMPAG'
    end
    object TCtaPNUMDOC: TIBStringField
      FieldName = 'NUMDOC'
      Origin = 'CTAPAGAR.NUMDOC'
      Size = 25
    end
  end
  object TParcCP: TIBQuery
    Database = IBDB
    Transaction = IBT
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select  first 1 * from PARCELACP')
    UpdateObject = UParcCP
    Left = 153
    Top = 88
    object TParcCPCOD_PARCELACP: TIntegerField
      FieldName = 'COD_PARCELACP'
      Origin = 'PARCELACP.COD_PARCELACP'
      Required = True
    end
    object TParcCPCOD_CTAPAGAR: TIntegerField
      FieldName = 'COD_CTAPAGAR'
      Origin = 'PARCELACP.COD_CTAPAGAR'
    end
    object TParcCPNUMPARC: TIBStringField
      FieldName = 'NUMPARC'
      Origin = 'PARCELACP.NUMPARC'
      Size = 30
    end
    object TParcCPDTVENC: TDateField
      FieldName = 'DTVENC'
      Origin = 'PARCELACP.DTVENC'
      EditMask = '!99/99/0000;1;_'
    end
    object TParcCPDTDEBITO: TDateField
      FieldName = 'DTDEBITO'
      Origin = 'PARCELACP.DTDEBITO'
      EditMask = '!99/99/0000;1;_'
    end
    object TParcCPCOD_PARANT: TIntegerField
      FieldName = 'COD_PARANT'
      Origin = 'PARCELACP.COD_PARANT'
    end
    object TParcCPDESCONTO: TFloatField
      FieldName = 'DESCONTO'
      Origin = 'PARCELACP.DESCONTO'
    end
    object TParcCPJUROS: TFloatField
      FieldName = 'JUROS'
      Origin = 'PARCELACP.JUROS'
    end
    object TParcCPMULTAS: TFloatField
      FieldName = 'MULTAS'
      Origin = 'PARCELACP.MULTAS'
    end
    object TParcCPVALOR: TIBBCDField
      FieldName = 'VALOR'
      Origin = 'PARCELACP.VALOR'
      Precision = 18
      Size = 2
    end
    object TParcCPVALORPG: TIBBCDField
      FieldName = 'VALORPG'
      Origin = 'PARCELACP.VALORPG'
      Precision = 18
      Size = 2
    end
    object TParcCPFECH: TIBStringField
      FieldName = 'FECH'
      Origin = 'PARCELACP.FECH'
      FixedChar = True
      Size = 1
    end
    object TParcCPCOBRANCA: TIBStringField
      FieldName = 'COBRANCA'
      Origin = 'PARCELACP.COBRANCA'
      Size = 10
    end
    object TParcCPCOD_COTA: TIntegerField
      FieldName = 'COD_COTA'
      Origin = 'PARCELACP.COD_COTA'
    end
    object TParcCPHISTORICO: TIBStringField
      FieldName = 'HISTORICO'
      Origin = 'PARCELACP.HISTORICO'
      Size = 100
    end
    object TParcCPDTREF: TDateField
      FieldName = 'DTREF'
      Origin = 'PARCELACP.DTREF'
      EditMask = '!99/99/0000;1;_'
    end
    object TParcCPPREVISAO: TIBStringField
      FieldName = 'PREVISAO'
      Origin = 'PARCELACP.PREVISAO'
      FixedChar = True
      Size = 1
    end
    object TParcCPMARK: TIBStringField
      FieldName = 'MARK'
      Origin = 'PARCELACP.MARK'
      FixedChar = True
      Size = 1
    end
    object TParcCPTIPO: TSmallintField
      FieldName = 'TIPO'
      Origin = 'PARCELACP.TIPO'
    end
    object TParcCPPARCIAL: TIBStringField
      FieldName = 'PARCIAL'
      Origin = 'PARCELACP.PARCIAL'
      FixedChar = True
      Size = 1
    end
    object TParcCPNUMFISC: TIntegerField
      FieldName = 'NUMFISC'
      Origin = 'PARCELACP.NUMFISC'
    end
    object TParcCPESTRU: TIBStringField
      FieldName = 'ESTRU'
      Origin = 'PARCELACP.ESTRU'
      FixedChar = True
      Size = 1
    end
    object TParcCPNUMBOLETO: TIBStringField
      FieldName = 'NUMBOLETO'
      Origin = 'PARCELACP.NUMBOLETO'
      Size = 10
    end
    object TParcCPVALEXT: TIBStringField
      FieldName = 'VALEXT'
      Origin = 'PARCELACP.VALEXT'
      Size = 100
    end
  end
  object TCtaR: TIBQuery
    Database = IBDB
    Transaction = IBT
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select  first 1 * from CTARECEBER')
    UpdateObject = UCtaR
    Left = 197
    Top = 88
    object TCtaRCOD_CTARECEBER: TIntegerField
      FieldName = 'COD_CTARECEBER'
      Origin = 'CTARECEBER.COD_CTARECEBER'
      Required = True
    end
    object TCtaRCOD_USUARIO: TIntegerField
      FieldName = 'COD_USUARIO'
      Origin = 'CTARECEBER.COD_USUARIO'
    end
    object TCtaRDTLANC: TDateField
      FieldName = 'DTLANC'
      Origin = 'CTARECEBER.DTLANC'
    end
    object TCtaRCOBRANCA: TIBStringField
      FieldName = 'COBRANCA'
      Origin = 'CTARECEBER.COBRANCA'
      Size = 25
    end
    object TCtaRCOD_CLIENTE: TIntegerField
      FieldName = 'COD_CLIENTE'
      Origin = 'CTARECEBER.COD_CLIENTE'
    end
    object TCtaRCOD_PLNCTA: TIntegerField
      FieldName = 'COD_PLNCTA'
      Origin = 'CTARECEBER.COD_PLNCTA'
    end
    object TCtaRHISTORICO: TIBStringField
      FieldName = 'HISTORICO'
      Origin = 'CTARECEBER.HISTORICO'
      Size = 100
    end
    object TCtaRTIPOGERADOR: TIBStringField
      FieldName = 'TIPOGERADOR'
      Origin = 'CTARECEBER.TIPOGERADOR'
      Size = 10
    end
    object TCtaRCOD_GERADOR: TIntegerField
      FieldName = 'COD_GERADOR'
      Origin = 'CTARECEBER.COD_GERADOR'
    end
    object TCtaRVALOR: TIBBCDField
      FieldName = 'VALOR'
      Origin = 'CTARECEBER.VALOR'
      Precision = 18
      Size = 2
    end
    object TCtaRCOD_COTAMOEDA: TIntegerField
      FieldName = 'COD_COTAMOEDA'
      Origin = 'CTARECEBER.COD_COTAMOEDA'
    end
    object TCtaRCOD_FORMPAG: TIntegerField
      FieldName = 'COD_FORMPAG'
      Origin = 'CTARECEBER.COD_FORMPAG'
    end
    object TCtaRNUMDOC: TIBStringField
      FieldName = 'NUMDOC'
      Origin = 'CTARECEBER.NUMDOC'
      Size = 25
    end
    object TCtaRCOD_PLNCTASERV: TIntegerField
      FieldName = 'COD_PLNCTASERV'
      Origin = 'CTARECEBER.COD_PLNCTASERV'
    end
    object TCtaRNUMCARTAO2: TIBStringField
      FieldName = 'NUMCARTAO'
      Origin = 'CTARECEBER.NUMCARTAO'
      Size = 15
    end
    object TCtaRCOD_VENDEDOR: TIntegerField
      FieldName = 'COD_VENDEDOR'
      Origin = 'CTARECEBER.COD_VENDEDOR'
    end
  end
  object TParcCR: TIBQuery
    Database = IBDB
    Transaction = IBT
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select  first 1 * from PARCELACR')
    UpdateObject = UParcCR
    Left = 240
    Top = 88
    object TParcCRCOD_PARCELACR: TIntegerField
      FieldName = 'COD_PARCELACR'
      Origin = 'PARCELACR.COD_PARCELACR'
      Required = True
    end
    object TParcCRCOD_CTARECEBER: TIntegerField
      FieldName = 'COD_CTARECEBER'
      Origin = 'PARCELACR.COD_CTARECEBER'
    end
    object TParcCRNUMPARC: TIBStringField
      FieldName = 'NUMPARC'
      Origin = 'PARCELACR.NUMPARC'
      Size = 30
    end
    object TParcCRDTDEBITO: TDateField
      FieldName = 'DTDEBITO'
      Origin = 'PARCELACR.DTDEBITO'
    end
    object TParcCRCOD_PARANT: TIntegerField
      FieldName = 'COD_PARANT'
      Origin = 'PARCELACR.COD_PARANT'
    end
    object TParcCRDESCONTO: TFloatField
      FieldName = 'DESCONTO'
      Origin = 'PARCELACR.DESCONTO'
    end
    object TParcCRJUROS: TFloatField
      FieldName = 'JUROS'
      Origin = 'PARCELACR.JUROS'
    end
    object TParcCRMULTA: TFloatField
      FieldName = 'MULTA'
      Origin = 'PARCELACR.MULTA'
    end
    object TParcCRVALOR: TIBBCDField
      FieldName = 'VALOR'
      Origin = 'PARCELACR.VALOR'
      currency = True
      Precision = 18
      Size = 2
    end
    object TParcCRVALORPG: TIBBCDField
      FieldName = 'VALORPG'
      Origin = 'PARCELACR.VALORPG'
      Precision = 18
      Size = 2
    end
    object TParcCRFECH: TIBStringField
      FieldName = 'FECH'
      Origin = 'PARCELACR.FECH'
      FixedChar = True
      Size = 1
    end
    object TParcCRCOBRANCA: TIBStringField
      FieldName = 'COBRANCA'
      Origin = 'PARCELACR.COBRANCA'
      Size = 10
    end
    object TParcCRDTVENC: TDateField
      FieldName = 'DTVENC'
      Origin = 'PARCELACR.DTVENC'
      EditMask = '!99/99/0000;1;_'
    end
    object TParcCRCOD_COTA: TIntegerField
      FieldName = 'COD_COTA'
      Origin = 'PARCELACR.COD_COTA'
    end
    object TParcCRHISTORICO: TIBStringField
      FieldName = 'HISTORICO'
      Origin = 'PARCELACR.HISTORICO'
      Size = 100
    end
    object TParcCRVALEXT: TIBStringField
      FieldName = 'VALEXT'
      Origin = 'PARCELACR.VALEXT'
      Size = 100
    end
    object TParcCRVALORSERV: TIBBCDField
      FieldName = 'VALORSERV'
      Origin = 'PARCELACR.VALORSERV'
      Precision = 18
      Size = 2
    end
    object TParcCRVALORPROD: TIBBCDField
      FieldName = 'VALORPROD'
      Origin = 'PARCELACR.VALORPROD'
      Precision = 18
      Size = 2
    end
    object TParcCRMARK: TIBStringField
      FieldName = 'MARK'
      Origin = 'PARCELACR.MARK'
      FixedChar = True
      Size = 1
    end
    object TParcCRIMP: TIBStringField
      FieldName = 'IMP'
      Origin = 'PARCELACR.IMP'
      FixedChar = True
      Size = 1
    end
    object TParcCRNUMBOLETO: TIBStringField
      FieldName = 'NUMBOLETO'
      Origin = 'PARCELACR.NUMBOLETO'
      Size = 10
    end
    object TParcCRNUMFISC: TIntegerField
      FieldName = 'NUMFISC'
      Origin = 'PARCELACR.NUMFISC'
    end
    object TParcCRCOD_CTACOR: TIntegerField
      FieldName = 'COD_CTACOR'
      Origin = 'PARCELACR.COD_CTACOR'
    end
    object TParcCRREMESSA: TIBStringField
      FieldName = 'REMESSA'
      Origin = 'PARCELACR.REMESSA'
      Size = 10
    end
    object TParcCRDTREF: TDateField
      FieldName = 'DTREF'
      Origin = 'PARCELACR.DTREF'
      EditMask = '!99/99/0000;1;_'
    end
    object TParcCRPERVLRSERV: TIBBCDField
      FieldName = 'PERVLRSERV'
      Origin = 'PARCELACR.PERVLRSERV'
      Precision = 18
      Size = 2
    end
    object TParcCRAPLICJUR: TSmallintField
      FieldName = 'APLICJUR'
      Origin = 'PARCELACR.APLICJUR'
    end
    object TParcCRNOSSONUMBLT: TIBStringField
      FieldName = 'NOSSONUMBLT'
      Origin = 'PARCELACR.NOSSONUMBLT'
      Size = 15
    end
    object TParcCRSCPC: TIBStringField
      FieldName = 'SCPC'
      Origin = 'PARCELACR.SCPC'
      FixedChar = True
      Size = 1
    end
    object TParcCRTIPOBLT: TIBStringField
      FieldName = 'TIPOBLT'
      Origin = 'PARCELACR.TIPOBLT'
      FixedChar = True
      Size = 1
    end
    object TParcCRTEXTOBLT: TMemoField
      FieldName = 'TEXTOBLT'
      Origin = 'PARCELACR.TEXTOBLT'
      BlobType = ftMemo
      Size = 8
    end
    object TParcCREXPORTA: TSmallintField
      FieldName = 'EXPORTA'
      Origin = 'PARCELACR.EXPORTA'
    end
    object TParcCRDIASATRASO: TIntegerField
      FieldName = 'DIASATRASO'
      Origin = 'PARCELACR.DIASATRASO'
    end
    object TParcCRNUMORDEM: TSmallintField
      FieldName = 'NUMORDEM'
      Origin = 'PARCELACR.NUMORDEM'
    end
    object TParcCRPARCIAL: TIBStringField
      FieldName = 'PARCIAL'
      Origin = 'PARCELACR.PARCIAL'
      FixedChar = True
      Size = 1
    end
    object TParcCRESTRU: TIBStringField
      FieldName = 'ESTRU'
      Origin = 'PARCELACR.ESTRU'
      FixedChar = True
      Size = 1
    end
  end
  object UPlnCta: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  COD_PLNCTA,'
      '  CLASSIFICACAO,'
      '  DESCRICAO,'
      '  CODIGOGER,'
      '  NATUREZA,'
      '  TIPO,'
      '  COD_FILIAL,'
      '  VLRPREV,'
      '  VLRREAL,'
      '  PERPREV,'
      '  PERREAL,'
      '  CCF,'
      '  NIVEL,'
      '  ORDEM,'
      '  MARKREL,'
      '  CONTAPADRAO,'
      '  COD_ESTOQUE'
      'from PLNCTA '
      'where'
      '  COD_PLNCTA = :COD_PLNCTA')
    ModifySQL.Strings = (
      'update PLNCTA'
      'set'
      '  COD_PLNCTA = :COD_PLNCTA,'
      '  CLASSIFICACAO = :CLASSIFICACAO,'
      '  DESCRICAO = :DESCRICAO,'
      '  CODIGOGER = :CODIGOGER,'
      '  NATUREZA = :NATUREZA,'
      '  TIPO = :TIPO,'
      '  COD_FILIAL = :COD_FILIAL,'
      '  VLRPREV = :VLRPREV,'
      '  VLRREAL = :VLRREAL,'
      '  PERPREV = :PERPREV,'
      '  PERREAL = :PERREAL,'
      '  CCF = :CCF,'
      '  NIVEL = :NIVEL,'
      '  ORDEM = :ORDEM,'
      '  MARKREL = :MARKREL,'
      '  CONTAPADRAO = :CONTAPADRAO,'
      '  COD_ESTOQUE = :COD_ESTOQUE'
      'where'
      '  COD_PLNCTA = :OLD_COD_PLNCTA')
    InsertSQL.Strings = (
      'insert into PLNCTA'
      
        '  (COD_PLNCTA, CLASSIFICACAO, DESCRICAO, CODIGOGER, NATUREZA, TI' +
        'PO, COD_FILIAL, '
      
        '   VLRPREV, VLRREAL, PERPREV, PERREAL, CCF, NIVEL, ORDEM, MARKRE' +
        'L, CONTAPADRAO, '
      '   COD_ESTOQUE)'
      'values'
      
        '  (:COD_PLNCTA, :CLASSIFICACAO, :DESCRICAO, :CODIGOGER, :NATUREZ' +
        'A, :TIPO, '
      
        '   :COD_FILIAL, :VLRPREV, :VLRREAL, :PERPREV, :PERREAL, :CCF, :N' +
        'IVEL, :ORDEM, '
      '   :MARKREL, :CONTAPADRAO, :COD_ESTOQUE)')
    DeleteSQL.Strings = (
      'delete from PLNCTA'
      'where'
      '  COD_PLNCTA = :OLD_COD_PLNCTA')
    Left = 16
    Top = 136
  end
  object UCtaP: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  COD_CTAPAGAR,'
      '  COD_USUARIO,'
      '  DTLANC,'
      '  COBRANCA,'
      '  COD_FORNEC,'
      '  COD_PLNCTA,'
      '  HISTORICO,'
      '  TIPOGERADOR,'
      '  COD_GERADOR,'
      '  VALOR,'
      '  COD_COTAMOEDA,'
      '  COD_FORMPAG,'
      '  NUMDOC'
      'from CTAPAGAR '
      'where'
      '  COD_CTAPAGAR = :COD_CTAPAGAR')
    ModifySQL.Strings = (
      'update CTAPAGAR'
      'set'
      '  COD_CTAPAGAR = :COD_CTAPAGAR,'
      '  COD_USUARIO = :COD_USUARIO,'
      '  DTLANC = :DTLANC,'
      '  COBRANCA = :COBRANCA,'
      '  COD_FORNEC = :COD_FORNEC,'
      '  COD_PLNCTA = :COD_PLNCTA,'
      '  HISTORICO = :HISTORICO,'
      '  TIPOGERADOR = :TIPOGERADOR,'
      '  COD_GERADOR = :COD_GERADOR,'
      '  VALOR = :VALOR,'
      '  COD_COTAMOEDA = :COD_COTAMOEDA,'
      '  COD_FORMPAG = :COD_FORMPAG,'
      '  NUMDOC = :NUMDOC'
      'where'
      '  COD_CTAPAGAR = :OLD_COD_CTAPAGAR')
    InsertSQL.Strings = (
      'insert into CTAPAGAR'
      
        '  (COD_CTAPAGAR, COD_USUARIO, DTLANC, COBRANCA, COD_FORNEC, COD_' +
        'PLNCTA, '
      
        '   HISTORICO, TIPOGERADOR, COD_GERADOR, VALOR, COD_COTAMOEDA, CO' +
        'D_FORMPAG, '
      '   NUMDOC)'
      'values'
      
        '  (:COD_CTAPAGAR, :COD_USUARIO, :DTLANC, :COBRANCA, :COD_FORNEC,' +
        ' :COD_PLNCTA, '
      
        '   :HISTORICO, :TIPOGERADOR, :COD_GERADOR, :VALOR, :COD_COTAMOED' +
        'A, :COD_FORMPAG, '
      '   :NUMDOC)')
    DeleteSQL.Strings = (
      'delete from CTAPAGAR'
      'where'
      '  COD_CTAPAGAR = :OLD_COD_CTAPAGAR')
    Left = 111
    Top = 136
  end
  object UParcCP: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  COD_PARCELACP,'
      '  COD_CTAPAGAR,'
      '  NUMPARC,'
      '  DTVENC,'
      '  DTDEBITO,'
      '  COD_PARANT,'
      '  DESCONTO,'
      '  JUROS,'
      '  MULTAS,'
      '  VALOR,'
      '  VALORPG,'
      '  FECH,'
      '  COBRANCA,'
      '  COD_COTA,'
      '  HISTORICO,'
      '  DTREF,'
      '  PREVISAO,'
      '  MARK,'
      '  TIPO,'
      '  PARCIAL,'
      '  NUMFISC,'
      '  ESTRU,'
      '  NUMBOLETO,'
      '  VALEXT'
      'from PARCELACP '
      'where'
      '  COD_PARCELACP = :COD_PARCELACP')
    ModifySQL.Strings = (
      'update PARCELACP'
      'set'
      '  COD_PARCELACP = :COD_PARCELACP,'
      '  COD_CTAPAGAR = :COD_CTAPAGAR,'
      '  NUMPARC = :NUMPARC,'
      '  DTVENC = :DTVENC,'
      '  DTDEBITO = :DTDEBITO,'
      '  COD_PARANT = :COD_PARANT,'
      '  DESCONTO = :DESCONTO,'
      '  JUROS = :JUROS,'
      '  MULTAS = :MULTAS,'
      '  VALOR = :VALOR,'
      '  VALORPG = :VALORPG,'
      '  FECH = :FECH,'
      '  COBRANCA = :COBRANCA,'
      '  COD_COTA = :COD_COTA,'
      '  HISTORICO = :HISTORICO,'
      '  DTREF = :DTREF,'
      '  PREVISAO = :PREVISAO,'
      '  MARK = :MARK,'
      '  TIPO = :TIPO,'
      '  PARCIAL = :PARCIAL,'
      '  NUMFISC = :NUMFISC,'
      '  ESTRU = :ESTRU,'
      '  NUMBOLETO = :NUMBOLETO,'
      '  VALEXT = :VALEXT'
      'where'
      '  COD_PARCELACP = :OLD_COD_PARCELACP')
    InsertSQL.Strings = (
      'insert into PARCELACP'
      
        '  (COD_PARCELACP, COD_CTAPAGAR, NUMPARC, DTVENC, DTDEBITO, COD_P' +
        'ARANT, '
      
        '   DESCONTO, JUROS, MULTAS, VALOR, VALORPG, FECH, COBRANCA, COD_' +
        'COTA, HISTORICO, '
      
        '   DTREF, PREVISAO, MARK, TIPO, PARCIAL, NUMFISC, ESTRU, NUMBOLE' +
        'TO, VALEXT)'
      'values'
      
        '  (:COD_PARCELACP, :COD_CTAPAGAR, :NUMPARC, :DTVENC, :DTDEBITO, ' +
        ':COD_PARANT, '
      
        '   :DESCONTO, :JUROS, :MULTAS, :VALOR, :VALORPG, :FECH, :COBRANC' +
        'A, :COD_COTA, '
      
        '   :HISTORICO, :DTREF, :PREVISAO, :MARK, :TIPO, :PARCIAL, :NUMFI' +
        'SC, :ESTRU, '
      '   :NUMBOLETO, :VALEXT)')
    DeleteSQL.Strings = (
      'delete from PARCELACP'
      'where'
      '  COD_PARCELACP = :OLD_COD_PARCELACP')
    Left = 153
    Top = 136
  end
  object UCtaR: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  COD_CTARECEBER,'
      '  COD_USUARIO,'
      '  DTLANC,'
      '  COBRANCA,'
      '  COD_CLIENTE,'
      '  COD_PLNCTA,'
      '  HISTORICO,'
      '  TIPOGERADOR,'
      '  COD_GERADOR,'
      '  VALOR,'
      '  COD_COTAMOEDA,'
      '  COD_FORMPAG,'
      '  NUMDOC,'
      '  COD_PLNCTASERV,'
      '  NUMCARTAO,'
      '  COD_VENDEDOR'
      'from CTARECEBER '
      'where'
      '  COD_CTARECEBER = :COD_CTARECEBER')
    ModifySQL.Strings = (
      'update CTARECEBER'
      'set'
      '  COD_CTARECEBER = :COD_CTARECEBER,'
      '  COD_USUARIO = :COD_USUARIO,'
      '  DTLANC = :DTLANC,'
      '  COBRANCA = :COBRANCA,'
      '  COD_CLIENTE = :COD_CLIENTE,'
      '  COD_PLNCTA = :COD_PLNCTA,'
      '  HISTORICO = :HISTORICO,'
      '  TIPOGERADOR = :TIPOGERADOR,'
      '  COD_GERADOR = :COD_GERADOR,'
      '  VALOR = :VALOR,'
      '  COD_COTAMOEDA = :COD_COTAMOEDA,'
      '  COD_FORMPAG = :COD_FORMPAG,'
      '  NUMDOC = :NUMDOC,'
      '  COD_PLNCTASERV = :COD_PLNCTASERV,'
      '  NUMCARTAO = :NUMCARTAO,'
      '  COD_VENDEDOR = :COD_VENDEDOR'
      'where'
      '  COD_CTARECEBER = :OLD_COD_CTARECEBER')
    InsertSQL.Strings = (
      'insert into CTARECEBER'
      
        '  (COD_CTARECEBER, COD_USUARIO, DTLANC, COBRANCA, COD_CLIENTE, C' +
        'OD_PLNCTA, '
      
        '   HISTORICO, TIPOGERADOR, COD_GERADOR, VALOR, COD_COTAMOEDA, CO' +
        'D_FORMPAG, '
      '   NUMDOC, COD_PLNCTASERV, NUMCARTAO, COD_VENDEDOR)'
      'values'
      
        '  (:COD_CTARECEBER, :COD_USUARIO, :DTLANC, :COBRANCA, :COD_CLIEN' +
        'TE, :COD_PLNCTA, '
      
        '   :HISTORICO, :TIPOGERADOR, :COD_GERADOR, :VALOR, :COD_COTAMOED' +
        'A, :COD_FORMPAG, '
      '   :NUMDOC, :COD_PLNCTASERV, :NUMCARTAO, :COD_VENDEDOR)')
    DeleteSQL.Strings = (
      'delete from CTARECEBER'
      'where'
      '  COD_CTARECEBER = :OLD_COD_CTARECEBER')
    Left = 197
    Top = 136
  end
  object UParcCR: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  COD_PARCELACR,'
      '  COD_CTARECEBER,'
      '  NUMPARC,'
      '  DTDEBITO,'
      '  COD_PARANT,'
      '  DESCONTO,'
      '  JUROS,'
      '  MULTA,'
      '  VALOR,'
      '  VALORPG,'
      '  FECH,'
      '  COBRANCA,'
      '  DTVENC,'
      '  COD_COTA,'
      '  HISTORICO,'
      '  VALEXT,'
      '  VALORSERV,'
      '  VALORPROD,'
      '  MARK,'
      '  IMP,'
      '  NUMBOLETO,'
      '  NUMFISC,'
      '  COD_CTACOR,'
      '  REMESSA,'
      '  DTREF,'
      '  PERVLRSERV,'
      '  APLICJUR,'
      '  NOSSONUMBLT,'
      '  SCPC,'
      '  TIPOBLT,'
      '  TEXTOBLT,'
      '  EXPORTA,'
      '  DIASATRASO,'
      '  NUMORDEM,'
      '  PARCIAL,'
      '  ESTRU'
      'from PARCELACR '
      'where'
      '  COD_PARCELACR = :COD_PARCELACR')
    ModifySQL.Strings = (
      'update PARCELACR'
      'set'
      '  COD_PARCELACR = :COD_PARCELACR,'
      '  COD_CTARECEBER = :COD_CTARECEBER,'
      '  NUMPARC = :NUMPARC,'
      '  DTDEBITO = :DTDEBITO,'
      '  COD_PARANT = :COD_PARANT,'
      '  DESCONTO = :DESCONTO,'
      '  JUROS = :JUROS,'
      '  MULTA = :MULTA,'
      '  VALOR = :VALOR,'
      '  VALORPG = :VALORPG,'
      '  FECH = :FECH,'
      '  COBRANCA = :COBRANCA,'
      '  DTVENC = :DTVENC,'
      '  COD_COTA = :COD_COTA,'
      '  HISTORICO = :HISTORICO,'
      '  VALEXT = :VALEXT,'
      '  VALORSERV = :VALORSERV,'
      '  VALORPROD = :VALORPROD,'
      '  MARK = :MARK,'
      '  IMP = :IMP,'
      '  NUMBOLETO = :NUMBOLETO,'
      '  NUMFISC = :NUMFISC,'
      '  COD_CTACOR = :COD_CTACOR,'
      '  REMESSA = :REMESSA,'
      '  DTREF = :DTREF,'
      '  PERVLRSERV = :PERVLRSERV,'
      '  APLICJUR = :APLICJUR,'
      '  NOSSONUMBLT = :NOSSONUMBLT,'
      '  SCPC = :SCPC,'
      '  TIPOBLT = :TIPOBLT,'
      '  TEXTOBLT = :TEXTOBLT,'
      '  EXPORTA = :EXPORTA,'
      '  DIASATRASO = :DIASATRASO,'
      '  NUMORDEM = :NUMORDEM,'
      '  PARCIAL = :PARCIAL,'
      '  ESTRU = :ESTRU'
      'where'
      '  COD_PARCELACR = :OLD_COD_PARCELACR')
    InsertSQL.Strings = (
      'insert into PARCELACR'
      
        '  (COD_PARCELACR, COD_CTARECEBER, NUMPARC, DTDEBITO, COD_PARANT,' +
        ' DESCONTO, '
      
        '   JUROS, MULTA, VALOR, VALORPG, FECH, COBRANCA, DTVENC, COD_COT' +
        'A, HISTORICO, '
      
        '   VALEXT, VALORSERV, VALORPROD, MARK, IMP, NUMBOLETO, NUMFISC, ' +
        'COD_CTACOR, '
      
        '   REMESSA, DTREF, PERVLRSERV, APLICJUR, NOSSONUMBLT, SCPC, TIPO' +
        'BLT, TEXTOBLT, '
      '   EXPORTA, DIASATRASO, NUMORDEM, PARCIAL, ESTRU)'
      'values'
      
        '  (:COD_PARCELACR, :COD_CTARECEBER, :NUMPARC, :DTDEBITO, :COD_PA' +
        'RANT, :DESCONTO, '
      
        '   :JUROS, :MULTA, :VALOR, :VALORPG, :FECH, :COBRANCA, :DTVENC, ' +
        ':COD_COTA, '
      
        '   :HISTORICO, :VALEXT, :VALORSERV, :VALORPROD, :MARK, :IMP, :NU' +
        'MBOLETO, '
      
        '   :NUMFISC, :COD_CTACOR, :REMESSA, :DTREF, :PERVLRSERV, :APLICJ' +
        'UR, :NOSSONUMBLT, '
      
        '   :SCPC, :TIPOBLT, :TEXTOBLT, :EXPORTA, :DIASATRASO, :NUMORDEM,' +
        ' :PARCIAL, '
      '   :ESTRU)')
    DeleteSQL.Strings = (
      'delete from PARCELACR'
      'where'
      '  COD_PARCELACR = :OLD_COD_PARCELACR')
    Left = 240
    Top = 136
  end
  object DPlnCta: TDataSource
    DataSet = TPlnCta
    Left = 16
    Top = 184
  end
  object DCtaP: TDataSource
    DataSet = TCtaP
    Left = 111
    Top = 184
  end
  object DParcCP: TDataSource
    DataSet = TParcCP
    Left = 153
    Top = 184
  end
  object DCtaR: TDataSource
    DataSet = TCtaR
    Left = 197
    Top = 184
  end
  object DParcCR: TDataSource
    DataSet = TParcCR
    Left = 240
    Top = 184
  end
  object WCtaP: TIBQuery
    Database = IBDB
    Transaction = IBT
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'SELECT  first 1 * FROM VWCTAPAGAR')
    Left = 16
    Top = 248
    object WCtaPCOD_CTAPAGAR: TIntegerField
      FieldName = 'COD_CTAPAGAR'
    end
    object WCtaPCOD_FORMPAG: TIntegerField
      FieldName = 'COD_FORMPAG'
    end
    object WCtaPCOD_FORNEC: TIntegerField
      FieldName = 'COD_FORNEC'
    end
    object WCtaPCOD_PLNCTA: TIntegerField
      FieldName = 'COD_PLNCTA'
    end
    object WCtaPCOBRANCA: TIBStringField
      FieldName = 'COBRANCA'
      Size = 25
    end
    object WCtaPDTLANC: TDateField
      FieldName = 'DTLANC'
      EditMask = '!99/99/0000;1;_'
    end
    object WCtaPHISTORICO: TIBStringField
      FieldName = 'HISTORICO'
      Size = 100
    end
    object WCtaPVALOR: TIBBCDField
      FieldName = 'VALOR'
      DisplayFormat = '0.00'
      EditFormat = '0.00'
      Precision = 9
      Size = 2
    end
    object WCtaPCOD_USUARIO: TIntegerField
      FieldName = 'COD_USUARIO'
    end
    object WCtaPLOGIN: TIBStringField
      FieldName = 'LOGIN'
      Size = 10
    end
    object WCtaPCOD_LOJA: TIntegerField
      FieldName = 'COD_LOJA'
    end
    object WCtaPNUMDOC: TIBStringField
      FieldName = 'NUMDOC'
      Size = 25
    end
  end
  object DWCtaP: TDataSource
    DataSet = WCtaP
    Left = 16
    Top = 296
  end
  object WParP: TIBQuery
    Database = IBDB
    Transaction = IBT
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'SELECT  first 1 * FROM VWPARCP')
    Left = 64
    Top = 248
    object WParPCOD_INTERNO: TIBStringField
      FieldName = 'COD_INTERNO'
      Origin = 'VWPARCP.COD_INTERNO'
      Size = 10
    end
    object WParPCOD_PARCELACP: TIntegerField
      FieldName = 'COD_PARCELACP'
      Origin = 'VWPARCP.COD_PARCELACP'
    end
    object WParPCOD_CTAPAGAR: TIntegerField
      FieldName = 'COD_CTAPAGAR'
      Origin = 'VWPARCP.COD_CTAPAGAR'
    end
    object WParPCOD_COTA: TIntegerField
      FieldName = 'COD_COTA'
      Origin = 'VWPARCP.COD_COTA'
    end
    object WParPCOD_PARANT: TIntegerField
      FieldName = 'COD_PARANT'
      Origin = 'VWPARCP.COD_PARANT'
    end
    object WParPCOBRANCA: TIBStringField
      FieldName = 'COBRANCA'
      Origin = 'VWPARCP.COBRANCA'
      Size = 10
    end
    object WParPDTVENC: TDateField
      FieldName = 'DTVENC'
      Origin = 'VWPARCP.DTVENC'
    end
    object WParPNUMPARC: TIBStringField
      FieldName = 'NUMPARC'
      Origin = 'VWPARCP.NUMPARC'
      Size = 30
    end
    object WParPVALOR: TIBBCDField
      FieldName = 'VALOR'
      Origin = 'VWPARCP.VALOR'
      Precision = 18
      Size = 2
    end
    object WParPVALORPG: TIBBCDField
      FieldName = 'VALORPG'
      Origin = 'VWPARCP.VALORPG'
      Precision = 18
      Size = 2
    end
    object WParPDTDEBITO: TDateField
      FieldName = 'DTDEBITO'
      Origin = 'VWPARCP.DTDEBITO'
    end
    object WParPFECH: TIBStringField
      FieldName = 'FECH'
      Origin = 'VWPARCP.FECH'
      FixedChar = True
      Size = 1
    end
    object WParPCLASSIFICACAO: TIBStringField
      FieldName = 'CLASSIFICACAO'
      Origin = 'VWPARCP.CLASSIFICACAO'
    end
    object WParPDESCRICAO: TIBStringField
      FieldName = 'DESCRICAO'
      Origin = 'VWPARCP.DESCRICAO'
      Size = 100
    end
    object WParPCOD_PLNCTA: TIntegerField
      FieldName = 'COD_PLNCTA'
      Origin = 'VWPARCP.COD_PLNCTA'
    end
    object WParPCOD_FORMPAG: TIntegerField
      FieldName = 'COD_FORMPAG'
      Origin = 'VWPARCP.COD_FORMPAG'
    end
    object WParPCOD_LOJA: TIntegerField
      FieldName = 'COD_LOJA'
      Origin = 'VWPARCP.COD_LOJA'
    end
    object WParPFORMPAG: TIBStringField
      FieldName = 'FORMPAG'
      Origin = 'VWPARCP.FORMPAG'
      Size = 100
    end
    object WParPCOD_FORNEC: TIntegerField
      FieldName = 'COD_FORNEC'
      Origin = 'VWPARCP.COD_FORNEC'
    end
    object WParPCOD_PESSOA: TIntegerField
      FieldName = 'COD_PESSOA'
      Origin = 'VWPARCP.COD_PESSOA'
    end
    object WParPNOME: TIBStringField
      FieldName = 'NOME'
      Origin = 'VWPARCP.NOME'
      Size = 100
    end
    object WParPDTLANC: TDateField
      FieldName = 'DTLANC'
      Origin = 'VWPARCP.DTLANC'
    end
    object WParPNUMDOC: TIBStringField
      FieldName = 'NUMDOC'
      Origin = 'VWPARCP.NUMDOC'
      Size = 25
    end
    object WParPHISTORICO: TIBStringField
      FieldName = 'HISTORICO'
      Origin = 'VWPARCP.HISTORICO'
      Size = 100
    end
    object WParPPREVISAO: TIBStringField
      FieldName = 'PREVISAO'
      Origin = 'VWPARCP.PREVISAO'
      FixedChar = True
      Size = 1
    end
    object WParPDTREFER: TDateField
      FieldName = 'DTREFER'
      Origin = 'VWPARCP.DTREFER'
    end
    object WParPMARK: TIBStringField
      FieldName = 'MARK'
      Origin = 'VWPARCP.MARK'
      FixedChar = True
      Size = 1
    end
    object WParPNUMFISC: TIntegerField
      FieldName = 'NUMFISC'
      Origin = 'VWPARCP.NUMFISC'
    end
    object WParPNUMBOLETO: TIBStringField
      FieldName = 'NUMBOLETO'
      Origin = 'VWPARCP.NUMBOLETO'
      Size = 10
    end
  end
  object DWParP: TDataSource
    DataSet = WParP
    Left = 64
    Top = 296
  end
  object WCtaR: TIBQuery
    Database = IBDB
    Transaction = IBT
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'SELECT  first 1 * FROM VWCTARECEBER')
    Left = 112
    Top = 248
    object WCtaRCOD_CTARECEBER: TIntegerField
      FieldName = 'COD_CTARECEBER'
      Origin = 'VWCTARECEBER.COD_CTARECEBER'
    end
    object WCtaRCOD_FORMPAG: TIntegerField
      FieldName = 'COD_FORMPAG'
      Origin = 'VWCTARECEBER.COD_FORMPAG'
    end
    object WCtaRCOD_CLIENTE: TIntegerField
      FieldName = 'COD_CLIENTE'
      Origin = 'VWCTARECEBER.COD_CLIENTE'
    end
    object WCtaRCOD_PLNCTA: TIntegerField
      FieldName = 'COD_PLNCTA'
      Origin = 'VWCTARECEBER.COD_PLNCTA'
    end
    object WCtaRCOBRANCA: TIBStringField
      FieldName = 'COBRANCA'
      Origin = 'VWCTARECEBER.COBRANCA'
      Size = 25
    end
    object WCtaRDTLANC: TDateField
      FieldName = 'DTLANC'
      Origin = 'VWCTARECEBER.DTLANC'
    end
    object WCtaRHISTORICO: TIBStringField
      FieldName = 'HISTORICO'
      Origin = 'VWCTARECEBER.HISTORICO'
      Size = 100
    end
    object WCtaRNUMDOC: TIBStringField
      FieldName = 'NUMDOC'
      Origin = 'VWCTARECEBER.NUMDOC'
      Size = 25
    end
    object WCtaRVALOR: TIBBCDField
      FieldName = 'VALOR'
      Origin = 'VWCTARECEBER.VALOR'
      Precision = 18
      Size = 2
    end
    object WCtaRCOD_USUARIO: TIntegerField
      FieldName = 'COD_USUARIO'
      Origin = 'VWCTARECEBER.COD_USUARIO'
    end
    object WCtaRLOGIN: TIBStringField
      FieldName = 'LOGIN'
      Origin = 'VWCTARECEBER.LOGIN'
      Size = 10
    end
    object WCtaRCOD_LOJA: TIntegerField
      FieldName = 'COD_LOJA'
      Origin = 'VWCTARECEBER.COD_LOJA'
    end
    object WCtaRNUMCARTAO: TIBStringField
      FieldName = 'NUMCARTAO'
      Origin = 'VWCTARECEBER.NUMCARTAO'
      Size = 15
    end
  end
  object DWCtaR: TDataSource
    DataSet = WCtaR
    Left = 112
    Top = 296
  end
  object WParR: TIBQuery
    Database = IBDB
    Transaction = IBT
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'SELECT  first 1 * FROM VWPARCR')
    Left = 160
    Top = 248
    object WParRCOD_INTERNO: TIBStringField
      FieldName = 'COD_INTERNO'
      Origin = 'VWPARCR.COD_INTERNO'
      Size = 10
    end
    object WParRCOD_PARCELACR: TIntegerField
      FieldName = 'COD_PARCELACR'
      Origin = 'VWPARCR.COD_PARCELACR'
    end
    object WParRCOD_CTARECEBER: TIntegerField
      FieldName = 'COD_CTARECEBER'
      Origin = 'VWPARCR.COD_CTARECEBER'
    end
    object WParRCOD_COTA: TIntegerField
      FieldName = 'COD_COTA'
      Origin = 'VWPARCR.COD_COTA'
    end
    object WParRCOD_PARANT: TIntegerField
      FieldName = 'COD_PARANT'
      Origin = 'VWPARCR.COD_PARANT'
    end
    object WParRCOBRANCA: TIBStringField
      FieldName = 'COBRANCA'
      Origin = 'VWPARCR.COBRANCA'
      Size = 10
    end
    object WParRDTVENC: TDateField
      FieldName = 'DTVENC'
      Origin = 'VWPARCR.DTVENC'
    end
    object WParRNUMPARC: TIBStringField
      FieldName = 'NUMPARC'
      Origin = 'VWPARCR.NUMPARC'
      Size = 30
    end
    object WParRVALOR: TIBBCDField
      FieldName = 'VALOR'
      Origin = 'VWPARCR.VALOR'
      Precision = 18
      Size = 2
    end
    object WParRVALORPG: TIBBCDField
      FieldName = 'VALORPG'
      Origin = 'VWPARCR.VALORPG'
      Precision = 18
      Size = 2
    end
    object WParRTIPOBOLETO: TIBStringField
      FieldName = 'TIPOBOLETO'
      Origin = 'VWPARCR.TIPOBOLETO'
      FixedChar = True
      Size = 1
    end
    object WParRNUMCTA: TIBStringField
      FieldName = 'NUMCTA'
      Origin = 'VWPARCR.NUMCTA'
      Size = 10
    end
    object WParRDTDEBITO: TDateField
      FieldName = 'DTDEBITO'
      Origin = 'VWPARCR.DTDEBITO'
    end
    object WParRFECH: TIBStringField
      FieldName = 'FECH'
      Origin = 'VWPARCR.FECH'
      FixedChar = True
      Size = 1
    end
    object WParRCLASSIFICACAO: TIBStringField
      FieldName = 'CLASSIFICACAO'
      Origin = 'VWPARCR.CLASSIFICACAO'
    end
    object WParRDESCRICAO: TIBStringField
      FieldName = 'DESCRICAO'
      Origin = 'VWPARCR.DESCRICAO'
      Size = 100
    end
    object WParRCOD_PLNCTA: TIntegerField
      FieldName = 'COD_PLNCTA'
      Origin = 'VWPARCR.COD_PLNCTA'
    end
    object WParRCOD_FORMPAG: TIntegerField
      FieldName = 'COD_FORMPAG'
      Origin = 'VWPARCR.COD_FORMPAG'
    end
    object WParRCOD_LOJA: TIntegerField
      FieldName = 'COD_LOJA'
      Origin = 'VWPARCR.COD_LOJA'
    end
    object WParRFORMPAG: TIBStringField
      FieldName = 'FORMPAG'
      Origin = 'VWPARCR.FORMPAG'
      Size = 100
    end
    object WParRCOD_CLIENTE: TIntegerField
      FieldName = 'COD_CLIENTE'
      Origin = 'VWPARCR.COD_CLIENTE'
    end
    object WParRCOD_PESSOA: TIntegerField
      FieldName = 'COD_PESSOA'
      Origin = 'VWPARCR.COD_PESSOA'
    end
    object WParRNOME: TIBStringField
      FieldName = 'NOME'
      Origin = 'VWPARCR.NOME'
      Size = 100
    end
    object WParRDTLANC: TDateField
      FieldName = 'DTLANC'
      Origin = 'VWPARCR.DTLANC'
    end
    object WParRNUMDOC: TIBStringField
      FieldName = 'NUMDOC'
      Origin = 'VWPARCR.NUMDOC'
      Size = 25
    end
    object WParRHISTORICO: TIBStringField
      FieldName = 'HISTORICO'
      Origin = 'VWPARCR.HISTORICO'
      Size = 100
    end
    object WParRMARK: TIBStringField
      FieldName = 'MARK'
      Origin = 'VWPARCR.MARK'
      FixedChar = True
      Size = 1
    end
    object WParRNUMBOLETO: TIBStringField
      FieldName = 'NUMBOLETO'
      Origin = 'VWPARCR.NUMBOLETO'
      Size = 10
    end
    object WParRNUMFISC: TIntegerField
      FieldName = 'NUMFISC'
      Origin = 'VWPARCR.NUMFISC'
    end
    object WParRREMESSA: TIBStringField
      FieldName = 'REMESSA'
      Origin = 'VWPARCR.REMESSA'
      Size = 10
    end
    object WParRCOD_CTACOR: TIntegerField
      FieldName = 'COD_CTACOR'
      Origin = 'VWPARCR.COD_CTACOR'
    end
    object WParRSCPC: TIBStringField
      FieldName = 'SCPC'
      Origin = 'VWPARCR.SCPC'
      FixedChar = True
      Size = 1
    end
    object WParRNUMCARTAO: TIBStringField
      FieldName = 'NUMCARTAO'
      Origin = 'VWPARCR.NUMCARTAO'
      Size = 15
    end
    object WParRDIASATRASO: TIntegerField
      FieldName = 'DIASATRASO'
      Origin = 'VWPARCR.DIASATRASO'
    end
    object WParRVENDEDOR: TIBStringField
      FieldName = 'VENDEDOR'
      Origin = 'VWPARCR.VENDEDOR'
      Size = 100
    end
  end
  object DWParR: TDataSource
    DataSet = WParR
    Left = 160
    Top = 296
  end
  object TRel: TIBQuery
    Tag = 5
    Database = IBDB
    Transaction = IBT
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'select pessoa.nome, vwparcr.dtvenc, vwparcr.numparc, vwcidade.no' +
        'me as CIDADE, vwcidade.uf as UF_ESTADO, pessoa.bairro, pessoa.ce' +
        'p, pessoaf.rg, vwparcr.numfisc,'
      
        '        pessoaf.emp_trab, pessoaf.emp_conj, pessoa.dtnasc AS NAS' +
        'CIMENTO, vwparcr.valor, vwparcr.dtdebito, vwparcr.fech,'
      
        ' vwparcr.nome, parcelacr.aplicjur, pessoa.telrel, vwparcr.dtlanc' +
        ', vwparcr.numdoc, cliente.multa AS MULTACLI, cliente.juro AS JUR' +
        'OCLI,'
      
        ' pessoaf.nome_pai, pessoaf.nome_mae, pessoaf.nome_conj, pessoa.e' +
        'ndereco, pessoa.endnumero, cliente.cod_interno, pessoa.vlrcredit' +
        'o,'
      
        ' pessoa.cpfcnpj, pessoaj.razao_social, pessoaj.insc_est, cliente' +
        '.informacao'
      ' From vwparcr'
      
        ' left join parcelacr on vwparcr.cod_parcelacr=parcelacr.cod_parc' +
        'elacr'
      
        ' left join ctareceber ON ctareceber.cod_ctareceber=vwparcr.cod_c' +
        'tareceber'
      ' Left Join Cliente on Cliente.Cod_Cliente=VWParcr.COD_CLIENTE'
      ' left join pessoa on pessoa.cod_pessoa=cliente.cod_pessoa'
      ' left join pessoaf on pessoaf.cod_pessoa=pessoa.cod_pessoa'
      ' left join pessoaj on pessoaj.cod_pessoa = pessoa.cod_pessoa'
      ' left join vwcidade on pessoa.cod_cidade = vwcidade.cod_cidade')
    Left = 207
    Top = 248
  end
  object DRel: TDataSource
    DataSet = TRel
    Left = 207
    Top = 296
  end
  object TCConta: TIBQuery
    Database = IBDB
    Transaction = IBT
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select  first 1 * from PLNCTACALC')
    UpdateObject = UCConta
    Left = 64
    Top = 88
    object TCContaCOD_PLNCTA: TIntegerField
      FieldName = 'COD_PLNCTA'
      Origin = 'PLNCTACALC.COD_PLNCTA'
    end
    object TCContaCOD_PLNCTAREF: TIntegerField
      FieldName = 'COD_PLNCTAREF'
      Origin = 'PLNCTACALC.COD_PLNCTAREF'
    end
    object TCContaOPER: TIBStringField
      FieldName = 'OPER'
      Origin = 'PLNCTACALC.OPER'
      FixedChar = True
      Size = 1
    end
  end
  object UCConta: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  COD_PLNCTA,'
      '  COD_PLNCTAREF,'
      '  OPER'
      'from PLNCTACALC '
      'where'
      '  COD_PLNCTA = :COD_PLNCTA')
    ModifySQL.Strings = (
      'update PLNCTACALC'
      'set'
      '  COD_PLNCTA = :COD_PLNCTA,'
      '  COD_PLNCTAREF = :COD_PLNCTAREF,'
      '  OPER = :OPER'
      'where'
      '  COD_PLNCTA = :OLD_COD_PLNCTA')
    InsertSQL.Strings = (
      'insert into PLNCTACALC'
      '  (COD_PLNCTA, COD_PLNCTAREF, OPER)'
      'values'
      '  (:COD_PLNCTA, :COD_PLNCTAREF, :OPER)')
    DeleteSQL.Strings = (
      'delete from PLNCTACALC'
      'where'
      '  COD_PLNCTA = :OLD_COD_PLNCTA')
    Left = 64
    Top = 136
  end
  object DCConta: TDataSource
    DataSet = TCConta
    Left = 64
    Top = 184
  end
  object TAgenda: TIBQuery
    Tag = 5
    Database = IBDB
    Transaction = IBT
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select first 1  * from AGENDA')
    UpdateObject = UAgenda
    Left = 296
    Top = 88
    object TAgendaCOD_AGENDA: TIntegerField
      FieldName = 'COD_AGENDA'
      Origin = 'AGENDA.COD_AGENDA'
    end
    object TAgendaDATAAG: TDateField
      FieldName = 'DATAAG'
      Origin = 'AGENDA.DATAAG'
    end
    object TAgendaHORAAG: TTimeField
      FieldName = 'HORAAG'
      Origin = 'AGENDA.HORAAG'
    end
    object TAgendaASSUNTO: TIBStringField
      FieldName = 'ASSUNTO'
      Origin = 'AGENDA.ASSUNTO'
      Size = 40
    end
    object TAgendaDTAVISO: TDateField
      FieldName = 'DTAVISO'
      Origin = 'AGENDA.DTAVISO'
    end
    object TAgendaHRAVISO: TTimeField
      FieldName = 'HRAVISO'
      Origin = 'AGENDA.HRAVISO'
    end
    object TAgendaFINALIZADO: TIBStringField
      FieldName = 'FINALIZADO'
      Origin = 'AGENDA.FINALIZADO'
      FixedChar = True
      Size = 1
    end
    object TAgendaCOD_PARCELACR: TIntegerField
      FieldName = 'COD_PARCELACR'
      Origin = 'AGENDA.COD_PARCELACR'
    end
  end
  object UAgenda: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  COD_AGENDA,'
      '  DATAAG,'
      '  HORAAG,'
      '  ASSUNTO,'
      '  DTAVISO,'
      '  HRAVISO,'
      '  FINALIZADO,'
      '  COD_PARCELACR'
      'from AGENDA '
      'where'
      '  COD_AGENDA = :COD_AGENDA')
    ModifySQL.Strings = (
      'update AGENDA'
      'set'
      '  COD_AGENDA = :COD_AGENDA,'
      '  DATAAG = :DATAAG,'
      '  HORAAG = :HORAAG,'
      '  ASSUNTO = :ASSUNTO,'
      '  DTAVISO = :DTAVISO,'
      '  HRAVISO = :HRAVISO,'
      '  FINALIZADO = :FINALIZADO,'
      '  COD_PARCELACR = :COD_PARCELACR'
      'where'
      '  COD_AGENDA = :OLD_COD_AGENDA')
    InsertSQL.Strings = (
      'insert into AGENDA'
      
        '  (COD_AGENDA, DATAAG, HORAAG, ASSUNTO, DTAVISO, HRAVISO, FINALI' +
        'ZADO, COD_PARCELACR)'
      'values'
      
        '  (:COD_AGENDA, :DATAAG, :HORAAG, :ASSUNTO, :DTAVISO, :HRAVISO, ' +
        ':FINALIZADO, '
      '   :COD_PARCELACR)')
    DeleteSQL.Strings = (
      'delete from AGENDA'
      'where'
      '  COD_AGENDA = :OLD_COD_AGENDA')
    Left = 296
    Top = 136
  end
  object DAgenda: TDataSource
    DataSet = TAgenda
    Left = 296
    Top = 184
  end
  object Tcontato: TIBQuery
    Tag = 5
    Database = IBDB
    Transaction = IBT
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select  first 1 * from CONTATO')
    UpdateObject = UContato
    Left = 344
    Top = 88
    object TcontatoCOD_CONTATO: TIntegerField
      FieldName = 'COD_CONTATO'
      Origin = 'CONTATO.COD_CONTATO'
    end
    object TcontatoCOD_AGENDA: TIntegerField
      FieldName = 'COD_AGENDA'
      Origin = 'CONTATO.COD_AGENDA'
    end
    object TcontatoDTCONTATO: TDateField
      FieldName = 'DTCONTATO'
      Origin = 'CONTATO.DTCONTATO'
    end
    object TcontatoHRCONTATO: TTimeField
      FieldName = 'HRCONTATO'
      Origin = 'CONTATO.HRCONTATO'
    end
    object TcontatoCONTATO: TIBStringField
      FieldName = 'CONTATO'
      Origin = 'CONTATO.CONTATO'
      Size = 40
    end
    object TcontatoTEXTO: TMemoField
      FieldName = 'TEXTO'
      Origin = 'CONTATO.TEXTO'
      BlobType = ftMemo
      Size = 8
    end
  end
  object UContato: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  COD_CONTATO,'
      '  COD_AGENDA,'
      '  DTCONTATO,'
      '  HRCONTATO,'
      '  CONTATO,'
      '  TEXTO'
      'from CONTATO '
      'where'
      '  COD_CONTATO = :COD_CONTATO')
    ModifySQL.Strings = (
      'update CONTATO'
      'set'
      '  COD_CONTATO = :COD_CONTATO,'
      '  COD_AGENDA = :COD_AGENDA,'
      '  DTCONTATO = :DTCONTATO,'
      '  HRCONTATO = :HRCONTATO,'
      '  CONTATO = :CONTATO,'
      '  TEXTO = :TEXTO'
      'where'
      '  COD_CONTATO = :OLD_COD_CONTATO')
    InsertSQL.Strings = (
      'insert into CONTATO'
      
        '  (COD_CONTATO, COD_AGENDA, DTCONTATO, HRCONTATO, CONTATO, TEXTO' +
        ')'
      'values'
      
        '  (:COD_CONTATO, :COD_AGENDA, :DTCONTATO, :HRCONTATO, :CONTATO, ' +
        ':TEXTO)')
    DeleteSQL.Strings = (
      'delete from CONTATO'
      'where'
      '  COD_CONTATO = :OLD_COD_CONTATO')
    Left = 344
    Top = 136
  end
  object DContato: TDataSource
    DataSet = Tcontato
    Left = 344
    Top = 184
  end
end
