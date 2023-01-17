object DMSAIDA: TDMSAIDA
  OldCreateOrder = False
  Top = 14
  Height = 430
  Width = 640
  object IBDB: TIBDatabase
    DatabaseName = 'serv:C:\MZR\DataBase\JD\DBMACS.GDB'
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
    Top = 16
  end
  object IBT: TIBTransaction
    Active = False
    DefaultDatabase = IBDB
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    AutoStopAction = saNone
    Left = 80
    Top = 16
  end
  object TPedV: TIBQuery
    Database = IBDB
    Transaction = IBT
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select  FIRST 1 * from PEDVENDA')
    UpdateObject = UPedV
    GeneratorField.Field = 'COD_PEDVENDA'
    GeneratorField.Generator = 'GEN_PEDVENDA_ID'
    Left = 24
    Top = 80
    object TPedVCOD_PEDVENDA: TIntegerField
      FieldName = 'COD_PEDVENDA'
      Origin = 'PEDVENDA.COD_PEDVENDA'
      Required = True
    end
    object TPedVCOD_CLIENTE: TIntegerField
      FieldName = 'COD_CLIENTE'
      Origin = 'PEDVENDA.COD_CLIENTE'
    end
    object TPedVDTPEDVEN: TDateField
      FieldName = 'DTPEDVEN'
      Origin = 'PEDVENDA.DTPEDVEN'
    end
    object TPedVDESCONTO: TFloatField
      FieldName = 'DESCONTO'
      Origin = 'PEDVENDA.DESCONTO'
    end
    object TPedVCOD_USUARIO: TIntegerField
      FieldName = 'COD_USUARIO'
      Origin = 'PEDVENDA.COD_USUARIO'
    end
    object TPedVCOD_FORMPAG: TIntegerField
      FieldName = 'COD_FORMPAG'
      Origin = 'PEDVENDA.COD_FORMPAG'
    end
    object TPedVVALOR: TIBBCDField
      FieldName = 'VALOR'
      Origin = 'PEDVENDA.VALOR'
      Precision = 18
      Size = 2
    end
    object TPedVENTREGA: TDateField
      FieldName = 'ENTREGA'
      Origin = 'PEDVENDA.ENTREGA'
    end
    object TPedVOBS: TMemoField
      FieldName = 'OBS'
      Origin = 'PEDVENDA.OBS'
      BlobType = ftMemo
      Size = 8
    end
    object TPedVCPFCNPJ: TIBStringField
      FieldName = 'CPFCNPJ'
      Origin = 'PEDVENDA.CPFCNPJ'
    end
    object TPedVCOD_VENDEDOR: TIntegerField
      FieldName = 'COD_VENDEDOR'
      Origin = 'PEDVENDA.COD_VENDEDOR'
    end
    object TPedVSITUACAO: TIBStringField
      FieldName = 'SITUACAO'
      Origin = 'PEDVENDA.SITUACAO'
      Size = 10
    end
    object TPedVTIPO: TIBStringField
      FieldName = 'TIPO'
      Origin = 'PEDVENDA.TIPO'
      Size = 10
    end
    object TPedVVLRCOMIS: TIBBCDField
      FieldName = 'VLRCOMIS'
      Origin = 'PEDVENDA.VLRCOMIS'
      Precision = 18
      Size = 2
    end
    object TPedVGARANTIA: TIBStringField
      FieldName = 'GARANTIA'
      Origin = 'PEDVENDA.GARANTIA'
      FixedChar = True
      Size = 1
    end
    object TPedVCOMSOBVENDA: TIBStringField
      FieldName = 'COMSOBVENDA'
      Origin = 'PEDVENDA.COMSOBVENDA'
      FixedChar = True
      Size = 1
    end
    object TPedVFISCO: TIBStringField
      FieldName = 'FISCO'
      Origin = 'PEDVENDA.FISCO'
      Size = 10
    end
    object TPedVNUMFISCAL: TIBStringField
      FieldName = 'NUMFISCAL'
      Origin = 'PEDVENDA.NUMFISCAL'
      Size = 15
    end
    object TPedVCOD_EQUIPFISC: TIntegerField
      FieldName = 'COD_EQUIPFISC'
      Origin = 'PEDVENDA.COD_EQUIPFISC'
    end
    object TPedVDTFECH: TDateField
      FieldName = 'DTFECH'
      Origin = 'PEDVENDA.DTFECH'
    end
    object TPedVNUMORC: TIntegerField
      FieldName = 'NUMORC'
      Origin = 'PEDVENDA.NUMORC'
    end
    object TPedVVLRFRETE: TIBBCDField
      FieldName = 'VLRFRETE'
      Origin = 'PEDVENDA.VLRFRETE'
      Precision = 18
      Size = 2
    end
    object TPedVMARK: TIBStringField
      FieldName = 'MARK'
      Origin = 'PEDVENDA.MARK'
      FixedChar = True
      Size = 1
    end
    object TPedVDESCMOE: TIBBCDField
      FieldName = 'DESCMOE'
      Origin = 'PEDVENDA.DESCMOE'
      Precision = 18
      Size = 2
    end
    object TPedVATU: TSmallintField
      FieldName = 'ATU'
      Origin = 'PEDVENDA.ATU'
    end
    object TPedVCOBRANCA: TIBStringField
      FieldName = 'COBRANCA'
      Origin = 'PEDVENDA.COBRANCA'
      Size = 10
    end
    object TPedVNUMPED_PALM: TIntegerField
      FieldName = 'NUMPED_PALM'
      Origin = 'PEDVENDA.NUMPED_PALM'
    end
    object TPedVFATURADO: TIBStringField
      FieldName = 'FATURADO'
      Origin = 'PEDVENDA.FATURADO'
      FixedChar = True
      Size = 1
    end
    object TPedVATUCOMIS: TIntegerField
      FieldName = 'ATUCOMIS'
      Origin = 'PEDVENDA.ATUCOMIS'
    end
    object TPedVEDIT: TIBStringField
      FieldName = 'EDIT'
      Origin = 'PEDVENDA.EDIT'
      Size = 5
    end
    object TPedVEXPORTA: TSmallintField
      FieldName = 'EXPORTA'
      Origin = 'PEDVENDA.EXPORTA'
    end
    object TPedVNUMPED: TIBStringField
      FieldName = 'NUMPED'
      Origin = 'PEDVENDA.NUMPED'
      Size = 15
    end
    object TPedVCOD_OBRA: TIntegerField
      FieldName = 'COD_OBRA'
      Origin = 'PEDVENDA.COD_OBRA'
    end
    object TPedVNOMECLI: TIBStringField
      FieldName = 'NOMECLI'
      Origin = 'PEDVENDA.NOMECLI'
      Size = 100
    end
    object TPedVCONTROLEFRETE: TIBStringField
      FieldName = 'CONTROLEFRETE'
      Origin = 'PEDVENDA.CONTROLEFRETE'
      Size = 10
    end
    object TPedVNUMECF: TIBStringField
      FieldName = 'NUMECF'
      Origin = 'PEDVENDA.NUMECF'
      Size = 10
    end
    object TPedVTIPOIMPFISC: TIBStringField
      FieldName = 'TIPOIMPFISC'
      Origin = 'PEDVENDA.TIPOIMPFISC'
      Size = 10
    end
    object TPedVVLROUTROS: TIBBCDField
      FieldName = 'VLROUTROS'
      Precision = 18
      Size = 2
    end
    object TPedVVLRIPI: TIBBCDField
      FieldName = 'VLRIPI'
      Origin = 'PEDVENDA.VLRIPI'
      Precision = 18
      Size = 2
    end
    object TPedVVLRICMSSUBSTITUICAO: TIBBCDField
      FieldName = 'VLRICMSSUBSTITUICAO'
      Origin = 'PEDVENDA.VLRICMSSUBSTITUICAO'
      Precision = 18
      Size = 2
    end
    object TPedVCODVEICULOENT: TIntegerField
      FieldName = 'CODVEICULOENT'
      Origin = 'PEDVENDA.CODVEICULOENT'
    end
    object TPedVVLRVEICULOENT: TIBBCDField
      FieldName = 'VLRVEICULOENT'
      Origin = 'PEDVENDA.VLRVEICULOENT'
      Precision = 18
      Size = 2
    end
    object TPedVVLRDESP: TIBBCDField
      FieldName = 'VLRDESP'
      Origin = 'PEDVENDA.VLRDESP'
      Precision = 18
      Size = 2
    end
    object TPedVCOD_PC_DEV: TIntegerField
      FieldName = 'COD_PC_DEV'
      Origin = 'PEDVENDA.COD_PC_DEV'
    end
    object TPedVNUMFISCAL_PC: TIBStringField
      FieldName = 'NUMFISCAL_PC'
      Origin = 'PEDVENDA.NUMFISCAL_PC'
      Size = 10
    end
    object TPedVNUMFISCAL_DEVOLVIDA: TIBStringField
      FieldName = 'NUMFISCAL_DEVOLVIDA'
      Origin = 'PEDVENDA.NUMFISCAL_DEVOLVIDA'
      Size = 10
    end
    object TPedVCOD_FATURA: TIBStringField
      FieldName = 'COD_FATURA'
      Origin = 'PEDVENDA.COD_FATURA'
      Size = 10
    end
  end
  object TItemPV: TIBQuery
    Database = IBDB
    Transaction = IBT
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select   FIRST 1 * from  ITENSPEDVEN')
    UpdateObject = UItemPV
    GeneratorField.Field = 'COD_ITENSPEDVEN'
    GeneratorField.Generator = 'GEN_ITENSPEDVEN_ID'
    Left = 80
    Top = 80
    object TItemPVCOD_ITENSPEDVEN: TIntegerField
      FieldName = 'COD_ITENSPEDVEN'
      Origin = 'ITENSPEDVEN.COD_ITENSPEDVEN'
      Required = True
    end
    object TItemPVCOD_PEDVEN: TIntegerField
      FieldName = 'COD_PEDVEN'
      Origin = 'ITENSPEDVEN.COD_PEDVEN'
    end
    object TItemPVCOD_ESTOQUE: TIntegerField
      FieldName = 'COD_ESTOQUE'
      Origin = 'ITENSPEDVEN.COD_ESTOQUE'
    end
    object TItemPVQTDEPROD: TIBBCDField
      FieldName = 'QTDEPROD'
      Origin = 'ITENSPEDVEN.QTDEPROD'
      Precision = 18
      Size = 3
    end
    object TItemPVDESCPRO: TFloatField
      FieldName = 'DESCPRO'
      Origin = 'ITENSPEDVEN.DESCPRO'
    end
    object TItemPVCOD_FUNCIONARIO: TIntegerField
      FieldName = 'COD_FUNCIONARIO'
      Origin = 'ITENSPEDVEN.COD_FUNCIONARIO'
    end
    object TItemPVVALUNIT: TIBBCDField
      FieldName = 'VALUNIT'
      Origin = 'ITENSPEDVEN.VALUNIT'
      Precision = 9
      Size = 2
    end
    object TItemPVVALCUSTO: TIBBCDField
      FieldName = 'VALCUSTO'
      Origin = 'ITENSPEDVEN.VALCUSTO'
      Precision = 9
      Size = 2
    end
    object TItemPVVALORTOTAL: TIBBCDField
      FieldName = 'VALORTOTAL'
      Origin = 'ITENSPEDVEN.VALORTOTAL'
      Precision = 9
      Size = 2
    end
    object TItemPVATUEST: TIBStringField
      FieldName = 'ATUEST'
      Origin = 'ITENSPEDVEN.ATUEST'
      FixedChar = True
      Size = 1
    end
    object TItemPVVALREP: TIBBCDField
      FieldName = 'VALREP'
      Origin = 'ITENSPEDVEN.VALREP'
      Precision = 9
      Size = 2
    end
    object it: TIBBCDField
      FieldName = 'COEFDIV'
      Origin = 'ITENSPEDVEN.COEFDIV'
      Precision = 18
      Size = 2
    end
    object TItemPVVALCOMP: TIBBCDField
      FieldName = 'VALCOMP'
      Origin = 'ITENSPEDVEN.VALCOMP'
      Precision = 9
      Size = 2
    end
    object TItemPVLUCPER: TIBBCDField
      FieldName = 'LUCPER'
      Origin = 'ITENSPEDVEN.LUCPER'
      Precision = 18
      Size = 2
    end
    object TItemPVLUCMOE: TIBBCDField
      FieldName = 'LUCMOE'
      Origin = 'ITENSPEDVEN.LUCMOE'
      Precision = 9
      Size = 2
    end
    object TItemPVDATA: TDateField
      FieldName = 'DATA'
      Origin = 'ITENSPEDVEN.DATA'
    end
    object TItemPVCOMISSAO: TIBBCDField
      FieldName = 'COMISSAO'
      Origin = 'ITENSPEDVEN.COMISSAO'
      Precision = 9
      Size = 2
    end
    object TItemPVOPERACAO: TIBStringField
      FieldName = 'OPERACAO'
      Origin = 'ITENSPEDVEN.OPERACAO'
      Size = 10
    end
    object TItemPVLUCREL: TIBBCDField
      FieldName = 'LUCREL'
      Origin = 'ITENSPEDVEN.LUCREL'
      Precision = 18
      Size = 2
    end
    object TItemPVVLRVENDBD: TIBBCDField
      FieldName = 'VLRVENDBD'
      Origin = 'ITENSPEDVEN.VLRVENDBD'
      Precision = 9
      Size = 2
    end
    object TItemPVQTDDEV: TIBBCDField
      FieldName = 'QTDDEV'
      Origin = 'ITENSPEDVEN.QTDDEV'
      Precision = 18
      Size = 3
    end
    object TItemPVNUMITEM: TSmallintField
      FieldName = 'NUMITEM'
      Origin = 'ITENSPEDVEN.NUMITEM'
    end
    object TItemPVCOD_LOTE: TIntegerField
      FieldName = 'COD_LOTE'
      Origin = 'ITENSPEDVEN.COD_LOTE'
    end
    object TItemPVALIQICMS: TIBBCDField
      FieldName = 'ALIQICMS'
      Origin = 'ITENSPEDVEN.ALIQICMS'
      Precision = 18
      Size = 2
    end
    object TItemPVBASEICMS: TIBBCDField
      FieldName = 'BASEICMS'
      Origin = 'ITENSPEDVEN.BASEICMS'
      Precision = 9
      Size = 2
    end
    object TItemPVVLRICMS: TIBBCDField
      FieldName = 'VLRICMS'
      Origin = 'ITENSPEDVEN.VLRICMS'
      Precision = 9
      Size = 2
    end
    object TItemPVBASEICMSSUBS: TIBBCDField
      FieldName = 'BASEICMSSUBS'
      Origin = 'ITENSPEDVEN.BASEICMSSUBS'
      Precision = 9
      Size = 2
    end
    object TItemPVVLRIPI: TIBBCDField
      FieldName = 'VLRIPI'
      Origin = 'ITENSPEDVEN.VLRIPI'
      Precision = 9
      Size = 2
    end
    object TItemPVALIQIPI: TIBBCDField
      FieldName = 'ALIQIPI'
      Origin = 'ITENSPEDVEN.ALIQIPI'
      Precision = 18
      Size = 2
    end
    object TItemPVREDUCBASEICMS: TIBBCDField
      FieldName = 'REDUCBASEICMS'
      Origin = 'ITENSPEDVEN.REDUCBASEICMS'
      Precision = 9
      Size = 2
    end
    object TItemPVVLRICMSSUBS: TIBBCDField
      FieldName = 'VLRICMSSUBS'
      Origin = 'ITENSPEDVEN.VLRICMSSUBS'
      Precision = 9
      Size = 2
    end
    object TItemPVVLRUNITDEV: TIBBCDField
      FieldName = 'VLRUNITDEV'
      Origin = 'ITENSPEDVEN.VLRUNITDEV'
      Precision = 9
      Size = 2
    end
    object TItemPVQTDENTREGUE: TIBBCDField
      FieldName = 'QTDENTREGUE'
      Origin = 'ITENSPEDVEN.QTDENTREGUE'
      Precision = 18
      Size = 3
    end
    object TItemPVCOD_UNIDADE: TIntegerField
      FieldName = 'COD_UNIDADE'
      Origin = 'ITENSPEDVEN.COD_UNIDADE'
    end
    object TItemPVQTDEMB: TIBBCDField
      FieldName = 'QTDEMB'
      Origin = 'ITENSPEDVEN.QTDEMB'
      Precision = 18
      Size = 3
    end
    object TItemPVUNIDEMB: TIntegerField
      FieldName = 'UNIDEMB'
      Origin = 'ITENSPEDVEN.UNIDEMB'
    end
    object TItemPVQTDNAEMB: TIBBCDField
      FieldName = 'QTDNAEMB'
      Origin = 'ITENSPEDVEN.QTDNAEMB'
      Precision = 18
      Size = 3
    end
    object TItemPVCFOP: TIBStringField
      FieldName = 'CFOP'
      Origin = 'ITENSPEDVEN.CFOP'
      Size = 10
    end
    object TItemPVTIPOLISTA: TIBStringField
      FieldName = 'TIPOLISTA'
      Origin = 'ITENSPEDVEN.TIPOLISTA'
      Size = 10
    end
    object TItemPVIPNPMC: TIBBCDField
      FieldName = 'IPNPMC'
      Origin = 'ITENSPEDVEN.IPNPMC'
      Precision = 18
      Size = 2
    end
    object TItemPVMVADESTINO: TIBBCDField
      FieldName = 'MVADESTINO'
      Origin = 'ITENSPEDVEN.MVADESTINO'
      Precision = 4
      Size = 2
    end
    object TItemPVDTTROCA: TDateField
      FieldName = 'DTTROCA'
      Origin = 'ITENSPEDVEN.DTTROCA'
    end
    object TItemPVCOD_CST: TIntegerField
      FieldName = 'COD_CST'
      Origin = 'ITENSPEDVEN.COD_CST'
    end
    object TItemPVDESCNF: TIBBCDField
      FieldName = 'DESCNF'
      Origin = 'ITENSPEDVEN.DESCNF'
      Precision = 18
      Size = 2
    end
    object TItemPVREDUCBASE: TIBBCDField
      FieldName = 'REDUCBASE'
      Origin = 'ITENSPEDVEN.REDUCBASE'
      Precision = 18
      Size = 2
    end
    object TItemPVAPLICARST: TIBStringField
      FieldName = 'APLICARST'
      Origin = 'ITENSPEDVEN.APLICARST'
      FixedChar = True
      Size = 1
    end
    object TItemPVVALORTOTALTRIBUTA: TIBBCDField
      FieldName = 'VALORTOTALTRIBUTA'
      Origin = 'ITENSPEDVEN.VALORTOTALTRIBUTA'
      Precision = 18
      Size = 2
    end
    object TItemPVALIQUOTATOTALTRIBUTA: TIBBCDField
      FieldName = 'ALIQUOTATOTALTRIBUTA'
      Origin = 'ITENSPEDVEN.ALIQUOTATOTALTRIBUTA'
      Precision = 18
      Size = 2
    end
    object TItemPVICMSCREDALIQ: TIBBCDField
      FieldName = 'ICMSCREDALIQ'
      Origin = 'ITENSPEDVEN.ICMSCREDALIQ'
      Precision = 4
      Size = 2
    end
    object TItemPVICMSCREDVALOR: TIBBCDField
      FieldName = 'ICMSCREDVALOR'
      Origin = 'ITENSPEDVEN.ICMSCREDVALOR'
      Precision = 18
      Size = 2
    end
    object TItemPVIPNMVA: TIBBCDField
      FieldName = 'IPNMVA'
      Origin = 'ITENSPEDVEN.IPNMVA'
      Precision = 18
      Size = 2
    end
    object TItemPVVALORTOTALTRIBUTAESTADUAL: TIBBCDField
      FieldName = 'VALORTOTALTRIBUTAESTADUAL'
      Origin = 'ITENSPEDVEN.VALORTOTALTRIBUTAESTADUAL'
      Precision = 18
      Size = 2
    end
    object TItemPVALIQ_DEVOLVIDO: TIBBCDField
      FieldName = 'ALIQ_DEVOLVIDO'
      Origin = 'ITENSPEDVEN.ALIQ_DEVOLVIDO'
      Precision = 18
      Size = 2
    end
    object TItemPVIT_DEV: TIBStringField
      FieldName = 'IT_DEV'
      Origin = 'ITENSPEDVEN.IT_DEV'
      FixedChar = True
      Size = 5
    end
    object TItemPVVALORFRETE: TIBBCDField
      FieldName = 'VALORFRETE'
      Origin = 'ITENSPEDVEN.VALORFRETE'
      Precision = 18
      Size = 2
    end
    object TItemPVVALORDESP: TIBBCDField
      FieldName = 'VALORDESP'
      Origin = 'ITENSPEDVEN.VALORDESP'
      Precision = 18
      Size = 2
    end
    object TItemPVALIQFCPDESTINO: TIBBCDField
      FieldName = 'ALIQFCPDESTINO'
      Origin = 'ITENSPEDVEN.ALIQFCPDESTINO'
      Precision = 4
      Size = 2
    end
    object TItemPVALIQINTICMS: TIBBCDField
      FieldName = 'ALIQINTICMS'
      Origin = 'ITENSPEDVEN.ALIQINTICMS'
      Precision = 4
      Size = 2
    end
    object TItemPVALIQEXTICMS: TIBBCDField
      FieldName = 'ALIQEXTICMS'
      Origin = 'ITENSPEDVEN.ALIQEXTICMS'
      Precision = 4
      Size = 2
    end
    object TItemPVALIQPROVPARTILHA: TIntegerField
      FieldName = 'ALIQPROVPARTILHA'
      Origin = 'ITENSPEDVEN.ALIQPROVPARTILHA'
    end
    object TItemPVVLRICMSFCP: TIBBCDField
      FieldName = 'VLRICMSFCP'
      Origin = 'ITENSPEDVEN.VLRICMSFCP'
      Precision = 18
      Size = 2
    end
    object TItemPVVLRICMSINTDEST: TIBBCDField
      FieldName = 'VLRICMSINTDEST'
      Origin = 'ITENSPEDVEN.VLRICMSINTDEST'
      Precision = 18
      Size = 2
    end
    object TItemPVVLRICMSINTREMET: TIBBCDField
      FieldName = 'VLRICMSINTREMET'
      Origin = 'ITENSPEDVEN.VLRICMSINTREMET'
      Precision = 18
      Size = 2
    end
    object TItemPVQTD4CASAS: TIBStringField
      FieldName = 'QTD4CASAS'
      Origin = 'ITENSPEDVEN.QTD4CASAS'
      Size = 15
    end
    object TItemPVNUMPEDCOMPRANFE: TIBStringField
      FieldName = 'NUMPEDCOMPRANFE'
      Origin = 'ITENSPEDVEN.NUMPEDCOMPRANFE'
      Size = 15
    end
    object TItemPVNUMITEMPEDCOMPRANFE: TIBStringField
      FieldName = 'NUMITEMPEDCOMPRANFE'
      Origin = 'ITENSPEDVEN.NUMITEMPEDCOMPRANFE'
      Size = 6
    end
    object TItemPVBASEICMSUFDEST: TIBBCDField
      FieldName = 'BASEICMSUFDEST'
      Origin = 'ITENSPEDVEN.BASEICMSUFDEST'
      Precision = 18
      Size = 2
    end
    object TItemPVCONTROLERETORNO: TIBStringField
      FieldName = 'CONTROLERETORNO'
      Origin = 'ITENSPEDVEN.CONTROLERETORNO'
      Size = 25
    end
    object TItemPVVALORCUSTOUNITARIONOTAFISCAL: TIBBCDField
      FieldName = 'VALORCUSTOUNITARIONOTAFISCAL'
      Origin = 'ITENSPEDVEN.VALORCUSTOUNITARIONOTAFISCAL'
      Precision = 18
      Size = 2
    end
  end
  object TLancSai: TIBQuery
    Database = IBDB
    Transaction = IBT
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select  FIRST 1  * from LANCSAI')
    UpdateObject = ULancSai
    Left = 136
    Top = 80
    object TLancSaiCOD_LANCSAI: TIntegerField
      FieldName = 'COD_LANCSAI'
      Required = True
    end
    object TLancSaiCOD_ESTOQUE: TIntegerField
      FieldName = 'COD_ESTOQUE'
    end
    object TLancSaiCOD_LOJA: TIntegerField
      FieldName = 'COD_LOJA'
    end
    object TLancSaiCOD_USUARIO: TIntegerField
      FieldName = 'COD_USUARIO'
    end
    object TLancSaiNUMNOTA: TIBStringField
      FieldName = 'NUMNOTA'
      Size = 10
    end
    object TLancSaiMOTIVO: TIBStringField
      FieldName = 'MOTIVO'
      Size = 60
    end
    object TLancSaiDT_LANCAMENTO: TDateField
      FieldName = 'DT_LANCAMENTO'
    end
    object TLancSaiQUANTIDADE: TFloatField
      FieldName = 'QUANTIDADE'
    end
    object TLancSaiDT_ESTOQUE: TDateField
      FieldName = 'DT_ESTOQUE'
    end
    object TLancSaiQTDANT: TFloatField
      FieldName = 'QTDANT'
    end
    object TLancSaiCOD_LOTE: TIntegerField
      FieldName = 'COD_LOTE'
      Origin = 'LANCSAI.COD_LOTE'
    end
    object TLancSaiQTD4CASAS: TIBStringField
      FieldName = 'QTD4CASAS'
      Origin = 'LANCSAI.QTD4CASAS'
      Size = 15
    end
  end
  object UPedV: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  COD_PEDVENDA,'
      '  COD_CLIENTE,'
      '  DTPEDVEN,'
      '  DESCONTO,'
      '  COD_USUARIO,'
      '  COD_FORMPAG,'
      '  VALOR,'
      '  ENTREGA,'
      '  NOMECLI,'
      '  OBS,'
      '  CPFCNPJ,'
      '  COD_VENDEDOR,'
      '  SITUACAO,'
      '  NUMPED,'
      '  TIPO,'
      '  VLRCOMIS,'
      '  GARANTIA,'
      '  COMSOBVENDA,'
      '  FISCO,'
      '  NUMFISCAL,'
      '  COD_EQUIPFISC,'
      '  DTFECH,'
      '  NUMORC,'
      '  VLRFRETE,'
      '  MARK,'
      '  DESCMOE,'
      '  ATU,'
      '  COBRANCA,'
      '  NUMPED_PALM,'
      '  ATUCOMIS,'
      '  FATURADO,'
      '  EDIT,'
      '  EXPORTA,'
      '  COD_OBRA,'
      '  CONTROLEFRETE,'
      '  NUMECF,'
      '  TIPOIMPFISC,'
      '  VLROUTROS,'
      '  VLRIPI,'
      '  VLRICMSSUBSTITUICAO,'
      '  CODVEICULOENT,'
      '  VLRVEICULOENT,'
      '  VLRDESP,'
      '  NUMFISCAL_DEVOLVIDA,'
      '  NUMFISCAL_PC,'
      '  COD_PC_DEV,'
      '  COD_FATURA'
      'from PEDVENDA '
      'where'
      '  COD_PEDVENDA = :COD_PEDVENDA')
    ModifySQL.Strings = (
      'update PEDVENDA'
      'set'
      '  COD_PEDVENDA = :COD_PEDVENDA,'
      '  COD_CLIENTE = :COD_CLIENTE,'
      '  DTPEDVEN = :DTPEDVEN,'
      '  DESCONTO = :DESCONTO,'
      '  COD_USUARIO = :COD_USUARIO,'
      '  COD_FORMPAG = :COD_FORMPAG,'
      '  VALOR = :VALOR,'
      '  ENTREGA = :ENTREGA,'
      '  NOMECLI = :NOMECLI,'
      '  OBS = :OBS,'
      '  CPFCNPJ = :CPFCNPJ,'
      '  COD_VENDEDOR = :COD_VENDEDOR,'
      '  SITUACAO = :SITUACAO,'
      '  NUMPED = :NUMPED,'
      '  TIPO = :TIPO,'
      '  VLRCOMIS = :VLRCOMIS,'
      '  GARANTIA = :GARANTIA,'
      '  COMSOBVENDA = :COMSOBVENDA,'
      '  FISCO = :FISCO,'
      '  NUMFISCAL = :NUMFISCAL,'
      '  COD_EQUIPFISC = :COD_EQUIPFISC,'
      '  DTFECH = :DTFECH,'
      '  NUMORC = :NUMORC,'
      '  VLRFRETE = :VLRFRETE,'
      '  MARK = :MARK,'
      '  DESCMOE = :DESCMOE,'
      '  ATU = :ATU,'
      '  COBRANCA = :COBRANCA,'
      '  NUMPED_PALM = :NUMPED_PALM,'
      '  ATUCOMIS = :ATUCOMIS,'
      '  FATURADO = :FATURADO,'
      '  EDIT = :EDIT,'
      '  EXPORTA = :EXPORTA,'
      '  COD_OBRA = :COD_OBRA,'
      '  CONTROLEFRETE = :CONTROLEFRETE,'
      '  NUMECF = :NUMECF,'
      '  TIPOIMPFISC = :TIPOIMPFISC,'
      '  VLROUTROS = :VLROUTROS,'
      '  VLRIPI = :VLRIPI,'
      '  VLRICMSSUBSTITUICAO = :VLRICMSSUBSTITUICAO,'
      '  CODVEICULOENT = :CODVEICULOENT,'
      '  VLRVEICULOENT = :VLRVEICULOENT,'
      '  VLRDESP = :VLRDESP,'
      '  NUMFISCAL_DEVOLVIDA = :NUMFISCAL_DEVOLVIDA,'
      '  NUMFISCAL_PC = :NUMFISCAL_PC,'
      '  COD_PC_DEV = :COD_PC_DEV,'
      '  COD_FATURA = :COD_FATURA'
      'where'
      '  COD_PEDVENDA = :OLD_COD_PEDVENDA')
    InsertSQL.Strings = (
      'insert into PEDVENDA'
      '  (COD_PEDVENDA, COD_CLIENTE, DTPEDVEN, DESCONTO, COD_USUARIO, '
      'COD_FORMPAG, '
      
        '   VALOR, ENTREGA, NOMECLI, OBS, CPFCNPJ, COD_VENDEDOR, SITUACAO' +
        ', '
      'NUMPED, '
      '   TIPO, VLRCOMIS, GARANTIA, COMSOBVENDA, FISCO, NUMFISCAL, '
      'COD_EQUIPFISC, '
      '   DTFECH, NUMORC, VLRFRETE, MARK, DESCMOE, ATU, COBRANCA, '
      'NUMPED_PALM, '
      '   ATUCOMIS, FATURADO, EDIT, EXPORTA, COD_OBRA, CONTROLEFRETE, '
      'NUMECF, '
      '   TIPOIMPFISC, VLROUTROS, VLRIPI, VLRICMSSUBSTITUICAO, '
      'CODVEICULOENT, '
      '   VLRVEICULOENT, VLRDESP, NUMFISCAL_DEVOLVIDA, NUMFISCAL_PC, '
      'COD_PC_DEV, '
      '   COD_FATURA)'
      'values'
      
        '  (:COD_PEDVENDA, :COD_CLIENTE, :DTPEDVEN, :DESCONTO, :COD_USUAR' +
        'IO, '
      ':COD_FORMPAG, '
      '   :VALOR, :ENTREGA, :NOMECLI, :OBS, :CPFCNPJ, :COD_VENDEDOR, '
      ':SITUACAO, '
      '   :NUMPED, :TIPO, :VLRCOMIS, :GARANTIA, :COMSOBVENDA, :FISCO, '
      ':NUMFISCAL, '
      
        '   :COD_EQUIPFISC, :DTFECH, :NUMORC, :VLRFRETE, :MARK, :DESCMOE,' +
        ' :ATU, '
      
        '   :COBRANCA, :NUMPED_PALM, :ATUCOMIS, :FATURADO, :EDIT, :EXPORT' +
        'A, '
      ':COD_OBRA, '
      '   :CONTROLEFRETE, :NUMECF, :TIPOIMPFISC, :VLROUTROS, :VLRIPI, '
      ':VLRICMSSUBSTITUICAO, '
      
        '   :CODVEICULOENT, :VLRVEICULOENT, :VLRDESP, :NUMFISCAL_DEVOLVID' +
        'A, '
      ':NUMFISCAL_PC, '
      '   :COD_PC_DEV, :COD_FATURA)')
    DeleteSQL.Strings = (
      'delete from PEDVENDA'
      'where'
      '  COD_PEDVENDA = :OLD_COD_PEDVENDA')
    Left = 24
    Top = 128
  end
  object UItemPV: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  COD_ITENSPEDVEN,'
      '  COD_PEDVEN,'
      '  COD_ESTOQUE,'
      '  QTDEPROD,'
      '  DESCPRO,'
      '  COD_FUNCIONARIO,'
      '  VALUNIT,'
      '  VALCUSTO,'
      '  VALORTOTAL,'
      '  ATUEST,'
      '  VALREP,'
      '  COEFDIV,'
      '  VALCOMP,'
      '  LUCPER,'
      '  LUCMOE,'
      '  DATA,'
      '  COMISSAO,'
      '  OPERACAO,'
      '  LUCREL,'
      '  VLRVENDBD,'
      '  QTDDEV,'
      '  NUMITEM,'
      '  COD_LOTE,'
      '  ALIQICMS,'
      '  BASEICMS,'
      '  VLRICMS,'
      '  BASEICMSSUBS,'
      '  VLRIPI,'
      '  ALIQIPI,'
      '  REDUCBASEICMS,'
      '  VLRICMSSUBS,'
      '  VLRUNITDEV,'
      '  QTDENTREGUE,'
      '  COD_UNIDADE,'
      '  QTDEMB,'
      '  UNIDEMB,'
      '  QTDNAEMB,'
      '  CFOP,'
      '  TIPOLISTA,'
      '  IPNPMC,'
      '  IPNMVA,'
      '  MVADESTINO,'
      '  DTTROCA,'
      '  COD_CST,'
      '  DESCNF,'
      '  REDUCBASE,'
      '  APLICARST,'
      '  VALORTOTALTRIBUTA,'
      '  ALIQUOTATOTALTRIBUTA,'
      '  ICMSCREDALIQ,'
      '  ICMSCREDVALOR,'
      '  VALORTOTALTRIBUTAESTADUAL,'
      '  IT_DEV,'
      '  ALIQ_DEVOLVIDO,'
      '  VALORDESP,'
      '  VALORFRETE,'
      '  ALIQFCPDESTINO,'
      '  ALIQINTICMS,'
      '  ALIQEXTICMS,'
      '  ALIQPROVPARTILHA,'
      '  VLRICMSFCP,'
      '  VLRICMSINTDEST,'
      '  VLRICMSINTREMET,'
      '  NUMPEDCOMPRANFE,'
      '  NUMITEMPEDCOMPRANFE,'
      '  QTD4CASAS,'
      '  CONTROLERETORNO,'
      '  BASEICMSUFDEST,'
      '  VALORCUSTOUNITARIONOTAFISCAL'
      'from ITENSPEDVEN '
      'where'
      '  COD_ITENSPEDVEN = :COD_ITENSPEDVEN')
    ModifySQL.Strings = (
      'update ITENSPEDVEN'
      'set'
      '  COD_ITENSPEDVEN = :COD_ITENSPEDVEN,'
      '  COD_PEDVEN = :COD_PEDVEN,'
      '  COD_ESTOQUE = :COD_ESTOQUE,'
      '  QTDEPROD = :QTDEPROD,'
      '  DESCPRO = :DESCPRO,'
      '  COD_FUNCIONARIO = :COD_FUNCIONARIO,'
      '  VALUNIT = :VALUNIT,'
      '  VALCUSTO = :VALCUSTO,'
      '  VALORTOTAL = :VALORTOTAL,'
      '  ATUEST = :ATUEST,'
      '  VALREP = :VALREP,'
      '  COEFDIV = :COEFDIV,'
      '  VALCOMP = :VALCOMP,'
      '  LUCPER = :LUCPER,'
      '  LUCMOE = :LUCMOE,'
      '  DATA = :DATA,'
      '  COMISSAO = :COMISSAO,'
      '  OPERACAO = :OPERACAO,'
      '  LUCREL = :LUCREL,'
      '  VLRVENDBD = :VLRVENDBD,'
      '  QTDDEV = :QTDDEV,'
      '  NUMITEM = :NUMITEM,'
      '  COD_LOTE = :COD_LOTE,'
      '  ALIQICMS = :ALIQICMS,'
      '  BASEICMS = :BASEICMS,'
      '  VLRICMS = :VLRICMS,'
      '  BASEICMSSUBS = :BASEICMSSUBS,'
      '  VLRIPI = :VLRIPI,'
      '  ALIQIPI = :ALIQIPI,'
      '  REDUCBASEICMS = :REDUCBASEICMS,'
      '  VLRICMSSUBS = :VLRICMSSUBS,'
      '  VLRUNITDEV = :VLRUNITDEV,'
      '  QTDENTREGUE = :QTDENTREGUE,'
      '  COD_UNIDADE = :COD_UNIDADE,'
      '  QTDEMB = :QTDEMB,'
      '  UNIDEMB = :UNIDEMB,'
      '  QTDNAEMB = :QTDNAEMB,'
      '  CFOP = :CFOP,'
      '  TIPOLISTA = :TIPOLISTA,'
      '  IPNPMC = :IPNPMC,'
      '  IPNMVA = :IPNMVA,'
      '  MVADESTINO = :MVADESTINO,'
      '  DTTROCA = :DTTROCA,'
      '  COD_CST = :COD_CST,'
      '  DESCNF = :DESCNF,'
      '  REDUCBASE = :REDUCBASE,'
      '  APLICARST = :APLICARST,'
      '  VALORTOTALTRIBUTA = :VALORTOTALTRIBUTA,'
      '  ALIQUOTATOTALTRIBUTA = :ALIQUOTATOTALTRIBUTA,'
      '  ICMSCREDALIQ = :ICMSCREDALIQ,'
      '  ICMSCREDVALOR = :ICMSCREDVALOR,'
      '  VALORTOTALTRIBUTAESTADUAL = :VALORTOTALTRIBUTAESTADUAL,'
      '  IT_DEV = :IT_DEV,'
      '  ALIQ_DEVOLVIDO = :ALIQ_DEVOLVIDO,'
      '  VALORDESP = :VALORDESP,'
      '  VALORFRETE = :VALORFRETE,'
      '  ALIQFCPDESTINO = :ALIQFCPDESTINO,'
      '  ALIQINTICMS = :ALIQINTICMS,'
      '  ALIQEXTICMS = :ALIQEXTICMS,'
      '  ALIQPROVPARTILHA = :ALIQPROVPARTILHA,'
      '  VLRICMSFCP = :VLRICMSFCP,'
      '  VLRICMSINTDEST = :VLRICMSINTDEST,'
      '  VLRICMSINTREMET = :VLRICMSINTREMET,'
      '  NUMPEDCOMPRANFE = :NUMPEDCOMPRANFE,'
      '  NUMITEMPEDCOMPRANFE = :NUMITEMPEDCOMPRANFE,'
      '  QTD4CASAS = :QTD4CASAS,'
      '  CONTROLERETORNO = :CONTROLERETORNO,'
      '  BASEICMSUFDEST = :BASEICMSUFDEST,'
      '  VALORCUSTOUNITARIONOTAFISCAL = :VALORCUSTOUNITARIONOTAFISCAL'
      'where'
      '  COD_ITENSPEDVEN = :OLD_COD_ITENSPEDVEN')
    InsertSQL.Strings = (
      'insert into ITENSPEDVEN'
      '  (COD_ITENSPEDVEN, COD_PEDVEN, COD_ESTOQUE, QTDEPROD, DESCPRO, '
      'COD_FUNCIONARIO, '
      
        '   VALUNIT, VALCUSTO, VALORTOTAL, ATUEST, VALREP, COEFDIV, VALCO' +
        'MP, '
      'LUCPER, '
      '   LUCMOE, DATA, COMISSAO, OPERACAO, LUCREL, VLRVENDBD, QTDDEV, '
      'NUMITEM, '
      
        '   COD_LOTE, ALIQICMS, BASEICMS, VLRICMS, BASEICMSSUBS, VLRIPI, ' +
        'ALIQIPI, '
      '   REDUCBASEICMS, VLRICMSSUBS, VLRUNITDEV, QTDENTREGUE, '
      'COD_UNIDADE, QTDEMB, '
      
        '   UNIDEMB, QTDNAEMB, CFOP, TIPOLISTA, IPNPMC, IPNMVA, MVADESTIN' +
        'O, '
      'DTTROCA, '
      '   COD_CST, DESCNF, REDUCBASE, APLICARST, VALORTOTALTRIBUTA, '
      'ALIQUOTATOTALTRIBUTA, '
      '   ICMSCREDALIQ, ICMSCREDVALOR, VALORTOTALTRIBUTAESTADUAL, '
      'IT_DEV, ALIQ_DEVOLVIDO, '
      
        '   VALORDESP, VALORFRETE, ALIQFCPDESTINO, ALIQINTICMS, ALIQEXTIC' +
        'MS, '
      'ALIQPROVPARTILHA, '
      
        '   VLRICMSFCP, VLRICMSINTDEST, VLRICMSINTREMET, NUMPEDCOMPRANFE,' +
        ' '
      'NUMITEMPEDCOMPRANFE, '
      '   QTD4CASAS, CONTROLERETORNO, BASEICMSUFDEST, '
      'VALORCUSTOUNITARIONOTAFISCAL)'
      'values'
      '  (:COD_ITENSPEDVEN, :COD_PEDVEN, :COD_ESTOQUE, :QTDEPROD, '
      ':DESCPRO, :COD_FUNCIONARIO, '
      
        '   :VALUNIT, :VALCUSTO, :VALORTOTAL, :ATUEST, :VALREP, :COEFDIV,' +
        ' '
      ':VALCOMP, '
      
        '   :LUCPER, :LUCMOE, :DATA, :COMISSAO, :OPERACAO, :LUCREL, :VLRV' +
        'ENDBD, '
      
        '   :QTDDEV, :NUMITEM, :COD_LOTE, :ALIQICMS, :BASEICMS, :VLRICMS,' +
        ' '
      ':BASEICMSSUBS, '
      
        '   :VLRIPI, :ALIQIPI, :REDUCBASEICMS, :VLRICMSSUBS, :VLRUNITDEV,' +
        ' '
      ':QTDENTREGUE, '
      
        '   :COD_UNIDADE, :QTDEMB, :UNIDEMB, :QTDNAEMB, :CFOP, :TIPOLISTA' +
        ', '
      ':IPNPMC, '
      
        '   :IPNMVA, :MVADESTINO, :DTTROCA, :COD_CST, :DESCNF, :REDUCBASE' +
        ', '
      ':APLICARST, '
      '   :VALORTOTALTRIBUTA, :ALIQUOTATOTALTRIBUTA, :ICMSCREDALIQ, '
      ':ICMSCREDVALOR, '
      '   :VALORTOTALTRIBUTAESTADUAL, :IT_DEV, :ALIQ_DEVOLVIDO, '
      ':VALORDESP, :VALORFRETE, '
      
        '   :ALIQFCPDESTINO, :ALIQINTICMS, :ALIQEXTICMS, :ALIQPROVPARTILH' +
        'A, '
      ':VLRICMSFCP, '
      '   :VLRICMSINTDEST, :VLRICMSINTREMET, :NUMPEDCOMPRANFE, '
      ':NUMITEMPEDCOMPRANFE, '
      '   :QTD4CASAS, :CONTROLERETORNO, :BASEICMSUFDEST, '
      ':VALORCUSTOUNITARIONOTAFISCAL)')
    DeleteSQL.Strings = (
      'delete from ITENSPEDVEN'
      'where'
      '  COD_ITENSPEDVEN = :OLD_COD_ITENSPEDVEN')
    Left = 80
    Top = 128
  end
  object ULancSai: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  COD_LANCSAI,'
      '  COD_ESTOQUE,'
      '  COD_LOJA,'
      '  COD_USUARIO,'
      '  NUMNOTA,'
      '  MOTIVO,'
      '  DT_LANCAMENTO,'
      '  QUANTIDADE,'
      '  DT_ESTOQUE,'
      '  QTDANT,'
      '  COD_LOTE,'
      '  QTD4CASAS'
      'from LANCSAI '
      'where'
      '  COD_LANCSAI = :COD_LANCSAI')
    ModifySQL.Strings = (
      'update LANCSAI'
      'set'
      '  COD_LANCSAI = :COD_LANCSAI,'
      '  COD_ESTOQUE = :COD_ESTOQUE,'
      '  COD_LOJA = :COD_LOJA,'
      '  COD_USUARIO = :COD_USUARIO,'
      '  NUMNOTA = :NUMNOTA,'
      '  MOTIVO = :MOTIVO,'
      '  DT_LANCAMENTO = :DT_LANCAMENTO,'
      '  QUANTIDADE = :QUANTIDADE,'
      '  DT_ESTOQUE = :DT_ESTOQUE,'
      '  QTDANT = :QTDANT,'
      '  COD_LOTE = :COD_LOTE,'
      '  QTD4CASAS = :QTD4CASAS'
      'where'
      '  COD_LANCSAI = :OLD_COD_LANCSAI')
    InsertSQL.Strings = (
      'insert into LANCSAI'
      
        '  (COD_LANCSAI, COD_ESTOQUE, COD_LOJA, COD_USUARIO, NUMNOTA, MOT' +
        'IVO, DT_LANCAMENTO, '
      '   QUANTIDADE, DT_ESTOQUE, QTDANT, COD_LOTE, QTD4CASAS)'
      'values'
      
        '  (:COD_LANCSAI, :COD_ESTOQUE, :COD_LOJA, :COD_USUARIO, :NUMNOTA' +
        ', :MOTIVO, '
      
        '   :DT_LANCAMENTO, :QUANTIDADE, :DT_ESTOQUE, :QTDANT, :COD_LOTE,' +
        ' :QTD4CASAS)')
    DeleteSQL.Strings = (
      'delete from LANCSAI'
      'where'
      '  COD_LANCSAI = :OLD_COD_LANCSAI')
    Left = 136
    Top = 128
  end
  object DPedv: TDataSource
    DataSet = TPedV
    Left = 24
    Top = 176
  end
  object DItemPedV: TDataSource
    DataSet = TItemPV
    Left = 80
    Top = 176
  end
  object DLancSai: TDataSource
    DataSet = TLancSai
    Left = 136
    Top = 175
  end
  object WPedV: TIBQuery
    Database = IBDB
    Transaction = IBT
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select  FIRST 1  * from VWPEDV')
    Left = 24
    Top = 232
    object WPedVCOD_PEDVENDA: TIntegerField
      FieldName = 'COD_PEDVENDA'
      Origin = 'VWPEDV.COD_PEDVENDA'
    end
    object WPedVCOD_CLIENTE: TIntegerField
      FieldName = 'COD_CLIENTE'
      Origin = 'VWPEDV.COD_CLIENTE'
    end
    object WPedVNOMECLI: TIBStringField
      FieldName = 'NOMECLI'
      Origin = 'VWPEDV.NOMECLI'
      Size = 50
    end
    object WPedVCOD_FORMPAG: TIntegerField
      FieldName = 'COD_FORMPAG'
      Origin = 'VWPEDV.COD_FORMPAG'
    end
    object WPedVCOD_USUARIO: TIntegerField
      FieldName = 'COD_USUARIO'
      Origin = 'VWPEDV.COD_USUARIO'
    end
    object WPedVDTPEDVEN: TDateField
      FieldName = 'DTPEDVEN'
      Origin = 'VWPEDV.DTPEDVEN'
    end
    object WPedVNUMPED: TIBStringField
      FieldName = 'NUMPED'
      Origin = 'VWPEDV.NUMPED'
      Size = 15
    end
    object WPedVNUMORC: TIntegerField
      FieldName = 'NUMORC'
      Origin = 'VWPEDV.NUMORC'
    end
    object WPedVNUMFISCAL: TIBStringField
      FieldName = 'NUMFISCAL'
      Origin = 'VWPEDV.NUMFISCAL'
      Size = 10
    end
    object WPedVSITUACAO: TIBStringField
      FieldName = 'SITUACAO'
      Origin = 'VWPEDV.SITUACAO'
      Size = 10
    end
    object WPedVVALOR: TIBBCDField
      FieldName = 'VALOR'
      Origin = 'VWPEDV.VALOR'
      Precision = 18
      Size = 2
    end
    object WPedVFORMPAG: TIBStringField
      FieldName = 'FORMPAG'
      Origin = 'VWPEDV.FORMPAG'
      Size = 100
    end
    object WPedVCOD_LOJA: TIntegerField
      FieldName = 'COD_LOJA'
      Origin = 'VWPEDV.COD_LOJA'
    end
    object WPedVCOD_VENDEDOR: TIntegerField
      FieldName = 'COD_VENDEDOR'
      Origin = 'VWPEDV.COD_VENDEDOR'
    end
    object WPedVVENDEDOR: TIBStringField
      FieldName = 'VENDEDOR'
      Origin = 'VWPEDV.VENDEDOR'
      Size = 100
    end
    object WPedVTIPO: TIBStringField
      FieldName = 'TIPO'
      Origin = 'VWPEDV.TIPO'
      Size = 10
    end
    object WPedVGARANT: TIBStringField
      FieldName = 'GARANT'
      Origin = 'VWPEDV.GARANT'
      FixedChar = True
      Size = 1
    end
    object WPedVMARK: TIBStringField
      FieldName = 'MARK'
      Origin = 'VWPEDV.MARK'
      FixedChar = True
      Size = 1
    end
    object WPedVCOBRANCA: TIBStringField
      FieldName = 'COBRANCA'
      Origin = 'VWPEDV.COBRANCA'
      Size = 10
    end
    object WPedVFATURADO: TIBStringField
      FieldName = 'FATURADO'
      Origin = 'VWPEDV.FATURADO'
      FixedChar = True
      Size = 1
    end
    object WPedVFISCO: TIBStringField
      FieldName = 'FISCO'
      Origin = 'VWPEDV.FISCO'
      Size = 10
    end
    object WPedVCONTROLEFRETE: TIBStringField
      FieldName = 'CONTROLEFRETE'
      Origin = 'VWPEDV.CONTROLEFRETE'
      Size = 10
    end
    object WPedVNUMFISCAL_DEV: TIBStringField
      FieldName = 'NUMFISCAL_DEV'
      Origin = 'VWPEDV.NUMFISCAL_DEV'
      Size = 10
    end
    object WPedVNUMFISCAL_PC: TIBStringField
      FieldName = 'NUMFISCAL_PC'
      Origin = 'VWPEDV.NUMFISCAL_PC'
      Size = 10
    end
  end
  object DWPedV: TDataSource
    DataSet = WPedV
    Left = 24
    Top = 280
  end
  object WLancSai: TIBQuery
    Database = IBDB
    Transaction = IBT
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select   FIRST 1 * from VWLANCSAI')
    Left = 80
    Top = 232
    object WLancSaiCOD_LANCSAI: TIntegerField
      FieldName = 'COD_LANCSAI'
      Origin = 'VWLANCSAI.COD_LANCSAI'
    end
    object WLancSaiCOD_ESTOQUE: TIntegerField
      FieldName = 'COD_ESTOQUE'
      Origin = 'VWLANCSAI.COD_ESTOQUE'
    end
    object WLancSaiCOD_LOJA: TIntegerField
      FieldName = 'COD_LOJA'
      Origin = 'VWLANCSAI.COD_LOJA'
    end
    object WLancSaiCOD_USUARIO: TIntegerField
      FieldName = 'COD_USUARIO'
      Origin = 'VWLANCSAI.COD_USUARIO'
    end
    object WLancSaiDT_LANCAMENTO: TDateField
      FieldName = 'DT_LANCAMENTO'
      Origin = 'VWLANCSAI.DT_LANCAMENTO'
    end
    object WLancSaiMOTIVO: TIBStringField
      FieldName = 'MOTIVO'
      Origin = 'VWLANCSAI.MOTIVO'
      Size = 60
    end
    object WLancSaiNUMNOTA: TIBStringField
      FieldName = 'NUMNOTA'
      Origin = 'VWLANCSAI.NUMNOTA'
      Size = 10
    end
    object WLancSaiQUANTIDADE: TFloatField
      FieldName = 'QUANTIDADE'
      Origin = 'VWLANCSAI.QUANTIDADE'
    end
    object WLancSaiCTRLINT: TIBStringField
      FieldName = 'CTRLINT'
      Origin = 'VWLANCSAI.CTRLINT'
      Size = 15
    end
    object WLancSaiANTERIOR: TFloatField
      FieldName = 'ANTERIOR'
      Origin = 'VWLANCSAI.ANTERIOR'
    end
    object WLancSaiCODFABRICANTE: TIBStringField
      FieldName = 'CODFABRICANTE'
      Origin = 'VWLANCSAI.CODFABRICANTE'
      Size = 25
    end
    object WLancSaiPRODUTO: TIBStringField
      FieldName = 'PRODUTO'
      Origin = 'VWLANCSAI.PRODUTO'
      Size = 120
    end
    object WLancSaiQTD4CASAS: TIBStringField
      FieldName = 'QTD4CASAS'
      Origin = 'VWLANCSAI.QTD4CASAS'
      Size = 15
    end
  end
  object DWLancSai: TDataSource
    DataSet = WLancSai
    Left = 80
    Top = 280
  end
  object ComProd: TIBQuery
    Database = IBDB
    Transaction = IBT
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select   FIRST 1 * from COMPROD')
    UpdateObject = UComProd
    Left = 192
    Top = 80
    object ComProdCOD_COMPROD: TIntegerField
      FieldName = 'COD_COMPROD'
      Origin = 'COMPROD.COD_COMPROD'
    end
    object ComProdCOD_GERADOR: TIntegerField
      FieldName = 'COD_GERADOR'
      Origin = 'COMPROD.COD_GERADOR'
    end
    object ComProdCOD_FUNCIONARIO: TIntegerField
      FieldName = 'COD_FUNCIONARIO'
      Origin = 'COMPROD.COD_FUNCIONARIO'
    end
    object ComProdPERCENTO: TIBBCDField
      FieldName = 'PERCENTO'
      Origin = 'COMPROD.PERCENTO'
      Precision = 18
      Size = 2
    end
    object ComProdTIPO: TIBStringField
      FieldName = 'TIPO'
      Origin = 'COMPROD.TIPO'
      Size = 10
    end
  end
  object UComProd: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  COD_COMPROD,'
      '  COD_GERADOR,'
      '  COD_FUNCIONARIO,'
      '  PERCENTO,'
      '  TIPO'
      'from COMPROD '
      'where'
      '  COD_COMPROD = :COD_COMPROD')
    ModifySQL.Strings = (
      'update COMPROD'
      'set'
      '  COD_COMPROD = :COD_COMPROD,'
      '  COD_GERADOR = :COD_GERADOR,'
      '  COD_FUNCIONARIO = :COD_FUNCIONARIO,'
      '  PERCENTO = :PERCENTO,'
      '  TIPO = :TIPO'
      'where'
      '  COD_COMPROD = :OLD_COD_COMPROD')
    InsertSQL.Strings = (
      'insert into COMPROD'
      '  (COD_COMPROD, COD_GERADOR, COD_FUNCIONARIO, PERCENTO, TIPO)'
      'values'
      
        '  (:COD_COMPROD, :COD_GERADOR, :COD_FUNCIONARIO, :PERCENTO, :TIP' +
        'O)')
    DeleteSQL.Strings = (
      'delete from COMPROD'
      'where'
      '  COD_COMPROD = :OLD_COD_COMPROD')
    Left = 192
    Top = 128
  end
  object DComProd: TDataSource
    DataSet = ComProd
    Left = 192
    Top = 175
  end
  object ComServ: TIBQuery
    Database = IBDB
    Transaction = IBT
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select   FIRST 1 * from COMSERV')
    UpdateObject = UComServ
    Left = 248
    Top = 80
    object ComServCOD_COMSERV: TIntegerField
      FieldName = 'COD_COMSERV'
      Origin = 'COMSERV.COD_COMSERV'
    end
    object ComServCOD_GERADOR: TIntegerField
      FieldName = 'COD_GERADOR'
      Origin = 'COMSERV.COD_GERADOR'
    end
    object ComServCOD_FUNCIONARIO: TIntegerField
      FieldName = 'COD_FUNCIONARIO'
      Origin = 'COMSERV.COD_FUNCIONARIO'
    end
    object ComServPERCENTO: TIBBCDField
      FieldName = 'PERCENTO'
      Origin = 'COMSERV.PERCENTO'
      Precision = 18
      Size = 2
    end
    object ComServTIPO: TIBStringField
      FieldName = 'TIPO'
      Origin = 'COMSERV.TIPO'
      Size = 10
    end
  end
  object UComServ: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  COD_COMSERV,'
      '  COD_GERADOR,'
      '  COD_FUNCIONARIO,'
      '  PERCENTO,'
      '  TIPO'
      'from COMSERV '
      'where'
      '  COD_COMSERV = :COD_COMSERV')
    ModifySQL.Strings = (
      'update COMSERV'
      'set'
      '  COD_COMSERV = :COD_COMSERV,'
      '  COD_GERADOR = :COD_GERADOR,'
      '  COD_FUNCIONARIO = :COD_FUNCIONARIO,'
      '  PERCENTO = :PERCENTO,'
      '  TIPO = :TIPO'
      'where'
      '  COD_COMSERV = :OLD_COD_COMSERV')
    InsertSQL.Strings = (
      'insert into COMSERV'
      '  (COD_COMSERV, COD_GERADOR, COD_FUNCIONARIO, PERCENTO, TIPO)'
      'values'
      
        '  (:COD_COMSERV, :COD_GERADOR, :COD_FUNCIONARIO, :PERCENTO, :TIP' +
        'O)')
    DeleteSQL.Strings = (
      'delete from COMSERV'
      'where'
      '  COD_COMSERV = :OLD_COD_COMSERV')
    Left = 248
    Top = 128
  end
  object DComServ: TDataSource
    DataSet = ComServ
    Left = 248
    Top = 175
  end
  object TOrc: TIBQuery
    Database = IBDB
    Transaction = IBT
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select   FIRST 1 * from ORCAMENTO'
      '')
    UpdateObject = UOrc
    Left = 304
    Top = 80
    object TOrcCOD_ORCAMENTO: TIntegerField
      FieldName = 'COD_ORCAMENTO'
    end
    object TOrcCOD_USUARIO: TIntegerField
      FieldName = 'COD_USUARIO'
    end
    object TOrcCOD_VENDEDOR: TIntegerField
      FieldName = 'COD_VENDEDOR'
    end
    object TOrcCOD_FORMPAG: TIntegerField
      FieldName = 'COD_FORMPAG'
    end
    object TOrcCOD_LOJA: TIntegerField
      FieldName = 'COD_LOJA'
    end
    object TOrcCOD_CLIENTE: TIntegerField
      FieldName = 'COD_CLIENTE'
    end
    object TOrcCPFCNPJ: TIBStringField
      FieldName = 'CPFCNPJ'
    end
    object TOrcDTABERT: TDateField
      FieldName = 'DTABERT'
    end
    object TOrcHRABERT: TTimeField
      FieldName = 'HRABERT'
    end
    object TOrcDTVALIDADE: TDateField
      FieldName = 'DTVALIDADE'
    end
    object TOrcNUMORC: TIntegerField
      FieldName = 'NUMORC'
    end
    object TOrcOBS: TMemoField
      FieldName = 'OBS'
      BlobType = ftMemo
      Size = 8
    end
    object TOrcTIPO: TIBStringField
      FieldName = 'TIPO'
      Size = 10
    end
    object TOrcDESCSERV: TIBBCDField
      FieldName = 'DESCSERV'
      Precision = 4
      Size = 2
    end
    object TOrcDESCPROD: TIBBCDField
      FieldName = 'DESCPROD'
      Precision = 4
      Size = 2
    end
    object TOrcVLRSERV: TIBBCDField
      FieldName = 'VLRSERV'
      Precision = 9
      Size = 2
    end
    object TOrcVLRPROD: TIBBCDField
      FieldName = 'VLRPROD'
      Precision = 9
      Size = 2
    end
    object TOrcVLRTOTAL: TIBBCDField
      FieldName = 'VLRTOTAL'
      Precision = 9
      Size = 2
    end
    object TOrcVLRDESP: TIBBCDField
      FieldName = 'VLRDESP'
      Precision = 9
      Size = 2
    end
    object TOrcCOD_RESTEC: TIntegerField
      FieldName = 'COD_RESTEC'
      Origin = 'ORCAMENTO.COD_RESTEC'
    end
    object TOrcVLRRESTEC: TIBBCDField
      FieldName = 'VLRRESTEC'
      Origin = 'ORCAMENTO.VLRRESTEC'
      Precision = 18
      Size = 2
    end
    object TOrcDESCPRODMOE: TIBBCDField
      FieldName = 'DESCPRODMOE'
      Origin = 'ORCAMENTO.DESCPRODMOE'
      Precision = 18
      Size = 2
    end
    object TOrcDESCRICAO: TIBStringField
      FieldName = 'DESCRICAO'
      Origin = 'ORCAMENTO.DESCRICAO'
      Size = 100
    end
    object TOrcCOD_EQUIPAMENTO: TIntegerField
      FieldName = 'COD_EQUIPAMENTO'
      Origin = 'ORCAMENTO.COD_EQUIPAMENTO'
    end
    object TOrcCONTATO: TIBStringField
      FieldName = 'CONTATO'
      Origin = 'ORCAMENTO.CONTATO'
      Size = 60
    end
    object TOrcEXPORTA: TIBStringField
      FieldName = 'EXPORTA'
      Origin = 'ORCAMENTO.EXPORTA'
      FixedChar = True
      Size = 1
    end
    object TOrcMODO_PAGAMENTO: TIBStringField
      FieldName = 'MODO_PAGAMENTO'
      Origin = 'ORCAMENTO.MODO_PAGAMENTO'
      Size = 100
    end
    object TOrcGARANTIA: TIBStringField
      FieldName = 'GARANTIA'
      Origin = 'ORCAMENTO.GARANTIA'
      Size = 50
    end
    object TOrcFRETE: TIBStringField
      FieldName = 'FRETE'
      Origin = 'ORCAMENTO.FRETE'
      Size = 50
    end
    object TOrcSOLICITANTE: TIBStringField
      FieldName = 'SOLICITANTE'
      Origin = 'ORCAMENTO.SOLICITANTE'
      Size = 50
    end
    object TOrcEMAIL_SOLICITANTE: TIBStringField
      FieldName = 'EMAIL_SOLICITANTE'
      Origin = 'ORCAMENTO.EMAIL_SOLICITANTE'
      Size = 50
    end
    object TOrcAREA_SOLICITANTE: TIBStringField
      FieldName = 'AREA_SOLICITANTE'
      Origin = 'ORCAMENTO.AREA_SOLICITANTE'
      Size = 50
    end
    object TOrcPRAZO_DESPACHO: TIBStringField
      FieldName = 'PRAZO_DESPACHO'
      Origin = 'ORCAMENTO.PRAZO_DESPACHO'
      Size = 50
    end
    object TOrcCARACTERISTICA_PRODUTO02: TMemoField
      FieldName = 'CARACTERISTICA_PRODUTO02'
      Origin = 'ORCAMENTO.CARACTERISTICA_PRODUTO02'
      BlobType = ftMemo
      Size = 8
    end
    object TOrcCARACTERISTICA_PRODUTO01: TMemoField
      FieldName = 'CARACTERISTICA_PRODUTO01'
      Origin = 'ORCAMENTO.CARACTERISTICA_PRODUTO01'
      BlobType = ftMemo
      Size = 8
    end
    object TOrcCOD_CST: TIntegerField
      FieldName = 'COD_CST'
      Origin = 'ORCAMENTO.COD_CST'
    end
    object TOrcNOMECLI: TIBStringField
      FieldName = 'NOMECLI'
      Origin = 'ORCAMENTO.NOMECLI'
      Size = 100
    end
    object TOrcICMS_ST: TIBBCDField
      FieldName = 'ICMS_ST'
      Origin = 'ORCAMENTO.ICMS_ST'
      Precision = 4
      Size = 2
    end
    object TOrcVENDEDOR: TIBStringField
      FieldName = 'VENDEDOR'
      Origin = 'ORCAMENTO.VENDEDOR'
      Size = 150
    end
    object TOrcFORMAPAGAMENTO: TIBStringField
      FieldName = 'FORMAPAGAMENTO'
      Origin = 'ORCAMENTO.FORMAPAGAMENTO'
      Size = 50
    end
    object TOrcCIDADE: TIBStringField
      FieldName = 'CIDADE'
      Origin = 'ORCAMENTO.CIDADE'
      Size = 150
    end
    object TOrcTELEFONE: TIBStringField
      FieldName = 'TELEFONE'
      Origin = 'ORCAMENTO.TELEFONE'
      Size = 15
    end
  end
  object TItProdOrc: TIBQuery
    Database = IBDB
    Transaction = IBT
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select   FIRST 1 * from   ITPRODORC')
    UpdateObject = UpProdOrc
    Left = 360
    Top = 80
    object TItProdOrcCOD_ITPRODORC: TIntegerField
      FieldName = 'COD_ITPRODORC'
    end
    object TItProdOrcCOD_ORCAMENTO: TIntegerField
      FieldName = 'COD_ORCAMENTO'
    end
    object TItProdOrcCOD_ESTOQUE: TIntegerField
      FieldName = 'COD_ESTOQUE'
    end
    object TItProdOrcQTD: TIBBCDField
      FieldName = 'QTD'
      Precision = 18
      Size = 3
    end
    object TItProdOrcDESCONTO: TIBBCDField
      FieldName = 'DESCONTO'
      Precision = 4
      Size = 2
    end
    object TItProdOrcVLRUNIT: TIBBCDField
      FieldName = 'VLRUNIT'
      Precision = 9
      Size = 2
    end
    object TItProdOrcVLRTOTAL: TIBBCDField
      FieldName = 'VLRTOTAL'
      Precision = 9
      Size = 2
    end
    object TItProdOrcVALCUSTO: TIBBCDField
      FieldName = 'VALCUSTO'
      Origin = 'ITPRODORC.VALCUSTO'
      Precision = 18
      Size = 2
    end
    object TItProdOrcCOEFDIV: TIBBCDField
      FieldName = 'COEFDIV'
      Origin = 'ITPRODORC.COEFDIV'
      Precision = 18
      Size = 2
    end
    object TItProdOrcVALCOMP: TIBBCDField
      FieldName = 'VALCOMP'
      Origin = 'ITPRODORC.VALCOMP'
      Precision = 18
      Size = 2
    end
    object TItProdOrcLUCMOE: TIBBCDField
      FieldName = 'LUCMOE'
      Origin = 'ITPRODORC.LUCMOE'
      Precision = 18
      Size = 2
    end
    object TItProdOrcLUCPER: TIBBCDField
      FieldName = 'LUCPER'
      Origin = 'ITPRODORC.LUCPER'
      Precision = 18
      Size = 2
    end
    object TItProdOrcVALREP: TIBBCDField
      FieldName = 'VALREP'
      Origin = 'ITPRODORC.VALREP'
      Precision = 18
      Size = 2
    end
    object TItProdOrcLUCREL: TIBBCDField
      FieldName = 'LUCREL'
      Origin = 'ITPRODORC.LUCREL'
      Precision = 18
      Size = 2
    end
    object TItProdOrcCOD_UNIDADE: TIntegerField
      FieldName = 'COD_UNIDADE'
      Origin = 'ITPRODORC.COD_UNIDADE'
    end
    object TItProdOrcQTDEMB: TIBBCDField
      FieldName = 'QTDEMB'
      Origin = 'ITPRODORC.QTDEMB'
      Precision = 18
      Size = 3
    end
    object TItProdOrcUNIDEMB: TIntegerField
      FieldName = 'UNIDEMB'
      Origin = 'ITPRODORC.UNIDEMB'
    end
    object TItProdOrcQTDNAEMB: TIBBCDField
      FieldName = 'QTDNAEMB'
      Origin = 'ITPRODORC.QTDNAEMB'
      Precision = 18
      Size = 3
    end
    object TItProdOrcAPLICARST: TIBStringField
      FieldName = 'APLICARST'
      Origin = 'ITPRODORC.APLICARST'
      FixedChar = True
      Size = 1
    end
    object TItProdOrcCOD_CST: TIntegerField
      FieldName = 'COD_CST'
      Origin = 'ITPRODORC.COD_CST'
    end
    object TItProdOrcVLRICMSSUBS: TIBBCDField
      FieldName = 'VLRICMSSUBS'
      Origin = 'ITPRODORC.VLRICMSSUBS'
      Precision = 18
      Size = 2
    end
    object TItProdOrcBASEICMSSUBS: TIBBCDField
      FieldName = 'BASEICMSSUBS'
      Origin = 'ITPRODORC.BASEICMSSUBS'
      Precision = 18
      Size = 2
    end
    object TItProdOrcIPNMVA: TIBBCDField
      FieldName = 'IPNMVA'
      Origin = 'ITPRODORC.IPNMVA'
      Precision = 18
      Size = 2
    end
  end
  object UOrc: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  COD_ORCAMENTO,'
      '  COD_USUARIO,'
      '  COD_VENDEDOR,'
      '  COD_FORMPAG,'
      '  COD_LOJA,'
      '  COD_CLIENTE,'
      '  NOMECLI,'
      '  CPFCNPJ,'
      '  DTABERT,'
      '  HRABERT,'
      '  DTVALIDADE,'
      '  NUMORC,'
      '  OBS,'
      '  TIPO,'
      '  DESCSERV,'
      '  DESCPROD,'
      '  VLRSERV,'
      '  VLRPROD,'
      '  VLRTOTAL,'
      '  VLRDESP,'
      '  COD_RESTEC,'
      '  VLRRESTEC,'
      '  DESCPRODMOE,'
      '  DESCRICAO,'
      '  COD_EQUIPAMENTO,'
      '  CONTATO,'
      '  EXPORTA,'
      '  ICMS_ST,'
      '  SOLICITANTE,'
      '  EMAIL_SOLICITANTE,'
      '  AREA_SOLICITANTE,'
      '  PRAZO_DESPACHO,'
      '  MODO_PAGAMENTO,'
      '  GARANTIA,'
      '  FRETE,'
      '  CARACTERISTICA_PRODUTO01,'
      '  CARACTERISTICA_PRODUTO02,'
      '  COD_CST,'
      '  VENDEDOR,'
      '  FORMAPAGAMENTO,'
      '  CIDADE,'
      '  TELEFONE'
      'from ORCAMENTO '
      'where'
      '  COD_ORCAMENTO = :COD_ORCAMENTO')
    ModifySQL.Strings = (
      'update ORCAMENTO'
      'set'
      '  COD_ORCAMENTO = :COD_ORCAMENTO,'
      '  COD_USUARIO = :COD_USUARIO,'
      '  COD_VENDEDOR = :COD_VENDEDOR,'
      '  COD_FORMPAG = :COD_FORMPAG,'
      '  COD_LOJA = :COD_LOJA,'
      '  COD_CLIENTE = :COD_CLIENTE,'
      '  NOMECLI = :NOMECLI,'
      '  CPFCNPJ = :CPFCNPJ,'
      '  DTABERT = :DTABERT,'
      '  HRABERT = :HRABERT,'
      '  DTVALIDADE = :DTVALIDADE,'
      '  NUMORC = :NUMORC,'
      '  OBS = :OBS,'
      '  TIPO = :TIPO,'
      '  DESCSERV = :DESCSERV,'
      '  DESCPROD = :DESCPROD,'
      '  VLRSERV = :VLRSERV,'
      '  VLRPROD = :VLRPROD,'
      '  VLRTOTAL = :VLRTOTAL,'
      '  VLRDESP = :VLRDESP,'
      '  COD_RESTEC = :COD_RESTEC,'
      '  VLRRESTEC = :VLRRESTEC,'
      '  DESCPRODMOE = :DESCPRODMOE,'
      '  DESCRICAO = :DESCRICAO,'
      '  COD_EQUIPAMENTO = :COD_EQUIPAMENTO,'
      '  CONTATO = :CONTATO,'
      '  EXPORTA = :EXPORTA,'
      '  ICMS_ST = :ICMS_ST,'
      '  SOLICITANTE = :SOLICITANTE,'
      '  EMAIL_SOLICITANTE = :EMAIL_SOLICITANTE,'
      '  AREA_SOLICITANTE = :AREA_SOLICITANTE,'
      '  PRAZO_DESPACHO = :PRAZO_DESPACHO,'
      '  MODO_PAGAMENTO = :MODO_PAGAMENTO,'
      '  GARANTIA = :GARANTIA,'
      '  FRETE = :FRETE,'
      '  CARACTERISTICA_PRODUTO01 = :CARACTERISTICA_PRODUTO01,'
      '  CARACTERISTICA_PRODUTO02 = :CARACTERISTICA_PRODUTO02,'
      '  COD_CST = :COD_CST,'
      '  VENDEDOR = :VENDEDOR,'
      '  FORMAPAGAMENTO = :FORMAPAGAMENTO,'
      '  CIDADE = :CIDADE,'
      '  TELEFONE = :TELEFONE'
      'where'
      '  COD_ORCAMENTO = :OLD_COD_ORCAMENTO')
    InsertSQL.Strings = (
      'insert into ORCAMENTO'
      '  (COD_ORCAMENTO, COD_USUARIO, COD_VENDEDOR, COD_FORMPAG, '
      'COD_LOJA, COD_CLIENTE, '
      '   NOMECLI, CPFCNPJ, DTABERT, HRABERT, DTVALIDADE, NUMORC, OBS, '
      'TIPO, DESCSERV, '
      '   DESCPROD, VLRSERV, VLRPROD, VLRTOTAL, VLRDESP, COD_RESTEC, '
      'VLRRESTEC, '
      '   DESCPRODMOE, DESCRICAO, COD_EQUIPAMENTO, CONTATO, EXPORTA, '
      'ICMS_ST, '
      '   SOLICITANTE, EMAIL_SOLICITANTE, AREA_SOLICITANTE, '
      'PRAZO_DESPACHO, MODO_PAGAMENTO, '
      '   GARANTIA, FRETE, CARACTERISTICA_PRODUTO01, '
      'CARACTERISTICA_PRODUTO02, '
      '   COD_CST, VENDEDOR, FORMAPAGAMENTO, CIDADE, TELEFONE)'
      'values'
      '  (:COD_ORCAMENTO, :COD_USUARIO, :COD_VENDEDOR, :COD_FORMPAG, '
      ':COD_LOJA, '
      
        '   :COD_CLIENTE, :NOMECLI, :CPFCNPJ, :DTABERT, :HRABERT, :DTVALI' +
        'DADE, '
      ':NUMORC, '
      
        '   :OBS, :TIPO, :DESCSERV, :DESCPROD, :VLRSERV, :VLRPROD, :VLRTO' +
        'TAL, '
      ':VLRDESP, '
      '   :COD_RESTEC, :VLRRESTEC, :DESCPRODMOE, :DESCRICAO, '
      ':COD_EQUIPAMENTO, '
      
        '   :CONTATO, :EXPORTA, :ICMS_ST, :SOLICITANTE, :EMAIL_SOLICITANT' +
        'E, '
      ':AREA_SOLICITANTE, '
      '   :PRAZO_DESPACHO, :MODO_PAGAMENTO, :GARANTIA, :FRETE, '
      ':CARACTERISTICA_PRODUTO01, '
      '   :CARACTERISTICA_PRODUTO02, :COD_CST, :VENDEDOR, '
      ':FORMAPAGAMENTO, :CIDADE, '
      '   :TELEFONE)')
    DeleteSQL.Strings = (
      'delete from ORCAMENTO'
      'where'
      '  COD_ORCAMENTO = :OLD_COD_ORCAMENTO')
    Left = 304
    Top = 128
  end
  object UpProdOrc: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  COD_ITPRODORC,'
      '  COD_ORCAMENTO,'
      '  COD_ESTOQUE,'
      '  QTD,'
      '  DESCONTO,'
      '  VLRUNIT,'
      '  VLRTOTAL,'
      '  VALCUSTO,'
      '  COEFDIV,'
      '  VALCOMP,'
      '  LUCMOE,'
      '  LUCPER,'
      '  VALREP,'
      '  LUCREL,'
      '  COD_UNIDADE,'
      '  QTDEMB,'
      '  UNIDEMB,'
      '  QTDNAEMB,'
      '  BASEICMSSUBS,'
      '  VLRICMSSUBS,'
      '  IPNMVA,'
      '  COD_CST,'
      '  APLICARST'
      'from ITPRODORC '
      'where'
      '  COD_ITPRODORC = :COD_ITPRODORC')
    ModifySQL.Strings = (
      'update ITPRODORC'
      'set'
      '  COD_ITPRODORC = :COD_ITPRODORC,'
      '  COD_ORCAMENTO = :COD_ORCAMENTO,'
      '  COD_ESTOQUE = :COD_ESTOQUE,'
      '  QTD = :QTD,'
      '  DESCONTO = :DESCONTO,'
      '  VLRUNIT = :VLRUNIT,'
      '  VLRTOTAL = :VLRTOTAL,'
      '  VALCUSTO = :VALCUSTO,'
      '  COEFDIV = :COEFDIV,'
      '  VALCOMP = :VALCOMP,'
      '  LUCMOE = :LUCMOE,'
      '  LUCPER = :LUCPER,'
      '  VALREP = :VALREP,'
      '  LUCREL = :LUCREL,'
      '  COD_UNIDADE = :COD_UNIDADE,'
      '  QTDEMB = :QTDEMB,'
      '  UNIDEMB = :UNIDEMB,'
      '  QTDNAEMB = :QTDNAEMB,'
      '  BASEICMSSUBS = :BASEICMSSUBS,'
      '  VLRICMSSUBS = :VLRICMSSUBS,'
      '  IPNMVA = :IPNMVA,'
      '  COD_CST = :COD_CST,'
      '  APLICARST = :APLICARST'
      'where'
      '  COD_ITPRODORC = :OLD_COD_ITPRODORC')
    InsertSQL.Strings = (
      'insert into ITPRODORC'
      
        '  (COD_ITPRODORC, COD_ORCAMENTO, COD_ESTOQUE, QTD, DESCONTO, VLR' +
        'UNIT, VLRTOTAL, '
      
        '   VALCUSTO, COEFDIV, VALCOMP, LUCMOE, LUCPER, VALREP, LUCREL, C' +
        'OD_UNIDADE, '
      
        '   QTDEMB, UNIDEMB, QTDNAEMB, BASEICMSSUBS, VLRICMSSUBS, IPNMVA,' +
        ' COD_CST, '
      '   APLICARST)'
      'values'
      
        '  (:COD_ITPRODORC, :COD_ORCAMENTO, :COD_ESTOQUE, :QTD, :DESCONTO' +
        ', :VLRUNIT, '
      
        '   :VLRTOTAL, :VALCUSTO, :COEFDIV, :VALCOMP, :LUCMOE, :LUCPER, :' +
        'VALREP, '
      
        '   :LUCREL, :COD_UNIDADE, :QTDEMB, :UNIDEMB, :QTDNAEMB, :BASEICM' +
        'SSUBS, '
      '   :VLRICMSSUBS, :IPNMVA, :COD_CST, :APLICARST)')
    DeleteSQL.Strings = (
      'delete from ITPRODORC'
      'where'
      '  COD_ITPRODORC = :OLD_COD_ITPRODORC')
    Left = 360
    Top = 128
  end
  object DOrc: TDataSource
    DataSet = TOrc
    Left = 304
    Top = 176
  end
  object DProdOrc: TDataSource
    DataSet = TItProdOrc
    Left = 360
    Top = 176
  end
  object TItServOrc: TIBQuery
    Database = IBDB
    Transaction = IBT
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select   FIRST 1 * from   ITSERVORC')
    UpdateObject = UServOrc
    Left = 424
    Top = 80
    object TItServOrcCOD_ITSERVORC: TIntegerField
      FieldName = 'COD_ITSERVORC'
    end
    object TItServOrcCOD_ORCAMENTO: TIntegerField
      FieldName = 'COD_ORCAMENTO'
    end
    object TItServOrcCOD_SERVICO: TIntegerField
      FieldName = 'COD_SERVICO'
    end
    object TItServOrcQTD: TIBBCDField
      FieldName = 'QTD'
      Precision = 18
      Size = 3
    end
    object TItServOrcDESCONTO: TIBBCDField
      FieldName = 'DESCONTO'
      Precision = 4
      Size = 2
    end
    object TItServOrcVLRUNIT: TIBBCDField
      FieldName = 'VLRUNIT'
      Precision = 9
      Size = 2
    end
    object TItServOrcVLRTOTAL: TIBBCDField
      FieldName = 'VLRTOTAL'
      Precision = 9
      Size = 2
    end
  end
  object UServOrc: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  COD_ITSERVORC,'
      '  COD_ORCAMENTO,'
      '  COD_SERVICO,'
      '  QTD,'
      '  DESCONTO,'
      '  VLRUNIT,'
      '  VLRTOTAL'
      'from ITSERVORC '
      'where'
      '  COD_ITSERVORC = :COD_ITSERVORC')
    ModifySQL.Strings = (
      'update ITSERVORC'
      'set'
      '  COD_ITSERVORC = :COD_ITSERVORC,'
      '  COD_ORCAMENTO = :COD_ORCAMENTO,'
      '  COD_SERVICO = :COD_SERVICO,'
      '  QTD = :QTD,'
      '  DESCONTO = :DESCONTO,'
      '  VLRUNIT = :VLRUNIT,'
      '  VLRTOTAL = :VLRTOTAL'
      'where'
      '  COD_ITSERVORC = :OLD_COD_ITSERVORC')
    InsertSQL.Strings = (
      'insert into ITSERVORC'
      
        '  (COD_ITSERVORC, COD_ORCAMENTO, COD_SERVICO, QTD, DESCONTO, VLR' +
        'UNIT, VLRTOTAL)'
      'values'
      
        '  (:COD_ITSERVORC, :COD_ORCAMENTO, :COD_SERVICO, :QTD, :DESCONTO' +
        ', :VLRUNIT, '
      '   :VLRTOTAL)')
    DeleteSQL.Strings = (
      'delete from ITSERVORC'
      'where'
      '  COD_ITSERVORC = :OLD_COD_ITSERVORC')
    Left = 424
    Top = 128
  end
  object DServOrc: TDataSource
    DataSet = TItServOrc
    Left = 424
    Top = 176
  end
  object WOrc: TIBQuery
    Database = IBDB
    Transaction = IBT
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select  FIRST 1  * from VWORCAMENTO')
    Left = 136
    Top = 232
    object WOrcCOD_ORCAMENTO: TIntegerField
      FieldName = 'COD_ORCAMENTO'
      Origin = 'VWORCAMENTO.COD_ORCAMENTO'
    end
    object WOrcCOD_CLIENTE: TIntegerField
      FieldName = 'COD_CLIENTE'
      Origin = 'VWORCAMENTO.COD_CLIENTE'
    end
    object WOrcNOMECLI: TIBStringField
      DisplayWidth = 100
      FieldName = 'NOMECLI'
      Origin = 'VWORCAMENTO.NOMECLI'
      Size = 100
    end
    object WOrcCOD_FORMPAG: TIntegerField
      FieldName = 'COD_FORMPAG'
      Origin = 'VWORCAMENTO.COD_FORMPAG'
    end
    object WOrcCOD_USUARIO: TIntegerField
      FieldName = 'COD_USUARIO'
      Origin = 'VWORCAMENTO.COD_USUARIO'
    end
    object WOrcDTABERT: TDateField
      FieldName = 'DTABERT'
      Origin = 'VWORCAMENTO.DTABERT'
    end
    object WOrcNUMORC: TIntegerField
      FieldName = 'NUMORC'
      Origin = 'VWORCAMENTO.NUMORC'
    end
    object WOrcDTVALID: TDateField
      FieldName = 'DTVALID'
      Origin = 'VWORCAMENTO.DTVALID'
    end
    object WOrcVLRTOTAL: TIBBCDField
      FieldName = 'VLRTOTAL'
      Origin = 'VWORCAMENTO.VLRTOTAL'
      Precision = 18
      Size = 2
    end
    object WOrcFORMPAG: TIBStringField
      FieldName = 'FORMPAG'
      Origin = 'VWORCAMENTO.FORMPAG'
      Size = 100
    end
    object WOrcCOD_LOJA: TIntegerField
      FieldName = 'COD_LOJA'
      Origin = 'VWORCAMENTO.COD_LOJA'
    end
    object WOrcFUNCIONARIO: TIBStringField
      FieldName = 'FUNCIONARIO'
      Origin = 'VWORCAMENTO.FUNCIONARIO'
      Size = 100
    end
    object WOrcDESCRICAO: TIBStringField
      FieldName = 'DESCRICAO'
      Origin = 'VWORCAMENTO.DESCRICAO'
      Size = 100
    end
    object WOrcEXPORTA: TIBStringField
      FieldName = 'EXPORTA'
      Origin = 'VWORCAMENTO.EXPORTA'
      FixedChar = True
      Size = 1
    end
  end
  object DWOrc: TDataSource
    DataSet = WOrc
    Left = 136
    Top = 280
  end
  object TAlx: TIBQuery
    Tag = 5
    Database = IBDB
    Transaction = IBT
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'select itservord.cod_ordem as COD_ORDEM ,itservord.data, vwsubse' +
        'rvico.descricao, vwsubservico.vlrfinal, ordem.tipopag, ordem.cod' +
        '_formpag'
      'from itservord'
      
        'left join vwsubservico on itservord.cod_servico = vwsubservico.c' +
        'od_subservico'
      'left join ordem on itservord.cod_ordem = ordem.cod_ordem'
      'where ordem.status = '#39'FECHADO'#39)
    Left = 176
    Top = 16
  end
  object DAlx: TDataSource
    DataSet = TAlx
    Left = 208
    Top = 16
  end
  object TFiscPV: TIBQuery
    Database = IBDB
    Transaction = IBT
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select   FIRST 1 *  from DOCFISSAIDA')
    UpdateObject = UFiscPV
    GeneratorField.Field = 'COD_CST'
    Left = 483
    Top = 80
    object TFiscPVCOD_DOCFISC: TIntegerField
      FieldName = 'COD_DOCFISC'
      Origin = 'DOCFISSAIDA.COD_DOCFISC'
      Required = True
    end
    object TFiscPVCOD_PEDIDO: TIntegerField
      FieldName = 'COD_PEDIDO'
      Origin = 'DOCFISSAIDA.COD_PEDIDO'
    end
    object TFiscPVNUMDOCFIS: TIBStringField
      FieldName = 'NUMDOCFIS'
      Origin = 'DOCFISSAIDA.NUMDOCFIS'
      Size = 10
    end
    object TFiscPVTIPODOCFIS: TIBStringField
      FieldName = 'TIPODOCFIS'
      Origin = 'DOCFISSAIDA.TIPODOCFIS'
      FixedChar = True
      Size = 1
    end
    object TFiscPVNUMDOCANT: TIBStringField
      FieldName = 'NUMDOCANT'
      Origin = 'DOCFISSAIDA.NUMDOCANT'
      Size = 10
    end
    object TFiscPVSERIE: TIBStringField
      FieldName = 'SERIE'
      Origin = 'DOCFISSAIDA.SERIE'
      Size = 10
    end
    object TFiscPVDTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
      Origin = 'DOCFISSAIDA.DTEMISSAO'
    end
    object TFiscPVDTENTSAID: TDateField
      FieldName = 'DTENTSAID'
      Origin = 'DOCFISSAIDA.DTENTSAID'
    end
    object TFiscPVHORASAID: TTimeField
      FieldName = 'HORASAID'
      Origin = 'DOCFISSAIDA.HORASAID'
    end
    object TFiscPVCOD_CFOP: TIntegerField
      FieldName = 'COD_CFOP'
      Origin = 'DOCFISSAIDA.COD_CFOP'
    end
    object TFiscPVCOD_TRANSP: TIntegerField
      FieldName = 'COD_TRANSP'
      Origin = 'DOCFISSAIDA.COD_TRANSP'
    end
    object TFiscPVFRETECONTA: TIBStringField
      FieldName = 'FRETECONTA'
      Origin = 'DOCFISSAIDA.FRETECONTA'
      FixedChar = True
      Size = 1
    end
    object TFiscPVPLACA: TIBStringField
      FieldName = 'PLACA'
      Origin = 'DOCFISSAIDA.PLACA'
      Size = 10
    end
    object TFiscPVUFPLACA: TIBStringField
      FieldName = 'UFPLACA'
      Origin = 'DOCFISSAIDA.UFPLACA'
      FixedChar = True
      Size = 2
    end
    object TFiscPVCPFPLACA: TIBStringField
      FieldName = 'CPFPLACA'
      Origin = 'DOCFISSAIDA.CPFPLACA'
    end
    object TFiscPVQUANTFRETE: TFloatField
      FieldName = 'QUANTFRETE'
      Origin = 'DOCFISSAIDA.QUANTFRETE'
    end
    object TFiscPVESPECIEFRETE: TIBStringField
      FieldName = 'ESPECIEFRETE'
      Origin = 'DOCFISSAIDA.ESPECIEFRETE'
      Size = 10
    end
    object TFiscPVMARCAFRETE: TIBStringField
      FieldName = 'MARCAFRETE'
      Origin = 'DOCFISSAIDA.MARCAFRETE'
      Size = 25
    end
    object TFiscPVPESOBRUTO: TFloatField
      FieldName = 'PESOBRUTO'
      Origin = 'DOCFISSAIDA.PESOBRUTO'
    end
    object TFiscPVPESOLIQ: TFloatField
      FieldName = 'PESOLIQ'
      Origin = 'DOCFISSAIDA.PESOLIQ'
    end
    object TFiscPVCOD_COTA: TIntegerField
      FieldName = 'COD_COTA'
      Origin = 'DOCFISSAIDA.COD_COTA'
    end
    object TFiscPVNF: TIBStringField
      FieldName = 'NF'
      Origin = 'DOCFISSAIDA.NF'
      FixedChar = True
      Size = 1
    end
    object TFiscPVBASEICMS: TIBBCDField
      FieldName = 'BASEICMS'
      Origin = 'DOCFISSAIDA.BASEICMS'
      Precision = 18
      Size = 2
    end
    object TFiscPVVLRICMS: TIBBCDField
      FieldName = 'VLRICMS'
      Origin = 'DOCFISSAIDA.VLRICMS'
      Precision = 18
      Size = 2
    end
    object TFiscPVBASCALSUBS: TIBBCDField
      FieldName = 'BASCALSUBS'
      Origin = 'DOCFISSAIDA.BASCALSUBS'
      Precision = 18
      Size = 2
    end
    object TFiscPVVLRICMSUBS: TIBBCDField
      FieldName = 'VLRICMSUBS'
      Origin = 'DOCFISSAIDA.VLRICMSUBS'
      Precision = 18
      Size = 2
    end
    object TFiscPVVLRTOTPROD: TIBBCDField
      FieldName = 'VLRTOTPROD'
      Origin = 'DOCFISSAIDA.VLRTOTPROD'
      Precision = 18
      Size = 2
    end
    object TFiscPVVLRFRETE: TIBBCDField
      FieldName = 'VLRFRETE'
      Origin = 'DOCFISSAIDA.VLRFRETE'
      Precision = 18
      Size = 2
    end
    object TFiscPVVLRICMSFRETE: TIBBCDField
      FieldName = 'VLRICMSFRETE'
      Origin = 'DOCFISSAIDA.VLRICMSFRETE'
      Precision = 18
      Size = 2
    end
    object TFiscPVVLRSEG: TIBBCDField
      FieldName = 'VLRSEG'
      Origin = 'DOCFISSAIDA.VLRSEG'
      Precision = 18
      Size = 2
    end
    object TFiscPVVLRTOTIPI: TIBBCDField
      FieldName = 'VLRTOTIPI'
      Origin = 'DOCFISSAIDA.VLRTOTIPI'
      Precision = 18
      Size = 2
    end
    object TFiscPVVLRTOTICMS: TIBBCDField
      FieldName = 'VLRTOTICMS'
      Origin = 'DOCFISSAIDA.VLRTOTICMS'
      Precision = 18
      Size = 2
    end
    object TFiscPVVLRTOTDOCNF: TIBBCDField
      FieldName = 'VLRTOTDOCNF'
      Origin = 'DOCFISSAIDA.VLRTOTDOCNF'
      Precision = 18
      Size = 2
    end
    object TFiscPVVLROUTRASDESP: TIBBCDField
      FieldName = 'VLROUTRASDESP'
      Origin = 'DOCFISSAIDA.VLROUTRASDESP'
      Precision = 18
      Size = 2
    end
    object TFiscPVFRETECOMP: TIBStringField
      FieldName = 'FRETECOMP'
      Origin = 'DOCFISSAIDA.FRETECOMP'
      FixedChar = True
      Size = 1
    end
    object TFiscPVVLREMB: TIBBCDField
      FieldName = 'VLREMB'
      Origin = 'DOCFISSAIDA.VLREMB'
      Precision = 18
      Size = 2
    end
    object TFiscPVTIPOGERADOR: TIBStringField
      FieldName = 'TIPOGERADOR'
      Origin = 'DOCFISSAIDA.TIPOGERADOR'
      Size = 10
    end
    object TFiscPVNUMCONHEC: TIBStringField
      FieldName = 'NUMCONHEC'
      Origin = 'DOCFISSAIDA.NUMCONHEC'
      Size = 25
    end
    object TFiscPVVLRISENTOICMS: TIBBCDField
      FieldName = 'VLRISENTOICMS'
      Origin = 'DOCFISSAIDA.VLRISENTOICMS'
      Precision = 18
      Size = 2
    end
    object TFiscPVMODELONF: TIBStringField
      FieldName = 'MODELONF'
      Origin = 'DOCFISSAIDA.MODELONF'
      Size = 10
    end
    object TFiscPVNFECHAVE: TIBStringField
      FieldName = 'NFECHAVE'
      Origin = 'DOCFISSAIDA.NFECHAVE'
      Size = 50
    end
    object TFiscPVNFELOTE: TIBStringField
      FieldName = 'NFELOTE'
      Origin = 'DOCFISSAIDA.NFELOTE'
      Size = 10
    end
    object TFiscPVNFERECIBO: TIBStringField
      FieldName = 'NFERECIBO'
      Origin = 'DOCFISSAIDA.NFERECIBO'
      Size = 15
    end
    object TFiscPVNFEERRO: TIBStringField
      FieldName = 'NFEERRO'
      Origin = 'DOCFISSAIDA.NFEERRO'
      Size = 255
    end
    object TFiscPVNFEPROTOCOLO: TIBStringField
      FieldName = 'NFEPROTOCOLO'
      Origin = 'DOCFISSAIDA.NFEPROTOCOLO'
    end
    object TFiscPVNFESTATUS: TSmallintField
      FieldName = 'NFESTATUS'
      Origin = 'DOCFISSAIDA.NFESTATUS'
    end
    object TFiscPVNFESERIE: TIntegerField
      FieldName = 'NFESERIE'
      Origin = 'DOCFISSAIDA.NFESERIE'
    end
    object TFiscPVOBS2: TIBStringField
      FieldName = 'OBS2'
      Origin = 'DOCFISSAIDA.OBS2'
      Size = 255
    end
    object TFiscPVGERARDADOSADIC: TIBStringField
      FieldName = 'GERARDADOSADIC'
      Origin = 'DOCFISSAIDA.GERARDADOSADIC'
      FixedChar = True
      Size = 1
    end
    object TFiscPVOBS: TIBStringField
      FieldName = 'OBS'
      Origin = 'DOCFISSAIDA.OBS'
      Size = 255
    end
    object TFiscPVANTT: TIBStringField
      FieldName = 'ANTT'
      Origin = 'DOCFISSAIDA.ANTT'
      Size = 25
    end
    object TFiscPVCFOPPEDIDO: TIBStringField
      FieldName = 'CFOPPEDIDO'
      Origin = 'DOCFISSAIDA.CFOPPEDIDO'
      FixedChar = True
      Size = 1
    end
    object TFiscPVNFEAMBIENTE: TIntegerField
      FieldName = 'NFEAMBIENTE'
      Origin = 'DOCFISSAIDA.NFEAMBIENTE'
    end
    object TFiscPVNFEXML: TMemoField
      FieldName = 'NFEXML'
      Origin = 'DOCFISSAIDA.NFEXML'
      BlobType = ftMemo
      Size = 8
    end
    object TFiscPVNFETPEMIS: TIntegerField
      FieldName = 'NFETPEMIS'
      Origin = 'DOCFISSAIDA.NFETPEMIS'
    end
    object TFiscPVXMLAUTORIZACAO: TMemoField
      FieldName = 'XMLAUTORIZACAO'
      Origin = 'DOCFISSAIDA.XMLAUTORIZACAO'
      BlobType = ftMemo
      Size = 8
    end
    object TFiscPVCOD_CFOP1: TIntegerField
      FieldName = 'COD_CFOP1'
      Origin = 'DOCFISSAIDA.COD_CFOP1'
    end
    object TFiscPVCOD_CFOP2: TIntegerField
      FieldName = 'COD_CFOP2'
      Origin = 'DOCFISSAIDA.COD_CFOP2'
    end
    object TFiscPVCOD_PERIODOFISCAL: TIntegerField
      FieldName = 'COD_PERIODOFISCAL'
      Origin = 'DOCFISSAIDA.COD_PERIODOFISCAL'
    end
    object TFiscPVRESERVFISC01: TMemoField
      FieldName = 'RESERVFISC01'
      Origin = 'DOCFISSAIDA.RESERVFISC01'
      BlobType = ftMemo
      Size = 8
    end
    object TFiscPVNUMDOCFISINT: TIntegerField
      FieldName = 'NUMDOCFISINT'
      Origin = 'DOCFISSAIDA.NUMDOCFISINT'
    end
    object TFiscPVDADOSAD01: TMemoField
      FieldName = 'DADOSAD01'
      Origin = 'DOCFISSAIDA.DADOSAD01'
      BlobType = ftMemo
      Size = 8
    end
    object TFiscPVVLRDESCONTO: TIBBCDField
      FieldName = 'VLRDESCONTO'
      Origin = 'DOCFISSAIDA.VLRDESCONTO'
      Precision = 18
      Size = 2
    end
    object TFiscPVTIPOIMPFISC: TIBStringField
      FieldName = 'TIPOIMPFISC'
      Origin = 'DOCFISSAIDA.TIPOIMPFISC'
      Size = 10
    end
    object TFiscPVNFEXMLDIST: TMemoField
      FieldName = 'NFEXMLDIST'
      Origin = 'DOCFISSAIDA.NFEXMLDIST'
      BlobType = ftMemo
      Size = 8
    end
    object TFiscPVNFEXMLCANCEL: TMemoField
      FieldName = 'NFEXMLCANCEL'
      Origin = 'DOCFISSAIDA.NFEXMLCANCEL'
      BlobType = ftMemo
      Size = 8
    end
    object TFiscPVVALORTOTALTRIBUTA: TIBBCDField
      FieldName = 'VALORTOTALTRIBUTA'
      Origin = 'DOCFISSAIDA.VALORTOTALTRIBUTA'
      Precision = 18
      Size = 2
    end
    object TFiscPVALIQUOTATOTALTRIBUTA: TIBBCDField
      FieldName = 'ALIQUOTATOTALTRIBUTA'
      Origin = 'DOCFISSAIDA.ALIQUOTATOTALTRIBUTA'
      Precision = 18
      Size = 2
    end
    object TFiscPVVALORTOTALTRIBUTAESTADUAL: TIBBCDField
      FieldName = 'VALORTOTALTRIBUTAESTADUAL'
      Origin = 'DOCFISSAIDA.VALORTOTALTRIBUTAESTADUAL'
      Precision = 18
      Size = 2
    end
    object TFiscPVURL_QRCODE: TIBStringField
      FieldName = 'URL_QRCODE'
      Origin = 'DOCFISSAIDA.URL_QRCODE'
      Size = 500
    end
    object TFiscPVCONTINGENCIA: TIBStringField
      FieldName = 'CONTINGENCIA'
      Origin = 'DOCFISSAIDA.CONTINGENCIA'
      FixedChar = True
      Size = 1
    end
  end
  object UFiscPV: TIBUpdateSQL
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
      '  VLROUTRASDESP,'
      '  FRETECOMP,'
      '  VLREMB,'
      '  TIPOGERADOR,'
      '  NUMCONHEC,'
      '  VLRISENTOICMS,'
      '  MODELONF,'
      '  NFECHAVE,'
      '  NFELOTE,'
      '  NFERECIBO,'
      '  NFEERRO,'
      '  NFEPROTOCOLO,'
      '  NFESTATUS,'
      '  NFESERIE,'
      '  OBS2,'
      '  GERARDADOSADIC,'
      '  ANTT,'
      '  CFOPPEDIDO,'
      '  NFEAMBIENTE,'
      '  NFEXML,'
      '  NFETPEMIS,'
      '  XMLAUTORIZACAO,'
      '  COD_PERIODOFISCAL,'
      '  COD_CFOP1,'
      '  COD_CFOP2,'
      '  RESERVFISC01,'
      '  NUMDOCFISINT,'
      '  DADOSAD01,'
      '  VLRDESCONTO,'
      '  TIPOIMPFISC,'
      '  NFEXMLDIST,'
      '  NFEXMLCANCEL,'
      '  ALIQUOTATOTALTRIBUTA,'
      '  VALORTOTALTRIBUTA,'
      '  VALORTOTALTRIBUTAESTADUAL,'
      '  URL_QRCODE,'
      '  CONTINGENCIA'
      'from DOCFISSAIDA '
      'where'
      '  COD_DOCFISC = :COD_DOCFISC')
    ModifySQL.Strings = (
      'update DOCFISSAIDA'
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
      '  VLROUTRASDESP = :VLROUTRASDESP,'
      '  FRETECOMP = :FRETECOMP,'
      '  VLREMB = :VLREMB,'
      '  TIPOGERADOR = :TIPOGERADOR,'
      '  NUMCONHEC = :NUMCONHEC,'
      '  VLRISENTOICMS = :VLRISENTOICMS,'
      '  MODELONF = :MODELONF,'
      '  NFECHAVE = :NFECHAVE,'
      '  NFELOTE = :NFELOTE,'
      '  NFERECIBO = :NFERECIBO,'
      '  NFEERRO = :NFEERRO,'
      '  NFEPROTOCOLO = :NFEPROTOCOLO,'
      '  NFESTATUS = :NFESTATUS,'
      '  NFESERIE = :NFESERIE,'
      '  OBS2 = :OBS2,'
      '  GERARDADOSADIC = :GERARDADOSADIC,'
      '  ANTT = :ANTT,'
      '  CFOPPEDIDO = :CFOPPEDIDO,'
      '  NFEAMBIENTE = :NFEAMBIENTE,'
      '  NFEXML = :NFEXML,'
      '  NFETPEMIS = :NFETPEMIS,'
      '  XMLAUTORIZACAO = :XMLAUTORIZACAO,'
      '  COD_PERIODOFISCAL = :COD_PERIODOFISCAL,'
      '  COD_CFOP1 = :COD_CFOP1,'
      '  COD_CFOP2 = :COD_CFOP2,'
      '  RESERVFISC01 = :RESERVFISC01,'
      '  NUMDOCFISINT = :NUMDOCFISINT,'
      '  DADOSAD01 = :DADOSAD01,'
      '  VLRDESCONTO = :VLRDESCONTO,'
      '  TIPOIMPFISC = :TIPOIMPFISC,'
      '  NFEXMLDIST = :NFEXMLDIST,'
      '  NFEXMLCANCEL = :NFEXMLCANCEL,'
      '  ALIQUOTATOTALTRIBUTA = :ALIQUOTATOTALTRIBUTA,'
      '  VALORTOTALTRIBUTA = :VALORTOTALTRIBUTA,'
      '  VALORTOTALTRIBUTAESTADUAL = :VALORTOTALTRIBUTAESTADUAL,'
      '  URL_QRCODE = :URL_QRCODE,'
      '  CONTINGENCIA = :CONTINGENCIA'
      'where'
      '  COD_DOCFISC = :OLD_COD_DOCFISC')
    InsertSQL.Strings = (
      'insert into DOCFISSAIDA'
      '  (COD_DOCFISC, COD_PEDIDO, NUMDOCFIS, TIPODOCFIS, NUMDOCANT, '
      'SERIE, DTEMISSAO, '
      '   DTENTSAID, HORASAID, COD_CFOP, COD_TRANSP, OBS, FRETECONTA, '
      'PLACA, UFPLACA, '
      '   CPFPLACA, QUANTFRETE, ESPECIEFRETE, MARCAFRETE, PESOBRUTO, '
      'PESOLIQ, '
      '   COD_COTA, NF, BASEICMS, VLRICMS, BASCALSUBS, VLRICMSUBS, '
      'VLRTOTPROD, '
      '   VLRFRETE, VLRICMSFRETE, VLRSEG, VLRTOTIPI, VLRTOTICMS, '
      'VLRTOTDOCNF, '
      '   VLROUTRASDESP, FRETECOMP, VLREMB, TIPOGERADOR, NUMCONHEC, '
      'VLRISENTOICMS, '
      
        '   MODELONF, NFECHAVE, NFELOTE, NFERECIBO, NFEERRO, NFEPROTOCOLO' +
        ', '
      'NFESTATUS, '
      
        '   NFESERIE, OBS2, GERARDADOSADIC, ANTT, CFOPPEDIDO, NFEAMBIENTE' +
        ', '
      'NFEXML, '
      '   NFETPEMIS, XMLAUTORIZACAO, COD_PERIODOFISCAL, COD_CFOP1, '
      'COD_CFOP2, '
      
        '   RESERVFISC01, NUMDOCFISINT, DADOSAD01, VLRDESCONTO, TIPOIMPFI' +
        'SC, '
      'NFEXMLDIST, '
      '   NFEXMLCANCEL, ALIQUOTATOTALTRIBUTA, VALORTOTALTRIBUTA, '
      'VALORTOTALTRIBUTAESTADUAL, '
      '   URL_QRCODE, CONTINGENCIA)'
      'values'
      
        '  (:COD_DOCFISC, :COD_PEDIDO, :NUMDOCFIS, :TIPODOCFIS, :NUMDOCAN' +
        'T, '
      ':SERIE, '
      
        '   :DTEMISSAO, :DTENTSAID, :HORASAID, :COD_CFOP, :COD_TRANSP, :O' +
        'BS, '
      ':FRETECONTA, '
      '   :PLACA, :UFPLACA, :CPFPLACA, :QUANTFRETE, :ESPECIEFRETE, '
      ':MARCAFRETE, '
      '   :PESOBRUTO, :PESOLIQ, :COD_COTA, :NF, :BASEICMS, :VLRICMS, '
      ':BASCALSUBS, '
      '   :VLRICMSUBS, :VLRTOTPROD, :VLRFRETE, :VLRICMSFRETE, :VLRSEG, '
      ':VLRTOTIPI, '
      
        '   :VLRTOTICMS, :VLRTOTDOCNF, :VLROUTRASDESP, :FRETECOMP, :VLREM' +
        'B, '
      ':TIPOGERADOR, '
      '   :NUMCONHEC, :VLRISENTOICMS, :MODELONF, :NFECHAVE, :NFELOTE, '
      ':NFERECIBO, '
      '   :NFEERRO, :NFEPROTOCOLO, :NFESTATUS, :NFESERIE, :OBS2, '
      ':GERARDADOSADIC, '
      '   :ANTT, :CFOPPEDIDO, :NFEAMBIENTE, :NFEXML, :NFETPEMIS, '
      ':XMLAUTORIZACAO, '
      '   :COD_PERIODOFISCAL, :COD_CFOP1, :COD_CFOP2, :RESERVFISC01, '
      ':NUMDOCFISINT, '
      '   :DADOSAD01, :VLRDESCONTO, :TIPOIMPFISC, :NFEXMLDIST, '
      ':NFEXMLCANCEL, '
      '   :ALIQUOTATOTALTRIBUTA, :VALORTOTALTRIBUTA, '
      ':VALORTOTALTRIBUTAESTADUAL, '
      '   :URL_QRCODE, :CONTINGENCIA)')
    DeleteSQL.Strings = (
      'delete from DOCFISSAIDA'
      'where'
      '  COD_DOCFISC = :OLD_COD_DOCFISC')
    Left = 483
    Top = 127
  end
  object DFiscPV: TDataSource
    DataSet = TFiscPV
    Left = 483
    Top = 174
  end
  object TLicita: TIBQuery
    Database = IBDB
    Transaction = IBT
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select  FIRST 1 * from LICITA'
      '')
    UpdateObject = ULicita
    Left = 544
    Top = 80
    object TLicitaCOD_LICITA: TIntegerField
      FieldName = 'COD_LICITA'
      Origin = 'LICITA.COD_LICITA'
    end
    object TLicitaCOD_USUARIO: TIntegerField
      FieldName = 'COD_USUARIO'
      Origin = 'LICITA.COD_USUARIO'
    end
    object TLicitaCOD_VENDEDOR: TIntegerField
      FieldName = 'COD_VENDEDOR'
      Origin = 'LICITA.COD_VENDEDOR'
    end
    object TLicitaCOD_FORMPAG: TIntegerField
      FieldName = 'COD_FORMPAG'
      Origin = 'LICITA.COD_FORMPAG'
    end
    object TLicitaCOD_LOJA: TIntegerField
      FieldName = 'COD_LOJA'
      Origin = 'LICITA.COD_LOJA'
    end
    object TLicitaCOD_CLIENTE: TIntegerField
      FieldName = 'COD_CLIENTE'
      Origin = 'LICITA.COD_CLIENTE'
    end
    object TLicitaNOMECLI: TIBStringField
      FieldName = 'NOMECLI'
      Origin = 'LICITA.NOMECLI'
      Size = 50
    end
    object TLicitaCPFCNPJ: TIBStringField
      FieldName = 'CPFCNPJ'
      Origin = 'LICITA.CPFCNPJ'
    end
    object TLicitaDTABERT: TDateField
      FieldName = 'DTABERT'
      Origin = 'LICITA.DTABERT'
      EditMask = '!99/99/0000;1;_'
    end
    object TLicitaHRABERT: TTimeField
      FieldName = 'HRABERT'
      Origin = 'LICITA.HRABERT'
    end
    object TLicitaDTVALIDADE: TDateField
      FieldName = 'DTVALIDADE'
      Origin = 'LICITA.DTVALIDADE'
      EditMask = '!99/99/0000;1;_'
    end
    object TLicitaNUMLICITA: TIntegerField
      FieldName = 'NUMLICITA'
      Origin = 'LICITA.NUMLICITA'
    end
    object TLicitaOBS: TMemoField
      FieldName = 'OBS'
      Origin = 'LICITA.OBS'
      BlobType = ftMemo
      Size = 8
    end
    object TLicitaTIPO: TIBStringField
      FieldName = 'TIPO'
      Origin = 'LICITA.TIPO'
      Size = 10
    end
    object TLicitaDESCPROD: TIBBCDField
      FieldName = 'DESCPROD'
      Origin = 'LICITA.DESCPROD'
      Precision = 4
      Size = 2
    end
    object TLicitaVLRTOTAL: TIBBCDField
      FieldName = 'VLRTOTAL'
      Origin = 'LICITA.VLRTOTAL'
      Precision = 9
      Size = 2
    end
  end
  object ULicita: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  COD_LICITA,'
      '  COD_USUARIO,'
      '  COD_VENDEDOR,'
      '  COD_FORMPAG,'
      '  COD_LOJA,'
      '  COD_CLIENTE,'
      '  NOMECLI,'
      '  CPFCNPJ,'
      '  DTABERT,'
      '  HRABERT,'
      '  DTVALIDADE,'
      '  NUMLICITA,'
      '  OBS,'
      '  TIPO,'
      '  DESCPROD,'
      '  VLRTOTAL'
      'from LICITA '
      'where'
      '  COD_LICITA = :COD_LICITA')
    ModifySQL.Strings = (
      'update LICITA'
      'set'
      '  COD_LICITA = :COD_LICITA,'
      '  COD_USUARIO = :COD_USUARIO,'
      '  COD_VENDEDOR = :COD_VENDEDOR,'
      '  COD_FORMPAG = :COD_FORMPAG,'
      '  COD_LOJA = :COD_LOJA,'
      '  COD_CLIENTE = :COD_CLIENTE,'
      '  NOMECLI = :NOMECLI,'
      '  CPFCNPJ = :CPFCNPJ,'
      '  DTABERT = :DTABERT,'
      '  HRABERT = :HRABERT,'
      '  DTVALIDADE = :DTVALIDADE,'
      '  NUMLICITA = :NUMLICITA,'
      '  OBS = :OBS,'
      '  TIPO = :TIPO,'
      '  DESCPROD = :DESCPROD,'
      '  VLRTOTAL = :VLRTOTAL'
      'where'
      '  COD_LICITA = :OLD_COD_LICITA')
    InsertSQL.Strings = (
      'insert into LICITA'
      
        '  (COD_LICITA, COD_USUARIO, COD_VENDEDOR, COD_FORMPAG, COD_LOJA,' +
        ' COD_CLIENTE, '
      
        '   NOMECLI, CPFCNPJ, DTABERT, HRABERT, DTVALIDADE, NUMLICITA, OB' +
        'S, TIPO, '
      '   DESCPROD, VLRTOTAL)'
      'values'
      
        '  (:COD_LICITA, :COD_USUARIO, :COD_VENDEDOR, :COD_FORMPAG, :COD_' +
        'LOJA, :COD_CLIENTE, '
      
        '   :NOMECLI, :CPFCNPJ, :DTABERT, :HRABERT, :DTVALIDADE, :NUMLICI' +
        'TA, :OBS, '
      '   :TIPO, :DESCPROD, :VLRTOTAL)')
    DeleteSQL.Strings = (
      'delete from LICITA'
      'where'
      '  COD_LICITA = :OLD_COD_LICITA')
    Left = 544
    Top = 128
  end
  object DLicita: TDataSource
    DataSet = TLicita
    Left = 544
    Top = 176
  end
  object DITPL: TDataSource
    DataSet = TITPL
    Left = 592
    Top = 176
  end
  object UITPL: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select *'
      'from itprodlicita '
      'where'
      '  COD_ITPRODLICITA = :COD_ITPRODLICITA')
    ModifySQL.Strings = (
      'update itprodlicita'
      'set'
      '  COD_ITPRODLICITA = :COD_ITPRODLICITA,'
      '  COD_LICITA = :COD_LICITA,'
      '  COD_ESTOQUE = :COD_ESTOQUE,'
      '  QTD = :QTD,'
      '  DESCONTO = :DESCONTO,'
      '  VLRCOMPRA = :VLRCOMPRA,'
      '  VLRREP = :VLRREP,'
      '  VLRFINAL = :VLRFINAL,'
      '  NUMITEM = :NUMITEM,'
      '  VALCUSTO = :VALCUSTO,'
      '  COEFDIV = :COEFDIV,'
      '  VALCOMP = :VALCOMP,'
      '  LUCMOE = :LUCMOE,'
      '  LUCPER = :LUCPER,'
      '  LUCREL = :LUCREL'
      'where'
      '  COD_ITPRODLICITA = :OLD_COD_ITPRODLICITA')
    InsertSQL.Strings = (
      'insert into itprodlicita'
      
        '  (COD_ITPRODLICITA, COD_LICITA, COD_ESTOQUE, QTD, DESCONTO, VLR' +
        'COMPRA, '
      
        '   VLRREP, VLRFINAL, NUMITEM, VALCUSTO, COEFDIV, VALCOMP, LUCMOE' +
        ', LUCPER, '
      '   LUCREL)'
      'values'
      
        '  (:COD_ITPRODLICITA, :COD_LICITA, :COD_ESTOQUE, :QTD, :DESCONTO' +
        ', :VLRCOMPRA, '
      
        '   :VLRREP, :VLRFINAL, :NUMITEM, :VALCUSTO, :COEFDIV, :VALCOMP, ' +
        ':LUCMOE, '
      '   :LUCPER, :LUCREL)')
    DeleteSQL.Strings = (
      'delete from itprodlicita'
      'where'
      '  COD_ITPRODLICITA = :OLD_COD_ITPRODLICITA')
    Left = 592
    Top = 128
  end
  object TITPL: TIBQuery
    Database = IBDB
    Transaction = IBT
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'Select   FIRST 1 * from itprodlicita')
    UpdateObject = UITPL
    Left = 592
    Top = 80
    object TITPLCOD_ITPRODLICITA: TIntegerField
      FieldName = 'COD_ITPRODLICITA'
    end
    object TITPLCOD_LICITA: TIntegerField
      FieldName = 'COD_LICITA'
      Origin = 'ITPRODLICITA.COD_LICITA'
    end
    object TITPLCOD_ESTOQUE: TIntegerField
      FieldName = 'COD_ESTOQUE'
      Origin = 'ITPRODLICITA.COD_ESTOQUE'
    end
    object TITPLQTD: TIBBCDField
      FieldName = 'QTD'
      Origin = 'ITPRODLICITA.QTD'
      Precision = 18
      Size = 3
    end
    object TITPLDESCONTO: TIBBCDField
      FieldName = 'DESCONTO'
      Origin = 'ITPRODLICITA.DESCONTO'
      Precision = 4
      Size = 2
    end
    object TITPLVLRCOMPRA: TIBBCDField
      FieldName = 'VLRCOMPRA'
      Origin = 'ITPRODLICITA.VLRCOMPRA'
      Precision = 9
      Size = 2
    end
    object TITPLVLRREP: TIBBCDField
      FieldName = 'VLRREP'
      Origin = 'ITPRODLICITA.VLRREP'
      Precision = 9
      Size = 2
    end
    object TITPLVLRFINAL: TIBBCDField
      FieldName = 'VLRFINAL'
      Origin = 'ITPRODLICITA.VLRFINAL'
      Precision = 9
      Size = 2
    end
    object TITPLNUMITEM: TIBStringField
      FieldName = 'NUMITEM'
      Origin = 'ITPRODLICITA.NUMITEM'
      Size = 10
    end
    object TITPLVALCUSTO: TIBBCDField
      FieldName = 'VALCUSTO'
      Origin = 'ITPRODLICITA.VALCUSTO'
      Precision = 18
      Size = 2
    end
    object TITPLCOEFDIV: TIBBCDField
      FieldName = 'COEFDIV'
      Origin = 'ITPRODLICITA.COEFDIV'
      Precision = 18
      Size = 2
    end
    object TITPLVALCOMP: TIBBCDField
      FieldName = 'VALCOMP'
      Origin = 'ITPRODLICITA.VALCOMP'
      Precision = 18
      Size = 2
    end
    object TITPLLUCMOE: TIBBCDField
      FieldName = 'LUCMOE'
      Origin = 'ITPRODLICITA.LUCMOE'
      Precision = 18
      Size = 2
    end
    object TITPLLUCPER: TIBBCDField
      FieldName = 'LUCPER'
      Origin = 'ITPRODLICITA.LUCPER'
      Precision = 18
      Size = 2
    end
    object TITPLLUCREL: TIBBCDField
      FieldName = 'LUCREL'
      Origin = 'ITPRODLICITA.LUCREL'
      Precision = 18
      Size = 2
    end
  end
  object DEntrega: TDataSource
    DataSet = TEntrega
    Left = 648
    Top = 176
  end
  object UEntrega: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  COD_ENTREGA,'
      '  COD_PEDVENDA,'
      '  DTENTREGA,'
      '  RESPONSAVEL'
      'from ENTREGA '
      'where'
      '  COD_ENTREGA = :COD_ENTREGA')
    ModifySQL.Strings = (
      'update ENTREGA'
      'set'
      '  COD_ENTREGA = :COD_ENTREGA,'
      '  COD_PEDVENDA = :COD_PEDVENDA,'
      '  DTENTREGA = :DTENTREGA,'
      '  RESPONSAVEL = :RESPONSAVEL'
      'where'
      '  COD_ENTREGA = :OLD_COD_ENTREGA')
    InsertSQL.Strings = (
      'insert into ENTREGA'
      '  (COD_ENTREGA, COD_PEDVENDA, DTENTREGA, RESPONSAVEL)'
      'values'
      '  (:COD_ENTREGA, :COD_PEDVENDA, :DTENTREGA, :RESPONSAVEL)')
    DeleteSQL.Strings = (
      'delete from ENTREGA'
      'where'
      '  COD_ENTREGA = :OLD_COD_ENTREGA')
    Left = 648
    Top = 128
  end
  object TEntrega: TIBQuery
    Database = IBDB
    Transaction = IBT
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'Select  FIRST 1  * from ENTREGA')
    UpdateObject = UEntrega
    Left = 648
    Top = 80
    object TEntregaCOD_ENTREGA: TIntegerField
      FieldName = 'COD_ENTREGA'
      Origin = 'ENTREGA.COD_ENTREGA'
      Required = True
    end
    object TEntregaCOD_PEDVENDA: TIntegerField
      FieldName = 'COD_PEDVENDA'
      Origin = 'ENTREGA.COD_PEDVENDA'
    end
    object TEntregaDTENTREGA: TDateField
      FieldName = 'DTENTREGA'
      Origin = 'ENTREGA.DTENTREGA'
      EditMask = '!99/99/0000;1;_'
    end
    object TEntregaRESPONSAVEL: TIBStringField
      FieldName = 'RESPONSAVEL'
      Origin = 'ENTREGA.RESPONSAVEL'
      Size = 60
    end
  end
  object DItemEntrega: TDataSource
    DataSet = TItemEntrega
    Left = 712
    Top = 176
  end
  object UItemEntrega: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  COD_ITEMENTREGA,'
      '  COD_ENTREGA,'
      '  COD_TEMVENDA,'
      '  QTD'
      'from ITEMENTREGA '
      'where'
      '  COD_ITEMENTREGA = :COD_ITEMENTREGA')
    ModifySQL.Strings = (
      'update ITEMENTREGA'
      'set'
      '  COD_ITEMENTREGA = :COD_ITEMENTREGA,'
      '  COD_ENTREGA = :COD_ENTREGA,'
      '  COD_TEMVENDA = :COD_TEMVENDA,'
      '  QTD = :QTD'
      'where'
      '  COD_ITEMENTREGA = :OLD_COD_ITEMENTREGA')
    InsertSQL.Strings = (
      'insert into ITEMENTREGA'
      '  (COD_ITEMENTREGA, COD_ENTREGA, COD_TEMVENDA, QTD)'
      'values'
      '  (:COD_ITEMENTREGA, :COD_ENTREGA, :COD_TEMVENDA, :QTD)')
    DeleteSQL.Strings = (
      'delete from ITEMENTREGA'
      'where'
      '  COD_ITEMENTREGA = :OLD_COD_ITEMENTREGA')
    Left = 712
    Top = 128
  end
  object TItemEntrega: TIBQuery
    Database = IBDB
    Transaction = IBT
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'Select   FIRST 1 * from ITEMENTREGA')
    UpdateObject = UItemEntrega
    Left = 712
    Top = 80
    object TItemEntregaCOD_ITEMENTREGA: TIntegerField
      FieldName = 'COD_ITEMENTREGA'
      Origin = 'ITEMENTREGA.COD_ITEMENTREGA'
    end
    object TItemEntregaCOD_ENTREGA: TIntegerField
      FieldName = 'COD_ENTREGA'
      Origin = 'ITEMENTREGA.COD_ENTREGA'
    end
    object TItemEntregaCOD_TEMVENDA: TIntegerField
      FieldName = 'COD_TEMVENDA'
      Origin = 'ITEMENTREGA.COD_TEMVENDA'
    end
    object TItemEntregaQTD: TIBBCDField
      FieldName = 'QTD'
      Origin = 'ITEMENTREGA.QTD'
      Precision = 18
      Size = 3
    end
  end
  object DObra: TDataSource
    DataSet = TObra
    Left = 712
    Top = 336
  end
  object UObra: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  COD_OBRA,'
      '  COD_INTERNO,'
      '  DESCRICAO'
      'from OBRA '
      'where'
      '  COD_OBRA = :COD_OBRA')
    ModifySQL.Strings = (
      'update OBRA'
      'set'
      '  COD_OBRA = :COD_OBRA,'
      '  COD_INTERNO = :COD_INTERNO,'
      '  DESCRICAO = :DESCRICAO'
      'where'
      '  COD_OBRA = :OLD_COD_OBRA')
    InsertSQL.Strings = (
      'insert into OBRA'
      '  (COD_OBRA, COD_INTERNO, DESCRICAO)'
      'values'
      '  (:COD_OBRA, :COD_INTERNO, :DESCRICAO)')
    DeleteSQL.Strings = (
      'delete from OBRA'
      'where'
      '  COD_OBRA = :OLD_COD_OBRA')
    Left = 712
    Top = 288
  end
  object TObra: TIBQuery
    Database = IBDB
    Transaction = IBT
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'Select   FIRST 1 * from OBRA')
    UpdateObject = UObra
    Left = 712
    Top = 240
    object TObraCOD_OBRA: TIntegerField
      FieldName = 'COD_OBRA'
      Origin = 'OBRA.COD_OBRA'
      Required = True
    end
    object TObraCOD_INTERNO: TIBStringField
      FieldName = 'COD_INTERNO'
      Origin = 'OBRA.COD_INTERNO'
      Size = 10
    end
    object TObraDESCRICAO: TIBStringField
      FieldName = 'DESCRICAO'
      Origin = 'OBRA.DESCRICAO'
      Size = 40
    end
  end
  object TVeiculoEnt: TIBQuery
    Database = IBDB
    Transaction = IBT
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from  VEICULOENTRADA')
    UpdateObject = UVeiculoEnt
    Left = 192
    Top = 232
    object TVeiculoEntCOD_VEIC_ENT: TIntegerField
      FieldName = 'COD_VEIC_ENT'
      Origin = 'VEICULOENTRADA.COD_VEIC_ENT'
    end
    object TVeiculoEntCOD_PEDIDO: TIntegerField
      FieldName = 'COD_PEDIDO'
      Origin = 'VEICULOENTRADA.COD_PEDIDO'
    end
    object TVeiculoEntCOD_ESTOQUE: TIntegerField
      FieldName = 'COD_ESTOQUE'
      Origin = 'VEICULOENTRADA.COD_ESTOQUE'
    end
    object TVeiculoEntVALOR: TIBBCDField
      FieldName = 'VALOR'
      Origin = 'VEICULOENTRADA.VALOR'
      Precision = 18
      Size = 2
    end
    object TVeiculoEntCOD_CST: TIntegerField
      FieldName = 'COD_CST'
      Origin = 'VEICULOENTRADA.COD_CST'
    end
    object TVeiculoEntALIQ_ICMS: TIBBCDField
      FieldName = 'ALIQ_ICMS'
      Origin = 'VEICULOENTRADA.ALIQ_ICMS'
      Precision = 18
      Size = 2
    end
    object TVeiculoEntBC_ICMS: TIBBCDField
      FieldName = 'BC_ICMS'
      Origin = 'VEICULOENTRADA.BC_ICMS'
      Precision = 18
      Size = 2
    end
    object TVeiculoEntVLR_ICMS: TIBBCDField
      FieldName = 'VLR_ICMS'
      Origin = 'VEICULOENTRADA.VLR_ICMS'
      Precision = 18
      Size = 2
    end
    object TVeiculoEntCOD_PEDCOMP: TIntegerField
      FieldName = 'COD_PEDCOMP'
      Origin = 'VEICULOENTRADA.COD_PEDCOMP'
    end
  end
  object UVeiculoEnt: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  COD_VEIC_ENT,'
      '  COD_PEDIDO,'
      '  COD_ESTOQUE,'
      '  VALOR,'
      '  COD_CST,'
      '  ALIQ_ICMS,'
      '  BC_ICMS,'
      '  VLR_ICMS,'
      '  COD_PEDCOMP'
      'from VEICULOENTRADA '
      'where'
      '  COD_VEIC_ENT = :COD_VEIC_ENT')
    ModifySQL.Strings = (
      'update VEICULOENTRADA'
      'set'
      '  COD_VEIC_ENT = :COD_VEIC_ENT,'
      '  COD_PEDIDO = :COD_PEDIDO,'
      '  COD_ESTOQUE = :COD_ESTOQUE,'
      '  VALOR = :VALOR,'
      '  COD_CST = :COD_CST,'
      '  ALIQ_ICMS = :ALIQ_ICMS,'
      '  BC_ICMS = :BC_ICMS,'
      '  VLR_ICMS = :VLR_ICMS,'
      '  COD_PEDCOMP = :COD_PEDCOMP'
      'where'
      '  COD_VEIC_ENT = :OLD_COD_VEIC_ENT')
    InsertSQL.Strings = (
      'insert into VEICULOENTRADA'
      
        '  (COD_VEIC_ENT, COD_PEDIDO, COD_ESTOQUE, VALOR, COD_CST, ALIQ_I' +
        'CMS, BC_ICMS, '
      '   VLR_ICMS, COD_PEDCOMP)'
      'values'
      
        '  (:COD_VEIC_ENT, :COD_PEDIDO, :COD_ESTOQUE, :VALOR, :COD_CST, :' +
        'ALIQ_ICMS, '
      '   :BC_ICMS, :VLR_ICMS, :COD_PEDCOMP)')
    DeleteSQL.Strings = (
      'delete from VEICULOENTRADA'
      'where'
      '  COD_VEIC_ENT = :OLD_COD_VEIC_ENT')
    Left = 192
    Top = 280
  end
  object DVeiculoEnt: TDataSource
    DataSet = TVeiculoEnt
    Left = 192
    Top = 328
  end
end
