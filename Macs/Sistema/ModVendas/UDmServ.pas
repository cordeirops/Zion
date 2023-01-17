unit UDmServ;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  IBCustomDataSet, IBUpdateSQL, Db, IBQuery, IBDatabase, MDODatabase,
  MDOCustomDataSet, MDOQuery;

type
  TDMServ = class(TDataModule)
    DbServ: TIBDatabase;                    
    IBT: TIBTransaction;
    Alx: TIBQuery;
    DSAlx: TDataSource;
    TOrd: TIBQuery;
    UOrd: TIBUpdateSQL;
    DOrd: TDataSource;
    DPOrd: TDataSource;
    UPOrd: TIBUpdateSQL;
    TPOrd: TIBQuery;
    TSOrd: TIBQuery;
    USOrd: TIBUpdateSQL;
    DSOrd: TDataSource;
    TServ: TIBQuery;
    TServCOD_SERVICO: TIntegerField;
    TServCOD_SUBGRUPOSERV: TIntegerField;
    TServCOD_GRUPOSERV: TIntegerField;
    TServCOD_INTERNO: TIBStringField;
    TServDESCRICAO: TIBStringField;
    TServAPLICACAO: TIBStringField;
    UServ: TIBUpdateSQL;
    DServ: TDataSource;
    TSubserv: TIBQuery;
    USubServ: TIBUpdateSQL;
    DSubServ: TDataSource;
    WServico: TIBQuery;
    DWServico: TDataSource;
    WSubServ: TIBQuery;
    DWSubserv: TDataSource;
    WOrdem: TIBQuery;
    DWOrdem: TDataSource;
    TRel: TIBQuery;
    DRel: TDataSource;
    TFiscOrd: TIBQuery;
    UFiscOrd: TIBUpdateSQL;
    DFiscOrd: TDataSource;
    TFiscOrdCOD_DOCFISCORD: TIntegerField;
    TFiscOrdCOD_ORDEM: TIntegerField;
    TFiscOrdNUMDOCFIS: TIBStringField;
    TFiscOrdTIPODOCFIS: TIBStringField;
    TFiscOrdNUMDOCANT: TIBStringField;
    TFiscOrdSERIE: TIBStringField;
    TFiscOrdDTEMISSAO: TDateField;
    TFiscOrdDTENTSAID: TDateField;
    TFiscOrdHORASAID: TTimeField;
    TFiscOrdCOD_CFOP: TIntegerField;
    TFiscOrdCOD_TRANSP: TIntegerField;
    TFiscOrdOBS: TIBStringField;
    TFiscOrdFRETECONTA: TIBStringField;
    TFiscOrdPLACA: TIBStringField;
    TFiscOrdUFPLACA: TIBStringField;
    TFiscOrdCPFPLACA: TIBStringField;
    TFiscOrdQUANTFRETE: TFloatField;
    TFiscOrdESPECIEFRETE: TIBStringField;
    TFiscOrdMARCAFRETE: TIBStringField;
    TFiscOrdPESOBRUTO: TFloatField;
    TFiscOrdPESOLIQ: TFloatField;
    TFiscOrdCOD_COTA: TIntegerField;
    TFiscOrdNF: TIBStringField;
    TFiscOrdBASEICMS: TIBBCDField;
    TFiscOrdVLRICMS: TIBBCDField;
    TFiscOrdBASCALSUBS: TIBBCDField;
    TFiscOrdVLRICMSUBS: TIBBCDField;
    TFiscOrdVLRTOTPROD: TIBBCDField;
    TFiscOrdVLRFRETE: TIBBCDField;
    TFiscOrdVLRICMSFRETE: TIBBCDField;
    TFiscOrdVLRSEG: TIBBCDField;
    TFiscOrdVLRTOTIPI: TIBBCDField;
    TFiscOrdVLRTOTICMS: TIBBCDField;
    TFiscOrdVLRTOTDOCNF: TIBBCDField;
    TFiscOrdVLROUTRASDESP: TIBBCDField;
    TFiscOrdFRETECOMP: TIBStringField;
    TFiscOrdVLREMB: TIBBCDField;
    TFiscOrdTIPOGERADOR: TIBStringField;
    TFiscOrdNUMCONHEC: TIBStringField;
    TFiscOrdVLRISENTOICMS: TIBBCDField;
    TFiscOrdMODELONF: TIBStringField;
    WServicoCOD_SERVICO: TIntegerField;
    WServicoCOD_GRUPOSERV: TIntegerField;
    WServicoCOD_SUBGRUPOSERV: TIntegerField;
    WServicoCOD_INTERNO: TIBStringField;
    WServicoSERVICO: TIBStringField;
    WServicoAPLICACAO: TIBStringField;
    WServicoCI_GRUPO: TIBStringField;
    WServicoGRUPO: TIBStringField;
    WServicoCI_SUBGRUPO: TIBStringField;
    WServicoSUBGRUPO: TIBStringField;
    TAlx1: TIBQuery;
    DSAlx1: TDataSource;
    WOrdemCOD_ORDEM: TIntegerField;
    WOrdemCOD_CLIENTE: TIntegerField;
    WOrdemCOD_EQUIPAMENTO: TIntegerField;
    WOrdemCOD_FUNCIONARIO: TIntegerField;
    WOrdemCOD_VENDEDOR: TIntegerField;
    WOrdemDTABERT: TDateField;
    WOrdemDTPREV: TDateField;
    WOrdemDTFECH: TDateField;
    WOrdemNUMERO: TIBStringField;
    WOrdemNUMORC: TIntegerField;
    WOrdemSTATUS: TIBStringField;
    WOrdemTOTAL: TIBBCDField;
    WOrdemCI_CLIENTE: TIBStringField;
    WOrdemCLIENTE: TIBStringField;
    WOrdemEQUIPAMENTO: TIBStringField;
    WOrdemCOD_LOJA: TIntegerField;
    WOrdemGARANT: TIBStringField;
    WOrdemMARK: TIBStringField;
    WOrdemFISCO: TIBStringField;
    WOrdemFORMAPAG: TIBStringField;
    WOrdemTIPOPAG: TIBStringField;
    WOrdemPLACA: TIBStringField;
    WOrdemBOX: TIBStringField;
    TSOrdCOD_ITSERVORD: TIntegerField;
    TSOrdCOD_SERVICO: TIntegerField;
    TSOrdCOD_ORDEM: TIntegerField;
    TSOrdQTD: TIBStringField;
    TSOrdVLRUNIT: TIBBCDField;
    TSOrdDESCONTO: TIBBCDField;
    TSOrdTOTAL: TIBBCDField;
    TSOrdCOD_FUNCIONARIO: TIntegerField;
    TSOrdDATA: TDateField;
    TSOrdVLRUNITCUSTO: TIBBCDField;
    TSOrdTOTENCARGO: TIBBCDField;
    TSOrdLUCMOE: TIBBCDField;
    TSOrdLUCPER: TIBBCDField;
    TSOrdCOMISSAO: TIBBCDField;
    TSOrdOUTROS: TIBBCDField;
    TSOrdISSQN: TIBBCDField;
    TSOrdINSS: TIBBCDField;
    TSOrdCOFINS: TIBBCDField;
    TSOrdIR: TIBBCDField;
    TSOrdCONTSOC: TIBBCDField;
    TSOrdPIS: TIBBCDField;
    TSOrdOBS: TIBStringField;
    TSOrdTAMANHO: TIBBCDField;
    WOrdemEXP: TIBStringField;
    WOrdemEXPORTADO: TIBStringField;
    TAlx2: TIBQuery;
    DSAlx2: TDataSource;
    TAlx3: TIBQuery;
    DSTalx3: TDataSource;
    WSubServCOD_SUBSERVICO: TIntegerField;
    WSubServCODCOMPOSTO: TIBStringField;
    WSubServDESCRICAO: TIBStringField;
    WSubServCOD_INTERNO: TIBStringField;
    WSubServCOD_SERVICO: TIntegerField;
    WSubServEMPSERV: TIBStringField;
    WSubServQTDGARANTIA: TFloatField;
    WSubServTEMPSERV: TIBStringField;
    WSubServVLRFINAL: TIBBCDField;
    WSubServTIPOGARANT: TIBStringField;
    WSubServVLRTOTSUBSERV: TIBBCDField;
    WSubServHORA_INI: TTimeField;
    WSubServHORA_FINAL: TTimeField;
    WSubServINTERVALO_INI: TTimeField;
    WSubServINTERVALO_FINAL: TTimeField;
    WSubServVLR_NORMAL: TIBBCDField;
    WSubServVLR_EXTRA: TIBBCDField;
    TSubservCOD_SUBSERVICO: TIntegerField;
    TSubservCOD_SERVICO: TIntegerField;
    TSubservCOD_INTERNO: TIBStringField;
    TSubservCODCOMPOSTO: TIBStringField;
    TSubservDESCRICAO: TIBStringField;
    TSubservQUANTGARANTIA: TFloatField;
    TSubservTIPOGARANTIA: TIBStringField;
    TSubservESPECSERV: TIBStringField;
    TSubservCOEFDIV: TIBBCDField;
    TSubservVLRUNIT: TIBBCDField;
    TSubservLUCRAT: TIBBCDField;
    TSubservVLRFINAL: TIBBCDField;
    TSubservEMPSERV: TIBStringField;
    TSubservCOD_UNIDADE: TIntegerField;
    TSubservDTCAD: TDateField;
    TSubservTEMPSERV: TIBStringField;
    TSubservVLRSUBSERV: TIBBCDField;
    TSubservHORA_INI: TTimeField;
    TSubservINTERVALO_INI: TTimeField;
    TSubservINTERVALO_FINAL: TTimeField;
    TSubservHORA_FINAL: TTimeField;
    TSubservVLR_NORMAL: TIBBCDField;
    TSubservVLR_EXTRA2: TIBBCDField;
    TPOrdCOD_ITPRODORD: TIntegerField;
    TPOrdCOD_ESTOQUE: TIntegerField;
    TPOrdCOD_ORDEM: TIntegerField;
    TPOrdQTD: TIBBCDField;
    TPOrdVLRUNIT: TIBBCDField;
    TPOrdDESCONTO: TIBBCDField;
    TPOrdTOTAL: TIBBCDField;
    TPOrdDATA: TDateField;
    TPOrdCOD_FUNCIONARIO: TIntegerField;
    TPOrdVALCUSTO: TIBBCDField;
    TPOrdCOEFDIV: TIBBCDField;
    TPOrdVALCOMP: TIBBCDField;
    TPOrdLUCMOE: TIBBCDField;
    TPOrdLUCPER: TIBBCDField;
    TPOrdVALREP: TIBBCDField;
    TPOrdNUMREQ: TIBStringField;
    TPOrdQTDRET: TIBBCDField;
    TPOrdCOMISSAO: TIBBCDField;
    TPOrdVLRVENDBD: TIBBCDField;
    TPOrdLUCREL: TIBBCDField;
    TPOrdOPERACAO: TIBStringField;
    TPOrdALIQICMS: TIBBCDField;
    TPOrdBASEICMS: TIBBCDField;
    TPOrdVLRICMS: TIBBCDField;
    TPOrdBASEICMSSUBS: TIBBCDField;
    TPOrdVLRIPI: TIBBCDField;
    TPOrdALIQIPI: TIBBCDField;
    TPOrdREDUCBASEICMS: TIBBCDField;
    TPOrdVLRICMSSUBS: TIBBCDField;
    TPOrdDATA_GARANTIA: TDateField;
    TPOrdKMGARANTIA: TIntegerField;
    TFiscOrdNFESERIE: TIntegerField;
    TFiscOrdVLRTOTSERV: TIBBCDField;
    TFiscOrdVLRTOTISS: TIBBCDField;
    TFiscOrdNUMFISCALAUX: TIBStringField;
    TPOrdQTDDEV: TIBBCDField;
    TPOrdVLRUNITDEV: TIBBCDField;
    TFiscOrdDADOSAD01: TMemoField;
    TFiscOrdDADOSAD02: TMemoField;
    TFiscOrdDADOSAD03: TMemoField;
    TFiscOrdRESERVFISC01: TMemoField;
    TFiscOrdRESERVFISC02: TMemoField;
    TFiscOrdRESERVFISC03: TMemoField;
    TFiscOrdDADOSAD04: TMemoField;
    TOrdCOD_ORDEM: TIntegerField;
    TOrdCOD_CLIENTE: TIntegerField;
    TOrdCOD_EQUIPAMENTO: TIntegerField;
    TOrdCOD_VENDEDOR: TIntegerField;
    TOrdDTABERT: TDateField;
    TOrdHRABERT: TTimeField;
    TOrdDTPREV: TDateField;
    TOrdHRPREV: TTimeField;
    TOrdCOD_FUNCIONARIO: TIntegerField;
    TOrdOBSERVACAO: TMemoField;
    TOrdDTENTREGA: TDateField;
    TOrdHRENTREGA: TTimeField;
    TOrdNIVELCOMP: TIBStringField;
    TOrdPROBREC: TMemoField;
    TOrdSOLUCAO: TMemoField;
    TOrdSTATUS: TIBStringField;
    TOrdNUMERO: TIBStringField;
    TOrdDESCONTO: TIBBCDField;
    TOrdCOD_USUARIO: TIntegerField;
    TOrdTOTPROD: TIBBCDField;
    TOrdTOTSERV: TIBBCDField;
    TOrdTOTORD: TIBBCDField;
    TOrdCOD_LOJA: TIntegerField;
    TOrdMOTIVOPARADA: TMemoField;
    TOrdCOD_FORMPAG: TIntegerField;
    TOrdLOCALAT: TIBStringField;
    TOrdCOMISSAO: TIBBCDField;
    TOrdGARANTIA: TIBStringField;
    TOrdTOTDESP: TIBBCDField;
    TOrdCOMSOBVENDA: TIBStringField;
    TOrdDTFECH: TDateField;
    TOrdDESCPROD: TIBBCDField;
    TOrdDESCSERV: TIBBCDField;
    TOrdNUMORC: TIntegerField;
    TOrdMOUSE: TIBStringField;
    TOrdTECLADO: TIBStringField;
    TOrdKITMM: TIBStringField;
    TOrdCABOS: TIBStringField;
    TOrdIMPRESSORA: TIBStringField;
    TOrdCDRECUPERA: TIBStringField;
    TOrdMONITOR: TIBStringField;
    TOrdFONES: TIBStringField;
    TOrdESTADOEQUIP: TIBStringField;
    TOrdMARK: TIBStringField;
    TOrdFISCO: TIBStringField;
    TOrdTIPOPAG: TIBStringField;
    TOrdDOCUMENTOS: TIBStringField;
    TOrdDESKTOP: TIBStringField;
    TOrdEMAILS: TIBStringField;
    TOrdOUTROS: TIBStringField;
    TOrdDESCBACKUP: TMemoField;
    TOrdCOD_TABELAPRECO: TIntegerField;
    TOrdBOX: TIBStringField;
    TOrdEXP: TIBStringField;
    TOrdEXPORTADO: TIBStringField;
    TOrdTOTKM: TIBBCDField;
    TOrdDESCKM: TIBBCDField;
    TOrdTOTAJUDANTE: TIBBCDField;
    TOrdDESCAJUDANTE: TIBBCDField;
    TOrdCONTATO: TIBStringField;
    TOrdEDIT: TIBStringField;
    TOrdNUMFISCALAUX: TIBStringField;
    TOrdTIPO: TIBStringField;
    TOrdNUMFISCAL: TIBStringField;
    WOrdemNUMFISCAL: TIBStringField;
    TOrdNUMFISCALINT: TIntegerField;
    TPOrdCFOP: TIBStringField;
    TPOrdCOD_CST: TIntegerField;
    TPOrdDESCNF: TIBBCDField;
    TFiscOrdCOD_PERIODOFISCAL: TIntegerField;
    TFiscOrdCOD_CFOP1: TIntegerField;
    TFiscOrdCOD_CFOP2: TIntegerField;
    TFiscOrdNUMDOCFISINT: TIntegerField;
    TPOrdAPLICARST: TIBStringField;
    TFiscOrdVLRDESCONTO: TIBBCDField;
    TOrdOBSORDEM: TMemoField;
    TFiscOrdNFEXMLDIST: TMemoField;
    TFiscOrdNFESTATUS: TSmallintField;
    TFiscOrdNFEAMBIENTE: TIntegerField;
    TFiscOrdNFECHAVE: TIBStringField;
    TFiscOrdNFEPROTOCOLO: TIBStringField;
    TFiscOrdANTT: TIBStringField;
    TFiscOrdNFEXML: TMemoField;
    TFiscOrdNFELOTE: TIBStringField;
    TFiscOrdNFERECIBO: TIBStringField;
    TFiscOrdNFEXMLCANCEL: TMemoField;
    TSubservTIPOFATURA: TIBStringField;
    WOrdemDesp: TIBQuery;
    DWOrdemDesp: TDataSource;
    TSubservCOD_CONTA: TIntegerField;
    TSubservCOD_FORMPAG: TIntegerField;
    TOrdVLRADIANTAMENTO: TIBBCDField;
    DbMdoServ: TMDODatabase;
    TMdo: TMDOTransaction;
    TMdoOS: TMDOQuery;
    DsMdoOS: TDataSource;
    TTabPreco: TIBQuery;
    UTabPreco: TIBUpdateSQL;
    DSTabPreco: TDataSource;
    TItensTabPreco: TIBQuery;
    TItensTabPrecoCOD_TABPRECO: TIntegerField;
    TItensTabPrecoCOD_ITEMTAB: TIntegerField;
    TItensTabPrecoCOD_SUBSERV: TIntegerField;
    TItensTabPrecoQTDE_MIN: TIntegerField;
    TItensTabPrecoVLR_NORMAL: TIBStringField;
    TItensTabPrecoVLR_HORAEXTRA: TIBStringField;
    TItensTabPrecoVLR_PROD: TIBBCDField;
    UItensTabPreco: TIBUpdateSQL;
    DSItensTabPreco: TDataSource;
    TItensLocacao: TIBQuery;
    TItensLocacaoCOD_SERVICO: TIntegerField;
    TItensLocacaoCOD_LOCACAO: TIntegerField;
    TItensLocacaoCOD_ORDEM: TIntegerField;
    TItensLocacaoCOD_TABPRECO: TIntegerField;
    TItensLocacaoDIA_SEMANA: TIBStringField;
    TItensLocacaoHORA_MINIMA: TTimeField;
    TItensLocacaoHMAT_INI: TTimeField;
    TItensLocacaoHMAT_FIM: TTimeField;
    TItensLocacaoHRS_NORMAIS: TTimeField;
    TItensLocacaoHRS_EXTRAS: TTimeField;
    TItensLocacaoVLR_NORMAL: TIBBCDField;
    TItensLocacaoVLR_EXTRA: TIBBCDField;
    TItensLocacaoTOTAL_NORMAL: TIBBCDField;
    TItensLocacaoTOTAL_EXTRA: TIBBCDField;
    TItensLocacaoDATA: TDateField;
    TItensLocacaoVLRSERV_COBRADO: TIBBCDField;
    TItensLocacaoTABPRECOSERV_ATIVO: TIBStringField;
    TItensLocacaoKM_INI: TIBBCDField;
    TItensLocacaoKM_FINAL: TIBBCDField;
    TItensLocacaoKM_TOTAL: TIBBCDField;
    TItensLocacaoVALORTOTKM: TIBBCDField;
    TItensLocacaoHVESP_INI: TTimeField;
    TItensLocacaoHVESP_FIM: TTimeField;
    TItensLocacaoCOD_EQUIPAMENTO: TIntegerField;
    TItensLocacaoCOD_MOTORISTA: TIntegerField;
    TItensLocacaoTABPRECOKM_ATIVO: TIBStringField;
    TItensLocacaoVLRKM_COBRADO: TIBBCDField;
    TItensLocacaoTOTAL_FINAL: TIBBCDField;
    TItensLocacaoVALORTOTHRS: TIBBCDField;
    TItensLocacaoTOTAL_HORAS: TTimeField;
    UItensLocacao: TIBUpdateSQL;
    DSItensLocacao: TDataSource;
    TServNFSE: TIBQuery;
    UServNFSE: TIBUpdateSQL;
    DSServNFSE: TDataSource;
    TServNFSECOD_SERVICO: TIntegerField;
    TServNFSENUM_SERVICO: TIBStringField;
    TServNFSEDESCRICAO: TIBStringField;
    TServNFSEATIVO: TIBStringField;
    TFiscOrdRETER_ISS: TIBStringField;
    TPOrdDTRETIRADA: TDateField;
    TPOrdHRRETIRADA: TTimeField;
    TPOrdDTRETORNO: TDateField;
    TPOrdHRRETORNO: TTimeField;
    TPOrdCOD_TABELAFAIXAPRECO: TIntegerField;
    TPOrdVALORTOTALTRIBUTA: TIBBCDField;
    TPOrdALIQUOTATOTALTRIBUTA: TIBBCDField;
    TFiscOrdALIQUOTATOTALTRIBUTA: TIBBCDField;
    TFiscOrdVALORTOTALTRIBUTA: TIBBCDField;
    TOrdPLACA2: TIBStringField;
    TOrdPLACA3: TIBStringField;
    TFiscOrdNFSE_DTEMISSAO: TDateField;
    TFiscOrdNFSE_XML: TMemoField;
    TFiscOrdNFSE_PROTOCOLO: TIBStringField;
    TFiscOrdNFSE_NUMERORPS: TIntegerField;
    TFiscOrdNFSE_SERIERPS: TSmallintField;
    TFiscOrdNFSE_NUMERODOCUMENTO: TIntegerField;
    TFiscOrdNFSE_STATUSGERAL: TIBStringField;
    TOrdSTATUSNFSE: TIBStringField;
    WOrdemSTATUSNFSE: TIBStringField;
    TOrdNUMFISCALNFSE: TIntegerField;
    WOrdemNUMFISCALNFSE: TIntegerField;
    TFiscOrdNFSE_NUMEROLOTE: TIntegerField;
    TFiscOrdNFSE_CODIGOAUTENTICIDADE: TIBStringField;
    TOrdTOTISS: TIBBCDField;
    TOrdRT_ISS: TIBStringField;
    TSubservATIVO: TSmallintField;
    WSubServATIVO: TSmallintField;
    TFiscOrdIMPOSTONFSE: TIBStringField;
    TPOrdDESGASTE_SAIDA: TIBBCDField;
    TPOrdDESGASTE_RETORNO: TIBBCDField;
    TPOrdDESGASTE_CONSUMIDO: TIBBCDField;
    TPOrdICMSCREDALIQ: TIBBCDField;
    TPOrdICMSCREDVALOR: TIBBCDField;
    TPOrdIPNMVA: TIBBCDField;
    TPOrdCTRL_HORA: TIBStringField;
    TPOrdQTDE_HORA_CONSUMIDA: TIBBCDField;
    TPOrdQTDE_HORA_RETORNO: TIBBCDField;
    TPOrdQTDE_HORA_SAIDA: TIBBCDField;
    TOrdNRCONTRATO: TIntegerField;
    TServMARK: TIBStringField;
    WServicoMARK: TIBStringField;
    TSubservDATA_REAJUSTE: TDateField;
    TSubservVLRANTIGO: TIBBCDField;
    TPOrdVALORTOTALTRIBUTAESTADUAL: TIBBCDField;
    TFiscOrdVALORTOTALTRIBUTAESTADUAL: TIBBCDField;
    TControlaExpedicao: TIBQuery;
    UControlaExpedicao: TIBUpdateSQL;
    DSControlaExpedicao: TDataSource;
    TControlaExpedicaoCOD_CONTROLE: TIntegerField;
    TControlaExpedicaoCOD_USUARIO: TIntegerField;
    TControlaExpedicaoNUM_ORDEM: TIntegerField;
    TControlaExpedicaoOPERACAO: TIBStringField;
    TControlaExpedicaoDATA_HORA: TDateTimeField;
    TOrdNUMFISCAL_DEVOLVIDA: TIBStringField;
    WOrdemNUMFISCAL_DEVOLVIDA: TIBStringField;
    TPOrdIT_DEV: TIBStringField;
    TPOrdVALORFRETE: TIBBCDField;
    TPOrdVALORDESP: TIBBCDField;
    TAcessorios: TIBQuery;
    UAcessorios: TIBUpdateSQL;
    DSAcessorios: TDataSource;
    TAcessoriosCOD_ACESSORIOS: TIntegerField;
    TAcessoriosCOD_EQUIPAMENTO: TIntegerField;
    TAcessoriosCOD_ESTOQUE: TIntegerField;
    TAcessoriosQUANTIDADE: TIBBCDField;
    TAcessoriosVALORLOCA: TIBStringField;
    TOrdGERANFSE: TIBStringField;
    TPOrdIMPRESSONFSE: TIBStringField;
    TOrdCPFCNPJ: TIBStringField;
    TOrdNOMECLI: TIBStringField;
    WOrdemNUMFISCALINT: TIntegerField;
    TSubservRECORRENCIA: TIBStringField;
    TFiscOrdURL_QRCODE: TIBStringField;
    TPOrdALIQFCPDESTINO: TIBBCDField;
    TPOrdALIQINTICMS: TIBBCDField;
    TPOrdALIQEXTICMS: TIBBCDField;
    TPOrdALIQPROVPARTILHA: TIntegerField;
    
    TPOrdVLRICMSFCP: TIBBCDField;
    TPOrdVLRICMSINTDEST: TIBBCDField;
    TPOrdVLRICMSINTREMET: TIBBCDField;

    TPOrdQTD4CASAS: TIBStringField;
    TPOrdNUMPEDCOMPRANFE: TIBStringField;
    TPOrdNUMITEMPEDCOMPRANFE: TIBStringField;
    TPOrdBASEICMSUFDEST: TIBBCDField;
    TFiscOrdCONTINGENCIA: TIBStringField;
    TPOrdVALORCUSTOUNITARIONOTAFISCAL: TIBBCDField;
    TOrdDTAGENDADO: TDateField;
    WOrdemDTAGENDADO: TDateField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMServ: TDMServ;

implementation

{$R *.DFM}

end.
