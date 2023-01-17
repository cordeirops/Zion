
unit UDMEstoque;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, IBCustomDataSet, IBUpdateSQL, IBQuery, IBDatabase, IBEvents, DBClient,
  Provider, MDODatabase, MDOCustomDataSet, MDOQuery;

type
  TDMESTOQUE = class(TDataModule)
    UPGrupo: TIBUpdateSQL;
    TGrupo: TIBQuery;
    DSGrupo: TDataSource;
    TSubgru: TIBQuery;
    UPSubgru: TIBUpdateSQL;
    TSubgruCOD_SUBGRUPOPROD: TIntegerField;
    TSubgruDESCRICAO: TIBStringField;
    TSubgruCOD_INTERNO: TIBStringField;
    DSSubgru: TDataSource;
    TUnidade: TIBQuery;
    UPUnidade: TIBUpdateSQL;
    DSUnidade: TDataSource;
    TUnidadeCOD_UNIDADE: TIntegerField;
    TUnidadeSIGLA_UNID: TIBStringField;
    UPProduto: TIBUpdateSQL;
    DSProduto: TDataSource;
    TCFOP: TIBQuery;
    UPCFOP: TIBUpdateSQL;
    DSCFOP: TDataSource;
    TCFOPCOD_CFOP: TIntegerField;
    TCFOPDESCRICAO: TIBStringField;
    TCFOPCFOP: TIBStringField;
    TCFOPLOCAL: TIBStringField;
    TCFOPTIPOCFOP: TIBStringField;
    TCFOPCOD_PLNCTAFIL: TIntegerField;
    TSubProd: TIBQuery;
    UPSubProd: TIBUpdateSQL;
    DSSubProd: TDataSource;
    TGrupoCOD_GRUPOPROD: TIntegerField;
    TGrupoDESCRICAO: TIBStringField;
    TGrupoCOD_INTERNO: TIBStringField;
    TCST: TIBQuery;
    UPCST: TIBUpdateSQL;
    TCSTCOD_CST: TIntegerField;
    TCSTDESCRICAO: TIBStringField;
    TCSTCOD_SIT_TRIB: TIBStringField;
    DSCST: TDataSource;
    TProduto: TIBQuery;
    TEstoque: TIBQuery;
    UPEstoque: TIBUpdateSQL;
    DSEstoque: TDataSource;
    TUnidadeDESC_UNID: TIBStringField;
    Alx: TIBQuery;
    DSAlx: TDataSource;
    WProduto: TIBQuery;
    DWProduto: TDataSource;
    DWSimilar: TDataSource;
    TSlave: TIBQuery;
    DSSlave: TDataSource;
    TRel: TIBQuery;
    DRel: TDataSource;
    TGrupoTIPO: TIBStringField;
    TSubgruTIPO: TIBStringField;
    DBEstoque: TIBDatabase;
    TProdutoCOD_PRODUTO: TIntegerField;
    TProdutoCOD_INTERNO: TIBStringField;
    TProdutoDESCRICAO: TIBStringField;
    TProdutoAPLICACAO: TIBStringField;
    TProdutoCOD_SUBGRUPOPROD: TIntegerField;
    TProdutoCOD_GRUPOPROD: TIntegerField;
    TProdutoCOD_CST: TIntegerField;
    TProdutoCOD_LOJA: TIntegerField;
    Alx1: TIBQuery;
    DSAlx1: TDataSource;
    Alx2: TIBQuery;
    DSAlx2: TDataSource;
    Alx3: TIBQuery;
    DSAlx3: TDataSource;
    Alx4: TIBQuery;
    DSAlx4: TDataSource;
    TRel1: TIBQuery;
    DRel1: TDataSource;
    TRel2: TIBQuery;
    DRel2: TDataSource;
    TRel1PRODUTO: TIBStringField;
    TRel1MARCA: TIBStringField;
    TRel1DATA: TDateField;
    TRel1DESCONTO: TIBBCDField;
    TRel1LUCMOE: TIBBCDField;
    TRel1LUCPER: TIBBCDField;
    TRel1NUMREQ: TIBStringField;
    TRel1QTD: TIBBCDField;
    TRel1TOTAL: TIBBCDField;
    TRel1VLRUNIT: TIBBCDField;
    TRel2SERVICO: TIBStringField;
    TRel2DATA: TDateField;
    TRel2DESCONTO: TIBBCDField;
    TRel2LUCMOE: TIBBCDField;
    TRel2LUCPER: TIBBCDField;
    TRel2QTD: TIBStringField;
    TRel2TOTAL: TIBBCDField;
    TRel2VLRUNIT: TIBBCDField;
    TDesp: TIBQuery;
    UDesp: TIBUpdateSQL;
    DDesp: TDataSource;
    TProduc: TIBQuery;
    UProduc: TIBUpdateSQL;
    DProduc: TDataSource;
    TProducCOD_PRODUCAO: TIntegerField;
    TProducCOD_FCHTECPROD: TIntegerField;
    TProducDTPRODUC: TDateField;
    TProducPRODUZIDO: TIBStringField;
    TProducQTD: TIBBCDField;
    TIPrdMat: TIBQuery;
    UIPrdMat: TIBUpdateSQL;
    DPrdMat: TDataSource;
    TIPrdMao: TIBQuery;
    UIPrdMao: TIBUpdateSQL;
    DPrdMao: TDataSource;
    TIPrdMaoCOD_IPRDMAO: TIntegerField;
    TIPrdMaoCOD_PRODUCAO: TIntegerField;
    TIPrdMaoCOD_SUBSERVICO: TIntegerField;
    TIPrdMaoQTD: TIBBCDField;
    TIPrdMaoCLASS: TIBStringField;
    TIPrdMaoVLRUNIT: TIBBCDField;
    TIPrdMaoVLRTOT: TIBBCDField;
    TIPrdMatCOD_IPRDMAT: TIntegerField;
    TIPrdMatCOD_PRODUCAO: TIntegerField;
    TIPrdMatCOD_SUBPRODUTO: TIntegerField;
    TIPrdMatQTD: TIBBCDField;
    TIPrdMatCLASS: TIBStringField;
    TIPrdMatVLRUNIT: TIBBCDField;
    TIPrdMatVLRTOT: TIBBCDField;
    TRFch: TIBQuery;
    TRFchP: TIBQuery;
    TRFchM: TIBQuery;
    DRFchM: TDataSource;
    DRFchP: TDataSource;
    DRFch: TDataSource;
    TRFchD: TIBQuery;
    DRFchD: TDataSource;
    TSlaveServ: TIBQuery;
    DSSlaveServ: TDataSource;
    TProducVLRTOTAL: TIBBCDField;
    TConvert: TIBQuery;
    UConvert: TIBUpdateSQL;
    DConvert: TDataSource;
    TConvertCOD_CONVUNID: TIntegerField;
    TConvertCOD_UNIDENT: TIntegerField;
    TConvertCOD_UNIDSAI: TIntegerField;
    TConvertQTDCONVERT: TIBStringField;
    TUnidadeARREDONDAR: TIBStringField;
    TCSTINDICEECF: TIBStringField;
    TProdutoVENDVISTA: TIBBCDField;
    TProdutoVENDPRAZO: TIBBCDField;
    TProdutoCUSTOVENDA: TIBBCDField;
    TProdutoCOMPVISTA: TIBBCDField;
    TProdutoCOMPPRAZO: TIBBCDField;
    TProdutoQTDCOMP: TIBBCDField;
    TProdutoQTDVEND: TIBBCDField;
    TCodBarra: TIBQuery;
    UCodBarra: TIBUpdateSQL;
    DCodBarra: TDataSource;
    TCodBarraCOD_ESTOQUE: TIntegerField;
    TransacEstoque: TIBTransaction;
    TCodBarraCODBARRA: TIBStringField;
    TRel3: TIBQuery;
    DRel3: TDataSource;
    TRel4: TIBQuery;
    DSRel4: TDataSource;
    TRel4COD_ORDEM: TIntegerField;
    TRel4QTD: TIBBCDField;
    TRel4TOTAL: TIBBCDField;
    TRel4VLRUNIT: TIBBCDField;
    TRel4COD_ESTOQUE: TIntegerField;
    TRel4COD_ESTOQUE1: TIntegerField;
    TRel4COD_SUBPROD: TIntegerField;
    TRel4COD_SUBPRODUTO: TIntegerField;
    TRel4PRODUTO: TIBStringField;
    TRel3COD_GERADOR: TIntegerField;
    TRel3COD_DESPADIC: TIntegerField;
    TRel3COD_EQUIPE: TIntegerField;
    TRel3DESPESA: TIBStringField;
    TRel3VLRFINAL: TIBBCDField;
    TRel3VLRTOTFIN: TIBBCDField;
    TRel3QTD: TIBBCDField;
    TRel3COD_EQUIPE1: TIntegerField;
    TRel3EQUIPE: TIBStringField;
    TRel4DESCONTO: TIBBCDField;
    TRel3DESCONTO: TIBBCDField;
    Alx5: TIBQuery;
    DsAlx5: TDataSource;
    TCSTSUBSTITUICAO: TIBStringField;
    TMotoristaVeiculo: TIBQuery;
    UMotoristaVeiculo: TIBUpdateSQL;
    DMotoristaVeiculo: TDataSource;
    CDS: TClientDataSet;
    DSP: TDataSetProvider;
    DataSource1: TDataSource;
    TEstoqueCOD_ESTOQUE: TIntegerField;
    TEstoqueCOD_LOJA: TIntegerField;
    TEstoqueCOD_SUBPROD: TIntegerField;
    TEstoqueULTCOMPRA: TDateField;
    TEstoqueULTVENDA: TDateField;
    TEstoqueESTMAX: TFloatField;
    TEstoqueESTMIN: TFloatField;
    TEstoqueICMS: TFloatField;
    TEstoqueFRETE: TFloatField;
    TEstoqueESTFISICO: TFloatField;
    TEstoqueESTRESERV: TFloatField;
    TEstoqueESTPED: TFloatField;
    TEstoqueESTSALDO: TFloatField;
    TEstoqueCVVPROAT: TFloatField;
    TEstoqueCVPPROAT: TFloatField;
    TEstoqueCVVPROVAR: TFloatField;
    TEstoqueCVPPROVAR: TFloatField;
    TEstoqueVENDATAP: TIBBCDField;
    TEstoqueVENDATAV: TIBBCDField;
    TEstoqueVENDVARP: TIBBCDField;
    TEstoqueVENDVARV: TIBBCDField;
    TEstoqueVALUNIT: TIBBCDField;
    TEstoqueVALREP: TIBBCDField;
    TEstoqueVALCUSTO: TIBBCDField;
    TEstoqueAVVPROAT: TIBBCDField;
    TEstoqueAVPPROAT: TIBBCDField;
    TEstoqueAVVPROVAR: TIBBCDField;
    TEstoqueAVPPROVAR: TIBBCDField;
    TEstoqueLUCRATIVIDADE: TIBBCDField;
    TEstoqueCOEFDIV: TIBBCDField;
    TEstoqueVALOREST: TIBBCDField;
    TEstoqueOUTROS: TIBBCDField;
    TEstoqueQUANT2: TIBBCDField;
    TEstoqueDTCAD: TDateField;
    TEstoqueESTINI: TIBBCDField;
    TEstoqueVALCUSDESP: TIBBCDField;
    TEstoqueESTANTCONT: TIBBCDField;
    TEstoqueCONTAGEM: TIBBCDField;
    TEstoqueESTSIMULADO: TIBBCDField;
    TEstoqueVLRUNITCOMP: TIBBCDField;
    TEstoqueINDICE: TIBBCDField;
    TEstoqueBONIFICACAO: TIBBCDField;
    TEstoqueVLRBONIFIC: TIBBCDField;
    TEstoqueDESCONTO: TIBBCDField;
    TEstoqueCLNC: TIBBCDField;
    TEstoqueMOD: TIBBCDField;
    TEstoqueIMPEXP: TIBBCDField;
    TEstoqueIMPREND: TIBBCDField;
    TEstoqueCONTSOC: TIBBCDField;
    TEstoqueCOFINS: TIBBCDField;
    TEstoquePIS: TIBBCDField;
    TEstoqueMARGEMSEG: TIBBCDField;
    TEstoquePERCMARGSEG: TIBBCDField;
    TEstoqueREDUCBASE: TIBBCDField;
    TEstoqueVLRCOMPSD: TIBBCDField;
    TEstoqueACRECIMO: TIBBCDField;
    TEstoqueESTCALC: TIBBCDField;
    TEstoqueDATAATU: TDateField;
    TEstoqueHORAATU: TTimeField;
    TEstoquePRECOOFERTA: TIBBCDField;
    TEstoqueDATAOFERTA: TDateField;
    TEstoqueVENCIMENTOOFERTA: TDateField;
    TEstoqueCOD_USUARIOALT: TIntegerField;
    TEstoqueULTVLR_VNDVVAR: TIBBCDField;
    TEstoqueULTVLR_VNDPVAR: TIBBCDField;
    TEstoqueULTVLR_VNDVATAC: TIBBCDField;
    TEstoqueULTVLR_VPATAC: TIBBCDField;
    TEstoqueMEDIABASEICMST: TIBBCDField;
    TEstoqueMEDIAVLRICMST: TIBBCDField;
    TEstoqueIPI_VND: TIBBCDField;
    TEstoquePMC: TIBBCDField;
    TEstoqueMVA: TIBBCDField;
    TCFOPNCI: TIBStringField;
    TEstoqueGERACOMIS: TIntegerField;
    WProdutoCOD_PRODUTO: TIntegerField;
    WProdutoCOD_GRUPOPROD: TIntegerField;
    WProdutoCOD_SUBGRUPOPROD: TIntegerField;
    WProdutoCOD_INTERNO: TIBStringField;
    WProdutoPRODUTO: TIBStringField;
    WProdutoAPLICACAO: TIBStringField;
    WProdutoCOD_CST: TIntegerField;
    WProdutoCI_GRUPO: TIBStringField;
    WProdutoGRUPO: TIBStringField;
    WProdutoCI_SUBGRUPO: TIBStringField;
    WProdutoSUBGRUPO: TIBStringField;
    TMotoristaVeiculoCOD_MOTORISTAVEICULO: TIntegerField;
    TMotoristaVeiculoCOD_PEDVENDA: TIntegerField;
    TMotoristaVeiculoCOD_EQUIPAMENTO: TIntegerField;
    TMotoristaVeiculoCOD_FUNCIONARIO: TIntegerField;
    TMotoristaVeiculoDTENTRADA: TDateField;
    TMotoristaVeiculoDTSAIDA: TDateField;
    TMotoristaVeiculoHRENTRADA: TTimeField;
    TMotoristaVeiculoHRSAIDA: TTimeField;
    TMotoristaVeiculoTARA: TIBBCDField;
    TRFchCOD_FCHTECPROD: TIntegerField;
    TRFchCONTRINT: TIBStringField;
    TRFchCODFABRICANTE: TIBStringField;
    TRFchDESCRICAO: TIBStringField;
    TRFchMARCA: TIBStringField;
    TRFchPORCAO: TIBBCDField;
    TRFchDTPRODUC: TDateField;
    TRFchPCONTRINT: TIBStringField;
    TRFchPDESCRICAO: TIBStringField;
    TRFchPCLASS: TIBStringField;
    TRFchPQTDUTILIZ: TIBBCDField;
    TRFchPVLRUNIT: TIBBCDField;
    TRFchPVLRTOT: TIBBCDField;
    TRFchMDESCRICAO: TIBStringField;
    TRFchMCLASS: TIBStringField;
    TRFchMQTDUTILIZ: TIBBCDField;
    TRFchMVLRTOT: TIBBCDField;
    TRFchMVLRUNIT: TIBBCDField;
    TRFchDCOD_DESPADIC: TIntegerField;
    TRFchDCOD_GERADOR: TIntegerField;
    TRFchDGERADOR: TIBStringField;
    TRFchDDESPESA: TIBStringField;
    TRFchDQTD: TIBBCDField;
    TRFchDVLRREAL: TIBBCDField;
    TRFchDVLRFINAL: TIBBCDField;
    TRFchDLUCMOE: TIBBCDField;
    TRFchDLUCPER: TIBBCDField;
    TRFchDVLRTOTFIN: TIBBCDField;
    TRFchDDESCONTO: TIBBCDField;
    TRFchDMARCA: TIBStringField;
    TRFchDUNIDADE: TIBStringField;
    TRFchDCOD_EQUIPE: TIntegerField;
    TRFchDCOD_FUNCIONARIO: TIntegerField;
    TSubProdCOD_SUBPRODUTO: TIntegerField;
    TSubProdCODCOMPOSTO: TIBStringField;
    TSubProdCODPRODFABR: TIBStringField;
    TSubProdFABRICANTE: TIBStringField;
    TSubProdMARCA: TIBStringField;
    TSubProdQUANTGARANTIA: TFloatField;
    TSubProdTIPOGARANTIA: TIBStringField;
    TSubProdLOCALESTANTE: TIBStringField;
    TSubProdATIVO: TIBStringField;
    TSubProdIPIPROD: TFloatField;
    TSubProdPESOLIQ: TFloatField;
    TSubProdPESOBRUTO: TFloatField;
    TSubProdCOD_PRODUTO: TIntegerField;
    TSubProdCOD_INTERNO: TIBStringField;
    TSubProdMOTIVO: TIBStringField;
    TSubProdQTDATC: TIBBCDField;
    TSubProdEMBPROD: TIBBCDField;
    TSubProdLOTE: TIBStringField;
    TSubProdPENEIRA: TIBStringField;
    TSubProdGERMI: TIBBCDField;
    TSubProdPUREZA: TIBBCDField;
    TSubProdATESTVAL: TIBStringField;
    TSubProdATESTGAR: TIBStringField;
    TSubProdSAFRA: TIBStringField;
    TSubProdCOD_UNIDCOMPRA: TIntegerField;
    TSubProdCOD_UNIDVENDA: TIntegerField;
    TSubProdCOD_CST: TIntegerField;
    TSubProdDTCAD: TDateField;
    TSubProdCODEAN1: TIBStringField;
    TSubProdCONTRINT: TIBStringField;
    TSubProdCOR: TIBStringField;
    TSubProdCLASSIFICACAO: TIBStringField;
    TSubProdDESCCUPOM: TIBStringField;
    TSubProdNCM: TIBStringField;
    TSubProdCOMPOSICAO: TIBStringField;
    TSubProdALTURA: TIBStringField;
    TSubProdLARGURA: TIBStringField;
    TSubProdESPECIFICACAO: TIBStringField;
    TSubProdMARK: TIBStringField;
    TSubProdBALANCA: TIBStringField;
    TSubProdANVISA: TIBStringField;
    TSubProdMINSAUDE: TIBStringField;
    TSubProdDENSIDADE: TSmallintField;
    TCFOPTXTCFOP: TIBStringField;
    TCFOPDEVOLUCAO: TIBStringField;
    TCSTREDUCAO: TIBStringField;
    WSimilar: TIBQuery;
    WSimilarCOD_SUBPRODUTO: TIntegerField;
    WSimilarCODCOMPOSTO: TIBStringField;
    WSimilarCODBARRA: TIBStringField;
    WSimilarMARCA: TIBStringField;
    WSimilarCOD_INTERNO: TIBStringField;
    WSimilarCOD_PRODUTO: TIntegerField;
    WSimilarCOD_ESTOQUE: TIntegerField;
    WSimilarCOD_LOJA: TIntegerField;
    WSimilarULTCOMPRA: TDateField;
    WSimilarULTVENDA: TDateField;
    WSimilarESTFISICO: TFloatField;
    WSimilarVENDVARP: TIBBCDField;
    WSimilarVANDATAP: TIBBCDField;
    WSimilarVENDATAV: TIBBCDField;
    WSimilarVENDVARV: TIBBCDField;
    WSimilarCODFABRICANTE: TIBStringField;
    WSimilarCONTRINT: TIBStringField;
    WSimilarVLRBONIFIC: TIBBCDField;
    WSimilarESPECIFICACAO: TIBStringField;
    WSimilarMARK: TIBStringField;
    WSimilarVLRUNITCOMPRA: TIBBCDField;
    WSimilarLOCALESTANTE: TIBStringField;
    TCSTVENDA: TIBStringField;
    TSubProdUSOCONSUMO: TIBStringField;
    TEstoqueATUALIZAR: TIBStringField;
    TNcm: TIBQuery;
    UNcm: TIBUpdateSQL;
    DNcm: TDataSource;
    TNcmNCM: TIBStringField;
    TNcmDESCRICAO: TIBStringField;
    TCodBarraCODFORNERC: TIntegerField;
    TVendaAgrupada: TIBQuery;
    UVendaAgrupada: TIBUpdateSQL;
    DVendaAgrupada: TDataSource;
    TVendaAgrupadaCOD_VENDAAGRUPADA: TIntegerField;
    TItemVenAg: TIBQuery;
    UItemVenAg: TIBUpdateSQL;
    DItemVenAg: TDataSource;
    TItemVenAgCOD_ITENVENDAAGRUP: TIntegerField;
    TItemVenAgCOD_VENDAAGRUPADA: TIntegerField;
    TItemVenAgCOD_ESTOQUE: TIntegerField;
    TItemVenAgQUANTIDADE: TIntegerField;
    DEstoqueLote: TDataSource;
    UEstoqueLote: TIBUpdateSQL;
    TEstoqueLote: TIBQuery;
    TEstoqueLoteCOD_ESTOQUELOTE: TIntegerField;
    TEstoqueLoteCOD_ESTOQUE: TIntegerField;
    TEstoqueLoteCOD_LOTE: TIntegerField;
    TEstoqueLoteQUANTIDADE: TIBBCDField;
    DProducaoLote: TDataSource;
    UProducaoLote: TIBUpdateSQL;
    TProducaoLote: TIBQuery;
    TProducaoLoteCOD_PRODUCAOLOTE: TIntegerField;
    TProducaoLoteQUANTSAIDA: TIBBCDField;
    TProducaoLoteQUANTENT: TIBBCDField;
    TProducaoLoteCOD_LOTE_ENT: TIntegerField;
    TProducaoLoteCOD_LOTE_SAIDA: TIntegerField;
    TProducaoLoteDATA: TDateField;
    TProducaoLoteCODUSUARIO: TIntegerField;
    TEstoqueESTLOJA: TIBBCDField;
    WSimilarESTLOJA: TIBBCDField;
    TCSTISENTA: TIBStringField;
    TEstoqueEXPORTAR: TIBStringField;
    TCodBarraCOD_CODBARRA: TIntegerField;
    DsMdoSlq01: TDataSource;
    DsMdoSql02: TDataSource;
    TSubProdOBSFISCAL: TIBStringField;
    TCSTICMSOP: TIBStringField;
    TSubProdGERARPISCOFINS: TIBStringField;
    TNcmALIQTOTALTRIBUTANAC: TIBBCDField;
    TNcmALIQTOTALTRIBUTAIMP: TIBBCDField;
    TSubProdCOMPLEMENTOFISCAL: TIBStringField;
    TSubProdCODBARRA: TIBStringField;
    TEstoqueAVPPROIND: TIBBCDField;
    TEstoqueAVVPROIND: TIBBCDField;
    TEstoqueVENDINDP: TIBBCDField;
    TEstoqueVENDINDV: TIBBCDField;
    TSubProdCTRL_DESGASTE: TIBStringField;
    TSubProdCTRL_HORA: TIBStringField;
    TCSTAPROVEITACREDITO: TIBStringField;
    TSubProdCOD_CFOPDENTROESTADO: TIntegerField;
    TSubProdCOD_CFOPFORAESTADO: TIntegerField;
    TSubProdANP: TIBStringField;
    TFichaTecnica: TIBQuery;
    UFichaTecnica: TIBUpdateSQL;
    DFichaTecnica: TDataSource;
    TFichaTecnicaCOD_SETOR: TIntegerField;
    TSetorProducao: TIBQuery;
    USetorProducao: TIBUpdateSQL;
    DSetorProducao: TDataSource;
    TItemFichaTecnica: TIBQuery;
    UItemFichaTecnica: TIBUpdateSQL;
    DItemFichaTecnica: TDataSource;
    TSetorProducaoCOD_SETORPRODUCAO: TIntegerField;
    TSetorProducaoDESCRICAO: TIBStringField;
    TItemFichaTecnicaCOD_ITEMFICHATECNICA: TIntegerField;
    TItemFichaTecnicaCOD_ESTOQUE: TIntegerField;
    TItemFichaTecnicaCOD_SETORPRODUCAO: TIntegerField;
    TItemFichaTecnicaQUANTIDADE: TIBBCDField;
    TSubProdCOMPONENTE: TIBStringField;
    TFichaTecnicaCOD_ESTOQUE: TIntegerField;
    //TItemFichaTecnicaCOD_FICHATECNICA: TIntegerField;
    TItemFichaTecnicaCOD_FICHATECNICA: TIntegerField;
    TNcmVALORAPROXTRIBUTACAO: TIBBCDField;
    //TNcmVALORAPROXTRIBUTACAO: TIBBCDField;
    TNcmALIQTOTALTRIBUTAEST: TIBBCDField;
    //TNcmALIQTOTALTRIBUTAEST: TIBBCDField;
    TItensExp: TIBQuery;
    UItensExp: TIBUpdateSQL;
    DItensExp: TDataSource;
    TVolumes: TIBQuery;
    UVolumes: TIBUpdateSQL;
    DVolumes: TDataSource;
    TItensVolume: TIBQuery;
    UItensVolume: TIBUpdateSQL;
    DItensVolume: TDataSource;
    TItensExpCOD_ITENSEXP: TIntegerField;
    TItensExpCOD_ITENSPEDVEN: TIntegerField;
    TItensExpCONTRINT: TIBStringField;
    TItensExpQTDENTREGUE: TIBBCDField;
    TItensExpQTDDISPONIVEL: TIBBCDField;
    TItensExpDESCRICAO: TIBStringField;
    TItensExpCODBARRA: TIBStringField;
    TItensExpCOD_PEDVEN: TIntegerField;
    TItensExpCOD_ESTOQUE: TIntegerField;
    TVolumesCOD_VOLUME: TIntegerField;
    TVolumesCOD_PEDIDO: TIntegerField;
    TVolumesDESCRICAO: TIBStringField;
    TItensVolumeCOD_ITENSVOLUME: TIntegerField;
    TItensVolumeCOD_ITEM: TIntegerField;
    TItensVolumeQUANTIDADE: TIntegerField;
    TItensVolumeCOD_VOL: TIntegerField;
    TVolumesSTATUS: TIBStringField;
    TVolumesNUMVOLUME: TIntegerField;
    TCodBarraQTDEMB: TIntegerField;
    TCFOPNAOGERAST: TIBStringField;
    TCFOPNAOGERAICMSOP: TIBStringField;
    TProdutoATIVO: TIBStringField;
    TSubProdDESCRICAO: TIBStringField;
    WSimilarDESCRICAO: TIBStringField;
    TNcmCEST: TIBStringField;
    TNcmATIVO: TIBStringField;
    TSubProdEST_PERMANENTE: TIBStringField;
    WSimilarATIVO: TIBStringField;
    WSimilarIPI: TFloatField;
    WSimilarST: TIBBCDField;
    TCSTDIFERENCIAL_ALIQ: TIBStringField;
    TEstoqueESTOQUE4CASAS: TIBStringField;
    WSimilarESTOQUE4CASAS: TIBStringField;
    TEstoqueVALCUSTONFE: TIBBCDField;
    WSimilarVLRCUSTONFE: TIBBCDField;
    TSubProdDESCRICAO_ANP: TIBStringField;
    TCustoItemPedido: TIBQuery;
    UCustoItemPedido: TIBUpdateSQL;
    DSTCustoItemPedido: TDataSource;
    TCustoItemPedidoCOD_CUSTOITEMPEDIDO: TIntegerField;
    TCustoItemPedidoCOD_CUSTOESTOQUEEMPRESA: TIntegerField;
    TCustoItemPedidoCOD_GERADOR: TIntegerField;
    TCustoItemPedidoTIPOGERADOR: TIBStringField;
    TCustoItemPedidoQUANTIDADE: TIBBCDField;
    TCustoItemPedidoVALORCUSTOANTERIOR: TIBBCDField;
    TEstoqueCOMPALIQST: TIBBCDField;
    TEstoqueCOMPVLRST: TIBBCDField;
    TEstoqueCOMPVLRBCST: TIBBCDField;
    TEstoqueCOMPVLRICMS: TIBBCDField;
    TSubProdCODIGOBENEFICIOFISCAL: TIBStringField;
    procedure EventEstoqueEventAlert(Sender: TObject; EventName: String;
      EventCount: Integer; var CancelAlerts: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
	 Function CalcCodIntProd(Composto: String): Integer;//Encontra o próximo codigo interno para produtos de código composto
	 Function CalcCodIntServ(Composto: String): Integer;//Encontra o próximo codigo interno para serviço de código composto
	 Function CalcCodIntSUBServ(composto: String): Integer; //Encontra o próximo codigo interno para subSERVICO de código composto
	 Function CalcCodIntSUBProd(composto: String): Integer; //Encontra o próximo codigo interno para subprodutos de código composto
	 Procedure CalcCustMed(XCODESTOQUE: Integer; XTIPO: Char; XQtd: Real; XCustTotal: Real); //procedure utilizada para efetuar o calculo do custo médio através da venda
  end;


var
  DMESTOQUE: TDMESTOQUE;

implementation

uses UMenu, Alxor32, UDMMacs;

{$R *.DFM}

//Encontra o próximo codigo interno para subprodutos de código composto
Function TDMESTOQUE.CalcCodIntSUBServ(composto: String): Integer;
Begin
   DMEstoque.Alx.Close;
   DMEstoque.Alx.SQL.Clear;
   DMEstoque.Alx.SQL.Add('SELECT MAX(COD_INTERNO) AS CODINTERNO FROM SUBSERVICO WHERE CODCOMPOSTO LIKE '+#39+Composto+'%'+#39);
	DMEstoque.Alx.Open;
   If DMEstoque.Alx.FieldByName('CODINTERNO').AsString=''
   Then Begin
	   Result:=1
   End
   Else Begin
       Result:=StrToInt(DMEstoque.Alx.FieldByName('CODINTERNO').AsString)+1;
   End;
End;

//procedure utilizada para efetuar o calculo do custo médio através da venda
Procedure TDMEstoque.CalcCustMed(XCODESTOQUE: Integer; XTIPO: Char; XQtd: Real; XCustTotal: Real);
Begin
   DMESTOQUE.TEstoque.Edit;
  	If (XCustTotal = 0) AND (DMESTOQUE.TEstoque.FieldByName('VALCUSTO').AsCurrency > 0) Then
		XCustTotal := XQtd * DMESTOQUE.TEstoque.FieldByName('VALCUSTO').AsCurrency
   else begin
       DMESTOQUE.TEstoque.FieldByName('VALCUSTO').AsCurrency := DMESTOQUE.TEstoque.FieldByName('VALUNIT').AsCurrency;
       XCustTotal := XQtd * DMESTOQUE.TEstoque.FieldByName('VALUNIT').AsCurrency;
   end;

	//Verifica o Tipo se é Compra ou Venda
   If (XTIPO='E')
   Then Begin//o tipo da operação é de compra
   	If DMESTOQUE.TEstoque.FieldByName('VALOREST').AsCurrency<=0
       Then Begin//Quando não houver nenhum registro de calculo
           DMESTOQUE.TEstoque.FieldByName('VALOREST').Value:=XCustTotal;
           If (XCustTotal>0) Then // Para evitar custo médio negativo
          		DMESTOQUE.TEstoque.FieldByName('VALCUSTO').Value:=XCustTotal/XQtd;
       End
   	Else Begin//quando já houver registro dfe calculo
			DMESTOQUE.TEstoque.FieldByName('VALOREST').AsCurrency:=DMESTOQUE.TEstoque.FieldByName('VALOREST').AsCurrency+XCustTotal;
           Try
  	            If (DMESTOQUE.TEstoque.FieldByName('VALOREST').AsCurrency>0) Then // Para evitar custo médio negativo
					DMESTOQUE.TEstoque.FieldByName('VALCUSTO').AsCurrency:=DMESTOQUE.TEstoque.FieldByName('VALOREST').AsCurrency/(DMESTOQUE.TEstoque.FieldByName('ESTFISICO').AsCurrency+XQtd);
           Except
				DMESTOQUE.TEstoque.FieldByName('VALCUSTO').AsCurrency:=0;
           End;
       End;
   End
   Else Begin//o tipo da operação é de venda
   	If DMESTOQUE.TEstoque.FieldByName('VALOREST').AsCurrency>=0
       Then Begin//Quando não houver nenhum registro de calculo
           DMESTOQUE.TEstoque.FieldByName('VALOREST').Value:=DMESTOQUE.TEstoque.FieldByName('VALOREST').Value-(DMESTOQUE.TEstoque.FieldByName('VALCUSTO').AsCurrency*XQtd);
       End;
   End;
   DMESTOQUE.TEstoque.Post;
   DMESTOQUE.TransacEstoque.CommitRetaining;
End;
//Encontra o próximo codigo interno para subprodutos de código composto
Function TDMESTOQUE.CalcCodIntSUBProd(composto: String): Integer;
Begin
   DMEstoque.Alx.Close;
   DMEstoque.Alx.SQL.Clear;
   DMEstoque.Alx.SQL.Add('SELECT MAX(COD_INTERNO) AS CODINTERNO FROM SUBPRODUTO WHERE CODCOMPOSTO LIKE '+#39+Composto+'%'+#39);
	DMEstoque.Alx.Open;
   If DMEstoque.Alx.FieldByName('CODINTERNO').AsString=''
   Then Begin
	   Result:=1
   End
   Else Begin
       Result:=StrToInt(DMEstoque.Alx.FieldByName('CODINTERNO').AsString)+1;
   End;
End;

//Encontra o próximo codigo interno para serviço de código composto
Function TDMESTOQUE.CalcCodIntServ(composto: String): Integer;
Begin
   DMEstoque.Alx.Close;
   DMEstoque.Alx.SQL.Clear;
   DMEstoque.Alx.SQL.Add('SELECT MAX(SERVICO.COD_INTERNO) AS CODINTERNO FROM SERVICO JOIN SUBSERVICO ON SERVICO.COD_SERVICO = SUBSERVICO.COD_SERVICO WHERE CODCOMPOSTO LIKE '+#39+Composto+'%'+#39);
	DMEstoque.Alx.Open;
   If DMEstoque.Alx.FieldByName('CODINTERNO').AsString='' Then
	   Result:=1
   Else
       Result:=StrToInt(DMEstoque.Alx.FieldByName('CODINTERNO').AsString)+1;
End;

//Encontra o próximo codigo interno para produtos de código composto
Function TDMESTOQUE.CalcCodIntProd(composto: String): Integer;
Begin
   DMEstoque.Alx.Close;
   DMEstoque.Alx.SQL.Clear;
   DMEstoque.Alx.SQL.Add('SELECT MAX(PRODUTO.COD_INTERNO) AS CODINTERNO FROM PRODUTO JOIN SUBPRODUTO ON PRODUTO.COD_PRODUTO = SUBPRODUTO.COD_PRODUTO WHERE CODCOMPOSTO LIKE '+#39+Composto+'%'+#39);
	DMEstoque.Alx.Open;
   If DMEstoque.Alx.FieldByName('CODINTERNO').AsString='' Then
	   Result:=1
   Else
       Result:=StrToInt(DMEstoque.Alx.FieldByName('CODINTERNO').AsString)+1;
End;

procedure TDMESTOQUE.EventEstoqueEventAlert(Sender: TObject;
  EventName: String; EventCount: Integer; var CancelAlerts: Boolean);
begin

{    //**********************************************************
    // T R A T A M E N T O   P A R A   A L T E R A Ç Õ E S
    //**********************************************************

    //Atualização para alterações FRUPO PRODUTO
    If (EventName='UPDATEGRUPOPROD') OR (EventName='DELGRUPOPROD') OR (EventName='INSGRUPOPROD')
    Then Begin
        If Not (TGrupo.state in [dsinsert, dsedit])
        Then Begin
            Atu(TGRUPO);
        End;
    End;
    //Atualização para alterações SUBGRUPO
    If (EventName='UPDATESUBGRUPOPROD') OR (EventName='DELSUBGRUPOPROD') OR (EventName='INSSUBGRUPOPROD')
    Then Begin
        If Not (TSUBGru.state in [dsinsert, dsedit])
        Then Begin
            Atu(TSUBGRU);
        End;
    End;
    //Atualização para alterações PRODUTO
    If (EventName='UPDATEPRODUTO') OR (EventName='DELPRODUTO') OR (EventName='INSPRODUTO')
    Then Begin
        If Not (TPRODUTO.state in [dsinsert, dsedit])
        Then Begin
            Atu(TPRODUTO);
            Atu(TESTOQUE);
        End;
    End;
    //Atualização para alterações SIMILARES
    If (EventName='UPDATESUBPRODUTO') OR (EventName='DELSUBPRODUTO') OR (EventName='INSSUBPRODUTO')
    Then Begin
        If Not (TSUBPROD.state in [dsinsert, dsedit])
        Then Begin
            Atu(TSUBPROD);
            Atu(TESTOQUE);
        End;
    End;
    //Atualização para alterações ESTOQUE
    If (EventName='UPDATEESTOQUE') OR (EventName='DELESTOQUE') OR (EventName='INSESTOQUE')
    Then Begin
        If Not (TESTOQUE.state in [dsinsert, dsedit])
        Then Begin
            Atu(TESTOQUE);
        End;
    End;
    //Atualização para alterações CFOP
    If (EventName='UPDATECFOP') OR (EventName='DELCFOP') OR (EventName='INSCFOP')
    Then Begin
        If Not (TCFOP.state in [dsinsert, dsedit])
        Then Begin
            Atu(TCFOP);
        End;
    End;

    //Atualização para alterações CFOP
    If (EventName='UPDATECFOP') OR (EventName='DELCFOP') OR (EventName='INSCFOP')
    Then Begin
        If Not (TCFOP.state in [dsinsert, dsedit])
        Then Begin
            Atu(TCFOP);
        End;
    End;

    //Atualização para alterações UNIDADE
    If (EventName='UPDATEUNIDADE') OR (EventName='DELUNIDADE') OR (EventName='INSUNIDADE')
    Then Begin
        If Not (TUNIDADE.state in [dsinsert, dsedit])
        Then Begin
            Atu(TUNIDADE);
        End;
    End;}

end;

end.


