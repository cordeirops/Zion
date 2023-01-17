object DMMACS: TDMMACS
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 211
  Top = 207
  Height = 444
  Width = 807
  object TLojaAc: TIBQuery
    Database = DataBase
    Transaction = Transaction
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from LOJA')
    Left = 169
    Top = 72
  end
  object DSLojaAc: TDataSource
    DataSet = TLojaAc
    Left = 170
    Top = 168
  end
  object TUsuario: TIBQuery
    Database = DataBase
    Transaction = Transaction
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'SELECT * FROM USUARIO')
    UpdateObject = UPUsuario
    GeneratorField.Field = 'CODUSUARIO'
    Left = 224
    Top = 72
    object TUsuarioCODUSUARIO: TIntegerField
      FieldName = 'CODUSUARIO'
      Origin = 'USUARIO.CODUSUARIO'
      Required = True
    end
    object TUsuarioCOD_FUNCIONARIO: TIntegerField
      FieldName = 'COD_FUNCIONARIO'
      Origin = 'USUARIO.COD_FUNCIONARIO'
    end
    object TUsuarioLOGIN: TIBStringField
      FieldName = 'LOGIN'
      Origin = 'USUARIO.LOGIN'
      Size = 10
    end
    object TUsuarioSENHA: TIBStringField
      FieldName = 'SENHA'
      Origin = 'USUARIO.SENHA'
      Size = 30
    end
    object TUsuarioDATA_CAD: TDateField
      FieldName = 'DATA_CAD'
      Origin = 'USUARIO.DATA_CAD'
    end
    object TUsuarioADM: TIBStringField
      FieldName = 'ADM'
      Origin = 'USUARIO.ADM'
      FixedChar = True
      Size = 1
    end
    object TUsuarioREVRESMOV: TIBStringField
      FieldName = 'REVRESMOV'
      Origin = 'USUARIO.REVRESMOV'
      FixedChar = True
      Size = 1
    end
  end
  object UPUsuario: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  CODUSUARIO,'
      '  COD_FUNCIONARIO,'
      '  LOGIN,'
      '  SENHA,'
      '  DATA_CAD,'
      '  ADM,'
      '  REVRESMOV'
      'from USUARIO '
      'where'
      '  CODUSUARIO = :CODUSUARIO')
    ModifySQL.Strings = (
      'update USUARIO'
      'set'
      '  CODUSUARIO = :CODUSUARIO,'
      '  COD_FUNCIONARIO = :COD_FUNCIONARIO,'
      '  LOGIN = :LOGIN,'
      '  SENHA = :SENHA,'
      '  DATA_CAD = :DATA_CAD,'
      '  ADM = :ADM,'
      '  REVRESMOV = :REVRESMOV'
      'where'
      '  CODUSUARIO = :OLD_CODUSUARIO')
    InsertSQL.Strings = (
      'insert into USUARIO'
      
        '  (CODUSUARIO, COD_FUNCIONARIO, LOGIN, SENHA, DATA_CAD, ADM, REV' +
        'RESMOV)'
      'values'
      
        '  (:CODUSUARIO, :COD_FUNCIONARIO, :LOGIN, :SENHA, :DATA_CAD, :AD' +
        'M, :REVRESMOV)')
    DeleteSQL.Strings = (
      'delete from USUARIO'
      'where'
      '  CODUSUARIO = :OLD_CODUSUARIO')
    Left = 224
    Top = 120
  end
  object DSUsuario: TDataSource
    DataSet = TUsuario
    Left = 224
    Top = 168
  end
  object TALX: TIBQuery
    Tag = 5
    Database = DataBase
    Transaction = Transaction
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        ' Select vwparcr.classificacao, vwparcr.cobranca, vwparcr.cod_cli' +
        'ente, vwparcr.cod_cota,'
      
        ' vwparcr.cod_ctacor, vwparcr.cod_ctareceber, vwparcr.cod_formpag' +
        ', vwparcr.cod_loja,'
      
        ' vwparcr.cod_parant, vwparcr.cod_parcelacr, vwparcr.cod_pessoa, ' +
        'vwparcr.cod_plncta,'
      
        ' vwparcr.descricao, vwparcr.dtdebito, vwparcr.dtlanc, vwparcr.dt' +
        'venc, vwparcr.fech,'
      
        ' vwparcr.formpag, vwparcr.historico, vwparcr.mark, vwparcr.nome,' +
        ' vwparcr.numboleto,'
      
        ' vwparcr.numdoc, vwparcr.numfisc, vwparcr.numparc, vwparcr.valor' +
        ', vwparcr.scpc,'
      ' vwparcr.valorpg, vwclientecob.nome AS CLIENTE From VWparCR'
      ' Left Join devcli on vwparcr.cod_cliente = devcli.cod_devedor'
      
        ' Left Join vwclientecob on devcli.cod_clientecob = vwclientecob.' +
        'cod_clientecob'
      ' WHERE (Fech <> '#39'S'#39')'
      ' And (SCPC ='#39'1'#39')')
    Left = 16
    Top = 224
  end
  object DSALX: TDataSource
    DataSet = TALX
    Left = 16
    Top = 272
  end
  object TLojaUsu: TIBQuery
    Database = DataBase
    Transaction = Transaction
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from LOJACESSO')
    UpdateObject = UPLojaUsu
    GeneratorField.Field = 'COD_LOJAACES'
    Left = 280
    Top = 72
    object TLojaUsuCOD_LOJAACES: TIntegerField
      FieldName = 'COD_LOJAACES'
      Required = True
    end
    object TLojaUsuCOD_LOJA: TIntegerField
      FieldName = 'COD_LOJA'
    end
    object TLojaUsuCOD_USUARIO: TIntegerField
      FieldName = 'COD_USUARIO'
    end
    object TLojaUsuUSUPERMI: TIntegerField
      FieldName = 'USUPERMI'
    end
    object TLojaUsuCADCLI: TIBStringField
      FieldName = 'CADCLI'
      Size = 1
    end
    object TLojaUsuEXCLCLI: TIBStringField
      FieldName = 'EXCLCLI'
      Size = 1
    end
    object TLojaUsuLIBERACRED: TIBStringField
      FieldName = 'LIBERACRED'
      Size = 1
    end
    object TLojaUsuCAD_USUARIO: TIBStringField
      FieldName = 'CAD_USUARIO'
      Size = 1
    end
    object TLojaUsuCAD_CR: TIBStringField
      FieldName = 'CAD_CR'
      Size = 1
    end
    object TLojaUsuBAIXAR_CR: TIBStringField
      FieldName = 'BAIXAR_CR'
      Size = 1
    end
    object TLojaUsuALTEXC_CR: TIBStringField
      FieldName = 'ALTEXC_CR'
      Size = 1
    end
    object TLojaUsuCANCELBAIXA_CR: TIBStringField
      FieldName = 'CANCELBAIXA_CR'
      Size = 1
    end
    object TLojaUsuCAD_CP: TIBStringField
      FieldName = 'CAD_CP'
      Size = 1
    end
    object TLojaUsuBAIXA_CP: TIBStringField
      FieldName = 'BAIXA_CP'
      Size = 1
    end
    object TLojaUsuALTEXC_CP: TIBStringField
      FieldName = 'ALTEXC_CP'
      Size = 1
    end
    object TLojaUsuCANCELBAIXA_CP: TIBStringField
      FieldName = 'CANCELBAIXA_CP'
      Size = 1
    end
    object TLojaUsuCADCX: TIBStringField
      FieldName = 'CADCX'
      Size = 1
    end
    object TLojaUsuABRIRCX: TIBStringField
      FieldName = 'ABRIRCX'
      Size = 1
    end
    object TLojaUsuLANCX: TIBStringField
      FieldName = 'LANCX'
      Size = 1
    end
    object TLojaUsuFECHCX: TIBStringField
      FieldName = 'FECHCX'
      Size = 1
    end
    object TLojaUsuCADVEN: TIBStringField
      FieldName = 'CADVEN'
      Size = 1
    end
    object TLojaUsuCADCOTA: TIBStringField
      FieldName = 'CADCOTA'
      Size = 1
    end
    object TLojaUsuPRODUTOS: TIBStringField
      FieldName = 'PRODUTOS'
      Size = 1
    end
    object TLojaUsuPDV: TIBStringField
      FieldName = 'PDV'
      Size = 1
    end
    object TLojaUsuPEDVEN: TIBStringField
      FieldName = 'PEDVEN'
      Size = 1
    end
    object TLojaUsuORCAMENTO: TIBStringField
      FieldName = 'ORCAMENTO'
      Size = 1
    end
    object TLojaUsuALTPED: TIBStringField
      FieldName = 'ALTPED'
      Size = 1
    end
    object TLojaUsuACERTESTOQUE: TIBStringField
      FieldName = 'ACERTESTOQUE'
      Size = 1
    end
    object TLojaUsuVENDATACADO: TIBStringField
      FieldName = 'VENDATACADO'
      Size = 1
    end
    object TLojaUsuVENDAVAREJO: TIBStringField
      FieldName = 'VENDAVAREJO'
      Size = 1
    end
    object TLojaUsuRELVENDCOM: TIBStringField
      FieldName = 'RELVENDCOM'
      Size = 1
    end
    object TLojaUsuMOVBANCO: TIBStringField
      FieldName = 'MOVBANCO'
      Size = 1
    end
    object TLojaUsuCADCTACORRENTE: TIBStringField
      FieldName = 'CADCTACORRENTE'
      Size = 1
    end
    object TLojaUsuCANCVEND: TIBStringField
      FieldName = 'CANCVEND'
      Size = 1
    end
    object TLojaUsuCADFORNEC: TIBStringField
      FieldName = 'CADFORNEC'
      Size = 1
    end
    object TLojaUsuEXCLFORNEC: TIBStringField
      FieldName = 'EXCLFORNEC'
      Size = 1
    end
    object TLojaUsuCADPLANOCTA: TIBStringField
      FieldName = 'CADPLANOCTA'
      Size = 1
    end
    object TLojaUsuCADFUNC: TIBStringField
      FieldName = 'CADFUNC'
      Size = 1
    end
    object TLojaUsuALTSALFUNC: TIBStringField
      FieldName = 'ALTSALFUNC'
      Size = 1
    end
    object TLojaUsuCADFORMPAG: TIBStringField
      FieldName = 'CADFORMPAG'
      Size = 1
    end
    object TLojaUsuDESCPROD: TIBStringField
      FieldName = 'DESCPROD'
      Size = 1
    end
    object TLojaUsuEXCVENDEDOR: TIBStringField
      FieldName = 'EXCVENDEDOR'
      Size = 1
    end
    object TLojaUsuCADEMPRESA: TIBStringField
      FieldName = 'CADEMPRESA'
      Size = 1
    end
    object TLojaUsuCADLOJA: TIBStringField
      FieldName = 'CADLOJA'
      Size = 1
    end
    object TLojaUsuALTPEDCOMP: TIBStringField
      FieldName = 'ALTPEDCOMP'
      Size = 1
    end
    object TLojaUsuCADPEDCOMP: TIBStringField
      FieldName = 'CADPEDCOMP'
      Size = 1
    end
    object TLojaUsuCANCCOMPRA: TIBStringField
      FieldName = 'CANCCOMPRA'
      Size = 1
    end
    object TLojaUsuCADMOEDA: TIBStringField
      FieldName = 'CADMOEDA'
      Size = 1
    end
    object TLojaUsuEFETUARCOMPRA: TIBStringField
      FieldName = 'EFETUARCOMPRA'
      Size = 1
    end
    object TLojaUsuEMITDOCFISC: TIBStringField
      FieldName = 'EMITDOCFISC'
      Size = 1
    end
    object TLojaUsuRFINEST: TIBStringField
      FieldName = 'RFINEST'
      Size = 1
    end
    object TLojaUsuRPEDVEN: TIBStringField
      FieldName = 'RPEDVEN'
      Size = 1
    end
    object TLojaUsuRPEDCOMP: TIBStringField
      FieldName = 'RPEDCOMP'
      Size = 1
    end
    object TLojaUsuRCAIXA: TIBStringField
      FieldName = 'RCAIXA'
      Size = 1
    end
    object TLojaUsuRBANCO: TIBStringField
      FieldName = 'RBANCO'
      Size = 1
    end
    object TLojaUsuRCTAPAGAR: TIBStringField
      FieldName = 'RCTAPAGAR'
      Size = 1
    end
    object TLojaUsuRCTARECEBER: TIBStringField
      FieldName = 'RCTARECEBER'
      Size = 1
    end
    object TLojaUsuALTLANCX: TIBStringField
      FieldName = 'ALTLANCX'
      Size = 1
    end
    object TLojaUsuCONFIGLOJA: TIBStringField
      FieldName = 'CONFIGLOJA'
      Size = 1
    end
    object TLojaUsuTROCVEND: TIBStringField
      FieldName = 'TROCVEND'
      Size = 1
    end
    object TLojaUsuPEDVENDA: TIBStringField
      FieldName = 'PEDVENDA'
      Size = 1
    end
    object TLojaUsuCADSERV: TIBStringField
      FieldName = 'CADSERV'
      Size = 1
    end
    object TLojaUsuABRIRORD: TIBStringField
      FieldName = 'ABRIRORD'
      Size = 1
    end
    object TLojaUsuFECHORD: TIBStringField
      FieldName = 'FECHORD'
      Size = 1
    end
    object TLojaUsuEXCORD: TIBStringField
      FieldName = 'EXCORD'
      Size = 1
    end
    object TLojaUsuRELABERTORD: TIBStringField
      FieldName = 'RELABERTORD'
      Size = 1
    end
    object TLojaUsuRELFECHORD: TIBStringField
      FieldName = 'RELFECHORD'
      Size = 1
    end
    object TLojaUsuCADBENSCLI: TIBStringField
      FieldName = 'CADBENSCLI'
      Size = 1
    end
    object TLojaUsuRELINVENTEST: TIBStringField
      FieldName = 'RELINVENTEST'
      Size = 1
    end
    object TLojaUsuDESCPED: TIBStringField
      FieldName = 'DESCPED'
      Size = 1
    end
    object TLojaUsuDESCPMAIOR: TIBStringField
      FieldName = 'DESCPMAIOR'
      Size = 1
    end
    object TLojaUsuACEFCHTECPROD: TIBStringField
      FieldName = 'ACEFCHTECPROD'
      Size = 1
    end
    object TLojaUsuUSAGARANT: TIBStringField
      FieldName = 'USAGARANT'
      Size = 1
    end
    object TLojaUsuACEPRODUCAO: TIBStringField
      FieldName = 'ACEPRODUCAO'
      Size = 1
    end
    object TLojaUsuCANCPEDFECH: TIBStringField
      FieldName = 'CANCPEDFECH'
      Size = 1
    end
    object TLojaUsuALTBCCOMIS: TIBStringField
      FieldName = 'ALTBCCOMIS'
      Size = 1
    end
    object TLojaUsuALTCOMIS: TIBStringField
      FieldName = 'ALTCOMIS'
      Size = 1
    end
    object TLojaUsuECF: TIBStringField
      FieldName = 'ECF'
      Size = 1
    end
    object TLojaUsuALTVLRUNIPED: TIBStringField
      FieldName = 'ALTVLRUNIPED'
      Origin = 'LOJACESSO.ALTVLRUNIPED'
      FixedChar = True
      Size = 1
    end
    object TLojaUsuREIMPDUP: TIBStringField
      FieldName = 'REIMPDUP'
      Origin = 'LOJACESSO.REIMPDUP'
      FixedChar = True
      Size = 1
    end
    object TLojaUsuBAIXACTABANCO: TIBStringField
      FieldName = 'BAIXACTABANCO'
      Origin = 'LOJACESSO.BAIXACTABANCO'
      FixedChar = True
      Size = 1
    end
    object TLojaUsuMARGEMSEG: TIBStringField
      FieldName = 'MARGEMSEG'
      Origin = 'LOJACESSO.MARGEMSEG'
      FixedChar = True
      Size = 1
    end
    object TLojaUsuTELACOMIS: TIBStringField
      FieldName = 'TELACOMIS'
      Origin = 'LOJACESSO.TELACOMIS'
      FixedChar = True
      Size = 1
    end
    object TLojaUsuABREGAVETA: TIBStringField
      FieldName = 'ABREGAVETA'
      Origin = 'LOJACESSO.ABREGAVETA'
      FixedChar = True
      Size = 1
    end
    object TLojaUsuGERAFINANC: TIBStringField
      FieldName = 'GERAFINANC'
      Origin = 'LOJACESSO.GERAFINANC'
      FixedChar = True
      Size = 1
    end
    object TLojaUsuFECHAAUTOPED: TIBStringField
      FieldName = 'FECHAAUTOPED'
      Origin = 'LOJACESSO.FECHAAUTOPED'
      FixedChar = True
      Size = 1
    end
  end
  object UPLojaUsu: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  COD_LOJAACES,'
      '  COD_LOJA,'
      '  COD_USUARIO,'
      '  USUPERMI,'
      '  CADCLI,'
      '  EXCLCLI,'
      '  LIBERACRED,'
      '  CAD_USUARIO,'
      '  CAD_CR,'
      '  BAIXAR_CR,'
      '  ALTEXC_CR,'
      '  CANCELBAIXA_CR,'
      '  CAD_CP,'
      '  BAIXA_CP,'
      '  ALTEXC_CP,'
      '  CANCELBAIXA_CP,'
      '  CADCX,'
      '  ABRIRCX,'
      '  LANCX,'
      '  FECHCX,'
      '  CADVEN,'
      '  CADCOTA,'
      '  PRODUTOS,'
      '  PDV,'
      '  PEDVEN,'
      '  ORCAMENTO,'
      '  ALTPED,'
      '  ACERTESTOQUE,'
      '  VENDATACADO,'
      '  VENDAVAREJO,'
      '  RELVENDCOM,'
      '  MOVBANCO,'
      '  CADCTACORRENTE,'
      '  CANCVEND,'
      '  CADFORNEC,'
      '  EXCLFORNEC,'
      '  CADPLANOCTA,'
      '  CADFUNC,'
      '  ALTSALFUNC,'
      '  CADFORMPAG,'
      '  DESCPROD,'
      '  EXCVENDEDOR,'
      '  CADEMPRESA,'
      '  CADLOJA,'
      '  ALTPEDCOMP,'
      '  CADPEDCOMP,'
      '  CANCCOMPRA,'
      '  CADMOEDA,'
      '  EFETUARCOMPRA,'
      '  EMITDOCFISC,'
      '  RFINEST,'
      '  RPEDVEN,'
      '  RPEDCOMP,'
      '  RCAIXA,'
      '  RBANCO,'
      '  RCTAPAGAR,'
      '  RCTARECEBER,'
      '  ALTLANCX,'
      '  CONFIGLOJA,'
      '  TROCVEND,'
      '  CADSERV,'
      '  PEDVENDA,'
      '  ABRIRORD,'
      '  FECHORD,'
      '  EXCORD,'
      '  RELABERTORD,'
      '  RELFECHORD,'
      '  CADBENSCLI,'
      '  RELINVENTEST,'
      '  DESCPED,'
      '  DESCPMAIOR,'
      '  ACEFCHTECPROD,'
      '  USAGARANT,'
      '  ACEPRODUCAO,'
      '  CANCPEDFECH,'
      '  ALTBCCOMIS,'
      '  ALTCOMIS,'
      '  ECF,'
      '  ALTVLRUNIPED,'
      '  REIMPDUP,'
      '  BAIXACTABANCO,'
      '  MARGEMSEG,'
      '  TELACOMIS,'
      '  ABREGAVETA,'
      '  GERAFINANC,'
      '  FECHAAUTOPED'
      'from LOJACESSO '
      'where'
      '  COD_LOJAACES = :COD_LOJAACES')
    ModifySQL.Strings = (
      'update LOJACESSO'
      'set'
      '  COD_LOJAACES = :COD_LOJAACES,'
      '  COD_LOJA = :COD_LOJA,'
      '  COD_USUARIO = :COD_USUARIO,'
      '  USUPERMI = :USUPERMI,'
      '  CADCLI = :CADCLI,'
      '  EXCLCLI = :EXCLCLI,'
      '  LIBERACRED = :LIBERACRED,'
      '  CAD_USUARIO = :CAD_USUARIO,'
      '  CAD_CR = :CAD_CR,'
      '  BAIXAR_CR = :BAIXAR_CR,'
      '  ALTEXC_CR = :ALTEXC_CR,'
      '  CANCELBAIXA_CR = :CANCELBAIXA_CR,'
      '  CAD_CP = :CAD_CP,'
      '  BAIXA_CP = :BAIXA_CP,'
      '  ALTEXC_CP = :ALTEXC_CP,'
      '  CANCELBAIXA_CP = :CANCELBAIXA_CP,'
      '  CADCX = :CADCX,'
      '  ABRIRCX = :ABRIRCX,'
      '  LANCX = :LANCX,'
      '  FECHCX = :FECHCX,'
      '  CADVEN = :CADVEN,'
      '  CADCOTA = :CADCOTA,'
      '  PRODUTOS = :PRODUTOS,'
      '  PDV = :PDV,'
      '  PEDVEN = :PEDVEN,'
      '  ORCAMENTO = :ORCAMENTO,'
      '  ALTPED = :ALTPED,'
      '  ACERTESTOQUE = :ACERTESTOQUE,'
      '  VENDATACADO = :VENDATACADO,'
      '  VENDAVAREJO = :VENDAVAREJO,'
      '  RELVENDCOM = :RELVENDCOM,'
      '  MOVBANCO = :MOVBANCO,'
      '  CADCTACORRENTE = :CADCTACORRENTE,'
      '  CANCVEND = :CANCVEND,'
      '  CADFORNEC = :CADFORNEC,'
      '  EXCLFORNEC = :EXCLFORNEC,'
      '  CADPLANOCTA = :CADPLANOCTA,'
      '  CADFUNC = :CADFUNC,'
      '  ALTSALFUNC = :ALTSALFUNC,'
      '  CADFORMPAG = :CADFORMPAG,'
      '  DESCPROD = :DESCPROD,'
      '  EXCVENDEDOR = :EXCVENDEDOR,'
      '  CADEMPRESA = :CADEMPRESA,'
      '  CADLOJA = :CADLOJA,'
      '  ALTPEDCOMP = :ALTPEDCOMP,'
      '  CADPEDCOMP = :CADPEDCOMP,'
      '  CANCCOMPRA = :CANCCOMPRA,'
      '  CADMOEDA = :CADMOEDA,'
      '  EFETUARCOMPRA = :EFETUARCOMPRA,'
      '  EMITDOCFISC = :EMITDOCFISC,'
      '  RFINEST = :RFINEST,'
      '  RPEDVEN = :RPEDVEN,'
      '  RPEDCOMP = :RPEDCOMP,'
      '  RCAIXA = :RCAIXA,'
      '  RBANCO = :RBANCO,'
      '  RCTAPAGAR = :RCTAPAGAR,'
      '  RCTARECEBER = :RCTARECEBER,'
      '  ALTLANCX = :ALTLANCX,'
      '  CONFIGLOJA = :CONFIGLOJA,'
      '  TROCVEND = :TROCVEND,'
      '  CADSERV = :CADSERV,'
      '  PEDVENDA = :PEDVENDA,'
      '  ABRIRORD = :ABRIRORD,'
      '  FECHORD = :FECHORD,'
      '  EXCORD = :EXCORD,'
      '  RELABERTORD = :RELABERTORD,'
      '  RELFECHORD = :RELFECHORD,'
      '  CADBENSCLI = :CADBENSCLI,'
      '  RELINVENTEST = :RELINVENTEST,'
      '  DESCPED = :DESCPED,'
      '  DESCPMAIOR = :DESCPMAIOR,'
      '  ACEFCHTECPROD = :ACEFCHTECPROD,'
      '  USAGARANT = :USAGARANT,'
      '  ACEPRODUCAO = :ACEPRODUCAO,'
      '  CANCPEDFECH = :CANCPEDFECH,'
      '  ALTBCCOMIS = :ALTBCCOMIS,'
      '  ALTCOMIS = :ALTCOMIS,'
      '  ECF = :ECF,'
      '  ALTVLRUNIPED = :ALTVLRUNIPED,'
      '  REIMPDUP = :REIMPDUP,'
      '  BAIXACTABANCO = :BAIXACTABANCO,'
      '  MARGEMSEG = :MARGEMSEG,'
      '  TELACOMIS = :TELACOMIS,'
      '  ABREGAVETA = :ABREGAVETA,'
      '  GERAFINANC = :GERAFINANC,'
      '  FECHAAUTOPED = :FECHAAUTOPED'
      'where'
      '  COD_LOJAACES = :OLD_COD_LOJAACES')
    InsertSQL.Strings = (
      'insert into LOJACESSO'
      
        '  (COD_LOJAACES, COD_LOJA, COD_USUARIO, USUPERMI, CADCLI, EXCLCL' +
        'I, '
      'LIBERACRED, '
      '   CAD_USUARIO, CAD_CR, BAIXAR_CR, ALTEXC_CR, CANCELBAIXA_CR, '
      'CAD_CP, BAIXA_CP, '
      
        '   ALTEXC_CP, CANCELBAIXA_CP, CADCX, ABRIRCX, LANCX, FECHCX, CAD' +
        'VEN, '
      'CADCOTA, '
      '   PRODUTOS, PDV, PEDVEN, ORCAMENTO, ALTPED, ACERTESTOQUE, '
      'VENDATACADO, '
      '   VENDAVAREJO, RELVENDCOM, MOVBANCO, CADCTACORRENTE, '
      'CANCVEND, CADFORNEC, '
      '   EXCLFORNEC, CADPLANOCTA, CADFUNC, ALTSALFUNC, CADFORMPAG, '
      'DESCPROD, '
      '   EXCVENDEDOR, CADEMPRESA, CADLOJA, ALTPEDCOMP, CADPEDCOMP, '
      'CANCCOMPRA, '
      '   CADMOEDA, EFETUARCOMPRA, EMITDOCFISC, RFINEST, RPEDVEN, '
      'RPEDCOMP, RCAIXA, '
      '   RBANCO, RCTAPAGAR, RCTARECEBER, ALTLANCX, CONFIGLOJA, '
      'TROCVEND, CADSERV, '
      
        '   PEDVENDA, ABRIRORD, FECHORD, EXCORD, RELABERTORD, RELFECHORD,' +
        ' '
      'CADBENSCLI, '
      '   RELINVENTEST, DESCPED, DESCPMAIOR, ACEFCHTECPROD, USAGARANT, '
      'ACEPRODUCAO, '
      
        '   CANCPEDFECH, ALTBCCOMIS, ALTCOMIS, ECF, ALTVLRUNIPED, REIMPDU' +
        'P, '
      'BAIXACTABANCO, '
      '   MARGEMSEG, TELACOMIS, ABREGAVETA, GERAFINANC, FECHAAUTOPED)'
      'values'
      '  (:COD_LOJAACES, :COD_LOJA, :COD_USUARIO, :USUPERMI, :CADCLI, '
      ':EXCLCLI, '
      '   :LIBERACRED, :CAD_USUARIO, :CAD_CR, :BAIXAR_CR, :ALTEXC_CR, '
      ':CANCELBAIXA_CR, '
      
        '   :CAD_CP, :BAIXA_CP, :ALTEXC_CP, :CANCELBAIXA_CP, :CADCX, :ABR' +
        'IRCX, '
      ':LANCX, '
      
        '   :FECHCX, :CADVEN, :CADCOTA, :PRODUTOS, :PDV, :PEDVEN, :ORCAME' +
        'NTO, '
      ':ALTPED, '
      '   :ACERTESTOQUE, :VENDATACADO, :VENDAVAREJO, :RELVENDCOM, '
      ':MOVBANCO, :CADCTACORRENTE, '
      '   :CANCVEND, :CADFORNEC, :EXCLFORNEC, :CADPLANOCTA, :CADFUNC, '
      ':ALTSALFUNC, '
      '   :CADFORMPAG, :DESCPROD, :EXCVENDEDOR, :CADEMPRESA, :CADLOJA, '
      ':ALTPEDCOMP, '
      '   :CADPEDCOMP, :CANCCOMPRA, :CADMOEDA, :EFETUARCOMPRA, '
      ':EMITDOCFISC, :RFINEST, '
      
        '   :RPEDVEN, :RPEDCOMP, :RCAIXA, :RBANCO, :RCTAPAGAR, :RCTARECEB' +
        'ER, '
      ':ALTLANCX, '
      
        '   :CONFIGLOJA, :TROCVEND, :CADSERV, :PEDVENDA, :ABRIRORD, :FECH' +
        'ORD, '
      ':EXCORD, '
      
        '   :RELABERTORD, :RELFECHORD, :CADBENSCLI, :RELINVENTEST, :DESCP' +
        'ED, '
      ':DESCPMAIOR, '
      '   :ACEFCHTECPROD, :USAGARANT, :ACEPRODUCAO, :CANCPEDFECH, '
      ':ALTBCCOMIS, '
      '   :ALTCOMIS, :ECF, :ALTVLRUNIPED, :REIMPDUP, :BAIXACTABANCO, '
      ':MARGEMSEG, '
      '   :TELACOMIS, :ABREGAVETA, :GERAFINANC, :FECHAAUTOPED)')
    DeleteSQL.Strings = (
      'delete from LOJACESSO'
      'where'
      '  COD_LOJAACES = :OLD_COD_LOJAACES')
    Left = 280
    Top = 120
  end
  object DSLojaUsu: TDataSource
    DataSet = TLojaUsu
    Left = 281
    Top = 168
  end
  object TEmpAc: TIBQuery
    Database = DataBase
    Transaction = Transaction
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'SELECT * FROM EMPRESA')
    Left = 72
    Top = 72
  end
  object DSEmpAc: TDataSource
    DataSet = TEmpAc
    Left = 72
    Top = 168
  end
  object DataBase: TIBDatabase
    DatabaseName = 'note:C:\ORION\DataBase\DBMACS.GDB'
    Params.Strings = (
      'user_name=SYSDBA'
      'password=masterkey'
      'lc_ctype=ISO8859_1'
      'sql_role_name=3')
    LoginPrompt = False
    DefaultTransaction = Transaction
    IdleTimer = 0
    SQLDialect = 3
    TraceFlags = [tfQExecute, tfError, tfStmt]
    Left = 24
    Top = 8
  end
  object TExiste: TIBQuery
    Tag = 5
    Database = DataBase
    Transaction = Transaction
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'SELECT loja.cod_loja, loja.descricao, empresa.cod_empresa, empre' +
        'sa.fantasia, usuario.codusuario FROM LOJA JOIN lojacesso ON loja' +
        '.cod_loja=lojacesso.cod_loja JOIN usuario on lojacesso.cod_usuar' +
        'io=usuario.codusuario JOIN empresa ON loja.cod_empresa=empresa.c' +
        'od_empresa')
    Left = 72
    Top = 224
  end
  object DSExiste: TDataSource
    DataSet = TExiste
    Left = 72
    Top = 272
  end
  object TSelect: TIBQuery
    Tag = 5
    Database = DataBase
    Transaction = Transaction
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'SELECT loja.cod_loja, loja.descricao, empresa.cod_empresa, empre' +
        'sa.fantasia, usuario.codusuario FROM LOJA JOIN lojacesso ON loja' +
        '.cod_loja=lojacesso.cod_loja JOIN usuario on lojacesso.cod_usuar' +
        'io=usuario.codusuario JOIN empresa ON loja.cod_empresa=empresa.c' +
        'od_empresa')
    Left = 128
    Top = 224
  end
  object DSSelect: TDataSource
    DataSet = TSelect
    Left = 128
    Top = 272
  end
  object TCodigo: TIBQuery
    Database = DataBase
    Transaction = IBTCodigo
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from CODIGO')
    UpdateObject = UPCodigo
    GeneratorField.ApplyEvent = gamOnPost
    Left = 312
    Top = 8
    object TCodigoCOD_ABCAIXA: TIntegerField
      FieldName = 'COD_ABCAIXA'
      Origin = 'CODIGO.COD_ABCAIXA'
      Required = True
    end
    object TCodigoCOD_AGENCIA: TIntegerField
      FieldName = 'COD_AGENCIA'
      Origin = 'CODIGO.COD_AGENCIA'
      Required = True
    end
    object TCodigoCOD_BANC: TIntegerField
      FieldName = 'COD_BANC'
      Origin = 'CODIGO.COD_BANC'
      Required = True
    end
    object TCodigoCOD_CAIXA: TIntegerField
      FieldName = 'COD_CAIXA'
      Origin = 'CODIGO.COD_CAIXA'
      Required = True
    end
    object TCodigoCOD_CARGO: TIntegerField
      FieldName = 'COD_CARGO'
      Origin = 'CODIGO.COD_CARGO'
      Required = True
    end
    object TCodigoCOD_CFOP: TIntegerField
      FieldName = 'COD_CFOP'
      Origin = 'CODIGO.COD_CFOP'
      Required = True
    end
    object TCodigoCOD_CHEQUEMIT: TIntegerField
      FieldName = 'COD_CHEQUEMIT'
      Origin = 'CODIGO.COD_CHEQUEMIT'
      Required = True
    end
    object TCodigoCOD_CHEQUEREC: TIntegerField
      FieldName = 'COD_CHEQUEREC'
      Origin = 'CODIGO.COD_CHEQUEREC'
      Required = True
    end
    object TCodigoCOD_CIDADE: TIntegerField
      FieldName = 'COD_CIDADE'
      Origin = 'CODIGO.COD_CIDADE'
      Required = True
    end
    object TCodigoCOD_CLIENTE: TIntegerField
      FieldName = 'COD_CLIENTE'
      Origin = 'CODIGO.COD_CLIENTE'
      Required = True
    end
    object TCodigoCOD_CONFAPARENC: TIntegerField
      FieldName = 'COD_CONFAPARENC'
      Origin = 'CODIGO.COD_CONFAPARENC'
      Required = True
    end
    object TCodigoCOD_COTA: TIntegerField
      FieldName = 'COD_COTA'
      Origin = 'CODIGO.COD_COTA'
      Required = True
    end
    object TCodigoCOD_CST: TIntegerField
      FieldName = 'COD_CST'
      Origin = 'CODIGO.COD_CST'
      Required = True
    end
    object TCodigoCOD_CTACOR: TIntegerField
      FieldName = 'COD_CTACOR'
      Origin = 'CODIGO.COD_CTACOR'
      Required = True
    end
    object TCodigoCOD_CTACORFIL: TIntegerField
      FieldName = 'COD_CTACORFIL'
      Origin = 'CODIGO.COD_CTACORFIL'
      Required = True
    end
    object TCodigoCOD_CTAPAGAR: TIntegerField
      FieldName = 'COD_CTAPAGAR'
      Origin = 'CODIGO.COD_CTAPAGAR'
      Required = True
    end
    object TCodigoCOD_CTARECEBER: TIntegerField
      FieldName = 'COD_CTARECEBER'
      Origin = 'CODIGO.COD_CTARECEBER'
      Required = True
    end
    object TCodigoCOD_DOCFIS: TIntegerField
      FieldName = 'COD_DOCFIS'
      Origin = 'CODIGO.COD_DOCFIS'
      Required = True
    end
    object TCodigoCOD_EMAIL: TIntegerField
      FieldName = 'COD_EMAIL'
      Origin = 'CODIGO.COD_EMAIL'
      Required = True
    end
    object TCodigoCOD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
      Origin = 'CODIGO.COD_EMPRESA'
      Required = True
    end
    object TCodigoCOD_ESTADO: TIntegerField
      FieldName = 'COD_ESTADO'
      Origin = 'CODIGO.COD_ESTADO'
      Required = True
    end
    object TCodigoCOD_ESTOQUE: TIntegerField
      FieldName = 'COD_ESTOQUE'
      Origin = 'CODIGO.COD_ESTOQUE'
      Required = True
    end
    object TCodigoCOD_FORMPAG: TIntegerField
      FieldName = 'COD_FORMPAG'
      Origin = 'CODIGO.COD_FORMPAG'
      Required = True
    end
    object TCodigoCOD_FORNEC: TIntegerField
      FieldName = 'COD_FORNEC'
      Origin = 'CODIGO.COD_FORNEC'
      Required = True
    end
    object TCodigoCOD_FUNCARGO: TIntegerField
      FieldName = 'COD_FUNCARGO'
      Origin = 'CODIGO.COD_FUNCARGO'
      Required = True
    end
    object TCodigoCOD_FUNC: TIntegerField
      FieldName = 'COD_FUNC'
      Origin = 'CODIGO.COD_FUNC'
      Required = True
    end
    object TCodigoCOD_GRUPOPROD: TIntegerField
      FieldName = 'COD_GRUPOPROD'
      Origin = 'CODIGO.COD_GRUPOPROD'
      Required = True
    end
    object TCodigoCOD_ITENSPEDC: TIntegerField
      FieldName = 'COD_ITENSPEDC'
      Origin = 'CODIGO.COD_ITENSPEDC'
      Required = True
    end
    object TCodigoCOD_ITENSPEDVEN: TIntegerField
      FieldName = 'COD_ITENSPEDVEN'
      Origin = 'CODIGO.COD_ITENSPEDVEN'
      Required = True
    end
    object TCodigoCOD_LANC: TIntegerField
      FieldName = 'COD_LANC'
      Origin = 'CODIGO.COD_LANC'
      Required = True
    end
    object TCodigoCOD_LANENT: TIntegerField
      FieldName = 'COD_LANENT'
      Origin = 'CODIGO.COD_LANENT'
      Required = True
    end
    object TCodigoCOD_LANCSAI: TIntegerField
      FieldName = 'COD_LANCSAI'
      Origin = 'CODIGO.COD_LANCSAI'
      Required = True
    end
    object TCodigoCOD_LOJA: TIntegerField
      FieldName = 'COD_LOJA'
      Origin = 'CODIGO.COD_LOJA'
      Required = True
    end
    object TCodigoCOD_LOJAACES: TIntegerField
      FieldName = 'COD_LOJAACES'
      Origin = 'CODIGO.COD_LOJAACES'
      Required = True
    end
    object TCodigoCOD_MOEDA: TIntegerField
      FieldName = 'COD_MOEDA'
      Origin = 'CODIGO.COD_MOEDA'
      Required = True
    end
    object TCodigoCOD_MOVBANCO: TIntegerField
      FieldName = 'COD_MOVBANCO'
      Origin = 'CODIGO.COD_MOVBANCO'
      Required = True
    end
    object TCodigoCOD_PARCELACP: TIntegerField
      FieldName = 'COD_PARCELACP'
      Origin = 'CODIGO.COD_PARCELACP'
      Required = True
    end
    object TCodigoCOD_PARCELACR: TIntegerField
      FieldName = 'COD_PARCELACR'
      Origin = 'CODIGO.COD_PARCELACR'
      Required = True
    end
    object TCodigoCOD_PEDCOMP: TIntegerField
      FieldName = 'COD_PEDCOMP'
      Origin = 'CODIGO.COD_PEDCOMP'
      Required = True
    end
    object TCodigoCOD_PEDVENDA: TIntegerField
      FieldName = 'COD_PEDVENDA'
      Origin = 'CODIGO.COD_PEDVENDA'
      Required = True
    end
    object TCodigoCOD_PESSOA: TIntegerField
      FieldName = 'COD_PESSOA'
      Origin = 'CODIGO.COD_PESSOA'
      Required = True
    end
    object TCodigoCOD_PESSOAF: TIntegerField
      FieldName = 'COD_PESSOAF'
      Origin = 'CODIGO.COD_PESSOAF'
      Required = True
    end
    object TCodigoCOD_PESSOAJ: TIntegerField
      FieldName = 'COD_PESSOAJ'
      Origin = 'CODIGO.COD_PESSOAJ'
      Required = True
    end
    object TCodigoCOD_PLNCTA: TIntegerField
      FieldName = 'COD_PLNCTA'
      Origin = 'CODIGO.COD_PLNCTA'
      Required = True
    end
    object TCodigoCOD_PRODUTO: TIntegerField
      FieldName = 'COD_PRODUTO'
      Origin = 'CODIGO.COD_PRODUTO'
      Required = True
    end
    object TCodigoCOD_REGIAO: TIntegerField
      FieldName = 'COD_REGIAO'
      Origin = 'CODIGO.COD_REGIAO'
      Required = True
    end
    object TCodigoCOD_SALARIO: TIntegerField
      FieldName = 'COD_SALARIO'
      Origin = 'CODIGO.COD_SALARIO'
      Required = True
    end
    object TCodigoCOD_SUBGRUPOPROD: TIntegerField
      FieldName = 'COD_SUBGRUPOPROD'
      Origin = 'CODIGO.COD_SUBGRUPOPROD'
      Required = True
    end
    object TCodigoCOD_SUBPRODUTO: TIntegerField
      FieldName = 'COD_SUBPRODUTO'
      Origin = 'CODIGO.COD_SUBPRODUTO'
      Required = True
    end
    object TCodigoCOD_TELEFONE: TIntegerField
      FieldName = 'COD_TELEFONE'
      Origin = 'CODIGO.COD_TELEFONE'
      Required = True
    end
    object TCodigoCOD_UNIDADE: TIntegerField
      FieldName = 'COD_UNIDADE'
      Origin = 'CODIGO.COD_UNIDADE'
      Required = True
    end
    object TCodigoCODUSUARIO: TIntegerField
      FieldName = 'CODUSUARIO'
      Origin = 'CODIGO.CODUSUARIO'
      Required = True
    end
    object TCodigoCOD_CAIXAUSU: TIntegerField
      FieldName = 'COD_CAIXAUSU'
      Origin = 'CODIGO.COD_CAIXAUSU'
    end
    object TCodigoGENERATOR1: TIBStringField
      FieldName = 'GENERATOR1'
      Origin = 'CODIGO.GENERATOR1'
    end
    object TCodigoGENERATOR2: TIBStringField
      FieldName = 'GENERATOR2'
      Origin = 'CODIGO.GENERATOR2'
    end
    object TCodigoCOD_SERVOT: TIntegerField
      FieldName = 'COD_SERVOT'
      Origin = 'CODIGO.COD_SERVOT'
    end
    object TCodigoCOD_SERVICO: TIntegerField
      FieldName = 'COD_SERVICO'
      Origin = 'CODIGO.COD_SERVICO'
    end
    object TCodigoCOD_SUBSERVICO: TIntegerField
      FieldName = 'COD_SUBSERVICO'
      Origin = 'CODIGO.COD_SUBSERVICO'
    end
    object TCodigoCOD_EQUIPAMENTO: TIntegerField
      FieldName = 'COD_EQUIPAMENTO'
      Origin = 'CODIGO.COD_EQUIPAMENTO'
    end
    object TCodigoCOD_ORDEM: TIntegerField
      FieldName = 'COD_ORDEM'
      Origin = 'CODIGO.COD_ORDEM'
    end
    object TCodigoCOD_ITPRODORD: TIntegerField
      FieldName = 'COD_ITPRODORD'
      Origin = 'CODIGO.COD_ITPRODORD'
    end
    object TCodigoCOD_ITSERVORD: TIntegerField
      FieldName = 'COD_ITSERVORD'
      Origin = 'CODIGO.COD_ITSERVORD'
    end
    object TCodigoCOD_COMPROD: TIntegerField
      FieldName = 'COD_COMPROD'
      Origin = 'CODIGO.COD_COMPROD'
    end
    object TCodigoCOD_COMSERV: TIntegerField
      FieldName = 'COD_COMSERV'
      Origin = 'CODIGO.COD_COMSERV'
    end
    object TCodigoCOD_FCHTECPROD: TIntegerField
      FieldName = 'COD_FCHTECPROD'
      Origin = 'CODIGO.COD_FCHTECPROD'
    end
    object TCodigoCOD_ITFCHTECPROD: TIntegerField
      FieldName = 'COD_ITFCHTECPROD'
      Origin = 'CODIGO.COD_ITFCHTECPROD'
    end
    object TCodigoCOD_ITFCHTECSERV: TIntegerField
      FieldName = 'COD_ITFCHTECSERV'
      Origin = 'CODIGO.COD_ITFCHTECSERV'
    end
    object TCodigoCOD_ETQPROD: TIntegerField
      FieldName = 'COD_ETQPROD'
      Origin = 'CODIGO.COD_ETQPROD'
    end
    object TCodigoCOD_DESPADIC: TIntegerField
      FieldName = 'COD_DESPADIC'
      Origin = 'CODIGO.COD_DESPADIC'
    end
    object TCodigoCOD_PRODUCAO: TIntegerField
      FieldName = 'COD_PRODUCAO'
      Origin = 'CODIGO.COD_PRODUCAO'
    end
    object TCodigoCOD_IPRDMAO: TIntegerField
      FieldName = 'COD_IPRDMAO'
      Origin = 'CODIGO.COD_IPRDMAO'
    end
    object TCodigoCOD_IPRDMAT: TIntegerField
      FieldName = 'COD_IPRDMAT'
      Origin = 'CODIGO.COD_IPRDMAT'
    end
    object TCodigoCOD_DOCFISC: TIntegerField
      FieldName = 'COD_DOCFISC'
      Origin = 'CODIGO.COD_DOCFISC'
    end
    object TCodigoCOD_CONVUNID: TIntegerField
      FieldName = 'COD_CONVUNID'
      Origin = 'CODIGO.COD_CONVUNID'
    end
    object TCodigoCOD_COMISSAO: TIntegerField
      FieldName = 'COD_COMISSAO'
      Origin = 'CODIGO.COD_COMISSAO'
    end
    object TCodigoCOD_REGISTRO: TIntegerField
      FieldName = 'COD_REGISTRO'
      Origin = 'CODIGO.COD_REGISTRO'
    end
    object TCodigoCOD_R60: TIntegerField
      FieldName = 'COD_R60'
      Origin = 'CODIGO.COD_R60'
    end
    object TCodigoCOD_ORCAMENTO: TIntegerField
      FieldName = 'COD_ORCAMENTO'
      Origin = 'CODIGO.COD_ORCAMENTO'
    end
    object TCodigoCOD_ITPRODORC: TIntegerField
      FieldName = 'COD_ITPRODORC'
      Origin = 'CODIGO.COD_ITPRODORC'
    end
    object TCodigoCOD_ITSERVORC: TIntegerField
      FieldName = 'COD_ITSERVORC'
      Origin = 'CODIGO.COD_ITSERVORC'
    end
    object TCodigoCOD_MENSAGEM: TIntegerField
      FieldName = 'COD_MENSAGEM'
      Origin = 'CODIGO.COD_MENSAGEM'
    end
    object TCodigoCOD_LOTE: TIntegerField
      FieldName = 'COD_LOTE'
      Origin = 'CODIGO.COD_LOTE'
    end
    object TCodigoCOD_TMP: TIntegerField
      FieldName = 'COD_TMP'
      Origin = 'CODIGO.COD_TMP'
    end
    object TCodigoCOD_DOCFISSAIDA: TIntegerField
      FieldName = 'COD_DOCFISSAIDA'
      Origin = 'CODIGO.COD_DOCFISSAIDA'
    end
    object TCodigoCOD_NF: TIntegerField
      FieldName = 'COD_NF'
      Origin = 'CODIGO.COD_NF'
    end
    object TCodigoCOD_ITPRODLICITA: TIntegerField
      FieldName = 'COD_ITPRODLICITA'
      Origin = 'CODIGO.COD_ITPRODLICITA'
    end
    object TCodigoCOD_LICITA: TIntegerField
      FieldName = 'COD_LICITA'
      Origin = 'CODIGO.COD_LICITA'
    end
    object TCodigoCOD_DOCFISCORD: TIntegerField
      FieldName = 'COD_DOCFISCORD'
      Origin = 'CODIGO.COD_DOCFISCORD'
    end
    object TCodigoCOD_ITENSETQPROD: TIntegerField
      FieldName = 'COD_ITENSETQPROD'
      Origin = 'CODIGO.COD_ITENSETQPROD'
    end
    object TCodigoCOD_CLIENTECOB: TIntegerField
      FieldName = 'COD_CLIENTECOB'
      Origin = 'CODIGO.COD_CLIENTECOB'
    end
    object TCodigoCOD_AGENDA: TIntegerField
      FieldName = 'COD_AGENDA'
      Origin = 'CODIGO.COD_AGENDA'
    end
    object TCodigoCOD_CONTATO: TIntegerField
      FieldName = 'COD_CONTATO'
      Origin = 'CODIGO.COD_CONTATO'
    end
    object TCodigoCOD_DEVCLI: TIntegerField
      FieldName = 'COD_DEVCLI'
      Origin = 'CODIGO.COD_DEVCLI'
    end
    object TCodigoCOD_ABBANCO: TIntegerField
      FieldName = 'COD_ABBANCO'
      Origin = 'CODIGO.COD_ABBANCO'
    end
    object TCodigoCOD_CONFIGDUP: TIntegerField
      FieldName = 'COD_CONFIGDUP'
      Origin = 'CODIGO.COD_CONFIGDUP'
    end
    object TCodigoCOD_ITENSDUPPERSON: TIntegerField
      FieldName = 'COD_ITENSDUPPERSON'
      Origin = 'CODIGO.COD_ITENSDUPPERSON'
    end
    object TCodigoCOD_CREDITO: TIntegerField
      FieldName = 'COD_CREDITO'
      Origin = 'CODIGO.COD_CREDITO'
    end
    object TCodigoCOD_ENTREGA: TIntegerField
      FieldName = 'COD_ENTREGA'
      Origin = 'CODIGO.COD_ENTREGA'
    end
    object TCodigoCOD_ITEMENTREGA: TIntegerField
      FieldName = 'COD_ITEMENTREGA'
      Origin = 'CODIGO.COD_ITEMENTREGA'
    end
    object TCodigoCOD_CONFIGCHEQUE: TIntegerField
      FieldName = 'COD_CONFIGCHEQUE'
      Origin = 'CODIGO.COD_CONFIGCHEQUE'
    end
    object TCodigoCOD_ITENSCONFIG_CHEQUE: TIntegerField
      FieldName = 'COD_ITENSCONFIG_CHEQUE'
      Origin = 'CODIGO.COD_ITENSCONFIG_CHEQUE'
    end
    object TCodigoCOD_TABELAPRECO: TIntegerField
      FieldName = 'COD_TABELAPRECO'
      Origin = 'CODIGO.COD_TABELAPRECO'
    end
    object TCodigoCOD_ITEMTAB: TIntegerField
      FieldName = 'COD_ITEMTAB'
      Origin = 'CODIGO.COD_ITEMTAB'
    end
    object TCodigoCOD_LOCACAO: TIntegerField
      FieldName = 'COD_LOCACAO'
      Origin = 'CODIGO.COD_LOCACAO'
    end
    object TCodigoCOD_EQUIPE: TIntegerField
      FieldName = 'COD_EQUIPE'
      Origin = 'CODIGO.COD_EQUIPE'
    end
    object TCodigoCOD_FUNEQUIPE: TIntegerField
      FieldName = 'COD_FUNEQUIPE'
      Origin = 'CODIGO.COD_FUNEQUIPE'
    end
    object TCodigoCOD_DOCFISCFATURA: TIntegerField
      FieldName = 'COD_DOCFISCFATURA'
      Origin = 'CODIGO.COD_DOCFISCFATURA'
    end
    object TCodigoCOD_ALUGUEL: TIntegerField
      FieldName = 'COD_ALUGUEL'
      Origin = 'CODIGO.COD_ALUGUEL'
    end
    object TCodigoCOD_MOTORISTAVEICULO: TSmallintField
      FieldName = 'COD_MOTORISTAVEICULO'
      Origin = 'CODIGO.COD_MOTORISTAVEICULO'
    end
    object TCodigoCOD_OBRA: TIntegerField
      FieldName = 'COD_OBRA'
      Origin = 'CODIGO.COD_OBRA'
    end
  end
  object UPCodigo: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  COD_ABCAIXA,'
      '  COD_AGENCIA,'
      '  COD_BANC,'
      '  COD_CAIXA,'
      '  COD_CARGO,'
      '  COD_CFOP,'
      '  COD_CHEQUEMIT,'
      '  COD_CHEQUEREC,'
      '  COD_CIDADE,'
      '  COD_CLIENTE,'
      '  COD_CONFAPARENC,'
      '  COD_COTA,'
      '  COD_CST,'
      '  COD_CTACOR,'
      '  COD_CTACORFIL,'
      '  COD_CTAPAGAR,'
      '  COD_CTARECEBER,'
      '  COD_DOCFIS,'
      '  COD_EMAIL,'
      '  COD_EMPRESA,'
      '  COD_ESTADO,'
      '  COD_ESTOQUE,'
      '  COD_FORMPAG,'
      '  COD_FORNEC,'
      '  COD_FUNCARGO,'
      '  COD_FUNC,'
      '  COD_GRUPOPROD,'
      '  COD_ITENSPEDC,'
      '  COD_ITENSPEDVEN,'
      '  COD_LANC,'
      '  COD_LANENT,'
      '  COD_LANCSAI,'
      '  COD_LOJA,'
      '  COD_LOJAACES,'
      '  COD_MOEDA,'
      '  COD_MOVBANCO,'
      '  COD_PARCELACP,'
      '  COD_PARCELACR,'
      '  COD_PEDCOMP,'
      '  COD_PEDVENDA,'
      '  COD_PESSOA,'
      '  COD_PESSOAF,'
      '  COD_PESSOAJ,'
      '  COD_PLNCTA,'
      '  COD_PRODUTO,'
      '  COD_REGIAO,'
      '  COD_SALARIO,'
      '  COD_SUBGRUPOPROD,'
      '  COD_SUBPRODUTO,'
      '  COD_TELEFONE,'
      '  COD_UNIDADE,'
      '  CODUSUARIO,'
      '  COD_CAIXAUSU,'
      '  GENERATOR1,'
      '  GENERATOR2,'
      '  COD_SERVOT,'
      '  COD_SERVICO,'
      '  COD_SUBSERVICO,'
      '  COD_EQUIPAMENTO,'
      '  COD_ORDEM,'
      '  COD_ITPRODORD,'
      '  COD_ITSERVORD,'
      '  COD_COMPROD,'
      '  COD_COMSERV,'
      '  COD_FCHTECPROD,'
      '  COD_ITFCHTECPROD,'
      '  COD_ITFCHTECSERV,'
      '  COD_ETQPROD,'
      '  COD_DESPADIC,'
      '  COD_PRODUCAO,'
      '  COD_IPRDMAO,'
      '  COD_IPRDMAT,'
      '  COD_DOCFISC,'
      '  COD_CONVUNID,'
      '  COD_COMISSAO,'
      '  COD_REGISTRO,'
      '  COD_R60,'
      '  COD_ORCAMENTO,'
      '  COD_ITPRODORC,'
      '  COD_ITSERVORC,'
      '  COD_MENSAGEM,'
      '  COD_LOTE,'
      '  COD_TMP,'
      '  COD_DOCFISSAIDA,'
      '  COD_NF,'
      '  COD_ITPRODLICITA,'
      '  COD_LICITA,'
      '  COD_DOCFISCORD,'
      '  COD_ITENSETQPROD,'
      '  COD_CLIENTECOB,'
      '  COD_AGENDA,'
      '  COD_CONTATO,'
      '  COD_DEVCLI,'
      '  COD_ABBANCO,'
      '  COD_CONFIGDUP,'
      '  COD_ITENSDUPPERSON,'
      '  COD_CREDITO,'
      '  COD_ENTREGA,'
      '  COD_ITEMENTREGA,'
      '  COD_CONFIGCHEQUE,'
      '  COD_ITENSCONFIG_CHEQUE,'
      '  COD_TABELAPRECO,'
      '  COD_ITEMTAB,'
      '  COD_LOCACAO,'
      '  COD_EQUIPE,'
      '  COD_FUNEQUIPE,'
      '  COD_DOCFISCFATURA,'
      '  COD_ALUGUEL,'
      '  COD_MOTORISTAVEICULO,'
      '  COD_OBRA'
      'from CODIGO '
      'where'
      '  COD_ABCAIXA = :COD_ABCAIXA')
    ModifySQL.Strings = (
      'update CODIGO'
      'set'
      '  COD_ABCAIXA = :COD_ABCAIXA,'
      '  COD_AGENCIA = :COD_AGENCIA,'
      '  COD_BANC = :COD_BANC,'
      '  COD_CAIXA = :COD_CAIXA,'
      '  COD_CARGO = :COD_CARGO,'
      '  COD_CFOP = :COD_CFOP,'
      '  COD_CHEQUEMIT = :COD_CHEQUEMIT,'
      '  COD_CHEQUEREC = :COD_CHEQUEREC,'
      '  COD_CIDADE = :COD_CIDADE,'
      '  COD_CLIENTE = :COD_CLIENTE,'
      '  COD_CONFAPARENC = :COD_CONFAPARENC,'
      '  COD_COTA = :COD_COTA,'
      '  COD_CST = :COD_CST,'
      '  COD_CTACOR = :COD_CTACOR,'
      '  COD_CTACORFIL = :COD_CTACORFIL,'
      '  COD_CTAPAGAR = :COD_CTAPAGAR,'
      '  COD_CTARECEBER = :COD_CTARECEBER,'
      '  COD_DOCFIS = :COD_DOCFIS,'
      '  COD_EMAIL = :COD_EMAIL,'
      '  COD_EMPRESA = :COD_EMPRESA,'
      '  COD_ESTADO = :COD_ESTADO,'
      '  COD_ESTOQUE = :COD_ESTOQUE,'
      '  COD_FORMPAG = :COD_FORMPAG,'
      '  COD_FORNEC = :COD_FORNEC,'
      '  COD_FUNCARGO = :COD_FUNCARGO,'
      '  COD_FUNC = :COD_FUNC,'
      '  COD_GRUPOPROD = :COD_GRUPOPROD,'
      '  COD_ITENSPEDC = :COD_ITENSPEDC,'
      '  COD_ITENSPEDVEN = :COD_ITENSPEDVEN,'
      '  COD_LANC = :COD_LANC,'
      '  COD_LANENT = :COD_LANENT,'
      '  COD_LANCSAI = :COD_LANCSAI,'
      '  COD_LOJA = :COD_LOJA,'
      '  COD_LOJAACES = :COD_LOJAACES,'
      '  COD_MOEDA = :COD_MOEDA,'
      '  COD_MOVBANCO = :COD_MOVBANCO,'
      '  COD_PARCELACP = :COD_PARCELACP,'
      '  COD_PARCELACR = :COD_PARCELACR,'
      '  COD_PEDCOMP = :COD_PEDCOMP,'
      '  COD_PEDVENDA = :COD_PEDVENDA,'
      '  COD_PESSOA = :COD_PESSOA,'
      '  COD_PESSOAF = :COD_PESSOAF,'
      '  COD_PESSOAJ = :COD_PESSOAJ,'
      '  COD_PLNCTA = :COD_PLNCTA,'
      '  COD_PRODUTO = :COD_PRODUTO,'
      '  COD_REGIAO = :COD_REGIAO,'
      '  COD_SALARIO = :COD_SALARIO,'
      '  COD_SUBGRUPOPROD = :COD_SUBGRUPOPROD,'
      '  COD_SUBPRODUTO = :COD_SUBPRODUTO,'
      '  COD_TELEFONE = :COD_TELEFONE,'
      '  COD_UNIDADE = :COD_UNIDADE,'
      '  CODUSUARIO = :CODUSUARIO,'
      '  COD_CAIXAUSU = :COD_CAIXAUSU,'
      '  GENERATOR1 = :GENERATOR1,'
      '  GENERATOR2 = :GENERATOR2,'
      '  COD_SERVOT = :COD_SERVOT,'
      '  COD_SERVICO = :COD_SERVICO,'
      '  COD_SUBSERVICO = :COD_SUBSERVICO,'
      '  COD_EQUIPAMENTO = :COD_EQUIPAMENTO,'
      '  COD_ORDEM = :COD_ORDEM,'
      '  COD_ITPRODORD = :COD_ITPRODORD,'
      '  COD_ITSERVORD = :COD_ITSERVORD,'
      '  COD_COMPROD = :COD_COMPROD,'
      '  COD_COMSERV = :COD_COMSERV,'
      '  COD_FCHTECPROD = :COD_FCHTECPROD,'
      '  COD_ITFCHTECPROD = :COD_ITFCHTECPROD,'
      '  COD_ITFCHTECSERV = :COD_ITFCHTECSERV,'
      '  COD_ETQPROD = :COD_ETQPROD,'
      '  COD_DESPADIC = :COD_DESPADIC,'
      '  COD_PRODUCAO = :COD_PRODUCAO,'
      '  COD_IPRDMAO = :COD_IPRDMAO,'
      '  COD_IPRDMAT = :COD_IPRDMAT,'
      '  COD_DOCFISC = :COD_DOCFISC,'
      '  COD_CONVUNID = :COD_CONVUNID,'
      '  COD_COMISSAO = :COD_COMISSAO,'
      '  COD_REGISTRO = :COD_REGISTRO,'
      '  COD_R60 = :COD_R60,'
      '  COD_ORCAMENTO = :COD_ORCAMENTO,'
      '  COD_ITPRODORC = :COD_ITPRODORC,'
      '  COD_ITSERVORC = :COD_ITSERVORC,'
      '  COD_MENSAGEM = :COD_MENSAGEM,'
      '  COD_LOTE = :COD_LOTE,'
      '  COD_TMP = :COD_TMP,'
      '  COD_DOCFISSAIDA = :COD_DOCFISSAIDA,'
      '  COD_NF = :COD_NF,'
      '  COD_ITPRODLICITA = :COD_ITPRODLICITA,'
      '  COD_LICITA = :COD_LICITA,'
      '  COD_DOCFISCORD = :COD_DOCFISCORD,'
      '  COD_ITENSETQPROD = :COD_ITENSETQPROD,'
      '  COD_CLIENTECOB = :COD_CLIENTECOB,'
      '  COD_AGENDA = :COD_AGENDA,'
      '  COD_CONTATO = :COD_CONTATO,'
      '  COD_DEVCLI = :COD_DEVCLI,'
      '  COD_ABBANCO = :COD_ABBANCO,'
      '  COD_CONFIGDUP = :COD_CONFIGDUP,'
      '  COD_ITENSDUPPERSON = :COD_ITENSDUPPERSON,'
      '  COD_CREDITO = :COD_CREDITO,'
      '  COD_ENTREGA = :COD_ENTREGA,'
      '  COD_ITEMENTREGA = :COD_ITEMENTREGA,'
      '  COD_CONFIGCHEQUE = :COD_CONFIGCHEQUE,'
      '  COD_ITENSCONFIG_CHEQUE = :COD_ITENSCONFIG_CHEQUE,'
      '  COD_TABELAPRECO = :COD_TABELAPRECO,'
      '  COD_ITEMTAB = :COD_ITEMTAB,'
      '  COD_LOCACAO = :COD_LOCACAO,'
      '  COD_EQUIPE = :COD_EQUIPE,'
      '  COD_FUNEQUIPE = :COD_FUNEQUIPE,'
      '  COD_DOCFISCFATURA = :COD_DOCFISCFATURA,'
      '  COD_ALUGUEL = :COD_ALUGUEL,'
      '  COD_MOTORISTAVEICULO = :COD_MOTORISTAVEICULO,'
      '  COD_OBRA = :COD_OBRA'
      'where'
      '  COD_ABCAIXA = :OLD_COD_ABCAIXA')
    InsertSQL.Strings = (
      'insert into CODIGO'
      
        '  (COD_ABCAIXA, COD_AGENCIA, COD_BANC, COD_CAIXA, COD_CARGO, COD' +
        '_CFOP, '
      
        '   COD_CHEQUEMIT, COD_CHEQUEREC, COD_CIDADE, COD_CLIENTE, COD_CO' +
        'NFAPARENC, '
      
        '   COD_COTA, COD_CST, COD_CTACOR, COD_CTACORFIL, COD_CTAPAGAR, C' +
        'OD_CTARECEBER, '
      
        '   COD_DOCFIS, COD_EMAIL, COD_EMPRESA, COD_ESTADO, COD_ESTOQUE, ' +
        'COD_FORMPAG, '
      
        '   COD_FORNEC, COD_FUNCARGO, COD_FUNC, COD_GRUPOPROD, COD_ITENSP' +
        'EDC, COD_ITENSPEDVEN, '
      
        '   COD_LANC, COD_LANENT, COD_LANCSAI, COD_LOJA, COD_LOJAACES, CO' +
        'D_MOEDA, '
      
        '   COD_MOVBANCO, COD_PARCELACP, COD_PARCELACR, COD_PEDCOMP, COD_' +
        'PEDVENDA, '
      
        '   COD_PESSOA, COD_PESSOAF, COD_PESSOAJ, COD_PLNCTA, COD_PRODUTO' +
        ', COD_REGIAO, '
      
        '   COD_SALARIO, COD_SUBGRUPOPROD, COD_SUBPRODUTO, COD_TELEFONE, ' +
        'COD_UNIDADE, '
      
        '   CODUSUARIO, COD_CAIXAUSU, GENERATOR1, GENERATOR2, COD_SERVOT,' +
        ' COD_SERVICO, '
      
        '   COD_SUBSERVICO, COD_EQUIPAMENTO, COD_ORDEM, COD_ITPRODORD, CO' +
        'D_ITSERVORD, '
      
        '   COD_COMPROD, COD_COMSERV, COD_FCHTECPROD, COD_ITFCHTECPROD, C' +
        'OD_ITFCHTECSERV, '
      
        '   COD_ETQPROD, COD_DESPADIC, COD_PRODUCAO, COD_IPRDMAO, COD_IPR' +
        'DMAT, COD_DOCFISC, '
      
        '   COD_CONVUNID, COD_COMISSAO, COD_REGISTRO, COD_R60, COD_ORCAME' +
        'NTO, COD_ITPRODORC, '
      
        '   COD_ITSERVORC, COD_MENSAGEM, COD_LOTE, COD_TMP, COD_DOCFISSAI' +
        'DA, COD_NF, '
      
        '   COD_ITPRODLICITA, COD_LICITA, COD_DOCFISCORD, COD_ITENSETQPRO' +
        'D, COD_CLIENTECOB, '
      
        '   COD_AGENDA, COD_CONTATO, COD_DEVCLI, COD_ABBANCO, COD_CONFIGD' +
        'UP, COD_ITENSDUPPERSON, '
      
        '   COD_CREDITO, COD_ENTREGA, COD_ITEMENTREGA, COD_CONFIGCHEQUE, ' +
        'COD_ITENSCONFIG_CHEQUE, '
      
        '   COD_TABELAPRECO, COD_ITEMTAB, COD_LOCACAO, COD_EQUIPE, COD_FU' +
        'NEQUIPE, '
      
        '   COD_DOCFISCFATURA, COD_ALUGUEL, COD_MOTORISTAVEICULO, COD_OBR' +
        'A)'
      'values'
      
        '  (:COD_ABCAIXA, :COD_AGENCIA, :COD_BANC, :COD_CAIXA, :COD_CARGO' +
        ', :COD_CFOP, '
      
        '   :COD_CHEQUEMIT, :COD_CHEQUEREC, :COD_CIDADE, :COD_CLIENTE, :C' +
        'OD_CONFAPARENC, '
      
        '   :COD_COTA, :COD_CST, :COD_CTACOR, :COD_CTACORFIL, :COD_CTAPAG' +
        'AR, :COD_CTARECEBER, '
      
        '   :COD_DOCFIS, :COD_EMAIL, :COD_EMPRESA, :COD_ESTADO, :COD_ESTO' +
        'QUE, :COD_FORMPAG, '
      
        '   :COD_FORNEC, :COD_FUNCARGO, :COD_FUNC, :COD_GRUPOPROD, :COD_I' +
        'TENSPEDC, '
      
        '   :COD_ITENSPEDVEN, :COD_LANC, :COD_LANENT, :COD_LANCSAI, :COD_' +
        'LOJA, :COD_LOJAACES, '
      
        '   :COD_MOEDA, :COD_MOVBANCO, :COD_PARCELACP, :COD_PARCELACR, :C' +
        'OD_PEDCOMP, '
      
        '   :COD_PEDVENDA, :COD_PESSOA, :COD_PESSOAF, :COD_PESSOAJ, :COD_' +
        'PLNCTA, '
      
        '   :COD_PRODUTO, :COD_REGIAO, :COD_SALARIO, :COD_SUBGRUPOPROD, :' +
        'COD_SUBPRODUTO, '
      
        '   :COD_TELEFONE, :COD_UNIDADE, :CODUSUARIO, :COD_CAIXAUSU, :GEN' +
        'ERATOR1, '
      
        '   :GENERATOR2, :COD_SERVOT, :COD_SERVICO, :COD_SUBSERVICO, :COD' +
        '_EQUIPAMENTO, '
      
        '   :COD_ORDEM, :COD_ITPRODORD, :COD_ITSERVORD, :COD_COMPROD, :CO' +
        'D_COMSERV, '
      
        '   :COD_FCHTECPROD, :COD_ITFCHTECPROD, :COD_ITFCHTECSERV, :COD_E' +
        'TQPROD, '
      
        '   :COD_DESPADIC, :COD_PRODUCAO, :COD_IPRDMAO, :COD_IPRDMAT, :CO' +
        'D_DOCFISC, '
      
        '   :COD_CONVUNID, :COD_COMISSAO, :COD_REGISTRO, :COD_R60, :COD_O' +
        'RCAMENTO, '
      
        '   :COD_ITPRODORC, :COD_ITSERVORC, :COD_MENSAGEM, :COD_LOTE, :CO' +
        'D_TMP, '
      
        '   :COD_DOCFISSAIDA, :COD_NF, :COD_ITPRODLICITA, :COD_LICITA, :C' +
        'OD_DOCFISCORD, '
      
        '   :COD_ITENSETQPROD, :COD_CLIENTECOB, :COD_AGENDA, :COD_CONTATO' +
        ', :COD_DEVCLI, '
      
        '   :COD_ABBANCO, :COD_CONFIGDUP, :COD_ITENSDUPPERSON, :COD_CREDI' +
        'TO, :COD_ENTREGA, '
      
        '   :COD_ITEMENTREGA, :COD_CONFIGCHEQUE, :COD_ITENSCONFIG_CHEQUE,' +
        ' :COD_TABELAPRECO, '
      
        '   :COD_ITEMTAB, :COD_LOCACAO, :COD_EQUIPE, :COD_FUNEQUIPE, :COD' +
        '_DOCFISCFATURA, '
      '   :COD_ALUGUEL, :COD_MOTORISTAVEICULO, :COD_OBRA)')
    DeleteSQL.Strings = (
      'delete from CODIGO'
      'where'
      '  COD_ABCAIXA = :OLD_COD_ABCAIXA')
    Left = 363
    Top = 8
  end
  object DSCodigo: TDataSource
    DataSet = TCodigo
    Left = 417
    Top = 8
  end
  object IBTCodigo: TIBTransaction
    Active = False
    DefaultDatabase = DataBase
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    AutoStopAction = saNone
    Left = 470
    Top = 8
  end
  object DBTrill: TIBDatabase
    DatabaseName = 'note:D:\##SERVIDOR\##FONTES\Orion\DataBase\DBMACS.GDB'
    Params.Strings = (
      'user_name=SYSDBA'
      'password=masterkey'
      'lc_ctype=ISO8859_1'
      'sql_role_name=3')
    LoginPrompt = False
    DefaultTransaction = IBTTRILL
    IdleTimer = 0
    SQLDialect = 3
    TraceFlags = []
    Left = 648
    Top = 8
  end
  object IBTTRILL: TIBTransaction
    Active = False
    DefaultDatabase = DBTrill
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    AutoStopAction = saNone
    Left = 696
    Top = 8
  end
  object BASE: TIBQuery
    Tag = 5
    Database = DBTrill
    Transaction = IBTTRILL
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from BASE')
    UpdateObject = UPBASE
    Left = 648
    Top = 64
  end
  object UPBASE: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  TRILL,'
      '  RUMOR,'
      '  SHOW,'
      '  ENDFILE,'
      '  SERVER'
      'from BASE '
      'where'
      '  TRILL = :TRILL')
    ModifySQL.Strings = (
      'update BASE'
      'set'
      '  TRILL = :TRILL,'
      '  RUMOR = :RUMOR,'
      '  SHOW = :SHOW,'
      '  ENDFILE = :ENDFILE,'
      '  SERVER = :SERVER'
      'where'
      '  TRILL = :OLD_TRILL')
    InsertSQL.Strings = (
      'insert into BASE'
      '  (TRILL, RUMOR, SHOW, ENDFILE, SERVER)'
      'values'
      '  (:TRILL, :RUMOR, :SHOW, :ENDFILE, :SERVER)')
    DeleteSQL.Strings = (
      'delete from BASE'
      'where'
      '  TRILL = :OLD_TRILL')
    Left = 696
    Top = 64
  end
  object DSBase: TDataSource
    DataSet = BASE
    Left = 672
    Top = 112
  end
  object TEtqProd: TIBQuery
    Database = DataBase
    Transaction = Transaction
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from ETQPROD')
    UpdateObject = UEtqProd
    GeneratorField.Field = 'COD_LOJAACES'
    Left = 336
    Top = 72
    object TEtqProdCOD_ETQPROD: TIntegerField
      FieldName = 'COD_ETQPROD'
      Origin = 'ETQPROD.COD_ETQPROD'
    end
    object TEtqProdDESCRICAO: TIBStringField
      FieldName = 'DESCRICAO'
      Origin = 'ETQPROD.DESCRICAO'
      Size = 15
    end
    object TEtqProdALTPAG: TIBBCDField
      FieldName = 'ALTPAG'
      Origin = 'ETQPROD.ALTPAG'
      Precision = 18
      Size = 3
    end
    object TEtqProdLARGPAG: TIBBCDField
      FieldName = 'LARGPAG'
      Origin = 'ETQPROD.LARGPAG'
      Precision = 18
      Size = 3
    end
    object TEtqProdQTDETQPAG: TIBBCDField
      FieldName = 'QTDETQPAG'
      Origin = 'ETQPROD.QTDETQPAG'
      Precision = 18
      Size = 3
    end
    object TEtqProdLINHAINI: TIntegerField
      FieldName = 'LINHAINI'
      Origin = 'ETQPROD.LINHAINI'
    end
    object TEtqProdCOLUNAINI: TIntegerField
      FieldName = 'COLUNAINI'
      Origin = 'ETQPROD.COLUNAINI'
    end
    object TEtqProdQTDCOLPAG: TIntegerField
      FieldName = 'QTDCOLPAG'
      Origin = 'ETQPROD.QTDCOLPAG'
    end
    object TEtqProdLARGCODBARRA: TIntegerField
      FieldName = 'LARGCODBARRA'
      Origin = 'ETQPROD.LARGCODBARRA'
    end
    object TEtqProdCOMPCODBARRA: TIntegerField
      FieldName = 'COMPCODBARRA'
      Origin = 'ETQPROD.COMPCODBARRA'
    end
    object TEtqProdINTERVLINHA: TIntegerField
      FieldName = 'INTERVLINHA'
      Origin = 'ETQPROD.INTERVLINHA'
    end
    object TEtqProdINTERVCOL: TIntegerField
      FieldName = 'INTERVCOL'
      Origin = 'ETQPROD.INTERVCOL'
    end
    object TEtqProdTAMFONTE: TSmallintField
      FieldName = 'TAMFONTE'
      Origin = 'ETQPROD.TAMFONTE'
    end
    object TEtqProdTAMDESC: TSmallintField
      FieldName = 'TAMDESC'
      Origin = 'ETQPROD.TAMDESC'
    end
  end
  object UEtqProd: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  COD_ETQPROD,'
      '  DESCRICAO,'
      '  ALTPAG,'
      '  LARGPAG,'
      '  QTDETQPAG,'
      '  LINHAINI,'
      '  COLUNAINI,'
      '  QTDCOLPAG,'
      '  LARGCODBARRA,'
      '  COMPCODBARRA,'
      '  INTERVLINHA,'
      '  INTERVCOL,'
      '  TAMFONTE,'
      '  TAMDESC'
      'from ETQPROD '
      'where'
      '  COD_ETQPROD = :COD_ETQPROD')
    ModifySQL.Strings = (
      'update ETQPROD'
      'set'
      '  COD_ETQPROD = :COD_ETQPROD,'
      '  DESCRICAO = :DESCRICAO,'
      '  ALTPAG = :ALTPAG,'
      '  LARGPAG = :LARGPAG,'
      '  QTDETQPAG = :QTDETQPAG,'
      '  LINHAINI = :LINHAINI,'
      '  COLUNAINI = :COLUNAINI,'
      '  QTDCOLPAG = :QTDCOLPAG,'
      '  LARGCODBARRA = :LARGCODBARRA,'
      '  COMPCODBARRA = :COMPCODBARRA,'
      '  INTERVLINHA = :INTERVLINHA,'
      '  INTERVCOL = :INTERVCOL,'
      '  TAMFONTE = :TAMFONTE,'
      '  TAMDESC = :TAMDESC'
      'where'
      '  COD_ETQPROD = :OLD_COD_ETQPROD')
    InsertSQL.Strings = (
      'insert into ETQPROD'
      
        '  (COD_ETQPROD, DESCRICAO, ALTPAG, LARGPAG, QTDETQPAG, LINHAINI,' +
        ' COLUNAINI, '
      
        '   QTDCOLPAG, LARGCODBARRA, COMPCODBARRA, INTERVLINHA, INTERVCOL' +
        ', TAMFONTE, '
      '   TAMDESC)'
      'values'
      
        '  (:COD_ETQPROD, :DESCRICAO, :ALTPAG, :LARGPAG, :QTDETQPAG, :LIN' +
        'HAINI, '
      
        '   :COLUNAINI, :QTDCOLPAG, :LARGCODBARRA, :COMPCODBARRA, :INTERV' +
        'LINHA, '
      '   :INTERVCOL, :TAMFONTE, :TAMDESC)')
    DeleteSQL.Strings = (
      'delete from ETQPROD'
      'where'
      '  COD_ETQPROD = :OLD_COD_ETQPROD')
    Left = 336
    Top = 120
  end
  object DEtqProd: TDataSource
    DataSet = TEtqProd
    Left = 337
    Top = 168
  end
  object TReg: TIBQuery
    Database = DataBase
    Transaction = Transaction
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from REGISTRO')
    UpdateObject = UPReg
    GeneratorField.Field = 'COD_LOJAACES'
    Left = 488
    Top = 224
    object TRegCOD_REGISTRO: TIntegerField
      FieldName = 'COD_REGISTRO'
    end
    object TRegDATA: TDateField
      FieldName = 'DATA'
    end
    object TRegHORA: TTimeField
      FieldName = 'HORA'
    end
    object TRegCOD_USUARIO: TIntegerField
      FieldName = 'COD_USUARIO'
    end
    object TRegUSUARIO: TIBStringField
      FieldName = 'USUARIO'
      Size = 25
    end
    object TRegMODULO: TIBStringField
      FieldName = 'MODULO'
      Size = 25
    end
    object TRegCOMANDO: TIBStringField
      FieldName = 'COMANDO'
      Size = 25
    end
    object TRegDT_MODULO: TDateField
      FieldName = 'DT_MODULO'
    end
    object TRegTEXTO: TIBStringField
      FieldName = 'TEXTO'
      Size = 30
    end
    object TRegFIELD1: TIBStringField
      FieldName = 'FIELD1'
      Size = 25
    end
  end
  object UPReg: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  COD_REGISTRO,'
      '  DATA,'
      '  HORA,'
      '  COD_USUARIO,'
      '  USUARIO,'
      '  MODULO,'
      '  COMANDO,'
      '  DT_MODULO,'
      '  TEXTO,'
      '  FIELD1'
      'from REGISTRO '
      'where'
      '  COD_REGISTRO = :COD_REGISTRO')
    ModifySQL.Strings = (
      'update REGISTRO'
      'set'
      '  COD_REGISTRO = :COD_REGISTRO,'
      '  DATA = :DATA,'
      '  HORA = :HORA,'
      '  COD_USUARIO = :COD_USUARIO,'
      '  USUARIO = :USUARIO,'
      '  MODULO = :MODULO,'
      '  COMANDO = :COMANDO,'
      '  DT_MODULO = :DT_MODULO,'
      '  TEXTO = :TEXTO,'
      '  FIELD1 = :FIELD1'
      'where'
      '  COD_REGISTRO = :OLD_COD_REGISTRO')
    InsertSQL.Strings = (
      'insert into REGISTRO'
      
        '  (COD_REGISTRO, DATA, HORA, COD_USUARIO, USUARIO, MODULO, COMAN' +
        'DO, DT_MODULO, '
      '   TEXTO, FIELD1)'
      'values'
      
        '  (:COD_REGISTRO, :DATA, :HORA, :COD_USUARIO, :USUARIO, :MODULO,' +
        ' :COMANDO, '
      '   :DT_MODULO, :TEXTO, :FIELD1)')
    DeleteSQL.Strings = (
      'delete from REGISTRO'
      'where'
      '  COD_REGISTRO = :OLD_COD_REGISTRO')
    Left = 488
    Top = 272
  end
  object DReg: TDataSource
    DataSet = TReg
    Left = 489
    Top = 320
  end
  object TMens: TIBQuery
    Database = DataBase
    Transaction = Transaction
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from MENSAGEM')
    UpdateObject = UMens
    GeneratorField.Field = 'COD_LOJAACES'
    Left = 537
    Top = 224
    object TMensCOD_MENSAGEM: TIntegerField
      FieldName = 'COD_MENSAGEM'
    end
    object TMensCOD_DE: TIntegerField
      FieldName = 'COD_DE'
    end
    object TMensDT_ENVIO: TDateField
      FieldName = 'DT_ENVIO'
      EditMask = '!99/99/0000;1;_'
    end
    object TMensHR_ENVIO: TTimeField
      FieldName = 'HR_ENVIO'
      EditMask = '!90:00;1;_'
    end
    object TMensCOD_PARA: TIntegerField
      FieldName = 'COD_PARA'
    end
    object TMensMENSAGEM: TIBStringField
      FieldName = 'MENSAGEM'
      Size = 100
    end
    object TMensDT_SHOW: TDateField
      FieldName = 'DT_SHOW'
      EditMask = '!99/99/0000;1;_'
    end
    object TMensHR_SHOW: TTimeField
      FieldName = 'HR_SHOW'
      EditMask = '!90:00;1;_'
    end
    object TMensSHOW: TIBStringField
      FieldName = 'SHOW'
      Size = 1
    end
  end
  object UMens: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  COD_MENSAGEM,'
      '  COD_DE,'
      '  DT_ENVIO,'
      '  HR_ENVIO,'
      '  COD_PARA,'
      '  MENSAGEM,'
      '  DT_SHOW,'
      '  HR_SHOW,'
      '  SHOW'
      'from MENSAGEM '
      'where'
      '  COD_MENSAGEM = :COD_MENSAGEM')
    ModifySQL.Strings = (
      'update MENSAGEM'
      'set'
      '  COD_MENSAGEM = :COD_MENSAGEM,'
      '  COD_DE = :COD_DE,'
      '  DT_ENVIO = :DT_ENVIO,'
      '  HR_ENVIO = :HR_ENVIO,'
      '  COD_PARA = :COD_PARA,'
      '  MENSAGEM = :MENSAGEM,'
      '  DT_SHOW = :DT_SHOW,'
      '  HR_SHOW = :HR_SHOW,'
      '  SHOW = :SHOW'
      'where'
      '  COD_MENSAGEM = :OLD_COD_MENSAGEM')
    InsertSQL.Strings = (
      'insert into MENSAGEM'
      
        '  (COD_MENSAGEM, COD_DE, DT_ENVIO, HR_ENVIO, COD_PARA, MENSAGEM,' +
        ' DT_SHOW, '
      '   HR_SHOW, SHOW)'
      'values'
      
        '  (:COD_MENSAGEM, :COD_DE, :DT_ENVIO, :HR_ENVIO, :COD_PARA, :MEN' +
        'SAGEM, '
      '   :DT_SHOW, :HR_SHOW, :SHOW)')
    DeleteSQL.Strings = (
      'delete from MENSAGEM'
      'where'
      '  COD_MENSAGEM = :OLD_COD_MENSAGEM')
    Left = 537
    Top = 272
  end
  object DMens: TDataSource
    DataSet = TMens
    Left = 538
    Top = 320
  end
  object TAlxMens: TIBQuery
    Database = DataBase
    Transaction = Transaction
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from MENSAGEM')
    GeneratorField.Field = 'COD_LOJAACES'
    Left = 185
    Top = 224
    object IntegerField1: TIntegerField
      FieldName = 'COD_MENSAGEM'
    end
    object IntegerField2: TIntegerField
      FieldName = 'COD_DE'
    end
    object DateField1: TDateField
      FieldName = 'DT_ENVIO'
      EditMask = '!99/99/0000;1;_'
    end
    object TimeField1: TTimeField
      FieldName = 'HR_ENVIO'
      EditMask = '!90:00;1;_'
    end
    object IntegerField3: TIntegerField
      FieldName = 'COD_PARA'
    end
    object IBStringField1: TIBStringField
      FieldName = 'MENSAGEM'
      Size = 100
    end
    object DateField2: TDateField
      FieldName = 'DT_SHOW'
      EditMask = '!99/99/0000;1;_'
    end
    object TimeField2: TTimeField
      FieldName = 'HR_SHOW'
      EditMask = '!90:00;1;_'
    end
    object IBStringField2: TIBStringField
      FieldName = 'SHOW'
      Size = 1
    end
  end
  object DAlxMens: TDataSource
    DataSet = TAlxMens
    Left = 186
    Top = 272
  end
  object TMP: TIBQuery
    Database = DataBase
    Transaction = Transaction
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from TMP')
    UpdateObject = UTMP
    GeneratorField.Field = 'COD_LOJAACES'
    Left = 585
    Top = 224
    object TMPDESC2: TIBStringField
      FieldName = 'DESC2'
      Origin = 'TMP.DESC2'
      Size = 15
    end
    object TMPVLR1: TIBBCDField
      FieldName = 'VLR1'
      Origin = 'TMP.VLR1'
      Precision = 9
      Size = 2
    end
    object TMPVLR2: TIBBCDField
      FieldName = 'VLR2'
      Origin = 'TMP.VLR2'
      Precision = 9
      Size = 2
    end
    object TMPCOD_TMP: TIntegerField
      FieldName = 'COD_TMP'
      Origin = 'TMP.COD_TMP'
    end
    object TMPINT1: TIntegerField
      FieldName = 'INT1'
      Origin = 'TMP.INT1'
    end
    object TMPDATA1: TDateField
      FieldName = 'DATA1'
      Origin = 'TMP.DATA1'
    end
    object TMPVLR3: TIBBCDField
      FieldName = 'VLR3'
      Origin = 'TMP.VLR3'
      Precision = 9
      Size = 2
    end
    object TMPVLR4: TIBBCDField
      FieldName = 'VLR4'
      Origin = 'TMP.VLR4'
      Precision = 9
      Size = 2
    end
    object TMPDESC1: TIBStringField
      FieldName = 'DESC1'
      Origin = 'TMP.DESC1'
      Size = 60
    end
    object TMPVLR5: TIBBCDField
      FieldName = 'VLR5'
      Origin = 'TMP.VLR5'
      Precision = 9
      Size = 2
    end
    object TMPVLR6: TIBBCDField
      FieldName = 'VLR6'
      Origin = 'TMP.VLR6'
      Precision = 9
      Size = 2
    end
    object TMPVLR7: TIBBCDField
      FieldName = 'VLR7'
      Origin = 'TMP.VLR7'
      Precision = 9
      Size = 2
    end
    object TMPDATA2: TDateField
      FieldName = 'DATA2'
      Origin = 'TMP.DATA2'
    end
    object TMPINT2: TIntegerField
      FieldName = 'INT2'
      Origin = 'TMP.INT2'
    end
    object TMPINT3: TIntegerField
      FieldName = 'INT3'
      Origin = 'TMP.INT3'
    end
    object TMPDESC3: TIBStringField
      FieldName = 'DESC3'
      Origin = 'TMP.DESC3'
      Size = 60
    end
    object TMPVLR8: TIBBCDField
      FieldName = 'VLR8'
      Origin = 'TMP.VLR8'
      Precision = 18
      Size = 2
    end
  end
  object UTMP: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  DESC1,'
      '  DESC2,'
      '  VLR1,'
      '  VLR2,'
      '  COD_TMP,'
      '  INT1,'
      '  DATA1,'
      '  VLR3,'
      '  VLR4,'
      '  VLR5,'
      '  VLR6,'
      '  VLR7,'
      '  DATA2,'
      '  INT2,'
      '  INT3,'
      '  DESC3,'
      '  VLR8'
      'from TMP '
      'where'
      '  COD_TMP = :COD_TMP')
    ModifySQL.Strings = (
      'update TMP'
      'set'
      '  DESC1 = :DESC1,'
      '  DESC2 = :DESC2,'
      '  VLR1 = :VLR1,'
      '  VLR2 = :VLR2,'
      '  COD_TMP = :COD_TMP,'
      '  INT1 = :INT1,'
      '  DATA1 = :DATA1,'
      '  VLR3 = :VLR3,'
      '  VLR4 = :VLR4,'
      '  VLR5 = :VLR5,'
      '  VLR6 = :VLR6,'
      '  VLR7 = :VLR7,'
      '  DATA2 = :DATA2,'
      '  INT2 = :INT2,'
      '  INT3 = :INT3,'
      '  DESC3 = :DESC3,'
      '  VLR8 = :VLR8'
      'where'
      '  COD_TMP = :OLD_COD_TMP')
    InsertSQL.Strings = (
      'insert into TMP'
      
        '  (DESC1, DESC2, VLR1, VLR2, COD_TMP, INT1, DATA1, VLR3, VLR4, V' +
        'LR5, VLR6, '
      '   VLR7, DATA2, INT2, INT3, DESC3, VLR8)'
      'values'
      
        '  (:DESC1, :DESC2, :VLR1, :VLR2, :COD_TMP, :INT1, :DATA1, :VLR3,' +
        ' :VLR4, '
      '   :VLR5, :VLR6, :VLR7, :DATA2, :INT2, :INT3, :DESC3, :VLR8)')
    DeleteSQL.Strings = (
      'delete from TMP'
      'where'
      '  COD_TMP = :OLD_COD_TMP')
    Left = 585
    Top = 272
  end
  object DTMP: TDataSource
    DataSet = TMP
    Left = 586
    Top = 320
  end
  object TRel: TIBQuery
    Tag = 5
    Database = DataBase
    Transaction = Transaction
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        ' select vwcliente.cod_cliente, vwcliente.nome, credito.data, cre' +
        'dito.tipocred, credito.saldo, '
      
        ' credito.cod_credito, credito.documento, credito.valor from cred' +
        'ito '
      
        ' left join vwcliente on credito.cod_pessoa = vwcliente.cod_clien' +
        'te ')
    GeneratorField.Field = 'CODUSUARIO'
    Left = 231
    Top = 224
  end
  object DSRel: TDataSource
    DataSet = TRel
    Left = 231
    Top = 272
  end
  object TNF: TIBQuery
    Database = DataBase
    Transaction = Transaction
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'SELECT * FROM NF'
      '')
    UpdateObject = UNF
    GeneratorField.Field = 'CODUSUARIO'
    Left = 272
    Top = 224
    object TNFCOD_NF: TIntegerField
      FieldName = 'COD_NF'
      Origin = 'NF.COD_NF'
    end
    object TNFCAMPO: TIBStringField
      FieldName = 'CAMPO'
      Origin = 'NF.CAMPO'
      Size = 25
    end
    object TNFCOLUNA: TSmallintField
      FieldName = 'COLUNA'
      Origin = 'NF.COLUNA'
    end
    object TNFLINHA: TSmallintField
      FieldName = 'LINHA'
      Origin = 'NF.LINHA'
    end
    object TNFFONTE: TSmallintField
      FieldName = 'FONTE'
      Origin = 'NF.FONTE'
    end
    object TNFTAMANHO: TSmallintField
      FieldName = 'TAMANHO'
      Origin = 'NF.TAMANHO'
    end
    object TNFALINHAR: TIBStringField
      FieldName = 'ALINHAR'
      Origin = 'NF.ALINHAR'
      FixedChar = True
      Size = 1
    end
  end
  object UNF: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  COD_NF,'
      '  CAMPO,'
      '  COLUNA,'
      '  LINHA,'
      '  FONTE,'
      '  TAMANHO,'
      '  ALINHAR'
      'from NF '
      'where'
      '  COD_NF = :COD_NF')
    ModifySQL.Strings = (
      'update NF'
      'set'
      '  COD_NF = :COD_NF,'
      '  CAMPO = :CAMPO,'
      '  COLUNA = :COLUNA,'
      '  LINHA = :LINHA,'
      '  FONTE = :FONTE,'
      '  TAMANHO = :TAMANHO,'
      '  ALINHAR = :ALINHAR'
      'where'
      '  COD_NF = :OLD_COD_NF')
    InsertSQL.Strings = (
      'insert into NF'
      '  (COD_NF, CAMPO, COLUNA, LINHA, FONTE, TAMANHO, ALINHAR)'
      'values'
      '  (:COD_NF, :CAMPO, :COLUNA, :LINHA, :FONTE, :TAMANHO, :ALINHAR)')
    DeleteSQL.Strings = (
      'delete from NF'
      'where'
      '  COD_NF = :OLD_COD_NF')
    Left = 272
    Top = 268
  end
  object DNF: TDataSource
    DataSet = TNF
    Left = 272
    Top = 313
  end
  object Transaction: TIBTransaction
    Active = False
    DefaultDatabase = DataBase
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    AutoStopAction = saNone
    Left = 80
    Top = 8
  end
  object TLoja: TIBQuery
    Database = DataBase
    Transaction = Transaction
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from LOJA')
    UpdateObject = UPLoja
    Left = 120
    Top = 72
    object TLojaCOD_LOJA: TIntegerField
      FieldName = 'COD_LOJA'
      Origin = 'LOJA.COD_LOJA'
      Required = True
    end
    object TLojaCOD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
      Origin = 'LOJA.COD_EMPRESA'
    end
    object TLojaDESCRICAO: TIBStringField
      FieldName = 'DESCRICAO'
      Origin = 'LOJA.DESCRICAO'
      Size = 40
    end
    object TLojaMULTA: TFloatField
      FieldName = 'MULTA'
      Origin = 'LOJA.MULTA'
    end
    object TLojaJUROS: TFloatField
      FieldName = 'JUROS'
      Origin = 'LOJA.JUROS'
    end
    object TLojaGERENTE: TIBStringField
      FieldName = 'GERENTE'
      Origin = 'LOJA.GERENTE'
      Size = 40
    end
    object TLojaPLNCTA_RETCAI: TIntegerField
      FieldName = 'PLNCTA_RETCAI'
      Origin = 'LOJA.PLNCTA_RETCAI'
    end
    object TLojaNCASASZEROPROD: TIntegerField
      FieldName = 'NCASASZEROPROD'
      Origin = 'LOJA.NCASASZEROPROD'
    end
    object TLojaZEROCODPRODUTO: TIBStringField
      FieldName = 'ZEROCODPRODUTO'
      Origin = 'LOJA.ZEROCODPRODUTO'
      FixedChar = True
      Size = 1
    end
    object TLojaFECHAPED: TIBStringField
      FieldName = 'FECHAPED'
      Origin = 'LOJA.FECHAPED'
      FixedChar = True
      Size = 1
    end
    object TLojaATUAESTOQUE: TIBStringField
      FieldName = 'ATUAESTOQUE'
      Origin = 'LOJA.ATUAESTOQUE'
      FixedChar = True
      Size = 1
    end
    object TLojaVENDESTNEG: TIBStringField
      FieldName = 'VENDESTNEG'
      Origin = 'LOJA.VENDESTNEG'
      FixedChar = True
      Size = 1
    end
    object TLojaVENDSALDONEG: TIBStringField
      FieldName = 'VENDSALDONEG'
      Origin = 'LOJA.VENDSALDONEG'
      FixedChar = True
      Size = 1
    end
    object TLojaTITULOPRIM: TIBStringField
      FieldName = 'TITULOPRIM'
      Origin = 'LOJA.TITULOPRIM'
      Size = 40
    end
    object TLojaTITULOSEC: TIBStringField
      FieldName = 'TITULOSEC'
      Origin = 'LOJA.TITULOSEC'
      Size = 80
    end
    object TLojaRODAPEPED: TIBStringField
      FieldName = 'RODAPEPED'
      Origin = 'LOJA.RODAPEPED'
      Size = 80
    end
    object TLojaFONTTITPRIM: TIntegerField
      FieldName = 'FONTTITPRIM'
      Origin = 'LOJA.FONTTITPRIM'
    end
    object TLojaFONTTITSEC: TIntegerField
      FieldName = 'FONTTITSEC'
      Origin = 'LOJA.FONTTITSEC'
    end
    object TLojaFONTRODAPE: TIntegerField
      FieldName = 'FONTRODAPE'
      Origin = 'LOJA.FONTRODAPE'
    end
    object TLojaIMPPED: TIBStringField
      FieldName = 'IMPPED'
      Origin = 'LOJA.IMPPED'
      FixedChar = True
      Size = 1
    end
    object TLojaQTDCOPYPED: TIntegerField
      FieldName = 'QTDCOPYPED'
      Origin = 'LOJA.QTDCOPYPED'
    end
    object TLojaTEXTODUPREC: TBlobField
      FieldName = 'TEXTODUPREC'
      Origin = 'LOJA.TEXTODUPREC'
      Size = 8
    end
    object TLojaIMPPEDFECH: TIBStringField
      FieldName = 'IMPPEDFECH'
      Origin = 'LOJA.IMPPEDFECH'
      FixedChar = True
      Size = 1
    end
    object TLojaIMPDUP: TIBStringField
      FieldName = 'IMPDUP'
      Origin = 'LOJA.IMPDUP'
      FixedChar = True
      Size = 1
    end
    object TLojaIMPDUPAUT: TIBStringField
      FieldName = 'IMPDUPAUT'
      Origin = 'LOJA.IMPDUPAUT'
      FixedChar = True
      Size = 1
    end
    object TLojaCALVALVEND: TIBStringField
      FieldName = 'CALVALVEND'
      Origin = 'LOJA.CALVALVEND'
      FixedChar = True
      Size = 1
    end
    object TLojaPLNCTA_LANCINI: TIntegerField
      FieldName = 'PLNCTA_LANCINI'
      Origin = 'LOJA.PLNCTA_LANCINI'
    end
    object TLojaCONTCPFCNPJCLI: TIBStringField
      FieldName = 'CONTCPFCNPJCLI'
      Origin = 'LOJA.CONTCPFCNPJCLI'
      FixedChar = True
      Size = 1
    end
    object TLojaCONTCPFCNPJFOR: TIBStringField
      FieldName = 'CONTCPFCNPJFOR'
      Origin = 'LOJA.CONTCPFCNPJFOR'
      FixedChar = True
      Size = 1
    end
    object TLojaFOCUITEMPED: TIBStringField
      FieldName = 'FOCUITEMPED'
      Origin = 'LOJA.FOCUITEMPED'
      FixedChar = True
      Size = 2
    end
    object TLojaCAMPOPESQITEMPED: TIBStringField
      FieldName = 'CAMPOPESQITEMPED'
      Origin = 'LOJA.CAMPOPESQITEMPED'
      FixedChar = True
      Size = 2
    end
    object TLojaPLNCTA_VENDVISTA: TIntegerField
      FieldName = 'PLNCTA_VENDVISTA'
      Origin = 'LOJA.PLNCTA_VENDVISTA'
    end
    object TLojaPLNCTA_VENDPRAZO: TIntegerField
      FieldName = 'PLNCTA_VENDPRAZO'
      Origin = 'LOJA.PLNCTA_VENDPRAZO'
    end
    object TLojaPLNCTA_COMPVISTA: TIntegerField
      FieldName = 'PLNCTA_COMPVISTA'
      Origin = 'LOJA.PLNCTA_COMPVISTA'
    end
    object TLojaPLNCTA_COMPPRAZO: TIntegerField
      FieldName = 'PLNCTA_COMPPRAZO'
      Origin = 'LOJA.PLNCTA_COMPPRAZO'
    end
    object TLojaATIVIDADE: TIBStringField
      FieldName = 'ATIVIDADE'
      Origin = 'LOJA.ATIVIDADE'
      Size = 15
    end
    object TLojaVENDITEMPROD: TIBStringField
      FieldName = 'VENDITEMPROD'
      Origin = 'LOJA.VENDITEMPROD'
      FixedChar = True
      Size = 1
    end
    object TLojaJURCOMP: TIBStringField
      FieldName = 'JURCOMP'
      Origin = 'LOJA.JURCOMP'
      FixedChar = True
      Size = 1
    end
    object TLojaIEPRECO: TIBStringField
      FieldName = 'IEPRECO'
      Origin = 'LOJA.IEPRECO'
      FixedChar = True
      Size = 1
    end
    object TLojaIECODCOMPOSTO: TIBStringField
      FieldName = 'IECODCOMPOSTO'
      Origin = 'LOJA.IECODCOMPOSTO'
      FixedChar = True
      Size = 1
    end
    object TLojaIEMARCA: TIBStringField
      FieldName = 'IEMARCA'
      Origin = 'LOJA.IEMARCA'
      FixedChar = True
      Size = 1
    end
    object TLojaPLNCTA_JURCONCED: TIntegerField
      FieldName = 'PLNCTA_JURCONCED'
      Origin = 'LOJA.PLNCTA_JURCONCED'
    end
    object TLojaPLNCTA_JURREC: TIntegerField
      FieldName = 'PLNCTA_JURREC'
      Origin = 'LOJA.PLNCTA_JURREC'
    end
    object TLojaPLNCTA_DESCCONCED: TIntegerField
      FieldName = 'PLNCTA_DESCCONCED'
      Origin = 'LOJA.PLNCTA_DESCCONCED'
    end
    object TLojaPLNCTA_DESCREC: TIntegerField
      FieldName = 'PLNCTA_DESCREC'
      Origin = 'LOJA.PLNCTA_DESCREC'
    end
    object TLojaVALREP: TIBBCDField
      FieldName = 'VALREP'
      Origin = 'LOJA.VALREP'
      Precision = 18
      Size = 2
    end
    object TLojaIEDESC: TIBStringField
      FieldName = 'IEDESC'
      Origin = 'LOJA.IEDESC'
      FixedChar = True
      Size = 1
    end
    object TLojaIECODFAB: TIBStringField
      FieldName = 'IECODFAB'
      Origin = 'LOJA.IECODFAB'
      FixedChar = True
      Size = 1
    end
    object TLojaPLNCTA_SAICXCORR: TIntegerField
      FieldName = 'PLNCTA_SAICXCORR'
      Origin = 'LOJA.PLNCTA_SAICXCORR'
    end
    object TLojaPLNCTA_ENTCXCORR: TIntegerField
      FieldName = 'PLNCTA_ENTCXCORR'
      Origin = 'LOJA.PLNCTA_ENTCXCORR'
    end
    object TLojaCOD_CONSUMIDOR: TIntegerField
      FieldName = 'COD_CONSUMIDOR'
      Origin = 'LOJA.COD_CONSUMIDOR'
    end
    object TLojaCAMIMGPDV: TIBStringField
      FieldName = 'CAMIMGPDV'
      Origin = 'LOJA.CAMIMGPDV'
      Size = 100
    end
    object TLojaDIASCARE: TIntegerField
      FieldName = 'DIASCARE'
      Origin = 'LOJA.DIASCARE'
    end
    object TLojaISSQN: TIBBCDField
      FieldName = 'ISSQN'
      Origin = 'LOJA.ISSQN'
      Precision = 18
      Size = 2
    end
    object TLojaINSS: TIBBCDField
      FieldName = 'INSS'
      Origin = 'LOJA.INSS'
      Precision = 18
      Size = 2
    end
    object TLojaIMPREND: TIBBCDField
      FieldName = 'IMPREND'
      Origin = 'LOJA.IMPREND'
      Precision = 18
      Size = 2
    end
    object TLojaCONTSOC: TIBBCDField
      FieldName = 'CONTSOC'
      Origin = 'LOJA.CONTSOC'
      Precision = 18
      Size = 2
    end
    object TLojaPIS: TIBBCDField
      FieldName = 'PIS'
      Origin = 'LOJA.PIS'
      Precision = 18
      Size = 2
    end
    object TLojaCOFINS: TIBBCDField
      FieldName = 'COFINS'
      Origin = 'LOJA.COFINS'
      Precision = 18
      Size = 2
    end
    object TLojaOUTROIMPSERV: TIBBCDField
      FieldName = 'OUTROIMPSERV'
      Origin = 'LOJA.OUTROIMPSERV'
      Precision = 18
      Size = 2
    end
    object TLojaCOMISSAOSERV: TIBBCDField
      FieldName = 'COMISSAOSERV'
      Origin = 'LOJA.COMISSAOSERV'
      Precision = 18
      Size = 2
    end
    object TLojaTXTABERTORD: TMemoField
      FieldName = 'TXTABERTORD'
      Origin = 'LOJA.TXTABERTORD'
      BlobType = ftMemo
      Size = 8
    end
    object TLojaTXTFECHORD: TMemoField
      FieldName = 'TXTFECHORD'
      Origin = 'LOJA.TXTFECHORD'
      BlobType = ftMemo
      Size = 8
    end
    object TLojaPLNCTASERV: TIntegerField
      FieldName = 'PLNCTASERV'
      Origin = 'LOJA.PLNCTASERV'
    end
    object TLojaPLNCTASERVPRAZO: TIntegerField
      FieldName = 'PLNCTASERVPRAZO'
      Origin = 'LOJA.PLNCTASERVPRAZO'
    end
    object TLojaPROXCTRINT: TIBStringField
      FieldName = 'PROXCTRINT'
      Origin = 'LOJA.PROXCTRINT'
      Size = 15
    end
    object TLojaTIPOETPROD: TIBStringField
      FieldName = 'TIPOETPROD'
      Origin = 'LOJA.TIPOETPROD'
      Size = 10
    end
    object TLojaMOVPARCAVISTA: TIBStringField
      FieldName = 'MOVPARCAVISTA'
      Origin = 'LOJA.MOVPARCAVISTA'
      FixedChar = True
      Size = 1
    end
    object TLojaUTILFORMPG: TIBStringField
      FieldName = 'UTILFORMPG'
      Origin = 'LOJA.UTILFORMPG'
      FixedChar = True
      Size = 1
    end
    object TLojaCODPRODREL1: TIBStringField
      FieldName = 'CODPRODREL1'
      Origin = 'LOJA.CODPRODREL1'
      Size = 15
    end
    object TLojaCODPRODREL2: TIBStringField
      FieldName = 'CODPRODREL2'
      Origin = 'LOJA.CODPRODREL2'
      Size = 15
    end
    object TLojaALTCOMPROD: TIBStringField
      FieldName = 'ALTCOMPROD'
      Origin = 'LOJA.ALTCOMPROD'
      FixedChar = True
      Size = 1
    end
    object TLojaETPERSONAL: TIBStringField
      FieldName = 'ETPERSONAL'
      Origin = 'LOJA.ETPERSONAL'
      FixedChar = True
      Size = 1
    end
    object TLojaCOD_ETQPROD: TIntegerField
      FieldName = 'COD_ETQPROD'
      Origin = 'LOJA.COD_ETQPROD'
    end
    object TLojaUSAMULTCOMIS: TIBStringField
      FieldName = 'USAMULTCOMIS'
      Origin = 'LOJA.USAMULTCOMIS'
      FixedChar = True
      Size = 1
    end
    object TLojaDIASBLOQCLI: TIntegerField
      FieldName = 'DIASBLOQCLI'
      Origin = 'LOJA.DIASBLOQCLI'
    end
    object TLojaCAMIMGLOGO: TIBStringField
      FieldName = 'CAMIMGLOGO'
      Origin = 'LOJA.CAMIMGLOGO'
      Size = 100
    end
    object TLojaTMP1: TMemoField
      FieldName = 'TMP1'
      Origin = 'LOJA.TMP1'
      BlobType = ftMemo
      Size = 8
    end
    object TLojaTMP2: TMemoField
      FieldName = 'TMP2'
      Origin = 'LOJA.TMP2'
      BlobType = ftMemo
      Size = 8
    end
    object TLojaUSAGARANTIA: TIBStringField
      FieldName = 'USAGARANTIA'
      Origin = 'LOJA.USAGARANTIA'
      FixedChar = True
      Size = 1
    end
    object TLojaCOD_GRUPOMT: TIntegerField
      FieldName = 'COD_GRUPOMT'
      Origin = 'LOJA.COD_GRUPOMT'
    end
    object TLojaCTAFRTCOMP: TIntegerField
      FieldName = 'CTAFRTCOMP'
      Origin = 'LOJA.CTAFRTCOMP'
    end
    object TLojaCTAFRTVEND: TIntegerField
      FieldName = 'CTAFRTVEND'
      Origin = 'LOJA.CTAFRTVEND'
    end
    object TLojaCONVERTUNID: TIBStringField
      FieldName = 'CONVERTUNID'
      Origin = 'LOJA.CONVERTUNID'
      FixedChar = True
      Size = 1
    end
    object TLojaFRASEECF: TIBStringField
      FieldName = 'FRASEECF'
      Origin = 'LOJA.FRASEECF'
      Size = 100
    end
    object TLojaPORTAECF: TIBStringField
      FieldName = 'PORTAECF'
      Origin = 'LOJA.PORTAECF'
      Size = 10
    end
    object TLojaTIPOFISCAL: TIBStringField
      FieldName = 'TIPOFISCAL'
      Origin = 'LOJA.TIPOFISCAL'
      Size = 10
    end
    object TLojaENDREL: TIBStringField
      FieldName = 'ENDREL'
      Origin = 'LOJA.ENDREL'
      Size = 40
    end
    object TLojaPLNCTATRANSFBANCO: TIntegerField
      FieldName = 'PLNCTATRANSFBANCO'
      Origin = 'LOJA.PLNCTATRANSFBANCO'
    end
    object TLojaPLNCTATRANSFCAIXA: TIntegerField
      FieldName = 'PLNCTATRANSFCAIXA'
      Origin = 'LOJA.PLNCTATRANSFCAIXA'
    end
    object TLojaCTRLDVL: TIBStringField
      FieldName = 'CTRLDVL'
      Origin = 'LOJA.CTRLDVL'
      FixedChar = True
      Size = 1
    end
    object TLojaCTRLMENS: TIBStringField
      FieldName = 'CTRLMENS'
      Origin = 'LOJA.CTRLMENS'
      FixedChar = True
      Size = 1
    end
    object TLojaTIMEMENS: TIntegerField
      FieldName = 'TIMEMENS'
      Origin = 'LOJA.TIMEMENS'
    end
    object TLojaPRIMTITCUPOM: TIBStringField
      FieldName = 'PRIMTITCUPOM'
      Origin = 'LOJA.PRIMTITCUPOM'
      Size = 40
    end
    object TLojaSEGTITCUPOM: TIBStringField
      FieldName = 'SEGTITCUPOM'
      Origin = 'LOJA.SEGTITCUPOM'
      Size = 40
    end
    object TLojaTERCTITCUPOM: TIBStringField
      FieldName = 'TERCTITCUPOM'
      Origin = 'LOJA.TERCTITCUPOM'
      Size = 40
    end
    object TLojaIMPOUTINFC: TIBStringField
      FieldName = 'IMPOUTINFC'
      Origin = 'LOJA.IMPOUTINFC'
      FixedChar = True
      Size = 1
    end
    object TLojaNOMECAMPOAUXPROD: TIBStringField
      FieldName = 'NOMECAMPOAUXPROD'
      Origin = 'LOJA.NOMECAMPOAUXPROD'
      Size = 15
    end
    object TLojaCOMISSPRODCADPROD: TIBStringField
      FieldName = 'COMISSPRODCADPROD'
      Origin = 'LOJA.COMISSPRODCADPROD'
      FixedChar = True
      Size = 1
    end
    object TLojaOPERADESCCUPOM: TIBStringField
      FieldName = 'OPERADESCCUPOM'
      Origin = 'LOJA.OPERADESCCUPOM'
      FixedChar = True
      Size = 1
    end
    object TLojaTITULODESCCUPOM: TIBStringField
      FieldName = 'TITULODESCCUPOM'
      Origin = 'LOJA.TITULODESCCUPOM'
      Size = 15
    end
    object TLojaIEBARRA: TIBStringField
      FieldName = 'IEBARRA'
      Origin = 'LOJA.IEBARRA'
      FixedChar = True
      Size = 1
    end
    object TLojaCTRLIMPCUPOMCX: TIBStringField
      FieldName = 'CTRLIMPCUPOMCX'
      Origin = 'LOJA.CTRLIMPCUPOMCX'
      FixedChar = True
      Size = 1
    end
    object TLojaR50: TIBStringField
      FieldName = 'R50'
      Origin = 'LOJA.R50'
      Size = 5
    end
    object TLojaR51: TIBStringField
      FieldName = 'R51'
      Origin = 'LOJA.R51'
      Size = 5
    end
    object TLojaR53: TIBStringField
      FieldName = 'R53'
      Origin = 'LOJA.R53'
      Size = 5
    end
    object TLojaR54: TIBStringField
      FieldName = 'R54'
      Origin = 'LOJA.R54'
      Size = 5
    end
    object TLojaR55: TIBStringField
      FieldName = 'R55'
      Origin = 'LOJA.R55'
      Size = 5
    end
    object TLojaR56: TIBStringField
      FieldName = 'R56'
      Origin = 'LOJA.R56'
      Size = 5
    end
    object TLojaR60M: TIBStringField
      FieldName = 'R60M'
      Origin = 'LOJA.R60M'
      Size = 5
    end
    object TLojaR60MECF: TIBStringField
      FieldName = 'R60MECF'
      Origin = 'LOJA.R60MECF'
      Size = 5
    end
    object TLojaR60D: TIBStringField
      FieldName = 'R60D'
      Origin = 'LOJA.R60D'
      Size = 5
    end
    object TLojaR60I: TIBStringField
      FieldName = 'R60I'
      Origin = 'LOJA.R60I'
      Size = 5
    end
    object TLojaR60R: TIBStringField
      FieldName = 'R60R'
      Origin = 'LOJA.R60R'
      Size = 5
    end
    object TLojaR61: TIBStringField
      FieldName = 'R61'
      Origin = 'LOJA.R61'
      Size = 5
    end
    object TLojaR61R: TIBStringField
      FieldName = 'R61R'
      Origin = 'LOJA.R61R'
      Size = 5
    end
    object TLojaR70: TIBStringField
      FieldName = 'R70'
      Origin = 'LOJA.R70'
      Size = 5
    end
    object TLojaR71: TIBStringField
      FieldName = 'R71'
      Origin = 'LOJA.R71'
      Size = 5
    end
    object TLojaR74: TIBStringField
      FieldName = 'R74'
      Origin = 'LOJA.R74'
      Size = 5
    end
    object TLojaR75: TIBStringField
      FieldName = 'R75'
      Origin = 'LOJA.R75'
      Size = 5
    end
    object TLojaR76: TIBStringField
      FieldName = 'R76'
      Origin = 'LOJA.R76'
      Size = 5
    end
    object TLojaR77: TIBStringField
      FieldName = 'R77'
      Origin = 'LOJA.R77'
      Size = 5
    end
    object TLojaR88SF: TIBStringField
      FieldName = 'R88SF'
      Origin = 'LOJA.R88SF'
      Size = 5
    end
    object TLojaR88PN: TIBStringField
      FieldName = 'R88PN'
      Origin = 'LOJA.R88PN'
      Size = 5
    end
    object TLojaR88GT: TIBStringField
      FieldName = 'R88GT'
      Origin = 'LOJA.R88GT'
      Size = 5
    end
    object TLojaR60A: TIBStringField
      FieldName = 'R60A'
      Origin = 'LOJA.R60A'
      Size = 5
    end
    object TLojaR60AECF: TIBStringField
      FieldName = 'R60AECF'
      Origin = 'LOJA.R60AECF'
      Size = 5
    end
    object TLojaMODELONF: TIBStringField
      FieldName = 'MODELONF'
      Origin = 'LOJA.MODELONF'
      Size = 4
    end
    object TLojaSERIENF: TIBStringField
      FieldName = 'SERIENF'
      Origin = 'LOJA.SERIENF'
      Size = 4
    end
    object TLojaNFIMP: TIBStringField
      FieldName = 'NFIMP'
      Origin = 'LOJA.NFIMP'
      Size = 25
    end
    object TLojaNFENTLINPROD: TSmallintField
      FieldName = 'NFENTLINPROD'
      Origin = 'LOJA.NFENTLINPROD'
    end
    object TLojaNFENTLINSERV: TSmallintField
      FieldName = 'NFENTLINSERV'
      Origin = 'LOJA.NFENTLINSERV'
    end
    object TLojaNFTAMPAPLIN: TSmallintField
      FieldName = 'NFTAMPAPLIN'
      Origin = 'LOJA.NFTAMPAPLIN'
    end
    object TLojaNFTAMPAPCOL: TSmallintField
      FieldName = 'NFTAMPAPCOL'
      Origin = 'LOJA.NFTAMPAPCOL'
    end
    object TLojaNFITMAXPROD: TSmallintField
      FieldName = 'NFITMAXPROD'
      Origin = 'LOJA.NFITMAXPROD'
    end
    object TLojaNFITMAXSERV: TSmallintField
      FieldName = 'NFITMAXSERV'
      Origin = 'LOJA.NFITMAXSERV'
    end
    object TLojaNFENTLINRECIBO: TSmallintField
      FieldName = 'NFENTLINRECIBO'
      Origin = 'LOJA.NFENTLINRECIBO'
    end
    object TLojaIMGMENU: TIBStringField
      FieldName = 'IMGMENU'
      Origin = 'LOJA.IMGMENU'
      Size = 100
    end
    object TLojaIMGMENUTRANSP: TIBStringField
      FieldName = 'IMGMENUTRANSP'
      Origin = 'LOJA.IMGMENUTRANSP'
      FixedChar = True
      Size = 1
    end
    object TLojaIMGMENUEXPANDIR: TIBStringField
      FieldName = 'IMGMENUEXPANDIR'
      Origin = 'LOJA.IMGMENUEXPANDIR'
      FixedChar = True
      Size = 1
    end
    object TLojaIMGMENUCENTRO: TIBStringField
      FieldName = 'IMGMENUCENTRO'
      Origin = 'LOJA.IMGMENUCENTRO'
      FixedChar = True
      Size = 1
    end
    object TLojaIMGMENUPROPORC: TIBStringField
      FieldName = 'IMGMENUPROPORC'
      Origin = 'LOJA.IMGMENUPROPORC'
      FixedChar = True
      Size = 1
    end
    object TLojaNFDADOSADIC: TIBStringField
      FieldName = 'NFDADOSADIC'
      Origin = 'LOJA.NFDADOSADIC'
      Size = 60
    end
    object TLojaDESCCAMPADIC: TIBStringField
      FieldName = 'DESCCAMPADIC'
      Origin = 'LOJA.DESCCAMPADIC'
      Size = 25
    end
    object TLojaMODELOORDEM: TSmallintField
      FieldName = 'MODELOORDEM'
      Origin = 'LOJA.MODELOORDEM'
    end
    object TLojaREDE: TIBStringField
      FieldName = 'REDE'
      Origin = 'LOJA.REDE'
      FixedChar = True
      Size = 1
    end
    object TLojaCOD_PRODDIV: TIntegerField
      FieldName = 'COD_PRODDIV'
      Origin = 'LOJA.COD_PRODDIV'
    end
    object TLojaCOD_FORDEV: TIntegerField
      FieldName = 'COD_FORDEV'
      Origin = 'LOJA.COD_FORDEV'
    end
    object TLojaPLNCTA_DEVOLUCAO: TIntegerField
      FieldName = 'PLNCTA_DEVOLUCAO'
      Origin = 'LOJA.PLNCTA_DEVOLUCAO'
    end
    object TLojaCOD_CFOPDEV: TIntegerField
      FieldName = 'COD_CFOPDEV'
      Origin = 'LOJA.COD_CFOPDEV'
    end
    object TLojaECFTRUNC: TIBStringField
      FieldName = 'ECFTRUNC'
      Origin = 'LOJA.ECFTRUNC'
      FixedChar = True
      Size = 1
    end
    object TLojaPERCDEC: TIBBCDField
      FieldName = 'PERCDEC'
      Origin = 'LOJA.PERCDEC'
      Precision = 18
      Size = 2
    end
    object TLojaDIASDESC: TSmallintField
      FieldName = 'DIASDESC'
      Origin = 'LOJA.DIASDESC'
    end
    object TLojaIEALTLARG: TIBStringField
      FieldName = 'IEALTLARG'
      Origin = 'LOJA.IEALTLARG'
      FixedChar = True
      Size = 1
    end
    object TLojaIECOMPOSICAO: TIBStringField
      FieldName = 'IECOMPOSICAO'
      Origin = 'LOJA.IECOMPOSICAO'
      FixedChar = True
      Size = 1
    end
    object TLojaIEPRECOPRAZO: TIBStringField
      FieldName = 'IEPRECOPRAZO'
      Origin = 'LOJA.IEPRECOPRAZO'
      FixedChar = True
      Size = 1
    end
    object TLojaTMP3: TMemoField
      FieldName = 'TMP3'
      Origin = 'LOJA.TMP3'
      BlobType = ftMemo
      Size = 8
    end
    object TLojaIECLASS: TIBStringField
      FieldName = 'IECLASS'
      Origin = 'LOJA.IECLASS'
      FixedChar = True
      Size = 1
    end
    object TLojaIEFABR: TIBStringField
      FieldName = 'IEFABR'
      Origin = 'LOJA.IEFABR'
      FixedChar = True
      Size = 1
    end
    object TLojaIMPMATRICIAL: TIBStringField
      FieldName = 'IMPMATRICIAL'
      Origin = 'LOJA.IMPMATRICIAL'
      FixedChar = True
      Size = 1
    end
    object TLojaCOD_IMPMAT: TIntegerField
      FieldName = 'COD_IMPMAT'
      Origin = 'LOJA.COD_IMPMAT'
    end
    object TLojaMODELOORC: TSmallintField
      FieldName = 'MODELOORC'
      Origin = 'LOJA.MODELOORC'
    end
    object TLojaCOD_CFOPAUTO: TIntegerField
      FieldName = 'COD_CFOPAUTO'
      Origin = 'LOJA.COD_CFOPAUTO'
    end
    object TLojaPLNCTATRANSFCXCX: TIntegerField
      FieldName = 'PLNCTATRANSFCXCX'
      Origin = 'LOJA.PLNCTATRANSFCXCX'
    end
    object TLojaTXTPED: TIBStringField
      FieldName = 'TXTPED'
      Origin = 'LOJA.TXTPED'
      Size = 60
    end
    object TLojaTIPODUPLICATA: TIntegerField
      FieldName = 'TIPODUPLICATA'
      Origin = 'LOJA.TIPODUPLICATA'
    end
    object TLojaCOD_DUPPERSONAL: TIntegerField
      FieldName = 'COD_DUPPERSONAL'
      Origin = 'LOJA.COD_DUPPERSONAL'
    end
    object TLojaPROXDOCCTAREC: TIBStringField
      FieldName = 'PROXDOCCTAREC'
      Origin = 'LOJA.PROXDOCCTAREC'
      Size = 30
    end
    object TLojaIMPTHERMAL: TIBStringField
      FieldName = 'IMPTHERMAL'
      Origin = 'LOJA.IMPTHERMAL'
      Size = 60
    end
    object TLojaBUSCANPRODS: TIBStringField
      FieldName = 'BUSCANPRODS'
      Origin = 'LOJA.BUSCANPRODS'
      FixedChar = True
      Size = 1
    end
    object TLojaUSAGAVETA: TIBStringField
      FieldName = 'USAGAVETA'
      Origin = 'LOJA.USAGAVETA'
      FixedChar = True
      Size = 1
    end
    object TLojaTEXTOGARANTIA: TMemoField
      FieldName = 'TEXTOGARANTIA'
      Origin = 'LOJA.TEXTOGARANTIA'
      BlobType = ftMemo
      Size = 8
    end
    object TLojaDESC_TAXA_DESLOCA: TIBStringField
      FieldName = 'DESC_TAXA_DESLOCA'
      Origin = 'LOJA.DESC_TAXA_DESLOCA'
      Size = 40
    end
    object TLojaVLR_TAXA: TIBBCDField
      FieldName = 'VLR_TAXA'
      Origin = 'LOJA.VLR_TAXA'
      Precision = 18
      Size = 2
    end
    object TLojaWWW_PROCON: TIBStringField
      FieldName = 'WWW_PROCON'
      Origin = 'LOJA.WWW_PROCON'
      Size = 60
    end
    object TLojaFONE_PROCON: TIBStringField
      FieldName = 'FONE_PROCON'
      Origin = 'LOJA.FONE_PROCON'
      Size = 25
    end
    object TLojaEND_PROCON: TIBStringField
      FieldName = 'END_PROCON'
      Origin = 'LOJA.END_PROCON'
      Size = 60
    end
    object TLojaCOD_CONFIGCHEQUE: TIntegerField
      FieldName = 'COD_CONFIGCHEQUE'
      Origin = 'LOJA.COD_CONFIGCHEQUE'
    end
    object TLojaTIPORECIBO: TIBStringField
      FieldName = 'TIPORECIBO'
      Origin = 'LOJA.TIPORECIBO'
      Size = 25
    end
    object TLojaPAINEL_DESC: TIBStringField
      FieldName = 'PAINEL_DESC'
      Origin = 'LOJA.PAINEL_DESC'
      FixedChar = True
      Size = 1
    end
    object TLojaTIPOVENDA: TIBStringField
      FieldName = 'TIPOVENDA'
      Origin = 'LOJA.TIPOVENDA'
      FixedChar = True
      Size = 1
    end
    object TLojaPDVVLRUNIT: TIBStringField
      FieldName = 'PDVVLRUNIT'
      Origin = 'LOJA.PDVVLRUNIT'
      FixedChar = True
      Size = 1
    end
    object TLojaORDEMLOCA_GUINDASTE: TIBStringField
      FieldName = 'ORDEMLOCA_GUINDASTE'
      Origin = 'LOJA.ORDEMLOCA_GUINDASTE'
      FixedChar = True
      Size = 1
    end
    object TLojaGERAFINANCEIRO: TIBStringField
      FieldName = 'GERAFINANCEIRO'
      Origin = 'LOJA.GERAFINANCEIRO'
      FixedChar = True
      Size = 1
    end
    object TLojaMODELOPEDVENDA: TSmallintField
      FieldName = 'MODELOPEDVENDA'
      Origin = 'LOJA.MODELOPEDVENDA'
    end
    object TLojaTEXTOORCAMENTO: TMemoField
      FieldName = 'TEXTOORCAMENTO'
      Origin = 'LOJA.TEXTOORCAMENTO'
      BlobType = ftMemo
      Size = 8
    end
    object TLojaEXPORT_OS: TIBStringField
      FieldName = 'EXPORT_OS'
      Origin = 'LOJA.EXPORT_OS'
      Size = 100
    end
    object TLojaVISUALNF: TIBStringField
      FieldName = 'VISUALNF'
      Origin = 'LOJA.VISUALNF'
      FixedChar = True
      Size = 1
    end
    object TLojaVISUALRS: TIBStringField
      FieldName = 'VISUALRS'
      Origin = 'LOJA.VISUALRS'
      FixedChar = True
      Size = 1
    end
    object TLojaMODELOORDEMFECH: TSmallintField
      FieldName = 'MODELOORDEMFECH'
      Origin = 'LOJA.MODELOORDEMFECH'
    end
    object TLojaREVELCUSTOPRODUTO: TSmallintField
      FieldName = 'REVELCUSTOPRODUTO'
      Origin = 'LOJA.REVELCUSTOPRODUTO'
    end
    object TLojaMSGESTOQUEMIN: TIBStringField
      FieldName = 'MSGESTOQUEMIN'
      Origin = 'LOJA.MSGESTOQUEMIN'
      FixedChar = True
      Size = 1
    end
    object TLojaMSGLIMITCRED: TIBStringField
      FieldName = 'MSGLIMITCRED'
      Origin = 'LOJA.MSGLIMITCRED'
      Size = 5
    end
    object TLojaCFOPINTERNO: TIntegerField
      FieldName = 'CFOPINTERNO'
      Origin = 'LOJA.CFOPINTERNO'
    end
    object TLojaCFOPEXTERNO: TIntegerField
      FieldName = 'CFOPEXTERNO'
      Origin = 'LOJA.CFOPEXTERNO'
    end
    object TLojaCOD_CTAANTECIPCREDCLI: TIntegerField
      FieldName = 'COD_CTAANTECIPCREDCLI'
      Origin = 'LOJA.COD_CTAANTECIPCREDCLI'
    end
    object TLojaCOD_CTAANTECIPCREDFOR: TIntegerField
      FieldName = 'COD_CTAANTECIPCREDFOR'
      Origin = 'LOJA.COD_CTAANTECIPCREDFOR'
    end
    object TLojaCFOPINTERNOCST: TIntegerField
      FieldName = 'CFOPINTERNOCST'
      Origin = 'LOJA.CFOPINTERNOCST'
    end
    object TLojaCFOPEXPERTOCST: TIntegerField
      FieldName = 'CFOPEXPERTOCST'
      Origin = 'LOJA.CFOPEXPERTOCST'
    end
    object TLojaNFEVERSASCHEMA: TIBStringField
      FieldName = 'NFEVERSASCHEMA'
      Origin = 'LOJA.NFEVERSASCHEMA'
      Size = 15
    end
    object TLojaNFEPROHOMO: TSmallintField
      FieldName = 'NFEPROHOMO'
      Origin = 'LOJA.NFEPROHOMO'
    end
    object TLojaNFECERTIFICACAO: TIBStringField
      FieldName = 'NFECERTIFICACAO'
      Origin = 'LOJA.NFECERTIFICACAO'
      Size = 255
    end
    object TLojaNFELICENSA: TIBStringField
      FieldName = 'NFELICENSA'
      Origin = 'LOJA.NFELICENSA'
      Size = 150
    end
    object TLojaCONVERTUNIDVEND: TIBStringField
      FieldName = 'CONVERTUNIDVEND'
      Origin = 'LOJA.CONVERTUNIDVEND'
      FixedChar = True
      Size = 1
    end
    object TLojaCALCESTESTRUT: TIBStringField
      FieldName = 'CALCESTESTRUT'
      Origin = 'LOJA.CALCESTESTRUT'
      Size = 15
    end
    object TLojaCONVERTUNIDFERRO: TIBStringField
      FieldName = 'CONVERTUNIDFERRO'
      Origin = 'LOJA.CONVERTUNIDFERRO'
      FixedChar = True
      Size = 1
    end
    object TLojaNFENTLINDESP: TSmallintField
      FieldName = 'NFENTLINDESP'
      Origin = 'LOJA.NFENTLINDESP'
    end
    object TLojaNFITMAXDESP: TSmallintField
      FieldName = 'NFITMAXDESP'
      Origin = 'LOJA.NFITMAXDESP'
    end
    object TLojaECFINDICEALIQSERV: TIBStringField
      FieldName = 'ECFINDICEALIQSERV'
      Origin = 'LOJA.ECFINDICEALIQSERV'
      Size = 10
    end
  end
  object UPLoja: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select * '
      'from Loja '
      'where'
      '  COD_LOJA = :COD_LOJA')
    ModifySQL.Strings = (
      'update Loja'
      'set'
      '  COD_LOJA = :COD_LOJA,'
      '  COD_EMPRESA = :COD_EMPRESA,'
      '  DESCRICAO = :DESCRICAO,'
      '  MULTA = :MULTA,'
      '  JUROS = :JUROS,'
      '  GERENTE = :GERENTE,'
      '  PLNCTA_RETCAI = :PLNCTA_RETCAI,'
      '  NCASASZEROPROD = :NCASASZEROPROD,'
      '  ZEROCODPRODUTO = :ZEROCODPRODUTO,'
      '  FECHAPED = :FECHAPED,'
      '  ATUAESTOQUE = :ATUAESTOQUE,'
      '  VENDESTNEG = :VENDESTNEG,'
      '  VENDSALDONEG = :VENDSALDONEG,'
      '  TITULOPRIM = :TITULOPRIM,'
      '  TITULOSEC = :TITULOSEC,'
      '  RODAPEPED = :RODAPEPED,'
      '  FONTTITPRIM = :FONTTITPRIM,'
      '  FONTTITSEC = :FONTTITSEC,'
      '  FONTRODAPE = :FONTRODAPE,'
      '  IMPPED = :IMPPED,'
      '  QTDCOPYPED = :QTDCOPYPED,'
      '  TEXTODUPREC = :TEXTODUPREC,'
      '  IMPPEDFECH = :IMPPEDFECH,'
      '  IMPDUP = :IMPDUP,'
      '  IMPDUPAUT = :IMPDUPAUT,'
      '  CALVALVEND = :CALVALVEND,'
      '  PLNCTA_LANCINI = :PLNCTA_LANCINI,'
      '  CONTCPFCNPJCLI = :CONTCPFCNPJCLI,'
      '  CONTCPFCNPJFOR = :CONTCPFCNPJFOR,'
      '  FOCUITEMPED = :FOCUITEMPED,'
      '  CAMPOPESQITEMPED = :CAMPOPESQITEMPED,'
      '  PLNCTA_VENDVISTA = :PLNCTA_VENDVISTA,'
      '  PLNCTA_VENDPRAZO = :PLNCTA_VENDPRAZO,'
      '  PLNCTA_COMPVISTA = :PLNCTA_COMPVISTA,'
      '  PLNCTA_COMPPRAZO = :PLNCTA_COMPPRAZO,'
      '  ATIVIDADE = :ATIVIDADE,'
      '  VENDITEMPROD = :VENDITEMPROD,'
      '  JURCOMP = :JURCOMP,'
      '  IEPRECO = :IEPRECO,'
      '  IECODCOMPOSTO = :IECODCOMPOSTO,'
      '  IEMARCA = :IEMARCA,'
      '  PLNCTA_JURCONCED = :PLNCTA_JURCONCED,'
      '  PLNCTA_JURREC = :PLNCTA_JURREC,'
      '  PLNCTA_DESCCONCED = :PLNCTA_DESCCONCED,'
      '  PLNCTA_DESCREC = :PLNCTA_DESCREC,'
      '  VALREP = :VALREP,'
      '  IEDESC = :IEDESC,'
      '  IECODFAB = :IECODFAB,'
      '  PLNCTA_SAICXCORR = :PLNCTA_SAICXCORR,'
      '  PLNCTA_ENTCXCORR = :PLNCTA_ENTCXCORR,'
      '  COD_CONSUMIDOR = :COD_CONSUMIDOR,'
      '  CAMIMGPDV = :CAMIMGPDV,'
      '  DIASCARE = :DIASCARE,'
      '  ISSQN = :ISSQN,'
      '  INSS = :INSS,'
      '  IMPREND = :IMPREND,'
      '  CONTSOC = :CONTSOC,'
      '  PIS = :PIS,'
      '  COFINS = :COFINS,'
      '  OUTROIMPSERV = :OUTROIMPSERV,'
      '  COMISSAOSERV = :COMISSAOSERV,'
      '  TXTABERTORD = :TXTABERTORD,'
      '  TXTFECHORD = :TXTFECHORD,'
      '  PLNCTASERV = :PLNCTASERV,'
      '  PLNCTASERVPRAZO = :PLNCTASERVPRAZO,'
      '  PROXCTRINT = :PROXCTRINT,'
      '  TIPOETPROD = :TIPOETPROD,'
      '  MOVPARCAVISTA = :MOVPARCAVISTA,'
      '  UTILFORMPG = :UTILFORMPG,'
      '  CODPRODREL1 = :CODPRODREL1,'
      '  CODPRODREL2 = :CODPRODREL2,'
      '  ALTCOMPROD = :ALTCOMPROD,'
      '  ETPERSONAL = :ETPERSONAL,'
      '  COD_ETQPROD = :COD_ETQPROD,'
      '  USAMULTCOMIS = :USAMULTCOMIS,'
      '  DIASBLOQCLI = :DIASBLOQCLI,'
      '  CAMIMGLOGO = :CAMIMGLOGO,'
      '  TMP1 = :TMP1,'
      '  TMP2 = :TMP2,'
      '  USAGARANTIA = :USAGARANTIA,'
      '  COD_GRUPOMT = :COD_GRUPOMT,'
      '  CTAFRTCOMP = :CTAFRTCOMP,'
      '  CTAFRTVEND = :CTAFRTVEND,'
      '  CONVERTUNID = :CONVERTUNID,'
      '  FRASEECF = :FRASEECF,'
      '  PORTAECF = :PORTAECF,'
      '  TIPOFISCAL = :TIPOFISCAL,'
      '  ENDREL = :ENDREL,'
      '  PLNCTATRANSFBANCO = :PLNCTATRANSFBANCO,'
      '  PLNCTATRANSFCAIXA = :PLNCTATRANSFCAIXA,'
      '  CTRLDVL = :CTRLDVL,'
      '  CTRLMENS = :CTRLMENS,'
      '  TIMEMENS = :TIMEMENS,'
      '  PRIMTITCUPOM = :PRIMTITCUPOM,'
      '  SEGTITCUPOM = :SEGTITCUPOM,'
      '  TERCTITCUPOM = :TERCTITCUPOM,'
      '  IMPOUTINFC = :IMPOUTINFC,'
      '  NOMECAMPOAUXPROD = :NOMECAMPOAUXPROD,'
      '  COMISSPRODCADPROD = :COMISSPRODCADPROD,'
      '  OPERADESCCUPOM = :OPERADESCCUPOM,'
      '  TITULODESCCUPOM = :TITULODESCCUPOM,'
      '  IEBARRA = :IEBARRA,'
      '  CTRLIMPCUPOMCX = :CTRLIMPCUPOMCX,'
      '  R50 = :R50,'
      '  R51 = :R51,'
      '  R53 = :R53,'
      '  R54 = :R54,'
      '  R55 = :R55,'
      '  R56 = :R56,'
      '  R60M = :R60M,'
      '  R60MECF = :R60MECF,'
      '  R60D = :R60D,'
      '  R60I = :R60I,'
      '  R60R = :R60R,'
      '  R61 = :R61,'
      '  R61R = :R61R,'
      '  R70 = :R70,'
      '  R71 = :R71,'
      '  R74 = :R74,'
      '  R75 = :R75,'
      '  R76 = :R76,'
      '  R77 = :R77,'
      '  R88SF = :R88SF,'
      '  R88PN = :R88PN,'
      '  R88GT = :R88GT,'
      '  R60A = :R60A,'
      '  R60AECF = :R60AECF,'
      '  MODELONF = :MODELONF,'
      '  SERIENF = :SERIENF,'
      '  NFIMP = :NFIMP,'
      '  NFENTLINPROD = :NFENTLINPROD,'
      '  NFENTLINSERV = :NFENTLINSERV,'
      '  NFTAMPAPLIN = :NFTAMPAPLIN,'
      '  NFTAMPAPCOL = :NFTAMPAPCOL,'
      '  NFITMAXPROD = :NFITMAXPROD,'
      '  NFITMAXSERV = :NFITMAXSERV,'
      '  NFENTLINRECIBO = :NFENTLINRECIBO,'
      '  IMGMENU = :IMGMENU,'
      '  IMGMENUTRANSP = :IMGMENUTRANSP,'
      '  IMGMENUEXPANDIR = :IMGMENUEXPANDIR,'
      '  IMGMENUCENTRO = :IMGMENUCENTRO,'
      '  IMGMENUPROPORC = :IMGMENUPROPORC,'
      '  NFDADOSADIC = :NFDADOSADIC,'
      '  DESCCAMPADIC = :DESCCAMPADIC,'
      '  MODELOORDEM = :MODELOORDEM,'
      '  REDE = :REDE,'
      '  COD_PRODDIV = :COD_PRODDIV,'
      '  COD_FORDEV = :COD_FORDEV,'
      '  PLNCTA_DEVOLUCAO = :PLNCTA_DEVOLUCAO,'
      '  COD_CFOPDEV = :COD_CFOPDEV,'
      '  ECFTRUNC = :ECFTRUNC,'
      '  PERCDEC = :PERCDEC,'
      '  DIASDESC = :DIASDESC,'
      '  IEALTLARG = :IEALTLARG,'
      '  IECOMPOSICAO = :IECOMPOSICAO,'
      '  IEPRECOPRAZO = :IEPRECOPRAZO,'
      '  TMP3 = :TMP3,'
      '  IECLASS = :IECLASS,'
      '  IEFABR = :IEFABR,'
      '  IMPMATRICIAL = :IMPMATRICIAL,'
      '  COD_IMPMAT = :COD_IMPMAT,'
      '  MODELOORC = :MODELOORC,'
      '  COD_CFOPAUTO = :COD_CFOPAUTO,'
      '  PLNCTATRANSFCXCX = :PLNCTATRANSFCXCX,'
      '  TXTPED = :TXTPED,'
      '  TIPODUPLICATA = :TIPODUPLICATA,'
      '  COD_DUPPERSONAL = :COD_DUPPERSONAL,'
      '  PROXDOCCTAREC = :PROXDOCCTAREC,'
      '  IMPTHERMAL = :IMPTHERMAL,'
      '  BUSCANPRODS = :BUSCANPRODS,'
      '  USAGAVETA = :USAGAVETA,'
      '  TEXTOGARANTIA = :TEXTOGARANTIA,'
      '  DESC_TAXA_DESLOCA = :DESC_TAXA_DESLOCA,'
      '  VLR_TAXA = :VLR_TAXA,'
      '  WWW_PROCON = :WWW_PROCON,'
      '  FONE_PROCON = :FONE_PROCON,'
      '  END_PROCON = :END_PROCON,'
      '  COD_CONFIGCHEQUE = :COD_CONFIGCHEQUE,'
      '  TIPORECIBO = :TIPORECIBO,'
      '  PAINEL_DESC = :PAINEL_DESC,'
      '  TIPOVENDA = :TIPOVENDA,'
      '  PDVVLRUNIT = :PDVVLRUNIT,'
      '  ORDEMLOCA_GUINDASTE = :ORDEMLOCA_GUINDASTE,'
      '  GERAFINANCEIRO = :GERAFINANCEIRO,'
      '  MODELOPEDVENDA = :MODELOPEDVENDA,'
      '  TEXTOORCAMENTO = :TEXTOORCAMENTO,'
      '  EXPORT_OS = :EXPORT_OS,'
      '  VISUALNF = :VISUALNF,'
      '  VISUALRS = :VISUALRS,'
      '  MODELOORDEMFECH = :MODELOORDEMFECH,'
      '  REVELCUSTOPRODUTO = :REVELCUSTOPRODUTO,'
      '  MSGESTOQUEMIN = :MSGESTOQUEMIN,'
      '  MSGLIMITCRED = :MSGLIMITCRED,'
      '  CFOPINTERNO = :CFOPINTERNO,'
      '  CFOPEXTERNO = :CFOPEXTERNO,'
      '  COD_CTAANTECIPCREDCLI = :COD_CTAANTECIPCREDCLI,'
      '  COD_CTAANTECIPCREDFOR = :COD_CTAANTECIPCREDFOR,'
      '  CFOPINTERNOCST = :CFOPINTERNOCST,'
      '  CFOPEXPERTOCST = :CFOPEXPERTOCST,'
      '  NFEVERSASCHEMA = :NFEVERSASCHEMA,'
      '  NFEPROHOMO = :NFEPROHOMO,'
      '  NFELICENSA = :NFELICENSA,'
      '  NFECERTIFICACAO = :NFECERTIFICACAO,'
      '  CONVERTUNIDVEND = :CONVERTUNIDVEND,'
      '  CALCESTESTRUT = :CALCESTESTRUT,'
      '  CONVERTUNIDFERRO = :CONVERTUNIDFERRO,'
      '  NFENTLINDESP = :NFENTLINDESP,'
      '  NFITMAXDESP = :NFITMAXDESP,'
      '  ECFINDICEALIQSERV = :ECFINDICEALIQSERV'
      'where'
      '  COD_LOJA = :OLD_COD_LOJA')
    InsertSQL.Strings = (
      'insert into Loja'
      
        '  (COD_LOJA, COD_EMPRESA, DESCRICAO, MULTA, JUROS, GERENTE, PLNC' +
        'TA_RETCAI, '
      
        '   NCASASZEROPROD, ZEROCODPRODUTO, FECHAPED, ATUAESTOQUE, VENDES' +
        'TNEG, VENDSALDONEG, '
      
        '   TITULOPRIM, TITULOSEC, RODAPEPED, FONTTITPRIM, FONTTITSEC, FO' +
        'NTRODAPE, '
      
        '   IMPPED, QTDCOPYPED, TEXTODUPREC, IMPPEDFECH, IMPDUP, IMPDUPAU' +
        'T, CALVALVEND, '
      
        '   PLNCTA_LANCINI, CONTCPFCNPJCLI, CONTCPFCNPJFOR, FOCUITEMPED, ' +
        'CAMPOPESQITEMPED, '
      
        '   PLNCTA_VENDVISTA, PLNCTA_VENDPRAZO, PLNCTA_COMPVISTA, PLNCTA_' +
        'COMPPRAZO, '
      
        '   ATIVIDADE, VENDITEMPROD, JURCOMP, IEPRECO, IECODCOMPOSTO, IEM' +
        'ARCA, PLNCTA_JURCONCED, '
      
        '   PLNCTA_JURREC, PLNCTA_DESCCONCED, PLNCTA_DESCREC, VALREP, IED' +
        'ESC, IECODFAB, '
      
        '   PLNCTA_SAICXCORR, PLNCTA_ENTCXCORR, COD_CONSUMIDOR, CAMIMGPDV' +
        ', DIASCARE, '
      
        '   ISSQN, INSS, IMPREND, CONTSOC, PIS, COFINS, OUTROIMPSERV, COM' +
        'ISSAOSERV, '
      
        '   TXTABERTORD, TXTFECHORD, PLNCTASERV, PLNCTASERVPRAZO, PROXCTR' +
        'INT, TIPOETPROD, '
      
        '   MOVPARCAVISTA, UTILFORMPG, CODPRODREL1, CODPRODREL2, ALTCOMPR' +
        'OD, ETPERSONAL, '
      
        '   COD_ETQPROD, USAMULTCOMIS, DIASBLOQCLI, CAMIMGLOGO, TMP1, TMP' +
        '2, USAGARANTIA, '
      
        '   COD_GRUPOMT, CTAFRTCOMP, CTAFRTVEND, CONVERTUNID, FRASEECF, P' +
        'ORTAECF, '
      
        '   TIPOFISCAL, ENDREL, PLNCTATRANSFBANCO, PLNCTATRANSFCAIXA, CTR' +
        'LDVL, CTRLMENS, '
      
        '   TIMEMENS, PRIMTITCUPOM, SEGTITCUPOM, TERCTITCUPOM, IMPOUTINFC' +
        ', NOMECAMPOAUXPROD, '
      
        '   COMISSPRODCADPROD, OPERADESCCUPOM, TITULODESCCUPOM, IEBARRA, ' +
        'CTRLIMPCUPOMCX, '
      
        '   R50, R51, R53, R54, R55, R56, R60M, R60MECF, R60D, R60I, R60R' +
        ', R61, '
      
        '   R61R, R70, R71, R74, R75, R76, R77, R88SF, R88PN, R88GT, R60A' +
        ', R60AECF, '
      
        '   MODELONF, SERIENF, NFIMP, NFENTLINPROD, NFENTLINSERV, NFTAMPA' +
        'PLIN, NFTAMPAPCOL, '
      
        '   NFITMAXPROD, NFITMAXSERV, NFENTLINRECIBO, IMGMENU, IMGMENUTRA' +
        'NSP, IMGMENUEXPANDIR, '
      
        '   IMGMENUCENTRO, IMGMENUPROPORC, NFDADOSADIC, DESCCAMPADIC, MOD' +
        'ELOORDEM, '
      
        '   REDE, COD_PRODDIV, COD_FORDEV, PLNCTA_DEVOLUCAO, COD_CFOPDEV,' +
        ' ECFTRUNC, '
      
        '   PERCDEC, DIASDESC, IEALTLARG, IECOMPOSICAO, IEPRECOPRAZO, TMP' +
        '3, IECLASS, '
      
        '   IEFABR, IMPMATRICIAL, COD_IMPMAT, MODELOORC, COD_CFOPAUTO, PL' +
        'NCTATRANSFCXCX, '
      
        '   TXTPED, TIPODUPLICATA, COD_DUPPERSONAL, PROXDOCCTAREC, IMPTHE' +
        'RMAL, BUSCANPRODS, '
      
        '   USAGAVETA, TEXTOGARANTIA, DESC_TAXA_DESLOCA, VLR_TAXA, WWW_PR' +
        'OCON, FONE_PROCON, '
      
        '   END_PROCON, COD_CONFIGCHEQUE, TIPORECIBO, PAINEL_DESC, TIPOVE' +
        'NDA, PDVVLRUNIT, '
      
        '   ORDEMLOCA_GUINDASTE, GERAFINANCEIRO, MODELOPEDVENDA, TEXTOORC' +
        'AMENTO, '
      
        '   EXPORT_OS, VISUALNF, VISUALRS, MODELOORDEMFECH, REVELCUSTOPRO' +
        'DUTO, MSGESTOQUEMIN, '
      
        '   MSGLIMITCRED, CFOPINTERNO, CFOPEXTERNO, COD_CTAANTECIPCREDCLI' +
        ', COD_CTAANTECIPCREDFOR, '
      
        '   CFOPINTERNOCST, CFOPEXPERTOCST, NFEVERSASCHEMA, NFEPROHOMO, N' +
        'FELICENSA, '
      
        '   NFECERTIFICACAO, CONVERTUNIDVEND, CALCESTESTRUT, CONVERTUNIDF' +
        'ERRO, NFENTLINDESP, '
      '   NFITMAXDESP, ECFINDICEALIQSERV)'
      'values'
      
        '  (:COD_LOJA, :COD_EMPRESA, :DESCRICAO, :MULTA, :JUROS, :GERENTE' +
        ', :PLNCTA_RETCAI, '
      
        '   :NCASASZEROPROD, :ZEROCODPRODUTO, :FECHAPED, :ATUAESTOQUE, :V' +
        'ENDESTNEG, '
      
        '   :VENDSALDONEG, :TITULOPRIM, :TITULOSEC, :RODAPEPED, :FONTTITP' +
        'RIM, :FONTTITSEC, '
      
        '   :FONTRODAPE, :IMPPED, :QTDCOPYPED, :TEXTODUPREC, :IMPPEDFECH,' +
        ' :IMPDUP, '
      
        '   :IMPDUPAUT, :CALVALVEND, :PLNCTA_LANCINI, :CONTCPFCNPJCLI, :C' +
        'ONTCPFCNPJFOR, '
      
        '   :FOCUITEMPED, :CAMPOPESQITEMPED, :PLNCTA_VENDVISTA, :PLNCTA_V' +
        'ENDPRAZO, '
      
        '   :PLNCTA_COMPVISTA, :PLNCTA_COMPPRAZO, :ATIVIDADE, :VENDITEMPR' +
        'OD, :JURCOMP, '
      
        '   :IEPRECO, :IECODCOMPOSTO, :IEMARCA, :PLNCTA_JURCONCED, :PLNCT' +
        'A_JURREC, '
      
        '   :PLNCTA_DESCCONCED, :PLNCTA_DESCREC, :VALREP, :IEDESC, :IECOD' +
        'FAB, :PLNCTA_SAICXCORR, '
      
        '   :PLNCTA_ENTCXCORR, :COD_CONSUMIDOR, :CAMIMGPDV, :DIASCARE, :I' +
        'SSQN, :INSS, '
      
        '   :IMPREND, :CONTSOC, :PIS, :COFINS, :OUTROIMPSERV, :COMISSAOSE' +
        'RV, :TXTABERTORD, '
      
        '   :TXTFECHORD, :PLNCTASERV, :PLNCTASERVPRAZO, :PROXCTRINT, :TIP' +
        'OETPROD, '
      
        '   :MOVPARCAVISTA, :UTILFORMPG, :CODPRODREL1, :CODPRODREL2, :ALT' +
        'COMPROD, '
      
        '   :ETPERSONAL, :COD_ETQPROD, :USAMULTCOMIS, :DIASBLOQCLI, :CAMI' +
        'MGLOGO, '
      
        '   :TMP1, :TMP2, :USAGARANTIA, :COD_GRUPOMT, :CTAFRTCOMP, :CTAFR' +
        'TVEND, '
      
        '   :CONVERTUNID, :FRASEECF, :PORTAECF, :TIPOFISCAL, :ENDREL, :PL' +
        'NCTATRANSFBANCO, '
      
        '   :PLNCTATRANSFCAIXA, :CTRLDVL, :CTRLMENS, :TIMEMENS, :PRIMTITC' +
        'UPOM, :SEGTITCUPOM, '
      
        '   :TERCTITCUPOM, :IMPOUTINFC, :NOMECAMPOAUXPROD, :COMISSPRODCAD' +
        'PROD, :OPERADESCCUPOM, '
      
        '   :TITULODESCCUPOM, :IEBARRA, :CTRLIMPCUPOMCX, :R50, :R51, :R53' +
        ', :R54, '
      
        '   :R55, :R56, :R60M, :R60MECF, :R60D, :R60I, :R60R, :R61, :R61R' +
        ', :R70, '
      
        '   :R71, :R74, :R75, :R76, :R77, :R88SF, :R88PN, :R88GT, :R60A, ' +
        ':R60AECF, '
      
        '   :MODELONF, :SERIENF, :NFIMP, :NFENTLINPROD, :NFENTLINSERV, :N' +
        'FTAMPAPLIN, '
      
        '   :NFTAMPAPCOL, :NFITMAXPROD, :NFITMAXSERV, :NFENTLINRECIBO, :I' +
        'MGMENU, '
      
        '   :IMGMENUTRANSP, :IMGMENUEXPANDIR, :IMGMENUCENTRO, :IMGMENUPRO' +
        'PORC, :NFDADOSADIC, '
      
        '   :DESCCAMPADIC, :MODELOORDEM, :REDE, :COD_PRODDIV, :COD_FORDEV' +
        ', :PLNCTA_DEVOLUCAO, '
      
        '   :COD_CFOPDEV, :ECFTRUNC, :PERCDEC, :DIASDESC, :IEALTLARG, :IE' +
        'COMPOSICAO, '
      
        '   :IEPRECOPRAZO, :TMP3, :IECLASS, :IEFABR, :IMPMATRICIAL, :COD_' +
        'IMPMAT, '
      
        '   :MODELOORC, :COD_CFOPAUTO, :PLNCTATRANSFCXCX, :TXTPED, :TIPOD' +
        'UPLICATA, '
      
        '   :COD_DUPPERSONAL, :PROXDOCCTAREC, :IMPTHERMAL, :BUSCANPRODS, ' +
        ':USAGAVETA, '
      
        '   :TEXTOGARANTIA, :DESC_TAXA_DESLOCA, :VLR_TAXA, :WWW_PROCON, :' +
        'FONE_PROCON, '
      
        '   :END_PROCON, :COD_CONFIGCHEQUE, :TIPORECIBO, :PAINEL_DESC, :T' +
        'IPOVENDA, '
      
        '   :PDVVLRUNIT, :ORDEMLOCA_GUINDASTE, :GERAFINANCEIRO, :MODELOPE' +
        'DVENDA, '
      
        '   :TEXTOORCAMENTO, :EXPORT_OS, :VISUALNF, :VISUALRS, :MODELOORD' +
        'EMFECH, '
      
        '   :REVELCUSTOPRODUTO, :MSGESTOQUEMIN, :MSGLIMITCRED, :CFOPINTER' +
        'NO, :CFOPEXTERNO, '
      
        '   :COD_CTAANTECIPCREDCLI, :COD_CTAANTECIPCREDFOR, :CFOPINTERNOC' +
        'ST, :CFOPEXPERTOCST, '
      
        '   :NFEVERSASCHEMA, :NFEPROHOMO, :NFELICENSA, :NFECERTIFICACAO, ' +
        ':CONVERTUNIDVEND, '
      
        '   :CALCESTESTRUT, :CONVERTUNIDFERRO, :NFENTLINDESP, :NFITMAXDES' +
        'P, :ECFINDICEALIQSERV)')
    DeleteSQL.Strings = (
      'delete from Loja'
      'where'
      '  COD_LOJA = :OLD_COD_LOJA')
    Left = 120
    Top = 120
  end
  object DSLoja: TDataSource
    DataSet = TLoja
    Left = 120
    Top = 168
  end
  object TItemEtqProd: TIBQuery
    Database = DataBase
    Transaction = Transaction
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from  ITENSETQPROD')
    UpdateObject = UItemEtqProd
    GeneratorField.Field = 'COD_LOJAACES'
    Left = 400
    Top = 72
    object TItemEtqProdCOD_ITENSETQPROD: TIntegerField
      FieldName = 'COD_ITENSETQPROD'
      Origin = 'ITENSETQPROD.COD_ITENSETQPROD'
    end
    object TItemEtqProdCAMPO: TIBStringField
      FieldName = 'CAMPO'
      Origin = 'ITENSETQPROD.CAMPO'
      Size = 25
    end
    object TItemEtqProdCOLUNA: TSmallintField
      FieldName = 'COLUNA'
      Origin = 'ITENSETQPROD.COLUNA'
    end
    object TItemEtqProdLINHA: TSmallintField
      FieldName = 'LINHA'
      Origin = 'ITENSETQPROD.LINHA'
    end
    object TItemEtqProdFONTE: TSmallintField
      FieldName = 'FONTE'
      Origin = 'ITENSETQPROD.FONTE'
    end
    object TItemEtqProdTAMANHO: TSmallintField
      FieldName = 'TAMANHO'
      Origin = 'ITENSETQPROD.TAMANHO'
    end
    object TItemEtqProdALINHAR: TIBStringField
      FieldName = 'ALINHAR'
      Origin = 'ITENSETQPROD.ALINHAR'
      FixedChar = True
      Size = 1
    end
    object TItemEtqProdCOD_ETQPROD: TIntegerField
      FieldName = 'COD_ETQPROD'
      Origin = 'ITENSETQPROD.COD_ETQPROD'
    end
    object TItemEtqProdNOMEFONTE: TIBStringField
      FieldName = 'NOMEFONTE'
      Origin = 'ITENSETQPROD.NOMEFONTE'
      Size = 25
    end
  end
  object UItemEtqProd: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  COD_ITENSETQPROD,'
      '  CAMPO,'
      '  COLUNA,'
      '  LINHA,'
      '  FONTE,'
      '  TAMANHO,'
      '  ALINHAR,'
      '  COD_ETQPROD,'
      '  NOMEFONTE'
      'from ITENSETQPROD '
      'where'
      '  COD_ITENSETQPROD = :COD_ITENSETQPROD')
    ModifySQL.Strings = (
      'update ITENSETQPROD'
      'set'
      '  COD_ITENSETQPROD = :COD_ITENSETQPROD,'
      '  CAMPO = :CAMPO,'
      '  COLUNA = :COLUNA,'
      '  LINHA = :LINHA,'
      '  FONTE = :FONTE,'
      '  TAMANHO = :TAMANHO,'
      '  ALINHAR = :ALINHAR,'
      '  COD_ETQPROD = :COD_ETQPROD,'
      '  NOMEFONTE = :NOMEFONTE'
      'where'
      '  COD_ITENSETQPROD = :OLD_COD_ITENSETQPROD')
    InsertSQL.Strings = (
      'insert into ITENSETQPROD'
      
        '  (COD_ITENSETQPROD, CAMPO, COLUNA, LINHA, FONTE, TAMANHO, ALINH' +
        'AR, COD_ETQPROD, '
      '   NOMEFONTE)'
      'values'
      
        '  (:COD_ITENSETQPROD, :CAMPO, :COLUNA, :LINHA, :FONTE, :TAMANHO,' +
        ' :ALINHAR, '
      '   :COD_ETQPROD, :NOMEFONTE)')
    DeleteSQL.Strings = (
      'delete from ITENSETQPROD'
      'where'
      '  COD_ITENSETQPROD = :OLD_COD_ITENSETQPROD')
    Left = 400
    Top = 120
  end
  object DItemEtqProd: TDataSource
    DataSet = TItemEtqProd
    Left = 401
    Top = 168
  end
  object TConfigDup: TIBQuery
    Database = DataBase
    Transaction = Transaction
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from  CONFIGDUP')
    UpdateObject = UConfigDup
    GeneratorField.Field = 'COD_LOJAACES'
    Left = 328
    Top = 224
    object TConfigDupCOD_CONFIGDUP: TIntegerField
      FieldName = 'COD_CONFIGDUP'
      Origin = 'CONFIGDUP.COD_CONFIGDUP'
    end
    object TConfigDupDESCRICAO: TIBStringField
      FieldName = 'DESCRICAO'
      Origin = 'CONFIGDUP.DESCRICAO'
      Size = 15
    end
    object TConfigDupALTPAG: TIBBCDField
      FieldName = 'ALTPAG'
      Origin = 'CONFIGDUP.ALTPAG'
      Precision = 18
      Size = 3
    end
    object TConfigDupLARGPAG: TIBBCDField
      FieldName = 'LARGPAG'
      Origin = 'CONFIGDUP.LARGPAG'
      Precision = 18
      Size = 3
    end
    object TConfigDupQTDETQPAG: TIBBCDField
      FieldName = 'QTDETQPAG'
      Origin = 'CONFIGDUP.QTDETQPAG'
      Precision = 18
      Size = 3
    end
    object TConfigDupLINHAINI: TIntegerField
      FieldName = 'LINHAINI'
      Origin = 'CONFIGDUP.LINHAINI'
    end
    object TConfigDupCOLUNAINI: TIntegerField
      FieldName = 'COLUNAINI'
      Origin = 'CONFIGDUP.COLUNAINI'
    end
    object TConfigDupQTDCOLPAG: TIntegerField
      FieldName = 'QTDCOLPAG'
      Origin = 'CONFIGDUP.QTDCOLPAG'
    end
    object TConfigDupLARGCODBARRA: TIntegerField
      FieldName = 'LARGCODBARRA'
      Origin = 'CONFIGDUP.LARGCODBARRA'
    end
    object TConfigDupCOMPCODBARRA: TIntegerField
      FieldName = 'COMPCODBARRA'
      Origin = 'CONFIGDUP.COMPCODBARRA'
    end
    object TConfigDupINTERVLINHA: TIntegerField
      FieldName = 'INTERVLINHA'
      Origin = 'CONFIGDUP.INTERVLINHA'
    end
    object TConfigDupINTERVCOL: TIntegerField
      FieldName = 'INTERVCOL'
      Origin = 'CONFIGDUP.INTERVCOL'
    end
    object TConfigDupTAMFONTE: TSmallintField
      FieldName = 'TAMFONTE'
      Origin = 'CONFIGDUP.TAMFONTE'
    end
    object TConfigDupTAMDESC: TSmallintField
      FieldName = 'TAMDESC'
      Origin = 'CONFIGDUP.TAMDESC'
    end
  end
  object UConfigDup: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  COD_CONFIGDUP,'
      '  DESCRICAO,'
      '  ALTPAG,'
      '  LARGPAG,'
      '  QTDETQPAG,'
      '  LINHAINI,'
      '  COLUNAINI,'
      '  QTDCOLPAG,'
      '  LARGCODBARRA,'
      '  COMPCODBARRA,'
      '  INTERVLINHA,'
      '  INTERVCOL,'
      '  TAMFONTE,'
      '  TAMDESC'
      'from CONFIGDUP '
      'where'
      '  COD_CONFIGDUP = :COD_CONFIGDUP')
    ModifySQL.Strings = (
      'update CONFIGDUP'
      'set'
      '  COD_CONFIGDUP = :COD_CONFIGDUP,'
      '  DESCRICAO = :DESCRICAO,'
      '  ALTPAG = :ALTPAG,'
      '  LARGPAG = :LARGPAG,'
      '  QTDETQPAG = :QTDETQPAG,'
      '  LINHAINI = :LINHAINI,'
      '  COLUNAINI = :COLUNAINI,'
      '  QTDCOLPAG = :QTDCOLPAG,'
      '  LARGCODBARRA = :LARGCODBARRA,'
      '  COMPCODBARRA = :COMPCODBARRA,'
      '  INTERVLINHA = :INTERVLINHA,'
      '  INTERVCOL = :INTERVCOL,'
      '  TAMFONTE = :TAMFONTE,'
      '  TAMDESC = :TAMDESC'
      'where'
      '  COD_CONFIGDUP = :OLD_COD_CONFIGDUP')
    InsertSQL.Strings = (
      'insert into CONFIGDUP'
      
        '  (COD_CONFIGDUP, DESCRICAO, ALTPAG, LARGPAG, QTDETQPAG, LINHAIN' +
        'I, COLUNAINI, '
      
        '   QTDCOLPAG, LARGCODBARRA, COMPCODBARRA, INTERVLINHA, INTERVCOL' +
        ', TAMFONTE, '
      '   TAMDESC)'
      'values'
      
        '  (:COD_CONFIGDUP, :DESCRICAO, :ALTPAG, :LARGPAG, :QTDETQPAG, :L' +
        'INHAINI, '
      
        '   :COLUNAINI, :QTDCOLPAG, :LARGCODBARRA, :COMPCODBARRA, :INTERV' +
        'LINHA, '
      '   :INTERVCOL, :TAMFONTE, :TAMDESC)')
    DeleteSQL.Strings = (
      'delete from CONFIGDUP'
      'where'
      '  COD_CONFIGDUP = :OLD_COD_CONFIGDUP')
    Left = 328
    Top = 272
  end
  object DConfigDup: TDataSource
    DataSet = TConfigDup
    Left = 329
    Top = 320
  end
  object TItensDupPerson: TIBQuery
    Database = DataBase
    Transaction = Transaction
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from ITENSDUPPERSON')
    UpdateObject = UItensDupPerson
    GeneratorField.Field = 'COD_LOJAACES'
    Left = 408
    Top = 224
    object TItensDupPersonCOD_ITENSDUPPERSON: TIntegerField
      FieldName = 'COD_ITENSDUPPERSON'
      Origin = 'ITENSDUPPERSON.COD_ITENSDUPPERSON'
    end
    object TItensDupPersonCAMPO: TIBStringField
      FieldName = 'CAMPO'
      Origin = 'ITENSDUPPERSON.CAMPO'
      Size = 25
    end
    object TItensDupPersonCOLUNA: TSmallintField
      FieldName = 'COLUNA'
      Origin = 'ITENSDUPPERSON.COLUNA'
    end
    object TItensDupPersonLINHA: TSmallintField
      FieldName = 'LINHA'
      Origin = 'ITENSDUPPERSON.LINHA'
    end
    object TItensDupPersonFONTE: TSmallintField
      FieldName = 'FONTE'
      Origin = 'ITENSDUPPERSON.FONTE'
    end
    object TItensDupPersonTAMANHO: TSmallintField
      FieldName = 'TAMANHO'
      Origin = 'ITENSDUPPERSON.TAMANHO'
    end
    object TItensDupPersonALINHAR: TIBStringField
      FieldName = 'ALINHAR'
      Origin = 'ITENSDUPPERSON.ALINHAR'
      FixedChar = True
      Size = 1
    end
    object TItensDupPersonCOD_DUPPERSON: TIntegerField
      FieldName = 'COD_DUPPERSON'
      Origin = 'ITENSDUPPERSON.COD_DUPPERSON'
    end
    object TItensDupPersonNOMEFONTE: TIBStringField
      FieldName = 'NOMEFONTE'
      Origin = 'ITENSDUPPERSON.NOMEFONTE'
      Size = 25
    end
  end
  object UItensDupPerson: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  COD_ITENSDUPPERSON,'
      '  CAMPO,'
      '  COLUNA,'
      '  LINHA,'
      '  FONTE,'
      '  TAMANHO,'
      '  ALINHAR,'
      '  COD_DUPPERSON,'
      '  NOMEFONTE'
      'from ITENSDUPPERSON '
      'where'
      '  COD_ITENSDUPPERSON = :COD_ITENSDUPPERSON')
    ModifySQL.Strings = (
      'update ITENSDUPPERSON'
      'set'
      '  COD_ITENSDUPPERSON = :COD_ITENSDUPPERSON,'
      '  CAMPO = :CAMPO,'
      '  COLUNA = :COLUNA,'
      '  LINHA = :LINHA,'
      '  FONTE = :FONTE,'
      '  TAMANHO = :TAMANHO,'
      '  ALINHAR = :ALINHAR,'
      '  COD_DUPPERSON = :COD_DUPPERSON,'
      '  NOMEFONTE = :NOMEFONTE'
      'From ITENSDUPPERSON'
      'where'
      '  COD_ITENSDUPPERSON = :OLD_COD_ITENSDUPPERSON')
    InsertSQL.Strings = (
      'insert into ITENSDUPPERSON'
      '  (COD_ITENSDUPPERSON, CAMPO, COLUNA, LINHA, FONTE, TAMANHO, '
      'ALINHAR, COD_DUPPERSON, '
      '   NOMEFONTE)'
      'values'
      
        '  (:COD_ITENSDUPPERSON, :CAMPO, :COLUNA, :LINHA, :FONTE, :TAMANH' +
        'O, '
      ':ALINHAR, '
      '   :COD_DUPPERSON, :NOMEFONTE)')
    DeleteSQL.Strings = (
      'delete from ITENSDUPPERSON'
      'where'
      '  COD_ITENSDUPPERSON = :OLD_COD_ITENSDUPPERSON')
    Left = 408
    Top = 272
  end
  object DItensDupPerson: TDataSource
    DataSet = TItensDupPerson
    Left = 409
    Top = 320
  end
  object TConfigCheque: TIBQuery
    Database = DataBase
    Transaction = Transaction
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from CONFIGCHEQUE')
    UpdateObject = UConfigCheque
    GeneratorField.Field = 'COD_LOJAACES'
    Left = 480
    Top = 72
    object TConfigChequeCOD_CONFIGCHEQUE: TIntegerField
      FieldName = 'COD_CONFIGCHEQUE'
      Origin = 'CONFIGCHEQUE.COD_CONFIGCHEQUE'
    end
    object TConfigChequeDESCRICAO: TIBStringField
      FieldName = 'DESCRICAO'
      Origin = 'CONFIGCHEQUE.DESCRICAO'
      Size = 40
    end
    object TConfigChequeALTPAG: TIBBCDField
      FieldName = 'ALTPAG'
      Origin = 'CONFIGCHEQUE.ALTPAG'
      Precision = 18
      Size = 2
    end
    object TConfigChequeLARGPAG: TIBBCDField
      FieldName = 'LARGPAG'
      Origin = 'CONFIGCHEQUE.LARGPAG'
      Precision = 18
      Size = 2
    end
    object TConfigChequeQTDCHEQUEPAG: TIBBCDField
      FieldName = 'QTDCHEQUEPAG'
      Origin = 'CONFIGCHEQUE.QTDCHEQUEPAG'
      Precision = 18
      Size = 2
    end
    object TConfigChequeLINHA_INI: TIntegerField
      FieldName = 'LINHA_INI'
      Origin = 'CONFIGCHEQUE.LINHA_INI'
    end
    object TConfigChequeENT_LINHA: TIntegerField
      FieldName = 'ENT_LINHA'
      Origin = 'CONFIGCHEQUE.ENT_LINHA'
    end
  end
  object UConfigCheque: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  COD_CONFIGCHEQUE,'
      '  DESCRICAO,'
      '  ALTPAG,'
      '  LARGPAG,'
      '  QTDCHEQUEPAG,'
      '  LINHA_INI,'
      '  ENT_LINHA'
      'from CONFIGCHEQUE '
      'where'
      '  COD_CONFIGCHEQUE = :COD_CONFIGCHEQUE')
    ModifySQL.Strings = (
      'update CONFIGCHEQUE'
      'set'
      '  COD_CONFIGCHEQUE = :COD_CONFIGCHEQUE,'
      '  DESCRICAO = :DESCRICAO,'
      '  ALTPAG = :ALTPAG,'
      '  LARGPAG = :LARGPAG,'
      '  QTDCHEQUEPAG = :QTDCHEQUEPAG,'
      '  LINHA_INI = :LINHA_INI,'
      '  ENT_LINHA = :ENT_LINHA'
      'where'
      '  COD_CONFIGCHEQUE = :OLD_COD_CONFIGCHEQUE')
    InsertSQL.Strings = (
      'insert into CONFIGCHEQUE'
      
        '  (COD_CONFIGCHEQUE, DESCRICAO, ALTPAG, LARGPAG, QTDCHEQUEPAG, L' +
        'INHA_INI, '
      '   ENT_LINHA)'
      'values'
      
        '  (:COD_CONFIGCHEQUE, :DESCRICAO, :ALTPAG, :LARGPAG, :QTDCHEQUEP' +
        'AG, :LINHA_INI, '
      '   :ENT_LINHA)')
    DeleteSQL.Strings = (
      'delete from CONFIGCHEQUE'
      'where'
      '  COD_CONFIGCHEQUE = :OLD_COD_CONFIGCHEQUE')
    Left = 480
    Top = 120
  end
  object DConfigCheque: TDataSource
    DataSet = TConfigCheque
    Left = 481
    Top = 168
  end
  object TItensCheque: TIBQuery
    Database = DataBase
    Transaction = Transaction
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from ITENSCONFIG_CHEQUE')
    UpdateObject = UItensCheque
    GeneratorField.Field = 'COD_LOJAACES'
    Left = 573
    Top = 72
    object TItensChequeCOD_ITENSCONFIG_CHEQUE: TIntegerField
      FieldName = 'COD_ITENSCONFIG_CHEQUE'
      Origin = 'ITENSCONFIG_CHEQUE.COD_ITENSCONFIG_CHEQUE'
    end
    object TItensChequeLINHA: TSmallintField
      FieldName = 'LINHA'
      Origin = 'ITENSCONFIG_CHEQUE.LINHA'
    end
    object TItensChequeCOLUNA: TSmallintField
      FieldName = 'COLUNA'
      Origin = 'ITENSCONFIG_CHEQUE.COLUNA'
    end
    object TItensChequeNOME_FONTE: TIBStringField
      FieldName = 'NOME_FONTE'
      Origin = 'ITENSCONFIG_CHEQUE.NOME_FONTE'
      Size = 10
    end
    object TItensChequeTAMANHO_FONTE: TIntegerField
      FieldName = 'TAMANHO_FONTE'
      Origin = 'ITENSCONFIG_CHEQUE.TAMANHO_FONTE'
    end
    object TItensChequeCAMPO: TIBStringField
      FieldName = 'CAMPO'
      Origin = 'ITENSCONFIG_CHEQUE.CAMPO'
      Size = 25
    end
    object TItensChequeCOD_CONFIGCHEQUE: TIntegerField
      FieldName = 'COD_CONFIGCHEQUE'
      Origin = 'ITENSCONFIG_CHEQUE.COD_CONFIGCHEQUE'
    end
    object TItensChequeTAMANHO_CAMPO: TIntegerField
      FieldName = 'TAMANHO_CAMPO'
      Origin = 'ITENSCONFIG_CHEQUE.TAMANHO_CAMPO'
    end
  end
  object UItensCheque: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  COD_ITENSCONFIG_CHEQUE,'
      '  LINHA,'
      '  COLUNA,'
      '  NOME_FONTE,'
      '  TAMANHO_FONTE,'
      '  CAMPO,'
      '  COD_CONFIGCHEQUE,'
      '  TAMANHO_CAMPO'
      'from ITENSCONFIG_CHEQUE '
      'where'
      '  COD_ITENSCONFIG_CHEQUE = :COD_ITENSCONFIG_CHEQUE')
    ModifySQL.Strings = (
      'update ITENSCONFIG_CHEQUE'
      'set'
      '  COD_ITENSCONFIG_CHEQUE = :COD_ITENSCONFIG_CHEQUE,'
      '  LINHA = :LINHA,'
      '  COLUNA = :COLUNA,'
      '  NOME_FONTE = :NOME_FONTE,'
      '  TAMANHO_FONTE = :TAMANHO_FONTE,'
      '  CAMPO = :CAMPO,'
      '  COD_CONFIGCHEQUE = :COD_CONFIGCHEQUE'
      ' TAMANHO_CAMPO = :TAMANHO_CAMPO'
      'where'
      '  COD_ITENSCONFIG_CHEQUE = :OLD_COD_ITENSCONFIG_CHEQUE')
    InsertSQL.Strings = (
      'insert into ITENSCONFIG_CHEQUE'
      '  (COD_ITENSCONFIG_CHEQUE, LINHA, COLUNA, NOME_FONTE, '
      'TAMANHO_FONTE, CAMPO,TAMANHO_CAMPO,'
      '   COD_CONFIGCHEQUE)'
      'values'
      '  (:COD_ITENSCONFIG_CHEQUE, :LINHA, :COLUNA, :NOME_FONTE, '
      ':TAMANHO_FONTE, '
      '   :CAMPO, :TAMANHO_CAMPO, :COD_CONFIGCHEQUE)')
    DeleteSQL.Strings = (
      'delete from ITENSCONFIG_CHEQUE'
      'where'
      '  COD_ITENSCONFIG_CHEQUE = :OLD_COD_ITENSCONFIG_CHEQUE')
    Left = 573
    Top = 120
  end
  object DItensCheque: TDataSource
    DataSet = TItensCheque
    Left = 574
    Top = 168
  end
  object TEmpresa: TIBQuery
    Database = DataBase
    Transaction = Transaction
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'SELECT * FROM EMPRESA')
    UpdateObject = UEMPRESA
    Left = 16
    Top = 72
    object TEmpresaCOD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
      Origin = 'EMPRESA.COD_EMPRESA'
      Required = True
    end
    object TEmpresaNUM_FILIAL: TIntegerField
      FieldName = 'NUM_FILIAL'
      Origin = 'EMPRESA.NUM_FILIAL'
    end
    object TEmpresaFANTASIA: TIBStringField
      FieldName = 'FANTASIA'
      Origin = 'EMPRESA.FANTASIA'
      Size = 100
    end
    object TEmpresaRAZAO_SOCIAL: TIBStringField
      FieldName = 'RAZAO_SOCIAL'
      Origin = 'EMPRESA.RAZAO_SOCIAL'
      Size = 100
    end
    object TEmpresaCOD_CIDADE: TIntegerField
      FieldName = 'COD_CIDADE'
      Origin = 'EMPRESA.COD_CIDADE'
    end
    object TEmpresaTIPO: TIBStringField
      FieldName = 'TIPO'
      Origin = 'EMPRESA.TIPO'
      FixedChar = True
      Size = 6
    end
    object TEmpresaENDERECO: TIBStringField
      FieldName = 'ENDERECO'
      Origin = 'EMPRESA.ENDERECO'
      Size = 100
    end
    object TEmpresaBAIRRO: TIBStringField
      FieldName = 'BAIRRO'
      Origin = 'EMPRESA.BAIRRO'
      Size = 40
    end
    object TEmpresaCEP: TIBStringField
      FieldName = 'CEP'
      Origin = 'EMPRESA.CEP'
      Size = 10
    end
    object TEmpresaCX_POSTAL: TIBStringField
      FieldName = 'CX_POSTAL'
      Origin = 'EMPRESA.CX_POSTAL'
      Size = 10
    end
    object TEmpresaCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = 'EMPRESA.CNPJ'
    end
    object TEmpresaINSC_EST: TIBStringField
      FieldName = 'INSC_EST'
      Origin = 'EMPRESA.INSC_EST'
    end
    object TEmpresaDATA_FUNDACAO: TDateField
      FieldName = 'DATA_FUNDACAO'
      Origin = 'EMPRESA.DATA_FUNDACAO'
    end
    object TEmpresaINSC_MUN: TIBStringField
      FieldName = 'INSC_MUN'
      Origin = 'EMPRESA.INSC_MUN'
    end
    object TEmpresaWEB_PAGE: TIBStringField
      FieldName = 'WEB_PAGE'
      Origin = 'EMPRESA.WEB_PAGE'
      Size = 100
    end
    object TEmpresaPROX_NF: TIntegerField
      FieldName = 'PROX_NF'
      Origin = 'EMPRESA.PROX_NF'
    end
    object TEmpresaCAD_SRF: TIBStringField
      FieldName = 'CAD_SRF'
      Origin = 'EMPRESA.CAD_SRF'
    end
    object TEmpresaICMS: TFloatField
      FieldName = 'ICMS'
      Origin = 'EMPRESA.ICMS'
    end
    object TEmpresaISSQN: TFloatField
      FieldName = 'ISSQN'
      Origin = 'EMPRESA.ISSQN'
    end
    object TEmpresaCVVPROAT: TIBBCDField
      FieldName = 'CVVPROAT'
      Origin = 'EMPRESA.CVVPROAT'
      Precision = 18
      Size = 2
    end
    object TEmpresaCVPPROAT: TIBBCDField
      FieldName = 'CVPPROAT'
      Origin = 'EMPRESA.CVPPROAT'
      Precision = 18
      Size = 2
    end
    object TEmpresaCVVPROVAR: TIBBCDField
      FieldName = 'CVVPROVAR'
      Origin = 'EMPRESA.CVVPROVAR'
      Precision = 18
      Size = 2
    end
    object TEmpresaCVPPROVAR: TIBBCDField
      FieldName = 'CVPPROVAR'
      Origin = 'EMPRESA.CVPPROVAR'
      Precision = 18
      Size = 2
    end
    object TEmpresaAVVPROAT: TIBBCDField
      FieldName = 'AVVPROAT'
      Origin = 'EMPRESA.AVVPROAT'
      Precision = 18
      Size = 2
    end
    object TEmpresaAVPPROAT: TIBBCDField
      FieldName = 'AVPPROAT'
      Origin = 'EMPRESA.AVPPROAT'
      Precision = 18
      Size = 2
    end
    object TEmpresaAVVPROVAR: TIBBCDField
      FieldName = 'AVVPROVAR'
      Origin = 'EMPRESA.AVVPROVAR'
      Precision = 18
      Size = 2
    end
    object TEmpresaAVPPROVAR: TIBBCDField
      FieldName = 'AVPPROVAR'
      Origin = 'EMPRESA.AVPPROVAR'
      Precision = 18
      Size = 2
    end
    object TEmpresaIMPFED: TIBBCDField
      FieldName = 'IMPFED'
      Origin = 'EMPRESA.IMPFED'
      Precision = 18
      Size = 2
    end
    object TEmpresaIMPEST: TIBBCDField
      FieldName = 'IMPEST'
      Origin = 'EMPRESA.IMPEST'
      Precision = 18
      Size = 2
    end
    object TEmpresaCOD_MOEDA: TIntegerField
      FieldName = 'COD_MOEDA'
      Origin = 'EMPRESA.COD_MOEDA'
    end
    object TEmpresaZEROCODPESSOA: TIBStringField
      FieldName = 'ZEROCODPESSOA'
      Origin = 'EMPRESA.ZEROCODPESSOA'
      FixedChar = True
      Size = 1
    end
    object TEmpresaNCASASZEROPES: TIntegerField
      FieldName = 'NCASASZEROPES'
      Origin = 'EMPRESA.NCASASZEROPES'
    end
    object TEmpresaPROXPEDVEND: TIBStringField
      FieldName = 'PROXPEDVEND'
      Origin = 'EMPRESA.PROXPEDVEND'
      Size = 10
    end
    object TEmpresaPROXPEDCOMP: TIBStringField
      FieldName = 'PROXPEDCOMP'
      Origin = 'EMPRESA.PROXPEDCOMP'
      Size = 10
    end
    object TEmpresaFONE: TIBStringField
      FieldName = 'FONE'
      Origin = 'EMPRESA.FONE'
      Size = 15
    end
    object TEmpresaNUMERO: TIBStringField
      FieldName = 'NUMERO'
      Origin = 'EMPRESA.NUMERO'
      Size = 10
    end
    object TEmpresaCONTATO: TIBStringField
      FieldName = 'CONTATO'
      Origin = 'EMPRESA.CONTATO'
      Size = 25
    end
    object TEmpresaPROX_OS: TIBStringField
      FieldName = 'PROX_OS'
      Origin = 'EMPRESA.PROX_OS'
      Size = 10
    end
    object TEmpresaPROXORC: TIBStringField
      FieldName = 'PROXORC'
      Origin = 'EMPRESA.PROXORC'
      Size = 10
    end
    object TEmpresaJUROSBOLET: TIBBCDField
      FieldName = 'JUROSBOLET'
      Origin = 'EMPRESA.JUROSBOLET'
      Precision = 18
      Size = 2
    end
    object TEmpresaCREDITAIPI: TIBStringField
      FieldName = 'CREDITAIPI'
      Origin = 'EMPRESA.CREDITAIPI'
      FixedChar = True
      Size = 1
    end
    object TEmpresaCALCULAIPI: TIBStringField
      FieldName = 'CALCULAIPI'
      Origin = 'EMPRESA.CALCULAIPI'
      FixedChar = True
      Size = 1
    end
    object TEmpresaTIPOEMPRESA: TIBStringField
      FieldName = 'TIPOEMPRESA'
      Origin = 'EMPRESA.TIPOEMPRESA'
      Size = 10
    end
    object TEmpresaPROXLICITA: TIBStringField
      FieldName = 'PROXLICITA'
      Origin = 'EMPRESA.PROXLICITA'
      Size = 10
    end
    object TEmpresaTEL0800: TIBStringField
      FieldName = 'TEL0800'
      Origin = 'EMPRESA.TEL0800'
      Size = 10
    end
    object TEmpresaCONTICMS: TIBStringField
      FieldName = 'CONTICMS'
      Origin = 'EMPRESA.CONTICMS'
      FixedChar = True
      Size = 1
    end
    object TEmpresaTIPOEMPRESANF: TIBStringField
      FieldName = 'TIPOEMPRESANF'
      Origin = 'EMPRESA.TIPOEMPRESANF'
      Size = 10
    end
    object TEmpresaNFEPROXLOTE: TIBStringField
      FieldName = 'NFEPROXLOTE'
      Origin = 'EMPRESA.NFEPROXLOTE'
      Size = 10
    end
    object TEmpresaNFESERIE: TIntegerField
      FieldName = 'NFESERIE'
      Origin = 'EMPRESA.NFESERIE'
    end
  end
  object UEMPRESA: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  COD_EMPRESA,'
      '  NUM_FILIAL,'
      '  FANTASIA,'
      '  RAZAO_SOCIAL,'
      '  COD_CIDADE,'
      '  TIPO,'
      '  ENDERECO,'
      '  BAIRRO,'
      '  CEP,'
      '  CX_POSTAL,'
      '  CNPJ,'
      '  INSC_EST,'
      '  DATA_FUNDACAO,'
      '  INSC_MUN,'
      '  WEB_PAGE,'
      '  PROX_NF,'
      '  CAD_SRF,'
      '  ICMS,'
      '  ISSQN,'
      '  CVVPROAT,'
      '  CVPPROAT,'
      '  CVVPROVAR,'
      '  CVPPROVAR,'
      '  AVVPROAT,'
      '  AVPPROAT,'
      '  AVVPROVAR,'
      '  AVPPROVAR,'
      '  IMPFED,'
      '  IMPEST,'
      '  COD_MOEDA,'
      '  ZEROCODPESSOA,'
      '  NCASASZEROPES,'
      '  PROXPEDVEND,'
      '  PROXPEDCOMP,'
      '  FONE,'
      '  NUMERO,'
      '  CONTATO,'
      '  PROX_OS,'
      '  PROXORC,'
      '  JUROSBOLET,'
      '  CREDITAIPI,'
      '  CALCULAIPI,'
      '  TIPOEMPRESA,'
      '  PROXLICITA,'
      '  TEL0800,'
      '  CONTICMS,'
      '  TIPOEMPRESANF,'
      '  NFEPROXLOTE,'
      '  NFESERIE'
      'from EMPRESA '
      'where'
      '  COD_EMPRESA = :COD_EMPRESA')
    ModifySQL.Strings = (
      'update EMPRESA'
      'set'
      '  COD_EMPRESA = :COD_EMPRESA,'
      '  NUM_FILIAL = :NUM_FILIAL,'
      '  FANTASIA = :FANTASIA,'
      '  RAZAO_SOCIAL = :RAZAO_SOCIAL,'
      '  COD_CIDADE = :COD_CIDADE,'
      '  TIPO = :TIPO,'
      '  ENDERECO = :ENDERECO,'
      '  BAIRRO = :BAIRRO,'
      '  CEP = :CEP,'
      '  CX_POSTAL = :CX_POSTAL,'
      '  CNPJ = :CNPJ,'
      '  INSC_EST = :INSC_EST,'
      '  DATA_FUNDACAO = :DATA_FUNDACAO,'
      '  INSC_MUN = :INSC_MUN,'
      '  WEB_PAGE = :WEB_PAGE,'
      '  PROX_NF = :PROX_NF,'
      '  CAD_SRF = :CAD_SRF,'
      '  ICMS = :ICMS,'
      '  ISSQN = :ISSQN,'
      '  CVVPROAT = :CVVPROAT,'
      '  CVPPROAT = :CVPPROAT,'
      '  CVVPROVAR = :CVVPROVAR,'
      '  CVPPROVAR = :CVPPROVAR,'
      '  AVVPROAT = :AVVPROAT,'
      '  AVPPROAT = :AVPPROAT,'
      '  AVVPROVAR = :AVVPROVAR,'
      '  AVPPROVAR = :AVPPROVAR,'
      '  IMPFED = :IMPFED,'
      '  IMPEST = :IMPEST,'
      '  COD_MOEDA = :COD_MOEDA,'
      '  ZEROCODPESSOA = :ZEROCODPESSOA,'
      '  NCASASZEROPES = :NCASASZEROPES,'
      '  PROXPEDVEND = :PROXPEDVEND,'
      '  PROXPEDCOMP = :PROXPEDCOMP,'
      '  FONE = :FONE,'
      '  NUMERO = :NUMERO,'
      '  CONTATO = :CONTATO,'
      '  PROX_OS = :PROX_OS,'
      '  PROXORC = :PROXORC,'
      '  JUROSBOLET = :JUROSBOLET,'
      '  CREDITAIPI = :CREDITAIPI,'
      '  CALCULAIPI = :CALCULAIPI,'
      '  TIPOEMPRESA = :TIPOEMPRESA,'
      '  PROXLICITA = :PROXLICITA,'
      '  TEL0800 = :TEL0800,'
      '  CONTICMS = :CONTICMS,'
      '  TIPOEMPRESANF = :TIPOEMPRESANF,'
      '  NFEPROXLOTE = :NFEPROXLOTE,'
      '  NFESERIE = :NFESERIE'
      'where'
      '  COD_EMPRESA = :OLD_COD_EMPRESA')
    InsertSQL.Strings = (
      'insert into EMPRESA'
      
        '  (COD_EMPRESA, NUM_FILIAL, FANTASIA, RAZAO_SOCIAL, COD_CIDADE, ' +
        'TIPO, ENDERECO, '
      
        '   BAIRRO, CEP, CX_POSTAL, CNPJ, INSC_EST, DATA_FUNDACAO, INSC_M' +
        'UN, WEB_PAGE, '
      
        '   PROX_NF, CAD_SRF, ICMS, ISSQN, CVVPROAT, CVPPROAT, CVVPROVAR,' +
        ' CVPPROVAR, '
      
        '   AVVPROAT, AVPPROAT, AVVPROVAR, AVPPROVAR, IMPFED, IMPEST, COD' +
        '_MOEDA, '
      
        '   ZEROCODPESSOA, NCASASZEROPES, PROXPEDVEND, PROXPEDCOMP, FONE,' +
        ' NUMERO, '
      
        '   CONTATO, PROX_OS, PROXORC, JUROSBOLET, CREDITAIPI, CALCULAIPI' +
        ', TIPOEMPRESA, '
      
        '   PROXLICITA, TEL0800, CONTICMS, TIPOEMPRESANF, NFEPROXLOTE, NF' +
        'ESERIE)'
      'values'
      
        '  (:COD_EMPRESA, :NUM_FILIAL, :FANTASIA, :RAZAO_SOCIAL, :COD_CID' +
        'ADE, :TIPO, '
      
        '   :ENDERECO, :BAIRRO, :CEP, :CX_POSTAL, :CNPJ, :INSC_EST, :DATA' +
        '_FUNDACAO, '
      
        '   :INSC_MUN, :WEB_PAGE, :PROX_NF, :CAD_SRF, :ICMS, :ISSQN, :CVV' +
        'PROAT, '
      
        '   :CVPPROAT, :CVVPROVAR, :CVPPROVAR, :AVVPROAT, :AVPPROAT, :AVV' +
        'PROVAR, '
      
        '   :AVPPROVAR, :IMPFED, :IMPEST, :COD_MOEDA, :ZEROCODPESSOA, :NC' +
        'ASASZEROPES, '
      
        '   :PROXPEDVEND, :PROXPEDCOMP, :FONE, :NUMERO, :CONTATO, :PROX_O' +
        'S, :PROXORC, '
      
        '   :JUROSBOLET, :CREDITAIPI, :CALCULAIPI, :TIPOEMPRESA, :PROXLIC' +
        'ITA, :TEL0800, '
      '   :CONTICMS, :TIPOEMPRESANF, :NFEPROXLOTE, :NFESERIE)')
    DeleteSQL.Strings = (
      'delete from EMPRESA'
      'where'
      '  COD_EMPRESA = :OLD_COD_EMPRESA')
    Left = 16
    Top = 120
  end
  object DsEmpresa: TDataSource
    DataSet = TEmpresa
    Left = 16
    Top = 168
  end
  object TDocFiscFatura: TIBQuery
    Database = DataBase
    Transaction = Transaction
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from DOCFISCFATURA')
    UpdateObject = UDocFiscFatura
    GeneratorField.Field = 'COD_LOJAACES'
    Left = 661
    Top = 224
    object TDocFiscFaturaCOD_DOCFISCFATURA: TIntegerField
      FieldName = 'COD_DOCFISCFATURA'
      Origin = 'DOCFISCFATURA.COD_DOCFISCFATURA'
    end
    object TDocFiscFaturaCOD_DOCFISCAL: TIntegerField
      FieldName = 'COD_DOCFISCAL'
      Origin = 'DOCFISCFATURA.COD_DOCFISCAL'
    end
    object TDocFiscFaturaCOD_PEDIDO: TIntegerField
      FieldName = 'COD_PEDIDO'
      Origin = 'DOCFISCFATURA.COD_PEDIDO'
    end
    object TDocFiscFaturaTIPO: TIBStringField
      FieldName = 'TIPO'
      Origin = 'DOCFISCFATURA.TIPO'
      Size = 10
    end
  end
  object UDocFiscFatura: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  COD_DOCFISCFATURA,'
      '  COD_DOCFISCAL,'
      '  COD_PEDIDO,'
      '  TIPO'
      'from DOCFISCFATURA '
      'where'
      '  COD_DOCFISCFATURA = :COD_DOCFISCFATURA')
    ModifySQL.Strings = (
      'update DOCFISCFATURA'
      'set'
      '  COD_DOCFISCFATURA = :COD_DOCFISCFATURA,'
      '  COD_DOCFISCAL = :COD_DOCFISCAL,'
      '  COD_PEDIDO = :COD_PEDIDO,'
      '  TIPO = :TIPO'
      'where'
      '  COD_DOCFISCFATURA = :OLD_COD_DOCFISCFATURA')
    InsertSQL.Strings = (
      'insert into DOCFISCFATURA'
      '  (COD_DOCFISCFATURA, COD_DOCFISCAL, COD_PEDIDO, TIPO)'
      'values'
      '  (:COD_DOCFISCFATURA, :COD_DOCFISCAL, :COD_PEDIDO, :TIPO)')
    DeleteSQL.Strings = (
      'delete from DOCFISCFATURA'
      'where'
      '  COD_DOCFISCFATURA = :OLD_COD_DOCFISCFATURA')
    Left = 661
    Top = 272
  end
  object DDocFiscFatura: TDataSource
    DataSet = TDocFiscFatura
    Left = 662
    Top = 320
  end
  object FSRel: TfrReport
    Dataset = FDSCaixa
    InitialZoom = pzDefault
    PreviewButtons = [pbZoom, pbLoad, pbSave, pbPrint, pbFind, pbHelp, pbExit]
    Left = 104
    Top = 352
    ReportForm = {18000000}
  end
  object FDSCaixa: TfrDBDataSet
    DataSource = DSRel
    Left = 72
    Top = 352
  end
end
