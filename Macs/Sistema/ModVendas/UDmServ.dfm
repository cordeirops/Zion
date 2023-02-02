object DMServ: TDMServ
  OldCreateOrder = False
  Left = 466
  Top = 65
  Height = 465
  Width = 1068
  object DbServ: TIBDatabase
    DatabaseName = 'note:C:\MZR\MACS\DBMACS.GDB'
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
    Left = 16
    Top = 8
  end
  object IBT: TIBTransaction
    Active = False
    DefaultDatabase = DbServ
    DefaultAction = TACommitRetaining
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    AutoStopAction = saNone
    Left = 56
    Top = 8
  end
  object Alx: TIBQuery
    Tag = 5
    Database = DbServ
    Transaction = IBT
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        ' Select despadic.cod_despadic, ordem.cod_ordem, equipe.cod_equip' +
        'e, equipe.descricao as NOMEEQUIPE,'
      
        ' ordem.numero, vwcliente.nome, ordem.dtabert, ordem.dtfech, equi' +
        'pamento.placa, despadic.despesa,'
      
        ' despadic.vlrfinal as VLRUNIT, despadic.qtd AS QUANTIDADE, despa' +
        'dic.vlrtotfin AS VLRTOTAL'
      '   from despadic'
      ' Left join ordem on despadic.cod_gerador = ordem.cod_ordem'
      ' Left join equipe on despadic.cod_equipe = equipe.cod_equipe'
      
        ' left join vwcliente on ordem.cod_cliente = vwcliente.cod_client' +
        'e'
      
        ' left join equipamento on ordem.cod_equipamento = equipamento.co' +
        'd_equipamento'
      ' Where (despadic.gerador='#39'ORDEM'#39')')
    Left = 112
    Top = 8
  end
  object DSAlx: TDataSource
    DataSet = Alx
    Left = 144
    Top = 8
  end
  object TOrd: TIBQuery
    Database = DbServ
    Transaction = IBT
    AutoCalcFields = False
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select   FIRST 1 * from ordem')
    UpdateObject = UOrd
    GeneratorField.Field = 'COD_ORDEM'
    GeneratorField.Generator = 'GEN_ORDEM_ID'
    Left = 17
    Top = 65
    object TOrdCOD_ORDEM: TIntegerField
      FieldName = 'COD_ORDEM'
      Required = True
    end
    object TOrdCOD_CLIENTE: TIntegerField
      FieldName = 'COD_CLIENTE'
      Origin = 'ORDEM.COD_CLIENTE'
    end
    object TOrdCOD_EQUIPAMENTO: TIntegerField
      FieldName = 'COD_EQUIPAMENTO'
      Origin = 'ORDEM.COD_EQUIPAMENTO'
    end
    object TOrdCOD_VENDEDOR: TIntegerField
      FieldName = 'COD_VENDEDOR'
      Origin = 'ORDEM.COD_VENDEDOR'
    end
    object TOrdDTABERT: TDateField
      FieldName = 'DTABERT'
      Origin = 'ORDEM.DTABERT'
      EditMask = '!99/99/0000;1;_'
    end
    object TOrdHRABERT: TTimeField
      FieldName = 'HRABERT'
      Origin = 'ORDEM.HRABERT'
    end
    object TOrdDTPREV: TDateField
      FieldName = 'DTPREV'
      Origin = 'ORDEM.DTPREV'
      EditMask = '!99/99/0000;1;_'
    end
    object TOrdHRPREV: TTimeField
      FieldName = 'HRPREV'
      Origin = 'ORDEM.HRPREV'
    end
    object TOrdCOD_FUNCIONARIO: TIntegerField
      FieldName = 'COD_FUNCIONARIO'
      Origin = 'ORDEM.COD_FUNCIONARIO'
    end
    object TOrdOBSERVACAO: TMemoField
      FieldName = 'OBSERVACAO'
      Origin = 'ORDEM.OBSERVACAO'
      BlobType = ftMemo
      Size = 8
    end
    object TOrdDTENTREGA: TDateField
      FieldName = 'DTENTREGA'
      Origin = 'ORDEM.DTENTREGA'
      EditMask = '!99/99/0000;1;_'
    end
    object TOrdHRENTREGA: TTimeField
      FieldName = 'HRENTREGA'
      Origin = 'ORDEM.HRENTREGA'
    end
    object TOrdNIVELCOMP: TIBStringField
      FieldName = 'NIVELCOMP'
      Origin = 'ORDEM.NIVELCOMP'
      Size = 10
    end
    object TOrdPROBREC: TMemoField
      FieldName = 'PROBREC'
      Origin = 'ORDEM.PROBREC'
      BlobType = ftMemo
      Size = 8
    end
    object TOrdSOLUCAO: TMemoField
      FieldName = 'SOLUCAO'
      Origin = 'ORDEM.SOLUCAO'
      BlobType = ftMemo
      Size = 8
    end
    object TOrdSTATUS: TIBStringField
      FieldName = 'STATUS'
      Origin = 'ORDEM.STATUS'
      Size = 15
    end
    object TOrdNUMERO: TIBStringField
      FieldName = 'NUMERO'
      Origin = 'ORDEM.NUMERO'
      Size = 10
    end
    object TOrdDESCONTO: TIBBCDField
      FieldName = 'DESCONTO'
      Origin = 'ORDEM.DESCONTO'
      Precision = 18
      Size = 2
    end
    object TOrdCOD_USUARIO: TIntegerField
      FieldName = 'COD_USUARIO'
      Origin = 'ORDEM.COD_USUARIO'
    end
    object TOrdTOTPROD: TIBBCDField
      FieldName = 'TOTPROD'
      Origin = 'ORDEM.TOTPROD'
      Precision = 18
      Size = 2
    end
    object TOrdTOTSERV: TIBBCDField
      FieldName = 'TOTSERV'
      Origin = 'ORDEM.TOTSERV'
      Precision = 18
      Size = 2
    end
    object TOrdTOTORD: TIBBCDField
      FieldName = 'TOTORD'
      Origin = 'ORDEM.TOTORD'
      Precision = 18
      Size = 2
    end
    object TOrdCOD_LOJA: TIntegerField
      FieldName = 'COD_LOJA'
      Origin = 'ORDEM.COD_LOJA'
    end
    object TOrdMOTIVOPARADA: TMemoField
      FieldName = 'MOTIVOPARADA'
      Origin = 'ORDEM.MOTIVOPARADA'
      BlobType = ftMemo
      Size = 8
    end
    object TOrdCOD_FORMPAG: TIntegerField
      FieldName = 'COD_FORMPAG'
      Origin = 'ORDEM.COD_FORMPAG'
    end
    object TOrdLOCALAT: TIBStringField
      FieldName = 'LOCALAT'
      Origin = 'ORDEM.LOCALAT'
      Size = 25
    end
    object TOrdCOMISSAO: TIBBCDField
      FieldName = 'COMISSAO'
      Origin = 'ORDEM.COMISSAO'
      Precision = 18
      Size = 2
    end
    object TOrdGARANTIA: TIBStringField
      FieldName = 'GARANTIA'
      Origin = 'ORDEM.GARANTIA'
      FixedChar = True
      Size = 1
    end
    object TOrdTOTDESP: TIBBCDField
      FieldName = 'TOTDESP'
      Origin = 'ORDEM.TOTDESP'
      Precision = 18
      Size = 2
    end
    object TOrdCOMSOBVENDA: TIBStringField
      FieldName = 'COMSOBVENDA'
      Origin = 'ORDEM.COMSOBVENDA'
      FixedChar = True
      Size = 1
    end
    object TOrdDTFECH: TDateField
      FieldName = 'DTFECH'
      Origin = 'ORDEM.DTFECH'
      EditMask = '!99/99/0000;1;_'
    end
    object TOrdDESCPROD: TIBBCDField
      FieldName = 'DESCPROD'
      Origin = 'ORDEM.DESCPROD'
      Precision = 18
      Size = 2
    end
    object TOrdDESCSERV: TIBBCDField
      FieldName = 'DESCSERV'
      Origin = 'ORDEM.DESCSERV'
      Precision = 18
      Size = 2
    end
    object TOrdNUMORC: TIntegerField
      FieldName = 'NUMORC'
      Origin = 'ORDEM.NUMORC'
    end
    object TOrdMOUSE: TIBStringField
      FieldName = 'MOUSE'
      Origin = 'ORDEM.MOUSE'
      Size = 10
    end
    object TOrdTECLADO: TIBStringField
      FieldName = 'TECLADO'
      Origin = 'ORDEM.TECLADO'
      Size = 10
    end
    object TOrdKITMM: TIBStringField
      FieldName = 'KITMM'
      Origin = 'ORDEM.KITMM'
      Size = 10
    end
    object TOrdCABOS: TIBStringField
      FieldName = 'CABOS'
      Origin = 'ORDEM.CABOS'
      Size = 10
    end
    object TOrdIMPRESSORA: TIBStringField
      FieldName = 'IMPRESSORA'
      Origin = 'ORDEM.IMPRESSORA'
      Size = 10
    end
    object TOrdCDRECUPERA: TIBStringField
      FieldName = 'CDRECUPERA'
      Origin = 'ORDEM.CDRECUPERA'
      Size = 10
    end
    object TOrdMONITOR: TIBStringField
      FieldName = 'MONITOR'
      Origin = 'ORDEM.MONITOR'
      Size = 10
    end
    object TOrdFONES: TIBStringField
      FieldName = 'FONES'
      Origin = 'ORDEM.FONES'
      Size = 10
    end
    object TOrdESTADOEQUIP: TIBStringField
      FieldName = 'ESTADOEQUIP'
      Origin = 'ORDEM.ESTADOEQUIP'
      Size = 10
    end
    object TOrdMARK: TIBStringField
      FieldName = 'MARK'
      Origin = 'ORDEM.MARK'
      FixedChar = True
      Size = 1
    end
    object TOrdFISCO: TIBStringField
      FieldName = 'FISCO'
      Origin = 'ORDEM.FISCO'
      Size = 10
    end
    object TOrdTIPOPAG: TIBStringField
      FieldName = 'TIPOPAG'
      Origin = 'ORDEM.TIPOPAG'
      Size = 10
    end
    object TOrdDOCUMENTOS: TIBStringField
      FieldName = 'DOCUMENTOS'
      Origin = 'ORDEM.DOCUMENTOS'
      FixedChar = True
      Size = 1
    end
    object TOrdDESKTOP: TIBStringField
      FieldName = 'DESKTOP'
      Origin = 'ORDEM.DESKTOP'
      FixedChar = True
      Size = 1
    end
    object TOrdEMAILS: TIBStringField
      FieldName = 'EMAILS'
      Origin = 'ORDEM.EMAILS'
      FixedChar = True
      Size = 1
    end
    object TOrdOUTROS: TIBStringField
      FieldName = 'OUTROS'
      Origin = 'ORDEM.OUTROS'
      FixedChar = True
      Size = 1
    end
    object TOrdDESCBACKUP: TMemoField
      FieldName = 'DESCBACKUP'
      Origin = 'ORDEM.DESCBACKUP'
      BlobType = ftMemo
      Size = 8
    end
    object TOrdCOD_TABELAPRECO: TIntegerField
      FieldName = 'COD_TABELAPRECO'
      Origin = 'ORDEM.COD_TABELAPRECO'
    end
    object TOrdBOX: TIBStringField
      FieldName = 'BOX'
      Origin = 'ORDEM.BOX'
      Size = 10
    end
    object TOrdEXP: TIBStringField
      FieldName = 'EXP'
      Origin = 'ORDEM.EXP'
      FixedChar = True
      Size = 1
    end
    object TOrdEXPORTADO: TIBStringField
      FieldName = 'EXPORTADO'
      Origin = 'ORDEM.EXPORTADO'
      FixedChar = True
      Size = 1
    end
    object TOrdTOTKM: TIBBCDField
      FieldName = 'TOTKM'
      Origin = 'ORDEM.TOTKM'
      Precision = 18
      Size = 2
    end
    object TOrdDESCKM: TIBBCDField
      FieldName = 'DESCKM'
      Origin = 'ORDEM.DESCKM'
      Precision = 18
      Size = 2
    end
    object TOrdTOTAJUDANTE: TIBBCDField
      FieldName = 'TOTAJUDANTE'
      Origin = 'ORDEM.TOTAJUDANTE'
      Precision = 18
      Size = 2
    end
    object TOrdDESCAJUDANTE: TIBBCDField
      FieldName = 'DESCAJUDANTE'
      Origin = 'ORDEM.DESCAJUDANTE'
      Precision = 18
      Size = 2
    end
    object TOrdCONTATO: TIBStringField
      FieldName = 'CONTATO'
      Origin = 'ORDEM.CONTATO'
      Size = 60
    end
    object TOrdEDIT: TIBStringField
      FieldName = 'EDIT'
      Origin = 'ORDEM.EDIT'
      FixedChar = True
      Size = 1
    end
    object TOrdNUMFISCALAUX: TIBStringField
      FieldName = 'NUMFISCALAUX'
      Origin = 'ORDEM.NUMFISCALAUX'
      Size = 15
    end
    object TOrdTIPO: TIBStringField
      FieldName = 'TIPO'
      Origin = 'ORDEM.TIPO'
      Size = 10
    end
    object TOrdNUMFISCAL: TIBStringField
      FieldName = 'NUMFISCAL'
      Origin = 'ORDEM.NUMFISCAL'
      Size = 10
    end
    object TOrdNUMFISCALINT: TIntegerField
      FieldName = 'NUMFISCALINT'
      Origin = 'ORDEM.NUMFISCALINT'
    end
    object TOrdOBSORDEM: TMemoField
      FieldName = 'OBSORDEM'
      Origin = 'ORDEM.OBSORDEM'
      BlobType = ftMemo
      Size = 8
    end
    object TOrdVLRADIANTAMENTO: TIBBCDField
      FieldName = 'VLRADIANTAMENTO'
      Origin = 'ORDEM.VLRADIANTAMENTO'
      Precision = 18
      Size = 2
    end
    object TOrdPLACA2: TIBStringField
      FieldName = 'PLACA2'
      Origin = 'ORDEM.PLACA2'
      Size = 10
    end
    object TOrdPLACA3: TIBStringField
      FieldName = 'PLACA3'
      Origin = 'ORDEM.PLACA3'
      Size = 10
    end
    object TOrdSTATUSNFSE: TIBStringField
      FieldName = 'STATUSNFSE'
      Origin = 'ORDEM.STATUSNFSE'
      FixedChar = True
      Size = 1
    end
    object TOrdNUMFISCALNFSE: TIntegerField
      FieldName = 'NUMFISCALNFSE'
      Origin = 'ORDEM.NUMFISCALNFSE'
    end
    object TOrdTOTISS: TIBBCDField
      FieldName = 'TOTISS'
      Origin = 'ORDEM.TOTISS'
      Precision = 18
      Size = 2
    end
    object TOrdRT_ISS: TIBStringField
      FieldName = 'RT_ISS'
      Origin = 'ORDEM.RT_ISS'
      FixedChar = True
      Size = 1
    end
    object TOrdNRCONTRATO: TIntegerField
      FieldName = 'NRCONTRATO'
      Origin = 'ORDEM.NRCONTRATO'
    end
    object TOrdNUMFISCAL_DEVOLVIDA: TIBStringField
      FieldName = 'NUMFISCAL_DEVOLVIDA'
      Origin = 'ORDEM.NUMFISCAL_DEVOLVIDA'
      Size = 10
    end
    object TOrdGERANFSE: TIBStringField
      FieldName = 'GERANFSE'
      Origin = 'ORDEM.GERANFSE'
      Size = 1
    end
    object TOrdCPFCNPJ: TIBStringField
      FieldName = 'CPFCNPJ'
      Origin = 'ORDEM.CPFCNPJ'
    end
    object TOrdNOMECLI: TIBStringField
      FieldName = 'NOMECLI'
      Origin = 'ORDEM.NOMECLI'
      Size = 100
    end
    object TOrdDTAGENDADO: TDateField
      FieldName = 'DTAGENDADO'
      Origin = 'ORDEM.DTAGENDADO'
    end
  end
  object UOrd: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  COD_ORDEM,'
      '  COD_CLIENTE,'
      '  COD_EQUIPAMENTO,'
      '  COD_VENDEDOR,'
      '  DTABERT,'
      '  HRABERT,'
      '  DTPREV,'
      '  HRPREV,'
      '  COD_FUNCIONARIO,'
      '  OBSERVACAO,'
      '  DTENTREGA,'
      '  HRENTREGA,'
      '  NIVELCOMP,'
      '  PROBREC,'
      '  SOLUCAO,'
      '  STATUS,'
      '  NUMERO,'
      '  DESCONTO,'
      '  COD_USUARIO,'
      '  TOTPROD,'
      '  TOTSERV,'
      '  TOTORD,'
      '  COD_LOJA,'
      '  MOTIVOPARADA,'
      '  COD_FORMPAG,'
      '  LOCALAT,'
      '  COMISSAO,'
      '  GARANTIA,'
      '  TOTDESP,'
      '  COMSOBVENDA,'
      '  DTFECH,'
      '  DESCPROD,'
      '  DESCSERV,'
      '  NUMORC,'
      '  MOUSE,'
      '  TECLADO,'
      '  KITMM,'
      '  CABOS,'
      '  IMPRESSORA,'
      '  CDRECUPERA,'
      '  MONITOR,'
      '  FONES,'
      '  ESTADOEQUIP,'
      '  MARK,'
      '  FISCO,'
      '  NUMFISCAL,'
      '  TIPOPAG,'
      '  DOCUMENTOS,'
      '  DESKTOP,'
      '  EMAILS,'
      '  OUTROS,'
      '  DESCBACKUP,'
      '  COD_TABELAPRECO,'
      '  BOX,'
      '  EXP,'
      '  EXPORTADO,'
      '  TOTKM,'
      '  DESCKM,'
      '  TOTAJUDANTE,'
      '  DESCAJUDANTE,'
      '  CONTATO,'
      '  EDIT,'
      '  NUMFISCALAUX,'
      '  TIPO,'
      '  NUMFISCALINT,'
      '  OBSORDEM,'
      '  VLRADIANTAMENTO,'
      '  PLACA2,'
      '  PLACA3,'
      '  NUMFISCALNFSE,'
      '  STATUSNFSE,'
      '  RT_ISS,'
      '  TOTISS,'
      '  NRCONTRATO,'
      '  NUMFISCAL_DEVOLVIDA,'
      '  NOMECLI,'
      '  CPFCNPJ,'
      '  GERANFSE,'
      '  DTAGENDADO'
      'from ORDEM '
      'where'
      '  COD_ORDEM = :COD_ORDEM')
    ModifySQL.Strings = (
      'update ORDEM'
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
      '  TIPO = :TIPO,'
      '  NUMFISCALINT = :NUMFISCALINT,'
      '  OBSORDEM = :OBSORDEM,'
      '  VLRADIANTAMENTO = :VLRADIANTAMENTO,'
      '  PLACA2 = :PLACA2,'
      '  PLACA3 = :PLACA3,'
      '  NUMFISCALNFSE = :NUMFISCALNFSE,'
      '  STATUSNFSE = :STATUSNFSE,'
      '  RT_ISS = :RT_ISS,'
      '  TOTISS = :TOTISS,'
      '  NRCONTRATO = :NRCONTRATO,'
      '  NUMFISCAL_DEVOLVIDA = :NUMFISCAL_DEVOLVIDA,'
      '  NOMECLI = :NOMECLI,'
      '  CPFCNPJ = :CPFCNPJ,'
      '  GERANFSE = :GERANFSE,'
      '  DTAGENDADO = :DTAGENDADO'
      'where'
      '  COD_ORDEM = :OLD_COD_ORDEM')
    InsertSQL.Strings = (
      'insert into ORDEM'
      '  (COD_ORDEM, COD_CLIENTE, COD_EQUIPAMENTO, COD_VENDEDOR, '
      'DTABERT, HRABERT, '
      '   DTPREV, HRPREV, COD_FUNCIONARIO, OBSERVACAO, DTENTREGA, '
      'HRENTREGA, NIVELCOMP, '
      '   PROBREC, SOLUCAO, STATUS, NUMERO, DESCONTO, COD_USUARIO, '
      'TOTPROD, TOTSERV, '
      '   TOTORD, COD_LOJA, MOTIVOPARADA, COD_FORMPAG, LOCALAT, '
      'COMISSAO, GARANTIA, '
      '   TOTDESP, COMSOBVENDA, DTFECH, DESCPROD, DESCSERV, NUMORC, '
      'MOUSE, TECLADO, '
      '   KITMM, CABOS, IMPRESSORA, CDRECUPERA, MONITOR, FONES, '
      'ESTADOEQUIP, MARK, '
      
        '   FISCO, NUMFISCAL, TIPOPAG, DOCUMENTOS, DESKTOP, EMAILS, OUTRO' +
        'S, '
      'DESCBACKUP, '
      '   COD_TABELAPRECO, BOX, EXP, EXPORTADO, TOTKM, DESCKM, '
      'TOTAJUDANTE, DESCAJUDANTE, '
      '   CONTATO, EDIT, NUMFISCALAUX, TIPO, NUMFISCALINT, OBSORDEM, '
      'VLRADIANTAMENTO, '
      '   PLACA2, PLACA3, NUMFISCALNFSE, STATUSNFSE, RT_ISS, TOTISS, '
      'NRCONTRATO, '
      '   NUMFISCAL_DEVOLVIDA, NOMECLI, CPFCNPJ, GERANFSE, DTAGENDADO)'
      'values'
      '  (:COD_ORDEM, :COD_CLIENTE, :COD_EQUIPAMENTO, :COD_VENDEDOR, '
      ':DTABERT, '
      '   :HRABERT, :DTPREV, :HRPREV, :COD_FUNCIONARIO, :OBSERVACAO, '
      ':DTENTREGA, '
      
        '   :HRENTREGA, :NIVELCOMP, :PROBREC, :SOLUCAO, :STATUS, :NUMERO,' +
        ' '
      ':DESCONTO, '
      '   :COD_USUARIO, :TOTPROD, :TOTSERV, :TOTORD, :COD_LOJA, '
      ':MOTIVOPARADA, '
      '   :COD_FORMPAG, :LOCALAT, :COMISSAO, :GARANTIA, :TOTDESP, '
      ':COMSOBVENDA, '
      
        '   :DTFECH, :DESCPROD, :DESCSERV, :NUMORC, :MOUSE, :TECLADO, :KI' +
        'TMM, '
      ':CABOS, '
      
        '   :IMPRESSORA, :CDRECUPERA, :MONITOR, :FONES, :ESTADOEQUIP, :MA' +
        'RK, '
      ':FISCO, '
      
        '   :NUMFISCAL, :TIPOPAG, :DOCUMENTOS, :DESKTOP, :EMAILS, :OUTROS' +
        ', '
      ':DESCBACKUP, '
      '   :COD_TABELAPRECO, :BOX, :EXP, :EXPORTADO, :TOTKM, :DESCKM, '
      ':TOTAJUDANTE, '
      
        '   :DESCAJUDANTE, :CONTATO, :EDIT, :NUMFISCALAUX, :TIPO, :NUMFIS' +
        'CALINT, '
      
        '   :OBSORDEM, :VLRADIANTAMENTO, :PLACA2, :PLACA3, :NUMFISCALNFSE' +
        ', '
      ':STATUSNFSE, '
      
        '   :RT_ISS, :TOTISS, :NRCONTRATO, :NUMFISCAL_DEVOLVIDA, :NOMECLI' +
        ', '
      ':CPFCNPJ, '
      '   :GERANFSE, :DTAGENDADO)')
    DeleteSQL.Strings = (
      'delete from ORDEM'
      'where'
      '  COD_ORDEM = :OLD_COD_ORDEM')
    Left = 17
    Top = 107
  end
  object DOrd: TDataSource
    DataSet = TOrd
    Left = 18
    Top = 151
  end
  object DPOrd: TDataSource
    DataSet = TPOrd
    Left = 63
    Top = 151
  end
  object UPOrd: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  COD_ITPRODORD,'
      '  COD_ESTOQUE,'
      '  COD_ORDEM,'
      '  QTD,'
      '  VLRUNIT,'
      '  DESCONTO,'
      '  TOTAL,'
      '  DATA,'
      '  COD_FUNCIONARIO,'
      '  VALCUSTO,'
      '  COEFDIV,'
      '  VALCOMP,'
      '  LUCMOE,'
      '  LUCPER,'
      '  VALREP,'
      '  NUMREQ,'
      '  QTDRET,'
      '  COMISSAO,'
      '  VLRVENDBD,'
      '  LUCREL,'
      '  OPERACAO,'
      '  ALIQICMS,'
      '  BASEICMS,'
      '  VLRICMS,'
      '  BASEICMSSUBS,'
      '  VLRIPI,'
      '  ALIQIPI,'
      '  REDUCBASEICMS,'
      '  VLRICMSSUBS,'
      '  DATA_GARANTIA,'
      '  KMGARANTIA,'
      '  QTDDEV,'
      '  VLRUNITDEV,'
      '  COD_CST,'
      '  CFOP,'
      '  DESCNF,'
      '  APLICARST,'
      '  DTRETIRADA,'
      '  HRRETIRADA,'
      '  DTRETORNO,'
      '  HRRETORNO,'
      '  COD_TABELAFAIXAPRECO,'
      '  VALORTOTALTRIBUTA,'
      '  ALIQUOTATOTALTRIBUTA,'
      '  QTDE_HORA_SAIDA,'
      '  QTDE_HORA_RETORNO,'
      '  QTDE_HORA_CONSUMIDA,'
      '  CTRL_HORA,'
      '  IPNMVA,'
      '  ICMSCREDALIQ,'
      '  ICMSCREDVALOR,'
      '  DESGASTE_SAIDA,'
      '  DESGASTE_RETORNO,'
      '  DESGASTE_CONSUMIDO,'
      '  VALORTOTALTRIBUTAESTADUAL,'
      '  IT_DEV,'
      '  VALORDESP,'
      '  VALORFRETE,'
      '  IMPRESSONFSE,'
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
      '  BASEICMSUFDEST,'
      '  VALORCUSTOUNITARIONOTAFISCAL'
      'from ITPRODORD '
      'where'
      '  COD_ITPRODORD = :COD_ITPRODORD')
    ModifySQL.Strings = (
      'update ITPRODORD'
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
      '  COD_CST = :COD_CST,'
      '  CFOP = :CFOP,'
      '  DESCNF = :DESCNF,'
      '  APLICARST = :APLICARST,'
      '  DTRETIRADA = :DTRETIRADA,'
      '  HRRETIRADA = :HRRETIRADA,'
      '  DTRETORNO = :DTRETORNO,'
      '  HRRETORNO = :HRRETORNO,'
      '  COD_TABELAFAIXAPRECO = :COD_TABELAFAIXAPRECO,'
      '  VALORTOTALTRIBUTA = :VALORTOTALTRIBUTA,'
      '  ALIQUOTATOTALTRIBUTA = :ALIQUOTATOTALTRIBUTA,'
      '  QTDE_HORA_SAIDA = :QTDE_HORA_SAIDA,'
      '  QTDE_HORA_RETORNO = :QTDE_HORA_RETORNO,'
      '  QTDE_HORA_CONSUMIDA = :QTDE_HORA_CONSUMIDA,'
      '  CTRL_HORA = :CTRL_HORA,'
      '  IPNMVA = :IPNMVA,'
      '  ICMSCREDALIQ = :ICMSCREDALIQ,'
      '  ICMSCREDVALOR = :ICMSCREDVALOR,'
      '  DESGASTE_SAIDA = :DESGASTE_SAIDA,'
      '  DESGASTE_RETORNO = :DESGASTE_RETORNO,'
      '  DESGASTE_CONSUMIDO = :DESGASTE_CONSUMIDO,'
      '  VALORTOTALTRIBUTAESTADUAL = :VALORTOTALTRIBUTAESTADUAL,'
      '  IT_DEV = :IT_DEV,'
      '  VALORDESP = :VALORDESP,'
      '  VALORFRETE = :VALORFRETE,'
      '  IMPRESSONFSE = :IMPRESSONFSE,'
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
      '  BASEICMSUFDEST = :BASEICMSUFDEST,'
      '  VALORCUSTOUNITARIONOTAFISCAL = :VALORCUSTOUNITARIONOTAFISCAL'
      'where'
      '  COD_ITPRODORD = :OLD_COD_ITPRODORD')
    InsertSQL.Strings = (
      'insert into ITPRODORD'
      '  (COD_ITPRODORD, COD_ESTOQUE, COD_ORDEM, QTD, VLRUNIT, '
      'DESCONTO, TOTAL, '
      '   DATA, COD_FUNCIONARIO, VALCUSTO, COEFDIV, VALCOMP, LUCMOE, '
      'LUCPER, VALREP, '
      '   NUMREQ, QTDRET, COMISSAO, VLRVENDBD, LUCREL, OPERACAO, '
      'ALIQICMS, BASEICMS, '
      '   VLRICMS, BASEICMSSUBS, VLRIPI, ALIQIPI, REDUCBASEICMS, '
      'VLRICMSSUBS, '
      
        '   DATA_GARANTIA, KMGARANTIA, QTDDEV, VLRUNITDEV, COD_CST, CFOP,' +
        ' '
      'DESCNF, '
      '   APLICARST, DTRETIRADA, HRRETIRADA, DTRETORNO, HRRETORNO, '
      'COD_TABELAFAIXAPRECO, '
      '   VALORTOTALTRIBUTA, ALIQUOTATOTALTRIBUTA, QTDE_HORA_SAIDA, '
      'QTDE_HORA_RETORNO, '
      '   QTDE_HORA_CONSUMIDA, CTRL_HORA, IPNMVA, ICMSCREDALIQ, '
      'ICMSCREDVALOR, '
      '   DESGASTE_SAIDA, DESGASTE_RETORNO, DESGASTE_CONSUMIDO, '
      'VALORTOTALTRIBUTAESTADUAL, '
      '   IT_DEV, VALORDESP, VALORFRETE, IMPRESSONFSE, ALIQFCPDESTINO, '
      'ALIQINTICMS, '
      '   ALIQEXTICMS, ALIQPROVPARTILHA, VLRICMSFCP, VLRICMSINTDEST, '
      'VLRICMSINTREMET, '
      '   NUMPEDCOMPRANFE, NUMITEMPEDCOMPRANFE, QTD4CASAS, '
      'BASEICMSUFDEST, VALORCUSTOUNITARIONOTAFISCAL)'
      'values'
      '  (:COD_ITPRODORD, :COD_ESTOQUE, :COD_ORDEM, :QTD, :VLRUNIT, '
      ':DESCONTO, '
      
        '   :TOTAL, :DATA, :COD_FUNCIONARIO, :VALCUSTO, :COEFDIV, :VALCOM' +
        'P, '
      ':LUCMOE, '
      '   :LUCPER, :VALREP, :NUMREQ, :QTDRET, :COMISSAO, :VLRVENDBD, '
      ':LUCREL, '
      
        '   :OPERACAO, :ALIQICMS, :BASEICMS, :VLRICMS, :BASEICMSSUBS, :VL' +
        'RIPI, '
      ':ALIQIPI, '
      '   :REDUCBASEICMS, :VLRICMSSUBS, :DATA_GARANTIA, :KMGARANTIA, '
      ':QTDDEV, '
      
        '   :VLRUNITDEV, :COD_CST, :CFOP, :DESCNF, :APLICARST, :DTRETIRAD' +
        'A, '
      ':HRRETIRADA, '
      '   :DTRETORNO, :HRRETORNO, :COD_TABELAFAIXAPRECO, '
      ':VALORTOTALTRIBUTA, :ALIQUOTATOTALTRIBUTA, '
      '   :QTDE_HORA_SAIDA, :QTDE_HORA_RETORNO, :QTDE_HORA_CONSUMIDA, '
      ':CTRL_HORA, '
      '   :IPNMVA, :ICMSCREDALIQ, :ICMSCREDVALOR, :DESGASTE_SAIDA, '
      ':DESGASTE_RETORNO, '
      '   :DESGASTE_CONSUMIDO, :VALORTOTALTRIBUTAESTADUAL, :IT_DEV, '
      ':VALORDESP, '
      '   :VALORFRETE, :IMPRESSONFSE, :ALIQFCPDESTINO, :ALIQINTICMS, '
      ':ALIQEXTICMS, '
      '   :ALIQPROVPARTILHA, :VLRICMSFCP, :VLRICMSINTDEST, '
      ':VLRICMSINTREMET, :NUMPEDCOMPRANFE, '
      '   :NUMITEMPEDCOMPRANFE, :QTD4CASAS, :BASEICMSUFDEST, '
      ':VALORCUSTOUNITARIONOTAFISCAL)')
    DeleteSQL.Strings = (
      'delete from ITPRODORD'
      'where'
      '  COD_ITPRODORD = :OLD_COD_ITPRODORD')
    Left = 62
    Top = 112
  end
  object TPOrd: TIBQuery
    Database = DbServ
    Transaction = IBT
    AutoCalcFields = False
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select   FIRST 1 * from ITPRODORD')
    UpdateObject = UPOrd
    GeneratorField.Field = 'COD_ITPRODORD'
    GeneratorField.Generator = 'GEN_ITPRODORD_ID'
    Left = 62
    Top = 65
    object TPOrdCOD_ITPRODORD: TIntegerField
      FieldName = 'COD_ITPRODORD'
      Origin = 'ITPRODORD.COD_ITPRODORD'
    end
    object TPOrdCOD_ESTOQUE: TIntegerField
      FieldName = 'COD_ESTOQUE'
      Origin = 'ITPRODORD.COD_ESTOQUE'
    end
    object TPOrdCOD_ORDEM: TIntegerField
      FieldName = 'COD_ORDEM'
      Origin = 'ITPRODORD.COD_ORDEM'
    end
    object TPOrdQTD: TIBBCDField
      FieldName = 'QTD'
      Origin = 'ITPRODORD.QTD'
      Precision = 18
      Size = 4
    end
    object TPOrdVLRUNIT: TIBBCDField
      FieldName = 'VLRUNIT'
      Origin = 'ITPRODORD.VLRUNIT'
      Precision = 18
      Size = 2
    end
    object TPOrdDESCONTO: TIBBCDField
      FieldName = 'DESCONTO'
      Origin = 'ITPRODORD.DESCONTO'
      Precision = 18
      Size = 2
    end
    object TPOrdTOTAL: TIBBCDField
      FieldName = 'TOTAL'
      Origin = 'ITPRODORD.TOTAL'
      Precision = 18
      Size = 2
    end
    object TPOrdDATA: TDateField
      FieldName = 'DATA'
      Origin = 'ITPRODORD.DATA'
    end
    object TPOrdCOD_FUNCIONARIO: TIntegerField
      FieldName = 'COD_FUNCIONARIO'
      Origin = 'ITPRODORD.COD_FUNCIONARIO'
    end
    object TPOrdVALCUSTO: TIBBCDField
      FieldName = 'VALCUSTO'
      Origin = 'ITPRODORD.VALCUSTO'
      Precision = 18
      Size = 2
    end
    object TPOrdCOEFDIV: TIBBCDField
      FieldName = 'COEFDIV'
      Origin = 'ITPRODORD.COEFDIV'
      Precision = 18
      Size = 2
    end
    object TPOrdVALCOMP: TIBBCDField
      FieldName = 'VALCOMP'
      Origin = 'ITPRODORD.VALCOMP'
      Precision = 18
      Size = 2
    end
    object TPOrdLUCMOE: TIBBCDField
      FieldName = 'LUCMOE'
      Origin = 'ITPRODORD.LUCMOE'
      Precision = 18
      Size = 2
    end
    object TPOrdLUCPER: TIBBCDField
      FieldName = 'LUCPER'
      Origin = 'ITPRODORD.LUCPER'
      Precision = 18
      Size = 2
    end
    object TPOrdVALREP: TIBBCDField
      FieldName = 'VALREP'
      Origin = 'ITPRODORD.VALREP'
      Precision = 18
      Size = 2
    end
    object TPOrdNUMREQ: TIBStringField
      FieldName = 'NUMREQ'
      Origin = 'ITPRODORD.NUMREQ'
      Size = 10
    end
    object TPOrdQTDRET: TIBBCDField
      FieldName = 'QTDRET'
      Origin = 'ITPRODORD.QTDRET'
      Precision = 18
      Size = 4
    end
    object TPOrdCOMISSAO: TIBBCDField
      FieldName = 'COMISSAO'
      Origin = 'ITPRODORD.COMISSAO'
      Precision = 18
      Size = 2
    end
    object TPOrdVLRVENDBD: TIBBCDField
      FieldName = 'VLRVENDBD'
      Origin = 'ITPRODORD.VLRVENDBD'
      Precision = 18
      Size = 2
    end
    object TPOrdLUCREL: TIBBCDField
      FieldName = 'LUCREL'
      Origin = 'ITPRODORD.LUCREL'
      Precision = 18
      Size = 2
    end
    object TPOrdOPERACAO: TIBStringField
      FieldName = 'OPERACAO'
      Origin = 'ITPRODORD.OPERACAO'
      Size = 10
    end
    object TPOrdALIQICMS: TIBBCDField
      FieldName = 'ALIQICMS'
      Origin = 'ITPRODORD.ALIQICMS'
      Precision = 18
      Size = 2
    end
    object TPOrdBASEICMS: TIBBCDField
      FieldName = 'BASEICMS'
      Origin = 'ITPRODORD.BASEICMS'
      Precision = 18
      Size = 2
    end
    object TPOrdVLRICMS: TIBBCDField
      FieldName = 'VLRICMS'
      Origin = 'ITPRODORD.VLRICMS'
      Precision = 18
      Size = 2
    end
    object TPOrdBASEICMSSUBS: TIBBCDField
      FieldName = 'BASEICMSSUBS'
      Origin = 'ITPRODORD.BASEICMSSUBS'
      Precision = 18
      Size = 2
    end
    object TPOrdVLRIPI: TIBBCDField
      FieldName = 'VLRIPI'
      Origin = 'ITPRODORD.VLRIPI'
      Precision = 18
      Size = 2
    end
    object TPOrdALIQIPI: TIBBCDField
      FieldName = 'ALIQIPI'
      Origin = 'ITPRODORD.ALIQIPI'
      Precision = 18
      Size = 2
    end
    object TPOrdREDUCBASEICMS: TIBBCDField
      FieldName = 'REDUCBASEICMS'
      Origin = 'ITPRODORD.REDUCBASEICMS'
      Precision = 18
      Size = 2
    end
    object TPOrdVLRICMSSUBS: TIBBCDField
      FieldName = 'VLRICMSSUBS'
      Origin = 'ITPRODORD.VLRICMSSUBS'
      Precision = 18
      Size = 2
    end
    object TPOrdDATA_GARANTIA: TDateField
      FieldName = 'DATA_GARANTIA'
      Origin = 'ITPRODORD.DATA_GARANTIA'
    end
    object TPOrdKMGARANTIA: TIntegerField
      FieldName = 'KMGARANTIA'
      Origin = 'ITPRODORD.KMGARANTIA'
    end
    object TPOrdQTDDEV: TIBBCDField
      FieldName = 'QTDDEV'
      Origin = 'ITPRODORD.QTDDEV'
      Precision = 18
      Size = 3
    end
    object TPOrdVLRUNITDEV: TIBBCDField
      FieldName = 'VLRUNITDEV'
      Origin = 'ITPRODORD.VLRUNITDEV'
      Precision = 18
      Size = 2
    end
    object TPOrdCFOP: TIBStringField
      FieldName = 'CFOP'
      Origin = 'ITPRODORD.CFOP'
      Size = 10
    end
    object TPOrdCOD_CST: TIntegerField
      FieldName = 'COD_CST'
      Origin = 'ITPRODORD.COD_CST'
    end
    object TPOrdDESCNF: TIBBCDField
      FieldName = 'DESCNF'
      Origin = 'ITPRODORD.DESCNF'
      Precision = 18
      Size = 2
    end
    object TPOrdAPLICARST: TIBStringField
      FieldName = 'APLICARST'
      Origin = 'ITPRODORD.APLICARST'
      FixedChar = True
      Size = 1
    end
    object TPOrdDTRETIRADA: TDateField
      FieldName = 'DTRETIRADA'
      Origin = 'ITPRODORD.DTRETIRADA'
    end
    object TPOrdHRRETIRADA: TTimeField
      FieldName = 'HRRETIRADA'
      Origin = 'ITPRODORD.HRRETIRADA'
    end
    object TPOrdDTRETORNO: TDateField
      FieldName = 'DTRETORNO'
      Origin = 'ITPRODORD.DTRETORNO'
    end
    object TPOrdHRRETORNO: TTimeField
      FieldName = 'HRRETORNO'
      Origin = 'ITPRODORD.HRRETORNO'
    end
    object TPOrdCOD_TABELAFAIXAPRECO: TIntegerField
      FieldName = 'COD_TABELAFAIXAPRECO'
      Origin = 'ITPRODORD.COD_TABELAFAIXAPRECO'
    end
    object TPOrdVALORTOTALTRIBUTA: TIBBCDField
      FieldName = 'VALORTOTALTRIBUTA'
      Origin = 'ITPRODORD.VALORTOTALTRIBUTA'
      Precision = 18
      Size = 2
    end
    object TPOrdALIQUOTATOTALTRIBUTA: TIBBCDField
      FieldName = 'ALIQUOTATOTALTRIBUTA'
      Origin = 'ITPRODORD.ALIQUOTATOTALTRIBUTA'
      Precision = 18
      Size = 2
    end
    object TPOrdDESGASTE_SAIDA: TIBBCDField
      FieldName = 'DESGASTE_SAIDA'
      Origin = 'ITPRODORD.DESGASTE_SAIDA'
      Precision = 18
      Size = 2
    end
    object TPOrdDESGASTE_RETORNO: TIBBCDField
      FieldName = 'DESGASTE_RETORNO'
      Origin = 'ITPRODORD.DESGASTE_RETORNO'
      Precision = 18
      Size = 2
    end
    object TPOrdDESGASTE_CONSUMIDO: TIBBCDField
      FieldName = 'DESGASTE_CONSUMIDO'
      Origin = 'ITPRODORD.DESGASTE_CONSUMIDO'
      Precision = 18
      Size = 2
    end
    object TPOrdICMSCREDALIQ: TIBBCDField
      FieldName = 'ICMSCREDALIQ'
      Origin = 'ITPRODORD.ICMSCREDALIQ'
      Precision = 4
      Size = 2
    end
    object TPOrdICMSCREDVALOR: TIBBCDField
      FieldName = 'ICMSCREDVALOR'
      Origin = 'ITPRODORD.ICMSCREDVALOR'
      Precision = 18
      Size = 2
    end
    object TPOrdIPNMVA: TIBBCDField
      FieldName = 'IPNMVA'
      Origin = 'ITPRODORD.IPNMVA'
      Precision = 4
      Size = 2
    end
    object TPOrdCTRL_HORA: TIBStringField
      FieldName = 'CTRL_HORA'
      Origin = 'ITPRODORD.CTRL_HORA'
      FixedChar = True
      Size = 1
    end
    object TPOrdQTDE_HORA_CONSUMIDA: TIBBCDField
      FieldName = 'QTDE_HORA_CONSUMIDA'
      Origin = 'ITPRODORD.QTDE_HORA_CONSUMIDA'
      Precision = 18
      Size = 2
    end
    object TPOrdQTDE_HORA_RETORNO: TIBBCDField
      FieldName = 'QTDE_HORA_RETORNO'
      Origin = 'ITPRODORD.QTDE_HORA_RETORNO'
      Precision = 18
      Size = 2
    end
    object TPOrdQTDE_HORA_SAIDA: TIBBCDField
      FieldName = 'QTDE_HORA_SAIDA'
      Origin = 'ITPRODORD.QTDE_HORA_SAIDA'
      Precision = 18
      Size = 2
    end
    object TPOrdVALORTOTALTRIBUTAESTADUAL: TIBBCDField
      FieldName = 'VALORTOTALTRIBUTAESTADUAL'
      Origin = 'ITPRODORD.VALORTOTALTRIBUTAESTADUAL'
      Precision = 18
      Size = 2
    end
    object TPOrdIT_DEV: TIBStringField
      FieldName = 'IT_DEV'
      Origin = 'ITPRODORD.IT_DEV'
      FixedChar = True
      Size = 5
    end
    object TPOrdVALORFRETE: TIBBCDField
      FieldName = 'VALORFRETE'
      Origin = 'ITPRODORD.VALORFRETE'
      Precision = 18
      Size = 2
    end
    object TPOrdVALORDESP: TIBBCDField
      FieldName = 'VALORDESP'
      Origin = 'ITPRODORD.VALORDESP'
      Precision = 18
      Size = 2
    end
    object TPOrdIMPRESSONFSE: TIBStringField
      FieldName = 'IMPRESSONFSE'
      Origin = 'ITPRODORD.IMPRESSONFSE'
      Size = 1
    end
    object TPOrdALIQFCPDESTINO: TIBBCDField
      FieldName = 'ALIQFCPDESTINO'
      Origin = 'ITPRODORD.ALIQFCPDESTINO'
      Precision = 4
      Size = 2
    end
    object TPOrdALIQINTICMS: TIBBCDField
      FieldName = 'ALIQINTICMS'
      Origin = 'ITPRODORD.ALIQINTICMS'
      Precision = 4
      Size = 2
    end
    object TPOrdALIQEXTICMS: TIBBCDField
      FieldName = 'ALIQEXTICMS'
      Origin = 'ITPRODORD.ALIQEXTICMS'
      Precision = 4
      Size = 2
    end
    object TPOrdALIQPROVPARTILHA: TIntegerField
      FieldName = 'ALIQPROVPARTILHA'
      Origin = 'ITPRODORD.ALIQPROVPARTILHA'
    end
    object TPOrdVLRICMSFCP: TIBBCDField
      FieldName = 'VLRICMSFCP'
      Origin = 'ITPRODORD.VLRICMSFCP'
      Precision = 18
      Size = 2
    end
    object TPOrdVLRICMSINTDEST: TIBBCDField
      FieldName = 'VLRICMSINTDEST'
      Origin = 'ITPRODORD.VLRICMSINTDEST'
      Precision = 18
      Size = 2
    end
    object TPOrdVLRICMSINTREMET: TIBBCDField
      FieldName = 'VLRICMSINTREMET'
      Origin = 'ITPRODORD.VLRICMSINTREMET'
      Precision = 18
      Size = 2
    end
    object TPOrdQTD4CASAS: TIBStringField
      FieldName = 'QTD4CASAS'
      Origin = 'ITPRODORD.QTD4CASAS'
      Size = 15
    end
    object TPOrdNUMPEDCOMPRANFE: TIBStringField
      FieldName = 'NUMPEDCOMPRANFE'
      Origin = 'ITPRODORD.NUMPEDCOMPRANFE'
      Size = 15
    end
    object TPOrdNUMITEMPEDCOMPRANFE: TIBStringField
      FieldName = 'NUMITEMPEDCOMPRANFE'
      Origin = 'ITPRODORD.NUMITEMPEDCOMPRANFE'
      Size = 6
    end
    object TPOrdBASEICMSUFDEST: TIBBCDField
      FieldName = 'BASEICMSUFDEST'
      Origin = 'ITPRODORD.BASEICMSUFDEST'
      Precision = 18
      Size = 2
    end
    object TPOrdVALORCUSTOUNITARIONOTAFISCAL: TIBBCDField
      FieldName = 'VALORCUSTOUNITARIONOTAFISCAL'
      Origin = 'ITPRODORD.VALORCUSTOUNITARIONOTAFISCAL'
      Precision = 18
      Size = 2
    end
  end
  object TSOrd: TIBQuery
    Database = DbServ
    Transaction = IBT
    AutoCalcFields = False
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select   FIRST 1 * from ITSERVORD')
    UpdateObject = USOrd
    GeneratorField.Field = 'COD_ORDEM'
    GeneratorField.Generator = 'GEN_ORDEM_ID'
    Left = 107
    Top = 65
    object TSOrdCOD_ITSERVORD: TIntegerField
      FieldName = 'COD_ITSERVORD'
      Origin = 'ITSERVORD.COD_ITSERVORD'
    end
    object TSOrdCOD_SERVICO: TIntegerField
      FieldName = 'COD_SERVICO'
      Origin = 'ITSERVORD.COD_SERVICO'
    end
    object TSOrdCOD_ORDEM: TIntegerField
      FieldName = 'COD_ORDEM'
      Origin = 'ITSERVORD.COD_ORDEM'
    end
    object TSOrdQTD: TIBStringField
      FieldName = 'QTD'
      Origin = 'ITSERVORD.QTD'
      Size = 15
    end
    object TSOrdVLRUNIT: TIBBCDField
      FieldName = 'VLRUNIT'
      Origin = 'ITSERVORD.VLRUNIT'
      Precision = 18
      Size = 2
    end
    object TSOrdDESCONTO: TIBBCDField
      FieldName = 'DESCONTO'
      Origin = 'ITSERVORD.DESCONTO'
      Precision = 18
      Size = 2
    end
    object TSOrdTOTAL: TIBBCDField
      FieldName = 'TOTAL'
      Origin = 'ITSERVORD.TOTAL'
      Precision = 18
      Size = 2
    end
    object TSOrdCOD_FUNCIONARIO: TIntegerField
      FieldName = 'COD_FUNCIONARIO'
      Origin = 'ITSERVORD.COD_FUNCIONARIO'
    end
    object TSOrdDATA: TDateField
      FieldName = 'DATA'
      Origin = 'ITSERVORD.DATA'
    end
    object TSOrdVLRUNITCUSTO: TIBBCDField
      FieldName = 'VLRUNITCUSTO'
      Origin = 'ITSERVORD.VLRUNITCUSTO'
      Precision = 18
      Size = 2
    end
    object TSOrdTOTENCARGO: TIBBCDField
      FieldName = 'TOTENCARGO'
      Origin = 'ITSERVORD.TOTENCARGO'
      Precision = 18
      Size = 2
    end
    object TSOrdLUCMOE: TIBBCDField
      FieldName = 'LUCMOE'
      Origin = 'ITSERVORD.LUCMOE'
      Precision = 18
      Size = 2
    end
    object TSOrdLUCPER: TIBBCDField
      FieldName = 'LUCPER'
      Origin = 'ITSERVORD.LUCPER'
      Precision = 18
      Size = 2
    end
    object TSOrdCOMISSAO: TIBBCDField
      FieldName = 'COMISSAO'
      Origin = 'ITSERVORD.COMISSAO'
      Precision = 18
      Size = 2
    end
    object TSOrdOUTROS: TIBBCDField
      FieldName = 'OUTROS'
      Origin = 'ITSERVORD.OUTROS'
      Precision = 18
      Size = 2
    end
    object TSOrdISSQN: TIBBCDField
      FieldName = 'ISSQN'
      Origin = 'ITSERVORD.ISSQN'
      Precision = 18
      Size = 2
    end
    object TSOrdINSS: TIBBCDField
      FieldName = 'INSS'
      Origin = 'ITSERVORD.INSS'
      Precision = 18
      Size = 2
    end
    object TSOrdCOFINS: TIBBCDField
      FieldName = 'COFINS'
      Origin = 'ITSERVORD.COFINS'
      Precision = 18
      Size = 2
    end
    object TSOrdIR: TIBBCDField
      FieldName = 'IR'
      Origin = 'ITSERVORD.IR'
      Precision = 18
      Size = 2
    end
    object TSOrdCONTSOC: TIBBCDField
      FieldName = 'CONTSOC'
      Origin = 'ITSERVORD.CONTSOC'
      Precision = 18
      Size = 2
    end
    object TSOrdPIS: TIBBCDField
      FieldName = 'PIS'
      Origin = 'ITSERVORD.PIS'
      Precision = 18
      Size = 2
    end
    object TSOrdOBS: TIBStringField
      FieldName = 'OBS'
      Origin = 'ITSERVORD.OBS'
      Size = 40
    end
    object TSOrdTAMANHO: TIBBCDField
      FieldName = 'TAMANHO'
      Origin = 'ITSERVORD.TAMANHO'
      Precision = 18
      Size = 3
    end
  end
  object USOrd: TIBUpdateSQL
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
    Left = 107
    Top = 107
  end
  object DSOrd: TDataSource
    DataSet = TSOrd
    Left = 108
    Top = 151
  end
  object TServ: TIBQuery
    Database = DbServ
    Transaction = IBT
    ForcedRefresh = True
    AutoCalcFields = False
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select   FIRST 1 * from SERVICO')
    UpdateObject = UServ
    GeneratorField.Field = 'COD_ESTOQUE'
    Left = 151
    Top = 65
    object TServCOD_SERVICO: TIntegerField
      FieldName = 'COD_SERVICO'
    end
    object TServCOD_SUBGRUPOSERV: TIntegerField
      FieldName = 'COD_SUBGRUPOSERV'
    end
    object TServCOD_GRUPOSERV: TIntegerField
      FieldName = 'COD_GRUPOSERV'
    end
    object TServCOD_INTERNO: TIBStringField
      FieldName = 'COD_INTERNO'
      Size = 5
    end
    object TServDESCRICAO: TIBStringField
      FieldName = 'DESCRICAO'
      Size = 40
    end
    object TServAPLICACAO: TIBStringField
      FieldName = 'APLICACAO'
      Size = 100
    end
    object TServMARK: TIBStringField
      FieldName = 'MARK'
      Origin = 'SERVICO.MARK'
      FixedChar = True
      Size = 1
    end
  end
  object UServ: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  COD_SERVICO,'
      '  COD_SUBGRUPOSERV,'
      '  COD_GRUPOSERV,'
      '  COD_INTERNO,'
      '  DESCRICAO,'
      '  APLICACAO,'
      '  MARK'
      'from SERVICO '
      'where'
      '  COD_SERVICO = :COD_SERVICO')
    ModifySQL.Strings = (
      'update SERVICO'
      'set'
      '  COD_SERVICO = :COD_SERVICO,'
      '  COD_SUBGRUPOSERV = :COD_SUBGRUPOSERV,'
      '  COD_GRUPOSERV = :COD_GRUPOSERV,'
      '  COD_INTERNO = :COD_INTERNO,'
      '  DESCRICAO = :DESCRICAO,'
      '  APLICACAO = :APLICACAO,'
      '  MARK = :MARK'
      'where'
      '  COD_SERVICO = :OLD_COD_SERVICO')
    InsertSQL.Strings = (
      'insert into SERVICO'
      '  (COD_SERVICO, COD_SUBGRUPOSERV, COD_GRUPOSERV, COD_INTERNO, '
      'DESCRICAO, '
      '   APLICACAO, MARK)'
      'values'
      '  (:COD_SERVICO, :COD_SUBGRUPOSERV, :COD_GRUPOSERV, '
      ':COD_INTERNO, :DESCRICAO, '
      '   :APLICACAO, :MARK)')
    DeleteSQL.Strings = (
      'delete from SERVICO'
      'where'
      '  COD_SERVICO = :OLD_COD_SERVICO')
    Left = 151
    Top = 108
  end
  object DServ: TDataSource
    DataSet = TServ
    Left = 152
    Top = 151
  end
  object TSubserv: TIBQuery
    Database = DbServ
    Transaction = IBT
    AutoCalcFields = False
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select   FIRST 1 * from SUBSERVICO')
    UpdateObject = USubServ
    GeneratorField.Field = 'COD_ESTOQUE'
    Left = 196
    Top = 65
    object TSubservCOD_SUBSERVICO: TIntegerField
      FieldName = 'COD_SUBSERVICO'
      Origin = 'SUBSERVICO.COD_SUBSERVICO'
    end
    object TSubservCOD_SERVICO: TIntegerField
      FieldName = 'COD_SERVICO'
      Origin = 'SUBSERVICO.COD_SERVICO'
    end
    object TSubservCOD_INTERNO: TIBStringField
      FieldName = 'COD_INTERNO'
      Origin = 'SUBSERVICO.COD_INTERNO'
      Size = 10
    end
    object TSubservCODCOMPOSTO: TIBStringField
      FieldName = 'CODCOMPOSTO'
      Origin = 'SUBSERVICO.CODCOMPOSTO'
      Size = 25
    end
    object TSubservDESCRICAO: TIBStringField
      FieldName = 'DESCRICAO'
      Origin = 'SUBSERVICO.DESCRICAO'
      Size = 60
    end
    object TSubservQUANTGARANTIA: TFloatField
      FieldName = 'QUANTGARANTIA'
      Origin = 'SUBSERVICO.QUANTGARANTIA'
    end
    object TSubservTIPOGARANTIA: TIBStringField
      FieldName = 'TIPOGARANTIA'
      Origin = 'SUBSERVICO.TIPOGARANTIA'
      Size = 10
    end
    object TSubservESPECSERV: TIBStringField
      FieldName = 'ESPECSERV'
      Origin = 'SUBSERVICO.ESPECSERV'
      Size = 100
    end
    object TSubservCOEFDIV: TIBBCDField
      FieldName = 'COEFDIV'
      Origin = 'SUBSERVICO.COEFDIV'
      Precision = 18
      Size = 2
    end
    object TSubservVLRUNIT: TIBBCDField
      FieldName = 'VLRUNIT'
      Origin = 'SUBSERVICO.VLRUNIT'
      Precision = 18
      Size = 2
    end
    object TSubservLUCRAT: TIBBCDField
      FieldName = 'LUCRAT'
      Origin = 'SUBSERVICO.LUCRAT'
      Precision = 18
      Size = 2
    end
    object TSubservVLRFINAL: TIBBCDField
      FieldName = 'VLRFINAL'
      Origin = 'SUBSERVICO.VLRFINAL'
      Precision = 18
      Size = 2
    end
    object TSubservEMPSERV: TIBStringField
      FieldName = 'EMPSERV'
      Origin = 'SUBSERVICO.EMPSERV'
      Size = 15
    end
    object TSubservCOD_UNIDADE: TIntegerField
      FieldName = 'COD_UNIDADE'
      Origin = 'SUBSERVICO.COD_UNIDADE'
    end
    object TSubservDTCAD: TDateField
      FieldName = 'DTCAD'
      Origin = 'SUBSERVICO.DTCAD'
    end
    object TSubservTEMPSERV: TIBStringField
      FieldName = 'TEMPSERV'
      Origin = 'SUBSERVICO.TEMPSERV'
      Size = 10
    end
    object TSubservVLRSUBSERV: TIBBCDField
      FieldName = 'VLRSUBSERV'
      Origin = 'SUBSERVICO.VLRSUBSERV'
      Precision = 18
      Size = 2
    end
    object TSubservHORA_INI: TTimeField
      FieldName = 'HORA_INI'
      Origin = 'SUBSERVICO.HORA_INI'
    end
    object TSubservINTERVALO_INI: TTimeField
      FieldName = 'INTERVALO_INI'
      Origin = 'SUBSERVICO.INTERVALO_INI'
    end
    object TSubservINTERVALO_FINAL: TTimeField
      FieldName = 'INTERVALO_FINAL'
      Origin = 'SUBSERVICO.INTERVALO_FINAL'
    end
    object TSubservHORA_FINAL: TTimeField
      FieldName = 'HORA_FINAL'
      Origin = 'SUBSERVICO.HORA_FINAL'
    end
    object TSubservVLR_NORMAL: TIBBCDField
      FieldName = 'VLR_NORMAL'
      Origin = 'SUBSERVICO.VLR_NORMAL'
      Precision = 18
      Size = 2
    end
    object TSubservVLR_EXTRA2: TIBBCDField
      FieldName = 'VLR_EXTRA'
      Origin = 'SUBSERVICO.VLR_EXTRA'
      Precision = 18
      Size = 2
    end
    object TSubservTIPOFATURA: TIBStringField
      FieldName = 'TIPOFATURA'
      Origin = 'SUBSERVICO.TIPOFATURA'
      FixedChar = True
      Size = 1
    end
    object TSubservCOD_CONTA: TIntegerField
      FieldName = 'COD_CONTA'
      Origin = 'SUBSERVICO.COD_CONTA'
    end
    object TSubservCOD_FORMPAG: TIntegerField
      FieldName = 'COD_FORMPAG'
      Origin = 'SUBSERVICO.COD_FORMPAG'
    end
    object TSubservATIVO: TSmallintField
      FieldName = 'ATIVO'
      Origin = 'SUBSERVICO.ATIVO'
    end
    object TSubservDATA_REAJUSTE: TDateField
      FieldName = 'DATA_REAJUSTE'
      Origin = 'SUBSERVICO.DATA_REAJUSTE'
    end
    object TSubservVLRANTIGO: TIBBCDField
      FieldName = 'VLRANTIGO'
      Origin = 'SUBSERVICO.VLRANTIGO'
      Precision = 18
      Size = 2
    end
    object TSubservRECORRENCIA: TIBStringField
      FieldName = 'RECORRENCIA'
      Origin = 'SUBSERVICO.RECORRENCIA'
      FixedChar = True
      Size = 1
    end
  end
  object USubServ: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  COD_SUBSERVICO,'
      '  COD_SERVICO,'
      '  COD_INTERNO,'
      '  CODCOMPOSTO,'
      '  DESCRICAO,'
      '  QUANTGARANTIA,'
      '  TIPOGARANTIA,'
      '  ESPECSERV,'
      '  COEFDIV,'
      '  VLRUNIT,'
      '  LUCRAT,'
      '  VLRFINAL,'
      '  EMPSERV,'
      '  COD_UNIDADE,'
      '  DTCAD,'
      '  TEMPSERV,'
      '  VLRSUBSERV,'
      '  HORA_INI,'
      '  INTERVALO_INI,'
      '  INTERVALO_FINAL,'
      '  HORA_FINAL,'
      '  VLR_NORMAL,'
      '  VLR_EXTRA,'
      '  TIPOFATURA,'
      '  COD_CONTA,'
      '  COD_FORMPAG,'
      '  ATIVO,'
      '  VLRANTIGO,'
      '  DATA_REAJUSTE'
      'from SUBSERVICO '
      'where'
      '  COD_SUBSERVICO = :COD_SUBSERVICO')
    ModifySQL.Strings = (
      'update SUBSERVICO'
      'set'
      '  COD_SUBSERVICO = :COD_SUBSERVICO,'
      '  COD_SERVICO = :COD_SERVICO,'
      '  COD_INTERNO = :COD_INTERNO,'
      '  CODCOMPOSTO = :CODCOMPOSTO,'
      '  DESCRICAO = :DESCRICAO,'
      '  QUANTGARANTIA = :QUANTGARANTIA,'
      '  TIPOGARANTIA = :TIPOGARANTIA,'
      '  ESPECSERV = :ESPECSERV,'
      '  COEFDIV = :COEFDIV,'
      '  VLRUNIT = :VLRUNIT,'
      '  LUCRAT = :LUCRAT,'
      '  VLRFINAL = :VLRFINAL,'
      '  EMPSERV = :EMPSERV,'
      '  COD_UNIDADE = :COD_UNIDADE,'
      '  DTCAD = :DTCAD,'
      '  TEMPSERV = :TEMPSERV,'
      '  VLRSUBSERV = :VLRSUBSERV,'
      '  HORA_INI = :HORA_INI,'
      '  INTERVALO_INI = :INTERVALO_INI,'
      '  INTERVALO_FINAL = :INTERVALO_FINAL,'
      '  HORA_FINAL = :HORA_FINAL,'
      '  VLR_NORMAL = :VLR_NORMAL,'
      '  VLR_EXTRA = :VLR_EXTRA,'
      '  TIPOFATURA = :TIPOFATURA,'
      '  COD_CONTA = :COD_CONTA,'
      '  COD_FORMPAG = :COD_FORMPAG,'
      '  ATIVO = :ATIVO,'
      '  VLRANTIGO = :VLRANTIGO,'
      '  DATA_REAJUSTE = :DATA_REAJUSTE'
      'where'
      '  COD_SUBSERVICO = :OLD_COD_SUBSERVICO')
    InsertSQL.Strings = (
      'insert into SUBSERVICO'
      
        '  (COD_SUBSERVICO, COD_SERVICO, COD_INTERNO, CODCOMPOSTO, DESCRI' +
        'CAO, QUANTGARANTIA, '
      
        '   TIPOGARANTIA, ESPECSERV, COEFDIV, VLRUNIT, LUCRAT, VLRFINAL, ' +
        'EMPSERV, '
      
        '   COD_UNIDADE, DTCAD, TEMPSERV, VLRSUBSERV, HORA_INI, INTERVALO' +
        '_INI, INTERVALO_FINAL, '
      
        '   HORA_FINAL, VLR_NORMAL, VLR_EXTRA, TIPOFATURA, COD_CONTA, COD' +
        '_FORMPAG, '
      '   ATIVO, VLRANTIGO, DATA_REAJUSTE)'
      'values'
      
        '  (:COD_SUBSERVICO, :COD_SERVICO, :COD_INTERNO, :CODCOMPOSTO, :D' +
        'ESCRICAO, '
      
        '   :QUANTGARANTIA, :TIPOGARANTIA, :ESPECSERV, :COEFDIV, :VLRUNIT' +
        ', :LUCRAT, '
      
        '   :VLRFINAL, :EMPSERV, :COD_UNIDADE, :DTCAD, :TEMPSERV, :VLRSUB' +
        'SERV, :HORA_INI, '
      
        '   :INTERVALO_INI, :INTERVALO_FINAL, :HORA_FINAL, :VLR_NORMAL, :' +
        'VLR_EXTRA, '
      
        '   :TIPOFATURA, :COD_CONTA, :COD_FORMPAG, :ATIVO, :VLRANTIGO, :D' +
        'ATA_REAJUSTE)')
    DeleteSQL.Strings = (
      'delete from SUBSERVICO'
      'where'
      '  COD_SUBSERVICO = :OLD_COD_SUBSERVICO')
    Left = 196
    Top = 108
  end
  object DSubServ: TDataSource
    DataSet = TSubserv
    Left = 197
    Top = 151
  end
  object WServico: TIBQuery
    Database = DbServ
    Transaction = IBT
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select   FIRST 1 * from VWSERVICO'
      '')
    GeneratorField.Field = 'COD_ESTOQUE'
    Left = 28
    Top = 270
    object WServicoCOD_SERVICO: TIntegerField
      FieldName = 'COD_SERVICO'
      Origin = 'VWSERVICO.COD_SERVICO'
    end
    object WServicoCOD_GRUPOSERV: TIntegerField
      FieldName = 'COD_GRUPOSERV'
      Origin = 'VWSERVICO.COD_GRUPOSERV'
    end
    object WServicoCOD_SUBGRUPOSERV: TIntegerField
      FieldName = 'COD_SUBGRUPOSERV'
      Origin = 'VWSERVICO.COD_SUBGRUPOSERV'
    end
    object WServicoCOD_INTERNO: TIBStringField
      FieldName = 'COD_INTERNO'
      Origin = 'VWSERVICO.COD_INTERNO'
      Size = 10
    end
    object WServicoSERVICO: TIBStringField
      FieldName = 'SERVICO'
      Origin = 'VWSERVICO.SERVICO'
      Size = 40
    end
    object WServicoAPLICACAO: TIBStringField
      FieldName = 'APLICACAO'
      Origin = 'VWSERVICO.APLICACAO'
      Size = 100
    end
    object WServicoCI_GRUPO: TIBStringField
      FieldName = 'CI_GRUPO'
      Origin = 'VWSERVICO.CI_GRUPO'
      Size = 10
    end
    object WServicoGRUPO: TIBStringField
      FieldName = 'GRUPO'
      Origin = 'VWSERVICO.GRUPO'
      Size = 100
    end
    object WServicoCI_SUBGRUPO: TIBStringField
      FieldName = 'CI_SUBGRUPO'
      Origin = 'VWSERVICO.CI_SUBGRUPO'
      Size = 10
    end
    object WServicoSUBGRUPO: TIBStringField
      FieldName = 'SUBGRUPO'
      Origin = 'VWSERVICO.SUBGRUPO'
      Size = 100
    end
    object WServicoMARK: TIBStringField
      FieldName = 'MARK'
      Origin = 'VWSERVICO.MARK'
      FixedChar = True
      Size = 1
    end
  end
  object DWServico: TDataSource
    DataSet = WServico
    Left = 29
    Top = 319
  end
  object WSubServ: TIBQuery
    Database = DbServ
    Transaction = IBT
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select   FIRST 1 * from VWSUBSERVICO')
    GeneratorField.Field = 'COD_ESTOQUE'
    Left = 89
    Top = 270
    object WSubServCOD_SUBSERVICO: TIntegerField
      FieldName = 'COD_SUBSERVICO'
      Origin = 'VWSUBSERVICO.COD_SUBSERVICO'
    end
    object WSubServCODCOMPOSTO: TIBStringField
      FieldName = 'CODCOMPOSTO'
      Origin = 'VWSUBSERVICO.CODCOMPOSTO'
      Size = 25
    end
    object WSubServDESCRICAO: TIBStringField
      FieldName = 'DESCRICAO'
      Origin = 'VWSUBSERVICO.DESCRICAO'
      Size = 60
    end
    object WSubServCOD_INTERNO: TIBStringField
      FieldName = 'COD_INTERNO'
      Origin = 'VWSUBSERVICO.COD_INTERNO'
      Size = 10
    end
    object WSubServCOD_SERVICO: TIntegerField
      FieldName = 'COD_SERVICO'
      Origin = 'VWSUBSERVICO.COD_SERVICO'
    end
    object WSubServEMPSERV: TIBStringField
      FieldName = 'EMPSERV'
      Origin = 'VWSUBSERVICO.EMPSERV'
      Size = 15
    end
    object WSubServQTDGARANTIA: TFloatField
      FieldName = 'QTDGARANTIA'
      Origin = 'VWSUBSERVICO.QTDGARANTIA'
    end
    object WSubServTEMPSERV: TIBStringField
      FieldName = 'TEMPSERV'
      Origin = 'VWSUBSERVICO.TEMPSERV'
      Size = 10
    end
    object WSubServVLRFINAL: TIBBCDField
      FieldName = 'VLRFINAL'
      Origin = 'VWSUBSERVICO.VLRFINAL'
      Precision = 18
      Size = 2
    end
    object WSubServTIPOGARANT: TIBStringField
      FieldName = 'TIPOGARANT'
      Origin = 'VWSUBSERVICO.TIPOGARANT'
      Size = 10
    end
    object WSubServVLRTOTSUBSERV: TIBBCDField
      FieldName = 'VLRTOTSUBSERV'
      Origin = 'VWSUBSERVICO.VLRTOTSUBSERV'
      Precision = 18
      Size = 2
    end
    object WSubServHORA_INI: TTimeField
      FieldName = 'HORA_INI'
      Origin = 'VWSUBSERVICO.HORA_INI'
    end
    object WSubServHORA_FINAL: TTimeField
      FieldName = 'HORA_FINAL'
      Origin = 'VWSUBSERVICO.HORA_FINAL'
    end
    object WSubServINTERVALO_INI: TTimeField
      FieldName = 'INTERVALO_INI'
      Origin = 'VWSUBSERVICO.INTERVALO_INI'
    end
    object WSubServINTERVALO_FINAL: TTimeField
      FieldName = 'INTERVALO_FINAL'
      Origin = 'VWSUBSERVICO.INTERVALO_FINAL'
    end
    object WSubServVLR_NORMAL: TIBBCDField
      FieldName = 'VLR_NORMAL'
      Origin = 'VWSUBSERVICO.VLR_NORMAL'
      Precision = 18
      Size = 2
    end
    object WSubServVLR_EXTRA: TIBBCDField
      FieldName = 'VLR_EXTRA'
      Origin = 'VWSUBSERVICO.VLR_EXTRA'
      Precision = 18
      Size = 2
    end
    object WSubServATIVO: TSmallintField
      FieldName = 'ATIVO'
      Origin = 'VWSUBSERVICO.ATIVO'
    end
  end
  object DWSubserv: TDataSource
    DataSet = WSubServ
    Left = 90
    Top = 319
  end
  object WOrdem: TIBQuery
    Database = DbServ
    Transaction = IBT
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select   FIRST 1 * from VWORDEM')
    GeneratorField.Field = 'COD_ESTOQUE'
    Left = 149
    Top = 271
    object WOrdemCOD_ORDEM: TIntegerField
      FieldName = 'COD_ORDEM'
      Origin = 'VWORDEM.COD_ORDEM'
    end
    object WOrdemCOD_CLIENTE: TIntegerField
      FieldName = 'COD_CLIENTE'
      Origin = 'VWORDEM.COD_CLIENTE'
    end
    object WOrdemCOD_EQUIPAMENTO: TIntegerField
      FieldName = 'COD_EQUIPAMENTO'
      Origin = 'VWORDEM.COD_EQUIPAMENTO'
    end
    object WOrdemCOD_FUNCIONARIO: TIntegerField
      FieldName = 'COD_FUNCIONARIO'
      Origin = 'VWORDEM.COD_FUNCIONARIO'
    end
    object WOrdemCOD_VENDEDOR: TIntegerField
      FieldName = 'COD_VENDEDOR'
      Origin = 'VWORDEM.COD_VENDEDOR'
    end
    object WOrdemDTABERT: TDateField
      FieldName = 'DTABERT'
      Origin = 'VWORDEM.DTABERT'
    end
    object WOrdemDTPREV: TDateField
      FieldName = 'DTPREV'
      Origin = 'VWORDEM.DTPREV'
    end
    object WOrdemDTFECH: TDateField
      FieldName = 'DTFECH'
      Origin = 'VWORDEM.DTFECH'
    end
    object WOrdemNUMERO: TIBStringField
      FieldName = 'NUMERO'
      Origin = 'VWORDEM.NUMERO'
      Size = 10
    end
    object WOrdemNUMORC: TIntegerField
      FieldName = 'NUMORC'
      Origin = 'VWORDEM.NUMORC'
    end
    object WOrdemSTATUS: TIBStringField
      FieldName = 'STATUS'
      Origin = 'VWORDEM.STATUS'
      Size = 15
    end
    object WOrdemTOTAL: TIBBCDField
      FieldName = 'TOTAL'
      Origin = 'VWORDEM.TOTAL'
      Precision = 18
      Size = 2
    end
    object WOrdemCI_CLIENTE: TIBStringField
      FieldName = 'CI_CLIENTE'
      Origin = 'VWORDEM.CI_CLIENTE'
      Size = 10
    end
    object WOrdemCLIENTE: TIBStringField
      FieldName = 'CLIENTE'
      Origin = 'VWORDEM.CLIENTE'
      Size = 100
    end
    object WOrdemEQUIPAMENTO: TIBStringField
      FieldName = 'EQUIPAMENTO'
      Origin = 'VWORDEM.EQUIPAMENTO'
      Size = 40
    end
    object WOrdemCOD_LOJA: TIntegerField
      FieldName = 'COD_LOJA'
      Origin = 'VWORDEM.COD_LOJA'
    end
    object WOrdemGARANT: TIBStringField
      FieldName = 'GARANT'
      Origin = 'VWORDEM.GARANT'
      FixedChar = True
      Size = 1
    end
    object WOrdemMARK: TIBStringField
      FieldName = 'MARK'
      Origin = 'VWORDEM.MARK'
      FixedChar = True
      Size = 1
    end
    object WOrdemFISCO: TIBStringField
      FieldName = 'FISCO'
      Origin = 'VWORDEM.FISCO'
      Size = 10
    end
    object WOrdemFORMAPAG: TIBStringField
      FieldName = 'FORMAPAG'
      Origin = 'VWORDEM.FORMAPAG'
      Size = 100
    end
    object WOrdemTIPOPAG: TIBStringField
      FieldName = 'TIPOPAG'
      Origin = 'VWORDEM.TIPOPAG'
      Size = 10
    end
    object WOrdemPLACA: TIBStringField
      FieldName = 'PLACA'
      Origin = 'VWORDEM.PLACA'
      Size = 8
    end
    object WOrdemBOX: TIBStringField
      FieldName = 'BOX'
      Origin = 'VWORDEM.BOX'
      Size = 10
    end
    object WOrdemEXP: TIBStringField
      FieldName = 'EXP'
      Origin = 'VWORDEM.EXP'
      FixedChar = True
      Size = 1
    end
    object WOrdemEXPORTADO: TIBStringField
      FieldName = 'EXPORTADO'
      Origin = 'VWORDEM.EXPORTADO'
      FixedChar = True
      Size = 1
    end
    object WOrdemNUMFISCAL: TIBStringField
      FieldName = 'NUMFISCAL'
      Origin = 'VWORDEM.NUMFISCAL'
      Size = 10
    end
    object WOrdemSTATUSNFSE: TIBStringField
      FieldName = 'STATUSNFSE'
      Origin = 'VWORDEM.STATUSNFSE'
      FixedChar = True
      Size = 1
    end
    object WOrdemNUMFISCALNFSE: TIntegerField
      FieldName = 'NUMFISCALNFSE'
      Origin = 'VWORDEM.NUMFISCALNFSE'
    end
    object WOrdemNUMFISCAL_DEVOLVIDA: TIBStringField
      FieldName = 'NUMFISCAL_DEVOLVIDA'
      Origin = 'VWORDEM.NUMFISCAL_DEVOLVIDA'
      Size = 10
    end
    object WOrdemNUMFISCALINT: TIntegerField
      FieldName = 'NUMFISCALINT'
      Origin = 'VWORDEM.NUMFISCALINT'
    end
    object WOrdemDTAGENDADO: TDateField
      FieldName = 'DTAGENDADO'
      Origin = 'VWORDEM.DTAGENDADO'
    end
  end
  object DWOrdem: TDataSource
    DataSet = WOrdem
    Left = 150
    Top = 320
  end
  object TRel: TIBQuery
    Tag = 5
    Database = DbServ
    Transaction = IBT
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'select vwfuncionario.nome, ordem.numero, ordem.dtentrega, vwclie' +
        'nte.nome, ordem.totord, comissao.vlrprod,'
      
        'comissao.perprod, comissao.vlrcomisprod, comissao.vlrserv, comis' +
        'sao.perserv, comissao.vlrcomisserv,'
      
        'ordem.garantia FROM comissao join ordem ON comissao.cod_gerador=' +
        'ordem.cod_ordem'
      'left join vwcliente ON vwcliente.cod_cliente = ordem.cod_cliente'
      
        'left join vwfuncionario on vwfuncionario.cod_func = comissao.cod' +
        '_funcionario'
      'Where comissao.gerador='#39'ORDEM'#39)
    Left = 197
    Top = 271
  end
  object DRel: TDataSource
    DataSet = TRel
    Left = 197
    Top = 320
  end
  object TFiscOrd: TIBQuery
    Database = DbServ
    Transaction = IBT
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select   FIRST 1 *  from DOCFISORD')
    UpdateObject = UFiscOrd
    GeneratorField.Field = 'COD_CST'
    Left = 251
    Top = 65
    object TFiscOrdCOD_DOCFISCORD: TIntegerField
      FieldName = 'COD_DOCFISCORD'
      Origin = 'DOCFISORD.COD_DOCFISCORD'
      Required = True
    end
    object TFiscOrdCOD_ORDEM: TIntegerField
      FieldName = 'COD_ORDEM'
      Origin = 'DOCFISORD.COD_ORDEM'
    end
    object TFiscOrdNUMDOCFIS: TIBStringField
      FieldName = 'NUMDOCFIS'
      Origin = 'DOCFISORD.NUMDOCFIS'
      Size = 10
    end
    object TFiscOrdTIPODOCFIS: TIBStringField
      FieldName = 'TIPODOCFIS'
      Origin = 'DOCFISORD.TIPODOCFIS'
      FixedChar = True
      Size = 1
    end
    object TFiscOrdNUMDOCANT: TIBStringField
      FieldName = 'NUMDOCANT'
      Origin = 'DOCFISORD.NUMDOCANT'
      Size = 10
    end
    object TFiscOrdSERIE: TIBStringField
      FieldName = 'SERIE'
      Origin = 'DOCFISORD.SERIE'
      Size = 10
    end
    object TFiscOrdDTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
      Origin = 'DOCFISORD.DTEMISSAO'
    end
    object TFiscOrdDTENTSAID: TDateField
      FieldName = 'DTENTSAID'
      Origin = 'DOCFISORD.DTENTSAID'
    end
    object TFiscOrdHORASAID: TTimeField
      FieldName = 'HORASAID'
      Origin = 'DOCFISORD.HORASAID'
    end
    object TFiscOrdCOD_CFOP: TIntegerField
      FieldName = 'COD_CFOP'
      Origin = 'DOCFISORD.COD_CFOP'
    end
    object TFiscOrdCOD_TRANSP: TIntegerField
      FieldName = 'COD_TRANSP'
      Origin = 'DOCFISORD.COD_TRANSP'
    end
    object TFiscOrdOBS: TIBStringField
      FieldName = 'OBS'
      Origin = 'DOCFISORD.OBS'
      Size = 100
    end
    object TFiscOrdFRETECONTA: TIBStringField
      FieldName = 'FRETECONTA'
      Origin = 'DOCFISORD.FRETECONTA'
      FixedChar = True
      Size = 1
    end
    object TFiscOrdPLACA: TIBStringField
      FieldName = 'PLACA'
      Origin = 'DOCFISORD.PLACA'
      Size = 10
    end
    object TFiscOrdUFPLACA: TIBStringField
      FieldName = 'UFPLACA'
      Origin = 'DOCFISORD.UFPLACA'
      FixedChar = True
      Size = 2
    end
    object TFiscOrdCPFPLACA: TIBStringField
      FieldName = 'CPFPLACA'
      Origin = 'DOCFISORD.CPFPLACA'
    end
    object TFiscOrdQUANTFRETE: TFloatField
      FieldName = 'QUANTFRETE'
      Origin = 'DOCFISORD.QUANTFRETE'
    end
    object TFiscOrdESPECIEFRETE: TIBStringField
      FieldName = 'ESPECIEFRETE'
      Origin = 'DOCFISORD.ESPECIEFRETE'
      Size = 10
    end
    object TFiscOrdMARCAFRETE: TIBStringField
      FieldName = 'MARCAFRETE'
      Origin = 'DOCFISORD.MARCAFRETE'
      Size = 25
    end
    object TFiscOrdPESOBRUTO: TFloatField
      FieldName = 'PESOBRUTO'
      Origin = 'DOCFISORD.PESOBRUTO'
    end
    object TFiscOrdPESOLIQ: TFloatField
      FieldName = 'PESOLIQ'
      Origin = 'DOCFISORD.PESOLIQ'
    end
    object TFiscOrdCOD_COTA: TIntegerField
      FieldName = 'COD_COTA'
      Origin = 'DOCFISORD.COD_COTA'
    end
    object TFiscOrdNF: TIBStringField
      FieldName = 'NF'
      Origin = 'DOCFISORD.NF'
      FixedChar = True
      Size = 1
    end
    object TFiscOrdBASEICMS: TIBBCDField
      FieldName = 'BASEICMS'
      Origin = 'DOCFISORD.BASEICMS'
      Precision = 18
      Size = 2
    end
    object TFiscOrdVLRICMS: TIBBCDField
      FieldName = 'VLRICMS'
      Origin = 'DOCFISORD.VLRICMS'
      Precision = 18
      Size = 2
    end
    object TFiscOrdBASCALSUBS: TIBBCDField
      FieldName = 'BASCALSUBS'
      Origin = 'DOCFISORD.BASCALSUBS'
      Precision = 18
      Size = 2
    end
    object TFiscOrdVLRICMSUBS: TIBBCDField
      FieldName = 'VLRICMSUBS'
      Origin = 'DOCFISORD.VLRICMSUBS'
      Precision = 18
      Size = 2
    end
    object TFiscOrdVLRTOTPROD: TIBBCDField
      FieldName = 'VLRTOTPROD'
      Origin = 'DOCFISORD.VLRTOTPROD'
      Precision = 18
      Size = 2
    end
    object TFiscOrdVLRFRETE: TIBBCDField
      FieldName = 'VLRFRETE'
      Origin = 'DOCFISORD.VLRFRETE'
      Precision = 18
      Size = 2
    end
    object TFiscOrdVLRICMSFRETE: TIBBCDField
      FieldName = 'VLRICMSFRETE'
      Origin = 'DOCFISORD.VLRICMSFRETE'
      Precision = 18
      Size = 2
    end
    object TFiscOrdVLRSEG: TIBBCDField
      FieldName = 'VLRSEG'
      Origin = 'DOCFISORD.VLRSEG'
      Precision = 18
      Size = 2
    end
    object TFiscOrdVLRTOTIPI: TIBBCDField
      FieldName = 'VLRTOTIPI'
      Origin = 'DOCFISORD.VLRTOTIPI'
      Precision = 18
      Size = 2
    end
    object TFiscOrdVLRTOTICMS: TIBBCDField
      FieldName = 'VLRTOTICMS'
      Origin = 'DOCFISORD.VLRTOTICMS'
      Precision = 18
      Size = 2
    end
    object TFiscOrdVLRTOTDOCNF: TIBBCDField
      FieldName = 'VLRTOTDOCNF'
      Origin = 'DOCFISORD.VLRTOTDOCNF'
      Precision = 18
      Size = 2
    end
    object TFiscOrdVLROUTRASDESP: TIBBCDField
      FieldName = 'VLROUTRASDESP'
      Origin = 'DOCFISORD.VLROUTRASDESP'
      Precision = 18
      Size = 2
    end
    object TFiscOrdFRETECOMP: TIBStringField
      FieldName = 'FRETECOMP'
      Origin = 'DOCFISORD.FRETECOMP'
      FixedChar = True
      Size = 1
    end
    object TFiscOrdVLREMB: TIBBCDField
      FieldName = 'VLREMB'
      Origin = 'DOCFISORD.VLREMB'
      Precision = 18
      Size = 2
    end
    object TFiscOrdTIPOGERADOR: TIBStringField
      FieldName = 'TIPOGERADOR'
      Origin = 'DOCFISORD.TIPOGERADOR'
      Size = 10
    end
    object TFiscOrdNUMCONHEC: TIBStringField
      FieldName = 'NUMCONHEC'
      Origin = 'DOCFISORD.NUMCONHEC'
      Size = 25
    end
    object TFiscOrdVLRISENTOICMS: TIBBCDField
      FieldName = 'VLRISENTOICMS'
      Origin = 'DOCFISORD.VLRISENTOICMS'
      Precision = 18
      Size = 2
    end
    object TFiscOrdMODELONF: TIBStringField
      FieldName = 'MODELONF'
      Origin = 'DOCFISORD.MODELONF'
      Size = 10
    end
    object TFiscOrdNFESERIE: TIntegerField
      FieldName = 'NFESERIE'
      Origin = 'DOCFISORD.NFESERIE'
    end
    object TFiscOrdVLRTOTSERV: TIBBCDField
      FieldName = 'VLRTOTSERV'
      Origin = 'DOCFISORD.VLRTOTSERV'
      Precision = 18
      Size = 2
    end
    object TFiscOrdVLRTOTISS: TIBBCDField
      FieldName = 'VLRTOTISS'
      Origin = 'DOCFISORD.VLRTOTISS'
      Precision = 18
      Size = 2
    end
    object TFiscOrdNUMFISCALAUX: TIBStringField
      FieldName = 'NUMFISCALAUX'
      Origin = 'DOCFISORD.NUMFISCALAUX'
      Size = 15
    end
    object TFiscOrdDADOSAD01: TMemoField
      FieldName = 'DADOSAD01'
      Origin = 'DOCFISORD.DADOSAD01'
      BlobType = ftMemo
      Size = 8
    end
    object TFiscOrdDADOSAD02: TMemoField
      FieldName = 'DADOSAD02'
      Origin = 'DOCFISORD.DADOSAD02'
      BlobType = ftMemo
      Size = 8
    end
    object TFiscOrdDADOSAD03: TMemoField
      FieldName = 'DADOSAD03'
      Origin = 'DOCFISORD.DADOSAD03'
      BlobType = ftMemo
      Size = 8
    end
    object TFiscOrdRESERVFISC01: TMemoField
      FieldName = 'RESERVFISC01'
      Origin = 'DOCFISORD.RESERVFISC01'
      BlobType = ftMemo
      Size = 8
    end
    object TFiscOrdRESERVFISC02: TMemoField
      FieldName = 'RESERVFISC02'
      Origin = 'DOCFISORD.RESERVFISC02'
      BlobType = ftMemo
      Size = 8
    end
    object TFiscOrdRESERVFISC03: TMemoField
      FieldName = 'RESERVFISC03'
      Origin = 'DOCFISORD.RESERVFISC03'
      BlobType = ftMemo
      Size = 8
    end
    object TFiscOrdDADOSAD04: TMemoField
      FieldName = 'DADOSAD04'
      Origin = 'DOCFISORD.DADOSAD04'
      BlobType = ftMemo
      Size = 8
    end
    object TFiscOrdCOD_PERIODOFISCAL: TIntegerField
      FieldName = 'COD_PERIODOFISCAL'
      Origin = 'DOCFISORD.COD_PERIODOFISCAL'
      Required = True
    end
    object TFiscOrdCOD_CFOP1: TIntegerField
      FieldName = 'COD_CFOP1'
      Origin = 'DOCFISORD.COD_CFOP1'
    end
    object TFiscOrdCOD_CFOP2: TIntegerField
      FieldName = 'COD_CFOP2'
      Origin = 'DOCFISORD.COD_CFOP2'
    end
    object TFiscOrdNUMDOCFISINT: TIntegerField
      FieldName = 'NUMDOCFISINT'
      Origin = 'DOCFISORD.NUMDOCFISINT'
    end
    object TFiscOrdVLRDESCONTO: TIBBCDField
      FieldName = 'VLRDESCONTO'
      Origin = 'DOCFISORD.VLRDESCONTO'
      Precision = 18
      Size = 2
    end
    object TFiscOrdNFEXMLDIST: TMemoField
      FieldName = 'NFEXMLDIST'
      Origin = 'DOCFISORD.NFEXMLDIST'
      BlobType = ftMemo
      Size = 8
    end
    object TFiscOrdNFESTATUS: TSmallintField
      FieldName = 'NFESTATUS'
      Origin = 'DOCFISORD.NFESTATUS'
    end
    object TFiscOrdNFEAMBIENTE: TIntegerField
      FieldName = 'NFEAMBIENTE'
      Origin = 'DOCFISORD.NFEAMBIENTE'
    end
    object TFiscOrdNFECHAVE: TIBStringField
      FieldName = 'NFECHAVE'
      Origin = 'DOCFISORD.NFECHAVE'
      Size = 50
    end
    object TFiscOrdNFEPROTOCOLO: TIBStringField
      FieldName = 'NFEPROTOCOLO'
      Origin = 'DOCFISORD.NFEPROTOCOLO'
    end
    object TFiscOrdANTT: TIBStringField
      FieldName = 'ANTT'
      Origin = 'DOCFISORD.ANTT'
      Size = 25
    end
    object TFiscOrdNFEXML: TMemoField
      FieldName = 'NFEXML'
      Origin = 'DOCFISORD.NFEXML'
      BlobType = ftMemo
      Size = 8
    end
    object TFiscOrdNFELOTE: TIBStringField
      FieldName = 'NFELOTE'
      Origin = 'DOCFISORD.NFELOTE'
      Size = 10
    end
    object TFiscOrdNFERECIBO: TIBStringField
      FieldName = 'NFERECIBO'
      Origin = 'DOCFISORD.NFERECIBO'
      Size = 15
    end
    object TFiscOrdNFEXMLCANCEL: TMemoField
      FieldName = 'NFEXMLCANCEL'
      Origin = 'DOCFISORD.NFEXMLCANCEL'
      BlobType = ftMemo
      Size = 8
    end
    object TFiscOrdRETER_ISS: TIBStringField
      FieldName = 'RETER_ISS'
      Origin = 'DOCFISORD.RETER_ISS'
      FixedChar = True
      Size = 1
    end
    object TFiscOrdALIQUOTATOTALTRIBUTA: TIBBCDField
      FieldName = 'ALIQUOTATOTALTRIBUTA'
      Origin = 'DOCFISORD.ALIQUOTATOTALTRIBUTA'
      Precision = 18
      Size = 2
    end
    object TFiscOrdVALORTOTALTRIBUTA: TIBBCDField
      FieldName = 'VALORTOTALTRIBUTA'
      Origin = 'DOCFISORD.VALORTOTALTRIBUTA'
      Precision = 18
      Size = 2
    end
    object TFiscOrdNFSE_DTEMISSAO: TDateField
      FieldName = 'NFSE_DTEMISSAO'
      Origin = 'DOCFISORD.NFSE_DTEMISSAO'
    end
    object TFiscOrdNFSE_XML: TMemoField
      FieldName = 'NFSE_XML'
      Origin = 'DOCFISORD.NFSE_XML'
      BlobType = ftMemo
      Size = 8
    end
    object TFiscOrdNFSE_PROTOCOLO: TIBStringField
      FieldName = 'NFSE_PROTOCOLO'
      Origin = 'DOCFISORD.NFSE_PROTOCOLO'
      Size = 100
    end
    object TFiscOrdNFSE_NUMERORPS: TIntegerField
      FieldName = 'NFSE_NUMERORPS'
      Origin = 'DOCFISORD.NFSE_NUMERORPS'
    end
    object TFiscOrdNFSE_SERIERPS: TSmallintField
      FieldName = 'NFSE_SERIERPS'
      Origin = 'DOCFISORD.NFSE_SERIERPS'
    end
    object TFiscOrdNFSE_NUMERODOCUMENTO: TIntegerField
      FieldName = 'NFSE_NUMERODOCUMENTO'
      Origin = 'DOCFISORD.NFSE_NUMERODOCUMENTO'
    end
    object TFiscOrdNFSE_STATUSGERAL: TIBStringField
      FieldName = 'NFSE_STATUSGERAL'
      Origin = 'DOCFISORD.NFSE_STATUSGERAL'
      FixedChar = True
      Size = 1
    end
    object TFiscOrdNFSE_NUMEROLOTE: TIntegerField
      FieldName = 'NFSE_NUMEROLOTE'
      Origin = 'DOCFISORD.NFSE_NUMEROLOTE'
    end
    object TFiscOrdNFSE_CODIGOAUTENTICIDADE: TIBStringField
      FieldName = 'NFSE_CODIGOAUTENTICIDADE'
      Origin = 'DOCFISORD.NFSE_CODIGOAUTENTICIDADE'
      Size = 50
    end
    object TFiscOrdIMPOSTONFSE: TIBStringField
      FieldName = 'IMPOSTONFSE'
      Origin = 'DOCFISORD.IMPOSTONFSE'
      Size = 100
    end
    object TFiscOrdVALORTOTALTRIBUTAESTADUAL: TIBBCDField
      FieldName = 'VALORTOTALTRIBUTAESTADUAL'
      Origin = 'DOCFISORD.VALORTOTALTRIBUTAESTADUAL'
      Precision = 18
      Size = 2
    end
    object TFiscOrdURL_QRCODE: TIBStringField
      FieldName = 'URL_QRCODE'
      Origin = 'DOCFISORD.URL_QRCODE'
      Size = 500
    end
    object TFiscOrdCONTINGENCIA: TIBStringField
      FieldName = 'CONTINGENCIA'
      Origin = 'DOCFISORD.CONTINGENCIA'
      FixedChar = True
      Size = 1
    end
  end
  object UFiscOrd: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  COD_DOCFISCORD,'
      '  COD_ORDEM,'
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
      '  NFESERIE,'
      '  VLRTOTSERV,'
      '  VLRTOTISS,'
      '  NUMFISCALAUX,'
      '  DADOSAD01,'
      '  DADOSAD02,'
      '  DADOSAD03,'
      '  DADOSAD04,'
      '  RESERVFISC01,'
      '  RESERVFISC02,'
      '  RESERVFISC03,'
      '  COD_PERIODOFISCAL,'
      '  COD_CFOP1,'
      '  COD_CFOP2,'
      '  NUMDOCFISINT,'
      '  VLRDESCONTO,'
      '  NFEXMLDIST,'
      '  NFESTATUS,'
      '  NFEAMBIENTE,'
      '  NFECHAVE,'
      '  NFEPROTOCOLO,'
      '  ANTT,'
      '  NFEXML,'
      '  NFELOTE,'
      '  NFERECIBO,'
      '  NFEXMLCANCEL,'
      '  RETER_ISS,'
      '  ALIQUOTATOTALTRIBUTA,'
      '  VALORTOTALTRIBUTA,'
      '  NFSE_NUMERODOCUMENTO,'
      '  NFSE_SERIERPS,'
      '  NFSE_NUMERORPS,'
      '  NFSE_STATUSGERAL,'
      '  NFSE_DTEMISSAO,'
      '  NFSE_XML,'
      '  NFSE_PROTOCOLO,'
      '  NFSE_NUMEROLOTE,'
      '  IMPOSTONFSE,'
      '  VALORTOTALTRIBUTAESTADUAL,'
      '  URL_QRCODE,'
      '  CONTINGENCIA,'
      '  NFSE_CODIGOAUTENTICIDADE'
      'from DOCFISORD '
      'where'
      '  COD_DOCFISCORD = :COD_DOCFISCORD')
    ModifySQL.Strings = (
      'update DOCFISORD'
      'set'
      '  COD_DOCFISCORD = :COD_DOCFISCORD,'
      '  COD_ORDEM = :COD_ORDEM,'
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
      '  NFESERIE = :NFESERIE,'
      '  VLRTOTSERV = :VLRTOTSERV,'
      '  VLRTOTISS = :VLRTOTISS,'
      '  NUMFISCALAUX = :NUMFISCALAUX,'
      '  DADOSAD01 = :DADOSAD01,'
      '  DADOSAD02 = :DADOSAD02,'
      '  DADOSAD03 = :DADOSAD03,'
      '  DADOSAD04 = :DADOSAD04,'
      '  RESERVFISC01 = :RESERVFISC01,'
      '  RESERVFISC02 = :RESERVFISC02,'
      '  RESERVFISC03 = :RESERVFISC03,'
      '  COD_PERIODOFISCAL = :COD_PERIODOFISCAL,'
      '  COD_CFOP1 = :COD_CFOP1,'
      '  COD_CFOP2 = :COD_CFOP2,'
      '  NUMDOCFISINT = :NUMDOCFISINT,'
      '  VLRDESCONTO = :VLRDESCONTO,'
      '  NFEXMLDIST = :NFEXMLDIST,'
      '  NFESTATUS = :NFESTATUS,'
      '  NFEAMBIENTE = :NFEAMBIENTE,'
      '  NFECHAVE = :NFECHAVE,'
      '  NFEPROTOCOLO = :NFEPROTOCOLO,'
      '  ANTT = :ANTT,'
      '  NFEXML = :NFEXML,'
      '  NFELOTE = :NFELOTE,'
      '  NFERECIBO = :NFERECIBO,'
      '  NFEXMLCANCEL = :NFEXMLCANCEL,'
      '  RETER_ISS = :RETER_ISS,'
      '  ALIQUOTATOTALTRIBUTA = :ALIQUOTATOTALTRIBUTA,'
      '  VALORTOTALTRIBUTA = :VALORTOTALTRIBUTA,'
      '  NFSE_NUMERODOCUMENTO = :NFSE_NUMERODOCUMENTO,'
      '  NFSE_SERIERPS = :NFSE_SERIERPS,'
      '  NFSE_NUMERORPS = :NFSE_NUMERORPS,'
      '  NFSE_STATUSGERAL = :NFSE_STATUSGERAL,'
      '  NFSE_DTEMISSAO = :NFSE_DTEMISSAO,'
      '  NFSE_XML = :NFSE_XML,'
      '  NFSE_PROTOCOLO = :NFSE_PROTOCOLO,'
      '  NFSE_NUMEROLOTE = :NFSE_NUMEROLOTE,'
      '  IMPOSTONFSE = :IMPOSTONFSE,'
      '  VALORTOTALTRIBUTAESTADUAL = :VALORTOTALTRIBUTAESTADUAL,'
      '  URL_QRCODE = :URL_QRCODE,'
      '  CONTINGENCIA = :CONTINGENCIA,'
      '  NFSE_CODIGOAUTENTICIDADE = :NFSE_CODIGOAUTENTICIDADE'
      'where'
      '  COD_DOCFISCORD = :OLD_COD_DOCFISCORD')
    InsertSQL.Strings = (
      'insert into DOCFISORD'
      '  (COD_DOCFISCORD, COD_ORDEM, NUMDOCFIS, TIPODOCFIS, NUMDOCANT, '
      'SERIE, '
      '   DTEMISSAO, DTENTSAID, HORASAID, COD_CFOP, COD_TRANSP, OBS, '
      'FRETECONTA, '
      
        '   PLACA, UFPLACA, CPFPLACA, QUANTFRETE, ESPECIEFRETE, MARCAFRET' +
        'E, '
      'PESOBRUTO, '
      
        '   PESOLIQ, COD_COTA, NF, BASEICMS, VLRICMS, BASCALSUBS, VLRICMS' +
        'UBS, '
      'VLRTOTPROD, '
      '   VLRFRETE, VLRICMSFRETE, VLRSEG, VLRTOTIPI, VLRTOTICMS, '
      'VLRTOTDOCNF, '
      '   VLROUTRASDESP, FRETECOMP, VLREMB, TIPOGERADOR, NUMCONHEC, '
      'VLRISENTOICMS, '
      '   MODELONF, NFESERIE, VLRTOTSERV, VLRTOTISS, NUMFISCALAUX, '
      'DADOSAD01, '
      '   DADOSAD02, DADOSAD03, DADOSAD04, RESERVFISC01, RESERVFISC02, '
      'RESERVFISC03, '
      '   COD_PERIODOFISCAL, COD_CFOP1, COD_CFOP2, NUMDOCFISINT, '
      'VLRDESCONTO, '
      '   NFEXMLDIST, NFESTATUS, NFEAMBIENTE, NFECHAVE, NFEPROTOCOLO, '
      'ANTT, NFEXML, '
      '   NFELOTE, NFERECIBO, NFEXMLCANCEL, RETER_ISS, '
      'ALIQUOTATOTALTRIBUTA, VALORTOTALTRIBUTA, '
      '   NFSE_NUMERODOCUMENTO, NFSE_SERIERPS, NFSE_NUMERORPS, '
      'NFSE_STATUSGERAL, '
      '   NFSE_DTEMISSAO, NFSE_XML, NFSE_PROTOCOLO, NFSE_NUMEROLOTE, '
      'IMPOSTONFSE, '
      '   VALORTOTALTRIBUTAESTADUAL, URL_QRCODE, CONTINGENCIA, '
      'NFSE_CODIGOAUTENTICIDADE)'
      'values'
      '  (:COD_DOCFISCORD, :COD_ORDEM, :NUMDOCFIS, :TIPODOCFIS, '
      ':NUMDOCANT, :SERIE, '
      
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
      
        '   :NUMCONHEC, :VLRISENTOICMS, :MODELONF, :NFESERIE, :VLRTOTSERV' +
        ', '
      ':VLRTOTISS, '
      
        '   :NUMFISCALAUX, :DADOSAD01, :DADOSAD02, :DADOSAD03, :DADOSAD04' +
        ', '
      ':RESERVFISC01, '
      
        '   :RESERVFISC02, :RESERVFISC03, :COD_PERIODOFISCAL, :COD_CFOP1,' +
        ' '
      ':COD_CFOP2, '
      '   :NUMDOCFISINT, :VLRDESCONTO, :NFEXMLDIST, :NFESTATUS, '
      ':NFEAMBIENTE, '
      
        '   :NFECHAVE, :NFEPROTOCOLO, :ANTT, :NFEXML, :NFELOTE, :NFERECIB' +
        'O, '
      ':NFEXMLCANCEL, '
      '   :RETER_ISS, :ALIQUOTATOTALTRIBUTA, :VALORTOTALTRIBUTA, '
      ':NFSE_NUMERODOCUMENTO, '
      '   :NFSE_SERIERPS, :NFSE_NUMERORPS, :NFSE_STATUSGERAL, '
      ':NFSE_DTEMISSAO, '
      '   :NFSE_XML, :NFSE_PROTOCOLO, :NFSE_NUMEROLOTE, :IMPOSTONFSE, '
      ':VALORTOTALTRIBUTAESTADUAL, '
      '   :URL_QRCODE, :CONTINGENCIA, :NFSE_CODIGOAUTENTICIDADE)')
    DeleteSQL.Strings = (
      'delete from DOCFISORD'
      'where'
      '  COD_DOCFISCORD = :OLD_COD_DOCFISCORD')
    Left = 251
    Top = 107
  end
  object DFiscOrd: TDataSource
    DataSet = TFiscOrd
    Left = 251
    Top = 151
  end
  object TAlx1: TIBQuery
    Tag = 5
    Database = DbServ
    Transaction = IBT
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'select tabela_preco.cod_tabelapreco, tabela_preco.descricao AS D' +
        'ESC_TABELA,'
      'itens_tabpreco.cod_tabpreco, itens_tabpreco.cod_subserv,'
      
        'itens_tabpreco.qtde_min, itens_tabpreco.vlr_normal, itens_tabpre' +
        'co.vlr_horaextra, subservico.cod_interno,'
      'subservico.cod_subservico, subservico.descricao'
      'from itens_tabpreco'
      
        'left join tabela_preco on itens_tabpreco.cod_tabpreco = tabela_p' +
        'reco.cod_tabelapreco'
      
        'left join subservico on itens_tabpreco.cod_subserv = subservico.' +
        'cod_subservico'
      'where itens_tabpreco.cod_tabpreco = :codigo')
    Left = 261
    Top = 271
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codigo'
        ParamType = ptUnknown
      end>
  end
  object DSAlx1: TDataSource
    DataSet = TAlx1
    Left = 261
    Top = 320
  end
  object TAlx2: TIBQuery
    Tag = 5
    Database = DbServ
    Transaction = IBT
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'select equipamento.cod_equipamento, equipamento.descricao AS EQU' +
        'IPAMENTO,'
      'pessoa.cod_pessoa, pessoa.nome,'
      'funcionario.cod_func, funcionario.cod_pessoa,'
      
        'itens_locacao.cod_locacao, itens_locacao.cod_servico, itens_loca' +
        'cao.dia_semana,'
      
        'itens_locacao.hora_minima, itens_locacao.cod_equipamento, itens_' +
        'locacao.cod_motorista,'
      
        'itens_locacao.cod_ordem, itens_locacao.hrs_extras, itens_locacao' +
        '.hrs_normais,'
      
        'itens_locacao.total_extra, itens_locacao.total_normal, itens_loc' +
        'acao.cod_tabpreco,'
      
        'itens_locacao.total_final, itens_locacao.VALORTOTKM, itens_locac' +
        'ao.data,'
      'subservico.cod_subservico, subservico.descricao AS SERVICO,'
      
        'tabela_preco.cod_tabelapreco, tabela_preco.descricao AS NOME_TAB' +
        'ELA'
      'from itens_locacao'
      
        'left join equipamento on itens_locacao.cod_equipamento = equipam' +
        'ento.cod_equipamento'
      
        'left join funcionario on itens_locacao.cod_motorista = funcionar' +
        'io.cod_func'
      'left join pessoa on funcionario.cod_pessoa = pessoa.cod_pessoa'
      
        'left join subservico on itens_locacao.cod_servico = subservico.c' +
        'od_subservico'
      
        'left join tabela_preco on itens_locacao.cod_tabpreco = tabela_pr' +
        'eco.cod_tabelapreco')
    Left = 317
    Top = 271
  end
  object DSAlx2: TDataSource
    DataSet = TAlx2
    Left = 317
    Top = 320
  end
  object TAlx3: TIBQuery
    Tag = 5
    Database = DbServ
    Transaction = IBT
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'select pessoa.nome, ordem.cod_ordem, ordem.numero, cast(ordem.ob' +
        'servacao as varchar(100)) as observacao, ordem.dtfech,'
      
        'despadic.cod_despadic, despadic.intrecorrencia,  despadic.recati' +
        'va, despadic.datarec,despadic.despesa,'
      'equipamento.descricao'
      'from despadic'
      
        'left join equipamento on (equipamento.cod_equipamento = despadic' +
        '.cod_equip)'
      'left join ordem on (ordem.cod_ordem = despadic.cod_gerador)'
      'left join cliente on (cliente.cod_cliente = ordem.cod_cliente)'
      'left join pessoa on (pessoa.cod_pessoa = cliente.cod_pessoa)')
    Left = 381
    Top = 272
  end
  object DSTalx3: TDataSource
    DataSet = TAlx3
    Left = 381
    Top = 320
  end
  object WOrdemDesp: TIBQuery
    Tag = 5
    Database = DbServ
    Transaction = IBT
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        '  select vwordem.cod_cliente,vwordem.cod_funcionario, vwordem.st' +
        'atus, vwordem.cod_ordem,'
      
        '  vwordem.numero, vwordem.numfiscal, vwordem.cliente, vwordem.dt' +
        'abert, vwordem.dtfech, vwordem.total'
      '   from vwordem'
      
        '   Left join vwcliente on vwordem.cod_cliente = vwcliente.cod_cl' +
        'iente'
      
        '   left join cliente on vwordem.cod_vendedor = cliente.cod_clien' +
        'te'
      '   left join pessoa on cliente.cod_pessoa = pessoa.cod_pessoa')
    Left = 445
    Top = 272
  end
  object DWOrdemDesp: TDataSource
    DataSet = WOrdemDesp
    Left = 445
    Top = 320
  end
  object DbMdoServ: TMDODatabase
    ClientLib = clGDS32
    DatabaseName = 'NOTE:C:\MZR\DataBase\MERCESCAN\Servidor\DBMACS.GDB'
    DefaultTransaction = TMdo
    IdleTimer = 0
    LoginPrompt = False
    Params.Strings = (
      'user_name=SYSDBA'
      'password=masterkey'
      'lc_ctype=ISO8859_1')
    SQLDialect = 3
    TraceFlags = []
    Left = 552
    Top = 216
  end
  object TMdo: TMDOTransaction
    Active = False
    AutoCommit = True
    DefaultDatabase = DbMdoServ
    Left = 632
    Top = 216
  end
  object TMdoOS: TMDOQuery
    Database = DbMdoServ
    Transaction = TMdo
    BufferChunks = 1000
    CachedUpdates = False
    LoadDefaults = False
    SQL.Strings = (
      'select * from ORDEM')
    Left = 552
    Top = 296
  end
  object DsMdoOS: TDataSource
    DataSet = TMdoOS
    Left = 552
    Top = 344
  end
  object TTabPreco: TIBQuery
    Database = DbServ
    Transaction = IBT
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'Select   FIRST 1 * from Tabela_preco')
    UpdateObject = UTabPreco
    GeneratorField.Field = 'COD_TABELAPRECO'
    Left = 408
    Top = 64
  end
  object UTabPreco: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  COD_TABELAPRECO,'
      '  DESCRICAO,'
      '  INDICELINHA'
      'from TABELA_PRECO '
      'where'
      '  COD_TABELAPRECO = :COD_TABELAPRECO')
    ModifySQL.Strings = (
      'update TABELA_PRECO'
      'set'
      '  COD_TABELAPRECO = :COD_TABELAPRECO,'
      '  DESCRICAO = :DESCRICAO,'
      '  INDICELINHA = :INDICELINHA'
      'where'
      '  COD_TABELAPRECO = :OLD_COD_TABELAPRECO')
    InsertSQL.Strings = (
      'insert into TABELA_PRECO'
      '  (COD_TABELAPRECO, DESCRICAO, INDICELINHA)'
      'values'
      '  (:COD_TABELAPRECO, :DESCRICAO, :INDICELINHA)')
    DeleteSQL.Strings = (
      'delete from TABELA_PRECO'
      'where'
      '  COD_TABELAPRECO = :OLD_COD_TABELAPRECO')
    Left = 407
    Top = 112
  end
  object DSTabPreco: TDataSource
    DataSet = TTabPreco
    Left = 408
    Top = 157
  end
  object TItensTabPreco: TIBQuery
    Database = DbServ
    Transaction = IBT
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select  FIRST 1  *   from ITENS_TABPRECO')
    UpdateObject = UItensTabPreco
    Left = 488
    Top = 64
    object TItensTabPrecoCOD_TABPRECO: TIntegerField
      FieldName = 'COD_TABPRECO'
      Origin = 'ITENS_TABPRECO.COD_TABPRECO'
    end
    object TItensTabPrecoCOD_ITEMTAB: TIntegerField
      FieldName = 'COD_ITEMTAB'
      Origin = 'ITENS_TABPRECO.COD_ITEMTAB'
    end
    object TItensTabPrecoCOD_SUBSERV: TIntegerField
      FieldName = 'COD_SUBSERV'
      Origin = 'ITENS_TABPRECO.COD_SUBSERV'
    end
    object TItensTabPrecoQTDE_MIN: TIntegerField
      FieldName = 'QTDE_MIN'
      Origin = 'ITENS_TABPRECO.QTDE_MIN'
    end
    object TItensTabPrecoVLR_NORMAL: TIBStringField
      FieldName = 'VLR_NORMAL'
      Origin = 'ITENS_TABPRECO.VLR_NORMAL'
      Size = 10
    end
    object TItensTabPrecoVLR_HORAEXTRA: TIBStringField
      FieldName = 'VLR_HORAEXTRA'
      Origin = 'ITENS_TABPRECO.VLR_HORAEXTRA'
      Size = 10
    end
    object TItensTabPrecoVLR_PROD: TIBBCDField
      FieldName = 'VLR_PROD'
      Origin = 'ITENS_TABPRECO.VLR_PROD'
      Precision = 18
      Size = 2
    end
  end
  object UItensTabPreco: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  COD_TABPRECO,'
      '  COD_ITEMTAB,'
      '  COD_SUBSERV,'
      '  QTDE_MIN,'
      '  VLR_NORMAL,'
      '  VLR_HORAEXTRA,'
      '  VLR_PROD'
      'from ITENS_TABPRECO '
      'where'
      '  COD_TABPRECO = :COD_TABPRECO')
    ModifySQL.Strings = (
      'update ITENS_TABPRECO'
      'set'
      '  COD_TABPRECO = :COD_TABPRECO,'
      '  COD_ITEMTAB = :COD_ITEMTAB,'
      '  COD_SUBSERV = :COD_SUBSERV,'
      '  QTDE_MIN = :QTDE_MIN,'
      '  VLR_NORMAL = :VLR_NORMAL,'
      '  VLR_HORAEXTRA = :VLR_HORAEXTRA,'
      '  VLR_PROD = :VLR_PROD'
      'where'
      '  COD_TABPRECO = :OLD_COD_TABPRECO')
    InsertSQL.Strings = (
      'insert into ITENS_TABPRECO'
      
        '  (COD_TABPRECO, COD_ITEMTAB, COD_SUBSERV, QTDE_MIN, VLR_NORMAL,' +
        ' VLR_HORAEXTRA, '
      '   VLR_PROD)'
      'values'
      
        '  (:COD_TABPRECO, :COD_ITEMTAB, :COD_SUBSERV, :QTDE_MIN, :VLR_NO' +
        'RMAL, :VLR_HORAEXTRA, '
      '   :VLR_PROD)')
    DeleteSQL.Strings = (
      'delete from ITENS_TABPRECO'
      'where'
      '  COD_TABPRECO = :OLD_COD_TABPRECO')
    Left = 487
    Top = 112
  end
  object DSItensTabPreco: TDataSource
    DataSet = TItensTabPreco
    Left = 488
    Top = 157
  end
  object TItensLocacao: TIBQuery
    Database = DbServ
    Transaction = IBT
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select   FIRST 1 * from ITENS_LOCACAO')
    UpdateObject = UItensLocacao
    Left = 584
    Top = 64
    object TItensLocacaoCOD_SERVICO: TIntegerField
      FieldName = 'COD_SERVICO'
      Origin = 'ITENS_LOCACAO.COD_SERVICO'
    end
    object TItensLocacaoCOD_LOCACAO: TIntegerField
      FieldName = 'COD_LOCACAO'
      Origin = 'ITENS_LOCACAO.COD_LOCACAO'
    end
    object TItensLocacaoCOD_ORDEM: TIntegerField
      FieldName = 'COD_ORDEM'
      Origin = 'ITENS_LOCACAO.COD_ORDEM'
    end
    object TItensLocacaoCOD_TABPRECO: TIntegerField
      FieldName = 'COD_TABPRECO'
      Origin = 'ITENS_LOCACAO.COD_TABPRECO'
    end
    object TItensLocacaoDIA_SEMANA: TIBStringField
      FieldName = 'DIA_SEMANA'
      Origin = 'ITENS_LOCACAO.DIA_SEMANA'
      Size = 10
    end
    object TItensLocacaoHORA_MINIMA: TTimeField
      FieldName = 'HORA_MINIMA'
      Origin = 'ITENS_LOCACAO.HORA_MINIMA'
    end
    object TItensLocacaoHMAT_INI: TTimeField
      FieldName = 'HMAT_INI'
      Origin = 'ITENS_LOCACAO.HMAT_INI'
    end
    object TItensLocacaoHMAT_FIM: TTimeField
      FieldName = 'HMAT_FIM'
      Origin = 'ITENS_LOCACAO.HMAT_FIM'
    end
    object TItensLocacaoHRS_NORMAIS: TTimeField
      FieldName = 'HRS_NORMAIS'
      Origin = 'ITENS_LOCACAO.HRS_NORMAIS'
    end
    object TItensLocacaoHRS_EXTRAS: TTimeField
      FieldName = 'HRS_EXTRAS'
      Origin = 'ITENS_LOCACAO.HRS_EXTRAS'
    end
    object TItensLocacaoVLR_NORMAL: TIBBCDField
      FieldName = 'VLR_NORMAL'
      Origin = 'ITENS_LOCACAO.VLR_NORMAL'
      Precision = 18
      Size = 2
    end
    object TItensLocacaoVLR_EXTRA: TIBBCDField
      FieldName = 'VLR_EXTRA'
      Origin = 'ITENS_LOCACAO.VLR_EXTRA'
      Precision = 18
      Size = 2
    end
    object TItensLocacaoTOTAL_NORMAL: TIBBCDField
      FieldName = 'TOTAL_NORMAL'
      Origin = 'ITENS_LOCACAO.TOTAL_NORMAL'
      Precision = 18
      Size = 2
    end
    object TItensLocacaoTOTAL_EXTRA: TIBBCDField
      FieldName = 'TOTAL_EXTRA'
      Origin = 'ITENS_LOCACAO.TOTAL_EXTRA'
      Precision = 18
      Size = 2
    end
    object TItensLocacaoDATA: TDateField
      FieldName = 'DATA'
      Origin = 'ITENS_LOCACAO.DATA'
    end
    object TItensLocacaoVLRSERV_COBRADO: TIBBCDField
      FieldName = 'VLRSERV_COBRADO'
      Origin = 'ITENS_LOCACAO.VLRSERV_COBRADO'
      Precision = 18
      Size = 2
    end
    object TItensLocacaoTABPRECOSERV_ATIVO: TIBStringField
      FieldName = 'TABPRECOSERV_ATIVO'
      Origin = 'ITENS_LOCACAO.TABPRECOSERV_ATIVO'
      FixedChar = True
      Size = 1
    end
    object TItensLocacaoKM_INI: TIBBCDField
      FieldName = 'KM_INI'
      Origin = 'ITENS_LOCACAO.KM_INI'
      Precision = 18
      Size = 3
    end
    object TItensLocacaoKM_FINAL: TIBBCDField
      FieldName = 'KM_FINAL'
      Origin = 'ITENS_LOCACAO.KM_FINAL'
      Precision = 18
      Size = 3
    end
    object TItensLocacaoKM_TOTAL: TIBBCDField
      FieldName = 'KM_TOTAL'
      Origin = 'ITENS_LOCACAO.KM_TOTAL'
      Precision = 18
      Size = 3
    end
    object TItensLocacaoVALORTOTKM: TIBBCDField
      FieldName = 'VALORTOTKM'
      Origin = 'ITENS_LOCACAO.VALORTOTKM'
      Precision = 18
      Size = 2
    end
    object TItensLocacaoHVESP_INI: TTimeField
      FieldName = 'HVESP_INI'
      Origin = 'ITENS_LOCACAO.HVESP_INI'
    end
    object TItensLocacaoHVESP_FIM: TTimeField
      FieldName = 'HVESP_FIM'
      Origin = 'ITENS_LOCACAO.HVESP_FIM'
    end
    object TItensLocacaoCOD_EQUIPAMENTO: TIntegerField
      FieldName = 'COD_EQUIPAMENTO'
      Origin = 'ITENS_LOCACAO.COD_EQUIPAMENTO'
    end
    object TItensLocacaoCOD_MOTORISTA: TIntegerField
      FieldName = 'COD_MOTORISTA'
      Origin = 'ITENS_LOCACAO.COD_MOTORISTA'
    end
    object TItensLocacaoTABPRECOKM_ATIVO: TIBStringField
      FieldName = 'TABPRECOKM_ATIVO'
      Origin = 'ITENS_LOCACAO.TABPRECOKM_ATIVO'
      FixedChar = True
      Size = 1
    end
    object TItensLocacaoVLRKM_COBRADO: TIBBCDField
      FieldName = 'VLRKM_COBRADO'
      Origin = 'ITENS_LOCACAO.VLRKM_COBRADO'
      Precision = 18
      Size = 2
    end
    object TItensLocacaoTOTAL_FINAL: TIBBCDField
      FieldName = 'TOTAL_FINAL'
      Origin = 'ITENS_LOCACAO.TOTAL_FINAL'
      Precision = 18
      Size = 2
    end
    object TItensLocacaoVALORTOTHRS: TIBBCDField
      FieldName = 'VALORTOTHRS'
      Origin = 'ITENS_LOCACAO.VALORTOTHRS'
      Precision = 18
      Size = 2
    end
    object TItensLocacaoTOTAL_HORAS: TTimeField
      FieldName = 'TOTAL_HORAS'
      Origin = 'ITENS_LOCACAO.TOTAL_HORAS'
    end
  end
  object UItensLocacao: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  COD_SERVICO,'
      '  COD_LOCACAO,'
      '  COD_ORDEM,'
      '  COD_TABPRECO,'
      '  DIA_SEMANA,'
      '  HORA_MINIMA,'
      '  HRS_NORMAIS,'
      '  HRS_EXTRAS,'
      '  VLR_NORMAL,'
      '  VLR_EXTRA,'
      '  TOTAL_NORMAL,'
      '  TOTAL_EXTRA,'
      '  DATA,'
      '  VLRSERV_COBRADO,'
      '  KM_INI,'
      '  KM_FINAL,'
      '  KM_TOTAL,'
      '  VALORTOTKM,'
      '  HMAT_INI,'
      '  HMAT_FIM,'
      '  TABPRECOSERV_ATIVO,'
      '  HVESP_INI,'
      '  HVESP_FIM,'
      '  COD_EQUIPAMENTO,'
      '  COD_MOTORISTA,'
      '  TABPRECOKM_ATIVO,'
      '  VLRKM_COBRADO,'
      '  TOTAL_FINAL,'
      '  VALORTOTHRS,'
      '  TOTAL_HORAS'
      'from ITENS_LOCACAO '
      'where'
      '  COD_SERVICO = :COD_SERVICO')
    ModifySQL.Strings = (
      'update ITENS_LOCACAO'
      'set'
      '  COD_SERVICO = :COD_SERVICO,'
      '  COD_LOCACAO = :COD_LOCACAO,'
      '  COD_ORDEM = :COD_ORDEM,'
      '  COD_TABPRECO = :COD_TABPRECO,'
      '  DIA_SEMANA = :DIA_SEMANA,'
      '  HORA_MINIMA = :HORA_MINIMA,'
      '  HRS_NORMAIS = :HRS_NORMAIS,'
      '  HRS_EXTRAS = :HRS_EXTRAS,'
      '  VLR_NORMAL = :VLR_NORMAL,'
      '  VLR_EXTRA = :VLR_EXTRA,'
      '  TOTAL_NORMAL = :TOTAL_NORMAL,'
      '  TOTAL_EXTRA = :TOTAL_EXTRA,'
      '  DATA = :DATA,'
      '  VLRSERV_COBRADO = :VLRSERV_COBRADO,'
      '  KM_INI = :KM_INI,'
      '  KM_FINAL = :KM_FINAL,'
      '  KM_TOTAL = :KM_TOTAL,'
      '  VALORTOTKM = :VALORTOTKM,'
      '  HMAT_INI = :HMAT_INI,'
      '  HMAT_FIM = :HMAT_FIM,'
      '  TABPRECOSERV_ATIVO = :TABPRECOSERV_ATIVO,'
      '  HVESP_INI = :HVESP_INI,'
      '  HVESP_FIM = :HVESP_FIM,'
      '  COD_EQUIPAMENTO = :COD_EQUIPAMENTO,'
      '  COD_MOTORISTA = :COD_MOTORISTA,'
      '  TABPRECOKM_ATIVO = :TABPRECOKM_ATIVO,'
      '  VLRKM_COBRADO = :VLRKM_COBRADO,'
      '  TOTAL_FINAL = :TOTAL_FINAL,'
      '  VALORTOTHRS = :VALORTOTHRS,'
      '  TOTAL_HORAS = :TOTAL_HORAS'
      'where'
      '  COD_SERVICO = :OLD_COD_SERVICO')
    InsertSQL.Strings = (
      'insert into ITENS_LOCACAO'
      
        '  (COD_SERVICO, COD_LOCACAO, COD_ORDEM, COD_TABPRECO, DIA_SEMANA' +
        ', HORA_MINIMA, '
      
        '   HRS_NORMAIS, HRS_EXTRAS, VLR_NORMAL, VLR_EXTRA, TOTAL_NORMAL,' +
        ' TOTAL_EXTRA, '
      
        '   DATA, VLRSERV_COBRADO, KM_INI, KM_FINAL, KM_TOTAL, VALORTOTKM' +
        ', HMAT_INI, '
      
        '   HMAT_FIM, TABPRECOSERV_ATIVO, HVESP_INI, HVESP_FIM, COD_EQUIP' +
        'AMENTO, '
      
        '   COD_MOTORISTA, TABPRECOKM_ATIVO, VLRKM_COBRADO, TOTAL_FINAL, ' +
        'VALORTOTHRS, '
      '   TOTAL_HORAS)'
      'values'
      
        '  (:COD_SERVICO, :COD_LOCACAO, :COD_ORDEM, :COD_TABPRECO, :DIA_S' +
        'EMANA, '
      
        '   :HORA_MINIMA, :HRS_NORMAIS, :HRS_EXTRAS, :VLR_NORMAL, :VLR_EX' +
        'TRA, :TOTAL_NORMAL, '
      
        '   :TOTAL_EXTRA, :DATA, :VLRSERV_COBRADO, :KM_INI, :KM_FINAL, :K' +
        'M_TOTAL, '
      
        '   :VALORTOTKM, :HMAT_INI, :HMAT_FIM, :TABPRECOSERV_ATIVO, :HVES' +
        'P_INI, '
      
        '   :HVESP_FIM, :COD_EQUIPAMENTO, :COD_MOTORISTA, :TABPRECOKM_ATI' +
        'VO, :VLRKM_COBRADO, '
      '   :TOTAL_FINAL, :VALORTOTHRS, :TOTAL_HORAS)')
    DeleteSQL.Strings = (
      'delete from ITENS_LOCACAO'
      'where'
      '  COD_SERVICO = :OLD_COD_SERVICO')
    Left = 583
    Top = 112
  end
  object DSItensLocacao: TDataSource
    DataSet = TItensLocacao
    Left = 584
    Top = 157
  end
  object TServNFSE: TIBQuery
    Database = DbServ
    Transaction = IBT
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select   FIRST 1 *   from SERVICO_NFSE')
    UpdateObject = UServNFSE
    GeneratorField.Field = 'COD_CST'
    Left = 323
    Top = 65
    object TServNFSECOD_SERVICO: TIntegerField
      FieldName = 'COD_SERVICO'
      Origin = 'SERVICO_NFSE.COD_SERVICO'
      Required = True
    end
    object TServNFSENUM_SERVICO: TIBStringField
      FieldName = 'NUM_SERVICO'
      Origin = 'SERVICO_NFSE.NUM_SERVICO'
      Size = 10
    end
    object TServNFSEDESCRICAO: TIBStringField
      FieldName = 'DESCRICAO'
      Origin = 'SERVICO_NFSE.DESCRICAO'
      Size = 100
    end
    object TServNFSEATIVO: TIBStringField
      FieldName = 'ATIVO'
      Origin = 'SERVICO_NFSE.ATIVO'
      FixedChar = True
      Size = 1
    end
  end
  object UServNFSE: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  COD_SERVICO,'
      '  NUM_SERVICO,'
      '  DESCRICAO,'
      '  ATIVO'
      'from SERVICO_NFSE '
      'where'
      '  COD_SERVICO = :COD_SERVICO')
    ModifySQL.Strings = (
      'update SERVICO_NFSE'
      'set'
      '  COD_SERVICO = :COD_SERVICO,'
      '  NUM_SERVICO = :NUM_SERVICO,'
      '  DESCRICAO = :DESCRICAO,'
      '  ATIVO = :ATIVO'
      'where'
      '  COD_SERVICO = :OLD_COD_SERVICO')
    InsertSQL.Strings = (
      'insert into SERVICO_NFSE'
      '  (COD_SERVICO, NUM_SERVICO, DESCRICAO, ATIVO)'
      'values'
      '  (:COD_SERVICO, :NUM_SERVICO, :DESCRICAO, :ATIVO)')
    DeleteSQL.Strings = (
      'delete from SERVICO_NFSE'
      'where'
      '  COD_SERVICO = :OLD_COD_SERVICO')
    Left = 323
    Top = 107
  end
  object DSServNFSE: TDataSource
    DataSet = TServNFSE
    Left = 323
    Top = 151
  end
  object TControlaExpedicao: TIBQuery
    Database = DbServ
    Transaction = IBT
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'SELECT FIRST 1 *  FROM CONTROLA_EXPEDICAO')
    Left = 672
    Top = 64
    object TControlaExpedicaoCOD_CONTROLE: TIntegerField
      FieldName = 'COD_CONTROLE'
      Origin = 'CONTROLA_EXPEDICAO.COD_CONTROLE'
      Required = True
    end
    object TControlaExpedicaoCOD_USUARIO: TIntegerField
      FieldName = 'COD_USUARIO'
      Origin = 'CONTROLA_EXPEDICAO.COD_USUARIO'
    end
    object TControlaExpedicaoNUM_ORDEM: TIntegerField
      FieldName = 'NUM_ORDEM'
      Origin = 'CONTROLA_EXPEDICAO.NUM_ORDEM'
    end
    object TControlaExpedicaoOPERACAO: TIBStringField
      FieldName = 'OPERACAO'
      Origin = 'CONTROLA_EXPEDICAO.OPERACAO'
      Size = 50
    end
    object TControlaExpedicaoDATA_HORA: TDateTimeField
      FieldName = 'DATA_HORA'
      Origin = 'CONTROLA_EXPEDICAO.DATA_HORA'
    end
  end
  object UControlaExpedicao: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  COD_CONTROLE,'
      '  COD_USUARIO,'
      '  NUM_ORDEM,'
      '  OPERACAO,'
      '  DATA_HORA'
      'from CONTROLA_EXPEDICAO '
      'where'
      '  COD_CONTROLE = :COD_CONTROLE')
    ModifySQL.Strings = (
      'update CONTROLA_EXPEDICAO'
      'set'
      '  COD_CONTROLE = :COD_CONTROLE,'
      '  COD_USUARIO = :COD_USUARIO,'
      '  NUM_ORDEM = :NUM_ORDEM,'
      '  OPERACAO = :OPERACAO,'
      '  DATA_HORA = :DATA_HORA'
      'where'
      '  COD_CONTROLE = :OLD_COD_CONTROLE')
    InsertSQL.Strings = (
      'insert into CONTROLA_EXPEDICAO'
      '  (COD_CONTROLE, COD_USUARIO, NUM_ORDEM, OPERACAO, DATA_HORA)'
      'values'
      '  (:COD_CONTROLE, :COD_USUARIO, :NUM_ORDEM, :OPERACAO, '
      ':DATA_HORA)')
    DeleteSQL.Strings = (
      'delete from CONTROLA_EXPEDICAO'
      'where'
      '  COD_CONTROLE = :OLD_COD_CONTROLE')
    Left = 672
    Top = 112
  end
  object DSControlaExpedicao: TDataSource
    DataSet = TControlaExpedicao
    Left = 672
    Top = 160
  end
  object TAcessorios: TIBQuery
    Database = DbServ
    Transaction = IBT
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'SELECT * FROM ACESSORIOS')
    UpdateObject = UAcessorios
    Left = 744
    Top = 56
    object TAcessoriosCOD_ACESSORIOS: TIntegerField
      FieldName = 'COD_ACESSORIOS'
      Origin = 'ACESSORIOS.COD_ACESSORIOS'
      Required = True
    end
    object TAcessoriosCOD_EQUIPAMENTO: TIntegerField
      FieldName = 'COD_EQUIPAMENTO'
      Origin = 'ACESSORIOS.COD_EQUIPAMENTO'
    end
    object TAcessoriosCOD_ESTOQUE: TIntegerField
      FieldName = 'COD_ESTOQUE'
      Origin = 'ACESSORIOS.COD_ESTOQUE'
    end
    object TAcessoriosQUANTIDADE: TIBBCDField
      FieldName = 'QUANTIDADE'
      Origin = 'ACESSORIOS.QUANTIDADE'
      Precision = 18
      Size = 3
    end
    object TAcessoriosVALORLOCA: TIBStringField
      FieldName = 'VALORLOCA'
      Origin = 'ACESSORIOS.VALORLOCA'
      FixedChar = True
      Size = 1
    end
  end
  object UAcessorios: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  COD_ACESSORIOS,'
      '  COD_EQUIPAMENTO,'
      '  COD_ESTOQUE,'
      '  QUANTIDADE,'
      '  VALORLOCA'
      'from ACESSORIOS '
      'where'
      '  COD_ACESSORIOS = :COD_ACESSORIOS')
    ModifySQL.Strings = (
      'update ACESSORIOS'
      'set'
      '  COD_ACESSORIOS = :COD_ACESSORIOS,'
      '  COD_EQUIPAMENTO = :COD_EQUIPAMENTO,'
      '  COD_ESTOQUE = :COD_ESTOQUE,'
      '  QUANTIDADE = :QUANTIDADE,'
      '  VALORLOCA = :VALORLOCA'
      'where'
      '  COD_ACESSORIOS = :OLD_COD_ACESSORIOS')
    InsertSQL.Strings = (
      'insert into ACESSORIOS'
      '  (COD_ACESSORIOS, COD_EQUIPAMENTO, COD_ESTOQUE, QUANTIDADE, '
      'VALORLOCA)'
      'values'
      
        '  (:COD_ACESSORIOS, :COD_EQUIPAMENTO, :COD_ESTOQUE, :QUANTIDADE,' +
        ' '
      ':VALORLOCA)')
    DeleteSQL.Strings = (
      'delete from ACESSORIOS'
      'where'
      '  COD_ACESSORIOS = :OLD_COD_ACESSORIOS')
    Left = 744
    Top = 112
  end
  object DSAcessorios: TDataSource
    DataSet = TAcessorios
    Left = 744
    Top = 168
  end
end
