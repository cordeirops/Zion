object DMFINANC: TDMFINANC
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 6
  Top = 4
  Height = 438
  Width = 638
  object DataBase: TIBDatabase
    DatabaseName = 'NOTE:C:\MZR\MACS\DBMACS.GDB'
    Params.Strings = (
      'user_name=SYSDBA'
      'password=masterkey'
      'sql_role_name=3'
      'lc_ctype=ISO8859_1')
    LoginPrompt = False
    DefaultTransaction = Transaction
    IdleTimer = 0
    SQLDialect = 3
    TraceFlags = [tfQExecute, tfError, tfStmt]
    Left = 16
    Top = 7
  end
  object Transaction: TIBTransaction
    Active = False
    DefaultDatabase = DataBase
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    AutoStopAction = saNone
    Left = 72
    Top = 7
  end
  object TAlx: TIBQuery
    Tag = 5
    Database = DataBase
    Transaction = Transaction
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'Select cliente.cod_interno as CODINTERNO, pessoa.nome as NOME, p' +
        'essoa.cpfcnpj, pessoa.endereco as ENDERECO, pessoa.endnumero as ' +
        'ENDNUM, pessoa.bairro as BAIRRO,'
      
        'parcelacr.cod_parcelacr as COD_PARCELA,parcelacr.numparc as NUMP' +
        'ARC, parcelacr.numboleto as NUMBOLETO, parcelacr.dtvenc as DTVEN' +
        'C,'
      
        'parcelacr.valor as VALOR, parcelacr.cobranca as COBRANCA, ctarec' +
        'eber.dtlanc as DTLANC, plncta.descricao as DESCCONTA, plncta.cla' +
        'ssificacao as CLASSIF,'
      
        'plncta.cod_plncta, vwfuncionario.nome as VENDEDOR, cartao.descri' +
        'cao as BANDEIRA, ctacor.numctacor as NUMCONTA, ctacor.cod_ctacor' +
        ', formpag.cod_formpag, formpag.descricao as FORMPAG,'
      'parcelacr.mark as MARK'
      'from parcelacr'
      
        'left join ctareceber on ctareceber.cod_ctareceber = parcelacr.co' +
        'd_ctareceber'
      'left join ctacor on parcelacr.cod_ctacor = ctacor.cod_ctacor'
      'left join plncta on ctareceber.cod_plncta = plncta.cod_plncta'
      'left join cartao on parcelacr.cod_cota = cartao.cod_cartao'
      
        'left join formpag ON ctareceber.cod_formpag = formpag.cod_formpa' +
        'g'
      
        'left join vwfuncionario on ctareceber.cod_vendedor = vwfuncionar' +
        'io.cod_func'
      
        'left join cliente on cliente.cod_cliente = ctareceber.cod_client' +
        'e'
      'left join pessoa on pessoa.cod_pessoa = cliente.cod_pessoa'
      'where pessoa.cod_pessoa =:param')
    Left = 136
    Top = 9
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'param'
        ParamType = ptUnknown
      end>
  end
  object UPMoeda: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  COD_MOEDA,'
      '  MOEDA,'
      '  PLURALMOEDA,'
      '  FRACAO,'
      '  PLURALFRACAO,'
      '  ORIGEM,'
      '  SIMBOLO'
      'from MOEDA '
      'where'
      '  COD_MOEDA = :COD_MOEDA')
    ModifySQL.Strings = (
      'update MOEDA'
      'set'
      '  COD_MOEDA = :COD_MOEDA,'
      '  MOEDA = :MOEDA,'
      '  PLURALMOEDA = :PLURALMOEDA,'
      '  FRACAO = :FRACAO,'
      '  PLURALFRACAO = :PLURALFRACAO,'
      '  ORIGEM = :ORIGEM,'
      '  SIMBOLO = :SIMBOLO'
      'where'
      '  COD_MOEDA = :OLD_COD_MOEDA')
    InsertSQL.Strings = (
      'insert into MOEDA'
      
        '  (COD_MOEDA, MOEDA, PLURALMOEDA, FRACAO, PLURALFRACAO, ORIGEM, ' +
        'SIMBOLO)'
      'values'
      
        '  (:COD_MOEDA, :MOEDA, :PLURALMOEDA, :FRACAO, :PLURALFRACAO, :OR' +
        'IGEM, :SIMBOLO)')
    DeleteSQL.Strings = (
      'delete from MOEDA'
      'where'
      '  COD_MOEDA = :OLD_COD_MOEDA')
    Left = 80
    Top = 132
  end
  object DSMoeda: TDataSource
    DataSet = TMOEDA
    Left = 84
    Top = 181
  end
  object TCotaMoeda: TIBQuery
    Tag = 5
    Database = DataBase
    Transaction = Transaction
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'Select * from cotamoeda')
    UpdateObject = UPCotaMoeda
    GeneratorField.Field = 'COD_COTA'
    GeneratorField.Generator = 'COTAMOEDA_COD_COTA_GEN'
    Left = 142
    Top = 88
    object TCotaMoedaCOD_COTA: TIntegerField
      FieldName = 'COD_COTA'
      Required = True
    end
    object TCotaMoedaCOD_MOEDA: TIntegerField
      FieldName = 'COD_MOEDA'
    end
    object TCotaMoedaCOD_MOEDAREF: TIntegerField
      FieldName = 'COD_MOEDAREF'
      LookupKeyFields = 'COD_MOEDA'
      LookupResultField = 'MOEDA'
    end
    object TCotaMoedaVALOR: TIBBCDField
      FieldName = 'VALOR'
      currency = True
      Precision = 9
      Size = 2
    end
    object TCotaMoedaDATA: TDateField
      FieldName = 'DATA'
      EditMask = '!99/99/0000;1;_'
    end
  end
  object UPCotaMoeda: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  COD_COTA,'
      '  COD_MOEDA,'
      '  COD_MOEDAREF,'
      '  VALOR,'
      '  DATA'
      'from COTAMOEDA '
      'where'
      '  COD_COTA = :COD_COTA')
    ModifySQL.Strings = (
      'update COTAMOEDA'
      'set'
      '  COD_COTA = :COD_COTA,'
      '  COD_MOEDA = :COD_MOEDA,'
      '  COD_MOEDAREF = :COD_MOEDAREF,'
      '  VALOR = :VALOR,'
      '  DATA = :DATA'
      'where'
      '  COD_COTA = :OLD_COD_COTA')
    InsertSQL.Strings = (
      'insert into COTAMOEDA'
      '  (COD_COTA, COD_MOEDA, COD_MOEDAREF, VALOR, DATA)'
      'values'
      '  (:COD_COTA, :COD_MOEDA, :COD_MOEDAREF, :VALOR, :DATA)')
    DeleteSQL.Strings = (
      'delete from COTAMOEDA'
      'where'
      '  COD_COTA = :OLD_COD_COTA')
    Left = 142
    Top = 132
  end
  object DSCotaMoeda: TDataSource
    DataSet = TCotaMoeda
    Left = 140
    Top = 181
  end
  object TAlxMoeda: TIBQuery
    Tag = 5
    Database = DataBase
    Transaction = Transaction
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from MOEDA')
    Left = 18
    Top = 85
  end
  object DSAlxMoeda: TDataSource
    DataSet = TAlxMoeda
    Left = 18
    Top = 131
  end
  object TFormPag: TIBQuery
    Database = DataBase
    Transaction = Transaction
    BeforePost = TFormPagBeforePost
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select  first 1 * from FORMPAG')
    UpdateObject = UPFORMPAG
    GeneratorField.Field = 'COD_FORMPAG'
    Left = 223
    Top = 88
    object TFormPagCOD_FORMPAG: TIntegerField
      FieldName = 'COD_FORMPAG'
      Origin = 'FORMPAG.COD_FORMPAG'
      Required = True
    end
    object TFormPagCOD_LOJA: TIntegerField
      FieldName = 'COD_LOJA'
      Origin = 'FORMPAG.COD_LOJA'
    end
    object TFormPagDESCRICAO: TIBStringField
      FieldName = 'DESCRICAO'
      Origin = 'FORMPAG.DESCRICAO'
      Size = 100
    end
    object TFormPagDESCFISC: TIBStringField
      FieldName = 'DESCFISC'
      Origin = 'FORMPAG.DESCFISC'
      Size = 15
    end
    object TFormPagPRIMPARCELA: TIntegerField
      FieldName = 'PRIMPARCELA'
      Origin = 'FORMPAG.PRIMPARCELA'
    end
    object TFormPagINTERVALO: TIntegerField
      FieldName = 'INTERVALO'
      Origin = 'FORMPAG.INTERVALO'
    end
    object TFormPagQUANTPARCELA: TIntegerField
      FieldName = 'QUANTPARCELA'
      Origin = 'FORMPAG.QUANTPARCELA'
    end
    object TFormPagJUROAPLIC: TFloatField
      FieldName = 'JUROAPLIC'
      Origin = 'FORMPAG.JUROAPLIC'
    end
    object TFormPagMEDIADIAS: TIntegerField
      FieldName = 'MEDIADIAS'
      Origin = 'FORMPAG.MEDIADIAS'
    end
    object TFormPagTIPO: TIBStringField
      FieldName = 'TIPO'
      Origin = 'FORMPAG.TIPO'
      FixedChar = True
      Size = 1
    end
    object TFormPagCOD_INTERNO: TSmallintField
      FieldName = 'COD_INTERNO'
      Origin = 'FORMPAG.COD_INTERNO'
    end
    object TFormPagATIVADESC: TIBStringField
      FieldName = 'ATIVADESC'
      Origin = 'FORMPAG.ATIVADESC'
      FixedChar = True
      Size = 1
    end
    object TFormPagDESCFORMPAG: TFloatField
      FieldName = 'DESCFORMPAG'
      Origin = 'FORMPAG.DESCFORMPAG'
    end
    object TFormPagMOBILE: TIBStringField
      FieldName = 'MOBILE'
      Origin = 'FORMPAG.MOBILE'
      FixedChar = True
      Size = 1
    end
  end
  object UPFORMPAG: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  COD_FORMPAG,'
      '  COD_LOJA,'
      '  DESCRICAO,'
      '  DESCFISC,'
      '  PRIMPARCELA,'
      '  INTERVALO,'
      '  QUANTPARCELA,'
      '  JUROAPLIC,'
      '  MEDIADIAS,'
      '  TIPO,'
      '  COD_INTERNO,'
      '  ATIVADESC,'
      '  DESCFORMPAG,'
      '  MOBILE'
      'from FORMPAG '
      'where'
      '  COD_FORMPAG = :COD_FORMPAG')
    ModifySQL.Strings = (
      'update FORMPAG'
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
      '  DESCFORMPAG = :DESCFORMPAG,'
      '  MOBILE = :MOBILE'
      'where'
      '  COD_FORMPAG = :OLD_COD_FORMPAG')
    InsertSQL.Strings = (
      'insert into FORMPAG'
      
        '  (COD_FORMPAG, COD_LOJA, DESCRICAO, DESCFISC, PRIMPARCELA, INTE' +
        'RVALO, '
      
        '   QUANTPARCELA, JUROAPLIC, MEDIADIAS, TIPO, COD_INTERNO, ATIVAD' +
        'ESC, DESCFORMPAG, '
      '   MOBILE)'
      'values'
      
        '  (:COD_FORMPAG, :COD_LOJA, :DESCRICAO, :DESCFISC, :PRIMPARCELA,' +
        ' :INTERVALO, '
      
        '   :QUANTPARCELA, :JUROAPLIC, :MEDIADIAS, :TIPO, :COD_INTERNO, :' +
        'ATIVADESC, '
      '   :DESCFORMPAG, :MOBILE)')
    DeleteSQL.Strings = (
      'delete from FORMPAG'
      'where'
      '  COD_FORMPAG = :OLD_COD_FORMPAG')
    Left = 224
    Top = 135
  end
  object DSFORMPAG: TDataSource
    DataSet = TFormPag
    Left = 224
    Top = 184
  end
  object DSALX: TDataSource
    DataSet = TAlx
    Left = 192
    Top = 8
  end
  object TMOEDA: TIBQuery
    Tag = 5
    Database = DataBase
    Transaction = Transaction
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'SELECT * FROM MOEDA')
    UpdateObject = UPMoeda
    GeneratorField.Field = 'COD_MOEDA'
    Left = 80
    Top = 88
    object TMOEDACOD_MOEDA: TIntegerField
      FieldName = 'COD_MOEDA'
      Required = True
    end
    object TMOEDAMOEDA: TIBStringField
      FieldName = 'MOEDA'
      Size = 25
    end
    object TMOEDAPLURALMOEDA: TIBStringField
      FieldName = 'PLURALMOEDA'
      Size = 25
    end
    object TMOEDAFRACAO: TIBStringField
      FieldName = 'FRACAO'
      Size = 25
    end
    object TMOEDAPLURALFRACAO: TIBStringField
      FieldName = 'PLURALFRACAO'
      Size = 25
    end
    object TMOEDAORIGEM: TIBStringField
      FieldName = 'ORIGEM'
      Size = 40
    end
    object TMOEDASIMBOLO: TIBStringField
      FieldName = 'SIMBOLO'
      Size = 5
    end
  end
  object TimerAtu: TTimer
    OnTimer = TimerAtuTimer
    Left = 568
    Top = 8
  end
  object TSelctComProd: TIBQuery
    Tag = 5
    Database = DataBase
    Transaction = Transaction
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'Select * from comprod left join vwfuncionario on vwfuncionario.c' +
        'od_func=comprod.cod_funcionario')
    Left = 16
    Top = 255
  end
  object DSelectComProd: TDataSource
    DataSet = TSelctComProd
    Left = 16
    Top = 302
  end
  object DSelectComServ: TDataSource
    DataSet = TSelectComserv
    Left = 100
    Top = 302
  end
  object TSelectComserv: TIBQuery
    Tag = 5
    Database = DataBase
    Transaction = Transaction
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'Select * from comserv left join vwfuncionario on vwfuncionario.c' +
        'od_func=comserv.cod_funcionario')
    Left = 100
    Top = 255
  end
  object TRel: TIBQuery
    Tag = 5
    Database = DataBase
    Transaction = Transaction
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'SELECT distinct(parcelacr.cod_parcelacr), CLIENTE.COD_INTERNO, p' +
        'arcelacr.dtvenc, parcelacr.numparc, parcelacr.valExt, parcelacr.' +
        'valor, '
      
        'pessoa.bairro, pessoa.cep, Pessoa.Telrel, pessoa.cpfcnpj, pessoa' +
        '.endereco, pessoa.nome, '
      
        'CtaReceber.NumDoc, CtaReceber.DTLanc, cidade.nome, estado.uf_est' +
        'ado '
      
        'FROM parcelacr join ctareceber ON parcelacr.cod_ctareceber = cta' +
        'receber.cod_ctareceber '
      'JOIN cliente on cliente.cod_cliente = ctareceber.cod_cliente '
      'join pessoa ON pessoa.cod_pessoa = cliente.cod_pessoa '
      'left join cidade on cidade.cod_cidade = pessoa.cod_cidade '
      'left join estado ON estado.cod_estado = cidade.cod_estado ')
    Left = 161
    Top = 256
  end
  object DRel: TDataSource
    DataSet = TRel
    Left = 162
    Top = 303
  end
  object TComis: TIBQuery
    Database = DataBase
    Transaction = Transaction
    AutoCalcFields = False
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'Select   first 1 *    from COMISSAO')
    UpdateObject = UCOMIS
    GeneratorField.Field = 'COD_ESTOQUE'
    Left = 277
    Top = 88
    object TComisCOD_COMISSAO: TIntegerField
      FieldName = 'COD_COMISSAO'
      Origin = 'COMISSAO.COD_COMISSAO'
    end
    object TComisCOD_GERADOR: TIntegerField
      FieldName = 'COD_GERADOR'
      Origin = 'COMISSAO.COD_GERADOR'
    end
    object TComisGERADOR: TIBStringField
      FieldName = 'GERADOR'
      Origin = 'COMISSAO.GERADOR'
      Size = 15
    end
    object TComisCOD_FUNCIONARIO: TIntegerField
      FieldName = 'COD_FUNCIONARIO'
      Origin = 'COMISSAO.COD_FUNCIONARIO'
    end
    object TComisVLRPROD: TIBBCDField
      FieldName = 'VLRPROD'
      Origin = 'COMISSAO.VLRPROD'
      Precision = 18
      Size = 2
    end
    object TComisVLRSERV: TIBBCDField
      FieldName = 'VLRSERV'
      Origin = 'COMISSAO.VLRSERV'
      Precision = 18
      Size = 2
    end
    object TComisPERPROD: TIBBCDField
      FieldName = 'PERPROD'
      Origin = 'COMISSAO.PERPROD'
      Precision = 18
      Size = 2
    end
    object TComisPERSERV: TIBBCDField
      FieldName = 'PERSERV'
      Origin = 'COMISSAO.PERSERV'
      Precision = 18
      Size = 2
    end
    object TComisVLRCOMISPROD: TIBBCDField
      FieldName = 'VLRCOMISPROD'
      Origin = 'COMISSAO.VLRCOMISPROD'
      Precision = 18
      Size = 2
    end
    object TComisVLRCOMISSERV: TIBBCDField
      FieldName = 'VLRCOMISSERV'
      Origin = 'COMISSAO.VLRCOMISSERV'
      Precision = 18
      Size = 2
    end
  end
  object UCOMIS: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  COD_COMISSAO,'
      '  COD_GERADOR,'
      '  GERADOR,'
      '  COD_FUNCIONARIO,'
      '  VLRPROD,'
      '  VLRSERV,'
      '  PERPROD,'
      '  PERSERV,'
      '  VLRCOMISPROD,'
      '  VLRCOMISSERV'
      'from COMISSAO '
      'where'
      '  COD_COMISSAO = :COD_COMISSAO')
    ModifySQL.Strings = (
      'update COMISSAO'
      'set'
      '  COD_COMISSAO = :COD_COMISSAO,'
      '  COD_GERADOR = :COD_GERADOR,'
      '  GERADOR = :GERADOR,'
      '  COD_FUNCIONARIO = :COD_FUNCIONARIO,'
      '  VLRPROD = :VLRPROD,'
      '  VLRSERV = :VLRSERV,'
      '  PERPROD = :PERPROD,'
      '  PERSERV = :PERSERV,'
      '  VLRCOMISPROD = :VLRCOMISPROD,'
      '  VLRCOMISSERV = :VLRCOMISSERV'
      'where'
      '  COD_COMISSAO = :OLD_COD_COMISSAO')
    InsertSQL.Strings = (
      'insert into COMISSAO'
      
        '  (COD_COMISSAO, COD_GERADOR, GERADOR, COD_FUNCIONARIO, VLRPROD,' +
        ' VLRSERV, '
      '   PERPROD, PERSERV, VLRCOMISPROD, VLRCOMISSERV)'
      'values'
      
        '  (:COD_COMISSAO, :COD_GERADOR, :GERADOR, :COD_FUNCIONARIO, :VLR' +
        'PROD, :VLRSERV, '
      '   :PERPROD, :PERSERV, :VLRCOMISPROD, :VLRCOMISSERV)')
    DeleteSQL.Strings = (
      'delete from COMISSAO'
      'where'
      '  COD_COMISSAO = :OLD_COD_COMISSAO')
    Left = 278
    Top = 135
  end
  object DCOMISS: TDataSource
    DataSet = TComis
    Left = 278
    Top = 185
  end
  object TSlctComis: TIBQuery
    Tag = 5
    Database = DataBase
    Transaction = Transaction
    AutoCalcFields = False
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'Select comissao.cod_comissao, comissao.perprod, comissao.perserv' +
        ', comissao.vlrcomisprod,'
      
        '       comissao.vlrcomisserv, comissao.vlrprod, comissao.vlrserv' +
        ', vwfuncionario.nome AS FUNC,'
      
        '       pedvenda.dtpedven AS DATA, pedvenda.numped AS DOC, pedven' +
        'da.valor AS VLRTOT'
      '       From comissao'
      
        'Left join vwfuncionario on comissao.cod_funcionario = vwfunciona' +
        'rio.cod_func'
      
        'left join pedvenda on comissao.cod_gerador = pedvenda.cod_pedven' +
        'da')
    UpdateObject = USlctComis
    GeneratorField.Field = 'COD_ESTOQUE'
    Left = 333
    Top = 88
  end
  object USlctComis: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  COD_COMISSAO,'
      '  COD_GERADOR,'
      '  GERADOR,'
      '  COD_FUNCIONARIO,'
      '  VLRPROD,'
      '  VLRSERV,'
      '  PERPROD,'
      '  PERSERV,'
      '  VLRCOMISPROD,'
      '  VLRCOMISSERV'
      'from COMISSAO '
      'where'
      '  COD_COMISSAO = :COD_COMISSAO')
    ModifySQL.Strings = (
      'update COMISSAO'
      'set'
      '  COD_COMISSAO = :COD_COMISSAO,'
      '  PERPROD = :PERPROD,'
      '  PERSERV = :PERSERV,'
      '  VLRCOMISPROD = :VLRCOMISPROD,'
      '  VLRCOMISSERV = :VLRCOMISSERV,'
      '  VLRPROD = :VLRPROD,'
      '  VLRSERV = :VLRSERV,'
      '  FUNC = :FUNC,'
      '  DATA = :DATA,'
      '  DOC = :DOC,'
      '  VLRTOT = :VLRTOT'
      'where'
      '  COD_COMISSAO = :OLD_COD_COMISSAO')
    InsertSQL.Strings = (
      'insert into COMISSAO'
      
        '  (COD_COMISSAO, PERPROD, PERSERV, VLRCOMISPROD, VLRCOMISSERV, V' +
        'LRPROD, '
      '   VLRSERV, FUNC, DATA, DOC, VLRTOT)'
      'values'
      
        '  (:COD_COMISSAO, :PERPROD, :PERSERV, :VLRCOMISPROD, :VLRCOMISSE' +
        'RV, :VLRPROD, '
      '   :VLRSERV, :FUNC, :DATA, :DOC, :VLRTOT)')
    DeleteSQL.Strings = (
      'delete from COMISSAO'
      'where'
      '  COD_COMISSAO = :OLD_COD_COMISSAO')
    Left = 334
    Top = 135
  end
  object DSlctComis: TDataSource
    DataSet = TSlctComis
    Left = 334
    Top = 185
  end
  object TCredito: TIBQuery
    Tag = 5
    Database = DataBase
    Transaction = Transaction
    AutoCalcFields = False
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'SELECT * FROM CREDITO')
    UpdateObject = UCredito
    GeneratorField.Field = 'COD_ESTOQUE'
    Left = 397
    Top = 88
    object TCreditoCOD_CREDITO: TIntegerField
      FieldName = 'COD_CREDITO'
      Origin = 'CREDITO.COD_CREDITO'
      Required = True
    end
    object TCreditoCOD_PESSOA: TIntegerField
      FieldName = 'COD_PESSOA'
      Origin = 'CREDITO.COD_PESSOA'
    end
    object TCreditoCOD_GERADOR: TIntegerField
      FieldName = 'COD_GERADOR'
      Origin = 'CREDITO.COD_GERADOR'
    end
    object TCreditoTIPOPES: TIBStringField
      FieldName = 'TIPOPES'
      Origin = 'CREDITO.TIPOPES'
      Size = 15
    end
    object TCreditoTIPOCRED: TIBStringField
      FieldName = 'TIPOCRED'
      Origin = 'CREDITO.TIPOCRED'
      Size = 15
    end
    object TCreditoVALOR: TIBBCDField
      FieldName = 'VALOR'
      Origin = 'CREDITO.VALOR'
      Precision = 18
      Size = 2
    end
    object TCreditoSALDO: TIBBCDField
      FieldName = 'SALDO'
      Origin = 'CREDITO.SALDO'
      Precision = 18
      Size = 2
    end
    object TCreditoDOCUMENTO: TIBStringField
      FieldName = 'DOCUMENTO'
      Origin = 'CREDITO.DOCUMENTO'
      Size = 15
    end
    object TCreditoDATA: TDateField
      FieldName = 'DATA'
      Origin = 'CREDITO.DATA'
    end
    object TCreditoTIPOGERADOR: TIBStringField
      FieldName = 'TIPOGERADOR'
      Origin = 'CREDITO.TIPOGERADOR'
      Size = 15
    end
  end
  object UCredito: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  COD_CREDITO,'
      '  COD_PESSOA,'
      '  COD_GERADOR,'
      '  TIPOPES,'
      '  TIPOCRED,'
      '  VALOR,'
      '  SALDO,'
      '  DOCUMENTO,'
      '  DATA,'
      '  TIPOGERADOR'
      'from CREDITO '
      'where'
      '  COD_CREDITO = :COD_CREDITO')
    ModifySQL.Strings = (
      'update CREDITO'
      'set'
      '  COD_CREDITO = :COD_CREDITO,'
      '  COD_PESSOA = :COD_PESSOA,'
      '  COD_GERADOR = :COD_GERADOR,'
      '  TIPOPES = :TIPOPES,'
      '  TIPOCRED = :TIPOCRED,'
      '  VALOR = :VALOR,'
      '  SALDO = :SALDO,'
      '  DOCUMENTO = :DOCUMENTO,'
      '  DATA = :DATA,'
      '  TIPOGERADOR = :TIPOGERADOR'
      'where'
      '  COD_CREDITO = :OLD_COD_CREDITO')
    InsertSQL.Strings = (
      'insert into CREDITO'
      '  (COD_CREDITO, COD_PESSOA, COD_GERADOR, TIPOPES, TIPOCRED, '
      'VALOR, SALDO, '
      '   DOCUMENTO, DATA, TIPOGERADOR)'
      'values'
      
        '  (:COD_CREDITO, :COD_PESSOA, :COD_GERADOR, :TIPOPES, :TIPOCRED,' +
        ' '
      ':VALOR, '
      '   :SALDO, :DOCUMENTO, :DATA, :TIPOGERADOR)')
    DeleteSQL.Strings = (
      'delete from CREDITO'
      'where'
      '  COD_CREDITO = :OLD_COD_CREDITO')
    Left = 398
    Top = 135
  end
  object DCredito: TDataSource
    DataSet = TCredito
    Left = 398
    Top = 185
  end
  object DCartao: TDataSource
    DataSet = TCartao
    Left = 454
    Top = 185
  end
  object TCartao: TIBQuery
    Tag = 5
    Database = DataBase
    Transaction = Transaction
    AutoCalcFields = False
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      ' Select * from cartao ')
    UpdateObject = UCartao
    GeneratorField.Field = 'COD_ESTOQUE'
    Left = 456
    Top = 88
    object TCartaoCOD_CARTAO: TIntegerField
      FieldName = 'COD_CARTAO'
      Origin = 'CARTAO.COD_CARTAO'
      Required = True
    end
    object TCartaoDESCRICAO: TIBStringField
      FieldName = 'DESCRICAO'
      Origin = 'CARTAO.DESCRICAO'
      Size = 50
    end
    object TCartaoTAXA: TIBBCDField
      FieldName = 'TAXA'
      Origin = 'CARTAO.TAXA'
      Precision = 9
      Size = 2
    end
    object TCartaoPARCINI: TSmallintField
      FieldName = 'PARCINI'
      Origin = 'CARTAO.PARCINI'
    end
    object TCartaoPARCFIN: TSmallintField
      FieldName = 'PARCFIN'
      Origin = 'CARTAO.PARCFIN'
    end
    object TCartaoBANDEIRA: TIBStringField
      FieldName = 'BANDEIRA'
      Origin = 'CARTAO.BANDEIRA'
      Size = 50
    end
  end
  object UCartao: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      'from cartao '
      'where'
      '  COD_CARTAO = :COD_CARTAO')
    ModifySQL.Strings = (
      'update cartao'
      'set'
      '  COD_CARTAO = :COD_CARTAO,'
      '  DESCRICAO = :DESCRICAO,'
      '  TAXA = :TAXA,'
      '  BANDEIRA = :BANDEIRA,'
      '  PARCINI = :PARCINI,'
      '  PARCFIN = :PARCFIN'
      'where'
      '  COD_CARTAO = :OLD_COD_CARTAO')
    InsertSQL.Strings = (
      'insert into cartao'
      '  (COD_CARTAO, DESCRICAO, TAXA, BANDEIRA, PARCINI, PARCFIN)'
      'values'
      
        '  (:COD_CARTAO, :DESCRICAO, :TAXA, :BANDEIRA, :PARCINI, :PARCFIN' +
        ')')
    DeleteSQL.Strings = (
      'delete from cartao'
      'where'
      '  COD_CARTAO = :OLD_COD_CARTAO')
    Left = 454
    Top = 135
  end
end
