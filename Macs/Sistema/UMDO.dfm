object MDO: TMDO
  OldCreateOrder = False
  Left = 879
  Top = 8
  Height = 402
  Width = 562
  object DB: TMDODatabase
    ClientLib = clGDS32
    Connected = True
    DatabaseName = 'C:\MZR\MACS\DBMACS.GDB'
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
    Active = True
    AutoCommit = False
    DefaultAction = TACommitRetaining
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
    Active = True
    BufferChunks = 1000
    CachedUpdates = False
    LoadDefaults = False
    SQL.Strings = (
      ' SELECT * FROM ANTECIPACOES')
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
    DefaultAction = TACommitRetaining
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
  object Query1: TMDOQuery
    Database = DB
    Transaction = Transac
    BufferChunks = 1000
    CachedUpdates = False
    LoadDefaults = False
    SQL.Strings = (
      
        ' Select itprodord.cod_itprodord, unidade.sigla_unid as UNIDADE, ' +
        'itprodord.cod_ordem, itprodord.cod_estoque,  itprodord.numreq, i' +
        'tprodord.qtd, itprodord.qtdRET, itprodord.total,'
      
        ' itprodord.desconto, itprodord.data, itprodord.cod_funcionario, ' +
        'itprodord.vlrunit, subproduto.contrint, subproduto.descricao, su' +
        'bproduto.marca, SubProduto.CODPRODFABR, itprodord.operacao,'
      
        ' itprodord.baseicms, itprodord.vlricms, itprodord.aliqicms, cst.' +
        'cod_sit_trib, itprodord.descnf as DESCONTONF, subproduto.ncm, it' +
        'prodord.VALCOMP,'
      
        ' subproduto.contrint AS PRIMCOD, subproduto.codprodfabr AS SEGCO' +
        'D'
      ' From itprodord'
      
        ' left Join estoque on itprodord.cod_estoque = estoque.cod_estoqu' +
        'e'
      
        ' Left Join subproduto on estoque.cod_subprod = subproduto.cod_su' +
        'bproduto'
      ' left join cst ON itprodord.cod_cst = cst.cod_cst'
      
        ' Left Join unidade on subproduto.cod_unidvenda = unidade.cod_uni' +
        'dade'
      ' order by itprodord.cod_itprodord desc')
    Left = 115
    Top = 108
  end
  object Ds01: TDataSource
    DataSet = Query1
    Left = 114
    Top = 156
  end
  object Query2: TMDOQuery
    Database = DB
    Transaction = Transac
    BufferChunks = 1000
    CachedUpdates = False
    LoadDefaults = False
    SQL.Strings = (
      ' select * from despadic'
      ' left join equipe on despadic.cod_equipe = equipe.cod_equipe'
      
        ' left join vwsubservico on despadic.cod_servico = vwsubservico.c' +
        'od_subservico'
      
        ' where (despadic.cod_gerador= :cod) and (despadic.gerador='#39'ORDEM' +
        #39')'
      ' order by despadic.cod_despadic desc')
    Left = 159
    Top = 112
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cod'
        ParamType = ptUnknown
      end>
  end
  object DS02: TDataSource
    DataSet = Query2
    Left = 158
    Top = 160
  end
  object Query3: TMDOQuery
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
    Left = 203
    Top = 108
  end
  object DS03: TDataSource
    DataSet = Query3
    Left = 202
    Top = 156
  end
end
