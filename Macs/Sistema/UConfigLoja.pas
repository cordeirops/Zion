unit UConfigLoja;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  UPadrao, TFlatHintUnit, Buttons, StdCtrls, jpeg, ExtCtrls,
  DBCtrls, Mask, ComCtrls, DBColorComboBox, DBColorEdit, Printers, AlxorPrn,
  DrLabel, UFrmBusca, FR_DSet, FR_DBSet, FR_Class, Menus, ExtDlgs,
  TFlatCheckBoxUnit, TFlatEditUnit, Grids, DBGrids, ShellApi;

type
  TFConfigLoja = class(TFPadrao)
    OPD: TOpenDialog;
    PConsulta: TPanel;
    Painel: TPanel;
    DBText1: TDBText;
    BtnNovo: TBitBtn;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    PageControl2: TPageControl;
    TabSheet9: TTabSheet;
    GroupBox1: TGroupBox;
    Label23: TLabel;
    Label41: TLabel;
    Label43: TLabel;
    Label48: TLabel;
    CBTELAFISCAL: TCheckBox;
    CBAtuaEstoque: TCheckBox;
    CBVENDNEG: TCheckBox;
    CDVENDSALDONEG: TCheckBox;
    RGFOCU: TRadioGroup;
    RGCOMPCONST: TRadioGroup;
    CBVENDITEMPROD: TCheckBox;
    DBLookupComboBox13: TDBLookupComboBox;
    CBUTILFORMPAG: TCheckBox;
    CBALTCOMPROD: TCheckBox;
    CBMULTCOMISS: TCheckBox;
    DBColorEdit9: TDBColorEdit;
    CBGARANTIA: TCheckBox;
    CBCTRLDVL: TCheckBox;
    CBCOMISSPRODCADPROD: TCheckBox;
    TabSheet10: TTabSheet;
    GroupBox2: TGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    CBIMPPED: TCheckBox;
    DBEdit7: TDBEdit;
    CBIMPPEDFECH: TCheckBox;
    TabSheet11: TTabSheet;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label51: TLabel;
    DBLookupComboBox3: TDBLookupComboBox;
    DBLookupComboBox4: TDBLookupComboBox;
    DBLookupComboBox5: TDBLookupComboBox;
    DBLookupComboBox6: TDBLookupComboBox;
    DBLookupComboBox18: TDBLookupComboBox;
    TabSheet2: TTabSheet;
    GroupBox4: TGroupBox;
    Label29: TLabel;
    Label47: TLabel;
    Label42: TLabel;
    Label50: TLabel;
    Label79: TLabel;
    Label80: TLabel;
    CBZEROPROD: TCheckBox;
    DBNCASASPROD: TDBEdit;
    CBCALCVALVEND: TCheckBox;
    GroupBox6: TGroupBox;
    PEtPersonal: TPanel;
    Label20: TLabel;
    DbEtPersonal: TDBLookupComboBox;
    BitBtn4: TBitBtn;
    PEtPreDefinida: TPanel;
    Label46: TLabel;
    DBEtPreDefinida: TDBComboBox;
    CBETCODFAB: TCheckBox;
    CBETDESC: TCheckBox;
    CBETPRECO: TCheckBox;
    CBETCODCOMPOSTO: TCheckBox;
    CBMarca: TCheckBox;
    CBETCTRLINTERNO: TCheckBox;
    RGTipoEt: TRadioGroup;
    BitBtn7: TBitBtn;
    CBETBARRAS: TCheckBox;
    DBEdit9: TDBEdit;
    RGCODPRODREL1: TRadioGroup;
    RGCODPRODREL2: TRadioGroup;
    DBLookupComboBox16: TDBLookupComboBox;
    DBEdit26: TDBEdit;
    DBEdit27: TDBEdit;
    CBDescCupom: TCheckBox;
    TabSheet3: TTabSheet;
    GroupBox3: TGroupBox;
    Label9: TLabel;
    CBIMPDUP: TCheckBox;
    CBIMPDUPAUT: TCheckBox;
    DBMemo1: TDBMemo;
    CBMOVPARCAVISTA: TCheckBox;
    TabSheet4: TTabSheet;
    GroupBox5: TGroupBox;
    Label10: TLabel;
    Label1: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label25: TLabel;
    Label56: TLabel;
    Label57: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    DBLookupComboBox2: TDBLookupComboBox;
    CBJURCOMP: TCheckBox;
    DBLookupComboBox7: TDBLookupComboBox;
    DBLookupComboBox8: TDBLookupComboBox;
    DBLookupComboBox9: TDBLookupComboBox;
    DBLookupComboBox10: TDBLookupComboBox;
    DBLookupComboBox11: TDBLookupComboBox;
    DBLookupComboBox12: TDBLookupComboBox;
    DBEdit8: TDBEdit;
    DBLookupComboBox19: TDBLookupComboBox;
    DBLookupComboBox20: TDBLookupComboBox;
    TabSheet5: TTabSheet;
    Label15: TLabel;
    Label55: TLabel;
    CBCONTCPFCLI: TCheckBox;
    CBCONTCPFFORNEC: TCheckBox;
    DBCBATIVIDADE: TDBColorComboBox;
    DBColorEdit10: TDBColorEdit;
    CBCTRLMENS: TCheckBox;
    DBTIMEMENS: TDBColorEdit;
    TabSheet6: TTabSheet;
    Label24: TLabel;
    EdCaminhoImgPdv: TEdit;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    TabSheet7: TTabSheet;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    Label40: TLabel;
    DBColorEdit1: TDBColorEdit;
    DBColorEdit2: TDBColorEdit;
    DBColorEdit3: TDBColorEdit;
    DBColorEdit4: TDBColorEdit;
    DBColorEdit5: TDBColorEdit;
    DBColorEdit6: TDBColorEdit;
    DBColorEdit7: TDBColorEdit;
    DBColorEdit8: TDBColorEdit;
    DBMemo2: TDBMemo;
    DBMemo3: TDBMemo;
    DBLookupComboBox14: TDBLookupComboBox;
    DBLookupComboBox15: TDBLookupComboBox;
    TabSheet8: TTabSheet;
    Label54: TLabel;
    DBCTIPOFISCAL: TDBComboBox;
    PECF: TPanel;
    Label53: TLabel;
    Label52: TLabel;
    DBCPORTAECF: TDBComboBox;
    DBEdit10: TDBEdit;
    TabSheet12: TTabSheet;
    Label45: TLabel;
    Label44: TLabel;
    Image3: TImage;
    GroupBox8: TGroupBox;
    EdPapelParede: TEdit;
    BitBtn8: TBitBtn;
    BitBtn9: TBitBtn;
    CBPapelTransp: TCheckBox;
    CBPapelExpandir: TCheckBox;
    CBPapelCentralizar: TCheckBox;
    CBPapelProporcional: TCheckBox;
    GroupBox9: TGroupBox;
    EdCamImgLogo: TEdit;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    Label63: TLabel;
    DBColorEdit11: TDBColorEdit;
    CBRede: TCheckBox;
    FrmProdDiv: TFrmBusca;
    Label65: TLabel;
    DBLookupComboBox21: TDBLookupComboBox;
    DBLookupComboBox22: TDBLookupComboBox;
    Label66: TLabel;
    Label67: TLabel;
    DBLookupComboBox23: TDBLookupComboBox;
    CBArredonda: TCheckBox;
    Label68: TLabel;
    Label69: TLabel;
    DBEdit16: TDBEdit;
    Label70: TLabel;
    DBEdit17: TDBEdit;
    Label71: TLabel;
    CBETPRECOPRAZO: TCheckBox;
    CBETCOMPOSICAO: TCheckBox;
    CBETALTURALARGURA: TCheckBox;
    CBClassificacao: TCheckBox;
    CBETFabricante: TCheckBox;
    CBImpMatricial: TCheckBox;
    PConfigImpMat: TPanel;
    BitBtn10: TBitBtn;
    DBComboImpMat: TDBLookupComboBox;
    Label74: TLabel;
    DBLookupComboBox25: TDBLookupComboBox;
    Label75: TLabel;
    DBEdit18: TDBEdit;
    RGTipoDuplicata: TRadioGroup;
    PDupPersonal: TPanel;
    DBTipoDuplicata: TDBLookupComboBox;
    BitBtn11: TBitBtn;
    Label76: TLabel;
    DBEdit19: TDBEdit;
    Label77: TLabel;
    DBCBImpThermais: TDBComboBox;
    CBBuscaNProds: TCheckBox;
    Label78: TLabel;
    CBGaveta: TComboBox;
    Label81: TLabel;
    DBMemo4: TDBMemo;
    Label82: TLabel;
    DBColorEdit14: TDBColorEdit;
    DBColorEdit15: TDBColorEdit;
    Label83: TLabel;
    GroupBox11: TGroupBox;
    BitBtn12: TBitBtn;
    DBLookupComboBox26: TDBLookupComboBox;
    GroupBox10: TGroupBox;
    DBComboBox1: TDBComboBox;
    CBDesconto: TCheckBox;
    CBTipoVenda: TCheckBox;
    CBVlrUnitario: TCheckBox;
    FSRel: TfrReport;
    FSDSRel: TfrDBDataSet;
    GroupBox13: TGroupBox;
    DBColorEdit12: TDBColorEdit;
    BitBtn14: TBitBtn;
    PMOrdem: TPopupMenu;
    Abertura1: TMenuItem;
    Fechamento1: TMenuItem;
    FSDSDesp: TfrDBDataSet;
    FSDSServ: TfrDBDataSet;
    CBGeraFinanceiro: TCheckBox;
    GroupBox14: TGroupBox;
    EDModPedvenda: TDBEdit;
    BitBtn15: TBitBtn;
    DBMemo5: TDBMemo;
    LTitulo: TLabel;
    GBCaminhoBanco: TGroupBox;
    DBEXPORT_OS: TDBEdit;
    BitBtn16: TBitBtn;
    RGDuplicata: TRadioGroup;
    CBLocacao: TCheckBox;
    DBColorEdit13: TDBColorEdit;
    Label64: TLabel;
    Label72: TLabel;
    CBVLRCUSTO: TCheckBox;
    CBMSGESTMIN: TCheckBox;
    CBLIMITCRED: TCheckBox;
    DBLookupComboBox27: TDBLookupComboBox;
    Label87: TLabel;
    DBLookupComboBox28: TDBLookupComboBox;
    Label88: TLabel;
    GroupBox19: TGroupBox;
    Label89: TLabel;
    Label90: TLabel;
    Label91: TLabel;
    Label92: TLabel;
    CBAmbiente: TComboBox;
    BitBtn19: TBitBtn;
    CBConvertUnid: TCheckBox;
    CBConverUnitEmb: TCheckBox;
    CBConverUnitVenda: TCheckBox;
    Label93: TLabel;
    DBEdit23: TDBEdit;
    cbDesativaSite: TCheckBox;
    cbDesativaFeed: TCheckBox;
    cbAtivaConsultaRapida: TCheckBox;
    cbAtivaGrid: TCheckBox;
    Descricao: TCheckBox;
    PCuponNFisc: TPanel;
    Label58: TLabel;
    Label59: TLabel;
    Label60: TLabel;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit13: TDBEdit;
    Label94: TLabel;
    DBColorComboBox1: TDBColorComboBox;
    Label95: TLabel;
    DBLookupComboBox29: TDBLookupComboBox;
    cbGeraCTAROutros: TCheckBox;
    CBPadDocMec: TCheckBox;
    DBEPadDocMec: TDBEdit;
    CBControleProdLista: TCheckBox;
    CBMostraCustoPedV: TCheckBox;
    PcCfop: TPageControl;
    TabSheet19: TTabSheet;
    PageControl3: TPageControl;
    TabSheet24: TTabSheet;
    FrmCFOPInterno: TFrmBusca;
    FrmCFOPExterno: TFrmBusca;
    TabSheet25: TTabSheet;
    FrmSTInterno: TFrmBusca;
    FrmSTExterno: TFrmBusca;
    TabSheet20: TTabSheet;
    PageControl4: TPageControl;
    TabSheet26: TTabSheet;
    FrmCfopInternoPC: TFrmBusca;
    FrmCfopExternoPC: TFrmBusca;
    TabSheet27: TTabSheet;
    FrmCfopInternoSTPC: TFrmBusca;
    FrmCfopExternoSTPC: TFrmBusca;
    TabSheet21: TTabSheet;
    FrmCfopIntServ: TFrmBusca;
    FrmCfopExtServ: TFrmBusca;
    TabSheet22: TTabSheet;
    TabSheet23: TTabSheet;
    TabSheet13: TTabSheet;
    FrmCFOFInternoIndustria: TFrmBusca;
    FrmCFOFExternoIndustria: TFrmBusca;
    FrmIntCfopGarantia: TFrmBusca;
    FrmExtCfopGarantia: TFrmBusca;
    PageControl5: TPageControl;
    TabSheet14: TTabSheet;
    TabSheet15: TTabSheet;
    FrmIntCfopDevolucaoST: TFrmBusca;
    FrmExtCfopDevolucaoST: TFrmBusca;
    FrmIntCfopDevolucao: TFrmBusca;
    FrmExtCfopDevolucao: TFrmBusca;
    CBObsPedCompra: TCheckBox;
    TabSheet16: TTabSheet;
    FrmCfopMatConsumo: TFrmBusca;
    GroupBox15: TGroupBox;
    DBEdit25: TDBEdit;
    BitBtn17: TBitBtn;
    CBImpNomeEquipeComprovanteOrdem: TCheckBox;
    FrmCfopMatExterno: TFrmBusca;
    TabSheet17: TTabSheet;
    Label97: TLabel;
    EDHost: TEdit;
    Label98: TLabel;
    EDUser: TEdit;
    Label99: TLabel;
    EDPassword: TEdit;
    Label100: TLabel;
    EDDirDownFTP: TEdit;
    Label101: TLabel;
    EDDirUpFTP: TEdit;
    CBSincronismo: TCheckBox;
    EDHorFTP: TEdit;
    Label102: TLabel;
    CBSincIni: TCheckBox;
    CBCriaArq: TCheckBox;
    CBRecArq: TCheckBox;
    TabSheet18: TTabSheet;
    FrmIntCfopSimpRemessa: TFrmBusca;
    FrmExtCfopSimpRemessa: TFrmBusca;
    TabSheet28: TTabSheet;
    FrmCfopIntFreteEntrada: TFrmBusca;
    FrmCfopExtFreteEntrada: TFrmBusca;
    DBEdit28: TDBEdit;
    DBEdit29: TDBEdit;
    DBEdit30: TDBEdit;
    PNF: TPanel;
    Label61: TLabel;
    Label62: TLabel;
    Label49: TLabel;
    Label96: TLabel;
    Label84: TLabel;
    Label85: TLabel;
    Label86: TLabel;
    DBModelo: TDBEdit;
    DBEdit15: TDBEdit;
    BitBtn1: TBitBtn;
    DBEdit14: TDBEdit;
    DBEdit24: TDBEdit;
    DBEdit20: TDBEdit;
    DBEdit21: TDBEdit;
    DBEdit22: TDBEdit;
    CBImpedirServicosNf: TCheckBox;
    CBDataPedido: TCheckBox;
    CBFichaTecnica: TCheckBox;
    TabSheet29: TTabSheet;
    FrmCstVendaTrib: TFrmBusca;
    FrmCstSubst: TFrmBusca;
    TabSheet30: TTabSheet;
    FrmDevPropriaDentro: TFrmBusca;
    FrmDevPropriaFora: TFrmBusca;
    Shape1: TShape;
    ImLogo: TImage;
    Label103: TLabel;
    btImportar: TButton;
    OpenPictureDialog1: TOpenPictureDialog;
    Button1: TButton;
    Label104: TLabel;
    Label105: TLabel;
    CBClassificacao2: TCheckBox;
    cbPlanoContaProd: TCheckBox;
    cbEstoqueLoja: TCheckBox;
    CBControlaNCM: TCheckBox;
    cbImpServNFe: TCheckBox;
    cbVersao: TComboBox;
    Label108: TLabel;
    cbControlaNum: TCheckBox;
    CBInfoUltProdNovo: TCheckBox;
    cbDespAdic: TCheckBox;
    RGConsOS: TRadioGroup;
    CBMOVLANCCARTAO: TCheckBox;
    CbNaoAtualizaEstoquePC: TCheckBox;
    EdDiasVenc: TEdit;
    Label110: TLabel;
    TabSheet31: TTabSheet;
    CBGeraNFSe: TCheckBox;
    Label111: TLabel;
    EdTituloDuplicata: TEdit;
    Label112: TLabel;
    CbTipoEnvioNfe: TComboBox;
    CbBaixaAutomaticaCartao: TCheckBox;
    DBLookupComboBox17: TDBLookupComboBox;
    Label30: TLabel;
    CBUsaPlacaAdicional: TCheckBox;
    Label113: TLabel;
    DBComboBox2: TDBComboBox;
    CbValidaDescricaoProduto: TCheckBox;
    CbForcaCartao: TCheckBox;
    DBNFSeAdmin: TDBComboBox;
    GroupBox16: TGroupBox;
    Label117: TLabel;
    DBEdit32: TDBEdit;
    btnCadastraServico: TButton;
    pCadServico: TPanel;
    edNumServico: TFlatEdit;
    edDescServico: TFlatEdit;
    cbPadrao: TFlatCheckBox;
    cbAtivo: TFlatCheckBox;
    Label115: TLabel;
    Label116: TLabel;
    Button3: TButton;
    btnFechaServ: TSpeedButton;
    dbServicos: TDBGrid;
    Button4: TButton;
    Button5: TButton;
    btnNovoServ: TButton;
    cbInsereFaturaNotaEntrada: TCheckBox;
    TabSheet32: TTabSheet;
    DBComboBox3: TDBComboBox;
    Label114: TLabel;
    GroupBox12: TGroupBox;
    DBModeloImp: TDBColorEdit;
    BitBtn13: TBitBtn;
    DBMemo6: TDBMemo;
    DBMemo7: TDBMemo;
    Label118: TLabel;
    Label119: TLabel;
    CBAtuaEstoquePC: TCheckBox;
    cbExiClassServico: TCheckBox;
    GroupBox17: TGroupBox;
    EdtCaminhoXml: TEdit;
    BitBtn18: TBitBtn;
    BitBtn20: TBitBtn;
    DBEdit31: TDBEdit;
    Label120: TLabel;
    DBEdit33: TDBEdit;
    Label121: TLabel;
    cbTipoImpressaoNFCe: TComboBox;
    Label122: TLabel;
    DBEdit34: TDBEdit;
    Label123: TLabel;
    Label124: TLabel;
    DBEdit35: TDBEdit;
    CbExibVlrCompOS: TCheckBox;
    TabSheet33: TTabSheet;
    Label125: TLabel;
    edEmailEmpresa: TDBEdit;
    edServidorSmtp: TDBEdit;
    edPortaEmail: TDBEdit;
    Label126: TLabel;
    Label127: TLabel;
    Label128: TLabel;
    Label129: TLabel;
    edSenhaEmailEmpresa: TEdit;
    Label130: TLabel;
    Label131: TLabel;
    Label132: TLabel;
    Label133: TLabel;
    PageControl6: TPageControl;
    TabSheet34: TTabSheet;
    TabSheet35: TTabSheet;
    FrmEntPropDentro: TFrmBusca;
    FrmEntPropFora: TFrmBusca;
    FrmOutEntPropDentro: TFrmBusca;
    FrmOutEntPropFora: TFrmBusca;
    GroupBox7: TGroupBox;
    EdCaminhoDocs: TEdit;
    BitBtn21: TBitBtn;
    BitBtn22: TBitBtn;
    Label106: TLabel;
    CbExibCampoVendedor: TCheckBox;
    Cb4casas: TCheckBox;
    cbRecalcLucratividadeProduto: TCheckBox;
    Cbmaisdeumcontroleinterno: TCheckBox;
    CbdesabilitaF10F11: TCheckBox;
    CBPesqIntelProd: TCheckBox;
    CbExibCampoMultiplosVendedores: TCheckBox;
    Label73: TLabel;
    DBLookupComboBox24: TDBLookupComboBox;
    DBEdit36: TDBEdit;
    Label107: TLabel;
    CbImpSubstituicaoXML: TCheckBox;
    procedure BtnNovoClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure CDVENDSALDONEGClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure DBCBIMPRESSORAKeyPress(Sender: TObject; var Key: Char);
    procedure DBEtPreDefinidaKeyPress(Sender: TObject; var Key: Char);
    procedure btnFechaServClick(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure CBETCTRLINTERNOClick(Sender: TObject);
    procedure CBETCODCOMPOSTOClick(Sender: TObject);
    procedure RGTipoEtClick(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure DBCPORTAECFKeyPress(Sender: TObject; var Key: Char);
    procedure DBCTIPOFISCALKeyPress(Sender: TObject; var Key: Char);
    procedure DBCTIPOFISCALExit(Sender: TObject);
    procedure CBCTRLMENSClick(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure CBPapelTranspClick(Sender: TObject);
    procedure CBPapelExpandirClick(Sender: TObject);
    procedure CBPapelCentralizarClick(Sender: TObject);
    procedure CBPapelProporcionalClick(Sender: TObject);
    procedure FrmFormPag1BTNMINUSClick(Sender: TObject);
    procedure FrmProdDivBTNOPENClick(Sender: TObject);
    procedure CBClassificacaoClick(Sender: TObject);
    procedure CBETFabricanteClick(Sender: TObject);
    procedure CBImpMatricialClick(Sender: TObject);
    procedure RGTipoDuplicataClick(Sender: TObject);
    procedure BitBtn11Click(Sender: TObject);
    procedure BitBtn12Click(Sender: TObject);
    procedure BitBtn13Click(Sender: TObject);
    procedure Abertura1Click(Sender: TObject);
    procedure Fechamento1Click(Sender: TObject);
    procedure BitBtn15Click(Sender: TObject);
    procedure DBModeloImpExit(Sender: TObject);
    procedure DBCBATIVIDADEClick(Sender: TObject);
    procedure BitBtn16Click(Sender: TObject);
    procedure EDModPedvendaExit(Sender: TObject);
    procedure FrmBusca2BTNOPENClick(Sender: TObject);
    procedure FrmAliqIntBTNMINUSClick(Sender: TObject);
    procedure FrmAliqInternaBTNOPENClick(Sender: TObject);
    procedure FrmAliqInternaBTNMINUSClick(Sender: TObject);
    procedure FrmAliqIntEDCodigoKeyPress(Sender: TObject; var Key: Char);
    procedure FrmAliqIntEDCodigoExit(Sender: TObject);
    procedure FrmAliqInternaEDCodigoKeyPress(Sender: TObject;
      var Key: Char);
    procedure FrmAliqInternaEDCodigoExit(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure BitBtn17Click(Sender: TObject);
    procedure FrmSTExternoBTNOPENClick(Sender: TObject);
    procedure FrmSTInternoBTNOPENClick(Sender: TObject);
    procedure FrmSTExternoEDCodigoExit(Sender: TObject);
    procedure FrmSTInternoEDCodigoExit(Sender: TObject);
    procedure BitBtn19Click(Sender: TObject);
    procedure CBConverUnitVendaClick(Sender: TObject);
    procedure CBConverUnitEmbClick(Sender: TObject);
    procedure FrmCFOFInternoIndustriaEDCodigoKeyPress(Sender: TObject;
      var Key: Char);
    procedure FrmCFOFInternoIndustriaEDCodigoExit(Sender: TObject);
    procedure FrmSTExternoEDCodigoKeyPress(Sender: TObject; var Key: Char);
    procedure FrmSTInternoEDCodigoKeyPress(Sender: TObject; var Key: Char);
    procedure FrmCFOFExternoIndustriaEDCodigoKeyPress(Sender: TObject;
      var Key: Char);
    procedure FrmCFOFExternoIndustriaEDCodigoExit(Sender: TObject);
    procedure FrmCFOFInternoIndustriaBTNOPENClick(Sender: TObject);
    procedure FrmCFOFExternoIndustriaBTNOPENClick(Sender: TObject);
    procedure FrmCFOFInternoIndustriaBTNMINUSClick(Sender: TObject);
    procedure FrmCFOFExternoIndustriaBTNMINUSClick(Sender: TObject);
    procedure CBPadDocMecClick(Sender: TObject);
    procedure FrmBusca1BTNOPENClick(Sender: TObject);
    procedure FrmCfopIntServEDCodigoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FrmCfopIntServBTNMINUSClick(Sender: TObject);
    procedure FrmCfopExtServBTNOPENClick(Sender: TObject);
    procedure FrmCfopExtServBTNMINUSClick(Sender: TObject);
    procedure FrmCfopExtServEDCodigoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FrmCFOPInternoBTNOPENClick(Sender: TObject);
    procedure FrmCfopIntServBTNOPENClick(Sender: TObject);
    procedure FrmCFOPInternoEDCodigoExit(Sender: TObject);
    procedure FrmCFOPExternoBTNOPENClick(Sender: TObject);
    procedure FrmCFOPExternoEDCodigoExit(Sender: TObject);
    procedure FrmCFOPInternoEDCodigoKeyPress(Sender: TObject;
      var Key: Char);
    procedure FrmCfopInternoPCBTNOPENClick(Sender: TObject);
    procedure FrmCfopInternoPCEDCodigoKeyDown(Sender: TObject;
      var Key: Word; Shift: TShiftState);
    procedure FrmCfopExternoPCBTNOPENClick(Sender: TObject);
    procedure FrmCfopExternoPCEDCodigoKeyDown(Sender: TObject;
      var Key: Word; Shift: TShiftState);
    procedure FrmCfopInternoSTPCBTNOPENClick(Sender: TObject);
    procedure FrmCfopExternoSTPCBTNOPENClick(Sender: TObject);
    procedure FrmCfopExternoSTPCEDCodigoKeyDown(Sender: TObject;
      var Key: Word; Shift: TShiftState);
    procedure FrmCfopInternoSTPCEDCodigoKeyDown(Sender: TObject;
      var Key: Word; Shift: TShiftState);
    procedure FrmCfopInternoSTPCEDCodigoKeyPress(Sender: TObject;
      var Key: Char);
    procedure FrmCfopExternoSTPCEDCodigoKeyPress(Sender: TObject;
      var Key: Char);
    procedure FrmCFOPExternoEDCodigoKeyPress(Sender: TObject;
      var Key: Char);
    procedure FrmIntCfopDevolucaoBTNOPENClick(Sender: TObject);
    procedure FrmExtCfopDevolucaoBTNOPENClick(Sender: TObject);
    procedure FrmIntCfopGarantiaBTNOPENClick(Sender: TObject);
    procedure FrmBusca3BTNOPENClick(Sender: TObject);
    procedure FrmExtCfopDevolucaoSTBTNOPENClick(Sender: TObject);
    procedure FrmExtCfopGarantiaBTNOPENClick(Sender: TObject);
    procedure FrmCfopInternoPCEDCodigoKeyPress(Sender: TObject;
      var Key: Char);
    procedure FrmIntCfopDevolucaoEDCodigoKeyDown(Sender: TObject;
      var Key: Word; Shift: TShiftState);
    procedure FrmIntCfopDevolucaoEDCodigoKeyPress(Sender: TObject;
      var Key: Char);
    procedure FrmExtCfopDevolucaoEDCodigoKeyDown(Sender: TObject;
      var Key: Word; Shift: TShiftState);
    procedure FrmIntCfopDevolucaoSTEDCodigoKeyDown(Sender: TObject;
      var Key: Word; Shift: TShiftState);
    procedure FrmExtCfopDevolucaoSTEDCodigoKeyDown(Sender: TObject;
      var Key: Word; Shift: TShiftState);
    procedure FrmIntCfopGarantiaEDCodigoKeyDown(Sender: TObject;
      var Key: Word; Shift: TShiftState);
    procedure FrmIntCfopGarantiaEDCodigoKeyPress(Sender: TObject;
      var Key: Char);
    procedure FrmExtCfopGarantiaEDCodigoKeyDown(Sender: TObject;
      var Key: Word; Shift: TShiftState);
    procedure FrmCFOFInternoIndustriaEDCodigoKeyDown(Sender: TObject;
      var Key: Word; Shift: TShiftState);
    procedure FrmCFOFExternoIndustriaEDCodigoKeyDown(Sender: TObject;
      var Key: Word; Shift: TShiftState);
    procedure FrmCfopMatConsumoBTNOPENClick(Sender: TObject);
    procedure FrmCfopMatConsumoEDCodigoKeyDown(Sender: TObject;
      var Key: Word; Shift: TShiftState);
    procedure FrmCfopMatExternoEDCodigoKeyDown(Sender: TObject;
      var Key: Word; Shift: TShiftState);
    procedure FrmCfopMatExternoBTNOPENClick(Sender: TObject);
    procedure FrmIntCfopSimpRemessaBTNOPENClick(Sender: TObject);
    procedure FrmIntCfopSimpRemessaEDCodigoKeyDown(Sender: TObject;
      var Key: Word; Shift: TShiftState);
    procedure FrmExtCfopSimpRemessaBTNOPENClick(Sender: TObject);
    procedure FrmExtCfopSimpRemessaEDCodigoKeyDown(Sender: TObject;
      var Key: Word; Shift: TShiftState);
    procedure FrmCfopFreteEntradaBTNOPENClick(Sender: TObject);
    procedure FrmCfopFreteEntradaEDCodigoKeyDown(Sender: TObject;
      var Key: Word; Shift: TShiftState);
    procedure FrmCfopExtFreteEntradaEDCodigoKeyDown(Sender: TObject;
      var Key: Word; Shift: TShiftState);
    procedure FrmCfopExtFreteEntradaBTNOPENClick(Sender: TObject);
    procedure FrmCstVendaTribBTNOPENClick(Sender: TObject);
    procedure FrmCstSubstBTNOPENClick(Sender: TObject);
    procedure FrmDevPropriaDentroEDCodigoKeyDown(Sender: TObject;
      var Key: Word; Shift: TShiftState);
    procedure FrmDevPropriaForaEDCodigoKeyDown(Sender: TObject;
      var Key: Word; Shift: TShiftState);
    procedure FrmDevPropriaDentroBTNOPENClick(Sender: TObject);
    procedure FrmDevPropriaForaBTNOPENClick(Sender: TObject);
    procedure btImportarClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure CBClassificacao2Click(Sender: TObject);
    procedure FrmEntPropDentroBTNOPENClick(Sender: TObject);
    procedure FrmEntPropForaBTNOPENClick(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure btnCadastraServicoClick(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure btnNovoServClick(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure BitBtn20Click(Sender: TObject);
    procedure BitBtn18Click(Sender: TObject);
    procedure Label131Click(Sender: TObject);
    procedure Label132Click(Sender: TObject);
    procedure FrmOutEntPropDentroBTNOPENClick(Sender: TObject);
    procedure FrmOutEntPropForaBTNOPENClick(Sender: TObject);
    procedure FrmOutEntPropDentroEDCodigoKeyPress(Sender: TObject;
      var Key: Char);
    procedure FrmOutEntPropForaEDCodigoKeyPress(Sender: TObject;
      var Key: Char);
    procedure BitBtn21Click(Sender: TObject);
    procedure BitBtn22Click(Sender: TObject);

  private
    { Private declarations }
    xEditando: boolean;//Edmar - 07/01/2014 - Controla se está editando ou incluindo um serviço
    Procedure FiltraDados;
    Procedure FiltraOrdem;
    Procedure PopulaGridServico;
  public
    { Public declarations }
  end;

var
  FConfigLoja: TFConfigLoja;
  XCod_ProdDiv: Integer; //Código do Produto utilizado como diversos em cupom
  XCODCFOP_INTERNO, XCODCFOP_INTEREST: INTEGER; // codigo de CFOP interno e interestadual
  XCODCFOPINTSERV, XCODCFOPEXTSERV: integer; // COD DE CFOP DE SERVIÇOS
  XCODCFOPINTDEVOLUCAO, XCODCFOPEXTDEVOLUCAO, XCODCFOPINTDEVOLUCAOST, XCODCFOPEXTDEVOLUCAOST: Integer; //Codigos de Cfop Para Devolução
  XCODCFOPINTGARANTIA, XCODCFOPEXTGARANTIA: Integer; //Codigos de Cfop Para Garantia
  XCODCFOPINTSIMPREMESSA, XCODCFOPEXTSIMPREMESSA: Integer; //Codigos de Cfop Para Garantia
  XCODCFOPINTFRETE, XCODCFOPEXTFRETE: Integer;//
  XCODSTEXTERNO, XCODSTINTERNO: integer; // COD DE CFOP DE SITUAÇÃO TRIBUTARIA
  XCODSTEXTERNOIND, XCODSTINTERNOIND: integer; // COD DE CFOP PARA INDÚSTRIA
  XCODCFOPINTPC, XCODCFOPEXTPC, XCODCFOPINTSTPC, XCODCFOPEXTSTP: Integer; //Códigos temporário para cfop de entradas
  XCODCFOPMATCONSUMO, XCODCFOPMATCONSUMOEXT: Integer; //Cfop para uso de entrada de mercadoria de uso e consumo
  XCODCFOP_DEVPROPRIODENTRO, XCODCFOP_DEVPROPRIOFORA: INTEGER; // codigo de CFOP Dentro e fora do estado para casos de dovolução de vendas usando nota propria de entrada
  XCODCSTTRIB, XCODCSTSUBST: Integer;
  XCODCFOPPROPDENTRO, XCODCFOPPROPFORA: Integer;//Paulo 29/11/2011 - Cfop para emissão propria
  XCODCFOPOUTPROPDENTRO, XCODCFOPOUTPROPFORA: Integer;//Paulo 29/11/2011 - Cfop para emissão propria
  XLogoDialog: TOpenPictureDialog;//Paulo 21/10/2010 - Para importação da logo da empresa
implementation

uses UDMMacs, AlxMessage, UDMConta, UDMPessoa, UConfigEtqProd, Alxor32,
  UDMEstoque, UCadGrupo, UConfigNF, Math, UMenu, UProduto, DB,
  UConfigEtqProd02, UConfigDup, UConfigCheq, UDMGEOGRAFIA, UDMSaida,
  UDMFinanc, UOrcamento, UDmServ, UOrdem, UPedidoPadrao, UCadCFOP, UDMEntrada,
  UMzrNfe, UCadCST, XMLIntf, UOrdemMec;

{$R *.DFM}

procedure TFConfigLoja.BtnNovoClick(Sender: TObject);
Var
   XCodLoja: Integer;
begin
  inherited;
   //Edmar - 29/09/2015 - Valida se foi informado as informações de email corretamente
   if ((edEmailEmpresa.Text <> '') OR (edSenhaEmailEmpresa.Text <> '')) then
   begin
       if (edEmailEmpresa.Text <> '') AND (edSenhaEmailEmpresa.Text = '') then
       begin
           ShowMessage('Para salvar os dados de e-mail é necessário informar também a Senha.');
           Exit;
       end;

       if (edSenhaEmailEmpresa.Text <> '') AND (edEmailEmpresa.Text = '') then
       begin
           ShowMessage('Para salvar os dados de e-mail é necessário informar também o E-mail.');
           Exit;
       end;

       if edServidorSmtp.Text = '' then
       begin
           ShowMessage('Para salvar os dados de e-mail é necessário informar também o Servidor SMTP.');
           Exit;
       end;

       if edPortaEmail.Text = '' then
       begin
           ShowMessage('Para salvar os dados de e-mail é necessário informar também a Porta.');
           Exit;
       end;

       if (edEmailEmpresa.Text <> '') AND (not ValidarEmail(edEmailEmpresa.Text)) then
       begin
           ShowMessage('O e-mail informado não passou na validação.');
           Exit;
       end;
   end;

    DMMacs.TLoja.Edit;

	 //Controle para exibição do campo de multiplos vendedores dentro da ordem de serviços mecanica
    If CbExibCampoMultiplosVendedores.Checked = true Then
       DMMACS.TLoja.FieldByName('USARMULTIPLOSVENDEDORESOS').AsString := '1'
    Else
       DMMACS.TLoja.FieldByName('USARMULTIPLOSVENDEDORESOS').AsString := '0';

	 //Controle para importação de ST para o produto pelo xml
    If CbImpSubstituicaoXML.Checked = true Then
       DMMACS.TLoja.FieldByName('IMPSTXMLPRODUTO').AsString := '1'
    Else
       DMMACS.TLoja.FieldByName('IMPSTXMLPRODUTO').AsString := '0';

	 //Controle para exibição do campo de vendedores dentro da ordem de serviços mecanica
    If CbExibCampoVendedor.Checked = true Then
       DMMACS.TLoja.FieldByName('USARVENDEDOROSMEC').AsString := '1'
    Else
       DMMACS.TLoja.FieldByName('USARVENDEDOROSMEC').AsString := '0';

	 //Controle das funções de F10 e F11 em produtos
    If CbdesabilitaF10F11.Checked = true Then
       DMMACS.TLoja.FieldByName('DESABCOPIAPRODUTOS').AsString := '1'
    Else
       DMMACS.TLoja.FieldByName('DESABCOPIAPRODUTOS').AsString := '0';

	 //Controle para exibição do campo de permissão para mais de um produto com o mesmo controle interno
    If Cbmaisdeumcontroleinterno.Checked = true Then
       DMMACS.TLoja.FieldByName('MAISDEUMCONTROLEINTERNO').AsString := '1'
    Else
       DMMACS.TLoja.FieldByName('MAISDEUMCONTROLEINTERNO').AsString := '0';


	 //Controle para exibição do campo com quantidades de 4 casas após a virgula
    If Cb4casas.Checked = true Then
       DMMACS.TLoja.FieldByName('USAR4CASASQTD').AsString := '1'
    Else
       DMMACS.TLoja.FieldByName('USAR4CASASQTD').AsString := '0';

    DMMACS.TLoja.FieldByName('SENHAEMAIL_EMPRESA').AsString := FMenu.Cripto.TextToCriptoHex(edSenhaEmailEmpresa.Text);
    //Informa caminho padrão de xml
    DMMACS.TLoja.FieldByName('CAMINHOXML').AsString := EdtCaminhoXml.Text;
	 //Controle de impressao para determinar se força o uso da cobrança como cartão quando forma de pagamento tiver cartão
    If CbNaoAtualizaEstoquePC.Checked = true Then
       DMMACS.TLoja.FieldByName('FORCARCARTAO').AsString := '1'
    Else
       DMMACS.TLoja.FieldByName('FORCARCARTAO').AsString := '0';

//    falta configurar para gravar codigos de cfop
	 //Controle de impressao de nome da equipe no comprovante de abertura de ordem de serviços
    If CbNaoAtualizaEstoquePC.Checked = true Then
       DMMACS.TLoja.FieldByName('NAOATUALIZAESTOQUEPC').AsString := '1'
    Else
       DMMACS.TLoja.FieldByName('NAOATUALIZAESTOQUEPC').AsString := '0';
	 //Controla se a empresa usa ou não as duas placas adicionais em OS
    If CbNaoAtualizaEstoquePC.Checked = true Then
       DMMACS.TLoja.FieldByName('USAPLACASADICIONAIS').AsString := '1'
    Else
       DMMACS.TLoja.FieldByName('USAPLACASADICIONAIS').AsString := '0';


    // Informe se devemos negar o cadastro de produtos com descrições identicas S bloqueia N ou Nulo não bloqueia
	 If CbValidaDescricaoProduto.Checked=True Then
       DMMACS.TLoja.FieldByName('VERIFDESCPRODUTO').AsString := 'S'
    Else
       DMMACS.TLoja.FieldByName('VERIFDESCPRODUTO').AsString := 'N';

    //Vontrole para Baixa Automatica de Catão de Créditos
    If CbBaixaAutomaticaCartao.Checked = true Then
       DMMACS.TLoja.FieldByName('BAIXAAUTOMATICACARTAO').AsString := '1'
    Else
       DMMACS.TLoja.FieldByName('BAIXAAUTOMATICACARTAO').AsString := '0';


    //Marca se o sistema atualiza ou não estoque do pedido de compra
    If CBImpNomeEquipeComprovanteOrdem.Checked = true Then
       DMMACS.TLoja.FieldByName('IMPNOMEEQUIPECOMPORDEM').AsString := '1'
    Else
       DMMACS.TLoja.FieldByName('IMPNOMEEQUIPECOMPORDEM').AsString := '0';

    //Determina se o sistema deve ou não puxar as informações do ultimo produto gravado para o novo
    If CBInfoUltProdNovo.Checked = true Then
       DMMACS.TLoja.FieldByName('PUXAULTPRONOVO').AsString := '1'
    Else
       DMMACS.TLoja.FieldByName('PUXAULTPRONOVO').AsString := '0';

    // SE FOR IGUAL A 1 EXIBE O PAINEL DE DESCONTO NO PDV, CASO CONTRARIO NAO EXIBE
    If CBDesconto.Checked = true Then
       DMMACS.TLoja.FieldByName('PAINEL_DESC').AsString := '1'
    Else
       DMMACS.TLoja.FieldByName('PAINEL_DESC').AsString := '0';

    If CBPesqIntelProd.Checked = true Then
       DMMACS.TLoja.FieldByName('PESQINTELPROD').AsString := '1'
    Else
       DMMACS.TLoja.FieldByName('PESQINTELPROD').AsString := '0';

    If CBControleProdLista.Checked=True Then
       DMMACS.TLoja.FieldByName('controlprodlista').AsString := '1'
    Else
       DMMACS.TLoja.FieldByName('controlprodlista').AsString := '0';

    //Controla se o serviços serah impedido de uso na emissão de nf de ordemmec
    If CBImpedirServicosNf.Checked=True Then
       DMMACS.TLoja.FieldByName('IMPEDIRSERVICOS').AsString := '1'
	 Else
       DMMACS.TLoja.FieldByName('IMPEDIRSERVICOS').AsString := '0';

    //Paulo 13/07/2010: Para Gerar Financeiro com a Data do pedido
    If CBDataPedido.Checked = true Then
       DMMACS.TLoja.FieldByName('GERAFINANCDTSIS').AsString := '1'
    Else
       DMMACS.TLoja.FieldByName('GERAFINANCDTSIS').AsString := '0';

    //Paulo 23/12/2010: Para atrelar plano de conta ao produto
    If cbPlanoContaProd.Checked = true Then
       DMMACS.TLoja.FieldByName('PLANOCTAPROD').AsString := '1'
    Else
       DMMACS.TLoja.FieldByName('PLANOCTAPROD').AsString := '0';

    //Paulo 02/02/2011 - INFORMA SE O DEVE MOSTRAR O ESTOQUE DA LOJA(MATRIZ)
    If cbEstoqueLoja.Checked = true Then
       DMMACS.TLoja.FieldByName('MOSTRAESTOQUE').AsString := '1'
    Else
       DMMACS.TLoja.FieldByName('MOSTRAESTOQUE').AsString := '0';

    //Paulo 14/04/2011 - INFORMA SE O DEVE PERSONALISAR DESPESAS ADICIONAIS
    If cbDespAdic.Checked = true Then
       DMMACS.TLoja.FieldByName('PERSODESPADIC').AsString := '1'
    Else
       DMMACS.TLoja.FieldByName('PERSODESPADIC').AsString := '0';

    //Paulo - 08/09/2011: Verifica se deve mostrar se movimenta ou não lançamentos cartão no caixa
    if CBMOVLANCCARTAO.Checked = True  then
       DMMACS.TLoja.FieldByName('MOVCAIXACARTAO').AsString := '1'
    else
       DMMACS.TLoja.FieldByName('MOVCAIXACARTAO').AsString := '0';

    //Paulo 25/11/2011 - Informa o controle de dias de vencimento
    If EdDiasVenc.Text='' Then
		DMMacs.TLoja.FieldByName('DIASVENC').AsInteger:=0
    Else
    	DMMacs.TLoja.FieldByName('DIASVENC').AsInteger:= StrToInt(EdDiasVenc.Text);

     //Paulo 02/02/2011 - INFORMA SE O DEVE GERAR NOTA DE SERVIÇOS (NFSe)
    If CBGeraNFSe.Checked = true Then
       DMMACS.TLoja.FieldByName('GERANFSE').AsString := '1'
    Else
       DMMACS.TLoja.FieldByName('GERANFSE').AsString := '0';

    //ALEX - Grava config para o sistema forçar o controle de NCM ou não
    If CBControlaNCM.Checked = true Then
       DMMACS.TLoja.FieldByName('CONTROLANCM').AsString := '1'
    Else
       DMMACS.TLoja.FieldByName('CONTROLANCM').AsString := '0';

    //Edmar - 02/04/2014 - Grava se deve ler fatura ao importar XML de entrada
    if cbInsereFaturaNotaEntrada.Checked then
    	DMMACS.TLoja.FieldByName('INSERIRFATURA').AsString := '1'
    else
		DMMACS.TLoja.FieldByName('INSERIRFATURA').AsString := '0';

    //Edmar - 04/02/2015 - Grava se deve ou não exibir o campo de classificação na ordem de serviço
    if cbExiClassServico.Checked then
    	DMMACS.TLoja.FieldByName('EXIBECLASSSERV').AsString := '1'
    else
		DMMACS.TLoja.FieldByName('EXIBECLASSSERV').AsString := '0';

    //Edmar - 24/02/2015 - Adiciona a marcação de usar placa adicional na ordem de serviço
    if CBUsaPlacaAdicional.Checked then
    	DMMACS.TLoja.FieldByName('USAPLACASADICIONAIS').AsString := '1'
    else
		DMMACS.TLoja.FieldByName('USAPLACASADICIONAIS').AsString := '0';

    //Edmar - 27/12/2016 - Adiciona a marcação pra recalcular lucratividade do produto       
    if cbRecalcLucratividadeProduto.Checked then
       DMMACS.TLoja.FieldByName('RECALCULA_LUCRATIV_PRODUTO').AsString := '1'
    else
       DMMACS.TLoja.FieldByName('RECALCULA_LUCRATIV_PRODUTO').AsString := '0';
       
    //Edmar - 17/06/2015 - controle do tipo de impressão do nfc-e
	 if cbTipoImpressaoNFCe.Text = 'Completo' then
    	DMMACS.TLoja.FieldByName('TIPOIMP_NFCE').AsString := 'COMP'
    else
    	if cbTipoImpressaoNFCe.Text = 'Cupom Fiscal' then
			DMMACS.TLoja.FieldByName('TIPOIMP_NFCE').AsString := 'CUPOM'
       else
    		DMMACS.TLoja.FieldByName('TIPOIMP_NFCE').AsString := 'SIMP';
       
    // CFOP DE RETORNO DE VENDA UTILIZANDO NF DE EMISSAO PROPRIA
    //DENTRO DO ESTADO
    DMMACS.TLoja.FieldByName('COD_DEVNOTAPROPDENTRO').AsInteger := XCODCFOP_DEVPROPRIODENTRO;
    //FORA DO ESTADO
    DMMACS.TLoja.FieldByName('COD_DEVNOTAPROPFORA').AsInteger := XCODCFOP_DEVPROPRIOFORA;

    // CFOP UTILIZADA PARA CFOP DE FRETES
    DMMACS.TLoja.FieldByName('CFOPFRETEINT').AsInteger := XCODCFOPINTFRETE;
    // CFOP UTILIZADA PARA CFOP DE FRETES EXTERNO
    DMMACS.TLoja.FieldByName('CFOPFRETEEXT').AsInteger := XCODCFOPEXTFRETE;


    // CFOP UTILIZADA PARA CFOP EXTERNO DE SIMPLES REMESSA
    DMMACS.TLoja.FieldByName('CFOPEXTSIMPREMESSA').AsInteger := XCODCFOPEXTSIMPREMESSA;

    // CFOP UTILIZADA PARA CFOP INTERNO DE SIMPLES REMESSA
    DMMACS.TLoja.FieldByName('CFOPINTSIMPREMESSA').AsInteger := XCODCFOPINTSIMPREMESSA;

    // CFOP UTILIZADA PARA ENTRADA DE PRODUTOS DE MATERIAL DE CONSUMO
    DMMACS.TLoja.FieldByName('CFOPMATCONSUMO').AsInteger := XCODCFOPMATCONSUMO;

    // CFOP UTILIZADA PARA ENTRADA DE PRODUTOS DE MATERIAL DE CONSUMO EXTERNOS
    DMMACS.TLoja.FieldByName('CFOPMATCONSUMOEXT').AsInteger := XCODCFOPMATCONSUMOEXT;

    // CFOP UTILIZADOS PARA REMESSA DE GARANTIA DENTRO DO ESTADO
    DMMACS.TLoja.FieldByName('CFOPINTGARANTIA').AsInteger := XCODCFOPINTGARANTIA;

    // CFOP UTILIZADOS PARA REMESSA DE GARANTIA FORA DO ESTADO
    DMMACS.TLoja.FieldByName('CFOPEXTGARANTIA').AsInteger := XCODCFOPEXTGARANTIA;

    // CFOP UTILIZADOS PARA DEVOLUÇÃO DE MERCADORIA DENTRO DO ESTADO
    DMMACS.TLoja.FieldByName('CFOPINTDEVOLUC').AsInteger := XCODCFOPINTDEVOLUCAO;

    // CFOP UTILIZADOS PARA DEVOLUÇÃO DE MERCADORIA FORA DO ESTADO
    DMMACS.TLoja.FieldByName('CFOPEXTDEVOLUC').AsInteger := XCODCFOPEXTDEVOLUCAO;

    // CFOP UTILIZADOS PARA DEVOLUÇÃO DE MERCADORIA DENTRO DO ESTADO ST
    DMMACS.TLoja.FieldByName('CFOPINTDEVOLUCST').AsInteger := XCODCFOPINTDEVOLUCAOST;

    // CFOP UTILIZADOS PARA DEVOLUÇÃO DE MERCADORIA FORA DO ESTADOST
    DMMACS.TLoja.FieldByName('CFOPEXTDEVOLUCST').AsInteger := XCODCFOPEXTDEVOLUCAOST;

    // CFOP UTILIZADOS PARA COMPRA DENTRO DO ESTADO S.T.
    DMMACS.TLoja.FieldByName('CFOPINTSTPC').AsInteger := XCODCFOPINTSTPC;

    // CFOP UTILIZADOS PARA COMPRA FORA DO ESTADO S.T.
    DMMACS.TLoja.FieldByName('CFOPEXTSTPC').AsInteger := XCODCFOPEXTSTP;


    // CFOP UTILIZADOS PARA COMPRA DENTRO DO ESTADO O.P.
    DMMACS.TLoja.FieldByName('CFOPINTPC').AsInteger := XCODCFOPINTPC;

    // CFOP UTILIZADOS PARA COMPRA FORA DO ESTADO O.P.
    DMMACS.TLoja.FieldByName('CFOPEXTPC').AsInteger := XCODCFOPEXTPC;

    // CFOP UTILIZADOS PARA SERVIÇOS DENTRO DO ESTADO
    DMMACS.TLoja.FieldByName('CFOPINTSERV').AsInteger := XCODCFOPINTSERV;

    // CFOP UTILIZADOS PARA SERVIÇOS FORA DO ESTADO
    DMMACS.TLoja.FieldByName('CFOPEXTSERV').AsInteger := XCODCFOPEXTSERV;


    // CFOP UTILIZADOS NA VENDA PARA CLIENTES DE ESTADO IGUAL AO ESTADO DA EMPRESA USUARIA DO SISTEMA
    DMMACS.TLoja.FieldByName('CFOPINTERNO').AsInteger := XCODCFOP_INTERNO;

    //CFOP UTILIZADOS NA VENDA PARA CLIENTES DE ESTADO DIFERENTE AO ESTADO DA EMPRESA USUARIA DO SISTEMA
    DMMACS.TLoja.FieldByName('CFOPEXTERNO').AsInteger := XCODCFOP_INTEREST;

    //COD SITUAÇÃO TRIBUTRARIA INTERNA
    DMMACS.TLoja.FieldByName('CFOPINTERNOCST').AsInteger := XCODSTINTERNO;

    //COD SITUACAO TRIBUTARIA EXTERNA
    DMMACS.TLoja.FieldByName('CFOPEXPERTOCST').AsInteger := XCODSTEXTERNO;

    // CFOP UTILIZADOS NA VENDA PARA INDUSTRIAS DE ESTADO IGUAL AO ESTADO DA EMPRESA USUARIA DO SISTEMA
    DMMACS.TLoja.FieldByName('INDCFOPINTERNO').AsInteger := XCODSTINTERNOIND;

    //CFOP UTILIZADOS NA VENDA PARA INDUSTRIAS DE ESTADO DIFERENTE AO ESTADO DA EMPRESA USUARIA DO SISTEMA
    DMMACS.TLoja.FieldByName('INDCFOPEXTERNO').AsInteger := XCODSTEXTERNOIND;

    //Paulo 29/11/2011: CFOP utilizada em ENTRADAS POR EMISSAO PROPRIA dentro do estado
    DMMACS.TLoja.FieldByName('EMISSAOPROPDENTRO').AsInteger := XCODCFOPPROPDENTRO;

    //Paulo 29/11/2011: CFOP utilizada em ENTRADAS POR EMISSAO PROPRIA fora do estado
    DMMACS.TLoja.FieldByName('EMISSAOPROPFORA').AsInteger := XCODCFOPPROPFORA;

    //Edmar - 24/02/2015 - Salva o CFOP para outra entradas de emissão propria para dentro do estado
    DMMACS.TLoja.FieldByName('CFOPINTOUTEMISSAOPROP').AsInteger := XCODCFOPOUTPROPDENTRO;

    //Edmar - 24/02/2015 - Salva o CFOP para outra entradas de emissão propria para fora do estado
    DMMACS.TLoja.FieldByName('CFOPEXTOUTEMISSAOPROP').AsInteger := XCODCFOPOUTPROPFORA;    

    //SE FOR IGUAL A 1 REVELA A COLUNA DE CUSTO NA GRID DE SIMILARES, CASO CONTRÁRIO NÃO EXIBE
    If CBVLRCUSTO.Checked = true Then
       DMMACS.TLoja.FieldByName('REVELCUSTOPRODUTO').AsString := '1'
    Else
       DMMACS.TLoja.FieldByName('REVELCUSTOPRODUTO').AsString := '0';

    If cbGeraCTAROutros.Checked Then
       DMMACS.TLoja.FieldByName('GERACTAROUTROS').AsString := '1'
    Else
       DMMACS.TLoja.FieldByName('GERACTAROUTROS').AsString := '0';

    //SE FOR IGUAL A 1 REVELA A MSG DE ESTOQUE MINIMO SENÃO NÃO
    If CBMSGESTMIN.Checked = true Then
       DMMACS.TLoja.FieldByName('MSGESTOQUEMIN').AsString := '1'
    Else
       DMMACS.TLoja.FieldByName('MSGESTOQUEMIN').AsString := '0';

    //CONTROLA QUAL O PADRÃO PARA GERAR NUMPARC
    If CBPadDocMec.Checked = true Then
       DMMACS.TLoja.FieldByName('PADMECDOCFIN').AsString := '1'
    Else
       DMMACS.TLoja.FieldByName('PADMECDOCFIN').AsString := '0';

    //SE FOR PRODUÇÃO O BANCO RECEBE VALOR 1, CASO CONTRÁRIO VALOR 2 (controle para NFe)
    if CBAmbiente.Text = 'PRODUÇÃO'
    then begin
         DMMACS.TLoja.FieldByName('NFEPROHOMO').AsInteger:=1;
    end
    else begin
         DMMACS.TLoja.FieldByName('NFEPROHOMO').AsInteger:=2;
    end;


    //Define a Versão da NFe em Trabalho
    DMMACS.TLoja.FieldByName('NFEVERSAO').AsString:=cbVersao.Text;

    //Define o tipo de emissão da NFe em Trabalho
    DMMACS.TLoja.FieldByName('MODODEEMISSAONFE').AsString:=CbTipoEnvioNfe.Text;

    //Djonathan - 13/11/2009: SE FOR IGUAL A 1 MOSTRA CUSTOS NO PEDIDO DE VENDA SENAO NAO
    if CBMostraCustoPedV.Checked = true Then
       DMMACS.TLoja.FieldByName('MOSTRACUSTOPEDV').AsString := '1'
    Else
    	DMMACS.TLoja.FieldByName('MOSTRACUSTOPEDV').AsString := '0';

    //Djonathan - 09/03/2010: SE FOR IGUAL A 1 ATUALIZA PRODUTOS DE BANCO DE DADOS
    if CBSincronismo.Checked = true Then
    	DMMACS.TLoja.FieldByName('ATUALIZABANCO').AsString := '1'
    Else
    	DMMACS.TLoja.FieldByName('ATUALIZABANCO').AsString := '0';

    //Djonathan - 09/03/2010: SE FOR IGUAL A 1 ATUALIZA PRODUTOS DE BANCO DE DADOS AO INICIAR
    if CBSincIni.Checked = true Then
    	DMMACS.TLoja.FieldByName('ATUALIZABANCOAUT').AsString := '1'
    Else
    	DMMACS.TLoja.FieldByName('ATUALIZABANCOAUT').AsString := '0';

    //Djonathan - 06/04/2010: SE FOR IGUAL A 1 CIRA ARQUIVOS PARA ATUALIZAR BANCO DE DADOS
    if CBCriaArq.Checked = true Then
    	DMMACS.TLoja.FieldByName('CRIAARQFTP').AsString := '1'
    Else
    	DMMACS.TLoja.FieldByName('CRIAARQFTP').AsString := '0';

    //Djonathan - 06/04/2010: SE FOR IGUAL A 1 RECEBE ARQUIVOS PATA ATUALIZAR BANCO DE DADOS
    if CBRecArq.Checked = true Then
    	DMMACS.TLoja.FieldByName('RECEBEARQFTP').AsString := '1'
    Else
    	DMMACS.TLoja.FieldByName('RECEBEARQFTP').AsString := '0';

    //Djonatahn - 09/03/2010: ATUALIZA DADOS DE SINCRONISMO NO BANCO   
    DMMACS.TLoja.FieldByName('HOSTFTP').AsString := EDHost.Text;
    DMMACS.TLoja.FieldByName('USERNAMEFTP').AsString := EDUser.Text;
    DMMACS.TLoja.FieldByName('PASSWORDFTP').AsString := FMenu.Cripto.TextToCriptoHex(EDPassword.Text);
    DMMACS.TLoja.FieldByName('DIRDOWFTP').AsString := EDDirDownFTP.Text;
    DMMACS.TLoja.FieldByName('DIRUPFTP').AsString := EDDirUpFTP.Text;           
    DMMACS.TLoja.FieldByName('HORAFTP').AsString := EDHorFTP.Text;

    //Paulo - 14/03/2011: Insere os dados se deve inserir os dados de serviços na NFe
    if cbImpServNFe.Checked = true Then
    	DMMACS.TLoja.FieldByName('SERVNFE').AsString := '1'
    Else
    	DMMACS.TLoja.FieldByName('SERVNFE').AsString := '0';

    //Paulo - 23/03/2011: Insere os dados se deve controlar a numeração para pedido de venda
    if cbControlaNum.Checked = true Then
    	DMMACS.TLoja.FieldByName('CTRLNUM').AsString := '1'
    Else
    	DMMACS.TLoja.FieldByName('CTRLNUM').AsString := '0';

    //SE FOR IGUAL A 1 REVELA A MSG DE LIMITE DE CRÉDITO SENÃO NÃO
    If CBLIMITCRED.Checked = true Then
       DMMACS.TLoja.FieldByName('MSGLIMITCRED').AsString := '1'
    Else
       DMMACS.TLoja.FieldByName('MSGLIMITCRED').AsString := '0';

       // - 14/04/2009: DESATIVAR PAGINA INCIAL DA ORIN NO INTERNET EXPLORER
    If cbDesativaSite.Checked = true Then
       DMMACS.TLoja.FieldByName('DESATIVASITE').AsString := '1'
    Else
       DMMACS.TLoja.FieldByName('DESATIVASITE').AsString := '0';

    // - 14/04/2009: DESATIVAR FEED DO MENU PRINCIPAL
    If cbDesativaFeed.Checked = true Then
       DMMACS.TLoja.FieldByName('DESATIVAFEED').AsString := '1'
    Else
       DMMACS.TLoja.FieldByName('DESATIVAFEED').AsString := '0';

    // - 28/04/2009: ativar grid zebrada
    If cbAtivaGrid.Checked = true
    Then Begin
       FMenu.XGRIDZEBRADA := True;
       DMMACS.TLoja.FieldByName('ATIVAGRID').AsString := '1';
    End
    Else Begin
       FMenu.XGRIDZEBRADA := False;
       DMMACS.TLoja.FieldByName('ATIVAGRID').AsString := '0';
    End;

    /// - 28/04/2009: ATIVA CONSULTA RAPIDA NAS PESQUISAS
    If cbAtivaConsultaRapida.Checked = true
    Then Begin
       FMenu.XCONSULTARAPIDA := True;
       DMMACS.TLoja.FieldByName('ATIVACONSULTARAP').AsString := '1';
    End
    Else Begin
       FMenu.XCONSULTARAPIDA := False;
       DMMACS.TLoja.FieldByName('ATIVACONSULTARAP').AsString := '0';
    End;
          
    If RGTipoDuplicata.ItemIndex=0 Then
       DMMACS.TLoja.FieldByName('TIPODUPLICATA').AsString:='1'
	 Else
       DMMACS.TLoja.FieldByName('TIPODUPLICATA').AsString:='2';

    // verifica se foi solicitado para visualizar nome fantasia ou razão social
    // RGDuplicata.ItemIndex = 0 eh razao social
    If RGDuplicata.ItemIndex = 0
    Then Begin
       DMMACS.TLoja.FieldByName('VISUALNF').AsString := '0';
       DMMACS.TLoja.FieldByName('VISUALRS').AsString := '1';
    End
    Else Begin
       DMMACS.TLoja.FieldByName('VISUALNF').AsString := '1';
       DMMACS.TLoja.FieldByName('VISUALRS').AsString := '0';
    End;

    // SE FOR SELECIONADO EH PARA USO DA GUINCHOMAQ A ORDEM DE SERVIÇO
    If CBLocacao.Checked = true Then
       DMMACS.TLoja.FieldByName('ORDEMLOCA_GUINDASTE').AsString := '1'
    else
       DMMACS.tloja.FieldByName('ORDEMLOCA_GUINDASTE').AsString := '0';

    If CBGeraFinanceiro.Checked = true Then
       DMMACS.TLoja.FieldByName('gerafinanceiro').AsString := '1'
    Else
       DMMACS.TLoja.FieldByName('gerafinanceiro').AsString := '0';

    // SE ESTIVER SELECIONADO, O PAINEL DE ALTERAÇÃO DE VALOR UNIT NO PDV TORNA-SE VISIVEL
    iF CBVlrUnitario.Checked = true then
       DMMACS.TLoja.FieldByName('PDVVLRUNIT').AsString := '1'
    else
       DMMACS.TLoja.FieldByName('PDVVLRUNIT').AsString := '0';

    // se estiver selecionado, a busca de preços sera por venda a vista   
    If CBTipoVenda.Checked = true Then
       DMMACS.TLoja.FieldByName('TIPOVENDA').AsString := '1'
    Else
       DMMACS.TLoja.FieldByName('TIPOVENDA').AsString := '0';

    If (CBZEROPROD.Checked=True) And (DBNCASASPROD.Text='')
    Then Begin
        Mensagem('OPÇÃO BLOQUEADA', 'Informe o tamanho que deverá possuir o código interno dos produtos!', '' , 1, 1, false, 'i');
        DBNCASASPROD.SetFocus;
        Exit;
    End;
    //GRAVA SE O CÓDIGO DO PRODUTO DEVE SER ACRECIDO DE ZEROS OU NÃO
    If CBZEROPROD.Checked=True Then
        DMMacs.Tloja.FieldByName('ZEROCODPRODUTO').AsInteger:=1
    Else
        DMMacs.Tloja.FieldByName('ZEROCODPRODUTO').AsInteger:=0;

    //GRAVA SE O PEDIDO DE COMPRA TERÁ O BOTÃO FISCAL VISÍVEL
    If CBTELAFISCAL.Checked=True Then
        DMMacs.Tloja.FieldByName('BLOQBTNFISCAL').AsInteger:=1
    Else
        DMMacs.Tloja.FieldByName('BLOQBTNFISCAL').AsInteger:=0;

    //GRAVA SE O ESTOQUE FÍSICO DEVE SER ATUALIZADO DIRETO NO PEDIDO de venda
    If CBAtuaEstoque.Checked=True Then
        DMMacs.Tloja.FieldByName('ATUAESTOQUE').AsInteger:=1
    Else
        DMMacs.Tloja.FieldByName('ATUAESTOQUE').AsInteger:=0;

    //GRAVA SE O ESTOQUE FÍSICO DEVE SER ATUALIZADO DIRETO NO PEDIDO  compra
    If CBAtuaEstoquePC.Checked=True Then
        DMMacs.Tloja.FieldByName('ATUALIZAESTOQUEPC').AsInteger:=1
    Else
        DMMacs.Tloja.FieldByName('ATUALIZAESTOQUEPC').AsInteger:=0;


    //GRAVA SE PODE VENDER COM ESTOQUE FÍSICO NEGATIVO
    If CBVENDNEG.Checked=True Then
        DMMacs.Tloja.FieldByName('VENDESTNEG').AsInteger:=1
    Else
        DMMacs.Tloja.FieldByName('VENDESTNEG').AsInteger:=0;

    //GRAVA SE PODE VENDER COM SALDO ESTOQUE NEGATIVO
    If CDVENDSALDONEG.Checked=True Then
        DMMacs.Tloja.FieldByName('VENDSALDONEG').AsInteger:=2
    Else
        DMMacs.Tloja.FieldByName('VENDSALDONEG').AsInteger:=0;

    //GRAVA SE DEVE IMPRIMIR O PEDIDO SEM PRÉ VISUALIZAR
    If CBIMPPED.Checked=True Then
        DMMacs.Tloja.FieldByName('IMPPED').AsInteger:=1
    Else
        DMMacs.Tloja.FieldByName('IMPPED').AsInteger:=0;

    //GRAVA SE DEVE IMPRIMIR AUTOMATICAMENTE O PEDIDO AO FECHÁ-LO
    If CBIMPPEDFECH.Checked=True Then
        DMMacs.Tloja.FieldByName('IMPPEDFECH').AsInteger:=1
    Else
        DMMacs.Tloja.FieldByName('IMPPEDFECH').AsInteger:=0;

    //GRAVA SE DEVE IMPRIMIR A DUPLICATA SEM PRÉ VISUALIZAÇÃO
    If CBIMPDUP.Checked=True Then
        DMMacs.Tloja.FieldByName('IMPDUP').AsInteger:=1
    Else
        DMMacs.Tloja.FieldByName('IMPDUP').AsInteger:=0;

    //GRAVA SE DEVE IMPRIMIR AUTOMATICAMENTE A DUPLICATA AO FECHÁ-LA
    If CBIMPDUPAUT.Checked=True Then
        DMMacs.Tloja.FieldByName('IMPDUPAUT').AsInteger:=1
    Else
        DMMacs.Tloja.FieldByName('IMPDUPAUT').AsInteger:=0;

    //GRAVA SE DEVE O VALOR DE VENDA DO PRODUTO DEVE SER CALCULAD OPELO SISTEMA
    If CBCALCVALVEND.Checked=True Then
        DMMacs.Tloja.FieldByName('CALVALVEND').AsInteger:=1
    Else
        DMMacs.Tloja.FieldByName('CALVALVEND').AsInteger:=0;

    //GRAVA SE DEVE SER REALIZADO O CONTROLE DE CPF/CNPJ DE CLIENTES
    If CBCONTCPFCLI.Checked=True Then
        DMMacs.Tloja.FieldByName('CONTCPFCNPJCLI').AsInteger:=1
    Else
        DMMacs.Tloja.FieldByName('CONTCPFCNPJCLI').AsInteger:=0;

    //GRAVA SE DEVE SER REALIZADO O CONTROLE DE CPF/CNPJ DE FORNECEDORES
    If CBCONTCPFFORNEC.Checked=True Then
        DMMacs.Tloja.FieldByName('CONTCPFCNPJFOR').AsInteger:=1
    Else
        DMMacs.Tloja.FieldByName('CONTCPFCNPJFOR').AsInteger:=0;

    //GRAVA QUAL O COMPONENTE QUE DEVE POSSUIR O FOCUS NO PEDIDO
    CASE RGFOCU.ItemIndex OF
    	0:DMMacs.Tloja.FieldByName('FOCUITEMPED').AsString:='BP';
    	1:DMMacs.Tloja.FieldByName('FOCUITEMPED').AsString:='CB';
    	2:DMMacs.Tloja.FieldByName('FOCUITEMPED').AsString:='CA';
       3:DMMacs.Tloja.FieldByName('FOCUITEMPED').AsString:='PR';
    END;

    //GRAVA QUAL O COMPONENTE DEVE APARECER PARA REALIZAR A CONSULTA DE PRODUTOS EM PEDIDOQUE DEVE POSSUIR O FOCUS NO PEDIDO
    CASE RGCOMPCONST.ItemIndex OF
    	0:DMMacs.Tloja.FieldByName('CAMPOPESQITEMPED').AsString:='CI';
    	1:DMMacs.Tloja.FieldByName('CAMPOPESQITEMPED').AsString:='CC';
    	2:DMMacs.Tloja.FieldByName('CAMPOPESQITEMPED').AsString:='CF';
       3:DMMacs.Tloja.FieldByName('CAMPOPESQITEMPED').AsString:='PL';
    END;

    //Paulo 12/07/2011: GRAVA QUAL O COMPONENTE DEVE APARECER PARA REALIZAR A CONSULTA DE PRODUTOS EM PEDIDOQUE DEVE POSSUIR O FOCUS NA ORDEM
    CASE RGConsOS.ItemIndex OF
    	0:DMMacs.Tloja.FieldByName('FOCUITEMOS').AsString:='CI';
    	1:DMMacs.Tloja.FieldByName('FOCUITEMOS').AsString:='CB';
    	2:DMMacs.Tloja.FieldByName('FOCUITEMOS').AsString:='CF';
       3:DMMacs.Tloja.FieldByName('FOCUITEMOS').AsString:='NF';
    END;

    //GRAVA SE DEVE SER REALIZADO O CONTROLE DE VENDEDORES INDIVIDUAIS PARA CADA ITEM DO PEDIDO DE VENDA
    If CBVENDITEMPROD.Checked=True Then
        DMMacs.Tloja.FieldByName('VENDITEMPROD').AsInteger:=1
    Else
        DMMacs.Tloja.FieldByName('VENDITEMPROD').AsInteger:=0;

    //GRAVA SE DEVE SE O SISTEMA DEVE TRABALHAR COM JUROS COMPOSTOS
    If CBJURCOMP.Checked=True Then
        DMMacs.Tloja.FieldByName('JURCOMP').AsInteger:=1
    Else
        DMMacs.Tloja.FieldByName('JURCOMP').AsInteger:=0;

    //GRAVA SE DEVE IMPRIMIR EM ETIQUETA O CÓDIGO DO FORNECEDOR
    If CBETCODFAB.Checked=True Then
        DMMacs.Tloja.FieldByName('IECODFAB').AsInteger:=1
    Else
        DMMacs.Tloja.FieldByName('IECODFAB').AsInteger:=0;

    //GRAVA SE DEVE IMPRIMIR EM ETIQUETA A DESC DO SIMILAR
    If CBETDESC.Checked=True Then
        DMMacs.Tloja.FieldByName('IEDESC').AsInteger:=1
    Else
        DMMacs.Tloja.FieldByName('IEDESC').AsInteger:=0;

    //GRAVA SE DEVE IMPRIMIR EM ETIQUETA O PREÇO
    If CBETPRECO.Checked=True Then
    begin
        if Descricao.Checked=true then // ***
        DMMacs.Tloja.FieldByName('IEPRECO').AsInteger:=1
    end
    Else
        DMMacs.Tloja.FieldByName('IEPRECO').AsInteger:=0;

    //GRAVA SE DEVE IMPRIMIR AS BARRAS
    If CBETBARRAS.Checked=True Then
        DMMacs.Tloja.FieldByName('IEBARRA').AsInteger:=1
    Else
        DMMacs.Tloja.FieldByName('IEBARRA').AsInteger:=0;

    //GRAVA SE DEVE IMPRIMIR EM ETIQUETA O CÓDIGO COMPOSTO
    If CBETCODCOMPOSTO.Checked=True Then
        DMMacs.Tloja.FieldByName('IECODCOMPOSTO').AsInteger:=1
    Else
        DMMacs.Tloja.FieldByName('IECODCOMPOSTO').AsInteger:=0;

    //GRAVA SE DEVE IMPRIMIR EM ETIQUETA A CLASSIFICAÇÃO
    If CBClassificacao.Checked=True Then
        DMMacs.Tloja.FieldByName('IECLASS').AsInteger:=1
    Else
        DMMacs.Tloja.FieldByName('IECLASS').AsInteger:=0;

    //GRAVA SE DEVE IMPRIMIR EM ETIQUETA A O CONTRINT
    If CBETCTRLINTERNO.Checked=True Then
        DMMacs.Tloja.FieldByName('IECONTRINT').AsInteger:=1
    Else
        DMMacs.Tloja.FieldByName('IECONTRINT').AsInteger:=0;

    //Paulo 04/11/2010 - 162: GRAVA SE DEVE IMPREMIR O CAMPO COR(SOMENTE PARA DACI)
    If CBClassificacao2.Checked=True Then
        DMMacs.Tloja.FieldByName('IECLASS2').AsInteger:=1
    Else
        DMMacs.Tloja.FieldByName('IECLASS2').AsInteger:=0;
        
    //GRAVA SE DEVE IMPRIMIR EM ETIQUETA O FABRICANTE
    If CBETFabricante.Checked=True Then
        DMMacs.Tloja.FieldByName('IEFABR').AsInteger:=1
    Else
        DMMacs.Tloja.FieldByName('IEFABR').AsInteger:=0;

    //GRAVA SE DEVE IMPRIMIR EM ETIQUETA a marca do produto
    If CBMarca.Checked=True Then
        DMMacs.Tloja.FieldByName('IEMARCA').AsInteger:=1
    Else
        DMMacs.Tloja.FieldByName('IEMARCA').AsInteger:=0;

    //GRAVA SE DEVE IMPRIMIR EM ETIQUETA O VALOR A PRAZO
    If CBETPRECOPRAZO.Checked=True Then
    begin
    	 if Descricao.Checked=true then // ***
        DMMacs.Tloja.FieldByName('IEPRECOPRAZO').AsInteger:=1
    end
    Else
        DMMacs.Tloja.FieldByName('IEPRECOPRAZO').AsInteger:=0;

    //GRAVA SE DEVE IMPRIMIR EM ETIQUETA PARA COMPOSIÇÃO
    If CBETCOMPOSICAO.Checked=True Then
        DMMacs.Tloja.FieldByName('IECOMPOSICAO').AsInteger:=1
    Else
        DMMacs.Tloja.FieldByName('IECOMPOSICAO').AsInteger:=0;

    //GRAVA SE DEVE IMPRIMIR EM ETIQUETA PARA ALTURA E LARGURA
    If CBETALTURALARGURA.Checked=True Then
        DMMacs.Tloja.FieldByName('IEALTLARG').AsInteger:=1
    Else
        DMMacs.Tloja.FieldByName('IEALTLARG').AsInteger:=0;

    //GRAVA SE DEVE MOVIMENTAR A PRIMEIRA PARCELA DO CTAS RECEBER
    If CBMOVPARCAVISTA.Checked=True Then
        DMMacs.Tloja.FieldByName('MOVPARCAVISTA').AsInteger:=1
    Else
        DMMacs.Tloja.FieldByName('MOVPARCAVISTA').AsInteger:=0;

    //GRAVA SE O SISTEMA DEVE UTILIZAR FORMA DE PAGAMENTO DIFERENCIADA PARA COMPRAS E VENDAS
    If CBUTILFORMPAG.Checked=True Then
        DMMacs.Tloja.FieldByName('UTILFORMPG').AsInteger:=1
    Else
        DMMacs.Tloja.FieldByName('UTILFORMPG').AsInteger:=0;

    //GRAVA SE O SISTEMA DEVE REVELAR COMPO PARA POSSIBILITAR ALTERAÇÃO DA COMISSÃO EM ITENS DO PEDIDO
    If CBALTCOMPROD.Checked=True Then
        DMMacs.Tloja.FieldByName('ALTCOMPROD').AsInteger:=1
    Else
        DMMacs.Tloja.FieldByName('ALTCOMPROD').AsInteger:=0;
	 //GRAVA SE SERÁ IMPRESSO ETIQUETAS DE PRODUTOS PERSONALIZADAS OU NÃO
    If RGTipoEt.ItemIndex=0 Then
        DMMacs.Tloja.FieldByName('ETPERSONAL').AsInteger:=0;
    If RGTipoEt.ItemIndex=1 Then
        DMMacs.Tloja.FieldByName('ETPERSONAL').AsInteger:=1;
    If RGTipoEt.ItemIndex=2 Then
        DMMacs.Tloja.FieldByName('ETPERSONAL').AsInteger:=2;
    //Paulo 10/12/2010: Para impressão de etiquetas para ótica
    If RGTipoEt.ItemIndex=3 Then
        DMMacs.Tloja.FieldByName('ETPERSONAL').AsInteger:=3;
	 //GRAVA SE O SISTEMA DEVE ACIONAR O BOTÃO COMISSIONADOS
    If CBMULTCOMISS.Checked=True Then
        DMMacs.Tloja.FieldByName('USAMULTCOMIS').AsInteger:=1
    Else
        DMMacs.Tloja.FieldByName('USAMULTCOMIS').AsInteger:=0;

	 //GRAVA SE O SISTEMA DEVE LIBERAR COMBO DE GARANTIA EM PEDIDO
    If CBGARANTIA.Checked=True Then
        DMMacs.Tloja.FieldByName('USAGARANTIA').AsInteger:=1
    Else
        DMMacs.Tloja.FieldByName('USAGARANTIA').AsInteger:=0;
	 //GRAVA SE O SISTEMA DEVE UTILIZAR CONVERSÃO UNITARIA EM PED. COMPRA
    If CBConvertUnid.Checked=True Then
        DMMacs.Tloja.FieldByName('CONVERTUNID').AsInteger:=1
    Else
        DMMacs.Tloja.FieldByName('CONVERTUNID').AsInteger:=0;
      //********************************************************************
     //GRAVA SE DEVE IMPRIMIR EM ETIQUETA A DESCRIÇAO A PRAZO OU A VISTA
    If Descricao.Checked=True Then
        DMMacs.Tloja.FieldByName('DESCETIQUETA').AsInteger:=1
    Else
        DMMacs.Tloja.FieldByName('DESCETIQUETA').AsInteger:=0;
    //**********************************************************************

    // - 23/01/2009: grava se o sistema deve utilizar conversão unitária p/ embalagens em ped. venda
    If CBConverUnitEmb.Checked=True Then
        DMMacs.Tloja.FieldByName('CONVERTUNIDVEND').AsInteger:=1
    Else
        DMMacs.Tloja.FieldByName('CONVERTUNIDVEND').AsInteger:=0;

    // - 27/01/2009: grava se o sistema deve utilizar conversão unitária em venda
    If CBConverUnitVenda.Checked=True Then
        DMMacs.Tloja.FieldByName('CONVERTUNIDFERRO').AsInteger:=1
    Else
        DMMacs.Tloja.FieldByName('CONVERTUNIDFERRO').AsInteger:=0;

	 //GRAVA SE O SISTEMA DEVE POSSIBILITAR A DEVOLUÇÃO DE ESTOQUE EM PEDIDO
    If CBCTRLDVL.Checked=True Then
        DMMacs.Tloja.FieldByName('CTRLDVL').AsInteger:=1
    Else
        DMMacs.Tloja.FieldByName('CTRLDVL').AsInteger:=0;

	 //GRAVA SE O VLR DA COMISSAO EM ITEN PED VENDA DEVE SER BUSCADO DA TABELA DE ESTOQUE OU SIMPLESMENTE DA FUNCARGO
    If CBCOMISSPRODCADPROD.Checked=True Then
        DMMacs.Tloja.FieldByName('COMISSPRODCADPROD').AsInteger:=1
    Else
        DMMacs.Tloja.FieldByName('COMISSPRODCADPROD').AsInteger:=0;

	 //GRAVA SE O SISTEMA IRA CONTROLAR A DESCRIÇÃO DE CUPOM FISCA
    If CBDescCupom.Checked=True Then
        DMMacs.Tloja.FieldByName('OPERADESCCUPOM').AsInteger:=1
    Else
        DMMacs.Tloja.FieldByName('OPERADESCCUPOM').AsInteger:=0;

    //Paulo 01/09/2010: GRAVA SE O SISTEMA VAI TRABALHAR COM FICHA TÉCNICA
    IF CBFichaTecnica.Checked= True Then
       DMMacs.Tloja.FieldByName('ABREFICHATEC').AsInteger:=1
    Else
       DMMacs.Tloja.FieldByName('ABREFICHATEC').AsInteger:=0;


	 //GRAVA SE O SISTEMA DEVE TRABALHAR EM REDE OU NAO
    If CBRede.Checked=True Then
        DMMacs.Tloja.FieldByName('REDE').AsInteger:=1
    Else
        DMMacs.Tloja.FieldByName('REDE').AsInteger:=0;

    DMMACS.TLoja.FieldByName('CAMINHOXML').AsString := EdtCaminhoXml.Text;

	 //GRAVA SE O SISTEMA DEVE EFETUAR O CONTROLE DE MENSAGENS RECEBIDAS PELOS USUARIOS
    If CBCTRLMENS.Checked=True
    Then Begin
        DMMacs.Tloja.FieldByName('CTRLMENS').AsString:='1';
        If DBTIMEMENS.Text='' Then
        	DMMacs.Tloja.FieldByName('TIMEMENS').AsInteger:=300000;
    End
    Else Begin
        DMMacs.Tloja.FieldByName('CTRLMENS').AsString:='0';
    End;

    //GRAVA O CODIGO PRODUTO USADO COMO DIVERSOS
    DMMacs.Tloja.FieldByName('COD_PRODDIV').AsInteger:=XCod_ProdDiv;

	 //DEFINE OS CODIGOS DO PRODUTO A SEREM UTILIZADOS EM RELATORIO
    Case RGCODPRODREL1.ItemIndex of
    	0:DMMacs.Tloja.FieldByName('CODPRODREL1').AsString:='CODCOMPOSTO';
    	1:DMMacs.Tloja.FieldByName('CODPRODREL1').AsString:='CODBARRA';
    	2:DMMacs.Tloja.FieldByName('CODPRODREL1').AsString:='CODPRODFABR';
    	3:DMMacs.Tloja.FieldByName('CODPRODREL1').AsString:='COD_INTERNO';
    	4:DMMacs.Tloja.FieldByName('CODPRODREL1').AsString:='CONTRINT';
    End;
	 //DEFINE OS CODIGOS DO PRODUTO A SEREM UTILIZADOS EM RELATORIO
    Case RGCODPRODREL2.ItemIndex of
    	0:DMMacs.Tloja.FieldByName('CODPRODREL2').AsString:='CODCOMPOSTO';
    	1:DMMacs.Tloja.FieldByName('CODPRODREL2').AsString:='CODBARRA';
    	2:DMMacs.Tloja.FieldByName('CODPRODREL2').AsString:='CODPRODFABR';
    	3:DMMacs.Tloja.FieldByName('CODPRODREL2').AsString:='COD_INTERNO';
    	4:DMMacs.Tloja.FieldByName('CODPRODREL2').AsString:='CONTRINT';
    End;

	 //GRAVA SE A ECF ESTA ARREDONDANDO OU NAO
    If CBArredonda.Checked=True Then
        DMMacs.Tloja.FieldByName('ECFTRUNC').AsInteger:=1
    Else
        DMMacs.Tloja.FieldByName('ECFTRUNC').AsInteger:=0;

	 //GRAVA SE SISTEMA DEVE UTIKLIZAR IMPRESSAO DE COMPROVANTE DE VENDA DO TIPO MATRICIAL
    If CBImpMatricial.Checked=True Then
        DMMacs.Tloja.FieldByName('IMPMATRICIAL').AsInteger:=1
    Else
        DMMacs.Tloja.FieldByName('IMPMATRICIAL').AsInteger:=0;

	 //GRAVA SE SISTEMA DEVE UTIKLIZAR O ESQUEMA DE SELECIONAR VARIOS PRODUTOS PARA CADA VEZ NOS PEDIDOS
    If CBBuscaNProds.Checked=True Then
        DMMacs.Tloja.FieldByName('BUSCANPRODS').AsInteger:=1
    Else
        DMMacs.Tloja.FieldByName('BUSCANPRODS').AsInteger:=0;


    //GRAVA INFORMAÇÕES SOBRE GAVETA DE DINHEIRO
    If CBGaveta.Text='NENHUMA' Then
        DMMacs.Tloja.FieldByName('USAGAVETA').AsString:='0';
    If CBGaveta.Text='ELGIN WIND' Then
        DMMacs.Tloja.FieldByName('USAGAVETA').AsString:='1';

    //DJ 30/01/2010: Grava se sera utilizado observacao em pedcompra
    If CBObsPedCompra.Checked=True Then
    	DMMACS.TLoja.FieldByName('USAOBSITEMCOMPRA').AsString:='1'
    Else
    	DMMACS.TLoja.FieldByName('USAOBSITEMCOMPRA').AsString:='0';

    //Paulo 23/09/2010: CST UTILIZADO PARA VENDA SITUAÇÃO TRIBUTADA
    DMMACS.TLoja.FieldByName('CSTTRIB').AsInteger := XCODCSTTRIB;

    //Paulo 23/09/2010: CST UTILIZADO PARA VENDA SUBSTITUIDA
    DMMACS.TLoja.FieldByName('CSTSUBST').AsInteger := XCODCSTSUBST;

    //Angelo - 27/08/2010 - Solicitação 405
    if (CbExibVlrCompOS.Checked) Then
      DMMACS.TLoja.FieldByName('EXIBVLRCOMPOS').AsString := '1'
    else
      DMMACS.TLoja.FieldByName('EXIBVLRCOMPOS').AsString := '0';

    //Paulo 01/11/2010 - 160: Selecionar o tipo de impressão para Orçcamentos
    if DBModeloImp.Text<>''then
       DMMACS.TLoja.FieldByName('MODELOORC').AsInteger := StrToInt(DBModeloImp.Text)
    else
       DMMACS.TLoja.FieldByName('MODELOORC').AsInteger :=0;

    if EdCaminhoDocs.Text<>'' then
      DMMACS.TLoja.FieldByName('CAMINHODOCS').AsString := EdCaminhoDocs.Text
    else
      DMMACS.TLoja.FieldByName('CAMINHODOCS').AsString := 'C:/MZR/Arquivos/Documentos Clientes';

    DMMacs.TLoja.Post;
    
    Try
  	    DMMacs.TLoja.Edit;
    	//Paulo 21/10/2010 - 145: Grava a logo da empresa para ser utilizado em relatórios
    	if not ImLogo.Picture.Bitmap.Empty  then
       	TBlobField(DMMACS.TLOJA.FieldByName('LOGOEMPRESA')).LoadFromFile(XLogoDialog.FileName)
    	else
       	DMMACS.TLoja.FieldByName('LOGOEMPRESA').AsString:='';
    	DMMacs.TLoja.Post;
    	DMMACS.Transaction.CommitRetaining;       
    Except
	    DMMacs.TLoja.Post;
    	DMMACS.Transaction.CommitRetaining;
    End;
    XCodLoja:=DMMACS.TLoja.FieldByName('COD_LOJA').AsInteger;
    DMMACS.TALX.Close;
    DMMACS.TALX.SQL.Clear;
    DMMACS.TALX.SQL.Add(' update loja SET loja.tituloduplicata=:TITULO WHERE loja.cod_loja=:CODIGO ');
    DMMACS.TALX.ParamByName('TITULO').AsString:=EdTituloDuplicata.Text;
    DMMACS.TALX.ParamByName('CODIGO').AsInteger:=XCodLoja;
    DMMACS.TALX.ExecSQL;
    DMMACS.Transaction.CommitRetaining;

    Close;
end;

procedure TFConfigLoja.FormActivate(Sender: TObject);
begin
  inherited;
	Caption:='Config. de Loja' ;  
	 //Edmar - 07/01/2014 - Esconde painel de cadastro de serviço;
    pCadServico.Visible := false;
    pCadServico.SendToBack;

    PopulaGridServico;

    xEditando := false;

    DBCBImpThermais.Items.Clear;
    DBCBImpThermais.Items:=Printer.Printers;
	 //Controle para exibição do campo de multiplos vendedores dentro da ordem de serviços mecanica
    If DMMACS.TLoja.FieldByName('USARMULTIPLOSVENDEDORESOS').AsString = '1' then
       CbExibCampoMultiplosVendedores.Checked := true
    else
       CbExibCampoMultiplosVendedores.Checked := false; 

	 //Controle para exibição do campo de vendedores dentro da ordem de serviços mecanica
    If DMMACS.TLoja.FieldByName('USARVENDEDOROSMEC').AsString = '1' then
       CbExibCampoVendedor.Checked := true
    else
       CbExibCampoVendedor.Checked := false;
    // movendo a posição da label e do edit para que no local seja exibido um radiogroup informando o local do banco de dados para exprtar OS
    If  DBCBATIVIDADE.Text = 'EQUIPE'
    Then Begin
       DBTIMEMENS.Top := 207;
       CBCTRLMENS.Top := 181;
       GBCaminhoBanco.Visible := TRUE;
    End
    Else Begin
       DBTIMEMENS.Top := 130;
       CBCTRLMENS.Top := 108;
       GBCaminhoBanco.Visible := FALSE;
    End;

    if DMMACS.TLoja.FieldByName('SENHAEMAIL_EMPRESA').AsString <> '' then
       edSenhaEmailEmpresa.Text := FMenu.Cripto.CriptoHexToText(DMMACS.TLoja.FieldByName('SENHAEMAIL_EMPRESA').AsString);

    //Paulo 04/03/2012: Controla os paineis de fiscais
    If DMMACS.TLoja.FieldByName('TIPOFISCAL').AsString<>'NENHUM'
     Then Begin
         PCuponNFisc.Visible:=False;
         PCuponNFisc.SendToBack;
         PECF.Visible:=False;
         PECF.SendToBack;
         PNF.Visible:=False;
         PNF.SendToBack;
         If DMMACS.TLoja.FieldByName('TIPOFISCAL').AsString='CUPOM'
         Then Begin
             PCuponNFisc.Visible:=True;
             PCuponNFisc.BringToFront;
         End;
         If DMMACS.TLoja.FieldByName('TIPOFISCAL').AsString='ECF'
         Then Begin
             PECF.Visible:=True;
             PECF.BringToFront;
             DBCPORTAECF.SetFocus;
         End;
         If (DMMACS.TLoja.FieldByName('TIPOFISCAL').AsString='NF') OR (DMMACS.TLoja.FieldByName('TIPOFISCAL').AsString='NFe')
         Then Begin
             PNF.Visible:=True;
             PNF.BringToFront;
             //DBModelo.SetFocus;
         End;
     End
     Else Begin
        PECF.Visible:=False;
     end;

     EdCaminhoDocs.Text := DMMACS.TLoja.FieldByName('CAMINHODOCS').AsString;

	 //Controle para exibição do campo com quantidades de 4 casas após a virgula
     if DMMACS.TLoja.FieldByName('USAR4CASASQTD').AsString = '1' then
     	Cb4casas.Checked := true
     else
		Cb4casas.Checked := false;

	 //Controle para importação de ST para o produto pelo xml
     if DMMACS.TLoja.FieldByName('IMPSTXMLPRODUTO').AsString = '1' then
     	CbImpSubstituicaoXML.Checked := true
     else
		CbImpSubstituicaoXML.Checked := false;


     //Controle das funções de F10 e F11 em produtos
     if DMMACS.TLoja.FieldByName('DESABCOPIAPRODUTOS').AsString = '1' then
     	CbdesabilitaF10F11.Checked := true
     else
		CbdesabilitaF10F11.Checked := false;

     //Alex - 31/08/2015 - Marca se check box de importação para abir ou não o valor unitário de compra para ser alterardo na OS Mecanica
     if DMMACS.TLoja.FieldByName('EXIBVLRCOMPOS').AsString = '1' then
     	CbExibVlrCompOS.Checked := true
     else
		CbExibVlrCompOS.Checked := false;

	  //Controle para exibição do campo de permissão para mais de um produto com o mesmo controle interno
     if DMMACS.TLoja.FieldByName('MAISDEUMCONTROLEINTERNO').AsString = '1' then
     	Cbmaisdeumcontroleinterno.Checked := true
     else
		Cbmaisdeumcontroleinterno.Checked := false;
       
     //Edmar - 02/04/2014 - Marca se check box de importação fatura de notas de entrada
     if DMMACS.TLoja.FieldByName('INSERIRFATURA').AsString = '1' then
     	cbInsereFaturaNotaEntrada.Checked := true
     else
		cbInsereFaturaNotaEntrada.Checked := false;

    // Informe se devemos negar o cadastro de produtos com descrições identicas S bloqueia N ou Nulo não bloqueia
    If DMMACS.TLoja.FieldByName('VERIFDESCPRODUTO').AsString = 'S' Then
       CbValidaDescricaoProduto.Checked:=True
    Else
       CbValidaDescricaoProduto.Checked:=False;

	 //Controle de forçar a cobrança como cartão quando houver forma de pagamento cartão
    If DMMACS.TLoja.FieldByName('FORCARCARTAO').AsString = '1' Then
    	CbForcaCartao.Checked := true
    Else
    	CbForcaCartao.Checked := False;

	 //Controle de Baixa Automatica de cartão de credito
    If DMMACS.TLoja.FieldByName('BAIXAAUTOMATICACARTAO').AsString = '1' Then
    	CbBaixaAutomaticaCartao.Checked := true
    Else
    	CbBaixaAutomaticaCartao.Checked := False;

	 //Controle de Baixa Automatica de cartão de credito
    If DMMACS.TLoja.FieldByName('usaplacasadicionais').AsString = '1' Then
    	CBUsaPlacaAdicional.Checked := true
    Else
    	CBUsaPlacaAdicional.Checked := False;

    //Controla lucratividade do produto
    if DMMACS.TLoja.FieldByName('RECALCULA_LUCRATIV_PRODUTO').AsString = '1' then
       cbRecalcLucratividadeProduto.Checked := True
    else
       cbRecalcLucratividadeProduto.Checked := False;

	 //Edmar - 04/02/2015 - Controla se exibe a classificação do serviço
    If DMMACS.TLoja.FieldByName('EXIBECLASSSERV').AsString = '1' Then
    	cbExiClassServico.Checked := True
    Else
    	cbExiClassServico.Checked := False;
              
    // - 24/04/2009:  se usuário não for MESTRE bloquear ambiente
    If FMenu.LCODUSUARIO.Caption<>'111522'
    Then Begin
        CBAmbiente.Enabled := False;
    End
    Else Begin
        CBAmbiente.Enabled := True;
    End;
    //Define a Versão da NFe em Trabalho
    cbVersao.Text:=DMMACS.TLoja.FieldByName('NFEVERSAO').AsString;
    //Define o tipo de emissão da NFe em Trabalho
    CbTipoEnvioNfe.Text := DMMACS.TLoja.FieldByName('MODODEEMISSAONFE').AsString;

    EdTituloDuplicata.Text:=DMMACS.TLoja.FieldByName('TITULODUPLICATA').AsString;    

	 //Controle de impressao de nome da equipe no comprovante de abertura de ordem de serviços
    If DMMACS.TLoja.FieldByName('NAOATUALIZAESTOQUEPC').AsString = '1' Then
    	CbNaoAtualizaEstoquePC.Checked := true
    Else
    	CbNaoAtualizaEstoquePC.Checked := False;

    //Determina se o sistema deve ou não puxar as informações do ultimo produto gravado para o novo
    If DMMACS.TLoja.FieldByName('PUXAULTPRONOVO').AsString = '1' Then
    	CBInfoUltProdNovo.Checked := true
    Else
    	CBInfoUltProdNovo.Checked := False;

    //ALEX - Grava config para o sistema forçar o controle de NCM ou não
    If DMMACS.TLoja.FieldByName('CONTROLANCM').AsString='1' Then
    	CBControlaNCM.Checked:=True
    Else
    	CBControlaNCM.Checked:=False;
    //Controla se o serviços serah impedido de uso na emissão de nf de ordemmec
    If DMMACS.TLoja.FieldByName('IMPEDIRSERVICOS').AsString='1' Then
    	CBImpedirServicosNf.Checked:=True
    Else
    	CBImpedirServicosNf.Checked:=False;

    If DMMACS.TLoja.FieldByName('PESQINTELPROD').AsString = '1' Then
    	CBPesqIntelProd.Checked := true
    Else
    	CBPesqIntelProd.Checked := False;

	 //Controle de impressao de nome da equipe no comprovante de abertura de ordem de serviços
    If DMMACS.TLoja.FieldByName('IMPNOMEEQUIPECOMPORDEM').AsString = '1' Then
    	CBImpNomeEquipeComprovanteOrdem.Checked := true
    Else
    	CBImpNomeEquipeComprovanteOrdem.Checked := false;

    //Edmar - 17/06/2015 - controle do tipo de impressão do nfc-e
    if DMMACS.TLoja.FieldByName('TIPOIMP_NFCE').AsString = 'COMP' then
    	cbTipoImpressaoNFCe.Text := 'Completo'
    else
		if DMMACS.TLoja.FieldByName('TIPOIMP_NFCE').AsString = 'CUPOM' then
			cbTipoImpressaoNFCe.Text := 'Cupom Fiscal'
       else
    	 	cbTipoImpressaoNFCe.Text := 'Simplificado';

    If DMMACS.TLoja.FieldByName('controlprodlista').AsString = '1' Then
    	CBControleProdLista.Checked:=True
    Else
       CBControleProdLista.Checked:=False;

    //Controle o Padrão de gerar numparc
    //CONTROLA QUAL O PADRÃO PARA GERAR NUMPARC
    If DMMACS.TLoja.FieldByName('padmecdocfin').AsString = '1' Then
    	CBPadDocMec.Checked := true
    Else
    	CBPadDocMec.Checked := false;

    //Ambiente de NFe
    if DMMACS.TLoja.FieldByName('NFEPROHOMO').AsInteger = 1
    then begin
         CBAmbiente.Text:='PRODUÇÃO';
    end
    else begin
         CBAmbiente.Text:='HOMOLOGAÇÃO';
    end;

    // - 24/04/2009:


    //RETORNA INFORMAÇÕES SOBRE GAVETA DE DINHEIRO
    If DMMacs.Tloja.FieldByName('USAGAVETA').AsString='0' Then
       CBGaveta.Text:='NENHUMA';
    If DMMacs.Tloja.FieldByName('USAGAVETA').AsString='1' Then
       CBGaveta.Text:='ELGIN WIND';

    If DBModeloImp.Text = '6'
    Then Begin
       DBMemo5.Visible := true;
       DBMemo5.BringToFront;
       LTitulo.Visible := true;
       LTitulo.BringToFront;
    End
    Else Begin
       DBMemo5.Visible := false;
       DBMemo5.SendToBack;
       LTitulo.Visible := false;
       LTitulo.SendToBack;
    End;

    //Mostra todas as configs de etiquetas disponiveis
    FiltraTabela(DMMACS.TEtqProd, 'ETQPROD', '', '', '');

    //Mostra todas as contas disponiveis
    FiltraTabela(DMCONTA.TPlnCta, 'plncta', '', '', '');

    If DMMACS.TLoja.FieldByName('TIPODUPLICATA').AsString='2'
    Then Begin
       PageControl1.ActivePageIndex:=4;
       RGTipoDuplicata.ItemIndex:=1;
    End
    Else Begin
       PageControl1.ActivePageIndex:=4;
       RGTipoDuplicata.ItemIndex:=0;
    End;

    If DMMACS.TLoja.FieldByName('GERACTAROUTROS').AsString = '1' Then
       cbGeraCTAROutros.Checked := true
    Else
       cbGeraCTAROutros.Checked := false;

    If DMMACS.TLoja.FieldByName('PDVVLRUNIT').AsString = '1' Then
       CBVlrUnitario.Checked := true
    Else
       CBVlrUnitario.Checked := false;

    //Djonathan - 14/11/2009: VERIFICA SE NO BANCO DE DADOS ESTA ABILITADO PARA MOSTRAR CUSTO EM PEDIDO DE VENDA
    if DMMACS.TLoja.FieldByName('MOSTRACUSTOPEDV').AsString = '1' Then
    	CBMostraCustoPedV.Checked := true
    Else
    	CBMostraCustoPedV.Checked := false;

    //Djonathan - 09/03/2010: VERIFICA SE NO BANCO DE DADOS ESTA HABILITADO PARA SINCRONIZAR DADOS DE PRODUTOS
    if DMMACS.TLoja.FieldByName('ATUALIZABANCO').AsString = '1' Then
    	CBSincronismo.Checked := true
    Else
    	CBSincronismo.Checked := false;

    //Djonathan - 05/04/2010: VERIFICA SE NO BANCO DE DADOS ESTA HABILITADO PARA SINCRONIZAR DADOS DE PRODUTOS AO INICIAR
    if DMMACS.TLoja.FieldByName('ATUALIZABANCOAUT').AsString = '1' Then
    	CBSincIni.Checked := true
    Else
    	CBSincIni.Checked := false;

    //Djonathan - 06/04/2010: VERIFICA SE NO BANCO DE DADOS ESTA HABILITADO PARA CRIAR ARQUIVOS DE ATUALIZACAO
    if DMMACS.TLoja.FieldByName('CRIAARQFTP').AsString = '1' Then
    	CBCriaArq.Checked := true
    Else
    	CBCriaArq.Checked := false;

    //Djonathan - 06/04/2010: VERIFICA SE NO BANCO DE DADOS ESTA HABILITADO PARA RECEBER ARQUIVOS DE ATUALIZACAO
    if DMMACS.TLoja.FieldByName('RECEBEARQFTP').AsString = '1' Then
    	CBRecArq.Checked := true
    Else
    	CBRecArq.Checked := false;

    //Djonathan - 09/03/2010: ATUALIZA DADOS DE SINCRONISMO NA JANELA
    EDHost.Text := DMMACS.TLoja.FieldByName('HOSTFTP').AsString;
    EDUser.Text := DMMACS.TLoja.FieldByName('USERNAMEFTP').AsString;
    EDPassword.Text := Fmenu.Cripto.CriptoHexToText(DMMACS.TLoja.FieldByName('PASSWORDFTP').AsString);
    EDDirDownFTP.Text := DMMACS.TLoja.FieldByName('DIRDOWFTP').AsString;
    EDDirUpFTP.Text := DMMACS.TLoja.FieldByName('DIRUPFTP').AsString;
    EDHorFTP.Text := DMMACS.TLoja.FieldByName('HORAFTP').AsString;

    //Paulo - 14/03/2011: Verifica se deve inserir os dados de serviços na NFe
    If DMMACS.TLoja.FieldByName('SERVNFE').AsString = '1' Then
    	cbImpServNFe.Checked := true
    Else
    	cbImpServNFe.Checked := false;

    //Paulo - 23/03/2011: Verifica se deve inserir os dados do controle de numeros dos pedidos
    if DMMACS.TLoja.FieldByName('PERSODESPADIC').AsString = '1' Then
       cbDespAdic.Checked := True
    else
       cbDespAdic.Checked := False;

    //Paulo - 14/04/2011: Verifica se deve inserir os dados do Personaliza despesas adicionais
    if DMMACS.TLoja.FieldByName('CTRLNUM').AsString = '1' Then
       cbControlaNum.Checked := True
    else
       cbControlaNum.Checked := False;

    //Paulo - 08/09/2011: Verifica se deve mostrar se movimenta ou não lançamentos cartão no caixa
    if DMMACS.TLoja.FieldByName('MOVCAIXACARTAO').AsString = '1' Then
       CBMOVLANCCARTAO.Checked := True
    else
       CBMOVLANCCARTAO.Checked := False;

    //Paulo - 19/04/2012: Verifica se a loja emite NFSe
    If DMMACS.TLoja.FieldByName('GERANFSE').AsString = '1' Then
       CBGeraNFSe.Checked := true
    Else
       CBGeraNFSe.Checked := false;

    //DJ - 30/01/2010: Verifica se deve mostrar observacao nos itens de pedido de compra e preenche combobox
    If DMMACS.TLoja.FieldByName('USAOBSITEMCOMPRA').AsString = '1' Then
    	CBObsPedCompra.Checked := true
    Else
    	CBObsPedCompra.Checked := false;
           
    //controleque revela o valor de custo do produto na grid de similares
    If DMMACS.TLoja.FieldByName('REVELCUSTOPRODUTO').AsString = '1' Then
       CBVLRCUSTO.Checked := true
    Else
       CBVLRCUSTO.Checked := false;

    //VERIFICA SE ESTA MARCADO PARA NAO ABRIR PAGINA DA MZR NO INTERNET EXPLORER COMO PAGINA INICIAL
    If DMMACS.TLoja.FieldByName('DESATIVASITE').AsString = '1' Then
       cbDesativaSite.Checked := true
    Else
       cbDesativaSite.Checked := false;

    //VERIFICAR SE FEED ESTÁ DESATIVADO  NO MENU
    If DMMACS.TLoja.FieldByName('DESATIVAFEED').AsString = '1' Then
       cbDesativaFeed.Checked := true
    Else
       cbDesativaFeed.Checked := false;

    //controle que revela ou não a mensagem de estoque mínimo
    If DMMACS.TLoja.FieldByName('MSGESTOQUEMIN').AsString = '1' Then
       CBMSGESTMIN.Checked := true
   Else
       CBMSGESTMIN.Checked := false;

   // - 28/04/2009: ativar grid zebrada
    If DMMACS.TLoja.FieldByName('ATIVAGRID').AsString = '1' Then
       cbAtivaGrid.Checked := true
    Else
       cbAtivaGrid.Checked := false;

    //controle que revela ou não a mensagem de estoque mínimo
    If DMMACS.TLoja.FieldByName('ATIVACONSULTARAP').AsString = '1' Then
       cbAtivaConsultaRapida.Checked := true
    Else
       cbAtivaConsultaRapida.Checked := false;

    // CFOP DE RETORNO DE VENDA UTILIZANDO NF DE EMISSAO PROPRIA
    //DENTRO DO ESTADO
    If DMMACS.TLoja.FieldByName('COD_DEVNOTAPROPDENTRO').AsString <> ''
    Then Begin
       FiltraTabela(DMESTOQUE.TCFOP,'CFOP','COD_CFOP',DMMACS.TLoja.FieldByName('COD_DEVNOTAPROPDENTRO').AsString,'');

       If DMESTOQUE.TCFOP.IsEmpty
       Then Begin
           FrmDevPropriaDentro.EdDescricao.Text := '';
           FrmDevPropriaDentro.EDCodigo.Text := '';
           XCODCFOP_DEVPROPRIODENTRO := 0;
       End
       Else Begin
           FrmDevPropriaDentro.EdDescricao.Text := DMESTOQUE.TCFOP.FieldByName('DESCRICAO').AsString;
           FrmDevPropriaDentro.EDCodigo.Text := DMESTOQUE.TCFOP.FieldByName('CFOP').AsString;
           XCODCFOP_DEVPROPRIODENTRO := DMESTOQUE.TCFOP.FieldByName('COD_CFOP').AsInteger;
       End;
    End
    Else Begin
   	FrmDevPropriaDentro.EdDescricao.Text := '';
   	FrmDevPropriaDentro.EDCodigo.Text := '';
   	XCODCFOP_DEVPROPRIODENTRO := 0;
    End;
    //FORA DO ESTADO
    If DMMACS.TLoja.FieldByName('COD_DEVNOTAPROPFORA').AsString <> ''
    Then Begin
       FiltraTabela(DMESTOQUE.TCFOP,'CFOP','COD_CFOP',DMMACS.TLoja.FieldByName('COD_DEVNOTAPROPFORA').AsString,'');
       If DMESTOQUE.TCFOP.IsEmpty
       Then Begin
           FrmDevPropriaFora.EdDescricao.Text := '';
           FrmDevPropriaFora.EDCodigo.Text := '';
           XCODCFOP_DEVPROPRIOFORA := 0;
       End
       Else Begin
           FrmDevPropriaFora.EdDescricao.Text := DMESTOQUE.TCFOP.FieldByName('DESCRICAO').AsString;
           FrmDevPropriaFora.EDCodigo.Text := DMESTOQUE.TCFOP.FieldByName('CFOP').AsString;
           XCODCFOP_DEVPROPRIOFORA := DMESTOQUE.TCFOP.FieldByName('COD_CFOP').AsInteger;
       End;
    End
    Else Begin
   	FrmDevPropriaFora.EdDescricao.Text := '';
   	FrmDevPropriaFora.EDCodigo.Text := '';
   	XCODCFOP_DEVPROPRIOFORA := 0;
    End;

    // CFOP UTILIZADA PARA SIMPLES REMESSA DENTRO DO ESTADO
    If DMMACS.TLoja.FieldByName('CFOPINTSIMPREMESSA').AsString <> ''
    Then Begin
       FiltraTabela(DMESTOQUE.TCFOP,'CFOP','COD_CFOP',DMMACS.TLoja.FieldByName('CFOPINTSIMPREMESSA').AsString,'');

       If DMESTOQUE.TCFOP.IsEmpty
       Then Begin
           FrmIntCfopSimpRemessa.EdDescricao.Text := '';
           FrmIntCfopSimpRemessa.EDCodigo.Text := '';
           XCODCFOPINTSIMPREMESSA := 0;
       End
       Else Begin
           FrmIntCfopSimpRemessa.EdDescricao.Text := DMESTOQUE.TCFOP.FieldByName('DESCRICAO').AsString;
           FrmIntCfopSimpRemessa.EDCodigo.Text := DMESTOQUE.TCFOP.FieldByName('CFOP').AsString;
           XCODCFOPINTSIMPREMESSA := DMESTOQUE.TCFOP.FieldByName('COD_CFOP').AsInteger;
       End;
    End
    Else Begin
   	FrmIntCfopSimpRemessa.EdDescricao.Text := '';
   	FrmIntCfopSimpRemessa.EDCodigo.Text := '';
   	XCODCFOPINTSIMPREMESSA := 0;
    End;
    // CFOP UTILIZADA PARA CFOP INTERNO DE FRETES
    If DMMACS.TLoja.FieldByName('CFOPFRETEINT').AsString <> ''
    Then Begin
       FiltraTabela(DMESTOQUE.TCFOP,'CFOP','COD_CFOP',DMMACS.TLoja.FieldByName('CFOPFRETEINT').AsString,'');

       If DMESTOQUE.TCFOP.IsEmpty
       Then Begin
           FrmCfopIntFreteEntrada.EdDescricao.Text := '';
           FrmCfopIntFreteEntrada.EDCodigo.Text := '';
           XCODCFOPINTFRETE := 0;
       End
       Else Begin
           FrmCfopIntFreteEntrada.EdDescricao.Text := DMESTOQUE.TCFOP.FieldByName('DESCRICAO').AsString;
           FrmCfopIntFreteEntrada.EDCodigo.Text := DMESTOQUE.TCFOP.FieldByName('CFOP').AsString;
           XCODCFOPINTFRETE := DMESTOQUE.TCFOP.FieldByName('COD_CFOP').AsInteger;
       End;
    End
    Else Begin
   	FrmCfopIntFreteEntrada.EdDescricao.Text := '';
   	FrmCfopIntFreteEntrada.EDCodigo.Text := '';
   	XCODCFOPINTFRETE := 0;
    End;

    // CFOP UTILIZADA PARA CFOP EXTERNO DE FRETES
    If DMMACS.TLoja.FieldByName('CFOPFRETEEXT').AsString <> ''
    Then Begin
       FiltraTabela(DMESTOQUE.TCFOP,'CFOP','COD_CFOP',DMMACS.TLoja.FieldByName('CFOPFRETEEXT').AsString,'');

       If DMESTOQUE.TCFOP.IsEmpty
       Then Begin
           FrmCfopExtFreteEntrada.EdDescricao.Text := '';
           FrmCfopExtFreteEntrada.EDCodigo.Text := '';
           XCODCFOPEXTFRETE := 0;
       End
       Else Begin
           FrmCfopExtFreteEntrada.EdDescricao.Text := DMESTOQUE.TCFOP.FieldByName('DESCRICAO').AsString;
           FrmCfopExtFreteEntrada.EDCodigo.Text := DMESTOQUE.TCFOP.FieldByName('CFOP').AsString;
           XCODCFOPEXTFRETE := DMESTOQUE.TCFOP.FieldByName('COD_CFOP').AsInteger;
       End;
    End
    Else Begin
   	FrmCfopExtFreteEntrada.EdDescricao.Text := '';
   	FrmCfopExtFreteEntrada.EDCodigo.Text := '';
   	XCODCFOPEXTFRETE := 0;
    End;

    // CFOP UTILIZADA PARA SIMPLES REMESSA FORA DO ESTADO
    If DMMACS.TLoja.FieldByName('CFOPEXTSIMPREMESSA').AsString <> ''
    Then Begin
       FiltraTabela(DMESTOQUE.TCFOP,'CFOP','COD_CFOP',DMMACS.TLoja.FieldByName('CFOPEXTSIMPREMESSA').AsString,'');

       If DMESTOQUE.TCFOP.IsEmpty
       Then Begin
           FrmExtCfopSimpRemessa.EdDescricao.Text := '';
           FrmExtCfopSimpRemessa.EDCodigo.Text := '';
           XCODCFOPEXTSIMPREMESSA := 0;
       End
       Else Begin
           FrmExtCfopSimpRemessa.EdDescricao.Text := DMESTOQUE.TCFOP.FieldByName('DESCRICAO').AsString;
           FrmExtCfopSimpRemessa.EDCodigo.Text := DMESTOQUE.TCFOP.FieldByName('CFOP').AsString;
           XCODCFOPEXTSIMPREMESSA := DMESTOQUE.TCFOP.FieldByName('COD_CFOP').AsInteger;
       End;
    End
    Else Begin
   	FrmExtCfopSimpRemessa.EdDescricao.Text := '';
   	FrmExtCfopSimpRemessa.EDCodigo.Text := '';
   	XCODCFOPEXTSIMPREMESSA := 0;
    End;

    // CFOP UTILIZADA PARA ENTRADA DE MERCADORIA PARA CONSUMO PRÓPRIO
    If DMMACS.TLoja.FieldByName('CFOPMATCONSUMO').AsString <> ''
    Then Begin
       FiltraTabela(DMESTOQUE.TCFOP,'CFOP','COD_CFOP',DMMACS.TLoja.FieldByName('CFOPMATCONSUMO').AsString,'');

       If DMESTOQUE.TCFOP.IsEmpty
       Then Begin
           FrmCfopMatConsumo.EdDescricao.Text := '';
           FrmCfopMatConsumo.EDCodigo.Text := '';
           XCODCFOPMATCONSUMO := 0;
       End
       Else Begin
           FrmCfopMatConsumo.EdDescricao.Text := DMESTOQUE.TCFOP.FieldByName('DESCRICAO').AsString;
           FrmCfopMatConsumo.EDCodigo.Text := DMESTOQUE.TCFOP.FieldByName('CFOP').AsString;
           XCODCFOPMATCONSUMO := DMESTOQUE.TCFOP.FieldByName('COD_CFOP').AsInteger;
       End;
    End
    Else Begin
   	FrmCfopMatConsumo.EdDescricao.Text := '';
   	FrmCfopMatConsumo.EDCodigo.Text := '';
   	XCODCFOPMATCONSUMO := 0;
    End;


    // CFOP UTILIZADA PARA ENTRADA DE MERCADORIA PARA CONSUMO PRÓPRIO PROCEDENTE DE FORA DO ESTADO
    If DMMACS.TLoja.FieldByName('CFOPMATCONSUMOEXT').AsString <> ''
    Then Begin
       FiltraTabela(DMESTOQUE.TCFOP,'CFOP','COD_CFOP',DMMACS.TLoja.FieldByName('CFOPMATCONSUMOEXT').AsString,'');

       If DMESTOQUE.TCFOP.IsEmpty
       Then Begin
           FrmCfopMatExterno.EdDescricao.Text := '';
           FrmCfopMatExterno.EDCodigo.Text := '';
           XCODCFOPMATCONSUMOEXT := 0;
       End
       Else Begin
           FrmCfopMatExterno.EdDescricao.Text := DMESTOQUE.TCFOP.FieldByName('DESCRICAO').AsString;
           FrmCfopMatExterno.EDCodigo.Text := DMESTOQUE.TCFOP.FieldByName('CFOP').AsString;
           XCODCFOPMATCONSUMOEXT := DMESTOQUE.TCFOP.FieldByName('COD_CFOP').AsInteger;
       End;
    End
    Else Begin
   	FrmCfopMatExterno.EdDescricao.Text := '';
   	FrmCfopMatExterno.EDCodigo.Text := '';
   	XCODCFOPMATCONSUMOEXT := 0;
    End;

    // CFOP UTILIZADOS PARA COMPRA DENTRO DO ESTADO S.T.
    If DMMACS.TLoja.FieldByName('CFOPINTSTPC').AsString <> ''
    Then Begin
       FiltraTabela(DMESTOQUE.TCFOP,'CFOP','COD_CFOP',DMMACS.TLoja.FieldByName('CFOPINTSTPC').AsString,'');

       If DMESTOQUE.TCFOP.IsEmpty
       Then Begin
           FrmCfopInternoSTPC.EdDescricao.Text := '';
           FrmCfopInternoSTPC.EDCodigo.Text := '';
           XCODCFOPINTSTPC := 0;
       End
       Else Begin
           FrmCfopInternoSTPC.EdDescricao.Text := DMESTOQUE.TCFOP.FieldByName('DESCRICAO').AsString;
           FrmCfopInternoSTPC.EDCodigo.Text := DMESTOQUE.TCFOP.FieldByName('CFOP').AsString;
           XCODCFOPINTSTPC := DMESTOQUE.TCFOP.FieldByName('COD_CFOP').AsInteger;
       End;
    End;

    // CFOP UTILIZADOS PARA REMESSA DE GARANTIA DENTRO DO ESTADO
    If DMMACS.TLoja.FieldByName('CFOPINTGARANTIA').AsString <> ''
    Then Begin
       FiltraTabela(DMESTOQUE.TCFOP,'CFOP','COD_CFOP',DMMACS.TLoja.FieldByName('CFOPINTGARANTIA').AsString,'');

       If DMESTOQUE.TCFOP.IsEmpty
       Then Begin
           FrmIntCfopGarantia.EdDescricao.Text := '';
           FrmIntCfopGarantia.EDCodigo.Text := '';
           XCODCFOPINTGARANTIA := 0;
       End
       Else Begin
           FrmIntCfopGarantia.EdDescricao.Text := DMESTOQUE.TCFOP.FieldByName('DESCRICAO').AsString;
           FrmIntCfopGarantia.EDCodigo.Text := DMESTOQUE.TCFOP.FieldByName('CFOP').AsString;
           XCODCFOPINTGARANTIA := DMESTOQUE.TCFOP.FieldByName('COD_CFOP').AsInteger;
       End;
    End;

    // CFOP UTILIZADOS PARA REMESSA DE GARANTIA FORA DO ESTADO
    If DMMACS.TLoja.FieldByName('CFOPEXTGARANTIA').AsString <> ''
    Then Begin
       FiltraTabela(DMESTOQUE.TCFOP,'CFOP','COD_CFOP',DMMACS.TLoja.FieldByName('CFOPEXTGARANTIA').AsString,'');

       If DMESTOQUE.TCFOP.IsEmpty
       Then Begin
           FrmExtCfopGarantia.EdDescricao.Text := '';
           FrmExtCfopGarantia.EDCodigo.Text := '';
           XCODCFOPEXTGARANTIA := 0;
       End
       Else Begin
           FrmExtCfopGarantia.EdDescricao.Text := DMESTOQUE.TCFOP.FieldByName('DESCRICAO').AsString;
           FrmExtCfopGarantia.EDCodigo.Text := DMESTOQUE.TCFOP.FieldByName('CFOP').AsString;
           XCODCFOPEXTGARANTIA := DMESTOQUE.TCFOP.FieldByName('COD_CFOP').AsInteger;
       End;
    End;   

    // CFOP UTILIZADOS PARA DEVOLUÇÃO DE MERCADORIA DENTRO DO ESTADO
    If DMMACS.TLoja.FieldByName('CFOPINTDEVOLUCST').AsString <> ''
    Then Begin
       FiltraTabela(DMESTOQUE.TCFOP,'CFOP','COD_CFOP',DMMACS.TLoja.FieldByName('CFOPINTDEVOLUCST').AsString,'');

       If DMESTOQUE.TCFOP.IsEmpty
       Then Begin
           FrmIntCfopDevolucaoST.EdDescricao.Text := '';
           FrmIntCfopDevolucaoST.EDCodigo.Text := '';
           XCODCFOPINTDEVOLUCAOST := 0;
       End
       Else Begin
           FrmIntCfopDevolucaoST.EdDescricao.Text := DMESTOQUE.TCFOP.FieldByName('DESCRICAO').AsString;
           FrmIntCfopDevolucaoST.EDCodigo.Text := DMESTOQUE.TCFOP.FieldByName('CFOP').AsString;
           XCODCFOPINTDEVOLUCAOST := DMESTOQUE.TCFOP.FieldByName('COD_CFOP').AsInteger;
       End;
    End;


    // CFOP UTILIZADOS PARA DEVOLUÇÃO DE MERCADORIA FORA DO ESTADO
    If DMMACS.TLoja.FieldByName('CFOPEXTDEVOLUCST').AsString <> ''
    Then Begin
       FiltraTabela(DMESTOQUE.TCFOP,'CFOP','COD_CFOP',DMMACS.TLoja.FieldByName('CFOPEXTDEVOLUCST').AsString,'');
       If DMESTOQUE.TCFOP.IsEmpty
       Then Begin
           FrmExtCfopDevolucaoST.EdDescricao.Text := '';
           FrmExtCfopDevolucaoST.EDCodigo.Text := '';
           XCODCFOPEXTDEVOLUCAOST := 0;
       End
       Else Begin
           FrmExtCfopDevolucaoST.EdDescricao.Text := DMESTOQUE.TCFOP.FieldByName('DESCRICAO').AsString;
           FrmExtCfopDevolucaoST.EDCodigo.Text := DMESTOQUE.TCFOP.FieldByName('CFOP').AsString;
           XCODCFOPEXTDEVOLUCAOST := DMESTOQUE.TCFOP.FieldByName('COD_CFOP').AsInteger;
       End;
    End;


    // CFOP UTILIZADOS PARA DEVOLUÇÃO DE MERCADORIA DENTRO DO ESTADO ST
    If DMMACS.TLoja.FieldByName('CFOPINTDEVOLUC').AsString <> ''
    Then Begin
       FiltraTabela(DMESTOQUE.TCFOP,'CFOP','COD_CFOP',DMMACS.TLoja.FieldByName('CFOPINTDEVOLUC').AsString,'');

       If DMESTOQUE.TCFOP.IsEmpty
       Then Begin
           FrmIntCfopDevolucao.EdDescricao.Text := '';
           FrmIntCfopDevolucao.EDCodigo.Text := '';
           XCODCFOPINTDEVOLUCAO := 0;
       End
       Else Begin
           FrmIntCfopDevolucao.EdDescricao.Text := DMESTOQUE.TCFOP.FieldByName('DESCRICAO').AsString;
           FrmIntCfopDevolucao.EDCodigo.Text := DMESTOQUE.TCFOP.FieldByName('CFOP').AsString;
           XCODCFOPINTDEVOLUCAO := DMESTOQUE.TCFOP.FieldByName('COD_CFOP').AsInteger;
       End;
    End;


    // CFOP UTILIZADOS PARA DEVOLÇÃO DE MERCADORIA FORA DO ESTADO
    If DMMACS.TLoja.FieldByName('CFOPEXTDEVOLUC').AsString <> ''
    Then Begin
       FiltraTabela(DMESTOQUE.TCFOP,'CFOP','COD_CFOP',DMMACS.TLoja.FieldByName('CFOPEXTDEVOLUC').AsString,'');
       If DMESTOQUE.TCFOP.IsEmpty
       Then Begin
           FrmExtCfopDevolucao.EdDescricao.Text := '';
           FrmExtCfopDevolucao.EDCodigo.Text := '';
           XCODCFOPEXTDEVOLUCAO := 0;
       End
       Else Begin
           FrmExtCfopDevolucao.EdDescricao.Text := DMESTOQUE.TCFOP.FieldByName('DESCRICAO').AsString;
           FrmExtCfopDevolucao.EDCodigo.Text := DMESTOQUE.TCFOP.FieldByName('CFOP').AsString;
           XCODCFOPEXTDEVOLUCAO := DMESTOQUE.TCFOP.FieldByName('COD_CFOP').AsInteger;
       End;
    End;
 
    // CFOP UTILIZADOS PARA COMPRA FORA DO ESTADO S.T.
    If DMMACS.TLoja.FieldByName('CFOPEXTSTPC').AsString <> ''
    Then Begin
       FiltraTabela(DMESTOQUE.TCFOP,'CFOP','COD_CFOP',DMMACS.TLoja.FieldByName('CFOPEXTSTPC').AsString,'');

       If DMESTOQUE.TCFOP.IsEmpty
       Then Begin
           FrmCfopExternoSTPC.EdDescricao.Text := '';
           FrmCfopExternoSTPC.EDCodigo.Text := '';
           XCODCFOPEXTSTP := 0;
       End
       Else Begin
           FrmCfopExternoSTPC.EdDescricao.Text := DMESTOQUE.TCFOP.FieldByName('DESCRICAO').AsString;
           FrmCfopExternoSTPC.EDCodigo.Text := DMESTOQUE.TCFOP.FieldByName('CFOP').AsString;
           XCODCFOPEXTSTP := DMESTOQUE.TCFOP.FieldByName('COD_CFOP').AsInteger;
       End;
    End;

    // CFOP UTILIZADOS PARA COMPRA DENTRO DO ESTADO O.P.
    If DMMACS.TLoja.FieldByName('CFOPINTPC').AsString <> ''
    Then Begin
       FiltraTabela(DMESTOQUE.TCFOP,'CFOP','COD_CFOP',DMMACS.TLoja.FieldByName('CFOPINTPC').AsString,'');

       If DMESTOQUE.TCFOP.IsEmpty
       Then Begin
           FrmCfopInternoPC.EdDescricao.Text := '';
           FrmCfopInternoPC.EDCodigo.Text := '';
           XCODCFOPINTPC := 0;
       End
       Else Begin
           FrmCfopInternoPC.EdDescricao.Text := DMESTOQUE.TCFOP.FieldByName('DESCRICAO').AsString;
           FrmCfopInternoPC.EDCodigo.Text := DMESTOQUE.TCFOP.FieldByName('CFOP').AsString;
           XCODCFOPINTPC := DMESTOQUE.TCFOP.FieldByName('COD_CFOP').AsInteger;
       End;
    End;

    // CFOP UTILIZADOS PARA COMPRA FORA DO ESTADO O.P.
    If DMMACS.TLoja.FieldByName('CFOPEXTPC').AsString <> ''
    Then Begin
       FiltraTabela(DMESTOQUE.TCFOP,'CFOP','COD_CFOP',DMMACS.TLoja.FieldByName('CFOPEXTPC').AsString,'');

       If DMESTOQUE.TCFOP.IsEmpty
       Then Begin
           FrmCfopExternoPC.EdDescricao.Text := '';
           FrmCfopExternoPC.EDCodigo.Text := '';
           XCODCFOPEXTPC := 0;
       End
       Else Begin
           FrmCfopExternoPC.EdDescricao.Text := DMESTOQUE.TCFOP.FieldByName('DESCRICAO').AsString;
           FrmCfopExternoPC.EDCodigo.Text := DMESTOQUE.TCFOP.FieldByName('CFOP').AsString;
           XCODCFOPEXTPC := DMESTOQUE.TCFOP.FieldByName('COD_CFOP').AsInteger;
       End;
    End;

    //CFOP UTILIZADOS NA VENDA PARA CLIENTES DE ESTADO DIFERENTE AO ESTADO DA EMPRESA USUARIA DO SISTEMA
    If DMMACS.TLoja.FieldByName('CFOPEXTERNO').AsString <> ''
    Then Begin
       FiltraTabela(DMESTOQUE.TCFOP,'CFOP','COD_CFOP',DMMACS.TLoja.FieldByName('CFOPEXTERNO').AsString,'');

       If DMESTOQUE.TCFOP.IsEmpty
       Then Begin
           FrmCFOPExterno.EdDescricao.Text := '';
           FrmCFOPExterno.EDCodigo.Text := '';
           XCODCFOP_INTEREST := 0;
       End
       Else Begin
           FrmCFOPExterno.EdDescricao.Text := DMESTOQUE.TCFOP.FieldByName('DESCRICAO').AsString;
           FrmCFOPExterno.EDCodigo.Text := DMESTOQUE.TCFOP.FieldByName('CFOP').AsString;
           XCODCFOP_INTEREST := DMESTOQUE.TCFOP.FieldByName('COD_CFOP').AsInteger;
       End;
    End;

    // CFOP UTILIZADOS PARA SERVIÇOS DENTRO DO ESTADO
    If DMMACS.TLoja.FieldByName('CFOPINTSERV').AsString <> ''
    Then Begin
       FiltraTabela(DMESTOQUE.TCFOP,'CFOP','COD_CFOP',DMMACS.TLoja.FieldByName('CFOPINTSERV').AsString,'');
       If DMESTOQUE.TCFOP.IsEmpty
       Then Begin
           FrmCfopIntServ.EdDescricao.Text := '';
           FrmCfopIntServ.EDCodigo.Text := '';
           XCODCFOPINTSERV := 0;
       End
       Else Begin
           FrmCfopIntServ.EdDescricao.Text := DMESTOQUE.TCFOP.FieldByName('DESCRICAO').AsString;
           FrmCfopIntServ.EDCodigo.Text := DMESTOQUE.TCFOP.FieldByName('CFOP').AsString;
           XCODCFOPINTSERV := DMESTOQUE.TCFOP.FieldByName('COD_CFOP').AsInteger;
       End;
    End;

    // CFOP UTILIZADOS PARA SERVIÇOS FORA DO ESTADO
    If DMMACS.TLoja.FieldByName('CFOPEXTSERV').AsString <> ''
    Then Begin
       FiltraTabela(DMESTOQUE.TCFOP,'CFOP','COD_CFOP',DMMACS.TLoja.FieldByName('CFOPEXTSERV').AsString,'');
       If DMESTOQUE.TCFOP.IsEmpty
       Then Begin
           FrmCfopExtServ.EdDescricao.Text := '';
           FrmCfopExtServ.EDCodigo.Text := '';
           XCODCFOPEXTSERV := 0;
       End
       Else Begin
           FrmCfopExtServ.EdDescricao.Text := DMESTOQUE.TCFOP.FieldByName('DESCRICAO').AsString;
           FrmCfopExtServ.EDCodigo.Text := DMESTOQUE.TCFOP.FieldByName('CFOP').AsString;
           XCODCFOPEXTSERV := DMESTOQUE.TCFOP.FieldByName('COD_CFOP').AsInteger;
       End;
    End;

    // CFOP UTILIZADOS NA VENDA PARA CLIENTES DE ESTADO IGUAL AO ESTADO DA EMPRESA USUARIA DO SISTEMA
    If DMMACS.TLoja.FieldByName('CFOPINTERNO').AsString <> ''
    Then Begin
       FiltraTabela(DMESTOQUE.TCFOP,'CFOP','COD_CFOP',DMMACS.TLoja.FieldByName('CFOPINTERNO').AsString,'');

       If DMESTOQUE.TCFOP.IsEmpty
       Then Begin
           FrmCFOPInterno.EdDescricao.Text := '';
           FrmCFOPInterno.EDCodigo.Text := '';
           XCODCFOP_INTERNO := 0;
       End
       Else Begin
           FrmCFOPInterno.EdDescricao.Text := DMESTOQUE.TCFOP.FieldByName('DESCRICAO').AsString;
           FrmCFOPInterno.EDCodigo.Text := DMESTOQUE.TCFOP.FieldByName('CFOP').AsString;
           XCODCFOP_INTERNO := DMESTOQUE.TCFOP.FieldByName('COD_CFOP').AsInteger;
       End;
    End;

    //CFOP UTILIZADOS NA VENDA PARA CLIENTES DE ESTADO DIFERENTE AO ESTADO DA EMPRESA USUARIA DO SISTEMA
    If DMMACS.TLoja.FieldByName('CFOPEXTERNO').AsString <> ''
    Then Begin
       FiltraTabela(DMESTOQUE.TCFOP,'CFOP','COD_CFOP',DMMACS.TLoja.FieldByName('CFOPEXTERNO').AsString,'');

       If DMESTOQUE.TCFOP.IsEmpty
       Then Begin
           FrmCFOPExterno.EdDescricao.Text := '';
           FrmCFOPExterno.EDCodigo.Text := '';
           XCODCFOP_INTEREST := 0;
       End
       Else Begin
           FrmCFOPExterno.EdDescricao.Text := DMESTOQUE.TCFOP.FieldByName('DESCRICAO').AsString;
           FrmCFOPExterno.EDCodigo.Text := DMESTOQUE.TCFOP.FieldByName('CFOP').AsString;
           XCODCFOP_INTEREST := DMESTOQUE.TCFOP.FieldByName('COD_CFOP').AsInteger;
       End;
    End;

    // - 14/04/2009: CFOP UTILIZADO PARA VENDA DE MERCADORIA PARA INDUSTRIA FORA DO ESTADO DE ORIGEM
    If DMMACS.TLoja.FieldByName('INDCFOPEXTERNO').AsString <> ''
    Then Begin
       FiltraTabela(DMESTOQUE.TCFOP,'CFOP','COD_CFOP',DMMACS.TLoja.FieldByName('INDCFOPEXTERNO').AsString,'');

       If DMESTOQUE.TCFOP.IsEmpty
       Then Begin
           FrmCFOFExternoIndustria.EdDescricao.Text := '';
           FrmCFOFExternoIndustria.EDCodigo.Text := '';
           XCODSTEXTERNOIND := 0;
       End
       Else Begin
           FrmCFOFExternoIndustria.EdDescricao.Text := DMESTOQUE.TCFOP.FieldByName('DESCRICAO').AsString;
           FrmCFOFExternoIndustria.EDCodigo.Text := DMESTOQUE.TCFOP.FieldByName('CFOP').AsString;
           XCODSTEXTERNOIND := DMESTOQUE.TCFOP.FieldByName('COD_CFOP').AsInteger;
       End;
    End;

    // - 14/04/2009: CFOP UTILIZADO PARA VENDA DE MERCADORIA PARA INDUSTRIA DENTRO DO ESTADO DE ORIGEM
    If DMMACS.TLoja.FieldByName('INDCFOPINTERNO').AsString <> ''
    Then Begin
       FiltraTabela(DMESTOQUE.TCFOP,'CFOP','COD_CFOP',DMMACS.TLoja.FieldByName('INDCFOPINTERNO').AsString,'');

       If DMESTOQUE.TCFOP.IsEmpty
       Then Begin
           FrmCFOFInternoIndustria.EdDescricao.Text := '';
           FrmCFOFInternoIndustria.EDCodigo.Text := '';
           XCODSTINTERNOIND := 0;
       End
       Else Begin
           FrmCFOFInternoIndustria.EdDescricao.Text := DMESTOQUE.TCFOP.FieldByName('DESCRICAO').AsString;
           FrmCFOFInternoIndustria.EDCodigo.Text := DMESTOQUE.TCFOP.FieldByName('CFOP').AsString;
           XCODSTINTERNOIND := DMESTOQUE.TCFOP.FieldByName('COD_CFOP').AsInteger;
       End;
    End;

    //Paulo 29/11/2011: CFOP utilizada em OUTRAS ENTRADAS POR EMISSAO PROPRIA dentro do estado
    If DMMACS.TLoja.FieldByName('EMISSAOPROPDENTRO').AsString <> ''
    Then Begin
       FiltraTabela(DMESTOQUE.TCFOP,'CFOP','COD_CFOP',DMMACS.TLoja.FieldByName('EMISSAOPROPDENTRO').AsString,'');

       If DMESTOQUE.TCFOP.IsEmpty
       Then Begin
           FrmEntPropDentro.EdDescricao.Text := '';
           FrmEntPropDentro.EDCodigo.Text := '';
           XCODCFOPPROPDENTRO := 0;
       End
       Else Begin
           FrmEntPropDentro.EdDescricao.Text := DMESTOQUE.TCFOP.FieldByName('DESCRICAO').AsString;
           FrmEntPropDentro.EDCodigo.Text := DMESTOQUE.TCFOP.FieldByName('CFOP').AsString;
           XCODCFOPPROPDENTRO := DMESTOQUE.TCFOP.FieldByName('COD_CFOP').AsInteger;
       End;
    End;

    //Paulo 29/11/2011: CFOP utilizada em ENTRADAS POR EMISSAO PROPRIA fora do estado
    If DMMACS.TLoja.FieldByName('EMISSAOPROPFORA').AsString <> ''
    Then Begin
       FiltraTabela(DMESTOQUE.TCFOP,'CFOP','COD_CFOP',DMMACS.TLoja.FieldByName('EMISSAOPROPFORA').AsString,'');

       If DMESTOQUE.TCFOP.IsEmpty
       Then Begin
           FrmEntPropFora.EdDescricao.Text := '';
           FrmEntPropFora.EDCodigo.Text := '';
           XCODCFOPPROPFORA := 0;
       End
       Else Begin
           FrmEntPropFora.EdDescricao.Text := DMESTOQUE.TCFOP.FieldByName('DESCRICAO').AsString;
           FrmEntPropFora.EDCodigo.Text := DMESTOQUE.TCFOP.FieldByName('CFOP').AsString;
           XCODCFOPPROPFORA := DMESTOQUE.TCFOP.FieldByName('COD_CFOP').AsInteger;
       End;
    End;

    //Edmar - 24/02/2015 - CFOP utilizada em OUTRAS ENTRADAS POR EMISSAO PROPRIA dentro do estado
    if DMMACS.TLoja.FieldByName('CFOPINTOUTEMISSAOPROP').AsString <> '' then
    begin
       FiltraTabela(DMESTOQUE.TCFOP, 'CFOP', 'COD_CFOP', DMMACS.TLoja.FieldByName('CFOPINTOUTEMISSAOPROP').AsString, '');

       if DMESTOQUE.TCFOP.IsEmpty then
       begin
           FrmOutEntPropDentro.EdDescricao.Text := '';
           FrmOutEntPropDentro.EDCodigo.Text := '';
           XCODCFOPOUTPROPDENTRO := 0;
       end
       else begin
           FrmOutEntPropDentro.EdDescricao.Text := DMESTOQUE.TCFOP.FieldByName('DESCRICAO').AsString;
           FrmOutEntPropDentro.EDCodigo.Text := DMESTOQUE.TCFOP.FieldByName('CFOP').AsString;
           XCODCFOPOUTPROPDENTRO := DMESTOQUE.TCFOP.FieldByName('COD_CFOP').AsInteger;
       end;
    end;

    //Edmar - 24/02/2015 - CFOP utilizada em OUTRAS ENTRADAS POR EMISSAO PROPRIA fora do estado
    If DMMACS.TLoja.FieldByName('CFOPEXTOUTEMISSAOPROP').AsString <> ''
    Then Begin
       FiltraTabela(DMESTOQUE.TCFOP, 'CFOP', 'COD_CFOP', DMMACS.TLoja.FieldByName('CFOPEXTOUTEMISSAOPROP').AsString, '');

       If DMESTOQUE.TCFOP.IsEmpty
       Then Begin
           FrmOutEntPropFora.EdDescricao.Text := '';
           FrmOutEntPropFora.EDCodigo.Text := '';
           XCODCFOPOUTPROPFORA := 0;
       End
       Else Begin
           FrmOutEntPropFora.EdDescricao.Text := DMESTOQUE.TCFOP.FieldByName('DESCRICAO').AsString;
           FrmOutEntPropFora.EDCodigo.Text := DMESTOQUE.TCFOP.FieldByName('CFOP').AsString;
           XCODCFOPOUTPROPFORA := DMESTOQUE.TCFOP.FieldByName('COD_CFOP').AsInteger;
       End;
    End;

    //CONTROLE QUE REVELA A VISUALIZAÇÃO DA MENSAGEM DE LIMITE DE CRÉDITO
    If DMMACS.TLoja.FieldByName('MSGLIMITCRED').AsString = '1' Then
       CBLIMITCRED.Checked := true
    Else
       CBLIMITCRED.Checked := false;

    // VERIFICA SE ESTA CONFIGURADO PARA NOME FANTASIA OU RAZAO SOCIAL NAS DUPLICATAS
    If DMMACS.TLoja.FieldByName('VISUALNF').AsString = '1'
    Then Begin
       RGDuplicata.ItemIndex := 1;
    End;
    If DMMACS.TLoja.FieldByName('VISUALRS').AsString = '1'
    Then Begin
       RGDuplicata.ItemIndex := 0;
    End;

    // se estiver selecionado, o combo box de gerar financeiro no pedid de venda eh selecionado
    If DMMACS.TLoja.FieldByName('gerafinanceiro').AsString = '1' Then
       CBGeraFinanceiro.Checked := true
    Else
       CBGeraFinanceiro.Checked := false;

    // se o campo estiver valendo 1, o check box ficara selecionado para venda a vista
    If DMMACS.TLoja.FieldByName('tipovenda').AsString = '1' Then
       CBTipoVenda.Checked := true
    Else
       CBTipoVenda.Checked := false;

    // verifica o campo no banco se esta com valor 1, se estiver dexa selecionado o checkbox
    If DMMACS.TLoja.FieldByName('PAINEL_DESC').AsString = '1' Then
       CBDesconto.Checked := true
    Else
       CBDesconto.Checked := false;

    //Posiciona no painel de produtos para não ocorrer problemas com invisibilidade
    PageControl1.ActivePage:=TabSheet2;

    //INFORMA AO SISTEMA SE TRABALHA EM REDE OU NAO
    If DMMacs.TLoja.FieldByName('REDE').AsString='1' Then
       CBRede.Checked:=True
    Else
       CBRede.Checked:=False;

    //INFORMA VALORES A COMBO SE O CÓDIGO DOS PRODUTOS DEVE SER ACRECIDO DE ZEROS OU NÃO
    If DMMacs.TLoja.FieldByName('ZEROCODPRODUTO').AsString='1' Then
       CBZEROPROD.Checked:=True
    Else
       CBZEROPROD.Checked:=False;

    //INFORMA A COMBO SE OS PEDIDOS DEVEM SER FECHADOS AUTOMATICAMENTES AO GRAVAR O PEDIDO
    If DMMacs.TLoja.FieldByName('BLOQBTNFISCAL').AsString='1' Then
       CBTELAFISCAL.Checked:=True
    Else
       CBTELAFISCAL.Checked:=False;

    //INFORMA A COMBO SE O ESTOQUE FÍSICO DEVE SER ATUALIZADO DIRETO NO PEDIDO  de venda
    If DMMacs.TLoja.FieldByName('ATUAESTOQUE').AsString='1' Then
       CBAtuaEstoque.Checked:=True
    Else
       CBAtuaEstoque.Checked:=False;
    //INFORMA A COMBO SE O ESTOQUE FÍSICO DEVE SER ATUALIZADO DIRETO NO PEDIDO  compra
    If DMMacs.TLoja.FieldByName('ATUALIZAESTOQUEPC').AsString='1' Then
       CBAtuaEstoquePC.Checked:=True
    Else
       CBAtuaEstoquePC.Checked:=False;

    // locacao
    If DMMACS.TLoja.FieldByName('ORDEMLOCA_GUINDASTE').AsString = '1' Then
       CBLocacao.Checked := true
    Else
       CBLocacao.Checked := false;

    //INFORMA A COMBO  SE PODE VENDER COM ESTOQUE FÍSICO NEGATIVO
    If DMMacs.TLoja.FieldByName('VENDESTNEG').AsString='1' Then
       CBVENDNEG.Checked:=True
    Else
       CBVENDNEG.Checked:=False;

    //INFORMA A COMBO  SE PODE VENDER COM SALDO ESTOQUE NEGATIVO
    If DMMacs.TLoja.FieldByName('VENDSALDONEG').AsString='2' Then
       CDVENDSALDONEG.Checked:=True
    Else
       CDVENDSALDONEG.Checked:=False;

    //INFORMA A COMBO  SE DEVE IMPRIMIR O PEDIDO SEM PRÉ VISUALIZAR
    If DMMacs.TLoja.FieldByName('IMPPED').AsString='1' Then
       CBIMPPED.Checked:=True
    Else
       CBIMPPED.Checked:=False;

    //INFORMA A COMBO  SE DEVE IMPRIMIR O PEDIDO automaticamente ao fechar
    If DMMacs.TLoja.FieldByName('IMPPEDFECH').AsString='1' Then
       CBIMPPEDFECH.Checked:=True
    Else
       CBIMPPEDFECH.Checked:=False;

    //INFORMA A COMBO  SE DEVE IMPRIMIR A DUPLICATA SEM PRE VISUALIZAR
    If DMMacs.TLoja.FieldByName('IMPDUP').AsString='1' Then
       CBIMPDUP.Checked:=True
    Else
       CBIMPDUP.Checked:=False;

    //INFORMA A COMBO  SE DEVE IMPRIMIR A DUPLICATAMENTE AO GRAVAR
    If DMMacs.TLoja.FieldByName('IMPDUPAUT').AsString='1' Then
       CBIMPDUPAUT.Checked:=True
    Else
       CBIMPDUPAUT.Checked:=False;

    //INFORMA A COMBO  SE O VALOR DE VENDA DO PRODUTO DEVE SER CALCULADO PELO SISTEMA
    If DMMacs.TLoja.FieldByName('CALVALVEND').AsString='1' Then
       CBCALCVALVEND.Checked:=True
    Else
       CBCALCVALVEND.Checked:=False;

    //INFORMA A COMBO  SE O SISTEMA DEVE EFETUAR O CONTROLE DE CPF/CNPJ DE CLIENTES
    If DMMacs.TLoja.FieldByName('CONTCPFCNPJCLI').AsString='1' Then
       CBCONTCPFCLI.Checked:=True
    Else
       CBCONTCPFCLI.Checked:=False;

    //INFORMA A COMBO  SE O SISTEMA DEVE EFETUAR O CONTROLE DE CPF/CNPJ DE fornecedores
    If DMMacs.TLoja.FieldByName('CONTCPFCNPJFOR').AsString='1' Then
       CBCONTCPFFORNEC.Checked:=True
    Else
       CBCONTCPFFORNEC.Checked:=False;

    //INFORMA A COMBO  SE O SISTEMA DEVE ATIVAR O BOTÃO DE COMISSIONADOS
    If DMMacs.TLoja.FieldByName('USAMULTCOMIS').AsString='1' Then
       CBMULTCOMISS.Checked:=True
    Else
       CBMULTCOMISS.Checked:=False;

   //********************************************************************
     //INFORMAA COMBO QUE O SISTEMA DEVE IMPRIMIR A DESCRIÇÃO DE IMPRIMIR A VISTA OU A PRAZO
    If DMMacs.Tloja.FieldByName('DESCETIQUETA').AsString='1' Then
        Descricao.Checked:=True
    else
        Descricao.Checked:=False;
    //**********************************************************************

    //INFORMA AO RADIO GROUP QUAL O COMPONENTE QUE DEVE RECEBER O FOCUS EM ITEM DE PEDIDO
    IF DMMacs.Tloja.FieldByName('FOCUITEMPED').AsString = 'BP' THEN
       RGFOCU.ItemIndex:=0;
    IF DMMacs.Tloja.FieldByName('FOCUITEMPED').AsString = 'CB' THEN
       RGFOCU.ItemIndex:=1;
    IF DMMacs.Tloja.FieldByName('FOCUITEMPED').AsString = 'CA' THEN
       RGFOCU.ItemIndex:=2;
    IF DMMacs.Tloja.FieldByName('FOCUITEMPED').AsString = 'PR' THEN
       RGFOCU.ItemIndex:=3;

    //Paulo 12/07/2011: INFORMA AO RADIO GROUP QUAL O COMPONENTE QUE DEVE RECEBER O FOCUS EM ITEM DE ORDEM
    IF DMMacs.Tloja.FieldByName('FOCUITEMOS').AsString = 'CI' THEN
       RGConsOS.ItemIndex:=0;
    IF DMMacs.Tloja.FieldByName('FOCUITEMOS').AsString = 'CB' THEN
       RGConsOS.ItemIndex:=1;
    IF DMMacs.Tloja.FieldByName('FOCUITEMOS').AsString = 'CF' THEN
       RGConsOS.ItemIndex:=2;
    IF DMMacs.Tloja.FieldByName('FOCUITEMOS').AsString = 'NC' THEN
       RGConsOS.ItemIndex:=3;

    //INFORMA AO RADIO GROUP QUAL O COMPONENTE DEVE APARECER PARA REALIZAR A CONSULTA DE PRODUTOS EM PEDIDOQUE DEVE POSSUIR O FOCUS NO PEDIDO
    IF DMMacs.Tloja.FieldByName('CAMPOPESQITEMPED').AsString = 'CI' THEN
       RGCOMPCONST.ItemIndex:=0;
    IF DMMacs.Tloja.FieldByName('CAMPOPESQITEMPED').AsString = 'CC' THEN
       RGCOMPCONST.ItemIndex:=1;
    IF DMMacs.Tloja.FieldByName('CAMPOPESQITEMPED').AsString = 'CF' THEN
       RGCOMPCONST.ItemIndex:=2;
    IF DMMacs.Tloja.FieldByName('CAMPOPESQITEMPED').AsString = 'PL' THEN
       RGCOMPCONST.ItemIndex:=3;

    //INFORMA A COMBO  SE O SISTEMA DEVE TRABALHAR COM VENDEDORES INDIVIDUAIS POR ITEM DE VENDA
    If DMMacs.TLoja.FieldByName('VENDITEMPROD').AsString='1' Then
       CBVENDITEMPROD.Checked:=True
    Else
       CBVENDITEMPROD.Checked:=False;
    //INFORMA A COMBO  SE O SISTEMA DEVE TRABALHAR COM JUROS COMPOSTOS
    If DMMacs.TLoja.FieldByName('JURCOMP').AsString='1' Then
       CBJURCOMP.Checked:=True
    Else
       CBJURCOMP.Checked:=False;

    //INFORMA A COMBO  SE O SISTEMA DEVE IMPRIMIR EM ETIQUETA O CÓD DO FABRICANTE
    If DMMacs.TLoja.FieldByName('IECODFAB').AsString='1' Then
       CBETCODFAB.Checked:=True
    Else
       CBETCODFAB.Checked:=False;

    //INFORMA A COMBO  SE O SISTEMA DEVE IMPRIMIR EM ETIQUETA ADESACRICAO DO SIMILAR
    If DMMacs.TLoja.FieldByName('IEDESC').AsString='1' Then
       CBETDESC.Checked:=True
    Else
       CBETDESC.Checked:=False;

    //INFORMA A COMBO  SE O SISTEMA DEVE IMPRIMIR EM ETIQUETA O PRECO
    If DMMacs.TLoja.FieldByName('IEPRECO').AsString='1' Then
    	CBETPRECO.Checked:=True
    Else
       CBETPRECO.Checked:=False;

    //INFORMA A COMBO  SE O SISTEMA DEVE IMPRIMIR EM ETIQUETA O CÓD COMPOSTO
    If DMMacs.TLoja.FieldByName('IECODCOMPOSTO').AsString='1'
    Then Begin
       CBETCODCOMPOSTO.Checked:=True;
       CBETCTRLINTERNO.Checked:=False;
    End
    Else Begin
       CBETCODCOMPOSTO.Checked:=False;
       CBETCTRLINTERNO.Checked:=True;
    End;

    //INFORMA A COMBO  SE O SISTEMA DEVE IMPRIMIR EM ETIQUETA A MARCA
    If DMMacs.TLoja.FieldByName('IEBARRA').AsString='1' Then
       CBETBARRAS.Checked:=True
    Else
       CBETBARRAS.Checked:=False;

    //INFORMA A COMBO  SE O SISTEMA DEVE IMPRIMIR EM ETIQUETA O PREÇO A PRAZO
    If DMMacs.TLoja.FieldByName('IEPRECOPRAZO').AsString='1' Then
       CBETPRECOPRAZO.Checked:=True
    Else
       CBETPRECOPRAZO.Checked:=False;

    //INFORMA A COMBO  SE O SISTEMA DEVE IMPRIMIR EM ETIQUETA A COMPOSICAO
    If DMMacs.TLoja.FieldByName('IECOMPOSICAO').AsString='1' Then
       CBETCOMPOSICAO.Checked:=True
    Else
       CBETCOMPOSICAO.Checked:=False;

    //INFORMA A COMBO  SE O SISTEMA DEVE IMPRIMIR EM ETIQUETA A ALTURA E LARGURA
    If DMMacs.TLoja.FieldByName('IEALTLARG').AsString='1' Then
       CBETALTURALARGURA.Checked:=True
    Else
       CBETALTURALARGURA.Checked:=False;

    //INFORMA A COMBO  SE O SISTEMA DEVE IMPRIMIR AS BARRAS DO CODIGO DE BARRAS
    If DMMacs.TLoja.FieldByName('IEMARCA').AsString='1' Then
       CBMarca.Checked:=True
    Else
       CBMarca.Checked:=False;
    //INFORMA A COMBO  SE O SISTEMA DEVE IMPRIMIR A CLASSIFICACAO
    If DMMacs.TLoja.FieldByName('IECLASS').AsString='1' Then
       CBClassificacao.Checked:=True
    Else
       CBClassificacao.Checked:=False;

    //Paulo 04/11/2010 - 162: INFORMA A COMBO  SE O SISTEMA DEVE IMPRIMIR O CAMPO COR
    If DMMacs.TLoja.FieldByName('IECLASS2').AsString='1' Then
       CBClassificacao2.Checked:=True
    Else
       CBClassificacao2.Checked:=False;

    //Paulo 23/12/2010 - INFORMA SE O DEVE ATRELAR PLANO DE CONTA AO PRODUTO
    If DMMacs.TLoja.FieldByName('PLANOCTAPROD').AsString='1' Then
       cbPlanoContaProd.Checked:=True
    Else
       cbPlanoContaProd.Checked:=False;

    //Paulo 02/02/2011 - INFORMA SE O DEVE MOSTRAR O ESTOQUE DA LOJA(MATRIZ)
    If DMMacs.TLoja.FieldByName('MOSTRAESTOQUE').AsString='1' Then
       cbEstoqueLoja.Checked:=True
    Else
       cbEstoqueLoja.Checked:=False;

    //Paulo 25/11/2011 - Informa o controle de dias de vencimento
    EdDiasVenc.Text:=DMMacs.TLoja.FieldByName('DIASVENC').AsString;

    //INFORMA A COMBO  SE O SISTEMA DEVE IMPRIMIR O FABRICANTE
    If DMMacs.TLoja.FieldByName('IEFABR').AsString='1' Then
       CBETFabricante.Checked:=True
    Else
       CBETFabricante.Checked:=False;

    //INFORMA A COMBO  SE O SISTEMA DEVE MOVIMENTAR PARCELAS A VISTA
    If DMMacs.TLoja.FieldByName('MOVPARCAVISTA').AsString='1' Then
       CBMOVPARCAVISTA.Checked:=True
    Else
       CBMOVPARCAVISTA.Checked:=False;

    //INFORMA A COMBO  SE O SISTEMA DEVE DIFERENCIAR FORMAS DE PAGAMENTO DO PEDIDO DE COMPRA DO DE VENDA
    If DMMacs.TLoja.FieldByName('UTILFORMPG').AsString='1' Then
       CBUTILFORMPAG.Checked:=True
    Else
       CBUTILFORMPAG.Checked:=False;
    //INFORMA A COMBO SE O SISTEMA DEVE REVELAR COMPO PARA POSSIBILITAR ALTERAÇÃO DA COMISSÃO EM ITENS DO PEDIDO
    If DMMacs.TLoja.FieldByName('ALTCOMPROD').AsString='1' Then
       CBALTCOMPROD.Checked:=True
    Else
       CBALTCOMPROD.Checked:=False;

    //INFORMA A COMBO SE O SISTEMA DEVE LIBERAR COMBO DE GARANTIA EM PEDIDO
    If DMMacs.TLoja.FieldByName('USAGARANTIA').AsString='1' Then
       CBGARANTIA.Checked:=True
    Else
       CBGARANTIA.Checked:=False;
    //INFORMA A COMBO SE O SISTEMA DEVE UTILIZAR CONVERSÃO UNITARIA
    If DMMacs.TLoja.FieldByName('CONVERTUNID').AsString='1' Then
       CBConvertUnid.Checked:=True
    Else
       CBConvertUnid.Checked:=False;

    // - 23/01/2009: se utiliza conversão unitária p/ embalagens em ped. venda
    If DMMacs.Tloja.FieldByName('CONVERTUNIDVEND').AsString = '1' Then
        CBConverUnitEmb.Checked:=True
    Else
       CBConverUnitEmb.Checked:=False;

    // - 27/01/2009: se utiliza conversão unitária em venda
    If DMMacs.Tloja.FieldByName('CONVERTUNIDFERRO').AsString = '1' Then
        CBConverUnitVenda.Checked:=True
    Else
       CBConverUnitVenda.Checked:=False;
       
    //INFORMA SE O SISTEMA DEVE POSSIBILITAR A DEVOLUÇÃO DE ESTOQUE EM PEDIDO
    If DMMacs.TLoja.FieldByName('CTRLDVL').AsString='1' Then
       CBCTRLDVL.Checked:=True
    Else
       CBCTRLDVL.Checked:=False;

    //INFORMA SE O SISTEMA DEVE EFETUAR O CONTROLE DE MENSAGENS RECEBIDAS PELOS USUARIO
    IF DMMacs.Tloja.FieldByName('CTRLMENS').AsString='1'
    Then Begin
       CBCTRLMENS.Checked:=True;
       DBTIMEMENS.Visible:=True;
    End
    Else Begin
       DBTIMEMENS.Visible:=False;
       CBCTRLMENS.Checked:=False;
    end;

    //GRAVA SE O SISTEMA DEVE IMPRIMER ETIQUETAS DE PRODUTOS PERSONALIZADAS OU NAO
    If DMMacs.TLoja.FieldByName('ETPERSONAL').AsString='1'
    Then Begin
       If RGTipoEt.Visible=True Then
           RGTipoEt.ItemIndex:=1
    End;
    If DMMacs.TLoja.FieldByName('ETPERSONAL').AsString='0'
    Then Begin
       If RGTipoEt.Visible=True Then
           RGTipoEt.ItemIndex:=0;
    End;
    If DMMacs.TLoja.FieldByName('ETPERSONAL').AsString='2'
    Then Begin
       If RGTipoEt.Visible=True Then
           RGTipoEt.ItemIndex:=2;
    End;
    //Paulo 10/12/2010: Para impressão de etiquetas de Ótica
    If DMMacs.TLoja.FieldByName('ETPERSONAL').AsString='3'
    Then Begin
       If RGTipoEt.Visible=True Then
           RGTipoEt.ItemIndex:=3;
    End;
    //INFORMA A EDIT O CAMINHO DA IMAGEM DE FUNDO DO PDV
    EdCaminhoImgPdv.Text:=DMMACS.TLoja.FieldByName('CAMIMGPDV').AsString;

    //INFORMA A EDIT O CAMINHO DA IMAGEM DO LOGO DA EMPRESA
    EdCamImgLogo.Text:=DMMACS.TLoja.FieldByName('CAMIMGLOGO').AsString;

    //INFORMA A COMBO SE O VLR DA COMISSAO EM ITEN PED VENDA DEVE SER BUSCADO DA TABELA DE ESTOQUE OU SIMPLESMENTE DA FUNCARGO
    If DMMacs.Tloja.FieldByName('COMISSPRODCADPROD').AsString='1'  Then
       CBCOMISSPRODCADPROD.Checked:=True
    Else
       CBCOMISSPRODCADPROD.Checked:=False;

    //INFORMA A COMBO SE O SISTEMA DEVE OPERAR COM O TRABALHO DE DESCRICAO PARA CUPOM
    If DMMacs.Tloja.FieldByName('OPERADESCCUPOM').AsString='1'  Then
       CBDescCupom.Checked:=True
    Else
       CBDescCupom.Checked:=False;

    //INFORMA AO RADIOGROUP O TIPO DE CÓDIGO DO PRODUTO QUE O SISTEMA UTILIZA PARA RELATÓRIOS
    //RG1
    If DMMacs.Tloja.FieldByName('CODPRODREL1').AsString='CODCOMPOSTO' Then
       RGCODPRODREL1.ItemIndex:=0;
    If DMMacs.Tloja.FieldByName('CODPRODREL1').AsString='CODBARRA' Then
       RGCODPRODREL1.ItemIndex:=1;
    If DMMacs.Tloja.FieldByName('CODPRODREL1').AsString='CODPRODFABR' Then
       RGCODPRODREL1.ItemIndex:=2;
    If DMMacs.Tloja.FieldByName('CODPRODREL1').AsString='COD_INTERNO' Then
       RGCODPRODREL1.ItemIndex:=3;
    If DMMacs.Tloja.FieldByName('CODPRODREL1').AsString='CONTRINT' Then
       RGCODPRODREL1.ItemIndex:=4;

    //RG2
    If DMMacs.Tloja.FieldByName('CODPRODREL2').AsString='CODCOMPOSTO' Then
       RGCODPRODREL2.ItemIndex:=0;
    If DMMacs.Tloja.FieldByName('CODPRODREL2').AsString='CODBARRA' Then
       RGCODPRODREL2.ItemIndex:=1;
    If DMMacs.Tloja.FieldByName('CODPRODREL2').AsString='CODPRODFABR' Then
       RGCODPRODREL2.ItemIndex:=2;
    If DMMacs.Tloja.FieldByName('CODPRODREL2').AsString='COD_INTERNO' Then
       RGCODPRODREL2.ItemIndex:=3;
    If DMMacs.Tloja.FieldByName('CODPRODREL2').AsString='CONTRINT' Then
       RGCODPRODREL2.ItemIndex:=4;

    //INDICA PRODUTOS DIVERSOS
    XCod_ProdDiv:=DMMACS.TLoja.FieldByName('COD_PRODDIV').AsInteger;
    If FiltraTabela(DMESTOQUE.WSimilar, 'VWSIMILAR', 'COD_ESTOQUE', IntToStr(XCod_ProdDiv), '')=True
    Then Begin
       FrmProdDiv.EDCodigo.Text:=DMESTOQUE.WSimilar.FieldByName('CONTRINT').AsString;
       FrmProdDiv.EdDescricao.Text:=DMESTOQUE.WSimilar.FieldByName('DESCRICAO').AsString;
       FrmProdDiv.Repaint;
    End;
    //Posiciona no painel com a imagem
    If FMenu.TIPOAUX<>'TABSHEET5'
    Then Begin
       PageControl1.ActivePage:=TabSheet12;
    End
    Else Begin
       PageControl1.ActivePage:=TabSheet5;
       EdPapelParede.SetFocus;
    End;
    //GRAVA SE A ECF ESTA ARREDONDANDO OU NAO
    If DMMacs.Tloja.FieldByName('ECFTRUNC').AsInteger=1 Then
       CBArredonda.Checked:=True
    Else
       CBArredonda.Checked:=False;

    //Paulo 13/07/2010: Para Gera data do pedido   
    If DMMACS.TLoja.FieldByName('GERAFINANCDTSIS').AsString = '1' Then
       CBDataPedido.Checked := true
    Else
       CBDataPedido.Checked := false;
       
   //Paulo 01/11/2010 - 160: Para mostrar qual tipo de impressão está sendo usando em Orçamentos
    DBModeloImp.Text:=IntToStr(DMMACS.TLoja.FieldByName('MODELOORC').AsInteger);

   //Paulo 01/09/2010: Para Trabalhar com Ficha Técnica
    If DMMACS.TLoja.FieldByName('ABREFICHATEC').AsString = '1' Then
       CBFichaTecnica.Checked := true
    Else
       CBFichaTecnica.Checked := false;

   //Paulo 23/09/2010: PARA CST'S DE VENDA COM SITUAÇÃO TRIBUTARIA
    If DMMACS.TLoja.FieldByName('CSTTRIB').AsString <> ''
    Then Begin
       FiltraTabela(DMEstoque.TCST,'CST','COD_CST',IntToStr(DMMACS.TLoja.FieldByName('CSTTRIB').AsInteger),'');

       If DMESTOQUE.TCST.IsEmpty
       Then Begin
           FrmCstVendaTrib.EdDescricao.Text := '';
           FrmCstVendaTrib.EDCodigo.Text := '';
           XCODCSTTRIB := 0;
       End
       Else Begin
           FrmCstVendaTrib.EdDescricao.Text := DMESTOQUE.TCST.FieldByName('DESCRICAO').AsString;
           FrmCstVendaTrib.EDCodigo.Text := DMESTOQUE.TCST.FieldByName('COD_SIT_TRIB').AsString;
           XCODCSTTRIB := DMESTOQUE.TCST.FieldByName('COD_CST').AsInteger;
       End;
    End;
    //Paulo 23/09/2010: PARA CST'S DE VENDA COM SUBSTITUIÇÃO
    If DMMACS.TLoja.FieldByName('CSTSUBST').AsString <> ''
    Then Begin
       FiltraTabela(DMEstoque.TCST,'CST','COD_CST',IntToStr(DMMACS.TLoja.FieldByName('CSTSUBST').AsInteger),'');

       If DMESTOQUE.TCST.IsEmpty
       Then Begin
           FrmCstSubst.EdDescricao.Text := '';
           FrmCstSubst.EDCodigo.Text := '';
           XCODCSTSUBST := 0;
       End
       Else Begin
           FrmCstSubst.EdDescricao.Text := DMESTOQUE.TCST.FieldByName('DESCRICAO').AsString;
           FrmCstSubst.EDCodigo.Text := DMESTOQUE.TCST.FieldByName('COD_SIT_TRIB').AsString;
           XCODCSTSUBST := DMESTOQUE.TCST.FieldByName('COD_CST').AsInteger;
       End;
    End;

    //Paulo 21/10/2010: Para trazer a logo da empresa
    if not DMMACS.TLoja.FieldByName('LOGOEMPRESA').IsNull then
    	ImLogo.Picture.Assign(DMMACS.TLoja.FieldByName('LOGOEMPRESA'));

    //Paulo 15/07/2011: Para trazer os dados do email
    //EdEmail.Text:=FMenu.xmlConfig.ChildNodes['config'].ChildNodes.FindNode('email').Text;
    //EdSenha.Text:=Fmenu.Cripto.CriptoHexToText(FMenu.xmlConfig.ChildNodes['config'].ChildNodes.FindNode('password').Text);
    //EdHostSMTP.Text:=FMenu.xmlConfig.ChildNodes['config'].ChildNodes.FindNode('hostsmtp').Text;
    //EdHostPOP3.Text:=FMenu.xmlConfig.ChildNodes['config'].ChildNodes.FindNode('portasmtp').Text;

    //GRAVA SE SISTEMA DEVE UTIKLIZAR O ESQUEMA DE SELECIONAR VARIOS PRODUTOS PARA CADA VEZ NOS PEDIDOS
    If DMMacs.Tloja.FieldByName('BUSCANPRODS').AsInteger=1 Then
       CBBuscaNProds.Checked:=True
    Else
       CBBuscaNProds.Checked:=False;

    //GRAVA SE SISTEMA DEVE UTIKLIZAR IMPRESSAO DE COMPROVANTE DE VENDA DO TIPO MATRICIAL
    If DMMacs.Tloja.FieldByName('IMPMATRICIAL').AsInteger=1
    Then Begin
       PConfigImpMat.Visible:=True;
       PConfigImpMat.BringToFront;
       PageControl1.ActivePage:=TabSheet1;
       PageControl2.ActivePage:=TabSheet10;
       CBImpMatricial.Checked:=True;
       PageControl2.ActivePage:=TabSheet9;
    End
    Else Begin
       PConfigImpMat.Visible:=False;
       CBImpMatricial.Checked:=False;
    End;

   //Felipe - 05/02/2015 - Retorna dados do campo CAMINHOXML da tabela LOJA
	EdtCaminhoXml.Text := DMMACS.TLoja.FieldByName('CAMINHOXML').AsString;

    //codigo de situação tributaria interna
    If DMMACS.TLoja.FieldByName('CFOPINTERNOCST').AsString <> ''
    Then Begin
       FiltraTabela(DMESTOQUE.TCFOP,'CFOP','COD_CFOP',DMMACS.TLoja.FieldByName('CFOPINTERNOCST').AsString,'');

       If DMESTOQUE.TCFOP.IsEmpty
       Then Begin
           FrmSTInterno.EdDescricao.Text := '';
           FrmSTInterno.EDCodigo.Text := '';
           XCODSTINTERNO := 0;
       End
       Else Begin
           FrmSTInterno.EdDescricao.Text := DMESTOQUE.TCFOP.FieldByName('DESCRICAO').AsString;
           FrmSTInterno.EDCodigo.Text := DMESTOQUE.TCFOP.FieldByName('CFOP').AsString;
           XCODSTINTERNO := DMESTOQUE.TCFOP.FieldByName('COD_CFOP').AsInteger;
       End;
    End;

    //copdigo de situação tributaria externa
    If DMMACS.TLoja.FieldByName('CFOPEXPERTOCST').AsString <> ''
    Then Begin
       FiltraTabela(DMESTOQUE.TCFOP,'CFOP','COD_CFOP',DMMACS.TLoja.FieldByName('CFOPEXPERTOCST').AsString,'');

       If DMESTOQUE.TCFOP.IsEmpty
       Then Begin
           FrmSTExterno.EdDescricao.Text := '';
           FrmSTExterno.EDCodigo.Text := '';
           XCODSTEXTERNO := 0;
       End
       Else Begin
           FrmSTExterno.EdDescricao.Text := DMESTOQUE.TCFOP.FieldByName('DESCRICAO').AsString;
           FrmSTExterno.EDCodigo.Text := DMESTOQUE.TCFOP.FieldByName('CFOP').AsString;
           XCODSTEXTERNO := DMESTOQUE.TCFOP.FieldByName('COD_CFOP').AsInteger;
       End;
    End;

    FiltraTabela(DMESTOQUE.TCFOP,'CFOP','','',' order by CFOP');

    FMenu.TIPOAUX:='';

    PageControl1.ActivePage:=TabSheet12;
    

end;

procedure TFConfigLoja.CDVENDSALDONEGClick(Sender: TObject);
begin
  inherited;
   // ou seja, se estver selecionado a opção para buscar valor do cadastro de produto, o checkbox que libera a edit para alternar valor estara desativada
   If CBCOMISSPRODCADPROD.Checked = true
   Then Begin
       CBALTCOMPROD.Checked := false;
   End;
end;

procedure TFConfigLoja.BitBtn2Click(Sender: TObject);
begin
  inherited;
	if OpD.Execute then
  	begin
   	DMMACS.TLoja.Edit;
    	DMMACS.TLoja.FieldByName('CAMIMGPDV').AsString:=OPD.FileName;
       EdCaminhoImgPdv.Text:=OPD.FileName;
  	end;
end;

procedure TFConfigLoja.BitBtn3Click(Sender: TObject);
begin
  inherited;
	DMMACS.TLoja.edit;
	DMMACS.TLoja.FieldByName('CAMIMGPDV').AsString:='';
   DMMACS.TLoja.Post;
   DMMACS.Transaction.CommitRetaining;
   EdCaminhoImgPdv.Text:='';
end;

procedure TFConfigLoja.DBCBIMPRESSORAKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
	Key:=#0;
end;

procedure TFConfigLoja.DBEtPreDefinidaKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
	Key:=#0;
end;

procedure TFConfigLoja.btnFechaServClick(Sender: TObject);
begin
  inherited;

   edNumServico.Text := '';
   edDescServico.Text := '';
   cbAtivo.Checked := false;
   cbPadrao.Checked := false;
   pCadServico.Visible := false;
   pCadServico.SendToBack;

   //SetImp('ETIQPROD');
   //MessageDlg('SET PAGE:'+#13+#10+'Colunas: '+IntToStr(printer.pagewidth)+#13+#10+'Linhas: '+IntToStr(printer.PageHeight), mtWarning, [mbok], 0);
end;

procedure TFConfigLoja.SpeedButton2Click(Sender: TObject);
Var
   ALT, TAM: Integer;
begin
  inherited;
   //seta quantidade de colunas e linhas para impressão no papel e impressora corrente
  	If (GetWindowsVersion='Windows XP') Or  (GetWindowsVersion='Windows 2000') Or  (GetWindowsVersion='Windows NT') Then
		SetPrinterPage_Xp(DMPAPER_USER, DMMACS.TLoja.FieldByName('COLUNAPAPETPROD').AsInteger, DMMACS.TLoja.FieldByName('LINHAPAPETPROD').AsInteger)
   Else
      	SetPrinterPage_9x(DMMACS.TLoja.FieldByName('COLUNAPAPETPROD').AsInteger, DMMACS.TLoja.FieldByName('LINHAPAPETPROD').AsInteger);

   Printer.Canvas.Font.Size:=12;
   ALT:=Printer.Canvas.TextHeight('IE');
   TAM:=Printer.Canvas.TextWidth('SD');
   Printer.BeginDoc;
   //SUPERIOR ESQUERDA
   Printer.Canvas.TextOut(0, 0, 'SE');
   //INFERIOR ESQUERDA
   Printer.Canvas.TextOut(0, DMMACS.TLoja.FieldByName('LINHAPAPETPROD').AsInteger-ALT, 'IE');
   //SUPERIOR DIREITA
   Printer.Canvas.TextOut(DMMACS.TLoja.FieldByName('COLUNAPAPETPROD').AsInteger-TAM, 0, 'SD');
   //INFERIOR DIREITA
   Printer.Canvas.TextOut(DMMACS.TLoja.FieldByName('COLUNAPAPETPROD').AsInteger-TAM, DMMACS.TLoja.FieldByName('LINHAPAPETPROD').AsInteger-ALT, 'ID');

   Printer.Canvas.TextOut(0, DMMACS.TLoja.FieldByName('LINHAPAPETPROD').AsInteger+ALT, 'EVASÃO');

   //Imprime canto superior esquerdo
//	Printer.Canvas.Rectangle(1465,50,1466,300);
{   Printer.Canvas.Rectangle(0, 50, 50, 50);
   //Imprime canto superior Direito
   Printer.Canvas.Rectangle(DMMACS.TLoja.FieldByName('COLUNAPAPETPROD').AsInteger-50, 50, DMMACS.TLoja.FieldByName('COLUNAPAPETPROD').AsInteger, 50);
   //Imprime canto inferior esquerdo
   Printer.Canvas.Rectangle(0, DMMACS.TLoja.FieldByName('LINHAPAPETPROD').AsInteger-50, 50, DMMACS.TLoja.FieldByName('LINHAPAPETPROD').AsInteger-50);
   //Imprime canto inferior direito
   Printer.Canvas.Rectangle(DMMACS.TLoja.FieldByName('COLUNAPAPETPROD').AsInteger-50, DMMACS.TLoja.FieldByName('LINHAPAPETPROD').AsInteger, DMMACS.TLoja.FieldByName('COLUNAPAPETPROD').AsInteger, DMMACS.TLoja.FieldByName('LINHAPAPETPROD').AsInteger);
{   I:=0;
   While I<=4000 do
   Begin
   	Printer.Canvas.TextOut(0, I, 'Linha: '+IntToStr(I));
       I:=I+50;
	End;}

	Printer.EndDoc;
end;

procedure TFConfigLoja.CBETCTRLINTERNOClick(Sender: TObject);
begin
  inherited;
  If CBETCTRLINTERNO.Checked=False AND CBClassificacao2.Checked=False
  Then Begin
    CBETCODCOMPOSTO.Checked:=True;
  End
  Else Begin
    CBETCODCOMPOSTO.Checked:=False;
  end;
end;

procedure TFConfigLoja.CBETCODCOMPOSTOClick(Sender: TObject);
begin
  inherited;
  If CBETCODCOMPOSTO.Checked=False AND CBClassificacao2.Checked=False
  Then Begin
    CBETCTRLINTERNO.Checked:=True;
  End
  Else Begin
    CBETCTRLINTERNO.Checked:=False;
  end;

end;

procedure TFConfigLoja.RGTipoEtClick(Sender: TObject);
begin
  inherited;
	If RGTipoEt.ItemIndex=0
   Then Begin
       PEtPreDefinida.Visible:=True;
       PEtPreDefinida.BringToFront;
       DBEtPreDefinida.SetFocus;
   End
   Else Begin
       PEtPersonal.Visible:=True;
       PEtPersonal.BringToFront;
		DbEtPersonal.SetFocus;
   End;
end;

procedure TFConfigLoja.BitBtn4Click(Sender: TObject);
begin
  inherited;
  If RGTipoEt.ItemIndex=1 then
    AbrirForm(TFConfigEtqProd, FConfigEtqProd, 0);
  If RGTipoEt.ItemIndex=2 then
    AbrirForm(TFConfigEtq02, FConfigEtq02, 0);

end;

procedure TFConfigLoja.BitBtn6Click(Sender: TObject);
begin
  inherited;
	DMMACS.TLoja.edit;
	DMMACS.TLoja.FieldByName('CAMIMGLOGO').AsString:='';
   DMMACS.TLoja.Post;
   DMMACS.Transaction.CommitRetaining;
   EdCamImgLogo.Text:='';
end;

procedure TFConfigLoja.BitBtn5Click(Sender: TObject);
begin
  inherited;
	if OpD.Execute then
  	begin
   	DMMACS.TLoja.Edit;
    	DMMACS.TLoja.FieldByName('CAMIMGLOGO').AsString:=OPD.FileName;
       EdCamImgLogo.Text:=OPD.FileName;
  	end;
end;

procedure TFConfigLoja.DBCPORTAECFKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
	kEY:=#0;
end;

procedure TFConfigLoja.DBCTIPOFISCALKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
   Key:=#0;
end;

procedure TFConfigLoja.DBCTIPOFISCALExit(Sender: TObject);
begin
  inherited;
   PCuponNFisc.Visible:=False;
  	PECF.Visible:=False;
   PNF.Visible:=False;
   PECF.Visible:=False;
   PECF.SendToBack;
   PNF.Visible:=False;
   PNF.SendToBack;
	If DBCTIPOFISCAL.Text<>'NENHUM'
   Then Begin
       If DBCTIPOFISCAL.Text='CUPOM'
       Then Begin
           PCuponNFisc.Visible:=True;
           PCuponNFisc.BringToFront;
       End;
       If DBCTIPOFISCAL.Text='ECF'
       Then Begin
       	PECF.Visible:=True;
       	PECF.BringToFront;
       	DBCPORTAECF.SetFocus;
       End;
       If (DBCTIPOFISCAL.Text='NF') OR (DBCTIPOFISCAL.Text='NFe')
       Then Begin
           PNF.Visible:=True;
           PNF.BringToFront;
           DBModelo.SetFocus;
       End;
   End
   Else Begin
      PECF.Visible:=False;
   end
end;

procedure TFConfigLoja.CBCTRLMENSClick(Sender: TObject);
begin
  inherited;
	If CBCTRLMENS.Checked=True Then
       DBTIMEMENS.Visible:=True
   Else
       DBTIMEMENS.Visible:=False;
end;

procedure TFConfigLoja.BitBtn7Click(Sender: TObject);
begin
  inherited;
	If Mensagem('Confirmação do usuário', 'Deseja realmente efetuar posicionamento para impressora térmica?', '', 2, 3, False, 'c')=2
   Then Begin
		Printer.BeginDoc;
		Printer.canvas.pen.width:=5;
		Printer.Canvas.Font.name:='VERDANA';
		Printer.Canvas.Font.Size:=8;
       Printer.Canvas.TextOut(10,10, 'POSICIONADO');
       Printer.EndDoc;
   End;
end;

procedure TFConfigLoja.BitBtn1Click(Sender: TObject);
begin
  inherited;
    AbrirForm(TFConfigNF, FConfigNF, 0);
end;

procedure TFConfigLoja.BitBtn8Click(Sender: TObject);
begin
  inherited;
	if OpD.Execute then
  	begin
   	DMMACS.TLoja.Edit;
    	DMMACS.TLoja.FieldByName('IMGMENU').AsString:=OPD.FileName;
       EdPapelParede.Text:=OPD.FileName;
  	end;
end;

procedure TFConfigLoja.BitBtn9Click(Sender: TObject);
begin
  inherited;
	DMMACS.TLoja.edit;
	DMMACS.TLoja.FieldByName('IMGMENU').AsString:='';
   DMMACS.TLoja.Post;
   DMMACS.Transaction.CommitRetaining;
   EdCamImgLogo.Text:='';
end;

procedure TFConfigLoja.CBPapelTranspClick(Sender: TObject);
begin
  inherited;
  	DMMACS.TLoja.Edit;
	If CBPapelTransp.Checked=True Then
    	DMMACS.TLoja.FieldByName('IMGMENUTRANSP').AsString:='1'
   Else
    	DMMACS.TLoja.FieldByName('IMGMENUTRANSP').AsString:='0';
end;

procedure TFConfigLoja.CBPapelExpandirClick(Sender: TObject);
begin
  inherited;
  	DMMACS.TLoja.Edit;
	If CBPapelExpandir.Checked=True
   Then Begin
    	DMMACS.TLoja.FieldByName('IMGMENUEXPANDIR').AsString:='1';
       CBPapelProporcional.Checked:=False;
   End
   Else Begin
    	DMMACS.TLoja.FieldByName('IMGMENUEXPANDIR').AsString:='0';
   end;
end;

procedure TFConfigLoja.CBPapelCentralizarClick(Sender: TObject);
begin
  inherited;
  	DMMACS.TLoja.Edit;
	If CBPapelCentralizar.Checked=True Then
    	DMMACS.TLoja.FieldByName('IMGMENUCENTRO').AsString:='1'
   Else
    	DMMACS.TLoja.FieldByName('IMGMENUCENTRO').AsString:='0';
end;

procedure TFConfigLoja.CBPapelProporcionalClick(Sender: TObject);
begin
  inherited;

  // - 18/03/2009: tem lojas que da erro de EditMod
           // add try-except
  Try

       DMMACS.TLoja.Edit;
       If CBPapelProporcional.Checked=True
       Then Begin
           DMMACS.TLoja.FieldByName('IMGMENUPROPORC').AsString:='1';
           CBPapelExpandir.Checked:=False;
       End
       Else Begin
           DMMACS.TLoja.FieldByName('IMGMENUPROPORC').AsString:='0';
       End;
       DMMACS.TLoja.Post;

   Except

   End;

end;

procedure TFConfigLoja.FrmFormPag1BTNMINUSClick(Sender: TObject);
begin
  inherited;
   FrmProdDiv.EDCodigo.Text:='';
   FrmProdDiv.EdDescricao.Text:='';
   XCod_ProdDiv:=-1;   
end;

procedure TFConfigLoja.FrmProdDivBTNOPENClick(Sender: TObject);
begin
  inherited;
	If AbrirForm(TFProduto, FProduto, 1)='Selected'
   Then Begin
		XCod_ProdDiv:=DMESTOQUE.WSimilar.FieldByName('COD_ESTOQUE').AsInteger;

       FrmProdDiv.EDCodigo.Text:=DMESTOQUE.WSimilar.FieldByName('CONTRINT').AsString;
       FrmProdDiv.EdDescricao.Text:=DMESTOQUE.WSimilar.FieldByName('DESCRICAO').AsString;
   	FrmProdDiv.Repaint;
   End;
end;

procedure TFConfigLoja.CBClassificacaoClick(Sender: TObject);
begin
  inherited;
  If CBClassificacao.Checked=True AND CBClassificacao2.Checked=False
  Then Begin
    CBETFabricante.Checked:=False;
  End
  Else Begin
    CBETFabricante.Checked:=True;
  end;
end;

procedure TFConfigLoja.CBETFabricanteClick(Sender: TObject);
begin
  inherited;
  If CBETFabricante.Checked=True AND CBClassificacao2.Checked=False
  Then Begin
    CBClassificacao.Checked:=False;
  End
  Else Begin
    CBClassificacao.Checked:=True;
  end;
end;

procedure TFConfigLoja.CBImpMatricialClick(Sender: TObject);
begin
  inherited;
	If CBImpMatricial.Checked=True
   Then Begin
       PConfigImpMat.Visible:=True;
       PConfigImpMat.BringToFront;
       DBComboImpMat.SetFocus;
   End
   Else Begin
       PConfigImpMat.Visible:=False;
   End;
end;

procedure TFConfigLoja.RGTipoDuplicataClick(Sender: TObject);
begin
  inherited;
	If (RGTipoDuplicata.ItemIndex=1) And (PageControl1.ActivePageIndex=4)
   Then Begin
       PDupPersonal.Visible:=True;
       PDupPersonal.BringToFront;
       DBTipoDuplicata.SetFocus;
   End
   Else Begin
       PDupPersonal.Visible:=False;
   End;
end;

procedure TFConfigLoja.BitBtn11Click(Sender: TObject);
begin
  inherited;
  If RGTipoDuplicata.ItemIndex=1 then
    AbrirForm(TFConfigDup, FConfigDup, 0);
end;

procedure TFConfigLoja.BitBtn12Click(Sender: TObject);
begin
  inherited;
   AbrirForm(TFConfCheque, FConfCheque, 0);
end;

procedure TFConfigLoja.BitBtn13Click(Sender: TObject);
begin
  inherited;
   //FILTRA EMPRESA PARA IMPRIMIR CABEÇALHO
   If FiltraTabela(DMMACS.TEmpresa, 'EMPRESA', 'COD_EMPRESA', FMenu.LCODEMPRESA.Caption, '')=False Then
   	Exit;

   //FILTRA ORCAMENTO PARA IMPRESSÃO COM O ULTIMO ORCAMENTO
   DMSAIDA.TAlx.Close;
   DMSAIDA.TAlx.SQL.Clear;
   DMSAIDA.TAlx.SQL.Add('select max(orcamento.cod_orcamento) as cod_orcamento from orcamento');
   DMSAIDA.TAlx.Open;

   If (DMSAIDA.TAlx.FieldByName('cod_orcamento').AsInteger = 0)
   Then Begin
       Mensagem('   A T E N Ç Ã O   ','Não orçamentos cadastrados.', '',1,1,false,'I');
       Exit;
   End;

   DMSAIDA.TOrc.Close;
   DMSAIDA.TOrc.SQL.Clear;
   DMSAIDA.TOrc.SQL.Add('SELECT * FROM ORCAMENTO WHERE ORCAMENTO.COD_ORCAMENTO = :CODIGO');
   DMSAIDA.TOrc.ParamByName('CODIGO').AsInteger := DMSAIDA.TAlx.FieldByname('cod_orcamento').AsInteger;
   DMSAIDA.TOrc.Open;

   //FILTRA CLIENTE PARA ENCONTRAR PESSOA
   If FiltraTabela(DMPESSOA.TCliente, 'CLIENTE', 'COD_CLIENTE', DMSAIDA.TOrc.FieldByNAme('COD_CLIENTE').AsString, '')=False
   Then Begin
       Mensagem('   A T E N Ç Ã O   ','O último orçamento utilizado para este exemplo não possui cliente. Por favor, verifique o pedido numero ' + DMSAIDA.TOrc.fieldbyname('numorc').AsString + '.', '',1,1,false,'I');
		Exit;
   End;

   //FILTRA PESSOA PARA IMPRESSÃO DE CLIENTE
   If FiltraTabela(DMPESSOA.TPessoa, 'PESSOA', 'COD_PESSOA', DMPESSOA.TCliente.FieldByNAme('COD_PESSOA').AsString, '')=False Then
   	Exit;

   //FILTRA CIDADE DO CLIENTE
   FiltraTabela(DMGEOGRAFIA.TCidade, 'CIDADE', 'COD_CIDADE', DMPESSOA.TPessoa.FieldByNAme('COD_CIDADE').AsString, '');

   //FILTRA TELEFONE PARA IMPRESSÃO DE CLIENTE
   FiltraTabela(DMPESSOA.TALX, 'TELEFONE', 'COD_PESSOA', DMPESSOA.TPessoa.FieldByNAme('COD_PESSOA').AsString, '');

   //FILTRA VENDEDOR
   FiltraTabela(DMPESSOA.VWFuncionario, 'VWFUNCIONARIO', 'COD_FUNC', DMSAIDA.TOrc.FieldByNAme('cod_vendedor').AsString, '');

   //FILTRA FORMA DE PAGAMENTO
   If FiltraTabela(DMFINANC.TFormPag, 'FORMPAG', 'cod_formpag', DMSAIDA.TOrc.FieldByNAme('cod_formpag').AsString, '')=False
   Then Begin
       Mensagem('   A T E N Ç Ã O   ','O último orçamento utilizado para este exemplo não possui forma de pagamento. Por favor, verifique o pedido numero ' + DMESTOQUE.Alx1.fieldbyname('numped').AsString + '.', '',1,1,false,'I');
		Exit;
   End;

   // sql para selecionar o nome do funcionario
   DMPESSOA.TALX1.Close;
   DMPESSOA.TALX1.SQL.Clear;
   DMPESSOA.TALX1.SQL.Add('select * from funcionario');
   DMPESSOA.TALX1.SQL.Add('left join pessoa on funcionario.cod_pessoa = pessoa.cod_pessoa');
   DMPESSOA.TALX1.SQL.Add('where funcionario.cod_func = :codigo');
   DMPESSOA.TALX1.ParamByName('codigo').AsInteger := DMPESSOA.VWFuncionario.FieldByname('cod_func').AsInteger;
   DMPESSOA.TALX1.Open;

   XCodPedido:=DMSAIDA.WOrc.fieldbyname('COD_ORCAMENTO').AsString;

   // seleciona dados do pedido de venda para exibir no relatorio
   FiltraDados;

   // verifica o modelo informado e se nao existir eh exibida a seguinte mensagem
   If (DMMACS.TLoja.FieldByName('MODELOORC').AsInteger <= 0) or (DMMACS.TLoja.FieldByName('MODELOORC').AsInteger > 6)
   Then Begin
       Mensagem('   A T E N Ç Ã O   ','Estão disponíveis somente Modelos de Orçamento do número 1 ao 6.','',1,1,false,'A');
       Exit;
   End;

   If DMMACS.TLoja.FieldByName('MODELOORC').AsInteger=0 Then
       Mensagem('INFORMAÇÃO AO USUÁRIO', 'Configure o modelo de orçamento em loja!', '', 1, 1, False, 'a');
   If DMMACS.TLoja.FieldByName('MODELOORC').AsInteger=1 Then
		FSRel.LoadFromFile('C:\MZR\MACS\Rel\FrfOrcamento.frf');
   If DMMACS.TLoja.FieldByName('MODELOORC').AsInteger=2 Then
		FSRel.LoadFromFile('C:\MZR\MACS\Rel\FrfOrcamento02.frf');
   If DMMACS.TLoja.FieldByName('MODELOORC').AsInteger=3 Then
		FSRel.LoadFromFile('C:\MZR\MACS\Rel\FrfOrcamento03.frf');
   If DMMACS.TLoja.FieldByName('MODELOORC').AsInteger=4 Then
		FSRel.LoadFromFile('C:\MZR\MACS\Rel\FrfOrcamento04.frf');
   If DMMACS.TLoja.FieldByName('MODELOORC').AsInteger=5 Then
		FSRel.LoadFromFile('C:\MZR\MACS\Rel\FrfOrcamento05.frf');
   If DMMACS.TLoja.FieldByName('MODELOORC').AsInteger=6 Then
		FSRel.LoadFromFile('C:\MZR\MACS\Rel\FrfOrcamento06.frf');

	FSRel.ShowReport;
end;

// seleciona dados do pedido de venda para exibir no relatorio
Procedure TFConfigLoja.FiltraDados;
begin
	//TRABALHA COM PRODUTOS DA ORDEM
   //CALCULA TOTAL
	DMESTOQUE.TSlave.Close;
	DMESTOQUE.TSlave.SQL.Clear;
	DMESTOQUE.TSlave.SQL.Add('Select Sum(ITPRODORC.VLRTOTAL) as TOTAL From ITPRODORC');
	DMESTOQUE.TSlave.SQL.Add('Where ITPRODORC.COD_ORCAMENTO = :CODORDEM ');
	DMESTOQUE.TSlave.ParamByName('CODORDEM').AsString:=XCodPedido;
	DMESTOQUE.TSlave.Open;

  	//INSERE COMANDOS PARA FILTRAR
	DMESTOQUE.TSlave.Close;
	DMESTOQUE.TSlave.SQL.Clear;
	DMESTOQUE.TSlave.SQL.Add('Select itprodorC.cod_itprodorC, unidade.sigla_unid AS UNIDADE, itprodorC.cod_orcamento, itprodorc.cod_estoque,  itprodorc.qtd, itprodorc.vlrtotal AS TOTAL, ');
	DMESTOQUE.TSlave.SQL.Add('itprodorc.desconto, itprodorc.vlrunit, subproduto.descricao, subproduto.marca, SubProduto.CODPRODFABR, ');
   DMESTOQUE.TSlave.sql.Add(' subproduto.'+DMMACS.TLoja.FieldByName('CODPRODREL1').AsString+' AS PRIMCOD, subproduto.'+DMMACS.TLoja.FieldByName('CODPRODREL2').AsString+' AS SEGCOD ');
	DMESTOQUE.TSlave.SQL.Add('From itprodorc left Join estoque on estoque.cod_estoque = itprodorc.cod_estoque ');
	DMESTOQUE.TSlave.SQL.Add('Left Join subproduto on  estoque.cod_subprod = subproduto.cod_subproduto ');
	DMESTOQUE.TSlave.SQL.Add('left join unidade on subproduto.cod_unidvenda = unidade.cod_unidade ');
	DMESTOQUE.TSlave.SQL.Add('Where itprodorc.cod_orcamento = :CODORDEM ');
	DMESTOQUE.TSlave.ParamByName('CODORDEM').AsString:=XCodPedido;
	DMESTOQUE.TSlave.Open;
	//TRABALHA COM SERVIÇOS DA ORDEM
   //CALCULA TOTAL
	DMESTOQUE.TSlaveServ.Close;
	DMESTOQUE.TSlaveServ.SQL.Clear;
	DMESTOQUE.TSlaveServ.SQL.Add('Select Sum(ITSERVORC.VLRTOTAL) as TOTAL From ITSERVORC');
	DMESTOQUE.TSlaveServ.SQL.Add('Where ITSERVORC.COD_ORCAMENTO = :CODORDEM ');
	DMESTOQUE.TSlaveServ.ParamByName('CODORDEM').AsString:=XCodPedido;
	DMESTOQUE.TSlaveServ.Open;

  	//INSERE COMANDOS PARA FILTRAR
	DMESTOQUE.TSlaveServ.Close;
	DMESTOQUE.TSlaveServ.SQL.Clear;
	DMESTOQUE.TSlaveServ.SQL.Add('select itservorc.cod_itservorc, itservorc.cod_orcamento, itservorc.cod_servico, ');
	DMESTOQUE.TSlaveServ.SQL.Add('itservorc.desconto, itservorc.qtd, itservorc.vlrtotal AS TOTAL, itservorc.vlrunit, ');
	DMESTOQUE.TSlaveServ.SQL.Add('subservico.descricao, Unidade.desc_unid as UNIDADE ');
	DMESTOQUE.TSlaveServ.SQL.Add('from itservorc left join subservico ON itservorc.cod_servico = subservico.cod_subservico ');
	DMESTOQUE.TSlaveServ.SQL.Add('left join unidade ON subservico.cod_unidade=unidade.cod_unidade ');
	DMESTOQUE.TSlaveServ.SQL.Add('Where itservorc.cod_orcamento = :CODORDEM ');
	DMESTOQUE.TSlaveServ.ParamByName('CODORDEM').AsString:=XCodPedido;
	DMESTOQUE.TSlaveServ.Open;

   //TRABALHANDO COM DESPESAS
   //CALCULA TOTAL
   DMESTOQUE.Alx2.Close;
   DMESTOQUE.Alx2.SQL.Clear;
   DMESTOQUE.Alx2.SQL.Add('select Sum(despadic.vlrtotfin) AS TOT From despadic Where (despadic.gerador='+#39+'ORCAMENTO'+#39+') AND (despadic.cod_gerador=:COD_GERADOR)');
	DMESTOQUE.Alx2.ParamByName('COD_GERADOR').AsString:=XCodPedido;
	DMESTOQUE.Alx2.Open;

   //FILTRA DESPESAS
   DMESTOQUE.TDesp.Close;
   DMESTOQUE.TDesp.SQL.Clear;
   DMESTOQUE.TDesp.SQL.Add('select * From despadic Where (despadic.gerador='+#39+'ORCAMENTO'+#39+') AND (despadic.cod_gerador=:COD_GERADOR)');
	DMESTOQUE.TDesp.ParamByName('COD_GERADOR').AsString:=XCodPedido;
	DMESTOQUE.TDesp.Open;
end;

procedure TFConfigLoja.Abertura1Click(Sender: TObject);
begin
  inherited;
   //FILTRA EMPRESA PARA IMPRIMIR CABEÇALHO
   If FiltraTabela(DMMACS.TEmpresa, 'EMPRESA', 'COD_EMPRESA', FMenu.LCODEMPRESA.Caption, '')=False Then
   	Exit;

   // SELECIONA A ULTIMA ORDEM DE SERVIÇO QUE ESTEJA ABERTO
   DMServ.Alx.Close;
   DMServ.Alx.SQL.Clear;
   DMServ.Alx.SQL.Add('select max(ordem.cod_ordem) as cod_ordem from ordem where ordem.status = ' + #39 + 'ABERTO' + #39);
   DMServ.Alx.Open;

   If (DMServ.Alx.IsEmpty) or (DMServ.Alx.FieldByName('cod_ordem').AsInteger = 0)
   Then Begin
       Mensagem('   A T E N Ç Ã O   ','Não há ordem de serviço cadastrado.', '',1,1,false,'I');
       Exit;
   End;

   // SELECIONA TODOS OS DADOS DA TABELA ORDEM QUE TENHA O MESMO CODIGO
   DMServ.WOrdem.Close;
   DMServ.WOrdem.SQL.Clear;
   DMServ.WOrdem.SQL.Add('SELECT * FROM VWORDEM WHERE VWORDEM.COD_ORDEM = :CODIGO');
   DMServ.WOrdem.ParamByName('CODIGO').AsInteger := DMServ.Alx.FieldByname('cod_ordem').AsInteger;
   DMServ.WOrdem.Open;

   //FILTRA CLIENTE PARA ENCONTRAR PESSOA
   If FiltraTabela(DMPESSOA.TCliente, 'CLIENTE', 'COD_CLIENTE', DMSERV.WOrdem.FieldByNAme('COD_CLIENTE').AsString, '')=False Then
		Exit;

   //FILTRA PESSOA PARA IMPRESSÃO DE CLIENTE
   If FiltraTabela(DMPESSOA.TPessoa, 'PESSOA', 'COD_PESSOA', DMPESSOA.TCliente.FieldByNAme('COD_PESSOA').AsString, '')=False Then
   	Exit;

   //FILTRA CIDADE DO CLIENTE
   FiltraTabela(DMGEOGRAFIA.TCidade, 'CIDADE', 'COD_CIDADE', DMPESSOA.TPessoa.FieldByNAme('COD_CIDADE').AsString, '');

   //FILTRA TELEFONE PARA IMPRESSÃO DE CLIENTE
   FiltraTabela(DMPESSOA.TALX, 'TELEFONE', 'COD_PESSOA', DMPESSOA.TPessoa.FieldByNAme('COD_PESSOA').AsString, '');

   //FILTRA EQUIPAMENTO PARA IMPRESSÃO
   If FiltraTabela(DMPESSOA.TEquip, 'EQUIPAMENTO', 'COD_EQUIPAMENTO', DMSERV.WOrdem.FieldByNAme('COD_EQUIPAMENTO').AsString, '')=False Then
		Exit;

   // FILTRA DESPESAS
   FiltraTabela(DMESTOQUE.TDesp,'DESPADIC','COD_GERADOR',DMServ.Alx.FieldByname('cod_ordem').AsString,'');

   // SELECIONA EQUIPE RESPONSAVEL PELO SERVIÇO
   FiltraTabela(DMESTOQUE.TSlaveServ,'EQUIPE','COD_EQUIPE',DMESTOQUE.TDesp.FieldByName('cod_equipe').AsString,'');

   //FILTRA FORMA DE PAGAMENTO
   FiltraTabela(DMServ.TOrd,'ORDEM','COD_ORDEM',DMServ.Alx.FieldByname('cod_ordem').AsString,'');
   FiltraTabela(DMFINANC.TFormPag , 'FORMPAG', 'COD_FORMPAG', DMServ.TOrd.FieldByNAme('COD_FORMPAG').AsString, '');

   //FILTRA FUNCIONARIO RESPONSAVEL
   FiltraTabela(DMPESSOA.VWFuncionario, 'VWFUNCIONARIO', 'COD_FUNC', IntToStr(DMSERV.WOrdem.FieldByNAme('COD_FUNCIONARIO').AsInteger) , '');

   XCOD_ORDEM:=DMSERV.WOrdem.fieldbyname('COD_ORDEM').AsInteger;

   // filtra dados da tabela ordem de serviço
   FiltraOrdem;

   // se a atividade for EQUIPE, eh selecionado as despesas
   If (DMMACS.TLoja.FieldByName('ATIVIDADE').AsString = 'EQUIPE') and (DMMACS.TLoja.FieldByName('MODELOORDEM').AsString='6')
   Then Begin
       DMESTOQUE.Alx4.Close;
       DMESTOQUE.Alx4.SQL.Clear;
       DMESTOQUE.Alx4.SQL.Add('select despadic.cod_gerador, despadic.despesa, equipe.cod_equipe, equipe.descricao from despadic');
       DMESTOQUE.Alx4.SQL.Add('left join equipe on despadic.cod_equipe = equipe.cod_equipe');
       DMESTOQUE.Alx4.SQL.Add('where despadic.cod_gerador = :codigo');
       DMESTOQUE.Alx4.ParamByName('codigo').AsInteger := XCOD_ORDEM;
       DMESTOQUE.Alx4.Open;
   End;

   // verifica o modelo informado e se nao existir eh exibida a seguinte mensagem
   If (DMMACS.TLoja.FieldByName('MODELOORDEM').AsInteger < 0) or (DMMACS.TLoja.FieldByName('MODELOORDEM').AsInteger > 8)
   Then Begin
       Mensagem('   A T E N Ç Ã O   ','Estão disponíveis somente Modelos de Ordem de Serviço do número 1 ao 8.','',1,1,false,'A');
       Exit;
   End;

   If DMMacs.TLoja.FieldByName('IMPMATRICIAL').AsString<>'1'
   Then Begin
   	//EFETUA CONTROLE PARA VERIFICAR QUAL COMPROVANTE DEVE SER IMPRESSO
   	If DMMACS.TLoja.FieldByName('MODELOORDEM').AsString='1' Then
			FSRel.LoadFromFile('C:\MZR\MACS\Rel\FrfAbertOrdem.frf');
   	If DMMACS.TLoja.FieldByName('MODELOORDEM').AsString='2' Then
			FSRel.LoadFromFile('C:\MZR\MACS\Rel\FrfAbertOrdem2.frf');
   	If DMMACS.TLoja.FieldByName('MODELOORDEM').AsString='3' Then
			FSRel.LoadFromFile('C:\MZR\MACS\Rel\FrfAbertOrdem3.frf');
   	If DMMACS.TLoja.FieldByName('MODELOORDEM').AsString='4' Then
			FSRel.LoadFromFile('C:\MZR\MACS\Rel\FrfAbertOrdem4.frf');
   	If DMMACS.TLoja.FieldByName('MODELOORDEM').AsString='5' Then
			FSRel.LoadFromFile('C:\MZR\MACS\Rel\FrfAbertOrdem5.frf');
   	If DMMACS.TLoja.FieldByName('MODELOORDEM').AsString='6' Then
			FSRel.LoadFromFile('C:\MZR\MACS\Rel\FrfAbertOrdem6.frf');
   	If DMMACS.TLoja.FieldByName('MODELOORDEM').AsString='7' Then
           FSRel.LoadFromFile('C:\MZR\MACS\Rel\FrfAbertOrdem7.frf');
   	If DMMACS.TLoja.FieldByName('MODELOORDEM').AsString='8' Then
           FSRel.LoadFromFile('C:\MZR\MACS\Rel\FrfAbertOrdem8.frf');

       // utilizado pela guinchomaq
   	If DMMACS.TLoja.FieldByName('MODELOORDEM').AsString='8'
       Then Begin
           // total financeiro das horas e kilometragem
           DMServ.TAlx1.Close;
           DMServ.TAlx1.SQL.Clear;
           DMServ.TAlx1.SQL.Add('select sum(itens_locacao.valortothrs) AS TOTAL_SERV, sum(itens_locacao.valortotkm) as TOTAL_KM');
           DMServ.TAlx1.SQL.Add('from itens_locacao where itens_locacao.cod_ordem = :codigo');
           DMServ.TAlx1.ParamByName('codigo').AsInteger := XCOD_ORDEM;
           DMServ.TAlx1.Open;

           // total dos ajudantes
           DMServ.TAlx2.Close;
           DMServ.TAlx2.SQL.Clear;
           DMServ.TAlx2.SQL.Add('select sum(ajudante.VALORTOTHRS) as TOTAL_AJUD');
           DMServ.TAlx2.SQL.Add('from ajudante where ajudante.cod_ordem = :codigo');
           DMServ.TAlx2.ParamByName('codigo').AsInteger := XCOD_ORDEM;
           DMServ.TAlx2.Open;

           FSDSRel.DataSet := DMServ.TOrd;

			FSRel.LoadFromFile('C:\MZR\MACS\Rel\FrfAbertOrdem8.frf');
       End;


   End
   Else Begin
       Mensagem('   A T E N Ç Ã O   ', 'O teste de relatório de Ordem de Serviço é apenas para impressoras diferente da matricial.','',1,1,false,'I');
       Exit;
   End;
  	FSRel.ShowReport;

end;

// filtra dados da tabela ordem de serviço
Procedure TFConfigLoja.FiltraOrdem;
begin
	//TRABALHA COM PRODUTOS DA ORDEM
   //CALCULA TOTAL
	DMESTOQUE.TSlave.Close;
	DMESTOQUE.TSlave.SQL.Clear;
	DMESTOQUE.TSlave.SQL.Add('Select Sum(ITPRODORD.total) as TOTAL From ITPRODORD');
	DMESTOQUE.TSlave.SQL.Add('Where ITPRODORD.COD_ORDEM = :CODORDEM ');
	DMESTOQUE.TSlave.ParamByName('CODORDEM').AsInteger:=XCOD_ORDEM;
	DMESTOQUE.TSlave.Open;

  	//INSERE COMANDOS PARA FILTRAR
	DMESTOQUE.TSlave.Close;
	DMESTOQUE.TSlave.SQL.Clear;
	DMESTOQUE.TSlave.SQL.Add('Select itprodord.cod_itprodord, unidade.sigla_unid as UNIDADE, itprodord.cod_ordem, itprodord.cod_estoque,  itprodord.numreq, itprodord.qtd, itprodord.qtdRET, itprodord.total, ');
	DMESTOQUE.TSlave.SQL.Add('itprodord.desconto, itprodord.data, itprodord.cod_funcionario, pessoa.nome, itprodord.vlrunit, subproduto.descricao, subproduto.marca, SubProduto.CODPRODFABR, ');
   DMESTOQUE.TSlave.sql.Add(' subproduto.'+DMMACS.TLoja.FieldByName('CODPRODREL1').AsString+' AS PRIMCOD, subproduto.'+DMMACS.TLoja.FieldByName('CODPRODREL2').AsString+' AS SEGCOD ');
	DMESTOQUE.TSlave.SQL.Add('From itprodord left Join estoque on itprodord.cod_estoque = estoque.cod_estoque ');
	DMESTOQUE.TSlave.SQL.Add('Left Join subproduto on subproduto.cod_subproduto = estoque.cod_subprod ');
	DMESTOQUE.TSlave.SQL.Add('Left Join unidade on subproduto.cod_unidvenda = unidade.cod_unidade ');
	DMESTOQUE.TSlave.SQL.Add('Left Join funcionario on funcionario.cod_func = itprodord.cod_funcionario ');
	DMESTOQUE.TSlave.SQL.Add('Left Join pessoa on funcionario.cod_pessoa = pessoa.COD_PESSOA ');
	DMESTOQUE.TSlave.SQL.Add('Where itprodord.cod_ordem = :CODORDEM ');
	DMESTOQUE.TSlave.ParamByName('CODORDEM').AsInteger:=XCOD_ORDEM;
	DMESTOQUE.TSlave.Open;

	//TRABALHA COM SERVIÇOS DA ORDEM
   //CALCULA TOTAL
	DMESTOQUE.TSlaveServ.Close;
	DMESTOQUE.TSlaveServ.SQL.Clear;
	DMESTOQUE.TSlaveServ.SQL.Add('Select Sum(ITSERVORD.total) as TOTAL From ITSERVORD');
	DMESTOQUE.TSlaveServ.SQL.Add('Where ITSERVORD.COD_ORDEM = :CODORDEM ');
	DMESTOQUE.TSlaveServ.ParamByName('CODORDEM').AsInteger:=XCOD_ORDEM;
	DMESTOQUE.TSlaveServ.Open;

  	//INSERE COMANDOS PARA FILTRAR
	DMESTOQUE.TSlaveServ.Close;
	DMESTOQUE.TSlaveServ.SQL.Clear;
	DMESTOQUE.TSlaveServ.SQL.Add('select itservord.cod_itservord, itservord.obs, itservord.tamanho, itservord.obs, itservord.tamanho, itservord.cod_ordem, itservord.cod_servico, ');
	DMESTOQUE.TSlaveServ.SQL.Add('itservord.desconto, itservord.qtd, itservord.Data, itservord.total, itservord.vlrunit, ');
	DMESTOQUE.TSlaveServ.SQL.Add('subservico.descricao,  Unidade.desc_unid as UNIDADE ');
	DMESTOQUE.TSlaveServ.SQL.Add('from itservord left join subservico ON itservord.cod_servico = subservico.cod_subservico ');
	DMESTOQUE.TSlaveServ.SQL.Add(' left join unidade ON subservico.cod_unidade=unidade.cod_unidade ');
	DMESTOQUE.TSlaveServ.SQL.Add('Where itservord.cod_ordem = :CODORDEM ');
	DMESTOQUE.TSlaveServ.ParamByName('CODORDEM').AsInteger:=XCOD_ORDEM;
	DMESTOQUE.TSlaveServ.Open;

   //TRABALHANDO COM DESPESAS
   //CALCULA TOTAL
   DMESTOQUE.Alx2.Close;
   DMESTOQUE.Alx2.SQL.Clear;
   DMESTOQUE.Alx2.SQL.Add('select Sum(despadic.vlrtotfin) AS TOT From despadic Where (despadic.gerador='+#39+'ORDEM'+#39+') AND (despadic.cod_gerador=:COD_GERADOR)');
	DMESTOQUE.Alx2.ParamByName('COD_GERADOR').AsInteger:=XCOD_ORDEM;
	DMESTOQUE.Alx2.Open;

   //FILTRA DESPESAS
   DMESTOQUE.TDesp.Close;
   DMESTOQUE.TDesp.SQL.Clear;
   DMESTOQUE.TDesp.SQL.Add('select * From despadic Where (despadic.gerador='+#39+'ORDEM'+#39+') AND (despadic.cod_gerador=:COD_GERADOR)');
	DMESTOQUE.TDesp.ParamByName('COD_GERADOR').AsInteger:=XCOD_ORDEM;
	DMESTOQUE.TDesp.Open;

end;

procedure TFConfigLoja.Fechamento1Click(Sender: TObject);
begin
  inherited;
   //FILTRA EMPRESA PARA IMPRIMIR CABEÇALHO
   If FiltraTabela(DMMACS.TEmpresa, 'EMPRESA', 'COD_EMPRESA', FMenu.LCODEMPRESA.Caption, '')=False Then
   	Exit;

   // SELECIONA A ULTIMA ORDEM DE SERVIÇO QUE ESTEJA ABERTO
   DMServ.Alx.Close;
   DMServ.Alx.SQL.Clear;
   DMServ.Alx.SQL.Add('select max(ordem.cod_ordem) as cod_ordem from ordem where ordem.status = ' + #39 + 'ABERTO' + #39);
   DMServ.Alx.Open;

   If (DMServ.Alx.IsEmpty) or (DMServ.Alx.FieldByName('cod_ordem').AsInteger = 0)
   Then Begin
       Mensagem('   A T E N Ç Ã O   ','Não há ordem de serviço cadastrado.', '',1,1,false,'I');
       Exit;
   End;     

   // SELECIONA TODOS OS DADOS DA TABELA ORDEM QUE TENHA O MESMO CODIGO
   DMServ.WOrdem.Close;
   DMServ.WOrdem.SQL.Clear;
   DMServ.WOrdem.SQL.Add('SELECT * FROM VWORDEM WHERE VWORDEM.COD_ORDEM = :CODIGO');
   DMServ.WOrdem.ParamByName('CODIGO').AsInteger := DMServ.Alx.FieldByname('cod_ordem').AsInteger;
   DMServ.WOrdem.Open;

   //FILTRA CLIENTE PARA ENCONTRAR PESSOA
   If FiltraTabela(DMPESSOA.TCliente, 'CLIENTE', 'COD_CLIENTE', DMSERV.WOrdem.FieldByNAme('COD_CLIENTE').AsString, '')=False Then
		Exit;

   //FILTRA PESSOA PARA IMPRESSÃO DE CLIENTE
   If FiltraTabela(DMPESSOA.TPessoa, 'PESSOA', 'COD_PESSOA', DMPESSOA.TCliente.FieldByNAme('COD_PESSOA').AsString, '')=False Then
   	Exit;

   //FILTRA CIDADE DO CLIENTE
   FiltraTabela(DMGEOGRAFIA.TCidade, 'CIDADE', 'COD_CIDADE', DMPESSOA.TPessoa.FieldByNAme('COD_CIDADE').AsString, '');

   //FILTRA TELEFONE PARA IMPRESSÃO DE CLIENTE
   FiltraTabela(DMPESSOA.TALX, 'TELEFONE', 'COD_PESSOA', DMPESSOA.TPessoa.FieldByNAme('COD_PESSOA').AsString, '');

   //FILTRA EQUIPAMENTO PARA IMPRESSÃO
   If FiltraTabela(DMPESSOA.TEquip, 'EQUIPAMENTO', 'COD_EQUIPAMENTO', DMSERV.WOrdem.FieldByNAme('COD_EQUIPAMENTO').AsString, '')=False Then
		Exit;

   //FILTRA FORMA DE PAGAMENTO
   FiltraTabela(DMFINANC.TFormPag , 'FORMPAG', 'COD_FORMPAG', DMSERV.TOrd.FieldByNAme('COD_FORMPAG').AsString, '');

   //FILTRA FUNCIONARIO RESPONSAVEL
   FiltraTabela(DMPESSOA.VWFuncionario, 'VWFUNCIONARIO', 'COD_FUNC', IntToStr(DMSERV.WOrdem.FieldByNAme('COD_FUNCIONARIO').AsInteger) , '');

   XCOD_ORDEM:=DMSERV.WOrdem.fieldbyname('COD_ORDEM').AsInteger;

   // filtra dados da tabela ordem de serviço
   FiltraOrdem;

   // verifica o modelo informado e se nao existir eh exibida a seguinte mensagem
   If (DMMACS.TLoja.FieldByName('MODELOORDEMFECH').AsInteger < 0) or (DMMACS.TLoja.FieldByName('MODELOORDEMFECH').AsInteger > 5)
   Then Begin
       Mensagem('   A T E N Ç Ã O   ','Estão disponíveis somente Modelos de Ordem de Serviço do número 1 ao 5.','',1,1,false,'A');
       Exit;
   End;

   If DMMacs.TLoja.FieldByName('IMPMATRICIAL').AsString<>'1'
   Then Begin
   	If DMMACS.TLoja.FieldByName('MODELOORDEMFECH').AsString='1' Then
			FSRel.LoadFromFile('C:\MZR\MACS\Rel\FrfFechOrdem.frf');
   	If DMMACS.TLoja.FieldByName('MODELOORDEMFECH').AsString='2' Then
			FSRel.LoadFromFile('C:\\MACS\Rel\FrfFechOrdem.frf');
   	If DMMACS.TLoja.FieldByName('MODELOORDEMFECH').AsString='3' Then
			FSRel.LoadFromFile('C:\MZR\MACS\Rel\FrfFechOrdem3.frf');
   	If DMMACS.TLoja.FieldByName('MODELOORDEMFECH').AsString='4' Then
			FSRel.LoadFromFile('C:\MZR\MACS\Rel\FrfAbertOrdem4.frf');
       If DMMACS.TLoja.FieldByName('MODELOORDEMFECH').AsString='5'
       Then Begin
           // cria formulario de ordem apenas para usar a procedure abaixo
           AbrirForm(TFOrdem, FOrdem, 3);

           // busca todos os dados pra relatorio da guinchomaq
           FOrdem.Rel_Quilomatragem;

           FSRel.LoadFromFile('C:\MZR\MACS\Rel\FrfFechOrdem5.frf');

           // DEFININDO OS DATASET's
           FSDSDesp.DataSet := DMServ.Alx;
           FSDSRel.DataSet := DMServ.TAlx1;
           FSDSServ.DataSet := DMPESSOA.TALX;
       End;
           
   End
   Else Begin
       Mensagem('   A T E N Ç Ã O   ', 'O teste de relatório de Ordem de Serviço é apenas para impressoras diferente da matricial.','',1,1,false,'I');
       Exit;
   End;

	FSRel.ShowReport;

end;

procedure TFConfigLoja.BitBtn15Click(Sender: TObject);
begin
  inherited;

   FiltraTabela(DMMACS.TLoja,'LOJA','COD_LOJA',FMenu.LCODLOJA.Caption,'');

   // selecionando o ultimo pedido de venda
   DMSAIDA.TAlx.Close;
   DMSAIDA.TAlx.SQL.Clear;
   DMSAIDA.TAlx.SQL.Add('select max(pedvenda.cod_pedvenda) as cod_pedvenda from pedvenda');
   DMSAIDA.TAlx.Open;

   // se existir algum pedido de venda entra na condição
   If DMSAIDA.TAlx.FieldByName('cod_pedvenda').AsString <> ''
   Then Begin
       DMMACS.TMP.Close;
       DMMACS.TMP.SQL.Clear;
       DMMACS.TMP.SQL.Add('Select * from tmp');
       DMMACS.TMP.Open;


       DMEstoque.Alx.Close;
       DMEstoque.Alx.SQL.Clear;
       DMEstoque.Alx.SQL.Add(' SELECT pessoa.cod_pessoa, pedvenda.numped, pedvenda.cobranca, PEDVENDA.VLRFRETE, pedvenda.nomecli, cliente.endentraga, Cliente.Atacadista as atacadista, pessoa.telrel,  pessoa.BAIRRO, PESSOA.CEP, pedvenda.cpfcnpj, ');
       DMEstoque.Alx.SQL.Add('  pedvenda.obs, pessoa.endnumero, pessoa.endereco, ');
       DMEstoque.Alx.SQL.Add('pessoa.endnumero, ');
       DMEstoque.Alx.SQL.Add('cidade.nome, pedvenda.dtpedven, funcionario.cod_interno, funcionario.cod_func, FormPag.Descricao, PedVenda.Desconto AS DESCONTO, PedVenda.Descmoe, PedVenda.Valor, PESSOAJ.INSC_EST ');
       DMEstoque.Alx.SQL.Add('FROM pedvenda Left join cliente ON pedvenda.cod_cliente = cliente.cod_cliente ');
       DMEstoque.Alx.SQL.Add('Left join pessoa on cliente.cod_pessoa = pessoa.cod_pessoa ');
       DMEstoque.Alx.SQL.Add('Left join funcionario ON pedvenda.cod_vendedor = funcionario.cod_func ');
       DMEstoque.Alx.SQL.Add('join FormPag ON FormPag.cod_FormPag = PedVenda.Cod_FormPag ');
       DMEstoque.Alx.SQL.Add('left join cidade ON pessoa.cod_cidade = cidade.cod_cidade ');
       DMEstoque.Alx.SQL.Add('left join telefone ON telefone.cod_pessoa = pessoa.cod_pessoa ');
       DMEstoque.Alx.SQL.Add('left join pessoaj on pessoa.cod_pessoa = pessoaj.cod_pessoa');
       DMEstoque.Alx.SQL.Add('Where pedvenda.cod_pedvenda=:CODPED');
       DMEstoque.Alx.ParamByName('CODPED').AsInteger:=DMSAIDA.TAlx.FieldByName('cod_pedvenda').AsInteger;
       DMEstoque.Alx.Open;

       //Seleciona dados de pessoa juridica
       DMPESSOA.TPessoaJ.Close;
       DMPESSOA.TPessoaJ.SQL.Clear;
       DMPESSOA.TPessoaJ.SQL.Add(' Select * from pessoaj ');
       DMPESSOA.TPessoaJ.SQL.Add(' Where pessoaj.cod_pessoa=:CODFUNC ');
       DMPESSOA.TPessoaJ.ParamByName('CODFUNC').AsInteger:=DMEstoque.Alx.FieldByName('cod_pessoa').AsInteger;
       DMPESSOA.TPessoaJ.Open;

       DMEstoque.Alx1.Close;
       DMEstoque.Alx1.SQL.Clear;
       DMEstoque.Alx1.SQL.Add(' Select * from vwfuncionario ');
       DMEstoque.Alx1.SQL.Add(' Where vwfuncionario.cod_func=:CODFUNC ');
       DMEstoque.Alx1.ParamByName('CODFUNC').AsInteger:=DMEstoque.Alx.FieldByName('cod_func').AsInteger;
       DMEstoque.Alx1.Open;

       //insere sql necessária para filtrar itens do pedido de venda
       DMESTOQUE.TSlave.close;
       DMESTOQUE.TSlave.sql.clear;
       DMESTOQUE.TSlave.sql.Add('SELECT itenspedven.operacao AS OPER, subproduto.'+DMMACS.TLoja.FieldByName('CODPRODREL1').AsString+' AS PRIMCOD, subproduto.'+DMMACS.TLoja.FieldByName('CODPRODREL2').AsString+' AS SEGCOD, ');
       DMESTOQUE.TSlave.sql.Add('itenspedven.qtdeprod, subproduto.pesoliq, subproduto.pesobruto, LOTE.LOTE, lote.vencimento, unidade.sigla_unid, ');
       DMESTOQUE.TSlave.sql.Add('subproduto.descricao, subproduto.marca, subproduto.CONTRINT, itenspedven.valunit, itenspedven.descpro, itenspedven.valortotal, itenspedven.DATA,itenspedven.qtdemb, itenspedven.unidemb, itenspedven.qtdnaemb');

       DMESTOQUE.TSlave.sql.Add(', tmp.desc1');

       DMESTOQUE.TSlave.sql.Add('FROM itenspedven join estoque on itenspedven.cod_estoque = estoque.cod_estoque ');
       DMESTOQUE.TSlave.sql.Add('join subproduto on estoque.cod_subprod = subproduto.cod_subproduto ');
       DMESTOQUE.TSlave.sql.Add('LEFT Join LOTE on itenspedven.cod_lote = LOTE.COD_LOTE ');
       DMESTOQUE.TSlave.sql.Add('join produto on subproduto.cod_produto = produto.cod_produto ');
       DMESTOQUE.TSlave.sql.Add('LEFT Join unidade on SubProduto.cod_unidVenda = unidade.cod_unidade ');

       DMESTOQUE.TSlave.sql.Add('LEFT Join tmp on itenspedven.COD_ITENSPEDVEN = tmp.int1');

       DMESTOQUE.TSlave.sql.Add('Where (itenspedven.cod_pedven = :CODPED) '+{and (Itenspedven.OPERACAO<>'+#39+'DVL'+#39+')}' ORDER BY Subproduto.Descricao, itenspedven.DATA');
       DMESTOQUE.TSlave.ParamByName('CODPED').AsInteger:=DMSAIDA.TAlx.FieldByName('cod_pedvenda').AsInteger;
       DMESTOQUE.TSlave.Open;

       //FILTRA DESPESAS
       DMESTOQUE.TDesp.Close;
       DMESTOQUE.TDesp.SQL.Clear;
       DMESTOQUE.TDesp.SQL.Add('select * From despadic Where (despadic.gerador='+#39+'PEDVENDA'+#39+') AND (despadic.cod_gerador=:COD_GERADOR)');
       DMESTOQUE.TDesp.ParamByName('COD_GERADOR').AsInteger:=DMSAIDA.TAlx.FieldByName('cod_pedvenda').AsInteger;
       DMESTOQUE.TDesp.Open;

   End;

   // verifica o numero informado pelo usuario e alerta caso não houver a opção informada
   If (DMMACS.TLoja.FieldByName('MODELOPEDVENDA').AsInteger < 1) and (DMMACS.TLoja.FieldByName('MODELOPEDVENDA').AsInteger > 4)
   Then Begin
       Mensagem('   A T E N Ç Ã O   ','Estão disponíveis somente Modelos de Pedido de Venda do número 1 ao 4.','',1,1,false,'A');
       Exit;
   End;

   DMMACS.TLoja.Edit;
   DMMACS.TLoja.FieldByName('tmp1').AsString := '';
   DMMACS.TLoja.Post;

   If DMMACS.TLoja.FieldByName('MODELOPEDVENDA').AsString = '1' Then
       FSRel.LoadFromFile('C:\MZR\MACS\Rel\FrfCompVend.frf');
   If DMMACS.TLoja.FieldByName('MODELOPEDVENDA').AsString = '2' Then
       FSRel.LoadFromFile('C:\MZR\MACS\Rel\FrfCompVend 01.frf');
   If DMMACS.TLoja.FieldByName('MODELOPEDVENDA').AsString = '3' Then
       FSRel.LoadFromFile('C:\MZR\MACS\Rel\FrfCompVend02.frf');
   If DMMACS.TLoja.FieldByName('MODELOPEDVENDA').AsString = '4' Then
       FSRel.LoadFromFile('C:\MZR\MACS\Rel\FrfCompVend 05.frf');
   If DMMACS.TLoja.FieldByName('MODELOPEDVENDA').AsString = '5' Then
        FSRel.LoadFromFile('C:\MZR\MACS\Rel\FrfCompVend 06.frf');
   If DMMACS.TLoja.FieldByName('MODELOPEDVENDA').AsString = '6' Then
  		FSRel.LoadFromFile('C:\MZR\MACS\Rel\FrfCompVend 07.frf');


   FSRel.ShowReport;
   
end;

procedure TFConfigLoja.DBModeloImpExit(Sender: TObject);
begin
  inherited;
   If DBModeloImp.Text = '6'
   Then Begin
       DBMemo5.Visible := true;
       DBMemo5.BringToFront;
       LTitulo.Visible := true;
       LTitulo.BringToFront;
   End
   Else Begin
       DBMemo5.Visible := false;
       DBMemo5.SendToBack;
       LTitulo.Visible := false;
       LTitulo.SendToBack;
   End;
end;

procedure TFConfigLoja.DBCBATIVIDADEClick(Sender: TObject);
begin
  inherited;
   // movendo a posição da label e do edit para que no local seja exibido um radiogroup informando o local do banco de dados para exprtar OS
   If  DBCBATIVIDADE.Text = 'EQUIPE'
   Then Begin
       DBTIMEMENS.Top := 207;
       CBCTRLMENS.Top := 181;
       GBCaminhoBanco.Visible := TRUE;
   End
   Else Begin
       DBTIMEMENS.Top := 130;
       CBCTRLMENS.Top := 108;
       GBCaminhoBanco.Visible := FALSE;
   End;
end;

procedure TFConfigLoja.BitBtn16Click(Sender: TObject);
begin
  inherited;
	if OpD.Execute then
  	begin
   	DMMACS.TLoja.Edit;
    	DMMACS.TLoja.FieldByName('EXPORT_OS').AsString:=OPD.FileName;
       DBEXPORT_OS.Text :=OPD.FileName;
  	end;

end;

procedure TFConfigLoja.EDModPedvendaExit(Sender: TObject);
begin
  inherited;
   DMMACS.TLoja.Edit;
   DMMACS.TLoja.FieldByName('MODELOPEDVENDA').AsString := EDModPedvenda.Text;
   DMMACS.TLoja.Post;

end;

procedure TFConfigLoja.FrmBusca2BTNOPENClick(Sender: TObject);
begin
  inherited;
	If AbrirForm(TFCADCFOP, FCADCFOP, 1)='Selected'
   Then Begin
       XCODCFOP_INTEREST := DMESTOQUE.TCFOP.FieldByName('COD_CFOP').AsInteger;
       FrmCFOPExterno.EDCodigo.Text:=DMESTOQUE.TCFOP.FieldByName('CFOP').AsString;
       FrmCFOPExterno.EdDescricao.Text:=DMESTOQUE.TCFOP.FieldByName('DESCRICAO').AsString;
   End;
   FrmCFOPExterno.Repaint;
end;

procedure TFConfigLoja.FrmAliqIntBTNMINUSClick(Sender: TObject);
begin
  inherited;
   FrmCFOPExterno.EDCodigo.Text:= '';
   FrmCFOPExterno.EdDescricao.Text:= '';
   XCODCFOP_INTEREST := 0;
end;

procedure TFConfigLoja.FrmAliqInternaBTNOPENClick(Sender: TObject);
begin
  inherited;
	If AbrirForm(TFCADCFOP, FCADCFOP, 1)='Selected'
   Then Begin
       XCODCFOP_INTERNO := DMESTOQUE.TCFOP.FieldByName('COD_CFOP').AsInteger;
       FrmCFOPInterno.EDCodigo.Text:=DMESTOQUE.TCFOP.FieldByName('CFOP').AsString;
       FrmCFOPInterno.EdDescricao.Text:=DMESTOQUE.TCFOP.FieldByName('DESCRICAO').AsString;
   End;
   FrmCFOPInterno.Repaint;
end;

procedure TFConfigLoja.FrmAliqInternaBTNMINUSClick(Sender: TObject);
begin
  inherited;
   FrmCFOPInterno.EDCodigo.Text:= '';
   FrmCFOPInterno.EdDescricao.Text:= '';
   XCODCFOP_INTERNO:= 0;
end;

procedure TFConfigLoja.FrmAliqIntEDCodigoKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
   If Key = #13
   Then Begin
       FrmAliqIntEDCodigoExit(Sender);
   End;
end;

procedure TFConfigLoja.FrmAliqIntEDCodigoExit(Sender: TObject);
begin
  inherited;
   If FrmCFOPExterno.EDCodigo.Text <> ''
   Then Begin
       FiltraTabela(DMESTOQUE.TCFOP,'CFOP','CFOP',FrmCFOPExterno.EDCodigo.Text,'');

       If DMESTOQUE.TCFOP.IsEmpty
       Then Begin
           FrmCFOPExterno.EdDescricao.Text := '';
           XCODCFOP_INTEREST := 0;
       End
       Else Begin
           FrmCFOPExterno.EdDescricao.Text := DMESTOQUE.TCFOP.FieldByName('DESCRICAO').AsString;
           XCODCFOP_INTEREST := DMESTOQUE.TCFOP.FieldByName('COD_CFOP').AsInteger;
       End;
   End;
end;

procedure TFConfigLoja.FrmAliqInternaEDCodigoKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
   If Key = #13
   Then Begin
       FrmAliqInternaEDCodigoExit(Sender);
   End;


end;

procedure TFConfigLoja.FrmAliqInternaEDCodigoExit(Sender: TObject);
begin
  inherited;
    FiltraTabela(DMESTOQUE.TCFOP,'CFOP','CFOP',FrmCFOPInterno.EDCodigo.Text,'');

    If DMESTOQUE.TCFOP.IsEmpty
    Then Begin
       FrmCFOPInterno.EdDescricao.Text := '';
       XCODCFOP_INTERNO := 0;
    End
    Else Begin
       FrmCFOPInterno.EdDescricao.Text := DMESTOQUE.TCFOP.FieldByName('DESCRICAO').AsString;
       XCODCFOP_INTERNO := DMESTOQUE.TCFOP.FieldByName('COD_CFOP').AsInteger;
    End;
end;

procedure TFConfigLoja.PageControl1Change(Sender: TObject);
begin
  inherited;
    FiltraTabela(DMMACS.TLoja, 'LOJA', 'COD_LOJA', DMMACS.TLoja.FieldByName('COD_LOJA').AsString, '');
end;

procedure TFConfigLoja.BitBtn17Click(Sender: TObject);
begin
  inherited;
  	If FiltraTabela(DMENTRADA.WPedc, 'vwpedc', '', '', '')=True
   Then Begin
       //insere sql necessária para filtrar pedido de venda e valores necessários
       DMEstoque.Alx.Close;
       DMEstoque.Alx.SQL.Clear;
       DMEstoque.Alx.SQL.Add('SELECT pedcompra.cod_pedcomp, pedcompra.numped, pedcompra.cobranca, pessoa.nome, pessoa.cpfcnpj, pessoa.endereco, pessoa.endnumero, ');
       DMEstoque.Alx.SQL.Add('cidade.nome, pedcompra.dtpedcomp, pedcompra.OBS, FormPag.Descricao, pedcompra.Desconto AS DESCONTO, pedcompra.Descmoe, pedcompra.valor ');
       DMEstoque.Alx.SQL.Add('FROM pedcompra Left join fornecedor ON pedcompra.cod_fornec = fornecedor.cod_fornec ');
       DMEstoque.Alx.SQL.Add('Left join pessoa on fornecedor.cod_pessoa = pessoa.cod_pessoa ');
       DMEstoque.Alx.SQL.Add('join FormPag ON FormPag.cod_FormPag = pedcompra.Cod_FormPag ');
       DMEstoque.Alx.SQL.Add('left join cidade ON pessoa.cod_cidade = cidade.cod_cidade ');
       DMEstoque.Alx.SQL.Add('Where pedcompra.cod_pedcomp=:CODPED');
       DMESTOQUE.Alx.ParamByName('CODPED').AsInteger:=DMENTRADA.WPedc.FieldByName('cod_pedcomp').AsInteger;
       DMEstoque.Alx.Open;

       //insere sql necessária para filtrar inetns do pedido de venda
       DMESTOQUE.TSlave.close;
       DMESTOQUE.TSlave.sql.clear;
       DMESTOQUE.TSlave.sql.Add('SELECT subproduto.'+DMMACS.TLoja.FieldByName('CODPRODREL1').AsString+' AS PRIMCOD, subproduto.'+DMMACS.TLoja.FieldByName('CODPRODREL2').AsString+' AS SEGCOD, ');
       DMESTOQUE.TSlave.sql.Add(' itenspedc.qtdeprod,  itenspedc.obs, unidade.sigla_unid, unidade.cod_unidade, subproduto.cod_unidvenda, itenspedc.qtdeexp, ');
       DMESTOQUE.TSlave.sql.Add('subproduto.descricao, subproduto.marca, itenspedc.valunit, itenspedc.descpro, itenspedc.valortotal ');
       DMESTOQUE.TSlave.sql.Add('FROM itenspedc join estoque on itenspedc.cod_estoque = estoque.cod_estoque ');
       DMESTOQUE.TSlave.sql.Add('left join subproduto on estoque.cod_subprod = subproduto.cod_subproduto ');
       If DMMACS.TLoja.FieldByName('CONVERTUNID').AsString<>'1'
       then begin
            DMESTOQUE.TSlave.sql.Add('LEFT Join unidade on subproduto.cod_unidvenda = unidade.cod_unidade');
       end
       else begin
            DMESTOQUE.TSlave.sql.Add('LEFT Join unidade on itenspedc.cod_unidade = unidade.cod_unidade ');
       end;
        // - 17/02/2009:    retirado por fazer duas vezes left join com unidade (estava dando problemas na mercescan)
       //DMESTOQUE.TSlave.sql.Add('LEFT Join unidade on itenspedc.cod_unidade = unidade.cod_unidade ');
       DMESTOQUE.TSlave.sql.Add('Where itenspedC.cod_pedcompra = :CODPED');
       DMESTOQUE.TSlave.ParamByName('CODPED').AsInteger:=DMEstoque.Alx.FieldByName('cod_pedcomp').AsInteger;
       DMESTOQUE.TSlave.Open;

       //insere sql necessária para filtrar parcelas da conta
       DMMacs.TALX.Close;
       DMMacs.TALX.sql.Clear;
       DMMacs.TALX.SQL.Add('SELECT parcelacp.dtvenc, parcelacp.cobranca, parcelacp.valor FROM parcelacp left join ctapagar on ctapagar.cod_ctapagar = parcelacp.cod_ctapagar ');
       DMMacs.TALX.SQL.Add(' Where (ctapagar.tipogerador='+#39+'PEDCOMPRA'+#39+') And (ctapagar.cod_gerador=:CODGERADOR) ');
       DMMacs.TALX.ParamByName('CODGERADOR').AsInteger:=DMEstoque.Alx.FieldByName('cod_pedcomp').AsInteger;
       DMMacs.TALX.Open;

       //verifica se a tabela para pedido não esta vazia
       If DMEstoque.Alx.IsEmpty
       Then Begin
           Mensagem('NOTIFICAÇÃO AO USUÁRIO', 'O pedido que tentou imprimir encontra-se com falta de informações. Altere o pedido e preencha com as informações pendentes!', '', 1, 1, False, 'a');
           Exit;
       End;
       //verifica se a tabela para items não esta vazia
       If DMESTOQUE.TSlave.IsEmpty
       Then Begin
           Mensagem('NOTIFICAÇÃO AO USUÁRIO', 'O pedido que tentou imprimir encontra-se sem items!', '', 1, 1, False, 'a');
           Exit;
       End;

       If DBEdit25.Text='1' Then
       	FSRel.LoadFromFile('C:\MZR\MACS\Rel\FrfCompComp.frf')
       Else
       	FSRel.LoadFromFile('C:\MZR\MACS\Rel\FrfCompComp02.frf');

       FSRel.ShowReport;
   End
   Else Begin
		MessageDlg('Sem pedido de compra para testar a visualização', mtWarning, [mbOK], 0);
   End;
end;

procedure TFConfigLoja.FrmSTExternoBTNOPENClick(Sender: TObject);
begin
  inherited;
  FrmSTExterno.BTNOPENClick(Sender);
	If AbrirForm(TFCADCFOP, FCADCFOP, 1)='Selected'
   Then Begin
       XCODSTEXTERNO := DMESTOQUE.TCFOP.FieldByName('COD_CFOP').AsInteger;
       FrmSTExterno.EDCodigo.Text:=DMESTOQUE.TCFOP.FieldByName('CFOP').AsString;
       FrmSTExterno.EdDescricao.Text:=DMESTOQUE.TCFOP.FieldByName('DESCRICAO').AsString;
   End;
   FrmSTExterno.Repaint;

end;

procedure TFConfigLoja.FrmSTInternoBTNOPENClick(Sender: TObject);
begin
  inherited;
  FrmSTInterno.BTNOPENClick(Sender);
	If AbrirForm(TFCADCFOP, FCADCFOP, 1)='Selected'
   Then Begin
       XCODSTINTERNO := DMESTOQUE.TCFOP.FieldByName('COD_CFOP').AsInteger;
       FrmSTInterno.EDCodigo.Text:=DMESTOQUE.TCFOP.FieldByName('CFOP').AsString;
       FrmSTInterno.EdDescricao.Text:=DMESTOQUE.TCFOP.FieldByName('DESCRICAO').AsString;
   End;
   FrmSTInterno.Repaint;

end;

procedure TFConfigLoja.FrmSTExternoEDCodigoExit(Sender: TObject);
begin
  inherited;
   If FrmSTExterno.EDCodigo.Text <> ''
   Then Begin
       FiltraTabela(DMESTOQUE.TCFOP,'CFOP','CFOP',FrmSTExterno.EDCodigo.Text,'');
       If DMESTOQUE.TCFOP.IsEmpty
       Then Begin
           FrmSTExterno.EdDescricao.Text := '';
       End
       Else Begin
       	XCODSTEXTERNO := DMESTOQUE.TCFOP.FieldByName('COD_CFOP').AsInteger;
           FrmSTExterno.EdDescricao.Text := DMESTOQUE.TCFOP.FieldByName('DESCRICAO').AsString;
       End;
   End;
end;

procedure TFConfigLoja.FrmSTInternoEDCodigoExit(Sender: TObject);
begin
  inherited;
   If FrmSTInterno.EDCodigo.Text <> ''
   Then Begin
       FiltraTabela(DMESTOQUE.TCFOP,'CFOP','CFOP',FrmSTInterno.EDCodigo.Text,'');

       If DMESTOQUE.TCFOP.IsEmpty
       Then Begin
           FrmSTInterno.EdDescricao.Text := '';
       End
       Else Begin
       	XCODSTINTERNO := DMESTOQUE.TCFOP.FieldByName('COD_CFOP').AsInteger;
           FrmSTInterno.EdDescricao.Text := DMESTOQUE.TCFOP.FieldByName('DESCRICAO').AsString;
       End;
   End;
end;
//click botao de certificado
procedure TFConfigLoja.BitBtn19Click(Sender: TObject);
begin
  inherited;
     FMzrNfe := TFMzrNfe.Create(FMzrNfe);
     //FNFe.FormActivate(FNFe);
     DMMACS.TLoja.Edit;
     DMMACS.TLoja.FieldByName('nfecertificacao').AsString:=FMzrNfe.NfeNomeCertificado(true);
     DMMACS.TLoja.Post;
     FMzrNfe := nil;
end;

procedure TFConfigLoja.CBConverUnitVendaClick(Sender: TObject);
begin
  inherited;
    if CBConverUnitVenda.Checked
    then begin
        CBConverUnitEmb.Checked := False;
    end;
end;

procedure TFConfigLoja.CBConverUnitEmbClick(Sender: TObject);
begin
  inherited;
    if CBConverUnitEmb.Checked
    then begin
        CBConverUnitVenda.Checked := False;
    end;
end;

procedure TFConfigLoja.FrmCFOFInternoIndustriaEDCodigoKeyPress(
  Sender: TObject; var Key: Char);
begin
  inherited;
  If Key = #13
   Then Begin
       FiltraTabela(DMESTOQUE.TCFOP,'CFOP','CFOP',FrmCFOFInternoIndustria.EDCodigo.Text,'');

       If DMESTOQUE.TCFOP.IsEmpty
       Then Begin
           FrmCFOFInternoIndustria.EdDescricao.Text := '';
           XCODSTINTERNOIND := 0;
       End
       Else Begin
           FrmCFOFInternoIndustria.EdDescricao.Text := DMESTOQUE.TCFOP.FieldByName('DESCRICAO').AsString;
           XCODSTINTERNOIND := DMESTOQUE.TCFOP.FieldByName('COD_CFOP').AsInteger;

       End;
   End;

end;

procedure TFConfigLoja.FrmCFOFInternoIndustriaEDCodigoExit(
  Sender: TObject);
begin
  inherited;
  FiltraTabela(DMESTOQUE.TCFOP,'CFOP','CFOP',FrmCFOFInternoIndustria.EDCodigo.Text,'');

       If DMESTOQUE.TCFOP.IsEmpty
       Then Begin
           FrmCFOFInternoIndustria.EdDescricao.Text := '';
           XCODSTINTERNOIND := 0;
       End
       Else Begin
           FrmCFOFInternoIndustria.EdDescricao.Text := DMESTOQUE.TCFOP.FieldByName('DESCRICAO').AsString;
           XCODSTINTERNOIND := DMESTOQUE.TCFOP.FieldByName('COD_CFOP').AsInteger;

       End;
end;

procedure TFConfigLoja.FrmSTExternoEDCodigoKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  If Key = #13
  Then Begin   
       FrmSTExternoEDCodigoExit(Sender);
  End;

end;

procedure TFConfigLoja.FrmSTInternoEDCodigoKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  If Key = #13
  Then Begin
     FrmSTInternoEDCodigoExit(Sender);
  End;
end;

procedure TFConfigLoja.FrmCFOFExternoIndustriaEDCodigoKeyPress(
  Sender: TObject; var Key: Char);
begin
  inherited;
  If Key = #13
   Then Begin
       FrmCFOFExternoIndustriaEDCodigoExit(Sender);
   End;
end;

procedure TFConfigLoja.FrmCFOFExternoIndustriaEDCodigoExit(
  Sender: TObject);
begin
  inherited;
  FiltraTabela(DMESTOQUE.TCFOP,'CFOP','CFOP',FrmCFOFExternoIndustria.EDCodigo.Text,'');

       If DMESTOQUE.TCFOP.IsEmpty
       Then Begin
           FrmCFOFExternoIndustria.EdDescricao.Text := '';
           XCODSTEXTERNOIND := 0;
       End
       Else Begin
           FrmCFOFExternoIndustria.EdDescricao.Text := DMESTOQUE.TCFOP.FieldByName('DESCRICAO').AsString;
           XCODSTEXTERNOIND := DMESTOQUE.TCFOP.FieldByName('COD_CFOP').AsInteger;

       End;
end;

procedure TFConfigLoja.FrmCFOFInternoIndustriaBTNOPENClick(
  Sender: TObject);
begin
  inherited;
  If AbrirForm(TFCADCFOP, FCADCFOP, 1)='Selected'
   Then Begin
       XCODSTINTERNOIND := DMESTOQUE.TCFOP.FieldByName('COD_CFOP').AsInteger;
       FrmCFOFInternoIndustria.EDCodigo.Text:=DMESTOQUE.TCFOP.FieldByName('CFOP').AsString;
       FrmCFOFInternoIndustria.EdDescricao.Text:=DMESTOQUE.TCFOP.FieldByName('DESCRICAO').AsString;
   End;
   FrmCFOFInternoIndustria.Repaint;

end;

procedure TFConfigLoja.FrmCFOFExternoIndustriaBTNOPENClick(
  Sender: TObject);
begin
  inherited;
  If AbrirForm(TFCADCFOP, FCADCFOP, 1)='Selected'
   Then Begin
       XCODSTEXTERNOIND := DMESTOQUE.TCFOP.FieldByName('COD_CFOP').AsInteger;
       FrmCFOFExternoIndustria.EDCodigo.Text:=DMESTOQUE.TCFOP.FieldByName('CFOP').AsString;
       FrmCFOFExternoIndustria.EdDescricao.Text:=DMESTOQUE.TCFOP.FieldByName('DESCRICAO').AsString;
   End;
   FrmCFOFExternoIndustria.Repaint;  
end;

procedure TFConfigLoja.FrmCFOFInternoIndustriaBTNMINUSClick(
  Sender: TObject);
begin
  inherited;
  FrmCFOFInternoIndustria.EDCodigo.Text:= '';
   FrmCFOFInternoIndustria.EdDescricao.Text:= '';
   XCODSTINTERNOIND:= 0;

end;

procedure TFConfigLoja.FrmCFOFExternoIndustriaBTNMINUSClick(
  Sender: TObject);
begin
  inherited;
  FrmCFOFExternoIndustria.EDCodigo.Text:= '';
   FrmCFOFExternoIndustria.EdDescricao.Text:= '';
   XCODSTEXTERNO:= 0;
end;

procedure TFConfigLoja.CBPadDocMecClick(Sender: TObject);
begin
  inherited;
	If CBPadDocMec.Checked=True Then
       DBEPadDocMec.Enabled:=True
   Else
       DBEPadDocMec.Enabled:=False;
end;

procedure TFConfigLoja.FrmBusca1BTNOPENClick(Sender: TObject);
begin
  inherited;
  If AbrirForm(TFCADCFOP, FCADCFOP, 1)='Selected'
   Then Begin
       XCODCFOPINTSERV := DMESTOQUE.TCFOP.FieldByName('COD_CFOP').AsInteger;
       FrmCfopIntServ.EDCodigo.Text:=DMESTOQUE.TCFOP.FieldByName('CFOP').AsString;
       FrmCfopIntServ.EdDescricao.Text:=DMESTOQUE.TCFOP.FieldByName('DESCRICAO').AsString;
   End;
   FrmCfopIntServ.Repaint;
end;

procedure TFConfigLoja.FrmCfopIntServEDCodigoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  	If Key=VK_RETURN
   Then Begin
  		FiltraTabela(DMESTOQUE.TCFOP,'CFOP','CFOP',FrmCfopIntServ.EDCodigo.Text,'');
       If DMESTOQUE.TCFOP.IsEmpty
       Then Begin
           FrmCfopIntServ.EdDescricao.Text := '';
           XCODCFOPINTSERV := -1;
       End
       Else Begin
           FrmCfopIntServ.EdDescricao.Text := DMESTOQUE.TCFOP.FieldByName('DESCRICAO').AsString;
           XCODCFOPINTSERV := DMESTOQUE.TCFOP.FieldByName('COD_CFOP').AsInteger;
       End;
   End;
end;

procedure TFConfigLoja.FrmCfopIntServBTNMINUSClick(Sender: TObject);
begin
  inherited;
   XCODCFOPINTSERV:=-1;
   FrmCfopIntServ.EdDescricao.Text:='';
   FrmCfopIntServ.EDCodigo.Text:='';
end;

procedure TFConfigLoja.FrmCfopExtServBTNOPENClick(Sender: TObject);
begin
  inherited;
  If AbrirForm(TFCADCFOP, FCADCFOP, 1)='Selected'
   Then Begin
       XCODCFOPEXTSERV := DMESTOQUE.TCFOP.FieldByName('COD_CFOP').AsInteger;
       FrmCfopExtServ.EDCodigo.Text:=DMESTOQUE.TCFOP.FieldByName('CFOP').AsString;
       FrmCfopExtServ.EdDescricao.Text:=DMESTOQUE.TCFOP.FieldByName('DESCRICAO').AsString;
   End;
   FrmCfopExtServ.Repaint;
end;

procedure TFConfigLoja.FrmCfopExtServBTNMINUSClick(Sender: TObject);
begin
  inherited;
    XCODCFOPEXTSERV := -1;
    FrmCfopExtServ.EDCodigo.Text:= '';
    FrmCfopExtServ.EdDescricao.Text:= '';
end;

procedure TFConfigLoja.FrmCfopExtServEDCodigoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  	If Key=VK_RETURN
   Then Begin
  		FiltraTabela(DMESTOQUE.TCFOP,'CFOP','CFOP',FrmCFOPExterno.EDCodigo.Text,'');
       If DMESTOQUE.TCFOP.IsEmpty
       Then Begin
           FrmCfopExtServ.EdDescricao.Text := '';
           XCODCFOPEXTSERV := -1;
       End
       Else Begin
           FrmCfopExtServ.EdDescricao.Text := DMESTOQUE.TCFOP.FieldByName('DESCRICAO').AsString;
           XCODCFOPEXTSERV := DMESTOQUE.TCFOP.FieldByName('COD_CFOP').AsInteger;
       End;
   End;
end;

procedure TFConfigLoja.FrmCFOPInternoBTNOPENClick(Sender: TObject);
begin
  inherited;
	If AbrirForm(TFCADCFOP, FCADCFOP, 1)='Selected'
   Then Begin
       XCODCFOP_INTERNO := DMESTOQUE.TCFOP.FieldByName('COD_CFOP').AsInteger;
       FrmCFOPInterno.EDCodigo.Text:=DMESTOQUE.TCFOP.FieldByName('CFOP').AsString;
       FrmCFOPInterno.EdDescricao.Text:=DMESTOQUE.TCFOP.FieldByName('DESCRICAO').AsString;
   End;
   FrmCFOPInterno.Repaint;

end;

procedure TFConfigLoja.FrmCfopIntServBTNOPENClick(Sender: TObject);
begin
  inherited;
  If AbrirForm(TFCADCFOP, FCADCFOP, 1)='Selected'
   Then Begin
       XCODCFOPINTSERV := DMESTOQUE.TCFOP.FieldByName('COD_CFOP').AsInteger;
       FrmCfopIntServ.EDCodigo.Text:=DMESTOQUE.TCFOP.FieldByName('CFOP').AsString;
       FrmCfopIntServ.EdDescricao.Text:=DMESTOQUE.TCFOP.FieldByName('DESCRICAO').AsString;
   End;
   FrmCfopIntServ.Repaint;
end;

procedure TFConfigLoja.FrmCFOPInternoEDCodigoExit(Sender: TObject);
begin
  inherited;
    FiltraTabela(DMESTOQUE.TCFOP,'CFOP','CFOP',FrmCFOPInterno.EDCodigo.Text,'');

    If DMESTOQUE.TCFOP.IsEmpty
    Then Begin
       FrmCFOPInterno.EdDescricao.Text := '';
       XCODCFOP_INTERNO := 0;
    End
    Else Begin
       FrmCFOPInterno.EdDescricao.Text := DMESTOQUE.TCFOP.FieldByName('DESCRICAO').AsString;
       XCODCFOP_INTERNO := DMESTOQUE.TCFOP.FieldByName('COD_CFOP').AsInteger;
    End;
end;

procedure TFConfigLoja.FrmCFOPExternoBTNOPENClick(Sender: TObject);
begin
  inherited;
	If AbrirForm(TFCADCFOP, FCADCFOP, 1)='Selected'
   Then Begin
       XCODCFOP_INTEREST := DMESTOQUE.TCFOP.FieldByName('COD_CFOP').AsInteger;
       FrmCFOPExterno.EDCodigo.Text:=DMESTOQUE.TCFOP.FieldByName('CFOP').AsString;
       FrmCFOPExterno.EdDescricao.Text:=DMESTOQUE.TCFOP.FieldByName('DESCRICAO').AsString;
   End;
   FrmCFOPExterno.Repaint;
end;

procedure TFConfigLoja.FrmCFOPExternoEDCodigoExit(Sender: TObject);
begin
  inherited;
   If FrmCFOPExterno.EDCodigo.Text <> ''
   Then Begin
       FiltraTabela(DMESTOQUE.TCFOP,'CFOP','CFOP',FrmCFOPExterno.EDCodigo.Text,'');

       If DMESTOQUE.TCFOP.IsEmpty
       Then Begin
           FrmCFOPExterno.EdDescricao.Text := '';
           XCODCFOP_INTEREST := 0;
       End
       Else Begin
           FrmCFOPExterno.EdDescricao.Text := DMESTOQUE.TCFOP.FieldByName('DESCRICAO').AsString;
           XCODCFOP_INTEREST := DMESTOQUE.TCFOP.FieldByName('COD_CFOP').AsInteger;
       End;
   End;
end;

procedure TFConfigLoja.FrmCFOPInternoEDCodigoKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  	If Key = #13 Then
  		FrmCFOPInterno.EDCodigo.OnExit(sender);

end;

procedure TFConfigLoja.FrmCfopInternoPCBTNOPENClick(Sender: TObject);
begin
  inherited;
	If AbrirForm(TFCADCFOP, FCADCFOP, 1)='Selected'
   Then Begin
       XCODCFOPINTPC := DMESTOQUE.TCFOP.FieldByName('COD_CFOP').AsInteger;
       FrmCfopInternoPC.EDCodigo.Text:=DMESTOQUE.TCFOP.FieldByName('CFOP').AsString;
       FrmCfopInternoPC.EdDescricao.Text:=DMESTOQUE.TCFOP.FieldByName('DESCRICAO').AsString;
   End;
   FrmCfopInternoPC.Repaint;
end;

procedure TFConfigLoja.FrmCfopInternoPCEDCodigoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
   If Key=VK_Return
   Then Begin
       FiltraTabela(DMESTOQUE.TCFOP,'CFOP','CFOP',FrmCfopInternoPC.EDCodigo.Text,'');
       If DMESTOQUE.TCFOP.IsEmpty
       Then Begin
           XCODCFOPINTPC:=-1;
           FrmCfopInternoPC.EdDescricao.Text := '';
       End
       Else Begin
           XCODCFOPINTPC:=DMESTOQUE.TCFOP.FieldByName('COD_CFOP').AsInteger;
           FrmCfopInternoPC.EdDescricao.Text := DMESTOQUE.TCFOP.FieldByName('DESCRICAO').AsString;
       End;
   End;
end;

procedure TFConfigLoja.FrmCfopExternoPCBTNOPENClick(Sender: TObject);
begin
  inherited;
	If AbrirForm(TFCADCFOP, FCADCFOP, 1)='Selected'
   Then Begin
       XCODCFOPEXTPC := DMESTOQUE.TCFOP.FieldByName('COD_CFOP').AsInteger;
       FrmCfopExternoPC.EDCodigo.Text:=DMESTOQUE.TCFOP.FieldByName('CFOP').AsString;
       FrmCfopExternoPC.EdDescricao.Text:=DMESTOQUE.TCFOP.FieldByName('DESCRICAO').AsString;
   End;
   FrmCfopExternoPC.Repaint;
end;

procedure TFConfigLoja.FrmCfopExternoPCEDCodigoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
   If Key=VK_Return
   Then Begin
       FiltraTabela(DMESTOQUE.TCFOP,'CFOP','CFOP',FrmCfopExternoPC.EDCodigo.Text,'');
       If DMESTOQUE.TCFOP.IsEmpty
       Then Begin
           XCODCFOPEXTPC:=-1;
           FrmCfopExternoPC.EdDescricao.Text := '';
       End
       Else Begin
           XCODCFOPEXTPC:=DMESTOQUE.TCFOP.FieldByName('COD_CFOP').AsInteger;
           FrmCfopExternoPC.EdDescricao.Text := DMESTOQUE.TCFOP.FieldByName('DESCRICAO').AsString;
       End;
   End;
end;

procedure TFConfigLoja.FrmCfopInternoSTPCBTNOPENClick(Sender: TObject);
begin
  inherited;
	If AbrirForm(TFCADCFOP, FCADCFOP, 1)='Selected'
   Then Begin
       XCODCFOPINTSTPC := DMESTOQUE.TCFOP.FieldByName('COD_CFOP').AsInteger;
       FrmCfopInternoSTPC.EDCodigo.Text:=DMESTOQUE.TCFOP.FieldByName('CFOP').AsString;
       FrmCfopInternoSTPC.EdDescricao.Text:=DMESTOQUE.TCFOP.FieldByName('DESCRICAO').AsString;
   End;
   FrmCfopInternoSTPC.Repaint;
end;

procedure TFConfigLoja.FrmCfopExternoSTPCBTNOPENClick(Sender: TObject);
begin
  inherited;
	If AbrirForm(TFCADCFOP, FCADCFOP, 1)='Selected'
   Then Begin
       XCODCFOPEXTSTP := DMESTOQUE.TCFOP.FieldByName('COD_CFOP').AsInteger;
       FrmCfopExternoSTPC.EDCodigo.Text:=DMESTOQUE.TCFOP.FieldByName('CFOP').AsString;
       FrmCfopExternoSTPC.EdDescricao.Text:=DMESTOQUE.TCFOP.FieldByName('DESCRICAO').AsString;
   End;
   FrmCfopExternoSTPC.Repaint;
end;

procedure TFConfigLoja.FrmCfopExternoSTPCEDCodigoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
   If Key=VK_DOWN
   Then Begin
       FiltraTabela(DMESTOQUE.TCFOP,'CFOP','CFOP',FrmCfopExternoSTPC.EDCodigo.Text,'');
       If DMESTOQUE.TCFOP.IsEmpty
       Then Begin
           XCODCFOPEXTPC:=-1;
           FrmCfopExternoSTPC.EdDescricao.Text := '';
       End
       Else Begin
           XCODCFOPEXTSTP:=DMESTOQUE.TCFOP.FieldByName('COD_CFOP').AsInteger;
           FrmCfopExternoSTPC.EdDescricao.Text := DMESTOQUE.TCFOP.FieldByName('DESCRICAO').AsString;
       End;
   End;

end;

procedure TFConfigLoja.FrmCfopInternoSTPCEDCodigoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
   If Key=VK_DOWN
   Then Begin
       FiltraTabela(DMESTOQUE.TCFOP,'CFOP','CFOP',FrmCfopInternoSTPC.EDCodigo.Text,'');
       If DMESTOQUE.TCFOP.IsEmpty
       Then Begin
           XCODCFOPINTSTPC:=-1;
           FrmCfopInternoSTPC.EdDescricao.Text := '';
       End
       Else Begin
           XCODCFOPINTSTPC:=DMESTOQUE.TCFOP.FieldByName('COD_CFOP').AsInteger;
           FrmCfopInternoSTPC.EdDescricao.Text := DMESTOQUE.TCFOP.FieldByName('DESCRICAO').AsString;
       End;
   End;
end;

procedure TFConfigLoja.FrmCfopInternoSTPCEDCodigoKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
	If Key=#13 Then
       FrmCfopInternoSTPC.EDCodigo.OnExit(sender);
end;

procedure TFConfigLoja.FrmCfopExternoSTPCEDCodigoKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
	If Key=#13 Then
       FrmCfopExternoSTPC.EDCodigo.OnExit(sender);
end;

procedure TFConfigLoja.FrmCFOPExternoEDCodigoKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  	If Key=#13 Then
  		FrmCFOPExterno.EDCodigo.OnExit(sender);
end;

procedure TFConfigLoja.FrmIntCfopDevolucaoBTNOPENClick(Sender: TObject);
begin
  inherited;
  If AbrirForm(TFCADCFOP, FCADCFOP, 1)='Selected'
   Then Begin
       XCODCFOPINTDEVOLUCAO := DMESTOQUE.TCFOP.FieldByName('COD_CFOP').AsInteger;
       FrmIntCfopDevolucao.EDCodigo.Text:=DMESTOQUE.TCFOP.FieldByName('CFOP').AsString;
       FrmintCfopDevolucao.EdDescricao.Text:=DMESTOQUE.TCFOP.FieldByName('DESCRICAO').AsString;
   End;
   FrmintCfopDevolucao.Repaint;
end;

procedure TFConfigLoja.FrmExtCfopDevolucaoBTNOPENClick(Sender: TObject);
begin
  inherited;
  If AbrirForm(TFCADCFOP, FCADCFOP, 1)='Selected'
   Then Begin
       XCODCFOPEXTDEVOLUCAO := DMESTOQUE.TCFOP.FieldByName('COD_CFOP').AsInteger;
       FrmExtCfopDevolucao.EDCodigo.Text:=DMESTOQUE.TCFOP.FieldByName('CFOP').AsString;
       FrmExtCfopDevolucao.EdDescricao.Text:=DMESTOQUE.TCFOP.FieldByName('DESCRICAO').AsString;
   End;
   FrmExtCfopDevolucao.Repaint;
end;

procedure TFConfigLoja.FrmIntCfopGarantiaBTNOPENClick(Sender: TObject);
begin
  inherited;
  If AbrirForm(TFCADCFOP, FCADCFOP, 1)='Selected'
   Then Begin
       XCODCFOPINTGARANTIA := DMESTOQUE.TCFOP.FieldByName('COD_CFOP').AsInteger;
       FrmIntCfopGarantia.EDCodigo.Text:=DMESTOQUE.TCFOP.FieldByName('CFOP').AsString;
       FrmintCfopGarantia.EdDescricao.Text:=DMESTOQUE.TCFOP.FieldByName('DESCRICAO').AsString;
   End;
   FrmIntCfopGarantia.Repaint;
end;

procedure TFConfigLoja.FrmBusca3BTNOPENClick(Sender: TObject);
begin
  inherited;
  If AbrirForm(TFCADCFOP, FCADCFOP, 1)='Selected'
   Then Begin
       XCODCFOPINTDEVOLUCAOST := DMESTOQUE.TCFOP.FieldByName('COD_CFOP').AsInteger;
       FrmIntCfopDevolucaoST.EDCodigo.Text:=DMESTOQUE.TCFOP.FieldByName('CFOP').AsString;
       FrmintCfopDevolucaoST.EdDescricao.Text:=DMESTOQUE.TCFOP.FieldByName('DESCRICAO').AsString;
   End;
   FrmExtCfopDevolucaoST.Repaint;
end;

procedure TFConfigLoja.FrmExtCfopDevolucaoSTBTNOPENClick(Sender: TObject);
begin
  inherited;
  If AbrirForm(TFCADCFOP, FCADCFOP, 1)='Selected'
   Then Begin
       XCODCFOPEXTDEVOLUCAOST := DMESTOQUE.TCFOP.FieldByName('COD_CFOP').AsInteger;
       FrmExtCfopDevolucaoST.EDCodigo.Text:=DMESTOQUE.TCFOP.FieldByName('CFOP').AsString;
       FrmExtCfopDevolucaoST.EdDescricao.Text:=DMESTOQUE.TCFOP.FieldByName('DESCRICAO').AsString;
   End;
   FrmExtCfopDevolucaoST.Repaint;
end;

procedure TFConfigLoja.FrmExtCfopGarantiaBTNOPENClick(Sender: TObject);
begin
  inherited;
  If AbrirForm(TFCADCFOP, FCADCFOP, 1)='Selected'
   Then Begin
       XCODCFOPEXTGARANTIA := DMESTOQUE.TCFOP.FieldByName('COD_CFOP').AsInteger;
       FrmEXTCfopGarantia.EDCodigo.Text:=DMESTOQUE.TCFOP.FieldByName('CFOP').AsString;
       FrmEXTCfopGarantia.EdDescricao.Text:=DMESTOQUE.TCFOP.FieldByName('DESCRICAO').AsString;
   End;
   FrmExtCfopGarantia.Repaint;

end;

procedure TFConfigLoja.FrmCfopInternoPCEDCodigoKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  FrmCfopInternoPC.EDCodigoKeyPress(Sender, Key);

end;

procedure TFConfigLoja.FrmIntCfopDevolucaoEDCodigoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
	If Key=Vk_RETURN
   Then Begin
  		If FiltraTabela(DMESTOQUE.TCFOP,'CFOP','CFOP',FrmIntCfopDevolucao.EDCodigo.Text,'')
       Then Begin
       	XCODCFOPINTDEVOLUCAO := DMESTOQUE.TCFOP.FieldByName('COD_CFOP').AsInteger;
       	FrmIntCfopDevolucao.EDCodigo.Text:=DMESTOQUE.TCFOP.FieldByName('CFOP').AsString;
       	FrmintCfopDevolucao.EdDescricao.Text:=DMESTOQUE.TCFOP.FieldByName('DESCRICAO').AsString;
       End;
   End
end;

procedure TFConfigLoja.FrmIntCfopDevolucaoEDCodigoKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  FrmIntCfopDevolucao.EDCodigoKeyPress(Sender, Key);

end;

procedure TFConfigLoja.FrmExtCfopDevolucaoEDCodigoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
	If Key=Vk_RETURN
   Then Begin
  		If FiltraTabela(DMESTOQUE.TCFOP,'CFOP','CFOP',FrmExtCfopDevolucao.EDCodigo.Text,'')
       Then Begin
       	XCODCFOPEXTDEVOLUCAO := DMESTOQUE.TCFOP.FieldByName('COD_CFOP').AsInteger;
       	FrmExtCfopDevolucao.EDCodigo.Text:=DMESTOQUE.TCFOP.FieldByName('CFOP').AsString;
       	FrmExtCfopDevolucao.EdDescricao.Text:=DMESTOQUE.TCFOP.FieldByName('DESCRICAO').AsString;
       End;
   End
end;

procedure TFConfigLoja.FrmIntCfopDevolucaoSTEDCodigoKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
	If Key=Vk_RETURN
   Then Begin
  		If FiltraTabela(DMESTOQUE.TCFOP,'CFOP','CFOP',FrmIntCfopDevolucaoST.EDCodigo.Text,'')
       Then Begin
       	XCODCFOPINTDEVOLUCAOST := DMESTOQUE.TCFOP.FieldByName('COD_CFOP').AsInteger;
       	FrmIntCfopDevolucaoST.EDCodigo.Text:=DMESTOQUE.TCFOP.FieldByName('CFOP').AsString;
       	FrmIntCfopDevolucaoST.EdDescricao.Text:=DMESTOQUE.TCFOP.FieldByName('DESCRICAO').AsString;
       End;
   End
end;

procedure TFConfigLoja.FrmExtCfopDevolucaoSTEDCodigoKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
	If Key=Vk_RETURN
   Then Begin
  		If FiltraTabela(DMESTOQUE.TCFOP,'CFOP','CFOP',FrmExtCfopDevolucaoST.EDCodigo.Text,'')
       Then Begin
       	XCODCFOPEXTDEVOLUCAOST := DMESTOQUE.TCFOP.FieldByName('COD_CFOP').AsInteger;
       	FrmExtCfopDevolucaoST.EDCodigo.Text:=DMESTOQUE.TCFOP.FieldByName('CFOP').AsString;
       	FrmExtCfopDevolucaoST.EdDescricao.Text:=DMESTOQUE.TCFOP.FieldByName('DESCRICAO').AsString;
       End;
   End
end;

procedure TFConfigLoja.FrmIntCfopGarantiaEDCodigoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
	If Key=Vk_RETURN
   Then Begin
  		If FiltraTabela(DMESTOQUE.TCFOP,'CFOP','CFOP', FrmIntCfopGarantia.EDCodigo.Text,'')
       Then Begin
       	XCODCFOPINTGARANTIA := DMESTOQUE.TCFOP.FieldByName('COD_CFOP').AsInteger;
       	FrmIntCfopGarantia.EDCodigo.Text:=DMESTOQUE.TCFOP.FieldByName('CFOP').AsString;
       	FrmIntCfopGarantia.EdDescricao.Text:=DMESTOQUE.TCFOP.FieldByName('DESCRICAO').AsString;
       End;
   End ;
end;

procedure TFConfigLoja.FrmIntCfopGarantiaEDCodigoKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  FrmIntCfopGarantia.EDCodigoKeyPress(Sender, Key);

end;

procedure TFConfigLoja.FrmExtCfopGarantiaEDCodigoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
	If Key=Vk_RETURN
   Then Begin
  		If FiltraTabela(DMESTOQUE.TCFOP,'CFOP','CFOP', FrmExtCfopGarantia.EDCodigo.Text,'')
       Then Begin
       	XCODCFOPEXTGARANTIA := DMESTOQUE.TCFOP.FieldByName('COD_CFOP').AsInteger;
       	FrmExtCfopGarantia.EDCodigo.Text:=DMESTOQUE.TCFOP.FieldByName('CFOP').AsString;
       	FrmExtCfopGarantia.EdDescricao.Text:=DMESTOQUE.TCFOP.FieldByName('DESCRICAO').AsString;
       End;
   End
end;

procedure TFConfigLoja.FrmCFOFInternoIndustriaEDCodigoKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
	If Key=Vk_RETURN
   Then Begin
  		If FiltraTabela(DMESTOQUE.TCFOP,'CFOP','CFOP', FrmCFOFInternoIndustria.EDCodigo.Text,'')
       Then Begin
       	XCODSTINTERNOIND := DMESTOQUE.TCFOP.FieldByName('COD_CFOP').AsInteger;
       	FrmCFOFInternoIndustria.EDCodigo.Text:=DMESTOQUE.TCFOP.FieldByName('CFOP').AsString;
       	FrmCFOFInternoIndustria.EdDescricao.Text:=DMESTOQUE.TCFOP.FieldByName('DESCRICAO').AsString;
       End;
   End
end;

procedure TFConfigLoja.FrmCFOFExternoIndustriaEDCodigoKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
	If Key=Vk_RETURN
   Then Begin
  		If FiltraTabela(DMESTOQUE.TCFOP,'CFOP','CFOP', FrmCFOFExternoIndustria.EDCodigo.Text,'')
       Then Begin
       	XCODSTEXTERNOIND := DMESTOQUE.TCFOP.FieldByName('COD_CFOP').AsInteger;
       	FrmCFOFExternoIndustria.EDCodigo.Text:=DMESTOQUE.TCFOP.FieldByName('CFOP').AsString;
       	FrmCFOFExternoIndustria.EdDescricao.Text:=DMESTOQUE.TCFOP.FieldByName('DESCRICAO').AsString;
       End;
   End
end;

procedure TFConfigLoja.FrmCfopMatConsumoBTNOPENClick(Sender: TObject);
begin
  inherited;
  If AbrirForm(TFCADCFOP, FCADCFOP, 1)='Selected'
   Then Begin
       XCODCFOPMATCONSUMO := DMESTOQUE.TCFOP.FieldByName('COD_CFOP').AsInteger;
       FrmCfopMatConsumo.EDCodigo.Text:=DMESTOQUE.TCFOP.FieldByName('CFOP').AsString;
       FrmCfopMatConsumo.EdDescricao.Text:=DMESTOQUE.TCFOP.FieldByName('DESCRICAO').AsString;
   End;
   FrmCfopMatConsumo.Repaint;
end;

procedure TFConfigLoja.FrmCfopMatConsumoEDCodigoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
	If Key=Vk_RETURN
   Then Begin
  		If FiltraTabela(DMESTOQUE.TCFOP,'CFOP','CFOP', FrmCfopMatConsumo.EDCodigo.Text,'')
       Then Begin
       	XCODCFOPMATCONSUMO := DMESTOQUE.TCFOP.FieldByName('COD_CFOP').AsInteger;
       	FrmCfopMatConsumo.EDCodigo.Text:=DMESTOQUE.TCFOP.FieldByName('CFOP').AsString;
       	FrmCfopMatConsumo.EdDescricao.Text:=DMESTOQUE.TCFOP.FieldByName('DESCRICAO').AsString;
       End;
   End
end;

procedure TFConfigLoja.FrmCfopMatExternoEDCodigoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
	If Key=Vk_RETURN
   Then Begin
  		If FiltraTabela(DMESTOQUE.TCFOP,'CFOP','CFOP', FrmCfopMatExterno.EDCodigo.Text,'')
       Then Begin
       	XCODCFOPMATCONSUMOEXT := DMESTOQUE.TCFOP.FieldByName('COD_CFOP').AsInteger;
       	FrmCfopMatExterno.EDCodigo.Text:=DMESTOQUE.TCFOP.FieldByName('CFOP').AsString;
       	FrmCfopMatExterno.EdDescricao.Text:=DMESTOQUE.TCFOP.FieldByName('DESCRICAO').AsString;
       End;
   End
end;

procedure TFConfigLoja.FrmCfopMatExternoBTNOPENClick(Sender: TObject);
begin
  inherited;
  If AbrirForm(TFCADCFOP, FCADCFOP, 1)='Selected'
   Then Begin
       XCODCFOPMATCONSUMOEXT := DMESTOQUE.TCFOP.FieldByName('COD_CFOP').AsInteger;
       FrmCfopMatExterno.EDCodigo.Text:=DMESTOQUE.TCFOP.FieldByName('CFOP').AsString;
       FrmCfopMatExterno.EdDescricao.Text:=DMESTOQUE.TCFOP.FieldByName('DESCRICAO').AsString;
   End;
   FrmCfopMatExterno.Repaint;
end;

procedure TFConfigLoja.FrmIntCfopSimpRemessaBTNOPENClick(Sender: TObject);
begin
  inherited;
  If AbrirForm(TFCADCFOP, FCADCFOP, 1)='Selected'
   Then Begin
       XCODCFOPINTSIMPREMESSA := DMESTOQUE.TCFOP.FieldByName('COD_CFOP').AsInteger;
       FrmIntCfopSimpRemessa.EDCodigo.Text:=DMESTOQUE.TCFOP.FieldByName('CFOP').AsString;
       FrmIntCfopSimpRemessa.EdDescricao.Text:=DMESTOQUE.TCFOP.FieldByName('DESCRICAO').AsString;
   End;
   FrmIntCfopSimpRemessa.Repaint;
end;

procedure TFConfigLoja.FrmIntCfopSimpRemessaEDCodigoKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
	If Key=Vk_RETURN
   Then Begin
  		If FiltraTabela(DMESTOQUE.TCFOP,'CFOP','CFOP', FrmIntCfopSimpRemessa.EDCodigo.Text,'')
       Then Begin
       	XCODCFOPINTSIMPREMESSA := DMESTOQUE.TCFOP.FieldByName('COD_CFOP').AsInteger;
       	FrmIntCfopSimpRemessa.EDCodigo.Text:=DMESTOQUE.TCFOP.FieldByName('CFOP').AsString;
       	FrmIntCfopSimpRemessa.EdDescricao.Text:=DMESTOQUE.TCFOP.FieldByName('DESCRICAO').AsString;
       End;
   End ;
end;

procedure TFConfigLoja.FrmExtCfopSimpRemessaBTNOPENClick(Sender: TObject);
begin
  inherited;
  If AbrirForm(TFCADCFOP, FCADCFOP, 1)='Selected'
   Then Begin
       XCODCFOPEXTSIMPREMESSA := DMESTOQUE.TCFOP.FieldByName('COD_CFOP').AsInteger;
       FrmExtCfopSimpRemessa.EDCodigo.Text:=DMESTOQUE.TCFOP.FieldByName('CFOP').AsString;
       FrmExtCfopSimpRemessa.EdDescricao.Text:=DMESTOQUE.TCFOP.FieldByName('DESCRICAO').AsString;
   End;
   FrmExtCfopSimpRemessa.Repaint;
end;

procedure TFConfigLoja.FrmExtCfopSimpRemessaEDCodigoKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
	If Key=Vk_RETURN
   Then Begin
  		If FiltraTabela(DMESTOQUE.TCFOP,'CFOP','CFOP', FrmExtCfopSimpRemessa.EDCodigo.Text,'')
       Then Begin
       	XCODCFOPEXTSIMPREMESSA := DMESTOQUE.TCFOP.FieldByName('COD_CFOP').AsInteger;
       	FrmExtCfopSimpRemessa.EDCodigo.Text:=DMESTOQUE.TCFOP.FieldByName('CFOP').AsString;
       	FrmExtCfopSimpRemessa.EdDescricao.Text:=DMESTOQUE.TCFOP.FieldByName('DESCRICAO').AsString;
       End;
   End ;
end;

procedure TFConfigLoja.FrmCfopFreteEntradaBTNOPENClick(Sender: TObject);
begin
  inherited;
  If AbrirForm(TFCADCFOP, FCADCFOP, 1)='Selected'
   Then Begin
       XCODCFOPINTFRETE := DMESTOQUE.TCFOP.FieldByName('COD_CFOP').AsInteger;
       FrmCfopIntFreteEntrada.EDCodigo.Text:=DMESTOQUE.TCFOP.FieldByName('CFOP').AsString;
       FrmCfopIntFreteEntrada.EdDescricao.Text:=DMESTOQUE.TCFOP.FieldByName('DESCRICAO').AsString;
   End;
   FrmCfopIntFreteEntrada.Repaint;
end;

procedure TFConfigLoja.FrmCfopFreteEntradaEDCodigoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
	If Key=Vk_RETURN
   Then Begin
  		If FiltraTabela(DMESTOQUE.TCFOP,'CFOP','CFOP', FrmCfopIntFreteEntrada.EDCodigo.Text,'')
       Then Begin
       	XCODCFOPINTFRETE := DMESTOQUE.TCFOP.FieldByName('COD_CFOP').AsInteger;
       	FrmCfopIntFreteEntrada.EDCodigo.Text:=DMESTOQUE.TCFOP.FieldByName('CFOP').AsString;
       	FrmCfopIntFreteEntrada.EdDescricao.Text:=DMESTOQUE.TCFOP.FieldByName('DESCRICAO').AsString;
       End;
   End ;
end;

procedure TFConfigLoja.FrmCfopExtFreteEntradaEDCodigoKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
	If Key=Vk_RETURN
   Then Begin
  		If FiltraTabela(DMESTOQUE.TCFOP,'CFOP','CFOP', FrmCfopExtFreteEntrada.EDCodigo.Text,'')
       Then Begin
       	XCODCFOPEXTFRETE := DMESTOQUE.TCFOP.FieldByName('COD_CFOP').AsInteger;
       	FrmCfopExtFreteEntrada.EDCodigo.Text:=DMESTOQUE.TCFOP.FieldByName('CFOP').AsString;
       	FrmCfopExtFreteEntrada.EdDescricao.Text:=DMESTOQUE.TCFOP.FieldByName('DESCRICAO').AsString;
       End;
   End ;
end;

procedure TFConfigLoja.FrmCfopExtFreteEntradaBTNOPENClick(Sender: TObject);
begin
  inherited;
  If AbrirForm(TFCADCFOP, FCADCFOP, 1)='Selected'
   Then Begin
       XCODCFOPEXTFRETE := DMESTOQUE.TCFOP.FieldByName('COD_CFOP').AsInteger;
       FrmCfopExtFreteEntrada.EDCodigo.Text:=DMESTOQUE.TCFOP.FieldByName('CFOP').AsString;
       FrmCfopExtFreteEntrada.EdDescricao.Text:=DMESTOQUE.TCFOP.FieldByName('DESCRICAO').AsString;
   End;
   FrmCfopExtFreteEntrada.Repaint;
end;

//Paulo 23/09/2010: Para selecionar o cst usado na venda p situação tributária
procedure TFConfigLoja.FrmCstVendaTribBTNOPENClick(Sender: TObject);
begin
  inherited;
       if AbrirForm(TFCadCST,FCadCST,1)='Selected' then
       begin
          XCODCSTTRIB:=DMESTOQUE.TCST.FieldByName('COD_CST').AsInteger;
          FrmCstVendaTrib.EDCodigo.Text:=DMESTOQUE.TCST.FieldByName('COD_SIT_TRIB').AsString;
          FrmCstVendaTrib.EdDescricao.Text:=DMESTOQUE.TCST.FieldByName('DESCRICAO').AsString;
              
       end;
       FrmCstVendaTrib.Repaint;

end;
//Paulo 23/09/2010: Para selecionar o cst usado na venda p substituição
procedure TFConfigLoja.FrmCstSubstBTNOPENClick(Sender: TObject);
begin
  inherited;
		if AbrirForm(TFCadCST,FCadCST,1)='Selected' then
       begin
          XCODCSTSUBST:=DMESTOQUE.TCST.FieldByName('COD_CST').AsInteger;
          FrmCstSubst.EDCodigo.Text:=DMESTOQUE.TCST.FieldByName('COD_SIT_TRIB').AsString;
          FrmCstSubst.EdDescricao.Text:=DMESTOQUE.TCST.FieldByName('DESCRICAO').AsString;
              
       end;
       FrmCstSubst.Repaint;
end;

procedure TFConfigLoja.FrmDevPropriaDentroEDCodigoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
	If Key=Vk_RETURN
   Then Begin
  		If FiltraTabela(DMESTOQUE.TCFOP,'CFOP','CFOP', FrmDevPropriaDentro.EDCodigo.Text,'')
       Then Begin
       	XCODCFOP_DEVPROPRIODENTRO := DMESTOQUE.TCFOP.FieldByName('COD_CFOP').AsInteger;
       	FrmDevPropriaDentro.EDCodigo.Text:=DMESTOQUE.TCFOP.FieldByName('CFOP').AsString;
       	FrmDevPropriaDentro.EdDescricao.Text:=DMESTOQUE.TCFOP.FieldByName('DESCRICAO').AsString;
       End;
   End;
end;

procedure TFConfigLoja.FrmDevPropriaForaEDCodigoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
	If Key=Vk_RETURN
   Then Begin
  		If FiltraTabela(DMESTOQUE.TCFOP,'CFOP','CFOP', FrmDevPropriaFora.EDCodigo.Text,'')
       Then Begin
       	XCODCFOP_DEVPROPRIOFORA := DMESTOQUE.TCFOP.FieldByName('COD_CFOP').AsInteger;
       	FrmDevPropriaFora.EDCodigo.Text:=DMESTOQUE.TCFOP.FieldByName('CFOP').AsString;
       	FrmDevPropriaFora.EdDescricao.Text:=DMESTOQUE.TCFOP.FieldByName('DESCRICAO').AsString;
       End;
   End;
end;

procedure TFConfigLoja.FrmDevPropriaDentroBTNOPENClick(Sender: TObject);
begin
  inherited;
  If AbrirForm(TFCADCFOP, FCADCFOP, 1)='Selected'
   Then Begin
       XCODCFOP_DEVPROPRIODENTRO := DMESTOQUE.TCFOP.FieldByName('COD_CFOP').AsInteger;
       FrmDevPropriaDentro.EDCodigo.Text:=DMESTOQUE.TCFOP.FieldByName('CFOP').AsString;
       FrmDevPropriaDentro.EdDescricao.Text:=DMESTOQUE.TCFOP.FieldByName('DESCRICAO').AsString;
   End;
   FrmDevPropriaDentro.Repaint;
end;

procedure TFConfigLoja.FrmDevPropriaForaBTNOPENClick(Sender: TObject);
begin
  inherited;
  If AbrirForm(TFCADCFOP, FCADCFOP, 1)='Selected'
   Then Begin
       XCODCFOP_DEVPROPRIOFORA := DMESTOQUE.TCFOP.FieldByName('COD_CFOP').AsInteger;
       FrmDevPropriaFora.EDCodigo.Text:=DMESTOQUE.TCFOP.FieldByName('CFOP').AsString;
       FrmDevPropriaFora.EdDescricao.Text:=DMESTOQUE.TCFOP.FieldByName('DESCRICAO').AsString;
   End;
   FrmDevPropriaFora.Repaint;
end;

procedure TFConfigLoja.btImportarClick(Sender: TObject);
var

   XLogo: TBitmap;
begin
  inherited;
   //Paulo 21/10/2010 - 145: Importa logo da empresa para inserir nos relatórios e NFes
   XLogoDialog:=TOpenPictureDialog.Create(Self);

   //Paulo 21/10/2010:Importa a logo
   XLogoDialog.InitialDir:= Application.GetNamePath;
   XLogoDialog.Title:='Selecione a logo da empresa';
   XLogoDialog.Execute;

   if (XLogoDialog.FileName = '')then exit;

   XLogo:=TBitmap.Create;
   XLogo.LoadFromFile(XLogoDialog.FileName);

   //Paulo: a imagem da logo deve ser em bmp e o tamanho tem q ser H=>70
   //e o o W no máximo 193

   ImLogo.Picture.Assign(XLogo);








end;



procedure TFConfigLoja.Button1Click(Sender: TObject);
begin
  inherited;
      ImLogo.Picture:=nil;


End;

procedure TFConfigLoja.CBClassificacao2Click(Sender: TObject);
begin
  inherited;
  		If CBClassificacao2.Checked=True
  		Then Begin
    		CBETFabricante.Checked:=False;
           CBETCODCOMPOSTO.Checked:=False;
           CBETCTRLINTERNO.Checked:=False;
           CBClassificacao.Checked:=False;
           CBETBARRAS.Checked:=True;
  		End;


end;

procedure TFConfigLoja.FrmEntPropDentroBTNOPENClick(Sender: TObject);
begin
  inherited;
       If AbrirForm(TFCADCFOP, FCADCFOP, 1)='Selected'
       Then Begin
           XCODCFOPPROPDENTRO := DMESTOQUE.TCFOP.FieldByName('COD_CFOP').AsInteger;
           FrmEntPropDentro.EDCodigo.Text:=DMESTOQUE.TCFOP.FieldByName('CFOP').AsString;
           FrmEntPropDentro.EdDescricao.Text:=DMESTOQUE.TCFOP.FieldByName('DESCRICAO').AsString;
       End;
       FrmEntPropDentro.Repaint;
end;

procedure TFConfigLoja.FrmEntPropForaBTNOPENClick(Sender: TObject);
begin
  inherited;
	if AbrirForm(TFCADCFOP, FCADCFOP, 1)='Selected' then
   begin
   	XCODCFOPPROPFORA := DMESTOQUE.TCFOP.FieldByName('COD_CFOP').AsInteger;
       FrmEntPropFora.EDCodigo.Text:=DMESTOQUE.TCFOP.FieldByName('CFOP').AsString;
       FrmEntPropFora.EdDescricao.Text:=DMESTOQUE.TCFOP.FieldByName('DESCRICAO').AsString;
   end;
   FrmEntPropFora.Repaint;
end;

procedure TFConfigLoja.Button3Click(Sender: TObject);
var
	xCodigoServico: integer;
begin
  inherited;

  //Edmar - 07/01/2014 - Valida se os campos foram preenchidos
  if (edNumServico.Text = '') or (edNumServico.Text = '') then
  begin
  		showMessage('Os campos descrição e número devem ser preenchidos');
  		exit;
  end;

  if not xEditando then//Edmar - 07/01/2014 - Se não estiver editando faz
  begin
  //Edmar - 07/01/2014 - Seleciona o maior código do serviço e soma para usar no novo serviço cadastrado  
    try
     DMServ.TAlx1.Close;
     DMServ.TAlx1.SQL.Clear;
     DMServ.TAlx1.SQL.Add('select max(cod_servico) from servico_nfse');
     DMServ.TAlx1.Open;

     xCodigoServico := DMServ.TAlx1.FieldByName('max').AsInteger + 1;
    except
     showMessage('Erro ao buscar código do serviço');
    end;

    //Edmar - 07/01/2014 - Insere o novo serviço
    try
     DMServ.TAlx1.Close;
     DMServ.TAlx1.SQL.Clear;
     DMServ.TAlx1.SQL.Add('insert into servico_nfse (cod_servico, num_servico, descricao, ativo, padrao) values (:cod, :num, :desc, :at, :pad)');
     DMServ.TAlx1.ParamByName('cod').AsInteger := xCodigoServico;
     DMServ.TAlx1.ParamByName('num').AsString := edNumServico.Text;
     DMServ.TAlx1.ParamByName('desc').AsString := edDescServico.Text;

     //Edmar - 07/01/2014 - testa se o serviço deve estar ativo
     if (cbAtivo.Checked) then
         DMServ.TAlx1.ParamByName('at').AsString := '1'
     else
         DMServ.TAlx1.ParamByName('at').AsString := '0';

     //Edmar - 07/01/2014 - testa se o serviço deve ser o padrão
     if (cbPadrao.Checked) then
         DMServ.TAlx1.ParamByName('pad').AsString := '1'
     else
         DMServ.TAlx1.ParamByName('pad').AsString := '0';

     DMServ.TAlx1.ExecSQL;
     DMServ.TAlx1.Transaction.CommitRetaining;

     edNumServico.Text := '';
     edDescServico.Text := '';
     cbAtivo.Checked := false;
     cbPadrao.Checked := false;
    except
     showMessage('Erro ao adicionar serviço');
    end;
  end
  else
  begin//Edmar - 07/01/2013 - Se estiver atualizando faz
    try
     DMServ.TAlx1.Close;
     DMServ.TAlx1.SQL.Clear;
     DMServ.TAlx1.SQL.Add('update servico_nfse set num_servico = :num, descricao = :desc, ativo = :at, padrao = :pad where cod_servico = :cod');
     DMServ.TAlx1.ParamByName('num').AsString := edNumServico.Text;
     DMServ.TAlx1.ParamByName('desc').AsString := edDescServico.Text;

     //Edmar - 07/01/2014 - testa se o serviço deve estar ativo
     if (cbAtivo.Checked) then
         DMServ.TAlx1.ParamByName('at').AsString := '1'
     else
         DMServ.TAlx1.ParamByName('at').AsString := '0';

     //Edmar - 07/01/2014 - testa se o serviço deve ser o padrão
     if (cbPadrao.Checked) then
         DMServ.TAlx1.ParamByName('pad').AsString := '1'
     else
         DMServ.TAlx1.ParamByName('pad').AsString := '0';

     DMServ.TAlx1.ParamByName('cod').AsInteger := DMServ.TAlx2.FieldByName('cod_servico').AsInteger;

     DMServ.TAlx1.ExecSQL;
     DMServ.TAlx1.Transaction.CommitRetaining;

     edNumServico.Text := '';
     edDescServico.Text := '';
     cbAtivo.Checked := false;
     cbPadrao.Checked := false;
    except
     showMessage('Erro ao atualizar serviço');
    end;
  end;

  PopulaGridServico;
end;

procedure TFConfigLoja.btnCadastraServicoClick(Sender: TObject);
begin
  inherited;
   pCadServico.Visible := true;
   pCadServico.BringToFront;
end;

procedure TFConfigLoja.PopulaGridServico;
begin
	DMServ.TAlx2.Close;
   DMServ.TAlx2.sql.clear;
   dmserv.TAlx2.SQL.Add('select servico_nfse.cod_servico, servico_nfse.num_servico NUMSERVICO, servico_nfse.descricao DESCRICAO, ');
   dmserv.TAlx2.SQL.Add(' servico_nfse.ativo, servico_nfse.padrao from servico_nfse ');
   DMServ.TAlx2.Open;

   dbServicos.DataSource := DMServ.DSAlx2;
end;

procedure TFConfigLoja.Button4Click(Sender: TObject);
begin
  inherited;

   cbAtivo.Checked := false;
   cbPadrao.Checked := false;

	edNumServico.Text := DMServ.TAlx2.FieldByName('NUMSERVICO').AsString;
	edDescServico.Text := DMServ.TAlx2.FieldByName('DESCRICAO').AsString;
   
   if DMServ.TAlx2.FieldByName('ativo').AsString = '1' then
   	cbAtivo.Checked := true;

   if DMServ.TAlx2.FieldByName('padrao').AsString = '1' then
   	cbPadrao.Checked := true;
       
   xEditando := true;
end;

procedure TFConfigLoja.btnNovoServClick(Sender: TObject);
begin
  inherited;
  edNumServico.Text := '';
  edDescServico.Text := '';
  cbAtivo.Checked := false;
  cbPadrao.Checked := false;
  xEditando := false;
end;

procedure TFConfigLoja.Button5Click(Sender: TObject);
begin
  inherited;
  DMServ.TAlx3.Close;
  DMServ.TAlx3.sql.clear;
  DMServ.TAlx3.SQL.Add('delete from servico_nfse where servico_nfse.cod_servico = :cod');
  DMServ.TAlx3.ParamByName('cod').AsInteger := DMServ.TAlx2.FieldByName('cod_servico').AsInteger;

  DMServ.TAlx3.ExecSQL;
  DMServ.TAlx3.Transaction.CommitRetaining;
  
  PopulaGridServico;
end;

procedure TFConfigLoja.BitBtn20Click(Sender: TObject);
begin
  inherited;
  EdtCaminhoXml.Text := '';
end;

procedure TFConfigLoja.BitBtn18Click(Sender: TObject);
begin
  inherited;
  if OPD.Execute then
  		EdtCaminhoXml.Text := ExtractFilePath(OPD.FileName);
end;

procedure TFConfigLoja.Label131Click(Sender: TObject);
begin
  inherited;
   //https://www.google.com/settings/security/lesssecureapps
   ShellExecute(Handle, 'open', 'https://www.google.com/settings/security/lesssecureapps', nil, nil, SW_SHOWNORMAL);      
end;

procedure TFConfigLoja.Label132Click(Sender: TObject);
begin
  inherited;
   //http://br.ccm.net/faq/844-configuracoes-dos-servidores-pop-imap-e-smtp-dos-principais-fai
   ShellExecute(Handle, 'open', 'http://br.ccm.net/faq/844-configuracoes-dos-servidores-pop-imap-e-smtp-dos-principais-fai', nil, nil, SW_SHOWNORMAL);
end;

procedure TFConfigLoja.FrmOutEntPropDentroBTNOPENClick(Sender: TObject);
begin
  inherited;
	if AbrirForm(TFCADCFOP, FCADCFOP, 1)='Selected' then
   begin
   	XCODCFOPOUTPROPDENTRO := DMESTOQUE.TCFOP.FieldByName('COD_CFOP').AsInteger;
       FrmOutEntPropDentro.EDCodigo.Text := DMESTOQUE.TCFOP.FieldByName('CFOP').AsString;
       FrmOutEntPropDentro.EdDescricao.Text := DMESTOQUE.TCFOP.FieldByName('DESCRICAO').AsString;
   end;
   FrmOutEntPropDentro.Repaint;
end;

procedure TFConfigLoja.FrmOutEntPropForaBTNOPENClick(Sender: TObject);
begin
  inherited;
	if AbrirForm(TFCADCFOP, FCADCFOP, 1)='Selected' then
   begin
   	XCODCFOPOUTPROPFORA := DMESTOQUE.TCFOP.FieldByName('COD_CFOP').AsInteger;
       FrmOutEntPropFora.EDCodigo.Text := DMESTOQUE.TCFOP.FieldByName('CFOP').AsString;
       FrmOutEntPropFora.EdDescricao.Text := DMESTOQUE.TCFOP.FieldByName('DESCRICAO').AsString;
   end;
   FrmOutEntPropFora.Repaint;
end;

procedure TFConfigLoja.FrmOutEntPropDentroEDCodigoKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  	if Key = #13 then
   begin
   	FiltraTabela(DMESTOQUE.TCFOP, 'CFOP', 'CFOP', FrmOutEntPropDentro.EDCodigo.Text, '');

       if DMESTOQUE.TCFOP.IsEmpty then
       begin
           FrmOutEntPropDentro.EdDescricao.Text := '';
           XCODCFOPOUTPROPDENTRO := 0;
       end
       else Begin
           FrmOutEntPropDentro.EdDescricao.Text := DMESTOQUE.TCFOP.FieldByName('DESCRICAO').AsString;
           XCODCFOPOUTPROPDENTRO := DMESTOQUE.TCFOP.FieldByName('COD_CFOP').AsInteger;
       end;
   end;
   
 	if Key = #27 then
   begin
   	FrmOutEntPropDentro.EdDescricao.Text := '';
      	FrmOutEntPropDentro.EDCodigo.Text := '';
       XCODCFOPOUTPROPDENTRO := 0;
   end;
end;

procedure TFConfigLoja.FrmOutEntPropForaEDCodigoKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  	if Key = #13 then
   begin
   	FiltraTabela(DMESTOQUE.TCFOP, 'CFOP', 'CFOP', FrmOutEntPropFora.EDCodigo.Text, '');

       if DMESTOQUE.TCFOP.IsEmpty then
       begin
           FrmOutEntPropFora.EdDescricao.Text := '';
           XCODCFOPOUTPROPFORA := 0;
       end
       else Begin
           FrmOutEntPropFora.EdDescricao.Text := DMESTOQUE.TCFOP.FieldByName('DESCRICAO').AsString;
           XCODCFOPOUTPROPFORA := DMESTOQUE.TCFOP.FieldByName('COD_CFOP').AsInteger;
       end;
   end;

 	if Key = #27 then
   begin
   	FrmOutEntPropFora.EdDescricao.Text := '';
      	FrmOutEntPropFora.EDCodigo.Text := '';
       XCODCFOPOUTPROPFORA := 0;
   end;
end;

procedure TFConfigLoja.BitBtn21Click(Sender: TObject);
begin
  inherited;
  if not DirectoryExists('C:/MZR/Arquivos/Documentos Clientes') then
     VerificaDiretorio('C:/MZR/Arquivos/Documentos Clientes');
     
	if OPD.Execute then
  	begin
   	  DMMACS.TLoja.Edit;
    	DMMACS.TLoja.FieldByName('CAMINHODOCS').AsString:=ExtractFilePath(OPD.FileName);
      EdCaminhoDocs.Text:=ExtractFilePath(OPD.FileName);
  	end;
end;

procedure TFConfigLoja.BitBtn22Click(Sender: TObject);
begin
  inherited;
   DMMACS.TLoja.edit;
	 DMMACS.TLoja.FieldByName('CAMINHODOCS').AsString:='';
   DMMACS.TLoja.Post;
   DMMACS.Transaction.CommitRetaining;
   EdCaminhoDocs.Text:='';
end;

End.


