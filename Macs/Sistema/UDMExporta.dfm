object DMEXPORTA: TDMEXPORTA
  OldCreateOrder = False
  Left = 143
  Top = 155
  Height = 562
  Width = 1036
  object DBExporta: TIBDatabase
    DatabaseName = 'NOTE:'
    Params.Strings = (
      'user_name=sysdba'
      'password=masterkey'
      'sql_role_name=3'
      'lc_ctype=ISO8859_1')
    LoginPrompt = False
    DefaultTransaction = IBTExporta
    IdleTimer = 0
    SQLDialect = 3
    TraceFlags = []
    Left = 24
    Top = 8
  end
  object IBTExporta: TIBTransaction
    Active = False
    DefaultDatabase = DBExporta
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    AutoStopAction = saNone
    Left = 88
    Top = 9
  end
  object TProdutosPDV: TIBQuery
    Database = DBExporta
    Transaction = IBTExporta
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from produtosPDV')
    UpdateObject = UProdutosPDV
    Left = 18
    Top = 112
    object TProdutosPDVCOD_PRODUTOSPDV: TIntegerField
      FieldName = 'COD_PRODUTOSPDV'
      Origin = 'PRODUTOSPDV.COD_PRODUTOSPDV'
      Required = True
    end
    object TProdutosPDVDESCRICAO: TIBStringField
      FieldName = 'DESCRICAO'
      Origin = 'PRODUTOSPDV.DESCRICAO'
      Size = 60
    end
    object TProdutosPDVCODBARRA: TIBStringField
      FieldName = 'CODBARRA'
      Origin = 'PRODUTOSPDV.CODBARRA'
      Size = 30
    end
    object TProdutosPDVMARCA: TIBStringField
      FieldName = 'MARCA'
      Origin = 'PRODUTOSPDV.MARCA'
      Size = 40
    end
    object TProdutosPDVIPIPROD: TIBBCDField
      FieldName = 'IPIPROD'
      Origin = 'PRODUTOSPDV.IPIPROD'
      Precision = 4
      Size = 2
    end
    object TProdutosPDVQTDATAC: TIBBCDField
      FieldName = 'QTDATAC'
      Origin = 'PRODUTOSPDV.QTDATAC'
      Precision = 18
      Size = 3
    end
    object TProdutosPDVUNIDADE: TIBStringField
      FieldName = 'UNIDADE'
      Origin = 'PRODUTOSPDV.UNIDADE'
      Size = 2
    end
    object TProdutosPDVCONTRINT: TIBStringField
      FieldName = 'CONTRINT'
      Origin = 'PRODUTOSPDV.CONTRINT'
      Size = 15
    end
    object TProdutosPDVICMS: TIBBCDField
      FieldName = 'ICMS'
      Origin = 'PRODUTOSPDV.ICMS'
      Precision = 4
      Size = 2
    end
    object TProdutosPDVVENDATAP: TIBBCDField
      FieldName = 'VENDATAP'
      Origin = 'PRODUTOSPDV.VENDATAP'
      Precision = 18
      Size = 2
    end
    object TProdutosPDVVENDATAV: TIBBCDField
      FieldName = 'VENDATAV'
      Origin = 'PRODUTOSPDV.VENDATAV'
      Precision = 18
      Size = 2
    end
    object TProdutosPDVVENDVARP: TIBBCDField
      FieldName = 'VENDVARP'
      Origin = 'PRODUTOSPDV.VENDVARP'
      Precision = 18
      Size = 2
    end
    object TProdutosPDVVENDVARV: TIBBCDField
      FieldName = 'VENDVARV'
      Origin = 'PRODUTOSPDV.VENDVARV'
      Precision = 18
      Size = 2
    end
    object TProdutosPDVINDICEECF: TIBStringField
      FieldName = 'INDICEECF'
      Origin = 'PRODUTOSPDV.INDICEECF'
      FixedChar = True
      Size = 2
    end
    object TProdutosPDVDATAATU: TDateField
      FieldName = 'DATAATU'
      Origin = 'PRODUTOSPDV.DATAATU'
    end
    object TProdutosPDVHORAATU: TTimeField
      FieldName = 'HORAATU'
      Origin = 'PRODUTOSPDV.HORAATU'
    end
    object TProdutosPDVBALANCA: TIBStringField
      FieldName = 'BALANCA'
      Origin = 'PRODUTOSPDV.BALANCA'
      FixedChar = True
      Size = 1
    end
  end
  object UProdutosPDV: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select *'
      'from produtosPDV '
      'where'
      '  COD_PRODUTOSPDV = :COD_PRODUTOSPDV')
    ModifySQL.Strings = (
      'update produtosPDV'
      'set'
      '  COD_PRODUTOSPDV = :COD_PRODUTOSPDV,'
      '  DESCRICAO = :DESCRICAO,'
      '  CODBARRA = :CODBARRA,'
      '  MARCA = :MARCA,'
      '  IPIPROD = :IPIPROD,'
      '  QTDATAC = :QTDATAC,'
      '  UNIDADE = :UNIDADE,'
      '  CONTRINT = :CONTRINT,'
      '  ICMS = :ICMS,'
      '  VENDATAP = :VENDATAP,'
      '  VENDATAV = :VENDATAV,'
      '  VENDVARP = :VENDVARP,'
      '  VENDVARV = :VENDVARV,'
      '  INDICEECF = :INDICEECF,'
      '  DATAATU = :DATAATU,'
      '  HORAATU = :HORAATU,'
      '  BALANCA = :BALANCA'
      'where'
      '  COD_PRODUTOSPDV = :OLD_COD_PRODUTOSPDV')
    InsertSQL.Strings = (
      'insert into produtosPDV'
      
        '  (COD_PRODUTOSPDV, DESCRICAO, CODBARRA, MARCA, IPIPROD, QTDATAC' +
        ', UNIDADE, '
      
        '   CONTRINT, ICMS, VENDATAP, VENDATAV, VENDVARP, VENDVARV, INDIC' +
        'EECF, DATAATU, '
      '   HORAATU, BALANCA)'
      'values'
      
        '  (:COD_PRODUTOSPDV, :DESCRICAO, :CODBARRA, :MARCA, :IPIPROD, :Q' +
        'TDATAC, '
      
        '   :UNIDADE, :CONTRINT, :ICMS, :VENDATAP, :VENDATAV, :VENDVARP, ' +
        ':VENDVARV, '
      '   :INDICEECF, :DATAATU, :HORAATU, :BALANCA)')
    DeleteSQL.Strings = (
      'delete from produtosPDV'
      'where'
      '  COD_PRODUTOSPDV = :OLD_COD_PRODUTOSPDV')
    Left = 18
    Top = 160
  end
  object DSProdutosPDV: TDataSource
    DataSet = TProdutosPDV
    Left = 18
    Top = 208
  end
  object Alx: TIBQuery
    Tag = 5
    Database = DBExporta
    Transaction = IBTExporta
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from LANCAIXA')
    Left = 199
    Top = 8
  end
  object DSAlx: TDataSource
    DataSet = Alx
    Left = 200
    Top = 49
  end
  object TCodBarra: TIBQuery
    Database = DBExporta
    Transaction = IBTExporta
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from CODIGOBARRA')
    UpdateObject = UCodBarra
    Left = 94
    Top = 112
    object TCodBarraCOD_ESTOQUE: TIntegerField
      FieldName = 'COD_ESTOQUE'
      Origin = 'CODIGOBARRA.COD_ESTOQUE'
    end
    object TCodBarraCODBARRA: TIBStringField
      FieldName = 'CODBARRA'
      Origin = 'CODIGOBARRA.CODBARRA'
      Size = 15
    end
  end
  object UCodBarra: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  COD_ESTOQUE,'
      '  CODBARRA'
      'from CODIGOBARRA '
      'where'
      '  COD_ESTOQUE = :COD_ESTOQUE')
    ModifySQL.Strings = (
      'update CODIGOBARRA'
      'set'
      '  COD_ESTOQUE = :COD_ESTOQUE,'
      '  CODBARRA = :CODBARRA'
      'where'
      '  COD_ESTOQUE = :OLD_COD_ESTOQUE')
    InsertSQL.Strings = (
      'insert into CODIGOBARRA'
      '  (COD_ESTOQUE, CODBARRA)'
      'values'
      '  (:COD_ESTOQUE, :CODBARRA)')
    DeleteSQL.Strings = (
      'delete from CODIGOBARRA'
      'where'
      '  COD_ESTOQUE = :OLD_COD_ESTOQUE')
    Left = 94
    Top = 160
  end
  object DSCodBarra: TDataSource
    DataSet = TCodBarra
    Left = 94
    Top = 208
  end
  object TPedV: TIBQuery
    Database = DBExporta
    Transaction = IBTExporta
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from PEDVENDA')
    UpdateObject = UPedV
    GeneratorField.Field = 'COD_PEDVENDA'
    GeneratorField.Generator = 'GEN_PEDVENDA_ID'
    Left = 150
    Top = 113
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
    object TPedVNOMECLI: TIBStringField
      FieldName = 'NOMECLI'
      Origin = 'PEDVENDA.NOMECLI'
      Size = 50
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
    object TPedVNUMPED: TIBStringField
      FieldName = 'NUMPED'
      Origin = 'PEDVENDA.NUMPED'
      Required = True
      Size = 15
    end
    object TPedVNUMPED_PALM: TIntegerField
      FieldName = 'NUMPED_PALM'
      Origin = 'PEDVENDA.NUMPED_PALM'
    end
    object TPedVATUCOMIS: TIntegerField
      FieldName = 'ATUCOMIS'
      Origin = 'PEDVENDA.ATUCOMIS'
    end
    object TPedVFATURADO: TIBStringField
      FieldName = 'FATURADO'
      Origin = 'PEDVENDA.FATURADO'
      FixedChar = True
      Size = 1
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
    object TPedVCOD_OBRA: TIntegerField
      FieldName = 'COD_OBRA'
      Origin = 'PEDVENDA.COD_OBRA'
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
      '  COD_OBRA'
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
      '  COD_OBRA = :COD_OBRA'
      'where'
      '  COD_PEDVENDA = :OLD_COD_PEDVENDA')
    InsertSQL.Strings = (
      'insert into PEDVENDA'
      
        '  (COD_PEDVENDA, COD_CLIENTE, DTPEDVEN, DESCONTO, COD_USUARIO, C' +
        'OD_FORMPAG, '
      
        '   VALOR, ENTREGA, NOMECLI, OBS, CPFCNPJ, COD_VENDEDOR, SITUACAO' +
        ', NUMPED, '
      
        '   TIPO, VLRCOMIS, GARANTIA, COMSOBVENDA, FISCO, NUMFISCAL, COD_' +
        'EQUIPFISC, '
      
        '   DTFECH, NUMORC, VLRFRETE, MARK, DESCMOE, ATU, COBRANCA, NUMPE' +
        'D_PALM, '
      '   ATUCOMIS, FATURADO, EDIT, EXPORTA, COD_OBRA)'
      'values'
      
        '  (:COD_PEDVENDA, :COD_CLIENTE, :DTPEDVEN, :DESCONTO, :COD_USUAR' +
        'IO, :COD_FORMPAG, '
      
        '   :VALOR, :ENTREGA, :NOMECLI, :OBS, :CPFCNPJ, :COD_VENDEDOR, :S' +
        'ITUACAO, '
      
        '   :NUMPED, :TIPO, :VLRCOMIS, :GARANTIA, :COMSOBVENDA, :FISCO, :' +
        'NUMFISCAL, '
      
        '   :COD_EQUIPFISC, :DTFECH, :NUMORC, :VLRFRETE, :MARK, :DESCMOE,' +
        ' :ATU, '
      
        '   :COBRANCA, :NUMPED_PALM, :ATUCOMIS, :FATURADO, :EDIT, :EXPORT' +
        'A, :COD_OBRA)')
    DeleteSQL.Strings = (
      'delete from PEDVENDA'
      'where'
      '  COD_PEDVENDA = :OLD_COD_PEDVENDA')
    Left = 150
    Top = 161
  end
  object DPedv: TDataSource
    DataSet = TPedV
    Left = 150
    Top = 209
  end
  object TAbCaixa: TIBQuery
    Database = DBExporta
    Transaction = IBTExporta
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from ABCAIXA')
    UpdateObject = UAbCaixa
    Left = 203
    Top = 112
  end
  object UAbCaixa: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  COD_ABCAIXA,'
      '  COD_CAIXA,'
      '  DTABERTURA,'
      '  HORAABERTURA,'
      '  SALDOINI,'
      '  SALDOFIN,'
      '  DTFECHA,'
      '  HORAFECHA,'
      '  FECHADO,'
      '  COD_USUARIO'
      'from ABCAIXA '
      'where'
      '  COD_ABCAIXA = :COD_ABCAIXA')
    ModifySQL.Strings = (
      'update ABCAIXA'
      'set'
      '  COD_ABCAIXA = :COD_ABCAIXA,'
      '  COD_CAIXA = :COD_CAIXA,'
      '  DTABERTURA = :DTABERTURA,'
      '  HORAABERTURA = :HORAABERTURA,'
      '  SALDOINI = :SALDOINI,'
      '  SALDOFIN = :SALDOFIN,'
      '  DTFECHA = :DTFECHA,'
      '  HORAFECHA = :HORAFECHA,'
      '  FECHADO = :FECHADO,'
      '  COD_USUARIO = :COD_USUARIO'
      'where'
      '  COD_ABCAIXA = :OLD_COD_ABCAIXA')
    InsertSQL.Strings = (
      'insert into ABCAIXA'
      
        '  (COD_ABCAIXA, COD_CAIXA, DTABERTURA, HORAABERTURA, SALDOINI, S' +
        'ALDOFIN, '
      '   DTFECHA, HORAFECHA, FECHADO, COD_USUARIO)'
      'values'
      
        '  (:COD_ABCAIXA, :COD_CAIXA, :DTABERTURA, :HORAABERTURA, :SALDOI' +
        'NI, :SALDOFIN, '
      '   :DTFECHA, :HORAFECHA, :FECHADO, :COD_USUARIO)')
    DeleteSQL.Strings = (
      'delete from ABCAIXA'
      'where'
      '  COD_ABCAIXA = :OLD_COD_ABCAIXA')
    Left = 203
    Top = 160
  end
  object DAbCAixa: TDataSource
    DataSet = TAbCaixa
    Left = 203
    Top = 209
  end
  object TLanCaixa: TIBQuery
    Database = DBExporta
    Transaction = IBTExporta
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from LANCAIXA')
    UpdateObject = ULanCaixa
    Left = 266
    Top = 113
  end
  object ULanCaixa: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  COD_LANC,'
      '  COD_ABCAIXA,'
      '  DTLANC,'
      '  COD_PLNCTAFIL,'
      '  HISTORICO,'
      '  COD_COTAMOEDA,'
      '  TIPOGERADOR,'
      '  COD_GERADOR,'
      '  VALOR,'
      '  TIPO,'
      '  TIPCAI,'
      '  COD_USUARIO,'
      '  DOC,'
      '  DTREFER,'
      '  ESTRU,'
      '  ATU,'
      '  EXPORTA'
      'from LANCAIXA '
      'where'
      '  COD_LANC = :COD_LANC')
    ModifySQL.Strings = (
      'update LANCAIXA'
      'set'
      '  COD_LANC = :COD_LANC,'
      '  COD_ABCAIXA = :COD_ABCAIXA,'
      '  DTLANC = :DTLANC,'
      '  COD_PLNCTAFIL = :COD_PLNCTAFIL,'
      '  HISTORICO = :HISTORICO,'
      '  COD_COTAMOEDA = :COD_COTAMOEDA,'
      '  TIPOGERADOR = :TIPOGERADOR,'
      '  COD_GERADOR = :COD_GERADOR,'
      '  VALOR = :VALOR,'
      '  TIPO = :TIPO,'
      '  TIPCAI = :TIPCAI,'
      '  COD_USUARIO = :COD_USUARIO,'
      '  DOC = :DOC,'
      '  DTREFER = :DTREFER,'
      '  ESTRU = :ESTRU,'
      '  ATU = :ATU,'
      '  EXPORTA = :EXPORTA'
      'where'
      '  COD_LANC = :OLD_COD_LANC')
    InsertSQL.Strings = (
      'insert into LANCAIXA'
      
        '  (COD_LANC, COD_ABCAIXA, DTLANC, COD_PLNCTAFIL, HISTORICO, COD_' +
        'COTAMOEDA, '
      
        '   TIPOGERADOR, COD_GERADOR, VALOR, TIPO, TIPCAI, COD_USUARIO, D' +
        'OC, DTREFER, '
      '   ESTRU, ATU, EXPORTA)'
      'values'
      
        '  (:COD_LANC, :COD_ABCAIXA, :DTLANC, :COD_PLNCTAFIL, :HISTORICO,' +
        ' :COD_COTAMOEDA, '
      
        '   :TIPOGERADOR, :COD_GERADOR, :VALOR, :TIPO, :TIPCAI, :COD_USUA' +
        'RIO, :DOC, '
      '   :DTREFER, :ESTRU, :ATU, :EXPORTA)')
    DeleteSQL.Strings = (
      'delete from LANCAIXA'
      'where'
      '  COD_LANC = :OLD_COD_LANC')
    Left = 266
    Top = 161
  end
  object DLanCaixa: TDataSource
    DataSet = TLanCaixa
    Left = 266
    Top = 210
  end
  object Alx2: TIBQuery
    Tag = 5
    Database = DBExporta
    Transaction = IBTExporta
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'SELECT * FROM vwpedv'
      '')
    Left = 258
    Top = 8
  end
  object DSAlx2: TDataSource
    DataSet = Alx2
    Left = 259
    Top = 51
  end
  object Alx3: TIBQuery
    Tag = 5
    Database = DBExporta
    Transaction = IBTExporta
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'SELECT * FROM TMP')
    Left = 313
    Top = 8
  end
  object DSAlx3: TDataSource
    DataSet = Alx3
    Left = 314
    Top = 52
  end
  object Alx4: TIBQuery
    Tag = 5
    Database = DBExporta
    Transaction = IBTExporta
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'SELECT * FROM TMP')
    Left = 361
    Top = 8
  end
  object DSAlx4: TDataSource
    DataSet = Alx4
    Left = 362
    Top = 53
  end
  object TEstoque: TIBQuery
    Database = DBExporta
    Transaction = IBTExporta
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from ESTOQUE')
    UpdateObject = UPEstoque
    GeneratorField.Field = 'COD_ESTOQUE'
    Left = 243
    Top = 295
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
      '  ESTFISICO,'
      '  ESTRESERV,'
      '  ESTPED,'
      '  ESTSALDO,'
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
      '  GERACOMIS'
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
      '  ESTFISICO = :ESTFISICO,'
      '  ESTRESERV = :ESTRESERV,'
      '  ESTPED = :ESTPED,'
      '  ESTSALDO = :ESTSALDO,'
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
      '  GERACOMIS = :GERACOMIS'
      'where'
      '  COD_ESTOQUE = :OLD_COD_ESTOQUE')
    InsertSQL.Strings = (
      'insert into ESTOQUE'
      
        '  (COD_ESTOQUE, COD_LOJA, COD_SUBPROD, ULTCOMPRA, ULTVENDA, ESTM' +
        'AX, ESTMIN, '
      
        '   ICMS, FRETE, ESTFISICO, ESTRESERV, ESTPED, ESTSALDO, CVVPROAT' +
        ', CVPPROAT, '
      
        '   CVVPROVAR, CVPPROVAR, VENDATAP, VENDATAV, VENDVARP, VENDVARV,' +
        ' VALUNIT, '
      
        '   VALREP, VALCUSTO, AVVPROAT, AVPPROAT, AVVPROVAR, AVPPROVAR, L' +
        'UCRATIVIDADE, '
      
        '   COEFDIV, VALOREST, OUTROS, QUANT2, DTCAD, ESTINI, VALCUSDESP,' +
        ' ESTANTCONT, '
      
        '   CONTAGEM, ESTSIMULADO, VLRUNITCOMP, INDICE, BONIFICACAO, VLRB' +
        'ONIFIC, '
      
        '   DESCONTO, CLNC, MOD, IMPEXP, IMPREND, CONTSOC, COFINS, PIS, M' +
        'ARGEMSEG, '
      
        '   PERCMARGSEG, REDUCBASE, VLRCOMPSD, ACRECIMO, ESTCALC, DATAATU' +
        ', HORAATU, '
      
        '   PRECOOFERTA, DATAOFERTA, VENCIMENTOOFERTA, COD_USUARIOALT, UL' +
        'TVLR_VNDVVAR, '
      
        '   ULTVLR_VNDPVAR, ULTVLR_VNDVATAC, ULTVLR_VPATAC, MEDIABASEICMS' +
        'T, MEDIAVLRICMST, '
      '   IPI_VND, PMC, MVA, GERACOMIS)'
      'values'
      
        '  (:COD_ESTOQUE, :COD_LOJA, :COD_SUBPROD, :ULTCOMPRA, :ULTVENDA,' +
        ' :ESTMAX, '
      
        '   :ESTMIN, :ICMS, :FRETE, :ESTFISICO, :ESTRESERV, :ESTPED, :EST' +
        'SALDO, '
      
        '   :CVVPROAT, :CVPPROAT, :CVVPROVAR, :CVPPROVAR, :VENDATAP, :VEN' +
        'DATAV, '
      
        '   :VENDVARP, :VENDVARV, :VALUNIT, :VALREP, :VALCUSTO, :AVVPROAT' +
        ', :AVPPROAT, '
      
        '   :AVVPROVAR, :AVPPROVAR, :LUCRATIVIDADE, :COEFDIV, :VALOREST, ' +
        ':OUTROS, '
      
        '   :QUANT2, :DTCAD, :ESTINI, :VALCUSDESP, :ESTANTCONT, :CONTAGEM' +
        ', :ESTSIMULADO, '
      
        '   :VLRUNITCOMP, :INDICE, :BONIFICACAO, :VLRBONIFIC, :DESCONTO, ' +
        ':CLNC, '
      
        '   :MOD, :IMPEXP, :IMPREND, :CONTSOC, :COFINS, :PIS, :MARGEMSEG,' +
        ' :PERCMARGSEG, '
      
        '   :REDUCBASE, :VLRCOMPSD, :ACRECIMO, :ESTCALC, :DATAATU, :HORAA' +
        'TU, :PRECOOFERTA, '
      
        '   :DATAOFERTA, :VENCIMENTOOFERTA, :COD_USUARIOALT, :ULTVLR_VNDV' +
        'VAR, :ULTVLR_VNDPVAR, '
      
        '   :ULTVLR_VNDVATAC, :ULTVLR_VPATAC, :MEDIABASEICMST, :MEDIAVLRI' +
        'CMST, :IPI_VND, '
      '   :PMC, :MVA, :GERACOMIS)')
    DeleteSQL.Strings = (
      'delete from ESTOQUE'
      'where'
      '  COD_ESTOQUE = :OLD_COD_ESTOQUE')
    Left = 243
    Top = 342
  end
  object DSEstoque: TDataSource
    DataSet = TEstoque
    Left = 244
    Top = 391
  end
  object Alx5: TIBQuery
    Tag = 5
    Database = DBExporta
    Transaction = IBTExporta
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'SELECT * FROM TMP')
    Left = 417
    Top = 8
  end
  object DSAlx5: TDataSource
    DataSet = Alx5
    Left = 418
    Top = 53
  end
  object TGrupo: TIBQuery
    Database = DBExporta
    Transaction = IBTExporta
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from GRUPOPROD')
    UpdateObject = UPGrupo
    GeneratorField.Field = 'COD_GRUPOPROD'
    Left = 133
    Top = 476
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
    Left = 137
    Top = 523
  end
  object DSGrupo: TDataSource
    DataSet = TGrupo
    Left = 137
    Top = 571
  end
  object TSubgru: TIBQuery
    Database = DBExporta
    Transaction = IBTExporta
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from SUBGRUPOPROD')
    UpdateObject = UPSubgru
    GeneratorField.Field = 'COD_SUBGRUPOPROD'
    Left = 186
    Top = 477
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
    Left = 186
    Top = 523
  end
  object DSSubgru: TDataSource
    DataSet = TSubgru
    Left = 186
    Top = 572
  end
  object TUnidade: TIBQuery
    Database = DBExporta
    Transaction = IBTExporta
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from UNIDADE')
    UpdateObject = UPUnidade
    GeneratorField.Field = 'COD_UNIDADE'
    Left = 243
    Top = 477
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
    Left = 243
    Top = 523
  end
  object DSUnidade: TDataSource
    DataSet = TUnidade
    Left = 243
    Top = 572
  end
  object TProduto: TIBQuery
    Database = DBExporta
    Transaction = IBTExporta
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'SELECT * FROM PRODUTO')
    UpdateObject = UPProduto
    GeneratorField.Field = 'COD_PRODUTO'
    Left = 26
    Top = 475
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
      '  QTDVEND'
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
      '  QTDVEND = :QTDVEND'
      'where'
      '  COD_PRODUTO = :OLD_COD_PRODUTO')
    InsertSQL.Strings = (
      'insert into PRODUTO'
      
        '  (COD_PRODUTO, COD_INTERNO, DESCRICAO, APLICACAO, COD_SUBGRUPOP' +
        'ROD, COD_GRUPOPROD, '
      
        '   COD_CST, COD_LOJA, VENDVISTA, VENDPRAZO, CUSTOVENDA, COMPVIST' +
        'A, COMPPRAZO, '
      '   QTDCOMP, QTDVEND)'
      'values'
      
        '  (:COD_PRODUTO, :COD_INTERNO, :DESCRICAO, :APLICACAO, :COD_SUBG' +
        'RUPOPROD, '
      
        '   :COD_GRUPOPROD, :COD_CST, :COD_LOJA, :VENDVISTA, :VENDPRAZO, ' +
        ':CUSTOVENDA, '
      '   :COMPVISTA, :COMPPRAZO, :QTDCOMP, :QTDVEND)')
    DeleteSQL.Strings = (
      'delete from PRODUTO'
      'where'
      '  COD_PRODUTO = :OLD_COD_PRODUTO')
    Left = 26
    Top = 523
  end
  object DSProduto: TDataSource
    DataSet = TProduto
    Left = 26
    Top = 571
  end
  object TSubProd: TIBQuery
    Database = DBExporta
    Transaction = IBTExporta
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'SELECT * FROM SUBPRODUTO')
    UpdateObject = UPSubProd
    GeneratorField.Field = 'COD_SUBPRODUTO'
    Left = 86
    Top = 476
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
      '  DENSIDADE'
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
      '  DENSIDADE = :DENSIDADE'
      'where'
      '  COD_SUBPRODUTO = :OLD_COD_SUBPRODUTO')
    InsertSQL.Strings = (
      'insert into SUBPRODUTO'
      '  (COD_SUBPRODUTO, CODCOMPOSTO, DESCRICAO, CODBARRA, '
      'CODPRODFABR, FABRICANTE, '
      '   MARCA, QUANTGARANTIA, TIPOGARANTIA, LOCALESTANTE, ATIVO, '
      'IPIPROD, PESOLIQ, '
      
        '   PESOBRUTO, COD_PRODUTO, COD_INTERNO, MOTIVO, QTDATC, EMBPROD,' +
        ' '
      'LOTE, '
      '   PENEIRA, GERMI, PUREZA, ATESTVAL, ATESTGAR, SAFRA, '
      'COD_UNIDCOMPRA, COD_UNIDVENDA, '
      '   COD_CST, DTCAD, CODEAN1, CONTRINT, COR, CLASSIFICACAO, '
      'DESCCUPOM, NCM, '
      '   OBSFISCAL, COMPOSICAO, ALTURA, LARGURA, ESPECIFICACAO, MARK, '
      'BALANCA, '
      '   ANVISA, MINSAUDE, DENSIDADE)'
      'values'
      '  (:COD_SUBPRODUTO, :CODCOMPOSTO, :DESCRICAO, :CODBARRA, '
      ':CODPRODFABR, '
      '   :FABRICANTE, :MARCA, :QUANTGARANTIA, :TIPOGARANTIA, '
      ':LOCALESTANTE, :ATIVO, '
      '   :IPIPROD, :PESOLIQ, :PESOBRUTO, :COD_PRODUTO, :COD_INTERNO, '
      ':MOTIVO, '
      
        '   :QTDATC, :EMBPROD, :LOTE, :PENEIRA, :GERMI, :PUREZA, :ATESTVA' +
        'L, '
      ':ATESTGAR, '
      '   :SAFRA, :COD_UNIDCOMPRA, :COD_UNIDVENDA, :COD_CST, :DTCAD, '
      ':CODEAN1, '
      
        '   :CONTRINT, :COR, :CLASSIFICACAO, :DESCCUPOM, :NCM, :OBSFISCAL' +
        ', '
      ':COMPOSICAO, '
      '   :ALTURA, :LARGURA, :ESPECIFICACAO, :MARK, :BALANCA, :ANVISA, '
      ':MINSAUDE, '
      '   :DENSIDADE)')
    DeleteSQL.Strings = (
      'delete from SUBPRODUTO'
      'where'
      '  COD_SUBPRODUTO = :OLD_COD_SUBPRODUTO')
    Left = 86
    Top = 523
  end
  object DSSubProd: TDataSource
    DataSet = TSubProd
    Left = 86
    Top = 571
  end
  object TPedC: TIBQuery
    Database = DBExporta
    Transaction = IBTExporta
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from PEDCOMPRA')
    UpdateObject = UPedC
    Left = 18
    Top = 293
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
      '  EXPORT'
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
      '  EXPORT = :EXPORT'
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
      '   NUMFISCAL, DESCMOE, COBRANCA, EXPORT)'
      'values'
      
        '  (:COD_PEDCOMP, :COD_FORNEC, :VENDEDOR, :COD_USUARIO, :VALOR, :' +
        'COD_FORMPAG, '
      
        '   :DTPEDCOMP, :DESCONTO, :PRAZOENTR, :OBS, :SITUACAO, :NUMPED, ' +
        ':VLRPCOMIS, '
      
        '   :PERCOMIS, :DTFECH, :COD_DESTINATARIO, :DESTINATARIO, :COD_DE' +
        'VOLUCAO, '
      '   :NUMDEV, :FISCO, :NUMFISCAL, :DESCMOE, :COBRANCA, :EXPORT)')
    DeleteSQL.Strings = (
      'delete from PEDCOMPRA'
      'where'
      '  COD_PEDCOMP = :OLD_COD_PEDCOMP')
    Left = 18
    Top = 340
  end
  object DPedC: TDataSource
    DataSet = TPedC
    Left = 18
    Top = 389
  end
  object DItemPC: TDataSource
    DataSet = TItemPC
    Left = 67
    Top = 389
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
      '  COD_UNIDADE'
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
      '  COD_UNIDADE = :COD_UNIDADE'
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
      '   COD_DEVOLUCAO, CONTREMESSA, QTDEEXP, COD_UNIDADE)'
      'values'
      
        '  (:COD_ITENSPEDC, :COD_PEDCOMPRA, :COD_ESTOQUE, :QTDEPROD, :VAL' +
        'UNIT, :VALORTOTAL, '
      
        '   :DATA, :DESCPRO, :ATUEST, :ALIQICMS, :FRETE, :EMBPROD, :VLRIP' +
        'I, :COD_LOTE, '
      
        '   :BASEICMS, :VLRICMS, :BASEICMSSUBS, :VLRICMSSUBS, :ALIQIPI, :' +
        'REDUCBASEICMS, '
      
        '   :QTDEST, :COD_DEVOLUCAO, :CONTREMESSA, :QTDEEXP, :COD_UNIDADE' +
        ')')
    DeleteSQL.Strings = (
      'delete from ITENSPEDC'
      'where'
      '  COD_ITENSPEDC = :OLD_COD_ITENSPEDC')
    Left = 66
    Top = 340
  end
  object TItemPC: TIBQuery
    Database = DBExporta
    Transaction = IBTExporta
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from ITENSPEDC')
    UpdateObject = UItemPC
    Left = 66
    Top = 293
  end
  object DSFornecedor: TDataSource
    DataSet = TFornecedor
    Left = 129
    Top = 388
  end
  object UPFornecedor: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  COD_FORNEC,'
      '  COD_PESSOA,'
      '  COD_INTERNO,'
      '  DATA_CAD,'
      '  TIPO_FORNEC,'
      '  PRAZO_ENTREGA,'
      '  COD_TRANSPORT,'
      '  TIPO,'
      '  OBS,'
      '  EXPORT,'
      '  MARKREL'
      'from FORNECEDOR '
      'where'
      '  COD_FORNEC = :COD_FORNEC')
    ModifySQL.Strings = (
      'update FORNECEDOR'
      'set'
      '  COD_FORNEC = :COD_FORNEC,'
      '  COD_PESSOA = :COD_PESSOA,'
      '  COD_INTERNO = :COD_INTERNO,'
      '  DATA_CAD = :DATA_CAD,'
      '  TIPO_FORNEC = :TIPO_FORNEC,'
      '  PRAZO_ENTREGA = :PRAZO_ENTREGA,'
      '  COD_TRANSPORT = :COD_TRANSPORT,'
      '  TIPO = :TIPO,'
      '  OBS = :OBS,'
      '  EXPORT = :EXPORT,'
      '  MARKREL = :MARKREL'
      'where'
      '  COD_FORNEC = :OLD_COD_FORNEC')
    InsertSQL.Strings = (
      'insert into FORNECEDOR'
      
        '  (COD_FORNEC, COD_PESSOA, COD_INTERNO, DATA_CAD, TIPO_FORNEC, P' +
        'RAZO_ENTREGA, '
      '   COD_TRANSPORT, TIPO, OBS, EXPORT, MARKREL)'
      'values'
      
        '  (:COD_FORNEC, :COD_PESSOA, :COD_INTERNO, :DATA_CAD, :TIPO_FORN' +
        'EC, :PRAZO_ENTREGA, '
      '   :COD_TRANSPORT, :TIPO, :OBS, :EXPORT, :MARKREL)')
    DeleteSQL.Strings = (
      'delete from FORNECEDOR'
      'where'
      '  COD_FORNEC = :OLD_COD_FORNEC')
    Left = 129
    Top = 340
  end
  object TFornecedor: TIBQuery
    Database = DBExporta
    Transaction = IBTExporta
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from FORNECEDOR')
    UpdateObject = UPFornecedor
    GeneratorField.Field = 'COD_FORNEC'
    Left = 129
    Top = 293
    object TFornecedorCOD_FORNEC: TIntegerField
      FieldName = 'COD_FORNEC'
      Required = True
    end
    object TFornecedorCOD_PESSOA: TIntegerField
      FieldName = 'COD_PESSOA'
    end
    object TFornecedorCOD_INTERNO: TIBStringField
      FieldName = 'COD_INTERNO'
      Size = 10
    end
    object TFornecedorDATA_CAD: TDateField
      FieldName = 'DATA_CAD'
      EditMask = '!99/99/0000;1;_'
    end
    object TFornecedorTIPO_FORNEC: TIBStringField
      FieldName = 'TIPO_FORNEC'
      Size = 1
    end
    object TFornecedorPRAZO_ENTREGA: TIntegerField
      FieldName = 'PRAZO_ENTREGA'
    end
    object TFornecedorCOD_TRANSPORT: TIntegerField
      FieldName = 'COD_TRANSPORT'
    end
    object TFornecedorTIPO: TIBStringField
      FieldName = 'TIPO'
      Size = 15
    end
    object TFornecedorOBS: TMemoField
      FieldName = 'OBS'
      BlobType = ftMemo
      Size = 8
    end
    object TFornecedorEXPORT: TIBStringField
      FieldName = 'EXPORT'
      Origin = 'FORNECEDOR.EXPORT'
      FixedChar = True
      Size = 1
    end
    object TFornecedorMARKREL: TIBStringField
      FieldName = 'MARKREL'
      Origin = 'FORNECEDOR.MARKREL'
      FixedChar = True
      Size = 1
    end
  end
  object DSCst: TDataSource
    DataSet = TCst
    Left = 186
    Top = 388
  end
  object UCst: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  COD_CST,'
      '  DESCRICAO,'
      '  COD_SIT_TRIB,'
      '  INDICEECF,'
      '  SUBSTITUICAO'
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
      '  SUBSTITUICAO = :SUBSTITUICAO'
      'where'
      '  COD_CST = :OLD_COD_CST')
    InsertSQL.Strings = (
      'insert into CST'
      '  (COD_CST, DESCRICAO, COD_SIT_TRIB, INDICEECF, SUBSTITUICAO)'
      'values'
      
        '  (:COD_CST, :DESCRICAO, :COD_SIT_TRIB, :INDICEECF, :SUBSTITUICA' +
        'O)')
    DeleteSQL.Strings = (
      'delete from CST'
      'where'
      '  COD_CST = :OLD_COD_CST')
    Left = 186
    Top = 341
  end
  object TCst: TIBQuery
    Database = DBExporta
    Transaction = IBTExporta
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from CST')
    UpdateObject = UCst
    GeneratorField.Field = 'COD_FORNEC'
    Left = 186
    Top = 292
    object TCstCOD_CST: TIntegerField
      FieldName = 'COD_CST'
      Origin = 'CST.COD_CST'
      Required = True
    end
    object TCstDESCRICAO: TIBStringField
      FieldName = 'DESCRICAO'
      Origin = 'CST.DESCRICAO'
      Required = True
      Size = 100
    end
    object TCstCOD_SIT_TRIB: TIBStringField
      FieldName = 'COD_SIT_TRIB'
      Origin = 'CST.COD_SIT_TRIB'
      Size = 10
    end
    object TCstINDICEECF: TIBStringField
      FieldName = 'INDICEECF'
      Origin = 'CST.INDICEECF'
      FixedChar = True
      Size = 2
    end
    object TCstSUBSTITUICAO: TIBStringField
      FieldName = 'SUBSTITUICAO'
      Origin = 'CST.SUBSTITUICAO'
      FixedChar = True
      Size = 1
    end
  end
  object DSCodigo: TDataSource
    DataSet = TCodigo
    Left = 575
    Top = 569
  end
  object UCodigo: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select *'
      'from codigo '
      'where'
      '  COD_ABCAIXA = :COD_ABCAIXA')
    ModifySQL.Strings = (
      'update codigo'
      'set'
      '  COD_ABCAIXA = :COD_ABCAIXA,'
      '  COD_AGENCIA = :COD_AGENCIA,'
      '  COD_BANC = :COD_BANC,'
      '  COD_CAIXA = :COD_CAIXA,'
      '  COD_CARGO = :COD_CARGO,'
      '  COD_CFOP = :COD_CFOP,'
      '  COD_CHEQUEMIT = :COD_CHEQUEMIT,'
      '  COD_CHEQUEREC = :COD_CHEQUEREC,'
      '  COD_CIDADE = :COD_CIDADE,'
      '  COD_CLIENTE = :COD_CLIENTE,'
      '  COD_CONFAPARENC = :COD_CONFAPARENC,'
      '  COD_COTA = :COD_COTA,'
      '  COD_CST = :COD_CST,'
      '  COD_CTACOR = :COD_CTACOR,'
      '  COD_CTACORFIL = :COD_CTACORFIL,'
      '  COD_CTAPAGAR = :COD_CTAPAGAR,'
      '  COD_CTARECEBER = :COD_CTARECEBER,'
      '  COD_DOCFIS = :COD_DOCFIS,'
      '  COD_EMAIL = :COD_EMAIL,'
      '  COD_EMPRESA = :COD_EMPRESA,'
      '  COD_ESTADO = :COD_ESTADO,'
      '  COD_ESTOQUE = :COD_ESTOQUE,'
      '  COD_FORMPAG = :COD_FORMPAG,'
      '  COD_FORNEC = :COD_FORNEC,'
      '  COD_FUNCARGO = :COD_FUNCARGO,'
      '  COD_FUNC = :COD_FUNC,'
      '  COD_GRUPOPROD = :COD_GRUPOPROD,'
      '  COD_ITENSPEDC = :COD_ITENSPEDC,'
      '  COD_ITENSPEDVEN = :COD_ITENSPEDVEN,'
      '  COD_LANC = :COD_LANC,'
      '  COD_LANENT = :COD_LANENT,'
      '  COD_LANCSAI = :COD_LANCSAI,'
      '  COD_LOJA = :COD_LOJA,'
      '  COD_LOJAACES = :COD_LOJAACES,'
      '  COD_MOEDA = :COD_MOEDA,'
      '  COD_MOVBANCO = :COD_MOVBANCO,'
      '  COD_PARCELACP = :COD_PARCELACP,'
      '  COD_PARCELACR = :COD_PARCELACR,'
      '  COD_PEDCOMP = :COD_PEDCOMP,'
      '  COD_PEDVENDA = :COD_PEDVENDA,'
      '  COD_PESSOA = :COD_PESSOA,'
      '  COD_PESSOAF = :COD_PESSOAF,'
      '  COD_PESSOAJ = :COD_PESSOAJ,'
      '  COD_PLNCTA = :COD_PLNCTA,'
      '  COD_PRODUTO = :COD_PRODUTO,'
      '  COD_REGIAO = :COD_REGIAO,'
      '  COD_SALARIO = :COD_SALARIO,'
      '  COD_SUBGRUPOPROD = :COD_SUBGRUPOPROD,'
      '  COD_SUBPRODUTO = :COD_SUBPRODUTO,'
      '  COD_TELEFONE = :COD_TELEFONE,'
      '  COD_UNIDADE = :COD_UNIDADE,'
      '  CODUSUARIO = :CODUSUARIO,'
      '  COD_CAIXAUSU = :COD_CAIXAUSU,'
      '  GENERATOR1 = :GENERATOR1,'
      '  GENERATOR2 = :GENERATOR2,'
      '  COD_SERVOT = :COD_SERVOT,'
      '  COD_SERVICO = :COD_SERVICO,'
      '  COD_SUBSERVICO = :COD_SUBSERVICO,'
      '  COD_EQUIPAMENTO = :COD_EQUIPAMENTO,'
      '  COD_ORDEM = :COD_ORDEM,'
      '  COD_ITPRODORD = :COD_ITPRODORD,'
      '  COD_ITSERVORD = :COD_ITSERVORD,'
      '  COD_COMPROD = :COD_COMPROD,'
      '  COD_COMSERV = :COD_COMSERV,'
      '  COD_FCHTECPROD = :COD_FCHTECPROD,'
      '  COD_ITFCHTECPROD = :COD_ITFCHTECPROD,'
      '  COD_ITFCHTECSERV = :COD_ITFCHTECSERV,'
      '  COD_ETQPROD = :COD_ETQPROD,'
      '  COD_DESPADIC = :COD_DESPADIC,'
      '  COD_PRODUCAO = :COD_PRODUCAO,'
      '  COD_IPRDMAO = :COD_IPRDMAO,'
      '  COD_IPRDMAT = :COD_IPRDMAT,'
      '  COD_DOCFISC = :COD_DOCFISC,'
      '  COD_CONVUNID = :COD_CONVUNID,'
      '  COD_COMISSAO = :COD_COMISSAO,'
      '  COD_REGISTRO = :COD_REGISTRO,'
      '  COD_R60 = :COD_R60,'
      '  COD_ORCAMENTO = :COD_ORCAMENTO,'
      '  COD_ITPRODORC = :COD_ITPRODORC,'
      '  COD_ITSERVORC = :COD_ITSERVORC,'
      '  COD_MENSAGEM = :COD_MENSAGEM,'
      '  COD_LOTE = :COD_LOTE,'
      '  COD_TMP = :COD_TMP,'
      '  COD_DOCFISSAIDA = :COD_DOCFISSAIDA,'
      '  COD_NF = :COD_NF,'
      '  COD_ITPRODLICITA = :COD_ITPRODLICITA,'
      '  COD_LICITA = :COD_LICITA,'
      '  COD_DOCFISCORD = :COD_DOCFISCORD,'
      '  COD_ITENSETQPROD = :COD_ITENSETQPROD,'
      '  COD_CLIENTECOB = :COD_CLIENTECOB,'
      '  COD_AGENDA = :COD_AGENDA,'
      '  COD_CONTATO = :COD_CONTATO,'
      '  COD_DEVCLI = :COD_DEVCLI,'
      '  COD_ABBANCO = :COD_ABBANCO,'
      '  COD_CONFIGDUP = :COD_CONFIGDUP,'
      '  COD_ITENSDUPPERSON = :COD_ITENSDUPPERSON,'
      '  COD_CREDITO = :COD_CREDITO,'
      '  COD_ENTREGA = :COD_ENTREGA,'
      '  COD_ITEMENTREGA = :COD_ITEMENTREGA,'
      '  COD_CONFIGCHEQUE = :COD_CONFIGCHEQUE,'
      '  COD_ITENSCONFIG_CHEQUE = :COD_ITENSCONFIG_CHEQUE,'
      '  COD_TABELAPRECO = :COD_TABELAPRECO,'
      '  COD_ITEMTAB = :COD_ITEMTAB,'
      '  COD_LOCACAO = :COD_LOCACAO,'
      '  COD_EQUIPE = :COD_EQUIPE,'
      '  COD_FUNEQUIPE = :COD_FUNEQUIPE,'
      '  COD_DOCFISCFATURA = :COD_DOCFISCFATURA,'
      '  COD_ALUGUEL = :COD_ALUGUEL,'
      '  COD_MOTORISTAVEICULO = :COD_MOTORISTAVEICULO,'
      '  COD_OBRA = :COD_OBRA'
      'where'
      '  COD_ABCAIXA = :OLD_COD_ABCAIXA')
    InsertSQL.Strings = (
      'insert into codigo'
      
        '  (COD_ABCAIXA, COD_AGENCIA, COD_BANC, COD_CAIXA, COD_CARGO, COD' +
        '_CFOP, '
      
        '   COD_CHEQUEMIT, COD_CHEQUEREC, COD_CIDADE, COD_CLIENTE, COD_CO' +
        'NFAPARENC, '
      
        '   COD_COTA, COD_CST, COD_CTACOR, COD_CTACORFIL, COD_CTAPAGAR, C' +
        'OD_CTARECEBER, '
      
        '   COD_DOCFIS, COD_EMAIL, COD_EMPRESA, COD_ESTADO, COD_ESTOQUE, ' +
        'COD_FORMPAG, '
      
        '   COD_FORNEC, COD_FUNCARGO, COD_FUNC, COD_GRUPOPROD, COD_ITENSP' +
        'EDC, COD_ITENSPEDVEN, '
      
        '   COD_LANC, COD_LANENT, COD_LANCSAI, COD_LOJA, COD_LOJAACES, CO' +
        'D_MOEDA, '
      
        '   COD_MOVBANCO, COD_PARCELACP, COD_PARCELACR, COD_PEDCOMP, COD_' +
        'PEDVENDA, '
      
        '   COD_PESSOA, COD_PESSOAF, COD_PESSOAJ, COD_PLNCTA, COD_PRODUTO' +
        ', COD_REGIAO, '
      
        '   COD_SALARIO, COD_SUBGRUPOPROD, COD_SUBPRODUTO, COD_TELEFONE, ' +
        'COD_UNIDADE, '
      
        '   CODUSUARIO, COD_CAIXAUSU, GENERATOR1, GENERATOR2, COD_SERVOT,' +
        ' COD_SERVICO, '
      
        '   COD_SUBSERVICO, COD_EQUIPAMENTO, COD_ORDEM, COD_ITPRODORD, CO' +
        'D_ITSERVORD, '
      
        '   COD_COMPROD, COD_COMSERV, COD_FCHTECPROD, COD_ITFCHTECPROD, C' +
        'OD_ITFCHTECSERV, '
      
        '   COD_ETQPROD, COD_DESPADIC, COD_PRODUCAO, COD_IPRDMAO, COD_IPR' +
        'DMAT, COD_DOCFISC, '
      
        '   COD_CONVUNID, COD_COMISSAO, COD_REGISTRO, COD_R60, COD_ORCAME' +
        'NTO, COD_ITPRODORC, '
      
        '   COD_ITSERVORC, COD_MENSAGEM, COD_LOTE, COD_TMP, COD_DOCFISSAI' +
        'DA, COD_NF, '
      
        '   COD_ITPRODLICITA, COD_LICITA, COD_DOCFISCORD, COD_ITENSETQPRO' +
        'D, COD_CLIENTECOB, '
      
        '   COD_AGENDA, COD_CONTATO, COD_DEVCLI, COD_ABBANCO, COD_CONFIGD' +
        'UP, COD_ITENSDUPPERSON, '
      
        '   COD_CREDITO, COD_ENTREGA, COD_ITEMENTREGA, COD_CONFIGCHEQUE, ' +
        'COD_ITENSCONFIG_CHEQUE, '
      
        '   COD_TABELAPRECO, COD_ITEMTAB, COD_LOCACAO, COD_EQUIPE, COD_FU' +
        'NEQUIPE, '
      
        '   COD_DOCFISCFATURA, COD_ALUGUEL, COD_MOTORISTAVEICULO, COD_OBR' +
        'A)'
      'values'
      
        '  (:COD_ABCAIXA, :COD_AGENCIA, :COD_BANC, :COD_CAIXA, :COD_CARGO' +
        ', :COD_CFOP, '
      
        '   :COD_CHEQUEMIT, :COD_CHEQUEREC, :COD_CIDADE, :COD_CLIENTE, :C' +
        'OD_CONFAPARENC, '
      
        '   :COD_COTA, :COD_CST, :COD_CTACOR, :COD_CTACORFIL, :COD_CTAPAG' +
        'AR, :COD_CTARECEBER, '
      
        '   :COD_DOCFIS, :COD_EMAIL, :COD_EMPRESA, :COD_ESTADO, :COD_ESTO' +
        'QUE, :COD_FORMPAG, '
      
        '   :COD_FORNEC, :COD_FUNCARGO, :COD_FUNC, :COD_GRUPOPROD, :COD_I' +
        'TENSPEDC, '
      
        '   :COD_ITENSPEDVEN, :COD_LANC, :COD_LANENT, :COD_LANCSAI, :COD_' +
        'LOJA, :COD_LOJAACES, '
      
        '   :COD_MOEDA, :COD_MOVBANCO, :COD_PARCELACP, :COD_PARCELACR, :C' +
        'OD_PEDCOMP, '
      
        '   :COD_PEDVENDA, :COD_PESSOA, :COD_PESSOAF, :COD_PESSOAJ, :COD_' +
        'PLNCTA, '
      
        '   :COD_PRODUTO, :COD_REGIAO, :COD_SALARIO, :COD_SUBGRUPOPROD, :' +
        'COD_SUBPRODUTO, '
      
        '   :COD_TELEFONE, :COD_UNIDADE, :CODUSUARIO, :COD_CAIXAUSU, :GEN' +
        'ERATOR1, '
      
        '   :GENERATOR2, :COD_SERVOT, :COD_SERVICO, :COD_SUBSERVICO, :COD' +
        '_EQUIPAMENTO, '
      
        '   :COD_ORDEM, :COD_ITPRODORD, :COD_ITSERVORD, :COD_COMPROD, :CO' +
        'D_COMSERV, '
      
        '   :COD_FCHTECPROD, :COD_ITFCHTECPROD, :COD_ITFCHTECSERV, :COD_E' +
        'TQPROD, '
      
        '   :COD_DESPADIC, :COD_PRODUCAO, :COD_IPRDMAO, :COD_IPRDMAT, :CO' +
        'D_DOCFISC, '
      
        '   :COD_CONVUNID, :COD_COMISSAO, :COD_REGISTRO, :COD_R60, :COD_O' +
        'RCAMENTO, '
      
        '   :COD_ITPRODORC, :COD_ITSERVORC, :COD_MENSAGEM, :COD_LOTE, :CO' +
        'D_TMP, '
      
        '   :COD_DOCFISSAIDA, :COD_NF, :COD_ITPRODLICITA, :COD_LICITA, :C' +
        'OD_DOCFISCORD, '
      
        '   :COD_ITENSETQPROD, :COD_CLIENTECOB, :COD_AGENDA, :COD_CONTATO' +
        ', :COD_DEVCLI, '
      
        '   :COD_ABBANCO, :COD_CONFIGDUP, :COD_ITENSDUPPERSON, :COD_CREDI' +
        'TO, :COD_ENTREGA, '
      
        '   :COD_ITEMENTREGA, :COD_CONFIGCHEQUE, :COD_ITENSCONFIG_CHEQUE,' +
        ' :COD_TABELAPRECO, '
      
        '   :COD_ITEMTAB, :COD_LOCACAO, :COD_EQUIPE, :COD_FUNEQUIPE, :COD' +
        '_DOCFISCFATURA, '
      '   :COD_ALUGUEL, :COD_MOTORISTAVEICULO, :COD_OBRA)')
    DeleteSQL.Strings = (
      'delete from codigo'
      'where'
      '  COD_ABCAIXA = :OLD_COD_ABCAIXA')
    Left = 575
    Top = 524
  end
  object TCodigo: TIBQuery
    Database = DBExporta
    Transaction = IBTExporta
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from codigo')
    UpdateObject = UCodigo
    GeneratorField.Field = 'COD_FORNEC'
    Left = 575
    Top = 480
    object TCodigoCOD_ABCAIXA: TIntegerField
      FieldName = 'COD_ABCAIXA'
      Origin = 'CODIGO.COD_ABCAIXA'
      Required = True
    end
    object TCodigoCOD_AGENCIA: TIntegerField
      FieldName = 'COD_AGENCIA'
      Origin = 'CODIGO.COD_AGENCIA'
      Required = True
    end
    object TCodigoCOD_BANC: TIntegerField
      FieldName = 'COD_BANC'
      Origin = 'CODIGO.COD_BANC'
      Required = True
    end
    object TCodigoCOD_CAIXA: TIntegerField
      FieldName = 'COD_CAIXA'
      Origin = 'CODIGO.COD_CAIXA'
      Required = True
    end
    object TCodigoCOD_CARGO: TIntegerField
      FieldName = 'COD_CARGO'
      Origin = 'CODIGO.COD_CARGO'
      Required = True
    end
    object TCodigoCOD_CFOP: TIntegerField
      FieldName = 'COD_CFOP'
      Origin = 'CODIGO.COD_CFOP'
      Required = True
    end
    object TCodigoCOD_CHEQUEMIT: TIntegerField
      FieldName = 'COD_CHEQUEMIT'
      Origin = 'CODIGO.COD_CHEQUEMIT'
      Required = True
    end
    object TCodigoCOD_CHEQUEREC: TIntegerField
      FieldName = 'COD_CHEQUEREC'
      Origin = 'CODIGO.COD_CHEQUEREC'
      Required = True
    end
    object TCodigoCOD_CIDADE: TIntegerField
      FieldName = 'COD_CIDADE'
      Origin = 'CODIGO.COD_CIDADE'
      Required = True
    end
    object TCodigoCOD_CLIENTE: TIntegerField
      FieldName = 'COD_CLIENTE'
      Origin = 'CODIGO.COD_CLIENTE'
      Required = True
    end
    object TCodigoCOD_CONFAPARENC: TIntegerField
      FieldName = 'COD_CONFAPARENC'
      Origin = 'CODIGO.COD_CONFAPARENC'
      Required = True
    end
    object TCodigoCOD_COTA: TIntegerField
      FieldName = 'COD_COTA'
      Origin = 'CODIGO.COD_COTA'
      Required = True
    end
    object TCodigoCOD_CST: TIntegerField
      FieldName = 'COD_CST'
      Origin = 'CODIGO.COD_CST'
      Required = True
    end
    object TCodigoCOD_CTACOR: TIntegerField
      FieldName = 'COD_CTACOR'
      Origin = 'CODIGO.COD_CTACOR'
      Required = True
    end
    object TCodigoCOD_CTACORFIL: TIntegerField
      FieldName = 'COD_CTACORFIL'
      Origin = 'CODIGO.COD_CTACORFIL'
      Required = True
    end
    object TCodigoCOD_CTAPAGAR: TIntegerField
      FieldName = 'COD_CTAPAGAR'
      Origin = 'CODIGO.COD_CTAPAGAR'
      Required = True
    end
    object TCodigoCOD_CTARECEBER: TIntegerField
      FieldName = 'COD_CTARECEBER'
      Origin = 'CODIGO.COD_CTARECEBER'
      Required = True
    end
    object TCodigoCOD_DOCFIS: TIntegerField
      FieldName = 'COD_DOCFIS'
      Origin = 'CODIGO.COD_DOCFIS'
      Required = True
    end
    object TCodigoCOD_EMAIL: TIntegerField
      FieldName = 'COD_EMAIL'
      Origin = 'CODIGO.COD_EMAIL'
      Required = True
    end
    object TCodigoCOD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
      Origin = 'CODIGO.COD_EMPRESA'
      Required = True
    end
    object TCodigoCOD_ESTADO: TIntegerField
      FieldName = 'COD_ESTADO'
      Origin = 'CODIGO.COD_ESTADO'
      Required = True
    end
    object TCodigoCOD_ESTOQUE: TIntegerField
      FieldName = 'COD_ESTOQUE'
      Origin = 'CODIGO.COD_ESTOQUE'
      Required = True
    end
    object TCodigoCOD_FORMPAG: TIntegerField
      FieldName = 'COD_FORMPAG'
      Origin = 'CODIGO.COD_FORMPAG'
      Required = True
    end
    object TCodigoCOD_FORNEC: TIntegerField
      FieldName = 'COD_FORNEC'
      Origin = 'CODIGO.COD_FORNEC'
      Required = True
    end
    object TCodigoCOD_FUNCARGO: TIntegerField
      FieldName = 'COD_FUNCARGO'
      Origin = 'CODIGO.COD_FUNCARGO'
      Required = True
    end
    object TCodigoCOD_FUNC: TIntegerField
      FieldName = 'COD_FUNC'
      Origin = 'CODIGO.COD_FUNC'
      Required = True
    end
    object TCodigoCOD_GRUPOPROD: TIntegerField
      FieldName = 'COD_GRUPOPROD'
      Origin = 'CODIGO.COD_GRUPOPROD'
      Required = True
    end
    object TCodigoCOD_ITENSPEDC: TIntegerField
      FieldName = 'COD_ITENSPEDC'
      Origin = 'CODIGO.COD_ITENSPEDC'
      Required = True
    end
    object TCodigoCOD_ITENSPEDVEN: TIntegerField
      FieldName = 'COD_ITENSPEDVEN'
      Origin = 'CODIGO.COD_ITENSPEDVEN'
      Required = True
    end
    object TCodigoCOD_LANC: TIntegerField
      FieldName = 'COD_LANC'
      Origin = 'CODIGO.COD_LANC'
      Required = True
    end
    object TCodigoCOD_LANENT: TIntegerField
      FieldName = 'COD_LANENT'
      Origin = 'CODIGO.COD_LANENT'
      Required = True
    end
    object TCodigoCOD_LANCSAI: TIntegerField
      FieldName = 'COD_LANCSAI'
      Origin = 'CODIGO.COD_LANCSAI'
      Required = True
    end
    object TCodigoCOD_LOJA: TIntegerField
      FieldName = 'COD_LOJA'
      Origin = 'CODIGO.COD_LOJA'
      Required = True
    end
    object TCodigoCOD_LOJAACES: TIntegerField
      FieldName = 'COD_LOJAACES'
      Origin = 'CODIGO.COD_LOJAACES'
      Required = True
    end
    object TCodigoCOD_MOEDA: TIntegerField
      FieldName = 'COD_MOEDA'
      Origin = 'CODIGO.COD_MOEDA'
      Required = True
    end
    object TCodigoCOD_MOVBANCO: TIntegerField
      FieldName = 'COD_MOVBANCO'
      Origin = 'CODIGO.COD_MOVBANCO'
      Required = True
    end
    object TCodigoCOD_PARCELACP: TIntegerField
      FieldName = 'COD_PARCELACP'
      Origin = 'CODIGO.COD_PARCELACP'
      Required = True
    end
    object TCodigoCOD_PARCELACR: TIntegerField
      FieldName = 'COD_PARCELACR'
      Origin = 'CODIGO.COD_PARCELACR'
      Required = True
    end
    object TCodigoCOD_PEDCOMP: TIntegerField
      FieldName = 'COD_PEDCOMP'
      Origin = 'CODIGO.COD_PEDCOMP'
      Required = True
    end
    object TCodigoCOD_PEDVENDA: TIntegerField
      FieldName = 'COD_PEDVENDA'
      Origin = 'CODIGO.COD_PEDVENDA'
      Required = True
    end
    object TCodigoCOD_PESSOA: TIntegerField
      FieldName = 'COD_PESSOA'
      Origin = 'CODIGO.COD_PESSOA'
      Required = True
    end
    object TCodigoCOD_PESSOAF: TIntegerField
      FieldName = 'COD_PESSOAF'
      Origin = 'CODIGO.COD_PESSOAF'
      Required = True
    end
    object TCodigoCOD_PESSOAJ: TIntegerField
      FieldName = 'COD_PESSOAJ'
      Origin = 'CODIGO.COD_PESSOAJ'
      Required = True
    end
    object TCodigoCOD_PLNCTA: TIntegerField
      FieldName = 'COD_PLNCTA'
      Origin = 'CODIGO.COD_PLNCTA'
      Required = True
    end
    object TCodigoCOD_PRODUTO: TIntegerField
      FieldName = 'COD_PRODUTO'
      Origin = 'CODIGO.COD_PRODUTO'
      Required = True
    end
    object TCodigoCOD_REGIAO: TIntegerField
      FieldName = 'COD_REGIAO'
      Origin = 'CODIGO.COD_REGIAO'
      Required = True
    end
    object TCodigoCOD_SALARIO: TIntegerField
      FieldName = 'COD_SALARIO'
      Origin = 'CODIGO.COD_SALARIO'
      Required = True
    end
    object TCodigoCOD_SUBGRUPOPROD: TIntegerField
      FieldName = 'COD_SUBGRUPOPROD'
      Origin = 'CODIGO.COD_SUBGRUPOPROD'
      Required = True
    end
    object TCodigoCOD_SUBPRODUTO: TIntegerField
      FieldName = 'COD_SUBPRODUTO'
      Origin = 'CODIGO.COD_SUBPRODUTO'
      Required = True
    end
    object TCodigoCOD_TELEFONE: TIntegerField
      FieldName = 'COD_TELEFONE'
      Origin = 'CODIGO.COD_TELEFONE'
      Required = True
    end
    object TCodigoCOD_UNIDADE: TIntegerField
      FieldName = 'COD_UNIDADE'
      Origin = 'CODIGO.COD_UNIDADE'
      Required = True
    end
    object TCodigoCODUSUARIO: TIntegerField
      FieldName = 'CODUSUARIO'
      Origin = 'CODIGO.CODUSUARIO'
      Required = True
    end
    object TCodigoCOD_CAIXAUSU: TIntegerField
      FieldName = 'COD_CAIXAUSU'
      Origin = 'CODIGO.COD_CAIXAUSU'
    end
    object TCodigoGENERATOR1: TIBStringField
      FieldName = 'GENERATOR1'
      Origin = 'CODIGO.GENERATOR1'
    end
    object TCodigoGENERATOR2: TIBStringField
      FieldName = 'GENERATOR2'
      Origin = 'CODIGO.GENERATOR2'
    end
    object TCodigoCOD_SERVOT: TIntegerField
      FieldName = 'COD_SERVOT'
      Origin = 'CODIGO.COD_SERVOT'
    end
    object TCodigoCOD_SERVICO: TIntegerField
      FieldName = 'COD_SERVICO'
      Origin = 'CODIGO.COD_SERVICO'
    end
    object TCodigoCOD_SUBSERVICO: TIntegerField
      FieldName = 'COD_SUBSERVICO'
      Origin = 'CODIGO.COD_SUBSERVICO'
    end
    object TCodigoCOD_EQUIPAMENTO: TIntegerField
      FieldName = 'COD_EQUIPAMENTO'
      Origin = 'CODIGO.COD_EQUIPAMENTO'
    end
    object TCodigoCOD_ORDEM: TIntegerField
      FieldName = 'COD_ORDEM'
      Origin = 'CODIGO.COD_ORDEM'
    end
    object TCodigoCOD_ITPRODORD: TIntegerField
      FieldName = 'COD_ITPRODORD'
      Origin = 'CODIGO.COD_ITPRODORD'
    end
    object TCodigoCOD_ITSERVORD: TIntegerField
      FieldName = 'COD_ITSERVORD'
      Origin = 'CODIGO.COD_ITSERVORD'
    end
    object TCodigoCOD_COMPROD: TIntegerField
      FieldName = 'COD_COMPROD'
      Origin = 'CODIGO.COD_COMPROD'
    end
    object TCodigoCOD_COMSERV: TIntegerField
      FieldName = 'COD_COMSERV'
      Origin = 'CODIGO.COD_COMSERV'
    end
    object TCodigoCOD_FCHTECPROD: TIntegerField
      FieldName = 'COD_FCHTECPROD'
      Origin = 'CODIGO.COD_FCHTECPROD'
    end
    object TCodigoCOD_ITFCHTECPROD: TIntegerField
      FieldName = 'COD_ITFCHTECPROD'
      Origin = 'CODIGO.COD_ITFCHTECPROD'
    end
    object TCodigoCOD_ITFCHTECSERV: TIntegerField
      FieldName = 'COD_ITFCHTECSERV'
      Origin = 'CODIGO.COD_ITFCHTECSERV'
    end
    object TCodigoCOD_ETQPROD: TIntegerField
      FieldName = 'COD_ETQPROD'
      Origin = 'CODIGO.COD_ETQPROD'
    end
    object TCodigoCOD_DESPADIC: TIntegerField
      FieldName = 'COD_DESPADIC'
      Origin = 'CODIGO.COD_DESPADIC'
    end
    object TCodigoCOD_PRODUCAO: TIntegerField
      FieldName = 'COD_PRODUCAO'
      Origin = 'CODIGO.COD_PRODUCAO'
    end
    object TCodigoCOD_IPRDMAO: TIntegerField
      FieldName = 'COD_IPRDMAO'
      Origin = 'CODIGO.COD_IPRDMAO'
    end
    object TCodigoCOD_IPRDMAT: TIntegerField
      FieldName = 'COD_IPRDMAT'
      Origin = 'CODIGO.COD_IPRDMAT'
    end
    object TCodigoCOD_DOCFISC: TIntegerField
      FieldName = 'COD_DOCFISC'
      Origin = 'CODIGO.COD_DOCFISC'
    end
    object TCodigoCOD_CONVUNID: TIntegerField
      FieldName = 'COD_CONVUNID'
      Origin = 'CODIGO.COD_CONVUNID'
    end
    object TCodigoCOD_COMISSAO: TIntegerField
      FieldName = 'COD_COMISSAO'
      Origin = 'CODIGO.COD_COMISSAO'
    end
    object TCodigoCOD_REGISTRO: TIntegerField
      FieldName = 'COD_REGISTRO'
      Origin = 'CODIGO.COD_REGISTRO'
    end
    object TCodigoCOD_R60: TIntegerField
      FieldName = 'COD_R60'
      Origin = 'CODIGO.COD_R60'
    end
    object TCodigoCOD_ORCAMENTO: TIntegerField
      FieldName = 'COD_ORCAMENTO'
      Origin = 'CODIGO.COD_ORCAMENTO'
    end
    object TCodigoCOD_ITPRODORC: TIntegerField
      FieldName = 'COD_ITPRODORC'
      Origin = 'CODIGO.COD_ITPRODORC'
    end
    object TCodigoCOD_ITSERVORC: TIntegerField
      FieldName = 'COD_ITSERVORC'
      Origin = 'CODIGO.COD_ITSERVORC'
    end
    object TCodigoCOD_MENSAGEM: TIntegerField
      FieldName = 'COD_MENSAGEM'
      Origin = 'CODIGO.COD_MENSAGEM'
    end
    object TCodigoCOD_LOTE: TIntegerField
      FieldName = 'COD_LOTE'
      Origin = 'CODIGO.COD_LOTE'
    end
    object TCodigoCOD_TMP: TIntegerField
      FieldName = 'COD_TMP'
      Origin = 'CODIGO.COD_TMP'
    end
    object TCodigoCOD_DOCFISSAIDA: TIntegerField
      FieldName = 'COD_DOCFISSAIDA'
      Origin = 'CODIGO.COD_DOCFISSAIDA'
    end
    object TCodigoCOD_NF: TIntegerField
      FieldName = 'COD_NF'
      Origin = 'CODIGO.COD_NF'
    end
    object TCodigoCOD_ITPRODLICITA: TIntegerField
      FieldName = 'COD_ITPRODLICITA'
      Origin = 'CODIGO.COD_ITPRODLICITA'
    end
    object TCodigoCOD_LICITA: TIntegerField
      FieldName = 'COD_LICITA'
      Origin = 'CODIGO.COD_LICITA'
    end
    object TCodigoCOD_DOCFISCORD: TIntegerField
      FieldName = 'COD_DOCFISCORD'
      Origin = 'CODIGO.COD_DOCFISCORD'
    end
    object TCodigoCOD_ITENSETQPROD: TIntegerField
      FieldName = 'COD_ITENSETQPROD'
      Origin = 'CODIGO.COD_ITENSETQPROD'
    end
    object TCodigoCOD_CLIENTECOB: TIntegerField
      FieldName = 'COD_CLIENTECOB'
      Origin = 'CODIGO.COD_CLIENTECOB'
    end
    object TCodigoCOD_AGENDA: TIntegerField
      FieldName = 'COD_AGENDA'
      Origin = 'CODIGO.COD_AGENDA'
    end
    object TCodigoCOD_CONTATO: TIntegerField
      FieldName = 'COD_CONTATO'
      Origin = 'CODIGO.COD_CONTATO'
    end
    object TCodigoCOD_DEVCLI: TIntegerField
      FieldName = 'COD_DEVCLI'
      Origin = 'CODIGO.COD_DEVCLI'
    end
    object TCodigoCOD_ABBANCO: TIntegerField
      FieldName = 'COD_ABBANCO'
      Origin = 'CODIGO.COD_ABBANCO'
    end
    object TCodigoCOD_CONFIGDUP: TIntegerField
      FieldName = 'COD_CONFIGDUP'
      Origin = 'CODIGO.COD_CONFIGDUP'
    end
    object TCodigoCOD_ITENSDUPPERSON: TIntegerField
      FieldName = 'COD_ITENSDUPPERSON'
      Origin = 'CODIGO.COD_ITENSDUPPERSON'
    end
    object TCodigoCOD_CREDITO: TIntegerField
      FieldName = 'COD_CREDITO'
      Origin = 'CODIGO.COD_CREDITO'
    end
    object TCodigoCOD_ENTREGA: TIntegerField
      FieldName = 'COD_ENTREGA'
      Origin = 'CODIGO.COD_ENTREGA'
    end
    object TCodigoCOD_ITEMENTREGA: TIntegerField
      FieldName = 'COD_ITEMENTREGA'
      Origin = 'CODIGO.COD_ITEMENTREGA'
    end
    object TCodigoCOD_CONFIGCHEQUE: TIntegerField
      FieldName = 'COD_CONFIGCHEQUE'
      Origin = 'CODIGO.COD_CONFIGCHEQUE'
    end
    object TCodigoCOD_ITENSCONFIG_CHEQUE: TIntegerField
      FieldName = 'COD_ITENSCONFIG_CHEQUE'
      Origin = 'CODIGO.COD_ITENSCONFIG_CHEQUE'
    end
    object TCodigoCOD_TABELAPRECO: TIntegerField
      FieldName = 'COD_TABELAPRECO'
      Origin = 'CODIGO.COD_TABELAPRECO'
    end
    object TCodigoCOD_ITEMTAB: TIntegerField
      FieldName = 'COD_ITEMTAB'
      Origin = 'CODIGO.COD_ITEMTAB'
    end
    object TCodigoCOD_LOCACAO: TIntegerField
      FieldName = 'COD_LOCACAO'
      Origin = 'CODIGO.COD_LOCACAO'
    end
    object TCodigoCOD_EQUIPE: TIntegerField
      FieldName = 'COD_EQUIPE'
      Origin = 'CODIGO.COD_EQUIPE'
    end
    object TCodigoCOD_FUNEQUIPE: TIntegerField
      FieldName = 'COD_FUNEQUIPE'
      Origin = 'CODIGO.COD_FUNEQUIPE'
    end
    object TCodigoCOD_DOCFISCFATURA: TIntegerField
      FieldName = 'COD_DOCFISCFATURA'
      Origin = 'CODIGO.COD_DOCFISCFATURA'
    end
    object TCodigoCOD_ALUGUEL: TIntegerField
      FieldName = 'COD_ALUGUEL'
      Origin = 'CODIGO.COD_ALUGUEL'
    end
    object TCodigoCOD_MOTORISTAVEICULO: TSmallintField
      FieldName = 'COD_MOTORISTAVEICULO'
      Origin = 'CODIGO.COD_MOTORISTAVEICULO'
    end
    object TCodigoCOD_OBRA: TIntegerField
      FieldName = 'COD_OBRA'
      Origin = 'CODIGO.COD_OBRA'
    end
  end
  object DSFormPag: TDataSource
    DataSet = TFormPag
    Left = 435
    Top = 209
  end
  object UFormPag: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select *'
      'from formpag '
      'where'
      '  COD_FORMPAG = :COD_FORMPAG')
    ModifySQL.Strings = (
      'update formpag'
      'set'
      '  COD_FORMPAG = :COD_FORMPAG,'
      '  COD_LOJA = :COD_LOJA,'
      '  DESCRICAO = :DESCRICAO,'
      '  DESCFISC = :DESCFISC,'
      '  PRIMPARCELA = :PRIMPARCELA,'
      '  INTERVALO = :INTERVALO,'
      '  QUANTPARCELA = :QUANTPARCELA,'
      '  JUROAPLIC = :JUROAPLIC,'
      '  MEDIADIAS = :MEDIADIAS,'
      '  TIPO = :TIPO,'
      '  COD_INTERNO = :COD_INTERNO,'
      '  ATIVADESC = :ATIVADESC,'
      '  DESCFORMPAG = :DESCFORMPAG'
      'where'
      '  COD_FORMPAG = :OLD_COD_FORMPAG')
    InsertSQL.Strings = (
      'insert into formpag'
      
        '  (COD_FORMPAG, COD_LOJA, DESCRICAO, DESCFISC, PRIMPARCELA, INTE' +
        'RVALO, '
      
        '   QUANTPARCELA, JUROAPLIC, MEDIADIAS, TIPO, COD_INTERNO, ATIVAD' +
        'ESC, DESCFORMPAG)'
      'values'
      
        '  (:COD_FORMPAG, :COD_LOJA, :DESCRICAO, :DESCFISC, :PRIMPARCELA,' +
        ' :INTERVALO, '
      
        '   :QUANTPARCELA, :JUROAPLIC, :MEDIADIAS, :TIPO, :COD_INTERNO, :' +
        'ATIVADESC, '
      '   :DESCFORMPAG)')
    DeleteSQL.Strings = (
      'delete from formpag'
      'where'
      '  COD_FORMPAG = :OLD_COD_FORMPAG')
    Left = 435
    Top = 164
  end
  object TFormPag: TIBQuery
    Database = DBExporta
    Transaction = IBTExporta
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from formpag')
    UpdateObject = UFormPag
    GeneratorField.Field = 'COD_FORNEC'
    Left = 435
    Top = 120
  end
  object DSPessoa: TDataSource
    DataSet = TPessoa
    Left = 563
    Top = 209
  end
  object UPessoa: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select *'
      'from pessoa '
      'where'
      '  COD_PESSOA = :COD_PESSOA')
    ModifySQL.Strings = (
      'update pessoa'
      'set'
      '  COD_PESSOA = :COD_PESSOA,'
      '  NOME = :NOME,'
      '  ENDERECO = :ENDERECO,'
      '  BAIRRO = :BAIRRO,'
      '  COD_CIDADE = :COD_CIDADE,'
      '  CEP = :CEP,'
      '  CPFCNPJ = :CPFCNPJ,'
      '  DATA_INI = :DATA_INI,'
      '  DTNASC = :DTNASC,'
      '  COD_REGIAO = :COD_REGIAO,'
      '  COD_NATURAL = :COD_NATURAL,'
      '  TELREL = :TELREL,'
      '  DIAANIVER = :DIAANIVER,'
      '  PROXIMIDADE = :PROXIMIDADE,'
      '  VLRCREDITO = :VLRCREDITO,'
      '  COD_TRANSPORTADORA = :COD_TRANSPORTADORA,'
      '  ENDNUMERO = :ENDNUMERO'
      'where'
      '  COD_PESSOA = :OLD_COD_PESSOA')
    InsertSQL.Strings = (
      'insert into pessoa'
      
        '  (COD_PESSOA, NOME, ENDERECO, BAIRRO, COD_CIDADE, CEP, CPFCNPJ,' +
        ' DATA_INI, '
      
        '   DTNASC, COD_REGIAO, COD_NATURAL, TELREL, DIAANIVER, PROXIMIDA' +
        'DE, VLRCREDITO, '
      '   COD_TRANSPORTADORA, ENDNUMERO)'
      'values'
      
        '  (:COD_PESSOA, :NOME, :ENDERECO, :BAIRRO, :COD_CIDADE, :CEP, :C' +
        'PFCNPJ, '
      
        '   :DATA_INI, :DTNASC, :COD_REGIAO, :COD_NATURAL, :TELREL, :DIAA' +
        'NIVER, '
      '   :PROXIMIDADE, :VLRCREDITO, :COD_TRANSPORTADORA, :ENDNUMERO)')
    DeleteSQL.Strings = (
      'delete from pessoa'
      'where'
      '  COD_PESSOA = :OLD_COD_PESSOA')
    Left = 563
    Top = 164
  end
  object TPessoa: TIBQuery
    Database = DBExporta
    Transaction = IBTExporta
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from pessoa')
    UpdateObject = UPessoa
    GeneratorField.Field = 'COD_FORNEC'
    Left = 563
    Top = 120
  end
  object DSPessoaF: TDataSource
    DataSet = TPessoaF
    Left = 627
    Top = 209
  end
  object UPessoaF: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select * '
      'from pessoaf '
      'where'
      '  COD_PESSOAF = :COD_PESSOAF')
    ModifySQL.Strings = (
      'update pessoaf'
      'set'
      '  COD_PESSOAF = :COD_PESSOAF,'
      '  COD_PESSOA = :COD_PESSOA,'
      '  ESTADO_CIVIL = :ESTADO_CIVIL,'
      '  SEXO = :SEXO,'
      '  EMP_TRAB = :EMP_TRAB,'
      '  END_TRAB = :END_TRAB,'
      '  BAIRRO_TRAB = :BAIRRO_TRAB,'
      '  DATA_ADMIS = :DATA_ADMIS,'
      '  CARGO = :CARGO,'
      '  RG = :RG,'
      '  DATA_EXPED = :DATA_EXPED,'
      '  ORGAO_EXPED = :ORGAO_EXPED,'
      '  TITULO = :TITULO,'
      '  NOME_CONJ = :NOME_CONJ,'
      '  DATANASC_CONJ = :DATANASC_CONJ,'
      '  RG_CONJ = :RG_CONJ,'
      '  CPF_CONJ = :CPF_CONJ,'
      '  EMP_CONJ = :EMP_CONJ,'
      '  NOME_PAI = :NOME_PAI,'
      '  NOME_MAE = :NOME_MAE,'
      '  ENDE_FILIACAO = :ENDE_FILIACAO,'
      '  DIAANIVERCONJ = :DIAANIVERCONJ'
      'where'
      '  COD_PESSOAF = :OLD_COD_PESSOAF')
    InsertSQL.Strings = (
      'insert into pessoaf'
      
        '  (COD_PESSOAF, COD_PESSOA, ESTADO_CIVIL, SEXO, EMP_TRAB, END_TR' +
        'AB, BAIRRO_TRAB, '
      
        '   DATA_ADMIS, CARGO, RG, DATA_EXPED, ORGAO_EXPED, TITULO, NOME_' +
        'CONJ, DATANASC_CONJ, '
      
        '   RG_CONJ, CPF_CONJ, EMP_CONJ, NOME_PAI, NOME_MAE, ENDE_FILIACA' +
        'O, DIAANIVERCONJ)'
      'values'
      
        '  (:COD_PESSOAF, :COD_PESSOA, :ESTADO_CIVIL, :SEXO, :EMP_TRAB, :' +
        'END_TRAB, '
      
        '   :BAIRRO_TRAB, :DATA_ADMIS, :CARGO, :RG, :DATA_EXPED, :ORGAO_E' +
        'XPED, :TITULO, '
      
        '   :NOME_CONJ, :DATANASC_CONJ, :RG_CONJ, :CPF_CONJ, :EMP_CONJ, :' +
        'NOME_PAI, '
      '   :NOME_MAE, :ENDE_FILIACAO, :DIAANIVERCONJ)')
    DeleteSQL.Strings = (
      'delete from pessoaf'
      'where'
      '  COD_PESSOAF = :OLD_COD_PESSOAF')
    Left = 627
    Top = 164
  end
  object TPessoaF: TIBQuery
    Database = DBExporta
    Transaction = IBTExporta
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from pessoaf')
    UpdateObject = UPessoaF
    GeneratorField.Field = 'COD_FORNEC'
    Left = 627
    Top = 120
  end
  object DSPessoaJ: TDataSource
    DataSet = TPessoaJ
    Left = 691
    Top = 209
  end
  object UPessoaJ: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select *'
      'from pessoaJ '
      'where'
      '  COD_PESSOAJ = :COD_PESSOAJ')
    ModifySQL.Strings = (
      'update pessoaJ'
      'set'
      '  COD_PESSOAJ = :COD_PESSOAJ,'
      '  COD_PESSOA = :COD_PESSOA,'
      '  INSC_EST = :INSC_EST,'
      '  RAZAO_SOCIAL = :RAZAO_SOCIAL,'
      '  INSC_MUN = :INSC_MUN,'
      '  WEB_PAGE = :WEB_PAGE,'
      '  INS_ST = :INS_ST,'
      '  INDUSTRIA = :INDUSTRIA'
      'where'
      '  COD_PESSOAJ = :OLD_COD_PESSOAJ')
    InsertSQL.Strings = (
      'insert into pessoaJ'
      
        '  (COD_PESSOAJ, COD_PESSOA, INSC_EST, RAZAO_SOCIAL, INSC_MUN, WE' +
        'B_PAGE, '
      '   INS_ST, INDUSTRIA)'
      'values'
      
        '  (:COD_PESSOAJ, :COD_PESSOA, :INSC_EST, :RAZAO_SOCIAL, :INSC_MU' +
        'N, :WEB_PAGE, '
      '   :INS_ST, :INDUSTRIA)')
    DeleteSQL.Strings = (
      'delete from pessoaJ'
      'where'
      '  COD_PESSOAJ = :OLD_COD_PESSOAJ')
    Left = 691
    Top = 164
  end
  object TPessoaJ: TIBQuery
    Database = DBExporta
    Transaction = IBTExporta
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from pessoaJ')
    UpdateObject = UPessoaJ
    GeneratorField.Field = 'COD_FORNEC'
    Left = 691
    Top = 120
  end
  object DSOrdem: TDataSource
    DataSet = TOrd
    Left = 381
    Top = 386
  end
  object UOrdem: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      'from ordem '
      'where'
      '  COD_ORDEM = :COD_ORDEM')
    ModifySQL.Strings = (
      'update ordem'
      'set'
      '  COD_ORDEM = :COD_ORDEM,'
      '  COD_CLIENTE = :COD_CLIENTE,'
      '  COD_EQUIPAMENTO = :COD_EQUIPAMENTO,'
      '  COD_VENDEDOR = :COD_VENDEDOR,'
      '  DTABERT = :DTABERT,'
      '  HRABERT = :HRABERT,'
      '  DTPREV = :DTPREV,'
      '  HRPREV = :HRPREV,'
      '  COD_FUNCIONARIO = :COD_FUNCIONARIO,'
      '  OBSERVACAO = :OBSERVACAO,'
      '  DTENTREGA = :DTENTREGA,'
      '  HRENTREGA = :HRENTREGA,'
      '  NIVELCOMP = :NIVELCOMP,'
      '  PROBREC = :PROBREC,'
      '  SOLUCAO = :SOLUCAO,'
      '  STATUS = :STATUS,'
      '  NUMERO = :NUMERO,'
      '  DESCONTO = :DESCONTO,'
      '  COD_USUARIO = :COD_USUARIO,'
      '  TOTPROD = :TOTPROD,'
      '  TOTSERV = :TOTSERV,'
      '  TOTORD = :TOTORD,'
      '  COD_LOJA = :COD_LOJA,'
      '  MOTIVOPARADA = :MOTIVOPARADA,'
      '  COD_FORMPAG = :COD_FORMPAG,'
      '  LOCALAT = :LOCALAT,'
      '  COMISSAO = :COMISSAO,'
      '  GARANTIA = :GARANTIA,'
      '  TOTDESP = :TOTDESP,'
      '  COMSOBVENDA = :COMSOBVENDA,'
      '  DTFECH = :DTFECH,'
      '  DESCPROD = :DESCPROD,'
      '  DESCSERV = :DESCSERV,'
      '  NUMORC = :NUMORC,'
      '  MOUSE = :MOUSE,'
      '  TECLADO = :TECLADO,'
      '  KITMM = :KITMM,'
      '  CABOS = :CABOS,'
      '  IMPRESSORA = :IMPRESSORA,'
      '  CDRECUPERA = :CDRECUPERA,'
      '  MONITOR = :MONITOR,'
      '  FONES = :FONES,'
      '  ESTADOEQUIP = :ESTADOEQUIP,'
      '  MARK = :MARK,'
      '  FISCO = :FISCO,'
      '  NUMFISCAL = :NUMFISCAL,'
      '  TIPOPAG = :TIPOPAG,'
      '  DOCUMENTOS = :DOCUMENTOS,'
      '  DESKTOP = :DESKTOP,'
      '  EMAILS = :EMAILS,'
      '  OUTROS = :OUTROS,'
      '  DESCBACKUP = :DESCBACKUP,'
      '  COD_TABELAPRECO = :COD_TABELAPRECO,'
      '  BOX = :BOX,'
      '  EXP = :EXP,'
      '  EXPORTADO = :EXPORTADO,'
      '  TOTKM = :TOTKM,'
      '  DESCKM = :DESCKM,'
      '  TOTAJUDANTE = :TOTAJUDANTE,'
      '  DESCAJUDANTE = :DESCAJUDANTE,'
      '  CONTATO = :CONTATO,'
      '  EDIT = :EDIT,'
      '  NUMFISCALAUX = :NUMFISCALAUX,'
      '  TIPO = :TIPO'
      'where'
      '  COD_ORDEM = :OLD_COD_ORDEM')
    InsertSQL.Strings = (
      'insert into ordem'
      
        '  (COD_ORDEM, COD_CLIENTE, COD_EQUIPAMENTO, COD_VENDEDOR, DTABER' +
        'T, HRABERT, '
      
        '   DTPREV, HRPREV, COD_FUNCIONARIO, OBSERVACAO, DTENTREGA, HRENT' +
        'REGA, NIVELCOMP, '
      
        '   PROBREC, SOLUCAO, STATUS, NUMERO, DESCONTO, COD_USUARIO, TOTP' +
        'ROD, TOTSERV, '
      
        '   TOTORD, COD_LOJA, MOTIVOPARADA, COD_FORMPAG, LOCALAT, COMISSA' +
        'O, GARANTIA, '
      
        '   TOTDESP, COMSOBVENDA, DTFECH, DESCPROD, DESCSERV, NUMORC, MOU' +
        'SE, TECLADO, '
      
        '   KITMM, CABOS, IMPRESSORA, CDRECUPERA, MONITOR, FONES, ESTADOE' +
        'QUIP, MARK, '
      
        '   FISCO, NUMFISCAL, TIPOPAG, DOCUMENTOS, DESKTOP, EMAILS, OUTRO' +
        'S, DESCBACKUP, '
      
        '   COD_TABELAPRECO, BOX, EXP, EXPORTADO, TOTKM, DESCKM, TOTAJUDA' +
        'NTE, DESCAJUDANTE, '
      '   CONTATO, EDIT, NUMFISCALAUX, TIPO)'
      'values'
      
        '  (:COD_ORDEM, :COD_CLIENTE, :COD_EQUIPAMENTO, :COD_VENDEDOR, :D' +
        'TABERT, '
      
        '   :HRABERT, :DTPREV, :HRPREV, :COD_FUNCIONARIO, :OBSERVACAO, :D' +
        'TENTREGA, '
      
        '   :HRENTREGA, :NIVELCOMP, :PROBREC, :SOLUCAO, :STATUS, :NUMERO,' +
        ' :DESCONTO, '
      
        '   :COD_USUARIO, :TOTPROD, :TOTSERV, :TOTORD, :COD_LOJA, :MOTIVO' +
        'PARADA, '
      
        '   :COD_FORMPAG, :LOCALAT, :COMISSAO, :GARANTIA, :TOTDESP, :COMS' +
        'OBVENDA, '
      
        '   :DTFECH, :DESCPROD, :DESCSERV, :NUMORC, :MOUSE, :TECLADO, :KI' +
        'TMM, :CABOS, '
      
        '   :IMPRESSORA, :CDRECUPERA, :MONITOR, :FONES, :ESTADOEQUIP, :MA' +
        'RK, :FISCO, '
      
        '   :NUMFISCAL, :TIPOPAG, :DOCUMENTOS, :DESKTOP, :EMAILS, :OUTROS' +
        ', :DESCBACKUP, '
      
        '   :COD_TABELAPRECO, :BOX, :EXP, :EXPORTADO, :TOTKM, :DESCKM, :T' +
        'OTAJUDANTE, '
      '   :DESCAJUDANTE, :CONTATO, :EDIT, :NUMFISCALAUX, :TIPO)')
    DeleteSQL.Strings = (
      'delete from ordem'
      'where'
      '  COD_ORDEM = :OLD_COD_ORDEM')
    Left = 381
    Top = 341
  end
  object TOrd: TIBQuery
    Database = DBExporta
    Transaction = IBTExporta
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from ordem')
    UpdateObject = UOrdem
    GeneratorField.Field = 'COD_ORDEM'
    GeneratorField.Generator = 'GEN_ORDEM_ID'
    Left = 381
    Top = 297
  end
  object DSItensProd: TDataSource
    DataSet = TItensProd
    Left = 445
    Top = 386
  end
  object UItensProd: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      'from itprodord '
      'where'
      '  COD_ITPRODORD = :COD_ITPRODORD')
    ModifySQL.Strings = (
      'update itprodord'
      'set'
      '  COD_ITPRODORD = :COD_ITPRODORD,'
      '  COD_ESTOQUE = :COD_ESTOQUE,'
      '  COD_ORDEM = :COD_ORDEM,'
      '  QTD = :QTD,'
      '  VLRUNIT = :VLRUNIT,'
      '  DESCONTO = :DESCONTO,'
      '  TOTAL = :TOTAL,'
      '  DATA = :DATA,'
      '  COD_FUNCIONARIO = :COD_FUNCIONARIO,'
      '  VALCUSTO = :VALCUSTO,'
      '  COEFDIV = :COEFDIV,'
      '  VALCOMP = :VALCOMP,'
      '  LUCMOE = :LUCMOE,'
      '  LUCPER = :LUCPER,'
      '  VALREP = :VALREP,'
      '  NUMREQ = :NUMREQ,'
      '  QTDRET = :QTDRET,'
      '  COMISSAO = :COMISSAO,'
      '  VLRVENDBD = :VLRVENDBD,'
      '  LUCREL = :LUCREL,'
      '  OPERACAO = :OPERACAO,'
      '  ALIQICMS = :ALIQICMS,'
      '  BASEICMS = :BASEICMS,'
      '  VLRICMS = :VLRICMS,'
      '  BASEICMSSUBS = :BASEICMSSUBS,'
      '  VLRIPI = :VLRIPI,'
      '  ALIQIPI = :ALIQIPI,'
      '  REDUCBASEICMS = :REDUCBASEICMS,'
      '  VLRICMSSUBS = :VLRICMSSUBS,'
      '  DATA_GARANTIA = :DATA_GARANTIA,'
      '  KMGARANTIA = :KMGARANTIA,'
      '  QTDDEV = :QTDDEV,'
      '  VLRUNITDEV = :VLRUNITDEV,'
      '  COD_CST = :COD_CST'
      'where'
      '  COD_ITPRODORD = :OLD_COD_ITPRODORD')
    InsertSQL.Strings = (
      'insert into itprodord'
      
        '  (COD_ITPRODORD, COD_ESTOQUE, COD_ORDEM, QTD, VLRUNIT, DESCONTO' +
        ', TOTAL, '
      
        '   DATA, COD_FUNCIONARIO, VALCUSTO, COEFDIV, VALCOMP, LUCMOE, LU' +
        'CPER, VALREP, '
      
        '   NUMREQ, QTDRET, COMISSAO, VLRVENDBD, LUCREL, OPERACAO, ALIQIC' +
        'MS, BASEICMS, '
      
        '   VLRICMS, BASEICMSSUBS, VLRIPI, ALIQIPI, REDUCBASEICMS, VLRICM' +
        'SSUBS, '
      '   DATA_GARANTIA, KMGARANTIA, QTDDEV, VLRUNITDEV, COD_CST)'
      'values'
      
        '  (:COD_ITPRODORD, :COD_ESTOQUE, :COD_ORDEM, :QTD, :VLRUNIT, :DE' +
        'SCONTO, '
      
        '   :TOTAL, :DATA, :COD_FUNCIONARIO, :VALCUSTO, :COEFDIV, :VALCOM' +
        'P, :LUCMOE, '
      
        '   :LUCPER, :VALREP, :NUMREQ, :QTDRET, :COMISSAO, :VLRVENDBD, :L' +
        'UCREL, '
      
        '   :OPERACAO, :ALIQICMS, :BASEICMS, :VLRICMS, :BASEICMSSUBS, :VL' +
        'RIPI, :ALIQIPI, '
      
        '   :REDUCBASEICMS, :VLRICMSSUBS, :DATA_GARANTIA, :KMGARANTIA, :Q' +
        'TDDEV, '
      '   :VLRUNITDEV, :COD_CST)')
    DeleteSQL.Strings = (
      'delete from itprodord'
      'where'
      '  COD_ITPRODORD = :OLD_COD_ITPRODORD')
    Left = 445
    Top = 341
  end
  object TItensProd: TIBQuery
    Database = DBExporta
    Transaction = IBTExporta
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from itprodord')
    UpdateObject = UItensProd
    GeneratorField.Field = 'COD_ITPRODORD'
    GeneratorField.Generator = 'GEN_ITPRODORD_ID'
    Left = 445
    Top = 297
    object TItensProdCOD_ITPRODORD: TIntegerField
      FieldName = 'COD_ITPRODORD'
      Origin = 'ITPRODORD.COD_ITPRODORD'
    end
    object TItensProdCOD_ESTOQUE: TIntegerField
      FieldName = 'COD_ESTOQUE'
      Origin = 'ITPRODORD.COD_ESTOQUE'
    end
    object TItensProdCOD_ORDEM: TIntegerField
      FieldName = 'COD_ORDEM'
      Origin = 'ITPRODORD.COD_ORDEM'
    end
    object TItensProdQTD: TIBBCDField
      FieldName = 'QTD'
      Origin = 'ITPRODORD.QTD'
      Precision = 18
      Size = 4
    end
    object TItensProdVLRUNIT: TIBBCDField
      FieldName = 'VLRUNIT'
      Origin = 'ITPRODORD.VLRUNIT'
      Precision = 18
      Size = 2
    end
    object TItensProdDESCONTO: TIBBCDField
      FieldName = 'DESCONTO'
      Origin = 'ITPRODORD.DESCONTO'
      Precision = 18
      Size = 2
    end
    object TItensProdTOTAL: TIBBCDField
      FieldName = 'TOTAL'
      Origin = 'ITPRODORD.TOTAL'
      Precision = 18
      Size = 2
    end
    object TItensProdDATA: TDateField
      FieldName = 'DATA'
      Origin = 'ITPRODORD.DATA'
    end
    object TItensProdCOD_FUNCIONARIO: TIntegerField
      FieldName = 'COD_FUNCIONARIO'
      Origin = 'ITPRODORD.COD_FUNCIONARIO'
    end
    object TItensProdVALCUSTO: TIBBCDField
      FieldName = 'VALCUSTO'
      Origin = 'ITPRODORD.VALCUSTO'
      Precision = 18
      Size = 2
    end
    object TItensProdCOEFDIV: TIBBCDField
      FieldName = 'COEFDIV'
      Origin = 'ITPRODORD.COEFDIV'
      Precision = 18
      Size = 2
    end
    object TItensProdVALCOMP: TIBBCDField
      FieldName = 'VALCOMP'
      Origin = 'ITPRODORD.VALCOMP'
      Precision = 18
      Size = 2
    end
    object TItensProdLUCMOE: TIBBCDField
      FieldName = 'LUCMOE'
      Origin = 'ITPRODORD.LUCMOE'
      Precision = 18
      Size = 2
    end
    object TItensProdLUCPER: TIBBCDField
      FieldName = 'LUCPER'
      Origin = 'ITPRODORD.LUCPER'
      Precision = 18
      Size = 2
    end
    object TItensProdVALREP: TIBBCDField
      FieldName = 'VALREP'
      Origin = 'ITPRODORD.VALREP'
      Precision = 18
      Size = 2
    end
    object TItensProdNUMREQ: TIBStringField
      FieldName = 'NUMREQ'
      Origin = 'ITPRODORD.NUMREQ'
      Size = 10
    end
    object TItensProdQTDRET: TIBBCDField
      FieldName = 'QTDRET'
      Origin = 'ITPRODORD.QTDRET'
      Precision = 18
      Size = 4
    end
    object TItensProdCOMISSAO: TIBBCDField
      FieldName = 'COMISSAO'
      Origin = 'ITPRODORD.COMISSAO'
      Precision = 18
      Size = 2
    end
    object TItensProdVLRVENDBD: TIBBCDField
      FieldName = 'VLRVENDBD'
      Origin = 'ITPRODORD.VLRVENDBD'
      Precision = 18
      Size = 2
    end
    object TItensProdLUCREL: TIBBCDField
      FieldName = 'LUCREL'
      Origin = 'ITPRODORD.LUCREL'
      Precision = 18
      Size = 2
    end
    object TItensProdOPERACAO: TIBStringField
      FieldName = 'OPERACAO'
      Origin = 'ITPRODORD.OPERACAO'
      Size = 10
    end
    object TItensProdALIQICMS: TIBBCDField
      FieldName = 'ALIQICMS'
      Origin = 'ITPRODORD.ALIQICMS'
      Precision = 18
      Size = 2
    end
    object TItensProdBASEICMS: TIBBCDField
      FieldName = 'BASEICMS'
      Origin = 'ITPRODORD.BASEICMS'
      Precision = 18
      Size = 2
    end
    object TItensProdVLRICMS: TIBBCDField
      FieldName = 'VLRICMS'
      Origin = 'ITPRODORD.VLRICMS'
      Precision = 18
      Size = 2
    end
    object TItensProdBASEICMSSUBS: TIBBCDField
      FieldName = 'BASEICMSSUBS'
      Origin = 'ITPRODORD.BASEICMSSUBS'
      Precision = 18
      Size = 2
    end
    object TItensProdVLRIPI: TIBBCDField
      FieldName = 'VLRIPI'
      Origin = 'ITPRODORD.VLRIPI'
      Precision = 18
      Size = 2
    end
    object TItensProdALIQIPI: TIBBCDField
      FieldName = 'ALIQIPI'
      Origin = 'ITPRODORD.ALIQIPI'
      Precision = 18
      Size = 2
    end
    object TItensProdREDUCBASEICMS: TIBBCDField
      FieldName = 'REDUCBASEICMS'
      Origin = 'ITPRODORD.REDUCBASEICMS'
      Precision = 18
      Size = 2
    end
    object TItensProdVLRICMSSUBS: TIBBCDField
      FieldName = 'VLRICMSSUBS'
      Origin = 'ITPRODORD.VLRICMSSUBS'
      Precision = 18
      Size = 2
    end
    object TItensProdDATA_GARANTIA: TDateField
      FieldName = 'DATA_GARANTIA'
      Origin = 'ITPRODORD.DATA_GARANTIA'
    end
    object TItensProdKMGARANTIA: TIntegerField
      FieldName = 'KMGARANTIA'
      Origin = 'ITPRODORD.KMGARANTIA'
    end
    object TItensProdQTDDEV: TIBBCDField
      FieldName = 'QTDDEV'
      Origin = 'ITPRODORD.QTDDEV'
      Precision = 18
      Size = 3
    end
    object TItensProdVLRUNITDEV: TIBBCDField
      FieldName = 'VLRUNITDEV'
      Origin = 'ITPRODORD.VLRUNITDEV'
      Precision = 18
      Size = 2
    end
    object TItensProdCOD_CST: TIntegerField
      FieldName = 'COD_CST'
      Origin = 'ITPRODORD.COD_CST'
    end
  end
  object DSItensPDV: TDataSource
    DataSet = TItensPDV
    Left = 509
    Top = 386
  end
  object UItensPDV: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select *'
      'from itenspedven '
      'where'
      '  COD_ITENSPEDVEN = :COD_ITENSPEDVEN')
    ModifySQL.Strings = (
      'update itenspedven'
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
      '  MVADESTINO = :MVADESTINO'
      'where'
      '  COD_ITENSPEDVEN = :OLD_COD_ITENSPEDVEN')
    InsertSQL.Strings = (
      'insert into itenspedven'
      
        '  (COD_ITENSPEDVEN, COD_PEDVEN, COD_ESTOQUE, QTDEPROD, DESCPRO, ' +
        'COD_FUNCIONARIO, '
      
        '   VALUNIT, VALCUSTO, VALORTOTAL, ATUEST, VALREP, COEFDIV, VALCO' +
        'MP, LUCPER, '
      
        '   LUCMOE, DATA, COMISSAO, OPERACAO, LUCREL, VLRVENDBD, QTDDEV, ' +
        'NUMITEM, '
      
        '   COD_LOTE, ALIQICMS, BASEICMS, VLRICMS, BASEICMSSUBS, VLRIPI, ' +
        'ALIQIPI, '
      
        '   REDUCBASEICMS, VLRICMSSUBS, VLRUNITDEV, QTDENTREGUE, COD_UNID' +
        'ADE, QTDEMB, '
      
        '   UNIDEMB, QTDNAEMB, CFOP, TIPOLISTA, IPNPMC, IPNMVA, MVADESTIN' +
        'O)'
      'values'
      
        '  (:COD_ITENSPEDVEN, :COD_PEDVEN, :COD_ESTOQUE, :QTDEPROD, :DESC' +
        'PRO, :COD_FUNCIONARIO, '
      
        '   :VALUNIT, :VALCUSTO, :VALORTOTAL, :ATUEST, :VALREP, :COEFDIV,' +
        ' :VALCOMP, '
      
        '   :LUCPER, :LUCMOE, :DATA, :COMISSAO, :OPERACAO, :LUCREL, :VLRV' +
        'ENDBD, '
      
        '   :QTDDEV, :NUMITEM, :COD_LOTE, :ALIQICMS, :BASEICMS, :VLRICMS,' +
        ' :BASEICMSSUBS, '
      
        '   :VLRIPI, :ALIQIPI, :REDUCBASEICMS, :VLRICMSSUBS, :VLRUNITDEV,' +
        ' :QTDENTREGUE, '
      
        '   :COD_UNIDADE, :QTDEMB, :UNIDEMB, :QTDNAEMB, :CFOP, :TIPOLISTA' +
        ', :IPNPMC, '
      '   :IPNMVA, :MVADESTINO)')
    DeleteSQL.Strings = (
      'delete from itenspedven'
      'where'
      '  COD_ITENSPEDVEN = :OLD_COD_ITENSPEDVEN')
    Left = 509
    Top = 341
  end
  object TItensPDV: TIBQuery
    Database = DBExporta
    Transaction = IBTExporta
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from itenspedven')
    UpdateObject = UItensPDV
    GeneratorField.Field = 'COD_ITENSPEDVEN'
    GeneratorField.Generator = 'GEN_ITENSPEDVEN_ID'
    Left = 509
    Top = 297
  end
  object DSFuncionario: TDataSource
    DataSet = TFuncionario
    Left = 573
    Top = 386
  end
  object UFuncionario: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select *'
      'from funcionario '
      'where'
      '  COD_FUNC = :COD_FUNC')
    ModifySQL.Strings = (
      'update funcionario'
      'set'
      '  COD_FUNC = :COD_FUNC,'
      '  COD_PESSOA = :COD_PESSOA,'
      '  COD_INTERNO = :COD_INTERNO,'
      '  DATA_CAD = :DATA_CAD,'
      '  DATA_ADMIS = :DATA_ADMIS,'
      '  DATA_DEMIS = :DATA_DEMIS,'
      '  NUM_CTPS = :NUM_CTPS,'
      '  SER_CTPS = :SER_CTPS,'
      '  NUM_PIS = :NUM_PIS,'
      '  TERCEIRO = :TERCEIRO,'
      '  PALM = :PALM,'
      '  NUMPALM = :NUMPALM,'
      '  COD_SERVICO = :COD_SERVICO,'
      '  MARK = :MARK,'
      '  ATIVO = :ATIVO'
      'where'
      '  COD_FUNC = :OLD_COD_FUNC')
    InsertSQL.Strings = (
      'insert into funcionario'
      
        '  (COD_FUNC, COD_PESSOA, COD_INTERNO, DATA_CAD, DATA_ADMIS, DATA' +
        '_DEMIS, '
      
        '   NUM_CTPS, SER_CTPS, NUM_PIS, TERCEIRO, PALM, NUMPALM, COD_SER' +
        'VICO, MARK, '
      '   ATIVO)'
      'values'
      
        '  (:COD_FUNC, :COD_PESSOA, :COD_INTERNO, :DATA_CAD, :DATA_ADMIS,' +
        ' :DATA_DEMIS, '
      
        '   :NUM_CTPS, :SER_CTPS, :NUM_PIS, :TERCEIRO, :PALM, :NUMPALM, :' +
        'COD_SERVICO, '
      '   :MARK, :ATIVO)')
    DeleteSQL.Strings = (
      'delete from funcionario'
      'where'
      '  COD_FUNC = :OLD_COD_FUNC')
    Left = 573
    Top = 344
  end
  object TFuncionario: TIBQuery
    Database = DBExporta
    Transaction = IBTExporta
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from funcionario')
    UpdateObject = UFuncionario
    GeneratorField.Field = 'COD_FORNEC'
    Left = 573
    Top = 297
  end
  object DSFunCargo: TDataSource
    DataSet = TFunCargo
    Left = 637
    Top = 386
  end
  object UFunCargo: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select *'
      'from funcargo '
      'where'
      '  COD_FUNCARGO = :COD_FUNCARGO')
    ModifySQL.Strings = (
      'update funcargo'
      'set'
      '  COD_FUNCARGO = :COD_FUNCARGO,'
      '  COD_CARGO = :COD_CARGO,'
      '  COD_FUNCIONARIO = :COD_FUNCIONARIO,'
      '  COMISSAO_VVPRO = :COMISSAO_VVPRO,'
      '  COMISSAO_VPPRO = :COMISSAO_VPPRO,'
      '  COMISSAO_VVSER = :COMISSAO_VVSER,'
      '  COMISSAO_VPSER = :COMISSAO_VPSER'
      'where'
      '  COD_FUNCARGO = :OLD_COD_FUNCARGO')
    InsertSQL.Strings = (
      'insert into funcargo'
      
        '  (COD_FUNCARGO, COD_CARGO, COD_FUNCIONARIO, COMISSAO_VVPRO, COM' +
        'ISSAO_VPPRO, '
      '   COMISSAO_VVSER, COMISSAO_VPSER)'
      'values'
      
        '  (:COD_FUNCARGO, :COD_CARGO, :COD_FUNCIONARIO, :COMISSAO_VVPRO,' +
        ' :COMISSAO_VPPRO, '
      '   :COMISSAO_VVSER, :COMISSAO_VPSER)')
    DeleteSQL.Strings = (
      'delete from funcargo'
      'where'
      '  COD_FUNCARGO = :OLD_COD_FUNCARGO')
    Left = 637
    Top = 341
  end
  object TFunCargo: TIBQuery
    Database = DBExporta
    Transaction = IBTExporta
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from funcargo')
    UpdateObject = UFunCargo
    GeneratorField.Field = 'COD_FORNEC'
    Left = 637
    Top = 297
    object TFunCargoCOD_FUNCARGO: TIntegerField
      FieldName = 'COD_FUNCARGO'
      Origin = 'FUNCARGO.COD_FUNCARGO'
      Required = True
    end
    object TFunCargoCOD_CARGO: TIntegerField
      FieldName = 'COD_CARGO'
      Origin = 'FUNCARGO.COD_CARGO'
    end
    object TFunCargoCOD_FUNCIONARIO: TIntegerField
      FieldName = 'COD_FUNCIONARIO'
      Origin = 'FUNCARGO.COD_FUNCIONARIO'
    end
    object TFunCargoCOMISSAO_VVPRO: TFloatField
      FieldName = 'COMISSAO_VVPRO'
      Origin = 'FUNCARGO.COMISSAO_VVPRO'
    end
    object TFunCargoCOMISSAO_VPPRO: TFloatField
      FieldName = 'COMISSAO_VPPRO'
      Origin = 'FUNCARGO.COMISSAO_VPPRO'
    end
    object TFunCargoCOMISSAO_VVSER: TFloatField
      FieldName = 'COMISSAO_VVSER'
      Origin = 'FUNCARGO.COMISSAO_VVSER'
    end
    object TFunCargoCOMISSAO_VPSER: TFloatField
      FieldName = 'COMISSAO_VPSER'
      Origin = 'FUNCARGO.COMISSAO_VPSER'
    end
  end
  object DSCARGO: TDataSource
    DataSet = TCARGO
    Left = 381
    Top = 570
  end
  object UCARGO: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select * '
      'from cargo '
      'where'
      '  COD_CARGO = :COD_CARGO')
    ModifySQL.Strings = (
      'update cargo'
      'set'
      '  COD_CARGO = :COD_CARGO,'
      '  DESCRICAO = :DESCRICAO'
      'where'
      '  COD_CARGO = :OLD_COD_CARGO')
    InsertSQL.Strings = (
      'insert into cargo'
      '  (COD_CARGO, DESCRICAO)'
      'values'
      '  (:COD_CARGO, :DESCRICAO)')
    DeleteSQL.Strings = (
      'delete from cargo'
      'where'
      '  COD_CARGO = :OLD_COD_CARGO')
    Left = 381
    Top = 525
  end
  object TCARGO: TIBQuery
    Database = DBExporta
    Transaction = IBTExporta
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from cargo')
    UpdateObject = UCARGO
    GeneratorField.Field = 'COD_FORNEC'
    Left = 381
    Top = 481
    object TCARGOCOD_CARGO: TIntegerField
      FieldName = 'COD_CARGO'
      Origin = 'CARGO.COD_CARGO'
      Required = True
    end
    object TCARGODESCRICAO: TIBStringField
      FieldName = 'DESCRICAO'
      Origin = 'CARGO.DESCRICAO'
      Size = 100
    end
  end
  object DSCidade: TDataSource
    DataSet = TCidade
    Left = 445
    Top = 570
  end
  object UCidade: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select *'
      'from cidade '
      'where'
      '  COD_CIDADE = :COD_CIDADE')
    ModifySQL.Strings = (
      'update cidade'
      'set'
      '  COD_CIDADE = :COD_CIDADE,'
      '  NOME = :NOME,'
      '  DDD = :DDD,'
      '  COD_ESTADO = :COD_ESTADO,'
      '  COD_REGIAO = :COD_REGIAO,'
      '  COD_IBGE = :COD_IBGE,'
      '  COD_FEDERAL = :COD_FEDERAL'
      'where'
      '  COD_CIDADE = :OLD_COD_CIDADE')
    InsertSQL.Strings = (
      'insert into cidade'
      
        '  (COD_CIDADE, NOME, DDD, COD_ESTADO, COD_REGIAO, COD_IBGE, COD_' +
        'FEDERAL)'
      'values'
      
        '  (:COD_CIDADE, :NOME, :DDD, :COD_ESTADO, :COD_REGIAO, :COD_IBGE' +
        ', :COD_FEDERAL)')
    DeleteSQL.Strings = (
      'delete from cidade'
      'where'
      '  COD_CIDADE = :OLD_COD_CIDADE')
    Left = 445
    Top = 525
  end
  object TCidade: TIBQuery
    Database = DBExporta
    Transaction = IBTExporta
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from cidade')
    UpdateObject = UCidade
    GeneratorField.Field = 'COD_FORNEC'
    Left = 445
    Top = 481
  end
  object DSCliente: TDataSource
    DataSet = TCliente
    Left = 499
    Top = 209
  end
  object UCliente: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select * '
      'from cliente '
      'where'
      '  COD_CLIENTE = :COD_CLIENTE')
    ModifySQL.Strings = (
      'update cliente'
      'set'
      '  COD_CLIENTE = :COD_CLIENTE,'
      '  COD_PESSOA = :COD_PESSOA,'
      '  COD_INTERNO = :COD_INTERNO,'
      '  DATA_CAD = :DATA_CAD,'
      '  R_SAL_CONJ = :R_SAL_CONJ,'
      '  R_SALARIO = :R_SALARIO,'
      '  R_HON_PROF = :R_HON_PROF,'
      '  R_OUTREC = :R_OUTREC,'
      '  D_ALUGUEL = :D_ALUGUEL,'
      '  D_RESIDENCIA = :D_RESIDENCIA,'
      '  D_VEICULO = :D_VEICULO,'
      '  D_FAMILIAR = :D_FAMILIAR,'
      '  D_OUTDESP = :D_OUTDESP,'
      '  LIM_CRED = :LIM_CRED,'
      '  QTDTEMPORESID = :QTDTEMPORESID,'
      '  BENS = :BENS,'
      '  COD_VENDEDOR = :COD_VENDEDOR,'
      '  INFOCOM = :INFOCOM,'
      '  ENDENTRAGA = :ENDENTRAGA,'
      '  ATUALIZAR = :ATUALIZAR,'
      '  COD_USUARIO = :COD_USUARIO,'
      '  ATIVO = :ATIVO,'
      '  CREDENCIAL = :CREDENCIAL,'
      '  RAMOATIV = :RAMOATIV,'
      '  ATACADISTA = :ATACADISTA,'
      '  COD_FORMPAG = :COD_FORMPAG,'
      '  EXPORT = :EXPORT,'
      '  SEPARAR = :SEPARAR,'
      '  MULTA = :MULTA,'
      '  JURO = :JURO,'
      '  OBS = :OBS,'
      '  SCPC = :SCPC,'
      '  TAMANHO = :TAMANHO,'
      '  COD_CLIENTEPALM = :COD_CLIENTEPALM,'
      '  INFORMACAO = :INFORMACAO,'
      '  DIAVENCIMENTO = :DIAVENCIMENTO,'
      '  COD_TABPRECO = :COD_TABPRECO,'
      '  CONTRIBICMS = :CONTRIBICMS,'
      '  MARKREL = :MARKREL,'
      '  SUFRAMA = :SUFRAMA,'
      '  AUTORIZADOS = :AUTORIZADOS'
      'where'
      '  COD_CLIENTE = :OLD_COD_CLIENTE')
    InsertSQL.Strings = (
      'insert into cliente'
      
        '  (COD_CLIENTE, COD_PESSOA, COD_INTERNO, DATA_CAD, R_SAL_CONJ, R' +
        '_SALARIO, '
      
        '   R_HON_PROF, R_OUTREC, D_ALUGUEL, D_RESIDENCIA, D_VEICULO, D_F' +
        'AMILIAR, '
      
        '   D_OUTDESP, LIM_CRED, QTDTEMPORESID, BENS, COD_VENDEDOR, INFOC' +
        'OM, ENDENTRAGA, '
      
        '   ATUALIZAR, COD_USUARIO, ATIVO, CREDENCIAL, RAMOATIV, ATACADIS' +
        'TA, COD_FORMPAG, '
      
        '   EXPORT, SEPARAR, MULTA, JURO, OBS, SCPC, TAMANHO, COD_CLIENTE' +
        'PALM, INFORMACAO, '
      
        '   DIAVENCIMENTO, COD_TABPRECO, CONTRIBICMS, MARKREL, SUFRAMA, A' +
        'UTORIZADOS)'
      'values'
      
        '  (:COD_CLIENTE, :COD_PESSOA, :COD_INTERNO, :DATA_CAD, :R_SAL_CO' +
        'NJ, :R_SALARIO, '
      
        '   :R_HON_PROF, :R_OUTREC, :D_ALUGUEL, :D_RESIDENCIA, :D_VEICULO' +
        ', :D_FAMILIAR, '
      
        '   :D_OUTDESP, :LIM_CRED, :QTDTEMPORESID, :BENS, :COD_VENDEDOR, ' +
        ':INFOCOM, '
      
        '   :ENDENTRAGA, :ATUALIZAR, :COD_USUARIO, :ATIVO, :CREDENCIAL, :' +
        'RAMOATIV, '
      
        '   :ATACADISTA, :COD_FORMPAG, :EXPORT, :SEPARAR, :MULTA, :JURO, ' +
        ':OBS, :SCPC, '
      
        '   :TAMANHO, :COD_CLIENTEPALM, :INFORMACAO, :DIAVENCIMENTO, :COD' +
        '_TABPRECO, '
      '   :CONTRIBICMS, :MARKREL, :SUFRAMA, :AUTORIZADOS)')
    DeleteSQL.Strings = (
      'delete from cliente'
      'where'
      '  COD_CLIENTE = :OLD_COD_CLIENTE')
    Left = 499
    Top = 164
  end
  object TCliente: TIBQuery
    Database = DBExporta
    Transaction = IBTExporta
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from cliente')
    UpdateObject = UCliente
    GeneratorField.Field = 'COD_FORNEC'
    Left = 499
    Top = 120
  end
  object DSEstado: TDataSource
    DataSet = TEstado
    Left = 509
    Top = 570
  end
  object UEstado: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select *'
      'from estado '
      'where'
      '  COD_ESTADO = :COD_ESTADO')
    ModifySQL.Strings = (
      'update estado'
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
      '  ISENTOST = :ISENTOST'
      'where'
      '  COD_ESTADO = :OLD_COD_ESTADO')
    InsertSQL.Strings = (
      'insert into estado'
      
        '  (COD_ESTADO, DESCRICAO, UF_ESTADO, COD_REGIAO, CST_INTERNA, CS' +
        'T_EXTERNA, '
      
        '   TXT_SUBSTITUICAO, ALIQINTERNA, ALIQINTERESTAUAL, MVA, ISENTOS' +
        'T)'
      'values'
      
        '  (:COD_ESTADO, :DESCRICAO, :UF_ESTADO, :COD_REGIAO, :CST_INTERN' +
        'A, :CST_EXTERNA, '
      
        '   :TXT_SUBSTITUICAO, :ALIQINTERNA, :ALIQINTERESTAUAL, :MVA, :IS' +
        'ENTOST)')
    DeleteSQL.Strings = (
      'delete from estado'
      'where'
      '  COD_ESTADO = :OLD_COD_ESTADO')
    Left = 509
    Top = 525
  end
  object TEstado: TIBQuery
    Database = DBExporta
    Transaction = IBTExporta
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from estado')
    UpdateObject = UEstado
    GeneratorField.Field = 'COD_FORNEC'
    Left = 509
    Top = 481
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
    object TEstadoTXT_SUBSTITUICAO: TIBStringField
      FieldName = 'TXT_SUBSTITUICAO'
      Origin = 'ESTADO.TXT_SUBSTITUICAO'
      Size = 100
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
    object TEstadoISENTOST: TIBStringField
      FieldName = 'ISENTOST'
      Origin = 'ESTADO.ISENTOST'
      FixedChar = True
      Size = 1
    end
  end
  object TItensServ: TIBQuery
    Database = DBExporta
    Transaction = IBTExporta
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from ITSERVORD')
    UpdateObject = UItensServ
    Left = 632
    Top = 480
    object TItensServCOD_ITSERVORD: TIntegerField
      FieldName = 'COD_ITSERVORD'
      Origin = 'ITSERVORD.COD_ITSERVORD'
    end
    object TItensServCOD_SERVICO: TIntegerField
      FieldName = 'COD_SERVICO'
      Origin = 'ITSERVORD.COD_SERVICO'
    end
    object TItensServCOD_ORDEM: TIntegerField
      FieldName = 'COD_ORDEM'
      Origin = 'ITSERVORD.COD_ORDEM'
    end
    object TItensServQTD: TIBStringField
      FieldName = 'QTD'
      Origin = 'ITSERVORD.QTD'
      Size = 15
    end
    object TItensServVLRUNIT: TIBBCDField
      FieldName = 'VLRUNIT'
      Origin = 'ITSERVORD.VLRUNIT'
      Precision = 18
      Size = 2
    end
    object TItensServDESCONTO: TIBBCDField
      FieldName = 'DESCONTO'
      Origin = 'ITSERVORD.DESCONTO'
      Precision = 18
      Size = 2
    end
    object TItensServTOTAL: TIBBCDField
      FieldName = 'TOTAL'
      Origin = 'ITSERVORD.TOTAL'
      Precision = 18
      Size = 2
    end
    object TItensServCOD_FUNCIONARIO: TIntegerField
      FieldName = 'COD_FUNCIONARIO'
      Origin = 'ITSERVORD.COD_FUNCIONARIO'
    end
    object TItensServDATA: TDateField
      FieldName = 'DATA'
      Origin = 'ITSERVORD.DATA'
    end
    object TItensServVLRUNITCUSTO: TIBBCDField
      FieldName = 'VLRUNITCUSTO'
      Origin = 'ITSERVORD.VLRUNITCUSTO'
      Precision = 18
      Size = 2
    end
    object TItensServTOTENCARGO: TIBBCDField
      FieldName = 'TOTENCARGO'
      Origin = 'ITSERVORD.TOTENCARGO'
      Precision = 18
      Size = 2
    end
    object TItensServLUCMOE: TIBBCDField
      FieldName = 'LUCMOE'
      Origin = 'ITSERVORD.LUCMOE'
      Precision = 18
      Size = 2
    end
    object TItensServLUCPER: TIBBCDField
      FieldName = 'LUCPER'
      Origin = 'ITSERVORD.LUCPER'
      Precision = 18
      Size = 2
    end
    object TItensServCOMISSAO: TIBBCDField
      FieldName = 'COMISSAO'
      Origin = 'ITSERVORD.COMISSAO'
      Precision = 18
      Size = 2
    end
    object TItensServOUTROS: TIBBCDField
      FieldName = 'OUTROS'
      Origin = 'ITSERVORD.OUTROS'
      Precision = 18
      Size = 2
    end
    object TItensServISSQN: TIBBCDField
      FieldName = 'ISSQN'
      Origin = 'ITSERVORD.ISSQN'
      Precision = 18
      Size = 2
    end
    object TItensServINSS: TIBBCDField
      FieldName = 'INSS'
      Origin = 'ITSERVORD.INSS'
      Precision = 18
      Size = 2
    end
    object TItensServCOFINS: TIBBCDField
      FieldName = 'COFINS'
      Origin = 'ITSERVORD.COFINS'
      Precision = 18
      Size = 2
    end
    object TItensServIR: TIBBCDField
      FieldName = 'IR'
      Origin = 'ITSERVORD.IR'
      Precision = 18
      Size = 2
    end
    object TItensServCONTSOC: TIBBCDField
      FieldName = 'CONTSOC'
      Origin = 'ITSERVORD.CONTSOC'
      Precision = 18
      Size = 2
    end
    object TItensServPIS: TIBBCDField
      FieldName = 'PIS'
      Origin = 'ITSERVORD.PIS'
      Precision = 18
      Size = 2
    end
    object TItensServOBS: TIBStringField
      FieldName = 'OBS'
      Origin = 'ITSERVORD.OBS'
      Size = 40
    end
    object TItensServTAMANHO: TIBBCDField
      FieldName = 'TAMANHO'
      Origin = 'ITSERVORD.TAMANHO'
      Precision = 18
      Size = 3
    end
  end
  object UItensServ: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  COD_ITSERVORD,'
      '  COD_SERVICO,'
      '  COD_ORDEM,'
      '  QTD,'
      '  VLRUNIT,'
      '  DESCONTO,'
      '  TOTAL,'
      '  COD_FUNCIONARIO,'
      '  DATA,'
      '  VLRUNITCUSTO,'
      '  TOTENCARGO,'
      '  LUCMOE,'
      '  LUCPER,'
      '  COMISSAO,'
      '  OUTROS,'
      '  ISSQN,'
      '  INSS,'
      '  COFINS,'
      '  IR,'
      '  CONTSOC,'
      '  PIS,'
      '  OBS,'
      '  TAMANHO'
      'from ITSERVORD '
      'where'
      '  COD_ITSERVORD = :COD_ITSERVORD')
    ModifySQL.Strings = (
      'update ITSERVORD'
      'set'
      '  COD_ITSERVORD = :COD_ITSERVORD,'
      '  COD_SERVICO = :COD_SERVICO,'
      '  COD_ORDEM = :COD_ORDEM,'
      '  QTD = :QTD,'
      '  VLRUNIT = :VLRUNIT,'
      '  DESCONTO = :DESCONTO,'
      '  TOTAL = :TOTAL,'
      '  COD_FUNCIONARIO = :COD_FUNCIONARIO,'
      '  DATA = :DATA,'
      '  VLRUNITCUSTO = :VLRUNITCUSTO,'
      '  TOTENCARGO = :TOTENCARGO,'
      '  LUCMOE = :LUCMOE,'
      '  LUCPER = :LUCPER,'
      '  COMISSAO = :COMISSAO,'
      '  OUTROS = :OUTROS,'
      '  ISSQN = :ISSQN,'
      '  INSS = :INSS,'
      '  COFINS = :COFINS,'
      '  IR = :IR,'
      '  CONTSOC = :CONTSOC,'
      '  PIS = :PIS,'
      '  OBS = :OBS,'
      '  TAMANHO = :TAMANHO'
      'where'
      '  COD_ITSERVORD = :OLD_COD_ITSERVORD')
    InsertSQL.Strings = (
      'insert into ITSERVORD'
      
        '  (COD_ITSERVORD, COD_SERVICO, COD_ORDEM, QTD, VLRUNIT, DESCONTO' +
        ', TOTAL, '
      
        '   COD_FUNCIONARIO, DATA, VLRUNITCUSTO, TOTENCARGO, LUCMOE, LUCP' +
        'ER, COMISSAO, '
      '   OUTROS, ISSQN, INSS, COFINS, IR, CONTSOC, PIS, OBS, TAMANHO)'
      'values'
      
        '  (:COD_ITSERVORD, :COD_SERVICO, :COD_ORDEM, :QTD, :VLRUNIT, :DE' +
        'SCONTO, '
      
        '   :TOTAL, :COD_FUNCIONARIO, :DATA, :VLRUNITCUSTO, :TOTENCARGO, ' +
        ':LUCMOE, '
      
        '   :LUCPER, :COMISSAO, :OUTROS, :ISSQN, :INSS, :COFINS, :IR, :CO' +
        'NTSOC, '
      '   :PIS, :OBS, :TAMANHO)')
    DeleteSQL.Strings = (
      'delete from ITSERVORD'
      'where'
      '  COD_ITSERVORD = :OLD_COD_ITSERVORD')
    Left = 632
    Top = 524
  end
  object DSItensServ: TDataSource
    DataSet = TItensServ
    Left = 636
    Top = 568
  end
  object TDesp: TIBQuery
    Database = DBExporta
    Transaction = IBTExporta
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from DESPADIC')
    UpdateObject = UDesp
    GeneratorField.Field = 'COD_DESPADIC'
    GeneratorField.Generator = 'GEN_DESPADIC_ID'
    Left = 744
    Top = 120
    object TDespCOD_DESPADIC: TIntegerField
      FieldName = 'COD_DESPADIC'
      Origin = 'DESPADIC.COD_DESPADIC'
    end
    object TDespCOD_GERADOR: TIntegerField
      FieldName = 'COD_GERADOR'
      Origin = 'DESPADIC.COD_GERADOR'
    end
    object TDespGERADOR: TIBStringField
      FieldName = 'GERADOR'
      Origin = 'DESPADIC.GERADOR'
      Size = 10
    end
    object TDespDESPESA: TIBStringField
      FieldName = 'DESPESA'
      Origin = 'DESPADIC.DESPESA'
      Size = 40
    end
    object TDespQTD: TIBBCDField
      FieldName = 'QTD'
      Origin = 'DESPADIC.QTD'
      Precision = 18
      Size = 3
    end
    object TDespVLRREAL: TIBBCDField
      FieldName = 'VLRREAL'
      Origin = 'DESPADIC.VLRREAL'
      Precision = 18
      Size = 2
    end
    object TDespVLRFINAL: TIBBCDField
      FieldName = 'VLRFINAL'
      Origin = 'DESPADIC.VLRFINAL'
      Precision = 18
      Size = 2
    end
    object TDespLUCMOE: TIBBCDField
      FieldName = 'LUCMOE'
      Origin = 'DESPADIC.LUCMOE'
      Precision = 18
      Size = 2
    end
    object TDespLUCPER: TIBBCDField
      FieldName = 'LUCPER'
      Origin = 'DESPADIC.LUCPER'
      Precision = 18
      Size = 2
    end
    object TDespVLRTOTFIN: TIBBCDField
      FieldName = 'VLRTOTFIN'
      Origin = 'DESPADIC.VLRTOTFIN'
      Precision = 18
      Size = 2
    end
    object TDespDESCONTO: TIBBCDField
      FieldName = 'DESCONTO'
      Origin = 'DESPADIC.DESCONTO'
      Precision = 4
      Size = 2
    end
    object TDespMARCA: TIBStringField
      FieldName = 'MARCA'
      Origin = 'DESPADIC.MARCA'
      Size = 40
    end
    object TDespUNIDADE: TIBStringField
      FieldName = 'UNIDADE'
      Origin = 'DESPADIC.UNIDADE'
      FixedChar = True
      Size = 2
    end
    object TDespCOD_EQUIPE: TIntegerField
      FieldName = 'COD_EQUIPE'
      Origin = 'DESPADIC.COD_EQUIPE'
    end
    object TDespCOD_FUNCIONARIO: TIntegerField
      FieldName = 'COD_FUNCIONARIO'
      Origin = 'DESPADIC.COD_FUNCIONARIO'
    end
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
      '  COD_FUNCIONARIO'
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
      '  COD_FUNCIONARIO = :COD_FUNCIONARIO'
      'where'
      '  COD_DESPADIC = :OLD_COD_DESPADIC')
    InsertSQL.Strings = (
      'insert into DESPADIC'
      
        '  (COD_DESPADIC, COD_GERADOR, GERADOR, DESPESA, QTD, VLRREAL, VL' +
        'RFINAL, '
      
        '   LUCMOE, LUCPER, VLRTOTFIN, DESCONTO, MARCA, UNIDADE, COD_EQUI' +
        'PE, COD_FUNCIONARIO)'
      'values'
      
        '  (:COD_DESPADIC, :COD_GERADOR, :GERADOR, :DESPESA, :QTD, :VLRRE' +
        'AL, :VLRFINAL, '
      
        '   :LUCMOE, :LUCPER, :VLRTOTFIN, :DESCONTO, :MARCA, :UNIDADE, :C' +
        'OD_EQUIPE, '
      '   :COD_FUNCIONARIO)')
    DeleteSQL.Strings = (
      'delete from DESPADIC'
      'where'
      '  COD_DESPADIC = :OLD_COD_DESPADIC')
    Left = 744
    Top = 165
  end
  object DsDesp: TDataSource
    DataSet = TDesp
    Left = 744
    Top = 208
  end
  object TEquipe: TIBQuery
    Database = DBExporta
    Transaction = IBTExporta
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from EQUIPE')
    UpdateObject = UEquipe
    Left = 688
    Top = 296
    object TEquipeCOD_EQUIPE: TIntegerField
      FieldName = 'COD_EQUIPE'
      Origin = 'EQUIPE.COD_EQUIPE'
      Required = True
    end
    object TEquipeDESCRICAO: TIBStringField
      FieldName = 'DESCRICAO'
      Origin = 'EQUIPE.DESCRICAO'
      Size = 40
    end
    object TEquipeCOD_RESPONSAVEL: TIntegerField
      FieldName = 'COD_RESPONSAVEL'
      Origin = 'EQUIPE.COD_RESPONSAVEL'
    end
    object TEquipeOBSERVACAO: TMemoField
      FieldName = 'OBSERVACAO'
      Origin = 'EQUIPE.OBSERVACAO'
      BlobType = ftMemo
      Size = 8
    end
  end
  object UEquipe: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  COD_EQUIPE,'
      '  DESCRICAO,'
      '  COD_RESPONSAVEL,'
      '  OBSERVACAO'
      'from EQUIPE '
      'where'
      '  COD_EQUIPE = :COD_EQUIPE')
    ModifySQL.Strings = (
      'update EQUIPE'
      'set'
      '  COD_EQUIPE = :COD_EQUIPE,'
      '  DESCRICAO = :DESCRICAO,'
      '  COD_RESPONSAVEL = :COD_RESPONSAVEL,'
      '  OBSERVACAO = :OBSERVACAO'
      'where'
      '  COD_EQUIPE = :OLD_COD_EQUIPE')
    InsertSQL.Strings = (
      'insert into EQUIPE'
      '  (COD_EQUIPE, DESCRICAO, COD_RESPONSAVEL, OBSERVACAO)'
      'values'
      '  (:COD_EQUIPE, :DESCRICAO, :COD_RESPONSAVEL, :OBSERVACAO)')
    DeleteSQL.Strings = (
      'delete from EQUIPE'
      'where'
      '  COD_EQUIPE = :OLD_COD_EQUIPE')
    Left = 688
    Top = 342
  end
  object DSEquipe: TDataSource
    DataSet = TEquipe
    Left = 688
    Top = 384
  end
  object TFunEquipe: TIBQuery
    Database = DBExporta
    Transaction = IBTExporta
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from funequipe'
      '')
    UpdateObject = UFunEquipe
    Left = 696
    Top = 480
    object TFunEquipeCOD_FUNEQUIPE: TIntegerField
      FieldName = 'COD_FUNEQUIPE'
      Origin = 'FUNEQUIPE.COD_FUNEQUIPE'
      Required = True
    end
    object TFunEquipeCOD_FUNCIONARIO: TIntegerField
      FieldName = 'COD_FUNCIONARIO'
      Origin = 'FUNEQUIPE.COD_FUNCIONARIO'
    end
    object TFunEquipeCOD_EQUIPE: TIntegerField
      FieldName = 'COD_EQUIPE'
      Origin = 'FUNEQUIPE.COD_EQUIPE'
    end
  end
  object UFunEquipe: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  COD_FUNEQUIPE,'
      '  COD_FUNCIONARIO,'
      '  COD_EQUIPE'
      'from FUNEQUIPE '
      'where'
      '  COD_FUNEQUIPE = :COD_FUNEQUIPE')
    ModifySQL.Strings = (
      'update FUNEQUIPE'
      'set'
      '  COD_FUNEQUIPE = :COD_FUNEQUIPE,'
      '  COD_FUNCIONARIO = :COD_FUNCIONARIO,'
      '  COD_EQUIPE = :COD_EQUIPE'
      'where'
      '  COD_FUNEQUIPE = :OLD_COD_FUNEQUIPE')
    InsertSQL.Strings = (
      'insert into FUNEQUIPE'
      '  (COD_FUNEQUIPE, COD_FUNCIONARIO, COD_EQUIPE)'
      'values'
      '  (:COD_FUNEQUIPE, :COD_FUNCIONARIO, :COD_EQUIPE)')
    DeleteSQL.Strings = (
      'delete from FUNEQUIPE'
      'where'
      '  COD_FUNEQUIPE = :OLD_COD_FUNEQUIPE')
    Left = 697
    Top = 524
  end
  object DSFunEquipe: TDataSource
    DataSet = TFunEquipe
    Left = 702
    Top = 568
  end
  object TEquip: TIBQuery
    Database = DBExporta
    Transaction = IBTExporta
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from EQUIPAMENTO')
    UpdateObject = UEquip
    GeneratorField.Field = 'COD_FUNC'
    Left = 288
    Top = 295
    object TEquipCOD_EQUIPAMENTO: TIntegerField
      FieldName = 'COD_EQUIPAMENTO'
      Origin = 'EQUIPAMENTO.COD_EQUIPAMENTO'
    end
    object TEquipCOD_CLIENTE: TIntegerField
      FieldName = 'COD_CLIENTE'
      Origin = 'EQUIPAMENTO.COD_CLIENTE'
    end
    object TEquipDESCRICAO: TIBStringField
      FieldName = 'DESCRICAO'
      Origin = 'EQUIPAMENTO.DESCRICAO'
      Size = 40
    end
    object TEquipMARCA: TIBStringField
      FieldName = 'MARCA'
      Origin = 'EQUIPAMENTO.MARCA'
      Size = 25
    end
    object TEquipMODELO: TIBStringField
      FieldName = 'MODELO'
      Origin = 'EQUIPAMENTO.MODELO'
      Size = 25
    end
    object TEquipANO: TIBStringField
      FieldName = 'ANO'
      Origin = 'EQUIPAMENTO.ANO'
      Size = 10
    end
    object TEquipCOR: TIBStringField
      FieldName = 'COR'
      Origin = 'EQUIPAMENTO.COR'
      Size = 15
    end
    object TEquipCHASSI: TIBStringField
      FieldName = 'CHASSI'
      Origin = 'EQUIPAMENTO.CHASSI'
      Size = 25
    end
    object TEquipPLACA: TIBStringField
      FieldName = 'PLACA'
      Origin = 'EQUIPAMENTO.PLACA'
      Size = 8
    end
    object TEquipDTAQUISICAO: TDateField
      FieldName = 'DTAQUISICAO'
      Origin = 'EQUIPAMENTO.DTAQUISICAO'
    end
    object TEquipCONCESSIONARIA: TIBStringField
      FieldName = 'CONCESSIONARIA'
      Origin = 'EQUIPAMENTO.CONCESSIONARIA'
      Size = 30
    end
    object TEquipMOTOR: TIBStringField
      FieldName = 'MOTOR'
      Origin = 'EQUIPAMENTO.MOTOR'
      Size = 25
    end
    object TEquipANOMOTOR: TIBStringField
      FieldName = 'ANOMOTOR'
      Origin = 'EQUIPAMENTO.ANOMOTOR'
      Size = 10
    end
    object TEquipCHASSIMOTOR: TIBStringField
      FieldName = 'CHASSIMOTOR'
      Origin = 'EQUIPAMENTO.CHASSIMOTOR'
      Size = 25
    end
    object TEquipKMATUAL: TIntegerField
      FieldName = 'KMATUAL'
      Origin = 'EQUIPAMENTO.KMATUAL'
    end
    object TEquipUNIDRODAGEM: TIBStringField
      FieldName = 'UNIDRODAGEM'
      Origin = 'EQUIPAMENTO.UNIDRODAGEM'
      Size = 10
    end
    object TEquipMODELO_GUINCHO: TIBStringField
      FieldName = 'MODELO_GUINCHO'
      Origin = 'EQUIPAMENTO.MODELO_GUINCHO'
      Size = 40
    end
    object TEquipCOD_SERVICO: TIntegerField
      FieldName = 'COD_SERVICO'
      Origin = 'EQUIPAMENTO.COD_SERVICO'
    end
    object TEquipNUM_FROTA: TIBStringField
      FieldName = 'NUM_FROTA'
      Origin = 'EQUIPAMENTO.NUM_FROTA'
      Size = 25
    end
    object TEquipALTURAMAX: TFloatField
      FieldName = 'ALTURAMAX'
      Origin = 'EQUIPAMENTO.ALTURAMAX'
    end
    object TEquipPESOMAX: TFloatField
      FieldName = 'PESOMAX'
      Origin = 'EQUIPAMENTO.PESOMAX'
    end
    object TEquipCOD_KMSERVICO: TIntegerField
      FieldName = 'COD_KMSERVICO'
      Origin = 'EQUIPAMENTO.COD_KMSERVICO'
    end
    object TEquipCOD_MOTORISTA: TIntegerField
      FieldName = 'COD_MOTORISTA'
      Origin = 'EQUIPAMENTO.COD_MOTORISTA'
    end
    object TEquipAGULHA: TIBStringField
      FieldName = 'AGULHA'
      Origin = 'EQUIPAMENTO.AGULHA'
      Size = 10
    end
    object TEquipLANCADEIRA: TIBStringField
      FieldName = 'LANCADEIRA'
      Origin = 'EQUIPAMENTO.LANCADEIRA'
      Size = 10
    end
    object TEquipLOOPER: TIBStringField
      FieldName = 'LOOPER'
      Origin = 'EQUIPAMENTO.LOOPER'
      Size = 10
    end
    object TEquipLOOPERINF: TIBStringField
      FieldName = 'LOOPERINF'
      Origin = 'EQUIPAMENTO.LOOPERINF'
      Size = 10
    end
    object TEquipLOOPERSUP: TIBStringField
      FieldName = 'LOOPERSUP'
      Origin = 'EQUIPAMENTO.LOOPERSUP'
      Size = 10
    end
    object TEquipCOD_PLNCTA: TIntegerField
      FieldName = 'COD_PLNCTA'
      Origin = 'EQUIPAMENTO.COD_PLNCTA'
    end
    object TEquipATIVO: TIBStringField
      FieldName = 'ATIVO'
      Origin = 'EQUIPAMENTO.ATIVO'
      FixedChar = True
      Size = 1
    end
    object TEquipDTATIVO: TDateField
      FieldName = 'DTATIVO'
      Origin = 'EQUIPAMENTO.DTATIVO'
    end
    object TEquipCOD_USUARIOATIVOU: TIntegerField
      FieldName = 'COD_USUARIOATIVOU'
      Origin = 'EQUIPAMENTO.COD_USUARIOATIVOU'
    end
  end
  object UEquip: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  COD_EQUIPAMENTO,'
      '  COD_CLIENTE,'
      '  DESCRICAO,'
      '  MARCA,'
      '  MODELO,'
      '  ANO,'
      '  COR,'
      '  CHASSI,'
      '  PLACA,'
      '  DTAQUISICAO,'
      '  CONCESSIONARIA,'
      '  MOTOR,'
      '  ANOMOTOR,'
      '  CHASSIMOTOR,'
      '  KMATUAL,'
      '  UNIDRODAGEM,'
      '  MODELO_GUINCHO,'
      '  COD_SERVICO,'
      '  NUM_FROTA,'
      '  ALTURAMAX,'
      '  PESOMAX,'
      '  COD_KMSERVICO,'
      '  COD_MOTORISTA,'
      '  AGULHA,'
      '  LANCADEIRA,'
      '  LOOPER,'
      '  LOOPERINF,'
      '  LOOPERSUP,'
      '  COD_PLNCTA,'
      '  ATIVO,'
      '  DTATIVO,'
      '  COD_USUARIOATIVOU'
      'from EQUIPAMENTO '
      'where'
      '  COD_EQUIPAMENTO = :COD_EQUIPAMENTO')
    ModifySQL.Strings = (
      'update EQUIPAMENTO'
      'set'
      '  COD_EQUIPAMENTO = :COD_EQUIPAMENTO,'
      '  COD_CLIENTE = :COD_CLIENTE,'
      '  DESCRICAO = :DESCRICAO,'
      '  MARCA = :MARCA,'
      '  MODELO = :MODELO,'
      '  ANO = :ANO,'
      '  COR = :COR,'
      '  CHASSI = :CHASSI,'
      '  PLACA = :PLACA,'
      '  DTAQUISICAO = :DTAQUISICAO,'
      '  CONCESSIONARIA = :CONCESSIONARIA,'
      '  MOTOR = :MOTOR,'
      '  ANOMOTOR = :ANOMOTOR,'
      '  CHASSIMOTOR = :CHASSIMOTOR,'
      '  KMATUAL = :KMATUAL,'
      '  UNIDRODAGEM = :UNIDRODAGEM,'
      '  MODELO_GUINCHO = :MODELO_GUINCHO,'
      '  COD_SERVICO = :COD_SERVICO,'
      '  NUM_FROTA = :NUM_FROTA,'
      '  ALTURAMAX = :ALTURAMAX,'
      '  PESOMAX = :PESOMAX,'
      '  COD_KMSERVICO = :COD_KMSERVICO,'
      '  COD_MOTORISTA = :COD_MOTORISTA,'
      '  AGULHA = :AGULHA,'
      '  LANCADEIRA = :LANCADEIRA,'
      '  LOOPER = :LOOPER,'
      '  LOOPERINF = :LOOPERINF,'
      '  LOOPERSUP = :LOOPERSUP,'
      '  COD_PLNCTA = :COD_PLNCTA,'
      '  ATIVO = :ATIVO,'
      '  DTATIVO = :DTATIVO,'
      '  COD_USUARIOATIVOU = :COD_USUARIOATIVOU'
      'where'
      '  COD_EQUIPAMENTO = :OLD_COD_EQUIPAMENTO')
    InsertSQL.Strings = (
      'insert into EQUIPAMENTO'
      
        '  (COD_EQUIPAMENTO, COD_CLIENTE, DESCRICAO, MARCA, MODELO, ANO, ' +
        'COR, CHASSI, '
      
        '   PLACA, DTAQUISICAO, CONCESSIONARIA, MOTOR, ANOMOTOR, CHASSIMO' +
        'TOR, KMATUAL, '
      
        '   UNIDRODAGEM, MODELO_GUINCHO, COD_SERVICO, NUM_FROTA, ALTURAMA' +
        'X, PESOMAX, '
      
        '   COD_KMSERVICO, COD_MOTORISTA, AGULHA, LANCADEIRA, LOOPER, LOO' +
        'PERINF, '
      '   LOOPERSUP, COD_PLNCTA, ATIVO, DTATIVO, COD_USUARIOATIVOU)'
      'values'
      
        '  (:COD_EQUIPAMENTO, :COD_CLIENTE, :DESCRICAO, :MARCA, :MODELO, ' +
        ':ANO, :COR, '
      
        '   :CHASSI, :PLACA, :DTAQUISICAO, :CONCESSIONARIA, :MOTOR, :ANOM' +
        'OTOR, :CHASSIMOTOR, '
      
        '   :KMATUAL, :UNIDRODAGEM, :MODELO_GUINCHO, :COD_SERVICO, :NUM_F' +
        'ROTA, :ALTURAMAX, '
      
        '   :PESOMAX, :COD_KMSERVICO, :COD_MOTORISTA, :AGULHA, :LANCADEIR' +
        'A, :LOOPER, '
      
        '   :LOOPERINF, :LOOPERSUP, :COD_PLNCTA, :ATIVO, :DTATIVO, :COD_U' +
        'SUARIOATIVOU)')
    DeleteSQL.Strings = (
      'delete from EQUIPAMENTO'
      'where'
      '  COD_EQUIPAMENTO = :OLD_COD_EQUIPAMENTO')
    Left = 288
    Top = 344
  end
  object DEquip: TDataSource
    DataSet = TEquip
    Left = 288
    Top = 392
  end
  object TUsuario: TIBQuery
    Database = DBExporta
    Transaction = IBTExporta
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from USUARIO')
    UpdateObject = UUsuario
    Left = 320
    Top = 116
    object TUsuarioCODUSUARIO: TIntegerField
      FieldName = 'CODUSUARIO'
      Origin = 'USUARIO.CODUSUARIO'
      Required = True
    end
    object TUsuarioCOD_FUNCIONARIO: TIntegerField
      FieldName = 'COD_FUNCIONARIO'
      Origin = 'USUARIO.COD_FUNCIONARIO'
    end
    object TUsuarioLOGIN: TIBStringField
      FieldName = 'LOGIN'
      Origin = 'USUARIO.LOGIN'
      Size = 10
    end
    object TUsuarioSENHA: TIBStringField
      FieldName = 'SENHA'
      Origin = 'USUARIO.SENHA'
      Size = 30
    end
    object TUsuarioDATA_CAD: TDateField
      FieldName = 'DATA_CAD'
      Origin = 'USUARIO.DATA_CAD'
    end
    object TUsuarioADM: TIBStringField
      FieldName = 'ADM'
      Origin = 'USUARIO.ADM'
      FixedChar = True
      Size = 1
    end
    object TUsuarioREVRESMOV: TIBStringField
      FieldName = 'REVRESMOV'
      Origin = 'USUARIO.REVRESMOV'
      FixedChar = True
      Size = 1
    end
  end
  object UUsuario: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  CODUSUARIO,'
      '  COD_FUNCIONARIO,'
      '  LOGIN,'
      '  SENHA,'
      '  DATA_CAD,'
      '  ADM,'
      '  REVRESMOV'
      'from USUARIO '
      'where'
      '  CODUSUARIO = :CODUSUARIO')
    ModifySQL.Strings = (
      'update USUARIO'
      'set'
      '  CODUSUARIO = :CODUSUARIO,'
      '  COD_FUNCIONARIO = :COD_FUNCIONARIO,'
      '  LOGIN = :LOGIN,'
      '  SENHA = :SENHA,'
      '  DATA_CAD = :DATA_CAD,'
      '  ADM = :ADM,'
      '  REVRESMOV = :REVRESMOV'
      'where'
      '  CODUSUARIO = :OLD_CODUSUARIO')
    InsertSQL.Strings = (
      'insert into USUARIO'
      
        '  (CODUSUARIO, COD_FUNCIONARIO, LOGIN, SENHA, DATA_CAD, ADM, REV' +
        'RESMOV)'
      'values'
      
        '  (:CODUSUARIO, :COD_FUNCIONARIO, :LOGIN, :SENHA, :DATA_CAD, :AD' +
        'M, :REVRESMOV)')
    DeleteSQL.Strings = (
      'delete from USUARIO'
      'where'
      '  CODUSUARIO = :OLD_CODUSUARIO')
    Left = 320
    Top = 162
  end
  object DSUsuario: TDataSource
    DataSet = TUsuario
    Left = 320
    Top = 208
  end
  object TBanco: TIBQuery
    Database = DBExporta
    Transaction = IBTExporta
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from BANCO')
    UpdateObject = UBanco
    Left = 760
    Top = 296
    object TBancoCOD_BANC: TIntegerField
      FieldName = 'COD_BANC'
      Origin = 'BANCO.COD_BANC'
      Required = True
    end
    object TBancoNUMBANCO: TIntegerField
      FieldName = 'NUMBANCO'
      Origin = 'BANCO.NUMBANCO'
    end
    object TBancoDESCBANCO: TIBStringField
      FieldName = 'DESCBANCO'
      Origin = 'BANCO.DESCBANCO'
      Size = 100
    end
    object TBancoWEBSITE: TIBStringField
      FieldName = 'WEBSITE'
      Origin = 'BANCO.WEBSITE'
      Size = 100
    end
  end
  object UBanco: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  COD_BANC,'
      '  NUMBANCO,'
      '  DESCBANCO,'
      '  WEBSITE'
      'from BANCO '
      'where'
      '  COD_BANC = :COD_BANC')
    ModifySQL.Strings = (
      'update BANCO'
      'set'
      '  COD_BANC = :COD_BANC,'
      '  NUMBANCO = :NUMBANCO,'
      '  DESCBANCO = :DESCBANCO,'
      '  WEBSITE = :WEBSITE'
      'where'
      '  COD_BANC = :OLD_COD_BANC')
    InsertSQL.Strings = (
      'insert into BANCO'
      '  (COD_BANC, NUMBANCO, DESCBANCO, WEBSITE)'
      'values'
      '  (:COD_BANC, :NUMBANCO, :DESCBANCO, :WEBSITE)')
    DeleteSQL.Strings = (
      'delete from BANCO'
      'where'
      '  COD_BANC = :OLD_COD_BANC')
    Left = 760
    Top = 342
  end
  object DBanco: TDataSource
    DataSet = TBanco
    Left = 760
    Top = 384
  end
  object TAgencia: TIBQuery
    Database = DBExporta
    Transaction = IBTExporta
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from agencia')
    UpdateObject = UAgencia
    Left = 808
    Top = 296
    object TAgenciaCOD_AGENCIA: TIntegerField
      FieldName = 'COD_AGENCIA'
      Origin = 'AGENCIA.COD_AGENCIA'
      Required = True
    end
    object TAgenciaCOD_BANCO: TIntegerField
      FieldName = 'COD_BANCO'
      Origin = 'AGENCIA.COD_BANCO'
    end
    object TAgenciaNUMAGENCIA: TIBStringField
      FieldName = 'NUMAGENCIA'
      Origin = 'AGENCIA.NUMAGENCIA'
      Size = 10
    end
    object TAgenciaCOD_PESSOA: TIntegerField
      FieldName = 'COD_PESSOA'
      Origin = 'AGENCIA.COD_PESSOA'
    end
  end
  object UAgencia: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select * '
      'from agencia '
      'where'
      '  COD_AGENCIA = :COD_AGENCIA')
    ModifySQL.Strings = (
      'update agencia'
      'set'
      '  COD_AGENCIA = :COD_AGENCIA,'
      '  COD_BANCO = :COD_BANCO,'
      '  NUMAGENCIA = :NUMAGENCIA,'
      '  COD_PESSOA = :COD_PESSOA'
      'where'
      '  COD_AGENCIA = :OLD_COD_AGENCIA')
    InsertSQL.Strings = (
      'insert into agencia'
      '  (COD_AGENCIA, COD_BANCO, NUMAGENCIA, COD_PESSOA)'
      'values'
      '  (:COD_AGENCIA, :COD_BANCO, :NUMAGENCIA, :COD_PESSOA)')
    DeleteSQL.Strings = (
      'delete from agencia'
      'where'
      '  COD_AGENCIA = :OLD_COD_AGENCIA')
    Left = 808
    Top = 342
  end
  object DAgencia: TDataSource
    DataSet = TAgencia
    Left = 808
    Top = 384
  end
  object TMovBanco: TIBQuery
    Database = DBExporta
    Transaction = IBTExporta
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from movbanco')
    UpdateObject = Umovbanco
    Left = 864
    Top = 296
    object TMovBancoCOD_MOVBANCO: TIntegerField
      FieldName = 'COD_MOVBANCO'
      Origin = 'MOVBANCO.COD_MOVBANCO'
      Required = True
    end
    object TMovBancoCOD_CTACOR: TIntegerField
      FieldName = 'COD_CTACOR'
      Origin = 'MOVBANCO.COD_CTACOR'
    end
    object TMovBancoHORALANC: TTimeField
      FieldName = 'HORALANC'
      Origin = 'MOVBANCO.HORALANC'
    end
    object TMovBancoDTLANC: TDateField
      FieldName = 'DTLANC'
      Origin = 'MOVBANCO.DTLANC'
    end
    object TMovBancoCOD_PLNCTA: TIntegerField
      FieldName = 'COD_PLNCTA'
      Origin = 'MOVBANCO.COD_PLNCTA'
    end
    object TMovBancoHISTORICO: TIBStringField
      FieldName = 'HISTORICO'
      Origin = 'MOVBANCO.HISTORICO'
      Size = 100
    end
    object TMovBancoCOD_USUARIO: TIntegerField
      FieldName = 'COD_USUARIO'
      Origin = 'MOVBANCO.COD_USUARIO'
    end
    object TMovBancoDTMOV: TDateField
      FieldName = 'DTMOV'
      Origin = 'MOVBANCO.DTMOV'
    end
    object TMovBancoCOD_COTA: TIntegerField
      FieldName = 'COD_COTA'
      Origin = 'MOVBANCO.COD_COTA'
    end
    object TMovBancoVALOR: TIBBCDField
      FieldName = 'VALOR'
      Origin = 'MOVBANCO.VALOR'
      Precision = 18
      Size = 2
    end
    object TMovBancoTIPOOP: TIBStringField
      FieldName = 'TIPOOP'
      Origin = 'MOVBANCO.TIPOOP'
      Size = 10
    end
    object TMovBancoCOBRANCA: TIBStringField
      FieldName = 'COBRANCA'
      Origin = 'MOVBANCO.COBRANCA'
      Size = 10
    end
    object TMovBancoDTVENC: TDateField
      FieldName = 'DTVENC'
      Origin = 'MOVBANCO.DTVENC'
    end
    object TMovBancoFECH: TIBStringField
      FieldName = 'FECH'
      Origin = 'MOVBANCO.FECH'
      FixedChar = True
      Size = 1
    end
    object TMovBancoTIPOGERADOR: TIBStringField
      FieldName = 'TIPOGERADOR'
      Origin = 'MOVBANCO.TIPOGERADOR'
      Size = 10
    end
    object TMovBancoCOD_GERADOR: TIntegerField
      FieldName = 'COD_GERADOR'
      Origin = 'MOVBANCO.COD_GERADOR'
    end
    object TMovBancoNUMCHEQUE: TIBStringField
      FieldName = 'NUMCHEQUE'
      Origin = 'MOVBANCO.NUMCHEQUE'
      Size = 10
    end
    object TMovBancoVER: TIBStringField
      FieldName = 'VER'
      Origin = 'MOVBANCO.VER'
      FixedChar = True
      Size = 1
    end
    object TMovBancoVALORSERV: TIBBCDField
      FieldName = 'VALORSERV'
      Origin = 'MOVBANCO.VALORSERV'
      Precision = 18
      Size = 2
    end
    object TMovBancoVALORPROD: TIBBCDField
      FieldName = 'VALORPROD'
      Origin = 'MOVBANCO.VALORPROD'
      Precision = 18
      Size = 2
    end
    object TMovBancoCOD_PLNCTASERV: TIntegerField
      FieldName = 'COD_PLNCTASERV'
      Origin = 'MOVBANCO.COD_PLNCTASERV'
    end
    object TMovBancoPERVLRSERV: TIBBCDField
      FieldName = 'PERVLRSERV'
      Origin = 'MOVBANCO.PERVLRSERV'
      Precision = 18
      Size = 2
    end
    object TMovBancoESTRU: TIBStringField
      FieldName = 'ESTRU'
      Origin = 'MOVBANCO.ESTRU'
      FixedChar = True
      Size = 1
    end
    object TMovBancoCOD_ABBANCO: TIntegerField
      FieldName = 'COD_ABBANCO'
      Origin = 'MOVBANCO.COD_ABBANCO'
    end
    object TMovBancoDTREF: TDateField
      FieldName = 'DTREF'
      Origin = 'MOVBANCO.DTREF'
    end
    object TMovBancoMARK: TIBStringField
      FieldName = 'MARK'
      Origin = 'MOVBANCO.MARK'
      Size = 1
    end
    object TMovBancoDESTINATARIOCH: TIBStringField
      FieldName = 'DESTINATARIOCH'
      Origin = 'MOVBANCO.DESTINATARIOCH'
      Size = 60
    end
  end
  object Umovbanco: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select *'
      'from movbanco '
      'where'
      '  COD_MOVBANCO = :COD_MOVBANCO')
    ModifySQL.Strings = (
      'update movbanco'
      'set'
      '  COD_MOVBANCO = :COD_MOVBANCO,'
      '  COD_CTACOR = :COD_CTACOR,'
      '  HORALANC = :HORALANC,'
      '  DTLANC = :DTLANC,'
      '  COD_PLNCTA = :COD_PLNCTA,'
      '  HISTORICO = :HISTORICO,'
      '  COD_USUARIO = :COD_USUARIO,'
      '  DTMOV = :DTMOV,'
      '  COD_COTA = :COD_COTA,'
      '  VALOR = :VALOR,'
      '  TIPOOP = :TIPOOP,'
      '  COBRANCA = :COBRANCA,'
      '  DTVENC = :DTVENC,'
      '  FECH = :FECH,'
      '  TIPOGERADOR = :TIPOGERADOR,'
      '  COD_GERADOR = :COD_GERADOR,'
      '  NUMCHEQUE = :NUMCHEQUE,'
      '  VER = :VER,'
      '  VALORSERV = :VALORSERV,'
      '  VALORPROD = :VALORPROD,'
      '  COD_PLNCTASERV = :COD_PLNCTASERV,'
      '  PERVLRSERV = :PERVLRSERV,'
      '  ESTRU = :ESTRU,'
      '  COD_ABBANCO = :COD_ABBANCO,'
      '  DTREF = :DTREF,'
      '  MARK = :MARK,'
      '  DESTINATARIOCH = :DESTINATARIOCH'
      'where'
      '  COD_MOVBANCO = :OLD_COD_MOVBANCO')
    InsertSQL.Strings = (
      'insert into movbanco'
      
        '  (COD_MOVBANCO, COD_CTACOR, HORALANC, DTLANC, COD_PLNCTA, HISTO' +
        'RICO, COD_USUARIO, '
      
        '   DTMOV, COD_COTA, VALOR, TIPOOP, COBRANCA, DTVENC, FECH, TIPOG' +
        'ERADOR, '
      
        '   COD_GERADOR, NUMCHEQUE, VER, VALORSERV, VALORPROD, COD_PLNCTA' +
        'SERV, PERVLRSERV, '
      '   ESTRU, COD_ABBANCO, DTREF, MARK, DESTINATARIOCH)'
      'values'
      
        '  (:COD_MOVBANCO, :COD_CTACOR, :HORALANC, :DTLANC, :COD_PLNCTA, ' +
        ':HISTORICO, '
      
        '   :COD_USUARIO, :DTMOV, :COD_COTA, :VALOR, :TIPOOP, :COBRANCA, ' +
        ':DTVENC, '
      
        '   :FECH, :TIPOGERADOR, :COD_GERADOR, :NUMCHEQUE, :VER, :VALORSE' +
        'RV, :VALORPROD, '
      
        '   :COD_PLNCTASERV, :PERVLRSERV, :ESTRU, :COD_ABBANCO, :DTREF, :' +
        'MARK, :DESTINATARIOCH)')
    DeleteSQL.Strings = (
      'delete from movbanco'
      'where'
      '  COD_MOVBANCO = :OLD_COD_MOVBANCO')
    Left = 864
    Top = 342
  end
  object DmovBanco: TDataSource
    DataSet = TMovBanco
    Left = 864
    Top = 384
  end
  object TChequeRec: TIBQuery
    Database = DBExporta
    Transaction = IBTExporta
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from movbanco')
    UpdateObject = UChequeRec
    Left = 920
    Top = 296
  end
  object UChequeRec: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select *'
      'from movbanco '
      'where'
      '  COD_MOVBANCO = :COD_MOVBANCO')
    ModifySQL.Strings = (
      'update movbanco'
      'set'
      '  COD_MOVBANCO = :COD_MOVBANCO,'
      '  COD_CTACOR = :COD_CTACOR,'
      '  HORALANC = :HORALANC,'
      '  DTLANC = :DTLANC,'
      '  COD_PLNCTA = :COD_PLNCTA,'
      '  HISTORICO = :HISTORICO,'
      '  COD_USUARIO = :COD_USUARIO,'
      '  DTMOV = :DTMOV,'
      '  COD_COTA = :COD_COTA,'
      '  VALOR = :VALOR,'
      '  TIPOOP = :TIPOOP,'
      '  COBRANCA = :COBRANCA,'
      '  DTVENC = :DTVENC,'
      '  FECH = :FECH,'
      '  TIPOGERADOR = :TIPOGERADOR,'
      '  COD_GERADOR = :COD_GERADOR,'
      '  NUMCHEQUE = :NUMCHEQUE,'
      '  VER = :VER,'
      '  VALORSERV = :VALORSERV,'
      '  VALORPROD = :VALORPROD,'
      '  COD_PLNCTASERV = :COD_PLNCTASERV,'
      '  PERVLRSERV = :PERVLRSERV,'
      '  ESTRU = :ESTRU,'
      '  COD_ABBANCO = :COD_ABBANCO,'
      '  DTREF = :DTREF,'
      '  MARK = :MARK,'
      '  DESTINATARIOCH = :DESTINATARIOCH'
      'where'
      '  COD_MOVBANCO = :OLD_COD_MOVBANCO')
    InsertSQL.Strings = (
      'insert into movbanco'
      
        '  (COD_MOVBANCO, COD_CTACOR, HORALANC, DTLANC, COD_PLNCTA, HISTO' +
        'RICO, COD_USUARIO, '
      
        '   DTMOV, COD_COTA, VALOR, TIPOOP, COBRANCA, DTVENC, FECH, TIPOG' +
        'ERADOR, '
      
        '   COD_GERADOR, NUMCHEQUE, VER, VALORSERV, VALORPROD, COD_PLNCTA' +
        'SERV, PERVLRSERV, '
      '   ESTRU, COD_ABBANCO, DTREF, MARK, DESTINATARIOCH)'
      'values'
      
        '  (:COD_MOVBANCO, :COD_CTACOR, :HORALANC, :DTLANC, :COD_PLNCTA, ' +
        ':HISTORICO, '
      
        '   :COD_USUARIO, :DTMOV, :COD_COTA, :VALOR, :TIPOOP, :COBRANCA, ' +
        ':DTVENC, '
      
        '   :FECH, :TIPOGERADOR, :COD_GERADOR, :NUMCHEQUE, :VER, :VALORSE' +
        'RV, :VALORPROD, '
      
        '   :COD_PLNCTASERV, :PERVLRSERV, :ESTRU, :COD_ABBANCO, :DTREF, :' +
        'MARK, :DESTINATARIOCH)')
    DeleteSQL.Strings = (
      'delete from movbanco'
      'where'
      '  COD_MOVBANCO = :OLD_COD_MOVBANCO')
    Left = 920
    Top = 342
  end
  object DChequeRec: TDataSource
    DataSet = TChequeRec
    Left = 920
    Top = 384
  end
  object TCtaCor: TIBQuery
    Database = DBExporta
    Transaction = IBTExporta
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from ctacor')
    UpdateObject = UCtaCor
    Left = 976
    Top = 296
  end
  object UCtaCor: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select *'
      'from ctacor '
      'where'
      '  COD_CTACOR = :COD_CTACOR')
    ModifySQL.Strings = (
      'update ctacor'
      'set'
      '  COD_CTACOR = :COD_CTACOR,'
      '  COD_AGENCIA = :COD_AGENCIA,'
      '  NUMCTACOR = :NUMCTACOR,'
      '  DTCAD = :DTCAD,'
      '  DTABERT = :DTABERT,'
      '  PROXCHEQUE = :PROXCHEQUE,'
      '  LIMITE = :LIMITE,'
      '  SALDO = :SALDO,'
      '  NOSSONUMBLT = :NOSSONUMBLT,'
      '  CODCARTEIRABLT = :CODCARTEIRABLT,'
      '  DIGCTACOR = :DIGCTACOR,'
      '  CODCEDENTEBLT = :CODCEDENTEBLT,'
      '  DIGCODCEDENTEBLT = :DIGCODCEDENTEBLT,'
      '  PROXBOLETO = :PROXBOLETO,'
      '  NUMAGENCBLT = :NUMAGENCBLT,'
      '  DIGAGENCBLT = :DIGAGENCBLT,'
      '  INSTRUBOLETO = :INSTRUBOLETO,'
      '  CONTREMESSA = :CONTREMESSA,'
      '  DIASPROT = :DIASPROT,'
      '  PROTAUT = :PROTAUT,'
      '  CODEMPRESABLT = :CODEMPRESABLT'
      'where'
      '  COD_CTACOR = :OLD_COD_CTACOR')
    InsertSQL.Strings = (
      'insert into ctacor'
      
        '  (COD_CTACOR, COD_AGENCIA, NUMCTACOR, DTCAD, DTABERT, PROXCHEQU' +
        'E, LIMITE, '
      
        '   SALDO, NOSSONUMBLT, CODCARTEIRABLT, DIGCTACOR, CODCEDENTEBLT,' +
        ' DIGCODCEDENTEBLT, '
      
        '   PROXBOLETO, NUMAGENCBLT, DIGAGENCBLT, INSTRUBOLETO, CONTREMES' +
        'SA, DIASPROT, '
      '   PROTAUT, CODEMPRESABLT)'
      'values'
      
        '  (:COD_CTACOR, :COD_AGENCIA, :NUMCTACOR, :DTCAD, :DTABERT, :PRO' +
        'XCHEQUE, '
      
        '   :LIMITE, :SALDO, :NOSSONUMBLT, :CODCARTEIRABLT, :DIGCTACOR, :' +
        'CODCEDENTEBLT, '
      
        '   :DIGCODCEDENTEBLT, :PROXBOLETO, :NUMAGENCBLT, :DIGAGENCBLT, :' +
        'INSTRUBOLETO, '
      '   :CONTREMESSA, :DIASPROT, :PROTAUT, :CODEMPRESABLT)')
    DeleteSQL.Strings = (
      'delete from ctacor'
      'where'
      '  COD_CTACOR = :OLD_COD_CTACOR')
    Left = 976
    Top = 342
  end
  object DCtaCor: TDataSource
    DataSet = TCtaCor
    Left = 976
    Top = 384
  end
  object TParcCr: TIBQuery
    Database = DBExporta
    Transaction = IBTExporta
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from PARCELACR')
    UpdateObject = UParccr
    Left = 1032
    Top = 296
  end
  object UParccr: TIBUpdateSQL
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
      '  DIASATRASO'
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
      '  DIASATRASO = :DIASATRASO'
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
      '   EXPORTA, DIASATRASO)'
      'values'
      
        '  (:COD_PARCELACR, :COD_CTARECEBER, :NUMPARC, :DTDEBITO, :COD_PA' +
        'RANT, :DESCONTO, '
      
        '   :JUROS, :MULTA, :VALOR, :VALORPG, :FECH, :COBRANCA, :DTVENC, ' +
        ':COD_COTA, '
      
        '   :HISTORICO, :VALEXT, :VALORSERV, :VALORPROD, :MARK, :IMP, :NU' +
        'MBOLETO, '
      
        '   :NUMFISC, :COD_CTACOR, :REMESSA, :DTREF, :PERVLRSERV, :APLICJ' +
        'UR, :NOSSONUMBLT, '
      '   :SCPC, :TIPOBLT, :TEXTOBLT, :EXPORTA, :DIASATRASO)')
    DeleteSQL.Strings = (
      'delete from PARCELACR'
      'where'
      '  COD_PARCELACR = :OLD_COD_PARCELACR')
    Left = 1032
    Top = 342
  end
  object DParcCr: TDataSource
    DataSet = TParcCr
    Left = 1032
    Top = 384
  end
  object TCtaR: TIBQuery
    Database = DBExporta
    Transaction = IBTExporta
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from CTARECEBER')
    UpdateObject = UCtaR
    Left = 1088
    Top = 296
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
      '  NUMCARTAO'
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
      '  NUMCARTAO = :NUMCARTAO'
      'where'
      '  COD_CTARECEBER = :OLD_COD_CTARECEBER')
    InsertSQL.Strings = (
      'insert into CTARECEBER'
      
        '  (COD_CTARECEBER, COD_USUARIO, DTLANC, COBRANCA, COD_CLIENTE, C' +
        'OD_PLNCTA, '
      
        '   HISTORICO, TIPOGERADOR, COD_GERADOR, VALOR, COD_COTAMOEDA, CO' +
        'D_FORMPAG, '
      '   NUMDOC, COD_PLNCTASERV, NUMCARTAO)'
      'values'
      
        '  (:COD_CTARECEBER, :COD_USUARIO, :DTLANC, :COBRANCA, :COD_CLIEN' +
        'TE, :COD_PLNCTA, '
      
        '   :HISTORICO, :TIPOGERADOR, :COD_GERADOR, :VALOR, :COD_COTAMOED' +
        'A, :COD_FORMPAG, '
      '   :NUMDOC, :COD_PLNCTASERV, :NUMCARTAO)')
    DeleteSQL.Strings = (
      'delete from CTARECEBER'
      'where'
      '  COD_CTARECEBER = :OLD_COD_CTARECEBER')
    Left = 1088
    Top = 342
  end
  object DCtarR: TDataSource
    DataSet = TCtaR
    Left = 1088
    Top = 384
  end
  object DsFornec: TDataSource
    DataSet = TFornec
    Left = 803
    Top = 209
  end
  object UFornec: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      'from fornecedor '
      'where'
      '  COD_FORNEC = :COD_FORNEC')
    ModifySQL.Strings = (
      'update fornecedor'
      'set'
      '  COD_FORNEC = :COD_FORNEC,'
      '  COD_PESSOA = :COD_PESSOA,'
      '  COD_INTERNO = :COD_INTERNO,'
      '  DATA_CAD = :DATA_CAD,'
      '  TIPO_FORNEC = :TIPO_FORNEC,'
      '  PRAZO_ENTREGA = :PRAZO_ENTREGA,'
      '  COD_TRANSPORT = :COD_TRANSPORT,'
      '  TIPO = :TIPO,'
      '  OBS = :OBS,'
      '  EXPORT = :EXPORT,'
      '  MARKREL = :MARKREL'
      'where'
      '  COD_FORNEC = :OLD_COD_FORNEC')
    InsertSQL.Strings = (
      'insert into fornecedor'
      
        '  (COD_FORNEC, COD_PESSOA, COD_INTERNO, DATA_CAD, TIPO_FORNEC, P' +
        'RAZO_ENTREGA, '
      '   COD_TRANSPORT, TIPO, OBS, EXPORT, MARKREL)'
      'values'
      
        '  (:COD_FORNEC, :COD_PESSOA, :COD_INTERNO, :DATA_CAD, :TIPO_FORN' +
        'EC, :PRAZO_ENTREGA, '
      '   :COD_TRANSPORT, :TIPO, :OBS, :EXPORT, :MARKREL)')
    DeleteSQL.Strings = (
      'delete from fornecedor'
      'where'
      '  COD_FORNEC = :OLD_COD_FORNEC')
    Left = 803
    Top = 164
  end
  object TFornec: TIBQuery
    Database = DBExporta
    Transaction = IBTExporta
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from fornecedor')
    UpdateObject = UFornec
    GeneratorField.Field = 'COD_FORNEC'
    Left = 803
    Top = 120
  end
  object TDocFisc: TIBQuery
    Database = DBExporta
    Transaction = IBTExporta
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from docfis')
    UpdateObject = UDocFisc
    Left = 332
    Top = 296
    object TDocFiscCOD_DOCFISC: TIntegerField
      FieldName = 'COD_DOCFISC'
      Origin = 'DOCFIS.COD_DOCFISC'
      Required = True
    end
    object TDocFiscCOD_PEDIDO: TIntegerField
      FieldName = 'COD_PEDIDO'
      Origin = 'DOCFIS.COD_PEDIDO'
    end
    object TDocFiscNUMDOCFIS: TIBStringField
      FieldName = 'NUMDOCFIS'
      Origin = 'DOCFIS.NUMDOCFIS'
      Size = 10
    end
    object TDocFiscTIPODOCFIS: TIBStringField
      FieldName = 'TIPODOCFIS'
      Origin = 'DOCFIS.TIPODOCFIS'
      FixedChar = True
      Size = 1
    end
    object TDocFiscNUMDOCANT: TIBStringField
      FieldName = 'NUMDOCANT'
      Origin = 'DOCFIS.NUMDOCANT'
      Size = 10
    end
    object TDocFiscSERIE: TIBStringField
      FieldName = 'SERIE'
      Origin = 'DOCFIS.SERIE'
      Size = 10
    end
    object TDocFiscDTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
      Origin = 'DOCFIS.DTEMISSAO'
    end
    object TDocFiscDTENTSAID: TDateField
      FieldName = 'DTENTSAID'
      Origin = 'DOCFIS.DTENTSAID'
    end
    object TDocFiscHORASAID: TTimeField
      FieldName = 'HORASAID'
      Origin = 'DOCFIS.HORASAID'
    end
    object TDocFiscCOD_CFOP: TIntegerField
      FieldName = 'COD_CFOP'
      Origin = 'DOCFIS.COD_CFOP'
    end
    object TDocFiscCOD_TRANSP: TIntegerField
      FieldName = 'COD_TRANSP'
      Origin = 'DOCFIS.COD_TRANSP'
    end
    object TDocFiscOBS: TIBStringField
      FieldName = 'OBS'
      Origin = 'DOCFIS.OBS'
      Size = 100
    end
    object TDocFiscFRETECONTA: TIBStringField
      FieldName = 'FRETECONTA'
      Origin = 'DOCFIS.FRETECONTA'
      FixedChar = True
      Size = 1
    end
    object TDocFiscPLACA: TIBStringField
      FieldName = 'PLACA'
      Origin = 'DOCFIS.PLACA'
      Size = 10
    end
    object TDocFiscUFPLACA: TIBStringField
      FieldName = 'UFPLACA'
      Origin = 'DOCFIS.UFPLACA'
      FixedChar = True
      Size = 2
    end
    object TDocFiscCPFPLACA: TIBStringField
      FieldName = 'CPFPLACA'
      Origin = 'DOCFIS.CPFPLACA'
    end
    object TDocFiscQUANTFRETE: TFloatField
      FieldName = 'QUANTFRETE'
      Origin = 'DOCFIS.QUANTFRETE'
    end
    object TDocFiscESPECIEFRETE: TIBStringField
      FieldName = 'ESPECIEFRETE'
      Origin = 'DOCFIS.ESPECIEFRETE'
      Size = 10
    end
    object TDocFiscMARCAFRETE: TIBStringField
      FieldName = 'MARCAFRETE'
      Origin = 'DOCFIS.MARCAFRETE'
      Size = 25
    end
    object TDocFiscPESOBRUTO: TFloatField
      FieldName = 'PESOBRUTO'
      Origin = 'DOCFIS.PESOBRUTO'
    end
    object TDocFiscPESOLIQ: TFloatField
      FieldName = 'PESOLIQ'
      Origin = 'DOCFIS.PESOLIQ'
    end
    object TDocFiscCOD_COTA: TIntegerField
      FieldName = 'COD_COTA'
      Origin = 'DOCFIS.COD_COTA'
    end
    object TDocFiscNF: TIBStringField
      FieldName = 'NF'
      Origin = 'DOCFIS.NF'
      FixedChar = True
      Size = 1
    end
    object TDocFiscBASEICMS: TIBBCDField
      FieldName = 'BASEICMS'
      Origin = 'DOCFIS.BASEICMS'
      Precision = 18
      Size = 2
    end
    object TDocFiscVLRICMS: TIBBCDField
      FieldName = 'VLRICMS'
      Origin = 'DOCFIS.VLRICMS'
      Precision = 18
      Size = 2
    end
    object TDocFiscBASCALSUBS: TIBBCDField
      FieldName = 'BASCALSUBS'
      Origin = 'DOCFIS.BASCALSUBS'
      Precision = 18
      Size = 2
    end
    object TDocFiscVLRICMSUBS: TIBBCDField
      FieldName = 'VLRICMSUBS'
      Origin = 'DOCFIS.VLRICMSUBS'
      Precision = 18
      Size = 2
    end
    object TDocFiscVLRTOTPROD: TIBBCDField
      FieldName = 'VLRTOTPROD'
      Origin = 'DOCFIS.VLRTOTPROD'
      Precision = 18
      Size = 2
    end
    object TDocFiscVLRFRETE: TIBBCDField
      FieldName = 'VLRFRETE'
      Origin = 'DOCFIS.VLRFRETE'
      Precision = 18
      Size = 2
    end
    object TDocFiscVLRICMSFRETE: TIBBCDField
      FieldName = 'VLRICMSFRETE'
      Origin = 'DOCFIS.VLRICMSFRETE'
      Precision = 18
      Size = 2
    end
    object TDocFiscVLRSEG: TIBBCDField
      FieldName = 'VLRSEG'
      Origin = 'DOCFIS.VLRSEG'
      Precision = 18
      Size = 2
    end
    object TDocFiscVLRTOTIPI: TIBBCDField
      FieldName = 'VLRTOTIPI'
      Origin = 'DOCFIS.VLRTOTIPI'
      Precision = 18
      Size = 2
    end
    object TDocFiscVLRTOTICMS: TIBBCDField
      FieldName = 'VLRTOTICMS'
      Origin = 'DOCFIS.VLRTOTICMS'
      Precision = 18
      Size = 2
    end
    object TDocFiscVLRTOTDOCNF: TIBBCDField
      FieldName = 'VLRTOTDOCNF'
      Origin = 'DOCFIS.VLRTOTDOCNF'
      Precision = 18
      Size = 2
    end
    object TDocFiscVLROUTROS: TIBBCDField
      FieldName = 'VLROUTROS'
      Origin = 'DOCFIS.VLROUTROS'
      Precision = 18
      Size = 2
    end
    object TDocFiscFRETECOMP: TIBStringField
      FieldName = 'FRETECOMP'
      Origin = 'DOCFIS.FRETECOMP'
      FixedChar = True
      Size = 1
    end
    object TDocFiscVLREMB: TIBBCDField
      FieldName = 'VLREMB'
      Origin = 'DOCFIS.VLREMB'
      Precision = 18
      Size = 2
    end
    object TDocFiscTIPOGERADOR: TIBStringField
      FieldName = 'TIPOGERADOR'
      Origin = 'DOCFIS.TIPOGERADOR'
      Size = 10
    end
    object TDocFiscNUMCONHEC: TIBStringField
      FieldName = 'NUMCONHEC'
      Origin = 'DOCFIS.NUMCONHEC'
      Size = 10
    end
    object TDocFiscVLROUTRASDESP: TIBBCDField
      FieldName = 'VLROUTRASDESP'
      Origin = 'DOCFIS.VLROUTRASDESP'
      Precision = 18
      Size = 2
    end
    object TDocFiscVLRISENTOICMS: TIBBCDField
      FieldName = 'VLRISENTOICMS'
      Origin = 'DOCFIS.VLRISENTOICMS'
      Precision = 18
      Size = 2
    end
    object TDocFiscMODELONF: TIBStringField
      FieldName = 'MODELONF'
      Origin = 'DOCFIS.MODELONF'
      Size = 10
    end
    object TDocFiscEMPEMIT: TIBStringField
      FieldName = 'EMPEMIT'
      Origin = 'DOCFIS.EMPEMIT'
      FixedChar = True
      Size = 1
    end
    object TDocFiscNFESERIE: TIntegerField
      FieldName = 'NFESERIE'
      Origin = 'DOCFIS.NFESERIE'
    end
    object TDocFiscNFECHAVE: TIBStringField
      FieldName = 'NFECHAVE'
      Origin = 'DOCFIS.NFECHAVE'
      Size = 50
    end
    object TDocFiscNFELOTE: TIBStringField
      FieldName = 'NFELOTE'
      Origin = 'DOCFIS.NFELOTE'
      Size = 10
    end
    object TDocFiscNFERECIBO: TIBStringField
      FieldName = 'NFERECIBO'
      Origin = 'DOCFIS.NFERECIBO'
      Size = 15
    end
    object TDocFiscNFEERRO: TIBStringField
      FieldName = 'NFEERRO'
      Origin = 'DOCFIS.NFEERRO'
      Size = 255
    end
    object TDocFiscNFEPROTOCOLO: TIBStringField
      FieldName = 'NFEPROTOCOLO'
      Origin = 'DOCFIS.NFEPROTOCOLO'
    end
    object TDocFiscNFESTATUS: TSmallintField
      FieldName = 'NFESTATUS'
      Origin = 'DOCFIS.NFESTATUS'
    end
  end
  object UDocFisc: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select * '
      'from docfis '
      'where'
      '  COD_DOCFISC = :COD_DOCFISC')
    ModifySQL.Strings = (
      'update docfis'
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
      '  NFESTATUS = :NFESTATUS'
      'where'
      '  COD_DOCFISC = :OLD_COD_DOCFISC')
    InsertSQL.Strings = (
      'insert into docfis'
      
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
      '   NFEERRO, NFEPROTOCOLO, NFESTATUS)'
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
        'ESTATUS)')
    DeleteSQL.Strings = (
      'delete from docfis'
      'where'
      '  COD_DOCFISC = :OLD_COD_DOCFISC')
    Left = 332
    Top = 343
  end
  object DDocFisc: TDataSource
    DataSet = TDocFisc
    Left = 332
    Top = 392
  end
end
