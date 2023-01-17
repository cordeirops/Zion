object MDO: TMDO
  OldCreateOrder = False
  Left = 166
  Top = 52
  Height = 402
  Width = 562
  object DB: TMDODatabase
    ClientLib = clGDS32
    DatabaseName = 'serv:C:\MZR\MACS\DBMACS.GDB'
    DefaultTransaction = Transac
    IdleTimer = 0
    LoginPrompt = False
    Params.Strings = (
      'user_name=SYSDBA'
      'password=masterkey'
      'lc_ctype=ISO8859_1')
    SQLDialect = 3
    TraceFlags = []
    Left = 16
    Top = 8
  end
  object Transac: TMDOTransaction
    Active = False
    AutoCommit = False
    DefaultDatabase = DB
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    Left = 72
    Top = 8
  end
  object Query: TMDOQuery
    Database = DB
    Transaction = Transac
    BufferChunks = 1000
    CachedUpdates = False
    LoadDefaults = False
    Left = 40
    Top = 48
  end
  object QConsulta: TMDOQuery
    Database = DB
    Transaction = Transac
    BufferChunks = 1000
    CachedUpdates = False
    LoadDefaults = False
    SQL.Strings = (
      
        'select Distinct(vwctacor.cod_ctacor), vwctacor.descbanco, abbanc' +
        'o.fechado, abbanco.cod_abbanco FROM vwctacor'
      'left join abbanco on vwctacor.cod_ctacor = abbanco.cod_ctacor'
      'where (abbanco.fechado='#39'N'#39')')
    Left = 39
    Top = 104
  end
  object QLoja: TMDOQuery
    Database = DB
    Transaction = TransacLoja
    BufferChunks = 1000
    CachedUpdates = False
    LoadDefaults = False
    Left = 432
    Top = 16
  end
  object TransacLoja: TMDOTransaction
    Active = False
    AutoCommit = False
    DefaultDatabase = DB
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    Left = 496
    Top = 16
  end
  object QAlx1: TMDOQuery
    Database = DB
    Transaction = Transac
    BufferChunks = 1000
    CachedUpdates = False
    LoadDefaults = False
    Left = 432
    Top = 72
  end
  object QAlx2: TMDOQuery
    Database = DB
    Transaction = Transac
    BufferChunks = 1000
    CachedUpdates = False
    LoadDefaults = False
    Left = 496
    Top = 72
  end
  object QView: TMDOQuery
    Database = DB
    Transaction = Transac
    BufferChunks = 1000
    CachedUpdates = False
    LoadDefaults = False
    SQL.Strings = (
      
        ' Select tmp.cod_tmp, tmp.desc1 as NUMPARCELA, tmp.desc2 as NUMBO' +
        'LETO, tmp.data1 as VENCIMENTO, tmp.data2 as REFERENCIA,'
      
        ' tmp.vlr1 as VALOR, tmp.desc500 as HISTORICO, tmp.desc3 as TIPO ' +
        'from Tmp')
    Left = 432
    Top = 168
  end
  object DView: TDataSource
    DataSet = QView
    Left = 430
    Top = 224
  end
  object DConsulta: TDataSource
    DataSet = QConsulta
    Left = 38
    Top = 152
  end
end
