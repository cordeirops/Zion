object DMCAIXA: TDMCAIXA
  OldCreateOrder = False
  Top = 8
  Height = 434
  Width = 640
  object IBDB: TIBDatabase
    DatabaseName = 'note:C:\MZR\DataBase\TOOTECH\dbmacs.gdb'
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
    Left = 8
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
    Left = 48
    Top = 9
  end
  object TAlx: TIBQuery
    Tag = 5
    Database = IBDB
    Transaction = IBT
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'Select * from abcaixa')
    Left = 99
    Top = 8
  end
  object DAlx: TDataSource
    DataSet = TAlx
    Left = 132
    Top = 9
  end
  object TCaixa: TIBQuery
    Database = IBDB
    Transaction = IBT
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select  first 1 * from CAIXA')
    UpdateObject = UCaixa
    Left = 8
    Top = 80
    object TCaixaCOD_CAIXA: TIntegerField
      FieldName = 'COD_CAIXA'
      Origin = 'CAIXA.COD_CAIXA'
      Required = True
    end
    object TCaixaNUMCAIXA: TIBStringField
      FieldName = 'NUMCAIXA'
      Origin = 'CAIXA.NUMCAIXA'
      Size = 5
    end
    object TCaixaDESCRICAO: TIBStringField
      FieldName = 'DESCRICAO'
      Origin = 'CAIXA.DESCRICAO'
      Required = True
      Size = 30
    end
    object TCaixaCOD_LOJA: TIntegerField
      FieldName = 'COD_LOJA'
      Origin = 'CAIXA.COD_LOJA'
      Required = True
    end
    object TCaixaCOD_USUARIO: TIntegerField
      FieldName = 'COD_USUARIO'
      Origin = 'CAIXA.COD_USUARIO'
      Required = True
    end
    object TCaixaSALDO: TIBBCDField
      FieldName = 'SALDO'
      Origin = 'CAIXA.SALDO'
      Precision = 18
      Size = 2
    end
    object TCaixaTIPOCUPOM: TIBStringField
      FieldName = 'TIPOCUPOM'
      Origin = 'CAIXA.TIPOCUPOM'
      Size = 10
    end
    object TCaixaPORTACUPOM: TIBStringField
      FieldName = 'PORTACUPOM'
      Origin = 'CAIXA.PORTACUPOM'
      Size = 10
    end
    object TCaixaFRASECUPOM: TIBStringField
      FieldName = 'FRASECUPOM'
      Origin = 'CAIXA.FRASECUPOM'
      Size = 100
    end
    object TCaixaPRIMTITCUPOM: TIBStringField
      FieldName = 'PRIMTITCUPOM'
      Origin = 'CAIXA.PRIMTITCUPOM'
      Size = 40
    end
    object TCaixaSEGTITCUPOM: TIBStringField
      FieldName = 'SEGTITCUPOM'
      Origin = 'CAIXA.SEGTITCUPOM'
      Size = 40
    end
    object TCaixaTERTITCUPOM: TIBStringField
      FieldName = 'TERTITCUPOM'
      Origin = 'CAIXA.TERTITCUPOM'
      Size = 40
    end
    object TCaixaMODELO_IMPRESSORA: TIBStringField
      FieldName = 'MODELO_IMPRESSORA'
      Origin = 'CAIXA.MODELO_IMPRESSORA'
      Size = 25
    end
    object TCaixaENDERECO_BD: TIBStringField
      DisplayWidth = 150
      FieldName = 'ENDERECO_BD'
      Origin = 'CAIXA.ENDERECO_BD'
      Size = 100
    end
    object TCaixaMARK: TIBStringField
      FieldName = 'MARK'
      Origin = 'CAIXA.MARK'
      FixedChar = True
      Size = 1
    end
    object TCaixaEMITNF: TIBStringField
      FieldName = 'EMITNF'
      Origin = 'CAIXA.EMITNF'
      FixedChar = True
      Size = 1
    end
    object TCaixaIMPRESSORA: TIBStringField
      FieldName = 'IMPRESSORA'
      Origin = 'CAIXA.IMPRESSORA'
      Size = 100
    end
  end
  object TAbCaixa: TIBQuery
    Database = IBDB
    Transaction = IBT
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select  first 1 * from ABCAIXA')
    UpdateObject = UAbCaixa
    Left = 120
    Top = 80
    object TAbCaixaCOD_ABCAIXA: TIntegerField
      FieldName = 'COD_ABCAIXA'
      Origin = 'ABCAIXA.COD_ABCAIXA'
      Required = True
    end
    object TAbCaixaCOD_CAIXA: TIntegerField
      FieldName = 'COD_CAIXA'
      Origin = 'ABCAIXA.COD_CAIXA'
    end
    object TAbCaixaDTABERTURA: TDateField
      FieldName = 'DTABERTURA'
      Origin = 'ABCAIXA.DTABERTURA'
      Required = True
    end
    object TAbCaixaHORAABERTURA: TTimeField
      FieldName = 'HORAABERTURA'
      Origin = 'ABCAIXA.HORAABERTURA'
      Required = True
    end
    object TAbCaixaSALDOINI: TIBBCDField
      FieldName = 'SALDOINI'
      Origin = 'ABCAIXA.SALDOINI'
      Precision = 18
      Size = 2
    end
    object TAbCaixaSALDOFIN: TIBBCDField
      FieldName = 'SALDOFIN'
      Origin = 'ABCAIXA.SALDOFIN'
      Precision = 18
      Size = 2
    end
    object TAbCaixaDTFECHA: TDateField
      FieldName = 'DTFECHA'
      Origin = 'ABCAIXA.DTFECHA'
    end
    object TAbCaixaHORAFECHA: TTimeField
      FieldName = 'HORAFECHA'
      Origin = 'ABCAIXA.HORAFECHA'
    end
    object TAbCaixaFECHADO: TIBStringField
      FieldName = 'FECHADO'
      Origin = 'ABCAIXA.FECHADO'
      FixedChar = True
      Size = 1
    end
    object TAbCaixaCOD_USUARIO: TIntegerField
      FieldName = 'COD_USUARIO'
      Origin = 'ABCAIXA.COD_USUARIO'
    end
  end
  object TLanCaixa: TIBQuery
    Database = IBDB
    Transaction = IBT
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select  first 1 * from LANCAIXA')
    UpdateObject = ULanCaixa
    Left = 176
    Top = 80
    object TLanCaixaCOD_LANC: TIntegerField
      FieldName = 'COD_LANC'
      Required = True
    end
    object TLanCaixaCOD_ABCAIXA: TIntegerField
      FieldName = 'COD_ABCAIXA'
    end
    object TLanCaixaDTLANC: TDateField
      FieldName = 'DTLANC'
    end
    object TLanCaixaCOD_PLNCTAFIL: TIntegerField
      FieldName = 'COD_PLNCTAFIL'
    end
    object TLanCaixaCOD_COTAMOEDA: TIntegerField
      FieldName = 'COD_COTAMOEDA'
    end
    object TLanCaixaTIPOGERADOR: TIBStringField
      FieldName = 'TIPOGERADOR'
      Size = 10
    end
    object TLanCaixaCOD_GERADOR: TIntegerField
      FieldName = 'COD_GERADOR'
    end
    object TLanCaixaVALOR: TIBBCDField
      FieldName = 'VALOR'
      Precision = 9
      Size = 2
    end
    object TLanCaixaTIPO: TIBStringField
      FieldName = 'TIPO'
      Size = 10
    end
    object TLanCaixaTIPCAI: TIBStringField
      FieldName = 'TIPCAI'
      Required = True
      Size = 1
    end
    object TLanCaixaCOD_USUARIO: TIntegerField
      FieldName = 'COD_USUARIO'
    end
    object TLanCaixaDOC: TIBStringField
      FieldName = 'DOC'
      Size = 15
    end
    object TLanCaixaDTREFER: TDateField
      FieldName = 'DTREFER'
    end
    object TLanCaixaESTRU: TIBStringField
      FieldName = 'ESTRU'
      Origin = 'LANCAIXA.ESTRU'
      FixedChar = True
      Size = 1
    end
    object TLanCaixaATU: TIntegerField
      FieldName = 'ATU'
      Origin = 'LANCAIXA.ATU'
    end
    object TLanCaixaEXPORTA: TSmallintField
      FieldName = 'EXPORTA'
      Origin = 'LANCAIXA.EXPORTA'
    end
    object TLanCaixaSALDOANT: TIBBCDField
      FieldName = 'SALDOANT'
      Origin = 'LANCAIXA.SALDOANT'
      Precision = 18
      Size = 2
    end
    object TLanCaixaHISTORICO: TIBStringField
      FieldName = 'HISTORICO'
      Origin = 'LANCAIXA.HISTORICO'
      Size = 200
    end
  end
  object UCaixa: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  COD_CAIXA,'
      '  NUMCAIXA,'
      '  DESCRICAO,'
      '  COD_LOJA,'
      '  COD_USUARIO,'
      '  SALDO,'
      '  TIPOCUPOM,'
      '  PORTACUPOM,'
      '  FRASECUPOM,'
      '  PRIMTITCUPOM,'
      '  SEGTITCUPOM,'
      '  TERTITCUPOM,'
      '  MODELO_IMPRESSORA,'
      '  ENDERECO_BD,'
      '  MARK,'
      '  EMITNF,'
      '  IMPRESSORA'
      'from CAIXA '
      'where'
      '  COD_CAIXA = :COD_CAIXA')
    ModifySQL.Strings = (
      'update CAIXA'
      'set'
      '  COD_CAIXA = :COD_CAIXA,'
      '  NUMCAIXA = :NUMCAIXA,'
      '  DESCRICAO = :DESCRICAO,'
      '  COD_LOJA = :COD_LOJA,'
      '  COD_USUARIO = :COD_USUARIO,'
      '  SALDO = :SALDO,'
      '  TIPOCUPOM = :TIPOCUPOM,'
      '  PORTACUPOM = :PORTACUPOM,'
      '  FRASECUPOM = :FRASECUPOM,'
      '  PRIMTITCUPOM = :PRIMTITCUPOM,'
      '  SEGTITCUPOM = :SEGTITCUPOM,'
      '  TERTITCUPOM = :TERTITCUPOM,'
      '  MODELO_IMPRESSORA = :MODELO_IMPRESSORA,'
      '  ENDERECO_BD = :ENDERECO_BD,'
      '  MARK = :MARK,'
      '  EMITNF = :EMITNF,'
      '  IMPRESSORA = :IMPRESSORA'
      'where'
      '  COD_CAIXA = :OLD_COD_CAIXA')
    InsertSQL.Strings = (
      'insert into CAIXA'
      
        '  (COD_CAIXA, NUMCAIXA, DESCRICAO, COD_LOJA, COD_USUARIO, SALDO,' +
        ' '
      'TIPOCUPOM, '
      '   PORTACUPOM, FRASECUPOM, PRIMTITCUPOM, SEGTITCUPOM, '
      'TERTITCUPOM, MODELO_IMPRESSORA, '
      '   ENDERECO_BD, MARK, EMITNF, IMPRESSORA)'
      'values'
      
        '  (:COD_CAIXA, :NUMCAIXA, :DESCRICAO, :COD_LOJA, :COD_USUARIO, :' +
        'SALDO, '
      '   :TIPOCUPOM, :PORTACUPOM, :FRASECUPOM, :PRIMTITCUPOM, '
      ':SEGTITCUPOM, :TERTITCUPOM, '
      
        '   :MODELO_IMPRESSORA, :ENDERECO_BD, :MARK, :EMITNF, :IMPRESSORA' +
        ')')
    DeleteSQL.Strings = (
      'delete from CAIXA'
      'where'
      '  COD_CAIXA = :OLD_COD_CAIXA')
    Left = 8
    Top = 128
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
    Left = 120
    Top = 128
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
      '  EXPORTA,'
      '  SALDOANT'
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
      '  EXPORTA = :EXPORTA,'
      '  SALDOANT = :SALDOANT'
      'where'
      '  COD_LANC = :OLD_COD_LANC')
    InsertSQL.Strings = (
      'insert into LANCAIXA'
      
        '  (COD_LANC, COD_ABCAIXA, DTLANC, COD_PLNCTAFIL, HISTORICO, COD_' +
        'COTAMOEDA, '
      
        '   TIPOGERADOR, COD_GERADOR, VALOR, TIPO, TIPCAI, COD_USUARIO, D' +
        'OC, DTREFER, '
      '   ESTRU, ATU, EXPORTA, SALDOANT)'
      'values'
      
        '  (:COD_LANC, :COD_ABCAIXA, :DTLANC, :COD_PLNCTAFIL, :HISTORICO,' +
        ' :COD_COTAMOEDA, '
      
        '   :TIPOGERADOR, :COD_GERADOR, :VALOR, :TIPO, :TIPCAI, :COD_USUA' +
        'RIO, :DOC, '
      '   :DTREFER, :ESTRU, :ATU, :EXPORTA, :SALDOANT)')
    DeleteSQL.Strings = (
      'delete from LANCAIXA'
      'where'
      '  COD_LANC = :OLD_COD_LANC')
    Left = 176
    Top = 128
  end
  object DCaixa: TDataSource
    DataSet = TCaixa
    Left = 8
    Top = 176
  end
  object DAbCAixa: TDataSource
    DataSet = TAbCaixa
    Left = 120
    Top = 176
  end
  object DLanCaixa: TDataSource
    DataSet = TLanCaixa
    Left = 176
    Top = 176
  end
  object TCaixaPAcess: TIBQuery
    Database = IBDB
    Transaction = IBT
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'select first 1  * FROM caixa left join caixausu ON caixausu.cod_' +
        'caixa = caixa.cod_caixa WHERE (caixa.cod_loja=:CODLOJA)')
    GeneratorField.Field = 'CODUSUARIO'
    Left = 247
    Top = 80
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CODLOJA'
        ParamType = ptUnknown
      end>
  end
  object DSCaixaPAcess: TDataSource
    DataSet = TCaixaPAcess
    Left = 247
    Top = 128
  end
  object TCaixaUsu: TIBQuery
    Database = IBDB
    Transaction = IBT
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'SELECT first 1  * FROM CAIXAUSU')
    UpdateObject = UCaixaUsu
    Left = 64
    Top = 80
    object TCaixaUsuCOD_CAIXAUSU: TIntegerField
      FieldName = 'COD_CAIXAUSU'
    end
    object TCaixaUsuCOD_CAIXA: TIntegerField
      FieldName = 'COD_CAIXA'
    end
    object TCaixaUsuCOD_USUARIO: TIntegerField
      FieldName = 'COD_USUARIO'
    end
    object TCaixaUsuCOD_USERMESTRE: TIntegerField
      FieldName = 'COD_USERMESTRE'
    end
    object TCaixaUsuDTCAD: TDateField
      FieldName = 'DTCAD'
    end
    object TCaixaUsuPRIMDIA: TIBStringField
      FieldName = 'PRIMDIA'
      Size = 10
    end
    object TCaixaUsuULTDIA: TIBStringField
      FieldName = 'ULTDIA'
      Size = 10
    end
    object TCaixaUsuHORA1: TTimeField
      FieldName = 'HORA1'
      EditMask = '!90:00;1;_'
    end
    object TCaixaUsuHORA2: TTimeField
      FieldName = 'HORA2'
      EditMask = '!90:00;1;_'
    end
  end
  object UCaixaUsu: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  COD_CAIXAUSU,'
      '  COD_CAIXA,'
      '  COD_USUARIO,'
      '  COD_USERMESTRE,'
      '  DTCAD,'
      '  PRIMDIA,'
      '  ULTDIA,'
      '  HORA1,'
      '  HORA2'
      'from CAIXAUSU '
      'where'
      '  COD_CAIXAUSU = :COD_CAIXAUSU')
    ModifySQL.Strings = (
      'update CAIXAUSU'
      'set'
      '  COD_CAIXAUSU = :COD_CAIXAUSU,'
      '  COD_CAIXA = :COD_CAIXA,'
      '  COD_USUARIO = :COD_USUARIO,'
      '  COD_USERMESTRE = :COD_USERMESTRE,'
      '  DTCAD = :DTCAD,'
      '  PRIMDIA = :PRIMDIA,'
      '  ULTDIA = :ULTDIA,'
      '  HORA1 = :HORA1,'
      '  HORA2 = :HORA2'
      'where'
      '  COD_CAIXAUSU = :OLD_COD_CAIXAUSU')
    InsertSQL.Strings = (
      'insert into CAIXAUSU'
      '  (COD_CAIXAUSU, COD_CAIXA, COD_USUARIO, COD_USERMESTRE, DTCAD, '
      'PRIMDIA, '
      '   ULTDIA, HORA1, HORA2)'
      'values'
      '  (:COD_CAIXAUSU, :COD_CAIXA, :COD_USUARIO, :COD_USERMESTRE, '
      ':DTCAD, :PRIMDIA, '
      '   :ULTDIA, :HORA1, :HORA2)')
    DeleteSQL.Strings = (
      'delete from CAIXAUSU'
      'where'
      '  COD_CAIXAUSU = :OLD_COD_CAIXAUSU')
    Left = 64
    Top = 128
  end
  object DCaixaUsu: TDataSource
    DataSet = TCaixaUsu
    Left = 64
    Top = 176
  end
  object WLancCaixa: TIBQuery
    Database = IBDB
    Transaction = IBT
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'SELECT first 1  * FROM VWLANCAIXA order by cod_lanc descending')
    GeneratorField.Field = 'CODUSUARIO'
    GeneratorField.Generator = 'USUARIO_CODUSUARIO_GEN'
    Left = 23
    Top = 232
    object WLancCaixaCOD_LANC: TIntegerField
      FieldName = 'COD_LANC'
      Origin = 'VWLANCAIXA.COD_LANC'
    end
    object WLancCaixaCOD_ABCAIXA: TIntegerField
      FieldName = 'COD_ABCAIXA'
      Origin = 'VWLANCAIXA.COD_ABCAIXA'
    end
    object WLancCaixaCOD_PLNCTAFIL: TIntegerField
      FieldName = 'COD_PLNCTAFIL'
      Origin = 'VWLANCAIXA.COD_PLNCTAFIL'
    end
    object WLancCaixaDTLANC: TDateField
      FieldName = 'DTLANC'
      Origin = 'VWLANCAIXA.DTLANC'
    end
    object WLancCaixaTIPCAI: TIBStringField
      FieldName = 'TIPCAI'
      Origin = 'VWLANCAIXA.TIPCAI'
      FixedChar = True
      Size = 1
    end
    object WLancCaixaTIPO: TIBStringField
      FieldName = 'TIPO'
      Origin = 'VWLANCAIXA.TIPO'
      Size = 10
    end
    object WLancCaixaVALOR: TIBBCDField
      FieldName = 'VALOR'
      Origin = 'VWLANCAIXA.VALOR'
      Precision = 18
      Size = 2
    end
    object WLancCaixaCLASSIFICACAO: TIBStringField
      FieldName = 'CLASSIFICACAO'
      Origin = 'VWLANCAIXA.CLASSIFICACAO'
    end
    object WLancCaixaCOD_LOJA: TIntegerField
      FieldName = 'COD_LOJA'
      Origin = 'VWLANCAIXA.COD_LOJA'
    end
    object WLancCaixaDESCRICAO: TIBStringField
      FieldName = 'DESCRICAO'
      Origin = 'VWLANCAIXA.DESCRICAO'
      Size = 100
    end
    object WLancCaixaCOD_USUARIO: TIntegerField
      FieldName = 'COD_USUARIO'
      Origin = 'VWLANCAIXA.COD_USUARIO'
    end
    object WLancCaixaLOGIN: TIBStringField
      FieldName = 'LOGIN'
      Origin = 'VWLANCAIXA.LOGIN'
      Size = 10
    end
    object WLancCaixaDOC: TIBStringField
      FieldName = 'DOC'
      Origin = 'VWLANCAIXA.DOC'
      Size = 25
    end
    object WLancCaixaESTRU: TIBStringField
      FieldName = 'ESTRU'
      Origin = 'VWLANCAIXA.ESTRU'
      FixedChar = True
      Size = 1
    end
    object WLancCaixaTIPOGERADOR: TIBStringField
      FieldName = 'TIPOGERADOR'
      Origin = 'VWLANCAIXA.TIPOGERADOR'
      Size = 10
    end
    object WLancCaixaCOD_GERADOR: TIntegerField
      FieldName = 'COD_GERADOR'
      Origin = 'VWLANCAIXA.COD_GERADOR'
    end
    object WLancCaixaHISTORICO: TIBStringField
      FieldName = 'HISTORICO'
      Origin = 'VWLANCAIXA.HISTORICO'
      Size = 200
    end
  end
  object DWLanCaixa: TDataSource
    DataSet = WLancCaixa
    Left = 23
    Top = 280
  end
  object TRel: TIBQuery
    Tag = 5
    Database = IBDB
    Transaction = IBT
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'SELECT * FROM LANCAIXA')
    GeneratorField.Field = 'CODUSUARIO'
    Left = 79
    Top = 232
  end
  object DSRel: TDataSource
    DataSet = TRel
    Left = 79
    Top = 280
  end
end
