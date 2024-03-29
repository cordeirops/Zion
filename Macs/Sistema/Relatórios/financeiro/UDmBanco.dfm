object DMBANCO: TDMBANCO
  OldCreateOrder = False
  Left = 237
  Top = 148
  Height = 462
  Width = 652
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
    Top = 8
  end
  object TAlx: TIBQuery
    Tag = 5
    Database = IBDB
    Transaction = IBT
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'Select vwchequerec.banco, vwchequerec.numcheque, vwchequerec.val' +
        'or From vwchequerec')
    Left = 144
    Top = 8
  end
  object Dalx: TDataSource
    DataSet = TAlx
    Left = 184
    Top = 8
  end
  object TBanco: TIBQuery
    Database = IBDB
    Transaction = IBT
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select first 1 * from BANCO')
    UpdateObject = UBanco
    Left = 16
    Top = 80
    object TBancoCOD_BANC: TIntegerField
      FieldName = 'COD_BANC'
      Required = True
    end
    object TBancoNUMBANCO: TIntegerField
      FieldName = 'NUMBANCO'
    end
    object TBancoDESCBANCO: TIBStringField
      FieldName = 'DESCBANCO'
      Size = 60
    end
    object TBancoWEBSITE: TIBStringField
      FieldName = 'WEBSITE'
      Size = 60
    end
    object TBancoLOGOBANCO: TMemoField
      FieldName = 'LOGOBANCO'
      Origin = 'BANCO.LOGOBANCO'
      BlobType = ftMemo
      Size = 8
    end
  end
  object UBanco: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  COD_BANC,'
      '  NUMBANCO,'
      '  DESCBANCO,'
      '  WEBSITE,'
      '  LOGOBANCO'
      'from BANCO '
      'where'
      '  COD_BANC = :COD_BANC')
    ModifySQL.Strings = (
      'update BANCO'
      'set'
      '  COD_BANC = :COD_BANC,'
      '  NUMBANCO = :NUMBANCO,'
      '  DESCBANCO = :DESCBANCO,'
      '  WEBSITE = :WEBSITE,'
      '  LOGOBANCO = :LOGOBANCO'
      'where'
      '  COD_BANC = :OLD_COD_BANC')
    InsertSQL.Strings = (
      'insert into BANCO'
      '  (COD_BANC, NUMBANCO, DESCBANCO, WEBSITE, LOGOBANCO)'
      'values'
      '  (:COD_BANC, :NUMBANCO, :DESCBANCO, :WEBSITE, :LOGOBANCO)')
    DeleteSQL.Strings = (
      'delete from BANCO'
      'where'
      '  COD_BANC = :OLD_COD_BANC')
    Left = 16
    Top = 126
  end
  object DBAnco: TDataSource
    DataSet = TBanco
    Left = 16
    Top = 173
  end
  object DCtaCor: TDataSource
    DataSet = TCtaCor
    Left = 118
    Top = 173
  end
  object DAgencia: TDataSource
    DataSet = TAgencia
    Left = 67
    Top = 173
  end
  object TAgencia: TIBQuery
    Database = IBDB
    Transaction = IBT
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select first 1 * from AGENCIA')
    UpdateObject = UAgencia
    Left = 67
    Top = 80
    object TAgenciaCOD_AGENCIA: TIntegerField
      FieldName = 'COD_AGENCIA'
      Required = True
    end
    object TAgenciaCOD_BANCO: TIntegerField
      FieldName = 'COD_BANCO'
    end
    object TAgenciaNUMAGENCIA: TIBStringField
      FieldName = 'NUMAGENCIA'
      Size = 10
    end
    object TAgenciaCOD_PESSOA: TIntegerField
      FieldName = 'COD_PESSOA'
    end
  end
  object TCtaCor: TIBQuery
    Database = IBDB
    Transaction = IBT
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select first 1 * from CTACOR')
    UpdateObject = UCtaCor
    Left = 118
    Top = 80
    object TCtaCorCOD_CTACOR: TIntegerField
      FieldName = 'COD_CTACOR'
      Origin = 'CTACOR.COD_CTACOR'
      Required = True
    end
    object TCtaCorCOD_AGENCIA: TIntegerField
      FieldName = 'COD_AGENCIA'
      Origin = 'CTACOR.COD_AGENCIA'
    end
    object TCtaCorNUMCTACOR: TIBStringField
      FieldName = 'NUMCTACOR'
      Origin = 'CTACOR.NUMCTACOR'
      Size = 10
    end
    object TCtaCorDTCAD: TDateField
      FieldName = 'DTCAD'
      Origin = 'CTACOR.DTCAD'
    end
    object TCtaCorDTABERT: TDateField
      FieldName = 'DTABERT'
      Origin = 'CTACOR.DTABERT'
    end
    object TCtaCorPROXCHEQUE: TIBStringField
      FieldName = 'PROXCHEQUE'
      Origin = 'CTACOR.PROXCHEQUE'
      Size = 15
    end
    object TCtaCorLIMITE: TIBBCDField
      FieldName = 'LIMITE'
      Origin = 'CTACOR.LIMITE'
      Precision = 18
      Size = 2
    end
    object TCtaCorSALDO: TIBBCDField
      FieldName = 'SALDO'
      Origin = 'CTACOR.SALDO'
      Precision = 18
      Size = 2
    end
    object TCtaCorNOSSONUMBLT: TIBStringField
      FieldName = 'NOSSONUMBLT'
      Origin = 'CTACOR.NOSSONUMBLT'
      Size = 15
    end
    object TCtaCorDIGCTACOR: TIBStringField
      FieldName = 'DIGCTACOR'
      Origin = 'CTACOR.DIGCTACOR'
      Size = 1
    end
    object TCtaCorCODCEDENTEBLT: TIBStringField
      FieldName = 'CODCEDENTEBLT'
      Origin = 'CTACOR.CODCEDENTEBLT'
      Size = 15
    end
    object TCtaCorDIGCODCEDENTEBLT: TIBStringField
      FieldName = 'DIGCODCEDENTEBLT'
      Origin = 'CTACOR.DIGCODCEDENTEBLT'
      FixedChar = True
      Size = 1
    end
    object TCtaCorPROXBOLETO: TIntegerField
      FieldName = 'PROXBOLETO'
      Origin = 'CTACOR.PROXBOLETO'
    end
    object TCtaCorNUMAGENCBLT: TIBStringField
      FieldName = 'NUMAGENCBLT'
      Origin = 'CTACOR.NUMAGENCBLT'
      Size = 10
    end
    object TCtaCorDIGAGENCBLT: TIBStringField
      FieldName = 'DIGAGENCBLT'
      Origin = 'CTACOR.DIGAGENCBLT'
      Size = 10
    end
    object TCtaCorINSTRUBOLETO: TMemoField
      FieldName = 'INSTRUBOLETO'
      Origin = 'CTACOR.INSTRUBOLETO'
      BlobType = ftMemo
      Size = 8
    end
    object TCtaCorCONTREMESSA: TIntegerField
      FieldName = 'CONTREMESSA'
      Origin = 'CTACOR.CONTREMESSA'
    end
    object TCtaCorDIASPROT: TIntegerField
      FieldName = 'DIASPROT'
      Origin = 'CTACOR.DIASPROT'
    end
    object TCtaCorPROTAUT: TIBStringField
      FieldName = 'PROTAUT'
      Origin = 'CTACOR.PROTAUT'
      FixedChar = True
      Size = 1
    end
    object TCtaCorCODEMPRESABLT: TIBStringField
      FieldName = 'CODEMPRESABLT'
      Origin = 'CTACOR.CODEMPRESABLT'
      Size = 15
    end
    object TCtaCorCODCARTEIRABLT: TIBStringField
      FieldName = 'CODCARTEIRABLT'
      Origin = 'CTACOR.CODCARTEIRABLT'
      Size = 3
    end
  end
  object UAgencia: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  COD_AGENCIA,'
      '  COD_BANCO,'
      '  NUMAGENCIA,'
      '  COD_PESSOA'
      'from AGENCIA '
      'where'
      '  COD_AGENCIA = :COD_AGENCIA')
    ModifySQL.Strings = (
      'update AGENCIA'
      'set'
      '  COD_AGENCIA = :COD_AGENCIA,'
      '  COD_BANCO = :COD_BANCO,'
      '  NUMAGENCIA = :NUMAGENCIA,'
      '  COD_PESSOA = :COD_PESSOA'
      'where'
      '  COD_AGENCIA = :OLD_COD_AGENCIA')
    InsertSQL.Strings = (
      'insert into AGENCIA'
      '  (COD_AGENCIA, COD_BANCO, NUMAGENCIA, COD_PESSOA)'
      'values'
      '  (:COD_AGENCIA, :COD_BANCO, :NUMAGENCIA, :COD_PESSOA)')
    DeleteSQL.Strings = (
      'delete from AGENCIA'
      'where'
      '  COD_AGENCIA = :OLD_COD_AGENCIA')
    Left = 67
    Top = 126
  end
  object UCtaCor: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  COD_CTACOR,'
      '  COD_AGENCIA,'
      '  NUMCTACOR,'
      '  DTCAD,'
      '  DTABERT,'
      '  PROXCHEQUE,'
      '  LIMITE,'
      '  SALDO,'
      '  NOSSONUMBLT,'
      '  CODCARTEIRABLT,'
      '  DIGCTACOR,'
      '  CODCEDENTEBLT,'
      '  DIGCODCEDENTEBLT,'
      '  PROXBOLETO,'
      '  NUMAGENCBLT,'
      '  DIGAGENCBLT,'
      '  INSTRUBOLETO,'
      '  CONTREMESSA,'
      '  DIASPROT,'
      '  PROTAUT,'
      '  CODEMPRESABLT'
      'from CTACOR '
      'where'
      '  COD_CTACOR = :COD_CTACOR')
    ModifySQL.Strings = (
      'update CTACOR'
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
      'insert into CTACOR'
      
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
      'delete from CTACOR'
      'where'
      '  COD_CTACOR = :OLD_COD_CTACOR')
    Left = 118
    Top = 125
  end
  object DWAgencia: TDataSource
    DataSet = WAgencia
    Left = 68
    Top = 269
  end
  object WAgencia: TIBQuery
    Database = IBDB
    Transaction = IBT
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select first 1  * from VWAGENCIA')
    Left = 68
    Top = 224
    object WAgenciaCOD_AGENCIA: TIntegerField
      FieldName = 'COD_AGENCIA'
      Origin = 'VWAGENCIA.COD_AGENCIA'
    end
    object WAgenciaNUMAGENCIA: TIBStringField
      FieldName = 'NUMAGENCIA'
      Origin = 'VWAGENCIA.NUMAGENCIA'
      Size = 10
    end
    object WAgenciaCOD_BANC: TIntegerField
      FieldName = 'COD_BANC'
      Origin = 'VWAGENCIA.COD_BANC'
    end
    object WAgenciaNUMBANC: TIntegerField
      FieldName = 'NUMBANC'
      Origin = 'VWAGENCIA.NUMBANC'
    end
    object WAgenciaCOD_PESSOA: TIntegerField
      FieldName = 'COD_PESSOA'
      Origin = 'VWAGENCIA.COD_PESSOA'
    end
    object WAgenciaNOME: TIBStringField
      FieldName = 'NOME'
      Origin = 'VWAGENCIA.NOME'
      Size = 100
    end
  end
  object DWCtaCor: TDataSource
    DataSet = WCtaCor
    Left = 121
    Top = 269
  end
  object WCtaCor: TIBQuery
    Database = IBDB
    Transaction = IBT
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select  first 1 * from VWCTACOR')
    Left = 121
    Top = 224
    object WCtaCorCOD_CTACOR: TIntegerField
      FieldName = 'COD_CTACOR'
    end
    object WCtaCorNUMCTACOR: TIBStringField
      FieldName = 'NUMCTACOR'
      Size = 10
    end
    object WCtaCorDTABERT: TDateField
      FieldName = 'DTABERT'
    end
    object WCtaCorCOD_AGENCIA: TIntegerField
      FieldName = 'COD_AGENCIA'
    end
    object WCtaCorNUMAGENCIA: TIBStringField
      FieldName = 'NUMAGENCIA'
      Size = 10
    end
    object WCtaCorDESCBANCO: TIBStringField
      FieldName = 'DESCBANCO'
      Size = 100
    end
    object WCtaCorSALDO: TIBBCDField
      FieldName = 'SALDO'
      DisplayFormat = '0.00'
      EditFormat = '0.00'
      currency = True
      Precision = 9
      Size = 2
    end
  end
  object DWMovB: TDataSource
    DataSet = WMovB
    Left = 177
    Top = 268
  end
  object WMovB: TIBQuery
    Database = IBDB
    Transaction = IBT
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select  first 1 * from VWMOVBANCO')
    Left = 177
    Top = 223
    object WMovBCOD_MOVBANCO: TIntegerField
      FieldName = 'COD_MOVBANCO'
      Origin = 'VWMOVBANCO.COD_MOVBANCO'
    end
    object WMovBCOBRANCA: TIBStringField
      FieldName = 'COBRANCA'
      Origin = 'VWMOVBANCO.COBRANCA'
      Size = 10
    end
    object WMovBCOD_CTACOR: TIntegerField
      FieldName = 'COD_CTACOR'
      Origin = 'VWMOVBANCO.COD_CTACOR'
    end
    object WMovBCOD_PLNCTA: TIntegerField
      FieldName = 'COD_PLNCTA'
      Origin = 'VWMOVBANCO.COD_PLNCTA'
    end
    object WMovBCOD_USUARIO: TIntegerField
      FieldName = 'COD_USUARIO'
      Origin = 'VWMOVBANCO.COD_USUARIO'
    end
    object WMovBDTLANC: TDateField
      FieldName = 'DTLANC'
      Origin = 'VWMOVBANCO.DTLANC'
    end
    object WMovBDTMOV: TDateField
      FieldName = 'DTMOV'
      Origin = 'VWMOVBANCO.DTMOV'
    end
    object WMovBDTVENC: TDateField
      FieldName = 'DTVENC'
      Origin = 'VWMOVBANCO.DTVENC'
    end
    object WMovBFECH: TIBStringField
      FieldName = 'FECH'
      Origin = 'VWMOVBANCO.FECH'
      FixedChar = True
      Size = 1
    end
    object WMovBHISTORICO: TIBStringField
      FieldName = 'HISTORICO'
      Origin = 'VWMOVBANCO.HISTORICO'
      Size = 100
    end
    object WMovBHORALANC: TTimeField
      FieldName = 'HORALANC'
      Origin = 'VWMOVBANCO.HORALANC'
    end
    object WMovBTIPOOP: TIBStringField
      FieldName = 'TIPOOP'
      Origin = 'VWMOVBANCO.TIPOOP'
      Size = 10
    end
    object WMovBVALOR: TIBBCDField
      FieldName = 'VALOR'
      Origin = 'VWMOVBANCO.VALOR'
      Precision = 18
      Size = 2
    end
    object WMovBCLASSIFICACAO: TIBStringField
      FieldName = 'CLASSIFICACAO'
      Origin = 'VWMOVBANCO.CLASSIFICACAO'
    end
    object WMovBCONTA: TIBStringField
      FieldName = 'CONTA'
      Origin = 'VWMOVBANCO.CONTA'
      Size = 100
    end
    object WMovBNUMCHEQUE: TIBStringField
      FieldName = 'NUMCHEQUE'
      Origin = 'VWMOVBANCO.NUMCHEQUE'
      Size = 10
    end
    object WMovBVER: TIBStringField
      FieldName = 'VER'
      Origin = 'VWMOVBANCO.VER'
      FixedChar = True
      Size = 1
    end
    object WMovBCOD_ABBANCO: TIntegerField
      FieldName = 'COD_ABBANCO'
      Origin = 'VWMOVBANCO.COD_ABBANCO'
    end
    object WMovBMARK: TIBStringField
      FieldName = 'MARK'
      Origin = 'VWMOVBANCO.MARK'
      Size = 1
    end
    object WMovBDESTINATARIOCH: TIBStringField
      FieldName = 'DESTINATARIOCH'
      Origin = 'VWMOVBANCO.DESTINATARIOCH'
      Size = 60
    end
  end
  object DMovBanco: TDataSource
    DataSet = TMovBanco
    Left = 175
    Top = 174
  end
  object TMovBanco: TIBQuery
    Database = IBDB
    Transaction = IBT
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select first 1 * from MOVBANCO'
      '')
    UpdateObject = UpMovBanco
    Left = 176
    Top = 81
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
  object UpMovBanco: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  COD_MOVBANCO,'
      '  COD_CTACOR,'
      '  HORALANC,'
      '  DTLANC,'
      '  COD_PLNCTA,'
      '  HISTORICO,'
      '  COD_USUARIO,'
      '  DTMOV,'
      '  COD_COTA,'
      '  VALOR,'
      '  TIPOOP,'
      '  COBRANCA,'
      '  DTVENC,'
      '  FECH,'
      '  TIPOGERADOR,'
      '  COD_GERADOR,'
      '  NUMCHEQUE,'
      '  VER,'
      '  VALORSERV,'
      '  VALORPROD,'
      '  COD_PLNCTASERV,'
      '  PERVLRSERV,'
      '  ESTRU,'
      '  COD_ABBANCO,'
      '  DTREF,'
      '  MARK,'
      '  DESTINATARIOCH'
      'from MOVBANCO '
      'where'
      '  COD_MOVBANCO = :COD_MOVBANCO')
    ModifySQL.Strings = (
      'update MOVBANCO'
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
      'insert into MOVBANCO'
      
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
      'delete from MOVBANCO'
      'where'
      '  COD_MOVBANCO = :OLD_COD_MOVBANCO')
    Left = 175
    Top = 126
  end
  object TChequeRec: TIBQuery
    Database = IBDB
    Transaction = IBT
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'SELECT first 1 * FROM CHEQUEREC')
    UpdateObject = UChequeRec
    Left = 241
    Top = 81
    object TChequeRecCOD_CHEQUEREC: TIntegerField
      FieldName = 'COD_CHEQUEREC'
      Required = True
    end
    object TChequeRecCOD_BANCO: TIntegerField
      FieldName = 'COD_BANCO'
    end
    object TChequeRecNUMAGENCIA: TIBStringField
      FieldName = 'NUMAGENCIA'
      Size = 10
    end
    object TChequeRecNUMCONTA: TIBStringField
      FieldName = 'NUMCONTA'
      Size = 10
    end
    object TChequeRecCOD_MOVBANCO: TIntegerField
      FieldName = 'COD_MOVBANCO'
    end
    object TChequeRecEMITENTE: TIBStringField
      FieldName = 'EMITENTE'
      Size = 80
    end
    object TChequeRecCPFEMIT: TIBStringField
      FieldName = 'CPFEMIT'
    end
    object TChequeRecFONE: TIBStringField
      FieldName = 'FONE'
      Size = 15
    end
    object TChequeRecDESTINO: TIBStringField
      FieldName = 'DESTINO'
      Origin = 'CHEQUEREC.DESTINO'
      Size = 25
    end
  end
  object UChequeRec: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  COD_CHEQUEREC,'
      '  COD_BANCO,'
      '  NUMAGENCIA,'
      '  NUMCONTA,'
      '  COD_MOVBANCO,'
      '  FONE,'
      '  EMITENTE,'
      '  CPFEMIT,'
      '  DESTINO'
      'from CHEQUEREC '
      'where'
      '  COD_CHEQUEREC = :COD_CHEQUEREC')
    ModifySQL.Strings = (
      'update CHEQUEREC'
      'set'
      '  COD_CHEQUEREC = :COD_CHEQUEREC,'
      '  COD_BANCO = :COD_BANCO,'
      '  NUMAGENCIA = :NUMAGENCIA,'
      '  NUMCONTA = :NUMCONTA,'
      '  COD_MOVBANCO = :COD_MOVBANCO,'
      '  FONE = :FONE,'
      '  EMITENTE = :EMITENTE,'
      '  CPFEMIT = :CPFEMIT,'
      '  DESTINO = :DESTINO'
      'where'
      '  COD_CHEQUEREC = :OLD_COD_CHEQUEREC')
    InsertSQL.Strings = (
      'insert into CHEQUEREC'
      
        '  (COD_CHEQUEREC, COD_BANCO, NUMAGENCIA, NUMCONTA, COD_MOVBANCO,' +
        ' FONE, '
      '   EMITENTE, CPFEMIT, DESTINO)'
      'values'
      
        '  (:COD_CHEQUEREC, :COD_BANCO, :NUMAGENCIA, :NUMCONTA, :COD_MOVB' +
        'ANCO, :FONE, '
      '   :EMITENTE, :CPFEMIT, :DESTINO)')
    DeleteSQL.Strings = (
      'delete from CHEQUEREC'
      'where'
      '  COD_CHEQUEREC = :OLD_COD_CHEQUEREC')
    Left = 241
    Top = 126
  end
  object DChequeRec: TDataSource
    DataSet = TChequeRec
    Left = 242
    Top = 174
  end
  object WChequeRec: TIBQuery
    Database = IBDB
    Transaction = IBT
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select first 1 * from VWCHEQUEREC')
    Left = 241
    Top = 223
    object WChequeRecBANCO: TIBStringField
      FieldName = 'BANCO'
      Size = 100
    end
    object WChequeRecCLASSCONTA: TIBStringField
      FieldName = 'CLASSCONTA'
    end
    object WChequeRecCONTA: TIBStringField
      FieldName = 'CONTA'
      Size = 100
    end
    object WChequeRecFECH: TIBStringField
      FieldName = 'FECH'
      Size = 1
    end
    object WChequeRecCOD_MOVBANCO: TIntegerField
      FieldName = 'COD_MOVBANCO'
    end
    object WChequeRecCOD_CHEQUEREC: TIntegerField
      FieldName = 'COD_CHEQUEREC'
    end
    object WChequeRecNUMAG: TIBStringField
      FieldName = 'NUMAG'
      Size = 10
    end
    object WChequeRecNUMCTA: TIBStringField
      FieldName = 'NUMCTA'
      Size = 10
    end
    object WChequeRecDTLANC: TDateField
      FieldName = 'DTLANC'
    end
    object WChequeRecDTVENC: TDateField
      FieldName = 'DTVENC'
    end
    object WChequeRecDTMOV: TDateField
      FieldName = 'DTMOV'
    end
    object WChequeRecUSUARIO: TIntegerField
      FieldName = 'USUARIO'
    end
    object WChequeRecVALOR: TIBBCDField
      FieldName = 'VALOR'
      Precision = 9
      Size = 2
    end
    object WChequeRecNUMCHEQUE: TIBStringField
      FieldName = 'NUMCHEQUE'
      Size = 10
    end
    object WChequeRecHISTORICO: TIBStringField
      FieldName = 'HISTORICO'
      Size = 100
    end
    object WChequeRecCTACORLAN: TIBStringField
      FieldName = 'CTACORLAN'
      Size = 10
    end
    object WChequeRecEMITENTE: TIBStringField
      FieldName = 'EMITENTE'
      Size = 60
    end
    object WChequeRecCPFEMIT: TIBStringField
      FieldName = 'CPFEMIT'
    end
    object WChequeRecDESTINO: TIBStringField
      FieldName = 'DESTINO'
      Origin = 'VWCHEQUEREC.DESTINO'
      Size = 25
    end
  end
  object DWChequeRec: TDataSource
    DataSet = WChequeRec
    Left = 242
    Top = 268
  end
  object TAbBanco: TIBQuery
    Database = IBDB
    Transaction = IBT
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'SELECT first 1 * FROM ABBANCO')
    UpdateObject = UAbBanco
    Left = 305
    Top = 81
    object TAbBancoCOD_ABBANCO: TIntegerField
      FieldName = 'COD_ABBANCO'
      Origin = 'ABBANCO.COD_ABBANCO'
    end
    object TAbBancoCOD_CTACOR: TIntegerField
      FieldName = 'COD_CTACOR'
      Origin = 'ABBANCO.COD_CTACOR'
    end
    object TAbBancoDATA_ABERT: TDateField
      FieldName = 'DATA_ABERT'
      Origin = 'ABBANCO.DATA_ABERT'
    end
    object TAbBancoHORA_ABERTURA: TTimeField
      FieldName = 'HORA_ABERTURA'
      Origin = 'ABBANCO.HORA_ABERTURA'
    end
    object TAbBancoSALDOINI: TIBBCDField
      FieldName = 'SALDOINI'
      Origin = 'ABBANCO.SALDOINI'
      Precision = 18
      Size = 2
    end
    object TAbBancoSALDOFIN: TIBBCDField
      FieldName = 'SALDOFIN'
      Origin = 'ABBANCO.SALDOFIN'
      Precision = 18
      Size = 2
    end
    object TAbBancoDTFECH: TDateField
      FieldName = 'DTFECH'
      Origin = 'ABBANCO.DTFECH'
    end
    object TAbBancoHORAFECH: TTimeField
      FieldName = 'HORAFECH'
      Origin = 'ABBANCO.HORAFECH'
    end
    object TAbBancoFECHADO: TIBStringField
      FieldName = 'FECHADO'
      Origin = 'ABBANCO.FECHADO'
      FixedChar = True
      Size = 1
    end
    object TAbBancoCOD_USUARIO: TIntegerField
      FieldName = 'COD_USUARIO'
      Origin = 'ABBANCO.COD_USUARIO'
    end
  end
  object UAbBanco: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  COD_ABBANCO,'
      '  COD_CTACOR,'
      '  DATA_ABERT,'
      '  HORA_ABERTURA,'
      '  SALDOINI,'
      '  SALDOFIN,'
      '  DTFECH,'
      '  HORAFECH,'
      '  FECHADO,'
      '  COD_USUARIO'
      'from ABBANCO '
      'where'
      '  COD_ABBANCO = :COD_ABBANCO')
    ModifySQL.Strings = (
      'update ABBANCO'
      'set'
      '  COD_ABBANCO = :COD_ABBANCO,'
      '  COD_CTACOR = :COD_CTACOR,'
      '  DATA_ABERT = :DATA_ABERT,'
      '  HORA_ABERTURA = :HORA_ABERTURA,'
      '  SALDOINI = :SALDOINI,'
      '  SALDOFIN = :SALDOFIN,'
      '  DTFECH = :DTFECH,'
      '  HORAFECH = :HORAFECH,'
      '  FECHADO = :FECHADO,'
      '  COD_USUARIO = :COD_USUARIO'
      'where'
      '  COD_ABBANCO = :OLD_COD_ABBANCO')
    InsertSQL.Strings = (
      'insert into ABBANCO'
      
        '  (COD_ABBANCO, COD_CTACOR, DATA_ABERT, HORA_ABERTURA, SALDOINI,' +
        ' SALDOFIN, '
      '   DTFECH, HORAFECH, FECHADO, COD_USUARIO)'
      'values'
      
        '  (:COD_ABBANCO, :COD_CTACOR, :DATA_ABERT, :HORA_ABERTURA, :SALD' +
        'OINI, :SALDOFIN, '
      '   :DTFECH, :HORAFECH, :FECHADO, :COD_USUARIO)')
    DeleteSQL.Strings = (
      'delete from ABBANCO'
      'where'
      '  COD_ABBANCO = :OLD_COD_ABBANCO')
    Left = 305
    Top = 126
  end
  object DAbBanco: TDataSource
    DataSet = TAbBanco
    Left = 306
    Top = 174
  end
end
