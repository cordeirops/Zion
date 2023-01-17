object DMFiscal: TDMFiscal
  OldCreateOrder = False
  Left = 343
  Top = 247
  Height = 449
  Width = 799
  object IBTFiscal: TIBTransaction
    Active = False
    DefaultDatabase = DBFiscal
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    AutoStopAction = saNone
    Left = 64
    Top = 8
  end
  object DBFiscal: TIBDatabase
    DatabaseName = 'note:'
    Params.Strings = (
      'user_name=SYSDBA'
      'password=masterkey'
      'lc_ctype=ISO8859_1'
      'sql_role_name=3')
    LoginPrompt = False
    DefaultTransaction = IBTFiscal
    IdleTimer = 0
    SQLDialect = 3
    TraceFlags = [tfQExecute, tfError, tfStmt]
    Left = 24
    Top = 8
  end
  object TR60: TIBQuery
    Database = DBFiscal
    Transaction = IBTFiscal
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select  first 1 * from R60')
    UpdateObject = UReg60
    GeneratorField.Field = 'COD_LOJAACES'
    Left = 24
    Top = 80
    object TR60COD_R60: TIntegerField
      FieldName = 'COD_R60'
      Origin = 'R60.COD_R60'
    end
    object TR60NUMSERIE: TIBStringField
      FieldName = 'NUMSERIE'
      Origin = 'R60.NUMSERIE'
    end
    object TR60DTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
      Origin = 'R60.DTEMISSAO'
    end
    object TR60NUMORDEM: TIBStringField
      FieldName = 'NUMORDEM'
      Origin = 'R60.NUMORDEM'
      Size = 3
    end
    object TR60MODELODOC: TIBStringField
      FieldName = 'MODELODOC'
      Origin = 'R60.MODELODOC'
      FixedChar = True
      Size = 2
    end
    object TR60CANCELAMENTO: TIBBCDField
      FieldName = 'CANCELAMENTO'
      Origin = 'R60.CANCELAMENTO'
      Precision = 18
      Size = 2
    end
    object TR60DESCONTO: TIBBCDField
      FieldName = 'DESCONTO'
      Origin = 'R60.DESCONTO'
      Precision = 18
      Size = 2
    end
    object TR60SUBTRIBUTARIA: TIBBCDField
      FieldName = 'SUBTRIBUTARIA'
      Origin = 'R60.SUBTRIBUTARIA'
      Precision = 18
      Size = 2
    end
    object TR60NCONTINI: TIntegerField
      FieldName = 'NCONTINI'
      Origin = 'R60.NCONTINI'
    end
    object TR60NCONTFIM: TIntegerField
      FieldName = 'NCONTFIM'
      Origin = 'R60.NCONTFIM'
    end
    object TR60NCONTREDZ: TIntegerField
      FieldName = 'NCONTREDZ'
      Origin = 'R60.NCONTREDZ'
    end
    object TR60CONTREINICIO: TIntegerField
      FieldName = 'CONTREINICIO'
      Origin = 'R60.CONTREINICIO'
    end
    object TR60VLRTGERAL: TIBBCDField
      FieldName = 'VLRTGERAL'
      Origin = 'R60.VLRTGERAL'
      Precision = 18
      Size = 2
    end
    object TR60VLRVNDBRUTA: TIBBCDField
      FieldName = 'VLRVNDBRUTA'
      Origin = 'R60.VLRVNDBRUTA'
      Precision = 18
      Size = 2
    end
    object TR60ALQ01: TIBBCDField
      FieldName = 'ALQ01'
      Origin = 'R60.ALQ01'
      Precision = 4
      Size = 2
    end
    object TR60ALQ02: TIBBCDField
      FieldName = 'ALQ02'
      Origin = 'R60.ALQ02'
      Precision = 4
      Size = 2
    end
    object TR60ALQ03: TIBBCDField
      FieldName = 'ALQ03'
      Origin = 'R60.ALQ03'
      Precision = 4
      Size = 2
    end
    object TR60ALQ04: TIBBCDField
      FieldName = 'ALQ04'
      Origin = 'R60.ALQ04'
      Precision = 4
      Size = 2
    end
    object TR60ALQ05: TIBBCDField
      FieldName = 'ALQ05'
      Origin = 'R60.ALQ05'
      Precision = 4
      Size = 2
    end
    object TR60VLRTPARC01: TIBBCDField
      FieldName = 'VLRTPARC01'
      Origin = 'R60.VLRTPARC01'
      Precision = 18
      Size = 2
    end
    object TR60VLRTPARC02: TIBBCDField
      FieldName = 'VLRTPARC02'
      Origin = 'R60.VLRTPARC02'
      Precision = 18
      Size = 2
    end
    object TR60VLRTPARC03: TIBBCDField
      FieldName = 'VLRTPARC03'
      Origin = 'R60.VLRTPARC03'
      Precision = 18
      Size = 2
    end
    object TR60VLRTPARC04: TIBBCDField
      FieldName = 'VLRTPARC04'
      Origin = 'R60.VLRTPARC04'
      Precision = 18
      Size = 2
    end
    object TR60VLRTPARC05: TIBBCDField
      FieldName = 'VLRTPARC05'
      Origin = 'R60.VLRTPARC05'
      Precision = 18
      Size = 2
    end
    object TR60IMP01: TIBBCDField
      FieldName = 'IMP01'
      Origin = 'R60.IMP01'
      Precision = 18
      Size = 2
    end
    object TR60IMP02: TIBBCDField
      FieldName = 'IMP02'
      Origin = 'R60.IMP02'
      Precision = 18
      Size = 2
    end
    object TR60IMP03: TIBBCDField
      FieldName = 'IMP03'
      Origin = 'R60.IMP03'
      Precision = 18
      Size = 2
    end
    object TR60IMP04: TIBBCDField
      FieldName = 'IMP04'
      Origin = 'R60.IMP04'
      Precision = 18
      Size = 2
    end
    object TR60IMP05: TIBBCDField
      FieldName = 'IMP05'
      Origin = 'R60.IMP05'
      Precision = 18
      Size = 2
    end
  end
  object UReg60: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  COD_R60,'
      '  NUMSERIE,'
      '  DTEMISSAO,'
      '  NUMORDEM,'
      '  MODELODOC,'
      '  CANCELAMENTO,'
      '  DESCONTO,'
      '  SUBTRIBUTARIA,'
      '  NCONTINI,'
      '  NCONTFIM,'
      '  NCONTREDZ,'
      '  CONTREINICIO,'
      '  VLRTGERAL,'
      '  VLRVNDBRUTA,'
      '  ALQ01,'
      '  ALQ02,'
      '  ALQ03,'
      '  ALQ04,'
      '  ALQ05,'
      '  VLRTPARC01,'
      '  VLRTPARC02,'
      '  VLRTPARC03,'
      '  VLRTPARC04,'
      '  VLRTPARC05,'
      '  IMP01,'
      '  IMP02,'
      '  IMP03,'
      '  IMP04,'
      '  IMP05'
      'from R60 '
      'where'
      '  COD_R60 = :COD_R60')
    ModifySQL.Strings = (
      'update R60'
      'set'
      '  COD_R60 = :COD_R60,'
      '  NUMSERIE = :NUMSERIE,'
      '  DTEMISSAO = :DTEMISSAO,'
      '  NUMORDEM = :NUMORDEM,'
      '  MODELODOC = :MODELODOC,'
      '  CANCELAMENTO = :CANCELAMENTO,'
      '  DESCONTO = :DESCONTO,'
      '  SUBTRIBUTARIA = :SUBTRIBUTARIA,'
      '  NCONTINI = :NCONTINI,'
      '  NCONTFIM = :NCONTFIM,'
      '  NCONTREDZ = :NCONTREDZ,'
      '  CONTREINICIO = :CONTREINICIO,'
      '  VLRTGERAL = :VLRTGERAL,'
      '  VLRVNDBRUTA = :VLRVNDBRUTA,'
      '  ALQ01 = :ALQ01,'
      '  ALQ02 = :ALQ02,'
      '  ALQ03 = :ALQ03,'
      '  ALQ04 = :ALQ04,'
      '  ALQ05 = :ALQ05,'
      '  VLRTPARC01 = :VLRTPARC01,'
      '  VLRTPARC02 = :VLRTPARC02,'
      '  VLRTPARC03 = :VLRTPARC03,'
      '  VLRTPARC04 = :VLRTPARC04,'
      '  VLRTPARC05 = :VLRTPARC05,'
      '  IMP01 = :IMP01,'
      '  IMP02 = :IMP02,'
      '  IMP03 = :IMP03,'
      '  IMP04 = :IMP04,'
      '  IMP05 = :IMP05'
      'where'
      '  COD_R60 = :OLD_COD_R60')
    InsertSQL.Strings = (
      'insert into R60'
      
        '  (COD_R60, NUMSERIE, DTEMISSAO, NUMORDEM, MODELODOC, CANCELAMEN' +
        'TO, DESCONTO, '
      
        '   SUBTRIBUTARIA, NCONTINI, NCONTFIM, NCONTREDZ, CONTREINICIO, V' +
        'LRTGERAL, '
      
        '   VLRVNDBRUTA, ALQ01, ALQ02, ALQ03, ALQ04, ALQ05, VLRTPARC01, V' +
        'LRTPARC02, '
      
        '   VLRTPARC03, VLRTPARC04, VLRTPARC05, IMP01, IMP02, IMP03, IMP0' +
        '4, IMP05)'
      'values'
      
        '  (:COD_R60, :NUMSERIE, :DTEMISSAO, :NUMORDEM, :MODELODOC, :CANC' +
        'ELAMENTO, '
      
        '   :DESCONTO, :SUBTRIBUTARIA, :NCONTINI, :NCONTFIM, :NCONTREDZ, ' +
        ':CONTREINICIO, '
      
        '   :VLRTGERAL, :VLRVNDBRUTA, :ALQ01, :ALQ02, :ALQ03, :ALQ04, :AL' +
        'Q05, :VLRTPARC01, '
      
        '   :VLRTPARC02, :VLRTPARC03, :VLRTPARC04, :VLRTPARC05, :IMP01, :' +
        'IMP02, '
      '   :IMP03, :IMP04, :IMP05)')
    DeleteSQL.Strings = (
      'delete from R60'
      'where'
      '  COD_R60 = :OLD_COD_R60')
    Left = 24
    Top = 128
  end
  object DReg60: TDataSource
    DataSet = TR60
    Left = 25
    Top = 176
  end
  object TAlx: TIBQuery
    Database = DBFiscal
    Transaction = IBTFiscal
    BufferChunks = 100
    CachedUpdates = False
    SQL.Strings = (
      'select * from R60')
    GeneratorField.Field = 'COD_LOJAACES'
    Left = 184
    Top = 8
  end
  object DAlx: TDataSource
    DataSet = TAlx
    Left = 225
    Top = 9
  end
  object TAlx2: TIBQuery
    Database = DBFiscal
    Transaction = IBTFiscal
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from R60')
    GeneratorField.Field = 'COD_LOJAACES'
    Left = 280
    Top = 8
  end
  object DAlx2: TDataSource
    DataSet = TAlx2
    Left = 321
    Top = 9
  end
  object DSpedC100: TDataSource
    Left = 280
    Top = 232
  end
  object DSpedC190: TDataSource
    DataSet = SpedC190
    Left = 368
    Top = 232
  end
  object DSpedC170: TDataSource
    DataSet = SpedC170
    Left = 464
    Top = 232
  end
  object SpedC190: TClientDataSet
    Active = True
    Aggregates = <>
    FileName = 'C:\MZR\Arquivos\Sped\tmp\C190.xml'
    FieldDefs = <
      item
        Name = 'CODIGO'
        Attributes = [faUnNamed]
        DataType = ftInteger
      end
      item
        Name = 'GERADOR'
        Attributes = [faUnNamed]
        DataType = ftString
        Size = 20
      end
      item
        Name = 'COD_GERADOR'
        Attributes = [faUnNamed]
        DataType = ftInteger
      end
      item
        Name = 'CST_ICMS'
        Attributes = [faUnNamed]
        DataType = ftString
        Size = 20
      end
      item
        Name = 'CFOP'
        Attributes = [faUnNamed]
        DataType = ftString
        Size = 20
      end
      item
        Name = 'ALIQ_ICMS'
        Attributes = [faUnNamed]
        DataType = ftCurrency
      end
      item
        Name = 'VL_OPR'
        Attributes = [faUnNamed]
        DataType = ftCurrency
      end
      item
        Name = 'VL_BC_ICMS'
        Attributes = [faUnNamed]
        DataType = ftCurrency
      end
      item
        Name = 'VL_ICMS'
        Attributes = [faUnNamed]
        DataType = ftCurrency
      end
      item
        Name = 'VL_BC_ICMS_ST'
        Attributes = [faUnNamed]
        DataType = ftCurrency
      end
      item
        Name = 'VL_RED_BC'
        Attributes = [faUnNamed]
        DataType = ftCurrency
      end
      item
        Name = 'VL_IPI'
        Attributes = [faUnNamed]
        DataType = ftCurrency
      end
      item
        Name = 'COD_OBS'
        Attributes = [faUnNamed]
        DataType = ftString
        Size = 20
      end
      item
        Name = 'VL_ICMS_ST'
        Attributes = [faUnNamed]
        DataType = ftCurrency
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 368
    Top = 184
    Data = {
      8E0700009619E0BD01000000180000000E000E00000003000000940206434F44
      49474F04000100100000000747455241444F5201004900100001000557494454
      480200020014000B434F445F47455241444F520400010010000000084353545F
      49434D5301004900100001000557494454480200020014000443464F50010049
      001000010005574944544802000200140009414C49515F49434D530800040010
      00010007535542545950450200490006004D6F6E65790006564C5F4F50520800
      04001000010007535542545950450200490006004D6F6E6579000A564C5F4243
      5F49434D53080004001000010007535542545950450200490006004D6F6E6579
      0007564C5F49434D53080004001000010007535542545950450200490006004D
      6F6E6579000D564C5F42435F49434D535F535408000400100001000753554254
      5950450200490006004D6F6E65790009564C5F5245445F424308000400100001
      0007535542545950450200490006004D6F6E65790006564C5F49504908000400
      1000010007535542545950450200490006004D6F6E65790007434F445F4F4253
      01004900100001000557494454480200020014000A564C5F49434D535F535408
      0004001000010007535542545950450200490006004D6F6E65790001000A4348
      414E47455F4C4F47040082002A00000001000000000000000400000002000000
      0000000004000000030000000000000004000000040000000000000004000000
      0500000000000000040000000600000000000000040000000700000000000000
      040000000800000000000000040000000900000000000000040000000A000000
      00000000040000000B00000000000000040000000C0000000000000004000000
      0D00000000000000040000000E00000000000000040000000400000000010000
      00025056E30700000330363004353430350000000000000000D7A3703D0AFB81
      400000000000000000000000000000000052B81E85EBA1734000000000000000
      0000000000000000000100295C8FC2F5385740040000000002000000025056E3
      0700000330303004353130320000000000002840000000000000F83F00000000
      0000F83F0AD7A3703D0AC73F0000000000000000000000000000000000000000
      0000000001000000000000000000040000000001000000025056E40700000330
      3630043534303500000000000000005C8FC2F528608840000000000000000000
      00000000000000AE47E17A141281400000000000000000000000000000000001
      00295C8FC2F5306940040000000002000000025056E407000003303030043531
      3032000000000000284000000000000010400000000000001040B81E85EB51B8
      DE3F000000000000000000000000000000000000000000000000010000000000
      00000000040000000001000000025056E5070000033036300435343035000000
      0000000000E27A14AE47018740000000000000000000000000000000001F85EB
      51B8CA8F40000000000000000000000000000000000100A4703D0AD743524004
      0000000001000000025056E60700000330363004353430350000000000000000
      E17A14AE47E1844000000000000000000000000000000000E17A14AE47014540
      00000000000000000000000000000000010052B81E85EB512740040000000002
      000000025056E607000003303030043531303200000000000028400000000000
      00F83F000000000000F83F0AD7A3703D0AC73F00000000000000000000000000
      0000000000000000000000010000000000000000000400000000010000000250
      56E7070000033036300435343035000000000000000099999999992181400000
      00000000000000000000000000008FC2F5285C4F674000000000000000000000
      0000000000000100AE47E17A14AE4440040000000002000000025056E7070000
      0330303004353130320000000000002840000000000000F83F000000000000F8
      3F0AD7A3703D0AC73F0000000000000000000000000000000000000000000000
      0001000000000000000000040000000001000000025056E80700000330363004
      3534303500000000000000000000000000BA8040000000000000000000000000
      0000000000000000000000000000000000000000000000000000000001000000
      000000000000040000000002000000025056E807000003303030043531303200
      00000000002840000000000000184000000000000018400AD7A3703D0AE73F00
      0000000000000000000000000000000000000000000000010000000000000000
      00040000000001000000025056E9070000033036300435343035000000000000
      0000000000000034844000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000100000000000000000004000000
      0002000000025056E90700000330303004353130320000000000002840666666
      6666F653406666666666F65340295C8FC2F52823400000000000000000000000
      0000000000000000000000000001000000000000000000040000000001000000
      025056EA0700000330363004353430350000000000000000CDCCCCCCCCF88740
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000001000000000000000000}
  end
  object SpedC100: TClientDataSet
    Active = True
    Aggregates = <>
    FileName = 'C:\MZR\Arquivos\Sped\tmp\C100.xml'
    FieldDefs = <
      item
        Name = 'CODIGO'
        Attributes = [faUnNamed]
        DataType = ftInteger
      end
      item
        Name = 'TP_OPER'
        Attributes = [faUnNamed]
        DataType = ftString
        Size = 20
      end
      item
        Name = 'IND_OPER'
        Attributes = [faUnNamed]
        DataType = ftInteger
      end
      item
        Name = 'IND_EMIT'
        Attributes = [faUnNamed]
        DataType = ftSmallint
      end
      item
        Name = 'COD_PART'
        Attributes = [faUnNamed]
        DataType = ftInteger
      end
      item
        Name = 'COD_MOD'
        Attributes = [faUnNamed]
        DataType = ftSmallint
      end
      item
        Name = 'COD_SIT'
        Attributes = [faUnNamed]
        DataType = ftString
        Size = 20
      end
      item
        Name = 'SER'
        Attributes = [faUnNamed]
        DataType = ftSmallint
      end
      item
        Name = 'NUM_DOC'
        Attributes = [faUnNamed]
        DataType = ftString
        Size = 20
      end
      item
        Name = 'CHV_NFE'
        Attributes = [faUnNamed]
        DataType = ftString
        Size = 50
      end
      item
        Name = 'DT_DOC'
        Attributes = [faUnNamed]
        DataType = ftDate
      end
      item
        Name = 'DT_E_S'
        Attributes = [faUnNamed]
        DataType = ftDate
      end
      item
        Name = 'VL_DOC'
        Attributes = [faUnNamed]
        DataType = ftCurrency
      end
      item
        Name = 'IND_PGTO'
        Attributes = [faUnNamed]
        DataType = ftSmallint
      end
      item
        Name = 'VL_DESC'
        Attributes = [faUnNamed]
        DataType = ftCurrency
      end
      item
        Name = 'VL_ABAT_NT'
        Attributes = [faUnNamed]
        DataType = ftCurrency
      end
      item
        Name = 'VL_MERC'
        Attributes = [faUnNamed]
        DataType = ftCurrency
      end
      item
        Name = 'IND_FRT'
        Attributes = [faUnNamed]
        DataType = ftSmallint
      end
      item
        Name = 'VL_FRT'
        Attributes = [faUnNamed]
        DataType = ftCurrency
      end
      item
        Name = 'VL_SEG'
        Attributes = [faUnNamed]
        DataType = ftCurrency
      end
      item
        Name = 'VL_OUT_DA'
        Attributes = [faUnNamed]
        DataType = ftCurrency
      end
      item
        Name = 'VL_BC_ICMS'
        Attributes = [faUnNamed]
        DataType = ftCurrency
      end
      item
        Name = 'VL_ICMS'
        Attributes = [faUnNamed]
        DataType = ftCurrency
      end
      item
        Name = 'VL_BC_ICMS_ST'
        Attributes = [faUnNamed]
        DataType = ftCurrency
      end
      item
        Name = 'VL_ICMS_ST'
        Attributes = [faUnNamed]
        DataType = ftCurrency
      end
      item
        Name = 'VL_IPI'
        Attributes = [faUnNamed]
        DataType = ftCurrency
      end
      item
        Name = 'VL_PIS'
        Attributes = [faUnNamed]
        DataType = ftCurrency
      end
      item
        Name = 'VL_COFINS'
        Attributes = [faUnNamed]
        DataType = ftCurrency
      end
      item
        Name = 'VL_PIS_ST'
        Attributes = [faUnNamed]
        DataType = ftCurrency
      end
      item
        Name = 'VL_COFINS_ST'
        Attributes = [faUnNamed]
        DataType = ftCurrency
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 280
    Top = 184
    Data = {
      E70A00009619E0BD01000000180000001E000800000003000000EF0306434F44
      49474F04000100100000000754505F4F50455201004900100001000557494454
      4802000200140008494E445F4F504552040001001000000008494E445F454D49
      54020001001000000008434F445F50415254040001001000000007434F445F4D
      4F44020001001000000007434F445F5349540100490010000100055749445448
      020002001400035345520200010010000000074E554D5F444F43010049001000
      0100055749445448020002001400074348565F4E464501004900100001000557
      494454480200020032000644545F444F4304000600100000000644545F455F53
      040006001000000006564C5F444F430800040010000100075355425459504502
      00490006004D6F6E65790008494E445F5047544F020001001000000007564C5F
      44455343080004001000010007535542545950450200490006004D6F6E657900
      0A564C5F414241545F4E54080004001000010007535542545950450200490006
      004D6F6E65790007564C5F4D4552430800040010000100075355425459504502
      00490006004D6F6E65790007494E445F465254020001001000000006564C5F46
      5254080004001000010007535542545950450200490006004D6F6E6579000656
      4C5F534547080004001000010007535542545950450200490006004D6F6E6579
      0009564C5F4F55545F4441080004001000010007535542545950450200490006
      004D6F6E6579000A564C5F42435F49434D530800040010000100075355425459
      50450200490006004D6F6E65790007564C5F49434D5308000400100001000753
      5542545950450200490006004D6F6E6579000D564C5F42435F49434D535F5354
      080004001000010007535542545950450200490006004D6F6E6579000A564C5F
      49434D535F5354080004001000010007535542545950450200490006004D6F6E
      65790006564C5F49504908000400100001000753554254595045020049000600
      4D6F6E65790006564C5F50495308000400100001000753554254595045020049
      0006004D6F6E65790009564C5F434F46494E5308000400100001000753554254
      5950450200490006004D6F6E65790009564C5F5049535F535408000400100001
      0007535542545950450200490006004D6F6E6579000C564C5F434F46494E535F
      5354080004001000010007535542545950450200490006004D6F6E6579000100
      0A4348414E47455F4C4F47040082001800000001000000000000000400000002
      0000000000000004000000030000000000000004000000040000000000000004
      0000000500000000000000040000000600000000000000040000000700000000
      00000004000000080000000000000004000000040000000000000000E3070000
      025056010000000000100000004100023030370004313039372C343132303031
      3132333239363736303030313032363530303130303030303130393731323338
      3133333333389F400B009F400B00D7A3703D0A07824000000000000000000000
      0000000000000000A4703D0AD73F7E4009000000000000000000000000000000
      00000000000000000000000000000000F83F0AD7A3703D0AC73F52B81E85EBA1
      7340295C8FC2F538574000000000000000000000000000000000000000000000
      000000000000000000000000000000000000040000000000000000E407000002
      5056010000000000100000004100023030370004313039382C34313230303131
      3233323936373630303031303236353030313030303030313039383132313035
      31343430379F400B009F400B005C8FC2F5288088400000000000000000000000
      0000000000000052B81E85EB3382400900000000000000000000000000000000
      0000000000000000000000000000001040B81E85EB51B8DE3FAE47E17A141281
      40295C8FC2F53069400000000000000000000000000000000000000000000000
      0000000000000000000000000000000000040000000000000000E50700000250
      56010000000000100000004100023030370004313039392C3431323030313132
      3332393637363030303130323635303031303030303031303939313332383737
      323739329F400B009F400B00E27A14AE47018740000000000000000000000000
      000000000000CDCCCCCCCCB88440090000000000000000000000000000000000
      0000000000000000000000000000000000000000000000001F85EB51B8CA8F40
      A4703D0AD7435240000000000000000000000000000000000000000000000000
      00000000000000000000000000000000040000000000000000E6070000025056
      010000000000100000004100023030370004313130302C343132303031313233
      3239363736303030313032363530303130303030303131303031383332373636
      3339369F400B009F400B00E17A14AE47ED844000000000000000000000000000
      0000000000000000000090844009000000000000000000000000000000000000
      00000000000000000000000000F83F0AD7A3703D0AC73FE17A14AE4701454052
      B81E85EB51274000000000000000000000000000000000000000000000000000
      000000000000000000000000000000040000000000000000E707000002505601
      0000000000100000004100023030370004313130312C34313230303131323332
      3936373630303031303236353030313030303030313130313136313439323233
      38359F400B009F400B0099999999992D81400000000000000000000000000000
      000000003D0AD7A370C57F400900000000000000000000000000000000000000
      000000000000000000000000F83F0AD7A3703D0AC73F8FC2F5285C4F6740AE47
      E17A14AE44400000000000000000000000000000000000000000000000000000
      0000000000000000000000000000040000000000000000E80700000250560100
      00000000100000004100023030370004313130322C3431323030313132333239
      3637363030303130323635303031303030303031313032313030393237303031
      309F400B009F400B000000000000EA8040000000000000000000000000000000
      0000000000000000EA8040090000000000000000000000000000000000000000
      000000000000000000000018400AD7A3703D0AE73F0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000040000000000000000E9070000025056010000
      000000100000004100023030370004313130332C343132303031313233323936
      3736303030313032363530303130303030303131303331373931373639353932
      9F400B009F400B00CDCCCCCCCCB2864000000000000000000000000000000000
      0000CDCCCCCCCCB2864009000000000000000000000000000000000000000000
      000000006666666666F65340295C8FC2F5282340000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000040000000000000000EA07000002505601000000
      0000100000004100023030370004313130342C34313230303131323332393637
      363030303130323635303031303030303031313034313637333031353237379F
      400B009F400B00CDCCCCCCCCF887400000000000000000000000000000000000
      00CDCCCCCCCCF887400900000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000}
  end
  object SpedC170: TClientDataSet
    Active = True
    Aggregates = <>
    FileName = 'C:\MZR\Arquivos\Sped\tmp\C170.xml'
    FieldDefs = <
      item
        Name = 'NUM_ITEM'
        Attributes = [faUnNamed]
        DataType = ftSmallint
      end
      item
        Name = 'GERADOR'
        Attributes = [faUnNamed]
        DataType = ftString
        Size = 3
      end
      item
        Name = 'COD_GERADOR'
        Attributes = [faUnNamed]
        DataType = ftSmallint
      end
      item
        Name = 'DESCR_COMPL'
        Attributes = [faUnNamed]
        DataType = ftString
        Size = 200
      end
      item
        Name = 'QTD'
        Attributes = [faUnNamed]
        DataType = ftFloat
      end
      item
        Name = 'UNID'
        Attributes = [faUnNamed]
        DataType = ftString
        Size = 6
      end
      item
        Name = 'VL_ITEM'
        Attributes = [faUnNamed]
        DataType = ftFloat
      end
      item
        Name = 'VL_DESC'
        Attributes = [faUnNamed]
        DataType = ftFloat
      end
      item
        Name = 'IND_MOV'
        Attributes = [faUnNamed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'CST_ICMS'
        Attributes = [faUnNamed]
        DataType = ftString
        Size = 3
      end
      item
        Name = 'COD_ITEM'
        Attributes = [faUnNamed]
        DataType = ftString
        Size = 60
      end
      item
        Name = 'CFOP'
        Attributes = [faUnNamed]
        DataType = ftString
        Size = 4
      end
      item
        Name = 'DESC_CFOP'
        Attributes = [faUnNamed]
        DataType = ftString
        Size = 200
      end
      item
        Name = 'COD_NAT'
        Attributes = [faUnNamed]
        DataType = ftString
        Size = 10
      end
      item
        Name = 'VL_BC_ICMS'
        Attributes = [faUnNamed]
        DataType = ftFloat
      end
      item
        Name = 'ALIQ_ICMS'
        Attributes = [faUnNamed]
        DataType = ftFloat
      end
      item
        Name = 'VL_ICMS'
        Attributes = [faUnNamed]
        DataType = ftFloat
      end
      item
        Name = 'VL_BC_ICMS_ST'
        Attributes = [faUnNamed]
        DataType = ftFloat
      end
      item
        Name = 'ALIQ_ST'
        Attributes = [faUnNamed]
        DataType = ftFloat
      end
      item
        Name = 'VL_ICMS_ST'
        Attributes = [faUnNamed]
        DataType = ftFloat
      end
      item
        Name = 'IND_APUR'
        Attributes = [faUnNamed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'CST_IPI'
        Attributes = [faUnNamed]
        DataType = ftString
        Size = 2
      end
      item
        Name = 'COD_ENQ'
        Attributes = [faUnNamed]
        DataType = ftString
        Size = 3
      end
      item
        Name = 'VL_BC_IPI'
        Attributes = [faUnNamed]
        DataType = ftFloat
      end
      item
        Name = 'ALIQ_IPI'
        Attributes = [faUnNamed]
        DataType = ftFloat
      end
      item
        Name = 'VL_IPI'
        Attributes = [faUnNamed]
        DataType = ftFloat
      end
      item
        Name = 'CST_PIS'
        Attributes = [faUnNamed]
        DataType = ftString
        Size = 2
      end
      item
        Name = 'VL_BC_PIS'
        Attributes = [faUnNamed]
        DataType = ftFloat
      end
      item
        Name = 'ALIQ_PIS_PERC'
        Attributes = [faUnNamed]
        DataType = ftFloat
      end
      item
        Name = 'QUANT_BC_PIS'
        Attributes = [faUnNamed]
        DataType = ftFloat
      end
      item
        Name = 'ALIQ_PIS_VL'
        Attributes = [faUnNamed]
        DataType = ftFloat
      end
      item
        Name = 'VL_PIS'
        Attributes = [faUnNamed]
        DataType = ftFloat
      end
      item
        Name = 'CST_COFINS'
        Attributes = [faUnNamed]
        DataType = ftString
        Size = 2
      end
      item
        Name = 'VL_BC_COFINS'
        Attributes = [faUnNamed]
        DataType = ftFloat
      end
      item
        Name = 'ALIQ_COFINS_PERC'
        Attributes = [faUnNamed]
        DataType = ftFloat
      end
      item
        Name = 'QUANT_BC_COFINS'
        Attributes = [faUnNamed]
        DataType = ftFloat
      end
      item
        Name = 'ALIQ_COFINS_VL'
        Attributes = [faUnNamed]
        DataType = ftFloat
      end
      item
        Name = 'VL_COFINS'
        Attributes = [faUnNamed]
        DataType = ftFloat
      end
      item
        Name = 'COD_CTA'
        Attributes = [faUnNamed]
        DataType = ftString
        Size = 100
      end
      item
        Name = 'VL_ABAT_NT'
        Attributes = [faUnNamed]
        DataType = ftString
        Size = 100
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 464
    Top = 184
    Data = {
      A30300009619E0BD010000001800000028000000000003000000A303084E554D
      5F4954454D02000100100000000747455241444F520100490010000100055749
      4454480200020003000B434F445F47455241444F5202000100100000000B4445
      5343525F434F4D504C010049001000010005574944544802000200C800035154
      44080004001000000004554E4944010049001000010005574944544802000200
      060007564C5F4954454D080004001000000007564C5F44455343080004001000
      000007494E445F4D4F5601004900100001000557494454480200020001000843
      53545F49434D53010049001000010005574944544802000200030008434F445F
      4954454D0100490010000100055749445448020002003C000443464F50010049
      001000010005574944544802000200040009444553435F43464F500100490010
      00010005574944544802000200C80007434F445F4E4154010049001000010005
      5749445448020002000A000A564C5F42435F49434D5308000400100000000941
      4C49515F49434D53080004001000000007564C5F49434D530800040010000000
      0D564C5F42435F49434D535F5354080004001000000007414C49515F53540800
      0400100000000A564C5F49434D535F5354080004001000000008494E445F4150
      55520100490010000100055749445448020002000100074353545F4950490100
      49001000010005574944544802000200020007434F445F454E51010049001000
      010005574944544802000200030009564C5F42435F4950490800040010000000
      08414C49515F495049080004001000000006564C5F4950490800040010000000
      074353545F504953010049001000010005574944544802000200020009564C5F
      42435F50495308000400100000000D414C49515F5049535F5045524308000400
      100000000C5155414E545F42435F50495308000400100000000B414C49515F50
      49535F564C080004001000000006564C5F50495308000400100000000A435354
      5F434F46494E5301004900100001000557494454480200020002000C564C5F42
      435F434F46494E53080004001000000010414C49515F434F46494E535F504552
      4308000400100000000F5155414E545F42435F434F46494E5308000400100000
      000E414C49515F434F46494E535F564C080004001000000009564C5F434F4649
      4E53080004001000000007434F445F4354410100490010000100055749445448
      0200020064000A564C5F414241545F4E54010049001000010005574944544802
      00020064000000}
  end
end
