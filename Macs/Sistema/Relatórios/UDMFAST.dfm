object DMFAST: TDMFAST
  OldCreateOrder = False
  Left = 400
  Top = 196
  Height = 379
  Width = 493
  object MDODataBase: TMDODatabase
    ClientLib = clGDS32
    DatabaseName = 'SERV:C:\MZR\Macs\DBMACS.GDB'
    DefaultTransaction = MDOTrans
    IdleTimer = 0
    LoginPrompt = False
    Params.Strings = (
      'user_name=SYSDBA'
      'password=masterkey'
      'lc_ctype=ISO8859_1')
    SQLDialect = 3
    TraceFlags = []
    Left = 24
    Top = 8
  end
  object MDOTrans: TMDOTransaction
    Active = False
    AutoCommit = False
    DefaultDatabase = MDODataBase
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    Left = 24
    Top = 56
  end
  object QAlx: TMDOQuery
    Database = MDODataBase
    Transaction = MDOTrans
    BufferChunks = 1000
    CachedUpdates = False
    LoadDefaults = False
    Left = 96
    Top = 8
  end
  object QAlx1: TMDOQuery
    Database = MDODataBase
    Transaction = MDOTrans
    BufferChunks = 1000
    CachedUpdates = False
    LoadDefaults = False
    Left = 152
    Top = 8
  end
  object QAlx2: TMDOQuery
    Database = MDODataBase
    Transaction = MDOTrans
    BufferChunks = 1000
    CachedUpdates = False
    LoadDefaults = False
    Left = 200
    Top = 8
  end
  object QAlx3: TMDOQuery
    Database = MDODataBase
    Transaction = MDOTrans
    BufferChunks = 1000
    CachedUpdates = False
    LoadDefaults = False
    Left = 256
    Top = 8
  end
  object QAlx4: TMDOQuery
    Database = MDODataBase
    Transaction = MDOTrans
    BufferChunks = 1000
    CachedUpdates = False
    LoadDefaults = False
    Left = 312
    Top = 8
  end
  object QItRel: TMDOQuery
    Database = MDODataBase
    Transaction = MDOTrans
    BufferChunks = 1000
    CachedUpdates = False
    LoadDefaults = False
    Left = 96
    Top = 64
  end
  object QItRel1: TMDOQuery
    Database = MDODataBase
    Transaction = MDOTrans
    BufferChunks = 1000
    CachedUpdates = False
    LoadDefaults = False
    Left = 152
    Top = 64
  end
end
