unit UDMPessoa;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, IBCustomDataSet, IBUpdateSQL, IBQuery, IBDatabase, IBSQLMonitor,
  IBEvents, StdCtrls, Mask, DBCtrls, DBColorEdit,
  ImgList;

type
  TDMPESSOA = class(TDataModule)
    DBPessoa: TIBDatabase;
    TransacPessoa: TIBTransaction;
    TTelefone: TIBQuery;
    UPTelefone: TIBUpdateSQL;
    DSTelefone: TDataSource;
    TEmail: TIBQuery;
    UPEmail: TIBUpdateSQL;
    DSEmail: TDataSource;
    TEmailCOD_EMAIL: TIntegerField;
    TEmailCOD_PESSOA: TIntegerField;
    TEmailDESCRICAO: TIBStringField;
    TPessoaJ: TIBQuery;
    TPessoaJCOD_PESSOAJ: TIntegerField;
    TPessoaJCOD_PESSOA: TIntegerField;
    TPessoaJINSC_EST: TIBStringField;
    TPessoaJRAZAO_SOCIAL: TIBStringField;
    TPessoaJINSC_MUN: TIBStringField;
    TPessoaJWEB_PAGE: TIBStringField;
    UPPessoaJ: TIBUpdateSQL;
    DSPessoaJ: TDataSource;
    TPessoaF: TIBQuery;
    TPessoa: TIBQuery;
    UPPessoaF: TIBUpdateSQL;
    UPPessoa: TIBUpdateSQL;
    DSPessoaF: TDataSource;
    DSPessoa: TDataSource;
    TPessoaFCOD_PESSOAF: TIntegerField;
    TPessoaFCOD_PESSOA: TIntegerField;
    TPessoaFESTADO_CIVIL: TIBStringField;
    TPessoaFSEXO: TIBStringField;
    TPessoaFEMP_TRAB: TIBStringField;
    TPessoaFEND_TRAB: TIBStringField;
    TPessoaFBAIRRO_TRAB: TIBStringField;
    TPessoaFDATA_ADMIS: TDateField;
    TPessoaFRG: TIBStringField;
    TPessoaFDATA_EXPED: TDateField;
    TPessoaFORGAO_EXPED: TIBStringField;
    TPessoaFTITULO: TIBStringField;
    TPessoaFNOME_CONJ: TIBStringField;
    TPessoaFDATANASC_CONJ: TDateField;
    TPessoaFRG_CONJ: TIBStringField;
    TPessoaFCPF_CONJ: TIBStringField;
    TPessoaFEMP_CONJ: TIBStringField;
    TPessoaFNOME_PAI: TIBStringField;
    TPessoaFNOME_MAE: TIBStringField;
    TPessoaFENDE_FILIACAO: TIBStringField;
    TPessoaCOD_PESSOA: TIntegerField;
    TPessoaNOME: TIBStringField;
    TPessoaENDERECO: TIBStringField;
    TPessoaBAIRRO: TIBStringField;
    TPessoaCOD_CIDADE: TIntegerField;
    TPessoaCEP: TIBStringField;
    TPessoaCPFCNPJ: TIBStringField;
    TPessoaDATA_INI: TDateField;
    WCliente: TIBQuery;
    DSVWCliente: TDataSource;
    TCliente: TIBQuery;
    UPCliente: TIBUpdateSQL;
    DSCliente: TDataSource;
    TALX: TIBQuery;
    TFuncionario: TIBQuery;
    UPFuncionario: TIBUpdateSQL;
    DSFuncionario: TDataSource;
    VWFuncionario: TIBQuery;
    DSVWFuncionario: TDataSource;
    DSVWFornecedor: TDataSource;
    WFornecedor: TIBQuery;
    DSFornecedor: TDataSource;
    UPFornecedor: TIBUpdateSQL;
    TFornecedor: TIBQuery;
    TFornecedorCOD_FORNEC: TIntegerField;
    TFornecedorCOD_PESSOA: TIntegerField;
    TFornecedorCOD_INTERNO: TIBStringField;
    TFornecedorDATA_CAD: TDateField;
    TFornecedorTIPO_FORNEC: TIBStringField;
    TFornecedorPRAZO_ENTREGA: TIntegerField;
    TFornecedorCOD_TRANSPORT: TIntegerField;
    TCargo: TIBQuery;
    UPCargo: TIBUpdateSQL;
    DSCargo: TDataSource;
    TCargoCOD_CARGO: TIntegerField;
    TCargoDESCRICAO: TIBStringField;
    TFunCargo: TIBQuery;
    TFunCargoCOD_FUNCARGO: TIntegerField;
    TFunCargoCOD_CARGO: TIntegerField;
    TFunCargoCOD_FUNCIONARIO: TIntegerField;
    TFunCargoCOMISSAO_VVPRO: TFloatField;
    TFunCargoCOMISSAO_VPPRO: TFloatField;
    TFunCargoCOMISSAO_VVSER: TFloatField;
    TFunCargoCOMISSAO_VPSER: TFloatField;
    UPFunCargo: TIBUpdateSQL;
    DSFunCargo: TDataSource;
    TSalario: TIBQuery;
    UPSalario: TIBUpdateSQL;
    DSSalario: TDataSource;
    DSALX: TDataSource;
    TALX1: TIBQuery;
    DSALX1: TDataSource;
    TSalarioCOD_SALARIO: TIntegerField;
    TSalarioCOD_FUNCARGO: TIntegerField;
    TSalarioDATA: TDateField;
    TSalarioSALARIO: TIBBCDField;
    TSalarioCOD_COTAMOEDA: TIntegerField;
    TPessoaDTNASC: TDateField;
    WFornecedorCOD_FORNEC: TIntegerField;
    WFornecedorCOD_INTERNO: TIBStringField;
    WFornecedorCOD_PESSOA: TIntegerField;
    WFornecedorNOME: TIBStringField;
    WFornecedorENDERECO: TIBStringField;
    WFornecedorBAIRRO: TIBStringField;
    WFornecedorCPFCNPJ: TIBStringField;
    WFornecedorCOD_CIDADE: TIntegerField;
    WFornecedorCIDADE: TIBStringField;
    TRel: TIBQuery;
    DSRel: TDataSource;
    TServot: TIBQuery;
    UpServOt: TIBUpdateSQL;
    DSServOt: TDataSource;
    GroupBox9: TGroupBox;
    Label40: TLabel;
    Label41: TLabel;
    Label42: TLabel;
    Label43: TLabel;
    Label44: TLabel;
    DALUG: TDBColorEdit;
    DRESID: TDBColorEdit;
    DVEIC: TDBColorEdit;
    DFAM: TDBColorEdit;
    OUTDESP: TDBColorEdit;
    TEquip: TIBQuery;
    UEquip: TIBUpdateSQL;
    DEquip: TDataSource;
    TPessoaCOD_REGIAO: TIntegerField;
    TPessoaCOD_NATURAL: TIntegerField;
    TPessoaTELREL: TIBStringField;
    TPessoaFCARGO: TIBStringField;
    TFornecedorTIPO: TIBStringField;
    TFornecedorOBS: TMemoField;
    TSelectFC: TIBQuery;
    DSelectFC: TDataSource;
    TPessoaDIAANIVER: TSmallintField;
    TPessoaPROXIMIDADE: TIBStringField;
    TPessoaVLRCREDITO: TIBBCDField;
    TClienteCob: TIBQuery;
    UClienteCob: TIBUpdateSQL;
    DClienteCob: TDataSource;
    TClienteCobCOD_CLIENTECOB: TIntegerField;
    TClienteCobMULTA: TIBBCDField;
    TClienteCobJUROS: TIBBCDField;
    TClienteCobTIPOJUR: TSmallintField;
    TClienteCobCOD_PESSOA: TIntegerField;
    TClienteCobDTCADASTRO: TDateField;
    TClienteCobUSUARIO: TIntegerField;
    TClienteCobATIVO: TIBStringField;
    WClienteCob: TIBQuery;
    DWClienteCob: TDataSource;
    WClienteCobCOD_INTERNO: TIBStringField;
    WClienteCobCOD_CLIENTECOB: TIntegerField;
    WClienteCobCOD_PESSOA: TIntegerField;
    WClienteCobNOME: TIBStringField;
    WClienteCobENDERECO: TIBStringField;
    WClienteCobBAIRRO: TIBStringField;
    WClienteCobCPFCNPJ: TIBStringField;
    WClienteCobCOD_CIDADE: TIntegerField;
    WClienteCobCIDADE: TIBStringField;
    WClienteCobATIVO: TIBStringField;
    TClienteCobCOD_INTERNO: TIBStringField;
    TDevCli: TIBQuery;
    UDevCli: TIBUpdateSQL;
    DDevCli: TDataSource;
    TDevCliCOD_DEVCLI: TIntegerField;
    TDevCliCOD_CLIENTECOB: TIntegerField;
    TDevCliCOD_DEVEDOR: TIntegerField;
    TClienteCOD_CLIENTE: TIntegerField;
    TClienteCOD_PESSOA: TIntegerField;
    TClienteCOD_INTERNO: TIBStringField;
    TClienteDATA_CAD: TDateField;
    TClienteR_SAL_CONJ: TFloatField;
    TClienteR_SALARIO: TFloatField;
    TClienteR_HON_PROF: TFloatField;
    TClienteR_OUTREC: TFloatField;
    TClienteD_ALUGUEL: TFloatField;
    TClienteD_RESIDENCIA: TFloatField;
    TClienteD_VEICULO: TFloatField;
    TClienteD_FAMILIAR: TFloatField;
    TClienteD_OUTDESP: TFloatField;
    TClienteLIM_CRED: TFloatField;
    TClienteQTDTEMPORESID: TIBStringField;
    TClienteBENS: TMemoField;
    TClienteCOD_VENDEDOR: TIntegerField;
    TClienteINFOCOM: TMemoField;
    TClienteENDENTRAGA: TIBStringField;
    TClienteATUALIZAR: TIBStringField;
    TClienteCOD_USUARIO: TIntegerField;
    TClienteATIVO: TIBStringField;
    TClienteCREDENCIAL: TIBStringField;
    TClienteRAMOATIV: TIBStringField;
    TClienteATACADISTA: TIBStringField;
    TClienteCOD_FORMPAG: TIntegerField;
    TClienteEXPORT: TIBStringField;
    TClienteSEPARAR: TIBStringField;
    TClienteMULTA: TIBBCDField;
    TClienteJURO: TIBBCDField;
    TClienteOBS: TIBStringField;
    TClienteSCPC: TIBStringField;
    TClienteTAMANHO: TIBBCDField;
    TClienteINFORMACAO: TIBStringField;
    TClienteCOD_CLIENTEPALM: TIntegerField;
    TClienteDIAVENCIMENTO: TIntegerField;
    TEquipe: TIBQuery;
    UEquipe: TIBUpdateSQL;
    DSEquipe: TDataSource;
    TFunEquipe: TIBQuery;
    TFunEquipeCOD_FUNEQUIPE: TIntegerField;
    TFunEquipeCOD_FUNCIONARIO: TIntegerField;
    TFunEquipeCOD_EQUIPE: TIntegerField;
    UFunEquipe: TIBUpdateSQL;
    DSFunEquipe: TDataSource;
    DSAux: TDataSource;
    TAux: TIBQuery;
    DSAux1: TDataSource;
    TAux1: TIBQuery;
    TAuxCOD_FUNEQUIPE: TIntegerField;
    TAuxCOD_FUNCIONARIO: TIntegerField;
    TAuxCOD_EQUIPE: TIntegerField;
    TAuxCOD_FUNC: TIntegerField;
    TAuxCOD_INTERNO: TIBStringField;
    TAuxCOD_PESSOA: TIntegerField;
    TAuxCOD_PESSOA1: TIntegerField;
    TAuxNOME: TIBStringField;
    TEquipeCOD_EQUIPE: TIntegerField;
    TEquipeDESCRICAO: TIBStringField;
    TEquipeCOD_RESPONSAVEL: TIntegerField;
    TEquipeOBSERVACAO: TMemoField;
    TClienteCOD_TABPRECO: TIntegerField;
    TAjudante: TIBQuery;
    UAjudante: TIBUpdateSQL;
    DSAjudante: TDataSource;
    DSAux2: TDataSource;
    TAux2: TIBQuery;
    TAjudanteCOD_FUNC: TIntegerField;
    TAjudanteCOD_ORDEM: TIntegerField;
    TAjudanteHMAT_INI: TTimeField;
    TAjudanteHMAT_FIM: TTimeField;
    TAjudanteHVESP_INI: TTimeField;
    TAjudanteHVESP_FIM: TTimeField;
    TAjudanteHRS_NORMAIS: TTimeField;
    TAjudanteHRS_EXTRAS: TTimeField;
    TAjudanteVLR_NORMAL: TIBBCDField;
    TAjudanteVLR_EXTRA: TIBBCDField;
    TAjudanteTOTAL_NORMAL: TIBBCDField;
    TAjudanteTOTAL_EXTRA: TIBBCDField;
    TAjudanteVALORTOTHRS: TIBBCDField;
    TAjudanteMARK: TIBStringField;
    TAjudanteDATA: TDateField;
    DSAux3: TDataSource;
    TAux3: TIBQuery;
    TAjudanteTOTAL_HORAS: TTimeField;
    TAjudanteDIA_SEMANA: TIBStringField;
    TEquipCOD_EQUIPAMENTO: TIntegerField;
    TEquipCOD_CLIENTE: TIntegerField;
    TEquipDESCRICAO: TIBStringField;
    TEquipMARCA: TIBStringField;
    TEquipMODELO: TIBStringField;
    TEquipANO: TIBStringField;
    TEquipCOR: TIBStringField;
    TEquipCHASSI: TIBStringField;
    TEquipPLACA: TIBStringField;
    TEquipDTAQUISICAO: TDateField;
    TEquipCONCESSIONARIA: TIBStringField;
    TEquipMOTOR: TIBStringField;
    TEquipANOMOTOR: TIBStringField;
    TEquipCHASSIMOTOR: TIBStringField;
    TEquipKMATUAL: TIntegerField;
    TEquipUNIDRODAGEM: TIBStringField;
    TEquipMODELO_GUINCHO: TIBStringField;
    TEquipCOD_SERVICO: TIntegerField;
    TEquipNUM_FROTA: TIBStringField;
    TEquipALTURAMAX: TFloatField;
    TEquipPESOMAX: TFloatField;
    TEquipCOD_KMSERVICO: TIntegerField;
    TEquipCOD_MOTORISTA: TIntegerField;
    TTelefoneCOD_TELEFONE: TIntegerField;
    TTelefoneCOD_PESSOA: TIntegerField;
    TTelefoneDESCRICAO: TIBStringField;
    TTelefoneCONTATO: TIBStringField;
    TTelefoneNUMERO: TIBStringField;
    TEquipAGULHA: TIBStringField;
    TEquipLANCADEIRA: TIBStringField;
    TEquipLOOPER: TIBStringField;
    TEquipLOOPERINF: TIBStringField;
    TEquipLOOPERSUP: TIBStringField;
    TClienteCONTRIBICMS: TIBStringField;
    TClienteMARKREL: TIBStringField;
    TFornecedorEXPORT: TIBStringField;
    TFornecedorMARKREL: TIBStringField;
    TEquipCOD_PLNCTA: TIntegerField;
    TEquipATIVO: TIBStringField;
    TEquipDTATIVO: TDateField;
    TEquipCOD_USUARIOATIVOU: TIntegerField;
    TPessoaCOD_TRANSPORTADORA: TIntegerField;
    TPessoaJINS_ST: TIBStringField;
    TPessoaJINDUSTRIA: TIBStringField;
    TClienteSUFRAMA: TIBStringField;
    TPessoaENDNUMERO: TIBStringField;
    WFornecedorEXPORT: TIBStringField;
    WFornecedorTELREL: TIBStringField;
    TClienteAUTORIZADOS: TMemoField;
    TPessoaFDIAANIVERCONJ: TSmallintField;
    VWFuncionarioCOD_FUNC: TIntegerField;
    VWFuncionarioCOD_INTERNO: TIBStringField;
    VWFuncionarioCOD_PESSOA: TIntegerField;
    VWFuncionarioNOME: TIBStringField;
    VWFuncionarioENDERECO: TIBStringField;
    VWFuncionarioBAIRRO: TIBStringField;
    VWFuncionarioCPFCNPJ: TIBStringField;
    VWFuncionarioCOD_CIDADE: TIntegerField;
    VWFuncionarioCIDADE: TIBStringField;
    VWFuncionarioTERCEIRO: TIBStringField;
    VWFuncionarioMARK: TIBStringField;
    VWFuncionarioATIVO: TIBStringField;
    WClienteCobTELREL: TIBStringField;
    TServotCOD_SERVOT: TIntegerField;
    TServotCOD_PEDIDO: TIntegerField;
    TServotESFERLOD: TIBStringField;
    TServotESFERLOE: TIBStringField;
    TServotESFERPOD: TIBStringField;
    TServotESFERPOE: TIBStringField;
    TServotCILINDLOD: TIBStringField;
    TServotCILINDLOE: TIBStringField;
    TServotCILINDPOD: TIBStringField;
    TServotCILINDPOE: TIBStringField;
    TServotEIXOLOD: TIBStringField;
    TServotEIXOLOE: TIBStringField;
    TServotDNPLOD: TIBStringField;
    TServotDNPLOE: TIBStringField;
    TServotALTURALOD: TIBStringField;
    TServotALTURALOE: TIBStringField;
    TServotADICAO: TIBStringField;
    TServotEIXOPOD: TIBStringField;
    TServotEIXOPOE: TIBStringField;
    TServotDNPPOD: TIBStringField;
    TServotDNPPOE: TIBStringField;
    TServotALTURAPOD: TIBStringField;
    TServotALTURAPOE: TIBStringField;
    TClienteOBSFINANCEIRA: TIBStringField;
    TClienteMARK: TIBStringField;
    WClienteCOD_CLIENTE: TIntegerField;
    WClienteCOD_INTERNO: TIBStringField;
    WClienteCOD_PESSOA: TIntegerField;
    WClienteNOME: TIBStringField;
    WClienteENDERECO: TIBStringField;
    WClienteBAIRRO: TIBStringField;
    WClienteCPFCNPJ: TIBStringField;
    WClienteCOD_CIDADE: TIntegerField;
    WClienteCIDADE: TIBStringField;
    WClienteATIVO: TIBStringField;
    WClienteEXPORT: TIBStringField;
    WClienteTELREL: TIBStringField;
    WClienteSEPARAR: TIBStringField;
    WClienteSCPC: TIBStringField;
    WClienteCOD_TABPRECO: TIntegerField;
    WClienteATUALIZAR: TIBStringField;
    WClienteMARK: TIBStringField;
    WClienteUF_ESTADO: TIBStringField;
    WClienteENDNUMERO: TIBStringField;
    TFornecedorATUALIZAR: TIBStringField;
    TClienteFREQVENDA: TIBStringField;
    TClienteDIASFREQVENDA: TIBStringField;
    WFornecedorINSC_EST: TIBStringField;
    WFornecedorUF: TIBStringField;
    TClienteVENDAVISTA: TIBStringField;
    TEquipOBS: TMemoField;
    TFuncionarioCOD_FUNC: TIntegerField;
    TFuncionarioCOD_PESSOA: TIntegerField;
    TFuncionarioCOD_INTERNO: TIBStringField;
    TFuncionarioDATA_CAD: TDateField;
    TFuncionarioDATA_ADMIS: TDateField;
    TFuncionarioDATA_DEMIS: TDateField;
    TFuncionarioNUM_CTPS: TIBStringField;
    TFuncionarioSER_CTPS: TIBStringField;
    TFuncionarioNUM_PIS: TIBStringField;
    TFuncionarioTERCEIRO: TIBStringField;
    TFuncionarioPALM: TIBStringField;
    TFuncionarioNUMPALM: TIBStringField;
    TFuncionarioCOD_SERVICO: TIntegerField;
    TFuncionarioMARK: TIBStringField;
    TFuncionarioATIVO: TIBStringField;
    TFuncionarioOBSERVACAO: TIBStringField;
    TFuncionarioHORAENT: TIBStringField;
    TFuncionarioHORASAIDA: TIBStringField;
    TFuncionarioINTERVALO: TIBStringField;
    TFuncionarioSETOR: TIBStringField;
    TClienteCONSUMIDOR: TIBStringField;
    TClienteTAXAENTREGA: TIBStringField;
    TClienteDESCONTO: TIBBCDField;
    TPessoaEMAILPADRAO: TIBStringField;
    WFornecedorRAZAOSOCIAL: TIBStringField;
    TClienteSIMPLESNACIONAL: TIBStringField;
    TFornecedorCONTRIBICMS: TIBStringField;
    TPessoaESTRANGEIRO: TIBStringField;
    WClienteRAZAOSOCIAL: TIBStringField;
    TRua: TIBQuery;
    DRua: TDataSource;
    DBRUA: TIBDatabase;
    IBTRUA: TIBTransaction;
    TFornecedorCONTA_CONTABIL: TIBStringField;
    TClienteCONTA_CONTABIL: TIBStringField;
    TPessoaTEL01: TIBStringField;
    TPessoaCAMINHODOCS: TIBStringField;
    TEmailEMAIL: TIBStringField;
    il16x16: TImageList;
    procedure TTelefoneBeforePost(DataSet: TDataSet);
    procedure TEmailBeforePost(DataSet: TDataSet);
    procedure TALXFilterRecord(DataSet: TDataSet; var Accept: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
	  IndexAniver: Integer;
    procedure InsertNewEquipamento(const ACodEquip, ACodCliente, ADesc, AMarca, AModelo, AAno, ACor, AChassi, APlaca,
      ADtAquisicao, AKmAtual, AAtivo, ADtAtivo: Variant);
  end;

  {Procedures/Funções Externas}
  Procedure SelectPesMail;
  {Procedure utilizada para junção de funcargos e salarios de acordo com código do funcionario}
  Procedure SelectFunCargo;

var
  DMPESSOA: TDMPESSOA;


implementation

uses Alxor32, UMenu, UDMMacs, UMDO;

{$R *.DFM}

{Procedure utilizada para junção de funcargos e salarios de acordo com código do funcionario}
Procedure SelectFunCargo;
Begin
     //Prepara componente de sql
     DMPESSOA.TSelectFC.Close;
     DMPESSOA.TSelectFC.sql.Clear;
     DMPESSOA.TSelectFC.SQL.Add('Select funcargo.cod_funcargo, funcargo.cod_cargo, funcargo.cod_funcionario, funcargo.comissao_vppro, ');
     DMPESSOA.TSelectFC.SQL.Add('funcargo.comissao_vpser, funcargo.comissao_vpser, funcargo.comissao_vvpro, ');
     DMPESSOA.TSelectFC.SQL.Add('funcargo.comissao_vvser, cargo.descricao, Salario.Cod_Salario, salario.data, salario.salario ');
     DMPESSOA.TSelectFC.SQL.Add('From funcargo left Join salario on salario.cod_funcargo = funcargo.cod_funcargo ');
     DMPESSOA.TSelectFC.SQL.Add('left Join cargo on cargo.cod_cargo = funcargo.cod_cargo ');
     DMPESSOA.TSelectFC.SQL.Add('Where funcargo.cod_funcionario=:CodFunc');
     DMPESSOA.TSelectFC.ParamByName('CodFunc').AsString:=DMPESSOA.TFuncionario.FieldByName('Cod_Func').AsString;
     DMPESSOA.TSelectFC.Open;
End;
//Utilizado para selecionar telefones e e-mails de acordo com a pessoa da tabela preincipal
Procedure SelectPesMail;
Begin
    //Seleciona Telefones
    DMPESSOA.TTelefone.Close;
    DMPESSOA.TTelefone.SQL.Clear;
    DMPESSOA.TTelefone.SQL.Add('Select * from telefone Where Cod_Pessoa=:CODPESSOA');
    DMPESSOA.TTelefone.ParamByName('CODPESSOA').AsString:=DMPESSOA.TPessoa.fieldByName('COD_PESSOA').AsString;
    DMPESSOA.TTelefone.Open;

    //Seleciona E-mails
    DMPESSOA.TEmail.Close;
    DMPESSOA.TEmail.SQL.Clear;
    DMPESSOA.TEmail.SQL.Add('Select * from EMAIL Where Cod_Pessoa=:CODPESSOA');
    DMPESSOA.TEmail.ParamByName('CODPESSOA').AsString:=DMPESSOA.TPessoa.fieldByName('COD_PESSOA').AsString;
    DMPESSOA.TEmail.Open;

End;

procedure TDMPESSOA.TTelefoneBeforePost(DataSet: TDataSet);
begin
    TTelefone.FieldByName('COD_PESSOA').VALUE:=TPessoa.FIELDBYNAME('COD_PESSOA').Value;
end;

procedure TDMPESSOA.TEmailBeforePost(DataSet: TDataSet);
begin
    TEmail.FieldByName('COD_PESSOA').VALUE:=TPessoa.FIELDBYNAME('COD_PESSOA').Value;
end;

procedure TDMPESSOA.TALXFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
Var
  Data: TDate;
  Year, Month, Day:word;
begin
	Try
     	If TALX.fieldbyname('DTNasc').AsString=''
       Then Begin//controla datas em branco
       	Accept := False;
       	Exit;
       End;

   	Data := StrToDate(TALX.fieldbyname('DTNasc').AsString);
       DecodeDate(Data, Year, Month, Day);
       If (Month<>IndexAniver) Then
       	Accept := False
       Else
       	Accept := True;
   Except
       Accept := False;
   End;
end;

procedure TDMPESSOA.InsertNewEquipamento(const ACodEquip, ACodCliente, ADesc, AMarca, AModelo, AAno, ACor, AChassi, APlaca,
  ADtAquisicao, AKmAtual, AAtivo, ADtAtivo: Variant);
begin
  TEquip.Close;
  TEquip.SQL.Clear;
  TEquip.SQL.Add(' insert into EQUIPAMENTO (');
  TEquip.SQL.Add('   COD_EQUIPAMENTO, COD_CLIENTE, DESCRICAO, MARCA, MODELO, ANO, COR, CHASSI, PLACA, DTAQUISICAO, KMATUAL, ATIVO, DTATIVO');
  TEquip.SQL.Add(' ) values (');
  TEquip.SQL.Add('   :COD_EQUIPAMENTO, :COD_CLIENTE, :DESCRICAO, :MARCA, :MODELO, :ANO, :COR, :CHASSI, :PLACA, :DTAQUISICAO, :KMATUAL, :ATIVO, :DTATIVO');
  TEquip.SQL.Add(' )');
  TEquip.ParamByName('COD_EQUIPAMENTO').Value := ACodEquip;
  TEquip.ParamByName('COD_CLIENTE').Value := ACodCliente;
  TEquip.ParamByName('DESCRICAO').Value := ADesc;
  TEquip.ParamByName('MARCA').Value := AMarca;
  TEquip.ParamByName('MODELO').Value := AModelo;
  TEquip.ParamByName('ANO').Value := AAno;
  TEquip.ParamByName('COR').Value := ACor;
  TEquip.ParamByName('CHASSI').Value := AChassi;
  TEquip.ParamByName('PLACA').Value := APlaca;
  TEquip.ParamByName('DTAQUISICAO').Value := APlaca;
  TEquip.ParamByName('KMATUAL').Value := APlaca;
  TEquip.ParamByName('ATIVO').Value := APlaca;
  TEquip.ParamByName('DTATIVO').Value := APlaca;
  TEquip.ExecSQL;

  DMMACS.TCodigo.Edit;
  DMMACS.TCodigo.FieldByName('COD_EQUIPAMENTO').AsInteger := DMMACS.TCodigo.FieldByName('COD_EQUIPAMENTO').AsInteger + 1;
  DMMACS.TCodigo.Post;
  DMMACS.IBTCodigo.CommitRetaining;

  TEquip.Close;
  TEquip.SQL.Clear;
  TEquip.SQL.Add(' Select * from EQUIPAMENTO E where E.cod_equipamento = :codigo');
  TEquip.ParamByName('codigo').AsInteger := ACodEquip;
  TEquip.Open;
end;

end.
