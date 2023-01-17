object DMENTRADA: TDMENTRADA
  OldCreateOrder = False
  Left = 434
  Top = 194
  Height = 418
  Width = 428
  object IBDB: TIBDatabase
    DatabaseName = 'note:C:\MZR\DataBase\Mercescan\dbmacs.gdb'
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
      'select * from PEDCOMPRA'
      ''
      '')
    Left = 128
    Top = 8
  end
  object DAlx: TDataSource
    DataSet = TAlx
    Left = 184
    Top = 8
  end
  object TPedC: TIBQuery
    Database = IBDB
    Transaction = IBT
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select  first 1 * from PEDCOMPRA')
    UpdateObject = UPedC
    Left = 16
    Top = 80
    object TPedCCOD_PEDCOMP: TIntegerField
      FieldName = 'COD_PEDCOMP'
      Required = True
    end
    object TPedCCOD_FORNEC: TIntegerField
      FieldName = 'COD_FORNEC'
    end
    object TPedCVENDEDOR: TIBStringField
      FieldName = 'VENDEDOR'
      Size = 100
    end
    object TPedCCOD_USUARIO: TIntegerField
      FieldName = 'COD_USUARIO'
    end
    object TPedCVALOR: TIBBCDField
      FieldName = 'VALOR'
      Precision = 9
      Size = 2
    end
    object TPedCCOD_FORMPAG: TIntegerField
      FieldName = 'COD_FORMPAG'
    end
    object TPedCDTPEDCOMP: TDateField
      FieldName = 'DTPEDCOMP'
      EditMask = '!99/99/0000;1;_'
    end
    object TPedCDESCONTO: TFloatField
      FieldName = 'DESCONTO'
    end
    object TPedCPRAZOENTR: TFloatField
      FieldName = 'PRAZOENTR'
    end
    object TPedCOBS: TMemoField
      FieldName = 'OBS'
      BlobType = ftMemo
      Size = 8
    end
    object TPedCSITUACAO: TIBStringField
      FieldName = 'SITUACAO'
      Size = 10
    end
    object TPedCNUMPED: TIntegerField
      FieldName = 'NUMPED'
      Required = True
    end
    object TPedCVLRPCOMIS: TIBBCDField
      FieldName = 'VLRPCOMIS'
      Precision = 9
      Size = 2
    end
    object TPedCPERCOMIS: TIBBCDField
      FieldName = 'PERCOMIS'
      Precision = 18
      Size = 2
    end
    object TPedCDTFECH: TDateField
      FieldName = 'DTFECH'
    end
    object TPedCCOD_DESTINATARIO: TIntegerField
      FieldName = 'COD_DESTINATARIO'
      Origin = 'PEDCOMPRA.COD_DESTINATARIO'
    end
    object TPedCDESTINATARIO: TIBStringField
      FieldName = 'DESTINATARIO'
      Origin = 'PEDCOMPRA.DESTINATARIO'
      Size = 60
    end
    object TPedCCOD_DEVOLUCAO: TIntegerField
      FieldName = 'COD_DEVOLUCAO'
      Origin = 'PEDCOMPRA.COD_DEVOLUCAO'
    end
    object TPedCNUMDEV: TIBStringField
      FieldName = 'NUMDEV'
      Origin = 'PEDCOMPRA.NUMDEV'
      Size = 10
    end
    object TPedCFISCO: TIBStringField
      FieldName = 'FISCO'
      Origin = 'PEDCOMPRA.FISCO'
      Size = 10
    end
    object TPedCNUMFISCAL: TIBStringField
      FieldName = 'NUMFISCAL'
      Origin = 'PEDCOMPRA.NUMFISCAL'
      Size = 10
    end
    object TPedCDESCMOE: TIBBCDField
      FieldName = 'DESCMOE'
      Origin = 'PEDCOMPRA.DESCMOE'
      Precision = 18
      Size = 2
    end
    object TPedCCOBRANCA: TIBStringField
      FieldName = 'COBRANCA'
      Origin = 'PEDCOMPRA.COBRANCA'
      Size = 10
    end
    object TPedCEXPORT: TIBStringField
      FieldName = 'EXPORT'
      Origin = 'PEDCOMPRA.EXPORT'
      FixedChar = True
      Size = 1
    end
    object TPedCMARK: TIBStringField
      FieldName = 'MARK'
      Origin = 'PEDCOMPRA.MARK'
      FixedChar = True
      Size = 1
    end
    object TPedCFATURADO: TIBStringField
      FieldName = 'FATURADO'
      Origin = 'PEDCOMPRA.FATURADO'
      FixedChar = True
      Size = 1
    end
    object TPedCVLRFRETE: TIBBCDField
      FieldName = 'VLRFRETE'
      Origin = 'PEDCOMPRA.VLRFRETE'
      Precision = 18
      Size = 2
    end
    object TPedCEMISSAOPROPRIA: TIBStringField
      FieldName = 'EMISSAOPROPRIA'
      Origin = 'PEDCOMPRA.EMISSAOPROPRIA'
      FixedChar = True
      Size = 1
    end
    object TPedCVLRICMSSUBSTITUICAO: TIBBCDField
      FieldName = 'VLRICMSSUBSTITUICAO'
      Origin = 'PEDCOMPRA.VLRICMSSUBSTITUICAO'
      Precision = 18
      Size = 2
    end
    object TPedCVLRIPI: TIBBCDField
      FieldName = 'VLRIPI'
      Origin = 'PEDCOMPRA.VLRIPI'
      Precision = 18
      Size = 2
    end
    object TPedCVLROUTROS: TIBBCDField
      FieldName = 'VLROUTROS'
      Origin = 'PEDCOMPRA.VLROUTROS'
      Precision = 18
      Size = 2
    end
  end
  object TItemPC: TIBQuery
    Database = IBDB
    Transaction = IBT
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select  first 1 * from ITENSPEDC')
    UpdateObject = UItemPC
    Left = 64
    Top = 80
    object TItemPCCOD_ITENSPEDC: TIntegerField
      FieldName = 'COD_ITENSPEDC'
      Origin = 'ITENSPEDC.COD_ITENSPEDC'
      Required = True
    end
    object TItemPCCOD_PEDCOMPRA: TIntegerField
      FieldName = 'COD_PEDCOMPRA'
      Origin = 'ITENSPEDC.COD_PEDCOMPRA'
    end
    object TItemPCCOD_ESTOQUE: TIntegerField
      FieldName = 'COD_ESTOQUE'
      Origin = 'ITENSPEDC.COD_ESTOQUE'
    end
    object TItemPCQTDEPROD: TIBBCDField
      FieldName = 'QTDEPROD'
      Origin = 'ITENSPEDC.QTDEPROD'
      Precision = 18
      Size = 3
    end
    object TItemPCVALUNIT: TIBBCDField
      FieldName = 'VALUNIT'
      Origin = 'ITENSPEDC.VALUNIT'
      Precision = 9
      Size = 2
    end
    object TItemPCVALORTOTAL: TIBBCDField
      FieldName = 'VALORTOTAL'
      Origin = 'ITENSPEDC.VALORTOTAL'
      Precision = 9
      Size = 2
    end
    object TItemPCDATA: TDateField
      FieldName = 'DATA'
      Origin = 'ITENSPEDC.DATA'
    end
    object TItemPCDESCPRO: TIBBCDField
      FieldName = 'DESCPRO'
      Origin = 'ITENSPEDC.DESCPRO'
      Precision = 18
      Size = 2
    end
    object TItemPCATUEST: TIBStringField
      FieldName = 'ATUEST'
      Origin = 'ITENSPEDC.ATUEST'
      FixedChar = True
      Size = 1
    end
    object TItemPCALIQICMS: TIBBCDField
      FieldName = 'ALIQICMS'
      Origin = 'ITENSPEDC.ALIQICMS'
      Precision = 18
      Size = 2
    end
    object TItemPCFRETE: TIBBCDField
      FieldName = 'FRETE'
      Origin = 'ITENSPEDC.FRETE'
      Precision = 18
      Size = 2
    end
    object TItemPCEMBPROD: TIBBCDField
      FieldName = 'EMBPROD'
      Origin = 'ITENSPEDC.EMBPROD'
      Precision = 18
      Size = 2
    end
    object TItemPCVLRIPI: TIBBCDField
      FieldName = 'VLRIPI'
      Origin = 'ITENSPEDC.VLRIPI'
      Precision = 9
      Size = 2
    end
    object TItemPCCOD_LOTE: TIntegerField
      FieldName = 'COD_LOTE'
      Origin = 'ITENSPEDC.COD_LOTE'
    end
    object TItemPCBASEICMS: TIBBCDField
      FieldName = 'BASEICMS'
      Origin = 'ITENSPEDC.BASEICMS'
      Precision = 9
      Size = 2
    end
    object TItemPCVLRICMS: TIBBCDField
      FieldName = 'VLRICMS'
      Origin = 'ITENSPEDC.VLRICMS'
      Precision = 9
      Size = 2
    end
    object TItemPCBASEICMSSUBS: TIBBCDField
      FieldName = 'BASEICMSSUBS'
      Origin = 'ITENSPEDC.BASEICMSSUBS'
      Precision = 9
      Size = 2
    end
    object TItemPCVLRICMSSUBS: TIBBCDField
      FieldName = 'VLRICMSSUBS'
      Origin = 'ITENSPEDC.VLRICMSSUBS'
      Precision = 9
      Size = 2
    end
    object TItemPCALIQIPI: TIBBCDField
      FieldName = 'ALIQIPI'
      Origin = 'ITENSPEDC.ALIQIPI'
      Precision = 18
      Size = 2
    end
    object TItemPCREDUCBASEICMS: TIBBCDField
      FieldName = 'REDUCBASEICMS'
      Origin = 'ITENSPEDC.REDUCBASEICMS'
      Precision = 9
      Size = 2
    end
    object TItemPCQTDEST: TIBBCDField
      FieldName = 'QTDEST'
      Origin = 'ITENSPEDC.QTDEST'
      Precision = 18
      Size = 3
    end
    object TItemPCCOD_DEVOLUCAO: TIntegerField
      FieldName = 'COD_DEVOLUCAO'
      Origin = 'ITENSPEDC.COD_DEVOLUCAO'
    end
    object TItemPCCONTREMESSA: TIntegerField
      FieldName = 'CONTREMESSA'
      Origin = 'ITENSPEDC.CONTREMESSA'
    end
    object TItemPCQTDEEXP: TIBBCDField
      FieldName = 'QTDEEXP'
      Origin = 'ITENSPEDC.QTDEEXP'
      Precision = 18
      Size = 3
    end
    object TItemPCCOD_UNIDADE: TIntegerField
      FieldName = 'COD_UNIDADE'
      Origin = 'ITENSPEDC.COD_UNIDADE'
    end
    object TItemPCCOD_CST: TIntegerField
      FieldName = 'COD_CST'
      Origin = 'ITENSPEDC.COD_CST'
    end
    object TItemPCCFOP: TIBStringField
      FieldName = 'CFOP'
      Origin = 'ITENSPEDC.CFOP'
      Size = 10
    end
    object TItemPCDESCNF: TIBBCDField
      FieldName = 'DESCNF'
      Origin = 'ITENSPEDC.DESCNF'
      Precision = 18
      Size = 2
    end
    object TItemPCOBS: TIBStringField
      FieldName = 'OBS'
      Origin = 'ITENSPEDC.OBS'
      Size = 60
    end
    object TItemPCAGRUP: TIBStringField
      FieldName = 'AGRUP'
      Origin = 'ITENSPEDC.AGRUP'
      FixedChar = True
      Size = 1
    end
    object TItemPCQTDBRUTA: TIBBCDField
      FieldName = 'QTDBRUTA'
      Origin = 'ITENSPEDC.QTDBRUTA'
      Precision = 18
      Size = 3
    end
    object TItemPCQTDDESCARTE: TIBBCDField
      FieldName = 'QTDDESCARTE'
      Origin = 'ITENSPEDC.QTDDESCARTE'
      Precision = 18
      Size = 3
    end
    object TItemPCMOTIVODESCARTE: TIBStringField
      FieldName = 'MOTIVODESCARTE'
      Origin = 'ITENSPEDC.MOTIVODESCARTE'
      Size = 50
    end
    object TItemPCCONSUMO: TIBStringField
      FieldName = 'CONSUMO'
      Origin = 'ITENSPEDC.CONSUMO'
      FixedChar = True
      Size = 1
    end
    object TItemPCVALORTOTALTRIBUTA: TIBBCDField
      FieldName = 'VALORTOTALTRIBUTA'
      Origin = 'ITENSPEDC.VALORTOTALTRIBUTA'
      Precision = 18
      Size = 2
    end
    object TItemPCALIQUOTATOTALTRIBUTA: TIBBCDField
      FieldName = 'ALIQUOTATOTALTRIBUTA'
      Origin = 'ITENSPEDC.ALIQUOTATOTALTRIBUTA'
      Precision = 18
      Size = 2
    end
  end
  object TLancEnt: TIBQuery
    Database = IBDB
    Transaction = IBT
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select  first 1 * from LANCENT')
    UpdateObject = ULancEnt
    Left = 112
    Top = 80
    object TLancEntCOD_LANENT: TIntegerField
      FieldName = 'COD_LANENT'
      Origin = 'LANCENT.COD_LANENT'
      Required = True
    end
    object TLancEntCOD_ESTOQUE: TIntegerField
      FieldName = 'COD_ESTOQUE'
      Origin = 'LANCENT.COD_ESTOQUE'
    end
    object TLancEntCOD_LOJA: TIntegerField
      FieldName = 'COD_LOJA'
      Origin = 'LANCENT.COD_LOJA'
    end
    object TLancEntCOD_USUARIO: TIntegerField
      FieldName = 'COD_USUARIO'
      Origin = 'LANCENT.COD_USUARIO'
    end
    object TLancEntNUMNOTA: TIBStringField
      FieldName = 'NUMNOTA'
      Origin = 'LANCENT.NUMNOTA'
      Size = 10
    end
    object TLancEntMOTIVO: TIBStringField
      FieldName = 'MOTIVO'
      Origin = 'LANCENT.MOTIVO'
      Size = 60
    end
    object TLancEntDT_LANCAMENTO: TDateField
      FieldName = 'DT_LANCAMENTO'
      Origin = 'LANCENT.DT_LANCAMENTO'
    end
    object TLancEntDT_ESTOQUE: TDateField
      FieldName = 'DT_ESTOQUE'
      Origin = 'LANCENT.DT_ESTOQUE'
    end
    object TLancEntQUANTIDADE: TFloatField
      FieldName = 'QUANTIDADE'
      Origin = 'LANCENT.QUANTIDADE'
    end
    object TLancEntQTDANT: TFloatField
      FieldName = 'QTDANT'
      Origin = 'LANCENT.QTDANT'
    end
    object TLancEntCOD_LOTE: TIntegerField
      FieldName = 'COD_LOTE'
      Origin = 'LANCENT.COD_LOTE'
    end
  end
  object UPedC: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  COD_PEDCOMP,'
      '  COD_FORNEC,'
      '  VENDEDOR,'
      '  COD_USUARIO,'
      '  VALOR,'
      '  COD_FORMPAG,'
      '  DTPEDCOMP,'
      '  DESCONTO,'
      '  PRAZOENTR,'
      '  OBS,'
      '  SITUACAO,'
      '  NUMPED,'
      '  VLRPCOMIS,'
      '  PERCOMIS,'
      '  DTFECH,'
      '  COD_DESTINATARIO,'
      '  DESTINATARIO,'
      '  COD_DEVOLUCAO,'
      '  NUMDEV,'
      '  FISCO,'
      '  NUMFISCAL,'
      '  DESCMOE,'
      '  COBRANCA,'
      '  EXPORT,'
      '  MARK,'
      '  FATURADO,'
      '  VLRFRETE,'
      '  EMISSAOPROPRIA,'
      '  VLRICMSSUBSTITUICAO,'
      '  VLRIPI,'
      '  VLROUTROS'
      'from PEDCOMPRA '
      'where'
      '  COD_PEDCOMP = :COD_PEDCOMP')
    ModifySQL.Strings = (
      'update PEDCOMPRA'
      'set'
      '  COD_PEDCOMP = :COD_PEDCOMP,'
      '  COD_FORNEC = :COD_FORNEC,'
      '  VENDEDOR = :VENDEDOR,'
      '  COD_USUARIO = :COD_USUARIO,'
      '  VALOR = :VALOR,'
      '  COD_FORMPAG = :COD_FORMPAG,'
      '  DTPEDCOMP = :DTPEDCOMP,'
      '  DESCONTO = :DESCONTO,'
      '  PRAZOENTR = :PRAZOENTR,'
      '  OBS = :OBS,'
      '  SITUACAO = :SITUACAO,'
      '  NUMPED = :NUMPED,'
      '  VLRPCOMIS = :VLRPCOMIS,'
      '  PERCOMIS = :PERCOMIS,'
      '  DTFECH = :DTFECH,'
      '  COD_DESTINATARIO = :COD_DESTINATARIO,'
      '  DESTINATARIO = :DESTINATARIO,'
      '  COD_DEVOLUCAO = :COD_DEVOLUCAO,'
      '  NUMDEV = :NUMDEV,'
      '  FISCO = :FISCO,'
      '  NUMFISCAL = :NUMFISCAL,'
      '  DESCMOE = :DESCMOE,'
      '  COBRANCA = :COBRANCA,'
      '  EXPORT = :EXPORT,'
      '  MARK = :MARK,'
      '  FATURADO = :FATURADO,'
      '  VLRFRETE = :VLRFRETE,'
      '  EMISSAOPROPRIA = :EMISSAOPROPRIA,'
      '  VLRICMSSUBSTITUICAO = :VLRICMSSUBSTITUICAO,'
      '  VLRIPI = :VLRIPI,'
      '  VLROUTROS = :VLROUTROS'
      'where'
      '  COD_PEDCOMP = :OLD_COD_PEDCOMP')
    InsertSQL.Strings = (
      'insert into PEDCOMPRA'
      
        '  (COD_PEDCOMP, COD_FORNEC, VENDEDOR, COD_USUARIO, VALOR, COD_FO' +
        'RMPAG, '
      
        '   DTPEDCOMP, DESCONTO, PRAZOENTR, OBS, SITUACAO, NUMPED, VLRPCO' +
        'MIS, PERCOMIS, '
      
        '   DTFECH, COD_DESTINATARIO, DESTINATARIO, COD_DEVOLUCAO, NUMDEV' +
        ', FISCO, '
      
        '   NUMFISCAL, DESCMOE, COBRANCA, EXPORT, MARK, FATURADO, VLRFRET' +
        'E, EMISSAOPROPRIA, '
      '   VLRICMSSUBSTITUICAO, VLRIPI, VLROUTROS)'
      'values'
      
        '  (:COD_PEDCOMP, :COD_FORNEC, :VENDEDOR, :COD_USUARIO, :VALOR, :' +
        'COD_FORMPAG, '
      
        '   :DTPEDCOMP, :DESCONTO, :PRAZOENTR, :OBS, :SITUACAO, :NUMPED, ' +
        ':VLRPCOMIS, '
      
        '   :PERCOMIS, :DTFECH, :COD_DESTINATARIO, :DESTINATARIO, :COD_DE' +
        'VOLUCAO, '
      
        '   :NUMDEV, :FISCO, :NUMFISCAL, :DESCMOE, :COBRANCA, :EXPORT, :M' +
        'ARK, :FATURADO, '
      
        '   :VLRFRETE, :EMISSAOPROPRIA, :VLRICMSSUBSTITUICAO, :VLRIPI, :V' +
        'LROUTROS)')
    DeleteSQL.Strings = (
      'delete from PEDCOMPRA'
      'where'
      '  COD_PEDCOMP = :OLD_COD_PEDCOMP')
    Left = 16
    Top = 128
  end
  object UItemPC: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  COD_ITENSPEDC,'
      '  COD_PEDCOMPRA,'
      '  COD_ESTOQUE,'
      '  QTDEPROD,'
      '  VALUNIT,'
      '  VALORTOTAL,'
      '  DATA,'
      '  DESCPRO,'
      '  ATUEST,'
      '  ALIQICMS,'
      '  FRETE,'
      '  EMBPROD,'
      '  VLRIPI,'
      '  COD_LOTE,'
      '  BASEICMS,'
      '  VLRICMS,'
      '  BASEICMSSUBS,'
      '  VLRICMSSUBS,'
      '  ALIQIPI,'
      '  REDUCBASEICMS,'
      '  QTDEST,'
      '  COD_DEVOLUCAO,'
      '  CONTREMESSA,'
      '  QTDEEXP,'
      '  COD_UNIDADE,'
      '  COD_CST,'
      '  CFOP,'
      '  DESCNF,'
      '  OBS,'
      '  AGRUP,'
      '  QTDBRUTA,'
      '  QTDDESCARTE,'
      '  MOTIVODESCARTE,'
      '  CONSUMO,'
      '  VALORTOTALTRIBUTA,'
      '  ALIQUOTATOTALTRIBUTA'
      'from ITENSPEDC '
      'where'
      '  COD_ITENSPEDC = :COD_ITENSPEDC')
    ModifySQL.Strings = (
      'update ITENSPEDC'
      'set'
      '  COD_ITENSPEDC = :COD_ITENSPEDC,'
      '  COD_PEDCOMPRA = :COD_PEDCOMPRA,'
      '  COD_ESTOQUE = :COD_ESTOQUE,'
      '  QTDEPROD = :QTDEPROD,'
      '  VALUNIT = :VALUNIT,'
      '  VALORTOTAL = :VALORTOTAL,'
      '  DATA = :DATA,'
      '  DESCPRO = :DESCPRO,'
      '  ATUEST = :ATUEST,'
      '  ALIQICMS = :ALIQICMS,'
      '  FRETE = :FRETE,'
      '  EMBPROD = :EMBPROD,'
      '  VLRIPI = :VLRIPI,'
      '  COD_LOTE = :COD_LOTE,'
      '  BASEICMS = :BASEICMS,'
      '  VLRICMS = :VLRICMS,'
      '  BASEICMSSUBS = :BASEICMSSUBS,'
      '  VLRICMSSUBS = :VLRICMSSUBS,'
      '  ALIQIPI = :ALIQIPI,'
      '  REDUCBASEICMS = :REDUCBASEICMS,'
      '  QTDEST = :QTDEST,'
      '  COD_DEVOLUCAO = :COD_DEVOLUCAO,'
      '  CONTREMESSA = :CONTREMESSA,'
      '  QTDEEXP = :QTDEEXP,'
      '  COD_UNIDADE = :COD_UNIDADE,'
      '  COD_CST = :COD_CST,'
      '  CFOP = :CFOP,'
      '  DESCNF = :DESCNF,'
      '  OBS = :OBS,'
      '  AGRUP = :AGRUP,'
      '  QTDBRUTA = :QTDBRUTA,'
      '  QTDDESCARTE = :QTDDESCARTE,'
      '  MOTIVODESCARTE = :MOTIVODESCARTE,'
      '  CONSUMO = :CONSUMO,'
      '  VALORTOTALTRIBUTA = :VALORTOTALTRIBUTA,'
      '  ALIQUOTATOTALTRIBUTA = :ALIQUOTATOTALTRIBUTA'
      'where'
      '  COD_ITENSPEDC = :OLD_COD_ITENSPEDC')
    InsertSQL.Strings = (
      'insert into ITENSPEDC'
      
        '  (COD_ITENSPEDC, COD_PEDCOMPRA, COD_ESTOQUE, QTDEPROD, VALUNIT,' +
        ' VALORTOTAL, '
      
        '   DATA, DESCPRO, ATUEST, ALIQICMS, FRETE, EMBPROD, VLRIPI, COD_' +
        'LOTE, BASEICMS, '
      
        '   VLRICMS, BASEICMSSUBS, VLRICMSSUBS, ALIQIPI, REDUCBASEICMS, Q' +
        'TDEST, '
      
        '   COD_DEVOLUCAO, CONTREMESSA, QTDEEXP, COD_UNIDADE, COD_CST, CF' +
        'OP, DESCNF, '
      
        '   OBS, AGRUP, QTDBRUTA, QTDDESCARTE, MOTIVODESCARTE, CONSUMO, V' +
        'ALORTOTALTRIBUTA, '
      '   ALIQUOTATOTALTRIBUTA)'
      'values'
      
        '  (:COD_ITENSPEDC, :COD_PEDCOMPRA, :COD_ESTOQUE, :QTDEPROD, :VAL' +
        'UNIT, :VALORTOTAL, '
      
        '   :DATA, :DESCPRO, :ATUEST, :ALIQICMS, :FRETE, :EMBPROD, :VLRIP' +
        'I, :COD_LOTE, '
      
        '   :BASEICMS, :VLRICMS, :BASEICMSSUBS, :VLRICMSSUBS, :ALIQIPI, :' +
        'REDUCBASEICMS, '
      
        '   :QTDEST, :COD_DEVOLUCAO, :CONTREMESSA, :QTDEEXP, :COD_UNIDADE' +
        ', :COD_CST, '
      
        '   :CFOP, :DESCNF, :OBS, :AGRUP, :QTDBRUTA, :QTDDESCARTE, :MOTIV' +
        'ODESCARTE, '
      '   :CONSUMO, :VALORTOTALTRIBUTA, :ALIQUOTATOTALTRIBUTA)')
    DeleteSQL.Strings = (
      'delete from ITENSPEDC'
      'where'
      '  COD_ITENSPEDC = :OLD_COD_ITENSPEDC')
    Left = 64
    Top = 127
  end
  object ULancEnt: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  COD_LANENT,'
      '  COD_ESTOQUE,'
      '  COD_LOJA,'
      '  COD_USUARIO,'
      '  NUMNOTA,'
      '  MOTIVO,'
      '  DT_LANCAMENTO,'
      '  DT_ESTOQUE,'
      '  QUANTIDADE,'
      '  QTDANT,'
      '  COD_LOTE'
      'from LANCENT '
      'where'
      '  COD_LANENT = :COD_LANENT')
    ModifySQL.Strings = (
      'update LANCENT'
      'set'
      '  COD_LANENT = :COD_LANENT,'
      '  COD_ESTOQUE = :COD_ESTOQUE,'
      '  COD_LOJA = :COD_LOJA,'
      '  COD_USUARIO = :COD_USUARIO,'
      '  NUMNOTA = :NUMNOTA,'
      '  MOTIVO = :MOTIVO,'
      '  DT_LANCAMENTO = :DT_LANCAMENTO,'
      '  DT_ESTOQUE = :DT_ESTOQUE,'
      '  QUANTIDADE = :QUANTIDADE,'
      '  QTDANT = :QTDANT,'
      '  COD_LOTE = :COD_LOTE'
      'where'
      '  COD_LANENT = :OLD_COD_LANENT')
    InsertSQL.Strings = (
      'insert into LANCENT'
      
        '  (COD_LANENT, COD_ESTOQUE, COD_LOJA, COD_USUARIO, NUMNOTA, MOTI' +
        'VO, DT_LANCAMENTO, '
      '   DT_ESTOQUE, QUANTIDADE, QTDANT, COD_LOTE)'
      'values'
      
        '  (:COD_LANENT, :COD_ESTOQUE, :COD_LOJA, :COD_USUARIO, :NUMNOTA,' +
        ' :MOTIVO, '
      '   :DT_LANCAMENTO, :DT_ESTOQUE, :QUANTIDADE, :QTDANT, :COD_LOTE)')
    DeleteSQL.Strings = (
      'delete from LANCENT'
      'where'
      '  COD_LANENT = :OLD_COD_LANENT')
    Left = 112
    Top = 127
  end
  object DPedC: TDataSource
    DataSet = TPedC
    Left = 16
    Top = 176
  end
  object DItemPC: TDataSource
    DataSet = TItemPC
    Left = 65
    Top = 175
  end
  object DLancEnt: TDataSource
    DataSet = TLancEnt
    Left = 113
    Top = 174
  end
  object WPedc: TIBQuery
    Database = IBDB
    Transaction = IBT
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select  first 1 * from VWPEDC')
    Left = 16
    Top = 240
    object WPedcCOD_PEDCOMP: TIntegerField
      FieldName = 'COD_PEDCOMP'
    end
    object WPedcCOD_FORNEC: TIntegerField
      FieldName = 'COD_FORNEC'
    end
    object WPedcCOD_FORMPAG: TIntegerField
      FieldName = 'COD_FORMPAG'
    end
    object WPedcCOD_USUARIO: TIntegerField
      FieldName = 'COD_USUARIO'
    end
    object WPedcDTPEDCOMP: TDateField
      FieldName = 'DTPEDCOMP'
    end
    object WPedcNUMPED: TIntegerField
      FieldName = 'NUMPED'
    end
    object WPedcSITUACAO: TIBStringField
      FieldName = 'SITUACAO'
      Size = 10
    end
    object WPedcVALOR: TIBBCDField
      FieldName = 'VALOR'
      DisplayFormat = '0.00'
      EditFormat = '0.00'
      Precision = 9
      Size = 2
    end
    object WPedcNOME: TIBStringField
      FieldName = 'NOME'
      Size = 100
    end
    object WPedcFORMPAG: TIBStringField
      FieldName = 'FORMPAG'
      Size = 100
    end
    object WPedcCOD_LOJA: TIntegerField
      FieldName = 'COD_LOJA'
    end
    object WPedcNUMDEV: TIBStringField
      FieldName = 'NUMDEV'
      Origin = 'VWPEDC.NUMDEV'
      Size = 10
    end
    object WPedcNUMFISCAL: TIBStringField
      FieldName = 'NUMFISCAL'
      Origin = 'VWPEDC.NUMFISCAL'
      Size = 10
    end
    object WPedcDESTINATARIO: TIBStringField
      FieldName = 'DESTINATARIO'
      Origin = 'VWPEDC.DESTINATARIO'
      Size = 100
    end
    object WPedcCOBRANCA: TIBStringField
      FieldName = 'COBRANCA'
      Origin = 'VWPEDC.COBRANCA'
      Size = 10
    end
    object WPedcFATURADO: TIBStringField
      FieldName = 'FATURADO'
      Origin = 'VWPEDC.FATURADO'
      FixedChar = True
      Size = 1
    end
    object WPedcMARK: TIBStringField
      FieldName = 'MARK'
      Origin = 'VWPEDC.MARK'
      FixedChar = True
      Size = 1
    end
    object WPedcEXPORT: TIBStringField
      FieldName = 'EXPORT'
      Origin = 'VWPEDC.EXPORT'
      FixedChar = True
      Size = 1
    end
    object WPedcFISCO: TIBStringField
      FieldName = 'FISCO'
      Origin = 'VWPEDC.FISCO'
      Size = 10
    end
  end
  object DWPEDC: TDataSource
    DataSet = WPedc
    Left = 16
    Top = 288
  end
  object WLancEnt: TIBQuery
    Database = IBDB
    Transaction = IBT
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select  first 1 * from VWLANCENT')
    Left = 64
    Top = 240
    object WLancEntCOD_LANCENT: TIntegerField
      FieldName = 'COD_LANCENT'
    end
    object WLancEntCOD_ESTOQUE: TIntegerField
      FieldName = 'COD_ESTOQUE'
    end
    object WLancEntCOD_LOJA: TIntegerField
      FieldName = 'COD_LOJA'
    end
    object WLancEntCOD_USUARIO: TIntegerField
      FieldName = 'COD_USUARIO'
    end
    object WLancEntDT_LANCAMENTO: TDateField
      FieldName = 'DT_LANCAMENTO'
    end
    object WLancEntMOTIVO: TIBStringField
      FieldName = 'MOTIVO'
      Size = 60
    end
    object WLancEntNUMNOTA: TIBStringField
      FieldName = 'NUMNOTA'
      Size = 10
    end
    object WLancEntQUANTIDADE: TFloatField
      FieldName = 'QUANTIDADE'
    end
    object WLancEntCTRLINT: TIBStringField
      FieldName = 'CTRLINT'
      Size = 15
    end
    object WLancEntPRODUTO: TIBStringField
      FieldName = 'PRODUTO'
      Size = 60
    end
    object WLancEntANTERIOR: TFloatField
      FieldName = 'ANTERIOR'
    end
    object WLancEntCODFABRICANTE: TIBStringField
      FieldName = 'CODFABRICANTE'
      Origin = 'VWLANCENT.CODFABRICANTE'
      Size = 25
    end
  end
  object DWLancEnt: TDataSource
    DataSet = WLancEnt
    Left = 64
    Top = 288
  end
  object TFiscPC: TIBQuery
    Database = IBDB
    Transaction = IBT
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select  first 1 * from DOCFIS')
    UpdateObject = UFiscPC
    GeneratorField.Field = 'COD_CST'
    Left = 168
    Top = 82
    object TFiscPCCOD_DOCFISC: TIntegerField
      FieldName = 'COD_DOCFISC'
      Origin = 'DOCFIS.COD_DOCFISC'
      Required = True
    end
    object TFiscPCCOD_PEDIDO: TIntegerField
      FieldName = 'COD_PEDIDO'
      Origin = 'DOCFIS.COD_PEDIDO'
    end
    object TFiscPCNUMDOCFIS: TIBStringField
      FieldName = 'NUMDOCFIS'
      Origin = 'DOCFIS.NUMDOCFIS'
      Size = 10
    end
    object TFiscPCTIPODOCFIS: TIBStringField
      FieldName = 'TIPODOCFIS'
      Origin = 'DOCFIS.TIPODOCFIS'
      FixedChar = True
      Size = 1
    end
    object TFiscPCNUMDOCANT: TIBStringField
      FieldName = 'NUMDOCANT'
      Origin = 'DOCFIS.NUMDOCANT'
      Size = 10
    end
    object TFiscPCSERIE: TIBStringField
      FieldName = 'SERIE'
      Origin = 'DOCFIS.SERIE'
      Size = 10
    end
    object TFiscPCDTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
      Origin = 'DOCFIS.DTEMISSAO'
    end
    object TFiscPCDTENTSAID: TDateField
      FieldName = 'DTENTSAID'
      Origin = 'DOCFIS.DTENTSAID'
    end
    object TFiscPCHORASAID: TTimeField
      FieldName = 'HORASAID'
      Origin = 'DOCFIS.HORASAID'
    end
    object TFiscPCCOD_CFOP: TIntegerField
      FieldName = 'COD_CFOP'
      Origin = 'DOCFIS.COD_CFOP'
    end
    object TFiscPCCOD_TRANSP: TIntegerField
      FieldName = 'COD_TRANSP'
      Origin = 'DOCFIS.COD_TRANSP'
    end
    object TFiscPCOBS: TIBStringField
      FieldName = 'OBS'
      Origin = 'DOCFIS.OBS'
      Size = 100
    end
    object TFiscPCFRETECONTA: TIBStringField
      FieldName = 'FRETECONTA'
      Origin = 'DOCFIS.FRETECONTA'
      FixedChar = True
      Size = 1
    end
    object TFiscPCPLACA: TIBStringField
      FieldName = 'PLACA'
      Origin = 'DOCFIS.PLACA'
      Size = 10
    end
    object TFiscPCUFPLACA: TIBStringField
      FieldName = 'UFPLACA'
      Origin = 'DOCFIS.UFPLACA'
      FixedChar = True
      Size = 2
    end
    object TFiscPCCPFPLACA: TIBStringField
      FieldName = 'CPFPLACA'
      Origin = 'DOCFIS.CPFPLACA'
    end
    object TFiscPCQUANTFRETE: TFloatField
      FieldName = 'QUANTFRETE'
      Origin = 'DOCFIS.QUANTFRETE'
    end
    object TFiscPCESPECIEFRETE: TIBStringField
      FieldName = 'ESPECIEFRETE'
      Origin = 'DOCFIS.ESPECIEFRETE'
      Size = 10
    end
    object TFiscPCMARCAFRETE: TIBStringField
      FieldName = 'MARCAFRETE'
      Origin = 'DOCFIS.MARCAFRETE'
      Size = 25
    end
    object TFiscPCPESOBRUTO: TFloatField
      FieldName = 'PESOBRUTO'
      Origin = 'DOCFIS.PESOBRUTO'
    end
    object TFiscPCPESOLIQ: TFloatField
      FieldName = 'PESOLIQ'
      Origin = 'DOCFIS.PESOLIQ'
    end
    object TFiscPCCOD_COTA: TIntegerField
      FieldName = 'COD_COTA'
      Origin = 'DOCFIS.COD_COTA'
    end
    object TFiscPCNF: TIBStringField
      FieldName = 'NF'
      Origin = 'DOCFIS.NF'
      FixedChar = True
      Size = 1
    end
    object TFiscPCBASEICMS: TIBBCDField
      FieldName = 'BASEICMS'
      Origin = 'DOCFIS.BASEICMS'
      Precision = 9
      Size = 2
    end
    object TFiscPCVLRICMS: TIBBCDField
      FieldName = 'VLRICMS'
      Origin = 'DOCFIS.VLRICMS'
      Precision = 9
      Size = 2
    end
    object TFiscPCBASCALSUBS: TIBBCDField
      FieldName = 'BASCALSUBS'
      Origin = 'DOCFIS.BASCALSUBS'
      Precision = 9
      Size = 2
    end
    object TFiscPCVLRICMSUBS: TIBBCDField
      FieldName = 'VLRICMSUBS'
      Origin = 'DOCFIS.VLRICMSUBS'
      Precision = 9
      Size = 2
    end
    object TFiscPCVLRTOTPROD: TIBBCDField
      FieldName = 'VLRTOTPROD'
      Origin = 'DOCFIS.VLRTOTPROD'
      Precision = 9
      Size = 2
    end
    object TFiscPCVLRFRETE: TIBBCDField
      FieldName = 'VLRFRETE'
      Origin = 'DOCFIS.VLRFRETE'
      Precision = 9
      Size = 2
    end
    object TFiscPCVLRICMSFRETE: TIBBCDField
      FieldName = 'VLRICMSFRETE'
      Origin = 'DOCFIS.VLRICMSFRETE'
      Precision = 9
      Size = 2
    end
    object TFiscPCVLRSEG: TIBBCDField
      FieldName = 'VLRSEG'
      Origin = 'DOCFIS.VLRSEG'
      Precision = 9
      Size = 2
    end
    object TFiscPCVLRTOTIPI: TIBBCDField
      FieldName = 'VLRTOTIPI'
      Origin = 'DOCFIS.VLRTOTIPI'
      Precision = 9
      Size = 2
    end
    object TFiscPCVLRTOTICMS: TIBBCDField
      FieldName = 'VLRTOTICMS'
      Origin = 'DOCFIS.VLRTOTICMS'
      Precision = 9
      Size = 2
    end
    object TFiscPCVLRTOTDOCNF: TIBBCDField
      FieldName = 'VLRTOTDOCNF'
      Origin = 'DOCFIS.VLRTOTDOCNF'
      Precision = 9
      Size = 2
    end
    object TFiscPCVLROUTRASDESP: TIBBCDField
      FieldName = 'VLROUTRASDESP'
      Origin = 'DOCFIS.VLROUTRASDESP'
      Precision = 9
      Size = 2
    end
    object TFiscPCFRETECOMP: TIBStringField
      FieldName = 'FRETECOMP'
      Origin = 'DOCFIS.FRETECOMP'
      FixedChar = True
      Size = 1
    end
    object TFiscPCVLREMB: TIBBCDField
      FieldName = 'VLREMB'
      Origin = 'DOCFIS.VLREMB'
      Precision = 9
      Size = 2
    end
    object TFiscPCTIPOGERADOR: TIBStringField
      FieldName = 'TIPOGERADOR'
      Origin = 'DOCFIS.TIPOGERADOR'
      Size = 10
    end
    object TFiscPCNUMCONHEC: TIBStringField
      FieldName = 'NUMCONHEC'
      Origin = 'DOCFIS.NUMCONHEC'
      Size = 25
    end
    object TFiscPCVLRISENTOICMS: TIBBCDField
      FieldName = 'VLRISENTOICMS'
      Origin = 'DOCFIS.VLRISENTOICMS'
      Precision = 9
      Size = 2
    end
    object TFiscPCMODELONF: TIBStringField
      FieldName = 'MODELONF'
      Origin = 'DOCFIS.MODELONF'
      Size = 10
    end
    object TFiscPCVLROUTROS: TIBBCDField
      FieldName = 'VLROUTROS'
      Origin = 'DOCFIS.VLROUTROS'
      Precision = 18
      Size = 2
    end
    object TFiscPCEMPEMIT: TIBStringField
      FieldName = 'EMPEMIT'
      Origin = 'DOCFIS.EMPEMIT'
      FixedChar = True
      Size = 1
    end
    object TFiscPCNFESERIE: TIntegerField
      FieldName = 'NFESERIE'
      Origin = 'DOCFIS.NFESERIE'
    end
    object TFiscPCNFECHAVE: TIBStringField
      FieldName = 'NFECHAVE'
      Origin = 'DOCFIS.NFECHAVE'
      Size = 50
    end
    object TFiscPCNFELOTE: TIBStringField
      FieldName = 'NFELOTE'
      Origin = 'DOCFIS.NFELOTE'
      Size = 10
    end
    object TFiscPCNFERECIBO: TIBStringField
      FieldName = 'NFERECIBO'
      Origin = 'DOCFIS.NFERECIBO'
      Size = 15
    end
    object TFiscPCNFEERRO: TIBStringField
      FieldName = 'NFEERRO'
      Origin = 'DOCFIS.NFEERRO'
      Size = 255
    end
    object TFiscPCNFEPROTOCOLO: TIBStringField
      FieldName = 'NFEPROTOCOLO'
      Origin = 'DOCFIS.NFEPROTOCOLO'
    end
    object TFiscPCNFESTATUS: TSmallintField
      FieldName = 'NFESTATUS'
      Origin = 'DOCFIS.NFESTATUS'
    end
    object TFiscPCNFEAMBIENTE: TIntegerField
      FieldName = 'NFEAMBIENTE'
      Origin = 'DOCFIS.NFEAMBIENTE'
    end
    object TFiscPCNFEXML: TMemoField
      FieldName = 'NFEXML'
      Origin = 'DOCFIS.NFEXML'
      BlobType = ftMemo
      Size = 8
    end
    object TFiscPCNFETPEMIS: TIntegerField
      FieldName = 'NFETPEMIS'
      Origin = 'DOCFIS.NFETPEMIS'
    end
    object TFiscPCXMLAUTORIZACAO: TMemoField
      FieldName = 'XMLAUTORIZACAO'
      Origin = 'DOCFIS.XMLAUTORIZACAO'
      BlobType = ftMemo
      Size = 8
    end
    object TFiscPCCOD_CFOP1: TIntegerField
      FieldName = 'COD_CFOP1'
      Origin = 'DOCFIS.COD_CFOP1'
    end
    object TFiscPCCOD_CFOP2: TIntegerField
      FieldName = 'COD_CFOP2'
      Origin = 'DOCFIS.COD_CFOP2'
    end
    object TFiscPCCOD_PERIODOFISCAL: TIntegerField
      FieldName = 'COD_PERIODOFISCAL'
      Origin = 'DOCFIS.COD_PERIODOFISCAL'
      Required = True
    end
    object TFiscPCVLRDESCONTO: TIBBCDField
      FieldName = 'VLRDESCONTO'
      Origin = 'DOCFIS.VLRDESCONTO'
      Precision = 18
      Size = 2
    end
    object TFiscPCEMISSAOPROPRIA: TIBStringField
      FieldName = 'EMISSAOPROPRIA'
      Origin = 'DOCFIS.EMISSAOPROPRIA'
      FixedChar = True
      Size = 1
    end
    object TFiscPCNUMDOCFISCINT: TIntegerField
      FieldName = 'NUMDOCFISCINT'
      Origin = 'DOCFIS.NUMDOCFISCINT'
    end
    object TFiscPCNFEXMLDIST: TMemoField
      FieldName = 'NFEXMLDIST'
      Origin = 'DOCFIS.NFEXMLDIST'
      BlobType = ftMemo
      Size = 8
    end
    object TFiscPCNFEXMLCANCEL: TMemoField
      FieldName = 'NFEXMLCANCEL'
      Origin = 'DOCFIS.NFEXMLCANCEL'
      BlobType = ftMemo
      Size = 8
    end
    object TFiscPCVALORTOTALTRIBUTA: TIBBCDField
      FieldName = 'VALORTOTALTRIBUTA'
      Origin = 'DOCFIS.VALORTOTALTRIBUTA'
      Precision = 18
      Size = 2
    end
    object TFiscPCALIQUOTATOTALTRIBUTA: TIBBCDField
      FieldName = 'ALIQUOTATOTALTRIBUTA'
      Origin = 'DOCFIS.ALIQUOTATOTALTRIBUTA'
      Precision = 18
      Size = 2
    end
  end
  object UFiscPC: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  COD_DOCFISC,'
      '  COD_PEDIDO,'
      '  NUMDOCFIS,'
      '  TIPODOCFIS,'
      '  NUMDOCANT,'
      '  SERIE,'
      '  DTEMISSAO,'
      '  DTENTSAID,'
      '  HORASAID,'
      '  COD_CFOP,'
      '  COD_TRANSP,'
      '  OBS,'
      '  FRETECONTA,'
      '  PLACA,'
      '  UFPLACA,'
      '  CPFPLACA,'
      '  QUANTFRETE,'
      '  ESPECIEFRETE,'
      '  MARCAFRETE,'
      '  PESOBRUTO,'
      '  PESOLIQ,'
      '  COD_COTA,'
      '  NF,'
      '  BASEICMS,'
      '  VLRICMS,'
      '  BASCALSUBS,'
      '  VLRICMSUBS,'
      '  VLRTOTPROD,'
      '  VLRFRETE,'
      '  VLRICMSFRETE,'
      '  VLRSEG,'
      '  VLRTOTIPI,'
      '  VLRTOTICMS,'
      '  VLRTOTDOCNF,'
      '  VLROUTROS,'
      '  FRETECOMP,'
      '  VLREMB,'
      '  TIPOGERADOR,'
      '  NUMCONHEC,'
      '  VLROUTRASDESP,'
      '  VLRISENTOICMS,'
      '  MODELONF,'
      '  EMPEMIT,'
      '  NFESERIE,'
      '  NFECHAVE,'
      '  NFELOTE,'
      '  NFERECIBO,'
      '  NFEERRO,'
      '  NFEPROTOCOLO,'
      '  NFESTATUS,'
      '  NFEAMBIENTE,'
      '  NFEXML,'
      '  NFETPEMIS,'
      '  XMLAUTORIZACAO,'
      '  COD_CFOP1,'
      '  COD_CFOP2,'
      '  COD_PERIODOFISCAL,'
      '  VLRDESCONTO,'
      '  EMISSAOPROPRIA,'
      '  NUMDOCFISCINT,'
      '  NFEXMLDIST,'
      '  NFEXMLCANCEL,'
      '  VALORTOTALTRIBUTA,'
      '  ALIQUOTATOTALTRIBUTA'
      'from DOCFIS '
      'where'
      '  COD_DOCFISC = :COD_DOCFISC')
    ModifySQL.Strings = (
      'update DOCFIS'
      'set'
      '  COD_DOCFISC = :COD_DOCFISC,'
      '  COD_PEDIDO = :COD_PEDIDO,'
      '  NUMDOCFIS = :NUMDOCFIS,'
      '  TIPODOCFIS = :TIPODOCFIS,'
      '  NUMDOCANT = :NUMDOCANT,'
      '  SERIE = :SERIE,'
      '  DTEMISSAO = :DTEMISSAO,'
      '  DTENTSAID = :DTENTSAID,'
      '  HORASAID = :HORASAID,'
      '  COD_CFOP = :COD_CFOP,'
      '  COD_TRANSP = :COD_TRANSP,'
      '  OBS = :OBS,'
      '  FRETECONTA = :FRETECONTA,'
      '  PLACA = :PLACA,'
      '  UFPLACA = :UFPLACA,'
      '  CPFPLACA = :CPFPLACA,'
      '  QUANTFRETE = :QUANTFRETE,'
      '  ESPECIEFRETE = :ESPECIEFRETE,'
      '  MARCAFRETE = :MARCAFRETE,'
      '  PESOBRUTO = :PESOBRUTO,'
      '  PESOLIQ = :PESOLIQ,'
      '  COD_COTA = :COD_COTA,'
      '  NF = :NF,'
      '  BASEICMS = :BASEICMS,'
      '  VLRICMS = :VLRICMS,'
      '  BASCALSUBS = :BASCALSUBS,'
      '  VLRICMSUBS = :VLRICMSUBS,'
      '  VLRTOTPROD = :VLRTOTPROD,'
      '  VLRFRETE = :VLRFRETE,'
      '  VLRICMSFRETE = :VLRICMSFRETE,'
      '  VLRSEG = :VLRSEG,'
      '  VLRTOTIPI = :VLRTOTIPI,'
      '  VLRTOTICMS = :VLRTOTICMS,'
      '  VLRTOTDOCNF = :VLRTOTDOCNF,'
      '  VLROUTROS = :VLROUTROS,'
      '  FRETECOMP = :FRETECOMP,'
      '  VLREMB = :VLREMB,'
      '  TIPOGERADOR = :TIPOGERADOR,'
      '  NUMCONHEC = :NUMCONHEC,'
      '  VLROUTRASDESP = :VLROUTRASDESP,'
      '  VLRISENTOICMS = :VLRISENTOICMS,'
      '  MODELONF = :MODELONF,'
      '  EMPEMIT = :EMPEMIT,'
      '  NFESERIE = :NFESERIE,'
      '  NFECHAVE = :NFECHAVE,'
      '  NFELOTE = :NFELOTE,'
      '  NFERECIBO = :NFERECIBO,'
      '  NFEERRO = :NFEERRO,'
      '  NFEPROTOCOLO = :NFEPROTOCOLO,'
      '  NFESTATUS = :NFESTATUS,'
      '  NFEAMBIENTE = :NFEAMBIENTE,'
      '  NFEXML = :NFEXML,'
      '  NFETPEMIS = :NFETPEMIS,'
      '  XMLAUTORIZACAO = :XMLAUTORIZACAO,'
      '  COD_CFOP1 = :COD_CFOP1,'
      '  COD_CFOP2 = :COD_CFOP2,'
      '  COD_PERIODOFISCAL = :COD_PERIODOFISCAL,'
      '  VLRDESCONTO = :VLRDESCONTO,'
      '  EMISSAOPROPRIA = :EMISSAOPROPRIA,'
      '  NUMDOCFISCINT = :NUMDOCFISCINT,'
      '  NFEXMLDIST = :NFEXMLDIST,'
      '  NFEXMLCANCEL = :NFEXMLCANCEL,'
      '  VALORTOTALTRIBUTA = :VALORTOTALTRIBUTA,'
      '  ALIQUOTATOTALTRIBUTA = :ALIQUOTATOTALTRIBUTA'
      'where'
      '  COD_DOCFISC = :OLD_COD_DOCFISC')
    InsertSQL.Strings = (
      'insert into DOCFIS'
      
        '  (COD_DOCFISC, COD_PEDIDO, NUMDOCFIS, TIPODOCFIS, NUMDOCANT, SE' +
        'RIE, DTEMISSAO, '
      
        '   DTENTSAID, HORASAID, COD_CFOP, COD_TRANSP, OBS, FRETECONTA, P' +
        'LACA, UFPLACA, '
      
        '   CPFPLACA, QUANTFRETE, ESPECIEFRETE, MARCAFRETE, PESOBRUTO, PE' +
        'SOLIQ, '
      
        '   COD_COTA, NF, BASEICMS, VLRICMS, BASCALSUBS, VLRICMSUBS, VLRT' +
        'OTPROD, '
      
        '   VLRFRETE, VLRICMSFRETE, VLRSEG, VLRTOTIPI, VLRTOTICMS, VLRTOT' +
        'DOCNF, '
      
        '   VLROUTROS, FRETECOMP, VLREMB, TIPOGERADOR, NUMCONHEC, VLROUTR' +
        'ASDESP, '
      
        '   VLRISENTOICMS, MODELONF, EMPEMIT, NFESERIE, NFECHAVE, NFELOTE' +
        ', NFERECIBO, '
      
        '   NFEERRO, NFEPROTOCOLO, NFESTATUS, NFEAMBIENTE, NFEXML, NFETPE' +
        'MIS, XMLAUTORIZACAO, '
      
        '   COD_CFOP1, COD_CFOP2, COD_PERIODOFISCAL, VLRDESCONTO, EMISSAO' +
        'PROPRIA, '
      
        '   NUMDOCFISCINT, NFEXMLDIST, NFEXMLCANCEL, VALORTOTALTRIBUTA, A' +
        'LIQUOTATOTALTRIBUTA)'
      'values'
      
        '  (:COD_DOCFISC, :COD_PEDIDO, :NUMDOCFIS, :TIPODOCFIS, :NUMDOCAN' +
        'T, :SERIE, '
      
        '   :DTEMISSAO, :DTENTSAID, :HORASAID, :COD_CFOP, :COD_TRANSP, :O' +
        'BS, :FRETECONTA, '
      
        '   :PLACA, :UFPLACA, :CPFPLACA, :QUANTFRETE, :ESPECIEFRETE, :MAR' +
        'CAFRETE, '
      
        '   :PESOBRUTO, :PESOLIQ, :COD_COTA, :NF, :BASEICMS, :VLRICMS, :B' +
        'ASCALSUBS, '
      
        '   :VLRICMSUBS, :VLRTOTPROD, :VLRFRETE, :VLRICMSFRETE, :VLRSEG, ' +
        ':VLRTOTIPI, '
      
        '   :VLRTOTICMS, :VLRTOTDOCNF, :VLROUTROS, :FRETECOMP, :VLREMB, :' +
        'TIPOGERADOR, '
      
        '   :NUMCONHEC, :VLROUTRASDESP, :VLRISENTOICMS, :MODELONF, :EMPEM' +
        'IT, :NFESERIE, '
      
        '   :NFECHAVE, :NFELOTE, :NFERECIBO, :NFEERRO, :NFEPROTOCOLO, :NF' +
        'ESTATUS, '
      
        '   :NFEAMBIENTE, :NFEXML, :NFETPEMIS, :XMLAUTORIZACAO, :COD_CFOP' +
        '1, :COD_CFOP2, '
      
        '   :COD_PERIODOFISCAL, :VLRDESCONTO, :EMISSAOPROPRIA, :NUMDOCFIS' +
        'CINT, :NFEXMLDIST, '
      '   :NFEXMLCANCEL, :VALORTOTALTRIBUTA, :ALIQUOTATOTALTRIBUTA)')
    DeleteSQL.Strings = (
      'delete from DOCFIS'
      'where'
      '  COD_DOCFISC = :OLD_COD_DOCFISC')
    Left = 163
    Top = 127
  end
  object DFiscPC: TDataSource
    DataSet = TFiscPC
    Left = 163
    Top = 174
  end
  object TImpNfeTMP: TIBQuery
    Database = IBDB
    Transaction = IBT
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'SELECT * FROM IMPNFETMP')
    UpdateObject = UImpNfeTMP
    Left = 224
    Top = 80
    object TImpNfeTMPCODPRODFORN: TIBStringField
      FieldName = 'CODPRODFORN'
      Origin = 'IMPNFETMP.CODPRODFORN'
      Size = 30
    end
    object TImpNfeTMPDESCPROD: TIBStringField
      FieldName = 'DESCPROD'
      Origin = 'IMPNFETMP.DESCPROD'
      Size = 80
    end
    object TImpNfeTMPNCM: TIBStringField
      FieldName = 'NCM'
      Origin = 'IMPNFETMP.NCM'
      Size = 10
    end
    object TImpNfeTMPTIPOUNIDADE: TIBStringField
      FieldName = 'TIPOUNIDADE'
      Origin = 'IMPNFETMP.TIPOUNIDADE'
      Size = 2
    end
    object TImpNfeTMPQUANTIDADE: TIntegerField
      FieldName = 'QUANTIDADE'
      Origin = 'IMPNFETMP.QUANTIDADE'
    end
    object TImpNfeTMPVALORUN: TIBBCDField
      FieldName = 'VALORUN'
      Origin = 'IMPNFETMP.VALORUN'
      Precision = 18
      Size = 2
    end
    object TImpNfeTMPVALORTOTAL: TIBBCDField
      FieldName = 'VALORTOTAL'
      Origin = 'IMPNFETMP.VALORTOTAL'
      Precision = 18
      Size = 2
    end
    object TImpNfeTMPCST: TIBStringField
      FieldName = 'CST'
      Origin = 'IMPNFETMP.CST'
      Size = 4
    end
    object TImpNfeTMPVALORBASE: TIBBCDField
      FieldName = 'VALORBASE'
      Origin = 'IMPNFETMP.VALORBASE'
      Precision = 18
      Size = 2
    end
    object TImpNfeTMPALIQICMS: TIntegerField
      FieldName = 'ALIQICMS'
      Origin = 'IMPNFETMP.ALIQICMS'
    end
    object TImpNfeTMPVALORICMS: TIBBCDField
      FieldName = 'VALORICMS'
      Origin = 'IMPNFETMP.VALORICMS'
      Precision = 18
      Size = 2
    end
    object TImpNfeTMPCOD_ESTOQUE: TIntegerField
      FieldName = 'COD_ESTOQUE'
      Origin = 'IMPNFETMP.COD_ESTOQUE'
    end
    object TImpNfeTMPSTATUS: TIBStringField
      FieldName = 'STATUS'
      Origin = 'IMPNFETMP.STATUS'
      Size = 10
    end
    object TImpNfeTMPBASESUBST: TIBBCDField
      FieldName = 'BASESUBST'
      Origin = 'IMPNFETMP.BASESUBST'
      Precision = 18
      Size = 2
    end
    object TImpNfeTMPICMSSUBST: TIBBCDField
      FieldName = 'ICMSSUBST'
      Origin = 'IMPNFETMP.ICMSSUBST'
      Precision = 18
      Size = 2
    end
    object TImpNfeTMPIPI: TFloatField
      FieldName = 'IPI'
      Origin = 'IMPNFETMP.IPI'
    end
    object TImpNfeTMPVALORIPI: TIBBCDField
      FieldName = 'VALORIPI'
      Origin = 'IMPNFETMP.VALORIPI'
      Precision = 18
      Size = 2
    end
    object TImpNfeTMPCODPRODUTO: TIntegerField
      FieldName = 'CODPRODUTO'
      Origin = 'IMPNFETMP.CODPRODUTO'
    end
    object TImpNfeTMPVALORVENDA: TIBBCDField
      FieldName = 'VALORVENDA'
      Origin = 'IMPNFETMP.VALORVENDA'
      Precision = 18
      Size = 2
    end
    object TImpNfeTMPCODBARRA: TIBStringField
      FieldName = 'CODBARRA'
      Origin = 'IMPNFETMP.CODBARRA'
    end
  end
  object UImpNfeTMP: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  CODPRODFORN,'
      '  DESCPROD,'
      '  NCM,'
      '  TIPOUNIDADE,'
      '  QUANTIDADE,'
      '  VALORUN,'
      '  VALORTOTAL,'
      '  VALORBASE,'
      '  ALIQICMS,'
      '  VALORICMS,'
      '  COD_ESTOQUE,'
      '  STATUS,'
      '  BASESUBST,'
      '  ICMSSUBST,'
      '  IPI,'
      '  VALORIPI,'
      '  CODPRODUTO,'
      '  VALORVENDA,'
      '  CST,'
      '  CODBARRA'
      'from IMPNFETMP '
      'where'
      '  CODPRODFORN = :CODPRODFORN')
    ModifySQL.Strings = (
      'update IMPNFETMP'
      'set'
      '  CODPRODFORN = :CODPRODFORN,'
      '  DESCPROD = :DESCPROD,'
      '  NCM = :NCM,'
      '  TIPOUNIDADE = :TIPOUNIDADE,'
      '  QUANTIDADE = :QUANTIDADE,'
      '  VALORUN = :VALORUN,'
      '  VALORTOTAL = :VALORTOTAL,'
      '  VALORBASE = :VALORBASE,'
      '  ALIQICMS = :ALIQICMS,'
      '  VALORICMS = :VALORICMS,'
      '  COD_ESTOQUE = :COD_ESTOQUE,'
      '  STATUS = :STATUS,'
      '  BASESUBST = :BASESUBST,'
      '  ICMSSUBST = :ICMSSUBST,'
      '  IPI = :IPI,'
      '  VALORIPI = :VALORIPI,'
      '  CODPRODUTO = :CODPRODUTO,'
      '  VALORVENDA = :VALORVENDA,'
      '  CST = :CST,'
      '  CODBARRA = :CODBARRA'
      'where'
      '  CODPRODFORN = :OLD_CODPRODFORN')
    InsertSQL.Strings = (
      'insert into IMPNFETMP'
      
        '  (CODPRODFORN, DESCPROD, NCM, TIPOUNIDADE, QUANTIDADE, VALORUN,' +
        ' VALORTOTAL, '
      
        '   VALORBASE, ALIQICMS, VALORICMS, COD_ESTOQUE, STATUS, BASESUBS' +
        'T, ICMSSUBST, '
      '   IPI, VALORIPI, CODPRODUTO, VALORVENDA, CST, CODBARRA)'
      'values'
      
        '  (:CODPRODFORN, :DESCPROD, :NCM, :TIPOUNIDADE, :QUANTIDADE, :VA' +
        'LORUN, '
      
        '   :VALORTOTAL, :VALORBASE, :ALIQICMS, :VALORICMS, :COD_ESTOQUE,' +
        ' :STATUS, '
      
        '   :BASESUBST, :ICMSSUBST, :IPI, :VALORIPI, :CODPRODUTO, :VALORV' +
        'ENDA, :CST, '
      '   :CODBARRA)')
    DeleteSQL.Strings = (
      'delete from IMPNFETMP'
      'where'
      '  CODPRODFORN = :OLD_CODPRODFORN')
    Left = 224
    Top = 128
  end
  object DImpNfeTMP: TDataSource
    DataSet = TImpNfeTMP
    Left = 224
    Top = 176
  end
  object TFatura: TIBQuery
    Database = IBDB
    Transaction = IBT
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from FATURA')
    UpdateObject = UFatura
    Left = 288
    Top = 80
    object TFaturaCOD_FATURA: TIntegerField
      FieldName = 'COD_FATURA'
      Origin = 'FATURA.COD_FATURA'
    end
    object TFaturaDATA: TDateField
      FieldName = 'DATA'
      Origin = 'FATURA.DATA'
    end
    object TFaturaVALOR: TIBBCDField
      FieldName = 'VALOR'
      Origin = 'FATURA.VALOR'
      Precision = 18
      Size = 2
    end
    object TFaturaCOD_CLIENTE: TIntegerField
      FieldName = 'COD_CLIENTE'
      Origin = 'FATURA.COD_CLIENTE'
    end
    object TFaturaNUMDOC: TIBStringField
      FieldName = 'NUMDOC'
      Origin = 'FATURA.NUMDOC'
      Size = 10
    end
    object TFaturaCOD_PGTO: TIntegerField
      FieldName = 'COD_PGTO'
      Origin = 'FATURA.COD_PGTO'
    end
    object TFaturaCOD_CTA: TIntegerField
      FieldName = 'COD_CTA'
      Origin = 'FATURA.COD_CTA'
    end
    object TFaturaPGTO: TIBStringField
      FieldName = 'PGTO'
      Origin = 'FATURA.PGTO'
      Size = 15
    end
    object TFaturaCANCELADO: TIBStringField
      FieldName = 'CANCELADO'
      Origin = 'FATURA.CANCELADO'
      FixedChar = True
      Size = 1
    end
    object TFaturaTIPO: TIBStringField
      FieldName = 'TIPO'
      Origin = 'FATURA.TIPO'
      Size = 10
    end
    object TFaturaNOMECLI: TIBStringField
      FieldName = 'NOMECLI'
      Origin = 'FATURA.NOMECLI'
      Size = 60
    end
  end
  object UFatura: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  COD_FATURA,'
      '  DATA,'
      '  VALOR,'
      '  COD_CLIENTE,'
      '  NUMDOC,'
      '  COD_PGTO,'
      '  COD_CTA,'
      '  PGTO,'
      '  CANCELADO,'
      '  TIPO,'
      '  NOMECLI'
      'from FATURA '
      'where'
      '  COD_FATURA = :COD_FATURA')
    ModifySQL.Strings = (
      'update FATURA'
      'set'
      '  COD_FATURA = :COD_FATURA,'
      '  DATA = :DATA,'
      '  VALOR = :VALOR,'
      '  COD_CLIENTE = :COD_CLIENTE,'
      '  NUMDOC = :NUMDOC,'
      '  COD_PGTO = :COD_PGTO,'
      '  COD_CTA = :COD_CTA,'
      '  PGTO = :PGTO,'
      '  CANCELADO = :CANCELADO,'
      '  TIPO = :TIPO,'
      '  NOMECLI = :NOMECLI'
      'where'
      '  COD_FATURA = :OLD_COD_FATURA')
    InsertSQL.Strings = (
      'insert into FATURA'
      
        '  (COD_FATURA, DATA, VALOR, COD_CLIENTE, NUMDOC, COD_PGTO, COD_C' +
        'TA, PGTO, '
      '   CANCELADO, TIPO, NOMECLI)'
      'values'
      
        '  (:COD_FATURA, :DATA, :VALOR, :COD_CLIENTE, :NUMDOC, :COD_PGTO,' +
        ' :COD_CTA, '
      '   :PGTO, :CANCELADO, :TIPO, :NOMECLI)')
    DeleteSQL.Strings = (
      'delete from FATURA'
      'where'
      '  COD_FATURA = :OLD_COD_FATURA')
    Left = 288
    Top = 128
  end
  object DFatura: TDataSource
    DataSet = TFatura
    Left = 288
    Top = 176
  end
  object TPedFaturado: TIBQuery
    Database = IBDB
    Transaction = IBT
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select  * from PEDFATURADO ')
    UpdateObject = UPedFaturado
    Left = 352
    Top = 80
    object TPedFaturadoCOD_PEDFATURADO: TIntegerField
      FieldName = 'COD_PEDFATURADO'
      Origin = 'PEDFATURADO.COD_PEDFATURADO'
    end
    object TPedFaturadoCOD_FATURA: TIntegerField
      FieldName = 'COD_FATURA'
      Origin = 'PEDFATURADO.COD_FATURA'
    end
    object TPedFaturadoCOD_PEDIDO: TIntegerField
      FieldName = 'COD_PEDIDO'
      Origin = 'PEDFATURADO.COD_PEDIDO'
    end
  end
  object UPedFaturado: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  COD_PEDFATURADO,'
      '  COD_FATURA,'
      '  COD_PEDIDO'
      'from PEDFATURADO '
      'where'
      '  COD_PEDFATURADO = :COD_PEDFATURADO')
    ModifySQL.Strings = (
      'update PEDFATURADO'
      'set'
      '  COD_PEDFATURADO = :COD_PEDFATURADO,'
      '  COD_FATURA = :COD_FATURA,'
      '  COD_PEDIDO = :COD_PEDIDO'
      'where'
      '  COD_PEDFATURADO = :OLD_COD_PEDFATURADO')
    InsertSQL.Strings = (
      'insert into PEDFATURADO'
      '  (COD_PEDFATURADO, COD_FATURA, COD_PEDIDO)'
      'values'
      '  (:COD_PEDFATURADO, :COD_FATURA, :COD_PEDIDO)')
    DeleteSQL.Strings = (
      'delete from PEDFATURADO'
      'where'
      '  COD_PEDFATURADO = :OLD_COD_PEDFATURADO')
    Left = 352
    Top = 136
  end
  object DPedFaturado: TDataSource
    DataSet = TPedFaturado
    Left = 352
    Top = 184
  end
end
