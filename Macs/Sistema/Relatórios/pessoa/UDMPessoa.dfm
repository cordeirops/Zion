object DMPESSOA: TDMPESSOA
  OldCreateOrder = False
  Left = 246
  Top = 121
  Height = 552
  Width = 767
  object DBPessoa: TIBDatabase
    DatabaseName = 'note:C:\MZR\DataBase\Mercescan\dbmacs.gdb'
    Params.Strings = (
      'user_name=SYSDBA'
      'password=masterkey'
      'sql_role_name=3'
      'lc_ctype=ISO8859_1')
    LoginPrompt = False
    DefaultTransaction = TransacPessoa
    IdleTimer = 0
    SQLDialect = 3
    TraceFlags = [tfQExecute, tfError, tfStmt]
    Left = 16
    Top = 16
  end
  object TransacPessoa: TIBTransaction
    Active = False
    DefaultDatabase = DBPessoa
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    AutoStopAction = saNone
    Left = 88
    Top = 8
  end
  object TTelefone: TIBQuery
    Database = DBPessoa
    Transaction = TransacPessoa
    ForcedRefresh = True
    BeforePost = TTelefoneBeforePost
    BufferChunks = 1000
    CachedUpdates = True
    SQL.Strings = (
      'select  first 1 * from TELEFONE')
    UpdateObject = UPTelefone
    GeneratorField.Field = 'COD_TELEFONE'
    Left = 32
    Top = 216
    object TTelefoneCOD_TELEFONE: TIntegerField
      FieldName = 'COD_TELEFONE'
      Origin = 'TELEFONE.COD_TELEFONE'
      Required = True
    end
    object TTelefoneCOD_PESSOA: TIntegerField
      FieldName = 'COD_PESSOA'
      Origin = 'TELEFONE.COD_PESSOA'
    end
    object TTelefoneDESCRICAO: TIBStringField
      FieldName = 'DESCRICAO'
      Origin = 'TELEFONE.DESCRICAO'
      Size = 30
    end
    object TTelefoneCONTATO: TIBStringField
      FieldName = 'CONTATO'
      Origin = 'TELEFONE.CONTATO'
      Size = 30
    end
    object TTelefoneNUMERO: TIBStringField
      FieldName = 'NUMERO'
      Origin = 'TELEFONE.NUMERO'
      Size = 25
    end
  end
  object UPTelefone: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  COD_TELEFONE,'
      '  COD_PESSOA,'
      '  DESCRICAO,'
      '  CONTATO,'
      '  NUMERO'
      'from TELEFONE '
      'where'
      '  COD_TELEFONE = :COD_TELEFONE')
    ModifySQL.Strings = (
      'update TELEFONE'
      'set'
      '  COD_TELEFONE = :COD_TELEFONE,'
      '  COD_PESSOA = :COD_PESSOA,'
      '  DESCRICAO = :DESCRICAO,'
      '  CONTATO = :CONTATO,'
      '  NUMERO = :NUMERO'
      'where'
      '  COD_TELEFONE = :OLD_COD_TELEFONE')
    InsertSQL.Strings = (
      'insert into TELEFONE'
      '  (COD_TELEFONE, COD_PESSOA, DESCRICAO, CONTATO, NUMERO)'
      'values'
      '  (:COD_TELEFONE, :COD_PESSOA, :DESCRICAO, :CONTATO, :NUMERO)')
    DeleteSQL.Strings = (
      'delete from TELEFONE'
      'where'
      '  COD_TELEFONE = :OLD_COD_TELEFONE')
    Left = 32
    Top = 264
  end
  object DSTelefone: TDataSource
    DataSet = TTelefone
    Left = 32
    Top = 312
  end
  object TEmail: TIBQuery
    Database = DBPessoa
    Transaction = TransacPessoa
    ForcedRefresh = True
    BeforePost = TEmailBeforePost
    BufferChunks = 1000
    CachedUpdates = True
    SQL.Strings = (
      'select  first 1 * from Email')
    UpdateObject = UPEmail
    GeneratorField.Field = 'COD_EMAIL'
    Left = 88
    Top = 216
    object TEmailCOD_EMAIL: TIntegerField
      FieldName = 'COD_EMAIL'
      Required = True
    end
    object TEmailCOD_PESSOA: TIntegerField
      FieldName = 'COD_PESSOA'
    end
    object TEmailDESCRICAO: TIBStringField
      FieldName = 'DESCRICAO'
      Size = 30
    end
    object TEmailEMAIL: TIBStringField
      FieldName = 'EMAIL'
      Size = 60
    end
  end
  object UPEmail: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select *'
      'from Email '
      'where'
      '  COD_EMAIL = :COD_EMAIL')
    ModifySQL.Strings = (
      'update Email'
      'set'
      '  COD_EMAIL = :COD_EMAIL,'
      '  COD_PESSOA = :COD_PESSOA,'
      '  DESCRICAO = :DESCRICAO,'
      '  EMAIL = :EMAIL'
      'where'
      '  COD_EMAIL = :OLD_COD_EMAIL')
    InsertSQL.Strings = (
      'insert into Email'
      '  (COD_EMAIL, COD_PESSOA, DESCRICAO, EMAIL)'
      'values'
      '  (:COD_EMAIL, :COD_PESSOA, :DESCRICAO, :EMAIL)')
    DeleteSQL.Strings = (
      'delete from Email'
      'where'
      '  COD_EMAIL = :OLD_COD_EMAIL')
    Left = 88
    Top = 264
  end
  object DSEmail: TDataSource
    DataSet = TEmail
    Left = 88
    Top = 312
  end
  object TPessoaJ: TIBQuery
    Database = DBPessoa
    Transaction = TransacPessoa
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select first 1  * from PESSOAJ')
    UpdateObject = UPPessoaJ
    Left = 136
    Top = 64
    object TPessoaJCOD_PESSOAJ: TIntegerField
      FieldName = 'COD_PESSOAJ'
      Required = True
    end
    object TPessoaJCOD_PESSOA: TIntegerField
      FieldName = 'COD_PESSOA'
    end
    object TPessoaJINSC_EST: TIBStringField
      FieldName = 'INSC_EST'
    end
    object TPessoaJRAZAO_SOCIAL: TIBStringField
      FieldName = 'RAZAO_SOCIAL'
      Size = 60
    end
    object TPessoaJINSC_MUN: TIBStringField
      FieldName = 'INSC_MUN'
    end
    object TPessoaJWEB_PAGE: TIBStringField
      FieldName = 'WEB_PAGE'
      Size = 60
    end
    object TPessoaJINS_ST: TIBStringField
      FieldName = 'INS_ST'
      Origin = 'PESSOAJ.INS_ST'
      Size = 15
    end
    object TPessoaJINDUSTRIA: TIBStringField
      FieldName = 'INDUSTRIA'
      Origin = 'PESSOAJ.INDUSTRIA'
      FixedChar = True
      Size = 1
    end
  end
  object UPPessoaJ: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  COD_PESSOAJ,'
      '  COD_PESSOA,'
      '  INSC_EST,'
      '  RAZAO_SOCIAL,'
      '  INSC_MUN,'
      '  WEB_PAGE,'
      '  INS_ST,'
      '  INDUSTRIA'
      'from PESSOAJ '
      'where'
      '  COD_PESSOAJ = :COD_PESSOAJ')
    ModifySQL.Strings = (
      'update PESSOAJ'
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
      'insert into PESSOAJ'
      
        '  (COD_PESSOAJ, COD_PESSOA, INSC_EST, RAZAO_SOCIAL, INSC_MUN, WE' +
        'B_PAGE, '
      '   INS_ST, INDUSTRIA)'
      'values'
      
        '  (:COD_PESSOAJ, :COD_PESSOA, :INSC_EST, :RAZAO_SOCIAL, :INSC_MU' +
        'N, :WEB_PAGE, '
      '   :INS_ST, :INDUSTRIA)')
    DeleteSQL.Strings = (
      'delete from PESSOAJ'
      'where'
      '  COD_PESSOAJ = :OLD_COD_PESSOAJ')
    Left = 137
    Top = 109
  end
  object DSPessoaJ: TDataSource
    DataSet = TPessoaJ
    Left = 136
    Top = 152
  end
  object TPessoaF: TIBQuery
    Database = DBPessoa
    Transaction = TransacPessoa
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select  first 1 * from PESSOAF')
    UpdateObject = UPPessoaF
    Left = 88
    Top = 64
    object TPessoaFCOD_PESSOAF: TIntegerField
      FieldName = 'COD_PESSOAF'
      Required = True
    end
    object TPessoaFCOD_PESSOA: TIntegerField
      FieldName = 'COD_PESSOA'
    end
    object TPessoaFESTADO_CIVIL: TIBStringField
      FieldName = 'ESTADO_CIVIL'
      Size = 12
    end
    object TPessoaFSEXO: TIBStringField
      FieldName = 'SEXO'
      Size = 1
    end
    object TPessoaFEMP_TRAB: TIBStringField
      FieldName = 'EMP_TRAB'
      Size = 60
    end
    object TPessoaFEND_TRAB: TIBStringField
      FieldName = 'END_TRAB'
      Size = 60
    end
    object TPessoaFBAIRRO_TRAB: TIBStringField
      FieldName = 'BAIRRO_TRAB'
      Size = 60
    end
    object TPessoaFDATA_ADMIS: TDateField
      FieldName = 'DATA_ADMIS'
      EditMask = '!99/99/0000;1;_'
    end
    object TPessoaFRG: TIBStringField
      FieldName = 'RG'
    end
    object TPessoaFDATA_EXPED: TDateField
      FieldName = 'DATA_EXPED'
      EditMask = '!99/99/0000;1;_'
    end
    object TPessoaFORGAO_EXPED: TIBStringField
      FieldName = 'ORGAO_EXPED'
      Size = 5
    end
    object TPessoaFTITULO: TIBStringField
      FieldName = 'TITULO'
    end
    object TPessoaFNOME_CONJ: TIBStringField
      FieldName = 'NOME_CONJ'
      Size = 60
    end
    object TPessoaFDATANASC_CONJ: TDateField
      FieldName = 'DATANASC_CONJ'
      EditMask = '!99/99/0000;1;_'
    end
    object TPessoaFRG_CONJ: TIBStringField
      FieldName = 'RG_CONJ'
    end
    object TPessoaFCPF_CONJ: TIBStringField
      FieldName = 'CPF_CONJ'
    end
    object TPessoaFEMP_CONJ: TIBStringField
      FieldName = 'EMP_CONJ'
      Size = 60
    end
    object TPessoaFNOME_PAI: TIBStringField
      FieldName = 'NOME_PAI'
      Size = 60
    end
    object TPessoaFNOME_MAE: TIBStringField
      FieldName = 'NOME_MAE'
      Size = 60
    end
    object TPessoaFENDE_FILIACAO: TIBStringField
      FieldName = 'ENDE_FILIACAO'
      Size = 60
    end
    object TPessoaFCARGO: TIBStringField
      FieldName = 'CARGO'
      Size = 40
    end
    object TPessoaFDIAANIVERCONJ: TSmallintField
      FieldName = 'DIAANIVERCONJ'
      Origin = 'PESSOAF.DIAANIVERCONJ'
    end
  end
  object TPessoa: TIBQuery
    Database = DBPessoa
    Transaction = TransacPessoa
    AutoCalcFields = False
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'SELECT * FROM PESSOA')
    UpdateObject = UPPessoa
    Left = 32
    Top = 64
    object TPessoaCOD_PESSOA: TIntegerField
      FieldName = 'COD_PESSOA'
      Required = True
    end
    object TPessoaNOME: TIBStringField
      FieldName = 'NOME'
      Size = 60
    end
    object TPessoaENDERECO: TIBStringField
      FieldName = 'ENDERECO'
      Size = 60
    end
    object TPessoaBAIRRO: TIBStringField
      FieldName = 'BAIRRO'
      Size = 40
    end
    object TPessoaCOD_CIDADE: TIntegerField
      FieldName = 'COD_CIDADE'
    end
    object TPessoaCEP: TIBStringField
      FieldName = 'CEP'
      EditMask = '00000\-000;1;_'
      Size = 10
    end
    object TPessoaCPFCNPJ: TIBStringField
      FieldName = 'CPFCNPJ'
    end
    object TPessoaDATA_INI: TDateField
      FieldName = 'DATA_INI'
      EditMask = '!99/99/0000;1;_'
    end
    object TPessoaDTNASC: TDateField
      FieldName = 'DTNASC'
      EditMask = '!99/99/0000;1;_'
    end
    object TPessoaCOD_REGIAO: TIntegerField
      FieldName = 'COD_REGIAO'
    end
    object TPessoaCOD_NATURAL: TIntegerField
      FieldName = 'COD_NATURAL'
    end
    object TPessoaTELREL: TIBStringField
      FieldName = 'TELREL'
      Size = 25
    end
    object TPessoaDIAANIVER: TSmallintField
      FieldName = 'DIAANIVER'
      Origin = 'PESSOA.DIAANIVER'
    end
    object TPessoaPROXIMIDADE: TIBStringField
      FieldName = 'PROXIMIDADE'
      Origin = 'PESSOA.PROXIMIDADE'
      Size = 40
    end
    object TPessoaVLRCREDITO: TIBBCDField
      FieldName = 'VLRCREDITO'
      Origin = 'PESSOA.VLRCREDITO'
      Precision = 9
      Size = 2
    end
    object TPessoaCOD_TRANSPORTADORA: TIntegerField
      FieldName = 'COD_TRANSPORTADORA'
      Origin = 'PESSOA.COD_TRANSPORTADORA'
    end
    object TPessoaENDNUMERO: TIBStringField
      FieldName = 'ENDNUMERO'
      Origin = 'PESSOA.ENDNUMERO'
      Size = 10
    end
  end
  object UPPessoaF: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  COD_PESSOAF,'
      '  COD_PESSOA,'
      '  ESTADO_CIVIL,'
      '  SEXO,'
      '  EMP_TRAB,'
      '  END_TRAB,'
      '  BAIRRO_TRAB,'
      '  DATA_ADMIS,'
      '  CARGO,'
      '  RG,'
      '  DATA_EXPED,'
      '  ORGAO_EXPED,'
      '  TITULO,'
      '  NOME_CONJ,'
      '  DATANASC_CONJ,'
      '  RG_CONJ,'
      '  CPF_CONJ,'
      '  EMP_CONJ,'
      '  NOME_PAI,'
      '  NOME_MAE,'
      '  ENDE_FILIACAO,'
      '  DIAANIVERCONJ'
      'from PESSOAF '
      'where'
      '  COD_PESSOAF = :COD_PESSOAF')
    ModifySQL.Strings = (
      'update PESSOAF'
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
      'insert into PESSOAF'
      
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
      'delete from PESSOAF'
      'where'
      '  COD_PESSOAF = :OLD_COD_PESSOAF')
    Left = 88
    Top = 109
  end
  object UPPessoa: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  COD_PESSOA,'
      '  NOME,'
      '  ENDERECO,'
      '  BAIRRO,'
      '  COD_CIDADE,'
      '  CEP,'
      '  CPFCNPJ,'
      '  DATA_INI,'
      '  DTNASC,'
      '  COD_REGIAO,'
      '  COD_NATURAL,'
      '  TELREL,'
      '  DIAANIVER,'
      '  PROXIMIDADE,'
      '  VLRCREDITO,'
      '  COD_TRANSPORTADORA,'
      '  ENDNUMERO'
      'from PESSOA '
      'where'
      '  COD_PESSOA = :COD_PESSOA')
    ModifySQL.Strings = (
      'update PESSOA'
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
      'insert into PESSOA'
      
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
      'delete from PESSOA'
      'where'
      '  COD_PESSOA = :OLD_COD_PESSOA')
    Left = 32
    Top = 109
  end
  object DSPessoaF: TDataSource
    DataSet = TPessoaF
    Left = 88
    Top = 152
  end
  object DSPessoa: TDataSource
    DataSet = TPessoa
    Left = 32
    Top = 152
  end
  object WCliente: TIBQuery
    Database = DBPessoa
    Transaction = TransacPessoa
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'Select first 1  * from VWCliente')
    Left = 232
    Top = 64
    object WClienteCOD_CLIENTE: TIntegerField
      FieldName = 'COD_CLIENTE'
      Origin = 'VWCLIENTE.COD_CLIENTE'
    end
    object WClienteCOD_INTERNO: TIBStringField
      FieldName = 'COD_INTERNO'
      Origin = 'VWCLIENTE.COD_INTERNO'
      Size = 10
    end
    object WClienteCOD_PESSOA: TIntegerField
      FieldName = 'COD_PESSOA'
      Origin = 'VWCLIENTE.COD_PESSOA'
    end
    object WClienteNOME: TIBStringField
      FieldName = 'NOME'
      Origin = 'VWCLIENTE.NOME'
      Size = 100
    end
    object WClienteENDERECO: TIBStringField
      FieldName = 'ENDERECO'
      Origin = 'VWCLIENTE.ENDERECO'
      Size = 100
    end
    object WClienteBAIRRO: TIBStringField
      FieldName = 'BAIRRO'
      Origin = 'VWCLIENTE.BAIRRO'
      Size = 40
    end
    object WClienteCPFCNPJ: TIBStringField
      FieldName = 'CPFCNPJ'
      Origin = 'VWCLIENTE.CPFCNPJ'
    end
    object WClienteCOD_CIDADE: TIntegerField
      FieldName = 'COD_CIDADE'
      Origin = 'VWCLIENTE.COD_CIDADE'
    end
    object WClienteCIDADE: TIBStringField
      FieldName = 'CIDADE'
      Origin = 'VWCLIENTE.CIDADE'
      Size = 100
    end
    object WClienteATIVO: TIBStringField
      FieldName = 'ATIVO'
      Origin = 'VWCLIENTE.ATIVO'
      FixedChar = True
      Size = 1
    end
    object WClienteEXPORT: TIBStringField
      FieldName = 'EXPORT'
      Origin = 'VWCLIENTE.EXPORT'
      FixedChar = True
      Size = 1
    end
    object WClienteTELREL: TIBStringField
      FieldName = 'TELREL'
      Origin = 'VWCLIENTE.TELREL'
      Size = 60
    end
    object WClienteSEPARAR: TIBStringField
      FieldName = 'SEPARAR'
      Origin = 'VWCLIENTE.SEPARAR'
      FixedChar = True
      Size = 1
    end
    object WClienteSCPC: TIBStringField
      FieldName = 'SCPC'
      Origin = 'VWCLIENTE.SCPC'
      FixedChar = True
      Size = 1
    end
    object WClienteCOD_TABPRECO: TIntegerField
      FieldName = 'COD_TABPRECO'
      Origin = 'VWCLIENTE.COD_TABPRECO'
    end
    object WClienteATUALIZAR: TIBStringField
      FieldName = 'ATUALIZAR'
      Origin = 'VWCLIENTE.ATUALIZAR'
      FixedChar = True
      Size = 1
    end
    object WClienteMARK: TIBStringField
      FieldName = 'MARK'
      Origin = 'VWCLIENTE.MARK'
      FixedChar = True
      Size = 1
    end
    object WClienteUF_ESTADO: TIBStringField
      FieldName = 'UF_ESTADO'
      Origin = 'VWCLIENTE.UF_ESTADO'
      FixedChar = True
      Size = 2
    end
    object WClienteENDNUMERO: TIBStringField
      FieldName = 'ENDNUMERO'
      Origin = 'VWCLIENTE.ENDNUMERO'
      Size = 10
    end
  end
  object DSVWCliente: TDataSource
    DataSet = WCliente
    Left = 232
    Top = 153
  end
  object TCliente: TIBQuery
    Database = DBPessoa
    Transaction = TransacPessoa
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select first 1  *  from CLIENTE')
    UpdateObject = UPCliente
    GeneratorField.Field = 'COD_CLIENTE'
    Left = 187
    Top = 64
    object TClienteCOD_CLIENTE: TIntegerField
      FieldName = 'COD_CLIENTE'
      Origin = 'CLIENTE.COD_CLIENTE'
    end
    object TClienteCOD_PESSOA: TIntegerField
      FieldName = 'COD_PESSOA'
      Origin = 'CLIENTE.COD_PESSOA'
    end
    object TClienteCOD_INTERNO: TIBStringField
      FieldName = 'COD_INTERNO'
      Origin = 'CLIENTE.COD_INTERNO'
      Size = 10
    end
    object TClienteDATA_CAD: TDateField
      FieldName = 'DATA_CAD'
      Origin = 'CLIENTE.DATA_CAD'
    end
    object TClienteR_SAL_CONJ: TFloatField
      FieldName = 'R_SAL_CONJ'
      Origin = 'CLIENTE.R_SAL_CONJ'
    end
    object TClienteR_SALARIO: TFloatField
      FieldName = 'R_SALARIO'
      Origin = 'CLIENTE.R_SALARIO'
    end
    object TClienteR_HON_PROF: TFloatField
      FieldName = 'R_HON_PROF'
      Origin = 'CLIENTE.R_HON_PROF'
    end
    object TClienteR_OUTREC: TFloatField
      FieldName = 'R_OUTREC'
      Origin = 'CLIENTE.R_OUTREC'
    end
    object TClienteD_ALUGUEL: TFloatField
      FieldName = 'D_ALUGUEL'
      Origin = 'CLIENTE.D_ALUGUEL'
    end
    object TClienteD_RESIDENCIA: TFloatField
      FieldName = 'D_RESIDENCIA'
      Origin = 'CLIENTE.D_RESIDENCIA'
    end
    object TClienteD_VEICULO: TFloatField
      FieldName = 'D_VEICULO'
      Origin = 'CLIENTE.D_VEICULO'
    end
    object TClienteD_FAMILIAR: TFloatField
      FieldName = 'D_FAMILIAR'
      Origin = 'CLIENTE.D_FAMILIAR'
    end
    object TClienteD_OUTDESP: TFloatField
      FieldName = 'D_OUTDESP'
      Origin = 'CLIENTE.D_OUTDESP'
    end
    object TClienteLIM_CRED: TFloatField
      FieldName = 'LIM_CRED'
      Origin = 'CLIENTE.LIM_CRED'
    end
    object TClienteQTDTEMPORESID: TIBStringField
      FieldName = 'QTDTEMPORESID'
      Origin = 'CLIENTE.QTDTEMPORESID'
      Size = 25
    end
    object TClienteBENS: TMemoField
      FieldName = 'BENS'
      Origin = 'CLIENTE.BENS'
      BlobType = ftMemo
      Size = 8
    end
    object TClienteCOD_VENDEDOR: TIntegerField
      FieldName = 'COD_VENDEDOR'
      Origin = 'CLIENTE.COD_VENDEDOR'
    end
    object TClienteINFOCOM: TMemoField
      FieldName = 'INFOCOM'
      Origin = 'CLIENTE.INFOCOM'
      BlobType = ftMemo
      Size = 8
    end
    object TClienteENDENTRAGA: TIBStringField
      FieldName = 'ENDENTRAGA'
      Origin = 'CLIENTE.ENDENTRAGA'
      Size = 60
    end
    object TClienteATUALIZAR: TIBStringField
      FieldName = 'ATUALIZAR'
      Origin = 'CLIENTE.ATUALIZAR'
      FixedChar = True
      Size = 1
    end
    object TClienteCOD_USUARIO: TIntegerField
      FieldName = 'COD_USUARIO'
      Origin = 'CLIENTE.COD_USUARIO'
    end
    object TClienteATIVO: TIBStringField
      FieldName = 'ATIVO'
      Origin = 'CLIENTE.ATIVO'
      FixedChar = True
      Size = 1
    end
    object TClienteCREDENCIAL: TIBStringField
      FieldName = 'CREDENCIAL'
      Origin = 'CLIENTE.CREDENCIAL'
      Size = 15
    end
    object TClienteRAMOATIV: TIBStringField
      FieldName = 'RAMOATIV'
      Origin = 'CLIENTE.RAMOATIV'
      Size = 25
    end
    object TClienteATACADISTA: TIBStringField
      FieldName = 'ATACADISTA'
      Origin = 'CLIENTE.ATACADISTA'
      FixedChar = True
      Size = 1
    end
    object TClienteCOD_FORMPAG: TIntegerField
      FieldName = 'COD_FORMPAG'
      Origin = 'CLIENTE.COD_FORMPAG'
    end
    object TClienteEXPORT: TIBStringField
      FieldName = 'EXPORT'
      Origin = 'CLIENTE.EXPORT'
      FixedChar = True
      Size = 1
    end
    object TClienteSEPARAR: TIBStringField
      FieldName = 'SEPARAR'
      Origin = 'CLIENTE.SEPARAR'
      FixedChar = True
      Size = 1
    end
    object TClienteMULTA: TIBBCDField
      FieldName = 'MULTA'
      Origin = 'CLIENTE.MULTA'
      Precision = 18
      Size = 2
    end
    object TClienteJURO: TIBBCDField
      FieldName = 'JURO'
      Origin = 'CLIENTE.JURO'
      Precision = 18
      Size = 2
    end
    object TClienteOBS: TIBStringField
      FieldName = 'OBS'
      Origin = 'CLIENTE.OBS'
      Size = 100
    end
    object TClienteSCPC: TIBStringField
      FieldName = 'SCPC'
      Origin = 'CLIENTE.SCPC'
      FixedChar = True
      Size = 1
    end
    object TClienteTAMANHO: TIBBCDField
      FieldName = 'TAMANHO'
      Origin = 'CLIENTE.TAMANHO'
      Precision = 18
      Size = 2
    end
    object TClienteINFORMACAO: TIBStringField
      FieldName = 'INFORMACAO'
      Origin = 'CLIENTE.INFORMACAO'
      Size = 100
    end
    object TClienteCOD_CLIENTEPALM: TIntegerField
      FieldName = 'COD_CLIENTEPALM'
      Origin = 'CLIENTE.COD_CLIENTEPALM'
    end
    object TClienteDIAVENCIMENTO: TIntegerField
      FieldName = 'DIAVENCIMENTO'
      Origin = 'CLIENTE.DIAVENCIMENTO'
    end
    object TClienteCOD_TABPRECO: TIntegerField
      FieldName = 'COD_TABPRECO'
      Origin = 'CLIENTE.COD_TABPRECO'
    end
    object TClienteCONTRIBICMS: TIBStringField
      FieldName = 'CONTRIBICMS'
      Origin = 'CLIENTE.CONTRIBICMS'
      FixedChar = True
      Size = 1
    end
    object TClienteMARKREL: TIBStringField
      FieldName = 'MARKREL'
      Origin = 'CLIENTE.MARKREL'
      FixedChar = True
      Size = 1
    end
    object TClienteSUFRAMA: TIBStringField
      FieldName = 'SUFRAMA'
      Origin = 'CLIENTE.SUFRAMA'
      Size = 10
    end
    object TClienteAUTORIZADOS: TMemoField
      FieldName = 'AUTORIZADOS'
      Origin = 'CLIENTE.AUTORIZADOS'
      BlobType = ftMemo
      Size = 8
    end
    object TClienteOBSFINANCEIRA: TIBStringField
      FieldName = 'OBSFINANCEIRA'
      Origin = 'CLIENTE.OBSFINANCEIRA'
      Size = 100
    end
    object TClienteMARK: TIBStringField
      FieldName = 'MARK'
      Origin = 'CLIENTE.MARK'
      FixedChar = True
      Size = 1
    end
    object TClienteFREQVENDA: TIBStringField
      FieldName = 'FREQVENDA'
      Origin = 'CLIENTE.FREQVENDA'
      FixedChar = True
      Size = 1
    end
    object TClienteDIASFREQVENDA: TIBStringField
      FieldName = 'DIASFREQVENDA'
      Origin = 'CLIENTE.DIASFREQVENDA'
      Size = 10
    end
    object TClienteVENDAVISTA: TIBStringField
      FieldName = 'VENDAVISTA'
      Origin = 'CLIENTE.VENDAVISTA'
      FixedChar = True
      Size = 1
    end
    object TClienteCONSUMIDOR: TIBStringField
      FieldName = 'CONSUMIDOR'
      Origin = 'CLIENTE.CONSUMIDOR'
      FixedChar = True
      Size = 1
    end
  end
  object UPCliente: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  COD_CLIENTE,'
      '  COD_PESSOA,'
      '  COD_INTERNO,'
      '  DATA_CAD,'
      '  R_SAL_CONJ,'
      '  R_SALARIO,'
      '  R_HON_PROF,'
      '  R_OUTREC,'
      '  D_ALUGUEL,'
      '  D_RESIDENCIA,'
      '  D_VEICULO,'
      '  D_FAMILIAR,'
      '  D_OUTDESP,'
      '  LIM_CRED,'
      '  QTDTEMPORESID,'
      '  BENS,'
      '  COD_VENDEDOR,'
      '  INFOCOM,'
      '  ENDENTRAGA,'
      '  ATUALIZAR,'
      '  COD_USUARIO,'
      '  ATIVO,'
      '  CREDENCIAL,'
      '  RAMOATIV,'
      '  ATACADISTA,'
      '  COD_FORMPAG,'
      '  EXPORT,'
      '  SEPARAR,'
      '  MULTA,'
      '  JURO,'
      '  OBS,'
      '  SCPC,'
      '  TAMANHO,'
      '  COD_CLIENTEPALM,'
      '  INFORMACAO,'
      '  DIAVENCIMENTO,'
      '  COD_TABPRECO,'
      '  CONTRIBICMS,'
      '  MARKREL,'
      '  SUFRAMA,'
      '  AUTORIZADOS,'
      '  OBSFINANCEIRA,'
      '  MARK,'
      '  FREQVENDA,'
      '  DIASFREQVENDA,'
      '  VENDAVISTA,'
      '  CONSUMIDOR'
      'from CLIENTE '
      'where'
      '  COD_CLIENTE = :COD_CLIENTE')
    ModifySQL.Strings = (
      'update CLIENTE'
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
      '  AUTORIZADOS = :AUTORIZADOS,'
      '  OBSFINANCEIRA = :OBSFINANCEIRA,'
      '  MARK = :MARK,'
      '  FREQVENDA = :FREQVENDA,'
      '  DIASFREQVENDA = :DIASFREQVENDA,'
      '  VENDAVISTA = :VENDAVISTA,'
      '  CONSUMIDOR = :CONSUMIDOR'
      'where'
      '  COD_CLIENTE = :OLD_COD_CLIENTE')
    InsertSQL.Strings = (
      'insert into CLIENTE'
      
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
        'UTORIZADOS, '
      
        '   OBSFINANCEIRA, MARK, FREQVENDA, DIASFREQVENDA, VENDAVISTA, CO' +
        'NSUMIDOR)'
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
      
        '   :CONTRIBICMS, :MARKREL, :SUFRAMA, :AUTORIZADOS, :OBSFINANCEIR' +
        'A, :MARK, '
      '   :FREQVENDA, :DIASFREQVENDA, :VENDAVISTA, :CONSUMIDOR)')
    DeleteSQL.Strings = (
      'delete from CLIENTE'
      'where'
      '  COD_CLIENTE = :OLD_COD_CLIENTE')
    Left = 186
    Top = 108
  end
  object DSCliente: TDataSource
    DataSet = TCliente
    Left = 186
    Top = 152
  end
  object TALX: TIBQuery
    Tag = 5
    Database = DBPessoa
    Transaction = TransacPessoa
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'SELECT vwcliente.NOME, vwcliente.telrel, pedvenda.numped, PEDVEN' +
        'DA.valor'
      'FROM PEDVENDA'
      
        'LEFT JOIN vwcliente on pedvenda.cod_cliente = vwcliente.cod_clie' +
        'nte'
      'where pedvenda.cod_cliente = :COD_CLIENTE')
    OnFilterRecord = TALXFilterRecord
    Left = 184
    Top = 8
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'COD_CLIENTE'
        ParamType = ptUnknown
      end>
  end
  object TFuncionario: TIBQuery
    Database = DBPessoa
    Transaction = TransacPessoa
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select first 1  * from FUNCIONARIO')
    UpdateObject = UPFuncionario
    GeneratorField.Field = 'COD_FUNC'
    Left = 344
    Top = 64
    object TFuncionarioCOD_FUNC: TIntegerField
      FieldName = 'COD_FUNC'
      Origin = 'FUNCIONARIO.COD_FUNC'
      Required = True
    end
    object TFuncionarioCOD_PESSOA: TIntegerField
      FieldName = 'COD_PESSOA'
      Origin = 'FUNCIONARIO.COD_PESSOA'
    end
    object TFuncionarioCOD_INTERNO: TIBStringField
      FieldName = 'COD_INTERNO'
      Origin = 'FUNCIONARIO.COD_INTERNO'
      Size = 10
    end
    object TFuncionarioDATA_CAD: TDateField
      FieldName = 'DATA_CAD'
      Origin = 'FUNCIONARIO.DATA_CAD'
    end
    object TFuncionarioDATA_ADMIS: TDateField
      FieldName = 'DATA_ADMIS'
      Origin = 'FUNCIONARIO.DATA_ADMIS'
    end
    object TFuncionarioDATA_DEMIS: TDateField
      FieldName = 'DATA_DEMIS'
      Origin = 'FUNCIONARIO.DATA_DEMIS'
    end
    object TFuncionarioNUM_CTPS: TIBStringField
      FieldName = 'NUM_CTPS'
      Origin = 'FUNCIONARIO.NUM_CTPS'
      Size = 25
    end
    object TFuncionarioSER_CTPS: TIBStringField
      FieldName = 'SER_CTPS'
      Origin = 'FUNCIONARIO.SER_CTPS'
      Size = 25
    end
    object TFuncionarioNUM_PIS: TIBStringField
      FieldName = 'NUM_PIS'
      Origin = 'FUNCIONARIO.NUM_PIS'
      Size = 25
    end
    object TFuncionarioTERCEIRO: TIBStringField
      FieldName = 'TERCEIRO'
      Origin = 'FUNCIONARIO.TERCEIRO'
      FixedChar = True
      Size = 1
    end
    object TFuncionarioPALM: TIBStringField
      FieldName = 'PALM'
      Origin = 'FUNCIONARIO.PALM'
      FixedChar = True
      Size = 1
    end
    object TFuncionarioNUMPALM: TIBStringField
      FieldName = 'NUMPALM'
      Origin = 'FUNCIONARIO.NUMPALM'
      Size = 10
    end
    object TFuncionarioCOD_SERVICO: TIntegerField
      FieldName = 'COD_SERVICO'
      Origin = 'FUNCIONARIO.COD_SERVICO'
    end
    object TFuncionarioMARK: TIBStringField
      FieldName = 'MARK'
      Origin = 'FUNCIONARIO.MARK'
      FixedChar = True
      Size = 1
    end
    object TFuncionarioATIVO: TIBStringField
      FieldName = 'ATIVO'
      Origin = 'FUNCIONARIO.ATIVO'
      FixedChar = True
      Size = 1
    end
    object TFuncionarioOBSERVACAO: TIBStringField
      FieldName = 'OBSERVACAO'
      Origin = 'FUNCIONARIO.OBSERVACAO'
      Size = 100
    end
    object TFuncionarioHORAENT: TIBStringField
      FieldName = 'HORAENT'
      Origin = 'FUNCIONARIO.HORAENT'
      Size = 10
    end
    object TFuncionarioHORASAIDA: TIBStringField
      FieldName = 'HORASAIDA'
      Origin = 'FUNCIONARIO.HORASAIDA'
      Size = 10
    end
    object TFuncionarioINTERVALO: TIBStringField
      FieldName = 'INTERVALO'
      Origin = 'FUNCIONARIO.INTERVALO'
      Size = 60
    end
    object TFuncionarioSETOR: TIBStringField
      FieldName = 'SETOR'
      Origin = 'FUNCIONARIO.SETOR'
      Size = 25
    end
  end
  object UPFuncionario: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  COD_FUNC,'
      '  COD_PESSOA,'
      '  COD_INTERNO,'
      '  DATA_CAD,'
      '  DATA_ADMIS,'
      '  DATA_DEMIS,'
      '  NUM_CTPS,'
      '  SER_CTPS,'
      '  NUM_PIS,'
      '  TERCEIRO,'
      '  PALM,'
      '  NUMPALM,'
      '  COD_SERVICO,'
      '  MARK,'
      '  ATIVO,'
      '  OBSERVACAO,'
      '  HORAENT,'
      '  HORASAIDA,'
      '  INTERVALO,'
      '  SETOR'
      'from FUNCIONARIO '
      'where'
      '  COD_FUNC = :COD_FUNC')
    ModifySQL.Strings = (
      'update FUNCIONARIO'
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
      '  ATIVO = :ATIVO,'
      '  OBSERVACAO = :OBSERVACAO,'
      '  HORAENT = :HORAENT,'
      '  HORASAIDA = :HORASAIDA,'
      '  INTERVALO = :INTERVALO,'
      '  SETOR = :SETOR'
      'where'
      '  COD_FUNC = :OLD_COD_FUNC')
    InsertSQL.Strings = (
      'insert into FUNCIONARIO'
      
        '  (COD_FUNC, COD_PESSOA, COD_INTERNO, DATA_CAD, DATA_ADMIS, DATA' +
        '_DEMIS, '
      
        '   NUM_CTPS, SER_CTPS, NUM_PIS, TERCEIRO, PALM, NUMPALM, COD_SER' +
        'VICO, MARK, '
      '   ATIVO, OBSERVACAO, HORAENT, HORASAIDA, INTERVALO, SETOR)'
      'values'
      
        '  (:COD_FUNC, :COD_PESSOA, :COD_INTERNO, :DATA_CAD, :DATA_ADMIS,' +
        ' :DATA_DEMIS, '
      
        '   :NUM_CTPS, :SER_CTPS, :NUM_PIS, :TERCEIRO, :PALM, :NUMPALM, :' +
        'COD_SERVICO, '
      
        '   :MARK, :ATIVO, :OBSERVACAO, :HORAENT, :HORASAIDA, :INTERVALO,' +
        ' :SETOR)')
    DeleteSQL.Strings = (
      'delete from FUNCIONARIO'
      'where'
      '  COD_FUNC = :OLD_COD_FUNC')
    Left = 344
    Top = 108
  end
  object DSFuncionario: TDataSource
    DataSet = TFuncionario
    Left = 344
    Top = 153
  end
  object VWFuncionario: TIBQuery
    Database = DBPessoa
    Transaction = TransacPessoa
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select  first 1 * from VWFUNCIONARIO')
    Left = 415
    Top = 64
    object VWFuncionarioCOD_FUNC: TIntegerField
      FieldName = 'COD_FUNC'
      Origin = 'VWFUNCIONARIO.COD_FUNC'
    end
    object VWFuncionarioCOD_INTERNO: TIBStringField
      FieldName = 'COD_INTERNO'
      Origin = 'VWFUNCIONARIO.COD_INTERNO'
      Size = 10
    end
    object VWFuncionarioCOD_PESSOA: TIntegerField
      FieldName = 'COD_PESSOA'
      Origin = 'VWFUNCIONARIO.COD_PESSOA'
    end
    object VWFuncionarioNOME: TIBStringField
      FieldName = 'NOME'
      Origin = 'VWFUNCIONARIO.NOME'
      Size = 100
    end
    object VWFuncionarioENDERECO: TIBStringField
      FieldName = 'ENDERECO'
      Origin = 'VWFUNCIONARIO.ENDERECO'
      Size = 100
    end
    object VWFuncionarioBAIRRO: TIBStringField
      FieldName = 'BAIRRO'
      Origin = 'VWFUNCIONARIO.BAIRRO'
      Size = 40
    end
    object VWFuncionarioCPFCNPJ: TIBStringField
      FieldName = 'CPFCNPJ'
      Origin = 'VWFUNCIONARIO.CPFCNPJ'
    end
    object VWFuncionarioCOD_CIDADE: TIntegerField
      FieldName = 'COD_CIDADE'
      Origin = 'VWFUNCIONARIO.COD_CIDADE'
    end
    object VWFuncionarioCIDADE: TIBStringField
      FieldName = 'CIDADE'
      Origin = 'VWFUNCIONARIO.CIDADE'
      Size = 100
    end
    object VWFuncionarioTERCEIRO: TIBStringField
      FieldName = 'TERCEIRO'
      Origin = 'VWFUNCIONARIO.TERCEIRO'
      FixedChar = True
      Size = 1
    end
    object VWFuncionarioMARK: TIBStringField
      FieldName = 'MARK'
      Origin = 'VWFUNCIONARIO.MARK'
      FixedChar = True
      Size = 1
    end
    object VWFuncionarioATIVO: TIBStringField
      FieldName = 'ATIVO'
      Origin = 'VWFUNCIONARIO.ATIVO'
      FixedChar = True
      Size = 1
    end
  end
  object DSVWFuncionario: TDataSource
    DataSet = VWFuncionario
    Left = 416
    Top = 153
  end
  object DSVWFornecedor: TDataSource
    DataSet = WFornecedor
    Left = 559
    Top = 153
  end
  object WFornecedor: TIBQuery
    Database = DBPessoa
    Transaction = TransacPessoa
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select  first 1 * from VWFORNEC')
    Left = 559
    Top = 64
    object WFornecedorCOD_FORNEC: TIntegerField
      FieldName = 'COD_FORNEC'
    end
    object WFornecedorCOD_INTERNO: TIBStringField
      FieldName = 'COD_INTERNO'
      Size = 10
    end
    object WFornecedorCOD_PESSOA: TIntegerField
      FieldName = 'COD_PESSOA'
    end
    object WFornecedorNOME: TIBStringField
      FieldName = 'NOME'
      Size = 60
    end
    object WFornecedorENDERECO: TIBStringField
      FieldName = 'ENDERECO'
      Size = 60
    end
    object WFornecedorBAIRRO: TIBStringField
      FieldName = 'BAIRRO'
      Size = 40
    end
    object WFornecedorCPFCNPJ: TIBStringField
      FieldName = 'CPFCNPJ'
    end
    object WFornecedorCOD_CIDADE: TIntegerField
      FieldName = 'COD_CIDADE'
    end
    object WFornecedorCIDADE: TIBStringField
      FieldName = 'CIDADE'
      Size = 60
    end
    object WFornecedorEXPORT: TIBStringField
      FieldName = 'EXPORT'
      Origin = 'VWFORNEC.EXPORT'
      FixedChar = True
      Size = 1
    end
    object WFornecedorTELREL: TIBStringField
      FieldName = 'TELREL'
      Origin = 'VWFORNEC.TELREL'
      Size = 25
    end
    object WFornecedorINSC_EST: TIBStringField
      FieldName = 'INSC_EST'
      Origin = 'VWFORNEC.INSC_EST'
    end
    object WFornecedorUF: TIBStringField
      FieldName = 'UF'
      Origin = 'VWFORNEC.UF'
      FixedChar = True
      Size = 2
    end
  end
  object DSFornecedor: TDataSource
    DataSet = TFornecedor
    Left = 489
    Top = 153
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
      '  MARKREL,'
      '  ATUALIZAR'
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
      '  MARKREL = :MARKREL,'
      '  ATUALIZAR = :ATUALIZAR'
      'where'
      '  COD_FORNEC = :OLD_COD_FORNEC')
    InsertSQL.Strings = (
      'insert into FORNECEDOR'
      
        '  (COD_FORNEC, COD_PESSOA, COD_INTERNO, DATA_CAD, TIPO_FORNEC, P' +
        'RAZO_ENTREGA, '
      '   COD_TRANSPORT, TIPO, OBS, EXPORT, MARKREL, ATUALIZAR)'
      'values'
      
        '  (:COD_FORNEC, :COD_PESSOA, :COD_INTERNO, :DATA_CAD, :TIPO_FORN' +
        'EC, :PRAZO_ENTREGA, '
      '   :COD_TRANSPORT, :TIPO, :OBS, :EXPORT, :MARKREL, :ATUALIZAR)')
    DeleteSQL.Strings = (
      'delete from FORNECEDOR'
      'where'
      '  COD_FORNEC = :OLD_COD_FORNEC')
    Left = 489
    Top = 108
  end
  object TFornecedor: TIBQuery
    Database = DBPessoa
    Transaction = TransacPessoa
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select  first 1 * from FORNECEDOR')
    UpdateObject = UPFornecedor
    GeneratorField.Field = 'COD_FORNEC'
    Left = 489
    Top = 64
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
    object TFornecedorATUALIZAR: TIBStringField
      FieldName = 'ATUALIZAR'
      Origin = 'FORNECEDOR.ATUALIZAR'
      FixedChar = True
      Size = 1
    end
  end
  object TCargo: TIBQuery
    Database = DBPessoa
    Transaction = TransacPessoa
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select  first 1 * from CARGO')
    UpdateObject = UPCargo
    GeneratorField.Field = 'COD_CARGO'
    Left = 136
    Top = 215
    object TCargoCOD_CARGO: TIntegerField
      FieldName = 'COD_CARGO'
      Required = True
    end
    object TCargoDESCRICAO: TIBStringField
      FieldName = 'DESCRICAO'
      Size = 60
    end
  end
  object UPCargo: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  COD_CARGO,'
      '  DESCRICAO'
      'from CARGO '
      'where'
      '  COD_CARGO = :COD_CARGO')
    ModifySQL.Strings = (
      'update CARGO'
      'set'
      '  COD_CARGO = :COD_CARGO,'
      '  DESCRICAO = :DESCRICAO'
      'where'
      '  COD_CARGO = :OLD_COD_CARGO')
    InsertSQL.Strings = (
      'insert into CARGO'
      '  (COD_CARGO, DESCRICAO)'
      'values'
      '  (:COD_CARGO, :DESCRICAO)')
    DeleteSQL.Strings = (
      'delete from CARGO'
      'where'
      '  COD_CARGO = :OLD_COD_CARGO')
    Left = 136
    Top = 263
  end
  object DSCargo: TDataSource
    DataSet = TCargo
    Left = 136
    Top = 311
  end
  object TFunCargo: TIBQuery
    Database = DBPessoa
    Transaction = TransacPessoa
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select  first 1 * from FUNCARGO')
    UpdateObject = UPFunCargo
    GeneratorField.Field = 'COD_FUNCARGO'
    Left = 190
    Top = 215
    object TFunCargoCOD_FUNCARGO: TIntegerField
      FieldName = 'COD_FUNCARGO'
      Required = True
    end
    object TFunCargoCOD_CARGO: TIntegerField
      FieldName = 'COD_CARGO'
    end
    object TFunCargoCOD_FUNCIONARIO: TIntegerField
      FieldName = 'COD_FUNCIONARIO'
    end
    object TFunCargoCOMISSAO_VVPRO: TFloatField
      FieldName = 'COMISSAO_VVPRO'
    end
    object TFunCargoCOMISSAO_VPPRO: TFloatField
      FieldName = 'COMISSAO_VPPRO'
    end
    object TFunCargoCOMISSAO_VVSER: TFloatField
      FieldName = 'COMISSAO_VVSER'
    end
    object TFunCargoCOMISSAO_VPSER: TFloatField
      FieldName = 'COMISSAO_VPSER'
    end
  end
  object UPFunCargo: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  COD_FUNCARGO,'
      '  COD_CARGO,'
      '  COD_FUNCIONARIO,'
      '  COMISSAO_VVPRO,'
      '  COMISSAO_VPPRO,'
      '  COMISSAO_VVSER,'
      '  COMISSAO_VPSER'
      'from FUNCARGO '
      'where'
      '  COD_FUNCARGO = :COD_FUNCARGO')
    ModifySQL.Strings = (
      'update FUNCARGO'
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
      'insert into FUNCARGO'
      
        '  (COD_FUNCARGO, COD_CARGO, COD_FUNCIONARIO, COMISSAO_VVPRO, COM' +
        'ISSAO_VPPRO, '
      '   COMISSAO_VVSER, COMISSAO_VPSER)'
      'values'
      
        '  (:COD_FUNCARGO, :COD_CARGO, :COD_FUNCIONARIO, :COMISSAO_VVPRO,' +
        ' :COMISSAO_VPPRO, '
      '   :COMISSAO_VVSER, :COMISSAO_VPSER)')
    DeleteSQL.Strings = (
      'delete from FUNCARGO'
      'where'
      '  COD_FUNCARGO = :OLD_COD_FUNCARGO')
    Left = 190
    Top = 263
  end
  object DSFunCargo: TDataSource
    DataSet = TFunCargo
    Left = 191
    Top = 312
  end
  object TSalario: TIBQuery
    Database = DBPessoa
    Transaction = TransacPessoa
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select  first 1 * from SALARIO')
    UpdateObject = UPSalario
    GeneratorField.Field = 'COD_SALARIO'
    Left = 456
    Top = 216
    object TSalarioCOD_SALARIO: TIntegerField
      FieldName = 'COD_SALARIO'
      Required = True
    end
    object TSalarioCOD_FUNCARGO: TIntegerField
      FieldName = 'COD_FUNCARGO'
    end
    object TSalarioDATA: TDateField
      FieldName = 'DATA'
    end
    object TSalarioSALARIO: TIBBCDField
      FieldName = 'SALARIO'
      Precision = 9
      Size = 2
    end
    object TSalarioCOD_COTAMOEDA: TIntegerField
      FieldName = 'COD_COTAMOEDA'
    end
  end
  object UPSalario: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  COD_SALARIO,'
      '  COD_FUNCARGO,'
      '  DATA,'
      '  SALARIO,'
      '  COD_COTAMOEDA'
      'from SALARIO '
      'where'
      '  COD_SALARIO = :COD_SALARIO')
    ModifySQL.Strings = (
      'update SALARIO'
      'set'
      '  COD_SALARIO = :COD_SALARIO,'
      '  COD_FUNCARGO = :COD_FUNCARGO,'
      '  DATA = :DATA,'
      '  SALARIO = :SALARIO,'
      '  COD_COTAMOEDA = :COD_COTAMOEDA'
      'where'
      '  COD_SALARIO = :OLD_COD_SALARIO')
    InsertSQL.Strings = (
      'insert into SALARIO'
      '  (COD_SALARIO, COD_FUNCARGO, DATA, SALARIO, COD_COTAMOEDA)'
      'values'
      '  (:COD_SALARIO, :COD_FUNCARGO, :DATA, :SALARIO, :COD_COTAMOEDA)')
    DeleteSQL.Strings = (
      'delete from SALARIO'
      'where'
      '  COD_SALARIO = :OLD_COD_SALARIO')
    Left = 456
    Top = 264
  end
  object DSSalario: TDataSource
    DataSet = TSalario
    Left = 456
    Top = 312
  end
  object DSALX: TDataSource
    DataSet = TALX
    Left = 224
    Top = 8
  end
  object TALX1: TIBQuery
    Tag = 5
    Database = DBPessoa
    Transaction = TransacPessoa
    BufferChunks = 1000
    CachedUpdates = False
    Left = 288
    Top = 8
  end
  object DSALX1: TDataSource
    DataSet = TALX1
    Left = 328
    Top = 8
  end
  object TRel: TIBQuery
    Tag = 5
    Database = DBPessoa
    Transaction = TransacPessoa
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from itprodord'
      'left join vwordem on itprodord.cod_ordem = vwordem.cod_ordem')
    Left = 31
    Top = 384
  end
  object DSRel: TDataSource
    DataSet = TRel
    Left = 32
    Top = 433
  end
  object TServot: TIBQuery
    Database = DBPessoa
    Transaction = TransacPessoa
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'SELECT  first 1 * FROM SERVOT')
    UpdateObject = UpServOt
    GeneratorField.Field = 'COD_SALARIO'
    Left = 512
    Top = 216
    object TServotCOD_SERVOT: TIntegerField
      FieldName = 'COD_SERVOT'
      Origin = 'SERVOT.COD_SERVOT'
    end
    object TServotCOD_PEDIDO: TIntegerField
      FieldName = 'COD_PEDIDO'
      Origin = 'SERVOT.COD_PEDIDO'
    end
    object TServotESFERLOD: TIBStringField
      FieldName = 'ESFERLOD'
      Origin = 'SERVOT.ESFERLOD'
      Size = 10
    end
    object TServotESFERLOE: TIBStringField
      FieldName = 'ESFERLOE'
      Origin = 'SERVOT.ESFERLOE'
      Size = 10
    end
    object TServotESFERPOD: TIBStringField
      FieldName = 'ESFERPOD'
      Origin = 'SERVOT.ESFERPOD'
      Size = 10
    end
    object TServotESFERPOE: TIBStringField
      FieldName = 'ESFERPOE'
      Origin = 'SERVOT.ESFERPOE'
      Size = 10
    end
    object TServotCILINDLOD: TIBStringField
      FieldName = 'CILINDLOD'
      Origin = 'SERVOT.CILINDLOD'
      Size = 10
    end
    object TServotCILINDLOE: TIBStringField
      FieldName = 'CILINDLOE'
      Origin = 'SERVOT.CILINDLOE'
      Size = 10
    end
    object TServotCILINDPOD: TIBStringField
      FieldName = 'CILINDPOD'
      Origin = 'SERVOT.CILINDPOD'
      Size = 10
    end
    object TServotCILINDPOE: TIBStringField
      FieldName = 'CILINDPOE'
      Origin = 'SERVOT.CILINDPOE'
      Size = 10
    end
    object TServotEIXOLOD: TIBStringField
      FieldName = 'EIXOLOD'
      Origin = 'SERVOT.EIXOLOD'
      Size = 10
    end
    object TServotEIXOLOE: TIBStringField
      FieldName = 'EIXOLOE'
      Origin = 'SERVOT.EIXOLOE'
      Size = 10
    end
    object TServotDNPLOD: TIBStringField
      FieldName = 'DNPLOD'
      Origin = 'SERVOT.DNPLOD'
      Size = 10
    end
    object TServotDNPLOE: TIBStringField
      FieldName = 'DNPLOE'
      Origin = 'SERVOT.DNPLOE'
      Size = 10
    end
    object TServotALTURALOD: TIBStringField
      FieldName = 'ALTURALOD'
      Origin = 'SERVOT.ALTURALOD'
      Size = 10
    end
    object TServotALTURALOE: TIBStringField
      FieldName = 'ALTURALOE'
      Origin = 'SERVOT.ALTURALOE'
      Size = 10
    end
    object TServotADICAO: TIBStringField
      FieldName = 'ADICAO'
      Origin = 'SERVOT.ADICAO'
      Size = 10
    end
    object TServotEIXOPOD: TIBStringField
      FieldName = 'EIXOPOD'
      Origin = 'SERVOT.EIXOPOD'
      Size = 10
    end
    object TServotEIXOPOE: TIBStringField
      FieldName = 'EIXOPOE'
      Origin = 'SERVOT.EIXOPOE'
      Size = 10
    end
    object TServotDNPPOD: TIBStringField
      FieldName = 'DNPPOD'
      Origin = 'SERVOT.DNPPOD'
      Size = 10
    end
    object TServotDNPPOE: TIBStringField
      FieldName = 'DNPPOE'
      Origin = 'SERVOT.DNPPOE'
      Size = 10
    end
    object TServotALTURAPOD: TIBStringField
      FieldName = 'ALTURAPOD'
      Origin = 'SERVOT.ALTURAPOD'
      Size = 10
    end
    object TServotALTURAPOE: TIBStringField
      FieldName = 'ALTURAPOE'
      Origin = 'SERVOT.ALTURAPOE'
      Size = 10
    end
  end
  object UpServOt: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  COD_SERVOT,'
      '  COD_PEDIDO,'
      '  ESFERLOD,'
      '  ESFERLOE,'
      '  ESFERPOD,'
      '  ESFERPOE,'
      '  CILINDLOD,'
      '  CILINDLOE,'
      '  CILINDPOD,'
      '  CILINDPOE,'
      '  EIXOLOD,'
      '  EIXOLOE,'
      '  DNPLOD,'
      '  DNPLOE,'
      '  ALTURALOD,'
      '  ALTURALOE,'
      '  ADICAO,'
      '  EIXOPOD,'
      '  EIXOPOE,'
      '  DNPPOD,'
      '  DNPPOE,'
      '  ALTURAPOD,'
      '  ALTURAPOE'
      'from SERVOT '
      'where'
      '  COD_SERVOT = :COD_SERVOT')
    ModifySQL.Strings = (
      'update SERVOT'
      'set'
      '  COD_SERVOT = :COD_SERVOT,'
      '  COD_PEDIDO = :COD_PEDIDO,'
      '  ESFERLOD = :ESFERLOD,'
      '  ESFERLOE = :ESFERLOE,'
      '  ESFERPOD = :ESFERPOD,'
      '  ESFERPOE = :ESFERPOE,'
      '  CILINDLOD = :CILINDLOD,'
      '  CILINDLOE = :CILINDLOE,'
      '  CILINDPOD = :CILINDPOD,'
      '  CILINDPOE = :CILINDPOE,'
      '  EIXOLOD = :EIXOLOD,'
      '  EIXOLOE = :EIXOLOE,'
      '  DNPLOD = :DNPLOD,'
      '  DNPLOE = :DNPLOE,'
      '  ALTURALOD = :ALTURALOD,'
      '  ALTURALOE = :ALTURALOE,'
      '  ADICAO = :ADICAO,'
      '  EIXOPOD = :EIXOPOD,'
      '  EIXOPOE = :EIXOPOE,'
      '  DNPPOD = :DNPPOD,'
      '  DNPPOE = :DNPPOE,'
      '  ALTURAPOD = :ALTURAPOD,'
      '  ALTURAPOE = :ALTURAPOE'
      'where'
      '  COD_SERVOT = :OLD_COD_SERVOT')
    InsertSQL.Strings = (
      'insert into SERVOT'
      
        '  (COD_SERVOT, COD_PEDIDO, ESFERLOD, ESFERLOE, ESFERPOD, ESFERPO' +
        'E, CILINDLOD, '
      
        '   CILINDLOE, CILINDPOD, CILINDPOE, EIXOLOD, EIXOLOE, DNPLOD, DN' +
        'PLOE, ALTURALOD, '
      
        '   ALTURALOE, ADICAO, EIXOPOD, EIXOPOE, DNPPOD, DNPPOE, ALTURAPO' +
        'D, ALTURAPOE)'
      'values'
      
        '  (:COD_SERVOT, :COD_PEDIDO, :ESFERLOD, :ESFERLOE, :ESFERPOD, :E' +
        'SFERPOE, '
      
        '   :CILINDLOD, :CILINDLOE, :CILINDPOD, :CILINDPOE, :EIXOLOD, :EI' +
        'XOLOE, '
      
        '   :DNPLOD, :DNPLOE, :ALTURALOD, :ALTURALOE, :ADICAO, :EIXOPOD, ' +
        ':EIXOPOE, '
      '   :DNPPOD, :DNPPOE, :ALTURAPOD, :ALTURAPOE)')
    DeleteSQL.Strings = (
      'delete from SERVOT'
      'where'
      '  COD_SERVOT = :OLD_COD_SERVOT')
    Left = 512
    Top = 264
  end
  object DSServOt: TDataSource
    DataSet = TServot
    Left = 512
    Top = 312
  end
  object GroupBox9: TGroupBox
    Left = 168
    Top = 40
    Width = 161
    Height = 273
    Caption = 'DESPESAS'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'BankGothic Md BT'
    Font.Style = []
    ParentFont = False
    object Label40: TLabel
      Left = 8
      Top = 24
      Width = 55
      Height = 18
      Caption = 'Aluguel:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label41: TLabel
      Left = 8
      Top = 74
      Width = 83
      Height = 18
      Caption = 'Resid'#234'ncia:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label42: TLabel
      Left = 8
      Top = 124
      Width = 54
      Height = 18
      Caption = 'Ve'#237'culo:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label43: TLabel
      Left = 8
      Top = 174
      Width = 55
      Height = 18
      Caption = 'Fam'#237'lia:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label44: TLabel
      Left = 8
      Top = 224
      Width = 126
      Height = 18
      Caption = 'Outras Despesas:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object DALUG: TDBColorEdit
      Left = 8
      Top = 43
      Width = 129
      Height = 23
      DataField = 'D_ALUGUEL'
      DataSource = DSCliente
      TabOrder = 0
      NotFoundText = 'N'#227'o Existe'
      InputText = 'Por favor entre na procura pelo crit'#233'rio'
      ButtonCaption = 'Ok'
    end
    object DRESID: TDBColorEdit
      Left = 8
      Top = 92
      Width = 129
      Height = 23
      DataField = 'D_RESIDENCIA'
      DataSource = DSCliente
      TabOrder = 1
      NotFoundText = 'N'#227'o Existe'
      InputText = 'Por favor entre na procura pelo crit'#233'rio'
      ButtonCaption = 'Ok'
    end
    object DVEIC: TDBColorEdit
      Left = 8
      Top = 144
      Width = 129
      Height = 23
      DataField = 'D_VEICULO'
      DataSource = DSCliente
      TabOrder = 2
      NotFoundText = 'N'#227'o Existe'
      InputText = 'Por favor entre na procura pelo crit'#233'rio'
      ButtonCaption = 'Ok'
    end
    object DFAM: TDBColorEdit
      Left = 8
      Top = 193
      Width = 129
      Height = 23
      DataField = 'D_FAMILIAR'
      DataSource = DSCliente
      TabOrder = 3
      NotFoundText = 'N'#227'o Existe'
      InputText = 'Por favor entre na procura pelo crit'#233'rio'
      ButtonCaption = 'Ok'
    end
    object OUTDESP: TDBColorEdit
      Left = 8
      Top = 243
      Width = 129
      Height = 23
      DataField = 'D_OUTDESP'
      DataSource = DSCliente
      TabOrder = 4
      NotFoundText = 'N'#227'o Existe'
      InputText = 'Por favor entre na procura pelo crit'#233'rio'
      ButtonCaption = 'Ok'
    end
  end
  object TEquip: TIBQuery
    Database = DBPessoa
    Transaction = TransacPessoa
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select first 1  * from EQUIPAMENTO')
    UpdateObject = UEquip
    GeneratorField.Field = 'COD_FUNC'
    Left = 288
    Top = 64
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
    object TEquipOBS: TMemoField
      FieldName = 'OBS'
      Origin = 'EQUIPAMENTO.OBS'
      BlobType = ftMemo
      Size = 8
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
      '  COD_USUARIOATIVOU,'
      '  OBS'
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
      '  COD_USUARIOATIVOU = :COD_USUARIOATIVOU,'
      '  OBS = :OBS'
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
      
        '   LOOPERSUP, COD_PLNCTA, ATIVO, DTATIVO, COD_USUARIOATIVOU, OBS' +
        ')'
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
        'SUARIOATIVOU, '
      '   :OBS)')
    DeleteSQL.Strings = (
      'delete from EQUIPAMENTO'
      'where'
      '  COD_EQUIPAMENTO = :OLD_COD_EQUIPAMENTO')
    Left = 288
    Top = 108
  end
  object DEquip: TDataSource
    DataSet = TEquip
    Left = 288
    Top = 153
  end
  object TSelectFC: TIBQuery
    Tag = 5
    Database = DBPessoa
    Transaction = TransacPessoa
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'Select funcargo.cod_funcargo, funcargo.cod_cargo, funcargo.cod_f' +
        'uncionario, funcargo.comissao_vppro,'
      
        'funcargo.comissao_vpser, funcargo.comissao_vpser, funcargo.comis' +
        'sao_vvpro,'
      
        'funcargo.comissao_vvser, cargo.descricao, Salario.Cod_Salario, s' +
        'alario.data, salario.salario'
      
        'From funcargo Join salario on salario.cod_funcargo = funcargo.co' +
        'd_funcargo'
      'Join cargo on cargo.cod_cargo = funcargo.cod_cargo')
    Left = 87
    Top = 384
  end
  object DSelectFC: TDataSource
    DataSet = TSelectFC
    Left = 88
    Top = 433
  end
  object TClienteCob: TIBQuery
    Tag = 5
    Database = DBPessoa
    Transaction = TransacPessoa
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select  first 1 * from CLIENTECOB')
    UpdateObject = UClienteCob
    GeneratorField.Field = 'COD_CLIENTE'
    Left = 264
    Top = 215
    object TClienteCobCOD_CLIENTECOB: TIntegerField
      FieldName = 'COD_CLIENTECOB'
      Origin = 'CLIENTECOB.COD_CLIENTECOB'
    end
    object TClienteCobMULTA: TIBBCDField
      FieldName = 'MULTA'
      Origin = 'CLIENTECOB.MULTA'
      Precision = 18
      Size = 2
    end
    object TClienteCobJUROS: TIBBCDField
      FieldName = 'JUROS'
      Origin = 'CLIENTECOB.JUROS'
      Precision = 18
      Size = 2
    end
    object TClienteCobTIPOJUR: TSmallintField
      FieldName = 'TIPOJUR'
      Origin = 'CLIENTECOB.TIPOJUR'
    end
    object TClienteCobCOD_PESSOA: TIntegerField
      FieldName = 'COD_PESSOA'
      Origin = 'CLIENTECOB.COD_PESSOA'
    end
    object TClienteCobDTCADASTRO: TDateField
      FieldName = 'DTCADASTRO'
      Origin = 'CLIENTECOB.DTCADASTRO'
    end
    object TClienteCobUSUARIO: TIntegerField
      FieldName = 'USUARIO'
      Origin = 'CLIENTECOB.USUARIO'
    end
    object TClienteCobATIVO: TIBStringField
      FieldName = 'ATIVO'
      Origin = 'CLIENTECOB.ATIVO'
      FixedChar = True
      Size = 1
    end
    object TClienteCobCOD_INTERNO: TIBStringField
      FieldName = 'COD_INTERNO'
      Origin = 'CLIENTECOB.COD_INTERNO'
      Size = 10
    end
  end
  object UClienteCob: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  COD_CLIENTECOB,'
      '  MULTA,'
      '  JUROS,'
      '  TIPOJUR,'
      '  COD_PESSOA,'
      '  DTCADASTRO,'
      '  USUARIO,'
      '  ATIVO,'
      '  COD_INTERNO'
      'from CLIENTECOB '
      'where'
      '  COD_CLIENTECOB = :COD_CLIENTECOB')
    ModifySQL.Strings = (
      'update CLIENTECOB'
      'set'
      '  COD_CLIENTECOB = :COD_CLIENTECOB,'
      '  MULTA = :MULTA,'
      '  JUROS = :JUROS,'
      '  TIPOJUR = :TIPOJUR,'
      '  COD_PESSOA = :COD_PESSOA,'
      '  DTCADASTRO = :DTCADASTRO,'
      '  USUARIO = :USUARIO,'
      '  ATIVO = :ATIVO,'
      '  COD_INTERNO = :COD_INTERNO'
      'where'
      '  COD_CLIENTECOB = :OLD_COD_CLIENTECOB')
    InsertSQL.Strings = (
      'insert into CLIENTECOB'
      
        '  (COD_CLIENTECOB, MULTA, JUROS, TIPOJUR, COD_PESSOA, DTCADASTRO' +
        ', USUARIO, '
      '   ATIVO, COD_INTERNO)'
      'values'
      
        '  (:COD_CLIENTECOB, :MULTA, :JUROS, :TIPOJUR, :COD_PESSOA, :DTCA' +
        'DASTRO, '
      '   :USUARIO, :ATIVO, :COD_INTERNO)')
    DeleteSQL.Strings = (
      'delete from CLIENTECOB'
      'where'
      '  COD_CLIENTECOB = :OLD_COD_CLIENTECOB')
    Left = 263
    Top = 263
  end
  object DClienteCob: TDataSource
    DataSet = TClienteCob
    Left = 263
    Top = 313
  end
  object WClienteCob: TIBQuery
    Tag = 5
    Database = DBPessoa
    Transaction = TransacPessoa
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'Select * from VWClienteCob')
    Left = 384
    Top = 216
    object WClienteCobCOD_INTERNO: TIBStringField
      FieldName = 'COD_INTERNO'
      Origin = 'VWCLIENTECOB.COD_INTERNO'
      Size = 10
    end
    object WClienteCobCOD_CLIENTECOB: TIntegerField
      FieldName = 'COD_CLIENTECOB'
      Origin = 'VWCLIENTECOB.COD_CLIENTECOB'
    end
    object WClienteCobCOD_PESSOA: TIntegerField
      FieldName = 'COD_PESSOA'
      Origin = 'VWCLIENTECOB.COD_PESSOA'
    end
    object WClienteCobNOME: TIBStringField
      FieldName = 'NOME'
      Origin = 'VWCLIENTECOB.NOME'
      Size = 100
    end
    object WClienteCobENDERECO: TIBStringField
      FieldName = 'ENDERECO'
      Origin = 'VWCLIENTECOB.ENDERECO'
      Size = 100
    end
    object WClienteCobBAIRRO: TIBStringField
      FieldName = 'BAIRRO'
      Origin = 'VWCLIENTECOB.BAIRRO'
      Size = 40
    end
    object WClienteCobCPFCNPJ: TIBStringField
      FieldName = 'CPFCNPJ'
      Origin = 'VWCLIENTECOB.CPFCNPJ'
    end
    object WClienteCobCOD_CIDADE: TIntegerField
      FieldName = 'COD_CIDADE'
      Origin = 'VWCLIENTECOB.COD_CIDADE'
    end
    object WClienteCobCIDADE: TIBStringField
      FieldName = 'CIDADE'
      Origin = 'VWCLIENTECOB.CIDADE'
      Size = 100
    end
    object WClienteCobATIVO: TIBStringField
      FieldName = 'ATIVO'
      Origin = 'VWCLIENTECOB.ATIVO'
      FixedChar = True
      Size = 1
    end
    object WClienteCobTELREL: TIBStringField
      FieldName = 'TELREL'
      Origin = 'VWCLIENTECOB.TELREL'
      Size = 25
    end
  end
  object DWClienteCob: TDataSource
    DataSet = WClienteCob
    Left = 384
    Top = 313
  end
  object TDevCli: TIBQuery
    Database = DBPessoa
    Transaction = TransacPessoa
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select  first 1 * from DEVCLI')
    UpdateObject = UDevCli
    GeneratorField.Field = 'COD_CLIENTE'
    Left = 320
    Top = 215
    object TDevCliCOD_DEVCLI: TIntegerField
      FieldName = 'COD_DEVCLI'
      Origin = 'DEVCLI.COD_DEVCLI'
    end
    object TDevCliCOD_CLIENTECOB: TIntegerField
      FieldName = 'COD_CLIENTECOB'
      Origin = 'DEVCLI.COD_CLIENTECOB'
    end
    object TDevCliCOD_DEVEDOR: TIntegerField
      FieldName = 'COD_DEVEDOR'
      Origin = 'DEVCLI.COD_DEVEDOR'
    end
  end
  object UDevCli: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  COD_DEVCLI,'
      '  COD_CLIENTECOB,'
      '  COD_DEVEDOR'
      'from DEVCLI '
      'where'
      '  COD_DEVCLI = :COD_DEVCLI')
    ModifySQL.Strings = (
      'update DEVCLI'
      'set'
      '  COD_DEVCLI = :COD_DEVCLI,'
      '  COD_CLIENTECOB = :COD_CLIENTECOB,'
      '  COD_DEVEDOR = :COD_DEVEDOR'
      'where'
      '  COD_DEVCLI = :OLD_COD_DEVCLI')
    InsertSQL.Strings = (
      'insert into DEVCLI'
      '  (COD_DEVCLI, COD_CLIENTECOB, COD_DEVEDOR)'
      'values'
      '  (:COD_DEVCLI, :COD_CLIENTECOB, :COD_DEVEDOR)')
    DeleteSQL.Strings = (
      'delete from DEVCLI'
      'where'
      '  COD_DEVCLI = :OLD_COD_DEVCLI')
    Left = 319
    Top = 263
  end
  object DDevCli: TDataSource
    DataSet = TDevCli
    Left = 319
    Top = 313
  end
  object TEquipe: TIBQuery
    Database = DBPessoa
    Transaction = TransacPessoa
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select first 1  * from equipe')
    UpdateObject = UEquipe
    Left = 576
    Top = 216
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
    Left = 576
    Top = 264
  end
  object DSEquipe: TDataSource
    DataSet = TEquipe
    Left = 576
    Top = 312
  end
  object TFunEquipe: TIBQuery
    Database = DBPessoa
    Transaction = TransacPessoa
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select  first 1 * from funequipe'
      '')
    UpdateObject = UFunEquipe
    Left = 648
    Top = 216
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
    Left = 648
    Top = 264
  end
  object DSFunEquipe: TDataSource
    DataSet = TFunEquipe
    Left = 648
    Top = 312
  end
  object DSAux: TDataSource
    DataSet = TAux
    Left = 535
    Top = 425
  end
  object TAux: TIBQuery
    Tag = 5
    Database = DBPessoa
    Transaction = TransacPessoa
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'select funequipe.cod_funequipe, funequipe.cod_funcionario, funeq' +
        'uipe.cod_equipe,'
      
        'funcionario.cod_func, funcionario.cod_interno, funcionario.cod_p' +
        'essoa,'
      'pessoa.cod_pessoa, pessoa.nome'
      'from funequipe'
      
        'left join funcionario on funequipe.cod_funcionario = funcionario' +
        '.cod_func'
      'left join pessoa on funcionario.cod_pessoa = pessoa.cod_pessoa'
      '')
    Left = 535
    Top = 368
    object TAuxCOD_FUNEQUIPE: TIntegerField
      FieldName = 'COD_FUNEQUIPE'
      Origin = 'FUNEQUIPE.COD_FUNEQUIPE'
    end
    object TAuxCOD_FUNCIONARIO: TIntegerField
      FieldName = 'COD_FUNCIONARIO'
      Origin = 'FUNEQUIPE.COD_FUNCIONARIO'
    end
    object TAuxCOD_EQUIPE: TIntegerField
      FieldName = 'COD_EQUIPE'
      Origin = 'FUNEQUIPE.COD_EQUIPE'
    end
    object TAuxCOD_FUNC: TIntegerField
      FieldName = 'COD_FUNC'
      Origin = 'FUNCIONARIO.COD_FUNC'
    end
    object TAuxCOD_INTERNO: TIBStringField
      FieldName = 'COD_INTERNO'
      Origin = 'FUNCIONARIO.COD_INTERNO'
      Size = 10
    end
    object TAuxCOD_PESSOA: TIntegerField
      FieldName = 'COD_PESSOA'
      Origin = 'FUNCIONARIO.COD_PESSOA'
    end
    object TAuxCOD_PESSOA1: TIntegerField
      FieldName = 'COD_PESSOA1'
      Origin = 'PESSOA.COD_PESSOA'
    end
    object TAuxNOME: TIBStringField
      FieldName = 'NOME'
      Origin = 'PESSOA.NOME'
      Size = 100
    end
  end
  object DSAux1: TDataSource
    DataSet = TAux1
    Left = 592
    Top = 424
  end
  object TAux1: TIBQuery
    Tag = 5
    Database = DBPessoa
    Transaction = TransacPessoa
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'select equipamento.cod_equipamento, equipamento.cod_cliente,equi' +
        'pamento.descricao,'
      
        '    equipamento.marca, equipamento.modelo, equipamento.cor, equi' +
        'pamento.placa,'
      
        '    equipamento.ano, equipamento.modelo_guincho, vwcliente.nome ' +
        'from equipamento'
      
        '    left join vwcliente on equipamento.cod_cliente = vwcliente.c' +
        'od_cliente')
    Left = 592
    Top = 368
  end
  object TAjudante: TIBQuery
    Database = DBPessoa
    Transaction = TransacPessoa
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select  first 1 * from ajudante')
    UpdateObject = UAjudante
    GeneratorField.Field = 'COD_FUNC'
    Left = 624
    Top = 64
    object TAjudanteCOD_FUNC: TIntegerField
      FieldName = 'COD_FUNC'
      Origin = 'AJUDANTE.COD_FUNC'
    end
    object TAjudanteCOD_ORDEM: TIntegerField
      FieldName = 'COD_ORDEM'
      Origin = 'AJUDANTE.COD_ORDEM'
    end
    object TAjudanteHMAT_INI: TTimeField
      FieldName = 'HMAT_INI'
      Origin = 'AJUDANTE.HMAT_INI'
    end
    object TAjudanteHMAT_FIM: TTimeField
      FieldName = 'HMAT_FIM'
      Origin = 'AJUDANTE.HMAT_FIM'
    end
    object TAjudanteHVESP_INI: TTimeField
      FieldName = 'HVESP_INI'
      Origin = 'AJUDANTE.HVESP_INI'
    end
    object TAjudanteHVESP_FIM: TTimeField
      FieldName = 'HVESP_FIM'
      Origin = 'AJUDANTE.HVESP_FIM'
    end
    object TAjudanteHRS_NORMAIS: TTimeField
      FieldName = 'HRS_NORMAIS'
      Origin = 'AJUDANTE.HRS_NORMAIS'
    end
    object TAjudanteHRS_EXTRAS: TTimeField
      FieldName = 'HRS_EXTRAS'
      Origin = 'AJUDANTE.HRS_EXTRAS'
    end
    object TAjudanteVLR_NORMAL: TIBBCDField
      FieldName = 'VLR_NORMAL'
      Origin = 'AJUDANTE.VLR_NORMAL'
      Precision = 18
      Size = 2
    end
    object TAjudanteVLR_EXTRA: TIBBCDField
      FieldName = 'VLR_EXTRA'
      Origin = 'AJUDANTE.VLR_EXTRA'
      Precision = 18
      Size = 2
    end
    object TAjudanteTOTAL_NORMAL: TIBBCDField
      FieldName = 'TOTAL_NORMAL'
      Origin = 'AJUDANTE.TOTAL_NORMAL'
      Precision = 18
      Size = 2
    end
    object TAjudanteTOTAL_EXTRA: TIBBCDField
      FieldName = 'TOTAL_EXTRA'
      Origin = 'AJUDANTE.TOTAL_EXTRA'
      Precision = 18
      Size = 2
    end
    object TAjudanteVALORTOTHRS: TIBBCDField
      FieldName = 'VALORTOTHRS'
      Origin = 'AJUDANTE.VALORTOTHRS'
      Precision = 18
      Size = 2
    end
    object TAjudanteMARK: TIBStringField
      FieldName = 'MARK'
      Origin = 'AJUDANTE.MARK'
      FixedChar = True
      Size = 1
    end
    object TAjudanteDATA: TDateField
      FieldName = 'DATA'
      Origin = 'AJUDANTE.DATA'
    end
    object TAjudanteTOTAL_HORAS: TTimeField
      FieldName = 'TOTAL_HORAS'
      Origin = 'AJUDANTE.TOTAL_HORAS'
    end
    object TAjudanteDIA_SEMANA: TIBStringField
      FieldName = 'DIA_SEMANA'
      Origin = 'AJUDANTE.DIA_SEMANA'
      Size = 10
    end
  end
  object UAjudante: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select * '
      'from ajudante '
      'where'
      '  COD_FUNC = :COD_FUNC')
    ModifySQL.Strings = (
      'update ajudante'
      'set'
      '  COD_FUNC = :COD_FUNC,'
      '  COD_ORDEM = :COD_ORDEM,'
      '  HMAT_INI = :HMAT_INI,'
      '  HMAT_FIM = :HMAT_FIM,'
      '  HVESP_INI = :HVESP_INI,'
      '  HVESP_FIM = :HVESP_FIM,'
      '  HRS_NORMAIS = :HRS_NORMAIS,'
      '  HRS_EXTRAS = :HRS_EXTRAS,'
      '  VLR_NORMAL = :VLR_NORMAL,'
      '  VLR_EXTRA = :VLR_EXTRA,'
      '  TOTAL_NORMAL = :TOTAL_NORMAL,'
      '  TOTAL_EXTRA = :TOTAL_EXTRA,'
      '  VALORTOTHRS = :VALORTOTHRS,'
      '  MARK = :MARK,'
      '  DATA = :DATA,'
      '  TOTAL_HORAS = :TOTAL_HORAS,'
      '  DIA_SEMANA = :DIA_SEMANA'
      'where'
      '  COD_FUNC = :OLD_COD_FUNC')
    InsertSQL.Strings = (
      'insert into ajudante'
      
        '  (COD_FUNC, COD_ORDEM, HMAT_INI, HMAT_FIM, HVESP_INI, HVESP_FIM' +
        ', HRS_NORMAIS, '
      
        '   HRS_EXTRAS, VLR_NORMAL, VLR_EXTRA, TOTAL_NORMAL, TOTAL_EXTRA,' +
        ' VALORTOTHRS, '
      '   MARK, DATA, TOTAL_HORAS, DIA_SEMANA)'
      'values'
      
        '  (:COD_FUNC, :COD_ORDEM, :HMAT_INI, :HMAT_FIM, :HVESP_INI, :HVE' +
        'SP_FIM, '
      
        '   :HRS_NORMAIS, :HRS_EXTRAS, :VLR_NORMAL, :VLR_EXTRA, :TOTAL_NO' +
        'RMAL, :TOTAL_EXTRA, '
      '   :VALORTOTHRS, :MARK, :DATA, :TOTAL_HORAS, :DIA_SEMANA)')
    DeleteSQL.Strings = (
      'delete from ajudante'
      'where'
      '  COD_FUNC = :OLD_COD_FUNC')
    Left = 624
    Top = 108
  end
  object DSAjudante: TDataSource
    DataSet = TAjudante
    Left = 624
    Top = 153
  end
  object DSAux2: TDataSource
    DataSet = TAux2
    Left = 647
    Top = 425
  end
  object TAux2: TIBQuery
    Tag = 5
    Database = DBPessoa
    Transaction = TransacPessoa
    BufferChunks = 1000
    CachedUpdates = False
    Left = 647
    Top = 368
  end
  object DSAux3: TDataSource
    DataSet = TAux3
    Left = 695
    Top = 425
  end
  object TAux3: TIBQuery
    Tag = 5
    Database = DBPessoa
    Transaction = TransacPessoa
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'SELECT funcionario.cod_interno, funcionario.cod_func, funcionari' +
        'o.cod_pessoa,'
      
        'ajudante.cod_func, ajudante.cod_ordem, ajudante.hrs_normais, aju' +
        'dante.hrs_extras,'
      
        'ajudante.total_normal, ajudante.total_extra, ajudante.valortothr' +
        's, ajudante.data,'
      'pessoa.cod_pessoa, pessoa.nome, ordem.cod_ordem'
      'from ajudante'
      
        'left join funcionario on ajudante.cod_func = funcionario.cod_fun' +
        'c'
      'left join pessoa on funcionario.cod_pessoa = pessoa.cod_pessoa'
      'left join ordem on ajudante.cod_ordem = ordem.cod_ordem')
    Left = 695
    Top = 368
  end
end
