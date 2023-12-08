object DMMACS: TDMMACS
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 24
  Height = 404
  Width = 953
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
      'SELECT first 1  * FROM USUARIO')
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
    object TUsuarioMAXREGISTROOS: TIBStringField
      FieldName = 'MAXREGISTROOS'
      Origin = 'USUARIO.MAXREGISTROOS'
      Size = 10
    end
    object TUsuarioEXIBE_EXPEDICAO: TIBStringField
      FieldName = 'EXIBE_EXPEDICAO'
      Origin = 'USUARIO.EXIBE_EXPEDICAO'
      FixedChar = True
      Size = 1
    end
    object TUsuarioFILTRAPEDFECHADO: TSmallintField
      FieldName = 'FILTRAPEDFECHADO'
      Origin = 'USUARIO.FILTRAPEDFECHADO'
    end
    object TUsuarioFILTRAPEDDATA01: TIBStringField
      FieldName = 'FILTRAPEDDATA01'
      Origin = 'USUARIO.FILTRAPEDDATA01'
    end
    object TUsuarioFILTRAPEDDATA02: TIBStringField
      FieldName = 'FILTRAPEDDATA02'
      Origin = 'USUARIO.FILTRAPEDDATA02'
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
      '  REVRESMOV,'
      '  MAXREGISTROOS,'
      '  EXIBE_EXPEDICAO,'
      '  FILTRAPEDFECHADO,'
      '  FILTRAPEDDATA01,'
      '  FILTRAPEDDATA02'
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
      '  REVRESMOV = :REVRESMOV,'
      '  MAXREGISTROOS = :MAXREGISTROOS,'
      '  EXIBE_EXPEDICAO = :EXIBE_EXPEDICAO,'
      '  FILTRAPEDFECHADO = :FILTRAPEDFECHADO,'
      '  FILTRAPEDDATA01 = :FILTRAPEDDATA01,'
      '  FILTRAPEDDATA02 = :FILTRAPEDDATA02'
      'where'
      '  CODUSUARIO = :OLD_CODUSUARIO')
    InsertSQL.Strings = (
      'insert into USUARIO'
      
        '  (CODUSUARIO, COD_FUNCIONARIO, LOGIN, SENHA, DATA_CAD, ADM, REV' +
        'RESMOV, '
      
        '   MAXREGISTROOS, EXIBE_EXPEDICAO, FILTRAPEDFECHADO, FILTRAPEDDA' +
        'TA01, FILTRAPEDDATA02)'
      'values'
      
        '  (:CODUSUARIO, :COD_FUNCIONARIO, :LOGIN, :SENHA, :DATA_CAD, :AD' +
        'M, :REVRESMOV, '
      
        '   :MAXREGISTROOS, :EXIBE_EXPEDICAO, :FILTRAPEDFECHADO, :FILTRAP' +
        'EDDATA01, '
      '   :FILTRAPEDDATA02)')
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
      
        'select movbanco.mark, vwchequerec.numcheque, vwchequerec.valor, ' +
        'vwchequerec.emitente from vwchequerec'
      
        'left join movbanco on vwchequerec.cod_movbanco = movbanco.cod_mo' +
        'vbanco'
      'Where vwchequerec.fech='#39'N'#39)
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
      'select  first 1 * from LOJACESSO')
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
    object TLojaUsuGERABONIF: TIBStringField
      FieldName = 'GERABONIF'
      Origin = 'LOJACESSO.GERABONIF'
      FixedChar = True
      Size = 1
    end
    object TLojaUsuGERACANC: TIBStringField
      FieldName = 'GERACANC'
      Origin = 'LOJACESSO.GERACANC'
      FixedChar = True
      Size = 1
    end
    object TLojaUsuCK110: TIBStringField
      FieldName = 'CK110'
      Origin = 'LOJACESSO.CK110'
      FixedChar = True
      Size = 1
    end
    object TLojaUsuCK130: TIBStringField
      FieldName = 'CK130'
      Origin = 'LOJACESSO.CK130'
      FixedChar = True
      Size = 1
    end
    object TLojaUsuCK140: TIBStringField
      FieldName = 'CK140'
      Origin = 'LOJACESSO.CK140'
      FixedChar = True
      Size = 1
    end
    object TLojaUsuCK150: TIBStringField
      FieldName = 'CK150'
      Origin = 'LOJACESSO.CK150'
      FixedChar = True
      Size = 1
    end
    object TLojaUsuCK160: TIBStringField
      FieldName = 'CK160'
      Origin = 'LOJACESSO.CK160'
      FixedChar = True
      Size = 1
    end
    object TLojaUsuCK170: TIBStringField
      FieldName = 'CK170'
      Origin = 'LOJACESSO.CK170'
      FixedChar = True
      Size = 1
    end
    object TLojaUsuCK218: TIBStringField
      FieldName = 'CK218'
      Origin = 'LOJACESSO.CK218'
      FixedChar = True
      Size = 1
    end
    object TLojaUsuCK219: TIBStringField
      FieldName = 'CK219'
      Origin = 'LOJACESSO.CK219'
      FixedChar = True
      Size = 1
    end
    object TLojaUsuCK223: TIBStringField
      FieldName = 'CK223'
      Origin = 'LOJACESSO.CK223'
      FixedChar = True
      Size = 1
    end
    object TLojaUsuCK225: TIBStringField
      FieldName = 'CK225'
      Origin = 'LOJACESSO.CK225'
      FixedChar = True
      Size = 1
    end
    object TLojaUsuCK226: TIBStringField
      FieldName = 'CK226'
      Origin = 'LOJACESSO.CK226'
      FixedChar = True
      Size = 1
    end
    object TLojaUsuCK229: TIBStringField
      FieldName = 'CK229'
      Origin = 'LOJACESSO.CK229'
      FixedChar = True
      Size = 1
    end
    object TLojaUsuCK231: TIBStringField
      FieldName = 'CK231'
      Origin = 'LOJACESSO.CK231'
      FixedChar = True
      Size = 1
    end
    object TLojaUsuCK232: TIBStringField
      FieldName = 'CK232'
      Origin = 'LOJACESSO.CK232'
      FixedChar = True
      Size = 1
    end
    object TLojaUsuCK233: TIBStringField
      FieldName = 'CK233'
      Origin = 'LOJACESSO.CK233'
      FixedChar = True
      Size = 1
    end
    object TLojaUsuCK234: TIBStringField
      FieldName = 'CK234'
      Origin = 'LOJACESSO.CK234'
      FixedChar = True
      Size = 1
    end
    object TLojaUsuCK235: TIBStringField
      FieldName = 'CK235'
      Origin = 'LOJACESSO.CK235'
      FixedChar = True
      Size = 1
    end
    object TLojaUsuCK236: TIBStringField
      FieldName = 'CK236'
      Origin = 'LOJACESSO.CK236'
      FixedChar = True
      Size = 1
    end
    object TLojaUsuCK237: TIBStringField
      FieldName = 'CK237'
      Origin = 'LOJACESSO.CK237'
      FixedChar = True
      Size = 1
    end
    object TLojaUsuALTCHECKEXPRESS: TIBStringField
      FieldName = 'ALTCHECKEXPRESS'
      Origin = 'LOJACESSO.ALTCHECKEXPRESS'
      FixedChar = True
      Size = 1
    end
    object TLojaUsuREMOVERCHECKEXPRESS: TIBStringField
      FieldName = 'REMOVERCHECKEXPRESS'
      Origin = 'LOJACESSO.REMOVERCHECKEXPRESS'
      FixedChar = True
      Size = 1
    end
    object TLojaUsuCONSULTARCHECKEXPRESS: TIBStringField
      FieldName = 'CONSULTARCHECKEXPRESS'
      Origin = 'LOJACESSO.CONSULTARCHECKEXPRESS'
      FixedChar = True
      Size = 1
    end
    object TLojaUsuEDITAVENDEDOROS: TIBStringField
      FieldName = 'EDITAVENDEDOROS'
      Origin = 'LOJACESSO.EDITAVENDEDOROS'
      FixedChar = True
      Size = 1
    end
    object TLojaUsuALTERACIDADEPESSOA: TIBStringField
      FieldName = 'ALTERACIDADEPESSOA'
      Origin = 'LOJACESSO.ALTERACIDADEPESSOA'
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
      '  FECHAAUTOPED,'
      '  CK110,'
      '  CK130,'
      '  CK140,'
      '  CK150,'
      '  CK160,'
      '  CK170,'
      '  CK218,'
      '  CK219,'
      '  CK223,'
      '  CK225,'
      '  CK226,'
      '  CK229,'
      '  CK231,'
      '  CK232,'
      '  CK233,'
      '  CK234,'
      '  CK235,'
      '  CK236,'
      '  CK237,'
      '  ALTCHECKEXPRESS,'
      '  REMOVERCHECKEXPRESS,'
      '  CONSULTARCHECKEXPRESS,'
      '  GERABONIF,'
      '  GERACANC,'
      '  EDITAVENDEDOROS,'
      '  ALTERACIDADEPESSOA'
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
      '  FECHAAUTOPED = :FECHAAUTOPED,'
      '  CK110 = :CK110,'
      '  CK130 = :CK130,'
      '  CK140 = :CK140,'
      '  CK150 = :CK150,'
      '  CK160 = :CK160,'
      '  CK170 = :CK170,'
      '  CK218 = :CK218,'
      '  CK219 = :CK219,'
      '  CK223 = :CK223,'
      '  CK225 = :CK225,'
      '  CK226 = :CK226,'
      '  CK229 = :CK229,'
      '  CK231 = :CK231,'
      '  CK232 = :CK232,'
      '  CK233 = :CK233,'
      '  CK234 = :CK234,'
      '  CK235 = :CK235,'
      '  CK236 = :CK236,'
      '  CK237 = :CK237,'
      '  ALTCHECKEXPRESS = :ALTCHECKEXPRESS,'
      '  REMOVERCHECKEXPRESS = :REMOVERCHECKEXPRESS,'
      '  CONSULTARCHECKEXPRESS = :CONSULTARCHECKEXPRESS,'
      '  GERABONIF = :GERABONIF,'
      '  GERACANC = :GERACANC,'
      '  EDITAVENDEDOROS = :EDITAVENDEDOROS,'
      '  ALTERACIDADEPESSOA = :ALTERACIDADEPESSOA'
      'where'
      '  COD_LOJAACES = :OLD_COD_LOJAACES')
    InsertSQL.Strings = (
      'insert into LOJACESSO'
      
        '  (COD_LOJAACES, COD_LOJA, COD_USUARIO, USUPERMI, CADCLI, EXCLCL' +
        'I, LIBERACRED, '
      
        '   CAD_USUARIO, CAD_CR, BAIXAR_CR, ALTEXC_CR, CANCELBAIXA_CR, CA' +
        'D_CP, BAIXA_CP, '
      
        '   ALTEXC_CP, CANCELBAIXA_CP, CADCX, ABRIRCX, LANCX, FECHCX, CAD' +
        'VEN, CADCOTA, '
      
        '   PRODUTOS, PDV, PEDVEN, ORCAMENTO, ALTPED, ACERTESTOQUE, VENDA' +
        'TACADO, '
      
        '   VENDAVAREJO, RELVENDCOM, MOVBANCO, CADCTACORRENTE, CANCVEND, ' +
        'CADFORNEC, '
      
        '   EXCLFORNEC, CADPLANOCTA, CADFUNC, ALTSALFUNC, CADFORMPAG, DES' +
        'CPROD, '
      
        '   EXCVENDEDOR, CADEMPRESA, CADLOJA, ALTPEDCOMP, CADPEDCOMP, CAN' +
        'CCOMPRA, '
      
        '   CADMOEDA, EFETUARCOMPRA, EMITDOCFISC, RFINEST, RPEDVEN, RPEDC' +
        'OMP, RCAIXA, '
      
        '   RBANCO, RCTAPAGAR, RCTARECEBER, ALTLANCX, CONFIGLOJA, TROCVEN' +
        'D, CADSERV, '
      
        '   PEDVENDA, ABRIRORD, FECHORD, EXCORD, RELABERTORD, RELFECHORD,' +
        ' CADBENSCLI, '
      
        '   RELINVENTEST, DESCPED, DESCPMAIOR, ACEFCHTECPROD, USAGARANT, ' +
        'ACEPRODUCAO, '
      
        '   CANCPEDFECH, ALTBCCOMIS, ALTCOMIS, ECF, ALTVLRUNIPED, REIMPDU' +
        'P, BAIXACTABANCO, '
      
        '   MARGEMSEG, TELACOMIS, ABREGAVETA, GERAFINANC, FECHAAUTOPED, C' +
        'K110, CK130, '
      
        '   CK140, CK150, CK160, CK170, CK218, CK219, CK223, CK225, CK226' +
        ', CK229, '
      
        '   CK231, CK232, CK233, CK234, CK235, CK236, CK237, ALTCHECKEXPR' +
        'ESS, REMOVERCHECKEXPRESS, '
      
        '   CONSULTARCHECKEXPRESS, GERABONIF, GERACANC, EDITAVENDEDOROS, ' +
        'ALTERACIDADEPESSOA)'
      'values'
      
        '  (:COD_LOJAACES, :COD_LOJA, :COD_USUARIO, :USUPERMI, :CADCLI, :' +
        'EXCLCLI, '
      
        '   :LIBERACRED, :CAD_USUARIO, :CAD_CR, :BAIXAR_CR, :ALTEXC_CR, :' +
        'CANCELBAIXA_CR, '
      
        '   :CAD_CP, :BAIXA_CP, :ALTEXC_CP, :CANCELBAIXA_CP, :CADCX, :ABR' +
        'IRCX, :LANCX, '
      
        '   :FECHCX, :CADVEN, :CADCOTA, :PRODUTOS, :PDV, :PEDVEN, :ORCAME' +
        'NTO, :ALTPED, '
      
        '   :ACERTESTOQUE, :VENDATACADO, :VENDAVAREJO, :RELVENDCOM, :MOVB' +
        'ANCO, :CADCTACORRENTE, '
      
        '   :CANCVEND, :CADFORNEC, :EXCLFORNEC, :CADPLANOCTA, :CADFUNC, :' +
        'ALTSALFUNC, '
      
        '   :CADFORMPAG, :DESCPROD, :EXCVENDEDOR, :CADEMPRESA, :CADLOJA, ' +
        ':ALTPEDCOMP, '
      
        '   :CADPEDCOMP, :CANCCOMPRA, :CADMOEDA, :EFETUARCOMPRA, :EMITDOC' +
        'FISC, :RFINEST, '
      
        '   :RPEDVEN, :RPEDCOMP, :RCAIXA, :RBANCO, :RCTAPAGAR, :RCTARECEB' +
        'ER, :ALTLANCX, '
      
        '   :CONFIGLOJA, :TROCVEND, :CADSERV, :PEDVENDA, :ABRIRORD, :FECH' +
        'ORD, :EXCORD, '
      
        '   :RELABERTORD, :RELFECHORD, :CADBENSCLI, :RELINVENTEST, :DESCP' +
        'ED, :DESCPMAIOR, '
      
        '   :ACEFCHTECPROD, :USAGARANT, :ACEPRODUCAO, :CANCPEDFECH, :ALTB' +
        'CCOMIS, '
      
        '   :ALTCOMIS, :ECF, :ALTVLRUNIPED, :REIMPDUP, :BAIXACTABANCO, :M' +
        'ARGEMSEG, '
      
        '   :TELACOMIS, :ABREGAVETA, :GERAFINANC, :FECHAAUTOPED, :CK110, ' +
        ':CK130, '
      
        '   :CK140, :CK150, :CK160, :CK170, :CK218, :CK219, :CK223, :CK22' +
        '5, :CK226, '
      
        '   :CK229, :CK231, :CK232, :CK233, :CK234, :CK235, :CK236, :CK23' +
        '7, :ALTCHECKEXPRESS, '
      
        '   :REMOVERCHECKEXPRESS, :CONSULTARCHECKEXPRESS, :GERABONIF, :GE' +
        'RACANC, '
      '   :EDITAVENDEDOROS, :ALTERACIDADEPESSOA)')
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
      'SELECT first 1  * FROM EMPRESA')
    Left = 72
    Top = 72
  end
  object DSEmpAc: TDataSource
    DataSet = TEmpAc
    Left = 72
    Top = 168
  end
  object DataBase: TIBDatabase
    DatabaseName = 'NOTE:C:\MZR\MACS\dbmacs.gdb'
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
    object TCodigoCOD_PRODUTOSADICIONAIS: TIntegerField
      FieldName = 'COD_PRODUTOSADICIONAIS'
      Origin = 'CODIGO.COD_PRODUTOSADICIONAIS'
    end
    object TCodigoCOD_VENDAAGRUPADA: TIntegerField
      FieldName = 'COD_VENDAAGRUPADA'
      Origin = 'CODIGO.COD_VENDAAGRUPADA'
    end
    object TCodigoCOD_ITENVENDAAGRUP: TIntegerField
      FieldName = 'COD_ITENVENDAAGRUP'
      Origin = 'CODIGO.COD_ITENVENDAAGRUP'
    end
    object TCodigoCOD_ESTOQUELOTE: TIntegerField
      FieldName = 'COD_ESTOQUELOTE'
      Origin = 'CODIGO.COD_ESTOQUELOTE'
    end
    object TCodigoCOD_PRODUCAOLOTE: TIntegerField
      FieldName = 'COD_PRODUCAOLOTE'
      Origin = 'CODIGO.COD_PRODUCAOLOTE'
    end
    object TCodigoCOD_FATURA: TIntegerField
      FieldName = 'COD_FATURA'
      Origin = 'CODIGO.COD_FATURA'
    end
    object TCodigoCOD_PEDFATURADO: TIntegerField
      FieldName = 'COD_PEDFATURADO'
      Origin = 'CODIGO.COD_PEDFATURADO'
    end
    object TCodigoCOD_CODBARRA: TIntegerField
      FieldName = 'COD_CODBARRA'
      Origin = 'CODIGO.COD_CODBARRA'
    end
    object TCodigoCOD_VEIC_ENT: TIntegerField
      FieldName = 'COD_VEIC_ENT'
      Origin = 'CODIGO.COD_VEIC_ENT'
    end
    object TCodigoCOD_SETORPRODUCAO: TIntegerField
      FieldName = 'COD_SETORPRODUCAO'
      Origin = 'CODIGO.COD_SETORPRODUCAO'
    end
    object TCodigoCOD_ITEMFICHATECNICA: TIntegerField
      FieldName = 'COD_ITEMFICHATECNICA'
      Origin = 'CODIGO.COD_ITEMFICHATECNICA'
    end
    object TCodigoCOD_SETOR: TIntegerField
      FieldName = 'COD_SETOR'
      Origin = 'CODIGO.COD_SETOR'
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
      '  COD_OBRA,'
      '  COD_PRODUTOSADICIONAIS,'
      '  COD_VENDAAGRUPADA,'
      '  COD_ITENVENDAAGRUP,'
      '  COD_ESTOQUELOTE,'
      '  COD_PRODUCAOLOTE,'
      '  COD_FATURA,'
      '  COD_PEDFATURADO,'
      '  COD_CODBARRA,'
      '  COD_VEIC_ENT,'
      '  COD_SETORPRODUCAO,'
      '  COD_ITEMFICHATECNICA,'
      '  COD_SETOR'
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
      '  COD_OBRA = :COD_OBRA,'
      '  COD_PRODUTOSADICIONAIS = :COD_PRODUTOSADICIONAIS,'
      '  COD_VENDAAGRUPADA = :COD_VENDAAGRUPADA,'
      '  COD_ITENVENDAAGRUP = :COD_ITENVENDAAGRUP,'
      '  COD_ESTOQUELOTE = :COD_ESTOQUELOTE,'
      '  COD_PRODUCAOLOTE = :COD_PRODUCAOLOTE,'
      '  COD_FATURA = :COD_FATURA,'
      '  COD_PEDFATURADO = :COD_PEDFATURADO,'
      '  COD_CODBARRA = :COD_CODBARRA,'
      '  COD_VEIC_ENT = :COD_VEIC_ENT,'
      '  COD_SETORPRODUCAO = :COD_SETORPRODUCAO,'
      '  COD_ITEMFICHATECNICA = :COD_ITEMFICHATECNICA,'
      '  COD_SETOR = :COD_SETOR'
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
        'A, COD_PRODUTOSADICIONAIS, '
      
        '   COD_VENDAAGRUPADA, COD_ITENVENDAAGRUP, COD_ESTOQUELOTE, COD_P' +
        'RODUCAOLOTE, '
      
        '   COD_FATURA, COD_PEDFATURADO, COD_CODBARRA, COD_VEIC_ENT, COD_' +
        'SETORPRODUCAO, '
      '   COD_ITEMFICHATECNICA, COD_SETOR)'
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
      
        '   :COD_ALUGUEL, :COD_MOTORISTAVEICULO, :COD_OBRA, :COD_PRODUTOS' +
        'ADICIONAIS, '
      
        '   :COD_VENDAAGRUPADA, :COD_ITENVENDAAGRUP, :COD_ESTOQUELOTE, :C' +
        'OD_PRODUCAOLOTE, '
      
        '   :COD_FATURA, :COD_PEDFATURADO, :COD_CODBARRA, :COD_VEIC_ENT, ' +
        ':COD_SETORPRODUCAO, '
      '   :COD_ITEMFICHATECNICA, :COD_SETOR)')
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
    DatabaseName = 'note:D:\##SERVIDOR\##FONTES\NOTE\DataBase\DBMACS.GDB'
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
      'select  first 1 * from ETQPROD')
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
    object TEtqProdTEXTOPERSONALIZADO: TIBStringField
      FieldName = 'TEXTOPERSONALIZADO'
      Origin = 'ETQPROD.TEXTOPERSONALIZADO'
      Size = 60
    end
    object TEtqProdNOMEIMPRESSORA: TIBStringField
      FieldName = 'NOMEIMPRESSORA'
      Origin = 'ETQPROD.NOMEIMPRESSORA'
      Size = 60
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
      '  TAMDESC,'
      '  TEXTOPERSONALIZADO,'
      '  NOMEIMPRESSORA'
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
      '  TAMDESC = :TAMDESC,'
      '  TEXTOPERSONALIZADO = :TEXTOPERSONALIZADO,'
      '  NOMEIMPRESSORA = :NOMEIMPRESSORA'
      'where'
      '  COD_ETQPROD = :OLD_COD_ETQPROD')
    InsertSQL.Strings = (
      'insert into ETQPROD'
      
        '  (COD_ETQPROD, DESCRICAO, ALTPAG, LARGPAG, QTDETQPAG, LINHAINI,' +
        ' '
      'COLUNAINI, '
      '   QTDCOLPAG, LARGCODBARRA, COMPCODBARRA, INTERVLINHA, '
      'INTERVCOL, TAMFONTE, '
      '   TAMDESC, TEXTOPERSONALIZADO, NOMEIMPRESSORA)'
      'values'
      
        '  (:COD_ETQPROD, :DESCRICAO, :ALTPAG, :LARGPAG, :QTDETQPAG, :LIN' +
        'HAINI, '
      '   :COLUNAINI, :QTDCOLPAG, :LARGCODBARRA, :COMPCODBARRA, '
      ':INTERVLINHA, '
      '   :INTERVCOL, :TAMFONTE, :TAMDESC, :TEXTOPERSONALIZADO, '
      ':NOMEIMPRESSORA)')
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
      'select  first 1 * from REGISTRO')
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
      Origin = 'REGISTRO.FIELD1'
      Size = 500
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
      'select  first 1 * from MENSAGEM')
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
    BufferChunks = 100
    CachedUpdates = False
    SQL.Strings = (
      'select first 1  * from TMP')
    UpdateObject = UTMP
    GeneratorField.Field = 'COD_LOJAACES'
    Left = 585
    Top = 224
    object TMPDESC1: TIBStringField
      FieldName = 'DESC1'
      Origin = 'TMP.DESC1'
      Size = 60
    end
    object TMPVLR1: TIBBCDField
      FieldName = 'VLR1'
      Origin = 'TMP.VLR1'
      currency = True
      Precision = 18
      Size = 2
    end
    object TMPVLR2: TIBBCDField
      FieldName = 'VLR2'
      Origin = 'TMP.VLR2'
      Precision = 18
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
      Precision = 18
      Size = 2
    end
    object TMPVLR4: TIBBCDField
      FieldName = 'VLR4'
      Origin = 'TMP.VLR4'
      Precision = 18
      Size = 2
    end
    object TMPVLR5: TIBBCDField
      FieldName = 'VLR5'
      Origin = 'TMP.VLR5'
      Precision = 18
      Size = 2
    end
    object TMPVLR6: TIBBCDField
      FieldName = 'VLR6'
      Origin = 'TMP.VLR6'
      Precision = 18
      Size = 2
    end
    object TMPVLR7: TIBBCDField
      FieldName = 'VLR7'
      Origin = 'TMP.VLR7'
      Precision = 18
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
    object TMPVLR9: TIBBCDField
      FieldName = 'VLR9'
      Origin = 'TMP.VLR9'
      Precision = 18
      Size = 2
    end
    object TMPVLR10: TIBBCDField
      FieldName = 'VLR10'
      Origin = 'TMP.VLR10'
      Precision = 18
      Size = 2
    end
    object TMPVLR11: TIBBCDField
      FieldName = 'VLR11'
      Origin = 'TMP.VLR11'
      Precision = 18
      Size = 2
    end
    object TMPVLR12: TIBBCDField
      FieldName = 'VLR12'
      Origin = 'TMP.VLR12'
      Precision = 18
      Size = 2
    end
    object TMPVLR13: TIBBCDField
      FieldName = 'VLR13'
      Origin = 'TMP.VLR13'
      Precision = 18
      Size = 2
    end
    object TMPVLR14: TIBBCDField
      FieldName = 'VLR14'
      Origin = 'TMP.VLR14'
      Precision = 18
      Size = 2
    end
    object TMPVLR15: TIBBCDField
      FieldName = 'VLR15'
      Origin = 'TMP.VLR15'
      Precision = 18
      Size = 2
    end
    object TMPVLR16: TIBBCDField
      FieldName = 'VLR16'
      Origin = 'TMP.VLR16'
      Precision = 18
      Size = 2
    end
    object TMPOBS: TMemoField
      FieldName = 'OBS'
      Origin = 'TMP.OBS'
      BlobType = ftMemo
      Size = 8
    end
    object TMPDESC500: TIBStringField
      FieldName = 'DESC500'
      Origin = 'TMP.DESC500'
      Size = 500
    end
    object TMPDESC2: TIBStringField
      FieldName = 'DESC2'
      Origin = 'TMP.DESC2'
      Size = 60
    end
    object TMPDESC4: TIBStringField
      FieldName = 'DESC4'
      Origin = 'TMP.DESC4'
      Size = 60
    end
    object TMPDESC5: TIBStringField
      FieldName = 'DESC5'
      Origin = 'TMP.DESC5'
      Size = 60
    end
    object TMPDESC6: TIBStringField
      FieldName = 'DESC6'
      Origin = 'TMP.DESC6'
      Size = 60
    end
    object TMPDESC7: TIBStringField
      FieldName = 'DESC7'
      Origin = 'TMP.DESC7'
      Size = 60
    end
    object TMPDESC8: TIBStringField
      FieldName = 'DESC8'
      Origin = 'TMP.DESC8'
      Size = 60
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
      '  VLR8,'
      '  VLR9,'
      '  VLR10,'
      '  VLR11,'
      '  VLR12,'
      '  VLR13,'
      '  VLR14,'
      '  VLR15,'
      '  VLR16,'
      '  OBS,'
      '  DESC500,'
      '  DESC4,'
      '  DESC5,'
      '  DESC6,'
      '  DESC7,'
      '  DESC8'
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
      '  VLR8 = :VLR8,'
      '  VLR9 = :VLR9,'
      '  VLR10 = :VLR10,'
      '  VLR11 = :VLR11,'
      '  VLR12 = :VLR12,'
      '  VLR13 = :VLR13,'
      '  VLR14 = :VLR14,'
      '  VLR15 = :VLR15,'
      '  VLR16 = :VLR16,'
      '  OBS = :OBS,'
      '  DESC500 = :DESC500,'
      '  DESC4 = :DESC4,'
      '  DESC5 = :DESC5,'
      '  DESC6 = :DESC6,'
      '  DESC7 = :DESC7,'
      '  DESC8 = :DESC8'
      'where'
      '  COD_TMP = :OLD_COD_TMP')
    InsertSQL.Strings = (
      'insert into TMP'
      
        '  (DESC1, DESC2, VLR1, VLR2, COD_TMP, INT1, DATA1, VLR3, VLR4, V' +
        'LR5, '
      'VLR6, '
      
        '   VLR7, DATA2, INT2, INT3, DESC3, VLR8, VLR9, VLR10, VLR11, VLR' +
        '12, VLR13, '
      
        '   VLR14, VLR15, VLR16, OBS, DESC500, DESC4, DESC5, DESC6, DESC7' +
        ', DESC8)'
      'values'
      
        '  (:DESC1, :DESC2, :VLR1, :VLR2, :COD_TMP, :INT1, :DATA1, :VLR3,' +
        ' :VLR4, '
      
        '   :VLR5, :VLR6, :VLR7, :DATA2, :INT2, :INT3, :DESC3, :VLR8, :VL' +
        'R9, :VLR10, '
      
        '   :VLR11, :VLR12, :VLR13, :VLR14, :VLR15, :VLR16, :OBS, :DESC50' +
        '0, :DESC4, '
      '   :DESC5, :DESC6, :DESC7, :DESC8)')
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
      
        'select * from registro order by registro.data, registro.hora des' +
        'c')
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
      'SELECT first 1  * FROM NF'
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
      'select  first 1 * from LOJA')
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
      Size = 200
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
    object TLojaWWW_PROCON: TIBStringField
      FieldName = 'WWW_PROCON'
      Origin = 'LOJA.WWW_PROCON'
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
    object TLojaNFELICENSA: TIBStringField
      FieldName = 'NFELICENSA'
      Origin = 'LOJA.NFELICENSA'
      Size = 150
    end
    object TLojaNFECERTIFICACAO: TIBStringField
      FieldName = 'NFECERTIFICACAO'
      Origin = 'LOJA.NFECERTIFICACAO'
      Size = 255
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
    object TLojaINDCFOPINTERNO: TIntegerField
      FieldName = 'INDCFOPINTERNO'
      Origin = 'LOJA.INDCFOPINTERNO'
    end
    object TLojaINDCFOPEXTERNO: TIntegerField
      FieldName = 'INDCFOPEXTERNO'
      Origin = 'LOJA.INDCFOPEXTERNO'
    end
    object TLojaDESATIVASITE: TIBStringField
      FieldName = 'DESATIVASITE'
      Origin = 'LOJA.DESATIVASITE'
      FixedChar = True
      Size = 1
    end
    object TLojaDESATIVAFEED: TIBStringField
      FieldName = 'DESATIVAFEED'
      Origin = 'LOJA.DESATIVAFEED'
      FixedChar = True
      Size = 1
    end
    object TLojaATIVAGRID: TIBStringField
      FieldName = 'ATIVAGRID'
      Origin = 'LOJA.ATIVAGRID'
      FixedChar = True
      Size = 1
    end
    object TLojaATIVACONSULTARAP: TIBStringField
      FieldName = 'ATIVACONSULTARAP'
      Origin = 'LOJA.ATIVACONSULTARAP'
      FixedChar = True
      Size = 1
    end
    object TLojaDESCETIQUETA: TIBStringField
      FieldName = 'DESCETIQUETA'
      Origin = 'LOJA.DESCETIQUETA'
      FixedChar = True
      Size = 1
    end
    object TLojaCHECKEXPRESS: TIBStringField
      FieldName = 'CHECKEXPRESS'
      Origin = 'LOJA.CHECKEXPRESS'
      FixedChar = True
      Size = 1
    end
    object TLojaCOD_CFOPDEVFORA: TIntegerField
      FieldName = 'COD_CFOPDEVFORA'
      Origin = 'LOJA.COD_CFOPDEVFORA'
    end
    object TLojaGERACTAROUTROS: TIBStringField
      FieldName = 'GERACTAROUTROS'
      Origin = 'LOJA.GERACTAROUTROS'
      FixedChar = True
      Size = 1
    end
    object TLojaINFDIASVENCLOTE: TIntegerField
      FieldName = 'INFDIASVENCLOTE'
      Origin = 'LOJA.INFDIASVENCLOTE'
    end
    object TLojaRESERVFISCONF: TIBStringField
      FieldName = 'RESERVFISCONF'
      Origin = 'LOJA.RESERVFISCONF'
      Size = 100
    end
    object TLojaNFIMPDADOSVEICULO: TIBStringField
      FieldName = 'NFIMPDADOSVEICULO'
      Origin = 'LOJA.NFIMPDADOSVEICULO'
      FixedChar = True
      Size = 1
    end
    object TLojaNFIMPOBS: TIBStringField
      FieldName = 'NFIMPOBS'
      Origin = 'LOJA.NFIMPOBS'
      FixedChar = True
      Size = 1
    end
    object TLojaNFIMPNUMORD: TIBStringField
      FieldName = 'NFIMPNUMORD'
      Origin = 'LOJA.NFIMPNUMORD'
      FixedChar = True
      Size = 1
    end
    object TLojaPADMECDOCFIN: TIBStringField
      FieldName = 'PADMECDOCFIN'
      Origin = 'LOJA.PADMECDOCFIN'
      FixedChar = True
      Size = 1
    end
    object TLojaPROXDOCPADMEC: TIntegerField
      FieldName = 'PROXDOCPADMEC'
      Origin = 'LOJA.PROXDOCPADMEC'
    end
    object TLojaPESQINTELPROD: TIBStringField
      FieldName = 'PESQINTELPROD'
      Origin = 'LOJA.PESQINTELPROD'
      FixedChar = True
      Size = 1
    end
    object TLojaCONTROLPRODLISTA: TIBStringField
      FieldName = 'CONTROLPRODLISTA'
      Origin = 'LOJA.CONTROLPRODLISTA'
      FixedChar = True
      Size = 1
    end
    object TLojaCFOPINTSERV: TIntegerField
      FieldName = 'CFOPINTSERV'
      Origin = 'LOJA.CFOPINTSERV'
    end
    object TLojaCFOPEXTSERV: TIntegerField
      FieldName = 'CFOPEXTSERV'
      Origin = 'LOJA.CFOPEXTSERV'
    end
    object TLojaLIBERACATALOGO: TIBStringField
      FieldName = 'LIBERACATALOGO'
      Origin = 'LOJA.LIBERACATALOGO'
      FixedChar = True
      Size = 1
    end
    object TLojaABRECATALOGO: TIBStringField
      FieldName = 'ABRECATALOGO'
      Origin = 'LOJA.ABRECATALOGO'
      FixedChar = True
      Size = 1
    end
    object TLojaNUMREGISTROSSQL: TSmallintField
      FieldName = 'NUMREGISTROSSQL'
      Origin = 'LOJA.NUMREGISTROSSQL'
    end
    object TLojaCONCTELCONTATO: TIBStringField
      FieldName = 'CONCTELCONTATO'
      Origin = 'LOJA.CONCTELCONTATO'
      FixedChar = True
      Size = 1
    end
    object TLojaINFOPROMISSORIA: TIBStringField
      FieldName = 'INFOPROMISSORIA'
      Origin = 'LOJA.INFOPROMISSORIA'
      Size = 4000
    end
    object TLojaATIVAPROMISSORIA: TIBStringField
      FieldName = 'ATIVAPROMISSORIA'
      Origin = 'LOJA.ATIVAPROMISSORIA'
      FixedChar = True
      Size = 1
    end
    object TLojaDUPLICAPROMIS: TIBStringField
      FieldName = 'DUPLICAPROMIS'
      Origin = 'LOJA.DUPLICAPROMIS'
      FixedChar = True
      Size = 1
    end
    object TLojaCOMPLEMENTARBLT: TIBStringField
      FieldName = 'COMPLEMENTARBLT'
      Origin = 'LOJA.COMPLEMENTARBLT'
      FixedChar = True
      Size = 1
    end
    object TLojaJUROMULTABLT: TIBStringField
      FieldName = 'JUROMULTABLT'
      Origin = 'LOJA.JUROMULTABLT'
      FixedChar = True
      Size = 1
    end
    object TLojaABREFICHATEC: TIBStringField
      FieldName = 'ABREFICHATEC'
      Origin = 'LOJA.ABREFICHATEC'
      FixedChar = True
      Size = 1
    end
    object TLojaRAZAOPROMISSORIA: TIBStringField
      FieldName = 'RAZAOPROMISSORIA'
      Origin = 'LOJA.RAZAOPROMISSORIA'
      FixedChar = True
      Size = 1
    end
    object TLojaENDLOJAPROMISSORIA: TIBStringField
      FieldName = 'ENDLOJAPROMISSORIA'
      Origin = 'LOJA.ENDLOJAPROMISSORIA'
      FixedChar = True
      Size = 1
    end
    object TLojaTXTRESERVFISCONF: TIBStringField
      FieldName = 'TXTRESERVFISCONF'
      Origin = 'LOJA.TXTRESERVFISCONF'
      Size = 100
    end
    object TLojaMOSTRACUSTOPEDV: TIBStringField
      FieldName = 'MOSTRACUSTOPEDV'
      Origin = 'LOJA.MOSTRACUSTOPEDV'
      FixedChar = True
      Size = 1
    end
    object TLojaCFOPINTPC: TIntegerField
      FieldName = 'CFOPINTPC'
      Origin = 'LOJA.CFOPINTPC'
    end
    object TLojaCFOPEXTPC: TIntegerField
      FieldName = 'CFOPEXTPC'
      Origin = 'LOJA.CFOPEXTPC'
    end
    object TLojaCFOPINTSTPC: TIntegerField
      FieldName = 'CFOPINTSTPC'
      Origin = 'LOJA.CFOPINTSTPC'
    end
    object TLojaCFOPEXTSTPC: TIntegerField
      FieldName = 'CFOPEXTSTPC'
      Origin = 'LOJA.CFOPEXTSTPC'
    end
    object TLojaCFOPINTGARANTIA: TIntegerField
      FieldName = 'CFOPINTGARANTIA'
      Origin = 'LOJA.CFOPINTGARANTIA'
    end
    object TLojaCFOPEXTGARANTIA: TIntegerField
      FieldName = 'CFOPEXTGARANTIA'
      Origin = 'LOJA.CFOPEXTGARANTIA'
    end
    object TLojaCFOPINTDEVOLUC: TIntegerField
      FieldName = 'CFOPINTDEVOLUC'
      Origin = 'LOJA.CFOPINTDEVOLUC'
    end
    object TLojaCFOPEXTDEVOLUC: TIntegerField
      FieldName = 'CFOPEXTDEVOLUC'
      Origin = 'LOJA.CFOPEXTDEVOLUC'
    end
    object TLojaCFOPINTDEVOLUCST: TIntegerField
      FieldName = 'CFOPINTDEVOLUCST'
      Origin = 'LOJA.CFOPINTDEVOLUCST'
    end
    object TLojaCFOPEXTDEVOLUCST: TIntegerField
      FieldName = 'CFOPEXTDEVOLUCST'
      Origin = 'LOJA.CFOPEXTDEVOLUCST'
    end
    object TLojaUSAOBSITEMCOMPRA: TIBStringField
      FieldName = 'USAOBSITEMCOMPRA'
      Origin = 'LOJA.USAOBSITEMCOMPRA'
      FixedChar = True
      Size = 1
    end
    object TLojaCFOPMATCONSUMO: TIntegerField
      FieldName = 'CFOPMATCONSUMO'
      Origin = 'LOJA.CFOPMATCONSUMO'
    end
    object TLojaMODELOCOMPPEDC: TSmallintField
      FieldName = 'MODELOCOMPPEDC'
      Origin = 'LOJA.MODELOCOMPPEDC'
    end
    object TLojaIMPNOMEEQUIPECOMPORDEM: TIBStringField
      FieldName = 'IMPNOMEEQUIPECOMPORDEM'
      Origin = 'LOJA.IMPNOMEEQUIPECOMPORDEM'
      FixedChar = True
      Size = 1
    end
    object TLojaCFOPMATCONSUMOEXT: TIntegerField
      FieldName = 'CFOPMATCONSUMOEXT'
      Origin = 'LOJA.CFOPMATCONSUMOEXT'
    end
    object TLojaATUALIZABANCO: TIBStringField
      FieldName = 'ATUALIZABANCO'
      Origin = 'LOJA.ATUALIZABANCO'
      FixedChar = True
      Size = 1
    end
    object TLojaHOSTFTP: TIBStringField
      FieldName = 'HOSTFTP'
      Origin = 'LOJA.HOSTFTP'
      Size = 60
    end
    object TLojaUSERNAMEFTP: TIBStringField
      FieldName = 'USERNAMEFTP'
      Origin = 'LOJA.USERNAMEFTP'
      Size = 60
    end
    object TLojaPASSWORDFTP: TIBStringField
      FieldName = 'PASSWORDFTP'
      Origin = 'LOJA.PASSWORDFTP'
      Size = 60
    end
    object TLojaDIRDOWFTP: TIBStringField
      FieldName = 'DIRDOWFTP'
      Origin = 'LOJA.DIRDOWFTP'
      Size = 60
    end
    object TLojaDIRUPFTP: TIBStringField
      FieldName = 'DIRUPFTP'
      Origin = 'LOJA.DIRUPFTP'
      Size = 60
    end
    object TLojaHORAFTP: TIBStringField
      FieldName = 'HORAFTP'
      Origin = 'LOJA.HORAFTP'
      Size = 10
    end
    object TLojaFECHARCOMPRANF: TIBStringField
      FieldName = 'FECHARCOMPRANF'
      Origin = 'LOJA.FECHARCOMPRANF'
      FixedChar = True
      Size = 1
    end
    object TLojaCFOPINTSIMPREMESSA: TIntegerField
      FieldName = 'CFOPINTSIMPREMESSA'
      Origin = 'LOJA.CFOPINTSIMPREMESSA'
    end
    object TLojaCFOPEXTSIMPREMESSA: TIntegerField
      FieldName = 'CFOPEXTSIMPREMESSA'
      Origin = 'LOJA.CFOPEXTSIMPREMESSA'
    end
    object TLojaCRIAARQFTP: TIBStringField
      FieldName = 'CRIAARQFTP'
      Origin = 'LOJA.CRIAARQFTP'
      FixedChar = True
      Size = 1
    end
    object TLojaRECEBEARQFTP: TIBStringField
      FieldName = 'RECEBEARQFTP'
      Origin = 'LOJA.RECEBEARQFTP'
      FixedChar = True
      Size = 1
    end
    object TLojaATUALIZABANCOAUT: TIBStringField
      FieldName = 'ATUALIZABANCOAUT'
      Origin = 'LOJA.ATUALIZABANCOAUT'
      FixedChar = True
      Size = 1
    end
    object TLojaDATAFTP: TDateField
      FieldName = 'DATAFTP'
      Origin = 'LOJA.DATAFTP'
    end
    object TLojaCFOPFRETEINT: TIntegerField
      FieldName = 'CFOPFRETEINT'
      Origin = 'LOJA.CFOPFRETEINT'
    end
    object TLojaCFOPFRETEEXT: TIntegerField
      FieldName = 'CFOPFRETEEXT'
      Origin = 'LOJA.CFOPFRETEEXT'
    end
    object TLojaIMPEDIRSERVICOS: TIBStringField
      FieldName = 'IMPEDIRSERVICOS'
      Origin = 'LOJA.IMPEDIRSERVICOS'
      FixedChar = True
      Size = 1
    end
    object TLojaGERAFINANCDTSIS: TIBStringField
      FieldName = 'GERAFINANCDTSIS'
      Origin = 'LOJA.GERAFINANCDTSIS'
      FixedChar = True
      Size = 1
    end
    object TLojaCOD_DEVNOTAPROPDENTRO: TIntegerField
      FieldName = 'COD_DEVNOTAPROPDENTRO'
      Origin = 'LOJA.COD_DEVNOTAPROPDENTRO'
    end
    object TLojaCOD_DEVNOTAPROPFORA: TSmallintField
      FieldName = 'COD_DEVNOTAPROPFORA'
      Origin = 'LOJA.COD_DEVNOTAPROPFORA'
    end
    object TLojaCSTTRIB: TIntegerField
      FieldName = 'CSTTRIB'
      Origin = 'LOJA.CSTTRIB'
    end
    object TLojaCSTSUBST: TIntegerField
      FieldName = 'CSTSUBST'
      Origin = 'LOJA.CSTSUBST'
    end
    object TLojaLOGOEMPRESA: TBlobField
      FieldName = 'LOGOEMPRESA'
      Origin = 'LOJA.LOGOEMPRESA'
      Size = 8
    end
    object TLojaIECLASS2: TIBStringField
      FieldName = 'IECLASS2'
      Origin = 'LOJA.IECLASS2'
      FixedChar = True
      Size = 1
    end
    object TLojaIECONTRINT: TIBStringField
      FieldName = 'IECONTRINT'
      Origin = 'LOJA.IECONTRINT'
      FixedChar = True
      Size = 1
    end
    object TLojaPLANOCTAPROD: TIBStringField
      FieldName = 'PLANOCTAPROD'
      Origin = 'LOJA.PLANOCTAPROD'
      FixedChar = True
      Size = 1
    end
    object TLojaMOSTRAESTOQUE: TIBStringField
      FieldName = 'MOSTRAESTOQUE'
      Origin = 'LOJA.MOSTRAESTOQUE'
      FixedChar = True
      Size = 1
    end
    object TLojaSENHASUPORTE: TIBStringField
      FieldName = 'SENHASUPORTE'
      Origin = 'LOJA.SENHASUPORTE'
      Size = 60
    end
    object TLojaCONTROLANCM: TIBStringField
      FieldName = 'CONTROLANCM'
      Origin = 'LOJA.CONTROLANCM'
      FixedChar = True
      Size = 1
    end
    object TLojaSERVNFE: TIBStringField
      FieldName = 'SERVNFE'
      Origin = 'LOJA.SERVNFE'
      FixedChar = True
      Size = 1
    end
    object TLojaNFEVERSAO: TIBStringField
      FieldName = 'NFEVERSAO'
      Origin = 'LOJA.NFEVERSAO'
      Size = 10
    end
    object TLojaCTRLNUM: TIBStringField
      FieldName = 'CTRLNUM'
      Origin = 'LOJA.CTRLNUM'
      FixedChar = True
      Size = 1
    end
    object TLojaPUXAULTPRONOVO: TIBStringField
      FieldName = 'PUXAULTPRONOVO'
      Origin = 'LOJA.PUXAULTPRONOVO'
      FixedChar = True
      Size = 1
    end
    object TLojaPERSODESPADIC: TIBStringField
      FieldName = 'PERSODESPADIC'
      Origin = 'LOJA.PERSODESPADIC'
      FixedChar = True
      Size = 1
    end
    object TLojaFOCUITEMOS: TIBStringField
      FieldName = 'FOCUITEMOS'
      Origin = 'LOJA.FOCUITEMOS'
      FixedChar = True
      Size = 2
    end
    object TLojaMOVCAIXACARTAO: TIBStringField
      FieldName = 'MOVCAIXACARTAO'
      Origin = 'LOJA.MOVCAIXACARTAO'
      FixedChar = True
      Size = 1
    end
    object TLojaNAOATUALIZAESTOQUEPC: TIBStringField
      FieldName = 'NAOATUALIZAESTOQUEPC'
      Size = 5
    end
    object TLojaDIASVENC: TIntegerField
      FieldName = 'DIASVENC'
      Origin = 'LOJA.DIASVENC'
    end
    object TLojaEMISSAOPROPDENTRO: TIntegerField
      FieldName = 'EMISSAOPROPDENTRO'
      Origin = 'LOJA.EMISSAOPROPDENTRO'
    end
    object TLojaEMISSAOPROPFORA: TIntegerField
      FieldName = 'EMISSAOPROPFORA'
      Origin = 'LOJA.EMISSAOPROPFORA'
    end
    object TLojaGERANFSE: TIBStringField
      FieldName = 'GERANFSE'
      Origin = 'LOJA.GERANFSE'
      FixedChar = True
      Size = 1
    end
    object TLojaTITULODUPLICATA: TIBStringField
      FieldName = 'TITULODUPLICATA'
      Origin = 'LOJA.TITULODUPLICATA'
      Size = 30
    end
    object TLojaMODODEEMISSAONFE: TIBStringField
      FieldName = 'MODODEEMISSAONFE'
      Origin = 'LOJA.MODODEEMISSAONFE'
      Size = 15
    end
    object TLojaBAIXAAUTOMATICACARTAO: TSmallintField
      FieldName = 'BAIXAAUTOMATICACARTAO'
      Origin = 'LOJA.BAIXAAUTOMATICACARTAO'
    end
    object TLojaUSAPLACASADICIONAIS: TIBStringField
      FieldName = 'USAPLACASADICIONAIS'
      Origin = 'LOJA.USAPLACASADICIONAIS'
      FixedChar = True
      Size = 1
    end
    object TLojaORDENAORDEM: TIBStringField
      FieldName = 'ORDENAORDEM'
      Origin = 'LOJA.ORDENAORDEM'
      Size = 15
    end
    object TLojaVERIFDESCPRODUTO: TIBStringField
      FieldName = 'VERIFDESCPRODUTO'
      Origin = 'LOJA.VERIFDESCPRODUTO'
      FixedChar = True
      Size = 1
    end
    object TLojaFORCARCARTAO: TIBStringField
      FieldName = 'FORCARCARTAO'
      Origin = 'LOJA.FORCARCARTAO'
      FixedChar = True
      Size = 1
    end
    object TLojaNFSEADMINISTRADORA: TIBStringField
      FieldName = 'NFSEADMINISTRADORA'
      Origin = 'LOJA.NFSEADMINISTRADORA'
    end
    object TLojaTIPOORCAMENTO: TIBStringField
      FieldName = 'TIPOORCAMENTO'
      Origin = 'LOJA.TIPOORCAMENTO'
      Size = 10
    end
    object TLojaNFSE_LICENSA: TIBStringField
      FieldName = 'NFSE_LICENSA'
      Origin = 'LOJA.NFSE_LICENSA'
      Size = 150
    end
    object TLojaINSERIRFATURA: TIBStringField
      FieldName = 'INSERIRFATURA'
      Origin = 'LOJA.INSERIRFATURA'
      FixedChar = True
      Size = 1
    end
    object TLojaCARACTERISTICA_PRODUTO02: TMemoField
      FieldName = 'CARACTERISTICA_PRODUTO02'
      Origin = 'LOJA.CARACTERISTICA_PRODUTO02'
      BlobType = ftMemo
      Size = 8
    end
    object TLojaCARACTERISTICA_PRODUTO01: TMemoField
      FieldName = 'CARACTERISTICA_PRODUTO01'
      Origin = 'LOJA.CARACTERISTICA_PRODUTO01'
      BlobType = ftMemo
      Size = 8
    end
    object TLojaATUALIZAESTOQUEPC: TIBStringField
      FieldName = 'ATUALIZAESTOQUEPC'
      FixedChar = True
      Size = 1
    end
    object TLojaCAMINHOXML: TIBStringField
      FieldName = 'CAMINHOXML'
      Origin = 'LOJA.CAMINHOXML'
      Size = 150
    end
    object TLojaEXIBECLASSSERV: TIBStringField
      FieldName = 'EXIBECLASSSERV'
      Origin = 'LOJA.EXIBECLASSSERV'
      FixedChar = True
      Size = 1
    end
    object TLojaALIQVAR: TIBBCDField
      FieldName = 'ALIQVAR'
      Origin = 'LOJA.ALIQVAR'
      Precision = 18
      Size = 2
    end
    object TLojaALIQATAC: TIBBCDField
      FieldName = 'ALIQATAC'
      Origin = 'LOJA.ALIQATAC'
      Precision = 18
      Size = 2
    end
    object TLojaTIPOIMP_NFCE: TIBStringField
      FieldName = 'TIPOIMP_NFCE'
      Origin = 'LOJA.TIPOIMP_NFCE'
      Size = 5
    end
    object TLojaIDCSC_NFCEPROD: TIBStringField
      FieldName = 'IDCSC_NFCEPROD'
      Origin = 'LOJA.IDCSC_NFCEPROD'
      Size = 6
    end
    object TLojaCSC_NFCEPROD: TIBStringField
      FieldName = 'CSC_NFCEPROD'
      Origin = 'LOJA.CSC_NFCEPROD'
      Size = 100
    end
    object TLojaIDCSC_NFCEHOMO: TIBStringField
      FieldName = 'IDCSC_NFCEHOMO'
      Origin = 'LOJA.IDCSC_NFCEHOMO'
      Size = 6
    end
    object TLojaCSC_NFCEHOMO: TIBStringField
      FieldName = 'CSC_NFCEHOMO'
      Origin = 'LOJA.CSC_NFCEHOMO'
      Size = 100
    end
    object TLojaEXIBVLRCOMPOS: TIBStringField
      FieldName = 'EXIBVLRCOMPOS'
      Origin = 'LOJA.EXIBVLRCOMPOS'
      Size = 1
    end
    object TLojaEMAIL_EMPRESA: TIBStringField
      FieldName = 'EMAIL_EMPRESA'
      Origin = 'LOJA.EMAIL_EMPRESA'
      Size = 200
    end
    object TLojaSENHAEMAIL_EMPRESA: TIBStringField
      FieldName = 'SENHAEMAIL_EMPRESA'
      Origin = 'LOJA.SENHAEMAIL_EMPRESA'
      Size = 200
    end
    object TLojaSERVIDOR_SMTP: TIBStringField
      FieldName = 'SERVIDOR_SMTP'
      Origin = 'LOJA.SERVIDOR_SMTP'
      Size = 50
    end
    object TLojaPORTA_EMAIL: TIntegerField
      FieldName = 'PORTA_EMAIL'
      Origin = 'LOJA.PORTA_EMAIL'
    end
    object TLojaTXTAUX_EMAIL: TIBStringField
      FieldName = 'TXTAUX_EMAIL'
      Origin = 'LOJA.TXTAUX_EMAIL'
      Size = 200
    end
    object TLojaLOGINSUPORTE: TIBStringField
      FieldName = 'LOGINSUPORTE'
      Origin = 'LOJA.LOGINSUPORTE'
      Size = 150
    end
    object TLojaCFOPINTOUTEMISSAOPROP: TIntegerField
      FieldName = 'CFOPINTOUTEMISSAOPROP'
      Origin = 'LOJA.CFOPINTOUTEMISSAOPROP'
    end
    object TLojaCFOPEXTOUTEMISSAOPROP: TIntegerField
      FieldName = 'CFOPEXTOUTEMISSAOPROP'
      Origin = 'LOJA.CFOPEXTOUTEMISSAOPROP'
    end
    object TLojaBLOQBTNFISCAL: TIBStringField
      FieldName = 'BLOQBTNFISCAL'
      Origin = 'LOJA.BLOQBTNFISCAL'
      FixedChar = True
      Size = 1
    end
    object TLojaCAMINHODOCS: TIBStringField
      FieldName = 'CAMINHODOCS'
      Origin = 'LOJA.CAMINHODOCS'
      Size = 150
    end
    object TLojaUSARVENDEDOROSMEC: TIBStringField
      FieldName = 'USARVENDEDOROSMEC'
      Origin = 'LOJA.USARVENDEDOROSMEC'
      FixedChar = True
      Size = 1
    end
    object TLojaUSAR4CASASQTD: TIBStringField
      FieldName = 'USAR4CASASQTD'
      Origin = 'LOJA.USAR4CASASQTD'
      Size = 5
    end
    object TLojaRECALCULA_LUCRATIV_PRODUTO: TIBStringField
      FieldName = 'RECALCULA_LUCRATIV_PRODUTO'
      Origin = 'LOJA.RECALCULA_LUCRATIV_PRODUTO'
      FixedChar = True
      Size = 1
    end
    object TLojaMAISDEUMCONTROLEINTERNO: TIBStringField
      FieldName = 'MAISDEUMCONTROLEINTERNO'
      Origin = 'LOJA.MAISDEUMCONTROLEINTERNO'
      FixedChar = True
      Size = 1
    end
    object TLojaDESABCOPIAPRODUTOS: TIBStringField
      FieldName = 'DESABCOPIAPRODUTOS'
      Origin = 'LOJA.DESABCOPIAPRODUTOS'
      FixedChar = True
      Size = 1
    end
    object TLojaUSARMULTIPLOSVENDEDORESOS: TIBStringField
      FieldName = 'USARMULTIPLOSVENDEDORESOS'
      Origin = 'LOJA.USARMULTIPLOSVENDEDORESOS'
      FixedChar = True
      Size = 1
    end
    object TLojaCOD_CONTAANTECIPACAOCR: TIntegerField
      FieldName = 'COD_CONTAANTECIPACAOCR'
      Origin = 'LOJA.COD_CONTAANTECIPACAOCR'
    end
    object TLojaCNPJ_CONTABILIDADE: TIBStringField
      FieldName = 'CNPJ_CONTABILIDADE'
      Origin = 'LOJA.CNPJ_CONTABILIDADE'
    end
    object TLojaIMPSTXMLPRODUTO: TIBStringField
      FieldName = 'IMPSTXMLPRODUTO'
      Origin = 'LOJA.IMPSTXMLPRODUTO'
      FixedChar = True
      Size = 1
    end
    object TLojaFORMAFECHAMENTOOS: TIBStringField
      FieldName = 'FORMAFECHAMENTOOS'
      Origin = 'LOJA.FORMAFECHAMENTOOS'
    end
  end
  object UPLoja: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  COD_LOJA,'
      '  COD_EMPRESA,'
      '  DESCRICAO,'
      '  MULTA,'
      '  JUROS,'
      '  GERENTE,'
      '  PLNCTA_RETCAI,'
      '  NCASASZEROPROD,'
      '  ZEROCODPRODUTO,'
      '  FECHAPED,'
      '  ATUAESTOQUE,'
      '  VENDESTNEG,'
      '  VENDSALDONEG,'
      '  TITULOPRIM,'
      '  TITULOSEC,'
      '  RODAPEPED,'
      '  FONTTITPRIM,'
      '  FONTTITSEC,'
      '  FONTRODAPE,'
      '  IMPPED,'
      '  QTDCOPYPED,'
      '  TEXTODUPREC,'
      '  IMPPEDFECH,'
      '  IMPDUP,'
      '  IMPDUPAUT,'
      '  CALVALVEND,'
      '  PLNCTA_LANCINI,'
      '  CONTCPFCNPJCLI,'
      '  CONTCPFCNPJFOR,'
      '  FOCUITEMPED,'
      '  CAMPOPESQITEMPED,'
      '  PLNCTA_VENDVISTA,'
      '  PLNCTA_VENDPRAZO,'
      '  PLNCTA_COMPVISTA,'
      '  PLNCTA_COMPPRAZO,'
      '  ATIVIDADE,'
      '  VENDITEMPROD,'
      '  JURCOMP,'
      '  IEPRECO,'
      '  IECODCOMPOSTO,'
      '  IEMARCA,'
      '  PLNCTA_JURCONCED,'
      '  PLNCTA_JURREC,'
      '  PLNCTA_DESCCONCED,'
      '  PLNCTA_DESCREC,'
      '  VALREP,'
      '  IEDESC,'
      '  IECODFAB,'
      '  PLNCTA_SAICXCORR,'
      '  PLNCTA_ENTCXCORR,'
      '  COD_CONSUMIDOR,'
      '  CAMIMGPDV,'
      '  DIASCARE,'
      '  ISSQN,'
      '  INSS,'
      '  IMPREND,'
      '  CONTSOC,'
      '  PIS,'
      '  COFINS,'
      '  OUTROIMPSERV,'
      '  COMISSAOSERV,'
      '  TXTABERTORD,'
      '  TXTFECHORD,'
      '  PLNCTASERV,'
      '  PLNCTASERVPRAZO,'
      '  PROXCTRINT,'
      '  TIPOETPROD,'
      '  MOVPARCAVISTA,'
      '  UTILFORMPG,'
      '  CODPRODREL1,'
      '  CODPRODREL2,'
      '  ALTCOMPROD,'
      '  ETPERSONAL,'
      '  COD_ETQPROD,'
      '  USAMULTCOMIS,'
      '  DIASBLOQCLI,'
      '  CAMIMGLOGO,'
      '  TMP1,'
      '  TMP2,'
      '  USAGARANTIA,'
      '  COD_GRUPOMT,'
      '  CTAFRTCOMP,'
      '  CTAFRTVEND,'
      '  CONVERTUNID,'
      '  FRASEECF,'
      '  PORTAECF,'
      '  TIPOFISCAL,'
      '  ENDREL,'
      '  PLNCTATRANSFBANCO,'
      '  PLNCTATRANSFCAIXA,'
      '  CTRLDVL,'
      '  CTRLMENS,'
      '  TIMEMENS,'
      '  PRIMTITCUPOM,'
      '  SEGTITCUPOM,'
      '  TERCTITCUPOM,'
      '  IMPOUTINFC,'
      '  NOMECAMPOAUXPROD,'
      '  COMISSPRODCADPROD,'
      '  OPERADESCCUPOM,'
      '  TITULODESCCUPOM,'
      '  IEBARRA,'
      '  CTRLIMPCUPOMCX,'
      '  R50,'
      '  R51,'
      '  R53,'
      '  R54,'
      '  R55,'
      '  R56,'
      '  R60M,'
      '  R60MECF,'
      '  R60D,'
      '  R60I,'
      '  R60R,'
      '  R61,'
      '  R61R,'
      '  R70,'
      '  R71,'
      '  R74,'
      '  R75,'
      '  R76,'
      '  R77,'
      '  R88SF,'
      '  R88PN,'
      '  R88GT,'
      '  R60A,'
      '  R60AECF,'
      '  MODELONF,'
      '  SERIENF,'
      '  NFIMP,'
      '  NFENTLINPROD,'
      '  NFENTLINSERV,'
      '  NFTAMPAPLIN,'
      '  NFTAMPAPCOL,'
      '  NFITMAXPROD,'
      '  NFITMAXSERV,'
      '  NFENTLINRECIBO,'
      '  IMGMENU,'
      '  IMGMENUTRANSP,'
      '  IMGMENUEXPANDIR,'
      '  IMGMENUCENTRO,'
      '  IMGMENUPROPORC,'
      '  NFDADOSADIC,'
      '  DESCCAMPADIC,'
      '  MODELOORDEM,'
      '  REDE,'
      '  COD_PRODDIV,'
      '  COD_FORDEV,'
      '  PLNCTA_DEVOLUCAO,'
      '  COD_CFOPDEV,'
      '  ECFTRUNC,'
      '  PERCDEC,'
      '  DIASDESC,'
      '  IEALTLARG,'
      '  IECOMPOSICAO,'
      '  IEPRECOPRAZO,'
      '  TMP3,'
      '  IECLASS,'
      '  IEFABR,'
      '  IMPMATRICIAL,'
      '  COD_IMPMAT,'
      '  MODELOORC,'
      '  COD_CFOPAUTO,'
      '  PLNCTATRANSFCXCX,'
      '  TXTPED,'
      '  TIPODUPLICATA,'
      '  COD_DUPPERSONAL,'
      '  PROXDOCCTAREC,'
      '  IMPTHERMAL,'
      '  BUSCANPRODS,'
      '  USAGAVETA,'
      '  TEXTOGARANTIA,'
      '  DESC_TAXA_DESLOCA,'
      '  VLR_TAXA,'
      '  FONE_PROCON,'
      '  END_PROCON,'
      '  WWW_PROCON,'
      '  COD_CONFIGCHEQUE,'
      '  TIPORECIBO,'
      '  PAINEL_DESC,'
      '  TIPOVENDA,'
      '  PDVVLRUNIT,'
      '  ORDEMLOCA_GUINDASTE,'
      '  GERAFINANCEIRO,'
      '  MODELOPEDVENDA,'
      '  TEXTOORCAMENTO,'
      '  EXPORT_OS,'
      '  VISUALNF,'
      '  VISUALRS,'
      '  MODELOORDEMFECH,'
      '  REVELCUSTOPRODUTO,'
      '  MSGESTOQUEMIN,'
      '  MSGLIMITCRED,'
      '  CFOPINTERNO,'
      '  CFOPEXTERNO,'
      '  COD_CTAANTECIPCREDCLI,'
      '  COD_CTAANTECIPCREDFOR,'
      '  CFOPINTERNOCST,'
      '  CFOPEXPERTOCST,'
      '  NFEVERSASCHEMA,'
      '  NFEPROHOMO,'
      '  NFELICENSA,'
      '  NFECERTIFICACAO,'
      '  CONVERTUNIDVEND,'
      '  CALCESTESTRUT,'
      '  CONVERTUNIDFERRO,'
      '  NFENTLINDESP,'
      '  NFITMAXDESP,'
      '  ECFINDICEALIQSERV,'
      '  INDCFOPINTERNO,'
      '  INDCFOPEXTERNO,'
      '  DESATIVASITE,'
      '  DESATIVAFEED,'
      '  ATIVAGRID,'
      '  ATIVACONSULTARAP,'
      '  DESCETIQUETA,'
      '  CHECKEXPRESS,'
      '  COD_CFOPDEVFORA,'
      '  GERACTAROUTROS,'
      '  INFDIASVENCLOTE,'
      '  RESERVFISCONF,'
      '  NFIMPDADOSVEICULO,'
      '  NFIMPOBS,'
      '  NFIMPNUMORD,'
      '  PADMECDOCFIN,'
      '  PROXDOCPADMEC,'
      '  PESQINTELPROD,'
      '  CONTROLPRODLISTA,'
      '  CFOPINTSERV,'
      '  CFOPEXTSERV,'
      '  LIBERACATALOGO,'
      '  ABRECATALOGO,'
      '  NUMREGISTROSSQL,'
      '  CONCTELCONTATO,'
      '  INFOPROMISSORIA,'
      '  ATIVAPROMISSORIA,'
      '  DUPLICAPROMIS,'
      '  COMPLEMENTARBLT,'
      '  JUROMULTABLT,'
      '  ABREFICHATEC,'
      '  RAZAOPROMISSORIA,'
      '  ENDLOJAPROMISSORIA,'
      '  TXTRESERVFISCONF,'
      '  MOSTRACUSTOPEDV,'
      '  CFOPINTPC,'
      '  CFOPEXTPC,'
      '  CFOPINTSTPC,'
      '  CFOPEXTSTPC,'
      '  CFOPINTGARANTIA,'
      '  CFOPEXTGARANTIA,'
      '  CFOPINTDEVOLUC,'
      '  CFOPEXTDEVOLUC,'
      '  CFOPINTDEVOLUCST,'
      '  CFOPEXTDEVOLUCST,'
      '  USAOBSITEMCOMPRA,'
      '  CFOPMATCONSUMO,'
      '  MODELOCOMPPEDC,'
      '  IMPNOMEEQUIPECOMPORDEM,'
      '  CFOPMATCONSUMOEXT,'
      '  ATUALIZABANCO,'
      '  HOSTFTP,'
      '  USERNAMEFTP,'
      '  PASSWORDFTP,'
      '  DIRDOWFTP,'
      '  DIRUPFTP,'
      '  HORAFTP,'
      '  FECHARCOMPRANF,'
      '  CFOPINTSIMPREMESSA,'
      '  CFOPEXTSIMPREMESSA,'
      '  CRIAARQFTP,'
      '  RECEBEARQFTP,'
      '  ATUALIZABANCOAUT,'
      '  DATAFTP,'
      '  CFOPFRETEINT,'
      '  CFOPFRETEEXT,'
      '  IMPEDIRSERVICOS,'
      '  GERAFINANCDTSIS,'
      '  COD_DEVNOTAPROPDENTRO,'
      '  COD_DEVNOTAPROPFORA,'
      '  CSTTRIB,'
      '  CSTSUBST,'
      '  LOGOEMPRESA,'
      '  IECLASS2,'
      '  IECONTRINT,'
      '  PLANOCTAPROD,'
      '  MOSTRAESTOQUE,'
      '  LOGINSUPORTE,'
      '  SENHASUPORTE,'
      '  CONTROLANCM,'
      '  SERVNFE,'
      '  NFEVERSAO,'
      '  CTRLNUM,'
      '  PUXAULTPRONOVO,'
      '  PERSODESPADIC,'
      '  FOCUITEMOS,'
      '  MOVCAIXACARTAO,'
      '  NAOATUALIZAESTOQUEPC,'
      '  EMISSAOPROPDENTRO,'
      '  EMISSAOPROPFORA,'
      '  DIASVENC,'
      '  GERANFSE,'
      '  TITULODUPLICATA,'
      '  MODODEEMISSAONFE,'
      '  BAIXAAUTOMATICACARTAO,'
      '  VERIFDESCPRODUTO,'
      '  ORDENAORDEM,'
      '  USAPLACASADICIONAIS,'
      '  FORCARCARTAO,'
      '  TIPOORCAMENTO,'
      '  NFSEADMINISTRADORA,'
      '  NFSE_LICENSA,'
      '  INSERIRFATURA,'
      '  CARACTERISTICA_PRODUTO01,'
      '  CARACTERISTICA_PRODUTO02,'
      '  ATUALIZAESTOQUEPC,'
      '  EXIBECLASSSERV,'
      '  CAMINHOXML,'
      '  ALIQATAC,'
      '  ALIQVAR,'
      '  TIPOIMP_NFCE,'
      '  EXIBVLRCOMPOS,'
      '  IDCSC_NFCEPROD,'
      '  CSC_NFCEPROD,'
      '  IDCSC_NFCEHOMO,'
      '  CSC_NFCEHOMO,'
      '  EMAIL_EMPRESA,'
      '  SENHAEMAIL_EMPRESA,'
      '  SERVIDOR_SMTP,'
      '  PORTA_EMAIL,'
      '  TXTAUX_EMAIL,'
      '  CAMINHODOCS,'
      '  BLOQBTNFISCAL,'
      '  CFOPINTOUTEMISSAOPROP,'
      '  CFOPEXTOUTEMISSAOPROP,'
      '  USAR4CASASQTD,'
      '  USARVENDEDOROSMEC,'
      '  DESABCOPIAPRODUTOS,'
      '  MAISDEUMCONTROLEINTERNO,'
      '  RECALCULA_LUCRATIV_PRODUTO,'
      '  USARMULTIPLOSVENDEDORESOS,'
      '  COD_CONTAANTECIPACAOCR,'
      '  CNPJ_CONTABILIDADE,'
      '  IMPSTXMLPRODUTO,'
      '  FORMAFECHAMENTOOS'
      'from LOJA '
      'where'
      '  COD_LOJA = :COD_LOJA')
    ModifySQL.Strings = (
      'update LOJA'
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
      '  FONE_PROCON = :FONE_PROCON,'
      '  END_PROCON = :END_PROCON,'
      '  WWW_PROCON = :WWW_PROCON,'
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
      '  ECFINDICEALIQSERV = :ECFINDICEALIQSERV,'
      '  INDCFOPINTERNO = :INDCFOPINTERNO,'
      '  INDCFOPEXTERNO = :INDCFOPEXTERNO,'
      '  DESATIVASITE = :DESATIVASITE,'
      '  DESATIVAFEED = :DESATIVAFEED,'
      '  ATIVAGRID = :ATIVAGRID,'
      '  ATIVACONSULTARAP = :ATIVACONSULTARAP,'
      '  DESCETIQUETA = :DESCETIQUETA,'
      '  CHECKEXPRESS = :CHECKEXPRESS,'
      '  COD_CFOPDEVFORA = :COD_CFOPDEVFORA,'
      '  GERACTAROUTROS = :GERACTAROUTROS,'
      '  INFDIASVENCLOTE = :INFDIASVENCLOTE,'
      '  RESERVFISCONF = :RESERVFISCONF,'
      '  NFIMPDADOSVEICULO = :NFIMPDADOSVEICULO,'
      '  NFIMPOBS = :NFIMPOBS,'
      '  NFIMPNUMORD = :NFIMPNUMORD,'
      '  PADMECDOCFIN = :PADMECDOCFIN,'
      '  PROXDOCPADMEC = :PROXDOCPADMEC,'
      '  PESQINTELPROD = :PESQINTELPROD,'
      '  CONTROLPRODLISTA = :CONTROLPRODLISTA,'
      '  CFOPINTSERV = :CFOPINTSERV,'
      '  CFOPEXTSERV = :CFOPEXTSERV,'
      '  LIBERACATALOGO = :LIBERACATALOGO,'
      '  ABRECATALOGO = :ABRECATALOGO,'
      '  NUMREGISTROSSQL = :NUMREGISTROSSQL,'
      '  CONCTELCONTATO = :CONCTELCONTATO,'
      '  INFOPROMISSORIA = :INFOPROMISSORIA,'
      '  ATIVAPROMISSORIA = :ATIVAPROMISSORIA,'
      '  DUPLICAPROMIS = :DUPLICAPROMIS,'
      '  COMPLEMENTARBLT = :COMPLEMENTARBLT,'
      '  JUROMULTABLT = :JUROMULTABLT,'
      '  ABREFICHATEC = :ABREFICHATEC,'
      '  RAZAOPROMISSORIA = :RAZAOPROMISSORIA,'
      '  ENDLOJAPROMISSORIA = :ENDLOJAPROMISSORIA,'
      '  TXTRESERVFISCONF = :TXTRESERVFISCONF,'
      '  MOSTRACUSTOPEDV = :MOSTRACUSTOPEDV,'
      '  CFOPINTPC = :CFOPINTPC,'
      '  CFOPEXTPC = :CFOPEXTPC,'
      '  CFOPINTSTPC = :CFOPINTSTPC,'
      '  CFOPEXTSTPC = :CFOPEXTSTPC,'
      '  CFOPINTGARANTIA = :CFOPINTGARANTIA,'
      '  CFOPEXTGARANTIA = :CFOPEXTGARANTIA,'
      '  CFOPINTDEVOLUC = :CFOPINTDEVOLUC,'
      '  CFOPEXTDEVOLUC = :CFOPEXTDEVOLUC,'
      '  CFOPINTDEVOLUCST = :CFOPINTDEVOLUCST,'
      '  CFOPEXTDEVOLUCST = :CFOPEXTDEVOLUCST,'
      '  USAOBSITEMCOMPRA = :USAOBSITEMCOMPRA,'
      '  CFOPMATCONSUMO = :CFOPMATCONSUMO,'
      '  MODELOCOMPPEDC = :MODELOCOMPPEDC,'
      '  IMPNOMEEQUIPECOMPORDEM = :IMPNOMEEQUIPECOMPORDEM,'
      '  CFOPMATCONSUMOEXT = :CFOPMATCONSUMOEXT,'
      '  ATUALIZABANCO = :ATUALIZABANCO,'
      '  HOSTFTP = :HOSTFTP,'
      '  USERNAMEFTP = :USERNAMEFTP,'
      '  PASSWORDFTP = :PASSWORDFTP,'
      '  DIRDOWFTP = :DIRDOWFTP,'
      '  DIRUPFTP = :DIRUPFTP,'
      '  HORAFTP = :HORAFTP,'
      '  FECHARCOMPRANF = :FECHARCOMPRANF,'
      '  CFOPINTSIMPREMESSA = :CFOPINTSIMPREMESSA,'
      '  CFOPEXTSIMPREMESSA = :CFOPEXTSIMPREMESSA,'
      '  CRIAARQFTP = :CRIAARQFTP,'
      '  RECEBEARQFTP = :RECEBEARQFTP,'
      '  ATUALIZABANCOAUT = :ATUALIZABANCOAUT,'
      '  DATAFTP = :DATAFTP,'
      '  CFOPFRETEINT = :CFOPFRETEINT,'
      '  CFOPFRETEEXT = :CFOPFRETEEXT,'
      '  IMPEDIRSERVICOS = :IMPEDIRSERVICOS,'
      '  GERAFINANCDTSIS = :GERAFINANCDTSIS,'
      '  COD_DEVNOTAPROPDENTRO = :COD_DEVNOTAPROPDENTRO,'
      '  COD_DEVNOTAPROPFORA = :COD_DEVNOTAPROPFORA,'
      '  CSTTRIB = :CSTTRIB,'
      '  CSTSUBST = :CSTSUBST,'
      '  LOGOEMPRESA = :LOGOEMPRESA,'
      '  IECLASS2 = :IECLASS2,'
      '  IECONTRINT = :IECONTRINT,'
      '  PLANOCTAPROD = :PLANOCTAPROD,'
      '  MOSTRAESTOQUE = :MOSTRAESTOQUE,'
      '  LOGINSUPORTE = :LOGINSUPORTE,'
      '  SENHASUPORTE = :SENHASUPORTE,'
      '  CONTROLANCM = :CONTROLANCM,'
      '  SERVNFE = :SERVNFE,'
      '  NFEVERSAO = :NFEVERSAO,'
      '  CTRLNUM = :CTRLNUM,'
      '  PUXAULTPRONOVO = :PUXAULTPRONOVO,'
      '  PERSODESPADIC = :PERSODESPADIC,'
      '  FOCUITEMOS = :FOCUITEMOS,'
      '  MOVCAIXACARTAO = :MOVCAIXACARTAO,'
      '  NAOATUALIZAESTOQUEPC = :NAOATUALIZAESTOQUEPC,'
      '  EMISSAOPROPDENTRO = :EMISSAOPROPDENTRO,'
      '  EMISSAOPROPFORA = :EMISSAOPROPFORA,'
      '  DIASVENC = :DIASVENC,'
      '  GERANFSE = :GERANFSE,'
      '  TITULODUPLICATA = :TITULODUPLICATA,'
      '  MODODEEMISSAONFE = :MODODEEMISSAONFE,'
      '  BAIXAAUTOMATICACARTAO = :BAIXAAUTOMATICACARTAO,'
      '  VERIFDESCPRODUTO = :VERIFDESCPRODUTO,'
      '  ORDENAORDEM = :ORDENAORDEM,'
      '  USAPLACASADICIONAIS = :USAPLACASADICIONAIS,'
      '  FORCARCARTAO = :FORCARCARTAO,'
      '  TIPOORCAMENTO = :TIPOORCAMENTO,'
      '  NFSEADMINISTRADORA = :NFSEADMINISTRADORA,'
      '  NFSE_LICENSA = :NFSE_LICENSA,'
      '  INSERIRFATURA = :INSERIRFATURA,'
      '  CARACTERISTICA_PRODUTO01 = :CARACTERISTICA_PRODUTO01,'
      '  CARACTERISTICA_PRODUTO02 = :CARACTERISTICA_PRODUTO02,'
      '  ATUALIZAESTOQUEPC = :ATUALIZAESTOQUEPC,'
      '  EXIBECLASSSERV = :EXIBECLASSSERV,'
      '  CAMINHOXML = :CAMINHOXML,'
      '  ALIQATAC = :ALIQATAC,'
      '  ALIQVAR = :ALIQVAR,'
      '  TIPOIMP_NFCE = :TIPOIMP_NFCE,'
      '  EXIBVLRCOMPOS = :EXIBVLRCOMPOS,'
      '  IDCSC_NFCEPROD = :IDCSC_NFCEPROD,'
      '  CSC_NFCEPROD = :CSC_NFCEPROD,'
      '  IDCSC_NFCEHOMO = :IDCSC_NFCEHOMO,'
      '  CSC_NFCEHOMO = :CSC_NFCEHOMO,'
      '  EMAIL_EMPRESA = :EMAIL_EMPRESA,'
      '  SENHAEMAIL_EMPRESA = :SENHAEMAIL_EMPRESA,'
      '  SERVIDOR_SMTP = :SERVIDOR_SMTP,'
      '  PORTA_EMAIL = :PORTA_EMAIL,'
      '  TXTAUX_EMAIL = :TXTAUX_EMAIL,'
      '  CAMINHODOCS = :CAMINHODOCS,'
      '  BLOQBTNFISCAL = :BLOQBTNFISCAL,'
      '  CFOPINTOUTEMISSAOPROP = :CFOPINTOUTEMISSAOPROP,'
      '  CFOPEXTOUTEMISSAOPROP = :CFOPEXTOUTEMISSAOPROP,'
      '  USAR4CASASQTD = :USAR4CASASQTD,'
      '  USARVENDEDOROSMEC = :USARVENDEDOROSMEC,'
      '  DESABCOPIAPRODUTOS = :DESABCOPIAPRODUTOS,'
      '  MAISDEUMCONTROLEINTERNO = :MAISDEUMCONTROLEINTERNO,'
      '  RECALCULA_LUCRATIV_PRODUTO = :RECALCULA_LUCRATIV_PRODUTO,'
      '  USARMULTIPLOSVENDEDORESOS = :USARMULTIPLOSVENDEDORESOS,'
      '  COD_CONTAANTECIPACAOCR = :COD_CONTAANTECIPACAOCR,'
      '  CNPJ_CONTABILIDADE = :CNPJ_CONTABILIDADE,'
      '  IMPSTXMLPRODUTO = :IMPSTXMLPRODUTO,'
      '  FORMAFECHAMENTOOS = :FORMAFECHAMENTOOS'
      'where'
      '  COD_LOJA = :OLD_COD_LOJA')
    InsertSQL.Strings = (
      'insert into LOJA'
      
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
      
        '   USAGAVETA, TEXTOGARANTIA, DESC_TAXA_DESLOCA, VLR_TAXA, FONE_P' +
        'ROCON, '
      
        '   END_PROCON, WWW_PROCON, COD_CONFIGCHEQUE, TIPORECIBO, PAINEL_' +
        'DESC, TIPOVENDA, '
      
        '   PDVVLRUNIT, ORDEMLOCA_GUINDASTE, GERAFINANCEIRO, MODELOPEDVEN' +
        'DA, TEXTOORCAMENTO, '
      
        '   EXPORT_OS, VISUALNF, VISUALRS, MODELOORDEMFECH, REVELCUSTOPRO' +
        'DUTO, MSGESTOQUEMIN, '
      
        '   MSGLIMITCRED, CFOPINTERNO, CFOPEXTERNO, COD_CTAANTECIPCREDCLI' +
        ', COD_CTAANTECIPCREDFOR, '
      
        '   CFOPINTERNOCST, CFOPEXPERTOCST, NFEVERSASCHEMA, NFEPROHOMO, N' +
        'FELICENSA, '
      
        '   NFECERTIFICACAO, CONVERTUNIDVEND, CALCESTESTRUT, CONVERTUNIDF' +
        'ERRO, NFENTLINDESP, '
      
        '   NFITMAXDESP, ECFINDICEALIQSERV, INDCFOPINTERNO, INDCFOPEXTERN' +
        'O, DESATIVASITE, '
      
        '   DESATIVAFEED, ATIVAGRID, ATIVACONSULTARAP, DESCETIQUETA, CHEC' +
        'KEXPRESS, '
      
        '   COD_CFOPDEVFORA, GERACTAROUTROS, INFDIASVENCLOTE, RESERVFISCO' +
        'NF, NFIMPDADOSVEICULO, '
      
        '   NFIMPOBS, NFIMPNUMORD, PADMECDOCFIN, PROXDOCPADMEC, PESQINTEL' +
        'PROD, CONTROLPRODLISTA, '
      
        '   CFOPINTSERV, CFOPEXTSERV, LIBERACATALOGO, ABRECATALOGO, NUMRE' +
        'GISTROSSQL, '
      
        '   CONCTELCONTATO, INFOPROMISSORIA, ATIVAPROMISSORIA, DUPLICAPRO' +
        'MIS, COMPLEMENTARBLT, '
      
        '   JUROMULTABLT, ABREFICHATEC, RAZAOPROMISSORIA, ENDLOJAPROMISSO' +
        'RIA, TXTRESERVFISCONF, '
      
        '   MOSTRACUSTOPEDV, CFOPINTPC, CFOPEXTPC, CFOPINTSTPC, CFOPEXTST' +
        'PC, CFOPINTGARANTIA, '
      
        '   CFOPEXTGARANTIA, CFOPINTDEVOLUC, CFOPEXTDEVOLUC, CFOPINTDEVOL' +
        'UCST, CFOPEXTDEVOLUCST, '
      
        '   USAOBSITEMCOMPRA, CFOPMATCONSUMO, MODELOCOMPPEDC, IMPNOMEEQUI' +
        'PECOMPORDEM, '
      
        '   CFOPMATCONSUMOEXT, ATUALIZABANCO, HOSTFTP, USERNAMEFTP, PASSW' +
        'ORDFTP, '
      
        '   DIRDOWFTP, DIRUPFTP, HORAFTP, FECHARCOMPRANF, CFOPINTSIMPREME' +
        'SSA, CFOPEXTSIMPREMESSA, '
      
        '   CRIAARQFTP, RECEBEARQFTP, ATUALIZABANCOAUT, DATAFTP, CFOPFRET' +
        'EINT, CFOPFRETEEXT, '
      
        '   IMPEDIRSERVICOS, GERAFINANCDTSIS, COD_DEVNOTAPROPDENTRO, COD_' +
        'DEVNOTAPROPFORA, '
      
        '   CSTTRIB, CSTSUBST, LOGOEMPRESA, IECLASS2, IECONTRINT, PLANOCT' +
        'APROD, '
      
        '   MOSTRAESTOQUE, LOGINSUPORTE, SENHASUPORTE, CONTROLANCM, SERVN' +
        'FE, NFEVERSAO, '
      
        '   CTRLNUM, PUXAULTPRONOVO, PERSODESPADIC, FOCUITEMOS, MOVCAIXAC' +
        'ARTAO, '
      
        '   NAOATUALIZAESTOQUEPC, EMISSAOPROPDENTRO, EMISSAOPROPFORA, DIA' +
        'SVENC, '
      
        '   GERANFSE, TITULODUPLICATA, MODODEEMISSAONFE, BAIXAAUTOMATICAC' +
        'ARTAO, '
      
        '   VERIFDESCPRODUTO, ORDENAORDEM, USAPLACASADICIONAIS, FORCARCAR' +
        'TAO, TIPOORCAMENTO, '
      
        '   NFSEADMINISTRADORA, NFSE_LICENSA, INSERIRFATURA, CARACTERISTI' +
        'CA_PRODUTO01, '
      
        '   CARACTERISTICA_PRODUTO02, ATUALIZAESTOQUEPC, EXIBECLASSSERV, ' +
        'CAMINHOXML, '
      
        '   ALIQATAC, ALIQVAR, TIPOIMP_NFCE, EXIBVLRCOMPOS, IDCSC_NFCEPRO' +
        'D, CSC_NFCEPROD, '
      
        '   IDCSC_NFCEHOMO, CSC_NFCEHOMO, EMAIL_EMPRESA, SENHAEMAIL_EMPRE' +
        'SA, SERVIDOR_SMTP, '
      
        '   PORTA_EMAIL, TXTAUX_EMAIL, CAMINHODOCS, BLOQBTNFISCAL, CFOPIN' +
        'TOUTEMISSAOPROP, '
      
        '   CFOPEXTOUTEMISSAOPROP, USAR4CASASQTD, USARVENDEDOROSMEC, DESA' +
        'BCOPIAPRODUTOS, '
      
        '   MAISDEUMCONTROLEINTERNO, RECALCULA_LUCRATIV_PRODUTO, USARMULT' +
        'IPLOSVENDEDORESOS, '
      
        '   COD_CONTAANTECIPACAOCR, CNPJ_CONTABILIDADE, IMPSTXMLPRODUTO, ' +
        'FORMAFECHAMENTOOS)'
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
      
        '   :TEXTOGARANTIA, :DESC_TAXA_DESLOCA, :VLR_TAXA, :FONE_PROCON, ' +
        ':END_PROCON, '
      
        '   :WWW_PROCON, :COD_CONFIGCHEQUE, :TIPORECIBO, :PAINEL_DESC, :T' +
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
        'P, :ECFINDICEALIQSERV, '
      
        '   :INDCFOPINTERNO, :INDCFOPEXTERNO, :DESATIVASITE, :DESATIVAFEE' +
        'D, :ATIVAGRID, '
      
        '   :ATIVACONSULTARAP, :DESCETIQUETA, :CHECKEXPRESS, :COD_CFOPDEV' +
        'FORA, :GERACTAROUTROS, '
      
        '   :INFDIASVENCLOTE, :RESERVFISCONF, :NFIMPDADOSVEICULO, :NFIMPO' +
        'BS, :NFIMPNUMORD, '
      
        '   :PADMECDOCFIN, :PROXDOCPADMEC, :PESQINTELPROD, :CONTROLPRODLI' +
        'STA, :CFOPINTSERV, '
      
        '   :CFOPEXTSERV, :LIBERACATALOGO, :ABRECATALOGO, :NUMREGISTROSSQ' +
        'L, :CONCTELCONTATO, '
      
        '   :INFOPROMISSORIA, :ATIVAPROMISSORIA, :DUPLICAPROMIS, :COMPLEM' +
        'ENTARBLT, '
      
        '   :JUROMULTABLT, :ABREFICHATEC, :RAZAOPROMISSORIA, :ENDLOJAPROM' +
        'ISSORIA, '
      
        '   :TXTRESERVFISCONF, :MOSTRACUSTOPEDV, :CFOPINTPC, :CFOPEXTPC, ' +
        ':CFOPINTSTPC, '
      
        '   :CFOPEXTSTPC, :CFOPINTGARANTIA, :CFOPEXTGARANTIA, :CFOPINTDEV' +
        'OLUC, :CFOPEXTDEVOLUC, '
      
        '   :CFOPINTDEVOLUCST, :CFOPEXTDEVOLUCST, :USAOBSITEMCOMPRA, :CFO' +
        'PMATCONSUMO, '
      
        '   :MODELOCOMPPEDC, :IMPNOMEEQUIPECOMPORDEM, :CFOPMATCONSUMOEXT,' +
        ' :ATUALIZABANCO, '
      
        '   :HOSTFTP, :USERNAMEFTP, :PASSWORDFTP, :DIRDOWFTP, :DIRUPFTP, ' +
        ':HORAFTP, '
      
        '   :FECHARCOMPRANF, :CFOPINTSIMPREMESSA, :CFOPEXTSIMPREMESSA, :C' +
        'RIAARQFTP, '
      
        '   :RECEBEARQFTP, :ATUALIZABANCOAUT, :DATAFTP, :CFOPFRETEINT, :C' +
        'FOPFRETEEXT, '
      
        '   :IMPEDIRSERVICOS, :GERAFINANCDTSIS, :COD_DEVNOTAPROPDENTRO, :' +
        'COD_DEVNOTAPROPFORA, '
      
        '   :CSTTRIB, :CSTSUBST, :LOGOEMPRESA, :IECLASS2, :IECONTRINT, :P' +
        'LANOCTAPROD, '
      
        '   :MOSTRAESTOQUE, :LOGINSUPORTE, :SENHASUPORTE, :CONTROLANCM, :' +
        'SERVNFE, '
      
        '   :NFEVERSAO, :CTRLNUM, :PUXAULTPRONOVO, :PERSODESPADIC, :FOCUI' +
        'TEMOS, '
      
        '   :MOVCAIXACARTAO, :NAOATUALIZAESTOQUEPC, :EMISSAOPROPDENTRO, :' +
        'EMISSAOPROPFORA, '
      
        '   :DIASVENC, :GERANFSE, :TITULODUPLICATA, :MODODEEMISSAONFE, :B' +
        'AIXAAUTOMATICACARTAO, '
      
        '   :VERIFDESCPRODUTO, :ORDENAORDEM, :USAPLACASADICIONAIS, :FORCA' +
        'RCARTAO, '
      
        '   :TIPOORCAMENTO, :NFSEADMINISTRADORA, :NFSE_LICENSA, :INSERIRF' +
        'ATURA, '
      
        '   :CARACTERISTICA_PRODUTO01, :CARACTERISTICA_PRODUTO02, :ATUALI' +
        'ZAESTOQUEPC, '
      
        '   :EXIBECLASSSERV, :CAMINHOXML, :ALIQATAC, :ALIQVAR, :TIPOIMP_N' +
        'FCE, :EXIBVLRCOMPOS, '
      
        '   :IDCSC_NFCEPROD, :CSC_NFCEPROD, :IDCSC_NFCEHOMO, :CSC_NFCEHOM' +
        'O, :EMAIL_EMPRESA, '
      
        '   :SENHAEMAIL_EMPRESA, :SERVIDOR_SMTP, :PORTA_EMAIL, :TXTAUX_EM' +
        'AIL, :CAMINHODOCS, '
      
        '   :BLOQBTNFISCAL, :CFOPINTOUTEMISSAOPROP, :CFOPEXTOUTEMISSAOPRO' +
        'P, :USAR4CASASQTD, '
      
        '   :USARVENDEDOROSMEC, :DESABCOPIAPRODUTOS, :MAISDEUMCONTROLEINT' +
        'ERNO, :RECALCULA_LUCRATIV_PRODUTO, '
      
        '   :USARMULTIPLOSVENDEDORESOS, :COD_CONTAANTECIPACAOCR, :CNPJ_CO' +
        'NTABILIDADE, '
      '   :IMPSTXMLPRODUTO, :FORMAFECHAMENTOOS)')
    DeleteSQL.Strings = (
      'delete from LOJA'
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
      'select first 1  * from  ITENSETQPROD')
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
      'select first 1  * from  CONFIGDUP')
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
      'select  first 1 * from ITENSDUPPERSON')
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
      'where'
      '  COD_ITENSDUPPERSON = :OLD_COD_ITENSDUPPERSON')
    InsertSQL.Strings = (
      'insert into ITENSDUPPERSON'
      
        '  (COD_ITENSDUPPERSON, CAMPO, COLUNA, LINHA, FONTE, TAMANHO, ALI' +
        'NHAR, COD_DUPPERSON, '
      '   NOMEFONTE)'
      'values'
      
        '  (:COD_ITENSDUPPERSON, :CAMPO, :COLUNA, :LINHA, :FONTE, :TAMANH' +
        'O, :ALINHAR, '
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
      'select  first 1 * from CONFIGCHEQUE')
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
      'select  first 1 * from ITENSCONFIG_CHEQUE')
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
      '  COD_CONFIGCHEQUE = :COD_CONFIGCHEQUE,'
      '  TAMANHO_CAMPO = :TAMANHO_CAMPO'
      'where'
      '  COD_ITENSCONFIG_CHEQUE = :OLD_COD_ITENSCONFIG_CHEQUE')
    InsertSQL.Strings = (
      'insert into ITENSCONFIG_CHEQUE'
      
        '  (COD_ITENSCONFIG_CHEQUE, LINHA, COLUNA, NOME_FONTE, TAMANHO_FO' +
        'NTE, CAMPO, '
      '   COD_CONFIGCHEQUE, TAMANHO_CAMPO)'
      'values'
      
        '  (:COD_ITENSCONFIG_CHEQUE, :LINHA, :COLUNA, :NOME_FONTE, :TAMAN' +
        'HO_FONTE, '
      '   :CAMPO, :COD_CONFIGCHEQUE, :TAMANHO_CAMPO)')
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
    object calc: TIBStringField
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
    object TEmpresaALIQICMS: TIBBCDField
      FieldName = 'ALIQICMS'
      Precision = 4
      Size = 2
    end
    object TEmpresaINDUSTRIA: TIBStringField
      FieldName = 'INDUSTRIA'
      Origin = 'EMPRESA.INDUSTRIA'
      FixedChar = True
      Size = 1
    end
    object TEmpresaNCI: TIBStringField
      FieldName = 'NCI'
      Origin = 'EMPRESA.NCI'
      FixedChar = True
      Size = 1
    end
    object TEmpresaDTCONFATUAL: TDateField
      FieldName = 'DTCONFATUAL'
      Origin = 'EMPRESA.DTCONFATUAL'
    end
    object TEmpresaNAOCALCST: TIBStringField
      FieldName = 'NAOCALCST'
      Origin = 'EMPRESA.NAOCALCST'
      FixedChar = True
      Size = 1
    end
    object TEmpresaEMEXPORTA: TIBStringField
      FieldName = 'EMEXPORTA'
      Origin = 'EMPRESA.EMEXPORTA'
      FixedChar = True
      Size = 1
    end
    object TEmpresaCOD_EXPORT: TIntegerField
      FieldName = 'COD_EXPORT'
      Origin = 'EMPRESA.COD_EXPORT'
    end
    object TEmpresaPROXNUMSCAN: TIntegerField
      FieldName = 'PROXNUMSCAN'
      Origin = 'EMPRESA.PROXNUMSCAN'
    end
    object TEmpresaNFESERIESCAN: TIntegerField
      FieldName = 'NFESERIESCAN'
      Origin = 'EMPRESA.NFESERIESCAN'
    end
    object TEmpresaAPLICAPISCONFINSSAIDA: TIBStringField
      FieldName = 'APLICAPISCONFINSSAIDA'
      Origin = 'EMPRESA.APLICAPISCONFINSSAIDA'
      FixedChar = True
      Size = 1
    end
    object TEmpresaALIQUOTAPISCONFINS: TIBBCDField
      FieldName = 'ALIQUOTAPISCONFINS'
      Origin = 'EMPRESA.ALIQUOTAPISCONFINS'
      Precision = 4
      Size = 2
    end
    object TEmpresaTRIB_NFSE: TIBStringField
      FieldName = 'TRIB_NFSE'
      Origin = 'EMPRESA.TRIB_NFSE'
      Size = 40
    end
    object TEmpresaCOFINS: TIBBCDField
      FieldName = 'COFINS'
      Origin = 'EMPRESA.COFINS'
      Precision = 4
      Size = 2
    end
    object TEmpresaPIS: TIBBCDField
      FieldName = 'PIS'
      Origin = 'EMPRESA.PIS'
      Precision = 4
      Size = 2
    end
    object TEmpresaVLR_SERVICO: TIBBCDField
      FieldName = 'VLR_SERVICO'
      Origin = 'EMPRESA.VLR_SERVICO'
      Precision = 18
      Size = 2
    end
    object TEmpresaCRT: TSmallintField
      FieldName = 'CRT'
      Origin = 'EMPRESA.CRT'
    end
    object TEmpresaMOBILE: TSmallintField
      FieldName = 'MOBILE'
      Origin = 'EMPRESA.MOBILE'
    end
    object TEmpresaVALORTOTALTRIBUTA: TIBBCDField
      FieldName = 'VALORTOTALTRIBUTA'
      Origin = 'EMPRESA.VALORTOTALTRIBUTA'
      Precision = 18
      Size = 2
    end
    object TEmpresaNFSE_CODIGOCNAE: TIBStringField
      FieldName = 'NFSE_CODIGOCNAE'
      Origin = 'EMPRESA.NFSE_CODIGOCNAE'
      Size = 10
    end
    object TEmpresaNFSE_DESCRICAOCNAE: TIBStringField
      FieldName = 'NFSE_DESCRICAOCNAE'
      Origin = 'EMPRESA.NFSE_DESCRICAOCNAE'
      Size = 100
    end
    object TEmpresaNFSE_CODTRIBUTACAOMUNICIPAL: TIBStringField
      FieldName = 'NFSE_CODTRIBUTACAOMUNICIPAL'
      Origin = 'EMPRESA.NFSE_CODTRIBUTACAOMUNICIPAL'
      Size = 15
    end
    object TEmpresaVALORTOTALTRIBUTANFSE: TIBBCDField
      FieldName = 'VALORTOTALTRIBUTANFSE'
      Origin = 'EMPRESA.VALORTOTALTRIBUTANFSE'
      Precision = 18
      Size = 2
    end
    object TEmpresaVALOR_MAX_NFCE: TIBBCDField
      FieldName = 'VALOR_MAX_NFCE'
      Origin = 'EMPRESA.VALOR_MAX_NFCE'
      Precision = 18
      Size = 2
    end
    object TEmpresaNFCESERIE: TIntegerField
      FieldName = 'NFCESERIE'
      Origin = 'EMPRESA.NFCESERIE'
    end
    object TEmpresaNFSE_REGIMEMUNICIPAL: TIBStringField
      FieldName = 'NFSE_REGIMEMUNICIPAL'
      Origin = 'EMPRESA.NFSE_REGIMEMUNICIPAL'
      Size = 60
    end
    object TEmpresaFONE: TIBStringField
      FieldName = 'FONE'
      Origin = 'EMPRESA.FONE'
      Size = 50
    end
    object TEmpresaTEL0800: TIBStringField
      FieldName = 'TEL0800'
      Origin = 'EMPRESA.TEL0800'
      Size = 50
    end
    object TEmpresaALIQ_RETEM_PIS: TIBBCDField
      FieldName = 'ALIQ_RETEM_PIS'
      Origin = 'EMPRESA.ALIQ_RETEM_PIS'
      Precision = 18
      Size = 2
    end
    object TEmpresaALIQ_RETEM_COFINS: TIBBCDField
      FieldName = 'ALIQ_RETEM_COFINS'
      Origin = 'EMPRESA.ALIQ_RETEM_COFINS'
      Precision = 18
      Size = 2
    end
    object TEmpresaALIQ_RETEM_IRRF: TIBBCDField
      FieldName = 'ALIQ_RETEM_IRRF'
      Origin = 'EMPRESA.ALIQ_RETEM_IRRF'
      Precision = 18
      Size = 2
    end
    object TEmpresaALIQ_RETEM_CSLL: TIBBCDField
      FieldName = 'ALIQ_RETEM_CSLL'
      Origin = 'EMPRESA.ALIQ_RETEM_CSLL'
      Precision = 18
      Size = 2
    end
    object TEmpresaRETEM_IMPOSTOS: TIBStringField
      FieldName = 'RETEM_IMPOSTOS'
      Origin = 'EMPRESA.RETEM_IMPOSTOS'
      FixedChar = True
      Size = 1
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
      '  NFESERIE,'
      '  ALIQICMS,'
      '  INDUSTRIA,'
      '  NCI,'
      '  DTCONFATUAL,'
      '  NAOCALCST,'
      '  EMEXPORTA,'
      '  PROXNUMSCAN,'
      '  NFESERIESCAN,'
      '  COD_EXPORT,'
      '  APLICAPISCONFINSSAIDA,'
      '  ALIQUOTAPISCONFINS,'
      '  TRIB_NFSE,'
      '  COFINS,'
      '  PIS,'
      '  VLR_SERVICO,'
      '  CRT,'
      '  MOBILE,'
      '  VALORTOTALTRIBUTA,'
      '  NFSE_CODTRIBUTACAOMUNICIPAL,'
      '  NFSE_DESCRICAOCNAE,'
      '  NFSE_CODIGOCNAE,'
      '  NFSE_REGIMEMUNICIPAL,'
      '  VALORTOTALTRIBUTANFSE,'
      '  VALOR_MAX_NFCE,'
      '  NFCESERIE,'
      '  ALIQ_RETEM_PIS,'
      '  ALIQ_RETEM_COFINS,'
      '  ALIQ_RETEM_IRRF,'
      '  ALIQ_RETEM_CSLL,'
      '  RETEM_IMPOSTOS'
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
      '  NFESERIE = :NFESERIE,'
      '  ALIQICMS = :ALIQICMS,'
      '  INDUSTRIA = :INDUSTRIA,'
      '  NCI = :NCI,'
      '  DTCONFATUAL = :DTCONFATUAL,'
      '  NAOCALCST = :NAOCALCST,'
      '  EMEXPORTA = :EMEXPORTA,'
      '  PROXNUMSCAN = :PROXNUMSCAN,'
      '  NFESERIESCAN = :NFESERIESCAN,'
      '  COD_EXPORT = :COD_EXPORT,'
      '  APLICAPISCONFINSSAIDA = :APLICAPISCONFINSSAIDA,'
      '  ALIQUOTAPISCONFINS = :ALIQUOTAPISCONFINS,'
      '  TRIB_NFSE = :TRIB_NFSE,'
      '  COFINS = :COFINS,'
      '  PIS = :PIS,'
      '  VLR_SERVICO = :VLR_SERVICO,'
      '  CRT = :CRT,'
      '  MOBILE = :MOBILE,'
      '  VALORTOTALTRIBUTA = :VALORTOTALTRIBUTA,'
      '  NFSE_CODTRIBUTACAOMUNICIPAL = :NFSE_CODTRIBUTACAOMUNICIPAL,'
      '  NFSE_DESCRICAOCNAE = :NFSE_DESCRICAOCNAE,'
      '  NFSE_CODIGOCNAE = :NFSE_CODIGOCNAE,'
      '  NFSE_REGIMEMUNICIPAL = :NFSE_REGIMEMUNICIPAL,'
      '  VALORTOTALTRIBUTANFSE = :VALORTOTALTRIBUTANFSE,'
      '  VALOR_MAX_NFCE = :VALOR_MAX_NFCE,'
      '  NFCESERIE = :NFCESERIE,'
      '  ALIQ_RETEM_PIS = :ALIQ_RETEM_PIS,'
      '  ALIQ_RETEM_COFINS = :ALIQ_RETEM_COFINS,'
      '  ALIQ_RETEM_IRRF = :ALIQ_RETEM_IRRF,'
      '  ALIQ_RETEM_CSLL = :ALIQ_RETEM_CSLL,'
      '  RETEM_IMPOSTOS = :RETEM_IMPOSTOS'
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
        'ESERIE, '
      
        '   ALIQICMS, INDUSTRIA, NCI, DTCONFATUAL, NAOCALCST, EMEXPORTA, ' +
        'PROXNUMSCAN, '
      
        '   NFESERIESCAN, COD_EXPORT, APLICAPISCONFINSSAIDA, ALIQUOTAPISC' +
        'ONFINS, '
      
        '   TRIB_NFSE, COFINS, PIS, VLR_SERVICO, CRT, MOBILE, VALORTOTALT' +
        'RIBUTA, '
      
        '   NFSE_CODTRIBUTACAOMUNICIPAL, NFSE_DESCRICAOCNAE, NFSE_CODIGOC' +
        'NAE, NFSE_REGIMEMUNICIPAL, '
      
        '   VALORTOTALTRIBUTANFSE, VALOR_MAX_NFCE, NFCESERIE, ALIQ_RETEM_' +
        'PIS, ALIQ_RETEM_COFINS, '
      '   ALIQ_RETEM_IRRF, ALIQ_RETEM_CSLL, RETEM_IMPOSTOS)'
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
      
        '   :CONTICMS, :TIPOEMPRESANF, :NFEPROXLOTE, :NFESERIE, :ALIQICMS' +
        ', :INDUSTRIA, '
      
        '   :NCI, :DTCONFATUAL, :NAOCALCST, :EMEXPORTA, :PROXNUMSCAN, :NF' +
        'ESERIESCAN, '
      
        '   :COD_EXPORT, :APLICAPISCONFINSSAIDA, :ALIQUOTAPISCONFINS, :TR' +
        'IB_NFSE, '
      
        '   :COFINS, :PIS, :VLR_SERVICO, :CRT, :MOBILE, :VALORTOTALTRIBUT' +
        'A, :NFSE_CODTRIBUTACAOMUNICIPAL, '
      
        '   :NFSE_DESCRICAOCNAE, :NFSE_CODIGOCNAE, :NFSE_REGIMEMUNICIPAL,' +
        ' :VALORTOTALTRIBUTANFSE, '
      
        '   :VALOR_MAX_NFCE, :NFCESERIE, :ALIQ_RETEM_PIS, :ALIQ_RETEM_COF' +
        'INS, :ALIQ_RETEM_IRRF, '
      '   :ALIQ_RETEM_CSLL, :RETEM_IMPOSTOS)')
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
      'select  first 1 * from DOCFISCFATURA')
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
  object TPeriodoFiscal: TIBQuery
    Database = DataBase
    Transaction = Transaction
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select  first 1 * from PERIODOFISCAL')
    UpdateObject = UPeriodoFiscal
    GeneratorField.Field = 'COD_PERIODOFISCAL'
    GeneratorField.Generator = 'GEN_PERIODOFISCAL_ID'
    Left = 749
    Top = 224
    object TPeriodoFiscalCOD_PERIODOFISCAL: TIntegerField
      FieldName = 'COD_PERIODOFISCAL'
      Origin = 'PERIODOFISCAL.COD_PERIODOFISCAL'
      Required = True
    end
    object TPeriodoFiscalDESCRICAO: TIBStringField
      FieldName = 'DESCRICAO'
      Origin = 'PERIODOFISCAL.DESCRICAO'
      Size = 40
    end
    object TPeriodoFiscalDTINICIAL: TDateField
      FieldName = 'DTINICIAL'
      Origin = 'PERIODOFISCAL.DTINICIAL'
    end
    object TPeriodoFiscalDTFINAL: TDateField
      FieldName = 'DTFINAL'
      Origin = 'PERIODOFISCAL.DTFINAL'
    end
    object TPeriodoFiscalFECHADO: TIBStringField
      FieldName = 'FECHADO'
      Origin = 'PERIODOFISCAL.FECHADO'
      FixedChar = True
      Size = 1
    end
  end
  object UPeriodoFiscal: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  COD_PERIODOFISCAL,'
      '  DESCRICAO,'
      '  DTINICIAL,'
      '  DTFINAL,'
      '  FECHADO'
      'from PERIODOFISCAL '
      'where'
      '  COD_PERIODOFISCAL = :COD_PERIODOFISCAL')
    ModifySQL.Strings = (
      'update PERIODOFISCAL'
      'set'
      '  COD_PERIODOFISCAL = :COD_PERIODOFISCAL,'
      '  DESCRICAO = :DESCRICAO,'
      '  DTINICIAL = :DTINICIAL,'
      '  DTFINAL = :DTFINAL,'
      '  FECHADO = :FECHADO'
      'where'
      '  COD_PERIODOFISCAL = :OLD_COD_PERIODOFISCAL')
    InsertSQL.Strings = (
      'insert into PERIODOFISCAL'
      '  (COD_PERIODOFISCAL, DESCRICAO, DTINICIAL, DTFINAL, FECHADO)'
      'values'
      
        '  (:COD_PERIODOFISCAL, :DESCRICAO, :DTINICIAL, :DTFINAL, :FECHAD' +
        'O)')
    DeleteSQL.Strings = (
      'delete from PERIODOFISCAL'
      'where'
      '  COD_PERIODOFISCAL = :OLD_COD_PERIODOFISCAL')
    Left = 749
    Top = 272
  end
  object DPeriodoFiscal: TDataSource
    DataSet = TPeriodoFiscal
    Left = 750
    Top = 320
  end
  object DsNovidades: TDataSource
    DataSet = TNovidades
    Left = 664
    Top = 376
  end
  object TNovidades: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    Left = 824
    Top = 368
    Data = {
      8E0000009619E0BD0100000018000000040000000000030000008E0009734E6F
      7469636961730100490000000100055749445448020002006400057355726C73
      010049000000010005574944544802000200C8000B735469706F46696C74726F
      0100490000000100055749445448020002000A00077346696C74726F01004900
      000001000557494454480200020014000000}
    object TNovidadessNoticias: TStringField
      FieldName = 'sNoticias'
      Size = 100
    end
    object TNovidadessUrls: TStringField
      FieldName = 'sUrls'
      Size = 200
    end
    object TNovidadessTipoFiltro: TStringField
      FieldName = 'sTipoFiltro'
      Size = 10
    end
    object TNovidadessFiltro: TStringField
      FieldName = 'sFiltro'
    end
  end
  object DSLote: TDataSource
    DataSet = TLote
    Left = 144
    Top = 344
  end
  object TLote: TIBQuery
    Tag = 5
    Database = DataBase
    Transaction = Transaction
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from LOTE')
    UpdateObject = ULote
    Left = 224
    Top = 344
    object TLoteCOD_LOTE: TIntegerField
      FieldName = 'COD_LOTE'
      Origin = 'LOTE.COD_LOTE'
    end
    object TLoteDTABERTURA: TDateField
      FieldName = 'DTABERTURA'
      Origin = 'LOTE.DTABERTURA'
    end
    object TLoteDTFECHAMENTO: TDateField
      FieldName = 'DTFECHAMENTO'
      Origin = 'LOTE.DTFECHAMENTO'
    end
    object TLoteDESCRICAO: TIBStringField
      FieldName = 'DESCRICAO'
      Origin = 'LOTE.DESCRICAO'
      Size = 40
    end
    object TLoteOBSERVACAO: TMemoField
      FieldName = 'OBSERVACAO'
      Origin = 'LOTE.OBSERVACAO'
      BlobType = ftMemo
      Size = 8
    end
    object TLoteNUMERO: TIntegerField
      FieldName = 'NUMERO'
      Origin = 'LOTE.NUMERO'
    end
    object TLoteSTATUS: TIBStringField
      FieldName = 'STATUS'
      Origin = 'LOTE.STATUS'
      FixedChar = True
      Size = 1
    end
  end
  object ULote: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  COD_LOTE,'
      '  DTABERTURA,'
      '  DTFECHAMENTO,'
      '  DESCRICAO,'
      '  OBSERVACAO,'
      '  NUMERO,'
      '  STATUS'
      'from LOTE '
      'where'
      '  COD_LOTE = :COD_LOTE')
    ModifySQL.Strings = (
      'update LOTE'
      'set'
      '  COD_LOTE = :COD_LOTE,'
      '  DTABERTURA = :DTABERTURA,'
      '  DTFECHAMENTO = :DTFECHAMENTO,'
      '  DESCRICAO = :DESCRICAO,'
      '  OBSERVACAO = :OBSERVACAO,'
      '  NUMERO = :NUMERO,'
      '  STATUS = :STATUS'
      'where'
      '  COD_LOTE = :OLD_COD_LOTE')
    InsertSQL.Strings = (
      'insert into LOTE'
      '  (COD_LOTE, DTABERTURA, DTFECHAMENTO, DESCRICAO, OBSERVACAO, '
      'NUMERO, STATUS)'
      'values'
      
        '  (:COD_LOTE, :DTABERTURA, :DTFECHAMENTO, :DESCRICAO, :OBSERVACA' +
        'O, '
      ':NUMERO, '
      '   :STATUS)')
    DeleteSQL.Strings = (
      'delete from LOTE'
      'where'
      '  COD_LOTE = :OLD_COD_LOTE')
    Left = 184
    Top = 344
  end
  object TCCE: TIBQuery
    Database = DataBase
    Transaction = Transaction
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select  first 1 * from CCE')
    UpdateObject = UCCE
    GeneratorField.Field = 'COD_CCE'
    GeneratorField.Generator = 'GEN_CCE_ID'
    Left = 813
    Top = 224
    object TCCECOD_CCE: TIntegerField
      FieldName = 'COD_CCE'
      Origin = 'CCE.COD_CCE'
      Required = True
    end
    object TCCECOD_GERADOR: TIntegerField
      FieldName = 'COD_GERADOR'
      Origin = 'CCE.COD_GERADOR'
    end
    object TCCETIPOGERADOR: TIBStringField
      FieldName = 'TIPOGERADOR'
      Origin = 'CCE.TIPOGERADOR'
      Size = 15
    end
    object TCCEDATA: TDateField
      FieldName = 'DATA'
      Origin = 'CCE.DATA'
    end
    object TCCETEXTO: TMemoField
      FieldName = 'TEXTO'
      Origin = 'CCE.TEXTO'
      BlobType = ftMemo
      Size = 8
    end
    object TCCEXML: TMemoField
      FieldName = 'XML'
      Origin = 'CCE.XML'
      BlobType = ftMemo
      Size = 8
    end
    object TCCEXMLRESPOSTA: TMemoField
      FieldName = 'XMLRESPOSTA'
      Origin = 'CCE.XMLRESPOSTA'
      BlobType = ftMemo
      Size = 8
    end
    object TCCEPROTOCOLONUMERO: TIBStringField
      FieldName = 'PROTOCOLONUMERO'
      Origin = 'CCE.PROTOCOLONUMERO'
      Size = 30
    end
    object TCCENSEQUENCIA: TIntegerField
      FieldName = 'NSEQUENCIA'
      Origin = 'CCE.NSEQUENCIA'
    end
    object TCCEPROTOCOLODATA: TIBStringField
      FieldName = 'PROTOCOLODATA'
      Origin = 'CCE.PROTOCOLODATA'
      Size = 30
    end
  end
  object UCCE: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  COD_CCE,'
      '  COD_GERADOR,'
      '  TIPOGERADOR,'
      '  DATA,'
      '  TEXTO,'
      '  XML,'
      '  XMLRESPOSTA,'
      '  PROTOCOLONUMERO,'
      '  NSEQUENCIA,'
      '  PROTOCOLODATA'
      'from CCE '
      'where'
      '  COD_CCE = :COD_CCE')
    ModifySQL.Strings = (
      'update CCE'
      'set'
      '  COD_CCE = :COD_CCE,'
      '  COD_GERADOR = :COD_GERADOR,'
      '  TIPOGERADOR = :TIPOGERADOR,'
      '  DATA = :DATA,'
      '  TEXTO = :TEXTO,'
      '  XML = :XML,'
      '  XMLRESPOSTA = :XMLRESPOSTA,'
      '  PROTOCOLONUMERO = :PROTOCOLONUMERO,'
      '  NSEQUENCIA = :NSEQUENCIA,'
      '  PROTOCOLODATA = :PROTOCOLODATA'
      'where'
      '  COD_CCE = :OLD_COD_CCE')
    InsertSQL.Strings = (
      'insert into CCE'
      
        '  (COD_CCE, COD_GERADOR, TIPOGERADOR, DATA, TEXTO, XML, XMLRESPO' +
        'STA, PROTOCOLONUMERO, '
      '   NSEQUENCIA, PROTOCOLODATA)'
      'values'
      
        '  (:COD_CCE, :COD_GERADOR, :TIPOGERADOR, :DATA, :TEXTO, :XML, :X' +
        'MLRESPOSTA, '
      '   :PROTOCOLONUMERO, :NSEQUENCIA, :PROTOCOLODATA)')
    DeleteSQL.Strings = (
      'delete from CCE'
      'where'
      '  COD_CCE = :OLD_COD_CCE')
    Left = 813
    Top = 272
  end
  object DSCCE: TDataSource
    DataSet = TCCE
    Left = 814
    Top = 320
  end
  object DSConsulta: TDataSource
    DataSet = cdsPessoa
    Left = 16
    Top = 512
  end
  object DSPessoa: TDataSource
    DataSet = TEmpresa
    Left = 16
    Top = 576
  end
  object TAtualizar: TIBQuery
    Tag = 5
    Database = DataBase
    Transaction = Transaction
    BufferChunks = 1000
    CachedUpdates = False
    Left = 208
    Top = 584
  end
  object cdsAtualizaBanco: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 88
    Top = 504
  end
  object TConsulta: TIBQuery
    Tag = 5
    Database = DataBase
    Transaction = Transaction
    BufferChunks = 1000
    CachedUpdates = False
    Left = 208
    Top = 680
  end
  object TConsultar: TIBQuery
    Tag = 5
    Database = DataBase
    Transaction = Transaction
    BufferChunks = 1000
    CachedUpdates = False
    Left = 208
    Top = 536
  end
  object QTabela: TIBQuery
    Tag = 5
    Database = DataBase
    Transaction = Transaction
    BufferChunks = 1000
    CachedUpdates = False
    Left = 272
    Top = 536
  end
  object QConsulta: TIBQuery
    Tag = 5
    Database = DataBase
    Transaction = Transaction
    BufferChunks = 1000
    CachedUpdates = False
    Left = 320
    Top = 536
  end
  object QConsulta1: TIBQuery
    Tag = 5
    Database = DataBase
    Transaction = Transaction
    BufferChunks = 1000
    CachedUpdates = False
    Left = 376
    Top = 536
  end
  object QConsulta2: TIBQuery
    Tag = 5
    Database = DataBase
    Transaction = Transaction
    BufferChunks = 1000
    CachedUpdates = False
    Left = 432
    Top = 536
  end
  object cdsCst: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    Left = 272
    Top = 592
    Data = {
      140100009619E0BD010000001800000009000000000003000000140107434F44
      5F43535404000100000000000C434F445F5349545F5452494201004900000001
      00055749445448020002000A000944455343524943414F010049000000010005
      574944544802000200640009494E444943454543460100490000000100055749
      4454480200020002000649434D534F5001004900000001000557494454480200
      02000500064953454E5441010049000000010005574944544802000200010007
      5245445543414F01004900000001000557494454480200020001000C53554253
      544954554943414F01004900000001000557494454480200020001000556454E
      444101004900000001000557494454480200020001000000}
    object cdsCstCOD_CST: TIntegerField
      FieldName = 'COD_CST'
    end
    object cdsCstCOD_SIT_TRIB: TStringField
      FieldName = 'COD_SIT_TRIB'
      Size = 10
    end
    object cdsCstDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 100
    end
    object cdsCstINDICEECF: TStringField
      FieldName = 'INDICEECF'
      Size = 2
    end
    object cdsCstICMSOP: TStringField
      FieldName = 'ICMSOP'
      Size = 5
    end
    object cdsCstISENTA: TStringField
      FieldName = 'ISENTA'
      Size = 1
    end
    object cdsCstREDUCAO: TStringField
      FieldName = 'REDUCAO'
      Size = 1
    end
    object cdsCstSUBSTITUICAO: TStringField
      FieldName = 'SUBSTITUICAO'
      Size = 1
    end
    object cdsCstVENDA: TStringField
      FieldName = 'VENDA'
      Size = 1
    end
  end
  object cdsUnidade: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    Left = 272
    Top = 640
    Data = {
      8A0000009619E0BD0100000018000000040000000000030000008A000B434F44
      5F554E4944414445040001000000000009444553435F554E4944010049000000
      01000557494454480200020019000A5349474C415F554E494401004900000001
      000557494454480200020003000A41525245444F4E4441520100490000000100
      0557494454480200020001000000}
    object cdsUnidadeCOD_UNIDADE: TIntegerField
      FieldName = 'COD_UNIDADE'
    end
    object cdsUnidadeDESC_UNID: TStringField
      FieldName = 'DESC_UNID'
      Size = 25
    end
    object cdsUnidadeSIGLA_UNID: TStringField
      FieldName = 'SIGLA_UNID'
      Size = 3
    end
    object cdsUnidadeARREDONDAR: TStringField
      FieldName = 'ARREDONDAR'
      Size = 1
    end
  end
  object cdsSubGrupo: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    Left = 344
    Top = 640
    Data = {
      8A0000009619E0BD0100000018000000040000000000030000008A0010434F44
      5F535542475255504F50524F4404000100000000000B434F445F494E5445524E
      4F0100490000000100055749445448020002000A000944455343524943414F01
      00490000000100055749445448020002006400045449504F0100490000000100
      0557494454480200020001000000}
    object cdsSubGrupoCOD_SUBGRUPOPROD: TIntegerField
      FieldName = 'COD_SUBGRUPOPROD'
    end
    object cdsSubGrupoCOD_INTERNO: TStringField
      FieldName = 'COD_INTERNO'
      Size = 10
    end
    object cdsSubGrupoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 100
    end
    object cdsSubGrupoTIPO: TStringField
      FieldName = 'TIPO'
      Size = 1
    end
  end
  object cdsGrupo: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    Left = 344
    Top = 592
    Data = {
      870000009619E0BD01000000180000000400000000000300000087000D434F44
      5F475255504F50524F4404000100000000000944455343524943414F01004900
      000001000557494454480200020064000B434F445F494E5445524E4F01004900
      00000100055749445448020002000A00045449504F0100490000000100055749
      4454480200020001000000}
    object cdsGrupoCOD_GRUPOPROD: TIntegerField
      FieldName = 'COD_GRUPOPROD'
    end
    object cdsGrupoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 100
    end
    object cdsGrupoCOD_INTERNO: TStringField
      FieldName = 'COD_INTERNO'
      Size = 10
    end
    object cdsGrupoTIPO: TStringField
      FieldName = 'TIPO'
      Size = 1
    end
  end
  object cdsPessoa: TClientDataSet
    Tag = 5
    Active = True
    Aggregates = <>
    Params = <>
    Left = 16
    Top = 624
    Data = {
      D30100009619E0BD010000001800000012000000000003000000D3010A434F44
      5F504553534F410400010000000000044E4F4D45010049000000010005574944
      544802000200640008454E44455245434F010049000000010005574944544802
      00020064000642414952524F0100490000000100055749445448020002002800
      0A434F445F434944414445040001000000000003434550010049000000010005
      5749445448020002000A0007435046434E504A01004900000001000557494454
      4802000200140008444154415F494E4904000600000000000644544E41534304
      000600000000000A434F445F52454749414F04000100000000000B434F445F4E
      41545552414C04000100000000000654454C52454C0100490000000100055749
      445448020002003C0009444941414E4956455202000100000000000B50524F58
      494D494441444501004900000001000557494454480200020028000A564C5243
      52454449544F080004000000010007535542545950450200490006004D6F6E65
      790012434F445F5452414E53504F525441444F5241040001000000000009454E
      444E554D45524F0100490000000100055749445448020002000A000554454C30
      310100490000000100055749445448020002003C000000}
    object cdsPessoaCOD_PESSOA: TIntegerField
      FieldName = 'COD_PESSOA'
    end
    object cdsPessoaNOME: TStringField
      FieldName = 'NOME'
      Size = 100
    end
    object cdsPessoaENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 100
    end
    object cdsPessoaBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 40
    end
    object cdsPessoaCOD_CIDADE: TIntegerField
      FieldName = 'COD_CIDADE'
    end
    object cdsPessoaCEP: TStringField
      FieldName = 'CEP'
      Size = 10
    end
    object cdsPessoaCPFCNPJ: TStringField
      FieldName = 'CPFCNPJ'
    end
    object cdsPessoaDATA_INI: TDateField
      FieldName = 'DATA_INI'
    end
    object cdsPessoaDTNASC: TDateField
      FieldName = 'DTNASC'
    end
    object cdsPessoaCOD_REGIAO: TIntegerField
      FieldName = 'COD_REGIAO'
    end
    object cdsPessoaCOD_NATURAL: TIntegerField
      FieldName = 'COD_NATURAL'
    end
    object cdsPessoaTELREL: TStringField
      FieldName = 'TELREL'
      Size = 60
    end
    object cdsPessoaDIAANIVER: TSmallintField
      FieldName = 'DIAANIVER'
    end
    object cdsPessoaPROXIMIDADE: TStringField
      FieldName = 'PROXIMIDADE'
      Size = 40
    end
    object cdsPessoaVLRCREDITO: TCurrencyField
      FieldName = 'VLRCREDITO'
    end
    object cdsPessoaCOD_TRANSPORTADORA: TIntegerField
      FieldName = 'COD_TRANSPORTADORA'
    end
    object cdsPessoaENDNUMERO: TStringField
      FieldName = 'ENDNUMERO'
      Size = 10
    end
    object cdsPessoaTEL01: TStringField
      FieldName = 'TEL01'
      Size = 60
    end
  end
  object cdsProduto: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    Left = 272
    Top = 688
    Data = {
      190100009619E0BD01000000180000000A00000000000300000019010B434F44
      5F50524F4455544F04000100000000000B434F445F494E5445524E4F01004900
      000001000557494454480200020005000944455343524943414F010049000000
      01000557494454480200020064000941504C49434143414F0100490000000100
      05574944544802000200640010434F445F535542475255504F50524F44040001
      00000000000D434F445F475255504F50524F44040001000000000007434F445F
      435354040001000000000008434F445F4C4F4A4104000100000000000C535542
      475255504F50524F440100490000000100055749445448020002006400094752
      55504F50524F4401004900000001000557494454480200020064000000}
    object cdsProdutoCOD_PRODUTO: TIntegerField
      FieldName = 'COD_PRODUTO'
    end
    object cdsProdutoCOD_INTERNO: TStringField
      FieldName = 'COD_INTERNO'
      Size = 5
    end
    object cdsProdutoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 100
    end
    object cdsProdutoAPLICACAO: TStringField
      FieldName = 'APLICACAO'
      Size = 100
    end
    object cdsProdutoCOD_SUBGRUPOPROD: TIntegerField
      FieldName = 'COD_SUBGRUPOPROD'
    end
    object cdsProdutoCOD_GRUPOPROD: TIntegerField
      FieldName = 'COD_GRUPOPROD'
    end
    object cdsProdutoCOD_CST: TIntegerField
      FieldName = 'COD_CST'
    end
    object cdsProdutoCOD_LOJA: TIntegerField
      FieldName = 'COD_LOJA'
    end
    object cdsProdutoSUBGRUPOPROD: TStringField
      FieldName = 'SUBGRUPOPROD'
      Size = 100
    end
    object cdsProdutoGRUPOPROD: TStringField
      FieldName = 'GRUPOPROD'
      Size = 100
    end
  end
  object cdsPessoaF: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    Left = 80
    Top = 624
    Data = {
      C90000009619E0BD010000001800000007000000000003000000C9000B434F44
      5F504553534F414604000100000000000A434F445F504553534F410400010000
      00000002524701004900000001000557494454480200020014000A444154415F
      455850454404000600000000000B4F5247414F5F455850454401004900000001
      00055749445448020002000A000D494E53435F4553545F414752490100490000
      00010005574944544802000200190007435046434E504A010049000000010005
      57494454480200020014000000}
    object cdsPessoaFCOD_PESSOAF: TIntegerField
      FieldName = 'COD_PESSOAF'
    end
    object cdsPessoaFCOD_PESSOA: TIntegerField
      FieldName = 'COD_PESSOA'
    end
    object cdsPessoaFRG: TStringField
      FieldName = 'RG'
    end
    object cdsPessoaFDATA_EXPED: TDateField
      FieldName = 'DATA_EXPED'
    end
    object cdsPessoaFORGAO_EXPED: TStringField
      FieldName = 'ORGAO_EXPED'
      Size = 10
    end
    object cdsPessoaFINSC_EST_AGRI: TStringField
      FieldName = 'INSC_EST_AGRI'
      Size = 25
    end
    object cdsPessoaFCPFCNPJ: TStringField
      FieldName = 'CPFCNPJ'
    end
  end
  object cdsPessoaJ: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    Left = 80
    Top = 672
    Data = {
      B80000009619E0BD010000001800000006000000000003000000B8000B434F44
      5F504553534F414A04000100000000000A434F445F504553534F410400010000
      00000008494E53435F4553540100490000000100055749445448020002001400
      0C52415A414F5F534F4349414C01004900000001000557494454480200020064
      0008494E53435F4D554E01004900000001000557494454480200020014000743
      5046434E504A01004900000001000557494454480200020014000000}
    object cdsPessoaJCOD_PESSOAJ: TIntegerField
      FieldName = 'COD_PESSOAJ'
    end
    object cdsPessoaJCOD_PESSOA: TIntegerField
      FieldName = 'COD_PESSOA'
    end
    object cdsPessoaJINSC_EST: TStringField
      FieldName = 'INSC_EST'
    end
    object cdsPessoaJRAZAO_SOCIAL: TStringField
      FieldName = 'RAZAO_SOCIAL'
      Size = 100
    end
    object cdsPessoaJINSC_MUN: TStringField
      FieldName = 'INSC_MUN'
    end
    object cdsPessoaJCPFCNPJ: TStringField
      FieldName = 'CPFCNPJ'
    end
  end
  object cdsTelefone: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    Left = 144
    Top = 624
    Data = {
      B30000009619E0BD010000001800000006000000000003000000B3000C434F44
      5F54454C45464F4E4504000100000000000A434F445F504553534F4104000100
      000000000944455343524943414F010049000000010005574944544802000200
      640007434F4E5441544F0100490000000100055749445448020002001E00064E
      554D45524F010049000000010005574944544802000200190007435046434E50
      4A01004900000001000557494454480200020014000000}
    object cdsTelefoneCOD_TELEFONE: TIntegerField
      FieldName = 'COD_TELEFONE'
    end
    object cdsTelefoneCOD_PESSOA: TIntegerField
      FieldName = 'COD_PESSOA'
    end
    object cdsTelefoneDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 100
    end
    object cdsTelefoneCONTATO: TStringField
      FieldName = 'CONTATO'
      Size = 30
    end
    object cdsTelefoneNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 25
    end
    object cdsTelefoneCPFCNPJ: TStringField
      FieldName = 'CPFCNPJ'
    end
  end
  object cdsEmail: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    Left = 144
    Top = 672
    Data = {
      930000009619E0BD010000001800000005000000000003000000930009434F44
      5F454D41494C04000100000000000A434F445F504553534F4104000100000000
      000944455343524943414F010049000000010005574944544802000200640005
      454D41494C010049000000010005574944544802000200640007435046434E50
      4A01004900000001000557494454480200020014000000}
    object cdsEmailCOD_EMAIL: TIntegerField
      FieldName = 'COD_EMAIL'
    end
    object cdsEmailCOD_PESSOA: TIntegerField
      FieldName = 'COD_PESSOA'
    end
    object cdsEmailDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 100
    end
    object cdsEmailEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 100
    end
    object cdsEmailCPFCNPJ: TStringField
      FieldName = 'CPFCNPJ'
    end
  end
  object TSecundario: TIBQuery
    Tag = 5
    Database = DataBase
    Transaction = Transaction
    BufferChunks = 1000
    CachedUpdates = False
    Left = 208
    Top = 632
  end
  object cdsSubProduto: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    Left = 344
    Top = 688
    Data = {
      260200009619E0BD01000000180000001300000000000300000026020E434F44
      5F53554250524F4455544F04000100000000000944455343524943414F010049
      000000010005574944544802000200640008434F444241525241010049000000
      0100055749445448020002001E000B434F4450524F4446414252010049000000
      01000557494454480200020019000A464142524943414E544501004900000001
      00055749445448020002003C00054D4152434101004900000001000557494454
      48020002003C000B434F445F50524F4455544F04000100000000000B434F445F
      494E5445524E4F0100490000000100055749445448020002000A000E434F445F
      554E4944434F4D50524104000100000000000D434F445F554E494456454E4441
      040001000000000007434F445F435354040001000000000008434F4E5452494E
      540100490000000100055749445448020002000F0003434F5201004900000001
      00055749445448020002001E000D434C415353494649434143414F0100490000
      000100055749445448020002001E000A44455343524943414F32010049000000
      01000557494454480200020064000E434F445F494E5445524E4F5F5354010049
      0000000100055749445448020002001E000C434F445F5349545F545249420100
      490000000100055749445448020002001E0009494E4449434545434601004900
      00000100055749445448020002001E00034E434D010049000000010005574944
      5448020002000A000000}
    object cdsSubProdutoCOD_SUBPRODUTO: TIntegerField
      FieldName = 'COD_SUBPRODUTO'
    end
    object cdsSubProdutoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 100
    end
    object cdsSubProdutoCODBARRA: TStringField
      FieldName = 'CODBARRA'
      Size = 30
    end
    object cdsSubProdutoCODPRODFABR: TStringField
      FieldName = 'CODPRODFABR'
      Size = 25
    end
    object cdsSubProdutoFABRICANTE: TStringField
      FieldName = 'FABRICANTE'
      Size = 60
    end
    object cdsSubProdutoMARCA: TStringField
      FieldName = 'MARCA'
      Size = 60
    end
    object cdsSubProdutoCOD_PRODUTO: TIntegerField
      FieldName = 'COD_PRODUTO'
    end
    object cdsSubProdutoCOD_INTERNO: TStringField
      FieldName = 'COD_INTERNO'
      Size = 10
    end
    object cdsSubProdutoCOD_UNIDCOMPRA: TIntegerField
      FieldName = 'COD_UNIDCOMPRA'
    end
    object cdsSubProdutoCOD_UNIDVENDA: TIntegerField
      FieldName = 'COD_UNIDVENDA'
    end
    object cdsSubProdutoCOD_CST: TIntegerField
      FieldName = 'COD_CST'
    end
    object cdsSubProdutoCONTRINT: TStringField
      FieldName = 'CONTRINT'
      Size = 15
    end
    object cdsSubProdutoCOR: TStringField
      FieldName = 'COR'
      Size = 30
    end
    object cdsSubProdutoCLASSIFICACAO: TStringField
      FieldName = 'CLASSIFICACAO'
      Size = 30
    end
    object cdsSubProdutoDESCRICAO2: TStringField
      FieldName = 'DESCRICAO2'
      Size = 100
    end
    object cdsSubProdutoCOD_INTERNO_ST: TStringField
      FieldName = 'COD_INTERNO_ST'
      Size = 30
    end
    object cdsSubProdutoCOD_SIT_TRIB: TStringField
      FieldName = 'COD_SIT_TRIB'
      Size = 30
    end
    object cdsSubProdutoINDICEECF: TStringField
      FieldName = 'INDICEECF'
      Size = 30
    end
    object cdsSubProdutoNCM: TStringField
      FieldName = 'NCM'
      Size = 10
    end
  end
  object cdsAtualizaBanco1: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 88
    Top = 464
  end
  object QTabela1: TIBQuery
    Tag = 5
    Database = DataBase
    Transaction = Transaction
    BufferChunks = 1000
    CachedUpdates = False
    Left = 272
    Top = 488
  end
  object cdsFormaPagamento: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    Left = 104
    Top = 568
    Data = {
      380100009619E0BD01000000180000000D000000000003000000380109415449
      56414445534302000300000000000B434F445F464F524D504147040001000000
      00000B434F445F494E5445524E4F010049000000010005574944544802000200
      140008434F445F4C4F4A41040001000000000008444553434649534301004900
      00000100055749445448020002001E000B44455343464F524D50414708000400
      000000000944455343524943414F010049000000010005574944544802000200
      640009494E54455256414C4F0400010000000000094A55524F41504C49430800
      040000000000094D454449414449415304000100000000000B5052494D504152
      43454C4104000100000000000C5155414E5450415243454C4104000100000000
      00045449504F0100490000000100055749445448020002000A000000}
    object cdsFormaPagamentoATIVADESC: TBooleanField
      FieldName = 'ATIVADESC'
    end
    object cdsFormaPagamentoCOD_FORMPAG: TIntegerField
      FieldName = 'COD_FORMPAG'
    end
    object cdsFormaPagamentoCOD_INTERNO: TStringField
      FieldName = 'COD_INTERNO'
    end
    object cdsFormaPagamentoCOD_LOJA: TIntegerField
      FieldName = 'COD_LOJA'
    end
    object cdsFormaPagamentoDESCFISC: TStringField
      FieldName = 'DESCFISC'
      Size = 30
    end
    object cdsFormaPagamentoDESCFORMPAG: TFloatField
      FieldName = 'DESCFORMPAG'
    end
    object cdsFormaPagamentoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 100
    end
    object cdsFormaPagamentoINTERVALO: TIntegerField
      FieldName = 'INTERVALO'
    end
    object cdsFormaPagamentoJUROAPLIC: TFloatField
      FieldName = 'JUROAPLIC'
    end
    object cdsFormaPagamentoMEDIADIAS: TIntegerField
      FieldName = 'MEDIADIAS'
    end
    object cdsFormaPagamentoPRIMPARCELA: TIntegerField
      FieldName = 'PRIMPARCELA'
    end
    object cdsFormaPagamentoQUANTPARCELA: TIntegerField
      FieldName = 'QUANTPARCELA'
    end
    object cdsFormaPagamentoTIPO: TStringField
      FieldName = 'TIPO'
      Size = 10
    end
  end
  object cdsEstoque: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    Left = 424
    Top = 688
    Data = {
      5D0300009619E0BD01000000180000001C0000000000030000005D030B434F44
      5F4553544F515545040001000000000008434F445F4C4F4A4104000100000000
      000B434F445F53554250524F4404000100000000000945535446495349434F08
      000400000000000843565650524F415408000400000000000843565050524F41
      5408000400000000000943565650524F56415208000400000000000943565050
      524F56415208000400000000000856454E444154415008000400000001000753
      5542545950450200490006004D6F6E6579000856454E44415441560800040000
      00010007535542545950450200490006004D6F6E6579000856454E4456415250
      080004000000010007535542545950450200490006004D6F6E6579000856454E
      4456415256080004000000010007535542545950450200490006004D6F6E6579
      000756414C554E4954080004000000010007535542545950450200490006004D
      6F6E6579000841565650524F4154080004000000010007535542545950450200
      490006004D6F6E6579000841565050524F415408000400000001000753554254
      5950450200490006004D6F6E6579000941565650524F56415208000400000001
      0007535542545950450200490006004D6F6E6579000941565050524F56415208
      0004000000010007535542545950450200490006004D6F6E6579000544544341
      44040006000000000008444553434F4E544F0800040000000100075355425459
      50450200490006004D6F6E657900094D415247454D5345470800040000000100
      07535542545950450200490006004D6F6E6579000B504552434D415247534547
      080004000000010007535542545950450200490006004D6F6E6579000B505245
      434F4F4645525441080004000000010007535542545950450200490006004D6F
      6E6579000A444154414F464552544104000600000000001056454E43494D454E
      544F4F46455254410400060000000000074553544C4F4A410800040000000100
      07535542545950450200490006004D6F6E6579000B564C52554E4954434F4D50
      080004000000010007535542545950450200490006004D6F6E65790009564C52
      434F4D505344080004000000010007535542545950450200490006004D6F6E65
      790008434F4E5452494E540100490000000100055749445448020002003C0000
      00}
    object cdsEstoqueCOD_ESTOQUE: TIntegerField
      FieldName = 'COD_ESTOQUE'
    end
    object cdsEstoqueCOD_LOJA: TIntegerField
      FieldName = 'COD_LOJA'
    end
    object cdsEstoqueCOD_SUBPROD: TIntegerField
      FieldName = 'COD_SUBPROD'
    end
    object cdsEstoqueESTFISICO: TFloatField
      FieldName = 'ESTFISICO'
    end
    object cdsEstoqueCVVPROAT: TFloatField
      FieldName = 'CVVPROAT'
    end
    object cdsEstoqueCVPPROAT: TFloatField
      FieldName = 'CVPPROAT'
    end
    object cdsEstoqueCVVPROVAR: TFloatField
      FieldName = 'CVVPROVAR'
    end
    object cdsEstoqueCVPPROVAR: TFloatField
      FieldName = 'CVPPROVAR'
    end
    object cdsEstoqueVENDATAP: TCurrencyField
      FieldName = 'VENDATAP'
    end
    object cdsEstoqueVENDATAV: TCurrencyField
      FieldName = 'VENDATAV'
    end
    object cdsEstoqueVENDVARP: TCurrencyField
      FieldName = 'VENDVARP'
    end
    object cdsEstoqueVENDVARV: TCurrencyField
      FieldName = 'VENDVARV'
    end
    object cdsEstoqueVALUNIT: TCurrencyField
      FieldName = 'VALUNIT'
    end
    object cdsEstoqueAVVPROAT: TCurrencyField
      FieldName = 'AVVPROAT'
    end
    object cdsEstoqueAVPPROAT: TCurrencyField
      FieldName = 'AVPPROAT'
    end
    object cdsEstoqueAVVPROVAR: TCurrencyField
      FieldName = 'AVVPROVAR'
    end
    object cdsEstoqueAVPPROVAR: TCurrencyField
      FieldName = 'AVPPROVAR'
    end
    object cdsEstoqueDTCAD: TDateField
      FieldName = 'DTCAD'
    end
    object cdsEstoqueDESCONTO: TCurrencyField
      FieldName = 'DESCONTO'
    end
    object cdsEstoqueMARGEMSEG: TCurrencyField
      FieldName = 'MARGEMSEG'
    end
    object cdsEstoquePERCMARGSEG: TCurrencyField
      FieldName = 'PERCMARGSEG'
    end
    object cdsEstoquePRECOOFERTA: TCurrencyField
      FieldName = 'PRECOOFERTA'
    end
    object cdsEstoqueDATAOFERTA: TDateField
      FieldName = 'DATAOFERTA'
    end
    object cdsEstoqueVENCIMENTOOFERTA: TDateField
      FieldName = 'VENCIMENTOOFERTA'
    end
    object cdsEstoqueESTLOJA: TCurrencyField
      FieldName = 'ESTLOJA'
    end
    object cdsEstoqueVLRUNITCOMP: TCurrencyField
      FieldName = 'VLRUNITCOMP'
    end
    object cdsEstoqueVLRCOMPSD: TCurrencyField
      FieldName = 'VLRCOMPSD'
    end
    object cdsEstoqueCONTRINT: TStringField
      FieldName = 'CONTRINT'
      Size = 60
    end
  end
  object cdsCliente: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    Left = 16
    Top = 672
    Data = {
      C90100009619E0BD010000001800000011000000000003000000C9010B434F44
      5F434C49454E544504000100000000000A434F445F504553534F410400010000
      0000000B434F445F494E5445524E4F0100490000000100055749445448020002
      00280008444154415F4341440400060000000000084C494D5F43524544080004
      00000000000C434F445F56454E4445444F52040001000000000005415449564F
      0100490000000100055749445448020002000A00034F42530100490000000100
      0557494454480200020064000453435043010049000000010005574944544802
      00020001000D44494156454E43494D454E544F04000100000000000D4F425346
      494E414E434549524101004900000001000557494454480200020064000A5645
      4E4441564953544101004900000001000557494454480200020001000D444941
      534652455156454E44410100490000000100055749445448020002000A000946
      52455156454E44410100490000000100055749445448020002000A000A454E44
      454E545241474101004900000001000557494454480200020064000B434F445F
      464F524D504147040001000000000007435046434E504A010049000000010005
      5749445448020002003C000000}
    object cdsClienteCOD_CLIENTE: TIntegerField
      FieldName = 'COD_CLIENTE'
    end
    object cdsClienteCOD_PESSOA: TIntegerField
      FieldName = 'COD_PESSOA'
    end
    object cdsClienteCOD_INTERNO: TStringField
      FieldName = 'COD_INTERNO'
      Size = 40
    end
    object cdsClienteDATA_CAD: TDateField
      FieldName = 'DATA_CAD'
    end
    object cdsClienteLIM_CRED: TFloatField
      FieldName = 'LIM_CRED'
    end
    object cdsClienteCOD_VENDEDOR: TIntegerField
      FieldName = 'COD_VENDEDOR'
    end
    object cdsClienteATIVO: TStringField
      FieldName = 'ATIVO'
      Size = 10
    end
    object cdsClienteOBS: TStringField
      FieldName = 'OBS'
      Size = 100
    end
    object cdsClienteSCPC: TStringField
      FieldName = 'SCPC'
      Size = 1
    end
    object cdsClienteDIAVENCIMENTO: TIntegerField
      FieldName = 'DIAVENCIMENTO'
    end
    object cdsClienteOBSFINANCEIRA: TStringField
      FieldName = 'OBSFINANCEIRA'
      Size = 100
    end
    object cdsClienteVENDAVISTA: TStringField
      FieldName = 'VENDAVISTA'
      Size = 1
    end
    object cdsClienteDIASFREQVENDA: TStringField
      FieldName = 'DIASFREQVENDA'
      Size = 10
    end
    object cdsClienteFREQVENDA: TStringField
      FieldName = 'FREQVENDA'
      Size = 10
    end
    object cdsClienteENDENTRAGA: TStringField
      FieldName = 'ENDENTRAGA'
      Size = 100
    end
    object cdsClienteCOD_FORMPAG: TIntegerField
      FieldName = 'COD_FORMPAG'
    end
    object cdsClienteCPFCNPJ: TStringField
      FieldName = 'CPFCNPJ'
      Size = 60
    end
  end
  object cdsPedVenda: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    Left = 424
    Top = 640
    Data = {
      890100009619E0BD01000000180000001000000000000300000089010C434F44
      5F50454456454E444104000100000000000B434F445F434C49454E5445040001
      000000000008445450454456454E040006000000000008444553434F4E544F08
      000400000000000B434F445F5553554152494F04000100000000000B434F445F
      464F524D50414704000100000000000556414C4F520800040000000100075355
      42545950450200490006004D6F6E65790007454E545245474104000600000000
      00074E4F4D45434C490100490000000100055749445448020002006400034F42
      53010049000000010005574944544802000200640007435046434E504A010049
      00000001000557494454480200020028000C434F445F56454E4445444F520400
      01000000000008534954554143414F0100490000000100055749445448020002
      001400064E554D50454401004900000001000557494454480200020014000843
      4F4252414E43410100490000000100055749445448020002001400074558504F
      52544102000100000000000000}
    object cdsPedVendaCOD_PEDVENDA: TIntegerField
      FieldName = 'COD_PEDVENDA'
    end
    object cdsPedVendaCOD_CLIENTE: TIntegerField
      FieldName = 'COD_CLIENTE'
    end
    object cdsPedVendaDTPEDVEN: TDateField
      FieldName = 'DTPEDVEN'
    end
    object cdsPedVendaDESCONTO: TFloatField
      FieldName = 'DESCONTO'
    end
    object cdsPedVendaCOD_USUARIO: TIntegerField
      FieldName = 'COD_USUARIO'
    end
    object cdsPedVendaCOD_FORMPAG: TIntegerField
      FieldName = 'COD_FORMPAG'
    end
    object cdsPedVendaVALOR: TCurrencyField
      FieldName = 'VALOR'
    end
    object cdsPedVendaENTREGA: TDateField
      FieldName = 'ENTREGA'
    end
    object cdsPedVendaNOMECLI: TStringField
      FieldName = 'NOMECLI'
      Size = 100
    end
    object cdsPedVendaOBS: TStringField
      FieldName = 'OBS'
      Size = 100
    end
    object cdsPedVendaCPFCNPJ: TStringField
      FieldName = 'CPFCNPJ'
      Size = 40
    end
    object cdsPedVendaCOD_VENDEDOR: TIntegerField
      FieldName = 'COD_VENDEDOR'
    end
    object cdsPedVendaSITUACAO: TStringField
      FieldName = 'SITUACAO'
    end
    object cdsPedVendaNUMPED: TStringField
      FieldName = 'NUMPED'
    end
    object cdsPedVendaCOBRANCA: TStringField
      FieldName = 'COBRANCA'
    end
    object cdsPedVendaEXPORTA: TSmallintField
      FieldName = 'EXPORTA'
    end
  end
  object cdsItensPedVenda: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    Left = 424
    Top = 592
    Data = {
      D30200009619E0BD010000001800000018000000000003000000D3020F434F44
      5F4954454E5350454456454E04000100000000000A434F445F50454456454E04
      000100000000000B434F445F4553544F51554504000100000000000851544445
      50524F44080004000000010007535542545950450200490006004D6F6E657900
      074445534350524F08000400000000000F434F445F46554E43494F4E4152494F
      04000100000000000756414C554E495408000400000001000753554254595045
      0200490006004D6F6E6579000856414C435553544F0800040000000100075355
      42545950450200490006004D6F6E6579000A56414C4F52544F54414C08000400
      0000010007535542545950450200490006004D6F6E6579000656414C52455008
      0004000000010007535542545950450200490006004D6F6E65790007434F4546
      444956080004000000010007535542545950450200490006004D6F6E65790007
      56414C434F4D50080004000000010007535542545950450200490006004D6F6E
      657900064C554350455208000400000001000753554254595045020049000600
      4D6F6E657900064C55434D4F4508000400000001000753554254595045020049
      0006004D6F6E6579000444415441040006000000000008434F4D495353414F08
      0004000000010007535542545950450200490006004D6F6E657900084F504552
      4143414F0100490000000100055749445448020002001400064C554352454C08
      0004000000010007535542545950450200490006004D6F6E65790009564C5256
      454E444244080004000000010007535542545950450200490006004D6F6E6579
      000B434F445F554E4944414445040001000000000007445454524F4341040006
      000000000007434F445F435354040001000000000006444553434E4608000400
      0000010007535542545950450200490006004D6F6E65790008434F4E5452494E
      5401004900000001000557494454480200020014000000}
    object cdsItensPedVendaCOD_ITENSPEDVEN: TIntegerField
      FieldName = 'COD_ITENSPEDVEN'
    end
    object cdsItensPedVendaCOD_PEDVEN: TIntegerField
      FieldName = 'COD_PEDVEN'
    end
    object cdsItensPedVendaCOD_ESTOQUE: TIntegerField
      FieldName = 'COD_ESTOQUE'
    end
    object cdsItensPedVendaQTDEPROD: TCurrencyField
      FieldName = 'QTDEPROD'
    end
    object cdsItensPedVendaDESCPRO: TFloatField
      FieldName = 'DESCPRO'
    end
    object cdsItensPedVendaCOD_FUNCIONARIO: TIntegerField
      FieldName = 'COD_FUNCIONARIO'
    end
    object cdsItensPedVendaVALUNIT: TCurrencyField
      FieldName = 'VALUNIT'
    end
    object cdsItensPedVendaVALCUSTO: TCurrencyField
      FieldName = 'VALCUSTO'
    end
    object cdsItensPedVendaVALORTOTAL: TCurrencyField
      FieldName = 'VALORTOTAL'
    end
    object cdsItensPedVendaVALREP: TCurrencyField
      FieldName = 'VALREP'
    end
    object cdsItensPedVendaCOEFDIV: TCurrencyField
      FieldName = 'COEFDIV'
    end
    object cdsItensPedVendaVALCOMP: TCurrencyField
      FieldName = 'VALCOMP'
    end
    object cdsItensPedVendaLUCPER: TCurrencyField
      FieldName = 'LUCPER'
    end
    object cdsItensPedVendaLUCMOE: TCurrencyField
      FieldName = 'LUCMOE'
    end
    object cdsItensPedVendaDATA: TDateField
      FieldName = 'DATA'
    end
    object cdsItensPedVendaCOMISSAO: TCurrencyField
      FieldName = 'COMISSAO'
    end
    object cdsItensPedVendaOPERACAO: TStringField
      FieldName = 'OPERACAO'
    end
    object cdsItensPedVendaLUCREL: TCurrencyField
      FieldName = 'LUCREL'
    end
    object cdsItensPedVendaVLRVENDBD: TCurrencyField
      FieldName = 'VLRVENDBD'
    end
    object cdsItensPedVendaCOD_UNIDADE: TIntegerField
      FieldName = 'COD_UNIDADE'
    end
    object cdsItensPedVendaDTTROCA: TDateField
      FieldName = 'DTTROCA'
    end
    object cdsItensPedVendaCOD_CST: TIntegerField
      FieldName = 'COD_CST'
    end
    object cdsItensPedVendaDESCNF: TCurrencyField
      FieldName = 'DESCNF'
    end
    object cdsItensPedVendaCONTRINT: TStringField
      FieldName = 'CONTRINT'
    end
  end
  object LADO_ALEX: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 528
    Top = 392
  end
  object DsSped: TDataSource
    DataSet = TSped
    Left = 760
    Top = 56
  end
  object TSped: TIBQuery
    Database = DataBase
    Transaction = Transaction
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'Select * from Sped')
    Left = 760
    Top = 8
  end
  object cdsItensOrcamento: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    Left = 512
    Top = 570
    Data = {
      390200009619E0BD01000000180000001200000000000300000039020D434F44
      5F495450524F444F524304000100000000000D434F445F4F5243414D454E544F
      04000100000000000B434F445F4553544F515545040001000000000003515444
      040001000000000008444553434F4E544F080004000000010007535542545950
      450200490006004D6F6E65790007564C52554E49540800040000000100075355
      42545950450200490006004D6F6E65790008564C52544F54414C080004000000
      010007535542545950450200490006004D6F6E6579000856414C435553544F08
      0004000000010007535542545950450200490006004D6F6E65790007434F4546
      444956080004000000010007535542545950450200490006004D6F6E65790007
      56414C434F4D50080004000000010007535542545950450200490006004D6F6E
      657900064C55434D4F4508000400000001000753554254595045020049000600
      4D6F6E657900064C554350455208000400000001000753554254595045020049
      0006004D6F6E6579000656414C52455008000400000001000753554254595045
      0200490006004D6F6E657900064C554352454C08000400000001000753554254
      5950450200490006004D6F6E6579000B434F445F554E49444144450400010000
      00000006515444454D4208000400000001000753554254595045020049000600
      4D6F6E65790007554E4944454D420400010000000000085154444E41454D4208
      0004000000010007535542545950450200490006004D6F6E6579000000}
    object cdsItensOrcamentoCOD_ITPRODORC: TIntegerField
      FieldName = 'COD_ITPRODORC'
    end
    object cdsItensOrcamentoCOD_ORCAMENTO: TIntegerField
      FieldName = 'COD_ORCAMENTO'
    end
    object cdsItensOrcamentoCOD_ESTOQUE: TIntegerField
      FieldName = 'COD_ESTOQUE'
    end
    object cdsItensOrcamentoQTD: TIntegerField
      FieldName = 'QTD'
    end
    object cdsItensOrcamentoDESCONTO: TCurrencyField
      FieldName = 'DESCONTO'
    end
    object cdsItensOrcamentoVLRUNIT: TCurrencyField
      FieldName = 'VLRUNIT'
    end
    object cdsItensOrcamentoVLRTOTAL: TCurrencyField
      FieldName = 'VLRTOTAL'
    end
    object cdsItensOrcamentoVALCUSTO: TCurrencyField
      FieldName = 'VALCUSTO'
    end
    object cdsItensOrcamentoCOEFDIV: TCurrencyField
      FieldName = 'COEFDIV'
    end
    object cdsItensOrcamentoVALCOMP: TCurrencyField
      FieldName = 'VALCOMP'
    end
    object cdsItensOrcamentoLUCMOE: TCurrencyField
      FieldName = 'LUCMOE'
    end
    object cdsItensOrcamentoLUCPER: TCurrencyField
      FieldName = 'LUCPER'
    end
    object cdsItensOrcamentoVALREP: TCurrencyField
      FieldName = 'VALREP'
    end
    object cdsItensOrcamentoLUCREL: TCurrencyField
      FieldName = 'LUCREL'
    end
    object cdsItensOrcamentoCOD_UNIDADE: TIntegerField
      FieldName = 'COD_UNIDADE'
    end
    object cdsItensOrcamentoQTDEMB: TCurrencyField
      FieldName = 'QTDEMB'
    end
    object cdsItensOrcamentoUNIDEMB: TIntegerField
      FieldName = 'UNIDEMB'
    end
    object cdsItensOrcamentoQTDNAEMB: TCurrencyField
      FieldName = 'QTDNAEMB'
    end
  end
  object cdsOrcamento: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    Left = 512
    Top = 624
    Data = {
      F40200009619E0BD01000000180000001B000000000003000000F4020D434F44
      5F4F5243414D454E544F04000100000000000B434F445F5553554152494F0400
      0100000000000C434F445F56454E4445444F5204000100000000000B434F445F
      464F524D504147040001000000000008434F445F4C4F4A410400010000000000
      0B434F445F434C49454E54450400010000000000074E4F4D45434C4901004900
      0000010005574944544802000200320007435046434E504A0100490000000100
      0557494454480200020014000744544142455254040006000000000007485241
      4245525404000700000000000A445456414C4944414445040006000000000006
      4E554D4F52430400010000000000034F425304004B0000000200075355425459
      504502004900070042696E61727900055749445448020002000100045449504F
      0100490000000100055749445448020002000A00084445534353455256080004
      000000010007535542545950450200490006004D6F6E65790008444553435052
      4F44080004000000010007535542545950450200490006004D6F6E6579000756
      4C5253455256080004000000010007535542545950450200490006004D6F6E65
      790007564C5250524F4408000400000001000753554254595045020049000600
      4D6F6E65790008564C52544F54414C0800040000000100075355425459504502
      00490006004D6F6E65790007564C524445535008000400000001000753554254
      5950450200490006004D6F6E6579000A434F445F524553544543040001000000
      000009564C525245535445430800040000000100075355425459504502004900
      06004D6F6E6579000B4445534350524F444D4F45080004000000010007535542
      545950450200490006004D6F6E6579000944455343524943414F010049000000
      01000557494454480200020064000F434F445F4551554950414D454E544F0400
      01000000000007434F4E5441544F010049000000010005574944544802000200
      3C000B434F445F494E5445524E4F04000100000000000000}
    object cdsOrcamentoCOD_ORCAMENTO: TIntegerField
      FieldName = 'COD_ORCAMENTO'
    end
    object cdsOrcamentoCOD_USUARIO: TIntegerField
      FieldName = 'COD_USUARIO'
    end
    object cdsOrcamentoCOD_VENDEDOR: TIntegerField
      FieldName = 'COD_VENDEDOR'
    end
    object cdsOrcamentoCOD_FORMPAG: TIntegerField
      FieldName = 'COD_FORMPAG'
    end
    object cdsOrcamentoCOD_LOJA: TIntegerField
      FieldName = 'COD_LOJA'
    end
    object cdsOrcamentoCOD_CLIENTE: TIntegerField
      FieldName = 'COD_CLIENTE'
    end
    object cdsOrcamentoNOMECLI: TStringField
      FieldName = 'NOMECLI'
      Size = 50
    end
    object cdsOrcamentoCPFCNPJ: TStringField
      FieldName = 'CPFCNPJ'
    end
    object cdsOrcamentoDTABERT: TDateField
      FieldName = 'DTABERT'
    end
    object cdsOrcamentoHRABERT: TTimeField
      FieldName = 'HRABERT'
    end
    object cdsOrcamentoDTVALIDADE: TDateField
      FieldName = 'DTVALIDADE'
    end
    object cdsOrcamentoNUMORC: TIntegerField
      FieldName = 'NUMORC'
    end
    object cdsOrcamentoOBS: TBlobField
      FieldName = 'OBS'
      Size = 1
    end
    object cdsOrcamentoTIPO: TStringField
      FieldName = 'TIPO'
      Size = 10
    end
    object cdsOrcamentoDESCSERV: TCurrencyField
      FieldName = 'DESCSERV'
    end
    object cdsOrcamentoDESCPROD: TCurrencyField
      FieldName = 'DESCPROD'
    end
    object cdsOrcamentoVLRSERV: TCurrencyField
      FieldName = 'VLRSERV'
    end
    object cdsOrcamentoVLRPROD: TCurrencyField
      FieldName = 'VLRPROD'
    end
    object cdsOrcamentoVLRTOTAL: TCurrencyField
      FieldName = 'VLRTOTAL'
    end
    object cdsOrcamentoVLRDESP: TCurrencyField
      FieldName = 'VLRDESP'
    end
    object cdsOrcamentoCOD_RESTEC: TIntegerField
      FieldName = 'COD_RESTEC'
    end
    object cdsOrcamentoVLRRESTEC: TCurrencyField
      FieldName = 'VLRRESTEC'
    end
    object cdsOrcamentoDESCPRODMOE: TCurrencyField
      FieldName = 'DESCPRODMOE'
    end
    object cdsOrcamentoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 100
    end
    object cdsOrcamentoCOD_EQUIPAMENTO: TIntegerField
      FieldName = 'COD_EQUIPAMENTO'
    end
    object cdsOrcamentoCONTATO: TStringField
      FieldName = 'CONTATO'
      Size = 60
    end
  end
  object cdsAtualizaBanco2: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 520
    Top = 720
  end
  object DbBloqueio: TIBDatabase
    DatabaseName = 'firebird.mzrsistemas.com:/firebird/mzrsistemas.gdb'
    Params.Strings = (
      'user_name=mzrsistemas'
      'password=MZRKING'
      'lc_ctype=ISO8859_1'
      'sql_role_name=3')
    LoginPrompt = False
    DefaultTransaction = TBloqueio
    IdleTimer = 0
    SQLDialect = 3
    TraceFlags = [tfQExecute, tfError, tfStmt]
    Left = 680
    Top = 512
  end
  object TBloqueio: TIBTransaction
    Active = False
    DefaultDatabase = DbBloqueio
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    AutoStopAction = saNone
    Left = 744
    Top = 512
  end
  object QBloqueio: TIBQuery
    Tag = 5
    Database = DbBloqueio
    Transaction = TBloqueio
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'SELECT first(1) * FROM CLIENTEB'
      '')
    Left = 712
    Top = 560
  end
  object DSBloqueio: TDataSource
    DataSet = QBloqueio
    Left = 714
    Top = 608
  end
end
