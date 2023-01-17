object DMUpBanco: TDMUpBanco
  OldCreateOrder = False
  Left = 437
  Top = 326
  Height = 194
  Width = 317
  object DB: TMDODatabase
    ClientLib = clGDS32
    DatabaseName = 'note:C:\MZR\ATUALIZA\ATUAL\DBMACS.GDB'
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
    Top = 16
  end
  object Transac: TMDOTransaction
    Active = False
    AutoCommit = False
    Left = 64
    Top = 16
  end
  object QConsulta: TMDOQuery
    Database = DB
    Transaction = Transac
    BufferChunks = 1000
    CachedUpdates = False
    LoadDefaults = False
    Left = 24
    Top = 80
  end
  object QConsulta1: TMDOQuery
    Database = DB
    Transaction = Transac
    BufferChunks = 1000
    CachedUpdates = False
    LoadDefaults = False
    Left = 88
    Top = 80
  end
  object QConsulta3: TMDOQuery
    Database = DB
    Transaction = Transac
    BufferChunks = 1000
    CachedUpdates = False
    LoadDefaults = False
    Left = 152
    Top = 80
  end
end
