unit UOrdem;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  UCadPadrao, TFlatHintUnit, Grids, DBGrids, StdCtrls, TFlatEditUnit,
  Buttons, jpeg, ExtCtrls, EditFloat, ColorEditFloat, Mask, DBCtrls,
  DBColorEdit, UFrmBusca, TFlatTabControlUnit, ImgList, ComCtrls,
  ColorMaskEdit, FashionPanel, FR_Class, FR_DSet, FR_DBSet, Menus, DrLabel;
type
  TFOrdem = class(TFCadPadrao)
    Label2: TLabel;
    DBNumOrd: TDBColorEdit;
    Label3: TLabel;
    EdValorOrd: TColorEditFloat;
    FrmCliente: TFrmBusca;
    FrmEquipamento: TFrmBusca;
    FrmVendedor: TFrmBusca;
    FrmResponsavel: TFrmBusca;
    TCCadastro: TFlatTabControl;
    PAbertura: TPanel;
    Shape3: TShape;
    PProdServ: TPanel;
    Shape5: TShape;
    Label1: TLabel;
    DBDTABERT: TDBColorEdit;
    Label4: TLabel;
    DBHRABERT: TDBColorEdit;
    LTitulo: TLabel;
    DBPROBREC: TDBMemo;
    Label6: TLabel;
    DBSOLU: TDBMemo;
    Label7: TLabel;
    DBDTPREV: TDBColorEdit;
    Label8: TLabel;
    DBHRPREV: TDBColorEdit;
    Label9: TLabel;
    DBOBS: TDBMemo;
    ImageList1: TImageList;
    PCProdServ: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Shape6: TShape;
    Shape7: TShape;
    Panel2: TPanel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    LEstoque: TLabel;
    BtnProcProd: TBitBtn;
    BtnInsertProd: TBitBtn;
    BtnDeleteProd: TBitBtn;
    EDQuantidade: TColorEditFloat;
    EDValUnit: TColorEditFloat;
    EDDesc: TColorEditFloat;
    EDTotal: TColorEditFloat;
    PBPCodBarra: TPanel;
    Label15: TLabel;
    EDCodBarra: TEdit;
    Panel3: TPanel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label22: TLabel;
    BtnProcServ: TBitBtn;
    BtnInsertServ: TBitBtn;
    BtnDeleteServ: TBitBtn;
    EDQtdServ: TColorEditFloat;
    EDVlrUnitServ: TColorEditFloat;
    EdDescServ: TColorEditFloat;
    EdVlrtotalServ: TColorEditFloat;
    GroupBox2: TGroupBox;
    DBGrid2: TDBGrid;
    Label31: TLabel;
    EdtotalProd: TColorEditFloat;
    Label33: TLabel;
    EdTotalserv: TColorEditFloat;
    Label32: TLabel;
    EdTotalOrd: TColorEditFloat;
    Label34: TLabel;
    Label27: TLabel;
    EdCodInternoServ: TColorEditFloat;
    RGSituacao: TRadioGroup;
    PMotParada: TPanel;
    DBMMotParada: TDBMemo;
    BtnFechaPed: TBitBtn;
    FSDSRel: TfrDBDataSet;
    FSRel: TfrReport;
    PmRelatorio: TPopupMenu;
    CompdeAbertura1: TMenuItem;
    CompdeFechamento1: TMenuItem;
    FSDSServ: TfrDBDataSet;
    DBLOCALAT: TDBComboBox;
    Label11: TLabel;
    MEscolheProc: TPopupMenu;
    ControleInterno1: TMenuItem;
    CdFab1: TMenuItem;
    C1: TMenuItem;
    BtnComiss: TBitBtn;
    Shape9: TShape;
    Shape10: TShape;
    Shape12: TShape;
    CBGarantia: TCheckBox;
    PDespesas: TPanel;
    Shape13: TShape;
    Label26: TLabel;
    EdTotDesp: TColorEditFloat;
    PCabDesp: TPanel;
    Shape15: TShape;
    Label35: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    EdDescD: TColorEditFloat;
    EdQtdD: TColorEditFloat;
    EdVlrCustoD: TColorEditFloat;
    EdVlrCobradoD: TColorEditFloat;
    EdVlrTotD: TColorEditFloat;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    DBGrid3: TDBGrid;
    FSDSDesp: TfrDBDataSet;
    LVlrComissao: TLabel;
    Label40: TLabel;
    EdDescTOrdem: TColorEditFloat;
    EdCliente: TFlatEdit;
    EdEquipamento: TFlatEdit;
    FrmFormPag1: TFrmBusca;
    Label41: TLabel;
    EdDescTServ: TColorEditFloat;
    Label42: TLabel;
    EdDescTProd: TColorEditFloat;
    BitBtn8: TBitBtn;
    PFinanceiro: TPanel;
    FPFinanceiro: TFashionPanel;
    Label25: TLabel;
    Label24: TLabel;
    Label28: TLabel;
    BtnMoedaOK: TBitBtn;
    BtnMoedaCancelar: TBitBtn;
    CBPagamento: TComboBox;
    FrmMoeda: TFrmBusca;
    FrmConta: TFrmBusca;
    FrmFormPag: TFrmBusca;
    DBDATAENTREGA: TColorMaskEdit;
    DBHORAENTREGA: TColorMaskEdit;
    FrmContaServ: TFrmBusca;
    Panel7: TPanel;
    LTextoBusca: TLabel;
    EdDtFech: TColorMaskEdit;
    Panel5: TPanel;
    BitBtn2: TBitBtn;
    Label43: TLabel;
    EDMarca: TColorEditFloat;
    Label44: TLabel;
    EdUnidade: TColorEditFloat;
    EdDesconto: TColorEditFloat;
    Label45: TLabel;
    CBFILTRO: TComboBox;
    Label46: TLabel;
    CBORDEM: TComboBox;
    Label47: TLabel;
    BtnCancelamentos: TBitBtn;
    PMDevolucao: TPopupMenu;
    Cancelar1: TMenuItem;
    N1: TMenuItem;
    CancelarFechamento1: TMenuItem;
    PAbreMecanica: TPanel;
    DBRadioGroup1: TDBRadioGroup;
    PAbreInfo: TPanel;
    Label23: TLabel;
    Label48: TLabel;
    DBMouse: TDBComboBox;
    Label49: TLabel;
    DBKitmm: TDBComboBox;
    DBTeclado: TDBComboBox;
    Label50: TLabel;
    DBCdRecupera: TDBComboBox;
    Label51: TLabel;
    DBCabos: TDBComboBox;
    Label52: TLabel;
    Label53: TLabel;
    DBMonitor: TDBComboBox;
    Label54: TLabel;
    DBimpressora: TDBComboBox;
    Label55: TLabel;
    DbFones: TDBComboBox;
    DbEstadoEquip: TDBComboBox;
    Label57: TLabel;
    BtnDadosAdic: TBitBtn;
    PMFisco: TPopupMenu;
    MenuItem5: TMenuItem;
    MenuItem6: TMenuItem;
    Cupom1: TMenuItem;
    BitBtn15: TBitBtn;
    CBGeraFinanceiro: TCheckBox;
    DBDescricao: TLabel;
    DBDescBackup: TDBMemo;
    RGDados: TGroupBox;
    CBDocumentos: TCheckBox;
    CBDesktop: TCheckBox;
    CBEmails: TCheckBox;
    CBOutros: TCheckBox;
    DBBox: TDBEdit;
    LBox: TLabel;
    FBEquipPlaca: TFrmBusca;
    PEquipe: TPanel;
    FrmEquipe: TFrmBusca;
    DBGrid4: TDBGrid;
    Label60: TLabel;
    Label61: TLabel;
    Label62: TLabel;
    Label63: TLabel;
    Label64: TLabel;
    BtnInserir: TBitBtn;
    BBExcluir: TBitBtn;
    ETotal: TColorEditFloat;
    EValor: TColorEditFloat;
    EQtd: TColorEditFloat;
    EDesc: TColorEditFloat;
    EDespesa: TEdit;
    GBPlaca: TGroupBox;
    EDCliente1: TFlatEdit;
    EDNum: TFlatEdit;
    MEPlaca: TMaskEdit;
    EDBox: TFlatEdit;
    N2: TMenuItem;
    ExportarOrdServ1: TMenuItem;
    PExp: TPanel;
    PBExport: TProgressBar;
    Garantia1: TMenuItem;
    GBKM: TGroupBox;
    EDKM: TEdit;
    Label65: TLabel;
    CBUnid: TComboBox;
    PLocacao: TPanel;
    Label66: TLabel;
    LUZOPEN: TShape;
    Label67: TLabel;
    Label68: TLabel;
    Label72: TLabel;
    EDCodigoCli: TFlatEdit;
    EdDescricaoCli: TFlatEdit;
    BTNOPEN: TBitBtn;
    EDCodPag: TFlatEdit;
    EDDescPag: TFlatEdit;
    EDDataIni: TMaskEdit;
    EDHAbert: TMaskEdit;
    GroupBox4: TGroupBox;
    FrmTabela: TFrmBusca;
    BitBtn6: TBitBtn;
    BTNMINUS: TBitBtn;
    LUZMINUS: TShape;
    Shape2: TShape;
    PCVeiculo: TPageControl;
    TabSheet3: TTabSheet;
    TSAjudante: TTabSheet;
    BtnExcluir: TBitBtn;
    BitBtn5: TBitBtn;
    DBGrid5: TDBGrid;
    PHoras: TPanel;
    GBHoras: TGroupBox;
    Label84: TLabel;
    EDHrMin: TMaskEdit;
    Label76: TLabel;
    EDHNormais: TMaskEdit;
    Label78: TLabel;
    EDHExtras: TMaskEdit;
    Label81: TLabel;
    EDVlrNormal: TColorEditFloat;
    Label82: TLabel;
    EDVlrExtra: TColorEditFloat;
    BtnUpLogoff: TSpeedButton;
    CBPrecoTabela: TCheckBox;
    Label98: TLabel;
    Label99: TLabel;
    EdPlaca: TMaskEdit;
    EdEquip: TFlatEdit;
    Shape8: TShape;
    BitBtn7: TBitBtn;
    CBPrecoKm: TCheckBox;
    GroupBox7: TGroupBox;
    Label93: TLabel;
    LValor: TLabel;
    Label95: TLabel;
    Label96: TLabel;
    Label97: TLabel;
    EDKMIni: TEdit;
    EDKMFinal: TEdit;
    EdFinancKm: TColorEditFloat;
    EdKmTotal: TColorMaskEdit;
    EdVlrKm: TColorEditFloat;
    FrmMotorista: TFrmBusca;
    GBServico: TGroupBox;
    EDData: TMaskEdit;
    HMatIni: TMaskEdit;
    HMatFim: TMaskEdit;
    HVespIni: TMaskEdit;
    HVespFim: TMaskEdit;
    EDVlrTotalHrs: TColorEditFloat;
    BtnDownLogoff: TSpeedButton;
    Label69: TLabel;
    Label77: TLabel;
    Label79: TLabel;
    Label75: TLabel;
    Label80: TLabel;
    Label86: TLabel;
    LVlrTitulo: TLabel;
    EDValor: TColorEditFloat;
    LDiaSemana: TLabel;
    EdTotKm: TColorEditFloat;
    EdTotServ: TColorEditFloat;
    Label83: TLabel;
    Label70: TLabel;
    EdDescKm: TColorEditFloat;
    Label85: TLabel;
    EdDescServico: TColorEditFloat;
    Label87: TLabel;
    Label88: TLabel;
    EdTotOrd: TColorEditFloat;
    EdDescontoTot: TColorEditFloat;
    Label89: TLabel;
    TabSheet5: TTabSheet;
    MObservacao: TMemo;
    BitBtn12: TBitBtn;
    BitBtn11: TBitBtn;
    BtnFunc: TBitBtn;
    DBFunc: TDBGrid;
    MFunc: TMemo;
    GroupBox6: TGroupBox;
    Label90: TLabel;
    EdValorNormal: TColorEditFloat;
    EdValorExtra: TColorEditFloat;
    Label91: TLabel;
    Label92: TLabel;
    EdHMatIni: TMaskEdit;
    Label94: TLabel;
    EdHMatFim: TMaskEdit;
    EdHVespIni: TMaskEdit;
    Label100: TLabel;
    Label101: TLabel;
    EdHVespFim: TMaskEdit;
    Label102: TLabel;
    PHorasAju: TPanel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    EdVlrTot: TColorEditFloat;
    GroupBox8: TGroupBox;
    Label104: TLabel;
    Label105: TLabel;
    Label106: TLabel;
    Label107: TLabel;
    EdHrNorm: TMaskEdit;
    EdHrExt: TMaskEdit;
    EdValorNorm: TColorEditFloat;
    EdValorExt: TColorEditFloat;
    EdDescAjud: TColorEditFloat;
    EdTotAjud: TColorEditFloat;
    Label103: TLabel;
    Label108: TLabel;
    Label109: TLabel;
    EdDate: TMaskEdit;
    LDia: TLabel;
    Label110: TLabel;
    Label111: TLabel;
    LVlrNormal: TLabel;
    LVlrExtra: TLabel;
    DBContato: TDBEdit;
    Label5: TLabel;
    PPrecos: TPanel;
    FashionPanel3: TFashionPanel;
    Label73: TLabel;
    Label74: TLabel;
    Label59: TLabel;
    Label71: TLabel;
    Label112: TLabel;
    Label113: TLabel;
    Label114: TLabel;
    EdVlrVarejoVista: TColorEditFloat;
    EdVlrVarejoPrazo: TColorEditFloat;
    EdVlrAtacadoVista: TColorEditFloat;
    EdVlrAtacadoPrazo: TColorEditFloat;
    Exportar: TMenuItem;
    PBanco: TPanel;
    Label115: TLabel;
    DBGCTA: TDBGrid;
    PMBtnFiscal: TPopupMenu;
    ConsultaNDocFiscal1: TMenuItem;
    AlteraNDocFiscal1: TMenuItem;
    ReimprimirNF1: TMenuItem;
    LQTDDESP: TLabel;
    LQTDPROD: TLabel;
    LQTDSERV: TLabel;
    lbDiaSemanaAbert: TLabel;
    lbDiaSemanaPrev: TLabel;
    BtnDevolucao: TBitBtn;
    PDevParc: TPanel;
    FashionPanel2: TFashionPanel;
    DRLabel1: TDRLabel;
    DBGrid6: TDBGrid;
    BitBtn9: TBitBtn;
    BitBtn10: TBitBtn;
    Panel14: TPanel;
    DBGrid7: TDBGrid;
    BtnDevolveItem: TBitBtn;
    PMDev: TPopupMenu;
    DevoluoTotal1: TMenuItem;
    DevoluoParcial1: TMenuItem;
    Label119: TLabel;
    EdQtdProdDev: TColorEditFloat;
    EdvlrUnitProdDev: TColorEditFloat;
    Label120: TLabel;
    Label116: TLabel;
    BtnSelecionaOrdem: TBitBtn;
    Label117: TLabel;
    Label118: TLabel;
    Label121: TLabel;
    Label122: TLabel;
    Label123: TLabel;
    Label124: TLabel;
    Label125: TLabel;
    Label29: TLabel;
    EdServico: TColorEditFloat;
    PListaProdutos: TPanel;
    DBGrid8: TDBGrid;
    pPesquisaRapida: TPanel;
    LPesquisa: TLabel;
    Label30: TLabel;
    EDCodFab: TColorMaskEdit;
    GroupBox5: TGroupBox;
    DBGrid1: TDBGrid;
    LProduto: TLabel;
    LSubServico: TLabel;
    edDtAgendamento: TColorMaskEdit;
    Label10: TLabel;
    procedure TCCadastroTabChanged(Sender: TObject);
    procedure BtnNovoClick(Sender: TObject);
    procedure FrmClienteEDCodigoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FrmClienteBTNOPENClick(Sender: TObject);
    procedure FrmEquipamentoEDCodigoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FrmEquipamentoBTNOPENClick(Sender: TObject);
    procedure FrmVendedorEDCodigoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FrmVendedorBTNOPENClick(Sender: TObject);
    procedure FrmResponsavelEDCodigoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FrmResponsavelBTNOPENClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure BtnGravarClick(Sender: TObject);
    procedure EDCodBarraKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EDCodFabKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BtnProcProdClick(Sender: TObject);
    procedure BtnInsertProdClick(Sender: TObject);
    procedure EDQuantidadeExit(Sender: TObject);
    procedure EDValUnitEnter(Sender: TObject);
    procedure EDDescKeyPress(Sender: TObject; var Key: Char);
    procedure EDTotalKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BtnDeleteProdClick(Sender: TObject);
    procedure BtnConsultarClick(Sender: TObject);
    procedure BtnProcServClick(Sender: TObject);
    procedure EdCodInternoServKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EDQtdServExit(Sender: TObject);
    procedure EDVlrUnitServEnter(Sender: TObject);
    procedure EdVlrtotalServKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BtnInsertServClick(Sender: TObject);
    procedure BtnDeleteServClick(Sender: TObject);
    procedure RGSituacaoClick(Sender: TObject);
    procedure BtnApagarClick(Sender: TObject);
    procedure FrmContaEDCodigoKeyPress(Sender: TObject; var Key: Char);
    procedure FrmContaBTNOPENClick(Sender: TObject);
    procedure FrmContaBTNMINUSClick(Sender: TObject);
    procedure FrmFormPagEDCodigoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FrmFormPagBTNOPENClick(Sender: TObject);
    procedure FrmFormPagBTNMINUSClick(Sender: TObject);
    procedure BtnFechaPedClick(Sender: TObject);
    procedure PConsultaExit(Sender: TObject);
    procedure BtnMoedaCancelarClick(Sender: TObject);
    procedure BtnMoedaOKClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure PProdServEnter(Sender: TObject);
    procedure PProdServExit(Sender: TObject);
    procedure BtnRelatorioClick(Sender: TObject);
    procedure CompdeAbertura1Click(Sender: TObject);
    procedure CompdeFechamento1Click(Sender: TObject);
    procedure FrmContaServBTNMINUSClick(Sender: TObject);
    procedure FrmContaServBTNOPENClick(Sender: TObject);
    procedure FrmContaServEDCodigoKeyPress(Sender: TObject; var Key: Char);
    procedure FrmFormPagExit(Sender: TObject);
    procedure BtnCancelDevolClick(Sender: TObject);
    procedure CBPagamentoKeyPress(Sender: TObject; var Key: Char);
    procedure DBLOCALATKeyPress(Sender: TObject; var Key: Char);
    procedure DBGridCadastroPadraoDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure BtnComissClick(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure EdQtdDExit(Sender: TObject);
    procedure EdVlrTotDExit(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure EdValorOrdExit(Sender: TObject);
    procedure EdEquipamentoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdClienteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FrmFormPag1BTNMINUSClick(Sender: TObject);
    procedure FrmFormPag1BTNOPENClick(Sender: TObject);
    procedure FrmFormPag1EDCodigoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdtotalProdExit(Sender: TObject);
    procedure EdDescTProdExit(Sender: TObject);
    procedure EdDescTServExit(Sender: TObject);
    procedure EdTotalservExit(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FrmMoedaBTNMINUSClick(Sender: TObject);
    procedure FrmMoedaBTNOPENClick(Sender: TObject);
    procedure FrmFormPagEDCodigoKeyPress(Sender: TObject; var Key: Char);
    procedure CBORDEMExit(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
    procedure BtnCancelamentosClick(Sender: TObject);
    procedure Cancelar1Click(Sender: TObject);
    procedure CancelarFechamento1Click(Sender: TObject);
    procedure BtnDadosAdicClick(Sender: TObject);
    procedure MenuItem5Click(Sender: TObject);
    procedure MenuItem6Click(Sender: TObject);
    procedure Cupom1Click(Sender: TObject);
    procedure BitBtn15Click(Sender: TObject);
    procedure DbEstadoEquipExit(Sender: TObject);
    procedure DBLOCALATExit(Sender: TObject);
    procedure FrmEquipeBTNOPENClick(Sender: TObject);
    procedure FBEquipPlacaBTNOPENClick(Sender: TObject);
    procedure BtnInserirClick(Sender: TObject);
    procedure BBExcluirClick(Sender: TObject);
    procedure EDescExit(Sender: TObject);
    procedure FBEquipPlacaEDCodigoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure PCProdServChange(Sender: TObject);
    procedure EDCliente1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure MEPlacaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EDBoxKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EDNumKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGridCadastroPadraoDblClick(Sender: TObject);
    procedure ExportarOrdServ1Click(Sender: TObject);
    procedure FrmEquipeEDCodigoKeyPress(Sender: TObject; var Key: Char);
    procedure Garantia1Click(Sender: TObject);
    procedure EDKMExit(Sender: TObject);
    procedure CBUnidExit(Sender: TObject);
    procedure FBEquipPlacaEDCodigoExit(Sender: TObject);
    procedure FrmTabelaBTNOPENClick(Sender: TObject);
    procedure FrmTabelaBTNMINUSClick(Sender: TObject);
    procedure CBPrecoKmClick(Sender: TObject);
    procedure EDPlacaExit(Sender: TObject);
    procedure EDKMFinalExit(Sender: TObject);
    procedure EdVlrKmExit(Sender: TObject);
    procedure CBPrecoTabelaClick(Sender: TObject);
    procedure BtnSelectClick(Sender: TObject);
    procedure BtnExcluirClick(Sender: TObject);
    procedure BtnDownLogoffClick(Sender: TObject);
    procedure BtnUpLogoffClick(Sender: TObject);
    procedure HMatFimExit(Sender: TObject);
    procedure FrmBusca1BTNOPENClick(Sender: TObject);
    procedure HVespFimExit(Sender: TObject);
    procedure FrmMotoristaBTNMINUSClick(Sender: TObject);
    procedure BtnFuncClick(Sender: TObject);
    procedure BitBtn10Click(Sender: TObject);
    procedure EDDataExit(Sender: TObject);
    procedure EdDescKmExit(Sender: TObject);
    procedure EdTotKmExit(Sender: TObject);
    procedure EdDescServicoExit(Sender: TObject);
    procedure EdTotServExit(Sender: TObject);
    procedure BitBtn11Click(Sender: TObject);
    procedure EdHMatFimExit(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure EdHVespFimExit(Sender: TObject);
    procedure BitBtn12Click(Sender: TObject);
    procedure EdDescAjudExit(Sender: TObject);
    procedure EdTotAjudExit(Sender: TObject);
    procedure EdDateExit(Sender: TObject);
    procedure EDValorExit(Sender: TObject);
    procedure FBEquipPlacaBTNOPENExit(Sender: TObject);
    procedure FrmTabelaEDCodigoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FrmMotoristaEDCodigoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FrmEquipamentoExit(Sender: TObject);
    procedure FBEquipPlacaExit(Sender: TObject);
    procedure EDNumExit(Sender: TObject);
    procedure EDBoxExit(Sender: TObject);
    procedure EDCliente1Exit(Sender: TObject);
    procedure ExportarClick(Sender: TObject);
    procedure CBPagamentoExit(Sender: TObject);
    procedure DBGCTAKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BtnFiltrarClick(Sender: TObject);
    procedure ConsultaNDocFiscal1Click(Sender: TObject);
    procedure AlteraNDocFiscal1Click(Sender: TObject);
    procedure ReimprimirNF1Click(Sender: TObject);
    procedure CBFILTROClick(Sender: TObject);
    procedure CBORDEMClick(Sender: TObject);
    procedure EDBoxEnter(Sender: TObject);
    procedure EDNumEnter(Sender: TObject);
    procedure EDCliente1Enter(Sender: TObject);
    procedure EdNomeEnter(Sender: TObject);
    procedure EdNomeExit(Sender: TObject);
    procedure EdEquipamentoEnter(Sender: TObject);
    procedure EdEquipamentoExit(Sender: TObject);
    procedure EdClienteEnter(Sender: TObject);
    procedure EdClienteExit(Sender: TObject);
    procedure DBGridCadastroPadraoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid3KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid5KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBFuncKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBDTABERTKeyPress(Sender: TObject; var Key: Char);
    procedure DBDTPREVKeyPress(Sender: TObject; var Key: Char);
    procedure DBHRPREVKeyPress(Sender: TObject; var Key: Char);
    procedure DBHRABERTKeyPress(Sender: TObject; var Key: Char);
    procedure EdNomeKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdEquipamentoKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdClienteKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EDNumKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EDBoxKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure MEPlacaKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EDCliente1KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBDTABERTExit(Sender: TObject);
    procedure DBDTPREVExit(Sender: TObject);
    procedure DevoluoParcial1Click(Sender: TObject);
    procedure DBGrid7CellClick(Column: TColumn);
    procedure BtnDevolveItemClick(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure BtnDevolucaoClick(Sender: TObject);
    procedure DBGrid7DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid6DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid7KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid6KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DevoluoTotal1Click(Sender: TObject);
    procedure BtnSelecionaOrdemClick(Sender: TObject);
    procedure EDCodFabEnter(Sender: TObject);
    procedure EDCodFabKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid8CellClick(Column: TColumn);
    procedure DBGrid8DblClick(Sender: TObject);
    procedure DBGrid8KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Panel2Enter(Sender: TObject);

  private
    { Private declarations }
	 Procedure EscreveLabelsPROD; //Filtra as tabelas e escreve em edits e labels as informações dos produtos selecionado
	 Procedure LimpaLabelsPROD;	 //Limpa as labels de seleção de produto
	 Procedure LimpaLabelsSERV;	 //Limpa as labels de seleção de Serviço
	 Procedure LimpaLabelsDESP;	 //Limpa as labels de Despesas
	 Procedure EscreveLabelsSERV;	 //Limpa as labels de seleção de serviços
	 //seleciona forma de pagamento e vendedor de acordo com o cliente
	 Procedure SelectFormPag_Vendedor;
    //Limpa labels de despesa caso a empresa tiver cadastro de equipe
    Procedure LimpaLabelsEquipe;
    // CALCULA VALOR DA COMISSAO APOS EFETUAR DESCONTO NOS PRODUTOS DA ORDEM DE SERVICÇO
    Procedure CalculaComissaoProd;
    // CALCULA VALOR DA COMISSAO APOS EFETUAR DESCONTO NOS SERVICOS DA ORDEM DE SERVICO
    Procedure CalculaComissaoServ;
    // Quando eh informado o valor de desconto do total dos produtos em "%" eh efetuado calculo para cada produto da ordem
    Procedure CalcPercentProd;
    // PROCEDIMENTO PARA EXECUTAR EXPORTAÇÃO DE PRODUTOS DE ORDEM DE SERVIÇO PARA PEDIDO DE VENDA
    Procedure ExportaOrdServ;
    // Conecta banco de ddos para exportar Ordens
    Function ConectaBancoDados(XEndereco: string): boolean;
    Procedure LimpaCampos;
    // retorna o dia da semana por extenso
    Function Dia_Semana(XDia: integer): string;
    // calcula horas comerciais trabalhadas
    Function Calculo_HrsNormais(HorasComerciais : string; Valor: real): Real;
    // calcula horas extras trabalhadas
    Function Calculo_HrsExtra(HorasExtras: string): Real;
    // com regra de tres, calcula porcentagem da hora trabalhada
    Function Calculo_Porcentagem(Horas: string): Real;
    // Seleciona preço da tabela "TABELA_PRECO"  e informa ao edit o valor da hora cadastrado
    Function BuscaPreco: real;
    // Atualiza grid logo aps inserir servico
    Procedure AtualizaGrid_Servico;
    // limpa edits apos inserir servico
    Procedure LimpaEdits;
    // antes de gravar, eh feito uma sql para ver se nao esta sem nenhum item na grid
    Function VerificaItens: boolean;
    // busca dados do veiculo com servico
    Procedure BuscaDadosVeiculo;
    // soma o total da ordem de servico
    Function ValorTotal_OS: real;
    // Calcula Custo dos quilometros
    Function CalculaKm: real;
    // limpa as informações dos edits qdo for selecionar outro serviço, menos a data e hora de inicio
    Procedure Remove_Inf;
    // Calculo geral de horas comerciais e extras e o valor das horas
    Procedure CalculoGeral_Horas;
    // busca a quantidade minima das horas do servico cadastradas na tabela de preço
    Function QtdeMin_Servico: string;
    // calcula horario comercial e extra do periodo matutino
    Procedure CalculaHorarioMat;
    // calcula horario comercial e extra do periodo vespertino
    Procedure CalculaHorarioVesp;
    // ATUALIZA O VALOR DA COMISSÃO APOS FAZER A DEVOLUÇÃO PARCIAL
    Procedure AtualizaComissao;
    //Paulo 07/06/2011: Função utilizada para retornar o numero corrente para o pedido e incremantar na empresa
    Function RetornaNumOrdem: Integer;

  public
    { Public declarations }
    //Filtra Tabela Slave e calcula total
    Procedure FiltraSlave;
    //Fecha pedido (Atualiza estoque e joga no financeiro
    Function FechaOrd(CODPEDIDO: String; DTFECH: String) : Boolean;
    //FUNÇÃO QUE EFETUA CALCULO DE COMISSÃO BASEADO NO VALOR TOTAL DO PEDIDO E NÃO NA SOMA DO TOTAL DE PRODUTOS
    Function CalcComisTotVend: Boolean;
    //Função utilizada para cancelar/estornar todos os lançamentos emitidos por uma determinada OS
    Function CancelLanOrd(CodPedido: String):Boolean;
    // procura dados na tabela unidade tanto no banco local como o de fora e insere novos dads se necessario
    Function DadosUnidade: integer;
    // busca forma de pagamento, se necessario cadastra a nova forma
    Function Forma_Pagamento: integer;
    // verifica se jah existe o funcionario no banco de fora, e se na estiver jah cadastra na hora
    Function VerificaFuncionario(Atividade: String; Cod_funcionario: string): integer;
    // verifica se o cliente esta cadastrado no banco, se nao tiver jah cadastra na hora
    Function VerificaCliente(Cod_Cliente: integer): integer;
    // verifica se existe a cidade do cliente, se nao jah cadastra
    Function VerificaCidade: integer;
    // cadastra pessoa fisica
    Procedure CadastraPessoaF;
    // verifica se existe o estado, se nao tiver jah cadastra, caso cntrario apenas recolhe os dados importantes
    Function VerificaEstado: integer;
    // VERTIFICA A FORMA DE PAGAMENTO NO CADASTRO DO CLIENTE
    Function FormaPgto_Cliente: integer;
    // CADASTRO DE FUNCIONARIO
    Function CadastroFuncionario: integer;
    // imprimi relatorio de garantia dos produtos da ordem
    Procedure Imprime_Garantia;
    // função para calcular data de garantia
    Function Calcula_Garantia(Qtde, Tipo: string): TDateTime;
    // função para buscar os dados(R$) de KM tanto na tabela de preço qto na tabela servico
    Function DadosKM_Veiculo(Cod_equipamento: integer): real;
    // desabilita os campos para nao serem alterados enquanto nao for selecionado equipamento se o parametro for TRUE;
    Function DesabilitaCampos(Desabilita: boolean):boolean;
    // busca o motorista do equipamento
    Function Localiza_Motorista(Placa: string): boolean;
    // soma o total (R$) da quilometragem
    Function VlrTot_Km: real;
    // soma o total (R$) dos servicos
    Function VlrTot_Serv: real;
    // soma o total (R$) dos ajudantes
    Function VlrTot_Ajudante: real;
    // Calcula o desconto em porcentagem do total de KM
    Function CalculaDesc_KM: real;
    // Calcula o desconto em porcentagem do total em servico
    Function CalculaDesc_Serv: real;
    // Calcula o desconto em porcentagem do total dos ajudantes
    Function CalculaDesc_Ajud: real;
    // calcula a porcentagem de desconto do total da ordem de servico
    Procedure CalculaDescTotal;
    // retorna o dia da semana quando eh excluido um servico da ordem
    Function RetornaDiaSemana(Dia: TDateTime): string;
    // calcula o horario matutino dos ajudantes
    Procedure CalcHrMat_Ajudante;
    // calcula o horario vespertino dos ajudantes
    Procedure CalcHrVesp_Ajudante;
    // calcula o total dos horarios extra e comercais do ajudante
    Procedure CalculaHorario_Ajudante;
    // calcula hora extra do ajudante
    Function CalculaHrExtra_Ajudante(HorasExtra: string; ValorExtra: real): Real;
    // busca os funcionarios que foram selecionados para serem os ajudantes da Ordem de Servico
    Procedure BuscaFuncionarios;
    // filtra funcionarios, ajudantes e ordem de servico apos inserir os ajudantes na OS
    Procedure FiltraAjudante;
    // limpa edits do ajudante
    Procedure Limpa_EditAjudante;
    // retorna dia da semana
    Function DiaSemana(Data: string):string;
    // Calcula qulometragem pra relatorio da guinchomaq
    Procedure Rel_Quilomatragem;
    // Buscar tabela de preço atrelada ao cliente
    Procedure BuscarTabPreco;
    // ajusta o posicionamento do frmformpag, tamanho e posicionamento dos campos
    Procedure AjustaFormPag;
    // exporta as ordens de servico selecionadas para outro banco, gerando novas ordens com os mesmos produtos, servicos, funcionario, equipe, etc
    Procedure Exporta_OrdensServico;
    // VERIFICA SE NO BANCO DE FORA TEM A EQUIPE CADASTRADA JUNTO COM SEU RESPONSAVEL E FUNCIONARIO
    Function VerificaEquipe(Cod_equipe: string; Cod_responsavel: string): integer;
    // VERIFICA SE NO BANCO DE FORA ESTAH CADASTRADO O EQUIPAMENTO DA ORDEM, SE NAO TIVER JAH CADASTRA
    Function VerificaEquipamento(Cod_equipamento: string): integer;
    // procedimento para ordenar as ordens de servico em abertar e por box
    Procedure OrdenacaoOS;

    //Função que efetua a devolução total
    Function DevTotPed(XCod_PedDev: Integer):Boolean;
	 //Função que efetua a devolução Parcial
	 Function DevParcPed(XCod_PedDev: Integer): Boolean;
   //Filtra Tabela Slave e calcula total
	 Procedure FiltraSlaveDev;
   //Verifica se ordem possui documento fiscal na devolução para poder inserir no pedido de compra
   Procedure VerificaDocFisDevolucao;
   //Função utilizada para baixar contas do pedido p/ poder haver devolução total
  Function CancelaFinac:Boolean;

end;

var
  FOrdem: TFOrdem;
  //VARIAVEIS RESPONSÁVEIS POR ARMAZENAR OS VALORES DAS CHAVES PRIMÁRIAS E ESTRANGEIRAS UTILIZADAS NA ORDEM
  XCOD_ORDEM, XCOD_CLIENTE, XCOD_EQUIPAMENTO, XCOD_CONTABANCO, XCOD_VENDEDOR, XCOD_FUNCIONARIO, XCOD_FORMPAG, XCOD_CONTA, XCOD_CONTASERV: INTEGER;
  XCOD_ITPROD, XCOD_ITSERV, XCOD_ITDESP: INTEGER;
  XDATA: STRING;
  XHorasVesp, XHorasMat, XExtraMat, XExtraVesp: string; // armazena as horas normais e extras de trabalho do equipamento
  XHVesp, XHMat, XEMat, XEVesp: string; // armazena as horas normais e extras de trabalho do ajudante
  XResult : real; // armazena valores das horas calculadas para calculo
  XNum_Horas: String; // armazena as horas normais e extras para executar calculo financeiro
  XESTADO:STRING; //Controla o estado inserçao ou edição
  XLIBDESCPROD, XLIBMARGEMSEG: Boolean;//Variável que controla se foi liberado um desconto superior ao cadastrado para o produto
  XVLRCOMIS: REAL;// Armazena o Vlr da Comissão que o vendedor receberá no pedido
  XALIQCOMISS: REAL;// Armazena o percentual Total de comissão utilizado para caso haja mais de um comissionado
  XVLRTOTAL, XVLRTPROD, XVLRTSERV: REAL;// ARMARZENA VALOR TOTAL DO PEDIDO
  XLIBERA_MARK : Boolean; // se o campo for TRUE o campo MARK eh liberado na grid do funcionario
  XDiaSemana : integer; // recebe de retorno o numero q representa o dia da semana
  XTipoProc: Smallint; //0 = procura normal 1=procura pelo nome
  XPESPROD: Integer; // pesquisa de produto 1 - codigo de barra, 0 - controle interno, 2 - codigo do fabricante, 3 - descricao
  XNumOrdem: String;
  XCod_PedCompra :Integer;
  xPesquisaDesc, xPesquisaCtrlInt, xPesquisaCodFabr: Boolean;  

implementation

uses UDMEstoque, UDMPessoa, UCliente, Alxor32, UCadEquipamento,
  UFuncionario, UDMMacs, UMenu, AlxMessage, UProduto, UServico, UDMFinanc,
  UDMConta, UConsPlncta, UFormPag, UDMCaixa, UDMGEOGRAFIA, UDmBanco,
  UDMSaida, USenha, UComissionados, UDmServ, UOrcamento, UDMEntrada, DB,
  Alxorprn, UFiscal, UCadEquipe, UExpImp, UDMExporta, DateUtils,
  UPrecoServ, UConfigLoja, UPedidoPadrao, UMDO;

{$R *.DFM}

// busca a quantidade minima das horas do servico cadastradas na tabela de preço
Function TFOrdem.QtdeMin_Servico: string;
begin

    // seleciona qtde minima do servico cadastrado na tabela "ITENS_TABPRECO"
    DMServ.Alx.Close;
    DMServ.Alx.SQL.Clear;
    DMServ.Alx.SQL.Add(' select * from ITENS_TABPRECO where (itens_tabpreco.cod_tabpreco = :codigo) ');
    DMServ.Alx.SQL.Add(' AND (itens_tabpreco.cod_subserv = :cod_serv) ');
    DMServ.Alx.ParamByName('codigo').AsInteger := StrToInt(FrmTabela.EDCodigo.Text);
    DMServ.Alx.ParamByName('cod_serv').AsInteger := DMPESSOA.TEquip.FieldByname('cod_servico').AsInteger;
    DMServ.Alx.Open;

    If Not DMServ.Alx.IsEmpty Then
       Result := DMServ.Alx.FieldByname('QTDE_MIN').AsString
    Else
       Result := '00:00:00';
end;

// Calculo geral de horas comerciais e extras e o valor das horas
Procedure TFOrdem.CalculoGeral_Horas;
var
XHoras, XExtra: string;
begin

   // apenas repassando o total de horas registrada ate o momento p efetuar calculo
   XHoras := EDHNormais.Text;
   XExtra := EDHExtras.Text;

   // se o usuario selecionou o chech box eh pq os dados virão da tabela, por isso vai ser verificado a qtde min
   If CBPrecoTabela.Checked = true
   Then Begin
       // seleciona qtde minima do servico cadastrado na tabela "ITENS_TABPRECO"
       QtdeMin_Servico;

       // o numero de horas tem q ser inferior a quantidade minima de horas do serviço aplicado na tabela, o horario deve começar antes do fim do horario comercial e deve ter horas extras
       If (XHoras <> '00:00:00') and (StrToTime(XHoras) < StrToTime(IntToStr(DMServ.Alx.FieldByName('qtde_min').AsInteger))) and (XExtra <> '00:00:00') and (StrToTime(XExtra) < StrToTime(IntToStr(DMServ.Alx.FieldByName('qtde_min').AsInteger))) and ((StrToTime(XExtra) + StrToTime(XHoras)) < StrToTime(IntToStr(DMServ.Alx.FieldByName('qtde_min').AsInteger)))
       Then Begin
           XHoras := TimeToStr(StrToTime(IntToStr(DMServ.Alx.FieldByName('qtde_min').AsInteger)));
           XExtra := '00:00:00';
       End;

       // ou seja, se o numero de horas normais for menor do que a quantidade minima do servico registrado na TABELA DE PRECO, a mesma quantidade minima eh repassada para a variavel XHoras para ser feito o calculo
       If (StrToTime(XHoras) < StrToTime(IntToStr(DMServ.Alx.FieldByName('qtde_min').AsInteger))) and (XHoras <> '00:00:00') and (XExtra = '00:00:00')
       Then Begin
           XHoras := TimeToStr(StrToTime(IntToStr(DMServ.Alx.FieldByName('qtde_min').AsInteger)));
       End;

       // se o numero de horas extra for diferente de zero, e se for menor q a quantidade minima registrada e nao possui horas comerciais entao a quantidade minina de horas eh repassado p variavel XExtra
       If (StrToTime(XExtra) < StrToTime(IntToStr(DMServ.Alx.FieldByName('qtde_min').AsInteger))) and (XExtra <> '00:00:00') and (XHoras = '00:00:00')
       Then Begin
           XExtra := TimeToStr(StrToTime(IntToStr(DMServ.Alx.FieldByName('qtde_min').AsInteger)));
       End;

   End;

   // calculo financeiro das horas comerciais
   EDVlrNormal.Text := FormatFloat('0.00',Calculo_HrsNormais(XHoras, EDValor.ValueNumeric));

   // calculo financeiro das horas extras
   EDVlrExtra.Text := FormatFloat('0.00',Calculo_HrsExtra(XExtra));

   // total financeiro das horas normais e extras
   EdVlrTotalHrs.ValueNumeric := StrToFloat(EDVlrNormal.Text) + StrToFloat(EDVlrExtra.Text) ;
end;

// limpa as informações dos edits qdo for selecionar outro serviço, menos a data e hora de inicio
Procedure TFOrdem.Remove_Inf;
begin
   EDVlrExtra.Text := '0,00';
   EDVlrNormal.Text := '0,00';
   EDHExtras.Text := '';
   EDHNormais.Text := '';
//   EDHFim.Text := '';
   EDValor.Text := '';
   EdVlrTotalHrs.Text := '0,00';
end;

// Calcula Custo dos quilometros
Function TFOrdem.CalculaKm: real;
var
XAux: real;
begin
   If EDKMFinal.Text <> ''
   Then Begin
       If EDKMIni.Text = '' Then
           EDKMIni.Text := '0';

       // total de kilometros gastos
       EDKMTotal.Text := FloatToStr( StrToFloat(EDKMFinal.Text) - StrToFloat(EDKMIni.Text) );

       // se nao estiver selecionado para buscar da tabela, o totral de KM eh apenas repassado p variavel p fazer calculo financeiro
       XAux := StrToFloat(EdKmTotal.Text);

       // se o edit jah tiver o valor do kilometro, jah faz o total financeiro dos quilometros
       If EdVlrKm.Text <>''
       Then Begin
           EDFinancKm.ValueNumeric := StrToFloat(EdVlrKm.Text) * XAux;
       End;

       // soma o total da ordem de servico
       EdValorOrd.ValueNumeric := ValorTotal_OS;
   End;
end;

// soma o total da ordem de servico
Function TFOrdem.ValorTotal_OS: real;
begin
   // soma o total do KM e servico da ordem
   DMServ.TAlx3.Close;
   DMServ.TAlx3.SQL.Clear;
   DMServ.TAlx3.SQL.Add('select sum(itens_locacao.valortothrs) as total_servico, sum(itens_locacao.valortotkm) as total_km');
   DMServ.TAlx3.SQL.Add('from itens_locacao where itens_locacao.cod_ordem = :codigo');
   DMServ.TAlx3.ParamByName('codigo').AsInteger := XCOD_ORDEM;
   DMServ.TAlx3.Open;

   // total das horas e da kilometragem
   Result := DMServ.TAlx3.FieldByName('total_servico').AsCurrency + DMServ.TAlx3.FieldByName('total_km').AsCurrency;

end;

// atualiza grid logo apos inserir servico
Procedure TFOrdem.AtualizaGrid_Servico;
begin
   DMServ.TAlx2.Close;
   DMServ.TAlx2.SQL.Clear;
   DMServ.TAlx2.SQL.Add(' select equipamento.cod_equipamento, equipamento.descricao AS EQUIPAMENTO,');
   DMServ.TAlx2.SQL.Add(' pessoa.cod_pessoa, pessoa.nome,');
   DMServ.TAlx2.SQL.Add(' funcionario.cod_func, funcionario.cod_pessoa,');
   DMServ.TAlx2.SQL.Add(' itens_locacao.cod_locacao, itens_locacao.cod_servico, itens_locacao.dia_semana,');
   DMServ.TAlx2.SQL.Add(' itens_locacao.hora_minima, itens_locacao.cod_equipamento, itens_locacao.cod_motorista,');
   DMServ.TAlx2.SQL.Add(' itens_locacao.cod_ordem, itens_locacao.hrs_extras, itens_locacao.hrs_normais,');
   DMServ.TAlx2.SQL.Add(' itens_locacao.total_extra, itens_locacao.total_normal, itens_locacao.cod_tabpreco,');
   DMServ.TAlx2.SQL.Add(' itens_locacao.total_final, itens_locacao.VALORTOTKM, itens_locacao.data,');
   DMServ.TAlx2.SQL.Add(' subservico.cod_subservico, subservico.descricao AS SERVICO,');
   DMServ.TAlx2.SQL.Add(' tabela_preco.cod_tabelapreco, tabela_preco.descricao AS NOME_TABELA');
   DMServ.TAlx2.SQL.Add(' from itens_locacao');
   DMServ.TAlx2.SQL.Add(' left join equipamento on itens_locacao.cod_equipamento = equipamento.cod_equipamento');
   DMServ.TAlx2.SQL.Add(' left join funcionario on itens_locacao.cod_motorista = funcionario.cod_func');
   DMServ.TAlx2.SQL.Add(' left join pessoa on funcionario.cod_pessoa = pessoa.cod_pessoa');
   DMServ.TAlx2.SQL.Add(' left join subservico on itens_locacao.cod_servico = subservico.cod_subservico');
   DMServ.TAlx2.SQL.Add(' left join tabela_preco on itens_locacao.cod_tabpreco = tabela_preco.cod_tabelapreco');
   DMServ.TAlx2.SQL.Add('where itens_locacao.cod_ordem = :codigo');
   DMServ.TAlx2.ParamByName('codigo').AsInteger := XCOD_ORDEM;
   DMServ.TAlx2.Open;
end;

// busca dados do veiculo para servico e nao kilometragem
Procedure TFOrdem.BuscaDadosVeiculo;
begin

   // verifica se a tabela jah foi selecionada
   If (FrmTabela.EDCodigo.Text <> '') and (CBPrecoTabela.Checked = true)
   Then Begin
       DMServ.TAlx3.Close;
       DMServ.TAlx3.SQL.Clear;
       DMServ.TAlx3.SQL.Add(' select subservico.cod_subservico, subservico.cod_servico, subservico.VLR_NORMAL AS VLR_SUBSERV, subservico.vlr_extra,');
       DMServ.TAlx3.SQL.Add(' itens_tabpreco.cod_tabpreco, itens_tabpreco.cod_subserv, itens_tabpreco.vlr_normal AS VLR_ITENSTAB, itens_tabpreco.vlr_horaextra, ');
       DMServ.TAlx3.SQL.Add(' tabela_preco.cod_tabelapreco');
       DMServ.TAlx3.SQL.Add(' from tabela_preco ');
       DMServ.TAlx3.SQL.Add(' left join itens_tabpreco on tabela_preco.cod_tabelapreco = itens_tabpreco.cod_tabpreco');
       DMServ.TAlx3.SQL.Add(' left join subservico on itens_tabpreco.cod_subserv = subservico.cod_subservico ');
       DMServ.TAlx3.SQL.Add(' where (tabela_preco.cod_tabelapreco = :codigo) ');
       DMServ.TAlx3.SQL.Add(' and (subservico.cod_subservico = :Cod_SubServEquipamento) ');
       DMServ.TAlx3.ParamByName('Cod_SubServEquipamento').AsString := DMPESSOA.TEquip.FieldByName('cod_servico').AsString;
       DMServ.TAlx3.ParamByName('codigo').AsString := FrmTabela.EDCodigo.Text;
       DMServ.TAlx3.Open;

       If Not DMServ.TAlx3.IsEmpty
       Then Begin
           If (CBPrecoKm.Checked = true) and (FrmTabela.EDCodigo.Text <> '')
           Then Begin
               LVlrNormal.Caption := 'R$' + FloatToStrF(DMServ.TAlx3.FieldByname('VLR_ITENSTAB').AsCurrency, ffFixed, 4, 2);
               LVlrExtra.Caption := 'R$' + FloatToStrF(DMServ.TAlx3.FieldByname('vlr_horaextra').AsCurrency, ffFixed, 4, 2);
           End
           Else Begin
               LVlrNormal.Caption := 'R$ 0,00';
               LVlrExtra.Caption := 'R$ 0,00';
           End;
       End
       Else Begin
           LVlrNormal.Caption := 'R$ 0,00';
           LVlrExtra.Caption := 'R$ 0,00';
       End;
   End
   Else Begin

       DMServ.TAlx3.Close;
       DMServ.TAlx3.SQL.Clear;
       DMServ.TAlx3.SQL.Add(' select subservico.cod_subservico, subservico.cod_servico, subservico.VLR_NORMAL AS VLR_SUBSERV, subservico.vlr_extra');
       DMServ.TAlx3.SQL.Add(' from subservico where (subservico.cod_subservico = :Cod_SubServEquipamento)');
       DMServ.TAlx3.ParamByName('Cod_SubServEquipamento').AsString := DMPESSOA.TEquip.FieldByName('cod_servico').AsString;
       DMServ.TAlx3.Open;

       If Not DMServ.TAlx3.IsEmpty
       Then Begin
           LVlrNormal.Caption := 'R$' + FloatToStrF(DMServ.TAlx3.FieldByname('VLR_SUBSERV').AsCurrency, ffFixed, 4, 2);
           LVlrExtra.Caption := 'R$' + FloatToStrF(DMServ.TAlx3.FieldByname('vlr_extra').AsCurrency, ffFixed, 4, 2);
       End
       Else Begin
           LVlrNormal.Caption := 'R$ 0,00';
           LVlrExtra.Caption := 'R$ 0,00';
       End;
   End;

end;

// antes de gravar, eh feito uma sql para ver se nao esta sem nenhum item na grid
Function TFOrdem.VerificaItens: boolean;
begin
   DMSAIDA.TAlx.Close;
   DMSAIDA.TAlx.SQL.Clear;
   DMSAIDA.TAlx.SQL.Add('select * from itens_locacao where itens_locacao.cod_ordem = :codigo');
   DMSAIDA.TAlx.ParamByName('codigo').AsInteger := XCOD_ORDEM;
   DMSAIDA.TAlx.Open;

   // filtra table ajudante
   FiltraTabela(DMPESSOA.TAjudante,'ajudante','cod_ordem',IntToStr(XCOD_ORDEM),'');

   If (DMSAIDA.TAlx.IsEmpty) and (DMPESSOA.TAjudante.IsEmpty) Then
       Result := false
   Else
       Result := true;

end;

// limpa edits apos inserir servico
Procedure TFOrdem.LimpaEdits;
begin
   EdPlaca.Text := '';
   EdEquip.Text := '';
   //FrmMotorista.EdDescricao.Text := '';
  // FrmMotorista.EDCodigo.Text := '';
   EDHrMin.Text := '';
   EDHNormais.Text := '';
   EDHExtras.Text := '';
   EDVlrNormal.Text := '';
   EDVlrExtra.Text := '';
   EDKMIni.Text := '';
   EDKMFinal.Text := '';
   EdKmTotal.Text := '';
   EdVlrKm.Text := '0,00';
   EdFinancKm.Text := '0,00';
   EDValor.Text := '';
   EDData.Text := '';
   HMatIni.Text := '';
   HMatFim.Text := '';
   HVespIni.Text := '';
   HVespFim.Text := '';
   EDVlrTotalHrs.Text := '';
   XHorasMat := '00:00:00';
   XExtraMat := '00:00:00';
   XHorasVesp := '00:00:00';
   XExtraVesp := '00:00:00';
   XHMat:= '00:00:00';
   XEMat:= '00:00:00';
   XEVesp:= '00:00:00';
   XHVesp:= '00:00:00';
   LVlrNormal.Caption := '';
   LVlrExtra.Caption := '';

   // se caso tiver a tabela selecionada, os dois check box são ativados novamente
   If FrmTabela.EdDescricao.Text <> ''
   Then Begin
       CBPrecoKm.Checked := true;
       CBPrecoTabela.Checked := true;
   End;

end;


// seleciona valor da tabela "ITENS_TABPRECO"
Function TFOrdem.BuscaPreco: real;
begin
   // ou seja, soh entra na condição se o usuario jah selecionou a tabela
   If FrmTabela.EDCodigo.Text <> ''
   Then Begin

       If FiltraTabela(DMPESSOA.TEquip,'EQUIPAMENTO','PLACA',EdPlaca.Text,'') = TRUE
       Then Begin
           // apena seleciona os dados da tabela subservico. A variavel "XCOD_SERVICO" foi usada para selecionar o subserviço, ai ela contem o cod_subservico
           DMServ.TSubserv.Close;
           DMServ.TSubserv.SQL.Clear;
           DMServ.TSubserv.SQL.Add('select * from subservico where subservico.cod_subservico = :codigo');
           DMServ.TSubserv.ParamByName('codigo').AsInteger := DMPESSOA.TEquip.FieldByname('cod_servico').AsInteger;
           DMServ.TSubserv.Open;

           // seleciona valor final do servico cadastrado na tabela "ITENS_TABPRECO"
           DMServ.Alx.Close;
           DMServ.Alx.SQL.Clear;
           DMServ.Alx.SQL.Add(' select * from ITENS_TABPRECO where (itens_tabpreco.cod_tabpreco = :codigo) ');
           DMServ.Alx.SQL.Add(' AND (itens_tabpreco.cod_subserv = :cod_serv) ');
           DMServ.Alx.ParamByName('codigo').AsInteger := StrToInt(FrmTabela.EDCodigo.Text);
           DMServ.Alx.ParamByName('cod_serv').AsInteger := DMPESSOA.TEquip.FieldByname('cod_servico').AsInteger;
           DMServ.Alx.Open;

           If Not DMServ.Alx.IsEmpty Then
               Result := StrToFloat(FormatFloat('#,##0.00',DMServ.Alx.FieldByname('VLR_NORMAL').AsCurrency))
           Else
               Result := 0;
       End;
   End;
end;

// com regra de tres, calcula porcentagem da hora trabalhada
Function TFOrdem.Calculo_Porcentagem(Horas: string): Real;
begin
   Result := ((StrToInt(Horas) * 100) / 60)/100;
end;

// calcula horas extras trabalhadas
Function TFOrdem.Calculo_HrsExtra(HorasExtras: string): Real;
begin
   XResult := 0;

   If HorasExtras <> '00:00:00'
   Then begin

       // copia apenas as horas, separando os minutos
       XNum_Horas := copy(HorasExtras,0,2);

       // seleciona valor da tabela "ITENS_TABPRECO"
       BuscaPreco;

       // primeiro busca valor da hora extra na Tabela de Preço, e se nao tiver então busca no SubServico
       If (FrmTabela.EdDescricao.Text <> '') and (CBPrecoTabela.Checked = true)
       Then Begin
           If DMServ.Alx.FieldByName('VLR_HORAEXTRA').AsString <> ''
           Then Begin
               XResult := StrToInt(XNum_Horas) * DMServ.Alx.FieldByName('VLR_HORAEXTRA').AsCurrency;
               LVlrExtra.Caption := 'R$' + FloatToStrF(DMServ.Alx.FieldByName('VLR_HORAEXTRA').AsCurrency, ffFixed, 4, 2);
           End
           Else Begin
               XResult := 0;
               LVlrExtra.Caption := 'R$' + FloatToStrF(0, ffFixed, 4, 2);
           End;
       End
       Else Begin
           XResult := StrToInt(XNum_Horas) * DMSERV.WSubserv.FieldByName('vlr_extra').AsCurrency;
           LVlrExtra.Caption := 'R$' + FloatToStrF(DMSERV.WSubserv.FieldByName('vlr_extra').AsCurrency, ffFixed, 4, 2);
       End;

       // copia apenas os minutos da hora extra
       XNum_Horas := COPY(HorasExtras,4,2);

       // faz o calculo final dos minutos vezes o valor + o valor parcial das horas
       If XNum_Horas <> '00'
       Then Begin
           // retorna porcentagem dos minutos
           XVLRTSERV := Calculo_Porcentagem(XNum_Horas);

           // ou seja, se estiver vazio eh pq o servico nao foi cadastrado na tabela de preço, por isso o valor vai vir direto da tabela SubServico
           If (FrmTabela.EdDescricao.Text <> '') and (CBPrecoTabela.Checked = true)
           Then Begin
               // pega valor da hora extra dos ITENS_TABPRECO
               Result := XResult + ( XVLRTSERV * DMServ.Alx.FieldByName('VLR_HORAEXTRA').AsCurrency );
               Exit;
           End
           Else Begin
               Result := XResult + ( XVLRTSERV * DMSERV.WSubserv.FieldByName('vlr_extra').AsCurrency );
               Exit;
           End;
       End;

       Result := XResult;
   End;
end;

// calcula horas comerciais trabalhadas
Function TFOrdem.Calculo_HrsNormais(HorasComerciais : string; Valor: real): Real;
begin

   XResult := 0;

   If HorasComerciais <> '00:00:00'
   Then Begin
       // copia apenas as horas, separando os minutos
       XNum_Horas := copy(HorasComerciais,0,2);

       // valor parcial das horas trabalhadas
       XResult := (StrToInt(XNum_Horas) * Valor);

       // copia apenas os minutos
       XNum_Horas := COPY(HorasComerciais,4,2);

       // faz o calculo final dos minutos vezes o valor + o valor parcial das horas
       If XNum_Horas <> ''
       Then Begin
           // retorna porcentagem dos minutos
           XVLRTSERV := Calculo_Porcentagem(XNum_Horas);

           Result := XResult + ( XVLRTSERV * Valor);
       End
       Else Begin
           Result := 0;
       End;
   End
   Else Begin
       Result := 0;
   End;
end;

//seleciona forma de pagamento e vendedor de acordo com o cliente
Procedure TFOrdem.SelectFormPag_Vendedor;
Begin
           //Insere forma de pagamento para o cliente
           If DMPESSOA.TCliente.FieldByName('COD_FORMPAG').AsInteger<>-1
           Then Begin
               If FiltraTabela(DMFINANC.TFormPag, 'FORMPAG', 'COD_FORMPAG', DMPESSOA.TCliente.FieldByName('COD_FORMPAG').AsString, '')=True
               Then Begin
                   XCOD_FORMPAG:=DMFINANC.TFormPag.FieldByname('COD_FORMPAG').AsInteger;
                   FrmFormPag1.EDCodigo.Text:=DMFINANC.TFormPag.FieldByname('COD_FORMPAG').AsString;
                   FrmFormPag1.EdDescricao.Text:=DMFINANC.TFormPag.FieldByname('DESCRICAO').AsString;
             	End
             	Else Begin
                   XCOD_FORMPAG:=-1;
                   FrmFormPag1.EDCodigo.Text:='';
                   FrmFormPag1.EdDescricao.Text:='';
               End;
           End
           Else Begin
               XCOD_FORMPAG:=-1;
               FrmFormPag1.EDCodigo.Text:='';
               FrmFormPag1.EdDescricao.Text:='';
           End;
           //Insere VENDEDOR para o cliente
           If DMPESSOA.TCliente.FieldByName('COD_VENDEDOR').AsInteger<>-1
           Then Begin
               If FiltraTabela(DMPESSOA.VWFuncionario, 'VWFUNCIONARIO', 'COD_FUNC', DMPESSOA.TCliente.FieldByName('COD_VENDEDOR').AsString, '')=True
               Then Begin
                   XCOD_VENDEDOR:=DMPESSOA.VWFuncionario.FieldByname('COD_FUNC').AsInteger;
                   FrmVendedor.EDCodigo.Text:=DMPESSOA.VWFuncionario.FieldByname('COD_FUNC').AsString;
                   FrmVendedor.EdDescricao.Text:=DMPESSOA.VWFuncionario.FieldByname('NOME').AsString;

                   If DMMACS.TLoja.FieldByName('ATIVIDADE').AsString = 'EQUIPE'
                   Then Begin
                       XCOD_FUNCIONARIO := DMPESSOA.VWFuncionario.FieldByname('COD_FUNC').AsInteger;
                       FrmResponsavel.EdDescricao.Text := DMPESSOA.VWFuncionario.FieldByname('NOME').AsString;
                       FrmResponsavel.EDCodigo.Text := DMPESSOA.VWFuncionario.FieldByname('COD_FUNC').AsString;
                   End;

               End
               Else Begin
                   XCOD_VENDEDOR:=-1;
                   XCOD_FUNCIONARIO := -1;
                   FrmVendedor.EDCodigo.Text:='';
                   FrmVendedor.EdDescricao.Text:='';
                   FrmResponsavel.EdDescricao.Text := '';
                   FrmResponsavel.EDCodigo.Text := '';
               end;
           End
           Else Begin
	           XCOD_VENDEDOR:=-1;
              FrmVendedor.EDCodigo.Text:='';
              FrmVendedor.EdDescricao.Text:='';
           End;



End;

// retorna o dia da semana por extenso
Function TFOrdem.Dia_Semana(XDia: integer): string;
begin
   Case XDia of
       1 : Result := 'Dom';
       2 : Result := 'Seg';
       3 : Result := 'Ter';
       4 : Result := 'Qua';
       5 : Result := 'Qui';
       6 : Result := 'Sex';
       7 : Result := 'Sáb';
   end;

end;

// limpa todos os campos do painel PLocacao
Procedure TFOrdem.LimpaCampos;
begin
   EDCodigoCli.Text := '';
   EdDescricaoCli.Text := '';
   FrmTabela.EDCodigo.Text := '';
   FrmTabela.EdDescricao.Text := '';
   CBPrecoKm.Checked := false;
   CBPrecoTabela.Checked := false;
   EDPlaca.Text := '';
   EDEquip.Text := '';
   EDCodPag.Text := '';
   EDDescPag.Text := '';
   EDKmIni.Text := '';
   EDKmFinal.Text := '';
   EdVlrKm.Text := '';
   EDFinancKM.Text := '';
   EDKmTotal.Text := '';
   EDData.Text := '';
   FrmEquipamento.EdDescricao.Text := '';
   FrmEquipamento.EDCodigo.Text := '';
   HMatIni.Text := '';
   HMatFim.Text := '';
   HVespIni.Text := '';
   HVespFim.Text := '';
   FrmMotorista.EdDescricao.Text := '';
   FrmMotorista.EDCodigo.Text := '';
   MObservacao.Text := '';
   EdDescKm.Text := '0,00';
   EdTotKm.Text := '0,00';
   EdDescServico.Text := '0,00';
   EdTotServ.Text := '0,00';
   EdDescAjud.Text := '0,00';
   EdTotAjud.Text := '0,00';
   EdDescontoTot.Text := '0,00';
   EdTotOrd.Text := '0,00';

end;

//FUNÇÃO QUE EFETUA CALCULO DE COMISSÃO BASEADO NO VALOR TOTAL DO PEDIDO E NÃO NA SOMA DO TOTAL DE PRODUTOS
Function TFORDEM.CalcComisTotVend: Boolean;
Begin
   //VERIFICA SE EXISTE ALGUM COMISSIONADO PARA A ORDEM
   DMFINANC.TAlx.Close;
   DMFINANC.TAlx.SQL.Clear;
   DMFINANC.TAlx.SQL.Add(' Select *  from comissao ');
   DMFINANC.TAlx.SQL.Add(' Where (comissao.gerador=:GERADOR) AND (comissao.cod_gerador=:CODGERADOR) ');
	DMFINANC.TAlx.ParamByName('GERADOR').AsString:='ORDEM';
	DMFINANC.TAlx.ParamByName('CODGERADOR').AsInteger:=XCOD_ORDEM;
   DMFINANC.TAlx.Open;

   DMFINANC.TSlctComis.Close;
   DMFINANC.TSlctComis.SQL.Clear;
   DMFINANC.TSlctComis.SQL.Add(' Select SUM(comissao.perprod) as PERPROD, SUM(comissao.vlrcomisprod) AS COMISPROD, ');
   DMFINANC.TSlctComis.SQL.Add('        SUM(comissao.perserv) as PERSERV, SUM(comissao.vlrcomisserv) AS COMISSERV ');
   DMFINANC.TSlctComis.SQL.Add(' from comissao ');
   DMFINANC.TSlctComis.SQL.Add(' Where (comissao.gerador=:GERADOR) AND (comissao.cod_gerador=:CODGERADOR) ');
	DMFINANC.TSlctComis.ParamByName('GERADOR').AsString:='ORDEM';
	DMFINANC.TSlctComis.ParamByName('CODGERADOR').AsInteger:=XCOD_ORDEM;
   DMFINANC.TSlctComis.Open;
   XVLRCOMIS:=DMFINANC.TSlctComis.FieldByName('COMISPROD').AsCurrency+DMFINANC.TSlctComis.FieldByName('COMISSERV').AsCurrency;;
   If (DMFINANC.TAlx.IsEmpty)
   Then Begin
       If XCOD_VENDEDOR > 0
       Then Begin
           FiltraTabela(DMServ.TPOrd,'ITPRODORD','COD_ORDEM',IntToStr(XCOD_ORDEM),'');

           DMServ.TPOrd.First;

           //se a tabela estiver vazia significa que não existe comissionado
           If XVLRTOTAL<>0
           Then Begin
               While Not DMServ.TPOrd.Eof Do
               Begin

                   // filtra estoque para buscar os valores das porcentagens das comissoes
                   FiltraTabela(DMESTOQUE.Alx4,'ESTOQUE','COD_ESTOQUE',DMServ.TPOrd.FieldByname('cod_estoque').AsString,'');

                       // se na loja esta configurado p buscar preço somente a prazo
                       If DMMACS.TLoja.FieldByName('TIPOVENDA').AsString = '1'
                       Then Begin
                           // se na loja esta configurado p buscar do funcionario
                           If (DMMACS.TLoja.FieldByName('COMISSPRODCADPROD').AsString = '0')
                           Then Begin
                               // DADOS DA TABELA FUNCARGO QUE SERÃO UTILIZADAS PARA OS CALCULOS ABAIXO
                               FiltraTabela(DMPESSOA.TFunCargo,'FUNCARGO','COD_FUNCIONARIO',IntToStr(XCOD_VENDEDOR),'');

                               DMPESSOA.TFunCargo.Last;//VAI P/ O ULTIMO CARGO CADASTRADO

                               //FORMA DE PAGAMENTO À PRAZO É CALCULA COMISSÃO REFERENTE A VISTA
                               XVLRCOMIS := XVLRCOMIS + (DMServ.TPOrd.fieldByName('TOTAL').AsCurrency*DMPESSOA.TFunCargo.FieldByName('COMISSAO_VPPRO').AsCurrency)/100;
                           End
                           Else Begin
                               //FORMA DE PAGAMENTO À PRAZO É CALCULA COMISSÃO REFERENTE A PRAZO
                               XVLRCOMIS := XVLRCOMIS + (DMServ.TPOrd.fieldByName('TOTAL').AsCurrency * DMESTOQUE.Alx4.FieldByName('CVPPROVAR').AsCurrency) /100;
                           End;
                       End
                       Else Begin
                           // se na loja esta configurado p buscar do funcionario
                           If (DMMACS.TLoja.FieldByName('COMISSPRODCADPROD').AsString = '0')
                           Then Begin
                               // DADOS DA TABELA FUNCARGO QUE SERÃO UTILIZADAS PARA OS CALCULOS ABAIXO
                               FiltraTabela(DMPESSOA.TFunCargo,'FUNCARGO','COD_FUNCIONARIO',IntToStr(XCOD_VENDEDOR),'');

                               DMPESSOA.TFunCargo.Last;//VAI P/ O ULTIMO CARGO CADASTRADO

                               // sse a forma de pagamento for a vista
                               If FrmFormPag1.EdDescricao.Text = 'À VISTA'
                               Then Begin
                                   //FORMA DE PAGAMENTO À PRAZO É CALCULA COMISSÃO REFERENTE A VISTA
                                   XVLRCOMIS := XVLRCOMIS + (DMServ.TPOrd.fieldByName('TOTAL').AsCurrency*DMPESSOA.TFunCargo.FieldByName('COMISSAO_VVPRO').AsCurrency)/100;
                               End
                               Else Begin
                                   //FORMA DE PAGAMENTO À PRAZO É CALCULA COMISSÃO REFERENTE A PRAZO
                                   XVLRCOMIS := XVLRCOMIS + (DMServ.TPOrd.fieldByName('TOTAL').AsCurrency*DMPESSOA.TFunCargo.FieldByName('COMISSAO_VPPRO').AsCurrency)/100;
                               End;
                           End
                           Else Begin
                               // sse a forma de pagamento for a vista
                               If FrmFormPag1.EdDescricao.Text = 'À VISTA'
                               Then Begin
                                   //FORMA DE PAGAMENTO À PRAZO É CALCULA COMISSÃO REFERENTE A VISTA
                                   XVLRCOMIS := XVLRCOMIS + (DMServ.TPOrd.fieldByName('TOTAL').AsCurrency * DMESTOQUE.Alx4.FieldByName('CVVPROVAR').AsCurrency) /100;
                               End
                               Else Begin
                                   //FORMA DE PAGAMENTO À PRAZO É CALCULA COMISSÃO REFERENTE A PRAZO
                                   XVLRCOMIS := XVLRCOMIS + (DMServ.TPOrd.fieldByName('TOTAL').AsCurrency * DMESTOQUE.Alx4.FieldByName('CVPPROVAR').AsCurrency) /100;
                               End;
                           End;
                       End;
               // proximo item da ordem de serviço
               DMServ.TPOrd.Next;
               End;

               // TODOS OS SERVIÇOS DA ORDEM
               FiltraTabela(DMServ.TSOrd,'ITSERVORD','COD_ORDEM',IntToStr(XCOD_ORDEM),'');

               DMServ.TSOrd.First;

               // PERCORRE TODOS OS SERVIÇOS DA ORDEM DE SERVIÇO
               While not DMServ.TSOrd.Eof do
               Begin

                   // DADOS DA TABELA FUNCARGO QUE SERÃO UTILIZADAS PARA OS CALCULOS ABAIXO
                   If FiltraTabela(DMPESSOA.TFunCargo,'FUNCARGO','COD_FUNCIONARIO',IntToStr(XCOD_VENDEDOR),'') = true
                   Then Begin
                       DMPESSOA.TFunCargo.Last;//VAI P/ O ULTIMO CARGO CADASTRADO

                       If FrmFormPag1.EdDescricao.Text = 'À VISTA'
                       Then Begin
                           //FORMA DE PAGAMENTO À vista
                           XVLRCOMIS := XVLRCOMIS + ((DMSERV.TSOrd.FieldByName('TOTAL').AsCurrency) * DMPESSOA.TFunCargo.FieldByName('COMISSAO_VVSER').AsCurrency)/100;
                       End
                       Else Begin
                           //FORMA DE PAGAMENTO À prazo
                           XVLRCOMIS := XVLRCOMIS + ((DMSERV.TSOrd.FieldByName('TOTAL').AsCurrency) * DMPESSOA.TFunCargo.FieldByName('COMISSAO_VPSER').AsCurrency)/100;
                       End;
                   End;
               // proximo serviço
               DMServ.TSOrd.Next;
               End;
           End
           Else Begin
               XVLRCOMIS:=0;
           End;
       End;
   End;
	LVlrComissao.Caption:='Vlr. Comissão..: '+FormatFloat('###,##0.00', XVLRCOMIS);

End;

//Fecha Ordem(joga no financeiro)
Function TFOrdem.FechaOrd(CODPEDIDO: String; DTFECH: String) : Boolean;
Var
	ATUFINANC: Boolean; //controle financeiro foram efetivados
   XVLRDESP:Real;//O VLR DAS DESPESAS É DIV POR DOIS ENTRE PROD E SERV.
Begin

	//inicializa as variaveis como true, caso encontre erro na passagem da função eslas passaram a false
   FechaOrd:=True;
   ATUFINANC:=True;
     // Tenta filtrar a ordem
     If FiltraTabela(XTabela, XSQLTABELA, XPkTabela, XView.FieldByName('COD_ORDEM').AsString, '') = True
     Then Begin
         XVLRDESP:=XTabela.FIELDBYNAME('TOTDESP').AsCurrency/2;
         //Filtra loja
         FiltraTabela(DMMacs.TLoja, 'LOJA', 'COD_LOJA', FMenu.LCODLOJA.Caption, '');

         //***********************************************
         // INICIO DE PROCESSO PARA CONTROLE FINANCEIRO **
         //***********************************************

             //*********************
             // ATUALIZA COMISSÃO **
             //*********************

             //VERIFICA SE EXISTE ALGUM COMISSIONADO PARA O PEDIDO
             TRY
                 DMFINANC.TAlx.Close;
                 DMFINANC.TAlx.SQL.Clear;
                 DMFINANC.TAlx.SQL.Add(' Select *  from comissao ');
                 DMFINANC.TAlx.SQL.Add(' Where (comissao.gerador=:GERADOR) AND (comissao.cod_gerador=:CODGERADOR) ');
                 DMFINANC.TAlx.ParamByName('GERADOR').AsString:='ORDEM';
                 DMFINANC.TAlx.ParamByName('CODGERADOR').AsInteger:=StrToInt(CODPEDIDO);
                 DMFINANC.TAlx.Open;
                 If (DMFINANC.TAlx.IsEmpty) and  (DMMACS.TLoja.FieldByName('ATIVIDADE').AsString <> 'EQUIPE')
                 Then Begin
                     //Não foi encontrada nenhuma comissão gerada para este pedido esta deve ser feita automaticamente para o vendedor selecinado em pedido
                     //INSERE O COMISSIONADO
                     XCODPKCOMIS:=InserReg(DMFINANC.TComis, 'COMISSAO', 'COD_COMISSAO');
                     DMFINANC.TComis.FieldByName('COD_COMISSAO').AsInteger:=XCODPKCOMIS;
                     DMFINANC.TComis.FieldByName('COD_GERADOR').AsInteger:=StrToInt(CODPEDIDO);
                     DMFINANC.TComis.FieldByName('GERADOR').AsString:='ORDEM';
                     DMFINANC.TComis.FieldByName('COD_FUNCIONARIO').AsInteger:=XTabela.FieldByName('COD_VENDEDOR').AsInteger;
                     //Filtra Forma de Pagamento
                     FiltraTabela(DMFinanc.TFormPag, 'FORMPAG', 'COD_FORMPAG', XTabela.FieldByName('COD_FORMPAG').AsString, '');
                     FiltraTabela(DMPESSOA.TFunCargo, 'FUNCARGO', 'COD_FUNCIONARIO', XTabela.FieldByName('COD_VENDEDOR').AsString, '');
                     DMPESSOA.TFunCargo.Last;
                     If (XTabela.FieldByName('TOTPROD').AsCurrency+XTabela.FieldByName('TOTSERV').AsCurrency)=(XTabela.FieldByName('TOTORD').AsCurrency-XTabela.FieldByName('TOTDESP').AsCurrency)
                     Then Begin

                         // total da ordem de servico dos produtos
                         DMESTOQUE.Alx1.Close;
                         DMESTOQUE.Alx1.SQL.Clear;
                         DMESTOQUE.Alx1.SQL.Add('select sum(itprodord.total) as TOTAL from itprodord');
                         DMESTOQUE.Alx1.SQL.Add('where itprodord.cod_ordem = :codigo');
                         DMESTOQUE.Alx1.ParamByName('codigo').AsInteger := XCOD_ORDEM;
                         DMESTOQUE.Alx1.Open;

                         // total da comissao da ordem de serviço dos produtos
                         DMServ.Alx.Close;
                         DMServ.Alx.SQL.Clear;
                         DMServ.Alx.SQL.Add('select sum(itprodord.comissao) as TOTAL_COMIS from itprodord');
                         DMServ.Alx.SQL.Add('where itprodord.cod_ordem = :codigo');
                         DMServ.Alx.ParamByName('codigo').AsInteger := DMServ.WOrdem.FieldByname('cod_ordem').AsInteger;
                         DMServ.Alx.Open;

                         // valor da comissao dos produtos
                         DMFINANC.TComis.FieldByName('VLRCOMISPROD').AsCurrency:= DMServ.Alx.FieldByName('TOTAL_COMIS').AsCurrency;

                         // PORCENTAGEM DA COMISSAO REFERENTE AOS PRODUTOS
                         If (DMServ.Alx.FieldByname('TOTAL_COMIS').AsCurrency <> 0) and (DMESTOQUE.Alx1.FieldByname('TOTAL').AsCurrency <> 0) Then
                             DMFINANC.TComis.FieldByName('PERPROD').AsCurrency:= (DMServ.Alx.FieldByname('TOTAL_COMIS').AsCurrency * 100)/DMESTOQUE.Alx1.FieldByname('TOTAL').AsCurrency
                         Else
                             DMFINANC.TComis.FieldByName('PERPROD').AsCurrency:=0;

                         // total da ordem de servico dos servicos
                         DMESTOQUE.Alx1.Close;
                         DMESTOQUE.Alx1.SQL.Clear;
                         DMESTOQUE.Alx1.SQL.Add('select sum(ITSERVORD.total) as TOTAL from ITSERVORD');
                         DMESTOQUE.Alx1.SQL.Add('where ITSERVORD.cod_ordem = :codigo');
                         DMESTOQUE.Alx1.ParamByName('codigo').AsInteger := XCOD_ORDEM;
                         DMESTOQUE.Alx1.Open;

                         // total da comissao da ordem de serviço dos servicos
                         DMServ.Alx.Close;
                         DMServ.Alx.SQL.Clear;
                         DMServ.Alx.SQL.Add('select sum(ITSERVORD.comissao) as TOTAL_COMIS from ITSERVORD');
                         DMServ.Alx.SQL.Add('where ITSERVORD.cod_ordem = :codigo');
                         DMServ.Alx.ParamByName('codigo').AsInteger := DMServ.WOrdem.FieldByname('cod_ordem').AsInteger;
                         DMServ.Alx.Open;

                         If (DMServ.Alx.FieldByname('TOTAL_COMIS').AsCurrency <> 0) and (DMESTOQUE.Alx1.FieldByname('TOTAL').AsCurrency <> 0) Then
                             DMFINANC.TComis.FieldByName('PERSERV').AsCurrency:= (DMServ.Alx.FieldByname('TOTAL_COMIS').AsCurrency * 100)/DMESTOQUE.Alx1.FieldByname('TOTAL').AsCurrency
                         Else
                             DMFINANC.TComis.FieldByName('PERSERV').AsCurrency:= 0;

                         DMFINANC.TComis.FieldByName('VLRPROD').AsCurrency:=XTabela.FieldByName('TOTPROD').AsCurrency;

                         DMFINANC.TComis.FieldByName('VLRSERV').AsCurrency:=XTabela.FieldByName('TOTSERV').AsCurrency;

                         XVLRCOMIS := 0;

                         // se a ordem de servico possuir servico, entra na condição
                         If FiltraTabela(DMServ.TSOrd,'itservord','COD_ORDEM',DMServ.WOrdem.FieldByname('cod_ordem').AsString,'') = true
                         Then Begin

                             // se a forma de pagamento for a vista, a comissao do funcionario sera referente ao valor da porcentagem cadastrada como a vista
                             If DMFinanc.TFormPag.FieldByName('DESCRICAO').AsString='À VISTA'
                             Then Begin
                                 XVLRCOMIS :=  XVLRCOMIS + (XTabela.FieldByName('TOTSERV').AsCurrency* DMPESSOA.TFunCargo.FieldByName('COMISSAO_VVSER').AsCurrency)/100;
                             End
                             Else Begin
                                 XVLRCOMIS :=  XVLRCOMIS + (XTabela.FieldByName('TOTSERV').AsCurrency* DMPESSOA.TFunCargo.FieldByName('COMISSAO_VPSER').AsCurrency)/100;
                             End;

                             DMFINANC.TComis.FieldByName('VLRCOMISSERV').AsCurrency:= XVLRCOMIS;
                         End;
                     End
                     Else Begin
                         //Neste caso o sistema irá calcular a comissão de acordo com o total da ordem e a comissão do funcionario para produtos
                         If DMFinanc.TFormPag.FieldByName('DESCRICAO').AsString='À VISTA'
                         Then Begin// caso feito à vista deve-se lançar o valor direto no caixa
                             DMFINANC.TComis.FieldByName('PERPROD').AsCurrency:=DMPESSOA.TFunCargo.FieldByName('COMISSAO_VVPRO').AsCurrency;
                         End
                         Else Begin
                             DMFINANC.TComis.FieldByName('PERPROD').AsCurrency:=DMPESSOA.TFunCargo.FieldByName('COMISSAO_VPPRO').AsCurrency;
                         End;
                         DMFINANC.TComis.FieldByName('VLRPROD').AsCurrency:=XTabela.FieldByName('TOTORD').AsCurrency;

                         // se a forma de pagamento for a vista, a comissao do funcionario sera referente ao valor da porcentagem cadastrada como a vista
                         If DMFinanc.TFormPag.FieldByName('DESCRICAO').AsString='À VISTA'
                         Then Begin
                             DMFINANC.TComis.FieldByName('VLRCOMISPROD').AsCurrency:=(XTabela.FieldByName('TOTORD').AsCurrency* DMPESSOA.TFunCargo.FieldByName('COMISSAO_VVPRO').AsCurrency)/100;
                         End
                         Else Begin
                             DMFINANC.TComis.FieldByName('VLRCOMISPROD').AsCurrency:=(XTabela.FieldByName('TOTORD').AsCurrency* DMPESSOA.TFunCargo.FieldByName('COMISSAO_VPPRO').AsCurrency)/100;
                         End;
                     End;
                     DMFINANC.TComis.Post;
                     DMFINANC.Transaction.CommitRetaining;
                 End;
             Except
                 Mensagem('INFORMAÇÃO AO USUÁRIO', 'Problemas ao gerar comissão', '', 1, 1, false, 'a');
                 ATUFINANC:=False;
                 DMCAIXA.IBT.RollbackRetaining;
                 XTransaction.RollbackRetaining;
                 DMFINANC.Transaction.RollbackRetaining;
                 exit;
             End;

       //Filtra cliente
		FiltraTabela(DMPESSOA.WCliente, 'VWCLIENTE', 'COD_CLIENTE', XTabela.FIELDBYNAME('COD_CLIENTE').AsString, '');
       If (CBGeraFinanceiro.Checked=False)
       Then Begin
           //Filtra Forma de Pagamento
           If FiltraTabela(DMFinanc.TFormPag, 'FORMPAG', 'COD_FORMPAG', IntToStr(XCOD_FORMPAG), '') = True
           Then Begin // Encontrou forma de pagamento, continua processo
               //verifica moeda padrão para lançamento
                   If DMFinanc.TFormPag.FieldByName('DESCRICAO').AsString='À VISTA'
                   Then Begin // caso o pedido tenha sido feito à vista deve-se lançar o valor direto no caixa
                       If CBPagamento.Text='Cheque'
                       Then Begin//LANÇAMENTO EM CONTROLE DE CHEQUE
                           If (DMMACS.TLoja.FieldByName('ORDEMLOCA_GUINDASTE').AsString = '1')  // - 24/04/2009: se for para a mukmaq o valor de serviços, km e ajudante é acumulado
                           then begin
                               If LancChEnt(XCOD_CONTA, XCOD_CONTASERV, 'Fech. Ordem'+XTabela.FieldByName('NUMERO').AsString+' - Cli. '+DMPESSOA.WCliente.FieldByName('NOME').AsString, Date(), '', XTabela.FieldByName('TOTPROD').AsCurrency+XVLRDESP, XTabela.FieldByName('TOTSERV').AsCurrency+XTabela.FieldByName('TOTKM').AsCurrency+XTabela.FieldByName('TOTAJUDANTE').AsCurrency+XVLRDESP, '', '', 0, '', '', 'ORDEM', IntToStr(XCOD_ORDEM))=True
                               Then  ////informa que a atualização do financeiro foi efetivada
                                   ATUFINANC:=True
                               Else//informa que a finalização do financeiro falhou
                                   ATUFINANC:=False;
                           end
                           else begin
                               If LancChEnt(XCOD_CONTA, XCOD_CONTASERV, 'Fech. Ordem'+XTabela.FieldByName('NUMERO').AsString+' - Cli. '+DMPESSOA.WCliente.FieldByName('NOME').AsString, Date(), '', XTabela.FieldByName('TOTPROD').AsCurrency+XVLRDESP, XTabela.FieldByName('TOTSERV').AsCurrency+XVLRDESP, '', '', 0, '', '', 'ORDEM', IntToStr(XCOD_ORDEM))=True
                               Then  ////informa que a atualização do financeiro foi efetivada
                                   ATUFINANC:=True
                               Else//informa que a finalização do financeiro falhou
                                   ATUFINANC:=False;
                           end;
                       End;
                       If CBPagamento.Text = 'Cartão'
                       Then Begin
                           If (DMMACS.TLoja.FieldByName('ORDEMLOCA_GUINDASTE').AsString = '1')  // - 24/04/2009: se for para a mukmaq o valor de serviços, km e ajudante é acumulado
                           then begin
                              If LanBanco(DMBANCO.WCtaCor.FieldByName('COD_CTACOR').AsInteger,XCOD_CONTA,'(Serviços) Fech. Ordem Serv. ' + XTabela.FieldByName('NUMERO').AsString + ' - Cli. '+DMPESSOA.WCliente.FieldByName('NOME').AsString, XTabela.FieldByName('TOTSERV').AsCurrency+XTabela.FieldByName('TOTKM').AsCurrency+XTabela.FieldByName('TOTAJUDANTE').AsCurrency, 'TOTSERV',StrToInt(CodPedido), 'ORDSERV',StrToInt(FMenu.LCODUSUARIO.Caption), 'DEP. AUTO.', 'S',DateToStr(Date()),'',DateToStr(Date()),'1',DateToStr(Date())) = TRUE
                               Then  Begin////informa que a atualização do financeiro foi efetivada
                                   ATUFINANC:=True
                               End
                               Else Begin//informa que a finalização do financeiro falhou
                                   ATUFINANC:=False;
                               End;
                           end
                           else begin
                               If LanBanco(DMBANCO.WCtaCor.FieldByName('COD_CTACOR').AsInteger,XCOD_CONTA,'(Produtos) Fech. Ordem Serv. ' + XTabela.FieldByName('NUMERO').AsString + ' - Cli. '+DMPESSOA.WCliente.FieldByName('NOME').AsString, XTabela.FieldByName('TOTPROD').AsCurrency+XVLRDESP, 'TOTPROD',StrToInt(CodPedido), 'ORDSERV',StrToInt(FMenu.LCODUSUARIO.Caption), 'DEP. AUTO.', 'S',DateToStr(Date()),'',DateToStr(Date()),'1',DateToStr(Date())) = TRUE
                               Then  Begin////informa que a atualização do financeiro foi efetivada
                                   ATUFINANC:=True
                               End
                               Else Begin//informa que a finalização do financeiro falhou
                                   ATUFINANC:=False;
                                   exit;
                               End;
                               If LanBanco(DMBANCO.WCtaCor.FieldByName('COD_CTACOR').AsInteger,XCOD_CONTA,'(Serviços) Fech. Ordem Serv. ' + XTabela.FieldByName('NUMERO').AsString + ' - Cli. '+DMPESSOA.WCliente.FieldByName('NOME').AsString, XTabela.FieldByName('TOTSERV').AsCurrency+XVLRDESP, 'TOTSERV',StrToInt(CodPedido), 'ORDSERV',StrToInt(FMenu.LCODUSUARIO.Caption), 'DEP. AUTO.', 'S',DateToStr(Date()),'',DateToStr(Date()),'1',DateToStr(Date())) = TRUE
                               Then  Begin////informa que a atualização do financeiro foi efetivada
                                   ATUFINANC:=True
                               End
                               Else Begin//informa que a finalização do financeiro falhou
                                   ATUFINANC:=False;
                               End;
                           end;
                       End;
                       If (CBPagamento.Text <> 'Cheque') and (CBPagamento.Text <> 'Cartão')
                       Then Begin
                           //REALIZA LANÇAMENTOS EM CAIXA REFERENTE A PRODUTOS
                           If (DMMACS.TLoja.FieldByName('ORDEMLOCA_GUINDASTE').AsString <> '1')  // - 24/04/2009: se não for para a mukmaq o valor de produtos não é lançado no caixa
                           then begin
                               If LanCaixa(-1, DateToStr(Date()), XCOD_CONTA, '(Produtos) Fech. Ordem Serv. '+XTabela.FieldByName('NUMERO').AsString+' - Cli. '+DMPESSOA.WCliente.FieldByName('NOME').AsString,  XTabela.FieldByName('TOTPROD').Value+XVLRDESP, 'ORDSERV', StrToInt(CodPedido), CBPagamento.Text, 'E', XTabela.FieldByName('NUMERO').AsString, StrToDate(EdDtFech.Text), '1')=True
                               Then Begin//informa que a atualização do financeiro foi efetivada
                                   ATUFINANC:=True;
                               End
                               Else Begin//informa que a finalização do financeiro falhou
                                   ATUFINANC:=False;
                               End;
                           end;
                           //REALIZA LANÇAMENTOS EM CAIXA REFERENTE A SERVIÇOS
                           If (DMMACS.TLoja.FieldByName('ORDEMLOCA_GUINDASTE').AsString = '1')  // - 24/04/2009: se for para a mukmaq o valor de serviços, km e ajudante é acumulado
                           then begin
                               If LanCaixa(-1, DateToStr(Date()), XCOD_CONTASERV, '(Serviços) Fech. Ordem Serv. '+XTabela.FieldByName('NUMERO').AsString+' - Cli. '+DMPESSOA.WCliente.FieldByName('NOME').AsString,XTabela.FieldByName('TOTKM').Value+XTabela.FieldByName('TOTSERV').Value+XVLRDESP+XTabela.FieldByName('TOTAJUDANTE').Value, 'ORDSERV', StrToInt(CodPedido), CBPagamento.Text, 'E', XTabela.FieldByName('NUMERO').AsString, StrToDate(EdDtFech.Text), '1')=True
                               Then Begin//informa que a atualização do financeiro foi efetivada
                                   ATUFINANC:=True;
                               End
                               Else Begin//informa que a finalização do financeiro falhou
                                   ATUFINANC:=False;
                               End;
                           end
                           else begin
                               If LanCaixa(-1, DateToStr(Date()), XCOD_CONTASERV, '(Serviços) Fech. Ordem Serv. '+XTabela.FieldByName('NUMERO').AsString+' - Cli. '+DMPESSOA.WCliente.FieldByName('NOME').AsString,  XTabela.FieldByName('TOTSERV').Value+XVLRDESP, 'ORDSERV', StrToInt(CodPedido), CBPagamento.Text, 'E', XTabela.FieldByName('NUMERO').AsString, StrToDate(EdDtFech.Text), '1')=True
                               Then Begin//informa que a atualização do financeiro foi efetivada
                                   ATUFINANC:=True;
                               End
                               Else Begin//informa que a finalização do financeiro falhou
                                   ATUFINANC:=False;
                               End;
                           end;
                       End;
                   End
                   Else Begin//Não é à vista
                   FiltraTabela(DMMacs.TLoja, 'LOJA', 'COD_LOJA', FMenu.LCODLOJA.Caption, '');
                   If (DMMACS.TLoja.FieldByName('ORDEMLOCA_GUINDASTE').AsString = '1')  // - 24/04/2009: se for para a mukmaq o valor de produtos é somado ao valor de ajudante e somado ao valor de serviço
                   then begin
                       If LancConta('ORDEM', StrToInt(CodPedido), XTabela.FieldByName('COD_CLIENTE').AsInteger, CBPagamento.Text, XTabela.FieldByName('TOTPROD').Value, XTabela.FieldByName('TOTKM').Value+XTabela.FieldByName('TOTSERV').Value+XVLRDESP+XTabela.FieldByName('TOTAJUDANTE').Value, XCOD_CONTA, XCOD_CONTASERV, -1, 'Fech. Ordem de Serviço '+XTabela.FieldByName('NUMERO').AsString, XCOD_FORMPAG, 'ORD'+XTabela.FieldByName('NUMERO').AsString, 'O', Date(), XVLRCOMIS, EdDtFech.Text, XTabela.FieldByName('numfiscal').AsString)=True
                       Then Begin
                           ATUFINANC:=True;
                       End
                       Else Begin
                           ATUFINANC:=False;
                       End;
                   end
                   else begin
                       If LancConta('ORDEM', StrToInt(CodPedido), XTabela.FieldByName('COD_CLIENTE').AsInteger, CBPagamento.Text, XTabela.FieldByName('TOTPROD').Value+XVLRDESP, XTabela.FieldByName('TOTSERV').Value+XVLRDESP, XCOD_CONTA, XCOD_CONTASERV, -1, 'Fech. Ordem de Serviço '+XTabela.FieldByName('NUMERO').AsString, XCOD_FORMPAG, 'ORD'+XTabela.FieldByName('NUMERO').AsString, 'O', Date(), XVLRCOMIS, EdDtFech.Text, XTabela.FieldByName('numfiscal').AsString)=True
                       Then Begin
                           ATUFINANC:=True;
                       End
                       Else Begin
                           ATUFINANC:=False;
                       End;
                   end;
                   End;
               //End
               //Else Begin // não encontrou moeda padrão
               //	ATUFINANC:=False;
               //End;
           End
           Else Begin //não esncontrou forma de pagamento, processo inválido retornar informações
               ATUFINANC:=False;
           End;
       End
       Else Begin
           ATUFINANC:=True;
       End;
       //Verifica se todas as atualizações foram possíveis
       If ATUFINANC=True
       Then Begin //então tenta-se confirmar operação
       	Try
   			//calcula comissão
   			CalcComisTotVend;
           	//FECHA PEDIDO

               {
               XTabela.Edit;
               XTabela.FieldByName('STATUS').AsString:='FECHADO';
               XTabela.FieldByName('COD_FORMPAG').AsInteger:=XCOD_FORMPAG;
               XTabela.FieldByName('COD_FORMPAG').AsInteger:=XCOD_FORMPAG;
               XTabela.FieldByName('DTENTREGA').AsString:=DBDATAENTREGA.Text;
               XTabela.FieldByName('TIPOPAG').AsString:=CBPagamento.Text;
               XTabela.FieldByName('DTFECH').AsString:=EdDtFech.Text;
               XTabela.FieldByName('TIPOPAG').AsString:=CBPagamento.Text;
               XTabela.FieldByName('HRENTREGA').AsString:=DBHORAENTREGA.Text;
               XTabela.FieldByName('COMISSAO').AsCurrency:=XVLRCOMIS;
               XTabela.Post;
               XTabela.ApplyUpdates;  }

               DMServ.TAlx1.Close; // - 28/04/2009:
               DMServ.TAlx1.SQL.Clear;
               DMServ.TAlx1.SQL.Add('update ORDEM set STATUS = :STATUS, COD_FORMPAG = :COD_FORMPAG, DTENTREGA = :DTENTREGA,');
               DMServ.TAlx1.SQL.Add('TIPOPAG = :TIPOPAG, DTFECH = :DTFECH, HRENTREGA = :HRENTREGA, COMISSAO = :COMISSAO, TIPO = :TIPO');
               DMServ.TAlx1.SQL.Add('where COD_ORDEM = :OLD_COD_ORDEM');

               DMServ.TAlx1.ParamByName('OLD_COD_ORDEM').AsInteger := XCOD_ORDEM;
               DMServ.TAlx1.ParamByName('STATUS').AsString:='FECHADO';
               DMServ.TAlx1.ParamByName('COD_FORMPAG').AsInteger:=XCOD_FORMPAG;
               DMServ.TAlx1.ParamByName('DTENTREGA').AsString:=DBDATAENTREGA.Text;
               DMServ.TAlx1.ParamByName('TIPOPAG').AsString:=CBPagamento.Text;
               DMServ.TAlx1.ParamByName('DTFECH').AsString:=EdDtFech.Text;
               DMServ.TAlx1.ParamByName('HRENTREGA').AsString:=DBHORAENTREGA.Text;
               DMServ.TAlx1.ParamByName('COMISSAO').AsCurrency:=XVLRCOMIS;
               DMServ.TAlx1.ParamByName('TIPO').AsString:='VND';
               DMServ.TAlx1.ExecSQL;


               //EFETUA TRANSAÇÕES
               DMServ.IBT.CommitRetaining;
               XTransaction.CommitRetaining;
               DMCAIXA.IBT.CommitRetaining;
               MDO.Transac.CommitRetaining;
               DMBANCO.IBT.CommitRetaining;
			       	Mensagem('INFORMAÇÃO AO USUÁRIO', 'Ordem de serviço fechada com Sucesso', '', 1, 1, false, 'a');

               //Atualiza ordens na tela de consulta
               LiberaDados;
           Except
			      	Mensagem('OPÇÃO BLOQUEADA', 'Ocorreram problemas ao fechar a ordem de serviço, os dados serão mantidos e a ordem aberto.', 'Ocorreram problemas ao gerar informações financeiras, por motivos de segurança serão mantidas as informações antigas. Feche e reinicie o sistema, se o problema persistir informe e peça auxílio ao suporte técnico. ', 1, 1, true, 'a');
				      DMCAIXA.IBT.RollbackRetaining;
				      XTransaction.RollbackRetaining;
                     MDO.Transac.RollbackRetaining;
               DMBANCO.IBT.RollbackRetaining;
           End;
       End
       Else Begin
			     Mensagem('OPÇÃO BLOQUEADA', 'Ocorreram problemas ao fechar a ordem de serviço, os dados serão mantidos e a ordem aberto.', 'Ocorreram problemas ao gerar informações financeiras, por motivos de segurança serão mantidas as informações antigas. Feche e reinicie o sistema, se o problema persistir informe e peça auxílio ao suporte técnico. ', 1, 1, true, 'a');
           DMCAIXA.IBT.RollbackRetaining;
			     XTransaction.RollbackRetaining;
       End;
   End
   Else Begin //else de filtragem de pedido
       FechaOrd:=false;
   End;
End;

//Limpa as labels de seleção de produto
Procedure TFORDEM.LimpaLabelsPROD;
Begin
   EDCodBarra.Clear;
   EDQuantidade.Clear;
   EDValUnit.Clear;
   EDDesc.ValueNumeric:=0;
   EDTotal.Clear;
   LEstoque.Caption:='';
   LProduto.Caption:='';

   //limpa edits do painel de preços
   EdVlrAtacadoPrazo.text:='0,00';
   EdVlrAtacadoVista.text:='0,00';
   EdVlrVarejoPrazo.text:='0,00';
   EdVlrVarejoVista.text:='0,00';
End;
//Limpa as labels de seleção de Servico
Procedure TFORDEM.LimpaLabelsSERV;
Begin
   EdCodInternoServ.Clear;
   EDQtdServ.Clear;
   EDVlrUnitServ.Clear;
   EdDescServ.Clear;
   EdVlrtotalServ.Clear;
   LSubServico.Caption:='';
   FrmEquipe.EDCodigo.Clear;
   FrmEquipe.EdDescricao.Clear;
End;
//Limpa as labels de Despesas
Procedure TFORDEM.LimpaLabelsDESP;
Begin
   EDDESCD.CLEAR;
   EdQtdD.ValueNumeric:=0;
   EdVlrCustoD.ValueNumeric:=0;
   EdVlrCobradoD.ValueNumeric:=0;
   EdVlrTotD.ValueNumeric:=0;
End;

//Filtra as tabelas e escreve em edits e labels as informações dos produtos selecionado
Procedure TFORDEM.EscreveLabelsPROD;
Begin
	//Filtra tabela de subproduto de acordo com o produto selecionada em fproduto
	If FiltraTabela(DMEstoque.TSubProd, 'SUBPRODUTO', 'COD_SUBPRODUTO', DMEstoque.WSimilar.FieldByName('COD_SUBPRODUTO').AsString, '')=False Then
		Exit;

   //Filtra tabela de estoque de acordo com o produto selecionada em fproduto
	If FiltraTabela(DMEstoque.TEstoque, 'ESTOQUE', 'COD_ESTOQUE', DMEstoque.WSimilar.FieldByName('COD_ESTOQUE').AsString, '')=False Then
   	Exit;

   // por questao de garantia o codigo de estoque do produto selecionado esta sendo atribuido á variavel pois jah que ela naum eh usada em nenhum outro momento, nao tem a possibilidade de ter seu valor alterado
   XCOD_ESTOQUE := DMEstoque.WSimilar.FieldByName('COD_ESTOQUE').AsInteger;

   // nao está selecionando apenas valores á prazo
   If DMMACS.TLoja.FieldByName('tipovenda').AsString = '0'
   Then Begin
       If (EDQuantidade.ValueNumeric>=DMEstoque.TSubProd.FieldByName('QTDATC').AsCurrency) And (DMEstoque.TSubProd.FieldByName('QTDATC').AsString<>'')
       Then Begin//caso ocorra esta condição significa que o produto esta com quantidade igual ou superior a de atacado e deve ser vendido em preço de atacado
           If FrmFormPag1.EdDescricao.Text = 'À VISTA'
           Then Begin //A venda esta sendo a vista então o preço de venda deve ser no atacado a vista
               EDValUnit.Text := FormatCurr('0.00',DMEstoque.TEstoque.FieldByName('vendatav').AsCurrency);
           End
           Else Begin
               EDValUnit.Text := FormatCurr('0.00',DMEstoque.TEstoque.FieldByName('vendatap').AsCurrency);
           End;
       End
       Else Begin
           If FrmFormPag1.EdDescricao.Text = 'À VISTA'
           Then Begin
               EDValUnit.Text := FormatCurr('0.00',DMEstoque.WSimilar.FieldByName('VENDVARV').AsCurrency);
           End
           Else Begin
               EDValUnit.Text := FormatCurr('0.00',DMEstoque.WSimilar.FieldByName('VENDVARP').AsCurrency);
           End;
       End;
   End
   // forçando venda a prazo
   Else Begin
       If (EDQuantidade.ValueNumeric>=DMEstoque.TSubProd.FieldByName('QTDATC').AsCurrency) And (DMEstoque.TSubProd.FieldByName('QTDATC').AsString<>'')
       Then Begin//caso ocorra esta condição significa que o produto esta com quantidade igual ou superior a de atacado e deve ser vendido em preço de atacado
           EDValUnit.Text := FormatCurr('0.00',DMEstoque.TEstoque.FieldByName('vendatap').AsCurrency);
       End
       Else Begin
           EDValUnit.Text := FormatCurr('0.00',DMEstoque.WSimilar.FieldByName('VENDVARP').AsCurrency);
       End;
   End;

	//Passa os valores do produto selecionado para as labels
   LProduto.Caption:=DMEstoque.TSubProd.FieldByName('DESCRICAO').AsString+' ['+DMEstoque.TSubProd.FieldByName('Marca').asstring+']';
   LEstoque.Caption:=FormatFloat('#,###0.000', DMEstoque.TEstoque.FieldByName('ESTFISICO').AsCurrency);
   //PASSA VALORES PARA O PAINEL DE CONSULTA DE PREÇOS
   EdVlrAtacadoPrazo.ValueNumeric:=DMESTOQUE.TEstoque.FieldByName('VENDATAP').AsCurrency;
   EdVlrAtacadoVista.ValueNumeric:=DMESTOQUE.TEstoque.FieldByName('VENDATAV').AsCurrency;
   EdVlrVarejoPrazo.ValueNumeric:=DMESTOQUE.TEstoque.FieldByName('VENDVARP').AsCurrency;
   EdVlrVarejoVista.ValueNumeric:=DMESTOQUE.TEstoque.FieldByName('VENDVARV').AsCurrency;
End;
//Filtra as tabelas e escreve em edits e labels as informações dos serviços selecionado
Procedure TFORDEM.EscreveLabelsSERV;
Begin
	//Filtra tabela de subservicos de acordo com o servico selecionada em fservico
   If FiltraTabela(DMSERV.TSubserv, 'SUBSERVICO', 'COD_SUBSERVICO', DMSERV.WSubServ.FieldByName('COD_SUBSERVICO').AsString, '')=False Then
		Exit;

   // por questao de garantia o codigo de servico do produto selecionado esta sendo atribuido á variavel pois jah que ela naum eh usada em nenhum outro momento, nao tem a possibilidade de ter seu valor alterado
   XCOD_SERVICO := DMSERV.WSubServ.FieldByName('COD_SUBSERVICO').AsInteger;

	//Passa os valores do produto selecionado para as labels
   LSubServico.Caption:=DMSERV.TSubserv.FieldByName('DESCRICAO').AsString;
   EDQtdServ.Text:=DMSERV.TSubserv.FieldByName('TEMPSERV').AsString;
   EDVlrUnitServ.ValueNumeric:=DMSERV.TSubserv.FieldByName('VLRFINAL').AsCurrency;
End;

//FILTRA OS REGISTROS DE PRODUTOS E SERVIÇOS PERTENCENTES A ORDEM
Procedure TFORDEM.FiltraSlave;
Begin
   LimpaLabelsPROD;
   LimpaLabelsSERV;
   LimpaLabelsDESP;
   FrmCliente.Repaint;
   FrmConta.Repaint;
   FrmContaServ.Repaint;
   FrmFormPag.Repaint;
   FrmMoeda.Repaint;
   FrmResponsavel.Repaint;
   FrmVendedor.Repaint;
	//TRABALHA COM PRODUTOS DA ORDEM
   //CALCULA TOTAL
	DMESTOQUE.TSlave.Close;
	DMESTOQUE.TSlave.SQL.Clear;
	DMESTOQUE.TSlave.SQL.Add('Select Sum(ITPRODORD.total) as TOTAL From ITPRODORD');
	DMESTOQUE.TSlave.SQL.Add('Where ITPRODORD.COD_ORDEM = :CODORDEM ');
	DMESTOQUE.TSlave.ParamByName('CODORDEM').AsInteger:=XCOD_ORDEM;
	DMESTOQUE.TSlave.Open;
   //informa total de produtos
   EdTotalPROD.ValueNumeric:=DMESTOQUE.TSlave.FieldByName('TOTAL').AsCurrency;
   XVLRTPROD:=DMESTOQUE.TSlave.FieldByName('TOTAL').AsCurrency;


   // - 16/02/2009:  soma qnt de produtos
    DMESTOQUE.TSlave.Close;
	DMESTOQUE.TSlave.SQL.Clear;
	DMESTOQUE.TSlave.SQL.Add('Select Sum(ITPRODORD.qtd) as QTD, count(ITPRODORD.qtd) as QTDITEM From ITPRODORD');
	DMESTOQUE.TSlave.SQL.Add('Where ITPRODORD.COD_ORDEM = :CODORDEM ');
	DMESTOQUE.TSlave.ParamByName('CODORDEM').AsInteger:=XCOD_ORDEM;
	DMESTOQUE.TSlave.Open;
    // - 16/02/2009:   INFORMA QTD DE ITEMS
   If DMESTOQUE.TSlave.FieldByName('QTD').AsString='' Then
		LQTDPROD.Caption:='Qtd L: 0    Qtd T: 0'
   Else
   	LQTDPROD.Caption:='Qtd L: '+DMESTOQUE.TSlave.FieldByName('QTDITEM').AsString+'    Qtd T: '+DMESTOQUE.TSlave.FieldByName('QTD').AsString;

    LQTDPROD.Repaint;


  	//INSERE COMANDOS PARA FILTRAR
	DMESTOQUE.TSlave.Close;
	DMESTOQUE.TSlave.SQL.Clear;
	DMESTOQUE.TSlave.SQL.Add('Select itprodord.cod_itprodord, unidade.sigla_unid as UNIDADE, itprodord.cod_ordem, itprodord.cod_estoque,  itprodord.numreq, itprodord.qtd, itprodord.qtdRET, itprodord.total, ');
	DMESTOQUE.TSlave.SQL.Add('itprodord.desconto, itprodord.ALIQICMS, itprodord.VLRICMS, itprodord.data, itprodord.cod_funcionario, pessoa.nome, itprodord.vlrunit, subproduto.descricao, subproduto.marca, SubProduto.CODPRODFABR, ');
   DMESTOQUE.TSlave.sql.Add('subproduto.'+DMMACS.TLoja.FieldByName('CODPRODREL1').AsString+' AS PRIMCOD, subproduto.'+DMMACS.TLoja.FieldByName('CODPRODREL2').AsString+' AS SEGCOD, itprodord.operacao');
	DMESTOQUE.TSlave.SQL.Add('From itprodord left Join estoque on itprodord.cod_estoque = estoque.cod_estoque ');
	DMESTOQUE.TSlave.SQL.Add('Left Join subproduto on subproduto.cod_subproduto = estoque.cod_subprod ');
	DMESTOQUE.TSlave.SQL.Add('Left Join unidade on subproduto.cod_unidvenda = unidade.cod_unidade ');
	DMESTOQUE.TSlave.SQL.Add('Left Join funcionario on funcionario.cod_func = itprodord.cod_funcionario ');
	DMESTOQUE.TSlave.SQL.Add('Left Join pessoa on funcionario.cod_pessoa = pessoa.COD_PESSOA ');
	DMESTOQUE.TSlave.SQL.Add('Where itprodord.cod_ordem = :CODORDEM ');
	DMESTOQUE.TSlave.ParamByName('CODORDEM').AsInteger := XCOD_ORDEM;
   DMESTOQUE.TSlave.SQL.Add('order by itprodord.cod_itprodord desc');
	DMESTOQUE.TSlave.Open;
	//TRABALHA COM SERVIÇOS DA ORDEM
   //CALCULA TOTAL
	DMESTOQUE.TSlaveServ.Close;
	DMESTOQUE.TSlaveServ.SQL.Clear;
	DMESTOQUE.TSlaveServ.SQL.Add('Select Sum(ITSERVORD.total) as TOTAL From ITSERVORD');
	DMESTOQUE.TSlaveServ.SQL.Add('Where ITSERVORD.COD_ORDEM = :CODORDEM ');
	DMESTOQUE.TSlaveServ.ParamByName('CODORDEM').AsInteger:=XCOD_ORDEM;
	DMESTOQUE.TSlaveServ.Open;
   //informa total de serviços
	EdTotalserv.ValueNumeric:=DMESTOQUE.TSlaveServ.FieldByName('TOTAL').AsCurrency;
   XVLRTSERV:=DMESTOQUE.TSlaveServ.FieldByName('TOTAL').AsCurrency;

   // - 16/02/2009:  soma qnt de serviços
   DMESTOQUE.TSlaveServ.Close;
	DMESTOQUE.TSlaveServ.SQL.Clear;
	//DMESTOQUE.TSlaveServ.SQL.Add('Select Sum(ITSERVORD.qtd) as QTD, count(ITSERVORD.qtd) as QTDITEM From ITSERVORD');
   DMESTOQUE.TSlaveServ.SQL.Add('Select count(ITSERVORD.qtd) as QTDCOL From ITSERVORD');
	DMESTOQUE.TSlaveServ.SQL.Add('Where ITSERVORD.COD_ORDEM = :CODORDEM ');
	DMESTOQUE.TSlaveServ.ParamByName('CODORDEM').AsInteger := XCOD_ORDEM;
	DMESTOQUE.TSlaveServ.Open;

   // - 16/02/2009:   INFORMA QTD DE serviços
   If DMESTOQUE.TSlaveServ.FieldByName('QTDCOL').AsInteger = 0 Then
		LQTDSERV.Caption := 'Qtd L: 0 '
   Else Begin
        // - 16/02/2009:  soma qnt de serviços
       {DMESTOQUE.TSlaveServ.Close;
       DMESTOQUE.TSlaveServ.SQL.Clear;
       DMESTOQUE.TSlaveServ.SQL.Add('Select Sum(ITSERVORD.qtd) as QTD, count(ITSERVORD.qtd) as QTDITEMS From ITSERVORD');
       DMESTOQUE.TSlaveServ.SQL.Add('Where ITSERVORD.COD_ORDEM = :CODORDEM ');
       DMESTOQUE.TSlaveServ.ParamByName('CODORDEM').AsInteger := XCOD_ORDEM;
       DMESTOQUE.TSlaveServ.Open; }
   	LQTDSERV.Caption := 'Qtd L: '+DMESTOQUE.TSlaveServ.FieldByName('QTDCOL').AsString;//+'    Qtd T: '+DMESTOQUE.TSlaveServ.FieldByName('QTD').AsString;
   End;
    LQTDSERV.Repaint;

  	//INSERE COMANDOS PARA FILTRAR
   DMESTOQUE.TSlaveServ.Close;
   DMESTOQUE.TSlaveServ.SQL.Clear;
   DMESTOQUE.TSlaveServ.SQL.Add('select itservord.cod_itservord, itservord.obs, itservord.tamanho, itservord.obs, itservord.tamanho, itservord.cod_ordem, itservord.cod_servico, ');
   DMESTOQUE.TSlaveServ.SQL.Add('itservord.desconto, itservord.qtd, itservord.Data, itservord.total, itservord.vlrunit, ');
   DMESTOQUE.TSlaveServ.SQL.Add('subservico.descricao,  Unidade.desc_unid as UNIDADE ');
   DMESTOQUE.TSlaveServ.SQL.Add('from itservord left join subservico ON itservord.cod_servico = subservico.cod_subservico ');
   DMESTOQUE.TSlaveServ.SQL.Add('left join unidade ON subservico.cod_unidade=unidade.cod_unidade ');
   DMESTOQUE.TSlaveServ.SQL.Add('Where itservord.cod_ordem = :CODORDEM ');
   DMESTOQUE.TSlaveServ.ParamByName('CODORDEM').AsInteger := XCOD_ORDEM;
   DMESTOQUE.TSlaveServ.SQL.Add('order by itservord.cod_itservord desc');
   DMESTOQUE.TSlaveServ.SQL.Text;
   DMESTOQUE.TSlaveServ.Open;

  //TRABALHANDO COM DESPESAS
  if DMMACS.TLoja.FieldByName('atividade').AsString='EQUIPE'
  then begin
      DMESTOQUE.Alx2.Close;
      DMESTOQUE.Alx2.SQL.Clear;
      DMESTOQUE.Alx2.SQL.Add('select Sum(despadic.vlrtotfin) AS VLRTOTFIN From despadic Where (despadic.gerador='+#39+'ORDEM'+#39+') AND (despadic.cod_gerador=:COD_GERADOR)');
      DMESTOQUE.Alx2.ParamByName('COD_GERADOR').AsInteger:=XCOD_ORDEM;
      DMESTOQUE.Alx2.Open;
      EdTotalserv.ValueNumeric:=DMESTOQUE.Alx2.FieldByName('VLRTOTFIN').AsCurrency;
      XVLRTSERV:=DMESTOQUE.Alx2.FieldByName('VLRTOTFIN').AsCurrency;

      // - 16/02/2009:  soma qnt de despesas
      DMESTOQUE.Alx2.Close;
      DMESTOQUE.Alx2.SQL.Clear;
      DMESTOQUE.Alx2.SQL.Add('Select Sum(despadic.qtd) as QTD, count(despadic.qtd) as QTDITEM From despadic');
      DMESTOQUE.Alx2.SQL.Add('Where despadic.COD_GERADOR = :CODORDEM ');
      DMESTOQUE.Alx2.ParamByName('CODORDEM').AsInteger:=XCOD_ORDEM;
      DMESTOQUE.Alx2.Open;
      // - 16/02/2009:   INFORMA QTD DE despesas
     If DMESTOQUE.Alx2.FieldByName('QTD').AsString='' Then
          LQTDDESP.Caption:='Qtd L: 0    Qtd T: 0'
     Else
      LQTDDESP.Caption:='Qtd L: '+DMESTOQUE.TSlaveServ.FieldByName('QTDITEM').AsString+'    Qtd T: '+DMESTOQUE.TSlaveServ.FieldByName('QTD').AsString;

      LQTDDESP.Repaint;

      DMESTOQUE.Alx3.Close;
      DMESTOQUE.Alx3.SQL.Clear;
      DMESTOQUE.Alx3.SQL.Add('select * from despadic');
      DMESTOQUE.Alx3.SQL.Add('left join equipe on despadic.cod_equipe = equipe.cod_equipe');
      DMESTOQUE.Alx3.SQL.Add('left join vwfuncionario on despadic.cod_funcionario = vwfuncionario.cod_func');
      DMESTOQUE.Alx3.SQL.Add('where (despadic.cod_gerador= :cod) and (despadic.gerador='+#39+'ORDEM'+#39+')');
      DMESTOQUE.Alx3.SQL.Add('order by despadic.cod_despadic desc');
      DMESTOQUE.Alx3.ParamByName('cod').AsInteger:=XCOD_ORDEM;
      DMESTOQUE.Alx3.Open;
  end
  else begin
     //CALCULA TOTAL
     DMESTOQUE.Alx2.Close;
     DMESTOQUE.Alx2.SQL.Clear;
     DMESTOQUE.Alx2.SQL.Add('select Sum(despadic.vlrtotfin) AS TOT From despadic Where (despadic.gerador='+#39+'ORDEM'+#39+') AND (despadic.cod_gerador=:COD_GERADOR)');
     DMESTOQUE.Alx2.ParamByName('COD_GERADOR').AsInteger:=XCOD_ORDEM;
     DMESTOQUE.Alx2.Open;
     EdTotDesp.ValueNumeric:=DMESTOQUE.Alx2.FieldByName('TOT').AsCurrency;

     // - 16/02/2009:  soma qnt de despesas
      DMESTOQUE.Alx2.Close;
      DMESTOQUE.Alx2.SQL.Clear;
      DMESTOQUE.Alx2.SQL.Add('Select Sum(despadic.qtd) as QTD From despadic');
      DMESTOQUE.Alx2.SQL.Add('Where despadic.COD_GERADOR = :CODORDEM ');
      DMESTOQUE.Alx2.ParamByName('CODORDEM').AsInteger:=XCOD_ORDEM;
      DMESTOQUE.Alx2.Open;
      // - 16/02/2009:   INFORMA QTD DE despesas
       If DMESTOQUE.Alx2.FieldByName('QTD').AsString='' Then
            LQTDDESP.Caption:='Qtd = 0'
       Else
        LQTDDESP.Caption:='Qtd = '+DMESTOQUE.Alx2.FieldByName('QTD').AsString;

        LQTDDESP.Repaint;

   end;
   //FILTRA DESPESAS
   DMESTOQUE.TDesp.Close;
   DMESTOQUE.TDesp.SQL.Clear;
   DMESTOQUE.TDesp.SQL.Add(' select despadic.cod_gerador, despadic.cod_funcionario, despadic.cfop, despadic.despesa, despadic.gerador, despadic.qtd, despadic.vlrfinal, despadic.cod_equipe, DESPADIC.COD_DESPADIC, ');
   DMESTOQUE.TDesp.SQL.Add(' equipe.cod_equipe, equipe.descricao, DESPADIC.VLRREAL, DESPADIC.LUCMOE, DESPADIC.LUCPER, DESPADIC.DESCONTO, DESPADIC.MARCA, DESPADIC.UNIDADE, DESPADIC.VLRTOTFIN, ');
   DMESTOQUE.TDesp.SQL.Add(' despadic.comissao, despadic.aliqissqn, despadic.descnf, despadic.cst, despadic.cod_servico, despadic.nfse_codservico, ');
   DMESTOQUE.TDesp.SQL.Add(' despadic.nfse_numerorps, despadic.nfse_numerodocumento, despadic.nfse_serierps, despadic.nfse_numerorps, despadic.nfse_status, despadic.classificacao, despadic.cod_equip ');
   DMESTOQUE.TDesp.SQL.Add('From despadic ');
   DMESTOQUE.TDesp.SQL.Add('LEFT JOIN EQUIPE ON DESPADIC.COD_EQUIPE = EQUIPE.COD_EQUIPE');
   DMESTOQUE.TDesp.SQL.Add('Where (despadic.gerador='+#39+'ORDEM'+#39+') AND (despadic.cod_gerador=:COD_GERADOR)');
	DMESTOQUE.TDesp.ParamByName('COD_GERADOR').AsInteger:=XCOD_ORDEM;
   DMESTOQUE.TDesp.SQL.Add('order by despadic.cod_despadic desc');
	DMESTOQUE.TDesp.Open;

   //ATRIBUI TOTAL VENDIDO SEM DESCONTO À VARIAVEL
   XVLRTOTAL:=XVLRTPROD+XVLRTSERV+EdTotDesp.ValueNumeric;

   //CALCULA DESCONTOS PARA PRODUTO
   If EdDescTProd.ValueNumeric<>0
   Then Begin
  	    CalcPercent(StrToFloat(EdDescTProd.text) , XVLRTPROD, XVLRTPROD, 'D');
   	If AlxValor<>0 Then
			EdtotalProd.Text:=FormatFloat('#,##0.00', AlxCalculo)
		Else
			EdtotalProd.Text:='0,00';
   End;

   //CALCULA DESCONTOS PARA SERVIÇO
   If EdDescTServ.ValueNumeric<>0
   Then Begin
   	CalcPercent(StrToFloat(EdDescTServ.text), XVLRTSERV, XVLRTSERV, 'D');
   	If AlxValor<>0 Then
			EdTotalserv.Text:=FormatFloat('#,##0.00', AlxCalculo)
		Else
			EdTotalserv.Text:='0,00';
   End;

   //ATRIBUI VALOR TOTAL DA ORDEM E DESCONTO
   EdValorOrd.ValueNumeric:=EdTotalserv.ValueNumeric+EdtotalProd.ValueNumeric+EdTotDesp.ValueNumeric;
   EdTotalOrd.ValueNumeric:=EdValorOrd.ValueNumeric;
	CalcPercent(0, XVLRTOTAL-EdValorOrd.ValueNumeric, XVLRTOTAL , 'D');
   EdDescTOrdem.ValueNumeric:=AlxPercento;

   CalcComisTotVend;//Calcula Comissão sobre o total da venda e sobre a aliquota correta
End;


procedure TFOrdem.TCCadastroTabChanged(Sender: TObject);
begin
  inherited;
    PAbertura.Visible:=False;
    PProdServ.Visible:=False;
    PDespesas.Visible:=False;
    case TCCadastro.ActiveTab Of
        0: Begin
            PAbertura.Visible:=true;
            PAbertura.BringToFront;
           End;
        1: Begin
            PProdServ.Visible:=true;
            PProdServ.BringToFront;
            PCProdServ.ActivePage:=TabSheet1;
           End;
        2: Begin
            PProdServ.Visible:=True;
            PDespesas.Visible:=True;
            PDespesas.BringToFront;
            LimpaLabelsDESP;
           End;
    End;
end;

procedure TFOrdem.BtnNovoClick(Sender: TObject);
begin
   //EFETUA CONTROLE DE ACESSO
   If ControlAccess('ABRIRORD', 'M')=False Then
  		Exit;

   // INICIALIZANDO VARIAVEL
   XCOD_ORDEM:=-1;
   XCOD_CLIENTE:=-1;
   XCOD_EQUIPAMENTO:=-1;
   XCOD_FUNCIONARIO:=-1;
   XCOD_ITPROD:=-1;
   XCOD_ITSERV:=-1;
   XCOD_VENDEDOR:=-1;
   XCOD_FORMPAG:=-1;     

   //INSERE REGISTRO
   {XCODPKMESTRE:=InserReg(XTabela, XSQLTABELA, XPkTabela);
   XTabela.FieldByName(XPkTabela).AsInteger:=XCODPKMESTRE;
   XCOD_ORDEM:=XCODPKMESTRE;

   //INSERE DADOS PARA GARANTIR A INTEGRIDADE DA ORDEM
   XTabela.FieldByName('COD_CLIENTE').AsString:=DMPESSOA.WCliente.FieldByName('COD_CLIENTE').AsString;
   XTabela.FieldByName('COD_EQUIPAMENTO').AsString:=DMPESSOA.TEquip.FieldByName('COD_EQUIPAMENTO').AsString;
    }
   {
   If FiltraTabela(DMMacs.TEmpresa,  'EMPRESA', 'COD_EMPRESA', FMenu.LCODEMPRESA.Caption, '') = True
   Then Begin

        // - 19/03/2009: busca proximo numero de OS
       If DMMACS.TEmpresa.FieldByName('PROX_OS').AsString = '' Then
           XNumOrdem := '1'
       Else
           XNumOrdem := DMMACS.TEmpresa.FieldByName('PROX_OS').AsString;

       // - 19/03/2009: mostra na edit numero OS
       DBNumOrd.Text := XNumOrdem;

       // - 19/03/2009: incrementa numero OS em Empresa
       Try
           DMMACS.TEmpresa.EDIT;
           DMMACS.TEmpresa.FieldByName('PROX_OS').AsString := IntToStr(StrToInt(DMMACS.TEmpresa.FieldByName('PROX_OS').AsString)+1);
           DMMACS.TEmpresa.Post;
           DMMACS.Transaction.CommitRetaining;
       Except
           MessageDlg('O Número da ordem não foi incrementado em empresa', mtWarning, [mbOK], 0);
           DMMACS.Transaction.RollbackRetaining;
       End;

   End;

   If FiltraTabela(DMMacs.TEmpresa,  'EMPRESA', 'COD_EMPRESA', FMenu.LCODEMPRESA.Caption, '') = True
   Then Begin
       If DMMACS.TEmpresa.FieldByName('PROX_OS').AsString='' Then
           DBNumOrd.Text:='1'
       Else
           DBNumOrd.Text:=DMMACS.TEmpresa.FieldByName('PROX_OS').AsString;

       XTabela.FieldByName('NUMERO').AsString:= DBNumOrd.Text;

   End;      }


   //Paulo 07/06/2011: GERA NUMERO DA ORDEM
   XNumOrdem := IntToStr(RetornaNumOrdem);
	DBNumOrd.Text := XNumOrdem;

// - 19/03/2009:
   Try {
       XTabela.Insert;
       XCOD_ORDEM:=XTabela.FieldByName(XPkTabela).AsInteger;
       XCODPKMESTRE:=XTabela.FieldByName(XPkTabela).AsInteger;
       XTabela.Post;
       XTabela.ApplyUpdates;
       XTransaction.CommitRetaining;

       DMServ.TAlx1.Close;
       DMServ.TAlx1.SQL.Clear;
       DMServ.TAlx1.SQL.Add('update ORDEM set NUMERO = :NUMERO, DTABERT = :DTABERT, HRABERT = :HRABERT,');
       DMServ.TAlx1.SQL.Add('STATUS = :STATUS, COD_LOJA = :COD_LOJA, LOCALAT = :LOCALAT, EDIT = :EDIT');
       DMServ.TAlx1.SQL.Add('where COD_ORDEM = :OLD_COD_ORDEM');
       DMServ.TAlx1.ParamByName('OLD_COD_ORDEM').AsInteger := XCOD_ORDEM;
       DMServ.TAlx1.ParamByName('NUMERO').AsString:= XNumOrdem;
       DMServ.TAlx1.ParamByName('DTABERT').AsDateTime:=Date();
       DMServ.TAlx1.ParamByName('HRABERT').AsDateTime:=Time();
       DMServ.TAlx1.ParamByName('STATUS').AsString:='ABERTO';
       DMServ.TAlx1.ParamByName('COD_LOJA').AsString:=FMenu.LCODLOJA.Caption;
       DMServ.TAlx1.ParamByName('LOCALAT').AsString:='BALCÃO';
       DMServ.TAlx1.ParamByName('EDIT').AsString := '1';
       DMServ.TAlx1.ExecSQL;

       DMServ.IBT.CommitRetaining;
       }
       //Paulo 07/06/2011: Insere nova ordem
       DMServ.TOrd.Insert;
       XCOD_ORDEM:=DMServ.TOrd.FieldByName('COD_ORDEM').AsInteger;
       XCODPKMESTRE:=DMServ.TOrd.FieldByName('COD_ORDEM').AsInteger;
       //DMServ.TOrd.FieldByName('OLD_COD_ORDEM').AsInteger:= XCOD_ORDEM;
       DMServ.TOrd.FieldByName('NUMERO').AsString:= XNumOrdem;
       DMServ.TOrd.FieldByName('DTABERT').AsDateTime:=Date();
       DMServ.TOrd.FieldByName('HRABERT').AsDateTime:=Time();
       DMServ.TOrd.FieldByName('STATUS').AsString:='ABERTO';
       DMServ.TOrd.FieldByName('COD_LOJA').AsString:=FMenu.LCODLOJA.Caption;
       DMServ.TOrd.FieldByName('LOCALAT').AsString:='BALCÃO';
       DMServ.TOrd.FieldByName('EDIT').AsString := '1';
       DMServ.TOrd.Post;
       DMServ.TOrd.ApplyUpdates;
       DMServ.IBT.CommitRetaining;


       
   Except
       MessageDlg('A Odem não foi inserida no banco', mtWarning, [mbOK], 0);
       PConsulta.Visible:=False;
       PCadastro.Visible:=True;
       PCadastro.BringToFront;
   End; 

   //XTabela.FieldByName('STATUS').AsString:='ABERTO';
   //XTabela.Post;
   //XTransaction.CommitRetaining;

   If FiltraTabela(DMServ.TOrd,  'ORDEM', 'COD_ORDEM', IntToStr(XCODPKMESTRE), '') = False
   Then Begin
        Mensagem('Mzr Sistemas - INFORMAÇÃO', 'A Ordem inserida foi perdida. Reinicie o sistema!', '', 1, 1, false, 'i');
        exit
   End;


   //Seleciona somente os registros corretos
   FiltraSlave;

   inherited;
   // se for igual a um, eh exibido o painel da guinchomaq
   If (DMMACS.TLoja.FieldByName('ORDEMLOCA_GUINDASTE').AsString = '0') or (DMMACS.TLoja.FieldByName('ORDEMLOCA_GUINDASTE').AsString = '')
   Then Begin

       PLocacao.Visible := false;
       PLocacao.SendToBack;
       GBServico.Repaint;

       //se for empresa que utiliza equipe, aparece o formulario de busca pela placa do veículo
       if DMMACS.TLoja.FieldByName('atividade').AsString = 'EQUIPE'
       then begin
          FBEquipPlaca.Visible:=True;
          FBEquipPlaca.BringToFront;
          FBEquipPlaca.TabOrder := 1;
          DBBox.TabOrder := 2;
          FrmVendedor.TabOrder := 3;
          FrmResponsavel.TabOrder := 4;
          FrmFormPag1.TabOrder := 5;
          PEquipe.Visible:=True;
          PEquipe.BringToFront;
          FrmEquipamento.EdDescricao.Clear;
          FrmEquipamento.EDCodigo.Clear;
          EDespesa.Text := '';
          EValor.Text := '0,00';
          EQtd.Text := '0,00';
          EDesc.Text := '0,00';
          ETotal.Text := '0,00';
          FrmEquipe.EDCodigo.Text := '';
          FrmEquipe.EdDescricao.Text := '';
          // desativa o groupbox de kilometragem
          GBKM.Enabled := false;
          EDKM.Text := '';
          CBUnid.Text := '';
          FrmMotorista.EdDescricao.Text := '';
          FrmMotorista.EDCodigo.Text := '';
       end
       else begin
           FBEquipPlaca.Visible:=False;
           FBEquipPlaca.SendToBack;
           PEquipe.Visible:=false;
           PEquipe.SendToBack;
       end;

       TCCadastro.ActiveTab:=0;
       TCCadastro.OnTabChanged(Sender);
       //Limpa edits
       FrmCliente.EDCodigo.Text:='';
       FrmCliente.EdDescricao.Text:='';
       FrmEquipamento.EDCodigo.Text:='';
       FrmEquipamento.EdDescricao.Text:='';
       FrmVendedor.EDCodigo.Text:='';
       FrmVendedor.EdDescricao.Text:='';
       FrmFormPag1.EDCodigo.Text:='';
       FrmFormPag1.EdDescricao.Text:='';
       FrmResponsavel.EDCodigo.Text:='';
       FrmResponsavel.EdDescricao.Text:='';
       EdDescTProd.Text := '0,00';
       EdtotalProd.Text := '0,00';
       FBEquipPlaca.EDCodigo.Text := '';
       FBEquipPlaca.EdDescricao.Text := '';
       LimpaLabelsDESP;

       // limpando memo
       MFunc.Clear;

       //VERIFICA RESTRICOES DE USUARIO
       If ControlAccess('USAGARANT', '')=False
       Then Begin
           CBGarantia.Checked:=False;
           CBGarantia.Enabled:=False;
       End
       Else Begin
           CBGarantia.Enabled:=True;
       End;
       If DMMACS.TLoja.FieldByName('USAGARANTIA').AsString='1'
       Then Begin
           CBGarantia.Visible:=True;
           CBGarantia.BringToFront;
       End
       Else Begin
           CBGarantia.Visible:=False;
       End;

       //VERIFICA RESTRICOES DE USUARIO
       If ControlAccess('USAGARANT', '')=False
       Then Begin
           CBGarantia.Checked:=False;
           CBGarantia.Enabled:=False;
       End
       Else Begin
           CBGarantia.Enabled:=True;
       End;

       XEstado:='INSERT';//Define como estado de inserção

       //CONTROLA OS PEINEIS PARA ATENDER O TIPO DE LOJA
       If DMMACS.TLoja.FieldByName('ATIVIDADE').AsString='INFORMATICA'
       Then Begin
            {
            FiltraTabela(DMServ.TOrd,  'ORDEM', 'COD_ORDEM', IntToStr(XCODPKMESTRE), '');
           XTabela.First;
           XTabela.Edit;
           XTabela.FieldByName('LOCALAT').AsString:='';
           XTabela.Post;}
           DMServ.TAlx1.Close;
           DMServ.TAlx1.SQL.Clear;
           DMServ.TAlx1.SQL.Add('update ORDEM set LOCALAT = :LOCALAT');
           DMServ.TAlx1.SQL.Add('where COD_ORDEM = :OLD_COD_ORDEM');
           DMServ.TAlx1.ParamByName('OLD_COD_ORDEM').AsInteger := XCOD_ORDEM;
           DMServ.TAlx1.ParamByName('LOCALAT').AsString := '';
           DMServ.TAlx1.ExecSQL;

           DMServ.IBT.CommitRetaining;

            FiltraTabela(DMServ.TOrd,  'ORDEM', 'COD_ORDEM', IntToStr(XCODPKMESTRE), '');

           PAbreInfo.Visible:=True;
           PAbreInfo.BringToFront;
       End;
   End
   Else Begin
       // painel de locação visivel
       PLocacao.Visible := true;
       PLocacao.BringToFront;

       // ocultando o painel de horas
       PHoras.Visible := false;

       EDDataIni.Text := DateToStr(date);
       EDHAbert.Text := TimeToStr(time);

       // desativa o edit para nao ser alterado a quilometragem
       EDKmTotal.Enabled := false;

       // limpa memo
       MFunc.Lines.Clear;

       // limpa todos os campos
       LimpaCampos;

       // limpa edits do ajudante
       Limpa_EditAjudante;

       // atualiza grid logo apos inserir servico
       AtualizaGrid_Servico;

       // limpa edits apos inserir servico
       LimpaEdits;

       // atualiza grid do servicos
       AtualizaGrid_Servico;

       // filtra funcionarios, ajudantes e ordem de servico apos inserir os ajudantes na OS
       FiltraAjudante;

       // ativando a primeira pagina - Veiculo
       PCVeiculo.ActivePage := TabSheet3;
   End;

   {//INSERE NUMERO
   If FiltraTabela(DMMacs.TEmpresa,  'EMPRESA', 'COD_EMPRESA', FMenu.LCODEMPRESA.Caption, '') = True
   Then Begin
       DMMACS.TEmpresa.EDIT;
       DMMACS.TEmpresa.FieldByName('PROX_OS').AsString:=IntToStr(StrToInt(DMMACS.TEmpresa.FieldByName('PROX_OS').AsString)+1);
       DMMACS.TEmpresa.Post;
       DMMACS.Transaction.CommitRetaining;
   End;}

   //PASSA AS PRINCIPAIS INFORMAÇÕES A ORDEM P/ Q ELA NÃO SEJA PERDIDA
   FiltraTabela(DMPESSOA.WCliente, 'VWCLIENTE', '','','');
   FiltraTabela(DMPESSOA.TEquip, 'EQUIPAMENTO', '','','');

   {XTabela.Edit;
   XTabela.FieldByName('COD_CLIENTE').AsString:=DMPESSOA.WCliente.FieldByName('COD_CLIENTE').AsString;
   XTabela.FieldByName('COD_EQUIPAMENTO').AsString:=DMPESSOA.TEquip.FieldByName('COD_EQUIPAMENTO').AsString;
   XTabela.FieldByName('COD_LOJA').AsString:=FMenu.LCODLOJA.Caption;

   //XTabela.FieldByName('DTABERT').AsDateTime:=DATE();
   //XTabela.FieldByName('HRABERT').AsDateTime:=Time();
   //XTabela.FieldByName('STATUS').AsString:='ABERTO';
   //XTabela.FieldByName('LOCALAT').AsString:='BALCÃO';

   XTabela.Post;}

   {DMServ.TAlx1.Close;
   DMServ.TAlx1.SQL.Clear;
   DMServ.TAlx1.SQL.Add('update ORDEM set COD_CLIENTE = :COD_CLIENTE, COD_EQUIPAMENTO = :COD_EQUIPAMENTO, COD_LOJA = :COD_LOJA'); //, DTABERT = :DTABERT, HRABERT = :HRABERT, STATUS = :STATUS, LOCALAT = :LOCALAT');
   DMServ.TAlx1.SQL.Add('where COD_ORDEM = :OLD_COD_ORDEM');
   DMServ.TAlx1.ParamByName('OLD_COD_ORDEM').AsInteger := XCOD_ORDEM;
   DMServ.TAlx1.ParamByName('COD_CLIENTE').AsInteger:=DMPESSOA.WCliente.FieldByName('COD_CLIENTE').AsInteger;
   DMServ.TAlx1.ParamByName('COD_EQUIPAMENTO').AsInteger:=DMPESSOA.TEquip.FieldByName('COD_EQUIPAMENTO').AsInteger;
   DMServ.TAlx1.ParamByName('COD_LOJA').AsString:=FMenu.LCODLOJA.Caption;
   //DMServ.TAlx1.ParamByName('DTABERT').AsDateTime:=DATE();
   //DMServ.TAlx1.ParamByName('HRABERT').AsDateTime:=Time();
   //DMServ.TAlx1.ParamByName('STATUS').AsString:='ABERTO';
   //DMServ.TAlx1.ParamByName('LOCALAT').AsString:='BALCÃO';
   DMServ.TAlx1.ExecSQL;
   DMServ.IBT.CommitRetaining;}

   //XTransaction.CommitRetaining;
   FiltraTabela(XTabela, XSQLTABELA, 'COD_ORDEM', IntToStr(XCODPKMESTRE), '');
   XTabela.Edit;
   DBNumORD.SetFocus;

   // define a largura do campo "descricao do back up"
   DBDescBackup.Height := 44;

   CBDocumentos.Checked := false;
   CBDesktop.Checked := false;
   CBEmails.Checked := false;
   CBOutros.Checked := false;


       


   // BUSCANDO DADOS DA ORDEM
   //FiltraTabela(DMServ.TOrd,'ORDEM','COD_ORDEM',IntToStr(XCOD_ORDEM),'');

   // editando campo para não deixa-la disponel para consulta ou fechamento
   //DMServ.TOrd.Edit;
   //DMServ.TOrd.FieldByName('EDIT').AsString := '1';
   //DMServ.TOrd.Post;
   //DMServ.IBT.CommitRetaining;

end;

procedure TFOrdem.FrmClienteEDCodigoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
	If Key = VK_return
   Then Begin
       // se for para guinchomaq
       If DMMACS.TLoja.FieldByName('ORDEMLOCA_GUINDASTE').AsString = '1'
       Then Begin
           If FiltraTabela(DMPESSOA.WCliente, 'VWCLIENTE', 'COD_INTERNO', #39+Trim(EDCodigoCli.Text)+#39,'')=True
           Then Begin//CASO CONSEGUIU SELECIONAR CLIENTE
               EDCodigoCli.Text := DMPESSOA.WCliente.FieldByName('COD_INTERNO').AsString;
               EdDescricaoCli.Text := DMPESSOA.WCliente.FieldByName('NOME').AsString;
               XCOD_CLIENTE := DMPESSOA.WCliente.FieldByName('COD_CLIENTE').AsInteger;

               // Buscar tabela de preço atrelada ao cliente
               BuscarTabPreco;

               // como encontrou cliente jah jogou o ofoco para tabela de preço
               FrmTabela.EDCodigo.SetFocus;
           End
           Else Begin//CASO NÃO CONSEGUIU SELECIONAR CLIENTE
               XCOD_CLIENTE:=-1;
               EDCodigoCli.Text := '';
               EdDescricaoCli.Text := '';
               FrmTabela.EDCodigo.Text := '';
               FrmTabela.EdDescricao.Text := '';
           End;
       End
       Else Begin
           If FiltraTabela(DMPESSOA.WCliente, 'VWCLIENTE', 'COD_INTERNO', #39+Trim(FrmCliente.EDCodigo.Text)+#39,'')=True
           Then Begin//CASO CONSEGUIU SELECIONAR CLIENTE
               XCOD_CLIENTE:=DMPESSOA.WCliente.FieldByName('COD_CLIENTE').AsInteger;
               FrmCliente.EdDescricao.Text:=DMPESSOA.WCliente.FieldByName('NOME').AsString;
               FrmCliente.EDCodigo.Text:=DMPESSOA.WCliente.FieldByName('COD_INTERNO').AsString;
               SelectFormPag_Vendedor;
           End
           Else Begin//CASO NÃO CONSEGUIU SELECIONAR CLIENTE
               XCOD_CLIENTE:=-1;
               FrmCliente.EdDescricao.Text:='';
               FrmCliente.EDCodigo.Text:='';
           End;
       End;
   End;
   FrmCliente.Repaint;
end;

procedure TFOrdem.FrmClienteBTNOPENClick(Sender: TObject);
begin
  inherited;
	FiltraTabela(DMPESSOA.WCliente, 'VWCLIENTE', '', '', ' ORDER BY NOME');//LIBERA TODOS OS REGISTROS PARA CONSULTA

   FMenu.XPreSel := True;
  FMenu.XFieldPesqPreSel := 'COD_INTERNO';
  FMenu.XCodPesqPresSel := FrmCliente.EDCodigo.Text;
   If AbrirForm(TFCliente, FCliente, 1)='Selected'
   Then Begin
   	If FiltraTabela(DMPESSOA.TCliente, 'CLIENTE', 'COD_CLIENTE', DMPESSOA.WCliente.FieldByName('COD_CLIENTE').AsString, '')=True
       Then Begin
   		//VERIFICA QTO ATUALIZAÇÃO DE INFORMAÇÕES DO CLIENTE
       	If DMPESSOA.TCliente.FieldByName('ATUALIZAR').AsString='1' Then
       		Mensagem('Mzr Sistemas - INFORMAÇÃO', 'As informações deste cliente devem ser atualizadas!', '', 1, 1, false, 'i');
       End;

       XCOD_CLIENTE:=DMPESSOA.WCliente.FieldByName('COD_CLIENTE').AsInteger;
       // se for para ordem de serviço da GUINCHOMAQ, entra na proxima condição
       If (DMMACS.TLoja.FieldByName('ORDEMLOCA_GUINDASTE').AsString = '0') or (DMMACS.TLoja.FieldByName('ORDEMLOCA_GUINDASTE').AsString = '')
       Then Begin
           FrmCliente.EDCodigo.Text:=DMPESSOA.WCliente.FieldByName('COD_INTERNO').AsString;
           FrmCliente.EdDescricao.Text:=DMPESSOA.WCliente.FieldByName('NOME').AsString;
       End
       Else Begin
           EDCodigoCli.Text := DMPESSOA.WCliente.FieldByName('COD_INTERNO').AsString;
           EdDescricaoCli.Text := DMPESSOA.WCliente.FieldByName('NOME').AsString;

           // Buscar tabela de preço atrelada ao cliente
           BuscarTabPreco;

       End;

	    SelectFormPag_Vendedor;

   End
   Else Begin
       XCOD_CLIENTE:=-1;
 		FrmCliente.EDCodigo.Text:='';
       FrmCliente.EdDescricao.Text:='';
   End;

   // se for para guinchomaq
   If DMMACS.TLoja.FieldByName('ORDEMLOCA_GUINDASTE').AsString = '1'
   Then Begin
       // filtra funcionarios, ajudantes e ordem de servico apos inserir os ajudantes na OS
       FiltraAjudante;
   End;

   FrmCliente.Repaint;
   FrmConta.Repaint;
   FrmContaServ.Repaint;
   FrmFormPag.Repaint;
   FrmMoeda.Repaint;
   FrmResponsavel.Repaint;
   FrmVendedor.Repaint;

end;

procedure TFOrdem.FrmEquipamentoEDCodigoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
	If Key = VK_return
   Then Begin
      	If FiltraTabela(DMPESSOA.TEquip, 'EQUIPAMENTO', 'COD_EQUIPAMENTO', '', ' (COD_EQUIPAMENTO='+#39+FrmEquipamento.EDCodigo.Text+#39+') AND (COD_CLIENTE='+IntToStr(XCOD_CLIENTE)+')')=True
       Then Begin//CASO CONSEGUIU SELECIONAR EQUIPAMENTO
        	XCOD_EQUIPAMENTO:=DMPESSOA.TEquip.FieldByName('COD_EQUIPAMENTO').AsInteger;
           FrmEquipamento.EdDescricao.Text:=DMPESSOA.TEquip.FieldByName('DESCRICAO').AsString;
	        FrmEquipamento.EDCodigo.Text:=DMPESSOA.TEquip.FieldByName('COD_EQUIPAMENTO').AsString;
       End
       Else Begin//CASO NÃO CONSEGUIU SELECIONAR CLIENTE
        	XCOD_EQUIPAMENTO:=-1;
           FrmEquipamento.EdDescricao.Text:='';
	        FrmEquipamento.EDCodigo.Text:='';
       End;
   End;
   FrmEquipamento.Repaint;
end;

procedure TFOrdem.FrmEquipamentoBTNOPENClick(Sender: TObject);
begin
  inherited;
	FiltraTabela(DMPESSOA.TEquip, 'EQUIPAMENTO', '', '', ' ORDER BY DESCRICAO');//LIBERA TODOS OS REGISTROS PARA CONSULTA
   If AbrirForm(TFCadEquipamento, FCadEquipamento, 1)='Selected'
   Then Begin
       XCOD_EQUIPAMENTO:=DMPESSOA.TEquip.FieldByName('COD_EQUIPAMENTO').AsInteger;

       // se for para ordem de serviço da GUINCHOMAQ, entra na proxima condição
       If (DMMACS.TLoja.FieldByName('ORDEMLOCA_GUINDASTE').AsString = '0') or (DMMACS.TLoja.FieldByName('ORDEMLOCA_GUINDASTE').AsString = '')
       Then Begin
           FrmEquipamento.EDCodigo.Text:=DMPESSOA.TEquip.FieldByName('COD_EQUIPAMENTO').AsString;
           FrmEquipamento.EdDescricao.Text:=DMPESSOA.TEquip.FieldByName('DESCRICAO').AsString;
       End
       Else Begin
           EDEquip.Text:=DMPESSOA.TEquip.FieldByName('DESCRICAO').AsString;
           EDPlaca.Text := DMPESSOA.TEquip.FieldByName('PLACA').AsString;

           // busca dados do veiculo para servico
           BuscaDadosVeiculo;

           If not DMServ.TAlx3.IsEmpty
           Then Begin
               // na tabela de preço o usuario pode ter cadastrado o KM com valor diferente seja com desconto ou nao, etc.
               // Essa sql busca o preco do KM registrado no subservico e o valor do KM registrado na tabela de preco.
               // se foi encontrado na TABELA DE PRECO e o checkbox estiver selecionado, o valor sera da TABELA DE PRECO,
               // caso contrario vira da tabela subservico
               If (CBPrecoKm.Checked = true) and (FrmTabela.EDCodigo.Text <> '')
               Then Begin
                   LVlrTitulo.Caption := 'Valor Tabela';
                   If DMServ.TAlx3.FieldByname('VLR_ITENSTAB').AsString <> ''
                   Then Begin
                       EDValor.Text := (FormatFloat('0.00',DMServ.TAlx3.FieldByname('VLR_ITENSTAB').AsCurrency));
                   End
                   Else Begin
                       EDValor.Text := FormatFloat('0,00',0);
                   End;
               End
               Else Begin
                   EDValor.ValueNumeric := StrToFloat(FormatFloat('0.00',DMServ.TAlx3.FieldByname('VLR_SUBSERV').AsCurrency));
               End;

               If EdPlaca.Text <> '   -    '
               Then Begin

                   // busca o motorista do equipamento
                   Localiza_Motorista(EdPlaca.Text);

                   If Not DMPESSOA.TAux1.IsEmpty
                   Then Begin
                       FrmMotorista.EDCodigo.Text := DMPESSOA.TAux1.FieldByname('cod_func').AsString;
                       FrmMotorista.EdDescricao.Text := DMPESSOA.TAux1.FieldByname('nome').AsString;
                   End
                   Else Begin
                       FrmMotorista.EDCodigo.Text := '';
                       FrmMotorista.EdDescricao.Text := '';
                   End;

                   // desabilita os campos para nao serem alterados enquanto nao for selecionado equipamento se o parametro for TRUE;
                   DesabilitaCampos(false);

                   // a função que busca a quantidade minima do servico utiliza a tabela de preço, por isso eh feito essa verificação
                   If FrmTabela.EDCodigo.Text <> ''
                   Then Begin
                       // busca a quantidade minima do servico regitrado na tabela de preço
                       EDHrMin.Text := TimeToStr(StrToTime(QtdeMin_Servico));
                   End;

               End;

           End
           Else Begin
               EdVlrKm.Text := '0,00';
               EDValor.Text := '0,00';

               // desabilita os campos para nao serem alterados enquanto nao for selecionado equipamento se o parametro for TRUE;
               DesabilitaCampos(false);

               // busca o motorista do equipamento
               Localiza_Motorista(EdPlaca.Text);

               If Not DMPESSOA.TAux1.IsEmpty
               Then Begin
                   FrmMotorista.EDCodigo.Text := DMPESSOA.TAux1.FieldByname('cod_func').AsString;
                   FrmMotorista.EdDescricao.Text := DMPESSOA.TAux1.FieldByname('nome').AsString;
               End;

           End;
       End;
   End
   Else Begin
       XCOD_EQUIPAMENTO:=-1;
 		FrmEquipamento.EDCodigo.Text:='';
       FrmEquipamento.EdDescricao.Text:='';
   End;
   FrmEquipamento.Repaint;
end;

procedure TFOrdem.FrmVendedorEDCodigoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
	If Key = VK_return
   Then Begin
      	//If FiltraTabela(DMPESSOA.VWFuncionario, 'VWFUNCIONARIO', 'COD_INTERNO', '', ' COD_INTERNO='+#39+FrmVendedor.EDCodigo.Text+#39)=True
       If FiltraTabela(DMPESSOA.VWFuncionario, 'VWFUNCIONARIO', 'COD_INTERNO', Trim(FrmVendedor.EDCodigo.Text),'')=True
       Then Begin//CASO CONSEGUIU SELECIONAR CLIENTE
        	XCOD_VENDEDOR:=DMPESSOA.VWFuncionario.FieldByName('COD_FUNC').AsInteger;
           FrmVendedor.EdDescricao.Text:=DMPESSOA.VWFuncionario.FieldByName('NOME').AsString;
	        FrmVendedor.EDCodigo.Text:=DMPESSOA.VWFuncionario.FieldByName('COD_INTERNO').AsString;
       End
       Else Begin//CASO NÃO CONSEGUIU SELECIONAR CLIENTE
        	XCOD_VENDEDOR:=-1;
           FrmVendedor.EdDescricao.Text:='';
	        FrmVendedor.EDCodigo.Text:='';
       End;
   End;
   FrmVendedor.Repaint;
end;

procedure TFOrdem.FrmVendedorBTNOPENClick(Sender: TObject);
begin
  inherited;
   FMenu.TIPOAUX:='VENDEDOR';
        FMenu.XPreSel := True;
        FMenu.XFieldPesqPreSel := 'COD_INTERNO';
        FMenu.XCodPesqPresSel := FrmVendedor.EdDescricao.Text;
   If AbrirForm(TFFuncionario, FFuncionario, 1)='Selected'
   Then Begin
       XCOD_VENDEDOR:=DMPESSOA.VWFuncionario.FieldByName('COD_FUNC').AsInteger;
 		FrmVendedor.EDCodigo.Text:=DMPESSOA.VWFuncionario.FieldByName('COD_INTERNO').AsString;
       FrmVendedor.EdDescricao.Text:=DMPESSOA.VWFuncionario.FieldByName('NOME').AsString;

       // A MERCESCAN SOLICITOU PARA QUE AUTOMATICAMENTE O RESPONSAVEL RECEBA OS MESMOS DADOS
       If DMMACS.TLoja.FieldByName('ATIVIDADE').AsString = 'EQUIPE'
       Then Begin
           XCOD_FUNCIONARIO := DMPESSOA.VWFuncionario.FieldByName('COD_FUNC').AsInteger;
           FrmResponsavel.EDCodigo.Text := DMPESSOA.VWFuncionario.FieldByName('COD_INTERNO').AsString;
           FrmResponsavel.EdDescricao.Text := DMPESSOA.VWFuncionario.FieldByName('NOME').AsString;
       End;
   End
   Else Begin
       XCOD_VENDEDOR:=-1;
 		FrmVendedor.EDCodigo.Text:='';
       FrmVendedor.EdDescricao.Text:='';

       // A MERCESCAN SOLICITOU PARA QUE AUTOMATICAMENTE O RESPONSAVEL RECEBA OS MESMOS DADOS
       If DMMACS.TLoja.FieldByName('ATIVIDADE').AsString = 'EQUIPE'
       Then Begin
           XCOD_FUNCIONARIO := -1;
           FrmResponsavel.EDCodigo.Text := '';
           FrmResponsavel.EdDescricao.Text := '';
       End;
   End;
   FrmCliente.Repaint;
   FrmConta.Repaint;
   FrmContaServ.Repaint;
   FrmFormPag.Repaint;
   FrmMoeda.Repaint;
   FrmResponsavel.Repaint;
   FrmVendedor.Repaint;

end;

procedure TFOrdem.FrmResponsavelEDCodigoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
	If Key = VK_return
   Then Begin
      	If FiltraTabela(DMPESSOA.VWFuncionario, 'VWFUNCIONARIO', 'COD_INTERNO', Trim(FrmResponsavel.EDCodigo.Text), '')=True
       Then Begin//CASO CONSEGUIU SELECIONAR CLIENTE
        	XCOD_FUNCIONARIO:=DMPESSOA.VWFuncionario.FieldByName('COD_FUNC').AsInteger;
           FrmResponsavel.EdDescricao.Text:=DMPESSOA.VWFuncionario.FieldByName('NOME').AsString;
	        FrmResponsavel.EDCodigo.Text:=DMPESSOA.VWFuncionario.FieldByName('COD_INTERNO').AsString;
       End
       Else Begin//CASO NÃO CONSEGUIU SELECIONAR CLIENTE
        	XCOD_FUNCIONARIO:=-1;
           FrmResponsavel.EdDescricao.Text:='';
	        FrmResponsavel.EDCodigo.Text:='';
       End;
   End;
   FrmResponsavel.Repaint;
end;

procedure TFOrdem.FrmResponsavelBTNOPENClick(Sender: TObject);
begin
  inherited;
	FiltraTabela(DMPESSOA.VWFuncionario, 'VWFUNCIONARIO', '', '', ' ORDER BY NOME');//LIBERA TODOS OS REGISTROS PARA CONSULTA
   FMenu.XPreSel := True;
        FMenu.XFieldPesqPreSel := 'COD_INTERNO';
        FMenu.XCodPesqPresSel := FrmResponsavel.EDCodigo.Text;
   If AbrirForm(TFFuncionario, FFuncionario, 1)='Selected'
   Then Begin
       XCOD_FUNCIONARIO:=DMPESSOA.VWFuncionario.FieldByName('COD_FUNC').AsInteger;
 		FrmResponsavel.EDCodigo.Text:=DMPESSOA.VWFuncionario.FieldByName('COD_INTERNO').AsString;
       FrmResponsavel.EdDescricao.Text:=DMPESSOA.VWFuncionario.FieldByName('NOME').AsString;
   End
   Else Begin
       XCOD_FUNCIONARIO:=-1;
 		FrmResponsavel.EDCodigo.Text:='';
       FrmResponsavel.EdDescricao.Text:='';
   End;
   FrmCliente.Repaint;
   FrmConta.Repaint;
   FrmContaServ.Repaint;
   FrmFormPag.Repaint;
   FrmMoeda.Repaint;
   FrmResponsavel.Repaint;
   FrmVendedor.Repaint;

end;

procedure TFOrdem.FormActivate(Sender: TObject);
begin
  inherited;
	 Caption:='Ordem de Serviço' ;  
	XTabela:=DMSERV.TOrd;
	XCampo:='NUMERO';
   XPkTabela:='COD_ORDEM';
   XTransaction:=DMSERV.IBT;
   XView:=DMSERV.WOrdem;
   XTab:=False;
   XDescricao:=' a ordem ';
   XSQLTABELA:='ORDEM';
   XSQLVIEW:= 'VWORDEM';
   If DMMACS.TLoja.FieldByName('ATIVIDADE').AsString = 'EQUIPE'
   Then Begin
       XLiberaDados:=' WHERE COD_LOJA='+FMenu.LCODLOJA.Caption+'ORDER BY BOX DESC, STATUS';
       CBFILTRO.Text:='ABERTAS';
   	If DMMACS.TLoja.FieldByName('ORDENAORDEM').AsString<>'' Then
   		CBORDEM.Text:= DMMACS.TLoja.FieldByName('ORDENAORDEM').AsString
       Else
       	CBORDEM.Text := 'BOX';
   End
   Else Begin
       XLiberaDados:=' WHERE COD_LOJA='+FMenu.LCODLOJA.Caption+' ORDER BY NUMERO DESC, CLIENTE';
   End;
   CBORDEMExit(sender);
   LiberaDados;
   //SETA DBS
   DBGridCadastroPadrao.DataSource:=DMSERV.DWOrdem;

   //controle de visibilidade do painel de consulta de preços
   PPrecos.Visible:=False;

   // como a studio 17 utiliza o fechamento 5, o titulo que antes era "Problema reclamado" agora passa a ser o seguinte:
   If DMMACS.TLoja.FieldByName('MODELOORDEM').AsString = '7'
   Then Begin
       LTitulo.Caption := 'Descriminação dos materiais';
   End;

   DBNumOrd.DataSource:=DMSERV.DOrd;
   DBNumOrd.DataField:='NUMERO';
   DBDTABERT.DataSource:=DMSERV.DOrd;
   DBDTABERT.DataField:='DTABERT';
   DBHRABERT.DataSource:=DMSERV.DOrd;
   DBHRABERT.DataField:='HRABERT';
   DBDTPREV.DataSource:=DMSERV.DOrd;
   DBDTPREV.DataField:='DTPREV';
   DBHRPREV.DataSource:=DMSERV.DOrd;
   DBHRPREV.DataField:='HRPREV';
   DBPROBREC.DataSource:=DMSERV.DOrd;
   DBPROBREC.DataField:='PROBREC';
   DBSOLU.DataSource:=DMSERV.DOrd;
   DBSOLU.DataField:='SOLUCAO';
   DBOBS.DataSource:=DMSERV.DOrd;
   DBOBS.DataField:='OBSERVACAO';
   DBLOCALAT.DataSource:=DMSERV.DOrd;
   DBLOCALAT.DataField:='LOCALAT';
   DBMMotParada.DataSource:=DMSERV.DOrd;
   DBMMotParada.DataField:='MOTIVOPARADA';
   //ajusta tamanho das edits de comissionados
	FrmCliente.Repaint;
	FrmConta.Repaint;
	FrmContaServ.Repaint;
	FrmEquipamento.Repaint;
	FrmFormPag.Repaint;
	FrmFormPag1.Repaint;
	FrmMoeda.Repaint;
	FrmResponsavel.Repaint;
	FrmVendedor.Repaint;
   XLIBDESCPROD:=False;
   XLIBMARGEMSEG:=False;

   // - 20/04/2009: verificar se arquivo de layout foi salvo anteriormente
   If FileExists('C:\MZR\Arquivos\LayoutGrid\ordem.lgm')
   Then
       DBGridCadastroPadrao.Columns.LoadFromFile('C:\MZR\Arquivos\LayoutGrid\ordem.lgm');
   If FileExists('C:\MZR\Arquivos\LayoutGrid\ordemProdutos.lgm')
   Then
       DBGrid1.Columns.LoadFromFile('C:\MZR\Arquivos\LayoutGrid\ordemProdutos.lgm');
   If FileExists('C:\MZR\Arquivos\LayoutGrid\ordemDespesas.lgm')
   Then
       DBGrid3.Columns.LoadFromFile('C:\MZR\Arquivos\LayoutGrid\ordemDespesas.lgm');
   If FileExists('C:\MZR\Arquivos\LayoutGrid\ordemServicos.lgm')
   Then
       DBGrid2.Columns.LoadFromFile('C:\MZR\Arquivos\LayoutGrid\ordemServicos.lgm');
   If FileExists('C:\MZR\Arquivos\LayoutGrid\ordemVeiculos.lgm')
   Then
       DBGrid5.Columns.LoadFromFile('C:\MZR\Arquivos\LayoutGrid\ordemVeiculos.lgm');
   If FileExists('C:\MZR\Arquivos\LayoutGrid\ordemAjudantes.lgm')
   Then
       DBFunc.Columns.LoadFromFile('C:\MZR\Arquivos\LayoutGrid\ordemAjudantes.lgm');

   If FileExists('C:\MZR\Arquivos\LayoutGrid\ordemDevParCom.lgm')
   Then
       DBGrid6.Columns.LoadFromFile('C:\MZR\Arquivos\LayoutGrid\ordemDevParCom.lgm');

   If FileExists('C:\MZR\Arquivos\LayoutGrid\ordemDevParc.lgm')
   Then
       DBGrid7.Columns.LoadFromFile('C:\MZR\Arquivos\LayoutGrid\ordemDevParc.lgm');

   if DMMACS.TLoja.FieldByName('atividade').AsString='EQUIPE'
   then begin
       GBPlaca.Visible:=True;
       GBPlaca.BringToFront;
       EDBox.SetFocus;
       // ocultando a terceira guia que no caso seria Despesas
       TCCadastro.Tabs.Clear;
       TCCadastro.Tabs.Add('&Abertura');
       TCCadastro.Tabs.Add('&Produtos e Serviços');
       FrmVendedor.Visible := false;
       FrmResponsavel.Visible := false;

       // ajusta o posicionamento do frmformpag, tamanho e posicionamento dos campos
       AjustaFormPag;
   end
   else begin
       // com "&" (E comercial) os paineis terão atalhos
       TCCadastro.Tabs.Clear;
       TCCadastro.Tabs.Add('&Abertura');
       TCCadastro.Tabs.Add('&Produtos e Serviços');
       TCCadastro.Tabs.Add('&Despesas');
       GBPlaca.Visible:=False;
       GBPlaca.SendToBack;
       PMFisco.Items.Remove(ExportarOrdServ1);
       PMFisco.Items.Remove(Exportar);
       GBKM.Visible := false;
       GBKM.SendToBack;
       LBox.Visible := false;
       DBBox.Visible := false;
       FrmVendedor.Visible := true;
       FrmResponsavel.Visible := true;
   end;

   If DMMACS.TLoja.FieldByName('ATIVIDADE').AsString='INFORMATICA'
   Then Begin
       PAbreInfo.Visible:=True;
       PAbreInfo.BringToFront;
   End
   Else Begin
       PAbreMecanica.Visible:=True;
       PAbreMecanica.BringToFront;
   End;
   If DMMACS.TLoja.FieldByName('ATIVIDADE').AsString='GRAFICA' Then
   	DBRadioGroup1.Visible:=False
   Else
		DBRadioGroup1.Visible:=True;

   // aparecem os campos de Box e Placa somente se o tipo de atividade for igual á EQUIPE
   If DMMACS.TLoja.FieldByName('atividade').AsString <> 'EQUIPE'
   Then Begin
       DBGridCadastroPadrao.Columns.Items[0].Visible := false;
       DBGridCadastroPadrao.Columns.Items[1].Visible := false;
       DBGridCadastroPadrao.Columns.Items[5].Visible := false;
       DBGridCadastroPadrao.Columns.Items[6].Visible := false;
   End;

   // se o campo for igual a 1, eh uso da guinchomaq
   If DMMACS.TLoja.FieldByName('ORDEMLOCA_GUINDASTE').AsString <> '1'
   Then Begin
       PLocacao.Visible := false;
       PLocacao.SendToBack;
   End
   Else Begin
       PLocacao.Visible := true;
       PLocacao.BringToFront;
       XHorasVesp := '00:00:00';
       XHorasMat:= '00:00:00';
       XExtraMat:= '00:00:00';
       XExtraVesp:= '00:00:00';
       XEMat := '00:00:00';
       XEVesp:= '00:00:00';
       XHMat:= '00:00:00';
       XHVesp:= '00:00:00';
       
       // desabilita os campos para nao serem alterados enquanto nao for selecionado equipamento se o parametro for TRUE;
       DesabilitaCampos(true);
   End;

   FMenu.XCodOrdemVinculo := -1;
   FMenu.SelectedForm:=False;//inicia com false para dizer que o botão selecionar não foi pressionado
   //Edmar - 19/08/2015 - verifica o tipo do formulário para posicionar
   //a grid corretamente e mostrar ou não o botão para seleção
 	if Tag = 20 then//form de seleção
   begin
       DBGridCadastroPadrao.Top := 133;
       DBGridCadastroPadrao.Height := 358;
       BtnSelecionaOrdem.Visible := True;
   end
   else begin//form de cadastro
       DBGridCadastroPadrao.Top := 108;
       DBGridCadastroPadrao.Height := 383;
       BtnSelecionaOrdem.Visible := False;
   end;
end;

procedure TFOrdem.BtnGravarClick(Sender: TObject);
begin

   // verifica se jah existe ordem com o mesmo numero
   DMServ.TAlx1.Close;
   DMServ.TAlx1.SQL.Clear;
   DMServ.TAlx1.SQL.Add('select * from ordem where (ordem.numero = :numero)');
   DMServ.TAlx1.ParamByName('numero').AsString := DBNumOrd.Text;
   DMServ.TAlx1.Open;

   If (Not DMServ.TAlx1.IsEmpty) and (DMServ.TAlx1.FieldByName('cod_ordem').AsInteger <> XCOD_ORDEM)
   Then Begin
       Mensagem('   A T E N Ç Ã O   ','Já existe outra ordem de serviço com o mesmo número. Por favor, altere o valor.','',1,1,false,'I');
       DBNumOrd.SetFocus;
       Exit;
   End;

   // seleciona todos os produtos da ordem de serviço
   DMESTOQUE.Alx1.Close;
   DMESTOQUE.Alx1.SQL.Clear;
   DMESTOQUE.Alx1.SQL.Add('select * from itprodord where itprodord.cod_ordem = :cod_ordem');
   DMESTOQUE.Alx1.ParamByName('cod_ordem').AsInteger := XCOD_ORDEM;
   DMESTOQUE.Alx1.Open;

   // se nao possuir nenhum produto verifica se existem servico na ordem
   If DMESTOQUE.Alx1.IsEmpty
   Then Begin
       // faz a verificação na tabela de servico p ver se possui servico atrelado á ordem na tabela itservord
       If DMMACS.TLoja.FieldByName('ATIVIDADE').AsString <> 'EQUIPE'
       Then Begin
           DMESTOQUE.Alx2.Close;
           DMESTOQUE.Alx2.SQL.Clear;
           DMESTOQUE.Alx2.SQL.Add('select * from itservord where itservord.cod_ordem = :cod_ordem');
           DMESTOQUE.Alx2.ParamByName('cod_ordem').AsInteger := XCOD_ORDEM;
           DMESTOQUE.Alx2.Open;
       End
       Else Begin
           // na tabela despadic eh feito uma verificação se possui servico relacionado a ordem
           DMESTOQUE.Alx2.Close;
           DMESTOQUE.Alx2.SQL.Clear;
           DMESTOQUE.Alx2.SQL.Add('select * from despadic where despadic.cod_gerador = :codigo');
           DMESTOQUE.Alx2.ParamByName('codigo').AsInteger := XCOD_ORDEM;
           DMESTOQUE.Alx2.Open;
       End;
    End;

       // se nao possui servico e nem produtos eh exibido a mensagem - SEGUNDO SOLICITAÇÃO É OBRIGATORIO PODER GRAVAR SEM SERVICO
       If (DMESTOQUE.Alx2.IsEmpty) AND (DMMACS.TLoja.FieldByName('ORDEMLOCA_GUINDASTE').AsInteger <> 1)
       Then Begin
           If Mensagem('   A T E N Ç Ã O   ','A Ordem de Serviço atual não possui produtos e serviços selecionados. Deseja apagá-la ?','',2,3,false,'A')=2
           Then Begin
	       		//Apaga ORDEM
				//FiltraTabela(DMServ.TOrd, 'ORDEM', 'COD_ORDEM', IntToStr(XCOD_ORDEM), '');
               Try
                 DMServ.TAlx1.Close;
                 DMServ.TAlx1.SQL.Clear;
                 DMServ.TAlx1.SQL.Add('delete from ordem where ordem.cod_ordem = :CODORDEM');
                 DMServ.TAlx1.ParamByName('CODORDEM').AsInteger := XCOD_ORDEM;
                 DMServ.TAlx1.ExecSQL;
                 //DMServ.TOrd.Delete;

                 //Confirma Tranzaçào
                 DMSERV.IBT.CommitRetaining;

               Except
                 Mensagem('Mzr Sistemas - Informação', 'Falha na transação. Reinicie o sistema se o problema persistir!', '', 1, 1, False, 'a');
                 DMSERV.IBT.RollbackRetaining;
               End;


               // a grid serah ordenada por box
               If DMMACS.TLoja.FieldByName('ATIVIDADE').AsString = 'EQUIPE'
               Then Begin
                   XLiberaDados:=' WHERE COD_LOJA='+FMenu.LCODLOJA.Caption+' ORDER BY BOX, STATUS DESC';
               End;

          		//atualiza vew
         		LiberaDados;

               PCadastro.Visible:=False;
               PConsulta.Visible:=true;
               PConsulta.BringToFront;
               EdNome.SetFocus;
               Exit;
           End;
       End;

   //VALIDA CAMPOS NECESSÁRIOS
   If XCOD_CLIENTE=-1
   Then Begin
       Mensagem('OPÇÃO BLOQUEADA', 'Por Favor. Informe um cliente para Ordem de Serviço', '', 1, 1, False, 'a');
       FrmCliente.EDCodigo.SetFocus;
       Exit;
   End;

   // se for da guinchomaq
   If DMMACS.TLoja.FieldByName('ORDEMLOCA_GUINDASTE').AsString = '1'
   Then Begin

       // ocultando o painel de horas
       PHoras.Visible := false;

       // se nao foi selecionado forma de pagamento
       If Trim(EDDescPag.Text) = ''
       Then Begin
           Mensagem('OPÇÃO BLOQUEADA', 'Por Favor, informe a Forma de Pagamento', '', 1, 1, False, 'a');
           Exit;
       end;

       // verifica se no minimo um item foi gravado
       If VerificaItens = false
       Then Begin
           Mensagem('OPÇÃO BLOQUEADA', 'Sem serviços a serem executados, a Ordem de Serviço não pode ser gravada.', '', 1, 1, False, 'a');
           Exit;
       End;

       //grava tabela slave
       Try
          XTabela.Edit;
          XTabela.Post;
          XTransaction.CommitRetaining;
       Except
          XTransaction.RollbackRetaining;
       End;


       FMenu.XTIPOBOLTO:=DMServ.TOrd.FieldByName('Numero').AsString;
       DMServ.TOrd.Close;
       DMServ.TOrd.SQL.Clear;
       DMServ.TOrd.SQL.Add('SELECT * FROM ORDEM WHERE ORDEM.COD_ORDEM = :CODIGO');
       DMServ.TOrd.ParamByName('CODIGO').AsInteger := XCOD_ORDEM;
       DMServ.TOrd.Open;
       {
       DMServ.TOrd.Edit;
       DMServ.TOrd.FieldByName('COD_CLIENTE').AsInteger := XCOD_CLIENTE;
       DMServ.TOrd.FieldByName('COD_EQUIPAMENTO').AsString := DMPESSOA.TEquip.FieldByName('cod_equipamento').AsString;
       DMServ.TOrd.FieldByName('NUMERO').AsString := FMenu.XTIPOBOLTO;
       DMServ.TOrd.FieldByName('COD_VENDEDOR').AsString := FrmMotorista.EDCodigo.Text;
       DMServ.TOrd.FieldByName('COD_TABELAPRECO').AsString := FrmTabela.EDCodigo.Text;
       DMServ.TOrd.FieldByName('DTABERT').AsString := EDDataIni.Text;
       DMServ.TOrd.FieldByName('HRABERT').AsString := EDHAbert.Text;
       DMServ.TOrd.FieldByName('COD_USUARIO').AsInteger := StrToInt(FMenu.LCODUSUARIO.Caption);
       DMServ.TOrd.FieldByName('TOTSERV').AsCurrency := EdTotServ.ValueNumeric;
       DMServ.TOrd.FieldByName('TOTORD').AsCurrency := EdValorOrd.ValueNumeric;
       DMServ.TOrd.FieldByName('TOTAJUDANTE').AsCurrency := EdTotAjud.ValueNumeric;
       DMServ.TOrd.FieldByName('TOTPROD').AsCurrency := 0;
       DMServ.TOrd.FieldByName('DESCAJUDANTE').AsCurrency := EdDescAjud.ValueNumeric;
       DMServ.TOrd.FieldByName('DESCSERV').AsCurrency := EdDescServico.ValueNumeric;
       DMServ.TOrd.FieldByName('TOTKM').AsCurrency := EdTotKm.ValueNumeric;
       DMServ.TOrd.FieldByName('DESCKM').AsCurrency := EdDescKm.ValueNumeric;
       DMServ.TOrd.FieldByName('DESCONTO').AsCurrency := EdDescontoTot.ValueNumeric;
       DMServ.TOrd.FieldByName('COD_LOJA').AsString := FMenu.LCODLOJA.Caption;
       DMServ.TOrd.FieldByName('COD_FORMPAG').AsString := EDCodPag.Text;
       DMServ.TOrd.FieldByName('OBSERVACAO').AsString := MObservacao.Text;
       DMServ.TOrd.Post;  }

       DMServ.TAlx1.Close;
       DMServ.TAlx1.SQL.Clear;
       DMServ.TAlx1.SQL.Add('update ORDEM set COD_CLIENTE = :COD_CLIENTE, COD_EQUIPAMENTO = :COD_EQUIPAMENTO, NUMERO = :NUMERO,');
       DMServ.TAlx1.SQL.Add('COD_VENDEDOR = :COD_VENDEDOR, COD_TABELAPRECO = :COD_TABELAPRECO, DTABERT = :DTABERT, HRABERT = :HRABERT, COD_USUARIO = :COD_USUARIO, OBSERVACAO = :OBSERVACAO,');
       DMServ.TAlx1.SQL.Add('TOTSERV = :TOTSERV, TOTORD = :TOTORD, TOTAJUDANTE = :TOTAJUDANTE, TOTPROD = :TOTPROD, DESCAJUDANTE = :DESCAJUDANTE, DESCSERV = :DESCSERV,');
       DMServ.TAlx1.SQL.Add('TOTKM = :TOTKM, DESCKM = :DESCKM, DESCONTO = :DESCONTO, COD_LOJA = :COD_LOJA, COD_FORMPAG = :COD_FORMPAG');
       DMServ.TAlx1.SQL.Add('where COD_ORDEM = :OLD_COD_ORDEM');

       DMServ.TAlx1.ParamByName('OLD_COD_ORDEM').AsInteger := XCOD_ORDEM;

       DMServ.TAlx1.ParamByName('COD_CLIENTE').AsInteger := XCOD_CLIENTE;
       DMServ.TAlx1.ParamByName('COD_EQUIPAMENTO').AsString := DMPESSOA.TEquip.FieldByName('cod_equipamento').AsString;
       DMServ.TAlx1.ParamByName('NUMERO').AsString := FMenu.XTIPOBOLTO;
       DMServ.TAlx1.ParamByName('COD_VENDEDOR').AsString := FrmMotorista.EDCodigo.Text;
       DMServ.TAlx1.ParamByName('COD_TABELAPRECO').AsString := FrmTabela.EDCodigo.Text;
       DMServ.TAlx1.ParamByName('DTABERT').AsString := EDDataIni.Text;
       DMServ.TAlx1.ParamByName('HRABERT').AsString := EDHAbert.Text;
       DMServ.TAlx1.ParamByName('COD_USUARIO').AsInteger := StrToInt(FMenu.LCODUSUARIO.Caption);
       DMServ.TAlx1.ParamByName('TOTSERV').AsCurrency := EdTotServ.ValueNumeric;
       DMServ.TAlx1.ParamByName('TOTORD').AsCurrency := EdValorOrd.ValueNumeric;
       DMServ.TAlx1.ParamByName('TOTAJUDANTE').AsCurrency := EdTotAjud.ValueNumeric;
       DMServ.TAlx1.ParamByName('TOTPROD').AsCurrency := 0;
       DMServ.TAlx1.ParamByName('DESCAJUDANTE').AsCurrency := EdDescAjud.ValueNumeric;
       DMServ.TAlx1.ParamByName('DESCSERV').AsCurrency := EdDescServico.ValueNumeric;
       DMServ.TAlx1.ParamByName('TOTKM').AsCurrency := EdTotKm.ValueNumeric;
       DMServ.TAlx1.ParamByName('DESCKM').AsCurrency := EdDescKm.ValueNumeric;
       DMServ.TAlx1.ParamByName('DESCONTO').AsCurrency := EdDescontoTot.ValueNumeric;
       DMServ.TAlx1.ParamByName('COD_LOJA').AsString := FMenu.LCODLOJA.Caption;
       DMServ.TAlx1.ParamByName('COD_FORMPAG').AsString := EDCodPag.Text;
       DMServ.TAlx1.ParamByName('OBSERVACAO').AsString := MObservacao.Text;
       DMServ.TAlx1.ExecSQL;

       DMServ.IBT.CommitRetaining;
   End;

   // se nao for para guinchomaq
   If (DMMACS.TLoja.FieldByName('ORDEMLOCA_GUINDASTE').AsString = '0') or (DMMACS.TLoja.FieldByName('ORDEMLOCA_GUINDASTE').AsString = '')
   Then Begin

       If XCOD_EQUIPAMENTO=-1
       Then Begin
           Mensagem('OPÇÃO BLOQUEADA', 'Por Favor. Informe um equipamento para Ordem de Serviço', '', 1, 1, False, 'a');
           FrmEquipamento.EDCodigo.SetFocus;
           Exit;
       End;

       If DMMACS.TLoja.FieldByName('ATIVIDADE').AsString = 'EQUIPE'
       Then Begin
           If DBBox.Text = ''
           Then Begin
               Mensagem('OPÇÃO BLOQUEADA', 'Por Favor. Informe o box para Ordem de Serviço', '', 1, 1, False, 'a');
               Exit;
           End;
       End;

       // se a atividade for diferente de equipe, os dados abaixo podem ser verificados
       If DMMACS.TLoja.FieldByName('ATIVIDADE').AsString <> 'EQUIPE'
       Then Begin
           If XCOD_VENDEDOR=-1
           Then Begin
               Mensagem('OPÇÃO BLOQUEADA', 'Por Favor. Informe um vendedor para Ordem de Serviço', '', 1, 1, False, 'a');
               FrmVendedor.EDCodigo.SetFocus;
               Exit;
           End;
           If XCOD_FUNCIONARIO=-1
           Then Begin
               Mensagem('OPÇÃO BLOQUEADA', 'Por Favor. Informe um responsável pela execução da Ordem de Serviço', '', 1, 1, False, 'a');
               FrmResponsavel.EDCodigo.SetFocus;
               Exit;
           End;
       End;
       
       //grava tabela slave
       Try
          XTabela.Edit;
          XTabela.Post;
          XTransaction.CommitRetaining;
       Except
          XTransaction.RollbackRetaining;
       End;

       if DMMACS.TLoja.FieldByName('ATIVIDADE').AsString <> 'INFORMATICA'
       then begin
           DMServ.TAlx1.Close;
           DMServ.TAlx1.SQL.Clear;
           DMServ.TAlx1.SQL.Add('update ORDEM set GARANTIA = :GARANTIA, COD_USUARIO = :COD_USUARIO, COD_CLIENTE = :COD_CLIENTE, COD_FUNCIONARIO = :COD_FUNCIONARIO,');
           DMServ.TAlx1.SQL.Add('COD_EQUIPAMENTO = :COD_EQUIPAMENTO, COD_VENDEDOR = :COD_VENDEDOR, COD_LOJA = :COD_LOJA,');
           DMServ.TAlx1.SQL.Add('COD_FORMPAG = :COD_FORMPAG, TOTORD = :TOTORD, TOTPROD = :TOTPROD, TOTSERV = :TOTSERV, TOTDESP = :TOTDESP, DESCONTO = :DESCONTO,');
           DMServ.TAlx1.SQL.Add('DESCPROD = :DESCPROD, DESCSERV = :DESCSERV, STATUS = :STATUS, documentos = :documentos, DESKTOP = :DESKTOP,');
           DMServ.TAlx1.SQL.Add('EMAILS = :EMAILS, OUTROS = :OUTROS');
           DMServ.TAlx1.SQL.Add('where COD_ORDEM = :OLD_COD_ORDEM');
       end
       else begin
           DMServ.TAlx1.Close;
           DMServ.TAlx1.SQL.Clear;
           DMServ.TAlx1.SQL.Add('update ORDEM set GARANTIA = :GARANTIA, COD_USUARIO = :COD_USUARIO, COD_CLIENTE = :COD_CLIENTE, COD_FUNCIONARIO = :COD_FUNCIONARIO,');
           DMServ.TAlx1.SQL.Add('COD_EQUIPAMENTO = :COD_EQUIPAMENTO, COD_VENDEDOR = :COD_VENDEDOR, COD_LOJA = :COD_LOJA,');
           DMServ.TAlx1.SQL.Add('COD_FORMPAG = :COD_FORMPAG, TOTORD = :TOTORD, TOTPROD = :TOTPROD, TOTSERV = :TOTSERV, TOTDESP = :TOTDESP, DESCONTO = :DESCONTO,');
           DMServ.TAlx1.SQL.Add('DESCPROD = :DESCPROD, DESCSERV = :DESCSERV, STATUS = :STATUS, documentos = :documentos, DESKTOP = :DESKTOP,');
           DMServ.TAlx1.SQL.Add('EMAILS = :EMAILS, OUTROS = :OUTROS, MOUSE =:MOUSE, TECLADO = :TECLADO, KITMM = :KITMM, CABOS = :CABOS, IMPRESSORA = :IMPRESSORA, ');
           DMServ.TAlx1.SQL.Add('CDRECUPERA = :CDRECUPERA, MONITOR = :MONITOR, FONES = :FONES, ESTADOEQUIP = :ESTADOEQUIP, DTAGENDADO = :DTAGENDADO ');
           DMServ.TAlx1.SQL.Add('where COD_ORDEM = :OLD_COD_ORDEM');
           DMServ.TAlx1.ParamByName('MOUSE').AsString := DBMouse.Text;
           DMServ.TAlx1.ParamByName('TECLADO').AsString := DBTeclado.Text;
           DMServ.TAlx1.ParamByName('KITMM').AsString := DBKitmm.Text;
           DMServ.TAlx1.ParamByName('CABOS').AsString := DBCabos.Text;
           DMServ.TAlx1.ParamByName('IMPRESSORA').AsString := DBimpressora.Text;
           DMServ.TAlx1.ParamByName('CDRECUPERA').AsString := DBCdRecupera.Text;
           DMServ.TAlx1.ParamByName('MONITOR').AsString := DBMonitor.Text;
           DMServ.TAlx1.ParamByName('FONES').AsString := DbFones.Text;
           DMServ.TAlx1.ParamByName('ESTADOEQUIP').AsString := DbEstadoEquip.Text;
           If (edDtAgendamento.Text<>'') and (edDtAgendamento.Text<>'  /  /    ')
           Then Begin
               try
                   DMServ.TAlx1.ParamByName('DTAGENDADO').AsString := edDtAgendamento.Text;
               Except
                   DMServ.TAlx1.ParamByName('DTAGENDADO').AsString := '';
               end;
           end
           Else Begin
               DMServ.TAlx1.ParamByName('DTAGENDADO').AsString:='';
           End;
       end;
       DMServ.TAlx1.ParamByName('OLD_COD_ORDEM').AsInteger := XCOD_ORDEM;

       IF CBGarantia.Checked Then
           DMServ.TAlx1.ParamByName('GARANTIA').AsString:='1'
       Else
           DMServ.TAlx1.ParamByName('GARANTIA').AsString:='';

       //INFORMA CODIGO DO USUARIO
       DMServ.TAlx1.ParamByName('COD_USUARIO').AsInteger:=StrToInt(FMenu.LCODUSUARIO.Caption);
       //INFORMA CODIGO DO CLIENTE
       DMServ.TAlx1.ParamByName('COD_CLIENTE').AsInteger:=XCOD_CLIENTE;
       //INFORMA CODIGO DO EQUIPAMENTO
       DMServ.TAlx1.ParamByName('COD_EQUIPAMENTO').AsInteger:=XCOD_EQUIPAMENTO;
       //INFORMA CODIGO DO VENDEDOR
       DMServ.TAlx1.ParamByName('COD_VENDEDOR').AsInteger:=XCOD_VENDEDOR;
       //INFORMA CODIGO DO RESPONSÁVEL
       DMServ.TAlx1.ParamByName('COD_FUNCIONARIO').AsInteger:=XCOD_FUNCIONARIO;
       //INFORMA CODIGO DA LOJA
       DMServ.TAlx1.ParamByName('COD_LOJA').AsString:=FMenu.LCODLOJA.Caption;
       //INFORMA FORMA DE PAGAMENTO
       DMServ.TAlx1.ParamByName('COD_FORMPAG').AsInteger:=XCOD_FORMPAG;

       //INICIA PROCESSO PARA GRAVAR TABELAS
       //GRAVA TOTAIS
       DMServ.TAlx1.ParamByName('TOTORD').AsCurrency:=EdValorOrd.ValueNumeric;
       DMServ.TAlx1.ParamByName('TOTPROD').AsCurrency:=EdtotalProd.ValueNumeric;
       DMServ.TAlx1.ParamByName('TOTSERV').AsCurrency:=EdTotalserv.ValueNumeric;
       DMServ.TAlx1.ParamByName('TOTDESP').AsCurrency:=EdTotDesp.ValueNumeric;
       DMServ.TAlx1.ParamByName('DESCONTO').AsCurrency:=EdDescTOrdem.ValueNumeric;
       DMServ.TAlx1.ParamByName('DESCPROD').AsCurrency:=EdDescTProd.ValueNumeric;
       DMServ.TAlx1.ParamByName('DESCSERV').AsCurrency:=EdDescTServ.ValueNumeric;
       //Informa Situação do pedido
       Case RGSituacao.ItemIndex of
           0: DMServ.TAlx1.ParamByName('STATUS').AsString:='ABERTO';
           1: DMServ.TAlx1.ParamByName('STATUS').AsString:='AGENDADO';
           2: DMServ.TAlx1.ParamByName('STATUS').AsString:='FINALIZADO';
           3: DMServ.TAlx1.ParamByName('STATUS').AsString:='TERMINADO';
       End;

       // edita o ccheckbox 'DOCUMENTOS'
       If CBDocumentos.Checked = true
       Then Begin
           DMServ.TAlx1.ParamByName('documentos').AsString := 'X'
       End
       Else Begin
           DMServ.TAlx1.ParamByName('documentos').AsString := ''
       End;

       // edita o ccheckbox 'DESKTOP'
       If CBDesktop.Checked = true
       Then Begin
          DMServ.TAlx1.ParamByName('DESKTOP').AsString := 'X'
       End
       Else Begin
           DMServ.TAlx1.ParamByName('DESKTOP').AsString := ''
       End;

       // edita checkbox 'EMAILS'
       If CBEmails.Checked = true
       Then Begin
           DMServ.TAlx1.ParamByName('EMAILS').AsString := 'X'
       End
       Else Begin
           DMServ.TAlx1.ParamByName('EMAILS').AsString := ''
       End;

       // edita checkbox 'OUTROS'
       if CBOutros.Checked = true
       Then Begin
           DMServ.TAlx1.ParamByName('OUTROS').AsString := 'X'
       End
       Else Begin
           DMServ.TAlx1.ParamByName('OUTROS').AsString := ''
       End;


       //grava tabela slave
       Try
          XTabela.Edit;
          XTabela.Post;
          DMServ.TAlx1.ExecSQL;
          XTransaction.CommitRetaining;
       Except
          XTransaction.RollbackRetaining;
       End;

       // a grid serah ordenada por box
       If DMMACS.TLoja.FieldByName('ATIVIDADE').AsString = 'EQUIPE'
       Then Begin
           XLiberaDados:=' WHERE COD_LOJA='+FMenu.LCODLOJA.Caption+' ORDER BY BOX, STATUS DESC';
       End;
   End;


   //Atualiza View da tela de Consulta
   LiberaDados;

   // BUSCANDO A ORDEM PARA LIBERAÇÃO DE CONSULTA
   {FiltraTabela(DMServ.TOrd,'ORDEM','COD_ORDEM',IntToStr(XCOD_ORDEM),'');
   DMServ.TOrd.Edit;
   DMServ.TOrd.FieldByName('EDIT').AsString := '0';
   DMServ.TOrd.Post;  }
   DMServ.TAlx1.Close;
   DMServ.TAlx1.SQL.Clear;
   DMServ.TAlx1.SQL.Add('update ORDEM set EDIT = :EDIT');
   DMServ.TAlx1.SQL.Add('where COD_ORDEM = :OLD_COD_ORDEM');
   DMServ.TAlx1.ParamByName('EDIT').AsString := '0';
   DMServ.TAlx1.ParamByName('OLD_COD_ORDEM').AsInteger := XCOD_ORDEM;
   DMServ.TAlx1.ExecSQL;
   DMServ.IBT.CommitRetaining;

   inherited;

   PCadastro.Visible:=False;
   PConsulta.Visible:=true;
   PConsulta.BringToFront;
   EdNome.SetFocus;
   If DMMACS.TLoja.FieldByName('ATIVIDADE').AsString = 'EQUIPE' Then
       // procedimento para ordenar as ordens de servico em abertar e por box
       OrdenacaoOS;


end;

procedure TFOrdem.EDCodBarraKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
	If Key=VK_Return
   Then Begin
		If FiltraTabela(DMEstoque.WSimilar, 'VWSIMILAR', 'CODBARRA', EDCodBarra.Text, '')=True
       Then Begin
			EscreveLabelsPROD;
       End
       Else Begin
           LimpaLabelsPROD;
           LProduto.Caption:='PRODUTO NÃO ENCONTRADO';
       End;
   End;
end;

procedure TFOrdem.EDCodFabKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
Var
    str: String;
Begin
    Inherited;
   // ALEX - 21/05/2009: pressionar Ctrl+P chama painel de busca de produtos pelo nome
    If (shift = [ssCtrl]) And (key = 78)
    Then Begin
        If XTipoProc = 0
        Then Begin
            XTipoProc := 1;
            PListaProdutos.Height:=172;
            PListaProdutos.Top:=51;
            PListaProdutos.Left:=176;
            PListaProdutos.Visible := true;
            PListaProdutos.BringToFront;
        End
        Else Begin
            XTipoProc := 0;
            PListaProdutos.Visible := False;
        End;
    End;
    If XTipoProc = 1
    Then Begin
        If Key = Vk_Down
        Then Begin
            DMESTOQUE.WSimilar.Next;
        End;
        If Key = Vk_UP
        Then Begin
            DMESTOQUE.WSimilar.Prior;
        End;
    End;

    If Key = VK_Return
    Then Begin
        If XTipoProc = 0
        Then Begin
            //TIPO DE BUSCA
            If XPESPROD = 1 Then
                str := 'CODBARRA'
            Else
                If XPESPROD = 2 Then
                    str := 'CODFABRICANTE'
                Else
                    If XPESPROD = 3 Then
                        str := 'DESCRICAO'
                    Else
                        str := 'CONTRINT';

            If (DMMacs.Tloja.FieldByName('FOCUITEMOS').AsString = 'NC') Then
            Begin
                If FiltraTabela(DMEstoque.WSimilar, 'VWSIMILAR', 'CONTRINT', UpperCase(EDCodFab.Text), '') = True
                    Then Begin
                    EscreveLabelsPROD;
                    EDCodFab.Text := '';
                    EDQuantidade.Text := '1,00';
                End
                Else Begin
                    If FiltraTabela(DMEstoque.WSimilar, 'VWSIMILAR', 'CODFABRICANTE', UpperCase(EDCodFab.Text), '') = True
                    Then Begin
                        EscreveLabelsPROD;
                        EDCodFab.Text := '';
                        EDQuantidade.Text := '1,00';
                    End
                    Else Begin
                        If FiltraTabela(DMEstoque.WSimilar, 'VWSIMILAR', 'CODBARRA', UpperCase(EDCodFab.Text), '') = True
                        Then Begin
                            EscreveLabelsPROD;
                            EDCodFab.Text := '';
                            EDQuantidade.Text := '1,00';
                        End
                        Else Begin
                            If FiltraTabela(DMEstoque.WSimilar, 'VWSIMILAR', 'DESCRICAO', UpperCase(EDCodFab.Text), '') = True
                                Then Begin
                                EscreveLabelsPROD;
                                EDCodFab.Text := '';
                                EDQuantidade.Text := '1,00';
                            End
                            Else Begin
                                LimpaLabelsPROD;
                                LProduto.Caption := 'PRODUTO NÃO ENCONTRADO';
                            End;
                        End;
                    End;
                End;
            End;
        End
        Else Begin
            str := EDCodFab.Text;
            If str[1] = '.'
                Then Begin
                EDCodFab.Text := TiraCaracterEmPosicao(str, 1);
                FiltraTabela(DMESTOQUE.WSimilar, 'VWSIMILAR', 'COD_LOJA', '', ' (COD_LOJA=' + FMenu.LCODLOJA.Caption + ') AND (upper(CODFABRICANTE) like upper(' + #39 + EDCodFab.Text + '%' + #39 + '))  AND (VWSIMILAR.ATIVO=' + #39 + 'S' + #39 + ') ORDER BY DESCRICAO');
            End
            Else Begin
                FiltraTabela(DMESTOQUE.WSimilar, 'VWSIMILAR', 'COD_LOJA', '', ' (COD_LOJA=' + FMenu.LCODLOJA.Caption + ') AND (upper(DESCRICAO) like upper(' + #39 + EDCodFab.Text + '%' + #39 + '))  AND (VWSIMILAR.ATIVO=' + #39 + 'S' + #39 + ') ORDER BY DESCRICAO');
            End;
        End;
    End;

    If Key=Vk_F2
    Then Begin
        DMESTOQUE.WSimilar.Close;
        DMESTOQUE.WSimilar.SQL.Clear;
        DMESTOQUE.WSimilar.SQL.Add(' SELECT * FROM VWSIMILAR where (vwsimilar.descricao like upper(' + #39 + EDCodFab.Text + '%' + #39 + '))  AND (VWSIMILAR.ATIVO=' + #39 + 'S' + #39 + ')');
        DMESTOQUE.WSimilar.Open;
        XCodTmpEstoque := DBGrid8.Columns[0].Field.Text;
        EDQuantidade.Text := '1,00';
    End;
end;

procedure TFOrdem.BtnProcProdClick(Sender: TObject);
begin
//  inherited;
  	//abre formulario de produto para seleção
	If AbrirForm(TFProduto, FProduto, 1)='Selected'
	Then Begin
   	//Depois de selecionado escreve nas labels o produto
       EscreveLabelsPROD;
       Panel4.Repaint;
   End
   Else Begin
       LimpaLabelsPROD;
       LProduto.Caption:='PRODUTO NÃO ENCONTRADO';
   End;
end;

procedure TFOrdem.BtnInsertProdClick(Sender: TObject);
Var
	XEstReserv, xestfisico: real;
   xcod_item: Integer;
begin
  inherited;
	//Valida se foi encontrado algum produto
   If LProduto.Caption=''
   Then Begin
		Mensagem('OPÇÃO BLOQUEADA', 'Não existe produto a ser adicionado a lista de items do pedido.', '', 1, 1, False, 'a');
		Panel2.OnEnter(Sender);
	    Exit;
   End;
   // verifica a atividade
   If DMMACS.TLoja.FieldByName('ATIVIDADE').AsString = 'EQUIPE'
   Then Begin
       // verifica se jah foi selecionado o equipamento
       If FBEquipPlaca.EdDescricao.Text = ''
       Then Begin
           Mensagem('   A T E N Ç Ã O   ','É necessário selecionar o equipamento antes de inserir produto.','',1,1,false,'a');
           Exit;
       End;
   End;

   //Valida quanto a quantidade
   If EDQuantidade.ValueNumeric<=0
   Then Begin
		Mensagem('OPÇÃO BLOQUEADA', 'O produto não pode ser inserido a lista com quantidade inferior a 1.', '', 1, 1, False, 'a');
		EDQuantidade.SetFocus;
	    Exit;
   End;
   //Valida quanto ao valor unitario do produto
   If EDValUnit.ValueNumeric<=0
   Then Begin
		Mensagem('OPÇÃO BLOQUEADA', 'O produto não pode ser inserido a lista com o valor unitario igual ou inferiro a 0.', '', 1, 1, False, 'a');
		EDValUnit.SetFocus;
	    Exit;
   End;
   //Valida quanto ao valor total do produto
   If EDTotal.ValueNumeric<=0
   Then Begin
		Mensagem('OPÇÃO BLOQUEADA', 'O produto não pode ser inserido a lista com o valor total igual ou inferiro a 0.', '', 1, 1, False, 'a');
		EDTotal.SetFocus;
	    Exit;
   End;

   //VERIFICA SE JÁ EXISTE ALGUM PRODUTO IGUAL AO CORRENTE INSERIDO A LISTA
   //SE ENCONTRAR PEDIR SE O USUÁRIO DESEJA ALTERAR O LANÇAMENTO.
   DMESTOQUE.TSlave.Close;
   DMESTOQUE.TSlave.SQL.Clear;
	 DMESTOQUE.TSlave.SQL.Add('Select itprodord.cod_itprodord, itprodord.cod_ordem, itprodord.cod_estoque,  itprodord.numreq, itprodord.qtd, itprodord.qtdRET, itprodord.total, ');
	 DMESTOQUE.TSlave.SQL.Add('itprodord.desconto, itprodord.data, itprodord.cod_funcionario, pessoa.nome, itprodord.vlrunit, subproduto.descricao, subproduto.marca, SubProduto.CODPRODFABR, ');
   DMESTOQUE.TSlave.sql.Add(' subproduto.'+DMMACS.TLoja.FieldByName('CODPRODREL1').AsString+' AS PRIMCOD, subproduto.'+DMMACS.TLoja.FieldByName('CODPRODREL2').AsString+' AS SEGCOD ');
	 DMESTOQUE.TSlave.SQL.Add('From itprodord left Join estoque on itprodord.cod_estoque = estoque.cod_estoque ');
	 DMESTOQUE.TSlave.SQL.Add('Left Join subproduto on subproduto.cod_subproduto = estoque.cod_subprod ');
	 DMESTOQUE.TSlave.SQL.Add('Left Join funcionario on funcionario.cod_func = itprodord.cod_funcionario ');
	 DMESTOQUE.TSlave.SQL.Add('Left Join pessoa on funcionario.cod_pessoa = pessoa.COD_PESSOA ');
	 DMESTOQUE.TSlave.SQL.Add('Where (itprodord.cod_ordem = :CODORDEM) AND (itprodord.cod_estoque=:CODESTOQUE) ');
   DMESTOQUE.TSlave.ParamByName('CODORDEM').AsInteger:=XCOD_ORDEM;
   DMESTOQUE.TSlave.ParamByName('CODESTOQUE').AsString:=DMESTOQUE.TEstoque.FieldByName('COD_ESTOQUE').AsString;
   DMESTOQUE.TSlave.Open;
   If Not DMESTOQUE.TSlave.IsEmpty
   Then Begin
		If Mensagem('A T E N Ç Ã O !', 'O sistema encontrou o mesmo produto já lançado a lista. com '+DMESTOQUE.TSlave.FieldByName('QTD').AsString+' qtdes.'+#13+'Deseja alterar este produto já lançado?', '', 2, 3, False, 'c')= 2
       Then Begin
       	//o usuario decidiu alterar o lançamento anterior este é cancelado e o outro é excluido da lista
           BtnDeleteProd.Click;
           exit;
       End
   End;

   //Verifica se o vlr unitário esta dentro da margem de segurança
   If ((EDTotal.ValueNumeric/EDQuantidade.ValueNumeric)<DMESTOQUE.TEstoque.FieldByName('MARGEMSEG').AsCurrency)
   Then Begin
       If Mensagem('A T E N Ç Ã O !', 'Você está vendendo o produto a um valor abaixo da margem de segurança. Deseja continuar?', '', 2, 3, False, 'c')= 2
       Then Begin
           // parametro para passar na verificação do usuario que tem margem de segurança disponivel
           FMenu.TIPOREL:='VERIFICMARGEM';
           If ControlAccess('MARGEMSEG', '')=False
           Then Begin  //se o usuário não tem permissão para efetuar um desconto maior que o cadastrado deve ser pedido a senha de um administrador
               If Mensagem('A T E N Ç Ã O !', 'Deseja solicitar senha de um administrador?', '', 2, 3, False, 'c')= 2
               Then Begin
                   AbrirForm(TFSENHA, FSENHA, 0);
                   //repassa resultado da tela de autenticação de senha para as variáveis de controle
                   If XAlxResult=True Then
                       XLIBMARGEMSEG:=True
                   Else
                       XLIBMARGEMSEG:=False;
               End
               Else Begin
                   XLIBMARGEMSEG:=False;
               end;
           End
           Else Begin
               XLIBMARGEMSEG:=True;
           End;
       End
       Else Begin
           XLIBMARGEMSEG:=False;
           Exit;
       End;
   End
   Else Begin
       XLIBMARGEMSEG:=True;
   End;
   // limpando a variavel utilizada como paramtro para verificar se o usuario tem permissao para vender itens abaixo da margem de segurança
   FMenu.TIPOREL:='';

   //Verifica se o desconto dado no produto é superior ao permitido
   If DMMACS.TEmpresa.FieldByName('AVVPROVAR').AsCurrency=0
   Then Begin//Se não ha restrições de desconto do produto em empresa procura em produto
   	If (EDDesc.ValueNumeric>DMESTOQUE.TEstoque.FieldByName('AVVPROVAR').AsCurrency)
   	Then Begin
       	If Mensagem('A T E N Ç Ã O !', 'Você está concedendo um desconto maior que o estipulado em cadastro. Deseja continuar?', '', 2, 3, False, 'c')= 2
           Then Begin
               If ControlAccess('DESCPMAIOR', '')=False
               Then Begin  //se o usuário não tem permissão para efetuar um desconto maior que o cadastrado deve ser pedido a senha de um administrador
                   If Mensagem('A T E N Ç Ã O !', 'Deseja solicitar senha de um administrador?', '', 2, 3, False, 'c')= 2
                   Then Begin
                       AbrirForm(TFSENHA, FSENHA, 0);
                       //repassa resultado da tela de autenticação de senha para as variáveis de controle
                       If XAlxResult=True Then
                           XLIBDESCPROD:=True
                       Else
                           XLIBDESCPROD:=False;
                   End
                   Else Begin
                       XLIBDESCPROD:=False;
                   end;
               End
               Else Begin
                   XLIBDESCPROD:=True;
               End;
           End;
       End
       Else Begin
           XLIBDESCPROD:=True;
       End;
   End
   Else Begin
       If (EDDesc.ValueNumeric>DMMACS.TEmpresa.FieldByName('AVVPROVAR').AsCurrency)
       Then Begin
           If Mensagem('A T E N Ç Ã O !', 'Você está concedendo um desconto maior que o estipulado em cadastro. Deseja continuar?', '', 2, 3, False, 'c')= 2
           Then Begin
               If ControlAccess('DESCPMAIOR', '')=False
               Then Begin //se o usuário não tem permissão para efetuar um desconto maior que o cadastrado deve ser pedido a senha de um administrador
                   If Mensagem('A T E N Ç Ã O !', 'Deseja solicitar senha de um administrador?', '', 2, 3, False, 'c')= 2
                   Then Begin
                       AbrirForm(TFSENHA, FSENHA, 0);
                       //repassa resultado da tela de autenticação de senha para as variáveis de controle
                       If XAlxResult=True Then
                           XLIBDESCPROD:=True
                       Else
                       	XLIBDESCPROD:=False;
                   End
                   Else Begin
                       XLIBDESCPROD:=False;
                   end;
               end
               Else Begin
                   XLIBDESCPROD:=True;
               End;
           End;
       End
       Else Begin
       	XLIBDESCPROD:=True;
       End;
   End;
   //Verifica se a Margem de Seguranca do produto foi obedecida
   If XLIBMARGEMSEG=False
   Then Begin
			If ControlAccess('MARGEMSEG', '')=False Then
				Mensagem('OPÇÃO BLOQUEADA', 'Você não obteve permissão para vender este produto abaixo da margem de segurança!', '', 1, 1, False, 'a');
           EDValUnit.SetFocus;
           EXIT;
   End;
   //Verifica se o desconto do produto foi liberado
   If XLIBDESCPROD=False
   Then Begin
       If ControlAccess('DESCPMAIOR', '')=False Then
           Mensagem('OPÇÃO BLOQUEADA', 'Você não obteve permissão para vender este produto com tal desconto!', '', 1, 1, False, 'a');
       EDDesc.SetFocus;
       EXIT;
   End;

   //Valida quanto ao estoque físico (verifca se ha estoque suficiente
  	If DMMacs.TLoja.FieldByName('ATUAESTOQUE').AsString='1'
   Then Begin //se o estoque deve ser atualizado no pedido executa procedimento
	 	If DMMacs.TLoja.FieldByName('VENDESTNEG').AsString='0'
	    Then Begin
		   	If LEstoque.Caption<>''
	        Then Begin
		       	If EDQuantidade.ValueNumeric>StrToFloat(TiraPonto(LEstoque.caption))
	            Then Begin//o estoque que esta sendo negociado é maior que o estoque físico e segundo configuraçãoes isto não é permitido
	 				Mensagem('OPÇÃO BLOQUEADA', 'Não existe estoque suficiente para suportar esta operação', '', 1, 1, False, 'a');
	                EDQuantidade.SetFocus;
                   FiltraSlave;
	 				Exit;
	            End;
	        End
	        Else Begin
				Mensagem('OPÇÃO BLOQUEADA', 'Não existe estoque suficiente para suportar esta operação', '', 1, 1, False, 'a');
	            EDQuantidade.SetFocus;
               FiltraSlave;
				Exit;
           End;
       End;
   End;
   //Tenta gravar as informações
   Try
       //Inserir Produto a lista do pedido
      // XCOD_ITPROD:=InserReg(DMSERV.TPOrd, 'ITPRODORD', 'COD_ITPRODORD');
      //DMSERV.TPOrd.FieldByName('COD_ITPRODORD').AsInteger:=XCOD_ITPROD;

       // - 19/03/2009: alteração (auto-incremento)
       DMServ.TPOrd.Insert;
       xcod_item:=DMServ.TPOrd.fieldByName('COD_ITPRODORD').AsInteger;
       DMServ.TPOrd.Post;
       DMServ.TPOrd.ApplyUpdates;
       DMServ.IBT.CommitRetaining;

       DMSERV.TPOrd.Close;
       DMSERV.TPOrd.SQL.Clear;
       DMSERV.TPOrd.SQL.Add('update itprodord set');
       DMSERV.TPOrd.SQL.Add('COD_ESTOQUE = :COD_ESTOQUE, COD_ORDEM = :COD_ORDEM, QTD  = :QTD, VLRUNIT = :VLRUNIT, DESCONTO = :DESCONTO, TOTAL = :TOTAL,');
       DMSERV.TPOrd.SQL.Add('DATA = :DATA, COD_FUNCIONARIO = :COD_FUNCIONARIO, VALCUSTO = :VALCUSTO, COEFDIV = :COEFDIV, VALCOMP = :VALCOMP, LUCMOE = :LUCMOE, LUCPER = :LUCPER, VALREP = :VALREP,');
       DMSERV.TPOrd.SQL.Add('NUMREQ = :NUMREQ, QTDRET = :QTDRET, COMISSAO = :COMISSAO, VLRVENDBD = :VLRVENDBD, LUCREL = :LUCREL, OPERACAO = :OPERACAO, ALIQICMS = :ALIQICMS, BASEICMS = :BASEICMS,');
       DMSERV.TPOrd.SQL.Add('VLRICMS = :VLRICMS, BASEICMSSUBS = :BASEICMSSUBS, VLRIPI = :VLRIPI, ALIQIPI = :ALIQIPI, REDUCBASEICMS = :REDUCBASEICMS, VLRICMSSUBS = :VLRICMSSUBS,DATA_GARANTIA = :DATA_GARANTIA,KMGARANTIA = :KMGARANTIA');
       DMSERV.TPOrd.SQL.Add('where itprodord.cod_itprodord = :ITEM');
       DMSERV.TPOrd.ParamByName('ITEM').AsInteger := xcod_item;
       {DMSERV.TPOrd.SQL.Add('values');
       DMSERV.TPOrd.SQL.Add('(, :COD_ORDEM, :QTD, :VLRUNIT, :DESCONTO,');
       DMSERV.TPOrd.SQL.Add(':TOTAL, :DATA, :COD_FUNCIONARIO, :VALCUSTO, :COEFDIV, :VALCOMP, :LUCMOE,');
       DMSERV.TPOrd.SQL.Add(':LUCPER, :VALREP, :NUMREQ, :QTDRET, :COMISSAO, :VLRVENDBD, :LUCREL,');
       DMSERV.TPOrd.SQL.Add(':OPERACAO, :ALIQICMS, :BASEICMS, :VLRICMS, :BASEICMSSUBS, :VLRIPI, :ALIQIPI,');
       DMSERV.TPOrd.SQL.Add(':REDUCBASEICMS, :VLRICMSSUBS, :DATA_GARANTIA, :KMGARANTIA)'); }

       DMSERV.TPOrd.ParamByName('COD_ESTOQUE').AsInteger := XCOD_ESTOQUE;
       DMSERV.TPOrd.ParamByName('COD_ORDEM').AsInteger := XCOD_ORDEM;

       // seleciona todos os dados de subproduto que tenha o mesmo cod_subprod que a tabela estoque
       DMServ.TAlx1.Close;
       DMServ.TAlx1.SQL.Clear;
       DMServ.TAlx1.SQL.Add('select estoque.cod_estoque, estoque.cod_subprod, subproduto.cod_subproduto, subproduto.quantgarantia, subproduto.tipogarantia');
       DMServ.TAlx1.SQL.Add('from estoque left join subproduto on estoque.cod_subprod = subproduto.cod_subproduto');
       DMServ.TAlx1.SQL.Add('where estoque.cod_estoque = :codigo');
       DMServ.TAlx1.ParamByName('codigo').AsInteger := DMEstoque.WSimilar.FieldByName('COD_ESTOQUE').AsInteger;
       DMServ.TAlx1.Open;

       // verifica se no produto foi lancado algum tipo de garantia. O tipo de garantia nao pode ser em horas                          ** função para remover os espaços **
       If (DMServ.TAlx1.FieldByname('quantgarantia').AsString <> '') and (DMServ.TAlx1.FieldByname('tipogarantia').AsString <> '') and (SubstituiCaracter(DMServ.TAlx1.FieldByname('tipogarantia').AsString,' ','') <> 'Hs')
       Then Begin
           // função para retornar a data de termino da garantia
           //DMServ.TPOrd.FieldByName('DATA_GARANTIA').AsString := DateToStr(Calcula_Garantia(DMServ.TAlx1.FieldByname('quantgarantia').AsString,DMServ.TAlx1.FieldByname('tipogarantia').AsString));
           DMSERV.TPOrd.ParamByName('DATA_GARANTIA').AsString := DateToStr(Calcula_Garantia(DMServ.TAlx1.FieldByname('quantgarantia').AsString,DMServ.TAlx1.FieldByname('tipogarantia').AsString));
       End;
       // verifica se no produto foi lancado algum tipo de garantia. O tipo de garantia deve ser em horas
       If (DMServ.TAlx1.FieldByname('quantgarantia').AsString <> '') and (DMServ.TAlx1.FieldByname('tipogarantia').AsString <> '') and ((SubstituiCaracter(DMServ.TAlx1.FieldByname('tipogarantia').AsString,' ','') = 'Hs') or (SubstituiCaracter(DMServ.TAlx1.FieldByname('tipogarantia').AsString,' ','') = 'Km'))
       Then Begin
           // função para retornar a data de termino da garantia
           DMServ.TPOrd.ParamByName('DATA_GARANTIA').AsString := '01/01/1900';
       End;
       If (SubstituiCaracter(DMServ.TAlx1.FieldByname('tipogarantia').AsString,' ','') = 'Km')
       Then Begin

           // SELECIONA TODOS OS DADOS DE EQUIPAMENTO COM O MESMO CODIGO
           FiltraTabela(DMESTOQUE.Alx,'EQUIPAMENTO','COD_EQUIPAMENTO',IntToStr(XCOD_EQUIPAMENTO),'');

           // armazena o KM final do equipamento que sera o limite de sua garantia
           DMServ.TPOrd.ParamByName('KMGARANTIA').AsInteger := DMESTOQUE.Alx.FieldByname('KMATUAL').AsInteger + DMServ.TAlx1.FieldByname('quantgarantia').AsInteger;
       End;

       DMSERV.TPOrd.ParamByName('QTD').Value := EDQuantidade.ValueNumeric;
       DMSERV.TPOrd.ParamByName('QTDRET').Value := EDQuantidade.ValueNumeric;
       DMSERV.TPOrd.ParamByName('OPERACAO').AsString := 'VND';
       DMSERV.TPOrd.ParamByName('DESCONTO').Value := EDDesc.ValueNumeric;
       DMSERV.TPOrd.ParamByName('VLRUNIT').Value := EDValUnit.ValueNumeric;
       DMSERV.TPOrd.ParamByName('TOTAL').Value := EDTotal.ValueNumeric;

       // se a atividade for equipe, o codigo do vendedor virá do usuario atual
       If DMMACS.TLoja.FieldByName('ATIVIDADE').AsString = 'EQUIPE'
       Then Begin
           // BUSCANDO DADOS DA TABELA USUARIO COM O MESMO CODIGO
           FiltraTabela(DMMACS.TUsuario,'USUARIO','CODUSUARIO',FMenu.LCODUSUARIO.Caption,'');

           // BUSCANDO DADOS DA TABELA FUNCIONARIO REFERENTE AO USUARIO
           FiltraTabela(DMPESSOA.TFuncionario,'FUNCIONARIO','COD_FUNC',DMMACS.TUsuario.FieldByName('cod_funcionario').AsString,'');

           XCOD_VENDEDOR := DMPESSOA.TFuncionario.FieldByname('cod_func').AsInteger;

       End;

       DMSERV.TPOrd.ParamByName('COD_FUNCIONARIO').AsInteger := XCOD_VENDEDOR;
       DMSERV.TPOrd.ParamByName('DATA').AsDateTime := Date();
       DMSERV.TPOrd.ParamByName('VALCUSTO').Value := DMESTOQUE.TEstoque.FieldByName('VALCUSTO').Value;
       DMSERV.TPOrd.ParamByName('VALREP').Value := DMESTOQUE.TEstoque.FieldByName('VALREP').Value;
       DMSERV.TPOrd.ParamByName('COEFDIV').Value := DMESTOQUE.TEstoque.FieldByName('COEFDIV').Value;
       DMSERV.TPOrd.ParamByName('VALCOMP').Value := DMESTOQUE.TEstoque.FieldByName('vlrunitcomp').Value*EDQuantidade.ValueNumeric;

       CalcLuc(EDTotal.ValueNumeric, EDDesc.ValueNumeric, EDQuantidade.ValueNumeric);

       If DMESTOQUE.TEstoque.FieldByName('COEFDIV').AsCurrency <> 0
       Then Begin
            DMSERV.TPOrd.ParamByName('LUCMOE').AsCurrency := (DMESTOQUE.TEstoque.FieldByName('VALREP').AsCurrency/DMESTOQUE.TEstoque.FieldByName('COEFDIV').AsCurrency);  
            If (EDTotal.ValueNumeric <> 0)
            Then Begin
                 DMSERV.TPOrd.ParamByName('LUCMOE').AsCurrency := EDTotal.ValueNumeric - (DMESTOQUE.TEstoque.FieldByName('VALREP').AsCurrency / DMESTOQUE.TEstoque.FieldByName('COEFDIV').AsCurrency);
                 DMSERV.TPOrd.ParamByName('LUCPER').AsCurrency := ((EDTotal.ValueNumeric - (DMESTOQUE.TEstoque.FieldByName('VALREP').AsCurrency / DMESTOQUE.TEstoque.FieldByName('COEFDIV').AsCurrency)) * 100) / EDTotal.ValueNumeric;
            End;        
       End
       Else Begin
            DMSERV.TPOrd.ParamByName('LUCMOE').AsCurrency := 0;
       End;

       DMSERV.TPOrd.ParamByName('ALIQICMS').AsCurrency:=DMESTOQUE.TEstoque.FieldByName('ICMS').AsCurrency;
       DMSERV.TPOrd.ParamByName('BASEICMS').AsCurrency:=EDTotal.ValueNumeric;
       DMSERV.TPOrd.ParamByName('VLRICMS').AsCurrency:=(EDTotal.ValueNumeric*DMSERV.TPOrd.FieldByName('ALIQICMS').AsCurrency)/100;
       DMSERV.TPOrd.ParamByName('REDUCBASEICMS').AsCurrency:=0;
       DMSERV.TPOrd.ParamByName('BASEICMSSUBS').AsCurrency:=0;
       DMSERV.TPOrd.ParamByName('VLRICMSSUBS').AsCurrency:=0;
       DMSERV.TPOrd.ParamByName('ALIQIPI').AsCurrency:=0;
       DMSERV.TPOrd.ParamByName('VLRIPI').AsCurrency:=0;

       // se tiver um funcionario selecionado
       If XCOD_VENDEDOR > 0
       Then Begin
           // filtra estoque para buscar os valores das porcentagens das comissoes
           FiltraTabela(DMESTOQUE.Alx4,'ESTOQUE','COD_ESTOQUE',DMSERV.TPOrd.FieldByName('COD_ESTOQUE').AsString,'');
           XCOD_ULTPROD := DMSERV.TPOrd.FieldByName('COD_ESTOQUE').AsInteger;

           // se na loja esta configurado p buscar preço somente a prazo
           If DMMACS.TLoja.FieldByName('TIPOVENDA').AsString = '1'
           Then Begin
               // se na loja esta configurado p buscar do funcionario
               If (DMMACS.TLoja.FieldByName('COMISSPRODCADPROD').AsString = '0')
               Then Begin
                   // DADOS DA TABELA FUNCARGO QUE SERÃO UTILIZADAS PARA OS CALCULOS ABAIXO
                   FiltraTabela(DMPESSOA.TFunCargo,'FUNCARGO','COD_FUNCIONARIO',IntToStr(XCOD_VENDEDOR),'');

                   DMPESSOA.TFunCargo.Last;//VAI P/ O ULTIMO CARGO CADASTRADO

                   //FORMA DE PAGAMENTO À PRAZO É CALCULA COMISSÃO REFERENTE A VISTA
                   DMSERV.TPOrd.ParamByName('COMISSAO').AsCurrency:=(EDTotal.ValueNumeric*DMPESSOA.TFunCargo.FieldByName('COMISSAO_VPPRO').AsCurrency)/100;
               End
               Else Begin
                   //FORMA DE PAGAMENTO À PRAZO É CALCULA COMISSÃO REFERENTE A PRAZO
                   DMSERV.TPOrd.ParamByName('COMISSAO').AsCurrency := (EDTotal.ValueNumeric * DMESTOQUE.Alx4.FieldByName('CVPPROVAR').AsCurrency) /100;
               End;
           End
           Else Begin
               // se na loja esta configurado p buscar do funcionario
               If (DMMACS.TLoja.FieldByName('COMISSPRODCADPROD').AsString = '0')
               Then Begin
                   // DADOS DA TABELA FUNCARGO QUE SERÃO UTILIZADAS PARA OS CALCULOS ABAIXO
                   FiltraTabela(DMPESSOA.TFunCargo,'FUNCARGO','COD_FUNCIONARIO',IntToStr(XCOD_VENDEDOR),'');

                   DMPESSOA.TFunCargo.Last;//VAI P/ O ULTIMO CARGO CADASTRADO

                   // sse a forma de pagamento for a vista
                   If FrmFormPag1.EdDescricao.Text = 'À VISTA'
                   Then Begin
                       //FORMA DE PAGAMENTO À PRAZO É CALCULA COMISSÃO REFERENTE A VISTA
                       DMSERV.TPOrd.ParamByName('COMISSAO').AsCurrency:=(EDTotal.ValueNumeric*DMPESSOA.TFunCargo.FieldByName('COMISSAO_VVPRO').AsCurrency)/100;
                   End
                   Else Begin
                       //FORMA DE PAGAMENTO À PRAZO É CALCULA COMISSÃO REFERENTE A PRAZO
                       DMSERV.TPOrd.ParamByName('COMISSAO').AsCurrency:=(EDTotal.ValueNumeric*DMPESSOA.TFunCargo.FieldByName('COMISSAO_VPPRO').AsCurrency)/100;
                   End;
               End
               Else Begin
                   // sse a forma de pagamento for a vista
                   If FrmFormPag1.EdDescricao.Text = 'À VISTA'
                   Then Begin
                       //FORMA DE PAGAMENTO À PRAZO É CALCULA COMISSÃO REFERENTE A VISTA
                       DMSERV.TPOrd.ParamByName('COMISSAO').AsCurrency := (EDTotal.ValueNumeric * DMESTOQUE.Alx4.FieldByName('CVVPROVAR').AsCurrency) /100;
                   End
                   Else Begin
                       //FORMA DE PAGAMENTO À PRAZO É CALCULA COMISSÃO REFERENTE A PRAZO
                       DMSERV.TPOrd.ParamByName('COMISSAO').AsCurrency := (EDTotal.ValueNumeric * DMESTOQUE.Alx4.FieldByName('CVPPROVAR').AsCurrency) /100;
                   End;
               End;
           End;
       End;

       //Atualiza Estoque
       DMEstoque.TEstoque.edit;
       //atualiza estoque físico
       If DMEstoque.TEstoque.FieldByName('ESTFISICO').AsString='' Then
       	DMEstoque.TEstoque.FieldByName('ESTFISICO').Value:=(EDQuantidade.ValueNumeric) * -1
       Else
       	DMEstoque.TEstoque.FieldByName('ESTFISICO').Value:=DMEstoque.TEstoque.FieldByName('ESTFISICO').Value-EDQuantidade.ValueNumeric;

       //Atualiza saldo de estoque
      	DMEstoque.TEstoque.FieldByName('ESTSALDO').Value:=(DMEstoque.TEstoque.FieldByName('ESTFISICO').Value+DMEstoque.TEstoque.FieldByName('ESTPED').Value)-DMEstoque.TEstoque.FieldByName('ESTRESERV').Value;
       //prepara estoque em pedido de compra

       //prepara estoque em pedido de venda
       If DMEstoque.TEstoque.FieldByName('ESTRESERV').AsString='' Then
           XEstReserv:=0
       Else
           XEstReserv:=DMEstoque.TEstoque.FieldByName('ESTRESERV').Value;

       //prepara estoque fisico
       If DMEstoque.TEstoque.FieldByName('ESTFISICO').AsString='' Then
           XEstFisico:=0
       Else
           XEstFisico:=DMEstoque.TEstoque.FieldByName('ESTFISICO').Value;


       Try             
           DMSERV.TPOrd.ExecSQL;

           DMServ.IBT.CommitRetaining;
       Except
           DMServ.IBT.RollbackRetaining;
           MessageDlg('O ITEM NÃO FOI INSERIDO A LISTA', mtWarning, [mbOK], 0);
       End;

       Try
           DMEstoque.TEstoque.FieldByName('ATUALIZAR').AsString:='1';
           DMESTOQUE.TEstoque.Post;
           DMESTOQUE.TransacEstoque.CommitRetaining;

       Except
           DMESTOQUE.TransacEstoque.RollbackRetaining;
           MessageDlg('O ESTOQUE NÃO FOI ATUALIZADO', mtWarning, [mbOK], 0);
       End;

       //DMSERV.TPOrd.Post;
       //DMSERV.TPOrd.ExecSQL;

		//DMEstoque.TEstoque.Post;
       //DMESTOQUE.TransacEstoque.CommitRetaining;
       //DMServ.IBT.CommitRetaining;
       Panel2.OnEnter(Sender);
   Except
       DMESTOQUE.TransacEstoque.RollbackRetaining;
       DMServ.IBT.RollbackRetaining;
   End;
	//limpa labels de seleção
   LimpaLabelsPROD;
   //Filtra slaves e calcula total
   FiltraSlave;

end;

procedure TFOrdem.EDQuantidadeExit(Sender: TObject);
begin
  inherited;
//   EscreveLabelsPROD;
	If (EDQuantidade.ValueNumeric<>0) And (EDValUnit.ValueNumeric<>0)
   Then Begin
		CalcPercent(EDDesc.ValueNumeric, 0, (EDQuantidade.ValueNumeric*EDValUnit.ValueNumeric), 'D');
	    EDTotal.ValueNumeric:=AlxCalculo;
   End;

end;

procedure TFOrdem.EDValUnitEnter(Sender: TObject);
begin
  inherited;
{	FiltraTabela(DMESTOQUE.TEstoque, 'ESTOQUE', 'COD_ESTOQUE', DMESTOQUE.WSimilar.FieldByName('COD_ESTOQUE').AsString, '');
   //Insere Valor Unitário
   If (EDQuantidade.ValueNumeric>=DMEstoque.TSubProd.FieldByName('QTDATC').AsCurrency) AND (DMEstoque.TSubProd.FieldByName('QTDATC').AsCurrency>0)
   Then Begin//caso ocorra esta condição significa que o produto esta com quantidade igual ou superior a de atacado e deve ser vendido em preço de atacado
       // se o campo TIPOVENDA for igual a 1, a venda esta configurada para valores a vista
       If DMMACS.TLoja.FieldByName('TIPOVENDA').AsString = '0'
       Then Begin
			If FrmFormPag1.EdDescricao.Text='À VISTA'
	        Then Begin //A venda esta sendo a vista então o preço de venda deve ser no atacado a vista
	           EDValUnit.ValueNumeric:=DMEstoque.TEstoque.FieldByName('VENDVARV').AsCurrency
           End
           Else Begin
	           EDValUnit.ValueNumeric:=DMEstoque.TEstoque.FieldByName('VENDVARP').AsCurrency
           End;
       End
       Else Begin
           EDValUnit.ValueNumeric:=DMEstoque.TEstoque.FieldByName('VENDVARP').AsCurrency
       End;
   End
   Else Begin//caso ocorra esta condição significa que o produto esta com quantidade igual varejo e deve ser vendido em preço de varejo
       // se o campo TIPOVENDA for igual a 1, a venda esta configurada para valores a vista
       If DMMACS.TLoja.FieldByName('TIPOVENDA').AsString = '0'
       Then Begin
			If FrmFormPag1.EdDescricao.Text='À VISTA'
	        Then Begin //A venda esta sendo a vista então o preço de venda deve ser no atacado a vista
	           EDValUnit.ValueNumeric:=DMEstoque.TEstoque.FieldByName('VENDVARV').AsCurrency
           End
           Else Begin
	           EDValUnit.ValueNumeric:=DMEstoque.TEstoque.FieldByName('VENDVARP').AsCurrency
           End;
       End
       Else Begin
           EDValUnit.ValueNumeric:=DMEstoque.TEstoque.FieldByName('VENDVARP').AsCurrency
       End;
   End;        }
   EDValUnit.SetFocus;
end;

procedure TFOrdem.EDDescKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
	//EFETUA CONTROLE DE ACESSO
   If ControlAccess('DESCPROD', 'M')=False Then
  		Key:=#0;
end;

procedure TFOrdem.EDTotalKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
	If Key=vk_return
   Then Begin
		CalcPercent(0, (EDQuantidade.ValueNumeric*EDValUnit.ValueNumeric)- EDTotal.ValueNumeric, (EDQuantidade.ValueNumeric*EDValUnit.ValueNumeric), 'D');
		EDDesc.ValueNumeric:=AlxPercento;
   End;
end;

procedure TFOrdem.BtnDeleteProdClick(Sender: TObject);
begin
  inherited;
   If DMESTOQUE.TSlave.RecordCount<>0
   Then Begin//caso a tabela esteja vasia não pode apagar

       // se a atividade for equipe eh feita uma outra verificação
       If DMMACS.TLoja.FieldByName('ATIVIDADE').AsString = 'EQUIPE'
       Then Begin
           DMServ.TAlx1.Close;
           DMServ.TAlx1.SQL.Clear;
           DMServ.TAlx1.SQL.Add('select * from estoque');
           DMServ.TAlx1.SQL.Add('left join subproduto on estoque.cod_subprod = subproduto.cod_subproduto');
           DMServ.TAlx1.SQL.Add('where estoque.cod_estoque = :codigo');
           DMServ.TAlx1.ParamByName('codigo').AsInteger := DMESTOQUE.TSlave.FieldByName('COD_ESTOQUE').AsInteger;
           DMServ.TAlx1.Open;

           // verifica o tamanho do produto para colocar abreviação se necessario
           If Length(DMServ.TAlx1.FieldByname('descricao').AsString) > 20
           Then Begin
               // se clicar em não, o produto naum sera apagado
               If Mensagem('   A T E N Ç Ã O   ','Deseja realmente apagar o produto ' + Copy(DMServ.TAlx1.FieldByname('descricao').AsString,0,20) + '. ?','',2,3,false,'I')=3 Then
                   Exit;
           End
           Else Begin
               // se clicar em não, o produto naum sera apagado
               If Mensagem('   A T E N Ç Ã O   ','Deseja realmente apagar o produto ' + DMServ.TAlx1.FieldByname('descricao').AsString + ' ?','',2,3,false,'I')=3 Then
                   Exit;
           End;

       End;

	  	//LOCALIZA E FILTRA ESTOUE CORRESPONDENTE
		FiltraTabela(DMEstoque.TEstoque, 'ESTOQUE', 'COD_ESTOQUE', DMESTOQUE.TSlave.FieldByName('COD_ESTOQUE').AsString, '');
		FiltraTabela(DMEstoque.WSimilar, 'VWSIMILAR', 'COD_ESTOQUE', DMEstoque.TSlave.FieldByName('COD_ESTOQUE').AsString, '');
		FiltraTabela(DMSERV.TPOrd, 'ITPRODORD', 'COD_ITPRODORD', DMESTOQUE.TSlave.FieldByName('COD_ITPRODORD').AsString, '');
	    //Atualiza Estoque
	    DMEstoque.TEstoque.edit;
      	DMEstoque.TEstoque.FieldByName('ESTFISICO').Value:=DMEstoque.TEstoque.FieldByName('ESTFISICO').Value+DMServ.TPOrd.FieldByName('QTD').Value;
      	DMEstoque.TEstoque.FieldByName('ESTRESERV').Value:=DMEstoque.TEstoque.FieldByName('ESTRESERV').Value-DMServ.TPOrd.FieldByName('QTD').Value;
       DMEstoque.TEstoque.FieldByName('ATUALIZAR').AsString:='1';
       //Atualiza saldo de estoque
       //prepara estoque em pedido de compra
       Try
	  		DMEstoque.TEstoque.FieldByName('ESTSALDO').Value:=(DMEstoque.TEstoque.FieldByName('ESTSALDO').AsCurrency-DMEstoque.TEstoque.FieldByName('ESTRESERV').AsCurrency)+DMEstoque.TEstoque.FieldByName('ESTFISICO').AsCurrency;
       Except
       End;

		DMEstoque.TEstoque.Post;
       DMESTOQUE.TransacEstoque.CommitRetaining;

       // essa variavel eh soh para faer verificação na função "calcula comissao" e nao precisar usar o mesmo filtratabela igual ao debaixo
       XCampo := '1';
       // filtra estoque para buscar os valores das porcentagens das comissoes
       FiltraTabela(DMESTOQUE.Alx4,'ESTOQUE','COD_ESTOQUE',DMSERV.TPOrd.FieldByName('COD_ESTOQUE').AsString,'');
       XCOD_ULTPROD := DMSERV.TPOrd.FieldByName('COD_ESTOQUE').AsInteger;

	    //APAGA ITEM
	 	//DMSERV.TPOrd.Delete;
       //If DMSERV.TPOrd.UpdatesPending Then
		//    DMSERV.TPOrd.ApplyUpdates;
       DMServ.TAlx1.Close;
       DMServ.TAlx1.SQL.Clear;
       DMServ.TAlx1.SQL.Add('delete from itprodord where itprodord.cod_itprodord = :CODIGO');
       DMServ.TAlx1.ParamByName('CODIGO').AsInteger := DMESTOQUE.TSlave.FieldByName('COD_ITPRODORD').AsInteger;
       DMServ.TAlx1.ExecSQL;
       

 	    //CONFIRMA TRANZAÇÃO
	    Try
          DMServ.IBT.CommitRetaining;
		   XTransaction.CommitRetaining;
	    Except
          DMServ.IBT.RollbackRetaining;
	 	   XTransaction.RollbackRetaining;
	    End;

	 	//VOLTA VALORES AS LABELS
	    EscreveLabelsPROD;
	 	EDQuantidade.ValueNumeric:=DMESTOQUE.TSlave.FieldByName('QTD').Value;
	 	EDValUnit.ValueNumeric:=DMESTOQUE.TSlave.FieldByName('VLRUNIT').Value;
		EDDesc.ValueNumeric:=DMESTOQUE.TSlave.FieldByName('DESCONTO').Value;
		EDTotal.ValueNumeric:=DMESTOQUE.TSlave.FieldByName('TOTAL').Value;
	    //Filtra registros escrsavos
	    FiltraSlave;
       Panel2.OnEnter(Sender);
   End;
end;

procedure TFOrdem.BtnConsultarClick(Sender: TObject);
begin

   // repassando valor do cidgo da ordem para variavel
   XCOD_ORDEM := DMServ.WOrdem.FieldByname('cod_ordem').AsInteger;

   // BUSCANDO DADOS DA ORDEM
   FiltraTabela(DMServ.TOrd,'ORDEM','COD_ORDEM',IntToStr(XCOD_ORDEM),'');

   // caso o campo tiver valendo 1 eh pq a ordem jah esta sendo usada
   If DMServ.TOrd.FieldByName('EDIT').AsString = '1'
   Then Begin
       Mensagem('    A T E N Ç Ã O   ','A ordem está sendo usada no momento.'+#13+'Use Ctrl+D para destravar','',1,1,false,'I');
       Exit;
   End
   Else Begin

       {DMServ.TOrd.First;
       DMServ.TOrd.Edit;
       DMServ.TOrd.FieldByName('EDIT').AsString := '1';
       DMServ.TOrd.Post;}

       DMServ.TAlx1.Close;
       DMServ.TAlx1.SQL.Clear;
       DMServ.TAlx1.SQL.Add('update ORDEM set EDIT = :EDIT');
       DMServ.TAlx1.SQL.Add('where COD_ORDEM = :OLD_COD_ORDEM');
       DMServ.TAlx1.ParamByName('EDIT').AsString := '1';
       DMServ.TAlx1.ParamByName('OLD_COD_ORDEM').AsInteger := DMServ.TOrd.FieldByName('COD_ORDEM').AsInteger;
       DMServ.TAlx1.ExecSQL;

       DMServ.IBT.CommitRetaining;
   End;

   // se for igual a um, eh exibido o painel da guinchomaq
   If DMMACS.TLoja.FieldByName('ORDEMLOCA_GUINDASTE').AsString = '1'
   Then Begin
       FrmTabela.EDCodigo.Text := '';
       LVlrTitulo.Caption := 'Valor Norm.';

       // limpando memo
       MFunc.Clear;

       // desabilita os campos para nao serem alterados enquanto nao for selecionado equipamento se o parametro for TRUE;
       DesabilitaCampos(true);

       // limpa edits do ajudante
       Limpa_EditAjudante;

       // repassa o cod_ordem para variavel para mais tarde a variavel ser usada em outras ocasiões
       XCOD_CLIENTE := DMServ.WOrdem.FieldByname('cod_cliente').AsInteger;

       // SQL de cliente com pessoa para buscar dados da ordem de servico
       DMPESSOA.TALX.Close;
       DMPESSOA.TALX.SQL.Clear;
       DMPESSOA.TALX.SQL.Add(' select ordem.cod_ordem, ordem.cod_vendedor, cliente.cod_cliente, cliente.cod_pessoa, pessoa.cod_pessoa, pessoa.nome, ');
       DMPESSOA.TALX.SQL.Add(' pessoa.cod_pessoa, pessoa.nome, ordem.dtabert, ordem.hrabert, ordem.totord, ordem.cod_tabelapreco, ordem.observacao, ');
       DMPESSOA.TALX.SQL.Add(' ordem.totserv, ordem.descserv, ordem.totkm, ordem.totajudante, ordem.descajudante, ordem.desckm, ordem.desconto, ordem.numero');
       DMPESSOA.TALX.SQL.Add(' from ordem ');
       DMPESSOA.TALX.SQL.Add(' left join cliente on ordem.cod_cliente = cliente.cod_cliente ');
       DMPESSOA.TALX.SQL.Add(' left join pessoa on cliente.cod_pessoa = pessoa.cod_pessoa ');
       DMPESSOA.TALX.SQL.Add(' where ordem.cod_ordem = :codigo');
       DMPESSOA.TALX.ParamByName('codigo').AsString := DMServ.WOrdem.FieldByName('cod_ordem').AsString;
       DMPESSOA.TALX.Open;

       // codigo e nome do cliente, cod_tabela e descricao da tabela
       EDCodigoCli.Text := DMPESSOA.TALX.fieldbyname('cod_cliente').AsString;
       EdDescricaoCli.Text := DMPESSOA.TALX.fieldbyname('nome').AsString;
       EDDataIni.Text := DMPESSOA.TALX.fieldbyname('DTABERT').AsString;
       EDHAbert.Text := DMPESSOA.TALX.fieldbyname('HRABERT').AsString;
       MObservacao.Text := DMPESSOA.TALX.fieldbyname('observacao').AsString;
       EdDescKm.ValueNumeric := DMPESSOA.TALX.fieldbyname('DESCKM').AsCurrency;
       EdTotKm.ValueNumeric := DMPESSOA.TALX.fieldbyname('TOTKM').AsCurrency;
       EdDescServico.ValueNumeric := DMPESSOA.TALX.fieldbyname('DESCSERV').AsCurrency;
       EdTotServ.ValueNumeric := DMPESSOA.TALX.fieldbyname('TOTSERV').AsCurrency;
       EdDescontoTot.ValueNumeric := DMPESSOA.TALX.fieldbyname('DESCONTO').AsCurrency;
       EdTotOrd.ValueNumeric := EdTotKm.ValueNumeric + EdTotServ.ValueNumeric;
       EdValorOrd.ValueNumeric := EdTotKm.ValueNumeric + EdTotServ.ValueNumeric;
       EdTotAjud.ValueNumeric := DMPESSOA.TALX.fieldbyname('TOTAJUDANTE').AsCurrency;
       EdDescAjud.ValueNumeric := DMPESSOA.TALX.fieldbyname('DESCAJUDANTE').AsCurrency;
       EdTotOrd.ValueNumeric := DMPESSOA.TALX.fieldbyname('TOTORD').AsCurrency;
       EdValorOrd.ValueNumeric := DMPESSOA.TALX.fieldbyname('TOTORD').AsCurrency;

       // SELECIONA DADOS DA TABELA DE PREÇO
       If DMPESSOA.TALX.FieldByname('cod_tabelapreco').AsString <> ''
       Then Begin
           DMServ.Alx.Close;
           DMServ.Alx.SQL.Clear;
           DMServ.Alx.SQL.Add('SELECT * FROM TABELA_PRECO WHERE TABELA_PRECO.COD_TABELAPRECO = :CODIGO');
           DMServ.Alx.ParamByName('CODIGO').AsInteger := DMPESSOA.TALX.FieldByname('cod_tabelapreco').AsInteger;
           DMServ.Alx.Open;

           // se nao estiver vazio a sql os dados sao repassados para edit
           If Not DMServ.Alx.IsEmpty
           Then Begin
               FrmTabela.EDCodigo.Text := DMServ.Alx.FieldByname('cod_tabelapreco').AsString;
               FrmTabela.EdDescricao.Text := DMServ.Alx.FieldByname('descricao').AsString;
           End;
       End;

       // seleciona dados da tabela forma de pagamento
       DMFINANC.TAlx.Close;
       DMFINANC.TAlx.SQL.Clear;
       DMFINANC.TAlx.SQL.Add('select ordem.cod_formpag, formpag.descricao from ordem');
       DMFINANC.TAlx.SQL.Add('left join formpag on ordem.cod_formpag = formpag.cod_formpag');
       DMFINANC.TAlx.SQL.Add('where ordem.cod_ordem = :codigo');
       DMFINANC.TAlx.ParamByName('codigo').AsInteger := DMServ.WOrdem.FieldByname('cod_ordem').AsInteger;
       DMFINANC.TAlx.Open;

       EDCodPag.Text := DMFINANC.TAlx.FieldByName('cod_formpag').AsString;
       EDDescPag.Text := DMFINANC.TAlx.FieldByName('descricao').AsString;

       //EQUIPAMENTO
       If FiltraTabela(DMPESSOA.TEquip, 'EQUIPAMENTO', 'COD_EQUIPAMENTO', DMServ.WOrdem.FieldByName('COD_EQUIPAMENTO').AsString, '')=True
       Then Begin
            EDPlaca.Text:=DMPESSOA.TEquip.FieldByName('PLACA').AsString;
            EDEquip.Text:=DMPESSOA.TEquip.FieldByName('DESCRICAO').AsString;

            // se o equipamento possui motorista atrelado, eh buscado seus dados
            If DMPESSOA.TEquip.FieldByName('cod_motorista').AsString <> ''
            Then Begin
               If FiltraTabela(DMPESSOA.VWFuncionario,'VWFUNCIONARIO','COD_FUNC',DMPESSOA.TEquip.FieldByName('cod_motorista').AsString,'') = TRUE
               Then Begin
                   FrmMotorista.EdDescricao.Text := DMPESSOA.VWFuncionario.FieldByname('nome').AsString;
                   FrmMotorista.EDCodigo.Text := DMPESSOA.VWFuncionario.FieldByname('cod_func').AsString;
               End
               Else Begin
                   FrmMotorista.EdDescricao.Text := '';
                   FrmMotorista.EDCodigo.Text := '';
               End;
            End;
       End
       Else Begin
           FrmMotorista.EdDescricao.Text := '';
           FrmMotorista.EDCodigo.Text := '';
       End;

       // filtra funcionarios, ajudantes e ordem de servico apos inserir os ajudantes na OS
       FiltraAjudante;

       // limpa edits
       LimpaEdits;

       // seleciona todos os dados da grid referente ao XCOD_ORDEM
       AtualizaGrid_Servico;

       // ativando a primeira pagina - Veiculo
       PCVeiculo.ActivePage := TabSheet3;

   End
   Else Begin

       If XView.FieldByName('STATUS').AsString<>'FECHADO'
       Then Begin
          inherited;
          TCCadastro.ActiveTab:=1;
          TCCadastro.OnTabChanged(Sender);

          If FiltraTabela(XTabela, 'ORDEM', 'COD_ORDEM', XView.FieldByName('COD_ORDEM').AsString, '')=False Then
               Exit;//Caso não encontrar cancelar

          //VERIFICA RESTRICOES DE USUARIO
          If ControlAccess('USAGARANT', '')=False
          Then Begin
               CBGarantia.Checked:=False;
               CBGarantia.Enabled:=False;
          End
          Else Begin
               CBGarantia.Enabled:=True;
          End;
          If DMMACS.TLoja.FieldByName('USAGARANTIA').AsString='1'
          Then Begin
               CBGarantia.Visible:=True;
               CBGarantia.BringToFront;
          End
          Else Begin
               CBGarantia.Visible:=False;
          End;

          XTabela.Edit;
          XESTADO:='EDIT';
          //VERIFICA RESTRICOES DE USUARIO
          If ControlAccess('USAGARANT', '')=False
          Then Begin
               CBGarantia.Checked:=False;
               CBGarantia.Enabled:=False;
          End
          Else Begin
              CBGarantia.Enabled:=True;
          End;

           If XView.FieldByName('STATUS').AsString<>'FECHADO' Then
          //cliente
          If FiltraTabela(DMPESSOA.WCliente, 'VWCLIENTE', 'COD_CLIENTE', XView.FieldByName('COD_CLIENTE').AsString, '')=True
          Then Begin
               XCOD_CLIENTE:=DMPESSOA.WCliente.FieldByName('COD_CLIENTE').AsInteger;
               FrmCliente.EDCodigo.Text:=DMPESSOA.WCliente.FieldByName('COD_INTERNO').AsString;
               FrmCliente.EdDescricao.Text:=DMPESSOA.WCliente.FieldByName('NOME').AsString;
          End
          Else Begin
               XCOD_CLIENTE:=-1;
               FrmCliente.EDCodigo.Text:='';
               FrmCliente.EdDescricao.Text:='';
          End;
          //EQUIPAMENTO
          If FiltraTabela(DMPESSOA.TEquip, 'EQUIPAMENTO', 'COD_EQUIPAMENTO', XView.FieldByName('COD_EQUIPAMENTO').AsString, '')=True
          Then Begin
               XCOD_EQUIPAMENTO:=DMPESSOA.TEquip.FieldByName('COD_EQUIPAMENTO').AsInteger;
               If DMMACS.tloja.FieldByName('ATIVIDADE').AsString = 'EQUIPE'
               Then Begin
                   FBEquipPlaca.EdDescricao.Text := DMPESSOA.TEquip.FieldByName('DESCRICAO').AsString;
                   FBEquipPlaca.EDCodigo.Text := DMPESSOA.TEquip.FieldByName('placa').AsString;

                   // ativa o group box de kilometragem
                   GBKM.Enabled := true;

               End
               Else Begin
                   FrmEquipamento.EDCodigo.Text:=DMPESSOA.TEquip.FieldByName('COD_EQUIPAMENTO').AsString;
                   FrmEquipamento.EdDescricao.Text:=DMPESSOA.TEquip.FieldByName('DESCRICAO').AsString;
               End;
          End
          Else Begin
               XCOD_EQUIPAMENTO:=-1;
               FrmEquipamento.EDCodigo.Text:='';
               FrmEquipamento.EdDescricao.Text:='';
               FBEquipPlaca.EdDescricao.Text := '';
               FBEquipPlaca.EDCodigo.Text := '';
               // desativa o groupbox de kilometragem
               GBKM.Enabled := false;
          End;
          //FORMA DE PAGAMENTO
          XCOD_FORMPAG:=DMServ.TOrd.FieldByName('COD_FORMPAG').AsInteger;
          If FiltraTabela(DMFINANC.TFormPag, 'FORMPAG', 'COD_FORMPAG', XTabela.FieldByName('COD_FORMPAG').AsString, '')=True
          Then Begin
               XCOD_FORMPAG:=DMFINANC.TFormPag.FieldByName('COD_FORMPAG').AsInteger;
               FrmFormPag1.EDCodigo.Text:=DMFINANC.TFormPag.FieldByName('COD_FORMPAG').AsString;
               FrmFormPag1.EdDescricao.Text:=DMFINANC.TFormPag.FieldByName('DESCRICAO').AsString;
          End
          Else Begin
               XCOD_FORMPAG:=-1;
               FrmFormPag1.EDCodigo.Text:='';
               FrmFormPag1.EdDescricao.Text:='';
          End;

           //se for empresa que utiliza equipe, aparece o formulario de busca pela placa do veículo
           if DMMACS.TLoja.FieldByName('atividade').AsString='EQUIPE'
           then begin
              FBEquipPlaca.Visible:=True;
              FBEquipPlaca.BringToFront;
              PEquipe.Visible:=True;
              PEquipe.BringToFront;

              // VERIFICA PRIMEIRO SE A ORDEM POSSUI EQUIPAMENTO
              If XCOD_EQUIPAMENTO > 0
              Then Begin
                   // SELECIONA OS DADOS DA TABELA EQUIPAMENTO COM O MESMO CODIGO
                   FiltraTabela(DMPESSOA.TEquip,'EQUIPAMENTO','COD_EQUIPAMENTO',IntToStr(XCOD_EQUIPAMENTO),'');

                   // REPASSA O VALOR DO CAMPO "KMATUAL" PARA EDIT
                   EDKM.Text := DMPESSOA.TEquip.FieldByName('KMATUAL').AsString;
                   CBUnid.Text := DMPESSOA.TEquip.FieldByName('UNIDRODAGEM').AsString;

              End;
           end
           else begin
               FBEquipPlaca.Visible:=False;
               FBEquipPlaca.SendToBack;
               PEquipe.Visible:=false;
               PEquipe.SendToBack;
           end;


          //VENDEDOR
          If FiltraTabela(DMPESSOA.VWFuncionario, 'VWFUNCIONARIO', 'COD_FUNC', XView.FieldByName('COD_VENDEDOR').AsString, '')=True
          Then Begin
               XCOD_VENDEDOR:=DMPESSOA.VWFuncionario.FieldByName('COD_FUNC').AsInteger;
               FrmVendedor.EDCodigo.Text:=DMPESSOA.VWFuncionario.FieldByName('COD_INTERNO').AsString;
               FrmVendedor.EdDescricao.Text:=DMPESSOA.VWFuncionario.FieldByName('NOME').AsString;
          End
          Else Begin
               XCOD_VENDEDOR:=-1;
               FrmVendedor.EDCodigo.Text:='';
               FrmVendedor.EdDescricao.Text:='';
          End;

          //RESPONSA'VEL
          If FiltraTabela(DMPESSOA.VWFuncionario, 'VWFUNCIONARIO', 'COD_FUNC', XView.FieldByName('COD_FUNCIONARIO').AsString, '')=True
          Then Begin
               XCOD_FUNCIONARIO:=DMPESSOA.VWFuncionario.FieldByName('COD_FUNC').AsInteger;
               FrmResponsavel.EDCodigo.Text:=DMPESSOA.VWFuncionario.FieldByName('COD_INTERNO').AsString;
               FrmResponsavel.EdDescricao.Text:=DMPESSOA.VWFuncionario.FieldByName('NOME').AsString;
          End
          Else Begin
               XCOD_FUNCIONARIO:=-1;
               FrmResponsavel.EDCodigo.Text:='';
               FrmResponsavel.EdDescricao.Text:='';
          End;

          //Informa outros valores
          EdtotalProd.ValueNumeric:=XTabela.FieldByName('TOTPROD').AsCurrency;
          EdtotalServ.ValueNumeric:=XTabela.FieldByName('TOTSERV').AsCurrency;
          EdDescTOrdem.ValueNumeric:=XTabela.FieldByName('DESCONTO').AsCurrency;
          EdDescTProd.ValueNumeric:=XTabela.FieldByName('DESCPROD').AsCurrency;
          EdDescTServ.ValueNumeric:=XTabela.FieldByName('DESCSERV').AsCurrency;

          //seleciona items da ordem
          FiltraSlave;

          If XTabela.FieldByName('GARANTIA').AsString='1' Then
               CBGarantia.Checked:=True
          Else
               CBGarantia.Checked:=False;

           PProdServ.BringToFront;
           PCProdServ.ActivePage:=TabSheet1;
       End
       Else Begin
           Mensagem('NOTIFICAÇÃO AO USUÁRIO', 'Não é possível Consultar/Alterar este pedido, por já se encontrar fechado!', '', 1, 1, False, 'a');
           Exit;
       End;

       // seleciona todos os dados da tabela ordem que tenham o cod_ordem igual á XCOD_ORDEM
       DMServ.TOrd.Close;
       DMServ.TOrd.SQL.Clear;
       DMServ.TOrd.SQL.Add('SELECT * FROM ORDEM WHERE ORDEM.COD_ORDEM = :CODIGO');
       DMServ.TOrd.ParamByName('CODIGO').AsInteger := XCOD_ORDEM;
       DMServ.TOrd.Open;

       // edita o ccheckbox "DOCUMENTOS"
       If DMServ.TOrd.FieldByName('DOCUMENTOS').AsString = 'X'
       Then Begin
           CBDocumentos.Checked := true
       End
       Else Begin
           CBDocumentos.Checked := false;
       End;

       // edita o ccheckbox 'DESKTOP'
       If DMServ.TOrd.FieldByName('DESKTOP').AsString = 'X'
       Then Begin
           CBDesktop.Checked := true;
       End
       Else Begin
           CBDesktop.Checked := false;
       End;

       // edita o ccheckbox 'EMAILS'
       If DMServ.TOrd.FieldByName('EMAILS').AsString = 'X'
       Then Begin
           CBEmails.Checked := true;
       End
       Else Begin
           CBEmails.Checked := false;
       End;

       // edita o ccheckbox 'OUTROS'
       If DMServ.TOrd.FieldByName('OUTROS').AsString = 'X'
       Then Begin
           CBOutros.Checked := true;
       End
       Else Begin
           CBOutros.Checked := false;
       End;
       edDtAgendamento.Text :=  DMServ.TOrd.FieldByName('DTAGENDADO').AsString
   End;
   if (XTabela.FieldByName('STATUS').AsString='ABERTO') Then
       RGSituacao.ItemIndex := 0;
   if (XTabela.FieldByName('STATUS').AsString='AGENDADO') Then
       RGSituacao.ItemIndex := 1;
   if (XTabela.FieldByName('STATUS').AsString='FINALIZADO') Then
       RGSituacao.ItemIndex := 2;
   if (XTabela.FieldByName('STATUS').AsString='TERMINADO') Then
       RGSituacao.ItemIndex := 3;

   DBDTABERTExit(Self);
   DBDTPREVExit(Self);

   inherited;

end;

procedure TFOrdem.BtnProcServClick(Sender: TObject);
begin
  inherited;
  	//abre formulario de serviço para seleção
	If AbrirForm(TFSERVICO, FSERVICO, 1)='Selected'
	Then Begin
   	//Depois de selecionado escreve nas labels o produto
       EscreveLabelsSERV;
   End;
   EDQtdServ.Refresh;
   EdDescServ.Refresh;
   EdVlrtotalServ.Refresh;
end;


procedure TFOrdem.EdCodInternoServKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
	If Key=VK_Return
   Then Begin
       DMServ.WSubServ.Close;
       DMServ.WSubServ.SQL.Clear;
       DMServ.WSubServ.SQL.Add('  select * from vwsubservico where (upper(vwsubservico.descricao) like upper('+#39+'%'+EdServico.Text+'%'+#39+'))');
       DMServ.WSubServ.Open;
		EscreveLabelsSERV;
   End;
end;

procedure TFOrdem.EDQtdServExit(Sender: TObject);
begin
  inherited;
	If (EDQtdServ.ValueNumeric<>0) And (EDVlrUnitServ.ValueNumeric<>0)
   Then Begin
		CalcPercent(EdDescServ.ValueNumeric, 0, (EDQtdServ.ValueNumeric*EDVlrUnitServ.ValueNumeric), 'D');
	    EdVlrtotalServ.ValueNumeric:=AlxCalculo;
   End;
end;

procedure TFOrdem.EDVlrUnitServEnter(Sender: TObject);
begin
  inherited;
   //Insere Valor Unitário
   EDVlrUnitServ.ValueNumeric:=DMSERV.TSubserv.FieldByName('VLRFINAL').Value;
//   EDValUnit.SetFocus;
end;

procedure TFOrdem.EdVlrtotalServKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
	If Key=vk_return
   Then Begin
		CalcPercent(0, (EDQtdServ.ValueNumeric*EDVlrUnitServ.ValueNumeric)- EdVlrtotalServ.ValueNumeric, (EDQtdServ.ValueNumeric*EDVlrUnitServ.ValueNumeric), 'D');		EdDescServ.ValueNumeric:=AlxPercento;
   End;
end;

procedure TFOrdem.BtnInsertServClick(Sender: TObject);
begin
  inherited;
   //Valida quanto a quantidade
   If EDQtdServ.ValueNumeric<=0
   Then Begin
		Mensagem('OPÇÃO BLOQUEADA', 'O serviço não pode ser inserido a lista com quantidade inferior ou igual a 0.', '', 1, 1, False, 'a');
		EDQtdServ.SetFocus;
	    Exit;
   End;
   //Valida quanto ao valor unitario do produto
   If EDVlrUnitServ.ValueNumeric<=0
   Then Begin
		Mensagem('OPÇÃO BLOQUEADA', 'O serviço não pode ser inserido a lista com o valor unitario igual ou inferiro a 0.', '', 1, 1, False, 'a');
		EDVlrUnitServ.SetFocus;
	    Exit;
   End;
   //Valida quanto ao valor total do produto
   If EdVlrtotalServ.ValueNumeric<=0
   Then Begin
		Mensagem('OPÇÃO BLOQUEADA', 'O serviço não pode ser inserido a lista com o valor total igual ou inferiro a 0.', '', 1, 1, False, 'a');
		EdVlrtotalServ.SetFocus;
	    Exit;
   End;

   //Tenta gravar as informações
   Try
       //Insere serviço a lista de serviços
       XCOD_ITSERV:=InserReg(DMSERV.TSOrd, 'ITSERVORD', 'COD_ITSERVORD');
       DMSERV.TSOrd.FieldByName('COD_ITSERVORD').AsInteger:=XCOD_ITSERV;
       DMSERV.TSOrd.FieldByName('COD_ORDEM').AsInteger:=XCOD_ORDEM;
       DMSERV.TSOrd.FieldByName('COD_SERVICO').AsInteger:= XCOD_SERVICO;
       DMSERV.TSOrd.FieldByName('QTD').AsCurrency:=EDQtdServ.ValueNumeric;
       DMSERV.TSOrd.FieldByName('DESCONTO').AsCurrency:=EdDescServ.ValueNumeric;
       DMSERV.TSOrd.FieldByName('VLRUNIT').AsCurrency:=EDVlrUnitServ.ValueNumeric;
       DMSERV.TSOrd.FieldByName('VLRUNITCUSTO').AsCurrency:=DMSERV.TSubserv.FieldByName('VLRUNIT').AsCurrency;
       DMSERV.TSOrd.FieldByName('TOTAL').AsCurrency:=EdVlrtotalServ.ValueNumeric;
       DMSERV.TSOrd.FieldByName('COD_FUNCIONARIO').AsInteger:=XCOD_VENDEDOR;
       DMSERV.TSOrd.FieldByName('DATA').AsDateTime:=Date();
       DMSERV.TSOrd.FieldByName('PIS').AsCurrency:=(DMSERV.TSOrd.FieldByName('TOTAL').AsCurrency*DMMACS.TLoja.FieldByName('PIS').AsCurrency)/100;
       DMSERV.TSOrd.FieldByName('CONTSOC').AsCurrency:=(DMSERV.TSOrd.FieldByName('TOTAL').AsCurrency*DMMACS.TLoja.FieldByName('CONTSOC').AsCurrency)/100;
       DMSERV.TSOrd.FieldByName('IR').AsCurrency:=(DMSERV.TSOrd.FieldByName('TOTAL').AsCurrency*DMMACS.TLoja.FieldByName('IMPREND').AsCurrency)/100;
       DMSERV.TSOrd.FieldByName('COFINS').AsCurrency:=(DMSERV.TSOrd.FieldByName('TOTAL').AsCurrency*DMMACS.TLoja.FieldByName('COFINS').AsCurrency)/100;
       DMSERV.TSOrd.FieldByName('INSS').AsCurrency:=(DMSERV.TSOrd.FieldByName('TOTAL').AsCurrency*DMMACS.TLoja.FieldByName('INSS').AsCurrency)/100;
       DMSERV.TSOrd.FieldByName('ISSQN').AsCurrency:=(DMSERV.TSOrd.FieldByName('TOTAL').AsCurrency*DMMACS.TLoja.FieldByName('ISSQN').AsCurrency)/100;
       DMSERV.TSOrd.FieldByName('OUTROS').AsCurrency:=(DMSERV.TSOrd.FieldByName('TOTAL').AsCurrency*DMMACS.TLoja.FieldByName('OUTROIMPSERV').AsCurrency)/100;

       // DADOS DA TABELA FUNCARGO QUE SERÃO UTILIZADAS PARA OS CALCULOS ABAIXO
       If FiltraTabela(DMPESSOA.TFunCargo,'FUNCARGO','COD_FUNCIONARIO',IntToStr(XCOD_VENDEDOR),'') = true
       Then Begin
           DMPESSOA.TFunCargo.Last;//VAI P/ O ULTIMO CARGO CADASTRADO

           If FrmFormPag1.EdDescricao.Text = 'À VISTA'
           Then Begin
               //FORMA DE PAGAMENTO À vista
               DMSERV.TSOrd.FieldByName('COMISSAO').AsCurrency:=(StrToFloat(EdVlrtotalServ.Text)*DMPESSOA.TFunCargo.FieldByName('COMISSAO_VVSER').AsCurrency)/100;
           End
           Else Begin
               //FORMA DE PAGAMENTO À prazo
               DMSERV.TSOrd.FieldByName('COMISSAO').AsCurrency:=(StrToFloat(EdVlrtotalServ.Text)*DMPESSOA.TFunCargo.FieldByName('COMISSAO_VPSER').AsCurrency)/100;
           End;
       End
       Else Begin
           DMSERV.TSOrd.FieldByName('COMISSAO').AsCurrency := 0;
       End;

       DMSERV.TSOrd.FieldByName('TOTENCARGO').AsCurrency:=DMSERV.TSOrd.FieldByName('PIS').AsCurrency+DMSERV.TSOrd.FieldByName('CONTSOC').AsCurrency+DMSERV.TSOrd.FieldByName('IR').AsCurrency+DMSERV.TSOrd.FieldByName('COFINS').AsCurrency+DMSERV.TSOrd.FieldByName('INSS').AsCurrency+DMSERV.TSOrd.FieldByName('ISSQN').AsCurrency+DMSERV.TSOrd.FieldByName('OUTROS').AsCurrency;
       DMSERV.TSOrd.FieldByName('LUCMOE').AsCurrency:=DMSERV.TSOrd.FieldByName('TOTAL').AsCurrency-DMSERV.TSOrd.FieldByName('TOTENCARGO').AsCurrency-DMSERV.TSOrd.FieldByName('COMISSAO').AsCurrency;
   	DMSERV.TSOrd.FieldByName('LUCPER').AsCurrency:=(DMSERV.TSOrd.FieldByName('LUCMOE').AsCurrency*100)/DMSERV.TSOrd.FieldByName('TOTAL').AsCurrency;

       DMSERV.TSOrd.Post;
       DMSERV.IBT.CommitRetaining;
		BtnProcServ.SetFocus;
   Except
       DMSERV.IBT.RollbackRetaining;
   End;
   //Filtra slaves e calcula total
   FiltraSlave;
	//limpa labels de seleção
   LimpaLabelsSERV;
	BtnProcServ.SetFocus;
end;


procedure TFOrdem.BtnDeleteServClick(Sender: TObject);
begin
  inherited;
   If DMESTOQUE.TSlaveServ.RecordCount<>0
   Then Begin//caso a tabela esteja vasia não pode apagar
	  	//LOCALIZA E FILTRA registro CORRESPONDENTE
		FiltraTabela(DMSERV.WSubServ, 'VWSUBSERVICO', 'COD_SUBSERVICO', DMESTOQUE.TSlaveServ.FieldByName('COD_SERVICO').AsString, '');
		FiltraTabela(DMSERV.TSOrd, 'ITSERVORD', 'COD_ITSERVORD', DMESTOQUE.TSlaveServ.FieldByName('COD_ITSERVORD').AsString, '');

       // por questao de garantia o codigo de estoque do produto selecionado esta sendo atribuido á variavel pois jah que ela naum eh usada em nenhum outro momento, nao tem a possibilidade de ter seu valor alterado
       XCOD_SERVICO := DMServ.WSubServ.FieldByName('COD_SERVICO').AsInteger;

	    //APAGA ITEM
	 	DMSERV.TSOrd.Delete;
       If DMSERV.TSOrd.UpdatesPending Then
		    DMSERV.TSOrd.ApplyUpdates;

 	    //CONFIRMA TRANZAÇÃO
	    Try
		   XTransaction.CommitRetaining;
	    Except
	 	   XTransaction.RollbackRetaining;
	    End;

	 	//VOLTA VALORES AS LABELS
	    EscreveLabelsSERV;
	 	EDQtdServ.ValueNumeric:=DMESTOQUE.TSlaveServ.FieldByName('QTD').Value;
	 	EDVlrUnitServ.ValueNumeric:=DMESTOQUE.TSlaveServ.FieldByName('VLRUNIT').Value;
		EdDescServ.ValueNumeric:=DMESTOQUE.TSlaveServ.FieldByName('DESCONTO').Value;
		EdVlrtotalServ.ValueNumeric:=DMESTOQUE.TSlaveServ.FieldByName('TOTAL').Value;
	    //Filtra registros escravos
	    FiltraSlave;
       EDQtdServ.SetFocus;
   End;

end;

procedure TFOrdem.RGSituacaoClick(Sender: TObject);
begin
  inherited;
   If RGSituacao.ItemIndex=1 Then
   Begin
       PMotParada.Visible:=True;
       PMotParada.BringToFront;
       PMotParada.Enabled:=True;
       Try
           edDtAgendamento.SetFocus;
       Except
       End;
//       DBMMotParada.SetFocus;
   End
   Else Begin
       PMotParada.Visible:=False;
       PMotParada.Enabled:=False;
   End;
End;

procedure TFOrdem.BtnApagarClick(Sender: TObject);
begin
  inherited;
   //EFETUA CONTROLE DE ACESSO
   If ControlAccess('EXCORD', 'M')=False Then
  		Exit;

   FiltraTabela(DMSERV.TOrd, 'ORDEM', 'COD_ORDEM', XView.FieldByName('COD_ORDEM').AsString, '');
   XCOD_ORDEM:=XView.FieldByName('COD_ORDEM').AsInteger;

   // BUSCANDO DADOS DA ORDEM
   FiltraTabela(DMServ.TOrd,'ORDEM','COD_ORDEM',IntToStr(XCOD_ORDEM),'');

   // caso o campo tiver valendo 1 eh pq a ordem jah esta sendo usada
   If DMServ.TOrd.FieldByName('EDIT').AsString = '1'
   Then Begin
       Mensagem('    A T E N Ç Ã O   ','A ordem está sendo usada no momento.'+#13+'Use Ctrl+D para destravar','',1,1,false,'I');
       Exit;
   End
   Else Begin
       {DMServ.TOrd.Edit;
       DMServ.TOrd.FieldByName('EDIT').AsString := '1';
       DMServ.TOrd.Post; }

       DMServ.TAlx1.Close;
       DMServ.TAlx1.SQL.Clear;
       DMServ.TAlx1.SQL.Add('update ORDEM set EDIT = :EDIT');
       DMServ.TAlx1.SQL.Add('where COD_ORDEM = :OLD_COD_ORDEM');
       DMServ.TAlx1.ParamByName('EDIT').AsString := '1';
       DMServ.TAlx1.ParamByName('OLD_COD_ORDEM').AsInteger := XCOD_ORDEM;
       DMServ.TAlx1.ExecSQL;

       DMServ.IBT.CommitRetaining;
   End;

  	If (DMSERV.WOrdem.FieldByName('STATUS').AsString<>'TERMINADA') AND (DMSERV.WOrdem.FieldByName('STATUS').AsString<>'FECHADA')
   Then Begin //se passar pelas restrições de apagamento da ordem
		If Mensagem('CONFIRMAÇÃO DO USUÁRIO', 'Deseja realmente apagar a ordem de serviço '+#13+'Nº '+XView.FieldByName('NUMERO').AsString+'?'  , '', 2, 3, False, 'c')= 2
   	Then Begin

       	//Filtra registros do pedido
       	FiltraSlave;
           //VERIFICA SE EXISTEM ITENS NA ORDEM, ELA SOMENTE PODERÁ SER APAGADA SE ESTIVER SEM ITENS
			If (Not DMESTOQUE.TSlave.IsEmpty) or (Not DMESTOQUE.TDesp.IsEmpty) or (Not DMESTOQUE.TSlaveServ.IsEmpty)
       	Then Begin
				Mensagem('OPÇÃO BLOQUEADA', 'Antes de Apagar esta Ordem é necessário que todos os itens de Produtos, Serviços e Despesas Sejam removidos!', '', 1, 1, False, 'a');
               {DMServ.TOrd.Edit;
               DMServ.TOrd.FieldByName('EDIT').AsString := '0';
               DMServ.TOrd.Post; }
               DMServ.TAlx1.Close;
               DMServ.TAlx1.SQL.Clear;
               DMServ.TAlx1.SQL.Add('update ORDEM set EDIT = :EDIT');
               DMServ.TAlx1.SQL.Add('where COD_ORDEM = :OLD_COD_ORDEM');
               DMServ.TAlx1.ParamByName('EDIT').AsString := '0';
               DMServ.TAlx1.ParamByName('OLD_COD_ORDEM').AsInteger := XCOD_ORDEM;
               DMServ.TAlx1.ExecSQL;
               DMServ.IBT.CommitRetaining;
				Exit;
           End;
			Try
               // SE FOR PARA GUINCHOMAQ AS TABELAS RELACIONADAS TAMBEM DEVEM TER SEUS DADOS APAGADOS ONDE O COD_ORDEM FOR IGUAL AO SELECIONADO
               If DMMACS.TLoja.FieldByName('ORDEMLOCA_GUINDASTE').AsString = '1'
               Then Begin
                   DMPESSOA.TAjudante.Close;
                   DMPESSOA.TAjudante.SQL.Clear;
                   DMPESSOA.TAjudante.SQL.Add('delete from ajudante where ajudante.cod_ordem = :codigo');
                   DMPESSOA.TAjudante.ParamByName('codigo').AsInteger := XView.FieldByName('COD_ORDEM').AsInteger;
                   DMPESSOA.TAjudante.ExecSQL;

                   DMPESSOA.TransacPessoa.CommitRetaining;

                   DMServ.TItensLocacao.Close;
                   DMServ.TItensLocacao.SQL.Clear;
                   DMServ.TItensLocacao.SQL.Add('delete from itens_locacao where itens_locacao.cod_ordem = :codigo');
                   DMServ.TItensLocacao.ParamByName('codigo').AsInteger :=XView.FieldByName('COD_ORDEM').AsInteger;
                   DMServ.TItensLocacao.ExecSQL;
               End;

	       		//Apaga ORDEM
				FiltraTabela(DMServ.TOrd, 'ORDEM', 'COD_ORDEM', XView.FieldByName('COD_ORDEM').AsString, '');
				//DMServ.TOrd.Delete;

               DMServ.TAlx1.Close;
               DMServ.TAlx1.SQL.Clear;
               DMServ.TAlx1.SQL.Add('delete from ordem where ordem.cod_ordem = :CODORDEM');
               DMServ.TAlx1.ParamByName('CODORDEM').AsInteger := XView.FieldByName('COD_ORDEM').AsInteger;
               DMServ.TAlx1.ExecSQL;

          		//Confirma Tranzaçào
          		DMSERV.IBT.CommitRetaining;

          		//atualiza view
          		LiberaDados;

               //Djonathan 14/11/2009: REGISTRA NO BANCO CASO APAGUE A ORDEM
               Registra('ORDEM','APAGAR',DateToStr(DMServ.TOrd.FieldByName('DTABERT').AsDateTime),'Nº: ' + DMServ.WOrdem.FieldByName('NUMERO').AsString + '-' + DMServ.WOrdem.FieldByName('CLIENTE').AsString,'Valor: ' + FloatToStr(DMServ.TOrd.FieldByName('TOTORD').AsFloat));
			Except
          		//caso não conseguiu executar as tranzações acima retorna as informações anteriores
          		DMSERV.IBT.RollbackRetaining
       	End;
   	End
       Else Begin
           {DMServ.TOrd.Edit;
           DMServ.TOrd.FieldByName('EDIT').AsString := '0';
           DMServ.TOrd.Post;}
           DMServ.TAlx1.Close;
           DMServ.TAlx1.SQL.Clear;
           DMServ.TAlx1.SQL.Add('update ORDEM set EDIT = :EDIT');
           DMServ.TAlx1.SQL.Add('where COD_ORDEM = :OLD_COD_ORDEM');
           DMServ.TAlx1.ParamByName('EDIT').AsString := '0';
           DMServ.TAlx1.ParamByName('OLD_COD_ORDEM').AsInteger := XCOD_ORDEM;
           DMServ.TAlx1.ExecSQL;
           DMServ.IBT.CommitRetaining;
       End;
   End;
end;

procedure TFOrdem.FrmContaEDCodigoKeyPress(Sender: TObject; var Key: Char);
Var
	Oper:Char;
begin
  inherited;
	If Key = #13
   Then Begin
      	Oper:='C';
 		If FrmConta.EDCodigo.Text<>''
       Then Begin
			//LIBERA TODAS OS ESTADOS PARA CONSUTA
			If filtraTabela(DMCONTA.TPlnCta, 'PLNCTA', 'COD_FILIAL', '', ' (COD_FILIAL = '+FMenu.LCODEMPRESA.Caption+') AND (NATUREZA = '+#39+Oper+#39+') AND (TIPO='+#39+'N'+#39+') And (CLASSIFICACAO='+#39+FrmConta.EDCodigo.Text+#39+ ')')=True
			Then Begin
		      	XCOD_CONTA:=DMCONTA.TPlnCta.FieldByName('COD_PLNCTA').AsInteger;
		      	FrmConta.EdDescricao.Text:=DMCONTA.TPlnCta.FieldByName('DESCRICAO').AsString;
		      	FrmConta.EDCodigo.text:=DMCONTA.TPlnCta.FieldByName('CLASSIFICACAO').AsString;
	        End
	        Else Begin
		      	XCOD_CONTA:=-1;
		      	FrmConta.EdDescricao.Text:='';
		      	FrmConta.EDCodigo.text:='';
           End;
	    End
       Else Begin
	      	XCOD_CONTA:=-1;
	      	FrmConta.EdDescricao.Text:='';
	      	FrmConta.EDCodigo.text:='';
       End;
   End;
end;

procedure TFOrdem.FrmContaBTNOPENClick(Sender: TObject);
Var
	Oper: Char;
begin
  inherited;
   Oper:='C';

   // armazena o tipo do plano de conta que vai ser filtrado. Se for "C" buscará apenas contas de creditos, e se for "D" irá selecionar apenas contas de despesa. Estando sem valor, o formulario vai trazer todas as contas
   XTIPO_CONTA := 'C';

	//LIBERA TODAS OS ESTADOS PARA CONSUTA
	filtraTabela(DMCONTA.TPlnCta, 'PLNCTA', 'COD_FILIAL', '', ' (COD_FILIAL = '+FMenu.LCODEMPRESA.Caption+') AND (NATUREZA = '+#39+Oper+#39+') AND (TIPO='+#39+'N'+#39+') ORDER BY CLASSIFICACAO');

   If AbrirForm(TFConsPlnCta, FConsPlnCta, 1)='Selected'
   Then Begin
      	XCOD_CONTA:=DMCONTA.TPlnCta.FieldByName('COD_PLNCTA').AsInteger;
      	FrmConta.EdDescricao.Text:=DMCONTA.TPlnCta.FieldByName('DESCRICAO').AsString;
      	FrmConta.EDCodigo.text:=DMCONTA.TPlnCta.FieldByName('CLASSIFICACAO').AsString;
   End;
   FrmConta.Refresh;
end;

procedure TFOrdem.FrmContaBTNMINUSClick(Sender: TObject);
begin
  inherited;
   //Codigo da tabela local =0
   XCOD_CONTA:=-1;
   FrmConta.EDCodigo.Text:='';
   FrmConta.EdDescricao.Text:='';
   FrmConta.Refresh;
end;

procedure TFOrdem.FrmFormPagEDCodigoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
	If Key=VK_RETURN
   Then Begin
       if FrmFormPag.EDCodigo.Text<>''
       Then Begin
       	//seleciona a forma de pagamento
           If FiltraTabela(DMFINANC.TFormPag, 'FORMPAG', 'COD_FORMPAG', FrmFormPag.EDCodigo.Text, '')
           Then Begin
		       XCOD_FORMPAG:=DMFINANC.TFormPag.FieldByName('COD_FORMPAG').AsInteger;
              FrmFormPag.EDCodigo.Text:=DMFINANC.TFormPag.FieldByName('COD_FORMPAG').AsString;
              FrmFormPag.EdDescricao.Text:=DMFINANC.TFormPag.FieldByName('DESCRICAO').AsString;
           End
           Else Begin
		       XCOD_FORMPAG:=-1;
              FrmFormPag.EDCodigo.Text:='';
              FrmFormPag.EdDescricao.Text:='';
           End;
       End;
   End;
end;

procedure TFOrdem.FrmFormPagBTNOPENClick(Sender: TObject);
begin
  inherited;
	If AbrirForm(TFFormPag, FFormPag, 1)='Selected'
   Then Begin
		XCOD_FORMPAG:=DMFinanc.TFormPag.FieldByName('COD_FORMPAG').AsInteger;
       FrmFormPag.EDCodigo.Text:=DMFinanc.TFormPag.FieldByName('COD_FORMPAG').AsString;
       FrmFormPag.EdDescricao.Text:=DMFinanc.TFormPag.FieldByName('DESCRICAO').AsString;
   End;
end;

procedure TFOrdem.FrmFormPagBTNMINUSClick(Sender: TObject);
begin
  inherited;
	XCOD_FORMPAG:=-1;
   FrmFormPag.EDCodigo.Text:='';
   FrmFormPag.EdDescricao.Text:='';
end;

procedure TFOrdem.BtnFechaPedClick(Sender: TObject);
begin
  inherited;
   //EFETUA CONTROLE DE ACESSO
   If ControlAccess('FECHORD', 'M')=False Then
  		Exit;

   // repassando valor do cidgo da ordem para variavel
   XCOD_ORDEM := DMServ.WOrdem.FieldByname('cod_ordem').AsInteger;

   // BUSCANDO DADOS DA ORDEM
   FiltraTabela(DMServ.TOrd,'ORDEM','COD_ORDEM',IntToStr(XCOD_ORDEM),'');

   // caso o campo tiver valendo 1 eh pq a ordem jah esta sendo usada
   If DMServ.TOrd.FieldByName('EDIT').AsString = '1'
   Then Begin
       Mensagem('    A T E N Ç Ã O   ','A ordem está sendo usada no momento.'+#13+'Use Ctrl+D para destravar','',1,1,false,'I');
       Exit;
   End;

   FiltraTabela(DMMACS.TLoja, 'LOJA', 'COD_LOJA', FMenu.LCODLOJA.Caption, '');
   If DMMACS.TLoja.FieldByName('USAMULTCOMIS').AsString='1'
   Then Begin
   	//O sistema efetua controle de comissionados verificar se a tabela de comissionado foi preenchida
		DMFINANC.TComis.Close;
       DMFINANC.TComis.SQL.Clear;
       DMFINANC.TComis.SQL.Add('SELECT * FROM comissao Where (comissao.gerador=' +#39 + 'ORDEM'+#39+') AND (comissao.cod_gerador=:COD_GERADOR)');
       DMFINANC.TComis.ParamByName('COD_GERADOR').AsString:=XView.FieldByName('COD_ORDEM').AsString;
       DMFINANC.TComis.Open;
       If DMFINANC.TComis.IsEmpty
       Then Begin
           DMMACS.TALX.Close;
           DMMACS.TALX.SQL.Clear;
           DMMACS.TALX.SQL.Add(' SELECT * from usuario left join funcionario ON usuario.cod_funcionario = funcionario.cod_func ');
           DMMACS.TALX.SQL.Add(' Left join pessoa on funcionario.cod_pessoa = pessoa.cod_pessoa ');
           DMMACS.TALX.SQL.Add(' where (usuario.codusuario=:COD_USUARIO)  AND (upper(pessoa.nome) like '+#39+'%SANDRO%'+#39+')');
           DMMACS.TALX.ParamByName('COD_USUARIO').AsString:=FMenu.LCODUSUARIO.Caption;
           DMMACS.TALX.Open;
			If DMMACS.TALX.IsEmpty
           Then Begin
				If Mensagem('A T E N Ç Ã O !', 'Não foram lançados comissionado para esta ordem!'+#13+'Deseja continuar e fechar a ordem?', '', 2, 3, False, 'c')=3 Then
           		Exit;
           End
           Else Begin
				If Mensagem('Pô SANDRO!', 'VC Não lançou os comissionado! quer fechar a ordem mesmo assim?', '', 2, 3, False, 'c')=3 Then
           		Exit;
           End;

       End;
	End;
  	If XView.IsEmpty
   Then Begin
		Mensagem('A T E N Ç Ã O', 'Não existe nenhuma ordem a ser fechada!', '', 1, 1, False, 'a');
       Exit;
   End;

   If (XView.FieldByName('TOTAL').AsCurrency=0) and (CBGarantia.Checked=False)
   Then Begin
		Mensagem('OPÇÃO BLOQUEADA', 'Esta ordem não contém produto ou serviços. Por isso não pode ser fechada!', '', 1, 1, False, 'i');
       Exit;
   End;

  	If XView.FieldByName('STATUS').AsString<>'FECHADO'
   Then Begin
		If Mensagem('CONFIRMAÇÃO DO USUÁRIO', 'Deseja Realmente fechar a ordem de serviço '+XView.FieldByName('NUMERO').AsString, '', 2, 3, False, 'C')=2
       Then Begin

           // BUSCANDO DADOS DA ORDEM
           FiltraTabela(DMServ.TOrd,'ORDEM','COD_ORDEM',DMServ.WOrdem.FieldByname('cod_ordem').AsString,'');

           // caso o campo tiver valendo 1 eh pq a ordem jah esta sendo usada
           If DMServ.TOrd.FieldByName('EDIT').AsString = '1'
           Then Begin
               Mensagem('    A T E N Ç Ã O   ','A ordem está sendo usada no momento.'+#13+'Use Ctrl+D para destravar','',1,1,false,'I');
               Exit;
           End
           Else Begin
               //DMServ.TOrd.Edit;
               //DMServ.TOrd.FieldByName('EDIT').AsString := '1';
               //DMServ.TOrd.Post;

               DMServ.TAlx1.Close;
               DMServ.TAlx1.SQL.Clear;
               DMServ.TAlx1.SQL.Add('update ORDEM set EDIT = :EDIT');
               DMServ.TAlx1.SQL.Add('where COD_ORDEM = :OLD_COD_ORDEM');
               DMServ.TAlx1.ParamByName('EDIT').AsString := '1';
               DMServ.TAlx1.ParamByName('OLD_COD_ORDEM').AsInteger := DMServ.TOrd.FieldByName('COD_ORDEM').AsInteger;
               DMServ.TAlx1.ExecSQL;

               DMServ.IBT.CommitRetaining;
           End;

           CBGeraFinanceiro.Checked:=False;
           CBGeraFinanceiro.Visible:=False;

           PFinanceiro.Visible:=True;
           PFinanceiro.BringToFront;
           //LIMPA VALORES ANTIGOS
	   		FiltraTabela(XTabela, 'ORDEM', 'COD_ORDEM', XView.FieldByName('COD_ORDEM').AsString, '');
           If ControlAccess('GERAFINANC', '')=True Then
               CBGeraFinanceiro.Visible:=true;

      		//FORMA DE PAGAMENTO
      		XCOD_FORMPAG:=XTabela.FieldByName('COD_FORMPAG').AsInteger;
 	   		If FiltraTabela(DMFINANC.TFormPag, 'FORMPAG', 'COD_FORMPAG', XTabela.FieldByName('COD_FORMPAG').AsString, '')=True
      		Then Begin
				XCOD_FORMPAG:=DMFINANC.TFormPag.FieldByName('COD_FORMPAG').AsInteger;
  		    	FrmFormPag.EDCodigo.Text:=DMFINANC.TFormPag.FieldByName('COD_FORMPAG').AsString;
       		FrmFormPag.EdDescricao.Text:=DMFINANC.TFormPag.FieldByName('DESCRICAO').AsString;
      		End
      		Else Begin
				XCOD_FORMPAG:=-1;
               FrmFormPag.EDCodigo.Text:='';
       		FrmFormPag.EdDescricao.Text:='';
      		End;
           XCOD_CONTA:=-1;
           FrmConta.EdDescricao.Text:='';
           FrmConta.EDCodigo.Text:='';
           XCOD_CONTASERV:=-1;
           FrmContaServ.EdDescricao.Text:='';
           FrmContaServ.EDCodigo.Text:='';
           DBDATAENTREGA.Clear;
           DBDATAENTREGA.Text:=DateTostr(Date());
           DBHORAENTREGA.Text:=TimeTostr(Time());
           EdDtFech.Text:=DateToStr(Date());
           FrmFormPag.EDCodigo.SetFocus;
       End;
	End;
   FrmFormPag.Refresh;
   FrmMoeda.Refresh;
   FrmConta.EDCodigo.SetFocus;
   FrmContaServ.EDCodigo.SetFocus;
   PFinanceiro.SetFocus;
   FPFinanceiro.Refresh;
end;

procedure TFOrdem.PConsultaExit(Sender: TObject);
begin
	If PFinanceiro.Visible=False Then
  		inherited;

end;

procedure TFOrdem.BtnMoedaCancelarClick(Sender: TObject);
begin
  inherited;
   PFinanceiro.Visible:=False;
   PCadastro.Visible:=False;
   PConsulta.Visible:=true;
   PConsulta.BringToFront;
   EdNome.SetFocus;

   // BUSCANDO DADOS DA ORDEM
   //FiltraTabela(DMServ.TOrd,'ORDEM','COD_ORDEM',DMSERV.TOrd.FIELDBYNAME('COD_ORDEM').AsString,'');

   // EDITANDO ORDEM DE SERVICO PARA LIBERAR SEU USO CASO SEJA NECESSARIO
   {DMServ.TOrd.Edit;
   DMServ.TOrd.FieldByName('EDIT').AsString := '0';                              //
   DMServ.TOrd.Post; }                                                           //    / \
   DMServ.TAlx1.Close;                                                           //     |
   DMServ.TAlx1.SQL.Clear;                  // - 28/04/2009:                 //     |
   DMServ.TAlx1.SQL.Add('update ORDEM set EDIT = :EDIT');                        //     |
   DMServ.TAlx1.SQL.Add('where COD_ORDEM = :OLD_COD_ORDEM');                     //     |
   DMServ.TAlx1.ParamByName('EDIT').AsString := '0';                             //     |
   DMServ.TAlx1.ParamByName('OLD_COD_ORDEM').AsInteger := DMSERV.TOrd.FIELDBYNAME('COD_ORDEM').AsInteger;
   DMServ.TAlx1.ExecSQL;
   DMServ.IBT.CommitRetaining;
end;

procedure TFOrdem.BtnMoedaOKClick(Sender: TObject);
begin
  inherited;
   //valida quanto a forma de pagamento
	If CBPagamento.Text=''
   Then Begin
		Mensagem('OPÇÃO BLOQUEADA', 'Por favor informe se o pagamento será feito em carteira ou cheque!', '', 1, 1, False, 'i');
       CBPagamento.SetFocus;
       Exit;
   End;

   //valida quanto a data de entrega
	If DBDataEntrega.Text='  /  /    '
   Then Begin
		Mensagem('OPÇÃO BLOQUEADA', 'Por favor informe a data de entrega do equipamento/Veículo ao cliente!', '', 1, 1, False, 'i');
       DBDataEntrega.SetFocus;
       Exit;
   End;

   //valida quanto a hora de entrega
	If DBHoraEntrega.Text=''
   Then Begin
		Mensagem('OPÇÃO BLOQUEADA', 'Por favor informe a hora de entrega do equipamento/Veículo ao cliente!', '', 1, 1, False, 'i');
       DBHoraEntrega.SetFocus;
       Exit;
   End;

   //valida quanto a Conta
	If XCOD_CONTA=-1
   Then Begin
		Mensagem('OPÇÃO BLOQUEADA', 'Por favor informe uma conta para lançamento no financeiro!', '', 1, 1, False, 'i');
       FrmConta.EDCodigo.SetFocus;
       Exit;
   End;

   //Valida Quanto a conta
   If Not FiltraTabela(DMCONTA.TPlnCta, 'PLNCTA', '', '', 'Where (COD_FILIAL='+FMenu.LCODEMPRESA.Caption+') And (CLASSIFICACAO='+FrmConta.EDCodigo.Text+')')
   Then Begin
		Mensagem('OPÇÃO BLOQUEADA', 'Por favor informe uma conta válida para lançamento no financeiro!', '', 1, 1, False, 'i');
       FrmConta.EDCodigo.SetFocus;
       Exit;
   End;

   //valida quanto a forma de pagamento
	If XCOD_FORMPAG=-1
   Then Begin
		Mensagem('OPÇÃO BLOQUEADA', 'Por favor informe uma forma de pagamento para lançamento no financeiro!', '', 1, 1, False, 'i');
       FrmFormPag.EDCodigo.SetFocus;
       Exit;
   End;

   FechaOrd(DMSERV.TOrd.FIELDBYNAME('COD_ORDEM').AsString, EdDtFech.Text);

   FiltraTabela(DMCAIXA.TCaixa, 'CAIXA', 'COD_CAIXA', FMenu.LCODCAIXA.Caption, '');
   If DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString='NF'
   Then Begin
        //Imprime Cupom Fiscal
        NF(DMSERV.TOrd.FIELDBYNAME('COD_ORDEM').AsInteger, 'OS', False );
   End;
   PFinanceiro.Visible:=False;
   // BUSCANDO DADOS DA ORDEM
   DMServ.TOrd.Close;
   DMServ.TOrd.Open;
   FiltraTabela(DMServ.TOrd,'ORDEM','COD_ORDEM',DMSERV.TOrd.FIELDBYNAME('COD_ORDEM').AsString,'');

   // EDITANDO ORDEM DE SERVICO PARA LIBERAR SEU USO CASO SEJA NECESSARIO
   {DMServ.TOrd.Edit;
   DMServ.TOrd.FieldByName('EDIT').AsString := '0';
   DMServ.TOrd.Post; }
   DMServ.TAlx1.Close;                                                           //     |
   DMServ.TAlx1.SQL.Clear;                  // - 28/04/2009:                 //     |
   DMServ.TAlx1.SQL.Add('update ORDEM set EDIT = :EDIT');                        //     |
   DMServ.TAlx1.SQL.Add('where COD_ORDEM = :OLD_COD_ORDEM');                     //     |
   DMServ.TAlx1.ParamByName('EDIT').AsString := '0';                             //     |
   DMServ.TAlx1.ParamByName('OLD_COD_ORDEM').AsInteger := DMSERV.TOrd.FIELDBYNAME('COD_ORDEM').AsInteger;
   DMServ.TAlx1.ExecSQL;
   DMServ.IBT.CommitRetaining;

   //Atualiza View da tela de Consulta
   LiberaDados;
   PCadastro.Visible:=False;
   PConsulta.Visible:=true;
   PConsulta.BringToFront;
   EdNome.SetFocus;
end;

procedure TFOrdem.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  	If PFinanceiro.Visible=True Then//se o painel financeiro estiver atrivo as possibilidades abaixo devem ser disconcideradas p/ que não haja erro
	  	Exit;

	inherited;

   // CTRL + D -> eh o comando para desbloquear a ordem de servico caso tenha ocorrido algum problema
   // qdo estava sendo consultada e caiu energia, ou foi pressionado F4 (por exemplo) e nao passou pelo
   // botão GRAVAR ou CANCELAR que liberar a ordem
   If (shift=[ssCtrl]) and (key = 68)
   Then Begin
       // faz o filtro na tabela para verificar se ela esta realmente bloqueada
       FiltraTabela(DMServ.TOrd,'ORDEM','COD_ORDEM',DMServ.WOrdem.FieldByname('cod_ordem').AsString,'');

       // se ela nao estiver bloqueada eh exibida a msg e finalizada a operação
       If DMServ.TOrd.FieldByName('EDIT').AsString = '1'
       Then Begin
           If Mensagem('   A T E N Ç Ã O   ','Deseja desbloquear a ordem nº ' + DMServ.WOrdem.FieldByName('numero').AsString + ' ?','',2,3,false,'A')=2
           Then Begin

               // abre formulario de senha
               AbrirForm(TFSenha,FSenha,0);

               // caso tenha informado os dados do administrador correto, a OS eh liberada
               If XAlxResult = true
               Then Begin
                   // liberando a ordem para consulta
                   DMServ.TAlx1.Close;
                   DMServ.TAlx1.SQL.Clear;
                   DMServ.TAlx1.SQL.Add('update ordem set ordem.edit = ' + #39 + '0' + #39 + ' where ordem.cod_ordem = :CODORDEM');
                   DMServ.TAlx1.ParamByName('CODORDEM').AsInteger := DMServ.WOrdem.FieldByName('COD_ORDEM').AsInteger;
                   DMServ.TAlx1.ExecSQL;
                   //DMServ.TOrd.Edit;
                   //DMServ.TOrd.FieldByName('EDIT').AsString := '0';
                   //DMServ.TOrd.Post;
                   DMServ.IBT.CommitRetaining;
               End;
           End;
       End;
   End;

    //CONTROLE PARA PAINEL DE PRECOS
   //pressionando F1 busca os valores de venda do produto que está selecionado
   If Key=Vk_F1
   Then Begin
       PPrecos.Visible:=True;
       PPrecos.BringToFront;
       EdVlrVarejoVista.SetFocus;
   End;
   //pressionando esc, fecha o painel de consulta de preços do produto
   If Key=Vk_Escape
   Then Begin
   	If PPrecos.Visible=True
       Then Begin
	       PPrecos.Visible:=False;
       End;
   End;

   if (Key = VK_F9) AND (PConsulta.Visible) then
       BtnSelecionaOrdem.Click;
       
   // Se painel de cadastro estiver aberto junto com o painel de produtos e servicos, e for pressionado CTRL + P, a aba de Produtos Torna-se visivel
   If (PCadastro.Visible = true) and (PProdServ.Visible = true) and ((shift=[ssCtrl]) and (key = 80))
   Then Begin
       PCProdServ.ActivePageIndex := 0;
   End;
   // Se painel de cadastro estiver aberto junto com o painel de produtos e servicos, e for pressionado CTRL + S, a aba de Servicos Torna-se visivel
   If (PCadastro.Visible = true) and (PProdServ.Visible = true) and ((shift=[ssCtrl]) and (key = 83))
   Then Begin
       PCProdServ.ActivePageIndex := 1;
   End;


   If PCadastro.Visible=True
   Then Begin //controle de pressionamento de teclas na area de cadastro
   	If TCCadastro.ActiveTab=1
       Then Begin
       	If PCProdServ.ActivePage=TabSheet1
           Then Begin //Manipula comands para produtos
   			If Key=VK_Down Then
           		DMESTOQUE.TSlave.Next;
   			If Key=VK_Up Then
           		DMESTOQUE.TSlave.Prior;

       		If key=VK_Insert Then//Insere produto a lista
           		BtnInsertProd.Click;
       		If key=VK_ESCAPE Then//Retira produto da lista
       		Begin
       			If PProdServ.tag=1 Then//se o focu estiver sobre o painel de lista de inserção
	         			BtnDeleteProd.Click;
       		End;
           End
           Else Begin//manipula comandos para serviços
   			If Key=VK_Down Then
           		DMESTOQUE.TSlaveServ.Next;
   			If Key=VK_Up Then
           		DMESTOQUE.TSlaveServ.Prior;

       		If key=VK_Insert Then//Insere serviço a lista
           		BtnInsertServ.Click;
       		If key=VK_ESCAPE Then//Retira serviço da lista
       		Begin
       			If PProdServ.tag=1 Then//se o focu estiver sobre o painel de lista de inserção
	         			BtnDeleteServ.Click;
       		End;
           End;
   	End;
   End;


end;

procedure TFOrdem.PProdServEnter(Sender: TObject);
begin
  inherited;
   PProdServ.Tag:=1;
end;

procedure TFOrdem.PProdServExit(Sender: TObject);
begin
  inherited;
   PProdServ.Tag:=0;
end;

procedure TFOrdem.BtnRelatorioClick(Sender: TObject);
begin
  inherited;
	PmRelatorio.Popup(Left+PConsulta.left+Painel.left+ BtnRelatorio.Left, top+PConsulta.Top+Painel.top+BtnRelatorio.Top+BtnRelatorio.Height);
end;

procedure TFOrdem.CompdeAbertura1Click(Sender: TObject);
begin
  inherited;
   //EFETUA CONTROLE DE ACESSO
   If ControlAccess('RELABERTORD', 'M')=False Then
  		Exit;

   //FILTRA EMPRESA PARA IMPRIMIR CABEÇALHO
   If FiltraTabela(DMMACS.TEmpresa, 'EMPRESA', 'COD_EMPRESA', FMenu.LCODEMPRESA.Caption, '')=False Then
   	Exit;

   //FILTRA CLIENTE PARA ENCONTRAR PESSOA
   If FiltraTabela(DMPESSOA.TCliente, 'CLIENTE', 'COD_CLIENTE', DMSERV.WOrdem.FieldByNAme('COD_CLIENTE').AsString, '')=False Then
		Exit;

   //FILTRA PESSOA PARA IMPRESSÃO DE CLIENTE
   If FiltraTabela(DMPESSOA.TPessoa, 'PESSOA', 'COD_PESSOA', DMPESSOA.TCliente.FieldByNAme('COD_PESSOA').AsString, '')=False Then
   	Exit;

   //FILTRA CIDADE DO CLIENTE
   FiltraTabela(DMGEOGRAFIA.TCidade, 'CIDADE', 'COD_CIDADE', DMPESSOA.TPessoa.FieldByNAme('COD_CIDADE').AsString, '');

   //FILTRA ESTADO DO CLIENTE
   FiltraTabela(DMGEOGRAFIA.TEstado, 'ESTADO', 'COD_ESTADO', DMGEOGRAFIA.TCidade.FieldByName('COD_ESTADO').AsString, '');

   //FILTRA TELEFONE PARA IMPRESSÃO DE CLIENTE
   FiltraTabela(DMPESSOA.TALX, 'TELEFONE', 'COD_PESSOA', DMPESSOA.TPessoa.FieldByNAme('COD_PESSOA').AsString, '');

   //FILTRA EQUIPAMENTO PARA IMPRESSÃO
   If FiltraTabela(DMPESSOA.TEquip, 'EQUIPAMENTO', 'COD_EQUIPAMENTO', DMSERV.WOrdem.FieldByNAme('COD_EQUIPAMENTO').AsString, '')=False
   Then Begin
   	MessageDlg('POR FAVOR, SELECIONE UM EQUIPAMENTO PARA O CLIENTE', mtWarning, [mbOK], 0);
		Exit;
   End;

   //FILTRA ORDEM PARA IMPRESSÃO
   If FiltraTabela(DMSERV.TOrd, 'ORDEM', 'COD_ORDEM', DMSERV.WOrdem.FieldByNAme('COD_ORDEM').AsString, '')=False Then
   	Exit;

   //FILTRA FORMA DE PAGAMENTO
   FiltraTabela(DMFINANC.TFormPag , 'FORMPAG', 'COD_FORMPAG', DMSERV.TOrd.FieldByNAme('COD_FORMPAG').AsString, '');

   //FILTRA FUNCIONARIO RESPONSAVEL
   FiltraTabela(DMPESSOA.VWFuncionario, 'VWFUNCIONARIO', 'COD_FUNC', IntToStr(DMSERV.WOrdem.FieldByNAme('COD_FUNCIONARIO').AsInteger) , '');

   XCOD_ORDEM:=DMSERV.WOrdem.fieldbyname('COD_ORDEM').AsInteger;

   //FILTRA PRODUTOS, SERVIÇOS E DESPESAS
	FiltraSlave;

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
       If DMMACS.TLoja.FieldByName('MODELOORDEM').AsString='9' Then
			FSRel.LoadFromFile('C:\MZR\MACS\Rel\FrfAbertOrdem9.frf');
   	If DMMACS.TLoja.FieldByName('MODELOORDEM').AsString='7'
       Then Begin
           XCont := 1;

           // o VWFuncionario estah selecionando o responsavel, por isso essa sql abaixo seleciona o vendedor
           DMPESSOA.TALX.Close;
           DMPESSOA.TALX.SQL.Clear;
           DMPESSOA.TALX.SQL.Add('select * from ordem');
           DMPESSOA.TALX.SQL.Add('left join funcionario on ordem.cod_vendedor = funcionario.cod_func');
           DMPESSOA.TALX.SQL.Add('left join pessoa on funcionario.cod_pessoa = pessoa.cod_pessoa');
           DMPESSOA.TALX.SQL.Add('where ordem.cod_ordem = :codigo');
           DMPESSOA.TALX.ParamByName('codigo').AsInteger := DMServ.WOrdem.FieldByname('cod_ordem').AsInteger;
           DMPESSOA.TALX.Open;

           // cidade do cliente
           FiltraTabela(DMGEOGRAFIA.TCidade,'CIDADE','COD_CIDADE',DMPESSOA.TPessoa.FieldByname('cod_cidade').AsString,'');

           // como nao vai ser possivel o usuario vizualizar o documento, vai ser exibido a seguinte mensagem para o usuario
           If Mensagem('   A T E N Ç Ã O   ','Vão ser impressas 3 vias da ordem nº' + DMSERV.WOrdem.fieldbyname('NUMERO').AsString + '. Deseja continuar ?','',2,3,false,'I') = 2
           Then Begin
               // esse eh um laço para incrementar a variavel XCont e ser o numero de cada via, solicitado pela Studio 17
               While XCont <= 3 do
               begin

                   // o campo TMP vai ser o numero das vias que no total são 3
                   DMMACS.TLoja.Edit;
                   DMMACS.TLoja.FieldByName('TMP1').AsString := IntToStr(XCont);
                   DMMACS.TLoja.Post;
                   DMMACS.Transaction.CommitRetaining;

                   FSRel.LoadFromFile('C:\MZR\MACS\Rel\FrfAbertOrdem7.frf');

                   // comando para enviar documento direto para impressao e sem visualização
                   FSRel.PrepareReport;
                   FSRel.PrintPreparedReport('1', 1, True, frAll) ;

               XCont := XCont + 1;
               End;

           End
           Else Begin
               // o campo TMP vai ser o numero da via
               DMMACS.TLoja.Edit;
               DMMACS.TLoja.FieldByName('TMP1').AsString := '1';
               DMMACS.TLoja.Post;
               DMMACS.Transaction.CommitRetaining;

               // se ele clicar em "NAO", vai apenas visualizar o documento
               FSRel.LoadFromFile('C:\MZR\MACS\Rel\FrfAbertOrdem7.frf');
               FSRel.ShowReport;
           End;
           Exit;
       End;

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
       ImpOrdCanvas('ABERTURA');
   End;
   FSRel.ShowReport;
end;

// Busca todos os dados pra relatorio da guinchomaq
Procedure TFOrdem.Rel_Quilomatragem;
begin

   // seleciona os dados dos equipamentos
   DMServ.Alx.Close;
   DMServ.Alx.SQL.Clear;
   DMServ.Alx.SQL.Add('select equipamento.cod_equipamento, equipamento.descricao, ');
   DMServ.Alx.SQL.Add('itens_locacao.cod_ordem, itens_locacao.cod_equipamento, itens_locacao.dia_semana, itens_locacao.data,');
   DMServ.Alx.SQL.Add('itens_locacao.hmat_ini, itens_locacao.hmat_fim, itens_locacao.hvesp_ini, itens_locacao.hvesp_fim, itens_locacao.hrs_normais, itens_locacao.hrs_extras,');
   DMServ.Alx.SQL.Add('itens_locacao.total_horas, itens_locacao.vlr_normal, itens_locacao.vlr_extra, itens_locacao.vlrserv_cobrado');
   DMServ.Alx.SQL.Add('from itens_locacao');
   DMServ.Alx.SQL.Add('left join equipamento on itens_locacao.cod_equipamento = equipamento.cod_equipamento');
   DMServ.Alx.SQL.Add('where itens_locacao.cod_ordem = :codigo');
   DMServ.Alx.ParamByName('codigo').AsInteger := XCOD_ORDEM;
   DMServ.Alx.Open;

   // FILTRAEQUIPAMENTO, ITENS_LOCACAO E MOTORISTA PARA A BANDA DE QUILOMETRAGEM
   DMServ.TAlx1.Close;
   DMServ.TAlx1.SQL.Clear;
   DMServ.TAlx1.SQL.Add('select equipamento.cod_equipamento, equipamento.descricao, equipamento.placa, equipamento.modelo_guincho,');
   DMServ.TAlx1.SQL.Add('itens_locacao.cod_ordem, itens_locacao.cod_equipamento, itens_locacao.cod_motorista, itens_locacao.data,');
   DMServ.TAlx1.SQL.Add('itens_locacao.km_final, itens_locacao.km_ini, itens_locacao.km_total, itens_locacao.valortotkm, itens_locacao.vlrkm_cobrado,');
   DMServ.TAlx1.SQL.Add('vwfuncionario.cod_func, vwfuncionario.nome');
   DMServ.TAlx1.SQL.Add('from itens_locacao');
   DMServ.TAlx1.SQL.Add('left join equipamento on itens_locacao.cod_equipamento = equipamento.cod_equipamento');
   DMServ.TAlx1.SQL.Add('left join vwfuncionario on itens_locacao.cod_motorista = vwfuncionario.cod_func');
   DMServ.TAlx1.SQL.Add('where itens_locacao.cod_ordem = :codigo');
   DMServ.TAlx1.ParamByName('codigo').AsInteger := XCOD_ORDEM;
   DMServ.TAlx1.Open;

   // SOMA TOTAL(R$) DE HORAS E KM DA ORDEM ATUAL
   DMServ.TAlx2.Close;
   DMServ.TAlx2.SQL.Clear;
   DMServ.TAlx2.SQL.Add('select sum(itens_locacao.valortotkm) as TOTAL_KM, sum(itens_locacao.valortothrs) as TOTAL_HRS');
   DMServ.TAlx2.SQL.Add('FROM itens_locacao where itens_locacao.cod_ordem = :codigo');
   DMServ.TAlx2.ParamByName('codigo').AsInteger := XCOD_ORDEM;
   DMServ.TAlx2.Open;

   // SOMA TOTAL(R$) DOS AJUDANTES
   DMServ.TAlx3.Close;
   DMServ.TAlx3.SQL.Clear;
   DMServ.TAlx3.SQL.Add('select sum(ajudante.valortothrs) as TOTAL_AJUDANTE FROM AJUDANTE where ajudante.cod_ordem = :codigo');
   DMServ.TAlx3.ParamByName('codigo').AsInteger := XCOD_ORDEM;
   DMServ.TAlx3.Open;

   // todos os dados de ajudante
   DMPESSOA.TALX.Close;
   DMPESSOA.TALX.SQL.Clear;
   DMPESSOA.TALX.SQL.Add('select * from ajudante');
   DMPESSOA.TALX.SQL.Add('left join vwfuncionario on ajudante.cod_func = vwfuncionario.cod_func');
   DMPESSOA.TALX.SQL.Add('where ajudante.cod_ordem = :codigo');
   DMPESSOA.TALX.ParamByName('codigo').AsInteger := XCOD_ORDEM;
   DMPESSOA.TALX.Open;
end;

procedure TFOrdem.CompdeFechamento1Click(Sender: TObject);
begin
  inherited;
   //EFETUA CONTROLE DE ACESSO
   If ControlAccess('RELFECHORD', 'M')=False Then
  		Exit;

   //FILTRA EMPRESA PARA IMPRIMIR CABEÇALHO
   If FiltraTabela(DMMACS.TEmpresa, 'EMPRESA', 'COD_EMPRESA', FMenu.LCODEMPRESA.Caption, '')=False Then
   	Exit;

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

   // se nao for para guinchomaq
   If (DMMACS.TLoja.FieldByName('ORDEMLOCA_GUINDASTE').AsString = '0') or (DMMACS.TLoja.FieldByName('ORDEMLOCA_GUINDASTE').AsString = '')
   Then Begin
       //FILTRA EQUIPAMENTO PARA IMPRESSÃO
       If FiltraTabela(DMPESSOA.TEquip, 'EQUIPAMENTO', 'COD_EQUIPAMENTO', DMSERV.WOrdem.FieldByNAme('COD_EQUIPAMENTO').AsString, '')=False Then
           Exit;
   End;

   //FILTRA ORDEM PARA IMPRESSÃO
   If FiltraTabela(DMSERV.TOrd, 'ORDEM', 'COD_ORDEM', DMSERV.WOrdem.FieldByNAme('COD_ORDEM').AsString, '')=False Then
   	Exit;

   // TABELA DE PREÇO PARA GUINCHOMAQ
   If DMSERV.TOrd.FieldByNAme('COD_TABELAPRECO').AsString <> '' Then
       FiltraTabela(DMServ.TTabPreco,'TABELA_PRECO','COD_TABELAPRECO',DMSERV.TOrd.FieldByNAme('COD_TABELAPRECO').AsString,'');

   //FILTRA FUNCIONARIO RESPONSAVEL
   FiltraTabela(DMPESSOA.VWFuncionario, 'VWFUNCIONARIO', 'COD_FUNC', IntToStr(DMSERV.WOrdem.FieldByNAme('COD_FUNCIONARIO').AsInteger) , '');

   XCOD_ORDEM:=DMSERV.WOrdem.fieldbyname('COD_ORDEM').AsInteger;

   //FILTRA PRODUTOS E SERVIÇOS
	FiltraSlave;

   // se for para guinchomaq
   If DMMACS.TLoja.FieldByName('ORDEMLOCA_GUINDASTE').AsString = '1'
   Then Begin
       // busca todos os dados pra relatorio da guinchomaq
       Rel_Quilomatragem;

       // DEFININDO OS DATASET's
       FSDSDesp.DataSet := DMServ.Alx;
       FSDSRel.DataSet := DMServ.TAlx1;
       FSDSServ.DataSet := DMPESSOA.TALX;
   End;

   If DMMacs.TLoja.FieldByName('IMPMATRICIAL').AsString<>'1'
   Then Begin
   	If DMMACS.TLoja.FieldByName('MODELOORDEMFECH').AsString='1' Then
			FSRel.LoadFromFile('C:\MZR\MACS\Rel\FrfFechOrdem.frf');
   	If DMMACS.TLoja.FieldByName('MODELOORDEMFECH').AsString='2' Then
			FSRel.LoadFromFile('C:\MZR\MACS\Rel\FrfFechOrdem.frf');
   	If DMMACS.TLoja.FieldByName('MODELOORDEMFECH').AsString='3' Then
			FSRel.LoadFromFile('C:\MZR\MACS\Rel\FrfFechOrdem3.frf');
   	If DMMACS.TLoja.FieldByName('MODELOORDEMFECH').AsString='4' Then
			FSRel.LoadFromFile('C:\MZR\MACS\Rel\FrfAbertOrdem4.frf');
       If DMMACS.TLoja.FieldByName('MODELOORDEMFECH').AsString='5' Then
           FSRel.LoadFromFile('C:\MZR\MACS\Rel\FrfFechOrdem5.frf');
       //Paulo 27/01/2011: Para ordem fechamento para tecnotel
       If DMMACS.TLoja.FieldByName('MODELOORDEMFECH').AsString='9' Then
           FSRel.LoadFromFile('C:\MZR\MACS\Rel\FrfFechaOrdem9.frf');

   End
   Else Begin
       ImpOrdCanvas('FECHAMENTO');
   End;

	FSRel.ShowReport;
end;

procedure TFOrdem.FrmContaServBTNMINUSClick(Sender: TObject);
begin
  inherited;
   //Codigo da tabela local =0
   XCOD_CONTASERV:=-1;
   FrmContaServ.EDCodigo.Text:='';
   FrmContaServ.EdDescricao.Text:='';
   FrmConta.Refresh;
end;

procedure TFOrdem.FrmContaServBTNOPENClick(Sender: TObject);
Var
	Oper: Char;
begin
  inherited;
   Oper:='C';
   // armazena o tipo do plano de conta que vai ser filtrado. Se for "C" buscará apenas contas de creditos, e se for "D" irá selecionar apenas contas de despesa. Estando sem valor, o formulario vai trazer todas as contas
   XTIPO_CONTA := 'C';

	//LIBERA TODAS OS ESTADOS PARA CONSUTA
	filtraTabela(DMCONTA.TPlnCta, 'PLNCTA', 'COD_FILIAL', '', ' (COD_FILIAL = '+FMenu.LCODEMPRESA.Caption+') AND (NATUREZA = '+#39+Oper+#39+') AND (TIPO='+#39+'N'+#39+') ORDER BY CLASSIFICACAO');

   If AbrirForm(TFConsPlnCta, FConsPlnCta, 1)='Selected'
   Then Begin
      	XCOD_CONTASERV:=DMCONTA.TPlnCta.FieldByName('COD_PLNCTA').AsInteger;
      	FrmContaServ.EdDescricao.Text:=DMCONTA.TPlnCta.FieldByName('DESCRICAO').AsString;
      	FrmContaServ.EDCodigo.text:=DMCONTA.TPlnCta.FieldByName('CLASSIFICACAO').AsString;
   End;
   FrmConta.Repaint;
   FrmConta.Refresh;
end;

procedure TFOrdem.FrmContaServEDCodigoKeyPress(Sender: TObject;
  var Key: Char);
Var
	Oper:Char;
begin
  inherited;
	If Key = #13
   Then Begin
      	Oper:='C';
 		If FrmContaServ.EDCodigo.Text<>''
       Then Begin
			//LIBERA TODAS OS ESTADOS PARA CONSUTA
			If filtraTabela(DMCONTA.TPlnCta, 'PLNCTA', 'COD_FILIAL', '', ' (COD_FILIAL = '+FMenu.LCODEMPRESA.Caption+') AND (NATUREZA = '+#39+Oper+#39+') AND (TIPO='+#39+'N'+#39+') And (CLASSIFICACAO='+#39+FrmContaServ.EDCodigo.Text+#39+ ')')=True
			Then Begin
		      	XCOD_CONTASERV:=DMCONTA.TPlnCta.FieldByName('COD_PLNCTA').AsInteger;
		      	FrmContaServ.EdDescricao.Text:=DMCONTA.TPlnCta.FieldByName('DESCRICAO').AsString;
		      	FrmContaServ.EDCodigo.text:=DMCONTA.TPlnCta.FieldByName('CLASSIFICACAO').AsString;
	        End
	        Else Begin
		      	XCOD_CONTASERV:=-1;
		      	FrmContaServ.EdDescricao.Text:='';
		      	FrmContaServ.EDCodigo.text:='';
           End;
	    End
       Else Begin
	      	XCOD_CONTASERV:=-1;
	      	FrmContaServ.EdDescricao.Text:='';
	      	FrmContaServ.EDCodigo.text:='';
       End;
   End;
end;
procedure TFOrdem.FrmFormPagExit(Sender: TObject);
begin
  inherited;
	//BUSCA CONTAS PADRÕES
	If FrmFormPag.EdDescricao.Text='À VISTA'
	Then Begin//Busca contas para À VISTA
   	//PRODUTO
		If DMMACS.TLoja.FieldByName('PLNCTA_VENDVISTA').AsString<>''
       Then Begin//se existir uma conta padrao configurada
			XCOD_CONTA:=DMMACS.TLoja.FieldByName('PLNCTA_VENDVISTA').AsInteger;
           FiltraTabela(DMCONTA.TPlnCta, 'PLNCTA', 'COD_PLNCTA', IntToStr(XCOD_CONTA), '');
           FrmConta.EDCodigo.Text:=DMCONTA.TPlnCta.FieldByName('CLASSIFICACAO').AsString;
           FrmConta.EdDescricao.Text:=DMCONTA.TPlnCta.FieldByName('DESCRICAO').AsString;
       End
       Else Begin
           XCOD_CONTA:=-1;
       	FrmConta.EDCodigo.Text:='';
           FrmConta.EdDescricao.Text:='';
       End;
       //SERVIÇO
		If DMMACS.TLoja.FieldByName('PLNCTASERV').AsString<>''
       Then Begin//se existir uma conta padrao configurada
			XCOD_CONTASERV:=DMMACS.TLoja.FieldByName('PLNCTASERV').AsInteger;
           FiltraTabela(DMCONTA.TPlnCta, 'PLNCTA', 'COD_PLNCTA', IntToStr(XCOD_CONTASERV), '');
           FrmContaServ.EDCodigo.Text:=DMCONTA.TPlnCta.FieldByName('CLASSIFICACAO').AsString;
           FrmContaServ.EdDescricao.Text:=DMCONTA.TPlnCta.FieldByName('DESCRICAO').AsString;
       End
       Else Begin
           XCOD_CONTASERV:=-1;
       	FrmContaServ.EDCodigo.Text:='';
           FrmContaServ.EdDescricao.Text:='';
       End;
   End
   Else Begin//Busca conta para À Prazo
   	//PRODUTO
		If DMMACS.TLoja.FieldByName('PLNCTA_VENDPRAZO').AsString<>''
       Then Begin//se existir uma conta padrao configurada
			XCOD_CONTA:=DMMACS.TLoja.FieldByName('PLNCTA_VENDPRAZO').AsInteger;
           FiltraTabela(DMCONTA.TPlnCta, 'PLNCTA', 'COD_PLNCTA', IntToStr(XCod_Conta), '');
           FrmConta.EDCodigo.Text:=DMCONTA.TPlnCta.FieldByName('CLASSIFICACAO').AsString;
           FrmConta.EdDescricao.Text:=DMCONTA.TPlnCta.FieldByName('DESCRICAO').AsString;
       End
       Else Begin
           XCOD_CONTA:=-1;
       	FrmConta.EDCodigo.Text:='';
           FrmConta.EdDescricao.Text:='';
       End;
       //SERVIÇO
		If DMMACS.TLoja.FieldByName('PLNCTASERVPRAZO').AsString<>''
       Then Begin//se existir uma conta padrao configurada
			XCOD_CONTASERV:=DMMACS.TLoja.FieldByName('PLNCTASERVPRAZO').AsInteger;
           FiltraTabela(DMCONTA.TPlnCta, 'PLNCTA', 'COD_PLNCTA', IntToStr(XCOD_CONTASERV), '');
           FrmContaServ.EDCodigo.Text:=DMCONTA.TPlnCta.FieldByName('CLASSIFICACAO').AsString;
           FrmContaServ.EdDescricao.Text:=DMCONTA.TPlnCta.FieldByName('DESCRICAO').AsString;
       End
       Else Begin
           XCOD_CONTASERV:=-1;
       	FrmContaServ.EDCodigo.Text:='';
           FrmContaServ.EdDescricao.Text:='';
       End;
   End;
end;

procedure TFOrdem.BtnCancelDevolClick(Sender: TObject);
begin
  inherited;
   BtnInsertProd.SetFocus;
end;

procedure TFOrdem.CBPagamentoKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
	If Key<>#13 Then
   	Key:=#0;
end;

procedure TFOrdem.DBLOCALATKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
	key:=#0
end;

procedure TFOrdem.DBGridCadastroPadraoDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  inherited;
	if (XView.FieldByName('STATUS').AsString='ABERTO') then
   begin
   	if XView.FieldByName('GARANT').AsString='1'
   	then begin
           DBGridCadastroPadrao.Canvas.Font.Color := clBlue;
           DBGridCadastroPadrao.DefaultDrawColumnCell(Rect, DataCol, Column, State);
   	End
       Else Begin
  			DBGridCadastroPadrao.Canvas.Font.Color := clRed;
			DBGridCadastroPadrao.DefaultDrawColumnCell(Rect, DataCol, Column, State);
       End;
   end;
   if XView.FieldByName('STATUS').AsString='AGENDADO'
   Then Begin
  			DBGridCadastroPadrao.Canvas.Font.Color := clRed;
			DBGridCadastroPadrao.DefaultDrawColumnCell(Rect, DataCol, Column, State);
   End;

   // - 14/04/2009: GRID ZEBRADA
   If  FMenu.XGRIDZEBRADA
   Then Begin
     if State = [] then
     begin
      if XView.Recno mod 2 = 1 then
        DBGridCadastroPadrao.Canvas.Brush.Color := $00EEEEEE
     else
        DBGridCadastroPadrao.Canvas.Brush.Color := clWhite;
     end;
     DBGridCadastroPadrao.DefaultDrawColumnCell(Rect, DataCol, Column, State);
   End;

end;

procedure TFOrdem.BtnComissClick(Sender: TObject);
begin
  inherited;
	 //EFETUA CONTROLE DE ACESSO
    If ControlAccess('TELACOMIS', 'M')=False Then
  		Exit;

    FMENU.TIPOAUX:='ORDEM';
    FMenu.XBCPROD:=EdtotalProd.ValueNumeric;
    FMenu.XBCSERV:=EdTotalserv.ValueNumeric;
    FMenu.XCOUNRECORD:=DMSERV.TOrd.FieldByName('COD_ORDEM').AsInteger;
    AbrirForm(TFComissao, FComissao, 0);
    FiltraSlave;
end;

procedure TFOrdem.BitBtn3Click(Sender: TObject);
var
   xcod_despesa :Integer;
begin
  inherited;
   If EdDescD.Text=''
   Then Begin
		Mensagem('OPÇÃO BLOQUEADA', 'Por favor, descreva a despesa.', '', 1, 1, False, 'i');
       EdDescD.SetFocus;
       exit;
   End;

   If Edqtdd.ValueNumeric<=0
   Then Begin
		Mensagem('OPÇÃO BLOQUEADA', 'Por favor, informe uma quantidade maior que 0 (zero).', '', 1, 1, False, 'i');
       Edqtdd.SetFocus;
       exit;
   End;

   If EdVlrCustoD.ValueNumeric<=0
   Then Begin
		Mensagem('OPÇÃO BLOQUEADA', 'Por favor, informe um Valor de Custo maior que 0 (zero).', '', 1, 1, False, 'i');
       EdVlrCustoD.SetFocus;
       exit;
   End;

   If EdVlrCobradoD.ValueNumeric<=0
   Then Begin
		Mensagem('OPÇÃO BLOQUEADA', 'Por favor, informe um Valor Cobrado maior que 0 (zero).', '', 1, 1, False, 'i');
       EdVlrCustoD.SetFocus;
       exit;
   End;

   If EdVlrTotD.ValueNumeric<=0
   Then Begin
		Mensagem('OPÇÃO BLOQUEADA', 'Por favor, informe um Valor Total que 0 (zero).', '', 1, 1, False, 'i');
       EdVlrCustoD.SetFocus;
       exit;
   End;


// - 19/03/2009: alterado!!

 Try
       DMESTOQUE.TDesp.Insert;
       xcod_despesa:=DMESTOQUE.TDesp.fieldByName('COD_DESPADIC').AsInteger;
       DMESTOQUE.TDesp.Post;
       DMESTOQUE.TDesp.ApplyUpdates;
       DMESTOQUE.TransacEstoque.CommitRetaining;


       DMESTOQUE.TDesp.Close;
       DMESTOQUE.TDesp.SQL.Clear;
       DMESTOQUE.TDesp.SQL.Add('update DESPADIC set');
       DMESTOQUE.TDesp.SQL.Add('COD_GERADOR=:COD_GERADOR, GERADOR=:GERADOR, DESPESA=:DESPESA, QTD=:QTD, VLRREAL=:VLRREAL, VLRFINAL=:VLRFINAL,');
       DMESTOQUE.TDesp.SQL.Add('LUCMOE=:LUCMOE, LUCPER=:LUCPER, VLRTOTFIN=:VLRTOTFIN, DESCONTO=:DESCONTO, MARCA=:MARCA, UNIDADE=:UNIDADE, COD_EQUIPE=:COD_EQUIPE, COD_FUNCIONARIO=:COD_FUNCIONARIO');
       DMESTOQUE.TDesp.SQL.Add('where despadic.COD_DESPADIC = :DESP');
       DMESTOQUE.TDesp.ParamByName('DESP').AsInteger := xcod_despesa;
       {DMESTOQUE.TDesp.SQL.Add('values');
       DMESTOQUE.TDesp.SQL.Add('(:COD_GERADOR, :GERADOR, :DESPESA, :QTD, :VLRREAL, :VLRFINAL,');
       DMESTOQUE.TDesp.SQL.Add(':LUCMOE, :LUCPER, :VLRTOTFIN, :DESCONTO, :MARCA, :UNIDADE, :COD_EQUIPE,');
       DMESTOQUE.TDesp.SQL.Add(':COD_FUNCIONARIO)');  }

       DMESTOQUE.TDesp.ParamByName('COD_GERADOR').AsInteger := XCOD_ORDEM;
       DMESTOQUE.TDesp.ParamByName('GERADOR').AsString := 'ORDEM';
       DMESTOQUE.TDesp.ParamByName('DESPESA').AsString := EdDescD.Text;
       DMESTOQUE.TDesp.ParamByName('QTD').AsCurrency := EDQTDD.ValueNumeric;
       DMESTOQUE.TDesp.ParamByName('VLRREAL').AsCurrency := EdVlrCustoD.ValueNumeric;
       DMESTOQUE.TDesp.ParamByName('VLRFINAL').AsCurrency := EdVlrCobradoD.ValueNumeric;
       DMESTOQUE.TDesp.ParamByName('LUCMOE').AsCurrency := EdVlrTotD.ValueNumeric-(EdVlrCustoD.ValueNumeric*EDQtdD.ValueNumeric);
       DMESTOQUE.TDesp.ParamByName('LUCPER').AsCurrency := (((EdVlrTotD.ValueNumeric-(EdVlrCustoD.ValueNumeric*EDQtdD.ValueNumeric))*100)/(EdVlrCustoD.ValueNumeric*EDQtdD.ValueNumeric));
       DMESTOQUE.TDesp.ParamByName('VLRTOTFIN').AsCurrency := EdVlrTotD.ValueNumeric;
       DMESTOQUE.TDesp.ParamByName('DESCONTO').AsCurrency := EdDesconto.ValueNumeric;
       DMESTOQUE.TDesp.ParamByName('MARCA').AsString := EDMarca.Text;
       DMESTOQUE.TDesp.ParamByName('UNIDADE').AsString := EdUnidade.Text;
       //DMESTOQUE.TDesp.ParamByName('COD_EQUIPE').AsString := ;
       //DMESTOQUE.TDesp.ParamByName('COD_FUNCIONARIO').AsInteger := ;

       DMESTOQUE.TDesp.ExecSQL;
       DMESTOQUE.TransacEstoque.CommitRetaining;

   Except
       DMESTOQUE.TransacEstoque.RollbackRetaining;
       MessageDlg('O ITEM NÃO PODE SER INSERIDO. VERIFIQUE!', mtWarning, [mbOK], 0);
       FiltraSlave;
       Exit;
   End;
   {
	XCOD_ITDESP:=InserReg(DMESTOQUE.TDesp, 'DESPADIC', 'COD_DESPADIC');
   DMESTOQUE.TDesp.FieldByName('COD_DESPADIC').AsInteger:=XCOD_ITDESP;
   DMESTOQUE.TDesp.FieldByName('COD_GERADOR').AsInteger:=XCOD_ORDEM;
   DMESTOQUE.TDesp.FieldByName('GERADOR').AsString:='ORDEM';
   DMESTOQUE.TDesp.FieldByName('DESPESA').AsString:=EdDescD.Text;
   DMESTOQUE.TDesp.FieldByName('MARCA').AsString:=EDMarca.Text;
   DMESTOQUE.TDesp.FieldByName('DESCONTO').AsString:=EdDesconto.Text;
   DMESTOQUE.TDesp.FieldByName('UNIDADE').AsString:=EdUnidade.Text;
   DMESTOQUE.TDesp.FieldByName('QTD').AsCurrency:=EDQTDD.ValueNumeric;
   DMESTOQUE.TDesp.FieldByName('VLRREAL').AsCurrency:=EdVlrCustoD.ValueNumeric;
   DMESTOQUE.TDesp.FieldByName('VLRFINAL').AsCurrency:=EdVlrCobradoD.ValueNumeric;
   DMESTOQUE.TDesp.FieldByName('VLRTOTFIN').AsCurrency:=EdVlrTotD.ValueNumeric;
   DMESTOQUE.TDesp.FieldByName('LUCMOE').AsCurrency:=EdVlrTotD.ValueNumeric-(EdVlrCustoD.ValueNumeric*EDQtdD.ValueNumeric);
   DMESTOQUE.TDesp.FieldByName('LUCPER').AsCurrency:=((DMESTOQUE.TDesp.FieldByName('LUCMOE').AsCurrency*100)/(EdVlrCustoD.ValueNumeric*EDQtdD.ValueNumeric));
   DMESTOQUE.TDesp.Post;
   DMESTOQUE.TransacEstoque.CommitRetaining; }

   LimpaLabelsDESP;
   FiltraSlave;
   EdDescD.SetFocus;
end;

procedure TFOrdem.EdQtdDExit(Sender: TObject);
begin
  inherited;
	CalcPercent(EdDesconto.ValueNumeric, 0, (EdQtdD.ValueNumeric*EdVlrCobradoD.ValueNumeric), 'D');
   EdVlrTotD.ValueNumeric:=AlxCalculo;
end;

procedure TFOrdem.EdVlrTotDExit(Sender: TObject);
begin
  inherited;
  	CalcPercent(0, (EdQtdD.ValueNumeric*EdVlrCobradoD.ValueNumeric)- EdVlrTotD.ValueNumeric, (EdQtdD.ValueNumeric*EdVlrCobradoD.ValueNumeric), 'D');
  	EdDesconto.ValueNumeric:=AlxPercento;
end;

procedure TFOrdem.BitBtn4Click(Sender: TObject);
begin
  inherited;
   If Not DMESTOQUE.TDesp.IsEmpty
   Then Begin

   // - 28/04/2009:
      Try
         DMServ.TAlx1.Close;
         DMServ.TAlx1.SQL.Clear;
         DMServ.TAlx1.SQL.Add('delete from despadic where despadic.cod_despadic = :CODIGO');
         DMServ.TAlx1.ParamByName('CODIGO').AsInteger := DMESTOQUE.TDesp.FieldByName('cod_despadic').AsInteger;
         DMServ.TAlx1.ExecSQL;

         DMServ.IBT.CommitRetaining;
       Except
           Mensagem('   A T E N Ç Ã O   ','Falha na transação. Reinicie o sistema se o problema persistir.','',1,1,false,'I');
           DMServ.IBT.RollbackRetaining;
       End;

   	//DMESTOQUE.TDesp.Delete;
   	//DMESTOQUE.TransacEstoque.CommitRetaining;

   	FiltraSlave;
   End;
end;

procedure TFOrdem.EdValorOrdExit(Sender: TObject);
begin
  inherited;
   If XVLRTOTAL<>EdValorOrd.ValueNumeric
   Then Begin
		CalcPercent(0, XVLRTOTAL-EdValorOrd.ValueNumeric, XVLRTOTAL , 'D');
       XTabela.edit;
       XTabela.FieldByName('DESCONTO').AsCurrency:=AlxPercento;
		EdDescTOrdem.ValueNumeric:=AlxPercento;
   End
   Else Begin
       FiltraSlave;
       XTabela.edit;
       XTabela.FieldByName('DESCONTO').AsCurrency:=0;
       EdValorOrd.ValueNumeric:=XVLRTOTAL;
		EdDescTOrdem.ValueNumeric:=0;
   End;
	CalcComisTotVend;
end;

procedure TFOrdem.EdEquipamentoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
	Try
		If Key=VK_RETURN
   	Then Begin//pressionado enter, consultar
  			If XTab=True Then
  				FiltraTabela(XTabela, XSQLTABELA, 'EQUIPAMENTO', '', '(upper(EQUIPAMENTO) like upper('+#39+EdEquipamento.Text+'%'+#39+')) ORDER BY EQUIPAMENTO')
    		Else
 				FiltraTabela(XView, XSQLVIEW, 'EQUIPAMENTO', '',   '(upper(EQUIPAMENTO) like upper('+#39+EdEquipamento.Text+'%'+#39+')) ORDER BY EQUIPAMENTO');
       End;

       If Key=VK_ESCAPE
       Then Begin //pressionado esc, liberar
           LiberaDados;
       End;
   Except
   End;
end;

procedure TFOrdem.EdClienteKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
	Try
		If Key=VK_RETURN
   	Then Begin//pressionado enter, consultar
  			If XTab=True Then
  				FiltraTabela(XTabela, XSQLTABELA, 'CLIENTE', '', '(upper(CLIENTE) like upper('+#39+EdCliente.Text+'%'+#39+')) ORDER BY CLIENTE')
    		Else
 				FiltraTabela(XView, XSQLVIEW, 'CLIENTE', '',   '(upper(CLIENTE) like upper('+#39+EdCliente.Text+'%'+#39+')) ORDER BY CLIENTE');
       End;

       If Key=VK_ESCAPE
       Then Begin //pressionado esc, liberar
           LiberaDados;
       End;
   Except
   End;

end;

procedure TFOrdem.FrmFormPag1BTNMINUSClick(Sender: TObject);
begin
  inherited;
	XCOD_FORMPAG:=-1;
   FrmFormPag1.EDCodigo.Text:='';
   FrmFormPag1.EdDescricao.Text:='';
   FrmFormPag.Repaint;
end;

procedure TFOrdem.FrmFormPag1BTNOPENClick(Sender: TObject);
begin
  inherited;

  FMenu.XPreSel := True;
  FMenu.XFieldPesqPreSel := 'COD_INTERNO';
  FMenu.XCodPesqPresSel := FrmFormPag1.EDCodigo.Text;
	If AbrirForm(TFFormPag, FFormPag, 1)='Selected'
   Then Begin
		XCOD_FORMPAG:=DMFinanc.TFormPag.FieldByName('COD_FORMPAG').AsInteger;

       // se for para ordem de serviço da GUINCHOMAQ, entra na proxima condição
       If (DMMACS.TLoja.FieldByName('ORDEMLOCA_GUINDASTE').AsString = '0') or (DMMACS.TLoja.FieldByName('ORDEMLOCA_GUINDASTE').AsString = '')
       Then Begin
           FrmFormPag1.EDCodigo.Text:=DMFinanc.TFormPag.FieldByName('COD_INTERNO').AsString;
           FrmFormPag1.EdDescricao.Text:=DMFinanc.TFormPag.FieldByName('DESCRICAO').AsString;
       End
       Else Begin
           EDCodPag.Text := DMFinanc.TFormPag.FieldByName('COD_INTERNO').AsString;
           EDDescPag.Text := DMFinanc.TFormPag.FieldByName('DESCRICAO').AsString;
       End;
   	FrmFormPag.Repaint;
   End;
   FrmCliente.Repaint;
   FrmConta.Repaint;
   FrmContaServ.Repaint;
   FrmFormPag.Repaint;
   FrmMoeda.Repaint;
   FrmResponsavel.Repaint;
   FrmVendedor.Repaint;

end;

procedure TFOrdem.FrmFormPag1EDCodigoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
	If Key=VK_RETURN
   Then Begin
       If (DMMACS.TLoja.FieldByName('ORDEMLOCA_GUINDASTE').AsString = '0') or (DMMACS.TLoja.FieldByName('ORDEMLOCA_GUINDASTE').AsString = '')
       Then Begin
           if FrmFormPag1.EDCodigo.Text<>''
           Then Begin
               //seleciona a forma de pagamento
               If FiltraTabela(DMFINANC.TFormPag, 'FORMPAG', 'COD_INTERNO', Trim(FrmFormPag1.EDCodigo.Text), '')=true
               Then Begin
                  XCOD_FORMPAG:=DMFINANC.TFormPag.FieldByName('COD_FORMPAG').AsInteger;
                  FrmFormPag1.EDCodigo.Text:=DMFINANC.TFormPag.FieldByName('COD_INTERNO').AsString;
                  FrmFormPag1.EdDescricao.Text:=DMFINANC.TFormPag.FieldByName('DESCRICAO').AsString;
               End
               Else Begin
                  XCOD_FORMPAG:=-1;
                  FrmFormPag1.EDCodigo.Text:='';
                  FrmFormPag1.EdDescricao.Text:='';
               End;
           End;
       End
       Else Begin
           //seleciona a forma de pagamento
           If FiltraTabela(DMFINANC.TFormPag, 'FORMPAG', 'COD_INTERNO', Trim(EDCodPag.Text), '')=true
           Then Begin
               XCOD_FORMPAG:=DMFINANC.TFormPag.FieldByName('COD_FORMPAG').AsInteger;
               EDDescPag.Text := DMFINANC.TFormPag.FieldByname('descricao').AsString;
               EdPlaca.SetFocus;
           End
           Else Begin
               XCOD_FORMPAG:=-1;
               EDDescPag.Text := '';
           End;
       End;
   End;
   FrmFormPag.Repaint;
end;

procedure TFOrdem.EdtotalProdExit(Sender: TObject);
begin
  inherited;
   If XVLRTPROD<>EdtotalProd.ValueNumeric
   Then Begin
		CalcPercent(0, XVLRTPROD-EdtotalProd.ValueNumeric, XVLRTPROD , 'D');
       XTabela.edit;
       XTabela.FieldByName('DESCPROD').AsCurrency:=AlxPercento;
		EdDescTProd.ValueNumeric:=AlxPercento;
   End
   Else Begin
       FiltraSlave;
       XTabela.edit;
       XTabela.FieldByName('DESCPROD').AsCurrency:=0;
       EdtotalProd.ValueNumeric:=XVLRTPROD;
		EdDescTProd.ValueNumeric:=0;
   End;
   //ATRIBUI VALOR TOTAL DA ORDEM E DESCONTO
   EdValorOrd.ValueNumeric:=EdTotalserv.ValueNumeric+EdtotalProd.ValueNumeric+EdTotDesp.ValueNumeric;
   EdTotalOrd.ValueNumeric:=EdValorOrd.ValueNumeric;
	CalcPercent(0, (XVLRTPROD+XVLRTSERV+EdTotDesp.ValueNumeric) - (EdtotalProd.ValueNumeric+EdTotalserv.ValueNumeric+EdTotDesp.ValueNumeric), (XVLRTPROD+XVLRTSERV+EdTotDesp.ValueNumeric) , 'D');
   EdDescTOrdem.ValueNumeric:=AlxPercento;
   CalcComisTotVend;
end;

// CALCULA VALOR DA COMISSAO APOS EFETUAR DESCONTO NOS SERVICOS DA ORDEM DE SERVICO
Procedure TFOrdem.CalculaComissaoServ;
begin
   // filtra servicos da ordem de servico
   DMServ.Alx.Close;
   DMServ.Alx.SQL.Clear;
   DMServ.Alx.SQL.Add('select sum(itservord.comissao) as TOTAL_SERV from itservord');
   DMServ.Alx.SQL.Add('where itservord.cod_ordem = :codigo');
   DMServ.Alx.ParamByName('codigo').AsInteger := XCOD_ORDEM;
   DMServ.Alx.Open;

   XVLRCOMIS := XVLRCOMIS - ((DMServ.Alx.FieldByname('TOTAL_SERV').AsCurrency * StrToFloat(EdDescTServ.Text))/100);

   LVlrComissao.Caption:='Vlr. Comissão..: '+FormatFloat('###,##0.00', XVLRCOMIS);
end;

// CALCULA VALOR DA COMISSAO APOS EFETUAR DESCONTO NOS PRODUTOS DA ORDEM DE SERVICÇO
Procedure TFOrdem.CalculaComissaoProd;
begin
   // FILTRA OS PRODUTOS DA ORDEM DE SERVIÇO
   DMServ.TAlx1.Close;
   DMServ.TAlx1.SQL.Clear;
   DMServ.TAlx1.SQL.Add('select sum(itprodord.comissao) as TOTAL_COMIS from itprodord');
   DMServ.TAlx1.SQL.Add('where itprodord.cod_ordem = :codigo');
   DMServ.TAlx1.ParamByName('codigo').AsInteger := XCOD_ORDEM;
   DMServ.TAlx1.Open;

   XVLRCOMIS := XVLRCOMIS - (DMServ.TAlx1.FieldByName('TOTAL_COMIS').AsCurrency * StrToFloat(EdDescTProd.Text)/100);

	LVlrComissao.Caption:='Vlr. Comissão..: '+FormatFloat('###,##0.00', XVLRCOMIS);
end;

// Quando eh informado o valor de desconto do total dos produtos em "%" eh efetuado calculo para cada produto da ordem
Procedure TFOrdem.CalcPercentProd;
begin
   // soh efetua calculo se tiver vendedor relacionado á ordem
   If XCOD_VENDEDOR > 0
   Then Begin
       // busca todos os produtos relacionados á ordem
       FiltraTabela(DMServ.TPOrd,'ITPRODORD','COD_ORDEM',IntToStr(XCOD_ORDEM),'');

       If Not DMServ.TPOrd.IsEmpty
       Then Begin
           DMServ.TPOrd.First;
           XVLRCOMIS := 0;

           While Not DMServ.TPOrd.Eof do
           Begin
               DMServ.TPOrd.Edit;
               DMSERV.TPOrd.FieldByName('COMISSAO').AsCurrency := (DMSERV.TPOrd.FieldByName('COMISSAO').AsCurrency - (DMSERV.TPOrd.FieldByName('COMISSAO').AsCurrency * (StrToFloat(EdDescTProd.Text)/100)));
               DMSERV.TPOrd.FieldByName('TOTAL').AsCurrency := (DMSERV.TPOrd.FieldByName('TOTAL').AsCurrency - (DMSERV.TPOrd.FieldByName('TOTAL').AsCurrency * (StrToFloat(EdDescTProd.Text)/100)));
               DMServ.TPOrd.Post;

               //FORMA DE PAGAMENTO À PRAZO É CALCULA COMISSÃO REFERENTE A VISTA
               XVLRCOMIS := XVLRCOMIS + DMSERV.TPOrd.FieldByName('COMISSAO').AsCurrency;

           // proximo produto
           DMServ.TPOrd.Next;
           End;
       End;

   // filtra servicos da ordem de servico
   DMServ.Alx.Close;
   DMServ.Alx.SQL.Clear;
   DMServ.Alx.SQL.Add('select sum(itservord.comissao) as TOTAL_SERV from itservord');
   DMServ.Alx.SQL.Add('where itservord.cod_ordem = :codigo');
   DMServ.Alx.ParamByName('codigo').AsInteger := XCOD_ORDEM;
   DMServ.Alx.Open;

   XVLRCOMIS := XVLRCOMIS + DMServ.Alx.FieldByName('TOTAL_SERV').AsCurrency;

   LVlrComissao.Caption:='Vlr. Comissão..: '+FormatFloat('###,##0.00', XVLRCOMIS);
   End;

end;

procedure TFOrdem.EdDescTProdExit(Sender: TObject);
begin
  inherited;
//   FiltraSlave;
   // CALCULA VALOR DA COMISSAO APOS EFETUAR DESCONTO NOS PRODUTOS DA ORDEM DE SERVICÇO
   CalculaComissaoProd;
   If (EdDescTServ.Text <> '0,00') and (EdDescTServ.Text <> '')
   Then Begin
       CalculaComissaoServ;
   End;
   // Quando eh informado o valor de desconto do total dos produtos em "%" eh efetuado calculo para cada produto da ordem
   CalcPercentProd;
   FiltraSlave;
end;

procedure TFOrdem.EdDescTServExit(Sender: TObject);
begin
  inherited;
   FiltraSlave;
end;

procedure TFOrdem.EdTotalservExit(Sender: TObject);
begin
  inherited;
   If XVLRTSERV<>EdTotalserv.ValueNumeric
   Then Begin
		CalcPercent(0, XVLRTSERV-EdtotalServ.ValueNumeric, XVLRTSERV , 'D');
       XTabela.edit;
       XTabela.FieldByName('DESCSERV').AsCurrency:=AlxPercento;
		EdDescTServ.ValueNumeric:=AlxPercento;
   End
   Else Begin
       FiltraSlave;
       XTabela.edit;
       XTabela.FieldByName('DESCSERV').AsCurrency:=0;
       EdtotalServ.ValueNumeric:=XVLRTSERV;
		EdDescTServ.ValueNumeric:=0;
   End;
   //ATRIBUI VALOR TOTAL DA ORDEM E DESCONTO
   EdValorOrd.ValueNumeric:=EdTotalserv.ValueNumeric+EdtotalProd.ValueNumeric+EdTotDesp.ValueNumeric;
   EdTotalOrd.ValueNumeric:=EdValorOrd.ValueNumeric;
	CalcPercent(0, (XVLRTPROD+XVLRTSERV+EdTotDesp.ValueNumeric) - (EdtotalProd.ValueNumeric+EdTotalserv.ValueNumeric+EdTotDesp.ValueNumeric), (XVLRTPROD+XVLRTSERV+EdTotDesp.ValueNumeric) , 'D');
   EdDescTOrdem.ValueNumeric:=AlxPercento;
	CalcComisTotVend;
end;
procedure TFOrdem.BitBtn8Click(Sender: TObject);
VAR
	XSUCCESS: Boolean;
   XDESCERRO: String;
	XCODNEWORDEM: Integer;
begin
  inherited;
   If AbrirForm(TFOrcamento, FOrcamento, 1)='Selected'
   Then Begin
		If Mensagem('CONFIRMAÇÃO DO USUÁRIO', 'Deseja realmente importar o orçamento'+#13+'Nº '+DMSAIDA.WOrc.FieldByName('NUMORC').AsString+'?'  , '', 2, 3, False, 'c')= 2
   	Then Begin
			//Filtra Orçamento referente
           If FiltraTabela(DMSAIDA.TOrc, 'ORCAMENTO', 'COD_ORCAMENTO', DMSAIDA.WOrc.FieldByNAme('COD_ORCAMENTO').AsString, '')=True
           Then Begin
           	//FILTRA FORMA DE PAGAMENTO DE ACORDO COM ORÇAMENTO
           	FiltraTabela(DMFINANC.TFormPag, 'FORMPAG', 'COD_FORMPAG', DMSAIDA.WOrc.FieldByNAme('COD_FORMPAG').AsString, '');

           	//FILTRA LOJA
               FiltraTabela(DMMACS.TLoja, 'LOJA', 'COD_LOJA', FMenu.LCODLOJA.Caption, '');
               //AUTODETERMINA IMPORTAÇÃO COMO SUCESSO
               XSUCCESS:=True;
				XDESCERRO:='';
               TRY
					//INSERE NOVO PEDIDO
					BtnNovo.Click;

                   DMServ.TOrd.Edit;
                   DMServ.TOrd.FieldByName('EDIT').AsString := '0';

               	//ATRIBUI VALOR DA PK PARA VARIAVEL PARA QUE DEPOIS OS DADOS POSSAM SER REENCONTRADOS
					XCODNEWORDEM:=DMServ.TOrd.FieldByName('COD_ORDEM').AsInteger;
               	//IMPORTA INFORMAÇÕES DE CABEÇALHO DO ORÇAMENTO
                   DMServ.TOrd.FieldByName('COD_CLIENTE').AsString:=DMSAIDA.TOrc.FieldByName('COD_CLIENTE').AsString;
               	DMServ.TOrd.FieldByName('COD_USUARIO').AsString:=DMSAIDA.TOrc.FieldByName('COD_USUARIO').AsString;
               	DMServ.TOrd.FieldByName('NUMORC').AsString:=DMSAIDA.TOrc.FieldByName('NUMORC').AsString;
               	DMServ.TOrd.FieldByName('COD_VENDEDOR').AsString:=DMSAIDA.TOrc.FieldByName('COD_VENDEDOR').AsString;
                   XCOD_VENDEDOR := DMServ.TOrd.FieldByName('COD_VENDEDOR').AsInteger;
               	DMServ.TOrd.FieldByName('COD_FORMPAG').AsString:=DMSAIDA.TOrc.FieldByName('COD_FORMPAG').AsString;
               	DMServ.TOrd.FieldByName('COD_EQUIPAMENTO').AsInteger:=-1;
               	DMServ.TOrd.FieldByName('OBSERVACAO').AsString:=DMSAIDA.TOrc.FieldByName('OBS').AsString;
               	DMServ.TOrd.FieldByName('TOTORD').AsCurrency:=DMSAIDA.TOrc.FieldByName('VLRTOTAL').AsCurrency;
               	DMServ.TOrd.FieldByName('TOTPROD').AsCurrency:=DMSAIDA.TOrc.FieldByName('VLRPROD').AsCurrency;
               	DMServ.TOrd.FieldByName('TOTSERV').AsCurrency:=DMSAIDA.TOrc.FieldByName('VLRSERV').AsCurrency;
               	DMServ.TOrd.FieldByName('TOTDESP').AsCurrency:=DMSAIDA.TOrc.FieldByName('VLRDESP').AsCurrency;
               	DMServ.TOrd.FieldByName('DESCPROD').AsCurrency:=DMSAIDA.TOrc.FieldByName('DESCPROD').AsCurrency;
               	DMServ.TOrd.FieldByName('DESCSERV').AsCurrency:=DMSAIDA.TOrc.FieldByName('DESCSERV').AsCurrency;
                   DMServ.TOrd.Post;

               Except
                   XSUCCESS:=False;
                   XDESCERRO:=' Cabeçalho de orçamento;';
               End;

               ////////////////////////////////////////////////////
           	//FILTRA DESPESAS DE ORÇAMENTO PARA SEREM IMPORTADOS
               ////////////////////////////////////////////////////
               TRY
   				DMESTOQUE.Alx.Close;
   				DMESTOQUE.ALX.SQL.Clear;
   				DMESTOQUE.ALX.SQL.Add('select * From despadic Where (despadic.gerador='+#39+'ORCAMENTO'+#39+') AND (despadic.cod_gerador=:COD_GERADOR)');
					DMESTOQUE.ALX.ParamByName('COD_GERADOR').AsString:=DMSAIDA.WOrc.FieldByNAme('COD_ORCAMENTO').AsString;
					DMESTOQUE.ALX.Open;

               	//Percorre os itens de Despesas do orçamento importando para ordem
               	DMESTOQUE.ALX.First;
               	While not DMESTOQUE.ALX.Eof do
               	Begin
   					//Inserir serviço a lista de serviços
						XCOD_ITDESP:=InserReg(DMESTOQUE.TDesp, 'DESPADIC', 'COD_DESPADIC');
   					DMESTOQUE.TDesp.FieldByName('COD_DESPADIC').AsInteger:=XCOD_ITDESP;
   					DMESTOQUE.TDesp.FieldByName('COD_GERADOR').AsInteger:=XTabela.FieldByName('COD_ORDEM').AsInteger;
   					DMESTOQUE.TDesp.FieldByName('GERADOR').AsString:='ORDEM';
   					DMESTOQUE.TDesp.FieldByName('DESPESA').AsString:=DMESTOQUE.ALX.FieldByName('DESPESA').AsString;
   					DMESTOQUE.TDesp.FieldByName('QTD').AsCurrency:=DMESTOQUE.ALX.FieldByName('QTD').AsCurrency;
   					DMESTOQUE.TDesp.FieldByName('VLRREAL').AsCurrency:=DMESTOQUE.ALX.FieldByName('VLRREAL').AsCurrency;
   					DMESTOQUE.TDesp.FieldByName('VLRFINAL').AsCurrency:=DMESTOQUE.ALX.FieldByName('VLRFINAL').AsCurrency;
   					DMESTOQUE.TDesp.FieldByName('VLRTOTFIN').AsCurrency:=DMESTOQUE.ALX.FieldByName('VLRTOTFIN').AsCurrency;
                       DMESTOQUE.TDesp.FieldByName('LUCMOE').AsCurrency:=DMESTOQUE.ALX.FieldByName('VLRTOTFIN').AsCurrency-(DMESTOQUE.ALX.FieldByName('VLRFINAL').AsCurrency*DMESTOQUE.ALX.FieldByName('QTD').AsCurrency);
                       DMESTOQUE.TDesp.FieldByName('LUCPER').AsCurrency:=((DMESTOQUE.TDesp.FieldByName('LUCMOE').AsCurrency*100)/(DMESTOQUE.ALX.FieldByName('VLRFINAL').AsCurrency*DMESTOQUE.ALX.FieldByName('QTD').AsCurrency));
						DMESTOQUE.TDesp.Post;
                   	DMESTOQUE.ALX.Next;
               	End;
               Except
                   XSUCCESS:=False;
                   XDESCERRO:=XDESCERRO+' em importar despesas;';
               End;

               // apenas repassa a forma de pagamento para os campos que logo mais serão usados para conferir valores
               If FiltraTabela(DMFINANC.TFormPag,'FORMPAG','COD_FORMPAG',DMSAIDA.TOrc.FieldByName('COD_FORMPAG').AsString,'') = true
               Then Begin
                   FrmFormPag1.EDCodigo.Text := DMFINANC.TFormPag.FieldByName('cod_formpag').AsString;
                   FrmFormPag1.EdDescricao.Text := DMFINANC.TFormPag.FieldByName('descricao').AsString;
               End;

               ////////////////////////////////////////////////////
           	//FILTRA SERVIÇOS DE ORÇAMENTO PARA SEREM IMPORTADOS
               ////////////////////////////////////////////////////
               TRY
					DMESTOQUE.TSlaveServ.Close;
					DMESTOQUE.TSlaveServ.SQL.Clear;
					DMESTOQUE.TSlaveServ.SQL.Add('select itservorc.cod_itservorc, itservorc.cod_orcamento, itservorc.cod_servico, ');
					DMESTOQUE.TSlaveServ.SQL.Add('itservorc.desconto, itservorc.qtd, itservorc.vlrtotal AS TOTAL, itservorc.vlrunit,  subservico.vlrunit AS VLRUNITCUSTO, ');
					DMESTOQUE.TSlaveServ.SQL.Add('subservico.descricao ');
					DMESTOQUE.TSlaveServ.SQL.Add('from itservorc left join subservico ON itservorc.cod_servico = subservico.cod_subservico ');
					DMESTOQUE.TSlaveServ.SQL.Add('Where itservorc.cod_orcamento = :CODORDEM ');
					DMESTOQUE.TSlaveServ.ParamByName('CODORDEM').AsString:=DMSAIDA.WOrc.FieldByNAme('COD_ORCAMENTO').AsString;
                   DMESTOQUE.TSlaveServ.SQL.Text;
					DMESTOQUE.TSlaveServ.Open;

               	//Percorre os itens de serviço do orçamento importando para ordem
               	DMESTOQUE.TSlaveServ.First;
               	While not DMESTOQUE.TSlaveServ.Eof do
               	Begin
   					//Inserir serviço a lista de serviços
   					XCOD_ITSERV:=InserReg(DMSERV.TSOrd, 'ITSERVORD', 'COD_ITSERVORD');
   					DMSERV.TSOrd.FieldByName('COD_ITSERVORD').AsInteger:=XCOD_ITSERV;
   					DMSERV.TSOrd.FieldByName('COD_ORDEM').AsInteger:=XTabela.FieldByName('COD_ORDEM').AsInteger;
   					DMSERV.TSOrd.FieldByName('COD_SERVICO').AsInteger:=DMESTOQUE.TSlaveServ.FieldByName('COD_SERVICO').AsInteger;
   					DMSERV.TSOrd.FieldByName('QTD').AsCurrency:=DMESTOQUE.TSlaveServ.FieldByName('QTD').AsCurrency;
   					DMSERV.TSOrd.FieldByName('DESCONTO').AsCurrency:=DMESTOQUE.TSlaveServ.FieldByName('DESCONTO').AsCurrency;
   					DMSERV.TSOrd.FieldByName('VLRUNIT').AsCurrency:=DMESTOQUE.TSlaveServ.FieldByName('VLRUNIT').AsCurrency;
   					DMSERV.TSOrd.FieldByName('VLRUNITCUSTO').AsCurrency:=DMESTOQUE.TSlaveServ.FieldByName('VLRUNITCUSTO').AsCurrency;
   					DMSERV.TSOrd.FieldByName('TOTAL').AsCurrency:=DMESTOQUE.TSlaveServ.FieldByName('TOTAL').AsCurrency;
   					DMSERV.TSOrd.FieldByName('COD_FUNCIONARIO').AsInteger:=DMSAIDA.TOrc.FieldByName('COD_VENDEDOR').AsInteger;
   					DMSERV.TSOrd.FieldByName('DATA').AsDateTime:=Date();
   					DMSERV.TSOrd.FieldByName('PIS').AsCurrency:=(DMESTOQUE.TSlaveServ.FieldByName('TOTAL').AsCurrency*DMMACS.TLoja.FieldByName('PIS').AsCurrency)/100;
   					DMSERV.TSOrd.FieldByName('CONTSOC').AsCurrency:=(DMESTOQUE.TSlaveServ.FieldByName('TOTAL').AsCurrency*DMMACS.TLoja.FieldByName('CONTSOC').AsCurrency)/100;
   					DMSERV.TSOrd.FieldByName('IR').AsCurrency:=(DMESTOQUE.TSlaveServ.FieldByName('TOTAL').AsCurrency*DMMACS.TLoja.FieldByName('IMPREND').AsCurrency)/100;
   					DMSERV.TSOrd.FieldByName('COFINS').AsCurrency:=(DMESTOQUE.TSlaveServ.FieldByName('TOTAL').AsCurrency*DMMACS.TLoja.FieldByName('COFINS').AsCurrency)/100;
   					DMSERV.TSOrd.FieldByName('INSS').AsCurrency:=(DMESTOQUE.TSlaveServ.FieldByName('TOTAL').AsCurrency*DMMACS.TLoja.FieldByName('INSS').AsCurrency)/100;
   					DMSERV.TSOrd.FieldByName('ISSQN').AsCurrency:=(DMESTOQUE.TSlaveServ.FieldByName('TOTAL').AsCurrency*DMMACS.TLoja.FieldByName('ISSQN').AsCurrency)/100;
   					DMSERV.TSOrd.FieldByName('OUTROS').AsCurrency:=(DMESTOQUE.TSlaveServ.FieldByName('TOTAL').AsCurrency*DMMACS.TLoja.FieldByName('OUTROIMPSERV').AsCurrency)/100;

                       // ou seja, se existe vendedor no orcamento passa por esse codigo abaixo
                       If XCOD_VENDEDOR > 0
                       Then Begin
                           FiltraTabela(DMPESSOA.TFunCargo,'FUNCARGO','COD_FUNCIONARIO',DMSAIDA.TOrc.FieldByName('COD_VENDEDOR').AsString,'');

                           If FrmFormPag1.EdDescricao.Text = 'À VISTA'
                           Then Begin
                               DMSERV.TSOrd.FieldByName('COMISSAO').AsCurrency:= (DMESTOQUE.TSlaveServ.FieldByName('TOTAL').AsCurrency * DMPESSOA.TFunCargo.FieldByName('COMISSAO_VVSER').AsCurrency)/100;
                           End
                           Else Begin
                               DMSERV.TSOrd.FieldByName('COMISSAO').AsCurrency:= (DMESTOQUE.TSlaveServ.FieldByName('TOTAL').AsCurrency * DMPESSOA.TFunCargo.FieldByName('COMISSAO_VPSER').AsCurrency)/100;
                           End;
                       End
                       Else Begin
                           DMSERV.TSOrd.FieldByName('COMISSAO').AsCurrency:=0;
                       End;

   					DMSERV.TSOrd.FieldByName('TOTENCARGO').AsCurrency:=DMSERV.TSOrd.FieldByName('PIS').AsCurrency+DMSERV.TSOrd.FieldByName('CONTSOC').AsCurrency+DMSERV.TSOrd.FieldByName('IR').AsCurrency+DMSERV.TSOrd.FieldByName('COFINS').AsCurrency+DMSERV.TSOrd.FieldByName('INSS').AsCurrency+DMSERV.TSOrd.FieldByName('ISSQN').AsCurrency+DMSERV.TSOrd.FieldByName('OUTROS').AsCurrency;
						DMSERV.TSOrd.FieldByName('LUCMOE').AsCurrency:=DMESTOQUE.TSlaveServ.FieldByName('TOTAL').AsCurrency-DMSERV.TSOrd.FieldByName('TOTENCARGO').AsCurrency-DMSERV.TSOrd.FieldByName('COMISSAO').AsCurrency;
						DMSERV.TSOrd.FieldByName('LUCPER').AsCurrency:=(DMSERV.TSOrd.FieldByName('LUCMOE').AsCurrency*100)/DMESTOQUE.TSlaveServ.FieldByName('TOTAL').AsCurrency;
						DMServ.TSOrd.Post;
                   	DMESTOQUE.TSlaveServ.Next;
               	End;
               Except
                   XSUCCESS:=False;
                   XDESCERRO:=XDESCERRO+' em importar serviços;';
               End;

               /////////////////////////////////////////////////////
           	//FILTRA PRODUTOS DE ORÇAMENTO PARA SEREM IMPORTADOS
               /////////////////////////////////////////////////////
               TRY
					DMESTOQUE.TSlave.Close;
					DMESTOQUE.TSlave.SQL.Clear;
					DMESTOQUE.TSlave.SQL.Add('Select itprodorC.cod_itprodorC, itprodorC.cod_orcamento, itprodorc.cod_estoque,  itprodorc.qtd, itprodorc.vlrtotal AS TOTAL, ');
					DMESTOQUE.TSlave.SQL.Add('itprodorc.desconto, itprodorc.vlrunit, subproduto.descricao, subproduto.marca, SubProduto.CODPRODFABR, ');
		   			DMESTOQUE.TSlave.sql.Add(' subproduto.'+DMMACS.TLoja.FieldByName('CODPRODREL1').AsString+' AS PRIMCOD, subproduto.'+DMMACS.TLoja.FieldByName('CODPRODREL2').AsString+' AS SEGCOD ');
					DMESTOQUE.TSlave.SQL.Add('From itprodorc left Join estoque on itprodorc.cod_estoque = estoque.cod_estoque ');
					DMESTOQUE.TSlave.SQL.Add('Left Join subproduto on subproduto.cod_subproduto = estoque.cod_subprod ');
					DMESTOQUE.TSlave.SQL.Add('Where itprodorc.cod_orcamento = :CODORDEM ');
					DMESTOQUE.TSlave.ParamByName('CODORDEM').AsString:=DMSAIDA.WOrc.FieldByNAme('COD_ORCAMENTO').AsString;
					DMESTOQUE.TSlave.Open;
	               	//Percorre os itens de produto do orçamento importando para pedido
	               	DMESTOQUE.TSlave.First;
               	While not DMESTOQUE.TSlave.Eof do
               	Begin
						//ENCONTRA ESTOQUE
                   	If FiltraTabela(DMESTOQUE.TEstoque, 'ESTOQUE', 'COD_ESTOQUE', DMESTOQUE.TSlave.FieldByName('COD_ESTOQUE').AsString, '')=False
                   	Then Begin
                   		Mensagem('OPÇÃO BLOQUEADA', 'Não foi possível encontrar a tabela estoque para o produto:'+#13+DMESTOQUE.TSlave.FieldByName('descricao').AsString, '', 1, 1, False, 'a');
                       	XSUCCESS:=False;
	 						Exit;
                   	End;

   					//Valida quanto ao estoque físico (veirifca se ha estoque suficiente
   					//Verifica se o desconto dado no produto é superior ao permitido
       				If DMMACS.TEmpresa.FieldByName('AVVPROVAR').AsCurrency=0
       				Then Begin//Se não ha restrições de desconto do produto em empresa procura em produto
       					If (DMESTOQUE.TSlave.FieldByName('DESCONTO').AsCurrency>DMESTOQUE.TEstoque.FieldByName('AVVPROVAR').AsCurrency)
       					Then Begin
								If Mensagem('A T E N Ç Ã O !', 'Você está concedendo um desconto maior que o estipulado em cadastro. Deseja continuar?', '', 2, 3, False, 'c')= 2
               				Then Begin
									If ControlAccess('DESCPMAIOR', '')=False
               					Then Begin  //se o usuário não tem permissão para efetuar um desconto maior que o cadastrado deve ser pedido a senha de um administrador
                                   	//Processo de importação recusado
                                   	XSUCCESS:=False;
                               	End;
                           	End
               				Else Begin
                           		//Processo de importação recusado
                   				XSUCCESS:=False;
                   			End;
               			End;
       				End
       				Else Begin
       					If (DMESTOQUE.TSlave.FieldByName('DESCONTO').AsCurrency>DMMACS.TEmpresa.FieldByName('AVVPROVAR').AsCurrency)
       					Then Begin
								If Mensagem('A T E N Ç Ã O !', 'Você está concedendo um desconto maior que o estipulado em cadastro. Deseja continuar?', '', 2, 3, False, 'c')= 2
               				Then Begin
									If ControlAccess('DESCPMAIOR', '')=False
               					Then Begin //se o usuário não tem permissão para efetuar um desconto maior que o cadastrado deve ser pedido a senha de um administrador
                           			//Processo de importação recusado
                               		XSUCCESS:=False;
                           		End;
                   			End;
                   		End;
               		End;
	  					If DMMacs.TLoja.FieldByName('ATUAESTOQUE').AsString='1'
	    				Then Begin //se o estoque deve ser atualizado no pedido executa procedimento
		  					If DMMacs.TLoja.FieldByName('VENDESTNEG').AsString='0'
	        				Then Begin
                       		If DMESTOQUE.TSlave.FieldByName('QTD').AsCurrency>DMESTOQUE.TEstoque.FieldByName('ESTFISICO').AsCurrency
	                			Then Begin//o estoque que esta sendo negociado é maior que o estoque físico e segundo configuraçãoes isto não é permitido
	 								Mensagem('OPÇÃO BLOQUEADA', 'Não existe estoque suficiente para suportar esta operação. Produto:'+#13+DMESTOQUE.TSlave.FieldByName('descricao').AsString, '', 1, 1, False, 'a');
                               	XSUCCESS:=False;
                                   FiltraSlave;
	 								Exit;
                           	End;
	            			End;
	        			End;

                   	//Inserir Produto a lista do ordem
   					XCodSlave:=InserReg(DMServ.TPOrd, 'ITPRODORD', 'COD_ITPRODORD');
   					DMServ.TPOrd.FieldByName('COD_ITPRODORD').AsInteger:=XCodSlave;
						DMServ.TPOrd.FieldByName('COD_ORDEM').AsInteger:=XTabela.FieldByName('COD_ORDEM').AsInteger;
						DMServ.TPOrd.FieldByName('NUMREQ').AsString:='ORC-'+DMSAIDA.TOrc.FieldByName('NUMORC').AsString;
						DMServ.TPOrd.FieldByName('COD_FUNCIONARIO').AsInteger:=DMSAIDA.TOrc.FieldByName('COD_VENDEDOR').AsInteger;
						DMServ.TPOrd.FieldByName('DATA').AsString:=DateToStr(Date());
       				DMServ.TPOrd.FieldByName('VALCUSTO').AsCurrency:=DMESTOQUE.TEstoque.FieldByName('VALCUSTO').Value;
       				DMServ.TPOrd.FieldByName('VALREP').AsCurrency:=DMESTOQUE.TEstoque.FieldByName('VALREP').Value;
       				DMServ.TPOrd.FieldByName('COEFDIV').AsCurrency:=DMESTOQUE.TEstoque.FieldByName('COEFDIV').Value;
						DMServ.TPOrd.FieldByName('VALCOMP').AsCurrency:=DMESTOQUE.TEstoque.FieldByName('vlrunitcomp').Value*EDQuantidade.ValueNumeric;
						CalcLuc(DMESTOQUE.TSlave.FieldByName('TOTAL').AsCurrency, DMESTOQUE.TSlave.FieldByName('DESCONTO').AsCurrency, DMESTOQUE.TSlave.FieldByName('QTD').AsCurrency);
						DMServ.TPOrd.FieldByName('LUCMOE').AsCurrency:=AlxLUCMOE;
						DMServ.TPOrd.FieldByName('VLRVENDBD').AsCurrency:=DMESTOQUE.TEstoque.FieldByName('VLRUNITCOMP').AsCurrency;
						DMServ.TPOrd.FieldByName('LUCPER').AsCurrency:=AlxLUCPER;
						DMServ.TPOrd.FieldByName('LUCREL').AsCurrency:=ALXLUCREAL;
       				Try

                           // se tiver um funcionario selecionado
                           If XCOD_VENDEDOR > 0
                           Then Begin
                               // filtra estoque para buscar os valores das porcentagens das comissoes
                               FiltraTabela(DMESTOQUE.Alx4,'ESTOQUE','COD_ESTOQUE',DMESTOQUE.TEstoque.FieldByName('COD_ESTOQUE').AsString,'');

                               // se na loja esta configurado p buscar preço somente a prazo
                               If DMMACS.TLoja.FieldByName('TIPOVENDA').AsString = '1'
                               Then Begin
                                   // se na loja esta configurado p buscar do funcionario
                                   If (DMMACS.TLoja.FieldByName('COMISSPRODCADPROD').AsString = '0')
                                   Then Begin
                                       // DADOS DA TABELA FUNCARGO QUE SERÃO UTILIZADAS PARA OS CALCULOS ABAIXO
                                       FiltraTabela(DMPESSOA.TFunCargo,'FUNCARGO','COD_FUNCIONARIO',IntToStr(XCOD_VENDEDOR),'');

                                       DMPESSOA.TFunCargo.Last;//VAI P/ O ULTIMO CARGO CADASTRADO

                                       //FORMA DE PAGAMENTO À PRAZO É CALCULA COMISSÃO REFERENTE A VISTA
                                       DMSERV.TPOrd.FieldByName('COMISSAO').AsCurrency:=(DMESTOQUE.TSlave.FieldByName('TOTAL').AsCurrency*DMPESSOA.TFunCargo.FieldByName('COMISSAO_VPPRO').AsCurrency)/100;
                                   End
                                   Else Begin
                                       //FORMA DE PAGAMENTO À PRAZO É CALCULA COMISSÃO REFERENTE A PRAZO
                                       DMSERV.TPOrd.FieldByName('COMISSAO').AsCurrency := (DMESTOQUE.TSlave.FieldByName('TOTAL').AsCurrency * DMESTOQUE.Alx4.FieldByName('CVPPROVAR').AsCurrency) /100;
                                   End;
                               End
                               Else Begin
                                   // se na loja esta configurado p buscar do funcionario
                                   If (DMMACS.TLoja.FieldByName('COMISSPRODCADPROD').AsString = '0')
                                   Then Begin
                                       // DADOS DA TABELA FUNCARGO QUE SERÃO UTILIZADAS PARA OS CALCULOS ABAIXO
                                       FiltraTabela(DMPESSOA.TFunCargo,'FUNCARGO','COD_FUNCIONARIO',IntToStr(XCOD_VENDEDOR),'');

                                       DMPESSOA.TFunCargo.Last;//VAI P/ O ULTIMO CARGO CADASTRADO

                                       // sse a forma de pagamento for a vista
                                       If FrmFormPag1.EdDescricao.Text = 'À VISTA'
                                       Then Begin
                                           //FORMA DE PAGAMENTO À PRAZO É CALCULA COMISSÃO REFERENTE A VISTA
                                           DMSERV.TPOrd.FieldByName('COMISSAO').AsCurrency:=(DMESTOQUE.TSlave.FieldByName('TOTAL').AsCurrency*DMPESSOA.TFunCargo.FieldByName('COMISSAO_VVPRO').AsCurrency)/100;
                                       End
                                       Else Begin
                                           //FORMA DE PAGAMENTO À PRAZO É CALCULA COMISSÃO REFERENTE A PRAZO
                                           DMSERV.TPOrd.FieldByName('COMISSAO').AsCurrency:=(DMESTOQUE.TSlave.FieldByName('TOTAL').AsCurrency*DMPESSOA.TFunCargo.FieldByName('COMISSAO_VPPRO').AsCurrency)/100;
                                       End;
                                   End
                                   Else Begin
                                       // sse a forma de pagamento for a vista
                                       If FrmFormPag1.EdDescricao.Text = 'À VISTA'
                                       Then Begin
                                           //FORMA DE PAGAMENTO À PRAZO É CALCULA COMISSÃO REFERENTE A VISTA
                                           DMSERV.TPOrd.FieldByName('COMISSAO').AsCurrency := (DMESTOQUE.TSlave.FieldByName('TOTAL').AsCurrency * DMESTOQUE.Alx4.FieldByName('CVVPROVAR').AsCurrency) /100;
                                       End
                                       Else Begin
                                           //FORMA DE PAGAMENTO À PRAZO É CALCULA COMISSÃO REFERENTE A PRAZO
                                           DMSERV.TPOrd.FieldByName('COMISSAO').AsCurrency := (DMESTOQUE.TSlave.FieldByName('TOTAL').AsCurrency * DMESTOQUE.Alx4.FieldByName('CVPPROVAR').AsCurrency) /100;
                                       End;
                                   End;
                               End;
                           End;
       				Except
							DMServ.TPOrd.FieldByName('COMISSAO').AsCurrency:=0;
       				End;
						DMServ.TPOrd.FieldByName('COD_ESTOQUE').AsInteger:=DMESTOQUE.TSlave.FieldByName('COD_ESTOQUE').AsInteger;
						DMServ.TPOrd.FieldByName('QTD').Value:=DMESTOQUE.TSlave.FieldByName('QTD').AsCurrency;
						DMServ.TPOrd.FieldByName('DESCONTO').Value:=DMESTOQUE.TSlave.FieldByName('DESCONTO').AsCurrency;
						DMServ.TPOrd.FieldByName('VLRUNIT').Value:=DMESTOQUE.TSlave.FieldByName('VLRUNIT').AsCurrency;
                   	DMServ.TPOrd.FieldByName('TOTAL').Value:=DMESTOQUE.TSlave.FieldByName('TOTAL').AsCurrency;
   					//Tenta gravar as informações
   					Try
       					//Atualiza Estoque
       					DMEstoque.TEstoque.edit;
                           DMEstoque.TEstoque.FieldByName('ATUALIZAR').AsString:='1';
          					//atualiza estoque físico
							DMEstoque.TEstoque.FieldByName('ESTFISICO').Value:=DMEstoque.TEstoque.FieldByName('ESTFISICO').Value-DMESTOQUE.TSlave.FieldByName('QTD').AsCurrency;
              				//Atualiza data da ultima venda
							DMEstoque.TEstoque.FieldByName('ULTVENDA').AsString:=DateToStr(Date());
                             DMESTOQUE.TEstoque.Post;

							//ATUALIZA CUSTO DE ESTOQUE
							DMESTOQUE.CalcCustMed(DMESTOQUE.TEstoque.FieldByNAme('COD_ESTOQUE').AsInteger, 'S', DMESTOQUE.TSlave.FieldByName('QTD').AsCurrency, DMESTOQUE.TSlave.FieldByName('QTD').AsCurrency*DMEstoque.TEstoque.FieldByName('VLRUNITCOMP').AsCurrency);

                             DMESTOQUE.TEstoque.Edit;
       					//Atualiza saldo de estoque
                       		DMEstoque.TEstoque.FieldByName('ESTSALDO').AsCurrency:=(DMEstoque.TEstoque.FieldByName('ESTFISICO').AsCurrency+DMEstoque.TEstoque.FieldByName('ESTPED').AsCurrency)-DMEstoque.TEstoque.FieldByName('ESTRESERV').AsCurrency;
							DMESTOQUE.TEstoque.Post;

                             DMServ.TPOrd.Edit;
       					DMServ.TPOrd.Post;
                             DMEstoque.TEstoque.Edit;
							DMEstoque.TEstoque.Post;
                             DMESTOQUE.TransacEstoque.CommitRetaining;
                   	Except
                   		Mensagem('OPÇÃO BLOQUEADA', 'Problemas ao atualizar o estoque. Produto:'+#13+DMESTOQUE.TSlave.FieldByName('subproduto.descricao').AsString, '', 1, 1, False, 'a');
                       	XSUCCESS:=False;
                         Exit;
                   	End;
                   	DMESTOQUE.TSlave.Next;
                   End;
               Except
                   XSUCCESS:=False;
                   XDESCERRO:=' em importar produtos'
               End;
               If XSUCCESS=True
               Then Begin
                   DMServ.TOrd.Edit;
                   DMServ.TOrd.Post;
                   DMESTOQUE.TransacEstoque.CommitRetaining;
                   DMESTOQUE.TransacEstoque.CommitRetaining;
                   DMServ.IBT.CommitRetaining;
                   FrmEquipamento.EDCodigo.Text:='';
                   FrmEquipamento.EdDescricao.Text:='';
                   FiltraTabela(DMServ.WOrdem, 'VWORDEM', 'COD_ORDEM', IntToStr(XCODNEWORDEM), '');
                   BtnConsultar.Click;
                   DMServ.TOrd.Edit;
                   DMServ.TOrd.FieldByName('EDIT').AsString := '1';
                   DMServ.TOrd.Post;
               End
               Else Begin
               	Mensagem('OPÇÃO BLOQUEADA', 'Ocorreram problemas ao importar orçamento. Verifique as informações!', 'Problemas '+XDESCERRO, 1, 1, True, 'a');
					DMESTOQUE.TransacEstoque.RollbackRetaining;
                   DMESTOQUE.TransacEstoque.RollbackRetaining;
                   DMSAIDA.IBT.RollbackRetaining;
                   BtnCancelar.Click;
               End;
           End
           Else Begin
				Mensagem('INFORMAÇÃO!', 'Não foi possivel importar o orçamento solicitado! A tabela de orçamento não localizou registro. Tente reiniciar o sistema!', '', 1, 1, False, 'a');
               Exit;
           End;
		End;
   End;
end;

procedure TFOrdem.BitBtn2Click(Sender: TObject);
begin
  inherited;
	//EFETUA CONTROLE DE ACESSO
   If ControlAccess('TELACOMIS', 'M')=False Then
  		Exit;

    If FiltraTabela(XTabela, 'ORDEM', 'COD_ORDEM', XView.FieldByName('COD_ORDEM').AsString, '')=False Then
	 	Exit;//Caso não encontrar cancelar
    FMENU.TIPOAUX:='ORDEM';
    FMenu.XBCPROD:=XTabela.FieldByName('TOTPROD').AsCurrency;
    FMenu.XBCSERV:=XTabela.FieldByName('TOTSERV').AsCurrency;
    FMenu.XCOUNRECORD:=XTabela.FieldByName('COD_ORDEM').AsInteger;
    AbrirForm(TFComissao, FComissao, 0);
end;

procedure TFOrdem.FrmMoedaBTNMINUSClick(Sender: TObject);
begin
  inherited;
  FrmMoeda.BTNMINUSClick(Sender);

end;

procedure TFOrdem.FrmMoedaBTNOPENClick(Sender: TObject);
begin
  inherited;
  FrmMoeda.BTNOPENClick(Sender);

end;

procedure TFOrdem.FrmFormPagEDCodigoKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  FrmFormPag.EDCodigoKeyPress(Sender, Key);

end;

procedure TFOrdem.CBORDEMExit(Sender: TObject);
Var
	XFILTRO: String;
begin
  inherited;
  	If CBFILTRO.Text='TODAS' Then
       XFILTRO:='';
  	If CBFILTRO.Text='ABERTAS' Then
       XFILTRO:=' AND (STATUS='+#39+'ABERTO'+#39+')';
  	If CBFILTRO.Text='FECHADAS' Then
       XFILTRO:=' AND (STATUS='+#39+'FECHADO'+#39+')';
  	If CBFILTRO.Text='TERMINADAS' Then
       XFILTRO:=' AND (STATUS='+#39+'TERMINADO'+#39+')';
  	If CBFILTRO.Text='AGENDADO' Then
       XFILTRO:=' AND (STATUS='+#39+'AGENDADO'+#39+')';
  	If CBFILTRO.Text='FINALIZADO' Then
       XFILTRO:=' AND (STATUS='+#39+'FINALIZADO'+#39+')';

	If CBORDEM.Text='CADASTRO'
   Then Begin //ordenar pelo número
   	XLiberaDados:=' WHERE (COD_LOJA='+FMenu.LCODLOJA.Caption+') '+XFILTRO+'  ORDER BY COD_ORDEM DESC';
   End;
	If CBORDEM.Text='NUMERO'
   Then Begin //ordenar pelo número
   	XLiberaDados:=' WHERE (COD_LOJA='+FMenu.LCODLOJA.Caption+') '+XFILTRO+'  ORDER BY NUMERO, DTABERT DESC';
   End;
	If CBORDEM.Text='CLIENTE'
   Then Begin //ordenar pelo número
   	XLiberaDados:=' WHERE (COD_LOJA='+FMenu.LCODLOJA.Caption+') '+XFILTRO+'  ORDER BY CLIENTE, DTABERT DESC';
   End;
	If CBORDEM.Text='DATA'
   Then Begin //ordenar pela data
  	    If CBFILTRO.Text='AGENDADO' Then
   	    XLiberaDados:=' WHERE (COD_LOJA='+FMenu.LCODLOJA.Caption+') '+XFILTRO+'  ORDER BY DTAGENDADO'
       Else
   	    XLiberaDados:=' WHERE (COD_LOJA='+FMenu.LCODLOJA.Caption+') '+XFILTRO+'  ORDER BY DTABERT DESC';
   End;
   If CBORDEM.Text = 'BOX'
   Then Begin
       XLiberaDados:=' WHERE (COD_LOJA='+FMenu.LCODLOJA.Caption+') '+XFILTRO+'  ORDER BY BOX, STATUS DESC';
   End;
   LiberaDados;
end;

procedure TFOrdem.BtnCancelarClick(Sender: TObject);
Var
	XVazio: Boolean;
begin
	XVazio:=False;

   FiltraSlave;
   If Not DMESTOQUE.TSlave.IsEmpty = True Then
       XVazio:= True;
   If Not DMESTOQUE.TSlaveServ.IsEmpty = True Then
       XVazio:= True;
   If Not DMESTOQUE.TDesp.IsEmpty= True Then
       XVazio:= True;
   DMESTOQUE.TSlave.RecordCount;

   // ocultando o painel de horas
   If DMMACS.TLoja.FieldByName('ORDEMLOCA_GUINDASTE').AsString = '1'
   Then Begin
       PHoras.Visible := false;

       // antes de gravar, eh feito uma sql para ver se nao esta sem nenhum item na grid
       If VerificaItens = false Then
           XVazio := false
       Else
           XVazio := true;

   End;

	If XVazio=False
   Then Begin//Se o pedido encontra-se sem itens ele pode ser apagado automaticamente pelo sistema
   	If Mensagem('Mzr Sistemas - C O N F I R M A Ç Ã O', 'Esta O.S. não apresenta itens lançados! Deseja apaga-la?', '', 2, 3, False, 'c')=2
       Then Begin
           //Apaga Ordem
           DMServ.TOrd.Delete;
           {DMServ.TAlx1.Close;  // - 28/04/2009:
           DMServ.TAlx1.SQL.Clear;
           DMServ.TAlx1.SQL.Add('delete from ordem where ordem.cod_ordem = :CODORDEM');
           DMServ.TAlx1.ParamByName('CODORDEM').AsInteger := DMServ.TOrd.FieldByName('cod_ordem').AsInteger;
           DMServ.TAlx1.ExecSQL; }
           DMServ.TOrd.ApplyUpdates;
           DMServ.IBT.CommitRetaining;

           //Paulo 08/06/2011: Volta o numero da ordem anterior
           DMMACS.TEmpresa.Edit;
           DMMacs.TEmpresa.FieldByName('PROX_OS').AsString:=IntToStr(StrToInt(XNumOrdem)-1);
           DMMACS.TEmpresa.Post;
           DMMacs.Transaction.CommitRetaining;
           Try
               //REGISTRA COMANDO DO USUARIO
               Registra('ORDEM', 'APAGAR/CANCELAR', DMServ.TOrd.FieldByName('DTABERT').AsString, 'Nº '+DMServ.TOrd.FieldByName('NUMERO').AsString, 'Valor: '+DMServ.TOrd.FieldByName('TOTORD').AsString);
           Except
           End;
           //Confirma Tranzaçào
           DMServ.IBT.CommitRetaining;
           //atualiza view
           LiberaDados;
       End;
   End
   else begin

   // BUSCANDO A ORDEM PARA LIBERAÇÃO DE CONSULTA
   {FiltraTabela(DMServ.TOrd,'ORDEM','COD_ORDEM',IntToStr(XCOD_ORDEM),'');
   DMServ.TOrd.Edit;
   DMServ.TOrd.FieldByName('EDIT').AsString := '0';
   DMServ.TOrd.Post; }

       Try
         DMServ.TAlx1.Close;       // - 28/04/2009:
         DMServ.TAlx1.SQL.Clear;
         DMServ.TAlx1.SQL.Add('update ORDEM set EDIT = :EDIT');
         DMServ.TAlx1.SQL.Add('where COD_ORDEM = :OLD_COD_ORDEM');
         DMServ.TAlx1.ParamByName('EDIT').AsString := '0';
         DMServ.TAlx1.ParamByName('OLD_COD_ORDEM').AsInteger := XCOD_ORDEM;
         DMServ.TAlx1.ExecSQL;
         DMServ.IBT.CommitRetaining;
       Except
         DMServ.IBT.RollbackRetaining;
       End;
   end;   
   If DMMACS.TLoja.FieldByName('ATIVIDADE').AsString = 'EQUIPE' Then
       // procedimento para ordenar as ordens de servico em abertar e por box
       OrdenacaoOS;
   inherited;
end;

procedure TFOrdem.BtnCancelamentosClick(Sender: TObject);
begin
  inherited;
   PMDevolucao.Popup(BtnCancelamentos.Left+Left+160, BtnCancelamentos.Top+Top+85);
end;

//Função utilizada para cancelar/estornar todos os lançamentos emitidos por uma determinada OS
Function TFOrdem.CancelLanOrd(CodPedido: String):Boolean;
Begin
	//Inicia resultado como falso
   Result:=True;

	//filtra loja para capturar as configurações
   FiltraTabela(DMMACS.TLoja, 'LOJA', 'COD_LOJA', FMenu.LCODLOJA.Caption, '');
	//filtra DADOS DA VIEW
	DMServ.WOrdem.Close;
	DMServ.WOrdem.SQL.Clear;
	DMServ.WOrdem.SQL.Add('SELECT * FROM vwordem WHERE COD_ORDEM=:CODIGO');
	DMServ.WOrdem.ParamByName('CODIGO').AsString:=CodPedido;
	DMServ.WOrdem.Open;
   FiltraTabela(DMServ.TOrd, 'ORDEM', 'COD_ORDEM', CodPedido, '');
   FiltraTabela(DMFINANC.TFormPag, 'FORMPAG', 'COD_FORMPAG', DMServ.TOrd.FieldByName('COD_FORMPAG').AsString, '');

   //Apaga Lancamentos de Comissão
   Try
   	DMFINANC.TComis.Close;
   	DMFINANC.TComis.sql.Clear;
   	DMFINANC.TComis.SQL.Add('Delete from comissao where  (comissao.cod_gerador=:CODGERADOR) And (comissao.gerador='+#39+'ORDEM'+#39+')');
		DMFINANC.TComis.ParamByName('CODGERADOR').AsString:=CodPedido;
   	DMFINANC.TComis.ExecSQL;
       DMFINANC.Transaction.CommitRetaining;
   Except
		Mensagem('NOTIFICAÇÃO AO USUÁRIO', 'Ocorreu um problema ao tentar apagar as comissões referentes a O.S.! As informação serão mantidas', '', 1, 1, False, 'a');
       Result:=False;
       Exit;
   End;
   DMFINANC.TComis.Close;
   DMFINANC.TComis.sql.Clear;
   DMFINANC.TComis.SQL.Add('Select * from comissao ');
   DMFINANC.TComis.Open;


//CONTROLE QUE DELETA TODA A MOVIMENTAÇÃO QUANDO UMA ORDEM É FECHADO COM CHEQUE E É À VISTA.

       FiltraTabela(DMBANCO.TMovBanco,'MOVBANCO','COD_MOVBANCO','','(COD_GERADOR = ' + #39 + DMServ.WOrdem.FieldByName('COD_ORDEM').AsString + #39 + ') AND (TIPOGERADOR = ' + #39 + 'ORDEM' + #39 + ')');

       XCampo:=DMBANCO.TMovBanco.FieldByName('COD_MOVBANCO').AsString;

       //seleciona cheques para serem apagados
       DMCAIXA.TAlx.close;
       DMCAIXA.TAlx.SQL.Clear;
       DMCAIXA.TAlx.SQL.Add('select * from chequerec');
       DMCAIXA.TAlx.SQL.Add('where chequerec.cod_movbanco = :CODMOV');
       DMCAIXA.TAlx.ParamByName('CODMOV').AsString:=DMBANCO.TMovBanco.FieldByName('COD_MOVBANCO').AsString;
       DMCAIXA.TAlx.Open;

       IF NOT DMCAIXA.TAlx.IsEmpty
       then begin

         //seleciona lançamentos de caixa para serem deletados
         DMCAIXA.TLanCaixa.Close;
         DMCAIXA.TLanCaixa.SQL.Clear;
         DMCAIXA.TLanCaixa.SQL.Add('SELECT * FROM LANCAIXA');
         DMCAIXA.TLanCaixa.SQL.Add('where ((lancaixa.tipogerador='+#39+'LCHR'+#39+') or (lancaixa.tipogerador='+#39+'DCHR'+#39+') or (lancaixa.tipogerador='+#39+'MCHR'+#39+') AND (lancaixa.cod_gerador =:CODLANCA))');
         DMCAIXA.TLanCaixa.ParamByName('CODLANCA').AsString:=DMCAIXA.TAlx.FieldByName('COD_CHEQUEREC').AsString;
         DMCAIXA.TLanCaixa.Open;
         DMCAIXA.TLanCaixa.First;

         //se o codigo de abertura do caixa autal for diferente do codigo de lançamento de caixa do pedido e este cheque foi movimentado em caixa faz o estorno
         IF (DMCAIXA.TLanCaixa.FieldByName('COD_ABCAIXA').AsString <> FMenu.LABCAIXA.Caption) and (FiltraTabela(DMBANCO.TMovBanco,'MOVBANCO','COD_MOVBANCO','','(COD_GERADOR = ' + #39 + DMServ.WOrdem.FieldByname('COD_ORDEM').AsString + #39 + ') AND (TIPOGERADOR = ' + #39 + 'MCHR' + #39 + ')')= false)
         THEN BEGIN //só faz o estorno se foi movimentado em caixa, caso contrário não faz estorno
              LanCaixa(-1, DateToStr(Date()), DMMACS.TLoja.fieldByName('PLNCTA_SAICXCORR').AsInteger, 'Cancel. fech. Ped. '+DMServ.TOrd.FieldByName('NUMERO').AsString+' Cli. '+DMServ.WOrdem.FieldByName('NOMECLI').AsString, DMCAIXA.TLanCaixa.FieldByName('VALOR').AsCurrency, 'TPEDV', StrToInt(CodPedido), 'Carteira', 'S', 'EST'+DMServ.TOrD.FieldByName('NUMERO').AsString, Date(), '1');
         end;
         DMCAIXA.IBT.CommitRetaining;
         MDO.Transac.CommitRetaining;

         //se o codigo de abertura de caixa atual for igual ao codigo de abertura de caixa do lançamento do pedido apaga os lançamentos
         If DMCAIXA.TLanCaixa.FieldByName('COD_ABCAIXA').AsString = FMenu.LABCAIXA.Caption
         then begin
              while not DMCAIXA.TLanCaixa.Eof do
              begin
                DMCAIXA.TLanCaixa.Delete;
                DMCAIXA.TLanCaixa.ApplyUpdates;

              end;
         end;
         DMCAIXA.IBT.CommitRetaining;


         //DELETA MOVIMENTAÇÕES BANCARIAS DESTE PEDIDO caso tenha sido movimentado em conta corrente
         If FiltraTabela(DMBANCO.TMovBanco,'MOVBANCO','COD_MOVBANCO','','(COD_GERADOR = ' + #39 + DMCAIXA.TAlx.FieldByname('COD_CHEQUEREC').AsString + #39 + ') AND (TIPOGERADOR = ' + #39 + 'MCHR' + #39 + ')')= true
             Then Begin
                 DMBANCO.TMovBanco.Delete;
                 DMBANCO.TMovBanco.ApplyUpdates;
             End;
         DMBANCO.IBT.CommitRetaining;


         //DELETA MOVIMENTAÇÕES BANCARIAS DESTE PEDIDO caso tenha sido movimentado em caixa
         If FiltraTabela(DMBANCO.TMovBanco,'MOVBANCO','COD_MOVBANCO','','(COD_GERADOR = ' + #39 + DMServ.TOrd.FieldByname('COD_ORDEM').AsString + #39 + ') AND (TIPOGERADOR = ' + #39 + 'ORDEM' + #39 + ')')= true
         Then Begin
             DMBANCO.TMovBanco.Delete;
             DMBANCO.TMovBanco.ApplyUpdates;
         End;
         DMBANCO.IBT.CommitRetaining;

         //apaga cheques ligados ao pedido de venda
         if not DMCAIXA.TAlx.IsEmpty
         then begin
            DMBANCO.TChequeRec.Close;
            DMBANCO.TChequeRec.SQL.Clear;
            DMBANCO.TChequeRec.SQL.Add('delete from chequerec where cod_movbanco= :CODIGO');
            DMBANCO.TChequeRec.ParamByName('CODIGO').AsString:=XCampo;
            DMBANCO.TChequeRec.ExecSQL;
            DMBANCO.IBT.CommitRetaining;
            DMBANCO.TChequeRec.Open;
            DMBANCO.TChequeRec.Close;
            DMBANCO.TChequeRec.SQL.Clear;
            DMBANCO.TChequeRec.SQL.Add('select * from chequerec');
            DMBANCO.TChequeRec.Open;
         end;
     END;




   //VERIRIFA SE A OS FOI À VISTA
   If DMFINANC.TFormPag.FieldByName('DESCRICAO').AsString='À VISTA'
   Then Begin
   	//FILTRA LANÇAMENTO EM CAIXA E GERA OUTRO LANÇAMENTO DE ESTORNO EM CX
       DMCAIXA.TLanCaixa.Close;
       DMCAIXA.TLanCaixa.SQL.Clear;
       DMCAIXA.TLanCaixa.SQL.Add('SELECT * FROM LANCAIXA WHERE (TIPOGERADOR='+#39+'ORDSERV'+#39+') AND (COD_GERADOR=:CODPEDIDO)');
       DMCAIXA.TLanCaixa.ParamByName('CODPEDIDO').AsString:=CodPedido;
       DMCAIXA.TLanCaixa.Open;
       DMCAIXA.TLanCaixa.First;
       If Not DMCAIXA.TLanCaixa.IsEmpty
       Then Begin//se foi encontrado algum lançamento em caixa deve se realizar outro de estorno
         while not DMCAIXA.TLanCaixa.Eof do begin
             If LanCaixa(-1, DateToStr(Date()), DMMACS.TLoja.fieldByName('PLNCTA_SAICXCORR').AsInteger, 'Cancel. O.S. '+DMServ.TOrd.FieldByName('NUMERO').AsString+' Cli. '+DMServ.WOrdem.FieldByName('CLIENTE').AsString, DMCAIXA.TLanCaixa.FieldByName('VALOR').AsCurrency, 'TOS', StrToInt(CodPedido), 'Carteira', 'S', 'EST'+DMServ.TOrd.FieldByName('NUMERO').AsString, Date(), '1')= True Then
                 MDO.Transac.CommitRetaining
                 //DMCAIXA.IBT.CommitRetaining
             Else
                 Result:=False;
             DMCAIXA.TLanCaixa.Next;
         end;
       End;

       If DMServ.TOrd.FieldByName('TIPOPAG').AsString = 'Cartão'
       Then Begin
           If FiltraTabela(DMBANCO.TMovBanco,'MOVBANCO','COD_MOVBANCO','','(COD_GERADOR = ' + #39 + DMServ.WOrdem.FieldByname('COD_ORDEM').AsString + #39 + ') AND (TIPOGERADOR = ' + #39 + 'TOTPROD' + #39 + ')')= true
           Then Begin
               DMBANCO.TMovBanco.Delete;
               DMBANCO.TMovBanco.ApplyUpdates;
           End;
           If FiltraTabela(DMBANCO.TMovBanco,'MOVBANCO','COD_MOVBANCO','','(COD_GERADOR = ' + #39 + DMServ.WOrdem.FieldByname('COD_ORDEM').AsString + #39 + ') AND (TIPOGERADOR = ' + #39 + 'TOTSERV' + #39 + ')')= true
           Then Begin
               DMBANCO.TMovBanco.Delete;
               DMBANCO.TMovBanco.ApplyUpdates;
           End;

           DMBANCO.IBT.CommitRetaining;

       End;



   End
   Else Begin
        //SE A VENDA NÃO FOI À VISTA
        //FILTRA CTA RECEBER PARA LOCALIZAR LANÇAMENTOS
		 If FiltraTabela(DMCONTA.TCtaR, 'CTARECEBER', 'COD_CTARECEBER', '', ' (TIPOGERADOR = '+#39+'ORD'+#39+') AND (COD_GERADOR='+CodPedido+')')=True
        Then Begin//se foi encontrado alguma conta
        	//FILTRA PARCELAS
         	If FiltraTabela(DMCONTA.TParcCR, 'PARCELACR', 'COD_CTARECEBER', DMCONTA.TCtaR.FieldByName('COD_CTARECEBER').AsString, '')=True
        	Then Begin//se foi encontrado alguma conta
				//PARA CADA PARCELA VERIFICA SE ESTA FECHADA
               DMCONTA.TParcCR.First;
               While not DMCONTA.TParcCR.Eof do
               Begin
                   //deleta lançamentos de caixa caso seja forma de pagamento carteira.
                   if DMServ.WOrdem.FieldByName('TIPOPAG').AsString = 'Carteira'
                   then begin
                        FiltraTabela(DMCAIXA.TLanCaixa, 'LANCAIXA', 'COD_LANC', '','(lancaixa.tipogerador='+#39+'CTAR'+#39+') AND (lancaixa.cod_gerador =' + #39 + DMCONTA.TParcCR.FieldByname('COD_PARCELACR').AsString + #39')');
                        while not DMCAIXA.TLanCaixa.Eof
                        do begin
                           If LanCaixa(-1, DateToStr(Date()), DMMACS.TLoja.fieldByName('PLNCTA_SAICXCORR').AsInteger, 'Cancel. O.S. '+DMServ.TOrd.FieldByName('NUMERO').AsString+' Cli. '+DMServ.WOrdem.FieldByName('CLIENTE').AsString, DMCAIXA.TLanCaixa.FieldByName('VALOR').AsCurrency, 'TOS', StrToInt(CodPedido), 'Carteira', 'S', 'EST'+DMServ.TOrd.FieldByName('NUMERO').AsString, Date(), '1')= True Then
                              MDO.Transac.CommitRetaining
                              //DMCAIXA.IBT.CommitRetaining
                           Else
                               Result:=False;
                           DMCAIXA.TLanCaixa.Next;
                        end;
                    end;

                    //filtra movimentação bancaria da parcela em questão
                    FiltraTabela(DMBANCO.TMovBanco,'MOVBANCO','COD_MOVBANCO','','(COD_GERADOR = ' + #39 + DMCONTA.TParcCR.FieldByname('COD_PARCELACR').AsString + #39 + ') AND (TIPOGERADOR = ' + #39 + 'CTARCH' + #39')');
                    //filtra cheque da parcela
                    FiltraTabela(DMBANCO.TChequeRec, 'CHEQUEREC', 'COD_CHEQUEREC', '', '(COD_MOVBANCO = ' + #39 + DMBANCO.TMovBanco.FieldByName('COD_MOVBANCO').AsString + #39 +')');

                    //variável utilizada para apos apagar a movimentação bancaria sejam apagados os cheques ligados as parcelas
                    XCampo:=DMBANCO.TMovBanco.FieldByName('COD_MOVBANCO').AsString;

                    //filtra os lançamentos de caixa ligados a parcela
                    FiltraTabela(DMCAIXA.TLanCaixa, 'LANCAIXA', 'COD_LANC', '','(lancaixa.tipogerador='+#39+'LCHR'+#39+') or (lancaixa.tipogerador='+#39+'DCHR'+#39+') or (lancaixa.tipogerador='+#39+'MCHR'+#39+') AND (lancaixa.cod_gerador =' + #39 + DMBANCO.TChequeRec.FieldByname('COD_CHEQUEREC').AsString + #39')');

  					 	If FiltraTabela(DMBANCO.TMovBanco, 'MOVBANCO', 'COD_MOVBANCO', '', ' (TIPOGERADOR='+#39+'CTARCH'+#39+') AND (COD_GERADOR='+DMCONTA.TParcCR.FieldByName('COD_PARCELACR').AsString+')')=True
        				Then Begin
                          //se o codigo de abertura do caixa atual for diferente do codigo de lançamento de caixa da ordem e este cheque foi movimentado em caixa faz o estorno
                          IF (DMCAIXA.TLanCaixa.FieldByName('COD_ABCAIXA').AsString <> FMenu.LABCAIXA.Caption) and (FiltraTabela(DMBANCO.TMovBanco,'MOVBANCO','COD_MOVBANCO','','(COD_GERADOR = ' + #39 + DMCONTA.TParcCR.FieldByname('COD_PARCELACR').AsString + #39 + ') AND (TIPOGERADOR = ' + #39 + 'MCHR' + #39 + ')')= false)
                          THEN BEGIN //só faz o estorno se foi movimentado em caixa, caso contrário não faz estorno
                              LanCaixa(-1, DateToStr(Date()), DMMACS.TLoja.fieldByName('PLNCTA_SAICXCORR').AsInteger, 'Cancel. fech. Ped. '+DMSAIDA.TPedV.FieldByName('NUMPED').AsString+' Cli. '+DMSAIDA.WPedV.FieldByName('NOMECLI').AsString, DMCAIXA.TLanCaixa.FieldByName('VALOR').AsCurrency, 'TPEDV', StrToInt(CodPedido), 'Carteira', 'S', 'EST'+DMSAIDA.TPedV.FieldByName('NUMPED').AsString, Date(), '1');
                          end;
                          DMCAIXA.IBT.CommitRetaining;
                          MDO.Transac.CommitRetaining;

                              DMCAIXA.TLanCaixa.First;

                              while not DMCAIXA.TLanCaixa.Eof do
                              //se o codigo de abertura de caixa atual for igual ao codigo de abertura de caixa do lançamento do pedido apaga os lançamentos
                              If (DMCAIXA.TLanCaixa.FieldByName('COD_ABCAIXA').AsString = FMenu.LABCAIXA.Caption) AND (DMCAIXA.TLanCaixa.FieldByName('COD_GERADOR').AsString = DMBANCO.TChequeRec.FieldByName('COD_CHEQUEREC').AsString)
                              then begin
                                    if ((DMCAIXA.TLanCaixa.FieldByName('TIPOGERADOR').AsString = 'LCHR') OR (DMCAIXA.TLanCaixa.FieldByName('TIPOGERADOR').AsString = 'MCHR') or (DMCAIXA.TLanCaixa.FieldByName('TIPOGERADOR').AsString = 'DCHR'))
                                    THEN BEGIN
                                      DMCAIXA.TLanCaixa.Delete;
                                      DMCAIXA.TLanCaixa.ApplyUpdates;
                                    END;
                              end
                              else
                                    dmcaixa.TLanCaixa.Next;

                          DMCAIXA.IBT.CommitRetaining;
                       End;

                          //DELETA MOVIMENTAÇÕES BANCARIAS DESTE PEDIDO caso tenha sido movimentado em conta corrente
                          If FiltraTabela(DMBANCO.TMovBanco,'MOVBANCO','COD_MOVBANCO','','(COD_GERADOR = ' + #39 + DMBANCO.TChequeRec.FieldByname('COD_CHEQUEREC').AsString + #39 + ') AND (TIPOGERADOR = ' + #39 + 'MCHR' + #39 + ')')= true
                             Then Begin
                             DMBANCO.TMovBanco.First;
                                 while not DMBANCO.TMovBanco.Eof do
                                     DMBANCO.TMovBanco.Delete;
                                     DMBANCO.TMovBanco.ApplyUpdates;
                                 //end;
                             DMBANCO.TMovBanco.Next;
                             End;
                          DMBANCO.IBT.CommitRetaining;


                          //DELETA MOVIMENTAÇÕES BANCARIAS DESTE PEDIDO caso tenha sido movimentado em caixa
                          If FiltraTabela(DMBANCO.TMovBanco,'MOVBANCO','COD_MOVBANCO','','(COD_GERADOR = ' + #39 + DMCONTA.TParcCR.FieldByname('COD_PARCELACR').AsString + #39 + ') AND (TIPOGERADOR = ' + #39 + 'CTARCH' + #39 + ')')= true
                          Then Begin
                             DMBANCO.TMovBanco.Delete;
                             DMBANCO.TMovBanco.ApplyUpdates;
                          End;
                          DMBANCO.IBT.CommitRetaining;


                   //apaga cheques ligados a ordem

                    DMBANCO.TChequeRec.Close;
                    DMBANCO.TChequeRec.SQL.Clear;
                    DMBANCO.TChequeRec.SQL.Add('delete from chequerec where cod_movbanco= :CODIGO');
                    DMBANCO.TChequeRec.ParamByName('CODIGO').AsString:=XCampo;
                    DMBANCO.TChequeRec.ExecSQL;
                    DMBANCO.IBT.CommitRetaining;
                    DMBANCO.TChequeRec.Open;
                    DMBANCO.TChequeRec.Close;
                    DMBANCO.TChequeRec.SQL.Clear;
                    DMBANCO.TChequeRec.SQL.Add('select * from chequerec');
                    DMBANCO.TChequeRec.Open;
                 // end;


                   DMCONTA.TParcCR.Delete;
                   DMCONTA.TParcCR.ApplyUpdates;
             End;
           End;
           DMCONTA.TCtaR.Delete;
           DMCONTA.TCtaR.ApplyUpdates;
           DMCONTA.IBT.CommitRetaining;
           Result := true;
        End;
   End;
End;

procedure TFOrdem.Cancelar1Click(Sender: TObject);
Var
	XCodPedidoTroca: String;
   XCODLANEST: Integer;
   XQTDLOTE: Real;
begin
  inherited;
   FiltraTabela(XTabela, 'ORDEM', 'COD_ORDEM', DMServ.WOrdem.FieldByName('COD_ORDEM').AsString, '');
	If DMServ.WOrdem.FieldByName('STATUS').AsString='CANCELADO'
   Then Begin
		Mensagem('NOTIFICAÇÃO AO USUÁRIO', 'Esta O.S. se encontra Cancelada!', '', 1, 1, False, 'a');
       Exit;
   End;

	If DMServ.WOrdem.FieldByName('STATUS').AsString<>'FECHADO'
   Then Begin
		Mensagem('NOTIFICAÇÃO AO USUÁRIO', 'Esta O.S. não se encontra fechada! Então você pode clicar em consultar e alterar suas informações', '', 1, 1, False, 'a');
       Exit;
   End;

   // se a ordem de servico jah foi exportada, nao sera possivel cancelar
   If DMMACS.TLoja.FieldByName('atividade').AsString = 'EQUIPE'
   Then Begin
       If DMServ.WOrdem.FieldByName('EXPORTADO').AsString = '#'
       Then Begin
           Mensagem('   A T E N Ç Ã O   ','Esta Ordem de Serviço já foi exportada e portanto não pode ser cancelada.','',1,1,false,'I');
           Exit;
       End;
   End;

	If Mensagem('A T E N Ç Ã O', 'Deseja realmente Cancelar a O.S.'+#13+'Nº '+DMServ.WOrdem.FieldByName('NUMERO').AsString+'?'  , '', 2, 3, False, 'c')= 2
   Then Begin

       // BUSCANDO A ORDEM PARA LIBERAÇÃO DE CONSULTA
       {FiltraTabela(DMServ.TOrd,'ORDEM','COD_ORDEM',DMServ.WOrdem.FieldByName('COD_ORDEM').AsString,'');
       DMServ.TOrd.Edit;
       DMServ.TOrd.FieldByName('EDIT').AsString := '0';
       DMServ.TOrd.Post;  }
       Try
           DMServ.TAlx1.Close;
           DMServ.TAlx1.SQL.Clear;
           DMServ.TAlx1.SQL.Add('update ORDEM set EDIT = :EDIT');
           DMServ.TAlx1.SQL.Add('where COD_ORDEM = :OLD_COD_ORDEM');
           DMServ.TAlx1.ParamByName('EDIT').AsString := '0';
           DMServ.TAlx1.ParamByName('OLD_COD_ORDEM').AsInteger := DMServ.WOrdem.FieldByName('COD_ORDEM').AsInteger;
           DMServ.TAlx1.ExecSQL;

           DMServ.IBT.CommitRetaining;
       Except
           DMServ.IBT.RollbackRetaining;
       End;

       XCodPedidoTroca:=DMServ.WOrdem.FieldByName('COD_ORDEM').AsString;
       If FiltraTabela(DMServ.WORDEM, 'VWORDEM', 'COD_ORDEM', XCodPedidoTroca, '')=True
       Then Begin
           //REGISTRA COMANDO DO USUARIO
           Registra('ORDEM', 'CANCELA ORD', DMServ.WOrdem.FieldByName('DTABERT').AsString, 'Nº '+DMServ.TOrd.FieldByName('NUMERO').AsString+'-'+DMServ.WOrdem.FieldByName('CLIENTE').AsString, 'Vlr:'+DMServ.TOrd.FieldByName('totord').AsString+'-'+DMServ.WOrdem.FieldByName('equipamento').AsString);
			If CancelLanOrd(XCodPedidoTroca)=True
           Then Begin//Se foi possível cancelar/estornar todos os lançamentos realizados pelo pedido
				{DMServ.TOrd.EDIT;
           	DMServ.TOrd.FieldByName('STATUS').AsString:='CANCELADO';
				DMServ.TOrd.Post;
               DMServ.TAlx1.Close;}
               DMServ.TAlx1.SQL.Clear;
               DMServ.TAlx1.SQL.Add('update ORDEM set STATUS = :STATUS');
               DMServ.TAlx1.SQL.Add('where COD_ORDEM = :OLD_COD_ORDEM');
               DMServ.TAlx1.ParamByName('STATUS').AsString := 'CANCELADO';
               DMServ.TAlx1.ParamByName('OLD_COD_ORDEM').AsString := XCodPedidoTroca;
               DMServ.TAlx1.ExecSQL;

           End;
           XCodPedido:=XView.FieldByName('COD_ORDEM').AsString;
           //INSERE COMANDOS PARA FILTRAR
           DMESTOQUE.Alx.Close;
	        DMESTOQUE.Alx.SQL.Clear;
	        DMESTOQUE.Alx.SQL.Add('Select itprodord.cod_itprodord, itprodord.cod_ordem, itprodord.cod_estoque,  itprodord.qtd, itprodord.total, ');
           DMESTOQUE.Alx.sql.Add(' subproduto.'+DMMACS.TLoja.FieldByName('CODPRODREL1').AsString+' AS PRIMCOD, subproduto.'+DMMACS.TLoja.FieldByName('CODPRODREL2').AsString+' AS SEGCOD, ');
	        DMESTOQUE.Alx.SQL.Add('itprodord.desconto, itprodord.cod_funcionario, pessoa.nome, itprodord.vlrunit, subproduto.descricao, subproduto.marca, subproduto.CONTRINT, itprodord.data, itprodord.operacao ');
	        DMESTOQUE.Alx.SQL.Add('From itprodord left Join estoque on itprodord.cod_estoque = estoque.cod_estoque ');
	        DMESTOQUE.Alx.SQL.Add('Left Join ORDEM on itprodord.cod_Ordem = Ordem.cod_Ordem ');
	        DMESTOQUE.Alx.SQL.Add('Left Join subproduto on subproduto.cod_subproduto = estoque.cod_subprod ');
	        DMESTOQUE.Alx.SQL.Add('Left Join funcionario on funcionario.cod_func = itprodord.cod_funcionario ');
	        DMESTOQUE.Alx.SQL.Add('Left Join pessoa on funcionario.cod_pessoa = pessoa.COD_PESSOA ');
	        DMESTOQUE.Alx.SQL.Add('Where ORDEM.cod_ORDEM = :CODPEDVENDA ');
	        DMESTOQUE.Alx.ParamByName('CODPEDVENDA').AsString:=DMServ.WOrdem.FieldByName('COD_ORDEM').AsString;
	        DMESTOQUE.Alx.Open;
           DMESTOQUE.ALX.First;
           While Not DMESTOQUE.ALX.Eof do
           Begin
	            If DMESTOQUE.Alx.FieldByName('OPERACAO').AsString<>'DVL'
               Then Begin
                   If (DMESTOQUE.Alx.RecordCount<>0) AND (DMESTOQUE.Alx.FieldByName('OPERACAO').AsString<>'DVL')
                   Then Begin//caso a tabela esteja vasia não pode apagar
	  	                //LOCALIZA E FILTRA ESTOUE CORRESPONDENTE
		                FiltraTabela(DMEstoque.TEstoque, 'ESTOQUE', 'COD_ESTOQUE', DMESTOQUE.ALX.FieldByName('COD_ESTOQUE').AsString, '');
                       FiltraTabela(DMEstoque.WSimilar, 'VWSIMILAR', 'COD_ESTOQUE', DMEstoque.ALX.FieldByName('COD_ESTOQUE').AsString, '');
                       FiltraTabela(DMServ.TPOrd, 'ITPRODORD', 'COD_ITPRODORD', DMESTOQUE.ALX.FieldByName('COD_ITPRODORD').AsString, '');
                       DMServ.TPOrd.Edit;
                       DMServ.TPOrd.FieldByName('OPERACAO').AsString:='DVL';
                       DMServ.TPOrd.FieldByName('COMISSAO').AsCurrency:=0;
                       DMServ.TPOrd.Post;
                       XCODLANEST:=InserReg(DMENTRADA.TLancENT, 'LANCENT', 'COD_LANENT');
                       DMENTRADA.TLancENT.FieldByName('COD_LANENT').AsInteger:=XCODLANEST;
                       DMENTRADA.TLancENT.FieldByName('COD_ESTOQUE').AsString:=DMESTOQUE.Testoque.FieldByName('COD_ESTOQUE').AsString;
                       DMENTRADA.TLancENT.FieldByName('COD_LOJA').AsString:=FMenu.LCODLOJA.Caption;
                       DMENTRADA.TLancENT.FieldByName('COD_USUARIO').AsString:=FMenu.LCODUSUARIO.Caption;
                       DMENTRADA.TLancENT.FieldByName('NUMNOTA').AsString:='CLD OS-'+DMServ.WOrdem.FieldByName('NUMERO').AsString;
                       DMENTRADA.TLancENT.FieldByName('MOTIVO').AsString:='Canc. O.S: '+DMServ.WOrdem.FieldByName('NUMERO').AsString+' /Cliente: '+DMServ.WOrdem.FieldByName('CLIENTE').AsString;
                       DMENTRADA.TLancENT.FieldByName('DT_LANCAMENTO').AsString:=DateToStr(Date());
                       DMENTRADA.TLancENT.FieldByName('DT_ESTOQUE').AsString:=DMServ.WOrdem.FieldByName('dtabert').AsString;
                       DMENTRADA.TLancENT.FieldByName('QUANTIDADE').AsCurrency:=DMServ.TPOrd.FieldByName('qtd').AsCurrency;
                       DMENTRADA.TLancENT.FieldByName('QTDANT').AsString:=DMESTOQUE.TEstoque.FieldByName('ESTFISICO').AsString;
                       DMENTRADA.TLancEnt.POST;
                       DMESTOQUE.TEstoque.Edit;
                       DMEstoque.TEstoque.FieldByName('ESTFISICO').Value:=DMEstoque.TEstoque.FieldByName('ESTFISICO').Value+DMENTRADA.TLancENT.FieldByName('QUANTIDADE').AsCurrency;
                       DMESTOQUE.TEstoque.POST;
                       DMESTOQUE.TransacEstoque.CommitRetaining;
                   End;
               End;
               DMESTOQUE.Alx.Next;
           End;
           Try
               // EDITANDO A ORDEM PARA LIBERAR, PQ ELA PODE ESTAR BLOQUEADA
               //FiltraTabela(DMServ.TOrd,'ORDEM','COD_ORDEM',IntToStr(XCOD_ORDEM),'');
               //DMServ.TOrd.Edit;
               //DMServ.TOrd.FieldByName('EDIT').AsString := '0';
               //DMServ.TOrd.Post; 
               DMServ.TAlx1.SQL.Clear;
               DMServ.TAlx1.SQL.Add('update ORDEM set EDIT = :EDIT');
               DMServ.TAlx1.SQL.Add('where COD_ORDEM = :OLD_COD_ORDEM');
               DMServ.TAlx1.ParamByName('EDIT').AsString := '0';
               DMServ.TAlx1.ParamByName('OLD_COD_ORDEM').AsInteger := XCOD_ORDEM;
               DMServ.TAlx1.ExecSQL;

               DMServ.IBT.CommitRetaining;
               DMESTOQUE.TransacEstoque.CommitRetaining;
               DMENTRADA.IBT.CommitRetaining;
               DMSAIDA.IBT.CommitRetaining;
           Except
               DMServ.IBT.RollbackRetaining;
               DMESTOQUE.TransacEstoque.RollbackRetaining;
               DMENTRADA.IBT.RollbackRetaining;
               DMSAIDA.IBT.RollbackRetaining;
           End;
           LiberaDados;
       End
       Else Begin
			Exit;
       End;
   End;
end;

procedure TFOrdem.CancelarFechamento1Click(Sender: TObject);
Var
	XCodPedidoTroca: String;
begin
  inherited;
   FiltraTabela(XTabela, 'ORDEM', 'COD_ORDEM', DMServ.WOrdem.FieldByName('COD_ORDEM').AsString, '');
	If DMServ.WOrdem.FieldByName('STATUS').AsString='CANCELADO'
   Then Begin
		Mensagem('NOTIFICAÇÃO AO USUÁRIO', 'Esta O.S. se encontra Cancelada!', '', 1, 1, False, 'a');
       Exit;
   End;

	If DMServ.WOrdem.FieldByName('STATUS').AsString<>'FECHADO'
   Then Begin
		Mensagem('NOTIFICAÇÃO AO USUÁRIO', 'Esta O.S. não se encontra fechada! Então você pode clicar em consultar e alterar suas informações', '', 1, 1, False, 'a');
       Exit;
   End;

   //se a ordem de servico jah foi exportada, nao sera possivel cancelar
   If DMMACS.TLoja.FieldByName('atividade').AsString = 'EQUIPE'
   Then   Begin
       If DMServ.WOrdem.FieldByName('EXPORTADO').AsString = '#'
       Then Begin
           Mensagem('   A T E N Ç Ã O   ','Esta Ordem de Serviço já foi exportada e portanto não pode ser cancelada.','',1,1,false,'I');
           Exit;
       End;
   End;

	//EFETUA CONTROLE DE ACESSO
   If ControlAccess('CANCPEDFECH', 'M')=False Then
  		Exit;

	If Mensagem('A T E N Ç Ã O', 'Deseja realmente Cancelar o Fechamento da O.S.'+#13+'Nº '+DMServ.WOrdem.FieldByName('NUMERO').AsString+'?'  , '', 2, 3, False, 'c')= 2
   Then Begin

       // verifica se o caixa estah aberto
       If DMCAIXA.VerifAbCaixa = false
       Then Begin
           Mensagem('   A T E N Ç Ã O   ','Para cancelar o fechamento da ordem é necessário o caixa estar aberto.','',1,1,false,'I');
           Exit;
       End;

       XCodPedidoTroca:=DMServ.WOrdem.FieldByName('COD_ORDEM').AsString;

       // verifica se a tabela comissao possui mais de um registro com o mesmo codigo de ordem
       DMServ.TAlx1.Close;
       DMServ.TAlx1.SQL.Clear;
       DMServ.TAlx1.SQL.Add('select count(comissao.cod_comissao) as contador from comissao where (comissao.cod_gerador = :codigo) and (comissao.gerador = ' + #39 + 'ORDEM' + #39 + ')');
       DMServ.TAlx1.ParamByName('codigo').AsInteger := DMServ.WOrdem.FieldByName('cod_ordem').AsInteger;
       DMServ.TAlx1.Open;

       // se a tabela comissao possuir mais de um registro, todos os registros são deletados
       If DMServ.TAlx1.FieldByName('contador').AsInteger = 1
       Then Begin
           DMFINANC.TAlx.Close;
           DMFINANC.TAlx.SQL.Clear;
           DMFINANC.TAlx.SQL.Add('delete from comissao where comissao.cod_gerador = :codigo');
           DMFINANC.TAlx.ParamByName('codigo').AsInteger := DMServ.WOrdem.FieldByName('cod_ordem').AsInteger;
           DMFINANC.TAlx.ExecSQL;
           DMFINANC.Transaction.CommitRetaining;
       End
       Else Begin
           Mensagem('   A T E N Ç Ã O   ','Verifique comissões','',1,1,false,'A');
       End;

       If FiltraTabela(DMServ.WORDEM, 'VWORDEM', 'COD_ORDEM', XCodPedidoTroca, '')=True
       Then Begin
           //REGISTRA COMANDO DO USUARIO
           Registra('ORDEM', 'C. FECH ORD', DMServ.WOrdem.FieldByName('DTABERT').AsString, 'Nº '+DMServ.TOrd.FieldByName('NUMERO').AsString+'-'+DMServ.WOrdem.FieldByName('CLIENTE').AsString, 'Vlr:'+DMServ.TOrd.FieldByName('totord').AsString+'-'+DMServ.WOrdem.FieldByName('equipamento').AsString);
			If CancelLanOrd(XCodPedidoTroca)=True
           Then Begin//Se foi possível cancelar/estornar todos os lançamentos realizados pelo pedido
				//DMServ.TOrd.EDIT;
           	//DMServ.TOrd.FieldByName('STATUS').AsString:='ABERTO';
               //DMServ.TOrd.FieldByName('EDIT').AsString := '0';
				//DMServ.TOrd.Post;
               DMServ.TAlx1.SQL.Clear;
               DMServ.TAlx1.SQL.Add('update ORDEM set EDIT = :EDIT, STATUS = :STATUS');
               DMServ.TAlx1.SQL.Add('where COD_ORDEM = :OLD_COD_ORDEM');
               DMServ.TAlx1.ParamByName('STATUS').AsString := 'ABERTO';
               DMServ.TAlx1.ParamByName('EDIT').AsString := '0';
               DMServ.TAlx1.ParamByName('OLD_COD_ORDEM').AsString := XCodPedidoTroca;
               DMServ.TAlx1.ExecSQL;

           End;
           Try
               DMServ.IBT.CommitRetaining;
               DMESTOQUE.TransacEstoque.CommitRetaining;
               DMENTRADA.IBT.CommitRetaining;
               DMSAIDA.IBT.CommitRetaining;
           Except
               DMServ.IBT.RollbackRetaining;
               DMESTOQUE.TransacEstoque.RollbackRetaining;
               DMENTRADA.IBT.RollbackRetaining;
               DMSAIDA.IBT.RollbackRetaining;
           End;
           If FiltraTabela(DMServ.WORDEM, 'VWORDEM', 'COD_ORDEM', XCodPedidoTroca, '')=True
           Then Begin
               BtnConsultar.Click;
           End;
       End
       Else Begin
			Exit;
       End;
   End;

end;

procedure TFOrdem.BtnDadosAdicClick(Sender: TObject);
begin
  inherited;
   // dados do pedido de venda
   XCodPedido:=IntToStr(XCOD_ORDEM);
   //DMServ.TOrd.Edit;
   //DMServ.TOrd.FieldByName('COD_CLIENTE').AsInteger := XCOD_CLIENTE;
   //DMServ.TOrd.Post;

   DMServ.TAlx1.SQL.Clear;
   DMServ.TAlx1.SQL.Add('update ORDEM set COD_CLIENTE = :COD_CLIENTE');
   DMServ.TAlx1.SQL.Add('where COD_ORDEM = :OLD_COD_ORDEM');
   DMServ.TAlx1.ParamByName('COD_CLIENTE').AsInteger := XCOD_CLIENTE;
   DMServ.TAlx1.ParamByName('OLD_COD_ORDEM').AsInteger := XCOD_ORDEM;
   DMServ.TAlx1.ExecSQL;

   DMServ.IBT.CommitRetaining;

   FiltraTabela(DMServ.TOrd, 'ORDEM','COD_ORDEM', XCodPedido,'');

  	//CRIA O FORMULARIO FISCAL
   Application.CreateForm(TFFiscal, FFiscal);

   //LIMPA TODAS AS INFORMACOES DA TELA
   FFiscal.FrmCfop.EDCodigo.Text:='';
   FFiscal.FrmCfop.EdDescricao.Text:='';
   FFiscal.FrmTransp.EDCodigo.Text:='';
   FFiscal.FrmTransp.EdDescricao.Text:='';
   FFiscal.XCOD_CFOP:=-1;
   FFiscal.EdBaseICMS.ValueNumeric:=0;
   FFiscal.EdVlrICMS.ValueNumeric:=0;
   FFiscal.EdBaseICMSSubs.ValueNumeric:=0;
   FFiscal.EdVlrICMSSubs.ValueNumeric:=0;
   FFiscal.EdVlrSeguro.ValueNumeric:=0;
   FFiscal.EdVlrIPI.ValueNumeric:=0;
   FFiscal.EdOutrasDesp.ValueNumeric:=0;
   FFiscal.EdVlrProd.ValueNumeric:=0;
   FFiscal.EdVlrNota.ValueNumeric:=0;
   FFiscal.CBFreteComp.Checked:=False;
   FFiscal.EdVlrFrete.ValueNumeric:=0;
   FFiscal.XCOD_TRANSP:=-1;
   FFiscal.EdQuantidade.ValueNumeric:=0;
   FFiscal.EdEspecie.Text:='';
   FFiscal.EdMarca.Text:='';
   FFiscal.EdNumero.Text:='';
   FFiscal.EDPlacaVeiculo.Text:='';
   FFiscal.EdUf.Text:='';
   FFiscal.EdPesoBruto.ValueNumeric:=0;
   FFiscal.EdPesoLiquido.ValueNumeric:=0;
   FFiscal.RBEmitente.Checked:=False;
   FFiscal.RBDestinatario.Checked:=False;
   FFiscal.EdVlrNota.ValueNumeric:=0;
   FFiscal.EDVLRICMSISENTO.ValueNumeric:=0;
//   FFiscal.MAdicionais.Lines.Clear;

   //VERFICA SE DEVE LANÇAR DOCUMENTO FISCAL PARA COMPRA OU PARA VENDA
   FFiscal.XTipo:='OS';
   DMESTOQUE.TSlave.Close;
   DMESTOQUE.TSlave.SQL.Clear;
   DMESTOQUE.TSlave.SQL.Add(' Select Sum(itprodord.total) as VALORTOTAL From itprodord ');
   DMESTOQUE.TSlave.SQL.Add(' Where (itprodord.cod_ordem = :CODPEDVENDA)');
   DMESTOQUE.TSlave.ParamByName('CODPEDVENDA').AsString:=XCodPedido;
   DMESTOQUE.TSlave.Open;

   //VERIFICA SE O PEDIDO JÁ POSSUE DOC FI
   If FiltraTabela(DMServ.TFiscOrd, 'docfisord', 'cod_docfiscord', '', '(cod_ORDEM='+#39+XCodPedido+#39+')')=True
   Then Begin
       //EDITAL FISCAL EXISTENTE
       DMServ.TFiscOrd.Edit;
       FFiscal.XCOD_CFOP:=DMServ.TFiscOrd.FieldByName('COD_CFOP').AsInteger;       
       FiltraTabela(DMESTOQUE.TCFOP, 'CFOP', 'COD_CFOP', DMServ.TFiscOrd.FieldByName('COD_CFOP').AsString, '');
       FFiscal.XSTATE:='EDIT';
       FFiscal.XCOD_FISCAL:=DMServ.TFiscOrd.FieldByName('cod_docfiscord').AsInteger;
       FFiscal.FrmCfop.EDCodigo.Text:=DMESTOQUE.TCFOP.FieldByName('CFOP').AsString;
       FFiscal.FrmCfop.EdDescricao.Text:=DMESTOQUE.TCFOP.FieldByName('DESCRICAO').AsString;
       FFiscal.EdDtEmissao.Date:=DMServ.TFiscOrd.FieldByName('DTEMISSAO').AsDateTime;
       FFiscal.EdDtEntSai.Date:=DMServ.TFiscOrd.FieldByName('DTENTSAID').AsDateTime;
       FFiscal.EdHora.Time:=DMServ.TFiscOrd.FieldByName('HORASAID').AsDateTime;
       FFiscal.EdBaseICMS.ValueNumeric:=DMServ.TFiscOrd.FieldByName('BASEICMS').AsCurrency;
       FFiscal.EdVlrICMS.ValueNumeric:=DMServ.TFiscOrd.FieldByName('VLRICMS').AsCurrency;
       FFiscal.EdBaseICMSSubs.ValueNumeric:=DMServ.TFiscOrd.FieldByName('BASCALSUBS').AsCurrency;
       FFiscal.EdVlrICMSSubs.ValueNumeric:=DMServ.TFiscOrd.FieldByName('VLRICMSUBS').AsCurrency;
       FFiscal.EdVlrSeguro.ValueNumeric:=DMServ.TFiscOrd.FieldByName('VLRSEG').AsCurrency;
       FFiscal.EdVlrIPI.ValueNumeric:=DMServ.TFiscOrd.FieldByName('VLRTOTIPI').AsCurrency;
       FFiscal.EdOutrasDesp.ValueNumeric:=DMServ.TFiscOrd.FieldByName('VLROUTRASDESP').AsCurrency;
       FFiscal.EdVlrProd.ValueNumeric:=DMESTOQUE.TSlave.FieldByName('VALORTOTAL').AsCurrency;
       FFiscal.EdVlrNota.ValueNumeric:=DMServ.TFiscOrd.FieldByName('VLRTOTDOCNF').AsCurrency;
       FFiscal.EDVLRICMSISENTO.ValueNumeric:=DMServ.TFiscOrd.FieldByName('VLRISENTOICMS').AsCurrency;
       If DMSAIDA.TFiscPV.FieldByName('FRETECOMP').AsString='1' Then
           FFiscal.CBFreteComp.Checked:=True
       Else
           FFiscal.CBFreteComp.Checked:=False;
       FFiscal.EdVlrFrete.ValueNumeric:=DMServ.TFiscOrd.FieldByName('VLRFRETE').AsCurrency;
       FFiscal.XCOD_TRANSP:=DMServ.TFiscOrd.FieldByName('COD_TRANSP').AsInteger;
       FFiscal.EdQuantidade.ValueNumeric:=DMServ.TFiscOrd.FieldByName('QUANTFRETE').AsCurrency;
       FFiscal.EdEspecie.Text:=DMServ.TFiscOrd.FieldByName('ESPECIEFRETE').AsString;
       FFiscal.EdMarca.Text:=DMServ.TFiscOrd.FieldByName('MARCAFRETE').AsString;
       FFiscal.EdNumero.Text:=DMServ.TFiscOrd.FieldByName('NUMCONHEC').AsString;
       FFiscal.EDPlacaVeiculo.Text:=DMServ.TFiscOrd.FieldByName('PLACA').AsString;
       FFiscal.EdUf.Text:=DMServ.TFiscOrd.FieldByName('UFPLACA').AsString;
       FFiscal.EdPesoBruto.ValueNumeric:=DMServ.TFiscOrd.FieldByName('PESOBRUTO').AsCurrency;
       FFiscal.EdPesoLiquido.ValueNumeric:=DMServ.TFiscOrd.FieldByName('PESOLIQ').AsCurrency;
//       FFiscal.MAdicionais.Lines.Text:=DMServ.TFiscOrd.FieldByName('OBS').AsString;
       If DMServ.TFiscOrd.FieldByName('FRETECONTA').AsString='1' Then
           FFiscal.RBEmitente.Checked:=True
       Else
           FFiscal.RBDestinatario.Checked:=False;
   End
   Else Begin
       //INSERE NOVO DOCUMENTO FISCAL
       DMServ.TFiscOrd.FieldByName('cod_docfiscord').AsInteger:=InserReg(DMServ.TFiscOrd, 'docfisord', 'cod_docfiscord');
//       DMServ.TFiscOrd.FieldByName('cod_docfiscord').AsInteger:=FFiscal.XCOD_FISCAL;
       DMServ.TFiscOrd.FieldByName('COD_ORDEM').AsString:=XCodPedido;
       DMServ.TFiscOrd.Post;
       DMServ.IBT.CommitRetaining;
       FFiscal.EdVlrProd.ValueNumeric:=DMESTOQUE.TSlave.FieldByName('VALORTOTAL').AsCurrency;
       FFiscal.EdVlrNota.ValueNumeric:=XVLRFISCAL;
//       FFiscal.MAdicionais.Lines.Text:='Ord: '+XTabela.FieldByName('NUMERO').AsString;
       FFiscal.XSTATE:='INSERT';
   End;
   // função para recalcular nota fiscal
   If RecalcFiscal('OS',StrToInt(XCodPedido))=false
   Then begin
       Mensagem('   A T E N Ç Ã O   ','Erro de cálculo fiscal. Tente novamente, mas se o problema persistir, entre em contato com suporte.','',1,1,false,'I');
       Exit;
   End;
   FFiscal.EdBaseICMS.ValueNumeric:=DMServ.TFiscOrd.FieldByName('BASEICMS').AsCurrency;
   FFiscal.EdVlrICMS.ValueNumeric:=DMServ.TFiscOrd.FieldByName('VLRICMS').AsCurrency;
   FFiscal.EdBaseICMSSubs.ValueNumeric:=DMServ.TFiscOrd.FieldByName('BASCALSUBS').AsCurrency;
   FFiscal.EdVlrICMSSubs.ValueNumeric:=DMServ.TFiscOrd.FieldByName('VLRICMSUBS').AsCurrency;
   FFiscal.EdVlrIPI.ValueNumeric:=DMServ.TFiscOrd.FieldByName('VLRTOTIPI').AsCurrency;
   FFiscal.EdVlrProd.ValueNumeric:=DMServ.TFiscOrd.FieldByName('VLRTOTPROD').AsCurrency;
   FFiscal.EdVlrNota.ValueNumeric:=DMServ.TFiscOrd.FieldByName('VLRTOTDOCNF').AsCurrency;
   FFiscal.EDVLRICMSISENTO.ValueNumeric:=DMServ.TFiscOrd.FieldByName('VLRISENTOICMS').AsCurrency;

   FiltraTabela(DMServ.TOrd,'ordem','COD_ordem',XCodPedido,'');

   FFiscal.ShowModal;
   FiltraSlave;
end;

procedure TFOrdem.MenuItem5Click(Sender: TObject);
Var
	XNumero: String;
   XCODESTADOEMP, XCODESTADOCLI: Integer;
begin
  inherited;
  If InputQuery('Iserindo Nº Doc. Fiscal','Informe o novo Nº Fiscal:', XNumero)
  Then Begin
  	If XNumero<>''
   Then Begin
		If StrToInt(XNumero)<=0
       Then Begin
			//Numero tem q ser diferente de ''
			Mensagem('A T E N Ç Ã O', 'O Número informado tem que ser um valor numérico maior q zero!', '', 1, 1, False, 'i');
			Exit;
       End;
   End
  	Else Begin
		//Numero tem q ser diferente de ''
		Mensagem('A T E N Ç Ã O', 'O Número informado tem que ser um valor numérico maior q zero!', '', 1, 1, False, 'i');
		Exit;
   End;
   //Verifik c o numero do documento jah naum esta cadastrado
   DMServ.TFiscOrd.Close;
   DMServ.TFiscOrd.SQL.Clear;
   DMServ.TFiscOrd.SQL.Add(' select * from docfisord where docfisord.numdocfis=:NUMDOC ');
	DMServ.TFiscOrd.ParamByName('NUMDOC').AsString:=XNumero;
	DMServ.TFiscOrd.Open;
   IF Not DMServ.TFiscOrd.IsEmpty
   Then Begin
		//Caso tenha encontrado um mesmo numero de documento fiscal cadastrado
		Mensagem('A T E N Ç Ã O', 'O Número informado já se encontra cadastrado!'+#13+'Informe um Nº ainda não cadastrado!', '', 1, 1, False, 'i');
		Exit;
   End;
	If XSQLTABELA='ORDEM'
	Then  Begin//Procedimentos para vvendas
		If FiltraTabela(DMServ.TOrd, 'ORDEM', 'cod_ordem', DMServ.WOrdem.FieldByName('COD_ORDEM').AsString, '')=True
       Then Begin
           If (DMServ.TOrd.FieldByName('FISCO').AsString='NF') OR (DMServ.TOrd.FieldByName('FISCO').AsString='ECF')
           Then Begin
           	//Caso o pedido tenha passado por impressao fiscal... o mesmo naum deve ser alterado
       		Mensagem('A T E N Ç Ã O', 'Esta O.S. passou por uma impressão fiscal e não pode ser alterado!', '', 1, 1, False, 'i');
				Exit;
           End;
           //seleciona empresa para verificar estado
           DMMACS.TALX.Close;
           DMMACS.TALX.SQL.Clear;
           DMMACS.TALX.SQL.Add(' Select * from empresa where empresa.cod_empresa=:CODEMPRESA ');
           DMMACS.TALX.ParamByName('CODEMPRESA').AsString:=FMenu.LCODEMPRESA.Caption;
           DMMACS.TALX.Open;
           If DMMACS.TALX.IsEmpty
           Then Begin
           	//Caso o pedido tenha passado por impressao fiscal... o mesmo naum deve ser alterado
       		Mensagem('A T E N Ç Ã O', 'A empresa não foi selecionada', '', 1, 1, False, 'i');
				Exit;
           End
           Else Begin
               XCODESTADOEMP:=DMMACS.TALX.FieldByName('COD_CIDADE').AsInteger;
           	//seleciona empresa para verificar estado
           	DMMACS.TALX.Close;
           	DMMACS.TALX.SQL.Clear;
           	DMMACS.TALX.SQL.Add(' Select * from cidade where cidade.cod_cidade=:CODEMPRESA ');
           	DMMACS.TALX.ParamByName('CODEMPRESA').AsInteger:=XCODESTADOEMP;
           	DMMACS.TALX.Open;
           	If DMMACS.TALX.IsEmpty
           	Then Begin
       			Mensagem('A T E N Ç Ã O', 'A empresa deve possuir cidade e estado cadastrado', '', 1, 1, False, 'i');
					Exit;
               End
               Else Begin
                   XCODESTADOEMP:=DMMACS.TALX.FieldByName('cod_estado').AsInteger;
	            End;
           End;
           //seleciona cliente para verificar estado
           DMMACS.TALX.Close;
           DMMACS.TALX.SQL.Clear;
           DMMACS.TALX.SQL.Add(' Select * from vwcliente where vwcliente.cod_cliente=:CODEMPRESA ');
           DMMACS.TALX.ParamByName('CODEMPRESA').AsString:=DMServ.TOrd.FieldByName('COD_CLIENTE').AsString;
           DMMACS.TALX.Open;
           If DMMACS.TALX.IsEmpty
           Then Begin
           	//Caso o pedido tenha passado por impressao fiscal... o mesmo naum deve ser alterado
       		Mensagem('A T E N Ç Ã O', 'O cliente não foi selecionado para verificar o estado', '', 1, 1, False, 'i');
				Exit;
           End
           Else Begin
               XCODESTADOEMP:=DMMACS.TALX.FieldByName('COD_CIDADE').AsInteger;
           	//seleciona empresa para verificar estado
           	DMMACS.TALX.Close;
           	DMMACS.TALX.SQL.Clear;
           	DMMACS.TALX.SQL.Add(' Select * from cidade where cidade.cod_cidade=:CODEMPRESA ');
           	DMMACS.TALX.ParamByName('CODEMPRESA').AsInteger:=XCODESTADOEMP;
           	DMMACS.TALX.Open;
           	If DMMACS.TALX.IsEmpty
           	Then Begin
           		//Caso o pedido tenha passado por impressao fiscal... o mesmo naum deve ser alterado
       			Mensagem('A T E N Ç Ã O', 'A empresa deve possuir cidade e estado cadastrado', '', 1, 1, False, 'i');
					Exit;
               End
               Else Begin
                   XCODESTADOEMP:=DMMACS.TALX.FieldByName('cod_estado').AsInteger;
	            End;
           End;
           //SELECIONA CFOP PARA INSERÇÃO
			If FiltraTabela(DMESTOQUE.TCFOP, 'CFOP', 'COD_CFOP', DMMACS.TLoja.FieldByName('COD_CFOPAUTO').AsString, '')=False
           Then Begin
           	//Caso o pedido tenha passado por impressao fiscal... o mesmo naum deve ser alterado
       		Mensagem('A T E N Ç Ã O', 'Informe na Configuração de loja o CFOP para Inserção de Nº Fiscal', '', 1, 1, False, 'i');
				Exit;
           End;
   		//VERIFICA SE O PEDIDO JÁ POSSUE DOC FI
   		If FiltraTabela(DMServ.TFiscOrd, 'docfisord', 'cod_docfiscord', '', '(cod_ordem='+#39+DMServ.TOrd.FieldByName('cod_ordem').AsString+#39+')')=True
   		Then Begin
       		//EDITAL FISCAL EXISTENTE
       		DMServ.TFiscOrd.Edit;
       		DMServ.TFiscOrd.FieldByName('cod_cfop').AsInteger:=DMESTOQUE.TCFOP.FieldByName('COD_CFOP').AsInteger;
       		DMServ.TFiscOrd.FieldByName('numdocfis').AsString:=XNumero;
       		DMServ.TFiscOrd.FieldByName('dtentsaid').AsString:=DMServ.TOrd.FieldByName('dtabert').AsString;
       		DMServ.TFiscOrd.FieldByName('dtemissao').AsString:=DMServ.TOrd.FieldByName('dtfech').AsString;
       		DMServ.TFiscOrd.FieldByName('vlrtotdocnf').AsCurrency:=DMServ.TOrd.FieldByName('totord').AsCurrency;
       		DMServ.TFiscOrd.FieldByName('vlrtotprod').AsCurrency:=DMServ.TOrd.FieldByName('totprod').AsCurrency;
       		DMServ.TFiscOrd.FieldByName('SERIE').AsString:='55';
       		DMServ.TFiscOrd.FieldByName('TIPODOCFIS').AsString:=DMMACS.TLoja.FieldByName('MODELONF').AsString;
       		DMServ.TFiscOrd.Post;
               DMServ.TOrd.Edit;
               DMServ.TOrd.FieldByName('NUMFISCAL').AsString:=XNumero;
               Try
                   DMServ.TOrd.FieldByName('NUMFISCALINT').AsInteger:=DMServ.TOrd.FieldByName('NUMFISCAL').AsInteger;
               Except
                   DMServ.TOrd.FieldByName('NUMFISCALINT').AsInteger:=0;
               End;
               DMServ.TOrd.Post;
           End
           Else Begin
       		//INSERE NOVO DOCUMENTO FISCAL
   			DMServ.TFiscOrd.FieldByName('cod_docfiscord').AsInteger:=InserReg(DMServ.TFiscOrd, 'docfisord', 'cod_docfiscord');
   			DMServ.TFiscOrd.FieldByName('COD_ORDEM').AsString:=DMServ.TOrd.FieldByName('cod_ordem').AsString;
       		DMServ.TFiscOrd.FieldByName('cod_cfop').AsInteger:=DMESTOQUE.TCFOP.FieldByName('COD_CFOP').AsInteger;
       		DMServ.TFiscOrd.FieldByName('numdocfis').AsString:=XNumero;
       		DMServ.TFiscOrd.FieldByName('dtentsaid').AsString:=DMServ.TOrd.FieldByName('dtabert').AsString;
       		DMServ.TFiscOrd.FieldByName('dtemissao').AsString:=DMServ.TOrd.FieldByName('dtfech').AsString;
       		DMServ.TFiscOrd.FieldByName('vlrtotdocnf').AsCurrency:=DMServ.TOrd.FieldByName('totord').AsCurrency;
       		DMServ.TFiscOrd.FieldByName('SERIE').AsString:='55';
       		DMServ.TFiscOrd.FieldByName('TIPODOCFIS').AsString:=DMMACS.TLoja.FieldByName('MODELONF').AsString;
               DMServ.TFiscOrd.Post;
               DMServ.TOrd.Edit;
				DMServ.TOrd.FieldByName('NUMFISCAL').AsString:=XNumero;
               Try
                   DMServ.TOrd.FieldByName('NUMFISCALINT').AsInteger:=DMServ.TOrd.FieldByName('NUMFISCAL').AsInteger;
               Except
                   DMServ.TOrd.FieldByName('NUMFISCALINT').AsInteger:=0;
               End;
               DMServ.TOrd.Post;
           End;
           DMServ.IBT.CommitRetaining;
           LiberaDados;
       end;
   end;
  End;
end;

procedure TFOrdem.MenuItem6Click(Sender: TObject);
begin
  inherited;
	If Mensagem('CONFIRMAÇÃO DO USUÁRIO', 'Deseja realmente remover a marcação do Nº Fiscal?'+#13+'Ordem Nº '+DMServ.WOrdem.FieldByName('NUMERO').AsString+'?'  , '', 2, 3, False, 'c')= 2
   Then Begin
		If XSQLTABELA='ORDEM'
		Then  Begin//Procedimentos para vvendas
			If FiltraTabela(DMServ.TOrd, 'ORDEM', 'COD_ORDEM', DMServ.WOrdem.FieldByName('COD_ORDEM').AsString, '')=True
       	Then Begin
           	If (DMServ.TOrd.FieldByName('FISCO').AsString='NF') OR (DMServ.TOrd.FieldByName('FISCO').AsString='ECF')
           	Then Begin
           		//Caso o pedido tenha passado por impressao fiscal... o mesmo naum deve ser alterado
       			Mensagem('A T E N Ç Ã O', 'Esta ordem passou por uma impressão fiscal e não pode ser alterado!', '', 1, 1, False, 'i');
					Exit;
           	End;
           End;
   		//VERIFICA SE O PEDIDO JÁ POSSUE DOC FI
   		If FiltraTabela(DMServ.TFiscOrd, 'DOCFISORD', 'cod_docfiscord', '', '(cod_ordem='+#39+DMServ.TOrd.FieldByName('COD_ORDEM').AsString+#39+')')=True
   		Then Begin
               DMServ.TFiscOrd.Delete;
               DMServ.TOrd.Edit;
               DMServ.TOrd.FieldByName('NUMFISCAL').AsString:='';
               DMServ.TOrd.FieldByName('NUMFISCALINT').AsInteger:=0;
               DMServ.TOrd.Post;
           End
           Else Begin
               DMServ.TOrd.Edit;
               DMServ.TOrd.FieldByName('NUMFISCAL').AsString:='';
               DMServ.TOrd.FieldByName('NUMFISCALINT').AsInteger:=0;
               DMServ.TOrd.Post;
           End;
           DMServ.IBT.CommitRetaining;
           LiberaDados;
       end;
   End;
end;

procedure TFOrdem.Cupom1Click(Sender: TObject);
begin
  inherited;
   //EFETUA CONTROLE DE ACESSO
   If ControlAccess('RELFECHORD', 'M')=False Then
  		Exit;

   //FILTRA EMPRESA PARA IMPRIMIR CABEÇALHO
   If FiltraTabela(DMMACS.TEmpresa, 'EMPRESA', 'COD_EMPRESA', FMenu.LCODEMPRESA.Caption, '')=False Then
   	Exit;

   //FILTRA CLIENTE PARA ENCONTRAR PESSOA
   If FiltraTabela(DMPESSOA.TCliente, 'CLIENTE', 'COD_CLIENTE', DMSERV.WOrdem.FieldByNAme('COD_CLIENTE').AsString, '')=False Then
		Exit;

   //FILTRA PESSOA PARA IMPRESSÃO DE CLIENTE
   If FiltraTabela(DMPESSOA.TPessoa, 'PESSOA', 'COD_PESSOA', DMPESSOA.TCliente.FieldByNAme('COD_PESSOA').AsString, '')=False Then
   	Exit;

   //FILTRA CIDADE DO CLIENTE
   If FiltraTabela(DMGEOGRAFIA.TCidade, 'CIDADE', 'COD_CIDADE', DMPESSOA.TPessoa.FieldByNAme('COD_CIDADE').AsString, '')=False Then

   //FILTRA TELEFONE PARA IMPRESSÃO DE CLIENTE
   FiltraTabela(DMPESSOA.TALX, 'TELEFONE', 'COD_PESSOA', DMPESSOA.TPessoa.FieldByNAme('COD_PESSOA').AsString, '');

   //FILTRA EQUIPAMENTO PARA IMPRESSÃO
   If FiltraTabela(DMPESSOA.TEquip, 'EQUIPAMENTO', 'COD_EQUIPAMENTO', DMSERV.WOrdem.FieldByNAme('COD_EQUIPAMENTO').AsString, '')=False Then
		Exit;

   //FILTRA ORDEM PARA IMPRESSÃO
   If FiltraTabela(DMSERV.TOrd, 'ORDEM', 'COD_ORDEM', DMSERV.WOrdem.FieldByNAme('COD_ORDEM').AsString, '')=False Then
   	Exit;

   //FILTRA FUNCIONARIO RESPONSAVEL
   FiltraTabela(DMPESSOA.VWFuncionario, 'VWFUNCIONARIO', 'COD_FUNC', IntToStr(DMSERV.WOrdem.FieldByNAme('COD_FUNCIONARIO').AsInteger) , '');


   XCOD_ORDEM:=DMSERV.WOrdem.fieldbyname('COD_ORDEM').AsInteger;
   //FILTRA PRODUTOS E SERVIÇOS
	FiltraSlave;

	PadraoImp(DMMACS.TLoja.FieldByName('IMPTHERMAL').AsString);   
	FSRel.LoadFromFile('C:\MZR\MACS\Rel\FrfFechOrdemCupom.frf');
	FSRel.ShowReport;
	RetPadraoImp;   
end;
procedure TFOrdem.BitBtn15Click(Sender: TObject);
begin
  inherited;
	If Mensagem('A T E N Ç Ã O !', 'Deseja solicitar senha de um administrador para abrir a gaveta?', '', 2, 3, False, 'c')= 2
	Then Begin
		AbrirForm(TFSENHA, FSENHA, 0);
		//repassa resultado da tela de autenticação de senha para as variáveis de controle
		If XAlxResult=True
       Then Begin
			//Abre gaveta
           ecfOpenGaveta;
       End
       Else Begin
			Mensagem('OPÇÃO BLOQUEADA', 'A Senha digitada não é de um administrador do sistema', '', 1, 1, true, 'a');
       End;
   End;
end;

procedure TFOrdem.DbEstadoEquipExit(Sender: TObject);
begin
  inherited;
	If DbEstadoEquip.Text='Deslacrado'
   Then Begin
       DBOBS.Lines.add(DMMACS.TLoja.FieldByName('TEXTOGARANTIA').AsString);
   End;
end;

procedure TFOrdem.DBLOCALATExit(Sender: TObject);
begin
  inherited;
	If DBLOCALAT.Text='EXTERNO PG'
   Then Begin
		//verifica se jah existe despesas de taxa de deslocamento inserida
   	//FILTRA DESPESAS
   	DMESTOQUE.TDesp.Close;
   	DMESTOQUE.TDesp.SQL.Clear;
   	DMESTOQUE.TDesp.SQL.Add('select * From despadic Where (despadic.gerador='+#39+'ORDEM'+#39+') AND (despadic.cod_gerador=:COD_GERADOR) AND (despadic.despesa=:DESPESA)');
		DMESTOQUE.TDesp.ParamByName('COD_GERADOR').AsInteger:=XCOD_ORDEM;
		DMESTOQUE.TDesp.ParamByName('DESPESA').AsString:=DMMACS.TLoja.FieldByName('desc_taxa_desloca').AsString;
		DMESTOQUE.TDesp.Open;
       If DMESTOQUE.TDesp.IsEmpty
       Then Begin
			XCOD_ITDESP:=InserReg(DMESTOQUE.TDesp, 'DESPADIC', 'COD_DESPADIC');
   		DMESTOQUE.TDesp.FieldByName('COD_DESPADIC').AsInteger:=XCOD_ITDESP;
   		DMESTOQUE.TDesp.FieldByName('COD_GERADOR').AsInteger:=XCOD_ORDEM;
   		DMESTOQUE.TDesp.FieldByName('GERADOR').AsString:='ORDEM';
   		DMESTOQUE.TDesp.FieldByName('DESPESA').AsString:=DMMACS.TLoja.FieldByName('desc_taxa_desloca').AsString;
   		DMESTOQUE.TDesp.FieldByName('MARCA').AsString:='';
   		DMESTOQUE.TDesp.FieldByName('UNIDADE').AsString:='UN';
   		DMESTOQUE.TDesp.FieldByName('QTD').AsCurrency:=1;
   		DMESTOQUE.TDesp.FieldByName('VLRREAL').AsCurrency:=DMMACS.TLoja.FieldByName('vlr_taxa').AsCurrency;
   		DMESTOQUE.TDesp.FieldByName('VLRFINAL').AsCurrency:=DMMACS.TLoja.FieldByName('vlr_taxa').AsCurrency;
   		DMESTOQUE.TDesp.FieldByName('VLRTOTFIN').AsCurrency:=DMMACS.TLoja.FieldByName('vlr_taxa').AsCurrency;
   		DMESTOQUE.TDesp.FieldByName('LUCMOE').AsCurrency:=0;
   		DMESTOQUE.TDesp.FieldByName('LUCPER').AsCurrency:=0;
   		DMESTOQUE.TDesp.Post;
   		DMESTOQUE.TransacEstoque.CommitRetaining;
       End;
   End;
end;


//busca o cadastro de equipe q será responsavel pelo serviço q esta sendo inserido
procedure TFOrdem.FrmEquipeBTNOPENClick(Sender: TObject);
begin
//  inherited;
//  FrmEquipe.BTNOPENClick(Sender);
  if AbrirForm(TFCadEquipe, FCadEquipe, 1)='Selected'
   then begin
       FrmEquipe.EDCodigo.Text:= DMPESSOA.TALX1.fieldbyname('Cod_Equipe').AsString;
       FrmEquipe.EdDescricao.Text:=DMPESSOA.TALX1.fieldbyname('descricao').AsString;
       FrmEquipe.Visible:=True;
       FrmEquipe.BringToFront;
       BtnInserir.SetFocus;
   end;
end;

procedure TFOrdem.FBEquipPlacaBTNOPENClick(Sender: TObject);
begin
  inherited;
	FiltraTabela(DMPESSOA.TEquip, 'EQUIPAMENTO', '', '', ' ORDER BY DESCRICAO');//LIBERA TODOS OS REGISTROS PARA CONSULTA
   If AbrirForm(TFCadEquipamento, FCadEquipamento, 1)='Selected'
   Then Begin
       XCOD_EQUIPAMENTO:=DMPESSOA.TEquip.FieldByName('COD_EQUIPAMENTO').AsInteger;
 		FBEquipPlaca.EDCodigo.Text:=DMPESSOA.TEquip.FieldByName('PLACA').AsString;
       FBEquipPlaca.EdDescricao.Text:=DMPESSOA.TEquip.FieldByName('DESCRICAO').AsString;
       FBEquipPlaca.Visible:=true;
       FBEquipPlaca.BringToFront;
       // ativa o groupbox de kilometragem
       GBKM.Enabled := true;

       // SELECIONA OS DADOS DA TABELA EQUIPAMENTO COM O MESMO CODIGO
       FiltraTabela(DMPESSOA.TEquip,'EQUIPAMENTO','COD_EQUIPAMENTO',IntToStr(XCOD_EQUIPAMENTO),'');

       // REPASSA O VALOR DO CAMPO "KMATUAL" PARA EDIT
       EDKM.Text := DMPESSOA.TEquip.FieldByName('KMATUAL').AsString;
       CBUnid.Text := DMPESSOA.TEquip.FieldByName('unidrodagem').AsString;

   End
   Else Begin
       XCOD_EQUIPAMENTO:=-1;
 		FBEquipPlaca.EDCodigo.Text:='';
       FBEquipPlaca.EdDescricao.Text:='';
       // desativa o groupbox de kilometragem
       GBKM.Enabled := false;
       CBUnid.Text := '';
       EDKM.Text := '';
   End;
   FrmCliente.Repaint;
   FrmConta.Repaint;
   FrmContaServ.Repaint;
   FrmFormPag.Repaint;
   FBEquipPlaca.Repaint;
   FrmMoeda.Repaint;
   FrmResponsavel.Repaint;
   FrmVendedor.Repaint;
end;



//insere serviço/despesa na grid e na tabela despesa
procedure TFOrdem.BtnInserirClick(Sender: TObject);
begin
  inherited;
     begin
       // se for para ordem de serviço da GUINCHOMAQ, entra na proxima condição
       If (DMMACS.TLoja.FieldByName('ORDEMLOCA_GUINDASTE').AsString = '0') or (DMMACS.TLoja.FieldByName('ORDEMLOCA_GUINDASTE').AsString = '')
       Then Begin

           // eh necesario informar a descricao de uma equipe
           If EDespesa.Text = ''
           Then Begin
               Mensagem('   A T E N Ç Ã O   ','É necessário informar a descrição do serviço.','',1,1,false,'I');
               EDespesa.SetFocus;
               Exit;
           End;

           // se o servico nao possuir valor eh exibido uma mensagem para o usuario se ele tem certeza que deseja inserir um servico sem valor
           If EValor.Text = '0,00'
           Then Begin
               If Mensagem('   A T E N Ç Ã O   ','O serviço não possui valor atrelado. Deseja continuar ?','',2,3,false,'A') = 3
               Then Begin
                   EValor.SetFocus;
                   Exit;
               End;
           End;

           // se o serviço possui valor, eh necessario informar a quantidade
           If (EQtd.Text = '0,00') and (EValor.Text <> '0,00')
           Then Begin
               Mensagem('   A T E N Ç Ã O   ','Informe a quantidade','',1,1,false,'I');
               EQtd.SetFocus;
               Exit;
           End;

           // eh necessario selecionar uma equipe p serviço
           If FrmEquipe.EDCodigo.Text = ''
           Then Begin
               Mensagem('   A T E N Ç Ã O   ','Selecione uma equipe','',1,1,false,'I');
               Exit;
           End;

           FiltraTabela(DMESTOQUE.TDesp,'DESPADIC','COD_GERADOR','','(COD_GERADOR = ' + IntToStr(XCOD_ORDEM) + ') AND (GERADOR = ' + #39 + 'ORDEM' + #39 + ')');

           XCOD_ITDESP:=InserReg(DMESTOQUE.TDesp, 'DESPADIC', 'COD_DESPADIC');
           DMESTOQUE.TDesp.FieldByName('COD_DESPADIC').AsInteger:=XCOD_ITDESP;
           DMESTOQUE.TDesp.FieldByName('DESPESA').AsString:=EDespesa.Text;
           DMESTOQUE.TDesp.FieldByName('QTD').AssTRING:=EQtd.Text;
           DMESTOQUE.TDesp.FieldByName('VLRFINAL').AsCurrency:=EValor.ValueNumeric;
           DMESTOQUE.TDesp.FieldByName('VLRTOTFIN').AsCurrency:=ETotal.ValueNumeric;
           DMESTOQUE.TDesp.FieldByName('DESCONTO').Asstring:=EDesc.text;
           DMESTOQUE.TDesp.FieldByName('COD_EQUIPE').AsString:=FrmEquipe.EDCodigo.Text;
           DMESTOQUE.TDesp.FieldByName('gerador').AsString:='ORDEM';
           DMESTOQUE.TDesp.FieldByName('cod_gerador').AsInteger:= XCOD_ORDEM;

           // BUSCA OS DADOS DA TABELA USUARIO PARA SELECIONAR O FUNCIONARIO VENDEDOR
           FiltraTabela(DMMACS.TUsuario,'USUARIO','CODUSUARIO',FMenu.LCODUSUARIO.Caption,'');

           FiltraTabela(DMPESSOA.TFuncionario,'FUNCIONARIO','COD_FUNC',DMMACS.TUsuario.FieldByname('COD_FUNCIONARIO').AsString,'');

           DMESTOQUE.TDesp.FieldByName('COD_FUNCIONARIO').AsInteger := DMPESSOA.TFuncionario.FieldByname('cod_func').AsInteger;

           //Tenta gravar as informações
           Try
               DMESTOQUE.TDesp.Post;
               DMESTOQUE.TransacEstoque.CommitRetaining;
               EDespesa.SetFocus;
           Except
               DMESTOQUE.TransacEstoque.RollbackRetaining;
           End;
           //Filtra slaves e calcula total
           FiltraSlave;
           LimpaLabelsEquipe;
           EDespesa.SetFocus;
       End
       Else Begin
           // SE NAO FOI INFORMAD A DATA
           If EDData.Text = '  /  /    '
           Then begin
               Mensagem('   A T E N Ç Ã O   ', 'Informe a data.', '',1, 1, True, 'I');
               EDData.SetFocus;
               Exit;
           end;

           XDiaSemana := DayOfWeek(StrToDateTime(EDData.Text)); //Retorna um número inteiro que representa o dia da semana

           // dados do equipamento
           FiltraTabela(DMPESSOA.TEquip,'EQUIPAMENTO','PLACA',EdPlaca.Text,'');

           DMServ.TItensLocacao.Close;
           DMServ.TItensLocacao.SQL.Clear;
           DMServ.TItensLocacao.SQL.Add('select * from itens_locacao');
           DMServ.TItensLocacao.Open;

           XCOD_ITSERV := InserReg(DMServ.TItensLocacao,'ITENS_LOCACAO','COD_LOCACAO');
           DMServ.TItensLocacao.FieldByName('COD_LOCACAO').AsInteger := XCOD_ITSERV;
           DMServ.TItensLocacao.FieldByName('COD_EQUIPAMENTO').AsInteger := DMPESSOA.TEquip.FieldByname('cod_EQUIPAMENTO').AsInteger;
           DMServ.TItensLocacao.FieldByName('COD_MOTORISTA').AsString := FrmMotorista.EDCodigo.Text;

           If HMatIni.Text <> '  :  ' Then
               DMServ.TItensLocacao.FieldByName('HMAT_INI').AsString := HMatIni.Text;
           If HMatFim.Text <> '  :  ' Then
               DMServ.TItensLocacao.FieldByName('HMAT_FIM').AsString := HMatFim.Text;
           If HVespIni.Text <> '  :  ' Then
               DMServ.TItensLocacao.FieldByName('HVESP_INI').AsString := HVespIni.Text;
           If HVespFim.Text <> '  :  ' Then
               DMServ.TItensLocacao.FieldByName('HVESP_FIM').AsString := HVespFim.Text;

           DMServ.TItensLocacao.FieldByName('cod_ordem').AsInteger := XCOD_ORDEM;
           DMServ.TItensLocacao.FieldByName('COD_SERVICO').AsInteger := DMPESSOA.TEquip.FieldByname('cod_servico').AsInteger;
           DMServ.TItensLocacao.FieldByName('DIA_SEMANA').AsString := Dia_Semana(XDiaSemana);
           DMServ.TItensLocacao.FieldByName('VLRSERV_COBRADO').AsString := EDValor.Text;
           DMServ.TItensLocacao.FieldByName('VLRKM_COBRADO').AsString := EdVlrKm.Text;

           If EDHrMin.Text <> '  :  :  ' Then
               DMServ.TItensLocacao.FieldByName('HORA_MINIMA').AsString := EDHrMin.Text;

           DMServ.TItensLocacao.FieldByName('DATA').AsString := EDData.Text;

           // VERIFICA SE O CHECKBOX DO SERVICO ESTAH SELECIONADO
           If CBPrecoTabela.Checked = true Then
               DMServ.TItensLocacao.FieldByName('TABPRECOSERV_ATIVO').AsInteger := 1
           Else
               DMServ.TItensLocacao.FieldByName('TABPRECOSERV_ATIVO').AsInteger := 0;

           // VERIFICA SE O CHECKBOX DO KM ESTAH SELECIONADO
           If CBPrecoKm.Checked = true Then
               DMServ.TItensLocacao.FieldByName('TABPRECOKM_ATIVO').AsInteger := 1
           Else
               DMServ.TItensLocacao.FieldByName('TABPRECOKM_ATIVO').AsInteger := 0;

           // se estiver selecionado o preco vai vir da tabela "TABELA_PRECO"
           If CBPrecoTabela.Checked = true
           Then begin
               // busca o preço final do serviço na tabela TABELA_PRECO e ITENS_LOCACAO
               BuscaPreco;

               If DMServ.Alx.FieldByName('VLR_NORMAL').AsString <> '' Then
                   // VALOR NORMAL DA HORA DE SERVICO CADASTRADO NA TABELA DE PRECO
                   DMServ.TItensLocacao.FieldByName('VLR_NORMAL').AsString := FormatFloat('0.00',DMServ.Alx.FieldByName('VLR_NORMAL').AsCurrency)
               Else
                   DMServ.TItensLocacao.FieldByName('VLR_NORMAL').AsCurrency := 0;

               If DMServ.Alx.FieldByName('VLR_HORAEXTRA').AsString <> '' Then
                   // VALOR DA HORA EXTRA DO SERVICO CADASTRADO NA TABELA DE PRECO
                   DMServ.TItensLocacao.FieldByName('VLR_EXTRA').AsString := FormatFloat('0.00',DMServ.Alx.FieldByName('VLR_HORAEXTRA').AsCurrency)
               Else
                   DMServ.TItensLocacao.FieldByName('VLR_EXTRA').AsCurrency := 0;

           End
           Else Begin

               // verifica se o equipamento possui servico
               If DMPESSOA.TEquip.FieldByName('cod_servico').AsString <> ''
               Then Begin

                   FiltraTabela(DMServ.TSubserv,'SUBSERVICO','COD_SUBSERVICO',DMPESSOA.TEquip.FieldByName('cod_servico').AsString,'');

                   // VALOR NORMAL DA HORA DE SERVICO
                   DMServ.TItensLocacao.FieldByName('VLR_NORMAL').AsString := DMSERV.TSubserv.FieldByName('vlr_normal').AsString;

                   // VALOR DA HORA EXTRA DO SERVICO
                   DMServ.TItensLocacao.FieldByName('VLR_EXTRA').AsCurrency := DMSERV.TSubserv.FieldByName('vlr_extra').AsCurrency;
               End;

           End;

           If EDHNormais.Text <> '  :  :  ' Then
               DMServ.TItensLocacao.FieldByName('HRS_NORMAIS').AsString := copy(EDHNormais.Text,0,5)
           Else
               DMServ.TItensLocacao.FieldByName('HRS_NORMAIS').AsString := '0';

           If EDHExtras.Text <> '  :  :  ' Then
               DMServ.TItensLocacao.FieldByName('HRS_EXTRAS').AsString := copy(EDHExtras.Text,0,5)
           Else
               DMServ.TItensLocacao.FieldByName('HRS_EXTRAS').AsString := '0';

           If EDVlrNormal.Text <> '0,00' Then
               DMServ.TItensLocacao.FieldByName('TOTAL_NORMAL').AsCurrency := EDVlrNormal.ValueNumeric
           Else
               DMServ.TItensLocacao.FieldByName('TOTAL_NORMAL').AsString := '0';

           If EDVlrExtra.Text <> '0,00' Then
               DMServ.TItensLocacao.FieldByName('TOTAL_EXTRA').AsCurrency := EDVlrExtra.ValueNumeric
           Else
               DMServ.TItensLocacao.FieldByName('TOTAL_EXTRA').AsString := '0';

           // se foi selecionado uma tabela e o check "CBPrecoTabela" estiver selecionado pode-se inserir o numero da tabela em Itens_Locação
           If (FrmTabela.EDCodigo.Text <> '') Then
               DMServ.TItensLocacao.FieldByName('COD_TABPRECO').AsString := FrmTabela.EDCodigo.Text;

           If EDKMIni.Text <> '' Then
               DMServ.TItensLocacao.FieldByName('KM_INI').AsString := EDKMIni.Text;

           If EDKMFinal.Text <> '' Then
               DMServ.TItensLocacao.FieldByName('KM_FINAL').AsString := EDKMFinal.Text;

           If EdKmTotal.Text <> '' Then
               DMServ.TItensLocacao.FieldByName('KM_TOTAL').AsString := EdKmTotal.Text
           Else
               DMServ.TItensLocacao.FieldByName('KM_TOTAL').AsString := '0';

           If EdFinancKm.Text <> '0,00' Then
               DMServ.TItensLocacao.FieldByName('VALORTOTKM').AsCurrency := EdFinancKm.ValueNumeric;

           If EDVlrTotalHrs.Text <> '0,00' Then
               DMServ.TItensLocacao.FieldByName('VALORTOTHRS').AsCurrency := EDVlrTotalHrs.ValueNumeric;

           If (EDHNormais.Text <> '  :  :  ') and (EDHExtras.Text <> '  :  :  ') Then
               DMServ.TItensLocacao.FieldByName('TOTAL_HORAS').AsString := TimeToStr(StrToTime(EDHNormais.Text) + StrToTime(EDHExtras.Text));

           DMServ.TItensLocacao.FieldByName('TOTAL_FINAL').AsCurrency := EdFinancKm.ValueNumeric + EDVlrTotalHrs.ValueNumeric;

           DMServ.TItensLocacao.Post;
           DMServ.IBT.CommitRetaining;

           // atualiza grid logo apos inserir servico
           AtualizaGrid_Servico;

           // limpa edits apos inserir servico
           LimpaEdits;

           // soma o total da ordem de servico
           EdValorOrd.ValueNumeric := ValorTotal_OS;
           EdTotOrd.ValueNumeric := ValorTotal_OS;
           
           // soma o total de KM(R$)
           EdTotKm.ValueNumeric := VlrTot_Km;

           // soma o total (R$) de servicos
           EdTotServ.ValueNumeric := VlrTot_Serv;

           // passa pelo processo de desconto em porcentagem do total de KM
           EdDescKmExit(Self);

           // passa pelo processo de desconto em porcentagem do total de servico
           EdDescServicoExit(Self);

           LDiaSemana.Caption := 'Dia da Semana';
           LDiaSemana.Font.Color := cl3DDkShadow;

           XHorasMat := '00:00:00';
           XExtraMat := '00:00:00';
           XHorasVesp := '00:00:00';
           XExtraVesp := '00:00:00';

       End;
end;
end;

// soma o total (R$) da quilometragem
Function TFOrdem.VlrTot_Km: real;
begin
   DMServ.TAlx1.Close;
   DMServ.TAlx1.SQL.Clear;
   DMServ.TAlx1.SQL.Add('select sum(itens_locacao.valortotkm) as TOTAL_KM from itens_locacao');
   DMServ.TAlx1.SQL.Add('where itens_locacao.cod_ordem = :codigo');
   DMServ.TAlx1.ParamByName('codigo').AsInteger := XCOD_ORDEM;
   DMServ.TAlx1.Open;

   Result := DMServ.TAlx1.FieldByName('TOTAL_KM').AsCurrency;

end;

// soma o total (R$) dos servicos
Function TFOrdem.VlrTot_Serv: real;
begin
   DMServ.TAlx1.Close;
   DMServ.TAlx1.SQL.Clear;
   DMServ.TAlx1.SQL.Add('select sum(itens_locacao.valortothrs) as TOTAL_HRS from itens_locacao');
   DMServ.TAlx1.SQL.Add('where itens_locacao.cod_ordem = :codigo');
   DMServ.TAlx1.ParamByName('codigo').AsInteger := XCOD_ORDEM;
   DMServ.TAlx1.Open;

   Result := DMServ.TAlx1.FieldByName('TOTAL_HRS').AsCurrency;

end;

//limpa labels de serviços/despesar apos ser inserido na grid
Procedure TFOrdem.LimpaLabelsEquipe;
begin
   EDespesa.clear;
   FrmEquipe.EdDescricao.clear;
   FrmEquipe.EDCodigo.clear;
   EValor.ValueNumeric:=0;
   EDesc.ValueNumeric:=0;
   EQtd.ValueNumeric:=0;
   ETotal.ValueNumeric:=0;
end;



//exclui serviços/despesas do banco e da grid
procedure TFOrdem.BBExcluirClick(Sender: TObject);
begin
  inherited;
      DMESTOQUE.Alx1.Close;
      DMESTOQUE.Alx1.SQL.Clear;
      DMESTOQUE.Alx1.sql.Add('select * from despadic');
      DMESTOQUE.Alx1.sql.Add('left join equipe on despadic.cod_equipe = equipe.cod_equipe');
      DMESTOQUE.Alx1.sql.Add('where despadic.cod_despadic= :cod');
      DMESTOQUE.Alx1.ParamByName('cod').AsString:= DMESTOQUE.Alx3.fieldbyname('COD_DESPADIC').AsString;
      DMESTOQUE.Alx1.Open;

       If Length(DMESTOQUE.Alx1.FieldByName('DESPESA').AsString) > 20
       Then Begin
           If Mensagem('   A T E N Ç Ã O   ','Deseja realmente excluir o serviço ' + #39 + Copy(DMESTOQUE.Alx1.FieldByname('DESPESA').AsString,0,20) + #39 + '. ?','',2,3,false,'I')=3 Then
               Exit;
       End
       Else Begin
           If Mensagem('   A T E N Ç Ã O   ','Deseja realmente excluir o serviço ' + #39 + DMESTOQUE.Alx1.FieldByname('DESPESA').AsString + #39 + ' ?','',2,3,false,'I')=3 Then
               Exit;
       End;

      //volta valores do serviço para as grids de edição
      EDespesa.Text:=DMESTOQUE.Alx3.fieldbyname('DESPESA').AsString;
      EValor.Text:=DMESTOQUE.Alx3.fieldbyname('VLRFINAL').AsString;
      EQtd.Text:=DMESTOQUE.Alx3.fieldbyname('QTD').AsString;
      EDesc.Text:=DMESTOQUE.Alx3.fieldbyname('DESCONTO').AsString;
      ETotal.Text:=DMESTOQUE.Alx3.fieldbyname('VLRTOTFIN').AsString;
      FrmEquipe.EDCodigo.Text:=DMESTOQUE.Alx3.fieldbyname('COD_EQUIPE').AsString;
      FrmEquipe.EdDescricao.Text:=DMESTOQUE.Alx3.fieldbyname('DESCRICAO').AsString;

      //exclui serviço/despesa do banco
      DMESTOQUE.Alx.close;
      dmestoque.Alx.SQL.clear;
      DMESTOQUE.Alx.sql.Add('delete from despadic where (despadic.cod_gerador= :cod1)');
      DMESTOQUE.Alx.SQL.Add('and despadic.cod_despadic= :cod2');
      DMESTOQUE.Alx.ParamByName('cod1').AsInteger:=XCOD_ORDEM;
      DMESTOQUE.Alx.ParamByName('cod2').AsInteger:=DMESTOQUE.Alx3.fieldbyname('COD_DESPADIC').AsInteger;
      DMESTOQUE.Alx.ExecSQL;
      DMESTOQUE.TransacEstoque.CommitRetaining;

      FiltraSlave;
end;

procedure TFOrdem.EDescExit(Sender: TObject);
begin
  inherited;
       ETotal.ValueNumeric:=(EValor.ValueNumeric*EQtd.ValueNumeric);
       ETotal.ValueNumeric:=(ETotal.ValueNumeric-((ETotal.ValueNumeric/100)*EDesc.ValueNumeric));
end;

//BUSCA EQUIPAMENTO PELA PLACA
procedure TFOrdem.FBEquipPlacaEDCodigoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
   if key = 13
   then begin
       // letras maiusculas
       FBEquipPlaca.EDCodigo.Text:= UpperCase(FBEquipPlaca.EDCodigo.Text);

       If FBEquipPlaca.EDCodigo.Text <> ''
       Then Begin
           DMESTOQUE.Alx.close;
           DMESTOQUE.Alx.SQL.Clear;
           DMESTOQUE.Alx.SQL.Add('select * from equipamento');
           DMESTOQUE.Alx.SQL.Add('where upper(equipamento.placa) like upper ('+#39+trim(FBEquipPlaca.EDCodigo.Text)+#39+')');
           DMESTOQUE.Alx.Open;
           if not DMESTOQUE.alx.IsEmpty
           then begin
               FBEquipPlaca.EdDescricao.Text:=DMESTOQUE.Alx.FieldByName('DESCRICAO').AsString;
               EDKM.Text := DMESTOQUE.Alx.FieldByName('KMATUAL').AsString;
               CBUnid.Text := DMESTOQUE.Alx.FieldByName('UNIDRODAGEM').AsString;
               GBKM.Enabled := TRUE;
                XCOD_EQUIPAMENTO := DMESTOQUE.Alx.FieldByName('COD_EQUIPAMENTO').AsInteger;


               // busca o cliente q esta atrelado ao equipamento
               FiltraTabela(DMPESSOA.WCliente,'VWCLIENTE','COD_CLIENTE',DMESTOQUE.Alx.FieldByname('cod_cliente').AsString,'');

               If Not DMPESSOA.WCliente.IsEmpty
               Then Begin
                  XCOD_CLIENTE := DMPESSOA.WCliente.FieldByname('COD_CLIENTE').AsInteger;
                  FrmCliente.EDCodigo.Text := DMPESSOA.WCliente.FieldByname('cod_interno').AsString;
                  FrmCliente.EdDescricao.Text := DMPESSOA.WCliente.FieldByname('nome').AsString;
               End
               Else Begin
                  XCOD_CLIENTE := -1;
                  FrmCliente.EdDescricao.Text := '';
                  FrmCliente.EDCodigo.Text := '';
               End;
               
               DBBox.SetFocus;
           end
           Else Begin
              XCOD_EQUIPAMENTO := -1;
              FBEquipPlaca.EdDescricao.Text := '';
              FrmCliente.EdDescricao.Text := '';
              FrmCliente.EDCodigo.Text := '';
              EDKM.Text := '';
              CBUnid.Text := '';
           End;
       End;
   End;

end;

procedure TFOrdem.PCProdServChange(Sender: TObject);
begin
  inherited;
end;



//busca ordem pelo nome do cliente, se a atividade for EQUIPE
procedure TFOrdem.EDCliente1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  //inherited;
   if key = 13
   then begin
       DMServ.WOrdem.Close;
       DMServ.WOrdem.SQL.Clear;
       DMServ.WOrdem.SQL.Add('select * from VWordem');
       DMServ.WOrdem.SQL.Add('where (upper (VWordem.cliente)) like (upper ('+#39+EDCliente1.Text+'%'+#39+'))  ORDER BY NUMERO DESC, CLIENTE');
       DMServ.WOrdem.Open;
   end;

end;

//busca ordem pelo numero da placa do equipamento
procedure TFOrdem.MEPlacaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  //inherited;
   if key = 13
   then begin
       DMServ.WOrdem.Close;
       DMServ.WOrdem.SQL.Clear;
       DMServ.WOrdem.SQL.Add('select * from vwordem');
       DMServ.WOrdem.SQL.Add('where (upper (vwordem.placa)) like (upper ('+#39+MEPlaca.Text+'%'+#39+'))');
       DMServ.WOrdem.Open;
   end;
end;

//busca ordem pelo numero do box
procedure TFOrdem.EDBoxKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  //inherited;
   if key = 13
   then begin
       DMServ.WOrdem.Close;
       DMServ.WOrdem.SQL.Clear;
       DMServ.WOrdem.SQL.Add('select * from VWordem');
       DMServ.WOrdem.SQL.Add('where (upper (VWordem.box)) like (upper ('+#39+EDBox.Text+'%'+#39+'))  ORDER BY NUMERO DESC, CLIENTE');
       DMServ.WOrdem.Open;
   end;
end;


//busca ordem pelo numero
procedure TFOrdem.EDNumKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  //inherited;
   if key = 13
   then begin
       DMServ.WOrdem.Close;
       DMServ.WOrdem.SQL.Clear;
       DMServ.WOrdem.SQL.Add('select * from vwordem');
       if EDNum.Text<>''
       then begin
           DMServ.WOrdem.SQL.Add('where vwordem.numero = '+#39+EDNum.Text+#39);
       end;
       DMServ.WOrdem.Open;
   end;
end;

procedure TFOrdem.DBGridCadastroPadraoDblClick(Sender: TObject);
begin
  inherited;

   // filtrando a ordem selecionada
   FiltraTabela(DMSERV.TOrd, 'ORDEM', 'COD_ORDEM', XView.FieldByName('COD_ORDEM').AsString, '');
   XCOD_ORDEM:=XView.FieldByName('COD_ORDEM').AsInteger;

   // BUSCANDO DADOS DA ORDEM
   FiltraTabela(DMServ.TOrd,'ORDEM','COD_ORDEM',IntToStr(XCOD_ORDEM),'');

   // A ATIVIDADE DA LOJA TEM Q SER IGUAL A EQUIPE
   If DMMACS.TLoja.FieldByName('ATIVIDADE').AsString = 'EQUIPE'
   Then begin
       If (DMServ.TOrd.FieldByName('STATUS').AsString <> 'ABERTO')
       Then Begin
           Mensagem('    A T E N Ç Ã O   ','A ordem não está "Aberta".','',1,1,false,'I');
           Exit;
       End;

       DMServ.TOrd.Close;
       DMServ.TOrd.SQL.Clear;
       DMServ.TOrd.SQL.Add('select * from ordem where ordem.cod_ordem = :codigo');
       DMServ.TOrd.ParamByName('codigo').AsInteger := DMServ.WOrdem.FieldByName('cod_ordem').AsInteger;
       DMServ.TOrd.Open;

       If (DMServ.TOrd.FieldByName('exportado').AsString <> '#')
       Then Begin
           {DMServ.TOrd.Edit;
           If DMServ.TOrd.FieldByName('EXP').AsString = 'X'
           Then Begin
               DMServ.TOrd.FieldByName('EXP').AsString := '';
               DMServ.TOrd.FieldByName('EDIT').AsString := '0';
           End
           Else Begin
               DMServ.TOrd.FieldByName('EXP').AsString := 'X';
               DMServ.TOrd.FieldByName('EDIT').AsString := '1';
           End;

           DMServ.TOrd.Post;  }

           DMServ.TAlx1.Close;
           DMServ.TAlx1.SQL.Clear;
           DMServ.TAlx1.SQL.Add('update ORDEM set EDIT = :EDIT, EXP = :EXP');
           DMServ.TAlx1.SQL.Add('where COD_ORDEM = :OLD_COD_ORDEM');

           If DMServ.TOrd.FieldByName('EXP').AsString = 'X'
           Then Begin
               DMServ.TAlx1.ParamByName('EXP').AsString := '';
               DMServ.TAlx1.ParamByName('EDIT').AsString := '0';
           End
           Else Begin
               DMServ.TAlx1.ParamByName('EXP').AsString := 'X';
               DMServ.TAlx1.ParamByName('EDIT').AsString := '1';
           End;

           DMServ.TAlx1.ParamByName('OLD_COD_ORDEM').AsInteger := DMServ.TOrd.FieldByName('COD_ORDEM').AsInteger;
           DMServ.TAlx1.ExecSQL;


           DMServ.IBT.CommitRetaining;

           LiberaDados;
       End;
   End;
end;

// CADASTRO DE FUNCIONARIO
Function TFOrdem.CadastroFuncionario: integer;
begin
   // apenas seleciona dados da tabela pessoa fisica p inserir no banco de dados de fora
   FiltraTabela(DMPESSOA.TPessoaF,'PESSOAF','COD_PESSOA',DMPESSOA.TPessoa.FieldByname('cod_pessoa').AsString,'');

   // INSERINDO DADOS NA TABELA PESSOA PARA O NOVO FUNCINARIO
   DMEXPORTA.TPessoa.Insert;
   DMEXPORTA.TPessoa.FieldByName('cod_pessoa').AsInteger := DMEXPORTA.TCodigo.FieldByName('cod_pessoa').AsInteger;
   DMEXPORTA.TPessoa.FieldByName('NOME').AsString := DMPESSOA.TPessoa.FieldByname('NOME').AsString;
   DMEXPORTA.TPessoa.FieldByName('ENDERECO').AsString := DMPESSOA.TPessoa.FieldByname('ENDERECO').AsString;
   DMEXPORTA.TPessoa.FieldByName('BAIRRO').AsString := DMPESSOA.TPessoa.FieldByname('BAIRRO').AsString;
   DMEXPORTA.TPessoa.FieldByName('COD_CIDADE').AsString := DMPESSOA.TPessoa.FieldByname('COD_CIDADE').AsString;
   DMEXPORTA.TPessoa.FieldByName('CEP').AsString := DMPESSOA.TPessoa.FieldByname('CEP').AsString;
   DMEXPORTA.TPessoa.FieldByName('CPFCNPJ').AsString := DMPESSOA.TPessoa.FieldByname('CPFCNPJ').AsString;
   DMEXPORTA.TPessoa.FieldByName('DATA_INI').AsString := DMPESSOA.TPessoa.FieldByname('DATA_INI').AsString;
   DMEXPORTA.TPessoa.FieldByName('DTNASC').AsString := DMPESSOA.TPessoa.FieldByname('DTNASC').AsString;
   DMEXPORTA.TPessoa.FieldByName('COD_REGIAO').AsString := DMPESSOA.TPessoa.FieldByname('COD_REGIAO').AsString;
   DMEXPORTA.TPessoa.FieldByName('COD_NATURAL').AsString := DMPESSOA.TPessoa.FieldByname('COD_NATURAL').AsString;
   DMEXPORTA.TPessoa.FieldByName('TELREL').AsString := DMPESSOA.TPessoa.FieldByname('TELREL').AsString;
   DMEXPORTA.TPessoa.FieldByName('DIAANIVER').AsString := DMPESSOA.TPessoa.FieldByname('DIAANIVER').AsString;
   DMEXPORTA.TPessoa.FieldByName('PROXIMIDADE').AsString := DMPESSOA.TPessoa.FieldByname('PROXIMIDADE').AsString;
   DMEXPORTA.TPessoa.FieldByName('VLRCREDITO').AsString := DMPESSOA.TPessoa.FieldByname('VLRCREDITO').AsString;
   DMEXPORTA.TPessoa.Post;

   // cadastra pessoa fisica
   DMEXPORTA.TPessoaF.Insert;
   DMEXPORTA.TPessoaF.FieldByName('COD_PESSOA').AsString := DMEXPORTA.TPessoa.FieldByName('cod_pessoa').AsString;
   DMEXPORTA.TPessoaF.FieldByName('COD_PESSOAF').AsString := DMEXPORTA.TCodigo.FieldByName('COD_PESSOAF').AsString;
   CadastraPessoaF;

   // atualizando a tabela codigo
   DMEXPORTA.TCodigo.Edit;
   DMEXPORTA.TCodigo.FieldByName('cod_pessoaf').AsInteger := DMEXPORTA.TCodigo.FieldByName('cod_pessoaf').AsInteger + 1;
   DMEXPORTA.TCodigo.Post;

   // apenas para abrir dataset
   DMEXPORTA.TFuncionario.Close;
   DMEXPORTA.TFuncionario.SQL.Clear;
   DMEXPORTA.TFuncionario.SQL.Add('select * from funcionario');
   DMEXPORTA.TFuncionario.Open;

   // INSERINDO DADOS DO NOVO FUNCIONARIO NA TABELA FUNCIONARIO
   DMEXPORTA.TFuncionario.Insert;
   DMEXPORTA.TFuncionario.FieldByName('COD_FUNC').AsInteger := DMEXPORTA.TCodigo.FieldByname('cod_func').AsInteger;
   DMEXPORTA.TFuncionario.FieldByName('COD_INTERNO').AsString := DMPESSOA.TFuncionario.FieldByname('COD_INTERNO').AsString;
   DMEXPORTA.TFuncionario.FieldByName('COD_PESSOA').AsString := DMEXPORTA.TPessoa.FieldByName('cod_pessoa').AsString;
   DMEXPORTA.TFuncionario.FieldByName('DATA_ADMIS').AsString := DMPESSOA.TFuncionario.FieldByname('DATA_ADMIS').AsString;
   DMEXPORTA.TFuncionario.FieldByName('DATA_CAD').AsString := DMPESSOA.TFuncionario.FieldByname('DATA_CAD').AsString;
   DMEXPORTA.TFuncionario.FieldByName('DATA_DEMIS').AsString := DMPESSOA.TFuncionario.FieldByname('DATA_DEMIS').AsString;
   DMEXPORTA.TFuncionario.FieldByName('NUM_CTPS').AsString := DMPESSOA.TFuncionario.FieldByname('NUM_CTPS').AsString;
   DMEXPORTA.TFuncionario.FieldByName('NUM_PIS').AsString := DMPESSOA.TFuncionario.FieldByname('NUM_PIS').AsString;
   DMEXPORTA.TFuncionario.FieldByName('SER_CTPS').AsString := DMPESSOA.TFuncionario.FieldByname('SER_CTPS').AsString;
   DMEXPORTA.TFuncionario.FieldByName('TERCEIRO').AsString := DMPESSOA.TFuncionario.FieldByname('TERCEIRO').AsString;
   DMEXPORTA.TFuncionario.Post;

   // FAZ TODOS S FILTROS DO FUNCINARIO P VERIFICAR SE O CARGO DELE JAH ESTAH CADASTRADO NO BANCO DE FORA
   DMPESSOA.TALX.Close;
   DMPESSOA.TALX.SQL.Clear;
   DMPESSOA.TALX.SQL.Add('select * from funcionario');
   DMPESSOA.TALx.SQL.Add('left join funcargo on funcionario.cod_func = funcargo.cod_funcionario');
   DMPESSOA.TALx.SQL.Add('left join cargo on funcargo.cod_cargo = cargo.cod_cargo');
   DMPESSOA.TALx.SQL.Add('where funcionario.cod_func = :codigo');
   DMPESSOA.TALx.ParamByName('codigo').AsInteger := DMPESSOA.TFuncionario.FieldByName('COD_FUNC').AsInteger;
   DMPESSOA.TALx.Open;

   // atualizando a tabela codigo do banco de fora
   DMEXPORTA.TCodigo.Edit;

   // verifica se existe o cargo no banco de fora
   If FiltraTabela(DMEXPORTA.TCARGO,'CARGO','COD_CARGO','','UPPER(DESCRICAO) = UPPER(' + #39 + DMPESSOA.TALx.FieldByName('descricao').AsString + #39 + ')') = false
   Then Begin
       // TABELA CARGO
       DMEXPORTA.TCARGO.Insert;
       DMEXPORTA.TCARGO.FieldByName('COD_CARGO').AsInteger := DMEXPORTA.TCodigo.FieldByname('cod_cargo').AsInteger;
       DMEXPORTA.TCARGO.FieldByName('descricao').AsString := DMPESSOA.TCargo.FieldByname('descricao').AsString;
       DMEXPORTA.TCARGO.Post;

       // como o banco de fora nao possui o cargo, ele eh inserido e tambem eh atualizado os campos na tabela codigo
       DMEXPORTA.TCodigo.FieldByName('cod_cargo').AsInteger := DMEXPORTA.TCodigo.FieldByName('cod_cargo').AsInteger + 1;
   End;

   // apenas para abrir dataset
   DMEXPORTA.TFunCargo.Close;
   DMEXPORTA.TFunCargo.SQL.Clear;
   DMEXPORTA.TFunCargo.SQL.Add('select * from funcargo');
   DMEXPORTA.TFunCargo.Open;

   // INSERINDO DADOS NA TABELA FUNCARGO DO NOVO FUNCIONARIO
   DMEXPORTA.TFunCargo.Insert;
   DMEXPORTA.TFunCargo.FieldByName('COD_FUNCARGO').AsInteger := DMEXPORTA.TCodigo.FieldByname('COD_FUNCARGO').AsInteger;
   DMEXPORTA.TFunCargo.FieldByName('COD_CARGO').AsString := DMEXPORTA.TCARGO.FieldByName('COD_CARGO').AsString;
   DMEXPORTA.TFunCargo.FieldByName('COD_FUNCIONARIO').AsString := DMEXPORTA.TFuncionario.FieldByName('COD_FUNC').AsString;
   DMEXPORTA.TFunCargo.FieldByName('COMISSAO_VVPRO').AsString := DMPESSOA.TFunCargo.FieldByname('COMISSAO_VVPRO').AsString;
   DMEXPORTA.TFunCargo.FieldByName('COMISSAO_VPPRO').AsString := DMPESSOA.TFunCargo.FieldByname('COMISSAO_VPPRO').AsString;
   DMEXPORTA.TFunCargo.FieldByName('COMISSAO_VVSER').AsString := DMPESSOA.TFunCargo.FieldByname('COMISSAO_VVSER').AsString;
   DMEXPORTA.TFunCargo.FieldByName('COMISSAO_VPSER').AsString := DMPESSOA.TFunCargo.FieldByname('COMISSAO_VPSER').AsString;
   DMEXPORTA.TFunCargo.Post;

   DMEXPORTA.TCodigo.FieldByName('cod_funcargo').AsInteger := DMEXPORTA.TCodigo.FieldByName('cod_funcargo').AsInteger + 1;
   DMEXPORTA.TCodigo.FieldByName('cod_pessoa').AsInteger := DMEXPORTA.TCodigo.FieldByName('cod_pessoa').AsInteger + 1;
   DMEXPORTA.TCodigo.FieldByName('cod_func').AsInteger := DMEXPORTA.TCodigo.FieldByName('cod_func').AsInteger + 1;
   DMEXPORTA.TCodigo.post;

   DMEXPORTA.IBTExporta.CommitRetaining;

end;

// verifica se jah existe o funcionario no banco de fora, e se na estiver jah cadastra na hora
Function TFOrdem.VerificaFuncionario(Atividade: String; Cod_funcionario: string): integer;
begin
   // FILTRA TABELA DE FUNCIONARIO PARA BUSCAR O CODIGO DE PESSOA
   If Atividade = 'VENDEDOR' Then
       FiltraTabela(DMPESSOA.TFuncionario,'FUNCIONARIO','COD_FUNC',DMServ.TOrd.FieldByName('COD_VENDEDOR').AsString,'');
   If Atividade = 'FUNCIONARIO' Then
       FiltraTabela(DMPESSOA.TFuncionario,'FUNCIONARIO','COD_FUNC',DMServ.TOrd.FieldByName('COD_FUNCIONARIO').AsString,'');
   If Atividade = 'USUARIO'
   Then Begin
       // busca dados usuario
       FiltraTabela(DMMACS.TUsuario,'USUARIO','CODUSUARIO',DMServ.TOrd.FieldByname('cod_usuario').AsString,'');

       // busca dados de funcionario em relacao aos dados de usuario
       FiltraTabela(DMPESSOA.TFuncionario,'FUNCIONARIO','COD_FUNC',DMMACS.TUsuario.FieldByName('COD_FUNCIONARIO').AsString,'');
   End;
   If Atividade = 'RESPONSAVEL'
   Then Begin
       // busca os dados da tabela funcionario para selecionar dados da pessoa
       FiltraTabela(DMPESSOA.TFuncionario,'FUNCIONARIO','COD_FUNC',Cod_funcionario,'');
   End;

   // filtra tabela de pessoa para buscar o cpf do funcionario
   FiltraTabela(DMPESSOA.TPessoa,'PESSOA','COD_PESSOA',DMPESSOA.TFuncionario.FieldByName('cod_pessoa').AsString,'');

   // busca no banco de dados de fora o funcionario com o mesmo cpf
   DMEXPORTA.TPessoa.Close;
   DMEXPORTA.TPessoa.SQL.Clear;
   DMEXPORTA.TPessoa.SQL.Add('select * from pessoa');
   DMEXPORTA.TPessoa.SQL.Add('WHERE (pessoa.cpfcnpj = :CPF)');
   DMEXPORTA.TPessoa.ParamByName('CPF').AsString := DMPESSOA.TPessoa.FieldByname('cpfcnpj').AsString;
   DMEXPORTA.TPessoa.Open;

   // se o banco de fora nao possui o funcionario, o mesmo sera cadastrado
   If (DMEXPORTA.TPessoa.IsEmpty) and (DMPESSOA.TPessoa.FieldByName('nome').AsString <> '')
   Then Begin
       // função para cadastrar funcionario
       CadastroFuncionario;
   End
   Else Begin
       DMEXPORTA.TFuncionario.Close;
       DMEXPORTA.TFuncionario.SQL.Clear;
       DMEXPORTA.TFuncionario.SQL.Add('select * from funcionario where funcionario.cod_pessoa = :codigo');
       DMEXPORTA.TFuncionario.ParamByName('codigo').AsInteger := DMEXPORTA.TPessoa.FieldByname('cod_pessoa').AsInteger;
       DMEXPORTA.TFuncionario.Open;
   End;

   If Atividade = 'USUARIO'
   Then Begin
       // busca no banco de dados de fora o funcionario com o mesmo cpf
       DMEXPORTA.TPessoa.Close;
       DMEXPORTA.TPessoa.SQL.Clear;
       DMEXPORTA.TPessoa.SQL.Add('select * from pessoa');
       DMEXPORTA.TPessoa.SQL.Add('WHERE (pessoa.cpfcnpj = :CPF)');
       DMEXPORTA.TPessoa.ParamByName('CPF').AsString := DMPESSOA.TPessoa.FieldByname('cpfcnpj').AsString;
       DMEXPORTA.TPessoa.Open;

       // COMO JAH EXISTE O FUNCIOANRIO CADASTRADO NO BANCO DE FORA, ELE EH FILTRADO A PARTIR DO CODIGO PESSOA
       If FiltraTabela(DMEXPORTA.TFuncionario,'FUNCIONARIO','COD_PESSOA',DMEXPORTA.TPessoa.FieldByname('COD_PESSOA').AsString,'') = false
       Then Begin
           // se ate o momento nao foi encontrado pessoa eh pq o funcionario nao esta cadastrado corretamente, ou invalido, ou pode ser tambem o MESTRE
           Result := 111522;
           Exit;
       End;

       // verificando se na tabela usuario do banco de fora existe usuario cadastrado
       DMEXPORTA.TUsuario.Close;
       DMEXPORTA.TUsuario.SQL.Clear;
       DMEXPORTA.TUsuario.SQL.Add('select * from usuario where usuario.cod_funcionario = :codigo');
       DMEXPORTA.TUsuario.ParamByName('codigo').AsString := DMEXPORTA.TFuncionario.FieldByname('cod_func').AsString;
       DMEXPORTA.TUsuario.Open;

       If DMEXPORTA.TUsuario.IsEmpty
       Then Begin
           DMEXPORTA.TUsuario.Insert;
           DMEXPORTA.TUsuario.FieldByName('CODUSUARIO').AsInteger := DMEXPORTA.TCodigo.FieldByName('CODUSUARIO').AsInteger;
           DMEXPORTA.TUsuario.FieldByName('COD_FUNCIONARIO').AsInteger := DMEXPORTA.TFuncionario.FieldByName('COD_FUNC').AsInteger;
           DMEXPORTA.TUsuario.FieldByName('LOGIN').AsString := DMMACS.TUsuario.FieldByName('LOGIN').AsString;
           DMEXPORTA.TUsuario.FieldByName('SENHA').AsString := DMMACS.TUsuario.FieldByName('SENHA').AsString;
           DMEXPORTA.TUsuario.FieldByName('DATA_CAD').AsString := DMMACS.TUsuario.FieldByName('DATA_CAD').AsString;
           DMEXPORTA.TUsuario.FieldByName('ADM').AsString := DMMACS.TUsuario.FieldByName('ADM').AsString;
           DMEXPORTA.TUsuario.FieldByName('REVRESMOV').AsString := DMMACS.TUsuario.FieldByName('REVRESMOV').AsString;
           DMEXPORTA.TUsuario.Post;

           // ATUALIZANDO TABELA CODIGO
           DMEXPORTA.TCodigo.Edit;
           DMEXPORTA.TCodigo.FieldByName('CODUSUARIO').AsInteger := DMEXPORTA.TCodigo.FieldByName('CODUSUARIO').AsInteger + 1;
           DMEXPORTA.TCodigo.Post;
       End;

       // SE CASO O PARAMETRO DA FUNÇÃO FOR "USUARIO" ENTÃO ESTA BUSCANDO SOMENTE O COD_USUARIO, POR ISSO LOGO QUE FOR REPASSADO O VALOR P O RETORNO DA FUNÇÃO, NÃO PODE CONTINUAR NA FUNÇÃO PQ SENAO SERA RETORNADO O COD_FUNCIONARIO
       Result := DMEXPORTA.TUsuario.FieldByName('CODUSUARIO').AsInteger;
       Exit;
   End;

   Result := DMEXPORTA.TFuncionario.FieldByname('cod_func').AsInteger;

   DMEXPORTA.IBTExporta.CommitRetaining;

   // zerando o parametro
   Atividade := '';

end;

// cadastra pessoa fisica
Procedure TFOrdem.CadastraPessoaF;
begin
    // atualizando DADOS NA TABELA PESSOA FISICA PARA O NOVO FUNCIONARIO
   DMEXPORTA.TPessoaF.FieldByName('ESTADO_CIVIL').AsString := DMPESSOA.TPessoaF.FieldByname('ESTADO_CIVIL').AsString;
   DMEXPORTA.TPessoaF.FieldByName('SEXO').AsString := DMPESSOA.TPessoaF.FieldByname('SEXO').AsString;
   DMEXPORTA.TPessoaF.FieldByName('DATA_ADMIS').AsString := DMPESSOA.TPessoaF.FieldByname('DATA_ADMIS').AsString;
   DMEXPORTA.TPessoaF.FieldByName('CARGO').AsString := DMPESSOA.TPessoaF.FieldByname('CARGO').AsString;
   DMEXPORTA.TPessoaF.FieldByName('RG').AsString := DMPESSOA.TPessoaF.FieldByname('RG').AsString;
   DMEXPORTA.TPessoaF.FieldByName('DATA_EXPED').AsString := DMPESSOA.TPessoaF.FieldByname('DATA_EXPED').AsString;
   DMEXPORTA.TPessoaF.FieldByName('ORGAO_EXPED').AsString := DMPESSOA.TPessoaF.FieldByname('ORGAO_EXPED').AsString;
   DMEXPORTA.TPessoaF.FieldByName('TITULO').AsString := DMPESSOA.TPessoaF.FieldByname('TITULO').AsString;
   DMEXPORTA.TPessoaF.FieldByName('NOME_CONJ').AsString := DMPESSOA.TPessoaF.FieldByname('NOME_CONJ').AsString;
   DMEXPORTA.TPessoaF.FieldByName('DATANASC_CONJ').AsString := DMPESSOA.TPessoaF.FieldByname('DATANASC_CONJ').AsString;
   DMEXPORTA.TPessoaF.FieldByName('RG_CONJ').AsString := DMPESSOA.TPessoaF.FieldByname('RG_CONJ').AsString;
   DMEXPORTA.TPessoaF.FieldByName('CPF_CONJ').AsString := DMPESSOA.TPessoaF.FieldByname('CPF_CONJ').AsString;
   DMEXPORTA.TPessoaF.FieldByName('EMP_CONJ').AsString := DMPESSOA.TPessoaF.FieldByname('EMP_CONJ').AsString;
   DMEXPORTA.TPessoaF.FieldByName('NOME_PAI').AsString := DMPESSOA.TPessoaF.FieldByname('NOME_PAI').AsString;
   DMEXPORTA.TPessoaF.FieldByName('NOME_MAE').AsString := DMPESSOA.TPessoaF.FieldByname('NOME_MAE').AsString;
   DMEXPORTA.TPessoaF.FieldByName('ENDE_FILIACAO').AsString := DMPESSOA.TPessoaF.FieldByname('ENDE_FILIACAO').AsString;
   DMEXPORTA.TPessoaF.Post;
   DMEXPORTA.IBTExporta.CommitRetaining;
end;

// verifica se existe o estado, se nao tiver jah cadastra, caso cntrario apenas recolhe os dados importantes
Function TFOrdem.VerificaEstado: integer;
BEGIN
   DMGEOGRAFIA.TEstado.Close;
   DMGEOGRAFIA.TEstado.SQL.Clear;
   DMGEOGRAFIA.TEstado.SQL.Add('select * from estado where estado.cod_estado = :codigo');
   DMGEOGRAFIA.TEstado.ParamByName('codigo').AsInteger := DMGEOGRAFIA.TCidade.FieldByname('COD_ESTADO').AsInteger;
   DMGEOGRAFIA.TEstado.Open;

   DMEXPORTA.TEstado.Close;
   DMEXPORTA.TEstado.SQL.Clear;
   DMEXPORTA.TEstado.SQL.Add('select * from estado where (upper(estado.descricao) = upper(' + #39 + DMGEOGRAFIA.TEstado.FieldByname('descricao').AsString + #39 + '))');
   DMEXPORTA.TEstado.Open;

   If (DMEXPORTA.TEstado.IsEmpty) and (DMGEOGRAFIA.TEstado.FieldByName('descricao').AsString <> '')
   Then Begin
       DMEXPORTA.TCodigo.Close;
       DMEXPORTA.TCodigo.SQL.Clear;
       DMEXPORTA.TCodigo.SQL.Add('select * from codigo');
       DMEXPORTA.TCodigo.Open;

       DMEXPORTA.TEstado.Insert;
       DMEXPORTA.TEstado.FieldByName('cod_estado').AsInteger := DMEXPORTA.TCodigo.FieldByname('cod_estado').AsInteger;
       DMEXPORTA.TEstado.FieldByName('descricao').AsString := DMGEOGRAFIA.TEstado.FieldByname('descricao').AsString;
       DMEXPORTA.TEstado.FieldByName('uf_estado').AsString := DMGEOGRAFIA.TEstado.FieldByname('uf_estado').AsString;
       DMEXPORTA.TEstado.Post;

       DMEXPORTA.TCodigo.Edit;
       DMEXPORTA.TCodigo.FieldByName('cod_estado').AsInteger := DMEXPORTA.TEstado.FieldByName('cod_estado').AsInteger + 1;
       DMEXPORTA.TCodigo.Post;

       DMEXPORTA.IBTExporta.CommitRetaining;
   End;

   Result := DMEXPORTA.TEstado.FieldByname('cod_estado').AsInteger;

END;


// verifica se existe a cidade do cliente, se nao jah cadastra
Function TFOrdem.VerificaCidade: integer;
begin
   If DMPESSOA.TPessoa.FieldByname('COD_CIDADE').AsInteger <> -1
   Then Begin
       // seleciona no banco local todos os dados da tabela cidade referente ao codigo da cidade do cliente
       DMGEOGRAFIA.WCidade.Close;
       DMGEOGRAFIA.WCidade.SQL.Clear;
       DMGEOGRAFIA.WCidade.SQL.Add('select * from vwcidade where vwcidade.cod_cidade = :codigo');
       DMGEOGRAFIA.WCidade.ParamByName('codigo').AsInteger := DMPESSOA.TPessoa.FieldByname('COD_CIDADE').AsInteger;
       DMGEOGRAFIA.WCidade.Open;

       // verifica no banco de fora se existe a cidade com o mesmo nome
       DMEXPORTA.TCidade.Close;
       DMEXPORTA.TCidade.SQL.Clear;
       DMEXPORTA.TCidade.SQL.Add('select * from vwcidade where (upper(vwcidade.nome) = upper(' + #39 + DMGEOGRAFIA.WCidade.FieldByName('nome').AsString + #39 + ')) AND (upper(vwcidade.uf) = upper(' + #39 + DMGEOGRAFIA.WCidade.FieldByName('UF').AsString + #39 + '))');
       DMEXPORTA.TCidade.Open;

       If DMEXPORTA.TCidade.IsEmpty
       Then Begin
           // ZERA O BANCO PARA PODER INSERIR
           DMEXPORTA.TCidade.Close;
           DMEXPORTA.TCidade.SQL.Clear;
           DMEXPORTA.TCidade.SQL.Add('select * from cidade ');
           DMEXPORTA.TCidade.Open;

           // DADOS DA TABELA CODIGO PARA BUSCAR O PROXIMO CODIGO DE cidade
           DMEXPORTA.TCodigo.Close;
           DMEXPORTA.TCodigo.SQL.Clear;
           DMEXPORTA.TCodigo.SQL.Add('select * from codigo');
           DMEXPORTA.TCodigo.Open;
           Result := DMEXPORTA.TCodigo.FieldByname('cod_cidade').AsInteger;
           DMEXPORTA.TCidade.Insert;
           DMEXPORTA.TCidade.FieldByName('cod_cidade').AsInteger := DMEXPORTA.TCodigo.FieldByname('cod_cidade').AsInteger;
           DMEXPORTA.TCidade.FieldByName('nome').AsString := DMGEOGRAFIA.WCidade.FieldByname('nome').AsString;

           // verifica se existe o estado, se nao tiver jah cadastra, caso cntrario apenas recolhe os dados importantes
           DMEXPORTA.TCidade.FieldByName('COD_ESTADO').AsInteger := VerificaEstado;
           DMEXPORTA.TCidade.Post;

           DMEXPORTA.TCodigo.Edit;
           DMEXPORTA.TCodigo.FieldByName('cod_cidade').AsInteger := DMEXPORTA.TCidade.FieldByName('cod_cidade').AsInteger + 1;
           DMEXPORTA.TCodigo.Post;

           Try
           	DMEXPORTA.IBTExporta.CommitRetaining;
           Except
               Result:=-1;
           End;
       End
       Else Begin
       	Result := DMEXPORTA.TCidade.FieldByname('cod_cidade').AsInteger;
       End;
   End
   Else Begin
       Result := -1;
   End;
end;

// VERTIFICA A FORMA DE PAGAMENTO NO CADASTRO DO CLIENTE
Function TFOrdem.FormaPgto_Cliente: integer;
begin

   // faz a SQL para buscar no banco local a descricao da forma de pagamento
   DMFINANC.TFormPag.Close;
   DMFINANC.TFormPag.SQL.Clear;
   DMFINANC.TFormPag.SQL.Add('select * from formpag where formpag.cod_formpag = ' + #39 + DMPESSOA.TCliente.FieldByname('cod_formpag').AsString + #39 );
   DMFINANC.TFormPag.Open;

   // verifica se no banco de fora existe a mesma forma de pagamento que o banco local
   DMEXPORTA.TFormPag.Close;
   DMEXPORTA.TFormPag.SQL.Clear;
   DMEXPORTA.TFormPag.SQL.Add('select * from formpag where (upper(formpag.descricao) = upper(' + #39 + DMFINANC.TFormPag.FieldByName('descricao').AsString + #39 + '))');
   DMEXPORTA.TFormPag.Open;

   If DMEXPORTA.TFormPag.IsEmpty
   Then Begin
       DMEXPORTA.TFormPag.Insert;
       DMEXPORTA.TFormPag.FieldByName('COD_FORMPAG').AsInteger := DMEXPORTA.TCodigo.FieldByName('cod_formpag').AsInteger;
       DMEXPORTA.TFormPag.FieldByName('COD_LOJA').AsString := DMServ.TOrd.FieldByName('COD_LOJA').AsString;

       // atualizando banco de fora
       DMEXPORTA.TCodigo.Edit;
       DMEXPORTA.TCodigo.FieldByName('cod_formpag').AsInteger := DMEXPORTA.TCodigo.FieldByName('cod_formpag').AsInteger + 1;
       DMEXPORTA.TCodigo.Post;
   End
   Else Begin
       DMEXPORTA.TFormPag.Edit;
   End;

   DMEXPORTA.TFormPag.FieldByName('DESCFISC').AsString := DMFINANC.TFormPag.FieldByName('DESCFISC').AsString;
   DMEXPORTA.TFormPag.FieldByName('DESCRICAO').AsString := DMFINANC.TFormPag.FieldByName('DESCRICAO').AsString;
   DMEXPORTA.TFormPag.FieldByName('INTERVALO').AsString := DMFINANC.TFormPag.FieldByName('INTERVALO').AsString;
   DMEXPORTA.TFormPag.FieldByName('JUROAPLIC').AsString := DMFINANC.TFormPag.FieldByName('JUROAPLIC').AsString;
   DMEXPORTA.TFormPag.FieldByName('MEDIADIAS').AsString := DMFINANC.TFormPag.FieldByName('MEDIADIAS').AsString;
   DMEXPORTA.TFormPag.FieldByName('PRIMPARCELA').AsString := DMFINANC.TFormPag.FieldByName('PRIMPARCELA').AsString;
   DMEXPORTA.TFormPag.FieldByName('QUANTPARCELA').AsString := DMFINANC.TFormPag.FieldByName('QUANTPARCELA').AsString;
   DMEXPORTA.TFormPag.FieldByName('TIPO').AsString := DMFINANC.TFormPag.FieldByName('TIPO').AsString;
   DMEXPORTA.TFormPag.Post;     

   Result := DMEXPORTA.TFormPag.FieldByName('cod_formpag').AsInteger;

end;

// verifica se o cliente esta cadastrado no banco, se nao tiver jah cadastra na hora
Function TFOrdem.VerificaCliente(Cod_Cliente: integer): integer;
begin
   // FILTRA A TABELA CLIENTE PARA BUSCAR O COD_PESSOA
   FiltraTabela(DMPESSOA.TCliente,'CLIENTE','COD_CLIENTE',IntToStr(Cod_Cliente),'');

   // FILTRA A TABELA PESSOA P BUSCAR O NOME REFERNTE AO COD_PESSOA REPASSADO PELA TABELA CLIENTE
   FiltraTabela(DMPESSOA.TPessoa,'PESSOA','COD_PESSOA',DMPESSOA.TCliente.FieldByname('cod_pessoa').AsString,'');

   // verifica se existe cliente com mesmo nome e CPF
   DMEXPORTA.TPessoa.Close;
   DMEXPORTA.TPessoa.SQL.Clear;
   DMEXPORTA.TPessoa.SQL.Add('select * from pessoa where (upper(pessoa.nome) = UPPER(' + #39 + DMPESSOA.TPessoa.FieldByname('nome').AsString + #39 + '))');
   DMEXPORTA.TPessoa.SQL.Add('AND (pessoa.cpfcnpj = :cpf)');
   DMEXPORTA.TPessoa.ParamByName('cpf').AsString := DMPESSOA.TPessoa.FieldByName('cpfcnpj').AsString;
   DMEXPORTA.TPessoa.Open;

   // dah erro se nao fizer essa sql para abrir o dataset, assim como os demais
   DMEXPORTA.TCliente.Close;
   DMEXPORTA.TCliente.SQL.Clear;
   DMEXPORTA.TCliente.SQL.Add('select * from cliente');
   DMEXPORTA.TCliente.SQL.Add('left join pessoa on cliente.cod_pessoa = pessoa.cod_pessoa');
   DMEXPORTA.TCliente.SQL.Add('where (upper(pessoa.nome) = UPPER(' + #39 + DMPESSOA.TPessoa.FieldByname('nome').AsString + #39 + '))');
   DMEXPORTA.TCliente.SQL.Add('AND (pessoa.cpfcnpj = :cpf)');
   DMEXPORTA.TCliente.ParamByName('cpf').AsString := DMPESSOA.TPessoa.FieldByName('cpfcnpj').AsString;
   DMEXPORTA.TCliente.Open;

   If (DMEXPORTA.TPessoa.IsEmpty) and (DMPESSOA.TPessoa.FieldByName('nome').AsString <> '')
   Then Begin
       DMEXPORTA.TPessoa.Insert;
       DMEXPORTA.TPessoa.FieldByName('cod_pessoa').AsInteger := DMEXPORTA.TCodigo.FieldByname('cod_pessoa').AsInteger;

       // insere cliente tambem
       DMEXPORTA.TCliente.Insert;
       DMEXPORTA.TCliente.FieldByName('cod_cliente').AsInteger := DMEXPORTA.TCodigo.FieldByname('cod_cliente').AsInteger;
       DMEXPORTA.TCliente.FieldByName('COD_PESSOA').AsInteger := DMEXPORTA.TPessoa.FieldByName('cod_pessoa').AsInteger;
   End
   Else Begin
       // edita os dados de pessoa
       DMEXPORTA.TPessoa.Edit;
       // edta os dados de cliente
       DMEXPORTA.TCliente.Edit;
   End;
       DMEXPORTA.TPessoa.FieldByName('NOME').AsString := DMPESSOA.TPessoa.FieldByname('nome').AsString;
       DMEXPORTA.TPessoa.FieldByName('ENDERECO').AsString := DMPESSOA.TPessoa.FieldByname('endereco').AsString;
       DMEXPORTA.TPessoa.FieldByName('BAIRRO').AsString := DMPESSOA.TPessoa.FieldByname('bairro').AsString;

       // verifica se existe a cidade do cliente, se nao jah cadastra
       DMEXPORTA.TPessoa.FieldByName('COD_CIDADE').AsInteger := VerificaCidade;

       DMEXPORTA.TPessoa.FieldByName('CEP').AsString := DMPESSOA.TPessoa.FieldByname('CEP').AsString;
       DMEXPORTA.TPessoa.FieldByName('CPFCNPJ').AsString := DMPESSOA.TPessoa.FieldByname('CPFCNPJ').AsString;
       DMEXPORTA.TPessoa.FieldByName('DATA_INI').AsString := DMPESSOA.TPessoa.FieldByname('DATA_INI').AsString;
       DMEXPORTA.TPessoa.FieldByName('TELREL').AsString := DMPESSOA.TPessoa.FieldByname('TELREL').AsString;
       DMEXPORTA.TPessoa.FieldByName('DTNASC').AsString := DMPESSOA.TPessoa.FieldByname('DTNASC').AsString;
       DMEXPORTA.TPessoa.FieldByName('COD_REGIAO').AsString := DMPESSOA.TPessoa.FieldByname('COD_REGIAO').AsString;
       DMEXPORTA.TPessoa.FieldByName('COD_NATURAL').AsString := DMPESSOA.TPessoa.FieldByname('COD_NATURAL').AsString;
       DMEXPORTA.TPessoa.FieldByName('DIAANIVER').AsString := DMPESSOA.TPessoa.FieldByname('DIAANIVER').AsString;
       DMEXPORTA.TPessoa.FieldByName('PROXIMIDADE').AsString := DMPESSOA.TPessoa.FieldByname('PROXIMIDADE').AsString;
       DMEXPORTA.TPessoa.FieldByName('VLRCREDITO').AsString := DMPESSOA.TPessoa.FieldByname('VLRCREDITO').AsString;
       DMEXPORTA.TPessoa.Post;

       // selecionando dados da tabela pessoa fisica
       DMPESSOA.TPessoaF.Close;
       DMPESSOA.TPessoaF.SQL.Clear;
       DMPESSOA.TPessoaF.SQL.Add('select * from pessoaf where pessoaf.cod_pessoa = :codigo');
       DMPESSOA.TPessoaF.ParamByName('codigo').AsInteger := DMPESSOA.TPessoa.FieldByname('cod_pessoa').AsInteger;
       DMPESSOA.TPessoaF.Open;

       // seleciona no banco local os dados da pessoa juridica
       DMPESSOA.TPessoaJ.Close;
       DMPESSOA.TPessoaJ.SQL.Clear;
       DMPESSOA.TPessoaJ.SQL.Add('select * from pessoaj where pessoaj.cod_pessoa = :codigo');
       DMPESSOA.TPessoaJ.ParamByName('codigo').AsInteger := DMPESSOA.TPessoa.FieldByname('cod_pessoa').AsInteger;
       DMPESSOA.TPessoaJ.Open;

       // ou seja, se pessoaj está vazio e foi encntrado pessoaf, a pessoa atual estah definida no banco local como pessoaf
       If (DMPESSOA.TPessoaJ.IsEmpty) and (Not DMPESSOA.TPessoaF.IsEmpty)
       Then Begin
           DMEXPORTA.Alx.Close;
           DMEXPORTA.Alx.SQL.Clear;
           DMEXPORTA.Alx.SQL.Add('select * from pessoaF');
           DMEXPORTA.Alx.SQL.Add('left join pessoa on pessoaF.cod_pessoa = pessoa.cod_pessoa');
           DMEXPORTA.Alx.SQL.Add('where (upper(pessoa.nome) = UPPER(' + #39 + DMPESSOA.TPessoa.FieldByname('NOME').AsString + #39 + ')) AND (pessoa.cpfcnpj = :CPF)');
           DMEXPORTA.Alx.ParamByName('CPF').AsString := DMPESSOA.TPessoa.FieldByname('CPFCNPJ').AsString;
           DMEXPORTA.Alx.Open;

           If DMEXPORTA.Alx.IsEmpty
           Then Begin
               DMEXPORTA.TPessoaF.Insert;
               DMEXPORTA.TPessoaF.FieldByName('COD_PESSOA').AsString := DMEXPORTA.TPessoa.FieldByName('cod_pessoa').AsString;
               DMEXPORTA.TPessoaF.FieldByName('COD_PESSOAF').AsString := DMEXPORTA.TCodigo.FieldByName('COD_PESSOAF').AsString;
               // cadastra pessoa fisica
               CadastraPessoaF;

               // atualizando a tabela codigo
               DMEXPORTA.TCodigo.Edit;
               DMEXPORTA.TCodigo.FieldByName('cod_pessoa').AsInteger := DMEXPORTA.TCodigo.FieldByName('cod_pessoa').AsInteger + 1;
               DMEXPORTA.TCodigo.FieldByName('cod_cliente').AsInteger := DMEXPORTA.TCodigo.FieldByName('cod_cliente').AsInteger + 1;
               DMEXPORTA.TCodigo.FieldByName('cod_pessoaf').AsInteger := DMEXPORTA.TCodigo.FieldByName('cod_pessoaf').AsInteger + 1;
               DMEXPORTA.TCodigo.Post;
           End
           Else Begin
               FiltraTabela(DMEXPORTA.TPessoaF,'PESSOAF','COD_PESSOA',DMEXPORTA.Alx.FieldByName('cod_pessoa').AsString,'');

               DMEXPORTA.TPessoaF.Edit;
               // cadastra pessoa fisica
               CadastraPessoaF;
           End;
       End
       // caso contrario eh efetuado o cadastro como pessoa juridica no banco de fora
       Else Begin
           FiltraTabela(DMEXPORTA.TPessoa,'PESSOA','CPFCNPJ',DMPESSOA.TPessoa.FieldByName('CPFCNPJ').AsString,'');

           DMEXPORTA.Alx.Close;
           DMEXPORTA.Alx.SQL.Clear;
           DMEXPORTA.Alx.SQL.Add('select * from pessoaj ');
           DMEXPORTA.Alx.SQL.Add('left join pessoa on pessoaj.cod_pessoa = pessoa.cod_pessoa');
           DMEXPORTA.Alx.SQL.Add('where (upper(pessoa.nome) = UPPER(' + #39 + DMPESSOA.TPessoa.FieldByname('NOME').AsString + #39 + ') AND (pessoa.cpfcnpj = :CPF))');
           DMEXPORTA.Alx.ParamByName('CPF').AsString := DMPESSOA.TPessoa.FieldByname('CPFCNPJ').AsString;
           DMEXPORTA.Alx.Open;

           If DMEXPORTA.Alx.IsEmpty
           Then Begin
               DMEXPORTA.TPessoaJ.Insert;
               DMEXPORTA.TPessoaJ.FieldByName('COD_PESSOA').AsString := DMEXPORTA.TPessoa.FieldByName('cod_pessoa').AsString;
               DMEXPORTA.TPessoaJ.FieldByName('COD_PESSOAJ').AsString := DMEXPORTA.TCodigo.FieldByName('COD_PESSOAJ').AsString;

               // atualizando a tabela codigo
               DMEXPORTA.TCodigo.Edit;
               DMEXPORTA.TCodigo.FieldByName('COD_PESSOA').AsInteger := DMEXPORTA.TCodigo.FieldByName('cod_pessoa').AsInteger + 1;
               DMEXPORTA.TCodigo.FieldByName('cod_cliente').AsInteger := DMEXPORTA.TCodigo.FieldByName('cod_cliente').AsInteger + 1;
               DMEXPORTA.TCodigo.FieldByName('cod_pessoaJ').AsInteger := DMEXPORTA.TCodigo.FieldByName('cod_pessoaJ').AsInteger + 1;
               DMEXPORTA.TCodigo.Post;
           End
           Else Begin
               DMEXPORTA.TPessoaJ.Edit;
           End;

           DMEXPORTA.tpessoaj.FieldByName('insc_est').AsString := DMPESSOA.TPessoaJ.fieldByname('insc_est').AsString;
           DMEXPORTA.tpessoaj.FieldByName('razao_social').AsString := DMPESSOA.TPessoaJ.fieldByname('razao_social').AsString;
           DMEXPORTA.tpessoaj.FieldByName('insc_mun').AsString := DMPESSOA.TPessoaJ.fieldByname('insc_mun').AsString;
           DMEXPORTA.tpessoaj.FieldByName('web_page').AsString := DMPESSOA.TPessoaJ.fieldByname('web_page').AsString;
           DMEXPORTA.TPessoaJ.Post;
       End;

       // SQL LOCAL PARA BUCAR OS DADOS DO CLIENTE BANCO LOCAL
       FiltraTabela(DMPESSOA.TCliente,'CLIENTE','COD_CLIENTE',DMServ.TOrd.FieldByName('COD_CLIENTE').AsString,'');

       DMEXPORTA.TCliente.FieldByName('COD_INTERNO').AsString := DMPESSOA.TCliente.FieldByname('COD_INTERNO').AsString;
       DMEXPORTA.TCliente.FieldByName('DATA_CAD').AsString := DMPESSOA.TCliente.FieldByname('DATA_CAD').AsString;
       DMEXPORTA.TCliente.FieldByName('R_SAL_CONJ').AsString := DMPESSOA.TCliente.FieldByname('R_SAL_CONJ').AsString;
       DMEXPORTA.TCliente.FieldByName('R_SALARIO').AsString := DMPESSOA.TCliente.FieldByname('R_SALARIO').AsString;
       DMEXPORTA.TCliente.FieldByName('R_HON_PROF').AsString := DMPESSOA.TCliente.FieldByname('R_HON_PROF').AsString;
       DMEXPORTA.TCliente.FieldByName('R_OUTREC').AsString := DMPESSOA.TCliente.FieldByname('R_OUTREC').AsString;
       DMEXPORTA.TCliente.FieldByName('D_ALUGUEL').AsString := DMPESSOA.TCliente.FieldByname('D_ALUGUEL').AsString;
       DMEXPORTA.TCliente.FieldByName('D_RESIDENCIA').AsString := DMPESSOA.TCliente.FieldByname('D_RESIDENCIA').AsString;
       DMEXPORTA.TCliente.FieldByName('D_VEICULO').AsString := DMPESSOA.TCliente.FieldByname('D_VEICULO').AsString;
       DMEXPORTA.TCliente.FieldByName('D_FAMILIAR').AsString := DMPESSOA.TCliente.FieldByname('D_FAMILIAR').AsString;
       DMEXPORTA.TCliente.FieldByName('D_OUTDESP').AsString := DMPESSOA.TCliente.FieldByname('D_OUTDESP').AsString;
       DMEXPORTA.TCliente.FieldByName('LIM_CRED').AsString := DMPESSOA.TCliente.FieldByname('LIM_CRED').AsString;
       DMEXPORTA.TCliente.FieldByName('QTDTEMPORESID').AsString := DMPESSOA.TCliente.FieldByname('QTDTEMPORESID').AsString;
       DMEXPORTA.TCliente.FieldByName('BENS').AsString := DMPESSOA.TCliente.FieldByname('BENS').AsString;

       // função qu busca o vendedor cadastrado p/ o cliente
       DMEXPORTA.TCliente.FieldByName('COD_VENDEDOR').AsInteger := VerificaFuncionario('VENDEDOR','');

       DMEXPORTA.TCliente.FieldByName('INFOCOM').AsString := DMPESSOA.TCliente.FieldByname('INFOCOM').AsString;
       DMEXPORTA.TCliente.FieldByName('ENDENTRAGA').AsString := DMPESSOA.TCliente.FieldByname('ENDENTRAGA').AsString;
       DMEXPORTA.TCliente.FieldByName('ATUALIZAR').AsString := DMPESSOA.TCliente.FieldByname('ATUALIZAR').AsString;
       DMEXPORTA.TCliente.FieldByName('COD_USUARIO').AsString := DMPESSOA.TCliente.FieldByname('COD_USUARIO').AsString;
       DMEXPORTA.TCliente.FieldByName('ATIVO').AsString := DMPESSOA.TCliente.FieldByname('ATIVO').AsString;
       DMEXPORTA.TCliente.FieldByName('CREDENCIAL').AsString := DMPESSOA.TCliente.FieldByname('CREDENCIAL').AsString;
       DMEXPORTA.TCliente.FieldByName('RAMOATIV').AsString := DMPESSOA.TCliente.FieldByname('RAMOATIV').AsString;
       DMEXPORTA.TCliente.FieldByName('ATACADISTA').AsString := DMPESSOA.TCliente.FieldByname('ATACADISTA').AsString;

       DMEXPORTA.TCliente.FieldByName('COD_FORMPAG').AsInteger := FormaPgto_Cliente;

       DMEXPORTA.TCliente.FieldByName('SEPARAR').AsString := DMPESSOA.TCliente.FieldByname('SEPARAR').AsString;
       DMEXPORTA.TCliente.FieldByName('MULTA').AsString := DMPESSOA.TCliente.FieldByname('MULTA').AsString;
       DMEXPORTA.TCliente.FieldByName('JURO').AsString := DMPESSOA.TCliente.FieldByname('JURO').AsString;
       DMEXPORTA.TCliente.FieldByName('OBS').AsString := DMPESSOA.TCliente.FieldByname('OBS').AsString;
       DMEXPORTA.TCliente.FieldByName('SCPC').AsString := DMPESSOA.TCliente.FieldByname('SCPC').AsString;
       DMEXPORTA.TCliente.FieldByName('TAMANHO').AsString := DMPESSOA.TCliente.FieldByname('TAMANHO').AsString;
       DMEXPORTA.TCliente.FieldByName('INFORMACAO').AsString := DMPESSOA.TCliente.FieldByname('INFORMACAO').AsString;
       DMEXPORTA.TCliente.FieldByName('DIAVENCIMENTO').AsString := DMPESSOA.TCliente.FieldByname('DIAVENCIMENTO').AsString;
       DMEXPORTA.TCliente.Post;

       DMEXPORTA.IBTExporta.CommitRetaining;

       Result := DMEXPORTA.TCliente.FieldByname('cod_cliente').AsInteger;

end;

// busca forma de pagamento, se necessario cadastra a nova forma
Function TFOrdem.Forma_Pagamento: integer;
begin
   // seleciona no banco o local os dados da tabela forma de pagamento, princialmente a descricao
   FiltraTabela(DMFINANC.TFormPag,'FORMPAG','COD_FORMPAG',DMServ.TOrd.FieldByName('cod_formpag').AsString,'');

   // verifica se no banco de fora existe a forma de pagemtn o com a mesma descricao
   DMEXPORTA.TFormPag.Close;
   DMEXPORTA.TFormPag.SQL.Clear;
   DMEXPORTA.TFormPag.SQL.Add('select * from formpag where (upper(formpag.descricao) = upper(' + #39 + DMFINANC.TFormPag.FieldByName('descricao').AsString + #39 + '))');
   DMEXPORTA.TFormPag.Open;

   If DMEXPORTA.TFormPag.IsEmpty
   Then Begin
       // inserindo forma de pagamento
       DMEXPORTA.TFormPag.Insert;
       DMEXPORTA.TFormPag.FieldByName('COD_FORMPAG').AsInteger := DMEXPORTA.TCodigo.FieldByName('cod_formpag').AsInteger;

       // ATUALIZANDO O BANCO DE FORA
       DMEXPORTA.TCodigo.Edit;
       DMEXPORTA.TCodigo.FieldByName('cod_formpag').AsInteger := DMEXPORTA.TCodigo.FieldByName('cod_formpag').AsInteger + 1;
       DMEXPORTA.TCodigo.Post;
   End
   Else Begin
       // editando os dados de forma de pagamento
       DMEXPORTA.TFormPag.Edit;
   End;

   DMEXPORTA.TFormPag.FieldByName('COD_LOJA').AsString := DMServ.TOrd.FieldByName('COD_LOJA').AsString;
   DMEXPORTA.TFormPag.FieldByName('DESCFISC').AsString := DMFINANC.TFormPag.FieldByName('DESCFISC').AsString;
   DMEXPORTA.TFormPag.FieldByName('DESCRICAO').AsString := DMFINANC.TFormPag.FieldByName('DESCRICAO').AsString;
   DMEXPORTA.TFormPag.FieldByName('INTERVALO').AsString := DMFINANC.TFormPag.FieldByName('INTERVALO').AsString;
   DMEXPORTA.TFormPag.FieldByName('JUROAPLIC').AsString := DMFINANC.TFormPag.FieldByName('JUROAPLIC').AsString;
   DMEXPORTA.TFormPag.FieldByName('MEDIADIAS').AsString := DMFINANC.TFormPag.FieldByName('MEDIADIAS').AsString;
   DMEXPORTA.TFormPag.FieldByName('PRIMPARCELA').AsString := DMFINANC.TFormPag.FieldByName('PRIMPARCELA').AsString;
   DMEXPORTA.TFormPag.FieldByName('QUANTPARCELA').AsString := DMFINANC.TFormPag.FieldByName('QUANTPARCELA').AsString;
   DMEXPORTA.TFormPag.FieldByName('TIPO').AsString := DMFINANC.TFormPag.FieldByName('TIPO').AsString;
   DMEXPORTA.TFormPag.Post;

   Result := DMEXPORTA.TFormPag.FieldByName('cod_formpag').AsInteger;

end;

// PROCEDIMENTO PARA EXECUTAR EXPORTAÇÃO DE PRODUTOS DE ORDEM DE SERVIÇO PARA PEDIDO DE VENDA
Procedure TFOrdem.ExportaOrdServ;
begin
   // Conecta banco de ddos para exportar Ordens
   If ConectaBancoDados(DMMACS.TLoja.FieldByName('EXPORT_OS').AsString) = true
   Then Begin
       // se refere ás posições da barra de progressão
       XContador := 0;

       // seleciona no banco local todas as ordens de serviço que fram selecionadas e que ainda nao foram exportadas - banco local
       DMServ.TOrd.Close;
       DMServ.TOrd.SQL.Clear;
       DMServ.TOrd.SQL.Add('select * from ordem where (ordem.exp = ' + #39 + 'X' + #39+ ')');
       DMServ.TOrd.SQL.Add('and (ordem.status = ' + #39 + 'FECHADO' + #39 + ') and ((ordem.exportado = ' + #39 + '' + #39 +') or (ordem.exportado is null) )');
       DMServ.TOrd.Open;

       // seleciona o numero de produtos na ordem de servico para servir de base para Barra de Progressão
       DMSAIDA.TAlx.Close;
       DMSAIDA.TAlx.SQL.Clear;
       DMSAIDA.TAlx.SQL.Add('select count(itprodord.cod_itprodord) as TOTAL from itprodord');
       DMSAIDA.TAlx.SQL.Add('left join ordem on itprodord.cod_ordem = ordem.cod_ordem');
       DMSAIDA.TAlx.SQL.Add('where (ordem.exportado = ' + #39 + '' + #39 +') OR (ORDEM.EXPORTADO IS NULL)');
       DMSAIDA.TAlx.Open;

       // dados do componente ProgreeBar
       PBExport.Min := 0;
       PBExport.Max := DMSAIDA.TAlx.FieldByname('total').AsInteger;
       PExp.Visible := true;
       PExp.BringToFront;
       PBExport.Position := XContador;

       // primeiro registro
       DMServ.TOrd.First;

       While Not DMServ.TOrd.Eof do
       Begin

           // BLOCO DE INSERÇÃO DE PEDIDO DE VENDA DO BANCO DE FORA
// ******************************************************************************************************************
           // apenas selecionando dados da tabela pedido de venda do banco de fora
           DMEXPORTA.TPedV.Close;
           DMEXPORTA.TPedV.SQL.Clear;
           DMEXPORTA.TPedV.SQL.Add('select * from pedvenda');
           DMEXPORTA.TPedV.Open;

           // buscando dados da tabela codigo do banco de fora
           DMEXPORTA.TCodigo.Close;
           DMEXPORTA.TCodigo.SQL.Clear;
           DMEXPORTA.TCodigo.SQL.Add('select * from codigo');
           DMEXPORTA.TCodigo.Open;

           // inserindo novo pedido de venda para banco de fora
           DMEXPORTA.TPedV.Insert;
           DMEXPORTA.TPedV.FieldByName('cod_pedvenda').AsInteger := DMEXPORTA.TCodigo.FieldByName('cod_pedvenda').AsInteger;

           // verifica se o cliente esta cadastrado no banco, se nao tiver jah cadastra na hora
           DMEXPORTA.TPedV.FieldByName('COD_CLIENTE').AsInteger := VerificaCliente(DMServ.TOrd.FieldByName('cod_cliente').AsInteger);

           DMEXPORTA.TPedV.FieldByName('DTPEDVEN').AsString := DMServ.TOrd.FieldByName('DTABERT').AsString;
           DMEXPORTA.TPedV.FieldByName('DESCONTO').AsString := DMServ.TOrd.FieldByName('DESCONTO').AsString;
           DMEXPORTA.TPedV.FieldByName('COD_USUARIO').AsString := DMServ.TOrd.FieldByName('COD_USUARIO').AsString;

           // busca forma de pagamento, se necessario cadastra a nova forma
           DMEXPORTA.TPedV.FieldByName('COD_FORMPAG').AsInteger := Forma_Pagamento;

           DMEXPORTA.TPedV.FieldByName('VALOR').AsString := DMServ.TOrd.FieldByName('TOTprod').AsString;

           // nesse nistante jah foi gravado os dados do cliente e apenas seleciona novamente para gravar no pedido de venda
           DMEXPORTA.Alx3.Close;
           DMEXPORTA.Alx3.SQL.Clear;
           DMEXPORTA.Alx3.SQL.Add('select cliente.cod_cliente, cliente.cod_pessoa, pessoa.cpfcnpj, pessoa.cod_pessoa, pessoa.nome');
           DMEXPORTA.Alx3.SQL.Add('from cliente');
           DMEXPORTA.Alx3.SQL.Add('left join pessoa on cliente.cod_pessoa = pessoa.cod_pessoa');
           DMEXPORTA.Alx3.SQL.Add('where cliente.cod_cliente = :codigo');
           DMEXPORTA.Alx3.ParamByName('codigo').AsInteger := DMEXPORTA.TPedV.FieldByName('COD_CLIENTE').AsInteger;
           DMEXPORTA.Alx3.Open;

           DMEXPORTA.TPedV.FieldByName('NOMECLI').AsString := DMEXPORTA.Alx3.FieldByName('nome').AsString;
           DMEXPORTA.TPedV.FieldByName('OBS').AsString := DMServ.TOrd.FieldByName('OBSERVACAO').AsString;
           DMEXPORTA.TPedV.FieldByName('CPFCNPJ').AsString := DMEXPORTA.Alx3.FieldByName('CPFCNPJ').AsString;

           // verifica se jah existe o funcionario no banco de fora, e se nao estiver jah cadastra na hora
           DMEXPORTA.TPedV.FieldByName('COD_VENDEDOR').AsInteger := VerificaFuncionario('VENDEDOR','');

           DMEXPORTA.TPedV.FieldByName('SITUACAO').AsString := 'ABERTO';
           DMEXPORTA.TPedV.FieldByName('NUMPED').AsString := DMServ.TOrd.FieldByName('NUMERO').AsString;
           DMEXPORTA.TPedV.FieldByName('TIPO').AsString := 'VND';
           DMEXPORTA.TPedV.FieldByName('VLRCOMIS').AsString := DMServ.TOrd.FieldByName('COMISSAO').AsString;
           DMEXPORTA.TPedV.FieldByName('COMSOBVENDA').AsString := '1';
           DMEXPORTA.TPedV.FieldByName('FISCO').AsString := DMServ.TOrd.FieldByName('FISCO').AsString;
           DMEXPORTA.TPedV.FieldByName('NUMFISCAL').AsString := DMServ.TOrd.FieldByName('NUMFISCAL').AsString;
           DMEXPORTA.TPedV.FieldByName('DTFECH').AsString := DMServ.TOrd.FieldByName('DTFECH').AsString;
           DMEXPORTA.TPedV.FieldByName('COBRANCA').AsString := DMServ.TOrd.FieldByName('TIPOPAG').AsString;
           DMEXPORTA.TPedV.Post;

           // atualiza a tabela codigo com o novo cod_pedvenda
           DMEXPORTA.TCodigo.Edit;
           DMEXPORTA.TCodigo.FieldByName('cod_pedvenda').AsInteger := DMEXPORTA.TPedV.FieldByName('cod_pedvenda').AsInteger + 1;
           DMEXPORTA.TCodigo.Post;

// ******************************************************************************************************************

           // seleciona os subprodutos relacionados á ordem de servico atual - banco local
           DMServ.TPOrd.Close;
           DMServ.TPOrd.SQL.Clear;
           DMServ.TPOrd.SQL.Add('select * from itprodord where itprodord.cod_ordem = :codigo');
           DMServ.TPOrd.ParamByName('codigo').AsInteger := DMServ.TOrd.FieldByname('cod_ordem').AsInteger;
           DMServ.TPOrd.Open;

           // ITENS DO PEDIDO DE VENDA DO BANCO DE FORA
           DMEXPORTA.TItensPDV.Close;
           DMEXPORTA.TItensPDV.SQL.Clear;
           DMEXPORTA.TItensPDV.SQL.Add('SELECT * FROM ITENSPEDVEN');
           DMEXPORTA.TItensPDV.Open;

           // primeiro registro da lista de subprodutos
           DMServ.TPOrd.First;

           While Not DMServ.TPOrd.Eof do
           Begin

           XContador := XContador + 1;

               // seleciona os dados da tabela estoque que tenha o mesmo cod_estoque - banco local
               DMESTOQUE.TEstoque.Close;
               DMESTOQUE.TEstoque.SQL.Clear;
               DMESTOQUE.TEstoque.SQL.Add('select * from estoque where estoque.cod_estoque = :codigo');
               DMESTOQUE.TEstoque.ParamByName('codigo').AsInteger := DMServ.TPOrd.FieldByname('cod_estoque').AsInteger;
               DMESTOQUE.TEstoque.Open;

               // seleciona dados da tabela subproduto que tenha o mesmo codigo de subproduto que a tabela estoque - banco local
               DMESTOQUE.TSubProd.Close;
               DMESTOQUE.TSubProd.SQL.Clear;
               DMESTOQUE.TSubProd.SQL.Add('select * from subproduto where subproduto.cod_subproduto = :codigo');
               DMESTOQUE.TSubProd.ParamByName('codigo').AsInteger := DMESTOQUE.TEstoque.FieldByname('cod_subprod').AsInteger;
               DMESTOQUE.TSubProd.Open;

               // verifica se no banco de fora existe o mesmo subproduto
               DMEXPORTA.TSubProd.Close;
               DMEXPORTA.TSubProd.SQL.Clear;
               DMEXPORTA.TSubProd.SQL.Add('select * from subproduto');
               DMEXPORTA.TSubProd.SQL.Add('WHERE subproduto.CONTRINT = :codigo');
               DMEXPORTA.TSubProd.ParamByName('CODIGO').AsString := DMESTOQUE.TSubProd.FieldByName('CONTRINT').AsString;
               DMEXPORTA.TSubProd.Open;

               // seleciona todos os dados da tabela estoque que tenha o mesmo codigo de subproduto
               DMEXPORTA.TEstoque.Close;
               DMEXPORTA.TEstoque.SQL.Clear;
               DMEXPORTA.TEstoque.SQL.Add('select * from estoque where estoque.cod_subprod = :codigo ');
               DMEXPORTA.TEstoque.ParamByName('codigo').AsString := DMEXPORTA.TSubProd.FieldByName('cod_subproduto').AsString;
               DMEXPORTA.TEstoque.Open;

               // se o banco que for receber as exportações nao possuir o subproduto atual, o mesmo eh cadastrado
               If DMEXPORTA.TSubProd.IsEmpty
               Then Begin
                   DMEXPORTA.TSubProd.Insert;
                   DMEXPORTA.TSubProd.FieldByName('cod_subproduto').AsInteger := DMEXPORTA.TCodigo.FieldByname('cod_subproduto').AsInteger;
                   DMEXPORTA.TEstoque.Insert;
                   DMEXPORTA.TEstoque.FieldByName('cod_estoque').AsInteger := DMEXPORTA.TCodigo.FieldByname('cod_estoque').AsInteger;

                   DMEXPORTA.TCodigo.Edit;
                   DMEXPORTA.TCodigo.FieldByName('cod_subproduto').AsInteger := DMEXPORTA.TCodigo.fieldByName('cod_subproduto').AsInteger + 1;
                   DMEXPORTA.TCodigo.FieldByName('cod_estoque').AsInteger := DMEXPORTA.TCodigo.FieldByName('cod_estoque').AsInteger + 1;
                   DMEXPORTA.TCodigo.Post;
               End
               Else Begin
                   DMEXPORTA.TSubProd.Edit;
                   DMEXPORTA.TEstoque.Edit;
               End;

               // seleciona dados da tabela produto que tenha o mesmo codigo que a tabela subproduto - banco local
               DMESTOQUE.TProduto.Close;
               DMESTOQUE.TProduto.SQL.Clear;
               DMESTOQUE.TProduto.SQL.Add('select * from produto where produto.cod_produto = :codigo');
               DMESTOQUE.TProduto.ParamByName('codigo').AsInteger := DMESTOQUE.TSubProd.FieldByname('cod_produto').AsInteger;
               DMESTOQUE.TProduto.Open;

               // seleciona o produtto uque tenha a mesma descricao que o banco local - banco de fora
               DMEXPORTA.TProduto.Close;
               DMEXPORTA.TProduto.SQL.Clear;
               DMEXPORTA.TProduto.SQL.Add('select * from produto where (upper(produto.descricao) = upper(' + #39 + DMESTOQUE.TProduto.FieldByName('descricao').AsString + #39 + '))');
               DMEXPORTA.TProduto.Open;

               If DMEXPORTA.TProduto.IsEmpty
               Then Begin
                   DMEXPORTA.TProduto.Insert;
                   DMEXPORTA.TProduto.FieldByName('cod_produto').AsInteger := DMEXPORTA.TCodigo.FieldByname('cod_produto').AsInteger;

                   DMEXPORTA.TCodigo.Edit;
                   DMEXPORTA.TCodigo.FieldByName('cod_produto').AsInteger := DMEXPORTA.TCodigo.FieldByName('cod_produto').AsInteger + 1;
                   DMEXPORTA.TCodigo.Post;
               End
               Else Begin
                   DMEXPORTA.TProduto.Edit;
               End;

               // seleciona dados da tabela grupoprod que tenha o mesmo codigo que a tabela produto
               DMESTOQUE.TGrupo.Close;
               DMESTOQUE.TGrupo.SQL.Clear;
               DMESTOQUE.TGrupo.SQL.Add('select * from grupoprod where grupoprod.cod_grupoprod = :codigo');
               DMESTOQUE.TGrupo.ParamByName('codigo').AsInteger := DMESTOQUE.TProduto.FieldByName('cod_grupoprod').AsInteger;
               DMESTOQUE.TGrupo.Open;

               // seleciona dados da tabela grupoprod do banco de fora que tenha a mesma descricao
               DMEXPORTA.TGrupo.Close;
               DMEXPORTA.TGrupo.SQL.Clear;
               DMEXPORTA.TGrupo.SQL.Add('select * from grupoprod where (upper(grupoprod.descricao) = upper(' + #39 + DMESTOQUE.TGrupo.FieldByName('descricao').AsString + #39 + '))');
               DMEXPORTA.TGrupo.Open;

               If DMEXPORTA.TGrupo.IsEmpty
               Then Begin
                   DMEXPORTA.TGrupo.Insert;
                   DMEXPORTA.TGrupo.FieldByName('cod_grupoprod').AsInteger := DMEXPORTA.TCodigo.FieldByname('cod_grupoprod').AsInteger;
                   DMEXPORTA.TCodigo.Edit;
                   DMEXPORTA.TCodigo.FieldByName('cod_grupoprod').AsInteger := DMEXPORTA.TCodigo.FieldByName('cod_grupoprod').AsInteger + 1;
                   DMEXPORTA.TCodigo.Post;
               End
               Else Begin
                   DMEXPORTA.TGrupo.Edit;
               End;

               // grava na tabela grupoprod do banco de fora os novos dados
               DMEXPORTA.TGrupo.FieldByName('cod_interno').AsString := DMESTOQUE.TGrupo.FieldByName('cod_interno').AsString;
               DMEXPORTA.TGrupo.FieldByName('descricao').AsString := DMESTOQUE.TGrupo.FieldByName('descricao').AsString;
               DMEXPORTA.TGrupo.FieldByName('tipo').AsString := DMESTOQUE.TGrupo.FieldByName('tipo').AsString;
               DMEXPORTA.TGrupo.Post;

               // seleciona no banco de dados local os dados da tabela subgrupoprod
               DMESTOQUE.TSubgru.Close;
               DMESTOQUE.TSubgru.SQL.Clear;
               DMESTOQUE.TSubgru.SQL.Add('select * from subgrupoprod where subgrupoprod.cod_subgrupoprod = :codigo');
               DMESTOQUE.TSubgru.ParamByName('codigo').AsInteger := DMESTOQUE.TProduto.FieldByname('cod_subgrupoprod').AsInteger;
               DMESTOQUE.TSubgru.Open;

               // seleciona dados da tabela subgrupoprod do banco de fora que tenha a mesma descricao
               DMEXPORTA.TSubgru.Close;
               DMEXPORTA.TSubgru.SQL.Clear;
               DMEXPORTA.TSubgru.SQL.Add('select * from subgrupoprod where (upper(subgrupoprod.descricao) = upper(' + #39 + DMESTOQUE.TSubgru.FieldByName('descricao').AsString + #39 + '))');
               DMEXPORTA.TSubgru.Open;

               If DMEXPORTA.TSubgru.IsEmpty
               Then Begin
                   DMEXPORTA.TSubgru.Insert;
                   DMEXPORTA.TSubgru.FieldByName('cod_subgrupoprod').AsInteger := DMEXPORTA.TCodigo.FieldByName('cod_subgrupoprod').AsInteger;
                   DMEXPORTA.TCodigo.Edit;
                   DMEXPORTA.TCodigo.FieldByName('cod_subgrupoprod').AsInteger := DMEXPORTA.TCodigo.FieldByName('cod_subgrupoprod').AsInteger + 1;
                   DMEXPORTA.TCodigo.Post;
               End
               Else Begin
                   DMEXPORTA.TSubgru.Edit;
               End;

               DMEXPORTA.TSubgru.FieldByName('descricao').AsString := DMESTOQUE.TSubgru.FieldByname('descricao').AsString;
               DMEXPORTA.TSubgru.FieldByName('cod_interno').AsString := DMESTOQUE.TSubgru.FieldByname('cod_interno').AsString;
               DMEXPORTA.TSubgru.FieldByName('tipo').AsString := DMESTOQUE.TSubgru.FieldByname('tipo').AsString;
               DMEXPORTA.TSubgru.post;

               DMEXPORTA.TProduto.FieldByName('APLICACAO').AsString := DMESTOQUE.TProduto.FieldByName('APLICACAO').AsString;
               DMEXPORTA.TProduto.FieldByName('COD_CST').AsString := DMEXPORTA.TCst.FieldByName('cod_cst').AsString;
               DMEXPORTA.TProduto.FieldByName('COD_GRUPOPROD').AsString := DMEXPORTA.TGrupo.FieldByName('cod_grupoprod').AsString;
               DMEXPORTA.TProduto.FieldByName('COD_INTERNO').AsString := DMESTOQUE.TProduto.FieldByName('COD_INTERNO').AsString;
               DMEXPORTA.TProduto.FieldByName('COD_LOJA').AsString := DMESTOQUE.TProduto.FieldByName('COD_LOJA').AsString;
               DMEXPORTA.TProduto.FieldByName('COD_SUBGRUPOPROD').AsString := DMEXPORTA.TSubgru.FieldByName('cod_subgrupoprod').AsString;
               DMEXPORTA.TProduto.FieldByName('COMPPRAZO').AsString := DMESTOQUE.TProduto.FieldByName('COMPPRAZO').AsString;
               DMEXPORTA.TProduto.FieldByName('COMPVISTA').AsString := DMESTOQUE.TProduto.FieldByName('COMPVISTA').AsString;
               DMEXPORTA.TProduto.FieldByName('CUSTOVENDA').AsString := DMESTOQUE.TProduto.FieldByName('CUSTOVENDA').AsString;
               DMEXPORTA.TProduto.FieldByName('DESCRICAO').AsString := DMESTOQUE.TProduto.FieldByName('DESCRICAO').AsString;
               DMEXPORTA.TProduto.FieldByName('QTDCOMP').AsString := DMESTOQUE.TProduto.FieldByName('QTDCOMP').AsString;
               DMEXPORTA.TProduto.FieldByName('QTDVEND').AsString := DMESTOQUE.TProduto.FieldByName('QTDVEND').AsString;
               DMEXPORTA.TProduto.FieldByName('VENDPRAZO').AsString := DMESTOQUE.TProduto.FieldByName('VENDPRAZO').AsString;
               DMEXPORTA.TProduto.FieldByName('VENDVISTA').AsString := DMESTOQUE.TProduto.FieldByName('VENDVISTA').AsString;
               DMEXPORTA.TProduto.post;

               // seleciona dados da tabela cst local que tenha o mesmo codigo que o subproduto
               DMESTOQUE.TCST.Close;
               DMESTOQUE.TCST.SQL.Clear;
               DMESTOQUE.TCST.SQL.Add('select * from cst where cst.cod_cst = :codigo');
               DMESTOQUE.TCST.ParamByName('codigo').AsInteger := DMESTOQUE.TSubProd.FieldByName('cod_cst').AsInteger;
               DMESTOQUE.TCST.Open;

               // seleciona no banco de fora o CST que tenha a Mesma descricao
               DMEXPORTA.TCst.Close;
               DMEXPORTA.TCst.SQL.Clear;
               DMEXPORTA.TCst.SQL.Add('select * from cst where (upper(cst.descricao) = upper(' +#39 + DMESTOQUE.TCST.FieldByname('descricao').AsString + #39 + '))');
               DMEXPORTA.TCst.Open;

               If DMEXPORTA.TCst.IsEmpty
               Then Begin
                   DMEXPORTA.TCst.Insert;
                   DMEXPORTA.TCst.FieldByName('cod_cst').AsInteger := DMEXPORTA.TCodigo.FieldByName('cod_CST').AsInteger;
                   DMEXPORTA.TCodigo.Edit;
                   DMEXPORTA.TCodigo.FieldByName('cod_cst').AsInteger := DMEXPORTA.TCodigo.FieldByName('cod_cst').AsInteger + 1;
                   DMEXPORTA.TCodigo.Post;
                End
                Else Begin
                   DMEXPORTA.TCst.Edit;
                End;

               DMEXPORTA.TCst.FieldByName('cod_sit_trib').AsString := DMESTOQUE.TCST.FieldByname('cod_sit_trib').AsString;
               DMEXPORTA.TCst.FieldByName('descricao').AsString := DMESTOQUE.TCST.FieldByname('descricao').AsString;
               DMEXPORTA.TCst.FieldByName('indiceecf').AsString := DMESTOQUE.TCST.FieldByname('indiceecf').AsString;
               DMEXPORTA.TCst.Post;

               DMEXPORTA.TSubProd.FieldByName('COD_CST').AsString := DMEXPORTA.TCst.FieldByname('cod_cst').AsString;
               DMEXPORTA.TSubProd.FieldByName('cod_produto').AsInteger := DMEXPORTA.TProduto.FieldByName('cod_produto').AsInteger;
               DMEXPORTA.TSubProd.FieldByName('ALTURA').AsString := DMESTOQUE.TSubProd.FieldByName('ALTURA').AsString;
               DMEXPORTA.TSubProd.FieldByName('ANVISA').AsString := DMESTOQUE.TSubProd.FieldByName('ANVISA').AsString;
               DMEXPORTA.TSubProd.FieldByName('ATESTGAR').AsString := DMESTOQUE.TSubProd.FieldByName('ATESTGAR').AsString;
               DMEXPORTA.TSubProd.FieldByName('ATESTVAL').AsString := DMESTOQUE.TSubProd.FieldByName('ATESTVAL').AsString;
               DMEXPORTA.TSubProd.FieldByName('ATIVO').AsString := DMESTOQUE.TSubProd.FieldByName('ATIVO').AsString;
               DMEXPORTA.TSubProd.FieldByName('BALANCA').AsString := DMESTOQUE.TSubProd.FieldByName('BALANCA').AsString;
               DMEXPORTA.TSubProd.FieldByName('CLASSIFICACAO').AsString := DMESTOQUE.TSubProd.FieldByName('CLASSIFICACAO').AsString;
               DMEXPORTA.TSubProd.FieldByName('CODBARRA').AsString := DMESTOQUE.TSubProd.FieldByName('CODBARRA').AsString;
               DMEXPORTA.TSubProd.FieldByName('CODCOMPOSTO').AsString := DMESTOQUE.TSubProd.FieldByName('CODCOMPOSTO').AsString;
               DMEXPORTA.TSubProd.FieldByName('CODEAN1').AsString := DMESTOQUE.TSubProd.FieldByName('CODEAN1').AsString;
               DMEXPORTA.TSubProd.FieldByName('CODPRODFABR').AsString := DMESTOQUE.TSubProd.FieldByName('CODPRODFABR').AsString;
               DMEXPORTA.TSubProd.FieldByName('COD_INTERNO').AsString := DMESTOQUE.TSubProd.FieldByName('COD_INTERNO').AsString;

               FiltraTabela(DMESTOQUE.TUnidade,'UNIDADE','COD_UNIDADE',DMESTOQUE.TSubProd.FieldByName('COD_UNIDCOMPRA').AsString,'');

               // procura dados na tabela unidade tanto no banco local como o de fora e insere novos dads se necessario
               DMEXPORTA.TSubProd.FieldByName('COD_UNIDCOMPRA').AsInteger := DadosUnidade;

               FiltraTabela(DMESTOQUE.TUnidade,'UNIDADE','COD_UNIDADE',DMESTOQUE.TSubProd.FieldByName('COD_UNIDVENDA').AsString,'');

               // procura dados na tabela unidade tanto no banco local como o de fora e insere novos dads se necessario
               DMEXPORTA.TSubProd.FieldByName('COD_UNIDVENDA').AsInteger := DadosUnidade;

               DMEXPORTA.TSubProd.FieldByName('COMPOSICAO').AsString := DMESTOQUE.TSubProd.FieldByName('COMPOSICAO').AsString;
               DMEXPORTA.TSubProd.FieldByName('CONTRINT').AsString := DMESTOQUE.TSubProd.FieldByName('CONTRINT').AsString;
               DMEXPORTA.TSubProd.FieldByName('COR').AsString := DMESTOQUE.TSubProd.FieldByName('COR').AsString;
               DMEXPORTA.TSubProd.FieldByName('DESCCUPOM').AsString := DMESTOQUE.TSubProd.FieldByName('DESCCUPOM').AsString;
               DMEXPORTA.TSubProd.FieldByName('DESCRICAO').AsString := DMESTOQUE.TSubProd.FieldByName('DESCRICAO').AsString;
               DMEXPORTA.TSubProd.FieldByName('DTCAD').AsString := DMESTOQUE.TSubProd.FieldByName('DTCAD').AsString;
               DMEXPORTA.TSubProd.FieldByName('EMBPROD').AsString := DMESTOQUE.TSubProd.FieldByName('EMBPROD').AsString;
               DMEXPORTA.TSubProd.FieldByName('ESPECIFICACAO').AsString := DMESTOQUE.TSubProd.FieldByName('ESPECIFICACAO').AsString;
               DMEXPORTA.TSubProd.FieldByName('FABRICANTE').AsString := DMESTOQUE.TSubProd.FieldByName('FABRICANTE').AsString;
               DMEXPORTA.TSubProd.FieldByName('GERMI').AsString := DMESTOQUE.TSubProd.FieldByName('GERMI').AsString;
               DMEXPORTA.TSubProd.FieldByName('IPIPROD').AsString := DMESTOQUE.TSubProd.FieldByName('IPIPROD').AsString;
               DMEXPORTA.TSubProd.FieldByName('LARGURA').AsString := DMESTOQUE.TSubProd.FieldByName('LARGURA').AsString;
               DMEXPORTA.TSubProd.FieldByName('LOCALESTANTE').AsString := DMESTOQUE.TSubProd.FieldByName('LOCALESTANTE').AsString;
               DMEXPORTA.TSubProd.FieldByName('LOTE').AsString := DMESTOQUE.TSubProd.FieldByName('LOTE').AsString;
               DMEXPORTA.TSubProd.FieldByName('MARCA').AsString := DMESTOQUE.TSubProd.FieldByName('MARCA').AsString;
               DMEXPORTA.TSubProd.FieldByName('MARK').AsString := DMESTOQUE.TSubProd.FieldByName('MARK').AsString;
               DMEXPORTA.TSubProd.FieldByName('MINSAUDE').AsString := DMESTOQUE.TSubProd.FieldByName('MINSAUDE').AsString;
               DMEXPORTA.TSubProd.FieldByName('MOTIVO').AsString := DMESTOQUE.TSubProd.FieldByName('MOTIVO').AsString;
               DMEXPORTA.TSubProd.FieldByName('NCM').AsString := DMESTOQUE.TSubProd.FieldByName('NCM').AsString;
               DMEXPORTA.TSubProd.FieldByName('OBSFISCAL').AsString := DMESTOQUE.TSubProd.FieldByName('OBSFISCAL').AsString;
               DMEXPORTA.TSubProd.FieldByName('PENEIRA').AsString := DMESTOQUE.TSubProd.FieldByName('PENEIRA').AsString;
               DMEXPORTA.TSubProd.FieldByName('PESOBRUTO').AsString := DMESTOQUE.TSubProd.FieldByName('PESOBRUTO').AsString;
               DMEXPORTA.TSubProd.FieldByName('PESOLIQ').AsString := DMESTOQUE.TSubProd.FieldByName('PESOLIQ').AsString;
               DMEXPORTA.TSubProd.FieldByName('PUREZA').AsString := DMESTOQUE.TSubProd.FieldByName('PUREZA').AsString;
               DMEXPORTA.TSubProd.FieldByName('QTDATC').AsString := DMESTOQUE.TSubProd.FieldByName('QTDATC').AsString;
               DMEXPORTA.TSubProd.FieldByName('QUANTGARANTIA').AsString := DMESTOQUE.TSubProd.FieldByName('QUANTGARANTIA').AsString;
               DMEXPORTA.TSubProd.FieldByName('SAFRA').AsString := DMESTOQUE.TSubProd.FieldByName('SAFRA').AsString;
               DMEXPORTA.TSubProd.FieldByName('TIPOGARANTIA').AsString := DMESTOQUE.TSubProd.FieldByName('TIPOGARANTIA').AsString;
               DMEXPORTA.TSubProd.Post;

               // ATUALIZANDO TABELA ESTOQUE
               DMEXPORTA.TEstoque.FieldByName('COD_LOJA').AsString := DMESTOQUE.TEstoque.FieldByName('COD_LOJA').AsString;
               DMEXPORTA.TEstoque.FieldByName('COD_SUBPROD').AsString := DMEXPORTA.TSubProd.FieldByname('cod_subproduto').AsString;
               DMEXPORTA.TEstoque.FieldByName('ULTCOMPRA').AsString := DMESTOQUE.TEstoque.FieldByName('ULTCOMPRA').AsString;
               DMEXPORTA.TEstoque.FieldByName('ULTVENDA').AsString := DMESTOQUE.TEstoque.FieldByName('ULTVENDA').AsString;
               DMEXPORTA.TEstoque.FieldByName('ESTMAX').AsString := DMESTOQUE.TEstoque.FieldByName('ESTMAX').AsString;
               DMEXPORTA.TEstoque.FieldByName('ESTMIN').AsString := DMESTOQUE.TEstoque.FieldByName('ESTMIN').AsString;
               DMEXPORTA.TEstoque.FieldByName('ICMS').AsString := DMESTOQUE.TEstoque.FieldByName('ICMS').AsString;
               DMEXPORTA.TEstoque.FieldByName('FRETE').AsString := DMESTOQUE.TEstoque.FieldByName('FRETE').AsString;
               DMEXPORTA.TEstoque.FieldByName('ESTFISICO').AsString := DMESTOQUE.TEstoque.FieldByName('ESTFISICO').AsString;
               DMEXPORTA.TEstoque.FieldByName('ESTRESERV').AsString := DMESTOQUE.TEstoque.FieldByName('ESTRESERV').AsString;
               DMEXPORTA.TEstoque.FieldByName('ESTPED').AsString := DMESTOQUE.TEstoque.FieldByName('ESTPED').AsString;
               DMEXPORTA.TEstoque.FieldByName('ESTSALDO').AsString := DMESTOQUE.TEstoque.FieldByName('ESTSALDO').AsString;
               DMEXPORTA.TEstoque.FieldByName('CVVPROAT').AsString := DMESTOQUE.TEstoque.FieldByName('CVVPROAT').AsString;
               DMEXPORTA.TEstoque.FieldByName('CVPPROAT').AsString := DMESTOQUE.TEstoque.FieldByName('CVPPROAT').AsString;
               DMEXPORTA.TEstoque.FieldByName('CVVPROVAR').AsString := DMESTOQUE.TEstoque.FieldByName('CVVPROVAR').AsString;
               DMEXPORTA.TEstoque.FieldByName('CVPPROVAR').AsString := DMESTOQUE.TEstoque.FieldByName('CVPPROVAR').AsString;
               DMEXPORTA.TEstoque.FieldByName('VENDATAP').AsString := DMESTOQUE.TEstoque.FieldByName('VENDATAP').AsString;
               DMEXPORTA.TEstoque.FieldByName('VENDATAV').AsString := DMESTOQUE.TEstoque.FieldByName('VENDATAV').AsString;
               DMEXPORTA.TEstoque.FieldByName('VENDVARP').AsString := DMESTOQUE.TEstoque.FieldByName('VENDVARP').AsString;
               DMEXPORTA.TEstoque.FieldByName('VENDVARV').AsString := DMESTOQUE.TEstoque.FieldByName('VENDVARV').AsString;
               DMEXPORTA.TEstoque.FieldByName('VALUNIT').AsString := DMESTOQUE.TEstoque.FieldByName('VALUNIT').AsString;
               DMEXPORTA.TEstoque.FieldByName('VALREP').AsString := DMESTOQUE.TEstoque.FieldByName('VALREP').AsString;
               DMEXPORTA.TEstoque.FieldByName('VALCUSTO').AsString := DMESTOQUE.TEstoque.FieldByName('VALCUSTO').AsString;
               DMEXPORTA.TEstoque.FieldByName('AVVPROAT').AsString := DMESTOQUE.TEstoque.FieldByName('AVVPROAT').AsString;
               DMEXPORTA.TEstoque.FieldByName('AVPPROAT').AsString := DMESTOQUE.TEstoque.FieldByName('AVPPROAT').AsString;
               DMEXPORTA.TEstoque.FieldByName('AVVPROVAR').AsString := DMESTOQUE.TEstoque.FieldByName('AVVPROVAR').AsString;
               DMEXPORTA.TEstoque.FieldByName('AVPPROVAR').AsString := DMESTOQUE.TEstoque.FieldByName('AVPPROVAR').AsString;
               DMEXPORTA.TEstoque.FieldByName('LUCRATIVIDADE').AsString := DMESTOQUE.TEstoque.FieldByName('LUCRATIVIDADE').AsString;
               DMEXPORTA.TEstoque.FieldByName('COEFDIV').AsString := DMESTOQUE.TEstoque.FieldByName('COEFDIV').AsString;
               DMEXPORTA.TEstoque.FieldByName('VALOREST').AsString := DMESTOQUE.TEstoque.FieldByName('VALOREST').AsString;
               DMEXPORTA.TEstoque.FieldByName('OUTROS').AsString := DMESTOQUE.TEstoque.FieldByName('OUTROS').AsString;
               DMEXPORTA.TEstoque.FieldByName('QUANT2').AsString := DMESTOQUE.TEstoque.FieldByName('QUANT2').AsString;
               DMEXPORTA.TEstoque.FieldByName('DTCAD').AsString := DMESTOQUE.TEstoque.FieldByName('DTCAD').AsString;
               DMEXPORTA.TEstoque.FieldByName('ESTINI').AsString := DMESTOQUE.TEstoque.FieldByName('ESTINI').AsString;
               DMEXPORTA.TEstoque.FieldByName('VALCUSDESP').AsString := DMESTOQUE.TEstoque.FieldByName('VALCUSDESP').AsString;
               DMEXPORTA.TEstoque.FieldByName('ESTANTCONT').AsString := DMESTOQUE.TEstoque.FieldByName('ESTANTCONT').AsString;
               DMEXPORTA.TEstoque.FieldByName('CONTAGEM').AsString := DMESTOQUE.TEstoque.FieldByName('CONTAGEM').AsString;
               DMEXPORTA.TEstoque.FieldByName('ESTSIMULADO').AsString := DMESTOQUE.TEstoque.FieldByName('ESTSIMULADO').AsString;
               DMEXPORTA.TEstoque.FieldByName('VLRUNITCOMP').AsString := DMESTOQUE.TEstoque.FieldByName('VLRUNITCOMP').AsString;
               DMEXPORTA.TEstoque.FieldByName('INDICE').AsString := DMESTOQUE.TEstoque.FieldByName('INDICE').AsString;
               DMEXPORTA.TEstoque.FieldByName('BONIFICACAO').AsString := DMESTOQUE.TEstoque.FieldByName('BONIFICACAO').AsString;
               DMEXPORTA.TEstoque.FieldByName('VLRBONIFIC').AsString := DMESTOQUE.TEstoque.FieldByName('VLRBONIFIC').AsString;
               DMEXPORTA.TEstoque.FieldByName('DESCONTO').AsString := DMESTOQUE.TEstoque.FieldByName('DESCONTO').AsString;
               DMEXPORTA.TEstoque.FieldByName('CLNC').AsString := DMESTOQUE.TEstoque.FieldByName('CLNC').AsString;
               DMEXPORTA.TEstoque.FieldByName('MOD').AsString := DMESTOQUE.TEstoque.FieldByName('MOD').AsString;
               DMEXPORTA.TEstoque.FieldByName('IMPEXP').AsString := DMESTOQUE.TEstoque.FieldByName('IMPEXP').AsString;
               DMEXPORTA.TEstoque.FieldByName('IMPREND').AsString := DMESTOQUE.TEstoque.FieldByName('IMPREND').AsString;
               DMEXPORTA.TEstoque.FieldByName('CONTSOC').AsString := DMESTOQUE.TEstoque.FieldByName('CONTSOC').AsString;
               DMEXPORTA.TEstoque.FieldByName('COFINS').AsString := DMESTOQUE.TEstoque.FieldByName('COFINS').AsString;
               DMEXPORTA.TEstoque.FieldByName('PIS').AsString := DMESTOQUE.TEstoque.FieldByName('PIS').AsString;
               DMEXPORTA.TEstoque.FieldByName('MARGEMSEG').AsString := DMESTOQUE.TEstoque.FieldByName('MARGEMSEG').AsString;
               DMEXPORTA.TEstoque.FieldByName('PERCMARGSEG').AsString := DMESTOQUE.TEstoque.FieldByName('PERCMARGSEg').AsString;
               DMEXPORTA.TEstoque.FieldByName('REDUCBASE').AsString := DMESTOQUE.TEstoque.FieldByName('REDUCBASE').AsString;
               DMEXPORTA.TEstoque.FieldByName('VLRCOMPSD').AsString := DMESTOQUE.TEstoque.FieldByName('VLRCOMPSD').AsString;
               DMEXPORTA.TEstoque.FieldByName('ACRECIMO').AsString := DMESTOQUE.TEstoque.FieldByName('ACRECIMO').AsString;
               DMEXPORTA.TEstoque.FieldByName('ESTCALC').AsString := DMESTOQUE.TEstoque.FieldByName('ESTCALC').AsString;
               DMEXPORTA.TEstoque.FieldByName('DATAATU').AsString := DMESTOQUE.TEstoque.FieldByName('DATAATU').AsString;
               DMEXPORTA.TEstoque.FieldByName('HORAATU').AsString := DMESTOQUE.TEstoque.FieldByName('HORAATU').AsString;
               DMEXPORTA.TEstoque.FieldByName('PRECOOFERTA').AsString := DMESTOQUE.TEstoque.FieldByName('PRECOOFERTA').AsString;
               DMEXPORTA.TEstoque.FieldByName('DATAOFERTA').AsString := DMESTOQUE.TEstoque.FieldByName('DATAOFERTA').AsString;
               DMEXPORTA.TEstoque.FieldByName('VENCIMENTOOFERTA').AsString := DMESTOQUE.TEstoque.FieldByName('VENCIMENTOOFERTA').AsString;
               DMEXPORTA.TEstoque.Post;    

               // CODIGO DE ESTOQUE PARA ITENS DE PEDIDO DE VENDA
               DMEXPORTA.TItensPDV.Insert;
               DMEXPORTA.TItensPDV.FieldByName('COD_ESTOQUE').AsInteger := DMEXPORTA.TEstoque.FieldByName('cod_estoque').AsInteger;
               DMEXPORTA.TItensPDV.FieldByName('COD_ITENSPEDVEN').AsInteger := DMEXPORTA.TCodigo.FieldByName('COD_ITENSPEDVEN').AsInteger;
               DMEXPORTA.TItensPDV.FieldByName('COD_PEDVEN').AsString := DMEXPORTA.TPedV.FieldByName('cod_pedvenda').AsString;
               DMEXPORTA.TItensPDV.FieldByName('QTDEPROD').AsString := DMServ.TPOrd.FieldByName('QTD').AsString;
               DMEXPORTA.TItensPDV.FieldByName('DESCPRO').AsString := DMServ.TPOrd.FieldByName('DESCONTO').AsString;

               DMEXPORTA.TItensPDV.FieldByName('COD_FUNCIONARIO').AsString := DMEXPORTA.TPedV.FieldByName('COD_VENDEDOR').AsString;

               DMEXPORTA.TItensPDV.FieldByName('VALUNIT').AsString := DMServ.TPOrd.FieldByName('VLRUNIT').AsString;
               DMEXPORTA.TItensPDV.FieldByName('VALCUSTO').AsString := DMServ.TPOrd.FieldByName('VALCUSTO').AsString;
               DMEXPORTA.TItensPDV.FieldByName('VALORTOTAL').AsString := DMServ.TPOrd.FieldByName('TOTAL').AsString;
               DMEXPORTA.TItensPDV.FieldByName('ATUEST').AsString := '1';
               DMEXPORTA.TItensPDV.FieldByName('VALREP').AsString := DMServ.TPOrd.FieldByName('VALREP').AsString;
               DMEXPORTA.TItensPDV.FieldByName('COEFDIV').AsString := DMServ.TPOrd.FieldByName('COEFDIV').AsString;
               DMEXPORTA.TItensPDV.FieldByName('VALCOMP').AsString := DMServ.TPOrd.FieldByName('VALCOMP').AsString;
               DMEXPORTA.TItensPDV.FieldByName('LUCPER').AsString := DMServ.TPOrd.FieldByName('LUCPER').AsString;
               DMEXPORTA.TItensPDV.FieldByName('LUCMOE').AsString := DMServ.TPOrd.FieldByName('LUCMOE').AsString;
               DMEXPORTA.TItensPDV.FieldByName('DATA').AsString := DMServ.TPOrd.FieldByName('DATA').AsString;
               DMEXPORTA.TItensPDV.FieldByName('COMISSAO').AsString := DMServ.TPOrd.FieldByName('COMISSAO').AsString;
               DMEXPORTA.TItensPDV.FieldByName('OPERACAO').AsString := 'VND';
               DMEXPORTA.TItensPDV.FieldByName('LUCREL').AsString := DMServ.TPOrd.FieldByName('LUCREL').AsString;
               DMEXPORTA.TItensPDV.FieldByName('VLRVENDBD').AsString := DMServ.TPOrd.FieldByName('VLRVENDBD').AsString;
               DMEXPORTA.TItensPDV.FieldByName('ALIQICMS').AsString := DMServ.TPOrd.FieldByName('ALIQICMS').AsString;
               DMEXPORTA.TItensPDV.FieldByName('BASEICMS').AsString := DMServ.TPOrd.FieldByName('BASEICMS').AsString;
               DMEXPORTA.TItensPDV.FieldByName('VLRICMS').AsString := DMServ.TPOrd.FieldByName('VLRICMS').AsString;
               DMEXPORTA.TItensPDV.FieldByName('BASEICMSSUBS').AsString := DMServ.TPOrd.FieldByName('BASEICMSSUBS').AsString;
               DMEXPORTA.TItensPDV.FieldByName('VLRIPI').AsString := DMServ.TPOrd.FieldByName('VLRIPI').AsString;
               DMEXPORTA.TItensPDV.FieldByName('ALIQIPI').AsString := DMServ.TPOrd.FieldByName('ALIQIPI').AsString;
               DMEXPORTA.TItensPDV.FieldByName('REDUCBASEICMS').AsString := DMServ.TPOrd.FieldByName('REDUCBASEICMS').AsString;
               DMEXPORTA.TItensPDV.FieldByName('VLRICMSSUBS').AsString := DMServ.TPOrd.FieldByName('VLRICMSSUBS').AsString;
               DMEXPORTA.TItensPDV.Post;

               DMEXPORTA.TCodigo.Edit;
               DMEXPORTA.TCodigo.FieldByName('COD_ITENSPEDVEN').AsInteger := DMEXPORTA.TCodigo.FieldByName('COD_ITENSPEDVEN').AsInteger + 1;
               DMEXPORTA.TCodigo.Post;

               // posição do progressBar
               PBExport.Position := XContador;

           // proximo ptoduto da ordem
           DMServ.TPOrd.Next;
           End;

           // atualizando o banco de fora
           DMEXPORTA.IBTExporta.CommitRetaining;

       // proxima ordem
       DMServ.TOrd.Next;
       End;

   End
   Else Begin
       Mensagem('   A T E N Ç Ã O   ','Problemas na conexão do banco de dados.','',1,1,false,'A');
       Exit;
   End;
   // atualizando o banco de fora
   DMEXPORTA.IBTExporta.CommitRetaining;

   // invisivel o painel de progressão
   PExp.Visible := false;
   PExp.SendToBack;

   // atualizando o campo "exportado" para que nao seja mais exportado a ordem de serviço
   DMServ.Alx.Close;
   DMServ.Alx.SQL.Clear;
   DMServ.Alx.SQL.Add('update ordem set ordem.exportado = '+ #39 + '#' + #39);
   DMServ.Alx.SQL.Add('where ordem.exp = ' + #39 + 'X' + #39);
   DMServ.Alx.ExecSQL;

   // atualizando o campo "exp" que deixa selecionado as ordens que serão exportadas
   DMServ.Alx.Close;
   DMServ.Alx.SQL.Clear;
   DMServ.Alx.SQL.Add('update ordem set ordem.exp = ' + #39 + '' + #39);
   DMServ.Alx.SQL.Add('where ordem.exp = ' + #39 + 'X' + #39);
   DMServ.Alx.ExecSQL;

   // soh atualiza a grid
   DMServ.WOrdem.Close;
   DMServ.WOrdem.SQL.Clear;
   DMServ.WOrdem.SQL.Add('select * from vwordem');
   DMServ.WOrdem.Open;

   DMServ.IBT.CommitRetaining;

   Mensagem('   N O T I F I C A Ç Ã O   ','Exportação concluída com sucesso.','',1,1,false,'I');

end;

// procura dados na tabela unidade tanto no banco local como o de fora e insere novos dads se necessario
Function TFOrdem.DadosUnidade: integer;
begin
   DMEXPORTA.TUnidade.Close;
   DMEXPORTA.TUnidade.SQL.Clear;
   DMEXPORTA.TUnidade.SQL.Add('SELECT * FROM UNIDADE WHERE (UPPER(UNIDADE.DESC_UNID) = UPPER(' + #39 + DMESTOQUE.TUnidade.FieldByName('desc_unid').AsString + #39 + '))');
   DMEXPORTA.TUnidade.Open;

   If (DMEXPORTA.TUnidade.IsEmpty) and (DMESTOQUE.TUnidade.FieldByName('desc_unid').AsString <> '')
   Then Begin
       DMEXPORTA.TCodigo.Close;
       DMEXPORTA.TCodigo.SQL.Clear;
       DMEXPORTA.TCodigo.SQL.Add('select * from codigo');
       DMEXPORTA.TCodigo.Open;

       DMEXPORTA.TUnidade.Insert;
       DMEXPORTA.TUnidade.FieldByName('cod_unidade').AsInteger := DMEXPORTA.TCodigo.FieldByName('cod_unidade').asinteger + 1;
       DMEXPORTA.TUnidade.FieldByName('arredondar').AsString := DMESTOQUE.TUnidade.FieldByName('arredondar').AsString;
       DMEXPORTA.TUnidade.FieldByName('desc_unid').AsString := DMESTOQUE.TUnidade.FieldByName('desc_unid').AsString;
       DMEXPORTA.TUnidade.FieldByName('sigla_unid').AsString := DMESTOQUE.TUnidade.FieldByName('sigla_unid').AsString;
       DMEXPORTA.TUnidade.Post;

       DMEXPORTA.TCodigo.Edit;
       DMEXPORTA.TCodigo.FieldByName('cod_unidade').AsInteger := DMEXPORTA.TUnidade.FieldByName('cod_unidade').AsInteger;
       DMEXPORTA.TCodigo.Post;
   End;

       Result := DMEXPORTA.TUnidade.FieldByName('cod_unidade').AsInteger;
end;


// Conecta banco de ddos para exportar Ordens
Function TFOrdem.ConectaBancoDados(XEndereco: string): boolean;
begin

   Try
       // DESCONECTA TABELAS DO BANCO QUE IRA RECEBER AS EXPORTAÇÕES DAS ORDENS DE SERVICO
       DMEXPORTA.TEstoque.Active := false;
       DMEXPORTA.TProduto.Active := false;
       DMEXPORTA.TSubProd.Active := false;
       DMEXPORTA.TGrupo.Active := false;
       DMEXPORTA.TSubgru.Active := false;
       DMEXPORTA.TUnidade.Active := false;
       DMEXPORTA.TCst.Active := false;
       DMEXPORTA.TPedV.Active := false;
       DMEXPORTA.TFormPag.Active := false;
       DMEXPORTA.TPessoa.Active := false;
       DMEXPORTA.TPessoaF.Active := false;
       DMEXPORTA.TPessoaJ.Active := false;
       DMEXPORTA.TCodigo.Active := false;

       DMEXPORTA.Alx.Active := false;
       DMEXPORTA.Alx2.Active := false;
       DMEXPORTA.Alx3.Active := false;
       DMEXPORTA.Alx4.Active := false;
       DMEXPORTA.Alx5.Active := false;

       // DESCONECTA BANCO E TRANSACTION
       DMExporta.DBExporta.Connected := false;
       DMExporta.IBTExporta.Active := false;

       //  INFORMA O LOCAL, CONECTA BANCO E ATIVA TRANSACTION
       DMExporta.DBExporta.DatabaseName := XEndereco;
       DMExporta.DBExporta.Connected := true;
       DMExporta.IBTExporta.Active := true;

       // ATIVA TABELAS
       DMEXPORTA.TEstoque.Active := true;
       DMEXPORTA.TProduto.Active := true;
       DMEXPORTA.TSubProd.Active := true;
       DMEXPORTA.TGrupo.Active := true;
       DMEXPORTA.TSubgru.Active := true;
       DMEXPORTA.TUnidade.Active := true;
       DMEXPORTA.TCst.Active := true;
       DMEXPORTA.TPedV.Active := true;
       DMEXPORTA.TFormPag.Active := true;
       DMEXPORTA.TPessoa.Active := true;
       DMEXPORTA.TPessoaF.Active := true;
       DMEXPORTA.TPessoaJ.Active := true;
       DMEXPORTA.TCodigo.Active := true;

       DMEXPORTA.Alx.Active := true;
       DMEXPORTA.Alx2.Active := true;
       DMEXPORTA.Alx3.Active := true;
       DMEXPORTA.Alx4.Active := true;
       DMEXPORTA.Alx5.Active := true;

       Result := true;
   Except
       Result:=false;
   End;


end;

procedure TFOrdem.ExportarOrdServ1Click(Sender: TObject);
begin
  inherited;

   // seleciona numero de ordem que foram selecionados para exportação
   DMServ.Alx.Close;
   DMServ.Alx.SQL.Clear;
   DMServ.Alx.SQL.Add('select count(ordem.cod_ordem) as TOTAL from ordem where (ordem.exp = ' + #39 + 'X' + #39+ ')');
   DMServ.Alx.SQL.Add('and (ordem.status = ' + #39 + 'FECHADO' + #39 + ') and ((ordem.exportado = ' + #39 + '' + #39 +') or (ordem.exportado is null)) and (ordem.exp = ' + #39 + 'X' + #39 + ')');
   DMServ.Alx.Open;

   If DMServ.Alx.FieldByName('TOTAL').AsInteger > 0
   Then begin

       // seleciona todas as ordens que serão exportadas
       DMServ.TAlx1.Close;
       DMServ.TAlx1.SQL.Clear;
       DMServ.TAlx1.SQL.Add('select * from ordem where (ordem.exp = ' + #39 + 'X' + #39+ ')');
       DMServ.TAlx1.SQL.Add('and (ordem.status = ' + #39 + 'FECHADO' + #39 + ') and ((ordem.exportado = ' + #39 + '' + #39 +') or (ordem.exportado is null) )');
       DMServ.TAlx1.Open;

       DMServ.TAlx1.First;

       // primeiro verifica todas as ordens se possuem produtos, caso nao tiver o usuario tera q desmarcar a opção para exportar ou verificar a ordem que nao possui produtos
       while not DMServ.TAlx1.Eof do
       Begin

           // verifica qtos produtos a ordem atual possui
           DMESTOQUE.Alx4.Close;
           DMESTOQUE.Alx4.SQL.Clear;
           DMESTOQUE.Alx4.SQL.Add('select count(itprodord.cod_itprodord) as TOTAL from itprodord');
           DMESTOQUE.Alx4.SQL.Add('where itprodord.cod_ordem = :codigo');
           DMESTOQUE.Alx4.ParamByName('codigo').AsInteger := DMServ.TAlx1.FieldByName('cod_ordem').AsInteger;
           DMESTOQUE.Alx4.Open;

           // se a ordem nao possui nenhum produto, ela nao podera sera exportada e a operação sera finalizada
           If DMESTOQUE.Alx4.FieldByName('TOTAL').AsInteger = 0
           Then Begin
               Mensagem('   A T E N Ç Ã O   ','A O.S. número ' + DMServ.TAlx1.FieldByname('numero').AsString + ' possui apenas serviços, portanto nao será exportada','',1,1,false,'I');

               // a ordem que nao possui produto inserido recebe a atualização para desmarcar a opção para exportar
               DMServ.TAlx2.Close;
               DMServ.TAlx2.SQL.Clear;
               DMServ.TAlx2.SQL.Add('update ordem set ordem.exp = ' + #39 + '' + #39);
               DMServ.TAlx2.SQL.Add('where ordem.cod_ordem = :codigo');
               DMServ.TAlx2.ParamByName('codigo').AsInteger := DMServ.TAlx1.FieldByName('cod_ordem').AsInteger;
               DMServ.TAlx2.ExecSQL;                 

               DMServ.IBT.CommitRetaining;

               // atualiza a grid
               DMServ.WOrdem.Close;
               DMServ.WOrdem.SQL.Clear;
               DMServ.WOrdem.SQL.Add('select * from vwordem where (cod_loja = :codigo)');
               DMServ.WOrdem.ParamByName('codigo').AsString := FMenu.LCODLOJA.Caption;
               DMServ.WOrdem.SQL.Add('ORDER BY DTABERT DESC');
               DMServ.WOrdem.Open;

           End;

       // proxima ordem
       DMServ.TAlx1.Next;
       End;

       DMServ.Alx.Close;
       DMServ.Alx.SQL.Clear;
       DMServ.Alx.SQL.Add('select count(ordem.cod_ordem) as TOTAL from ordem where (ordem.exp = ' + #39 + 'X' + #39+ ')');
       DMServ.Alx.SQL.Add('and (ordem.status = ' + #39 + 'FECHADO' + #39 + ') and ((ordem.exportado = ' + #39 + '' + #39 +') or (ordem.exportado is null)) and (ordem.exp = ' + #39 + 'X' + #39 + ')');
       DMServ.Alx.Open;

       If DMServ.Alx.FieldByName('TOTAL').AsInteger > 0
       Then begin
           If DMServ.Alx.FieldByName('TOTAL').AsInteger = 1
           Then Begin
               If Mensagem('Exportação de Ordem de Serviço','Deseja realmente exporta a Ordem de Serviço selecionada ?','',2,3,false,'I') = 2
               Then Begin
                   // procedimento para exportar ordem de serviço
                   ExportaOrdServ;
               End
               Else Begin
                   Exit;
               End;
           End
           Else Begin
               If Mensagem('Exportação de Ordem de Serviço','Deseja realmente exportar as ' + DMServ.Alx.FieldByName('TOTAL').AsString + ' Ordens de Serviço selecionadas ?','',2,2,false,'I') = 2
               Then Begin
                   // procedimento para exportar ordem de serviço
                   ExportaOrdServ;
               End
               Else Begin
                   Exit;
               End;
           End;
       End
       Else Begin
           Mensagem('   A T E N Ç Ã O   ','Não há Ordem de Serviço fechada para exportação','',1,1,false,'A');
       End;
   End
   Else Begin
       Mensagem('   A T E N Ç Ã O   ','Não há Ordem de Serviço fechada para exportação','',1,1,false,'A');
   End;
end;

procedure TFOrdem.FrmEquipeEDCodigoKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  FrmEquipe.EDCodigoKeyPress(Sender, Key);
   If Key = #13
   Then Begin
       // seleciona equipe que tiver o mesmo codigo
       DMServ.Alx.Close;
       DMServ.Alx.SQL.Clear;
       DMServ.Alx.SQL.Add(' select * from equipe ');
       DMServ.Alx.SQL.Add(' where equipe.cod_equipe = :codigo ');
       DMServ.Alx.ParamByName('codigo').AsString := FrmEquipe.EDCodigo.Text;
       DMServ.Alx.Open;

       If Not DMServ.Alx.IsEmpty
       Then Begin
           FrmEquipe.EdDescricao.Text := DMServ.Alx.FieldByname('descricao').AsString;
           BtnInserir.SetFocus;
       End
       Else Begin
           FrmEquipe.EdDescricao.Text := '';
           FrmEquipe.EDCodigo.SetFocus;
       End;

   End;
end;

procedure TFOrdem.Garantia1Click(Sender: TObject);
begin
  inherited;
   // imprimi relatorio de garantia dos produtos da ordem
   Imprime_Garantia;

end;

// imprimi relatorio de garantia dos produtos da ordem
procedure TFOrdem.Imprime_Garantia;
begin

   // dados da loja
   FiltraTabela(DMMACS.TLoja,'LOJA','COD_LOJA',FMenu.LCODLOJA.Caption,'');

   //dados da empresa
   FiltraTabela(DMMACS.TEmpresa,'EMPRESA','COD_EMPRESA',DMMACS.TLoja.FieldByname('cod_empresa').AsString,'');

   // seleciona dados de Ordem, Equipamento, Produto, cliente, funcionario e principalmente as garantias dos produtos
   DMESTOQUE.TRel.Close;
   DMESTOQUE.TRel.SQL.Clear;
   DMESTOQUE.TRel.SQL.Add('select ordem.cod_ordem, ordem.cod_vendedor, ordem.dtabert, ordem.dtfech, ordem.cod_funcionario, ordem.numero,');
   DMESTOQUE.TRel.SQL.Add('itprodord.cod_ordem, itprodord.qtd, itprodord.cod_estoque, itprodord.vlrunit, itprodord.total, itprodord.data_garantia, itprodord.KMGARANTIA,');
   DMESTOQUE.TRel.SQL.Add('estoque.cod_estoque, estoque.cod_subprod, subproduto.cod_subproduto, subproduto.descricao AS PRODUTO, subproduto.quantgarantia, subproduto.tipogarantia, SUBPRODUTO.CONTRINT, ');
   DMESTOQUE.TRel.SQL.Add('ordem.cod_cliente, cliente.cod_cliente, cliente.cod_pessoa, pessoa.cod_pessoa, pessoa.nome, pessoa.cpfcnpj,');
   DMESTOQUE.TRel.SQL.Add('vwfuncionario.cod_func, vwfuncionario.cod_pessoa, vwfuncionario.nome as NOMEFUNC,');
   DMESTOQUE.TRel.SQL.Add('equipamento.cod_equipamento, equipamento.descricao as EQUIPAMENTO, equipamento.placa, equipamento.num_frota, equipamento.KMATUAL');
   DMESTOQUE.TRel.SQL.Add('from ordem');
   DMESTOQUE.TRel.SQL.Add('left join itprodord on ordem.cod_ordem = itprodord.cod_ordem');
   DMESTOQUE.TRel.SQL.Add('left join estoque on itprodord.cod_estoque = estoque.cod_estoque');
   DMESTOQUE.TRel.SQL.Add('left join subproduto on estoque.cod_subprod = subproduto.cod_subproduto');
   DMESTOQUE.TRel.SQL.Add('left join cliente on ordem.cod_cliente = cliente.cod_cliente');
   DMESTOQUE.TRel.SQL.Add('left join pessoa on cliente.cod_pessoa = pessoa.cod_pessoa');
   DMESTOQUE.TRel.SQL.Add('left join vwfuncionario on ordem.cod_funcionario = vwfuncionario.cod_func');
   DMESTOQUE.TRel.SQL.Add('left join equipamento on ordem.cod_equipamento = equipamento.cod_equipamento');
   DMESTOQUE.TRel.SQL.Add('where ordem.cod_ordem = :codigo');
   DMESTOQUE.TRel.ParamByName('codigo').AsInteger := DMServ.WOrdem.FieldByName('cod_ordem').AsInteger;
   DMESTOQUE.TRel.SQL.Add('order by subproduto.descricao');
   DMESTOQUE.TRel.Open;

   FSDSRel.DataSet := DMESTOQUE.TRel;
   FSRel.Dataset := FSDSRel;

   FSRel.LoadFromFile('C:\MZR\MACS\Rel\FrfRelGarantia.frf');
   FSRel.ShowReport;


end;

// função para calcular data de garantia
function TFOrdem.Calcula_Garantia(Qtde, Tipo: string): TDateTime;
begin
   // se tipo da garantia informado no cadastro do produto for em Dias

   // função para remover os espaços
   Tipo := SubstituiCaracter(Tipo,' ','');

   If Tipo = 'Dias'
   Then Begin
       Result := IncDay(Date,StrToInt(Qtde));
   End;
   If Tipo = 'Meses'
   Then Begin
       Result := IncMonth(Date,StrToInt(Qtde));
   End;
   If Tipo = 'Ano'
   Then Begin
       Result := IncYear(Date,StrToInt(Qtde));
   End;

end;

procedure TFOrdem.EDKMExit(Sender: TObject);
begin
  inherited;

  If EDKM.Text <> ''
  Then Begin
      // seleciona todos os dados de equipamento que tenha o mesmo codigo
      FiltraTabela(DMPESSOA.TEquip,'EQUIPAMENTO','COD_EQUIPAMENTO',IntToStr(XCOD_EQUIPAMENTO),'');

      // SALVANDO A KILOMETRAGEM ATUAL DO EQUIPAMENTO
      DMPESSOA.TEquip.Edit;
      DMPESSOA.TEquip.FieldByName('KMATUAL').AsInteger := StrToInt(EDKM.Text);
      DMPESSOA.TEquip.FieldByName('UNIDRODAGEM').AsString := CBUnid.Text;
      DMPESSOA.TEquip.Post;
      DMPESSOA.TransacPessoa.CommitRetaining;
  End;
end;

procedure TFOrdem.CBUnidExit(Sender: TObject);
begin
  inherited;
  If EDKM.Text <> ''
  Then Begin
      // seleciona todos os dados de equipamento que tenha o mesmo codigo
      FiltraTabela(DMPESSOA.TEquip,'EQUIPAMENTO','COD_EQUIPAMENTO',IntToStr(XCOD_EQUIPAMENTO),'');

      // SALVANDO A KILOMETRAGEM ATUAL DO EQUIPAMENTO
      DMPESSOA.TEquip.Edit;
      DMPESSOA.TEquip.FieldByName('KMATUAL').AsInteger := StrToInt(EDKM.Text);
      DMPESSOA.TEquip.FieldByName('UNIDRODAGEM').AsString := CBUnid.Text;
      DMPESSOA.TEquip.Post;
      DMPESSOA.TransacPessoa.CommitRetaining;
  End;

end;

procedure TFOrdem.FBEquipPlacaEDCodigoExit(Sender: TObject);
begin
  inherited;
   If FBEquipPlaca.EDCodigo.Text <> ''
   Then Begin
       // letras maiusculas
        FBEquipPlaca.EDCodigo.Text:= UpperCase(FBEquipPlaca.EDCodigo.Text);

        DMESTOQUE.Alx.close;
        DMESTOQUE.Alx.SQL.Clear;
        DMESTOQUE.Alx.SQL.Add('select * from equipamento');
        DMESTOQUE.Alx.SQL.Add('where upper(equipamento.placa) like upper ('+#39+FBEquipPlaca.EDCodigo.Text+#39+')');
        DMESTOQUE.Alx.Open;
        if not DMESTOQUE.alx.IsEmpty
        then begin
            FBEquipPlaca.EdDescricao.Text:=DMESTOQUE.Alx.FieldByName('DESCRICAO').AsString;
            EDKM.Text := DMESTOQUE.Alx.FieldByName('KMATUAL').AsString;
            CBUnid.Text := DMESTOQUE.Alx.FieldByName('UNIDRODAGEM').AsString;

            // busca o cliente q esta atrelado ao equipamento
            FiltraTabela(DMPESSOA.WCliente,'VWCLIENTE','COD_CLIENTE',DMESTOQUE.Alx.FieldByname('cod_cliente').AsString,'');

            If Not DMPESSOA.WCliente.IsEmpty
            Then Begin
               FrmCliente.EDCodigo.Text := DMPESSOA.WCliente.FieldByname('cod_interno').AsString;
               FrmCliente.EdDescricao.Text := DMPESSOA.WCliente.FieldByname('nome').AsString;
            End
            Else Begin
               FrmCliente.EdDescricao.Text := '';
               FrmCliente.EDCodigo.Text := '';
            End;

            GBKM.Enabled := TRUE;
        end
        Else Begin
           FBEquipPlaca.EdDescricao.Text := '';
           FrmCliente.EdDescricao.Text := '';
           FrmCliente.EDCodigo.Text := '';
           EDKM.Text := '';
           CBUnid.Text := '';
        End;

   End;
end;

procedure TFOrdem.FrmTabelaBTNOPENClick(Sender: TObject);
begin
  inherited;
   If AbrirForm(TFPrecoServ, FPrecoServ, 1) = 'Selected'
   Then Begin
       FrmTabela.EDCodigo.Text := DMServ.TTabPreco.FieldByname('cod_tabelapreco').AsString;
       FrmTabela.EdDescricao.Text := DMServ.TTabPreco.FieldByname('descricao').AsString;
       CBPrecoKm.Checked := true;
       CBPrecoTabela.Checked := true;
       CBPrecoKm.OnClick(Self);
       CBPrecoTabela.OnClick(Self);
   End;

end;

procedure TFOrdem.FrmTabelaBTNMINUSClick(Sender: TObject);
begin
  inherited;
   FrmTabela.EdDescricao.Text := '';
   FrmTabela.EDCodigo.Text := '';
   CBPrecoKm.Checked := false;
   CBPrecoTabela.Checked := false;

   // limpa edits referente aos dados do servico
   LimpaEdits;

   EdVlrKm.ValueNumeric := DadosKM_Veiculo(DMPESSOA.TEquip.FieldByName('COD_EQUIPAMENTO').AsInteger);
   LValor.Caption := 'Vlr. Nrm. Km';

   // necessario ter um equipamento jah selecionado
   If EdEquip.Text <> ''
   Then Begin
       // função para buscar os dados(R$) de KM tanto na tabela de preço qto na tabela servico
       EDValor.ValueNumeric := DadosKM_Veiculo(DMPESSOA.TEquip.FieldByName('COD_EQUIPAMENTO').AsInteger);
   End
   Else Begin
       EDValor.Text := '0,00';
       EdVlrKm.Text := '0,00';
   End;

   LVlrTitulo.Caption := 'Valor Norm.';

end;

procedure TFOrdem.CBPrecoKmClick(Sender: TObject);
begin
  inherited;
  // primeiro verifica se jah foi selecionado a tabela, se nao foi o check box torna-se inalteravel
   If FrmTabela.EDCodigo.Text <> ''
   Then Begin

      // muda o titulo conforme o estado do checkbox
       If CBPrecoKm.Checked = false
       Then Begin
           LValor.Caption := 'Vlr. Nrm. Km';
           // faz a verificação dos valores somente se o usuario jah escolheu o caminhao
           If EdPlaca.Text <> '   -    '
           Then Begin
               CBPrecoKm.Checked := false;

               // seleciona veiculo com a mesma placa
               FiltraTabela(DMPESSOA.TEquip,'EQUIPAMENTO','PLACA',EdPlaca.Text,'');

               // função para buscar os dados(R$) de KM tanto na tabela de preço qto na tabela servico
               EdVlrKm.ValueNumeric := DadosKM_Veiculo(DMPESSOA.TEquip.FieldByname('cod_equipamento').AsInteger);
           End;
       End
       Else Begin
           LValor.Caption := 'Vlr. Tabela';
           // faz a verificação dos valores somente se o usuario jah escolheu o caminhao
           If EdPlaca.Text <> '   -    '
           Then Begin
               // seleciona veiculo com a mesma placa
               FiltraTabela(DMPESSOA.TEquip,'EQUIPAMENTO','PLACA',EdPlaca.Text,'');

               // função para buscar os dados(R$) de KM tanto na tabela de preço qto na tabela servico
               EdVlrKm.ValueNumeric := DadosKM_Veiculo(DMPESSOA.TEquip.FieldByname('cod_equipamento').AsInteger);
           End;
       End;
   End
   Else Begin
       CBPrecoKm.Checked := false;
   End;

end;

procedure TFOrdem.EDPlacaExit(Sender: TObject);
begin
  inherited;
  // formata para letras maiusculas
  XVlrFormat := UpperCase(EDPlaca.Text);
  EDPlaca.Text := XVlrFormat;

  // APENAS LIMPA O EDIT
  EDEquip.Text := '';

  // SELECIONA VEICULO QUE TENHA O MESMO NUMERO DE PLACA
   DMPESSOA.TEquip.Close;
   DMPESSOA.TEquip.SQL.Clear;
   DMPESSOA.TEquip.SQL.Add('select * from equipamento where equipamento.placa = :placa');
   DMPESSOA.TEquip.ParamByName('placa').AsString := EDPlaca.Text;
   DMPESSOA.TEquip.Open;

   If Not DMPESSOA.TEquip.IsEmpty
   Then Begin
       EDEquip.Text := DMPESSOA.TEquip.FieldByName('descricao').AsString;

       // busca dados do veiculo para servico
       BuscaDadosVeiculo;

       If not DMServ.TAlx3.IsEmpty
       Then Begin
           // na tabela de preço o usuario pode ter cadastrado o KM com valor diferente seja com desconto ou nao, etc.
           // Essa sql busca o preco do KM registrado no subservico e o valor do KM registrado na tabela de preco.
           // se foi encontrado na TABELA DE PRECO e o checkbox estiver selecionado, o valor sera da TABELA DE PRECO,
           // caso contrario vira da tabela subservico
           If (CBPrecoKm.Checked = true) and (FrmTabela.EDCodigo.Text <> '')
           Then Begin
               LVlrTitulo.Caption := 'Valor Tabela';
               If DMServ.TAlx3.FieldByname('VLR_ITENSTAB').AsString <> '' Then
                   EDValor.Text := (FormatFloat('0.00',DMServ.TAlx3.FieldByname('VLR_ITENSTAB').AsCurrency))
               Else
                   EDValor.Text := FormatFloat('0,00',0);
           End
           Else Begin
               EDValor.ValueNumeric := StrToFloat(FormatFloat('0.00',DMServ.TAlx3.FieldByname('VLR_SUBSERV').AsCurrency));
           End;

           // função para buscar os dados(R$) de KM tanto na tabela de preço qto na tabela servico
           If EdPlaca.Text <> '   -    '
           Then Begin
               // busca o motorista do equipamento
               Localiza_Motorista(EdPlaca.Text);

               If Not DMPESSOA.TAux1.IsEmpty
               Then Begin
                   FrmMotorista.EDCodigo.Text := DMPESSOA.TAux1.FieldByname('cod_func').AsString;
                   FrmMotorista.EdDescricao.Text := DMPESSOA.TAux1.FieldByname('nome').AsString;
               End;

               // desabilita os campos para nao serem alterados enquanto nao for selecionado equipamento se o parametro for TRUE;
               DesabilitaCampos(false);

               // a função que busca a quantidade minima do servico utiliza a tabela de preço, por isso eh feito essa verificação
               If FrmTabela.EDCodigo.Text <> ''
               Then Begin
                   // busca a quantidade minima do servico regitrado na tabela de preço
                   EDHrMin.Text := TimeToStr(StrToTime(QtdeMin_Servico));
               End;

           End;

       End
       Else Begin
           EdVlrKm.Text := FormatFloat('0,00',0);

           // desabilita os campos para nao serem alterados enquanto nao for selecionado equipamento se o parametro for TRUE;
           DesabilitaCampos(false);

           // busca o motorista do equipamento
           Localiza_Motorista(EdPlaca.Text);

           If Not DMPESSOA.TAux1.IsEmpty
           Then Begin
               FrmMotorista.EDCodigo.Text := DMPESSOA.TAux1.FieldByname('cod_func').AsString;
               FrmMotorista.EdDescricao.Text := DMPESSOA.TAux1.FieldByname('nome').AsString;
           End;
       End;
   End;

end;

procedure TFOrdem.EDKMFinalExit(Sender: TObject);
begin
  inherited;
   // Calcula Custo dos quilometros
   CalculaKm;

end;

procedure TFOrdem.EdVlrKmExit(Sender: TObject);
begin
  inherited;
   If (EDKmTotal.Text <> '') and (EdVlrKm.Text <> '')
   Then Begin
       // Calcula Custo dos quilometros
       CalculaKm;
   End;

end;

procedure TFOrdem.CBPrecoTabelaClick(Sender: TObject);
begin
  inherited;
  // primeiro verifica se jah foi selecionado a tabela, se nao foi o check box torna-se inalteravel
   If FrmTabela.EDCodigo.Text <> ''
   Then Begin

      If CBPrecoTabela.Checked = true
      Then Begin
           LVlrTitulo.Caption := 'Vlr. Tabela';
      End
      Else Begin
           LVlrTitulo.Caption := 'Valor Norm.';
      End;


      // função para buscar os dados(R$) de KM tanto na tabela de preço qto na tabela servico
      If EdPlaca.Text <> '   -    '
      Then Begin
           If FiltraTabela(DMPESSOA.TEquip,'EQUIPAMENTO','PLACA',EdPlaca.Text,'')=TRUE
           Then Begin
               // busca dados do veiculo PARA servico
               BuscaDadosVeiculo;

               If CBPrecoTabela.Checked = true
               Then Begin
                   If DMServ.TAlx3.FieldByname('VLR_ITENSTAB').AsString <> ''
                   Then Begin
                       EDValor.ValueNumeric := DMServ.TAlx3.FieldByname('VLR_ITENSTAB').AsCurrency;
                       LVlrNormal.Caption := 'R$' + FloatToStrF(DMServ.TAlx3.FieldByname('VLR_ITENSTAB').AsCurrency, ffFixed, 4, 2);
                       LVlrExtra.Caption := 'R$' + FloatToStrF(DMServ.TAlx3.FieldByname('vlr_horaextra').AsCurrency, ffFixed, 4, 2);
                   End
                   Else Begin
                       EDValor.ValueNumeric := 0;
                       LVlrNormal.Caption := 'R$' + FloatToStrF(0, ffFixed, 4, 2);
                   End;
                       
                   LVlrTitulo.Caption := 'Valor Tabela';

                   // busca a quantidade minima das horas do servico cadastradas na tabela de preço
                   EDHrMin.Text := TimeToStr(StrToTime(QtdeMin_Servico));

               End
               Else Begin
                   EDValor.ValueNumeric := DMServ.TAlx3.FieldByname('VLR_SUBSERV').AsCurrency;
                   LVlrNormal.Caption := 'R$' + FloatToStrF(DMServ.TAlx3.FieldByname('VLR_SUBSERV').AsCurrency, ffFixed, 4, 2);
                   LVlrExtra.Caption := 'R$' + FloatToStrF(DMServ.TAlx3.FieldByname('vlr_extra').AsCurrency, ffFixed, 4, 2);
               End;
           End;
      End;
   End
   Else Begin
       CBPrecoTabela.Checked := false;
       LVlrTitulo.Caption := 'Valor Norm.';
   End;

end;

procedure TFOrdem.BtnSelectClick(Sender: TObject);
begin
  inherited;
   // limpa as informações dos edits qdo for selecionar outro serviço, menos a data e hora de inicio
   Remove_Inf;

  	//abre formulario de serviço para seleionar servico
	If AbrirForm(TFSERVICO, FSERVICO, 1)='Selected'
	Then Begin
       XCOD_SERVICO := DMSERV.WSubserv.FieldByName('COD_SUBSERVICO').AsInteger;

       If CBPrecoTabela.Checked = true
       Then Begin
           // ou seja, eh obrigatorio o usuario selecionar primeiro a tabela de preço
           If Not (DMServ.Alx.IsEmpty) and (FrmTabela.EDCodigo.Text <> '') Then
               EDValor.ValueNumeric := BuscaPreco
           Else
               EDValor.Text := '';
       End
       Else Begin
           If DMServ.WSubServ.FieldByname('VLR_NORMAL').AsString <> '' Then
               EDValor.Text := FormatFloat('0.00',DMServ.WSubServ.FieldByname('VLR_NORMAL').AsCurrency)
           Else
               EDValor.Text := '';
       end;

       // soh entra na condição se o usuario for esclher preço da tabela
       If CBPrecoTabela.Checked = true
       Then Begin
           // busca a quantidade minima do servico a ser executado
           QtdeMin_Servico;

           EDHrMin.Text := TimeToStr(StrToTime(IntToStr(DMServ.Alx.FieldByName('qtde_min').AsInteger)));
       End;
   End;

end;

procedure TFOrdem.BtnExcluirClick(Sender: TObject);
begin
  inherited;

   If DMServ.TAlx2.FieldByname('COD_LOCACAO').AsString <> ''
   Then Begin
       DMServ.Alx.Close;
       DMServ.alx.SQL.Clear;
       DMServ.Alx.SQL.Add(' select equipamento.cod_equipamento, equipamento.descricao AS EQUIPAMENTO, equipamento.placa,');
       DMServ.Alx.SQL.Add(' pessoa.cod_pessoa, pessoa.nome,');
       DMServ.Alx.SQL.Add(' funcionario.cod_func, funcionario.cod_pessoa,');
       DMServ.Alx.SQL.Add(' itens_locacao.cod_locacao, itens_locacao.cod_servico, itens_locacao.dia_semana,');
       DMServ.Alx.SQL.Add(' itens_locacao.hora_minima, itens_locacao.cod_equipamento, itens_locacao.cod_motorista,');
       DMServ.Alx.SQL.Add(' itens_locacao.cod_ordem, itens_locacao.hrs_extras, itens_locacao.hrs_normais, itens_locacao.total_normal, itens_locacao.total_extra,');
       DMServ.Alx.SQL.Add(' itens_locacao.cod_tabpreco, itens_locacao.TABPRECOKM_ATIVO, itens_locacao.tabprecoserv_ativo,');
       DMServ.Alx.SQL.Add(' itens_locacao.total_final, itens_locacao.vlr_extra, itens_locacao.VALORTOTKM, itens_locacao.data, itens_locacao.km_ini, itens_locacao.km_final, itens_locacao.km_total, itens_locacao.valortotkm,');
       DMServ.Alx.SQL.Add(' itens_locacao.vlrserv_cobrado, itens_locacao.hmat_ini, itens_locacao.hmat_fim, itens_locacao.hvesp_ini, itens_locacao.hvesp_fim, itens_locacao.valortothrs, itens_locacao.HORA_MINIMA,');
       DMServ.Alx.SQL.Add(' subservico.cod_subservico, subservico.descricao AS SERVICO, itens_locacao.vlrkm_cobrado,');
       DMServ.Alx.SQL.Add(' tabela_preco.cod_tabelapreco, tabela_preco.descricao AS NOME_TABELA');
       DMServ.Alx.SQL.Add(' from itens_locacao');
       DMServ.Alx.SQL.Add(' left join equipamento on itens_locacao.cod_equipamento = equipamento.cod_equipamento');
       DMServ.Alx.SQL.Add(' left join funcionario on itens_locacao.cod_motorista = funcionario.cod_func');
       DMServ.Alx.SQL.Add(' left join pessoa on funcionario.cod_pessoa = pessoa.cod_pessoa');
       DMServ.Alx.SQL.Add(' left join subservico on itens_locacao.cod_servico = subservico.cod_subservico');
       DMServ.Alx.SQL.Add(' left join tabela_preco on itens_locacao.cod_tabpreco = tabela_preco.cod_tabelapreco');
       DMServ.Alx.SQL.Add(' where itens_locacao.cod_locacao = :codigo ');
       DMServ.Alx.ParamByName('codigo').AsInteger := DMServ.TAlx2.FieldByname('COD_LOCACAO').AsInteger;
       DMServ.Alx.Open;

       // verifica se o item possui tabela de preço atrelado
       If DMServ.Alx.FieldByName('COD_TABPRECO').AsString <> ''
       Then Begin
           FiltraTabela(DMServ.TTabPreco,'TABELA_PRECO','COD_TABELAPRECO',DMServ.Alx.FieldByName('cod_tabpreco').AsString,'');

           FrmTabela.EdDescricao.Text := DMServ.TTabPreco.FieldByName('descricao').AsString;
           FrmTabela.EDCodigo.Text := DMServ.TTabPreco.FieldByName('cod_tabelapreco').AsString;
       End
       Else Begin
           FrmTabela.EdDescricao.Text := '';
           FrmTabela.EDCodigo.Text := '';
           CBPrecoTabela.Checked := false;
           CBPrecoKm.Checked := false;
       End;

       // VERIFICA SE O CHECKBOX DO KM ESTAH SELECIONADO
       If DMServ.Alx.FieldByName('TABPRECOKM_ATIVO').AsInteger = 1 Then
           CBPrecoKm.Checked := true
       Else
           CBPrecoKm.Checked := false;

       // VERIFICA SE O CHECKBOX DO SERVICO ESTAH SELECIONADO
       If DMServ.Alx.FieldByName('TABPRECOSERV_ATIVO').AsInteger = 1 Then
           CBPrecoTabela.Checked := true
       Else
           CBPrecoTabela.Checked := false;

       EdPlaca.Text := DMServ.Alx.FieldByname('placa').AsString;
       EdEquip.Text := DMServ.Alx.FieldByname('equipamento').AsString;
       FrmMotorista.EDCodigo.Text := DMServ.Alx.FieldByname('COD_func').AsString;
       FrmMotorista.EdDescricao.Text := DMServ.Alx.FieldByname('NOME').AsString;
       EDKMIni.Text := DMServ.Alx.FieldByname('km_ini').AsString;
       EDKMFinal.Text := DMServ.Alx.FieldByname('km_final').AsString;
       EdKmTotal.Text := DMServ.Alx.FieldByname('KM_TOTAL').AsString;
       EdVlrKm.ValueNumeric := DMServ.Alx.FieldByname('VLRKM_COBRADO').AsCurrency;
       EdFinancKm.ValueNumeric := DMServ.Alx.FieldByname('valortotkm').AsCurrency;
       EDValor.ValueNumeric := DMServ.Alx.FieldByname('VLRSERV_COBRADO').AsCurrency;

       // painel de horarios
       LVlrNormal.Caption := 'R$'  + FloatToStrF(DMServ.Alx.FieldByname('VLRSERV_COBRADO').AsCurrency, ffFixed, 4, 2);
       LVlrExtra.Caption := 'R$' + FloatToStrF(DMServ.Alx.FieldByname('VLR_EXTRA').AsCurrency, ffFixed, 4, 2);

       EDData.Text := DMServ.Alx.FieldByname('DATA').AsString;

       // retorna o dia da semana quando eh excluido um servico da ordem
       LDiaSemana.Caption := RetornaDiaSemana(DMServ.Alx.FieldByname('DATA').AsDateTime);

       HMatIni.Text := copy(DMServ.Alx.FieldByname('HMAT_INI').AsString,0,5);
       HMatFim.Text := copy(DMServ.Alx.FieldByname('HMAT_FIM').AsString,0,5);
       HVespIni.Text := copy(DMServ.Alx.FieldByname('HVESP_INI').AsString,0,5);
       HVespFim.Text := copy(DMServ.Alx.FieldByname('HVESP_FIM').AsString,0,5);
       EDVlrTotalHrs.ValueNumeric := DMServ.Alx.FieldByname('valortothrs').AsCurrency;
       EDHNormais.Text := DMServ.Alx.FieldByname('hrs_normais').AsString;
       EDHExtras.Text := DMServ.Alx.FieldByname('hrs_extras').AsString;
       EDVlrNormal.ValueNumeric := DMServ.Alx.FieldByname('total_normal').AsCurrency;
       EDVlrExtra.ValueNumeric := DMServ.Alx.FieldByname('total_extra').AsCurrency;
       EDHrMin.Text := DMServ.Alx.FieldByName('HORA_MINIMA').AsString;

       DMServ.Alx.Close;
       DMServ.Alx.SQL.Clear;
       DMServ.Alx.SQL.Add('delete from itens_locacao where itens_locacao.cod_locacao = :codigo');
       DMServ.Alx.ParamByName('codigo').AsInteger := DMServ.TAlx2.FieldByname('COD_LOCACAO').AsInteger;
       DMServ.Alx.ExecSQL;

       DMServ.IBT.CommitRetaining;

       // atualiza grid logo apos inserir servico
       AtualizaGrid_Servico;

       // soma o total da ordem de servico
       EdValorOrd.ValueNumeric := ValorTotal_OS;

       // soma o total de KM(R$)
       EdTotKm.ValueNumeric := VlrTot_Km;

       // soma o total (R$) de servicos
       EdTotServ.ValueNumeric := VlrTot_Serv;

       // desabilita os campos para nao serem alterados enquanto nao for selecionado equipamento se o parametro for TRUE;
       DesabilitaCampos(false);

       // passa pelo processo de desconto em porcentagem do total de KM
       EdDescKmExit(Self);

       // passa pelo processo de desconto em porcentagem do total de servico
       EdDescServicoExit(Self);
   End;
end;

procedure TFOrdem.BtnDownLogoffClick(Sender: TObject);
begin
  inherited;
   PHoras.Top := 275;
   PHoras.Left := 77;
   PHoras.Visible := true;
   PHoras.BringToFront;
   GBHoras.Visible := true;
   GBHoras.BringToFront;

end;

procedure TFOrdem.BtnUpLogoffClick(Sender: TObject);
begin
  inherited;
   PHoras.Visible := false;
   PHoras.SendToBack;

end;


// função para buscar os dados(R$) de KM tanto na tabela de preço qto na tabela servico
function TFOrdem.DadosKM_Veiculo(Cod_equipamento: integer): real;
begin
   DMESTOQUE.Alx.Close;
   DMESTOQUE.Alx.SQL.Clear;
   DMESTOQUE.Alx.SQL.Add('select subservico.cod_subservico, SUBSERVICO.VLR_NORMAL AS vlrsubserv, ');
   DMESTOQUE.Alx.SQL.Add('itens_tabpreco.cod_tabpreco, itens_tabpreco.cod_subserv, itens_tabpreco.vlr_normal, ');
   DMESTOQUE.Alx.SQL.Add('tabela_preco.cod_tabelapreco, equipamento.cod_equipamento, equipamento.cod_kmservico ');
   DMESTOQUE.Alx.SQL.Add('from equipamento');
   DMESTOQUE.Alx.SQL.Add('left join subservico on equipamento.cod_kmservico = subservico.cod_subservico');
   DMESTOQUE.Alx.SQL.Add('left join itens_tabpreco on subservico.cod_subservico = itens_tabpreco.cod_subserv');
   DMESTOQUE.Alx.SQL.Add('left join tabela_preco on itens_tabpreco.cod_tabpreco = tabela_preco.cod_tabelapreco');
   DMESTOQUE.Alx.SQL.Add('where (equipamento.cod_equipamento = :codigo)');
   DMESTOQUE.Alx.ParamByName('codigo').AsInteger := Cod_equipamento;

   If (FrmTabela.EDCodigo.Text <> '') and (CBPrecoKm.Checked = true)
   Then Begin
       DMESTOQUE.Alx.SQL.Add('and (tabela_preco.descricao = :tabpreco)');
       DMESTOQUE.Alx.ParamByName('tabpreco').AsString := FrmTabela.EdDescricao.Text;
   End;

   DMESTOQUE.Alx.Open;

   If (FrmTabela.EDCodigo.Text <> '') and (CBPrecoKm.Checked = true)
   Then Begin
       If DMESTOQUE.Alx.FieldByName('vlr_normal').AsString <> '' Then
           Result := DMESTOQUE.Alx.FieldByName('vlr_normal').AsCurrency
       Else
           Result := 0;    
   End
   Else Begin
       If DMESTOQUE.Alx.FieldByName('vlrsubserv').AsString <> '' Then
           Result := DMESTOQUE.Alx.FieldByName('vlrsubserv').AsCurrency
       Else
           Result := 0;
   End;



end;

// calcula horario comercial e extra do periodo matutino
procedure TFOrdem.CalculaHorarioMat;
begin

   XHorasMat := '00:00:00';
   XExtraMat := '00:00:00';

   // se tiver a placa eh pq foi selecionado o equipamento e o mesmo possui dados de horarios necessarios para calculo
   If EdPlaca.Text <> '   -    '
   Then Begin

       // seleciona todos os dados de quipamento que tenha o mesmo codigo
       DMSAIDA.TAlx.Close;
       DMSAIDA.TAlx.SQL.Clear;
       DMSAIDA.TAlx.SQL.Add('select * from equipamento where (upper(equipamento.placa) = upper(' + #39 + EdPlaca.Text + #39 +'))');
       DMSAIDA.TAlx.Open;

       If Not DMSAIDA.TAlx.IsEmpty
       Then Begin
           // seleciona os dados de subservico que tenha o mesmo codigo que o subservico do equipamento
           DMServ.WSubServ.Close;
           DMServ.WSubServ.SQL.Clear;
           DMServ.WSubServ.SQL.Add('select * from vwsubservico where vwsubservico.cod_subservico = :codigo');
           DMServ.WSubServ.ParamByName('codigo').AsInteger := DMSAIDA.TAlx.FieldByname('cod_servico').AsInteger;
           DMServ.WSubServ.Open;

           // como vai ser feito calculo matutino,
           If (DMServ.WSubServ.FieldByName('HORA_INI').AsString <> '') AND (DMServ.WSubServ.FieldByName('INTERVALO_INI').AsString <> '')
           Then Begin

               // se o servico comecou e terminou antes do inicio do horario comercial, ou seja, ter começado e terminado antes das 8:00 (normalmente esse horario)
               If (StrToTime(HMatIni.Text) < StrToTime(DMServ.WSubServ.FieldByName('HORA_INI').AsString)) and (StrToTime(HMatFim.Text) < StrToTime(DMServ.WSubServ.FieldByName('HORA_INI').AsString))
               Then Begin
                   XExtraMat := TimeToStr( StrToTime(HMatFim.Text) - StrToTime(HMatIni.Text) );
               End;

               // se comecou antes do horario comercial e terminou depois do inicio do horario comercial no periodo da manha
               If (StrToTime(HMatIni.Text) < StrToTime(DMServ.WSubServ.FieldByName('HORA_INI').AsString)) and (StrToTime(HMatFim.Text) >= StrToTime(DMServ.WSubServ.FieldByName('HORA_INI').AsString)) and (StrToTime(HMatFim.Text) <= StrToTime(DMSERV.WSubServ.FieldByName('INTERVALO_INI').AsString))
               Then Begin
                   XExtraMat := TimeToStr( StrToTime(DMServ.WSubServ.FieldByName('HORA_INI').AsString) - StrToTime(HMatIni.Text) );

                   XHorasMat := TimeToStr( StrToTime(HMatFim.Text) - StrToTime(DMServ.WSubServ.FieldByName('HORA_INI').AsString) );

               End;

               // se comecou antes do horario comercial e terminou no meio dia com hora extra
               If (StrToTime(HMatIni.Text) < StrToTime(DMServ.WSubServ.FieldByName('HORA_INI').AsString)) and (StrToTime(HMatFim.Text) > StrToTime(DMSERV.WSubServ.FieldByName('INTERVALO_INI').AsString)) and (StrToTime(HMatFim.Text) <= StrToTime(DMSERV.WSubServ.FieldByName('INTERVALO_FINAL').AsString))
               Then Begin
                   XExtraMat := TimeToStr( StrToTime(DMServ.WSubServ.FieldByName('HORA_INI').AsString) - StrToTime(HMatIni.Text) );

                   XHorasMat := TimeToStr( StrToTime(DMSERV.WSubServ.FieldByName('INTERVALO_INI').AsString) - StrToTime(DMServ.WSubServ.FieldByName('HORA_INI').AsString));

                   XExtraMat := TimeToStr( (StrToTime(HMatFim.Text) - StrToTime(DMSERV.WSubServ.FieldByName('INTERVALO_INI').AsString)) + StrToTime(XExtraMat) );
               End;

               // se comecou antes do horario comercial, passou pelo horario matutino, usou horario do meio dia e finalizou na parte da tarde (exemplo: das 7:00 ás 15:00)
               If (StrToTime(HMatIni.Text) < StrToTime(DMServ.WSubServ.FieldByName('HORA_INI').AsString)) and (StrToTime(HMatFim.Text) > StrToTime(DMSERV.WSubServ.FieldByName('INTERVALO_FINAL').AsString)) and (StrToTime(HMatFim.Text) <= StrToTime(DMServ.WSubServ.FieldByName('HORA_FINAL').AsString))
               Then Begin
                   XExtraMat := TimeToStr( StrToTime(DMServ.WSubServ.FieldByName('HORA_INI').AsString) - StrToTime(HMatIni.Text) );

                   XHorasMat := TimeToStr( StrToTime(DMSERV.WSubServ.FieldByName('INTERVALO_INI').AsString) - StrToTime(DMServ.WSubServ.FieldByName('HORA_INI').AsString));

                   XExtraMat := TimeToStr( (StrToTime(DMSERV.WSubServ.FieldByName('INTERVALO_FINAL').AsString) - StrToTime(DMSERV.WSubServ.FieldByName('INTERVALO_INI').AsString)) + StrToTime(XExtraMat));

                   XHorasMat := TimeToStr( (StrToTime(HMatFim.Text) - StrToTime(DMSERV.WSubServ.FieldByName('INTERVALO_FINAL').AsString)) + StrToTime(XHorasMat));

               End;

               // se comecou antes do horario comercial, passou pelo horario matutino, usou horario do meio dia e finalizou depois do horario comercial (exemplo: 07:00 ás 20:00)
               If (StrToTime(HMatIni.Text) < StrToTime(DMServ.WSubServ.FieldByName('HORA_INI').AsString)) and ( StrToTime(HMatFim.Text) > StrToTime(DMServ.WSubServ.FieldByName('HORA_FINAL').AsString) )
               Then Begin
                   XExtraMat := TimeToStr( StrToTime(DMServ.WSubServ.FieldByName('HORA_INI').AsString) - StrToTime(HMatIni.Text) );

                   XHorasMat := TimeToStr( StrToTime(DMSERV.WSubServ.FieldByName('INTERVALO_INI').AsString) - StrToTime(DMServ.WSubServ.FieldByName('HORA_INI').AsString));

                   XExtraMat := TimeToStr( (StrToTime(DMSERV.WSubServ.FieldByName('INTERVALO_FINAL').AsString) - StrToTime(DMSERV.WSubServ.FieldByName('INTERVALO_INI').AsString)) + StrToTime(XExtraMat));

                   XHorasMat := TimeToStr( StrToTime(DMServ.WSubServ.FieldByName('HORA_FINAL').AsString) - StrToTime(DMSERV.WSubServ.FieldByName('INTERVALO_FINAL').AsString) + StrToTime(XHorasMat));

                   XExtraMat := TimeToStr( (StrToTime(HMatFim.Text) - StrToTime(DMServ.WSubServ.FieldByName('HORA_FINAL').AsString)) + StrToTime(XExtraMat));

               End;

               // se comecou no periodo da manha no horario comercial e terminou no periodo matutino
               If (StrToTime(HMatIni.Text) >= StrToTime(DMServ.WSubServ.FieldByName('HORA_INI').AsString)) and ( StrToTime(HMatIni.Text) <= StrToTime(DMSERV.WSubServ.FieldByName('INTERVALO_INI').AsString) ) and ( StrToTime(HMatFim.Text) <= StrToTime(DMSERV.WSubServ.FieldByName('INTERVALO_INI').AsString) )
               Then Begin
                   XHorasMat := TimeToStr(StrToTime(HMatFim.Text) - StrToTime(HMatIni.Text));
               End;

               // se comecou no horario matutino e terminou no meio dia (exemplo 8:00 ás 12:30)
               If (StrToTime(HMatIni.Text) >= StrToTime(DMServ.WSubServ.FieldByName('HORA_INI').AsString)) and ( StrToTime(HMatFim.Text) >  StrToTime(DMSERV.WSubServ.FieldByName('INTERVALO_INI').AsString)) and ( StrToTime(HMatFim.Text) <=  StrToTime(DMSERV.WSubServ.FieldByName('INTERVALO_FINAL').AsString) ) AND ( StrToTime(HMatIni.Text) <  StrToTime(DMSERV.WSubServ.FieldByName('INTERVALO_INI').AsString))
               Then Begin
                   XHorasMat := TimeToStr( StrToTime(DMSERV.WSubServ.FieldByName('INTERVALO_INI').AsString) - StrToTime(HMatIni.Text));

                   XExtraMat := TimeToStr( StrToTime(HMatFim.Text) - StrToTime(DMSERV.WSubServ.FieldByName('INTERVALO_INI').AsString));

               End;

               // significa que o ucuaior nao configurou horari comercial intaum a diferenca eh repassada como horario comercial
               If ((DMServ.WSubServ.FieldByName('HORA_INI').AsString = '') or (DMServ.WSubServ.FieldByName('HORA_INI').AsString = '00:00:00')) and ((DMSERV.WSubServ.FieldByName('INTERVALO_INI').AsString = '') or (DMSERV.WSubServ.FieldByName('INTERVALO_INI').AsString = '00:00:00'))
               Then Begin
                   XHorasMat := TimeToStr(StrToTime(HMatFim.Text) - StrToTime(HMatIni.Text));
               End;

           End
           Else Begin
               XHorasMat := TimeToStr(StrToTime(HMatFim.Text) - StrToTime(HMatIni.Text));
           End;

       End;
   End;

end;

procedure TFOrdem.HMatFimExit(Sender: TObject);
begin
  inherited;

   If (HMatIni.Text <> '  :  ') and (HMatFim.Text <> '  :  ')
   Then Begin
       // calcula horario comercial e extra do periodo matutino
       CalculaHorarioMat;

       // total de horas normais periodo matutino
       EDHNormais.Text := TimeToStr(StrToTime(XHorasMat) + StrToTime(XHorasVesp));

       // total de horas extras no periodo matutino
       EDHExtras.Text := TimeToStr(StrToTime(XExtraMat) + StrToTime(XExtraVesp));

       // Calculo geral de horas comerciais e extras e o valor das horas
       CalculoGeral_Horas;

   End;

end;

// calcula horario comercial e extra do periodo vespertino
Procedure TFOrdem.CalculaHorarioVesp;
begin

   XHorasVesp := '00:00:00';
   XExtraVesp := '00:00:00';

   If EdPlaca.Text <> '   -    '
   Then Begin
       // seleciona todos os dados de quipamento que tenha o mesmo codigo
       DMSAIDA.TAlx.Close;
       DMSAIDA.TAlx.SQL.Clear;
       DMSAIDA.TAlx.SQL.Add('select * from equipamento where (upper(equipamento.placa) = upper(' + #39 + EdPlaca.Text + #39 +'))');
       DMSAIDA.TAlx.Open;

       If Not DMSAIDA.TAlx.IsEmpty
       Then Begin
           // seleciona os dados de subservico que tenha o mesmo codigo que o subservico do equipamento
           DMServ.WSubServ.Close;
           DMServ.WSubServ.SQL.Clear;
           DMServ.WSubServ.SQL.Add('select * from vwsubservico where vwsubservico.cod_subservico = :codigo');
           DMServ.WSubServ.ParamByName('codigo').AsInteger := DMSAIDA.TAlx.FieldByname('cod_servico').AsInteger;
           DMServ.WSubServ.Open;

           If (DMServ.WSubServ.FieldByName('INTERVALO_FINAL').AsString <> '') AND (DMServ.WSubServ.FieldByName('HORA_FINAL').AsString <> '')
           Then Begin

               // se comecou e terminou no horario do meio dia (exemplo 12:30 ás 13:15)
               If (StrToTime(HVespIni.Text) >= StrToTime(DMSERV.WSubServ.FieldByName('INTERVALO_INI').AsString)) and (StrToTime(HVespFim.Text) <= StrToTime(DMSERV.WSubServ.FieldByName('INTERVALO_FINAL').AsString))
               Then Begin
                   XExtraVesp := TimeToStr(StrToTime( HVespFim.Text) - StrToTime(DMSERV.WSubServ.FieldByName('INTERVALO_INI').AsString));
               End;

               // se comecou no meio dia e terminou no periodo da tarde
               If (StrToTime(HVespIni.Text) >= StrToTime(DMSERV.WSubServ.FieldByName('INTERVALO_INI').AsString)) and (StrToTime(HVespFim.Text) > StrToTime(DMSERV.WSubServ.FieldByName('INTERVALO_FINAL').AsString)) and (StrToTime(HVespFim.Text) <= StrToTime(DMServ.WSubServ.FieldByName('HORA_FINAL').AsString)) and (StrToTime(HVespIni.Text) < StrToTime(DMSERV.WSubServ.FieldByName('INTERVALO_FINAL').AsString))
               Then Begin
                   XExtraVesp := TimeToStr(StrToTime(DMSERV.WSubServ.FieldByName('INTERVALO_FINAL').AsString) - StrToTime(HVespIni.Text));

                   XHorasVesp := TimeToStr((StrToTime(HVespFim.Text) - StrToTime(DMSERV.WSubServ.FieldByName('INTERVALO_FINAL').AsString)));
               End;

               // se começou no meio dia e terminou depois do horario comercial
               If (StrToTime(HVespIni.Text) >= StrToTime(DMSERV.WSubServ.FieldByName('INTERVALO_INI').AsString)) and (StrToTime(HVespFim.Text) > StrToTime(DMSERV.WSubServ.FieldByName('INTERVALO_FINAL').AsString)) and (StrToTime(HVespFim.Text) >= StrToTime(DMServ.WSubServ.FieldByName('HORA_FINAL').AsString)) and (StrToTime(HVespIni.Text) <= StrToTime(DMSERV.WSubServ.FieldByName('INTERVALO_FINAL').AsString))
               Then Begin
                   XExtraVesp := TimeToStr(StrToTime(DMSERV.WSubServ.FieldByName('INTERVALO_FINAL').AsString) - StrToTime(HVespIni.Text));

                   XHorasVesp := TimeToStr(StrToTime(DMServ.WSubServ.FieldByName('HORA_FINAL').AsString) - StrToTime(DMSERV.WSubServ.FieldByName('INTERVALO_FINAL').AsString));

                   XExtraVesp := TimeToStr(StrToTime(XExtraVesp) + (StrToTime(HVespFim.Text) - StrToTime(DMServ.WSubServ.FieldByName('HORA_FINAL').AsString)));
               End;

               // se comecou e finalizou a tarde, antes da horario comercial terminar (exemplo 13:45 ás 16:45)
               If (StrToTime(HVespIni.Text) >= StrToTime(DMSERV.WSubServ.FieldByName('INTERVALO_FINAL').AsString)) and (StrToTime(HVespIni.Text) < StrToTime(DMServ.WSubServ.FieldByName('HORA_FINAL').AsString)) and (StrToTime(HVespFim.Text) <= StrToTime(DMServ.WSubServ.FieldByName('HORA_FINAL').AsString))
               Then Begin
                   XHorasVesp := TimeToStr((StrToTime(HVespFim.Text) - StrToTime(HVespIni.Text)));
               End;

               // se comecou a tarde e finalizou apos o horario comercial
               If (StrToTime(HVespIni.Text) >= StrToTime(DMSERV.WSubServ.FieldByName('INTERVALO_FINAL').AsString)) and ( StrToTime(HVespIni.Text) < StrToTime(DMServ.WSubServ.FieldByName('HORA_FINAL').AsString)) and ( StrToTime(HVespFim.Text) > StrToTime(DMServ.WSubServ.FieldByName('HORA_FINAL').AsString))
               Then Begin
                   XHorasVesp := TimeToStr((StrToTime(DMServ.WSubServ.FieldByName('HORA_FINAL').AsString) - StrToTime(HVespIni.Text)));

                   XExtraVesp := TimeToStr((StrToTime(HVespFim.Text) - StrToTime(DMServ.WSubServ.FieldByName('HORA_FINAL').AsString)));
               End;

               // se comecou e terminou logo apos o horario comercial
               If (StrToTime(HVespIni.Text) >= StrToTime(DMServ.WSubServ.FieldByName('HORA_FINAL').AsString)) and (DMServ.WSubServ.FieldByName('HORA_FINAL').AsString <> '') and (DMServ.WSubServ.FieldByName('HORA_FINAL').AsString <> '00:00:00')
               Then Begin
                   XExtraVesp := TimeToStr((StrToTime(HVespFim.Text) - StrToTime(DMServ.WSubServ.FieldByName('HORA_FINAL').AsString)));
               End;

               If ((DMSERV.WSubServ.FieldByName('INTERVALO_FINAL').AsString = '') or (DMSERV.WSubServ.FieldByName('INTERVALO_FINAL').AsString = '00:00:00')) and ((DMSERV.WSubServ.FieldByName('HORA_FINAL').AsString = '') OR (DMSERV.WSubServ.FieldByName('HORA_FINAL').AsString = '00:00:00'))
               Then Begin
                   XHorasVesp := TimeToStr(StrToTime(HVespFim.Text) - StrToTime(HVespIni.Text));
               End;
           End
           Else Begin
               XHorasVesp := TimeToStr(StrToTime(HVespFim.Text) - StrToTime(HVespIni.Text));
           End;

       End;
   End;

end;


procedure TFOrdem.FrmBusca1BTNOPENClick(Sender: TObject);
begin
  inherited;
   // resetando o campo mark
   DMPESSOA.TFuncionario.Close;
   DMPESSOA.TFuncionario.SQL.Clear;
   DMPESSOA.TFuncionario.SQL.Add('update funcionario set funcionario.mark = ' + #39 + '' + #39);
   DMPESSOA.TFuncionario.ExecSQL;
   DMPESSOA.TransacPessoa.CommitRetaining;

   If AbrirForm(TFFuncionario,FFuncionario,1)= 'Selected'
   Then Begin
       FrmMotorista.EDCodigo.Text := DMPESSOA.VWFuncionario.FieldByname('cod_func').AsString;
       FrmMotorista.EdDescricao.Text := DMPESSOA.VWFuncionario.FieldByname('nome').AsString;
   End;

   FrmMotorista.Repaint;


end;

procedure TFOrdem.HVespFimExit(Sender: TObject);
begin
  inherited;

   If (HVespIni.Text <> '  :  ') and (HVespFim.Text <> '  :  ')
   Then Begin
       // calcula horario comercial e extra do periodo vespertino
       CalculaHorarioVesp;

       // total de horas normais periodo matutino
       EDHNormais.Text := TimeToStr(StrToTime(XHorasVesp) + StrToTime(XHorasMat));

       // total de horas extras no periodo matutino
       EDHExtras.Text := TimeToStr(StrToTime(XExtraVesp) + StrToTime(XExtraMat));

       // Calculo geral de horas comerciais e extras e o valor das horas
       CalculoGeral_Horas;

   End;
end;

procedure TFOrdem.FrmMotoristaBTNMINUSClick(Sender: TObject);
begin
  inherited;
   FrmMotorista.EDCodigo.Text := '';
   FrmMotorista.EdDescricao.Text := '';
end;

// desabilita os campos para nao serem alterados enquanto nao for selecionado equipamento se o parametro for TRUE;
Function TFOrdem.DesabilitaCampos(Desabilita: boolean):boolean;
begin
   If Desabilita = True
   Then Begin
       EDKMIni.Enabled := false;
       EDKMFinal.Enabled := false;
       EdKmTotal.Enabled := false;
       EdVlrKm.Enabled := false;
       EdFinancKm.Enabled := false;
       EDData.Enabled := false;
       HMatIni.Enabled := false;
       HMatFim.Enabled := false;
       HVespIni.Enabled := false;
       HVespFim.Enabled := false;
       EDValor.Enabled := false;
       EDVlrTotalHrs.Enabled := false;
   End
   Else Begin
       EDKMIni.Enabled := true;
       EDKMFinal.Enabled := true;
       EdKmTotal.Enabled := true;
       EdVlrKm.Enabled := true;
       EdFinancKm.Enabled := true;
       EDData.Enabled := true;
       HMatIni.Enabled := true;
       HMatFim.Enabled := true;
       HVespIni.Enabled := true;
       HVespFim.Enabled := true;
       EDValor.Enabled := true;
       EDVlrTotalHrs.Enabled := true;
   End;


end;

procedure TFOrdem.BtnFuncClick(Sender: TObject);
begin
  inherited;
   XLIBERA_MARK := true; // se o campo for TRUE o campo MARK eh liberado na grid do funcionario

   // resetando o campo mark
   DMPESSOA.TFuncionario.Close;
   DMPESSOA.TFuncionario.SQL.Clear;
   DMPESSOA.TFuncionario.SQL.Add('update funcionario set funcionario.mark = ' + #39 + '' + #39);
   DMPESSOA.TFuncionario.ExecSQL;
   DMPESSOA.TransacPessoa.CommitRetaining;

   // abre formulario dos funcionarios
   If AbrirForm(TFFuncionario,FFuncionario,1)= 'Selected'
   Then Begin

       // busca os funcionarios que foram selecionados para serem os ajudantes da Ordem de Servico
       BuscaFuncionarios;

       // primeiro registro
       DMPESSOA.TAux2.First;

       // dados no Memo
       MFunc.Clear;
       MFunc.Lines.Add('   Funcionários selecionados:');
       MFunc.Lines.Add('');

       XContador := 1;

       while not DMPESSOA.TAux2.Eof do
       begin

           MFunc.Lines.Add( IntToStr(XContador) + ' - ' + DMPESSOA.TAux2.FieldByname('nome').AsString);

       XContador := XContador + 1;
       DMPESSOA.TAux2.Next;
       end;
   End;
end;

procedure TFOrdem.BitBtn10Click(Sender: TObject);
begin
  inherited;
  
   PDevParc.Visible := false;
   PDevParc.SendToBack;

   DMENTRADA.IBT.RollbackRetaining;
   DMFINANC.Transaction.CommitRetaining;
   DMServ.IBT.RollbackRetaining;



end;

// busca o motorista do equipamento
function TFOrdem.Localiza_Motorista(Placa: string): boolean;
begin
    // seleciona veiculo com a mesma placa
    FiltraTabela(DMPESSOA.TEquip,'EQUIPAMENTO','PLACA',Placa,'');

    // função para buscar os dados de KM tanto na tabela de preço qto na tabela servico
    EdVlrKm.ValueNumeric := DadosKM_Veiculo(DMPESSOA.TEquip.FieldByname('cod_equipamento').AsInteger);

    // seleciona os dados de funcionario para buscar o motorista que esta atrelado ao veiculo
    DMPESSOA.TAux1.Close;
    DMPESSOA.TAux1.SQL.Clear;
    DMPESSOA.TAux1.SQL.Add('select * from vwfuncionario where vwfuncionario.cod_func = :codigo');
    DMPESSOA.TAux1.ParamByName('codigo').AsInteger := DMPESSOA.TEquip.FieldByname('cod_motorista').AsInteger;
    DMPESSOA.TAux1.Open;
end;

procedure TFOrdem.EDDataExit(Sender: TObject);
begin
  inherited;

   If EDData.Text <> '  /  /    '
   Then Begin
       // retorna dia da semana
       LDiaSemana.Caption := DiaSemana(EDData.Text);

       // se for domingo o dia da semana fica vermelho
       If (StrToInt(XDATA) = 1)
       Then Begin
           LDiaSemana.Font.Color := clRed;
       End
       Else Begin
           LDiaSemana.Font.Color := cl3DDkShadow;    //clWindowText;
       End;
   End;
end;

procedure TFOrdem.EdDescKmExit(Sender: TObject);
begin
  inherited;
   // Calcula o desconto em porcentagem do total de KM
   CalculaDesc_KM;

   // TOTAL DA ORDEM
   EdTotOrd.ValueNumeric := EdTotKm.ValueNumeric + EdTotServ.ValueNumeric + EdTotAjud.ValueNumeric ;
   EdValorOrd.ValueNumeric := EdTotKm.ValueNumeric + EdTotServ.ValueNumeric + EdTotAjud.ValueNumeric;

   // calcula a porcentagem de desconto do total da ordem de servico
   CalculaDescTotal;

end;

// Calcula o desconto em porcentagem do total de KM
Function TFOrdem.CalculaDesc_KM: real;
begin

   // soma o total (R$) da quilometragem
   VlrTot_Km;

   If EdDescKm.ValueNumeric <> 0
   Then Begin
       EdTotKm.ValueNumeric := DMServ.TAlx1.FieldByname('total_km').AsCurrency - ((EdDescKm.ValueNumeric / 100) * DMServ.TAlx1.FieldByname('total_km').AsCurrency);
   End
   Else Begin
       EdTotKm.ValueNumeric := DMServ.TAlx1.FieldByname('total_km').AsCurrency;
   End;

end;


procedure TFOrdem.EdTotKmExit(Sender: TObject);
begin
  inherited;

   // TOTAL DA ORDEM
   EdTotOrd.ValueNumeric := EdTotKm.ValueNumeric + EdTotServ.ValueNumeric + EdTotAjud.ValueNumeric ;
   EdValorOrd.ValueNumeric := EdTotKm.ValueNumeric + EdTotServ.ValueNumeric + EdTotAjud.ValueNumeric;

   // soma o total (R$) da quilometragem
   VlrTot_Km;

   // retorna o valor da porcentagem do desconto
   EdDescKm.ValueNumeric := 100 - ((EdTotKm.ValueNumeric * 100) / DMServ.TAlx1.FieldByname('total_km').AsCurrency);

   // calcula a porcentagem de desconto do total da ordem de servico
   CalculaDescTotal;

end;

procedure TFOrdem.EdDescServicoExit(Sender: TObject);
begin
  inherited;

   // Calcula o desconto em porcentagem do total em servico
   CalculaDesc_Serv;

   // TOTAL DA ORDEM
   EdTotOrd.ValueNumeric := EdTotKm.ValueNumeric + EdTotServ.ValueNumeric + EdTotAjud.ValueNumeric ;
   EdValorOrd.ValueNumeric := EdTotKm.ValueNumeric + EdTotServ.ValueNumeric + EdTotAjud.ValueNumeric;

   // calcula a porcentagem de desconto do total da ordem de servico
   CalculaDescTotal;

end;

// Calcula o desconto em porcentagem do total em servico
Function TFOrdem.CalculaDesc_Serv:real;
begin
   // soma o total (R$) dos servicos
   VlrTot_Serv;

   If EdDescServico.ValueNumeric <> 0
   Then Begin
       EdTotServ.ValueNumeric := DMServ.TAlx1.FieldByName('TOTAL_HRS').AsCurrency - ((EdDescServico.ValueNumeric / 100) * DMServ.TAlx1.FieldByName('TOTAL_HRS').AsCurrency);
   End
   Else Begin
       EdTotServ.ValueNumeric := DMServ.TAlx1.FieldByName('TOTAL_HRS').AsCurrency
   End;

end;

procedure TFOrdem.EdTotServExit(Sender: TObject);
begin
  inherited;

   // TOTAL DA ORDEM
   EdTotOrd.ValueNumeric := EdTotKm.ValueNumeric + EdTotServ.ValueNumeric + EdTotAjud.ValueNumeric ;
   EdValorOrd.ValueNumeric := EdTotKm.ValueNumeric + EdTotServ.ValueNumeric + EdTotAjud.ValueNumeric;

   // soma o total (R$) dos servicos
   VlrTot_Serv;

   EdDescServico.ValueNumeric := 100 - ((EdTotServ.ValueNumeric * 100) / DMServ.TAlx1.FieldByName('TOTAL_HRS').AsCurrency);

   // calcula a porcentagem de desconto do total da ordem de servico
   CalculaDescTotal;

end;

// calcula a porcentagem de desconto do total da ordem de servico
procedure TFOrdem.CalculaDescTotal;
begin

   // soma o total do KM e servico da ordem
   DMServ.TAlx3.Close;
   DMServ.TAlx3.SQL.Clear;
   DMServ.TAlx3.SQL.Add('select sum(itens_locacao.valortothrs) as total_servico, sum(itens_locacao.valortotkm) as total_km');
   DMServ.TAlx3.SQL.Add('from itens_locacao where itens_locacao.cod_ordem = :codigo');
   DMServ.TAlx3.ParamByName('codigo').AsInteger := XCOD_ORDEM;
   DMServ.TAlx3.Open;

   // soma o total dos ajudantes encolvidos na ordem de servico
   DMESTOQUE.Alx.Close;
   DMESTOQUE.Alx.SQL.Clear;
   DMESTOQUE.Alx.SQL.Add('select sum(ajudante.valortothrs) as TOTAL_AJUDANTE from ajudante');
   DMESTOQUE.Alx.SQL.Add('where (ajudante.cod_ordem = :codigo)');
   DMESTOQUE.Alx.SQL.Add('and (ajudante.mark = ' + #39 + '1' + #39 + ')');
   DMESTOQUE.Alx.ParamByName('codigo').AsInteger := XCOD_ORDEM;
   DMESTOQUE.Alx.Open;

   // RETORNA A PORCENTAGEM DE DESCNTO DO TOTAL
   EdDescontoTot.ValueNumeric := 100 - ((EdTotKm.ValueNumeric + EdTotServ.ValueNumeric + EdTotAjud.ValueNumeric) * 100) / (DMServ.TAlx3.FieldByname('TOTAL_SERVICO').AsCurrency + DMServ.TAlx3.FieldByname('TOTAL_KM').AsCurrency + DMESTOQUE.Alx.FieldByName('TOTAL_AJUDANTE').AsCurrency);

end;

// retorna o dia da semana quando eh excluido um servico da ordem
function TFOrdem.RetornaDiaSemana(Dia: TDateTime): string;
begin

   //Retorna um número inteiro que representa o dia da semana
   xdata := IntToStr(DayOfWeek(Dia));

   // se for sabado ou domingo o dia da semana fica vermelho
   If (StrToInt(XDATA) = 1)
   Then Begin
       LDiaSemana.Font.Color := clRed;
   End
   Else Begin
       LDiaSemana.Font.Color := cl3DDkShadow;    //clWindowText;
   End;

   Case StrToInt(XDATA) of
       1 : Result := 'Domingo';
       2 : Result := 'Segunda-Feira';
       3 : Result := 'Terça-Feira';
       4 : Result := 'Quarta-Feira';
       5 : Result := 'Quinta-Feira';
       6 : Result := 'Sexta-Feira';
       7 : Result := 'Sábado';
   End;

end;

procedure TFOrdem.BitBtn11Click(Sender: TObject);
begin
  inherited;

   DMPESSOA.TALX.Close;
   DMPESSOA.TALX.SQL.Clear;
   DMPESSOA.TALX.SQL.Add('select count(funcionario.cod_func) as TOTAL from funcionario where  funcionario.mark = ' + #39 + 'X' + #39);
   DMPESSOA.TALX.Open;

   If DMPESSOA.TALX.FieldByName('TOTAL').AsInteger > 0
   Then Begin

       If EdDate.Text = '  /  /    '
       Then Begin
           Mensagem('   A T E N Ç Ã O   ','Informe a data','',1,1,false,'A');
           EdDate.SetFocus;
           Exit;
       End;

       // buscando todos os funcionarios selecionados
       DMPESSOA.VWFuncionario.Close;
       DMPESSOA.VWFuncionario.SQL.Clear;
       DMPESSOA.VWFuncionario.SQL.Add('select * from vwfuncionario where vwfuncionario.mark = ' + #39 + 'X' + #39);
       DMPESSOA.VWFuncionario.Open;

       // primeiro registro
       DMPESSOA.VWFuncionario.First;

       // qdo apaga a ordem exibe o erro q o dataset estah fexado, por isso eh feito essa sql basica
       DMPESSOA.TAjudante.Close;
       DMPESSOA.TAjudante.SQL.Clear;
       DMPESSOA.TAjudante.SQL.Add('select * from ajudante');
       DMPESSOA.TAjudante.Open;

       // vai inserindo na tabela ajudante enquanto nao for o final dos funcionarios selecionados
       While Not DMPESSOA.VWFuncionario.Eof do
       Begin
           DMPESSOA.TAjudante.Insert;
           DMPESSOA.TAjudante.FieldByName('cod_func').AsInteger := DMPESSOA.VWFuncionario.FieldByname('cod_func').AsInteger;
           DMPESSOA.TAjudante.FieldByName('cod_ordem').AsInteger := XCOD_ORDEM;
           If EdHMatIni.Text <> '  :  ' Then
               DMPESSOA.TAjudante.FieldByName('HMAT_INI').AsString := EdHMatIni.Text;

           If EdHMatFim.Text <> '  :  ' Then
               DMPESSOA.TAjudante.FieldByName('HMAT_FIM').AsString := EdHMatFim.Text;

           If EdHrNorm.Text <> '  :  ' Then
               DMPESSOA.TAjudante.FieldByName('HRS_NORMAIS').AsString := EdHrNorm.Text;

           If EdHrExt.Text <> '  :  ' Then
               DMPESSOA.TAjudante.FieldByName('HRS_EXTRAS').AsString := EdHrExt.Text;

           If edHVespIni.Text <> '  :  ' Then
               DMPESSOA.TAjudante.FieldByName('HVESP_INI').AsString := edHVespIni.Text;

           If EdHVespFim.Text <> '  :  ' Then
               DMPESSOA.TAjudante.FieldByName('HVESP_FIM').AsString := EdHVespFim.Text;

           DMPESSOA.TAjudante.FieldByName('TOTAL_EXTRA').AsCurrency := EdValorExt.ValueNumeric;
           DMPESSOA.TAjudante.FieldByName('TOTAL_NORMAL').AsCurrency := EdValorNorm.ValueNumeric;
           DMPESSOA.TAjudante.FieldByName('VALORTOTHRS').AsCurrency := EdVlrTot.ValueNumeric;
           DMPESSOA.TAjudante.FieldByName('VLR_EXTRA').AsCurrency := EdValorExtra.ValueNumeric;
           DMPESSOA.TAjudante.FieldByName('VLR_NORMAL').AsCurrency := EdValorNormal.ValueNumeric;
           DMPESSOA.TAjudante.FieldByName('TOTAL_HORAS').AsString := TimeToStr(StrToTime(EdHrNorm.Text) + StrToTime(EdHrExt.Text));
           DMPESSOA.TAjudante.FieldByName('MARK').AsInteger := 1;
           DMPESSOA.TAjudante.FieldByName('data').AsString := EdDate.Text;

           //Retorna um número inteiro que representa o dia da semana
           XDiaSemana := DayOfWeek(StrToDateTime(EDDate.Text));
           // função para buscar o dia da semana baseando-se no valor da variavel XDiaSemana
           DMPESSOA.TAjudante.FieldByName('DIA_SEMANA').AsString := Dia_Semana(XDiaSemana);
           DMPESSOA.TAjudante.Post;

       DMPESSOA.VWFuncionario.Next;
       End;

       // ATUALIZANDO O BANCO
       DMPESSOA.TransacPessoa.CommitRetaining;

       // filtra funcionarios, ajudantes e ordem de servico apos inserir os ajudantes na OS
       FiltraAjudante;

       // LIMPA MEMO
       MFunc.Lines.Clear;

       // Calcula o desconto em porcentagem do total dos ajudantes
       EdTotAjud.ValueNumeric := VlrTot_Ajudante;;

       // limpa edits do ajudante
       Limpa_EditAjudante;

       // passa pelo processo de desconto em porcentagem do total dos ajudantes
       EdDescAjudExit(Self);

       // resetando o campo mark
       DMPESSOA.TFuncionario.Close;
       DMPESSOA.TFuncionario.SQL.Clear;
       DMPESSOA.TFuncionario.SQL.Add('update funcionario set funcionario.mark = ' + #39 + '' + #39);
       DMPESSOA.TFuncionario.ExecSQL;
       DMPESSOA.TransacPessoa.CommitRetaining;

       XHMat := '00:00:00';
       XEMat := '00:00:00';
       XHVesp := '00:00:00';
       XEVesp := '00:00:00';

   End
   Else Begin
       Mensagem('   A T E N Ç Ã O   ','Selecione o(s) ajudente(s).','',1,1,false,'A');
       BtnFunc.SetFocus;
   End;
end;

// calcula o horario matutino dos ajudantes
Procedure TFOrdem.CalcHrMat_Ajudante;
begin
   XHMat := '00:00:00';
   XEMat := '00:00:00';

   // seleciona o ultimo funcionario
   DMServ.TAlx3.Close;
   DMServ.TAlx3.SQL.Clear;
   DMServ.TAlx3.SQL.Add('select max(funcionario.cod_func) as cod_func from funcionario ');
   DMServ.TAlx3.Open;

   // seleciona todos os dados de funcionario, principalmente o cod_servico
   DMPESSOA.TFuncionario.Close;
   DMPESSOA.TFuncionario.SQL.Clear;
   DMPESSOA.TFuncionario.SQL.Add('select * from funcionario where funcionario.cod_func = :codigo');
   DMPESSOA.TFuncionario.ParamByName('codigo').AsInteger := DMServ.TAlx3.FieldByName('cod_func').AsInteger;
   DMPESSOA.TFuncionario.Open;

   // seleciona os dados de subservico que tenha o mesmo codigo que o subservico do funcionario
   DMServ.WSubServ.Close;
   DMServ.WSubServ.SQL.Clear;
   DMServ.WSubServ.SQL.Add('select * from vwsubservico where vwsubservico.cod_subservico = :codigo');
   DMServ.WSubServ.ParamByName('codigo').AsInteger := DMPESSOA.TFuncionario.FieldByname('cod_servico').AsInteger;
   DMServ.WSubServ.Open;

   // como vai ser feito calculo matutino,
   If (DMServ.WSubServ.FieldByName('HORA_INI').AsString <> '') AND (DMServ.WSubServ.FieldByName('INTERVALO_INI').AsString <> '')
   Then Begin

       // se o servico comecou e terminou antes do inicio do horario comercial, ou seja, ter começado e terminado antes das 8:00 (normalmente esse horario)
       If (StrToTime(EdHMatIni.Text) < StrToTime(DMServ.WSubServ.FieldByName('HORA_INI').AsString)) and (StrToTime(EdHMatFim.Text) < StrToTime(DMServ.WSubServ.FieldByName('HORA_INI').AsString))
       Then Begin
           XEMat := TimeToStr( StrToTime(EdHMatFim.Text) - StrToTime(EdHMatIni.Text) );
       End;

       // se comecou antes do horario comercial e terminou depois do inicio do horario comercial no periodo da manha
       If (StrToTime(EdHMatIni.Text) < StrToTime(DMServ.WSubServ.FieldByName('HORA_INI').AsString)) and (StrToTime(edHMatFim.Text) >= StrToTime(DMServ.WSubServ.FieldByName('HORA_INI').AsString)) and (StrToTime(edHMatFim.Text) <= StrToTime(DMSERV.WSubServ.FieldByName('INTERVALO_INI').AsString))
       Then Begin
           XEMat := TimeToStr( StrToTime(DMServ.WSubServ.FieldByName('HORA_INI').AsString) - StrToTime(EdHMatIni.Text) );

           XHMat := TimeToStr( StrToTime(edHMatFim.Text) - StrToTime(DMServ.WSubServ.FieldByName('HORA_INI').AsString) );

       End;

       // se comecou antes do horario comercial e terminou no meio dia com hora extra
       If (StrToTime(EdHMatIni.Text) < StrToTime(DMServ.WSubServ.FieldByName('HORA_INI').AsString)) and (StrToTime(edHMatFim.Text) > StrToTime(DMSERV.WSubServ.FieldByName('INTERVALO_INI').AsString)) and (StrToTime(edHMatFim.Text) <= StrToTime(DMSERV.WSubServ.FieldByName('INTERVALO_FINAL').AsString))
       Then Begin
           XEMat := TimeToStr( StrToTime(DMServ.WSubServ.FieldByName('HORA_INI').AsString) - StrToTime(EdHMatIni.Text) );

           XHMat := TimeToStr( StrToTime(DMSERV.WSubServ.FieldByName('INTERVALO_INI').AsString) - StrToTime(DMServ.WSubServ.FieldByName('HORA_INI').AsString));

           XEMat := TimeToStr( (StrToTime(edHMatFim.Text) - StrToTime(DMSERV.WSubServ.FieldByName('INTERVALO_INI').AsString)) + StrToTime(XEMat) );
       End;

       // se comecou antes do horario comercial, passou pelo horario matutino, usou horario do meio dia e finalizou na parte da tarde (exemplo: das 7:00 ás 15:00)
       If (StrToTime(EdHMatIni.Text) < StrToTime(DMServ.WSubServ.FieldByName('HORA_INI').AsString)) and (StrToTime(edHMatFim.Text) > StrToTime(DMSERV.WSubServ.FieldByName('INTERVALO_FINAL').AsString)) and (StrToTime(edHMatFim.Text) <= StrToTime(DMServ.WSubServ.FieldByName('HORA_FINAL').AsString))
       Then Begin
           XEMat := TimeToStr( StrToTime(DMServ.WSubServ.FieldByName('HORA_INI').AsString) - StrToTime(EdHMatIni.Text) );

           XHMat := TimeToStr( StrToTime(DMSERV.WSubServ.FieldByName('INTERVALO_INI').AsString) - StrToTime(DMServ.WSubServ.FieldByName('HORA_INI').AsString));

           XEMat := TimeToStr( (StrToTime(DMSERV.WSubServ.FieldByName('INTERVALO_FINAL').AsString) - StrToTime(DMSERV.WSubServ.FieldByName('INTERVALO_INI').AsString)) + StrToTime(XEMat));

           XHMat := TimeToStr( (StrToTime(edHMatFim.Text) - StrToTime(DMSERV.WSubServ.FieldByName('INTERVALO_FINAL').AsString)) + StrToTime(XHMat));

       End;

       // se comecou antes do horario comercial, passou pelo horario matutino, usou horario do meio dia e finalizou depois do horario comercial (exemplo: 07:00 ás 20:00)
       If (StrToTime(EdHMatIni.Text) < StrToTime(DMServ.WSubServ.FieldByName('HORA_INI').AsString)) and ( StrToTime(edHMatFim.Text) > StrToTime(DMServ.WSubServ.FieldByName('HORA_FINAL').AsString) )
       Then Begin
           XEMat := TimeToStr( StrToTime(DMServ.WSubServ.FieldByName('HORA_INI').AsString) - StrToTime(EdHMatIni.Text) );

           XHMat := TimeToStr( StrToTime(DMSERV.WSubServ.FieldByName('INTERVALO_INI').AsString) - StrToTime(DMServ.WSubServ.FieldByName('HORA_INI').AsString));

           XEMat := TimeToStr( (StrToTime(DMSERV.WSubServ.FieldByName('INTERVALO_FINAL').AsString) - StrToTime(DMSERV.WSubServ.FieldByName('INTERVALO_INI').AsString)) + StrToTime(XEMat));

           XHMat := TimeToStr( StrToTime(DMServ.WSubServ.FieldByName('HORA_FINAL').AsString) - StrToTime(DMSERV.WSubServ.FieldByName('INTERVALO_FINAL').AsString) + StrToTime(XHMat));

           XEMat := TimeToStr( (StrToTime(edHMatFim.Text) - StrToTime(DMServ.WSubServ.FieldByName('HORA_FINAL').AsString)) + StrToTime(XEMat));

       End;

       // se comecou no periodo da manha no horario comercial e terminou no periodo matutino
       If (StrToTime(EdHMatIni.Text) >= StrToTime(DMServ.WSubServ.FieldByName('HORA_INI').AsString)) and ( StrToTime(EdHMatIni.Text) <= StrToTime(DMSERV.WSubServ.FieldByName('INTERVALO_INI').AsString) ) and ( StrToTime(edHMatFim.Text) <= StrToTime(DMSERV.WSubServ.FieldByName('INTERVALO_INI').AsString) )
       Then Begin
           XHMat := TimeToStr(StrToTime(edHMatFim.Text) - StrToTime(EdHMatIni.Text));
       End;

       // se comecou no horario matutino e terminou no meio dia (exemplo 8:00 ás 12:30)
       If (StrToTime(EdHMatIni.Text) >= StrToTime(DMServ.WSubServ.FieldByName('HORA_INI').AsString)) and ( StrToTime(edHMatFim.Text) >  StrToTime(DMSERV.WSubServ.FieldByName('INTERVALO_INI').AsString)) and ( StrToTime(edHMatFim.Text) <=  StrToTime(DMSERV.WSubServ.FieldByName('INTERVALO_FINAL').AsString) ) AND ( StrToTime(EdHMatIni.Text) <  StrToTime(DMSERV.WSubServ.FieldByName('INTERVALO_INI').AsString))
       Then Begin
           XHMat := TimeToStr( StrToTime(DMSERV.WSubServ.FieldByName('INTERVALO_INI').AsString) - StrToTime(EdHMatIni.Text));

           XEMat := TimeToStr( StrToTime(edHMatFim.Text) - StrToTime(DMSERV.WSubServ.FieldByName('INTERVALO_INI').AsString));

       End;

       // significa que o ucuaior nao configurou horari comercial intaum a diferenca eh repassada como horario comercial
       If ((DMServ.WSubServ.FieldByName('HORA_INI').AsString = '') or (DMServ.WSubServ.FieldByName('HORA_INI').AsString = '00:00:00')) and ((DMSERV.WSubServ.FieldByName('INTERVALO_INI').AsString = '') or (DMSERV.WSubServ.FieldByName('INTERVALO_INI').AsString = '00:00:00'))
       Then Begin
           XHMat := TimeToStr(StrToTime(edHMatFim.Text) - StrToTime(EdHMatIni.Text));
       End;

   End
   Else Begin
       XHMat := TimeToStr(StrToTime(edHMatFim.Text) - StrToTime(EdHMatIni.Text));
   End;


end;


procedure TFOrdem.EdHMatFimExit(Sender: TObject);
begin
  inherited;

   If (EdHMatIni.Text <> '  :  ') and (EdHMatFim.Text <> '  :  ')
   Then Begin

       // calcula o horario matutino dos ajudantes
       CalcHrMat_Ajudante;

       // total de horas normais periodo matutino e vespertino
       EdHrNorm.Text := TimeToStr(StrToTime(XHMat) + StrToTime(XHVesp));

       // total de horas extras no periodo matutino e vespertino
       EdHrExt.Text := TimeToStr(StrToTime(XEMat) + StrToTime(XEVesp));

       // calcula os horarios extra e comercais do ajudante
       CalculaHorario_Ajudante;
   End;

end;

procedure TFOrdem.SpeedButton1Click(Sender: TObject);
begin
  inherited;
   PHorasAju.Visible := true;
   PHorasAju.BringToFront;
   PHorasAju.Top := 269;
   PHorasAju.Left := 144;

end;

procedure TFOrdem.SpeedButton2Click(Sender: TObject);
begin
  inherited;
   PHorasAju.Visible := false;
   PHorasAju.SendToBack;

end;

// calcula os horarios extra e comercais do ajudante
procedure TFOrdem.CalculaHorario_Ajudante;
var
XHoras, XExtra: string;
begin

   // apenas repassando o total de horas registrada ate o momento p efetuar calculo
   XHoras := EdHrNorm.Text;
   XExtra := EdHrExt.Text;

   // calcula o horario matutino dos ajudantes
   EdValorNorm.Text := FormatFloat('0.00',Calculo_HrsNormais(XHoras,EdValorNormal.ValueNumeric));

   // calculo financeiro das horas extras
   EdValorExt.Text := FormatFloat('0.00',CalculaHrExtra_Ajudante(XExtra,EdValorExtra.ValueNumeric));

   // total financeiro das horas normais e extras
   EdVlrTot.ValueNumeric := EdValorNorm.ValueNumeric + EdValorExt.ValueNumeric;


end;

// calcula hora extra do ajudante
Function TFOrdem.CalculaHrExtra_Ajudante(HorasExtra: string; ValorExtra: real): real;
begin
   XResult := 0;

   If HorasExtra <> '00:00:00'
   Then begin

       // copia apenas as horas, separando os minutos
       XNum_Horas := copy(HorasExtra,0,2);

       // valor parcial da hora extra
       XResult := StrToInt(XNum_Horas) * ValorExtra;

       // copia apenas os minutos da hora extra
       XNum_Horas := COPY(HorasExtra,4,2);

       // faz o calculo final dos minutos vezes o valor + o valor parcial das horas
       If XNum_Horas <> '00'
       Then Begin
           // retorna porcentagem dos minutos
           XVLRTSERV := Calculo_Porcentagem(XNum_Horas);

           Result := XResult + ( XVLRTSERV * ValorExtra );
           Exit;
       End;

       Result := XResult;
   End
   Else Begin
       Result := 0;
   End;
end;

procedure TFOrdem.EdHVespFimExit(Sender: TObject);
begin
  inherited;
   If (EdHVespIni.Text <> '  :  ') and (EdHVespFim.Text <> '  :  ')
   Then Begin
       // calcula o horario vespertino dos ajudantes
       CalcHrVesp_Ajudante;

       // total de horas normais periodo matutino e vespertino
       EdHrNorm.Text := TimeToStr(StrToTime(XHMat) + StrToTime(XHVesp));

       // total de horas extras no periodo matutino e vespertino
       EdHrExt.Text := TimeToStr(StrToTime(XEMat) + StrToTime(XEVesp));

       // calcula os horarios extra e comercais do ajudante
       CalculaHorario_Ajudante;
   End;

end;

// calcula o horario vespertino dos ajudantes
procedure TFOrdem.CalcHrVesp_Ajudante;
begin

   XHVesp := '00:00:00';
   XEVesp := '00:00:00';

   // seleciona o ultimo funcionario
   DMServ.TAlx3.Close;
   DMServ.TAlx3.SQL.Clear;
   DMServ.TAlx3.SQL.Add('select max(funcionario.cod_func) as cod_func from funcionario ');
   DMServ.TAlx3.Open;

   // seleciona todos os dados de funcionario, principalmente o cod_servico
   DMPESSOA.TFuncionario.Close;
   DMPESSOA.TFuncionario.SQL.Clear;
   DMPESSOA.TFuncionario.SQL.Add('select * from funcionario where funcionario.cod_func = :codigo');
   DMPESSOA.TFuncionario.ParamByName('codigo').AsInteger := DMServ.TAlx3.FieldByName('cod_func').AsInteger;
   DMPESSOA.TFuncionario.Open;

   // seleciona os dados de subservico que tenha o mesmo codigo que o subservico do funcionario
   DMServ.WSubServ.Close;
   DMServ.WSubServ.SQL.Clear;
   DMServ.WSubServ.SQL.Add('select * from vwsubservico where vwsubservico.cod_subservico = :codigo');
   DMServ.WSubServ.ParamByName('codigo').AsInteger := DMPESSOA.TFuncionario.FieldByname('cod_servico').AsInteger;
   DMServ.WSubServ.Open;

   If (DMServ.WSubServ.FieldByName('INTERVALO_FINAL').AsString <> '') AND (DMServ.WSubServ.FieldByName('HORA_FINAL').AsString <> '')
   Then Begin

       // se comecou e terminou no horario do meio dia (exemplo 12:30 ás 13:15)
       If (StrToTime(edHVespIni.Text) >= StrToTime(DMSERV.WSubServ.FieldByName('INTERVALO_INI').AsString)) and (StrToTime(edHVespFim.Text) <= StrToTime(DMSERV.WSubServ.FieldByName('INTERVALO_FINAL').AsString))
       Then Begin
           XEVesp := TimeToStr(StrToTime( edHVespFim.Text) - StrToTime(DMSERV.WSubServ.FieldByName('INTERVALO_INI').AsString));
       End;

       // se comecou no meio dia e terminou no periodo da tarde
       If (StrToTime(edHVespIni.Text) >= StrToTime(DMSERV.WSubServ.FieldByName('INTERVALO_INI').AsString)) and (StrToTime(edHVespFim.Text) > StrToTime(DMSERV.WSubServ.FieldByName('INTERVALO_FINAL').AsString)) and (StrToTime(edHVespFim.Text) <= StrToTime(DMServ.WSubServ.FieldByName('HORA_FINAL').AsString)) and (StrToTime(edHVespIni.Text) < StrToTime(DMSERV.WSubServ.FieldByName('INTERVALO_FINAL').AsString))
       Then Begin
           XEVesp := TimeToStr(StrToTime(DMSERV.WSubServ.FieldByName('INTERVALO_FINAL').AsString) - StrToTime(edHVespIni.Text));

           XHVesp := TimeToStr((StrToTime(edHVespFim.Text) - StrToTime(DMSERV.WSubServ.FieldByName('INTERVALO_FINAL').AsString)));
       End;

       // se começou no meio dia e terminou depois do horario comercial
       If (StrToTime(edHVespIni.Text) >= StrToTime(DMSERV.WSubServ.FieldByName('INTERVALO_INI').AsString)) and (StrToTime(edHVespFim.Text) > StrToTime(DMSERV.WSubServ.FieldByName('INTERVALO_FINAL').AsString)) and (StrToTime(edHVespFim.Text) >= StrToTime(DMServ.WSubServ.FieldByName('HORA_FINAL').AsString)) and (StrToTime(edHVespIni.Text) <= StrToTime(DMSERV.WSubServ.FieldByName('INTERVALO_FINAL').AsString))
       Then Begin
           XEVesp := TimeToStr(StrToTime(DMSERV.WSubServ.FieldByName('INTERVALO_FINAL').AsString) - StrToTime(edHVespIni.Text));

           XHVesp := TimeToStr(StrToTime(DMServ.WSubServ.FieldByName('HORA_FINAL').AsString) - StrToTime(DMSERV.WSubServ.FieldByName('INTERVALO_FINAL').AsString));

           XEVesp := TimeToStr(StrToTime(XEVesp) + (StrToTime(edHVespFim.Text) - StrToTime(DMServ.WSubServ.FieldByName('HORA_FINAL').AsString)));
       End;

       // se comecou e finalizou a tarde, antes da horario comercial terminar (exemplo 13:45 ás 16:45)
       If (StrToTime(edHVespIni.Text) >= StrToTime(DMSERV.WSubServ.FieldByName('INTERVALO_FINAL').AsString)) and (StrToTime(edHVespIni.Text) < StrToTime(DMServ.WSubServ.FieldByName('HORA_FINAL').AsString)) and (StrToTime(edHVespFim.Text) <= StrToTime(DMServ.WSubServ.FieldByName('HORA_FINAL').AsString))
       Then Begin
           XHVesp := TimeToStr((StrToTime(edHVespFim.Text) - StrToTime(edHVespIni.Text)));
       End;

       // se comecou a tarde e finalizou apos o horario comercial
       If (StrToTime(edHVespIni.Text) >= StrToTime(DMSERV.WSubServ.FieldByName('INTERVALO_FINAL').AsString)) and ( StrToTime(edHVespIni.Text) < StrToTime(DMServ.WSubServ.FieldByName('HORA_FINAL').AsString)) and ( StrToTime(edHVespFim.Text) > StrToTime(DMServ.WSubServ.FieldByName('HORA_FINAL').AsString))
       Then Begin
           XHVesp := TimeToStr((StrToTime(DMServ.WSubServ.FieldByName('HORA_FINAL').AsString) - StrToTime(edHVespIni.Text)));

           XEVesp := TimeToStr((StrToTime(edHVespFim.Text) - StrToTime(DMServ.WSubServ.FieldByName('HORA_FINAL').AsString)));
       End;

       // se comecou e terminou logo apos o horario comercial
       If (StrToTime(edHVespIni.Text) >= StrToTime(DMServ.WSubServ.FieldByName('HORA_FINAL').AsString)) and (DMServ.WSubServ.FieldByName('HORA_FINAL').AsString <> '') and (DMServ.WSubServ.FieldByName('HORA_FINAL').AsString <> '00:00:00')
       Then Begin
           XEVesp := TimeToStr((StrToTime(edHVespFim.Text) - StrToTime(DMServ.WSubServ.FieldByName('HORA_FINAL').AsString)));
       End;

       If ((DMSERV.WSubServ.FieldByName('INTERVALO_FINAL').AsString = '') or (DMSERV.WSubServ.FieldByName('INTERVALO_FINAL').AsString = '00:00:00')) and ((DMSERV.WSubServ.FieldByName('HORA_FINAL').AsString = '') OR (DMSERV.WSubServ.FieldByName('HORA_FINAL').AsString = '00:00:00'))
       Then Begin
           XHVesp := TimeToStr(StrToTime(edHVespFim.Text) - StrToTime(edHVespIni.Text));
       End;
   End
   Else Begin
       XHVesp := TimeToStr(StrToTime(edHVespFim.Text) - StrToTime(edHVespIni.Text));
   End;


end;

// busca os funcionarios que foram selecionados para serem os ajudantes da Ordem de Servico
procedure TFOrdem.BuscaFuncionarios;
begin
    // buscando todos os funcionarios selecionados
    DMPESSOA.TAux2.Close;
    DMPESSOA.TAux2.SQL.Clear;
    DMPESSOA.TAux2.SQL.Add('select * from vwfuncionario');
    DMPESSOA.TAux2.SQL.Add('where (vwfuncionario.mark = ' + #39 + 'X' + #39 + ')');
    DMPESSOA.TAux2.Open;  

end;

// filtra funcionarios, ajudantes e ordem de servico apos inserir os ajudantes na OS
procedure TFOrdem.FiltraAjudante;
begin

   DMPESSOA.TAux3.Close;
   DMPESSOA.TAux3.SQL.Clear;
   DMPESSOA.TAux3.SQL.Add('SELECT funcionario.cod_interno, funcionario.cod_func, funcionario.cod_pessoa,');
   DMPESSOA.TAux3.SQL.Add('ajudante.cod_func, ajudante.cod_ordem, ajudante.hrs_normais, ajudante.hrs_extras,');
   DMPESSOA.TAux3.SQL.Add('ajudante.total_normal, ajudante.total_extra, ajudante.valortothrs, ajudante.data,');
   DMPESSOA.TAux3.SQL.Add('pessoa.cod_pessoa, pessoa.nome, ordem.cod_ordem');
   DMPESSOA.TAux3.SQL.Add('from ajudante');
   DMPESSOA.TAux3.SQL.Add('left join funcionario on ajudante.cod_func = funcionario.cod_func');
   DMPESSOA.TAux3.SQL.Add('left join pessoa on funcionario.cod_pessoa = pessoa.cod_pessoa');
   DMPESSOA.TAux3.SQL.Add('left join ordem on ajudante.cod_ordem = ordem.cod_ordem');
   DMPESSOA.TAux3.SQL.Add('where (ordem.cod_ordem = :codigo) and (ajudante.mark = ' + #39 + '1' + #39 +')');
   DMPESSOA.TAux3.ParamByName('codigo').AsInteger := XCOD_ORDEM;
   DMPESSOA.TAux3.Open;

end;

// limpa edits do ajudante
procedure TFOrdem.Limpa_EditAjudante;
begin
   EdValorNormal.ValueNumeric := 0;
   EdValorExtra.ValueNumeric := 0;
   EdHMatIni.Text := '';
   EdHMatFim.Text := '';
   EdHVespIni.Text := '';
   EdHVespFim.Text := '';
   EdVlrTot.ValueNumeric := 0;
   EdHrNorm.Text := '';
   EdHrExt.Text := '';
   EdValorNorm.ValueNumeric := 0;
   EdValorExt.ValueNumeric := 0;
   EdDate.Text := '';
   LDia.Caption := 'Dia da Semana';
   LDia.Font.Color := cl3DDkShadow;
end;

procedure TFOrdem.BitBtn12Click(Sender: TObject);
begin
  inherited;

   // seleciona os dados do funcioanrio
   DMPESSOA.TAjudante.Close;
   DMPESSOA.TAjudante.SQL.Clear;
   DMPESSOA.TAjudante.SQL.Add('select * from ajudante');
   DMPESSOA.TAjudante.SQL.Add('where (ajudante.cod_ordem = :codigo) and (ajudante.cod_func = :cod_func)');
   DMPESSOA.TAjudante.ParamByName('codigo').AsInteger := XCOD_ORDEM;
   DMPESSOA.TAjudante.ParamByName('cod_func').AsInteger := DMPESSOA.taux3.FieldByName('cod_func').AsInteger;
   DMPESSOA.TAjudante.Open;

   // repassando os dados para as edits
   EdHMatIni.Text := DMPESSOA.TAjudante.FieldByName('HMAT_INI').AsString;
   EdHMatFim.Text := DMPESSOA.TAjudante.FieldByName('HMAT_FIM').AsString;
   EdHrNorm.Text := DMPESSOA.TAjudante.FieldByName('HRS_NORMAIS').AsString;
   EdHrExt.Text := DMPESSOA.TAjudante.FieldByName('HRS_EXTRAS').AsString;
   edHVespIni.Text := DMPESSOA.TAjudante.FieldByName('HVESP_INI').AsString;
   EdHVespFim.Text := DMPESSOA.TAjudante.FieldByName('HVESP_FIM').AsString;
   EdValorExt.ValueNumeric := DMPESSOA.TAjudante.FieldByName('TOTAL_EXTRA').AsCurrency;
   EdValorNorm.ValueNumeric := DMPESSOA.TAjudante.FieldByName('TOTAL_NORMAL').AsCurrency;
   EdValorExtra.ValueNumeric:= DMPESSOA.TAjudante.FieldByName('VLR_EXTRA').AsCurrency;
   EdValorNormal.ValueNumeric := DMPESSOA.TAjudante.FieldByName('VLR_NORMAL').AsCurrency;
   EdDate.Text := DMPESSOA.TAjudante.FieldByName('data').AsString;
   EdVlrTot.ValueNumeric := DMPESSOA.TAjudante.FieldByName('VALORTOTHRS').AsCurrency;

   If DMPESSOA.TAjudante.FieldByName('DATA').AsString <> ''
   Then Begin
       // função que retorna o dia da semana
       LDia.Caption := DiaSemana(DMPESSOA.TAjudante.FieldByName('DATA').AsString);

       // se for sabado ou domingo o dia da semana fica vermelho
       If (XDATA = '1')
       Then Begin
           LDia.Font.Color := clRed;
       End
       Else Begin
           LDia.Font.Color := cl3DDkShadow;
       End;
   End;

   // desmarcando todos os campos mark
   DMPESSOA.TFuncionario.Close;
   DMPESSOA.TFuncionario.SQL.Clear;
   DMPESSOA.TFuncionario.SQL.Add('update funcionario set funcionario.mark = ' + #39 + '' + #39);
   DMPESSOA.TFuncionario.ExecSQL;

   // marcando o campo mark
   DMPESSOA.TFuncionario.Close;
   DMPESSOA.TFuncionario.SQL.Clear;
   DMPESSOA.TFuncionario.SQL.Add('update funcionario set funcionario.mark = ' + #39 + 'X' + #39);
   DMPESSOA.TFuncionario.SQL.Add('where funcionario.cod_func = :codigo');
   DMPESSOA.TFuncionario.ParamByName('codigo').AsInteger := DMPESSOA.taux3.FieldByName('cod_func').AsInteger;
   DMPESSOA.TFuncionario.ExecSQL;
   DMPESSOA.TransacPessoa.CommitRetaining;

   // busca os funcionarios que foram selecionados para serem os ajudantes da Ordem de Servico
   BuscaFuncionarios;

   // primeiro registro
   DMPESSOA.TAux2.First;

   // dados no Memo
   MFunc.Clear;
   MFunc.Lines.Add('   Funcionários selecionados:');
   MFunc.Lines.Add('');

   XContador := 1;

   while not DMPESSOA.TAux2.Eof do
   begin

       MFunc.Lines.Add( IntToStr(XContador) + ' - ' + DMPESSOA.TAux2.FieldByname('nome').AsString);

   XContador := XContador + 1;
   DMPESSOA.TAux2.Next;
   end;

   // deleta os dados do funcionario na tabela ajudante
   DMPESSOA.TALX.Close;
   DMPESSOA.TALX.SQL.Clear;
   DMPESSOA.TALX.SQL.Add('delete from ajudante where (ajudante.cod_ordem = :codigo)');
   DMPESSOA.TALX.SQL.Add('and (ajudante.cod_func = :cod_func)');
   DMPESSOA.TALX.ParamByName('codigo').AsInteger := XCOD_ORDEM;
   DMPESSOA.TALX.ParamByName('cod_func').AsInteger := DMPESSOA.taux3.FieldByName('cod_func').AsInteger;
   DMPESSOA.TALX.ExecSQL;

   // atualizando banco
   DMPESSOA.TransacPessoa.CommitRetaining;

   // filtra funcionarios, ajudantes e ordem de servico apos inserir os ajudantes na OS
   FiltraAjudante;

   // passa pelo processo de desconto de porcentagem dos ajudantes
   EdDescAjudExit(Self);

end;

// soma o total (R$) dos ajudantes
function TFOrdem.VlrTot_Ajudante: real;
begin
   DMServ.TAlx1.Close;
   DMServ.TAlx1.SQL.Clear;
   DMServ.TAlx1.SQL.Add('select sum(ajudante.VALORTOTHRS) as TOT_AJUD from ajudante');
   DMServ.TAlx1.SQL.Add('where (ajudante.cod_ordem = :codigo)');
   DmServ.Talx1.SQL.Add('and (ajudante.mark = ' + #39 + '1' + #39 + ')');
   DMServ.TAlx1.ParamByName('codigo').AsInteger := XCOD_ORDEM;
   DMServ.TAlx1.Open;

   Result := DMServ.TAlx1.FieldByname('TOT_AJUD').AsCurrency;

end;

// Calcula o desconto em porcentagem do total dos ajudantes
function TFOrdem.CalculaDesc_Ajud: real;
begin

   // soma o total (R$) dos ajudantes
   VlrTot_Ajudante;

   If EdDescAjud.ValueNumeric <> 0
   Then Begin
       EdTotAjud.ValueNumeric := DMServ.TAlx1.FieldByname('TOT_AJUD').AsCurrency - ((EdDescAjud.ValueNumeric / 100) * DMServ.TAlx1.FieldByname('TOT_AJUD').AsCurrency);
   End
   Else Begin
       EdTotAjud.ValueNumeric := DMServ.TAlx1.FieldByname('TOT_AJUD').AsCurrency;
   End;


end;

procedure TFOrdem.EdDescAjudExit(Sender: TObject);
begin
  inherited;
   // Calcula o desconto em porcentagem do total dos ajudantes
   CalculaDesc_Ajud;

   // TOTAL DA ORDEM
   EdTotOrd.ValueNumeric := EdTotKm.ValueNumeric + EdTotServ.ValueNumeric + EdTotAjud.ValueNumeric ;
   EdValorOrd.ValueNumeric := EdTotKm.ValueNumeric + EdTotServ.ValueNumeric + EdTotAjud.ValueNumeric;

   // calcula a porcentagem de desconto do total da ordem de servico
   CalculaDescTotal;
end;

procedure TFOrdem.EdTotAjudExit(Sender: TObject);
begin
  inherited;
   // TOTAL DA ORDEM
   EdTotOrd.ValueNumeric := EdTotKm.ValueNumeric + EdTotServ.ValueNumeric + EdTotAjud.ValueNumeric ;
   EdValorOrd.ValueNumeric := EdTotKm.ValueNumeric + EdTotServ.ValueNumeric + EdTotAjud.ValueNumeric;

   // soma o total (R$) dos ajudantes
   VlrTot_Ajudante;

   EdDescAjud.ValueNumeric := 100 - ((EdTotAjud.ValueNumeric * 100) / DMServ.TAlx1.FieldByName('TOT_AJUD').AsCurrency);

   // calcula a porcentagem de desconto do total da ordem de servico
   CalculaDescTotal;

end;

// retorna dia da semana
function TFOrdem.DiaSemana(Data: string): string;
begin

   Try
       //Retorna um número inteiro que representa o dia da semana
       xdata := IntToStr(DayOfWeek(StrToDateTime(Data)));

       Case StrToInt(XDATA) of
           1 : Result := 'Domingo';
           2 : Result := 'Segunda-Feira';
           3 : Result := 'Terça-Feira';
           4 : Result := 'Quarta-Feira';
           5 : Result := 'Quinta-Feira';
           6 : Result := 'Sexta-Feira';
           7 : Result := 'Sábado';
       End;
    Except
        xdata := '0';
        Result := '';
    End;
end;

procedure TFOrdem.EdDateExit(Sender: TObject);
begin
  inherited;

   If EdDate.Text <> '  /  /    '
   Then Begin
       // função que retorna o dia da semana
       LDia.Caption := DiaSemana(EdDate.Text);

       // se for sabado ou domingo o dia da semana fica vermelho
       If (StrToInt(XDATA) = 1)
       Then Begin
           LDia.Font.Color := clRed;
       End
       Else Begin
           LDia.Font.Color := cl3DDkShadow;
       End;
   End;

end;

procedure TFOrdem.EDValorExit(Sender: TObject);
begin
  inherited;
   LVlrNormal.Caption := 'R$' + FloatToStrF(EDValor.ValueNumeric, ffFixed, 4, 2);
end;

procedure TFOrdem.FBEquipPlacaBTNOPENExit(Sender: TObject);
begin
  inherited;
   // SE FOR PARA MERCESCAN O FOCO CAI NO CAMPO DE BOX
   If DMMACS.TLoja.FieldByName('ATIVIDADE').AsString = 'EQUIPE'
   Then Begin
       DBBox.TabOrder := 2;
   End;


end;

// Buscar tabela de preço atrelada ao cliente
procedure TFOrdem.BuscarTabPreco;
begin
    // SQL para busca a tabela de preço do cliente
    DMPESSOA.TALX1.Close;
    DMPESSOA.TALX1.SQL.Clear;
    DMPESSOA.TALX1.SQL.Add(' select * from cliente ');
    DMPESSOA.TALX1.SQL.Add(' left join tabela_preco on cliente.cod_tabpreco = tabela_preco.cod_tabelapreco ');
    DMPESSOA.TALX1.SQL.Add(' where cliente.cod_cliente = :codigo ');
    DMPESSOA.TALX1.ParamByName('codigo').AsInteger := DMPESSOA.WCliente.FieldByName('cod_cliente').AsInteger;
    DMPESSOA.TALX1.Open;

    If DMPESSOA.TALX1.FieldByName('cod_tabelapreco').AsString <> ''
    Then Begin
       FrmTabela.EDCodigo.Text := DMPESSOA.TALX1.FieldByName('cod_tabelapreco').AsString;
       FrmTabela.EdDescricao.Text := DMPESSOA.TALX1.FieldByName('descricao').AsString;
       CBPrecoKm.Checked := true;
       CBPrecoTabela.Checked := true;
    End
    Else Begin
       FrmTabela.EDCodigo.Text := '';
       FrmTabela.EdDescricao.Text := '';
       CBPrecoKm.Checked := false;
       CBPrecoTabela.Checked := false;
    End;
end;

procedure TFOrdem.FrmTabelaEDCodigoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
   If Key = VK_return
   Then Begin
       DMServ.TTabPreco.Close;
       DMServ.TTabPreco.SQL.Clear;
       DMServ.TTabPreco.SQL.Add('select * from tabela_preco where tabela_preco.cod_tabelapreco = :codigo');
       DMServ.TTabPreco.ParamByName('codigo').AsInteger := StrToInt(FrmTabela.EDCodigo.Text);
       DMServ.TTabPreco.Open;

       If Not DMServ.TTabPreco.IsEmpty
       Then Begin
           FrmTabela.EDCodigo.Text := DMServ.TTabPreco.FieldByName('cod_tabelapreco').AsString;
           FrmTabela.EdDescricao.Text := DMServ.TTabPreco.FieldByName('descricao').AsString;
           CBPrecoKm.Checked := true;
           CBPrecoTabela.Checked := true;

           EDCodPag.SetFocus;
       End
       Else Begin
           FrmTabela.EdDescricao.Text := '';
           CBPrecoKm.Checked := false;
           CBPrecoTabela.Checked := false;
       End;

   End;
end;

procedure TFOrdem.FrmMotoristaEDCodigoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
	If Key=VK_RETURN
   Then Begin
       DMPESSOA.VWFuncionario.Close;
       DMPESSOA.VWFuncionario.SQL.Clear;
       DMPESSOA.VWFuncionario.SQL.Add('select * from vwfuncionario where vwfuncionario.cod_func = :codigo');
       DMPESSOA.VWFuncionario.ParamByName('codigo').AsInteger := StrToInt(FrmMotorista.EDCodigo.Text);
       DMPESSOA.VWFuncionario.Open;

       If Not DMPESSOA.VWFuncionario.IsEmpty
       Then Begin
           FrmMotorista.EdDescricao.Text := DMPESSOA.VWFuncionario.FieldByname('nome').AsString;
           EDKMIni.SetFocus;
       End
       Else Begin
           FrmMotorista.EdDescricao.Text := '';
       End;

   End;
end;

procedure TFOrdem.FrmEquipamentoExit(Sender: TObject);
begin
  inherited;
  FrmEquipamento.FrameExit(Sender);

end;

procedure TFOrdem.FBEquipPlacaExit(Sender: TObject);
begin
  inherited;
  FBEquipPlaca.FrameExit(Sender);

end;

// ajusta o posicionamento do frmformpag, tamanho e posicionamento dos campos
procedure TFOrdem.AjustaFormPag;
begin
    FrmFormPag1.Left := 7;
    FrmFormPag1.Width := 292;
    FrmFormPag1.EDCodigo.Width := 48;
    FrmFormPag1.EDCodigo.Left := 1;
    FrmFormPag1.EdDescricao.Width := 189;
    FrmFormPag1.EdDescricao.Left := 49;
    FrmFormPag1.LUZOPEN.Left := 238;
    FrmFormPag1.BTNOPEN.Left := 238;
    FrmFormPag1.BTNMINUS.Left := 256;
    FrmFormPag1.LUZMINUS.Left := 256;

    // alinhando a edit BOX
    DBBox.Left := 291;
    DBBox.Top := 68;
    LBox.Left := 291;
    LBox.Top := 55;
end;

procedure TFOrdem.EDNumExit(Sender: TObject);
begin
  inherited;
   // se nao tiver nenhum valor, intaum eh retornado a palavra "Numero"
   If EDNum.Text = '' Then
       EDNum.Text := 'Número';
end;

procedure TFOrdem.EDBoxExit(Sender: TObject);
begin
  inherited;
   // se  usuario naum colocou valor nenhum, a edit volta com o nome BOX
   If EDBox.Text = '' Then
       EDBox.Text := 'Box';
end;

procedure TFOrdem.EDCliente1Exit(Sender: TObject);
begin
  inherited;
   iF EDCliente1.Text = '' tHEN
       EDCliente1.Text := 'Cliente';
end;

// exporta as ordens de servico selecionadas para outro banco, gerando novas ordens com os mesmos produtos, servicos, funcionario, equipe, etc
procedure TFOrdem.Exporta_OrdensServico;
begin
   // Conecta banco de ddos para exportar Ordens
   If ConectaBancoDados(DMMACS.TLoja.FieldByName('EXPORT_OS').AsString) = true
   Then Begin
       // se refere ás posições da barra de progressão
       XContador := 0;

       // seleciona no banco local todas as ordens de serviço que fram selecionadas e que ainda nao foram exportadas - banco local
       DMServ.TOrd.Close;
       DMServ.TOrd.SQL.Clear;
       DMServ.TOrd.SQL.Add('select * from ordem where (ordem.exp = ' + #39 + 'X' + #39+ ')');
       DMServ.TOrd.SQL.Add('and (ordem.status = ' + #39 + 'ABERTO' + #39 + ') and ((ordem.exportado = ' + #39 + '' + #39 +') or (ordem.exportado is null)) and (ordem.exp = ' + #39 + 'X' + #39 + ')');
       DMServ.TOrd.Open;

       // seleciona o numero de produtos na ordem de servico para servir de base para Barra de Progressão
       DMSAIDA.TAlx.Close;
       DMSAIDA.TAlx.SQL.Clear;
       DMSAIDA.TAlx.SQL.Add('select count(itprodord.cod_itprodord) as TOTAL_PROD from itprodord');
       DMSAIDA.TAlx.SQL.Add('left join ordem on itprodord.cod_ordem = ordem.cod_ordem');
       DMSAIDA.TAlx.SQL.Add('where ((ordem.exportado = ' + #39 + '' + #39 +') OR (ORDEM.EXPORTADO IS NULL)) and (ordem.exp = ' + #39 + 'X' + #39 + ')');
       DMSAIDA.TAlx.Open;

       // seleciona o numero de servico na ordem para servir de base para barra de prograessao
       DMServ.TAlx1.Close;
       DMServ.TAlx1.SQL.Clear;
       DMServ.TAlx1.SQL.Add('select count(despadic.cod_despadic) as TOTAL_SERV from despadic');
       DMServ.TAlx1.SQL.Add('left join ordem on despadic.cod_gerador = ordem.cod_ordem');
       DMServ.TAlx1.SQL.Add('where ((ordem.exportado = ' + #39 + '' + #39 +') OR (ORDEM.EXPORTADO IS NULL)) and (ordem.exp = ' + #39 + 'X' + #39 + ')');
       DMServ.TAlx1.Open;

       // dados do componente ProgreeBar
       XContador := 0;
       PBExport.Min := 0;
       PBExport.Max := DMSAIDA.TAlx.FieldByname('TOTAL_PROD').AsInteger + DMServ.TAlx1.FieldByname('TOTAL_SERV').AsInteger;

       PConsulta.Refresh;
       PExp.Visible := true;
       PExp.BringToFront;
       PBExport.Position := XContador;

       // primeiro registro
       DMServ.TOrd.First;

       While Not DMServ.TOrd.Eof do
       Begin

           // BLOCO DE INSERÇÃO DE ORDENS DE SERVICO DO BANCO DE FORA
// ******************************************************************************************************************
           // apenas selecionando dados da tabela ORDEM DE SERVICO do banco de fora
           DMEXPORTA.TOrd.Close;
           DMEXPORTA.TOrd.SQL.Clear;
           DMEXPORTA.TOrd.SQL.Add('select * from ordem');
           DMEXPORTA.TOrd.Open;

           // buscando dados da tabela codigo do banco de fora
           DMEXPORTA.TCodigo.Close;
           DMEXPORTA.TCodigo.SQL.Clear;
           DMEXPORTA.TCodigo.SQL.Add('select * from codigo');
           DMEXPORTA.TCodigo.Open;

           // inserindo nova O.S. para banco de fora
           DMEXPORTA.TOrd.Insert;
           DMEXPORTA.TOrd.FieldByName('cod_ordem').AsInteger := DMEXPORTA.TCodigo.FieldByName('cod_ordem').AsInteger;

           // verifica se o cliente esta cadastrado no banco, se nao tiver jah cadastra na hora
           DMEXPORTA.TOrd.FieldByName('COD_CLIENTE').AsInteger := VerificaCliente(DMServ.TOrd.FieldByname('COD_CLIENTE').AsInteger);

           // VERIFICA SE NO BANCO DE FORA ESTAH CADASTRADO O EQUIPAMENTO DA ORDEM, SE NAO TIVER JAH CADASTRA
           DMEXPORTA.TOrd.FieldByName('COD_EQUIPAMENTO').AsInteger := VerificaEquipamento(DMServ.TOrd.FieldByname('cod_equipamento').AsString);

           // verifica se jah existe o funcionario no banco de fora, e se nao estiver jah cadastra na hora
           DMEXPORTA.TOrd.FieldByName('COD_VENDEDOR').AsInteger := VerificaFuncionario('VENDEDOR','');

           DMEXPORTA.TOrd.FieldByName('DTABERT').AsString := DMServ.TOrd.FieldByName('DTABERT').AsString;
           DMEXPORTA.TOrd.FieldByName('HRABERT').AsString := DMServ.TOrd.FieldByName('HRABERT').AsString;
           DMEXPORTA.TOrd.FieldByName('DTPREV').AsString := DMServ.TOrd.FieldByName('DTPREV').AsString;
           DMEXPORTA.TOrd.FieldByName('HRPREV').AsString := DMServ.TOrd.FieldByName('HRPREV').AsString;

           // verifica se jah existe o funcionario no banco de fora, e se nao estiver jah cadastra na hora
           DMEXPORTA.TOrd.FieldByName('COD_FUNCIONARIO').AsInteger := VerificaFuncionario('FUNCIONARIO','');

           DMEXPORTA.TOrd.FieldByName('OBSERVACAO').AsString := DMServ.TOrd.FieldByName('OBSERVACAO').AsString;
           DMEXPORTA.TOrd.FieldByName('DTENTREGA').AsString := DMServ.TOrd.FieldByName('DTENTREGA').AsString;
           DMEXPORTA.TOrd.FieldByName('HRENTREGA').AsString := DMServ.TOrd.FieldByName('HRENTREGA').AsString;
           DMEXPORTA.TOrd.FieldByName('NIVELCOMP').AsString := DMServ.TOrd.FieldByName('NIVELCOMP').AsString;
           DMEXPORTA.TOrd.FieldByName('PROBREC').AsString := DMServ.TOrd.FieldByName('PROBREC').AsString;
           DMEXPORTA.TOrd.FieldByName('SOLUCAO').AsString := DMServ.TOrd.FieldByName('SOLUCAO').AsString;
           DMEXPORTA.TOrd.FieldByName('STATUS').AsString := 'ABERTO';
           DMEXPORTA.TOrd.FieldByName('NUMERO').AsString := DMServ.TOrd.FieldByName('NUMERO').AsString;
           DMEXPORTA.TOrd.FieldByName('DESCONTO').AsString := DMServ.TOrd.FieldByName('DESCONTO').AsString;

           // passando o parametro "USUARIO" a função irah retornar o codigo de usuario do banco de fora, e nao o cod_funcionario
           DMEXPORTA.TOrd.FieldByName('COD_USUARIO').AsInteger := VerificaFuncionario('USUARIO','');

           DMEXPORTA.TOrd.FieldByName('TOTPROD').AsString := DMServ.TOrd.FieldByName('TOTPROD').AsString;
           DMEXPORTA.TOrd.FieldByName('TOTSERV').AsString := DMServ.TOrd.FieldByName('TOTSERV').AsString;
           DMEXPORTA.TOrd.FieldByName('TOTORD').AsString := DMServ.TOrd.FieldByName('TOTORD').AsString;
           DMEXPORTA.TOrd.FieldByName('COD_LOJA').AsString := DMServ.TOrd.FieldByName('COD_LOJA').AsString;
           DMEXPORTA.TOrd.FieldByName('MOTIVOPARADA').AsString := DMServ.TOrd.FieldByName('MOTIVOPARADA').AsString;

           // busca forma de pagamento, se necessario cadastra a nova forma
           DMEXPORTA.TOrd.FieldByName('COD_FORMPAG').AsInteger := Forma_Pagamento;

           DMEXPORTA.TOrd.FieldByName('LOCALAT').AsString := DMServ.TOrd.FieldByName('LOCALAT').AsString;
           DMEXPORTA.TOrd.FieldByName('COMISSAO').AsString := DMServ.TOrd.FieldByName('COMISSAO').AsString;
           DMEXPORTA.TOrd.FieldByName('GARANTIA').AsString := DMServ.TOrd.FieldByName('GARANTIA').AsString;
           DMEXPORTA.TOrd.FieldByName('TOTDESP').AsString := DMServ.TOrd.FieldByName('TOTDESP').AsString;
           DMEXPORTA.TOrd.FieldByName('COMSOBVENDA').AsString := DMServ.TOrd.FieldByName('COMSOBVENDA').AsString;
           DMEXPORTA.TOrd.FieldByName('DTFECH').AsString := DMServ.TOrd.FieldByName('DTFECH').AsString;
           DMEXPORTA.TOrd.FieldByName('DESCPROD').AsString := DMServ.TOrd.FieldByName('DESCPROD').AsString;
           DMEXPORTA.TOrd.FieldByName('DESCSERV').AsString := DMServ.TOrd.FieldByName('DESCSERV').AsString;
           DMEXPORTA.TOrd.FieldByName('NUMORC').AsString := DMServ.TOrd.FieldByName('NUMORC').AsString;
           DMEXPORTA.TOrd.FieldByName('FONES').AsString := DMServ.TOrd.FieldByName('FONES').AsString;
           DMEXPORTA.TOrd.FieldByName('ESTADOEQUIP').AsString := DMServ.TOrd.FieldByName('ESTADOEQUIP').AsString;
           DMEXPORTA.TOrd.FieldByName('MARK').AsString := DMServ.TOrd.FieldByName('MARK').AsString;
           DMEXPORTA.TOrd.FieldByName('FISCO').AsString := DMServ.TOrd.FieldByName('FISCO').AsString;
           DMEXPORTA.TOrd.FieldByName('NUMFISCAL').AsString := DMServ.TOrd.FieldByName('NUMFISCAL').AsString;
           DMEXPORTA.TOrd.FieldByName('NUMFISCALINT').AsInteger:=DMServ.TOrd.FieldByName('NUMFISCALINT').AsInteger;
           DMEXPORTA.TOrd.FieldByName('TIPOPAG').AsString := DMServ.TOrd.FieldByName('TIPOPAG').AsString;
           DMEXPORTA.TOrd.FieldByName('BOX').AsString := DMServ.TOrd.FieldByName('BOX').AsString;
           DMEXPORTA.TOrd.Post;

           // atualiza a tabela codigo com o novo cod_pedvenda
           DMEXPORTA.TCodigo.Edit;
           DMEXPORTA.TCodigo.FieldByName('cod_ordem').AsInteger := DMEXPORTA.TCodigo.FieldByName('cod_ordem').AsInteger + 1;
           DMEXPORTA.TCodigo.Post;

// ******************************************************************************************************************
           // seleciona os subprodutos relacionados á ordem de servico atual - banco local
           DMServ.TPOrd.Close;
           DMServ.TPOrd.SQL.Clear;
           DMServ.TPOrd.SQL.Add('select * from itprodord where itprodord.cod_ordem = :codigo');
           DMServ.TPOrd.ParamByName('codigo').AsInteger := DMServ.TOrd.FieldByname('cod_ordem').AsInteger;
           DMServ.TPOrd.Open;

           // ITENS DO PEDIDO DE VENDA DO BANCO DE FORA
           DMEXPORTA.TItensProd.Close;
           DMEXPORTA.TItensProd.SQL.Clear;
           DMEXPORTA.TItensProd.SQL.Add('SELECT * FROM ITPRODORD');
           DMEXPORTA.TItensProd.Open;

           // primeiro registro da lista de subprodutos
           DMServ.TPOrd.First;

           // INSERINDO TODOS OS PRODUTOS NO BANCO DE FORA
           While Not DMServ.TPOrd.Eof do
           Begin
               // seleciona os dados da tabela estoque que tenha o mesmo cod_estoque - banco local
               DMESTOQUE.TEstoque.Close;
               DMESTOQUE.TEstoque.SQL.Clear;
               DMESTOQUE.TEstoque.SQL.Add('select * from estoque where estoque.cod_estoque = :codigo');
               DMESTOQUE.TEstoque.ParamByName('codigo').AsInteger := DMServ.TPOrd.FieldByname('cod_estoque').AsInteger;
               DMESTOQUE.TEstoque.Open;

               // seleciona dados da tabela subproduto que tenha o mesmo codigo de subproduto que a tabela estoque - banco local
               DMESTOQUE.TSubProd.Close;
               DMESTOQUE.TSubProd.SQL.Clear;
               DMESTOQUE.TSubProd.SQL.Add('select * from subproduto where subproduto.cod_subproduto = :codigo');
               DMESTOQUE.TSubProd.ParamByName('codigo').AsInteger := DMESTOQUE.TEstoque.FieldByname('cod_subprod').AsInteger;
               DMESTOQUE.TSubProd.Open;

               // verifica se no banco de fora existe o mesmo subproduto
               DMEXPORTA.TSubProd.Close;
               DMEXPORTA.TSubProd.SQL.Clear;
               DMEXPORTA.TSubProd.SQL.Add('select * from subproduto');
               DMEXPORTA.TSubProd.SQL.Add('WHERE subproduto.CONTRINT = :codigo');
               DMEXPORTA.TSubProd.ParamByName('CODIGO').AsString := DMESTOQUE.TSubProd.FieldByName('CONTRINT').AsString;
               DMEXPORTA.TSubProd.Open;

               // seleciona todos os dados da tabela estoque que tenha o mesmo codigo de subproduto
               DMEXPORTA.TEstoque.Close;
               DMEXPORTA.TEstoque.SQL.Clear;
               DMEXPORTA.TEstoque.SQL.Add('select * from estoque where estoque.cod_subprod = :codigo ');
               DMEXPORTA.TEstoque.ParamByName('codigo').AsString := DMEXPORTA.TSubProd.FieldByName('cod_subproduto').AsString;
               DMEXPORTA.TEstoque.Open;

               // se o banco que for receber as exportações nao possuir o subproduto atual, o mesmo eh cadastrado
               If DMEXPORTA.TSubProd.IsEmpty
               Then Begin
                   DMEXPORTA.TSubProd.Insert;
                   DMEXPORTA.TSubProd.FieldByName('cod_subproduto').AsInteger := DMEXPORTA.TCodigo.FieldByname('cod_subproduto').AsInteger;
                   DMEXPORTA.TEstoque.Insert;
                   DMEXPORTA.TEstoque.FieldByName('cod_estoque').AsInteger := DMEXPORTA.TCodigo.FieldByname('cod_estoque').AsInteger;

                   DMEXPORTA.TCodigo.Edit;
                   DMEXPORTA.TCodigo.FieldByName('cod_subproduto').AsInteger := DMEXPORTA.TCodigo.fieldByName('cod_subproduto').AsInteger + 1;
                   DMEXPORTA.TCodigo.FieldByName('cod_estoque').AsInteger := DMEXPORTA.TCodigo.FieldByName('cod_estoque').AsInteger + 1;
                   DMEXPORTA.TCodigo.Post;
               End
               Else Begin
                   DMEXPORTA.TSubProd.Edit;
                   DMEXPORTA.TEstoque.Edit;
               End;

               // seleciona dados da tabela produto que tenha o mesmo codigo que a tabela subproduto - banco local
               DMESTOQUE.TProduto.Close;
               DMESTOQUE.TProduto.SQL.Clear;
               DMESTOQUE.TProduto.SQL.Add('select * from produto where produto.cod_produto = :codigo');
               DMESTOQUE.TProduto.ParamByName('codigo').AsInteger := DMESTOQUE.TSubProd.FieldByname('cod_produto').AsInteger;
               DMESTOQUE.TProduto.Open;

               // seleciona o produtto uque tenha a mesma descricao que o banco local - banco de fora
               DMEXPORTA.TProduto.Close;
               DMEXPORTA.TProduto.SQL.Clear;
               DMEXPORTA.TProduto.SQL.Add('select * from produto where (upper(produto.descricao) = upper(' + #39 + DMESTOQUE.TProduto.FieldByName('descricao').AsString + #39 + '))');
               DMEXPORTA.TProduto.Open;

               If DMEXPORTA.TProduto.IsEmpty
               Then Begin
                   DMEXPORTA.TProduto.Insert;
                   DMEXPORTA.TProduto.FieldByName('cod_produto').AsInteger := DMEXPORTA.TCodigo.FieldByname('cod_produto').AsInteger;

                   DMEXPORTA.TCodigo.Edit;
                   DMEXPORTA.TCodigo.FieldByName('cod_produto').AsInteger := DMEXPORTA.TCodigo.FieldByName('cod_produto').AsInteger + 1;
                   DMEXPORTA.TCodigo.Post;
               End
               Else Begin
                   DMEXPORTA.TProduto.Edit;
               End;

               // seleciona dados da tabela grupoprod que tenha o mesmo codigo que a tabela produto
               DMESTOQUE.TGrupo.Close;
               DMESTOQUE.TGrupo.SQL.Clear;
               DMESTOQUE.TGrupo.SQL.Add('select * from grupoprod where grupoprod.cod_grupoprod = :codigo');
               DMESTOQUE.TGrupo.ParamByName('codigo').AsInteger := DMESTOQUE.TProduto.FieldByName('cod_grupoprod').AsInteger;
               DMESTOQUE.TGrupo.Open;

               // seleciona dados da tabela grupoprod do banco de fora que tenha a mesma descricao
               DMEXPORTA.TGrupo.Close;
               DMEXPORTA.TGrupo.SQL.Clear;
               DMEXPORTA.TGrupo.SQL.Add('select * from grupoprod where (upper(grupoprod.descricao) = upper(' + #39 + DMESTOQUE.TGrupo.FieldByName('descricao').AsString + #39 + '))');
               DMEXPORTA.TGrupo.Open;

               If DMEXPORTA.TGrupo.IsEmpty
               Then Begin
                   DMEXPORTA.TGrupo.Insert;
                   DMEXPORTA.TGrupo.FieldByName('cod_grupoprod').AsInteger := DMEXPORTA.TCodigo.FieldByname('cod_grupoprod').AsInteger;
                   DMEXPORTA.TCodigo.Edit;
                   DMEXPORTA.TCodigo.FieldByName('cod_grupoprod').AsInteger := DMEXPORTA.TCodigo.FieldByName('cod_grupoprod').AsInteger + 1;
                   DMEXPORTA.TCodigo.Post;
               End
               Else Begin
                   DMEXPORTA.TGrupo.Edit;
               End;

               // grava na tabela grupoprod do banco de fora os novos dados
               DMEXPORTA.TGrupo.FieldByName('cod_interno').AsString := DMESTOQUE.TGrupo.FieldByName('cod_interno').AsString;
               DMEXPORTA.TGrupo.FieldByName('descricao').AsString := DMESTOQUE.TGrupo.FieldByName('descricao').AsString;
               DMEXPORTA.TGrupo.FieldByName('tipo').AsString := DMESTOQUE.TGrupo.FieldByName('tipo').AsString;
               DMEXPORTA.TGrupo.Post;

               // seleciona no banco de dados local os dados da tabela subgrupoprod
               DMESTOQUE.TSubgru.Close;
               DMESTOQUE.TSubgru.SQL.Clear;
               DMESTOQUE.TSubgru.SQL.Add('select * from subgrupoprod where subgrupoprod.cod_subgrupoprod = :codigo');
               DMESTOQUE.TSubgru.ParamByName('codigo').AsInteger := DMESTOQUE.TProduto.FieldByname('cod_subgrupoprod').AsInteger;
               DMESTOQUE.TSubgru.Open;

               // seleciona dados da tabela subgrupoprod do banco de fora que tenha a mesma descricao
               DMEXPORTA.TSubgru.Close;
               DMEXPORTA.TSubgru.SQL.Clear;
               DMEXPORTA.TSubgru.SQL.Add('select * from subgrupoprod where (upper(subgrupoprod.descricao) = upper(' + #39 + DMESTOQUE.TSubgru.FieldByName('descricao').AsString + #39 + '))');
               DMEXPORTA.TSubgru.Open;

               If DMEXPORTA.TSubgru.IsEmpty
               Then Begin
                   DMEXPORTA.TSubgru.Insert;
                   DMEXPORTA.TSubgru.FieldByName('cod_subgrupoprod').AsInteger := DMEXPORTA.TCodigo.FieldByName('cod_subgrupoprod').AsInteger;
                   DMEXPORTA.TCodigo.Edit;
                   DMEXPORTA.TCodigo.FieldByName('cod_subgrupoprod').AsInteger := DMEXPORTA.TCodigo.FieldByName('cod_subgrupoprod').AsInteger + 1;
                   DMEXPORTA.TCodigo.Post;
               End
               Else Begin
                   DMEXPORTA.TSubgru.Edit;
               End;

               DMEXPORTA.TSubgru.FieldByName('descricao').AsString := DMESTOQUE.TSubgru.FieldByname('descricao').AsString;
               DMEXPORTA.TSubgru.FieldByName('cod_interno').AsString := DMESTOQUE.TSubgru.FieldByname('cod_interno').AsString;
               DMEXPORTA.TSubgru.FieldByName('tipo').AsString := DMESTOQUE.TSubgru.FieldByname('tipo').AsString;
               DMEXPORTA.TSubgru.post;

               DMEXPORTA.TProduto.FieldByName('APLICACAO').AsString := DMESTOQUE.TProduto.FieldByName('APLICACAO').AsString;
               DMEXPORTA.TProduto.FieldByName('COD_CST').AsString := DMEXPORTA.TCst.FieldByName('cod_cst').AsString;
               DMEXPORTA.TProduto.FieldByName('COD_GRUPOPROD').AsString := DMEXPORTA.TGrupo.FieldByName('cod_grupoprod').AsString;
               DMEXPORTA.TProduto.FieldByName('COD_INTERNO').AsString := DMESTOQUE.TProduto.FieldByName('COD_INTERNO').AsString;
               DMEXPORTA.TProduto.FieldByName('COD_LOJA').AsString := DMESTOQUE.TProduto.FieldByName('COD_LOJA').AsString;
               DMEXPORTA.TProduto.FieldByName('COD_SUBGRUPOPROD').AsString := DMEXPORTA.TSubgru.FieldByName('cod_subgrupoprod').AsString;
               DMEXPORTA.TProduto.FieldByName('COMPPRAZO').AsString := DMESTOQUE.TProduto.FieldByName('COMPPRAZO').AsString;
               DMEXPORTA.TProduto.FieldByName('COMPVISTA').AsString := DMESTOQUE.TProduto.FieldByName('COMPVISTA').AsString;
               DMEXPORTA.TProduto.FieldByName('CUSTOVENDA').AsString := DMESTOQUE.TProduto.FieldByName('CUSTOVENDA').AsString;
               DMEXPORTA.TProduto.FieldByName('DESCRICAO').AsString := DMESTOQUE.TProduto.FieldByName('DESCRICAO').AsString;
               DMEXPORTA.TProduto.FieldByName('QTDCOMP').AsString := DMESTOQUE.TProduto.FieldByName('QTDCOMP').AsString;
               DMEXPORTA.TProduto.FieldByName('QTDVEND').AsString := DMESTOQUE.TProduto.FieldByName('QTDVEND').AsString;
               DMEXPORTA.TProduto.FieldByName('VENDPRAZO').AsString := DMESTOQUE.TProduto.FieldByName('VENDPRAZO').AsString;
               DMEXPORTA.TProduto.FieldByName('VENDVISTA').AsString := DMESTOQUE.TProduto.FieldByName('VENDVISTA').AsString;
               DMEXPORTA.TProduto.post;

               // seleciona dados da tabela cst local que tenha o mesmo codigo que o subproduto
               DMESTOQUE.TCST.Close;
               DMESTOQUE.TCST.SQL.Clear;
               DMESTOQUE.TCST.SQL.Add('select * from cst where cst.cod_cst = :codigo');
               DMESTOQUE.TCST.ParamByName('codigo').AsInteger := DMESTOQUE.TSubProd.FieldByName('cod_cst').AsInteger;
               DMESTOQUE.TCST.Open;

               // seleciona no banco de fora o CST que tenha a Mesma descricao
               DMEXPORTA.TCst.Close;
               DMEXPORTA.TCst.SQL.Clear;
               DMEXPORTA.TCst.SQL.Add('select * from cst where (upper(cst.descricao) = upper(' +#39 + DMESTOQUE.TCST.FieldByname('descricao').AsString + #39 + '))');
               DMEXPORTA.TCst.Open;

               If DMEXPORTA.TCst.IsEmpty
               Then Begin
                   DMEXPORTA.TCst.Insert;
                   DMEXPORTA.TCst.FieldByName('cod_cst').AsInteger := DMEXPORTA.TCodigo.FieldByName('cod_CST').AsInteger;
                   DMEXPORTA.TCodigo.Edit;
                   DMEXPORTA.TCodigo.FieldByName('cod_cst').AsInteger := DMEXPORTA.TCodigo.FieldByName('cod_cst').AsInteger + 1;
                   DMEXPORTA.TCodigo.Post;
                End
                Else Begin
                   DMEXPORTA.TCst.Edit;
                End;

               DMEXPORTA.TCst.FieldByName('cod_sit_trib').AsString := DMESTOQUE.TCST.FieldByname('cod_sit_trib').AsString;
               DMEXPORTA.TCst.FieldByName('descricao').AsString := DMESTOQUE.TCST.FieldByname('descricao').AsString;
               DMEXPORTA.TCst.FieldByName('indiceecf').AsString := DMESTOQUE.TCST.FieldByname('indiceecf').AsString;
               DMEXPORTA.TCst.Post;

               DMEXPORTA.TSubProd.FieldByName('COD_CST').AsString := DMEXPORTA.TCst.FieldByname('cod_cst').AsString;
               DMEXPORTA.TSubProd.FieldByName('cod_produto').AsInteger := DMEXPORTA.TProduto.FieldByName('cod_produto').AsInteger;
               DMEXPORTA.TSubProd.FieldByName('ALTURA').AsString := DMESTOQUE.TSubProd.FieldByName('ALTURA').AsString;
               DMEXPORTA.TSubProd.FieldByName('ANVISA').AsString := DMESTOQUE.TSubProd.FieldByName('ANVISA').AsString;
               DMEXPORTA.TSubProd.FieldByName('ATESTGAR').AsString := DMESTOQUE.TSubProd.FieldByName('ATESTGAR').AsString;
               DMEXPORTA.TSubProd.FieldByName('ATESTVAL').AsString := DMESTOQUE.TSubProd.FieldByName('ATESTVAL').AsString;
               DMEXPORTA.TSubProd.FieldByName('ATIVO').AsString := DMESTOQUE.TSubProd.FieldByName('ATIVO').AsString;
               DMEXPORTA.TSubProd.FieldByName('BALANCA').AsString := DMESTOQUE.TSubProd.FieldByName('BALANCA').AsString;
               DMEXPORTA.TSubProd.FieldByName('CLASSIFICACAO').AsString := DMESTOQUE.TSubProd.FieldByName('CLASSIFICACAO').AsString;
               DMEXPORTA.TSubProd.FieldByName('CODBARRA').AsString := DMESTOQUE.TSubProd.FieldByName('CODBARRA').AsString;
               DMEXPORTA.TSubProd.FieldByName('CODCOMPOSTO').AsString := DMESTOQUE.TSubProd.FieldByName('CODCOMPOSTO').AsString;
               DMEXPORTA.TSubProd.FieldByName('CODEAN1').AsString := DMESTOQUE.TSubProd.FieldByName('CODEAN1').AsString;
               DMEXPORTA.TSubProd.FieldByName('CODPRODFABR').AsString := DMESTOQUE.TSubProd.FieldByName('CODPRODFABR').AsString;
               DMEXPORTA.TSubProd.FieldByName('COD_INTERNO').AsString := DMESTOQUE.TSubProd.FieldByName('COD_INTERNO').AsString;

               FiltraTabela(DMESTOQUE.TUnidade,'UNIDADE','COD_UNIDADE',DMESTOQUE.TSubProd.FieldByName('COD_UNIDCOMPRA').AsString,'');

               // procura dados na tabela unidade tanto no banco local como o de fora e insere novos dads se necessario
               DMEXPORTA.TSubProd.FieldByName('COD_UNIDCOMPRA').AsInteger := DadosUnidade;

               FiltraTabela(DMESTOQUE.TUnidade,'UNIDADE','COD_UNIDADE',DMESTOQUE.TSubProd.FieldByName('COD_UNIDVENDA').AsString,'');

               // procura dados na tabela unidade tanto no banco local como o de fora e insere novos dads se necessario
               DMEXPORTA.TSubProd.FieldByName('COD_UNIDVENDA').AsInteger := DadosUnidade;

               DMEXPORTA.TSubProd.FieldByName('COMPOSICAO').AsString := DMESTOQUE.TSubProd.FieldByName('COMPOSICAO').AsString;
               DMEXPORTA.TSubProd.FieldByName('CONTRINT').AsString := DMESTOQUE.TSubProd.FieldByName('CONTRINT').AsString;
               DMEXPORTA.TSubProd.FieldByName('COR').AsString := DMESTOQUE.TSubProd.FieldByName('COR').AsString;
               DMEXPORTA.TSubProd.FieldByName('DESCCUPOM').AsString := DMESTOQUE.TSubProd.FieldByName('DESCCUPOM').AsString;
               DMEXPORTA.TSubProd.FieldByName('DESCRICAO').AsString := DMESTOQUE.TSubProd.FieldByName('DESCRICAO').AsString;
               DMEXPORTA.TSubProd.FieldByName('DTCAD').AsString := DMESTOQUE.TSubProd.FieldByName('DTCAD').AsString;
               DMEXPORTA.TSubProd.FieldByName('EMBPROD').AsString := DMESTOQUE.TSubProd.FieldByName('EMBPROD').AsString;
               DMEXPORTA.TSubProd.FieldByName('ESPECIFICACAO').AsString := DMESTOQUE.TSubProd.FieldByName('ESPECIFICACAO').AsString;
               DMEXPORTA.TSubProd.FieldByName('FABRICANTE').AsString := DMESTOQUE.TSubProd.FieldByName('FABRICANTE').AsString;
               DMEXPORTA.TSubProd.FieldByName('GERMI').AsString := DMESTOQUE.TSubProd.FieldByName('GERMI').AsString;
               DMEXPORTA.TSubProd.FieldByName('IPIPROD').AsString := DMESTOQUE.TSubProd.FieldByName('IPIPROD').AsString;
               DMEXPORTA.TSubProd.FieldByName('LARGURA').AsString := DMESTOQUE.TSubProd.FieldByName('LARGURA').AsString;
               DMEXPORTA.TSubProd.FieldByName('LOCALESTANTE').AsString := DMESTOQUE.TSubProd.FieldByName('LOCALESTANTE').AsString;
               DMEXPORTA.TSubProd.FieldByName('LOTE').AsString := DMESTOQUE.TSubProd.FieldByName('LOTE').AsString;
               DMEXPORTA.TSubProd.FieldByName('MARCA').AsString := DMESTOQUE.TSubProd.FieldByName('MARCA').AsString;
               DMEXPORTA.TSubProd.FieldByName('MARK').AsString := DMESTOQUE.TSubProd.FieldByName('MARK').AsString;
               DMEXPORTA.TSubProd.FieldByName('MINSAUDE').AsString := DMESTOQUE.TSubProd.FieldByName('MINSAUDE').AsString;
               DMEXPORTA.TSubProd.FieldByName('MOTIVO').AsString := DMESTOQUE.TSubProd.FieldByName('MOTIVO').AsString;
               DMEXPORTA.TSubProd.FieldByName('NCM').AsString := DMESTOQUE.TSubProd.FieldByName('NCM').AsString;
               DMEXPORTA.TSubProd.FieldByName('OBSFISCAL').AsString := DMESTOQUE.TSubProd.FieldByName('OBSFISCAL').AsString;
               DMEXPORTA.TSubProd.FieldByName('PENEIRA').AsString := DMESTOQUE.TSubProd.FieldByName('PENEIRA').AsString;
               DMEXPORTA.TSubProd.FieldByName('PESOBRUTO').AsString := DMESTOQUE.TSubProd.FieldByName('PESOBRUTO').AsString;
               DMEXPORTA.TSubProd.FieldByName('PESOLIQ').AsString := DMESTOQUE.TSubProd.FieldByName('PESOLIQ').AsString;
               DMEXPORTA.TSubProd.FieldByName('PUREZA').AsString := DMESTOQUE.TSubProd.FieldByName('PUREZA').AsString;
               DMEXPORTA.TSubProd.FieldByName('QTDATC').AsString := DMESTOQUE.TSubProd.FieldByName('QTDATC').AsString;
               DMEXPORTA.TSubProd.FieldByName('QUANTGARANTIA').AsString := DMESTOQUE.TSubProd.FieldByName('QUANTGARANTIA').AsString;
               DMEXPORTA.TSubProd.FieldByName('SAFRA').AsString := DMESTOQUE.TSubProd.FieldByName('SAFRA').AsString;
               DMEXPORTA.TSubProd.FieldByName('TIPOGARANTIA').AsString := DMESTOQUE.TSubProd.FieldByName('TIPOGARANTIA').AsString;
               DMEXPORTA.TSubProd.Post;

               // ATUALIZANDO TABELA ESTOQUE
               DMEXPORTA.TEstoque.FieldByName('COD_LOJA').AsString := DMESTOQUE.TEstoque.FieldByName('COD_LOJA').AsString;
               DMEXPORTA.TEstoque.FieldByName('COD_SUBPROD').AsString := DMEXPORTA.TSubProd.FieldByname('cod_subproduto').AsString;
               DMEXPORTA.TEstoque.FieldByName('ULTCOMPRA').AsString := DMESTOQUE.TEstoque.FieldByName('ULTCOMPRA').AsString;
               DMEXPORTA.TEstoque.FieldByName('ULTVENDA').AsString := DMESTOQUE.TEstoque.FieldByName('ULTVENDA').AsString;
               DMEXPORTA.TEstoque.FieldByName('ESTMAX').AsString := DMESTOQUE.TEstoque.FieldByName('ESTMAX').AsString;
               DMEXPORTA.TEstoque.FieldByName('ESTMIN').AsString := DMESTOQUE.TEstoque.FieldByName('ESTMIN').AsString;
               DMEXPORTA.TEstoque.FieldByName('ICMS').AsString := DMESTOQUE.TEstoque.FieldByName('ICMS').AsString;
               DMEXPORTA.TEstoque.FieldByName('FRETE').AsString := DMESTOQUE.TEstoque.FieldByName('FRETE').AsString;
               DMEXPORTA.TEstoque.FieldByName('ESTFISICO').AsString := DMESTOQUE.TEstoque.FieldByName('ESTFISICO').AsString;
               DMEXPORTA.TEstoque.FieldByName('ESTRESERV').AsString := DMESTOQUE.TEstoque.FieldByName('ESTRESERV').AsString;
               DMEXPORTA.TEstoque.FieldByName('ESTPED').AsString := DMESTOQUE.TEstoque.FieldByName('ESTPED').AsString;
               DMEXPORTA.TEstoque.FieldByName('ESTSALDO').AsString := DMESTOQUE.TEstoque.FieldByName('ESTSALDO').AsString;
               DMEXPORTA.TEstoque.FieldByName('CVVPROAT').AsString := DMESTOQUE.TEstoque.FieldByName('CVVPROAT').AsString;
               DMEXPORTA.TEstoque.FieldByName('CVPPROAT').AsString := DMESTOQUE.TEstoque.FieldByName('CVPPROAT').AsString;
               DMEXPORTA.TEstoque.FieldByName('CVVPROVAR').AsString := DMESTOQUE.TEstoque.FieldByName('CVVPROVAR').AsString;
               DMEXPORTA.TEstoque.FieldByName('CVPPROVAR').AsString := DMESTOQUE.TEstoque.FieldByName('CVPPROVAR').AsString;
               DMEXPORTA.TEstoque.FieldByName('VENDATAP').AsString := DMESTOQUE.TEstoque.FieldByName('VENDATAP').AsString;
               DMEXPORTA.TEstoque.FieldByName('VENDATAV').AsString := DMESTOQUE.TEstoque.FieldByName('VENDATAV').AsString;
               DMEXPORTA.TEstoque.FieldByName('VENDVARP').AsString := DMESTOQUE.TEstoque.FieldByName('VENDVARP').AsString;
               DMEXPORTA.TEstoque.FieldByName('VENDVARV').AsString := DMESTOQUE.TEstoque.FieldByName('VENDVARV').AsString;
               DMEXPORTA.TEstoque.FieldByName('VALUNIT').AsString := DMESTOQUE.TEstoque.FieldByName('VALUNIT').AsString;
               DMEXPORTA.TEstoque.FieldByName('VALREP').AsString := DMESTOQUE.TEstoque.FieldByName('VALREP').AsString;
               DMEXPORTA.TEstoque.FieldByName('VALCUSTO').AsString := DMESTOQUE.TEstoque.FieldByName('VALCUSTO').AsString;
               DMEXPORTA.TEstoque.FieldByName('AVVPROAT').AsString := DMESTOQUE.TEstoque.FieldByName('AVVPROAT').AsString;
               DMEXPORTA.TEstoque.FieldByName('AVPPROAT').AsString := DMESTOQUE.TEstoque.FieldByName('AVPPROAT').AsString;
               DMEXPORTA.TEstoque.FieldByName('AVVPROVAR').AsString := DMESTOQUE.TEstoque.FieldByName('AVVPROVAR').AsString;
               DMEXPORTA.TEstoque.FieldByName('AVPPROVAR').AsString := DMESTOQUE.TEstoque.FieldByName('AVPPROVAR').AsString;
               DMEXPORTA.TEstoque.FieldByName('LUCRATIVIDADE').AsString := DMESTOQUE.TEstoque.FieldByName('LUCRATIVIDADE').AsString;
               DMEXPORTA.TEstoque.FieldByName('COEFDIV').AsString := DMESTOQUE.TEstoque.FieldByName('COEFDIV').AsString;
               DMEXPORTA.TEstoque.FieldByName('VALOREST').AsString := DMESTOQUE.TEstoque.FieldByName('VALOREST').AsString;
               DMEXPORTA.TEstoque.FieldByName('OUTROS').AsString := DMESTOQUE.TEstoque.FieldByName('OUTROS').AsString;
               DMEXPORTA.TEstoque.FieldByName('QUANT2').AsString := DMESTOQUE.TEstoque.FieldByName('QUANT2').AsString;
               DMEXPORTA.TEstoque.FieldByName('DTCAD').AsString := DMESTOQUE.TEstoque.FieldByName('DTCAD').AsString;
               DMEXPORTA.TEstoque.FieldByName('ESTINI').AsString := DMESTOQUE.TEstoque.FieldByName('ESTINI').AsString;
               DMEXPORTA.TEstoque.FieldByName('VALCUSDESP').AsString := DMESTOQUE.TEstoque.FieldByName('VALCUSDESP').AsString;
               DMEXPORTA.TEstoque.FieldByName('ESTANTCONT').AsString := DMESTOQUE.TEstoque.FieldByName('ESTANTCONT').AsString;
               DMEXPORTA.TEstoque.FieldByName('CONTAGEM').AsString := DMESTOQUE.TEstoque.FieldByName('CONTAGEM').AsString;
               DMEXPORTA.TEstoque.FieldByName('ESTSIMULADO').AsString := DMESTOQUE.TEstoque.FieldByName('ESTSIMULADO').AsString;
               DMEXPORTA.TEstoque.FieldByName('VLRUNITCOMP').AsString := DMESTOQUE.TEstoque.FieldByName('VLRUNITCOMP').AsString;
               DMEXPORTA.TEstoque.FieldByName('INDICE').AsString := DMESTOQUE.TEstoque.FieldByName('INDICE').AsString;
               DMEXPORTA.TEstoque.FieldByName('BONIFICACAO').AsString := DMESTOQUE.TEstoque.FieldByName('BONIFICACAO').AsString;
               DMEXPORTA.TEstoque.FieldByName('VLRBONIFIC').AsString := DMESTOQUE.TEstoque.FieldByName('VLRBONIFIC').AsString;
               DMEXPORTA.TEstoque.FieldByName('DESCONTO').AsString := DMESTOQUE.TEstoque.FieldByName('DESCONTO').AsString;
               DMEXPORTA.TEstoque.FieldByName('CLNC').AsString := DMESTOQUE.TEstoque.FieldByName('CLNC').AsString;
               DMEXPORTA.TEstoque.FieldByName('MOD').AsString := DMESTOQUE.TEstoque.FieldByName('MOD').AsString;
               DMEXPORTA.TEstoque.FieldByName('IMPEXP').AsString := DMESTOQUE.TEstoque.FieldByName('IMPEXP').AsString;
               DMEXPORTA.TEstoque.FieldByName('IMPREND').AsString := DMESTOQUE.TEstoque.FieldByName('IMPREND').AsString;
               DMEXPORTA.TEstoque.FieldByName('CONTSOC').AsString := DMESTOQUE.TEstoque.FieldByName('CONTSOC').AsString;
               DMEXPORTA.TEstoque.FieldByName('COFINS').AsString := DMESTOQUE.TEstoque.FieldByName('COFINS').AsString;
               DMEXPORTA.TEstoque.FieldByName('PIS').AsString := DMESTOQUE.TEstoque.FieldByName('PIS').AsString;
               DMEXPORTA.TEstoque.FieldByName('MARGEMSEG').AsString := DMESTOQUE.TEstoque.FieldByName('MARGEMSEG').AsString;
               DMEXPORTA.TEstoque.FieldByName('PERCMARGSEG').AsString := DMESTOQUE.TEstoque.FieldByName('PERCMARGSEg').AsString;
               DMEXPORTA.TEstoque.FieldByName('REDUCBASE').AsString := DMESTOQUE.TEstoque.FieldByName('REDUCBASE').AsString;
               DMEXPORTA.TEstoque.FieldByName('VLRCOMPSD').AsString := DMESTOQUE.TEstoque.FieldByName('VLRCOMPSD').AsString;
               DMEXPORTA.TEstoque.FieldByName('ACRECIMO').AsString := DMESTOQUE.TEstoque.FieldByName('ACRECIMO').AsString;
               DMEXPORTA.TEstoque.FieldByName('ESTCALC').AsString := DMESTOQUE.TEstoque.FieldByName('ESTCALC').AsString;
               DMEXPORTA.TEstoque.FieldByName('DATAATU').AsString := DMESTOQUE.TEstoque.FieldByName('DATAATU').AsString;
               DMEXPORTA.TEstoque.FieldByName('HORAATU').AsString := DMESTOQUE.TEstoque.FieldByName('HORAATU').AsString;
               DMEXPORTA.TEstoque.FieldByName('PRECOOFERTA').AsString := DMESTOQUE.TEstoque.FieldByName('PRECOOFERTA').AsString;
               DMEXPORTA.TEstoque.FieldByName('DATAOFERTA').AsString := DMESTOQUE.TEstoque.FieldByName('DATAOFERTA').AsString;
               DMEXPORTA.TEstoque.FieldByName('VENCIMENTOOFERTA').AsString := DMESTOQUE.TEstoque.FieldByName('VENCIMENTOOFERTA').AsString;
               DMEXPORTA.TEstoque.Post;

               // CODIGO DE ESTOQUE PARA ITENS DE PRODUTO DA ORDEM
               DMEXPORTA.TItensProd.Insert;
               DMEXPORTA.TItensProd.FieldByName('ALIQICMS').AsString := DMServ.TPOrd.FieldByName('ALIQICMS').AsString;
               DMEXPORTA.TItensProd.FieldByName('ALIQIPI').AsString := DMServ.TPOrd.FieldByName('ALIQIPI').AsString;
               DMEXPORTA.TItensProd.FieldByName('BASEICMS').AsString := DMServ.TPOrd.FieldByName('BASEICMS').AsString;
               DMEXPORTA.TItensProd.FieldByName('BASEICMSSUBS').AsString := DMServ.TPOrd.FieldByName('BASEICMSSUBS').AsString;
               DMEXPORTA.TItensProd.FieldByName('COD_ESTOQUE').AsString := DMEXPORTA.TEstoque.FieldByName('COD_ESTOQUE').AsString;
               DMEXPORTA.TItensProd.FieldByName('COD_FUNCIONARIO').AsInteger := VerificaFuncionario('FUNCIONARIO','');
               DMEXPORTA.TItensProd.FieldByName('COD_ITPRODORD').AsString := DMEXPORTA.TCodigo.FieldByName('COD_ITPRODORD').AsString;
               DMEXPORTA.TItensProd.FieldByName('COD_ORDEM').AsString := DMEXPORTA.TOrd.FieldByName('cod_ordem').AsString;
               DMEXPORTA.TItensProd.FieldByName('COEFDIV').AsString := DMServ.TPOrd.FieldByName('COEFDIV').AsString;
               DMEXPORTA.TItensProd.FieldByName('COMISSAO').AsString := DMServ.TPOrd.FieldByName('COMISSAO').AsString;
               DMEXPORTA.TItensProd.FieldByName('DATA').AsString := DMServ.TPOrd.FieldByName('DATA').AsString;
               DMEXPORTA.TItensProd.FieldByName('DESCONTO').AsString := DMServ.TPOrd.FieldByName('DESCONTO').AsString;
               DMEXPORTA.TItensProd.FieldByName('DATA_GARANTIA').AsString := DMServ.TPOrd.FieldByName('DATA_GARANTIA').AsString;
               DMEXPORTA.TItensProd.FieldByName('KMGARANTIA').AsString := DMServ.TPOrd.FieldByName('KMGARANTIA').AsString;
               DMEXPORTA.TItensProd.FieldByName('LUCMOE').AsString := DMServ.TPOrd.FieldByName('LUCMOE').AsString;
               DMEXPORTA.TItensProd.FieldByName('LUCPER').AsString := DMServ.TPOrd.FieldByName('LUCPER').AsString;
               DMEXPORTA.TItensProd.FieldByName('LUCREL').AsString := DMServ.TPOrd.FieldByName('LUCREL').AsString;
               DMEXPORTA.TItensProd.FieldByName('NUMREQ').AsString := DMServ.TPOrd.FieldByName('NUMREQ').AsString;
               DMEXPORTA.TItensProd.FieldByName('OPERACAO').AsString := DMServ.TPOrd.FieldByName('OPERACAO').AsString;
               DMEXPORTA.TItensProd.FieldByName('QTD').AsString := DMServ.TPOrd.FieldByName('QTD').AsString;
               DMEXPORTA.TItensProd.FieldByName('QTDRET').AsString := DMServ.TPOrd.FieldByName('QTDRET').AsString;
               DMEXPORTA.TItensProd.FieldByName('REDUCBASEICMS').AsString := DMServ.TPOrd.FieldByName('REDUCBASEICMS').AsString;
               DMEXPORTA.TItensProd.FieldByName('TOTAL').AsString := DMServ.TPOrd.FieldByName('TOTAL').AsString;
               DMEXPORTA.TItensProd.FieldByName('VALCOMP').AsString := DMServ.TPOrd.FieldByName('VALCOMP').AsString;
               DMEXPORTA.TItensProd.FieldByName('VALCUSTO').AsString := DMServ.TPOrd.FieldByName('VALCUSTO').AsString;
               DMEXPORTA.TItensProd.FieldByName('VALREP').AsString := DMServ.TPOrd.FieldByName('VALREP').AsString;
               DMEXPORTA.TItensProd.FieldByName('VLRICMS').AsString := DMServ.TPOrd.FieldByName('VLRICMS').AsString;
               DMEXPORTA.TItensProd.FieldByName('VLRICMSSUBS').AsString := DMServ.TPOrd.FieldByName('VLRICMSSUBS').AsString;
               DMEXPORTA.TItensProd.FieldByName('VLRIPI').AsString := DMServ.TPOrd.FieldByName('VLRIPI').AsString;
               DMEXPORTA.TItensProd.FieldByName('VLRUNIT').AsString := DMServ.TPOrd.FieldByName('VLRUNIT').AsString;
               DMEXPORTA.TItensProd.FieldByName('VLRVENDBD').AsString := DMServ.TPOrd.FieldByName('VLRVENDBD').AsString;
               DMEXPORTA.TItensProd.Post;

               // ATUALIZANDO O BANCO DE FORA
               DMEXPORTA.TCodigo.Edit;
               DMEXPORTA.TCodigo.FieldByName('COD_ITPRODORD').AsInteger := DMEXPORTA.TCodigo.FieldByName('COD_ITPRODORD').AsInteger + 1;
               DMEXPORTA.TCodigo.Post;

               // posição do progressBar
               XContador := XContador + 1;
               PBExport.Position := XContador;

           // proximo ptoduto da ordem
           DMServ.TPOrd.Next;
           End;

           // selecionando todas as despesas (ou servico) da ordem QUE TENHAM O MESMO CODIGO E MESMO TIPO DE GERADOR, NO CASO "ORDEM"
           DMESTOQUE.TDesp.Close;
           DMESTOQUE.TDesp.SQL.Clear;
           DMESTOQUE.TDesp.SQL.Add('select * from DESPADIC where (DESPADIC.COD_GERADOR = :CODGERA)');
           DMESTOQUE.TDesp.SQL.Add('AND (DESPADIC.GERADOR = :GERADOR)');
           DMESTOQUE.TDesp.ParamByName('CODGERA').AsInteger := DMServ.TOrd.FieldByname('cod_ordem').AsInteger;
           DMESTOQUE.TDesp.ParamByName('GERADOR').AsString := 'ORDEM';
           DMESTOQUE.TDesp.Open;

           // PRIMEIRA DESPESA DA ORDEM
           DMESTOQUE.TDesp.First;

           // APENAS PARA ABRIR DATASET
           DMEXPORTA.TDesp.Close;
           DMEXPORTA.TDesp.SQL.Clear;
           DMEXPORTA.TDesp.SQL.Add('SELECT * FROM DESPADIC');
           DMEXPORTA.TDesp.Open;

           While Not DMESTOQUE.TDesp.Eof do
           Begin

               DMEXPORTA.TDesp.Insert;
               DMEXPORTA.TDesp.FieldByName('COD_DESPADIC').AsInteger := DMEXPORTA.TCodigo.FieldByName('COD_DESPADIC').AsInteger;
               DMEXPORTA.TDesp.FieldByName('COD_GERADOR').AsInteger := DMEXPORTA.TOrd.FieldByName('cod_ordem').AsInteger;
               DMEXPORTA.TDesp.FieldByName('GERADOR').AsString := 'ORDEM';
               DMEXPORTA.TDesp.FieldByName('DESPESA').AsString := DMESTOQUE.TDesp.FieldByname('DESPESA').AsString;
               DMEXPORTA.TDesp.FieldByName('QTD').AsCurrency := DMESTOQUE.TDesp.FieldByname('QTD').AsCurrency;
               DMEXPORTA.TDesp.FieldByName('VLRREAL').AsCurrency := DMESTOQUE.TDesp.FieldByname('VLRREAL').AsCurrency;
               DMEXPORTA.TDesp.FieldByName('VLRFINAL').AsCurrency := DMESTOQUE.TDesp.FieldByname('VLRFINAL').AsCurrency;
               DMEXPORTA.TDesp.FieldByName('LUCMOE').AsCurrency := DMESTOQUE.TDesp.FieldByname('LUCMOE').AsCurrency;
               DMEXPORTA.TDesp.FieldByName('LUCPER').AsCurrency := DMESTOQUE.TDesp.FieldByname('LUCPER').AsCurrency;
               DMEXPORTA.TDesp.FieldByName('VLRTOTFIN').AsCurrency := DMESTOQUE.TDesp.FieldByname('VLRTOTFIN').AsCurrency;
               DMEXPORTA.TDesp.FieldByName('DESCONTO').AsCurrency := DMESTOQUE.TDesp.FieldByname('DESCONTO').AsCurrency;
               DMEXPORTA.TDesp.FieldByName('MARCA').AsString := DMESTOQUE.TDesp.FieldByname('MARCA').AsString;
               DMEXPORTA.TDesp.FieldByName('UNIDADE').AsString := DMESTOQUE.TDesp.FieldByname('UNIDADE').AsString;

               // BUSCA NO BANCO LOCAL OS DADOS DA TABELA EQUIPE QUE ESTA SENDO USADA NA ORDEM ATUAL
               FiltraTabela(DMPESSOA.TEquipe,'EQUIPE','COD_EQUIPE',DMESTOQUE.TDesp.FieldByname('COD_EQUIPE').AsString,'');

               // VERIFICA SE NO BANCO DE FORA TEM A EQUIPE CADASTRADA JUNTO COM SEU RESPONSAVEL E FUNCIONARIOS
               DMEXPORTA.TDesp.FieldByName('COD_EQUIPE').AsInteger := VerificaEquipe(DMESTOQUE.TDesp.FieldByname('COD_EQUIPE').AsString,DMPESSOA.TEquipe.FieldByname('COD_RESPONSAVEL').AsString);

               // ESSE CAMPO EH O FUNCIONARIO QUE ATRIBUIU O SERVICO NA ORDEM
               DMEXPORTA.TDesp.FieldByName('COD_FUNCIONARIO').AsInteger := VerificaFuncionario('RESPONSAVEL',DMESTOQUE.TDesp.FieldByName('COD_FUNCIONARIO').AsString);
               DMEXPORTA.TDesp.Post;

               // ATUALIZANDO O BANCO DE FORA NA TABELA CODIGO
               DMEXPORTA.TCodigo.Edit;
               DMEXPORTA.TCodigo.FieldByName('COD_DESPADIC').AsInteger := DMEXPORTA.TCodigo.FieldByName('COD_DESPADIC').AsInteger + 1;
               DMEXPORTA.TCodigo.Post;

               // posição do progressBar
               XContador := XContador + 1;
               PBExport.Position := XContador;

           // proxima despesa
           DMESTOQUE.TDesp.Next;
           End;

           // atualizando o banco de fora
           DMEXPORTA.IBTExporta.CommitRetaining;

       // proxima ordem
       DMServ.TOrd.Next;
       End;

       // OCULTANDO BARRA DE PROGRESSAO
       PExp.Visible := FALSE;
       PExp.SendToBack;

       // atualizando o banco local para não permitir exportar mais as ordens recem exportadas
       DMServ.TOrd.Close;
       DMServ.TOrd.SQL.Clear;
       DMServ.TOrd.SQL.Add('update ordem set ordem.exportado = ' + #39 + '#' + #39);
       DMServ.TOrd.SQL.Add(', ordem.edit = ' + #39 + '' + #39);
       DMServ.TOrd.SQL.Add('where ordem.exp = ' + #39 + 'X' + #39);
       DMServ.TOrd.ExecSQL;

       // removendo o marcador das ordens que foram selecionadas para exportar
       DMServ.TOrd.Close;
       DMServ.TOrd.SQL.Clear;
       DMServ.TOrd.SQL.Add('update ordem set ordem.exp = ' + #39 + '' + #39);
       DMServ.TOrd.SQL.Add('where ordem.exportado = ' + #39 + '#' + #39);
       DMServ.TOrd.ExecSQL;

       // atualizando o banco local
       DMServ.IBT.CommitRetaining;

       // VOLTA PARA O ACTIVATE PARA ATUALIZAR A GRID
       FormActivate(Self);
       Mensagem('INFROMAÇÃO','ORDEM EXPORTADA!.','',1,1,false,'i');
   End
   Else Begin
       Mensagem('   A T E N Ç Ã O   ','Problemas na conexão do banco de dados.','',1,1,false,'A');
       Exit;
   End;
end;

procedure TFOrdem.ExportarClick(Sender: TObject);
begin
  inherited;
   // SELECIONANDO AS ORDENS QUE AINDA ESTAO ABERTAS E FORAM SELECIONADAS E QUE AINDA NAO FORAM EXPORTADAS
   DMServ.Alx.Close;
   DMServ.Alx.SQL.Clear;
   DMServ.Alx.SQL.Add('select count(ordem.cod_ordem) as TOTAL from ordem where (ordem.exp = ' + #39 + 'X' + #39+ ')');
   DMServ.Alx.SQL.Add('and (ordem.status = ' + #39 + 'ABERTO' + #39 + ') and ((ordem.exportado = ' + #39 + '' + #39 +') or (ordem.exportado is null)) and (ordem.exp = ' + #39 + 'X' + #39 + ')');
   DMServ.Alx.Open;

   // VERIFICA SE EXISTE NO MINIMO UMA ORDEM FILTRADA
   If DMServ.Alx.FieldByName('TOTAL').AsInteger > 0
   Then begin
       If DMServ.Alx.FieldByName('TOTAL').AsInteger = 1
       Then Begin

           // COMO VAI SER UMA UNICA ORDEM A SER EXPORTADA, EH FEITO ESSA SQL PARA BUSCAR O "NUMERO" QUE SERA EXIBIDO NA MENSAGEM
           DMServ.TOrd.Close;
           DMServ.TOrd.SQL.Clear;
           DMServ.TOrd.SQL.Add('select * from ordem where (ordem.exp = ' + #39 + 'X' + #39+ ')');
           DMServ.TOrd.Open;

           If Mensagem('Exportação de Ordem de Serviço','Deseja realmente exporta a Ordem de Serviço nº' + DMServ.TOrd.FieldByname('NUMERO').AsString + ' ?','',2,3,false,'I') = 2
           Then Begin
               // exporta as ordens de servico selecionadas para outro banco, gerando novas ordens com os mesmos produtos, servicos, funcionario, equipe, etc
               Exporta_OrdensServico;
           End
           Else Begin
               Exit;
           End;
       End
       Else Begin
           If Mensagem('Exportação de Ordem de Serviço','Deseja realmente exportar as ' + DMServ.Alx.FieldByName('TOTAL').AsString + ' Ordens de Serviço selecionadas ?','',2,2,false,'I') = 2
           Then Begin
               // exporta as ordens de servico selecionadas para outro banco, gerando novas ordens com os mesmos produtos, servicos, funcionario, equipe, etc
               Exporta_OrdensServico;
           End
           Else Begin
               Exit;
           End;
       End;
   End
   Else Begin
       Mensagem('   A T E N Ç Ã O   ','Não há Ordem de Serviço aberta para exportação','',1,1,false,'A');
   End;
end;

// VERIFICA SE NO BANCO DE FORA TEM A EQUIPE CADASTRADA JUNTO COM SEU RESPONSAVEL E FUNCIONARIO
function TFOrdem.VerificaEquipe(Cod_equipe: string; Cod_responsavel: string): integer;
begin
   // BUSCANDO TODOS OS DADOS DA TABELA EQUIPE DO BANCO LOCAL
   FiltraTabela(DMPESSOA.TEquipe,'EQUIPE','COD_EQUIPE',Cod_equipe,'');

   // verifica se no banco de fora jah existe a equipe cadastrada com nome, responsavel e funcionarios
   DMEXPORTA.TEquipe.Close;
   DMEXPORTA.TEquipe.SQL.Clear;
   DMEXPORTA.TEquipe.SQL.Add('select * from equipe where upper(equipe.descricao) = upper(' + #39 + DMPESSOA.TEquipe.FieldByname('descricao').AsString + #39 +  ')');
   DMEXPORTA.TEquipe.Open;

   If DMEXPORTA.TEquipe.IsEmpty
   Then Begin
       DMEXPORTA.TEquipe.Insert;
       DMEXPORTA.TEquipe.FieldByName('COD_EQUIPE').AsInteger := DMEXPORTA.TCodigo.FieldByname('COD_EQUIPE').AsInteger;

       DMEXPORTA.TCodigo.Edit;
       DMEXPORTA.TCodigo.FieldByName('COD_EQUIPE').AsInteger := DMEXPORTA.TCodigo.FieldByName('COD_EQUIPE').AsInteger + 1;
       DMEXPORTA.TCodigo.Post;

   End
   Else Begin
       // ATUALIZANDO TABELA EQUIPE
       DMEXPORTA.TEquipe.Edit;
   End;

   DMEXPORTA.TEquipe.FieldByName('DESCRICAO').AsString := DMPESSOA.TEquipe.FieldByname('DESCRICAO').AsString;
   DMEXPORTA.TEquipe.FieldByName('COD_RESPONSAVEL').AsInteger := VerificaFuncionario('RESPONSAVEL',Cod_responsavel);
   DMEXPORTA.TEquipe.FieldByName('OBSERVACAO').AsString := DMPESSOA.TEquipe.FieldByname('OBSERVACAO').AsString;
   DMEXPORTA.TEquipe.Post;

   // deletando os dados da tabela funequipe do banco de fora e inserindo todos os funcionarios novamente, pois a tabela soh contem codigos e por isso eh mais melhor deletar td e inserir de novo
   DMEXPORTA.TFunEquipe.Close;
   DMEXPORTA.TFunEquipe.SQL.Clear;
   DMEXPORTA.TFunEquipe.SQL.Add('delete from funequipe where funequipe.cod_equipe = :codigo');
   DMEXPORTA.TFunEquipe.ParamByName('codigo').AsInteger := DMEXPORTA.TEquipe.FieldByName('COD_EQUIPE').AsInteger;
   DMEXPORTA.TFunEquipe.ExecSQL;

   // BUSCANDO TODOS OS FUNCIONARIOS DO BANCO LOCAL RELACIONADOS A EQUIPE ATUAL
   DMPESSOA.TFunEquipe.Close;
   DMPESSOA.TFunEquipe.SQL.Clear;
   DMPESSOA.TFunEquipe.SQL.Add('SELECT * FROM FUNEQUIPE WHERE FUNEQUIPE.COD_EQUIPE = :CODIGO');
   DMPESSOA.TFunEquipe.ParamByName('CODIGO').AsInteger := StrToInt(Cod_equipe);
   DMPESSOA.TFunEquipe.Open;

   DMPESSOA.TFunEquipe.First;

   While Not DMPESSOA.TFunEquipe.Eof do
   Begin
       // BUSCA FUNCIOANRIO PARA SELECIONAR DADOS DA TABELA PESSOA
       FiltraTabela(DMPESSOA.TFuncionario,'FUNCIONARIO','COD_FUNC',DMPESSOA.TFunEquipe.FieldByName('COD_FUNCIONARIO').AsString,'');

       // FILTRANDO PESSOA RELACIONADO AO FUNCIONARIO
       FiltraTabela(DMPESSOA.TPessoa,'PESSOA','COD_PESSOA',DMPESSOA.TFuncionario.FieldByname('cod_pessoa').AsString,'');

       // busca no banco de fora a pessoa com o mesmo CPF
       DMEXPORTA.TPessoa.Close;
       DMEXPORTA.TPessoa.SQL.Clear;
       DMEXPORTA.TPessoa.SQL.Add('select * from pessoa where pessoa.cpfcnpj = :CPF');
       DMEXPORTA.TPessoa.ParamByName('CPF').AsString := DMPESSOA.TPessoa.FieldByName('cpfcnpj').AsString;
       DMEXPORTA.TPessoa.Open;

       // COMO NÃO EXISTE A EQUIPE, TAMBEM NÃO ESTÃO RELACIONADOS OS FUNCIONARIOS Á NENHUMA EQUIPE, POR ISSO JÁ ESTA ATRIBUINDO OS FUNCIONARIOS A NOVA EQUIPE
       DMEXPORTA.TFunEquipe.Close;
       DMEXPORTA.TFunEquipe.SQL.Clear;
       DMEXPORTA.TFunEquipe.SQL.Add('SELECT * FROM FUNEQUIPE');
       DMEXPORTA.TFunEquipe.Open;

       DMEXPORTA.TFunEquipe.Insert;

       // se no banco de fora nao existe o funcinario, o mesmo jah eh cadastrado
       If DMEXPORTA.TPessoa.IsEmpty
       Then Begin
           // função para cadastrar funcionario
           CadastroFuncionario;

           // SE FOR INSERIR, ATRIBUI-SE O CODIGO DO NOVO FUNCIOANRIO CADASTRADO
           DMEXPORTA.TFunEquipe.FieldByName('COD_FUNCIONARIO').AsInteger := DMEXPORTA.TFuncionario.FieldByName('COD_FUNC').AsInteger;
       End
       Else Begin
           // se o funcionario jah esta cadastrado, eh buscado seu codigo e é atribuido na equipe
           DMEXPORTA.TFunEquipe.FieldByName('COD_FUNCIONARIO').AsInteger := DMEXPORTA.TFuncionario.FieldByname('COD_FUNC').AsInteger;
       End;

       DMEXPORTA.TFunEquipe.FieldByName('COD_FUNEQUIPE').AsInteger := DMEXPORTA.TCodigo.FieldByname('COD_FUNEQUIPE').AsInteger;
       DMEXPORTA.TFunEquipe.FieldByName('COD_EQUIPE').AsInteger := DMEXPORTA.TEquipe.FieldByName('COD_EQUIPE').AsInteger;
       DMEXPORTA.TFunEquipe.Post;

       // auto incremento
       DMEXPORTA.TCodigo.Edit;
       DMEXPORTA.TCodigo.FieldByName('COD_FUNEQUIPE').AsInteger := DMEXPORTA.TCodigo.FieldByName('COD_FUNEQUIPE').AsInteger + 1;
       DMEXPORTA.TCodigo.Post;

   // proximo funcionario atrelado a equipe no banco de fora
   DMPESSOA.TFunEquipe.Next;
   End;   

   // retornando o codigo da equipe, seja ela nova ou jah existente no banco de fora
   Result := DMEXPORTA.TEquipe.FieldByName('COD_EQUIPE').AsInteger;

   DMEXPORTA.IBTExporta.CommitRetaining;

end;

// VERIFICA SE NO BANCO DE FORA ESTAH CADASTRADO O EQUIPAMENTO DA ORDEM, SE NAO TIVER JAH CADASTRA
function TFOrdem.VerificaEquipamento(Cod_equipamento: string): integer;
begin
   // BUSCANDO NO BANCO LOCAL, OS DADOS DO EQUIPAMENTO
   FiltraTabela(DMPESSOA.TEquip,'EQUIPAMENTO','COD_EQUIPAMENTO',Cod_equipamento,'');

   // verifica se no banco de fora existe o mesmo equipamento
   DMEXPORTA.TEquip.Close;
   DMEXPORTA.TEquip.SQL.Clear;
   DMEXPORTA.TEquip.SQL.Add('SELECT * FROM EQUIPAMENTO WHERE UPPER(EQUIPAMENTO.DESCRICAO) = UPPER(' + #39 + DMPESSOA.TEquip.FieldByName('descricao').AsString + #39 + ')');
   DMEXPORTA.TEquip.Open;

   If DMEXPORTA.TEquip.IsEmpty
   Then Begin
       DMEXPORTA.TEquip.Insert;
       DMEXPORTA.TEquip.FieldByName('COD_EQUIPAMENTO').AsInteger := DMEXPORTA.TCodigo.FieldByname('COD_EQUIPAMENTO').AsInteger;

       // ATUALIZANDO A TABELA CODIGO DO BANCO DE FORA
       DMEXPORTA.TCodigo.Edit;
       DMEXPORTA.TCodigo.FieldByName('COD_EQUIPAMENTO').AsInteger := DMEXPORTA.TCodigo.FieldByName('COD_EQUIPAMENTO').AsInteger + 1;
       DMEXPORTA.TCodigo.Post;

   End
   Else Begin
       // editando os dados de equipamento
       DMEXPORTA.TEquip.Edit;
   End;

   DMEXPORTA.TEquip.FieldByName('DESCRICAO').AsString := DMPESSOA.TEquip.FieldByName('DESCRICAO').AsString;
   DMEXPORTA.TEquip.FieldByName('MARCA').AsString := DMPESSOA.TEquip.FieldByName('MARCA').AsString;
   DMEXPORTA.TEquip.FieldByName('MODELO').AsString := DMPESSOA.TEquip.FieldByName('MODELO').AsString;
   DMEXPORTA.TEquip.FieldByName('ANO').AsString := DMPESSOA.TEquip.FieldByName('ANO').AsString;
   DMEXPORTA.TEquip.FieldByName('COR').AsString := DMPESSOA.TEquip.FieldByName('COR').AsString;
   DMEXPORTA.TEquip.FieldByName('CHASSI').AsString := DMPESSOA.TEquip.FieldByName('CHASSI').AsString;
   DMEXPORTA.TEquip.FieldByName('PLACA').AsString := DMPESSOA.TEquip.FieldByName('PLACA').AsString;
   DMEXPORTA.TEquip.FieldByName('DTAQUISICAO').AsString := DMPESSOA.TEquip.FieldByName('DTAQUISICAO').AsString;
   DMEXPORTA.TEquip.FieldByName('CONCESSIONARIA').AsString := DMPESSOA.TEquip.FieldByName('CONCESSIONARIA').AsString;
   DMEXPORTA.TEquip.FieldByName('MOTOR').AsString := DMPESSOA.TEquip.FieldByName('MOTOR').AsString;
   DMEXPORTA.TEquip.FieldByName('ANOMOTOR').AsString := DMPESSOA.TEquip.FieldByName('ANOMOTOR').AsString;
   DMEXPORTA.TEquip.FieldByName('CHASSIMOTOR').AsString := DMPESSOA.TEquip.FieldByName('CHASSIMOTOR').AsString;
   DMEXPORTA.TEquip.FieldByName('KMATUAL').AsInteger := DMPESSOA.TEquip.FieldByName('KMATUAL').AsInteger;
   DMEXPORTA.TEquip.FieldByName('UNIDRODAGEM').AsString := DMPESSOA.TEquip.FieldByName('UNIDRODAGEM').AsString;
   DMEXPORTA.TEquip.FieldByName('NUM_FROTA').AsString := DMPESSOA.TEquip.FieldByName('NUM_FROTA').AsString;
   DMEXPORTA.TEquip.FieldByName('ALTURAMAX').AsString := DMPESSOA.TEquip.FieldByName('ALTURAMAX').AsString;
   DMEXPORTA.TEquip.FieldByName('PESOMAX').AsString := DMPESSOA.TEquip.FieldByName('PESOMAX').AsString;
   DMEXPORTA.TEquip.Post;

   DMEXPORTA.IBTExporta.CommitRetaining;

   Result := DMEXPORTA.TEquip.FieldByName('cod_equipamento').AsInteger;

end;

// procedimento para ordenar as ordens de servico em abertar e por box
procedure TFOrdem.OrdenacaoOS;
begin
   XSQLVIEW:= 'VWORDEM';
   XLiberaDados:=' WHERE COD_LOJA='+FMenu.LCODLOJA.Caption+'ORDER BY BOX DESC, STATUS';
   CBFILTRO.Text:='ABERTAS';
   CBORDEM.Text := 'BOX';
   CBORDEMExit(Self);
   LiberaDados;
end;

procedure TFOrdem.CBPagamentoExit(Sender: TObject);
begin
  inherited;
   // se o pagamento for cartão abre as contas correntes
   If CBPagamento.Text = 'Cartão'
   Then Begin
       FiltraTabela(DMBANCO.WCtaCor, 'vwctacor', '', '', '');
       PBanco.Visible := true;
       PBanco.BringToFront;
       DBGCTA.SetFocus;
   End;

end;

procedure TFOrdem.DBGCTAKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
   // se pressionado ENTER
	If Key=VK_Return
   Then Begin
   	If Not DMBANCO.WCtaCor.IsEmpty Then//'se banco não estiver vazio
       	XCOD_CONTABANCO:=DMBANCO.WCtaCor.FieldByName('COD_CTACOR').AsInteger
       Else
           XCOD_CONTABANCO:=-1;

       PBanco.Visible:=False;
       PBanco.SendToBack;
       FrmConta.EDCodigo.SetFocus;
   End;

   // se rpessinado ESC
   If Key = VK_ESCAPE
   Then Begin
       PBanco.Visible := false;
       PBanco.SendToBack;
   End;

end;

procedure TFOrdem.BtnFiltrarClick(Sender: TObject);
begin
  inherited;
  	If XView.FieldByName('status').AsString='ABERTO'
   Then Begin
		Mensagem('OPÇÃO BLOQUEADA', 'É necessário que o pedido esteja fechado antes da impressão fiscal. Antes de fechar recomendamos que confira todas as informações do pedido.', '', 1, 1, False, 'a');
		Exit;
   End;

   // faz as verificações da nota fiscal e arquivo de relatorio
   If AnaliseDados('OS', DMServ.WOrdem.FieldByName('COD_ORDEM').AsInteger) = false Then
       Exit;

  	If FiltraTabela(DMServ.TOrd, 'ordem', 'COD_ordem', XView.FieldByName('COD_ORDEM').AsString, '')=True
   Then Begin
       If (DMServ.TOrd.FieldByName('FISCO').AsString<>'ECF') AND (DMServ.TOrd.FieldByName('FISCO').AsString<>'NF')
       Then Begin
			If Mensagem('A T E N Ç Ã O', 'Deseja realmente Imprimir Documento Fiscal para o pedido'+#13+'Nº '+XView.FieldByName('NUMERO').AsString+'?'  , '', 2, 3, False, 'c')= 2
   		Then Begin
           	FiltraTabela(DMCAIXA.TCaixa, 'CAIXA', 'COD_CAIXA', FMenu.LCODCAIXA.Caption, '');
	           	If DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString='ECF'
               Then Begin
   			{	//Imprime Cupom Fiscal
   				If ECF(XView.FieldByName('COD_ORDEM').AsInteger, 'ORDEM')=True
               	Then Begin
       				//REGISTRA COMANDO DO USUARIO
       				Registra('PEDIDO VENDA', 'ECF', XView.FieldByName('DTPEDVEN').AsString, 'Nº '+XView.FieldByName('NUMPED').AsString, 'Valor: '+XView.FieldByName('VALOR').AsString);
               	End;}
               End;
           	FiltraTabela(DMCAIXA.TCaixa, 'CAIXA', 'COD_CAIXA', FMenu.LCODCAIXA.Caption, '');
           	If DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString='NF'
               Then Begin
               	//Atualiza o Valor da NF
                   FiltraTabela(DMMACS.TEmpresa, 'EMPRESA', 'COD_EMPRESA', FMenu.LCODEMPRESA.Caption, '');
                   //VERIFICA SE JÁ EXISTE ALGUM DOCUMENTO IMPRESSO COM O MESMO NUMERO DE NOTA
                   DMMACS.TALX.Close;
                   DMMACS.TALX.SQL.Clear;
                   DMMACS.TALX.SQL.Add('  select * from docfisord ');
                   DMMACS.TALX.SQL.Add('   where docfisord.numdocfis=:CODIGO ');
                   DMMACS.TALX.ParamByName('CODIGO').AsString:=DMMACS.TEmpresa.FieldByName('PROX_NF').AsString;
                   DMMACS.TALX.Open;
                   If Not DMMACS.TALX.IsEmpty
                   Then Begin
                       MessageDlg('Este Nº de Documento já foi impresso!!!', mtWarning, [mbOK], 0);
                       Exit;
                   End;
                   //VERIFICA C JAH EXISTE DOCUMENTO IMPRESSO EM COMPRAS
                   DMMACS.TALX.Close;
                   DMMACS.TALX.SQL.Clear;
                   DMMACS.TALX.SQL.Add(' select * from docfis');
                   DMMACS.TALX.SQL.Add(' where (docfis.numdocfis=:CODIGO)   AND (docfis.empemit='+#39'1'+#39+')  ');
                   DMMACS.TALX.ParamByName('CODIGO').AsString:=DMMACS.TEmpresa.FieldByName('PROX_NF').AsString;
                   DMMACS.TALX.Open;
                   If Not DMMACS.TALX.IsEmpty
                   Then Begin
                       MessageDlg('Este Nº de Documento já foi impresso!!!', mtWarning, [mbOK], 0);
                       Exit;
                   End;

   				//Imprime NOTA Fiscal
   				If NF(XView.Fieldbyname('COD_ORDEM').AsInteger , 'OS', False)=True
               	Then Begin
       				//REGISTRA COMANDO DO USUARIO
       				Registra('ORDEM DE SERVIÇO', 'NF', XView.FieldByName('dtabert').AsString, 'Nº '+XView.FieldByName('NUMERO').AsString, 'Valor: '+XView.FieldByName('total').AsString);
                       //INCREMENTA Nº NF
                       Try

   						DMMACS.TEmpresa.Edit;
			   				DMMACS.TEmpresa.FieldByName('PROX_NF').AsInteger:=DMMACS.TEmpresa.FieldByName('PROX_NF').AsInteger+1;
   						DMMACS.TEmpresa.Post;
   						DMMACS.Transaction.CommitRetaining;
                       Except
                       	MessageDlg('Não foi possível atualizar o Nº da NF. Por favor faça isso manualmente.', mtWarning, [mbOK], 0);
                           DMMACS.Transaction.RollbackRetaining;
                       End;
               	End;
               End;
               LiberaDados;
           End;
       End
       Else Begin
			Mensagem('OPÇÃO BLOQUEADA', 'Este pedido já passou por uma impressão fiscal!', '', 1, 1, False, 'a');
			Exit;
       End;
   End;

end;

procedure TFOrdem.ConsultaNDocFiscal1Click(Sender: TObject);
begin
  inherited;
	FiltraTabela(DMMACS.TEmpresa, 'EMPRESA', 'COD_EMPRESA', FMenu.LCODEMPRESA.Caption, '');
	FiltraTabela(DMMACS.TLoja, 'LOJA', 'COD_LOJA', FMenu.LCODLOJA.Caption, '');
   FiltraTabela(DMCAIXA.TCaixa, 'CAIXA', 'COD_CAIXA', FMenu.LCODCAIXA.Caption, '');
   If DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString='NF' Then
		MessageDlg('Nº Próx. NF: '+DMMACS.TEmpresa.FieldByName('PROX_NF').AsString, mtInformation, [mbOK], 0)
   Else
   	MessageDlg('Este recurso esta disponível apenas para Notas Fiscais.', mtWarning, [mbOK], 0);

end;

procedure TFOrdem.AlteraNDocFiscal1Click(Sender: TObject);
Var
	NovoNum: String;
   Flag: Integer;
begin
  inherited;
  	Flag:=0;
   While Flag=0 do
   Begin
		If InputQuery('ALTERANDO O Nº DA NF','Informe o novo Nº para próxima Nota Fiscal', NovoNum)=True
   	Then Begin
       	Try
				StrToInt(NovoNum);
               DMMACS.TALX.Close;
               DMMACS.TALX.SQL.Clear;
               DMMACS.TALX.SQL.Add(' select * from docfisord ');
               DMMACS.TALX.SQL.Add(' where docfisord.numdocfis=:CODIGO ');
               DMMACS.TALX.ParamByName('CODIGO').AsString:=NovoNum;
               DMMACS.TALX.Open;
               If Not DMMACS.TALX.IsEmpty
               Then Begin
					MessageDlg('Este Nº de Documento já foi impresso!!!', mtWarning, [mbOK], 0);
                   Exit;
               End;
               //VERIFICA C JAH EXISTE DOCUMENTO IMPRESSO EM COMPRAS
               DMMACS.TALX.Close;
               DMMACS.TALX.SQL.Clear;
               DMMACS.TALX.SQL.Add(' select * from docfis ');
               DMMACS.TALX.SQL.Add(' where (docfis.numdocfis=:CODIGO)  AND (docfis.empemit='+#39'1'+#39+')  ');
               DMMACS.TALX.ParamByName('CODIGO').AsString:=NovoNum;
               DMMACS.TALX.Open;
               If Not DMMACS.TALX.IsEmpty
               Then Begin
					MessageDlg('Este Nº de Documento já foi impresso!!!', mtWarning, [mbOK], 0);
                   Exit;
               End;
               Flag:=1;
				FiltraTabela(DMMACS.TEmpresa, 'EMPRESA', 'COD_EMPRESA', FMenu.LCODEMPRESA.Caption, '');
   			DMMACS.TEmpresa.Edit;
			   	DMMACS.TEmpresa.FieldByName('PROX_NF').AsString:=NovoNum;
   			DMMACS.TEmpresa.Post;
   			DMMACS.Transaction.CommitRetaining;
           Except
           	MessageDlg('O novo Nº não foi aprovado!'+#13+#10+'Entre com outro valor inteiro.', mtWarning, [mbOK], 0);
           End;
       End
       Else Begin
           Flag:=1;
       End;
	End;
end;

procedure TFOrdem.ReimprimirNF1Click(Sender: TObject);
begin
  inherited;
    AbrirForm(TFSENHA, FSENHA, 0);
    //repassa resultado da tela de autenticação de senha para as variáveis de controle
    If XAlxResult=True
    Then Begin
       If XView.FieldByName('STATUS').AsString='ABERTO'
       Then Begin
           Mensagem('OPÇÃO BLOQUEADA', 'É necessário que o pedido esteja fechado antes da impressão fiscal. Antes de fechar recomendamos que confira todas as informações do pedido.', '', 1, 1, False, 'a');
           Exit;
       End;
       If FiltraTabela(DMServ.TOrd, 'ORDEM', 'COD_ORDEM', XView.FieldByName('COD_ORDEM').AsString, '')=True
       Then Begin
           If Mensagem('A T E N Ç Ã O', 'Deseja realmente Imprimir Documento Fiscal para o pedido'+#13+'Nº '+XView.FieldByName('NUMERO').AsString+'?'  , '', 2, 3, False, 'c')= 2
           Then Begin
           	FiltraTabela(DMCAIXA.TCaixa, 'CAIXA', 'COD_CAIXA', FMenu.LCODCAIXA.Caption, '');
               If DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString='ECF'
               Then Begin
                   {//Imprime Cupom Fiscal
                   If ECF(XView.FieldByName('COD_PEDVENDA').AsInteger, 'PEDVENDA')=True
                   Then Begin
                       //REGISTRA COMANDO DO USUARIO
                       Registra('PEDIDO VENDA', 'ECF', XView.FieldByName('DTPEDVEN').AsString, 'Nº '+XView.FieldByName('NUMPED').AsString, 'Valor: '+XView.FieldByName('VALOR').AsString);
                   End;}
               End;
           	FiltraTabela(DMCAIXA.TCaixa, 'CAIXA', 'COD_CAIXA', FMenu.LCODCAIXA.Caption, '');
               If DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString='NF'
               Then Begin
                   FMenu.TIPOREL:='RNF';
                   //Imprime NOTA Fiscal
                   If NF(XView.Fieldbyname('COD_ORDEM').AsInteger , 'OS', False )=True
                   Then Begin
                       //REGISTRA COMANDO DO USUARIO
                       Registra('ORDEM DE SERVIÇO', 'NF', XView.FieldByName('dtabert').AsString, 'Nº '+XView.FieldByName('NUMERO').AsString, 'Valor: '+XView.FieldByName('total').AsString);
                   End;
               End;
               LiberaDados;
           End;
       End;
    End;
end;

procedure TFOrdem.CBFILTROClick(Sender: TObject);
begin
  inherited;
    CBORDEMExit(Sender);
end;

procedure TFOrdem.CBORDEMClick(Sender: TObject);
begin
  inherited;
    CBORDEMExit(Sender);
end;

procedure TFOrdem.EDBoxEnter(Sender: TObject);
begin
  inherited;
    // se nao tiver valor diferente de BOX intaum a edit eh limpada
   If EDBox.Text = 'Box' Then
       EDBox.Text := '';
end;

procedure TFOrdem.EDNumEnter(Sender: TObject);
begin
  inherited;
    // se o valor que tiver a edit for "numero" então eh apagado caso contrario eh permanecido
   If EDNum.Text = 'Número' Then
       EDNum.Text := '';
end;

procedure TFOrdem.EDCliente1Enter(Sender: TObject);
begin
  inherited;
    If EDCliente1.Text = 'Cliente' Then
       EDCliente1.Clear;
end;

procedure TFOrdem.EdNomeEnter(Sender: TObject);
begin
  inherited;
    if EdNome.Text = 'Número' then
        EdNome.Text := ''
   else
    EdNome.SelectAll;

   EdNome.Font.Color := clBlack;
end;

procedure TFOrdem.EdNomeExit(Sender: TObject);
begin
  inherited;
    if Trim(EdNome.Text) = ''
    then begin
        EdNome.Text := 'Número';
        EdNome.Font.Color := clGray;
    end;
end;

procedure TFOrdem.EdEquipamentoEnter(Sender: TObject);
begin
  inherited;
  if EdEquipamento.Text = 'Equipamento' then
        EdEquipamento.Text := ''
   else
    EdEquipamento.SelectAll;

   EdEquipamento.Font.Color := clBlack;
end;

procedure TFOrdem.EdEquipamentoExit(Sender: TObject);
begin
  inherited;
  if Trim(EdEquipamento.Text) = ''
  then begin
        EdEquipamento.Text := 'Equipamento';
        EdEquipamento.Font.Color := clGray;
  end;
end;

procedure TFOrdem.EdClienteEnter(Sender: TObject);
begin
  inherited;
   if EdCliente.Text = 'Cliente' then
        EdCliente.Text := ''
   else
    EdCliente.SelectAll;

   EdCliente.Font.Color := clBlack;
end;

procedure TFOrdem.EdClienteExit(Sender: TObject);
begin
  inherited;
   if Trim(EdCliente.Text) = ''
   then begin
        EdCliente.Text := 'Cliente';
        EdCliente.Font.Color := clGray;
   end;
end;

procedure TFOrdem.DBGridCadastroPadraoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  If (shift=[ssCtrl]) and (key = 83)
   Then Begin
     Try
       if not DirectoryExists('C:\MZR\Arquivos\LayoutGrid\') then begin
           ForceDirectories('C:\MZR\Arquivos\LayoutGrid\');
       end;
       DBGridCadastroPadrao.Columns.SaveToFile('C:\MZR\Arquivos\LayoutGrid\ordem.lgm');
       Mensagem('Mzr Sistemas - INFORMAÇÃO', 'Layout da Grid foi salvo com sucesso!', '', 1, 1, false, 'i');
     Except
           Mensagem('Mzr Sistemas - INFORMAÇÃO', 'Falha na tentativa de salvar o layout da grid!', '', 1, 1, false, 'i');
     End;
   End;

end;

procedure TFOrdem.DBGrid3KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  If (shift=[ssCtrl]) and (key = 83)
   Then Begin
     Try
       if not DirectoryExists('C:\MZR\Arquivos\LayoutGrid\') then begin
           ForceDirectories('C:\MZR\Arquivos\LayoutGrid\');
       end;
       DBGrid3.Columns.SaveToFile('C:\MZR\Arquivos\LayoutGrid\ordemDespesas.lgm');
       Mensagem('Mzr Sistemas - INFORMAÇÃO', 'Layout da Grid foi salvo com sucesso!', '', 1, 1, false, 'i');
     Except
           Mensagem('Mzr Sistemas - INFORMAÇÃO', 'Falha na tentativa de salvar o layout da grid!', '', 1, 1, false, 'i');
     End;
   End;
end;

procedure TFOrdem.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  If (shift=[ssCtrl]) and (key = 83)
   Then Begin
     Try
       if not DirectoryExists('C:\MZR\Arquivos\LayoutGrid\') then begin
           ForceDirectories('C:\MZR\Arquivos\LayoutGrid\');
       end;
       DBGrid1.Columns.SaveToFile('C:\MZR\Arquivos\LayoutGrid\ordemProdutos.lgm');
       Mensagem('Mzr Sistemas - INFORMAÇÃO', 'Layout da Grid foi salvo com sucesso!', '', 1, 1, false, 'i');
     Except
           Mensagem('Mzr Sistemas - INFORMAÇÃO', 'Falha na tentativa de salvar o layout da grid!', '', 1, 1, false, 'i');
     End;
   End;
end;

procedure TFOrdem.DBGrid2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  If (shift=[ssCtrl]) and (key = 83)
   Then Begin
     Try
       if not DirectoryExists('C:\MZR\Arquivos\LayoutGrid\') then begin
           ForceDirectories('C:\MZR\Arquivos\LayoutGrid\');
       end;
       DBGrid2.Columns.SaveToFile('C:\MZR\Arquivos\LayoutGrid\ordemServicos.lgm');
       Mensagem('Mzr Sistemas - INFORMAÇÃO', 'Layout da Grid foi salvo com sucesso!', '', 1, 1, false, 'i');
     Except
           Mensagem('Mzr Sistemas - INFORMAÇÃO', 'Falha na tentativa de salvar o layout da grid!', '', 1, 1, false, 'i');
     End;
   End;
end;

procedure TFOrdem.DBGrid5KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  If (shift=[ssCtrl]) and (key = 83)
   Then Begin
     Try
       if not DirectoryExists('C:\MZR\Arquivos\LayoutGrid\') then begin
           ForceDirectories('C:\MZR\Arquivos\LayoutGrid\');
       end;
       DBGrid5.Columns.SaveToFile('C:\MZR\Arquivos\LayoutGrid\ordemVeiculos.lgm');
       Mensagem('Mzr Sistemas - INFORMAÇÃO', 'Layout da Grid foi salvo com sucesso!', '', 1, 1, false, 'i');
     Except
           Mensagem('Mzr Sistemas - INFORMAÇÃO', 'Falha na tentativa de salvar o layout da grid!', '', 1, 1, false, 'i');
     End;
   End;
end;

procedure TFOrdem.DBFuncKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  If (shift=[ssCtrl]) and (key = 83)
   Then Begin
     Try
       if not DirectoryExists('C:\MZR\Arquivos\LayoutGrid\') then begin
           ForceDirectories('C:\MZR\Arquivos\LayoutGrid\');
       end;
       DBFunc.Columns.SaveToFile('C:\MZR\Arquivos\LayoutGrid\ordemAjudantes.lgm');
       Mensagem('Mzr Sistemas - INFORMAÇÃO', 'Layout da Grid foi salvo com sucesso!', '', 1, 1, false, 'i');
     Except
           Mensagem('Mzr Sistemas - INFORMAÇÃO', 'Falha na tentativa de salvar o layout da grid!', '', 1, 1, false, 'i');
     End;
   End;
end;

procedure TFOrdem.DBDTABERTKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if not (Key in[Chr(8)]) then
   begin
       if Length(DBDTABERT.Text)=2 then
       begin
           DBDTABERT.Text:=DBDTABERT.Text+'/';
           DBDTABERT.SelStart:=3;
       end else if Length(DBDTABERT.Text)=5 then begin
           DBDTABERT.Text:=DBDTABERT.Text+'/';
           DBDTABERT.SelStart:=6;
       end;
   end;

   if not (Key in['0'..'9',Chr(8),#13,#27]) then Key:= #0
    else if key in[Chr(8),#13,#27] then
    begin
       // eh nois !!
    end
    else if Length(DBDTABERT.Text) = 0
    then begin
        if key in['4'..'9']
        then begin
            DBDTABERT.Text := '0';
            DBDTABERT.SelStart := 2;
        end;

    end
    else if Length(DBDTABERT.Text) = 1
    then begin
        if DBDTABERT.Text = '3'
        then begin
            if not (key in['0'..'1']) then key := #0;
        end;
        if DBDTABERT.Text = '0'
        then begin
            if not (key in['1'..'9']) then key := #0;
        end;
    end
    else if (Length(DBDTABERT.Text) = 2) or (Length(DBDTABERT.Text) = 3)
    then begin
        if key in['2'..'9']
        then begin
            DBDTABERT.Text := DBDTABERT.Text+'0';
            DBDTABERT.SelStart := 4;
        end;
    end
    else if (Length(DBDTABERT.Text) = 4)
    then begin
        if Copy(DBDTABERT.Text, 4,4) = '1'
        then begin
            if not (key in['0'..'2']) then key := #0;
        end;
        if Copy(DBDTABERT.Text, 4,4) = '0'
        then begin
            if not (key in['1'..'9']) then key := #0;
        end;
    end
    else if (Length(DBDTABERT.Text) = 5) or (Length(DBDTABERT.Text) = 6)
    then begin
        if not (key in ['1'..'2']) then key := #0;
    end;





   if(key = #13)
   then begin
       if Length(Trim(DBDTABERT.Text))=0 then
       begin
           DBDTABERT.Text:=DatetoStr(Date());
       end else if Length(Trim(DBDTABERT.Text))=1 then
       begin
           DBDTABERT.Text:='0'+DBDTABERT.Text+Copy(DatetoStr(Date()), 3, 10);
       end else if Length(DBDTABERT.Text)<=3 then begin
           DBDTABERT.Text:=DBDTABERT.Text+Copy(DatetoStr(Date()), 4, 10);
       end else if Length(DBDTABERT.Text)=4 then begin
           DBDTABERT.Text:=Copy(DBDTABERT.Text,1,3)+'0'+Copy(DBDTABERT.Text,4,4)+Copy(DatetoStr(Date()), 6, 10);
       end else if Length(DBDTABERT.Text)<=6 then begin
           DBDTABERT.Text:=DBDTABERT.Text+Copy(DatetoStr(Date()), 7, 10);
       end else if (Length(DBDTABERT.Text)>6) and (Length(DBDTABERT.Text)<10) then begin
           DBDTABERT.Text:=Copy(DBDTABERT.Text, 1,6)+Copy(DatetoStr(Date()), 7, 10);
       end;
       DBHRABERT.SetFocus;
   end;
end;


procedure TFOrdem.DBDTPREVKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if not (Key in[Chr(8)]) then
   begin
       if Length(DBDTPREV.Text)=2 then
       begin
           DBDTPREV.Text:=DBDTPREV.Text+'/';
           DBDTPREV.SelStart:=3;
       end else if Length(DBDTPREV.Text)=5 then begin
           DBDTPREV.Text:=DBDTPREV.Text+'/';
           DBDTPREV.SelStart:=6;
       end;
   end;

   if not (Key in['0'..'9',Chr(8),#13,#27]) then Key:= #0
    else if key in[Chr(8),#13,#27] then
    begin
       // eh nois !!
    end
    else if Length(DBDTPREV.Text) = 0
    then begin
        if key in['4'..'9']
        then begin
            DBDTPREV.Text := '0';
            DBDTPREV.SelStart := 2;
        end;

    end
    else if Length(DBDTPREV.Text) = 1
    then begin
        if DBDTPREV.Text = '3'
        then begin
            if not (key in['0'..'1']) then key := #0;
        end;
        if DBDTPREV.Text = '0'
        then begin
            if not (key in['1'..'9']) then key := #0;
        end;
    end
    else if (Length(DBDTPREV.Text) = 2) or (Length(DBDTPREV.Text) = 3)
    then begin
        if key in['2'..'9']
        then begin
            DBDTPREV.Text := DBDTPREV.Text+'0';
            DBDTPREV.SelStart := 4;
        end;
    end
    else if (Length(DBDTPREV.Text) = 4)
    then begin
        if Copy(DBDTPREV.Text, 4,4) = '1'
        then begin
            if not (key in['0'..'2']) then key := #0;
        end;
        if Copy(DBDTPREV.Text, 4,4) = '0'
        then begin
            if not (key in['1'..'9']) then key := #0;
        end;
    end
    else if (Length(DBDTPREV.Text) = 5) or (Length(DBDTPREV.Text) = 6)
    then begin
        if not (key in ['1'..'2']) then key := #0;
    end;





   if(key = #13)
   then begin

        DMServ.TOrd.Edit;

       if Length(Trim(DBDTPREV.Text))=0 then
       begin
           DBDTPREV.Text:=DatetoStr(Date());
       end else if Length(Trim(DBDTPREV.Text))=1 then
       begin
           DBDTPREV.Text:='0'+DBDTPREV.Text+Copy(DatetoStr(Date()), 3, 10);
       end else if Length(DBDTPREV.Text)<=3 then begin
           DBDTPREV.Text:=DBDTPREV.Text+Copy(DatetoStr(Date()), 4, 10);
       end else if Length(DBDTPREV.Text)=4 then begin
           DBDTPREV.Text:=Copy(DBDTPREV.Text,1,3)+'0'+Copy(DBDTPREV.Text,4,4)+Copy(DatetoStr(Date()), 6, 10);
       end else if Length(DBDTPREV.Text)<=6 then begin
           DBDTPREV.Text:=DBDTPREV.Text+Copy(DatetoStr(Date()), 7, 10);
       end else if (Length(DBDTPREV.Text)>6) and (Length(DBDTPREV.Text)<10) then begin
           DBDTPREV.Text:=Copy(DBDTPREV.Text, 1,6)+Copy(DatetoStr(Date()), 7, 10);
       end;
       DBHRPREV.SetFocus;
   end;
end;

procedure TFOrdem.DBHRPREVKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if not (Key in[Chr(8)]) then
   begin
       if Length(DBHRPREV.Text)=2 then
       begin
           DBHRPREV.Text:=DBHRPREV.Text+':';
           DBHRPREV.SelStart:=3;
       end;
   end;

   if not (Key in['0'..'9',Chr(8),#13,#27]) then Key:= #0
    else if key in[Chr(8),#13,#27] then
    begin
       // eh nois !!
    end
    else if Length(DBHRPREV.Text) = 0
    then begin
        if key in['3'..'9']
        then begin
            DBHRPREV.Text := '0';
            DBHRPREV.SelStart := 2;
        end;

    end
    else if Length(DBHRPREV.Text) = 1
    then begin
        if DBHRPREV.Text = '2'
        then begin
            if not (key in['0'..'3']) then key := #0;
        end;
        if DBHRPREV.Text = '0'
        then begin
            if not (key in['1'..'9']) then key := #0;
        end;
    end
    else if (Length(DBHRPREV.Text) = 2) or (Length(DBHRPREV.Text) = 3)
    then begin
        if key in['6'..'9']
        then begin
            DBHRPREV.Text := DBHRPREV.Text+'0';
            DBHRPREV.SelStart := 4;
        end;
    end
    else if (Length(DBHRPREV.Text) = 4)
    then begin
        if Copy(DBHRPREV.Text, 4,4) = '1'
        then begin
            if not (key in['0'..'2']) then key := #0;
        end;
        if Copy(DBHRPREV.Text, 4,4) = '0'
        then begin
            if not (key in['1'..'9']) then key := #0;
        end;
    end;

   if(key = #13)
   then begin
        if Length(DBHRPREV.Text)=2 then
      begin
        DBHRPREV.Text:=DBHRPREV.Text + ':' + FormatDateTime('mm', Time());
      end
      else if Length(DBHRPREV.Text)=3 then
      begin
        DBHRPREV.Text:=DBHRPREV.Text + FormatDateTime('mm', Time());
      end
      else Begin
           DBHRPREV.Text:=FormatDateTime('hh:mm', Time());
      End;
       DBOBS.SetFocus;
   end;
end;

procedure TFOrdem.DBHRABERTKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if not (Key in[Chr(8)]) then
   begin
       if Length(DBHRABERT.Text)=2 then
       begin
           DBHRABERT.Text:=DBHRABERT.Text+':';
           DBHRABERT.SelStart:=3;
       end;
   end;

   if(key = #13)
   then begin
      if Length(DBHRABERT.Text)=2 then
      begin
        DBHRABERT.Text:=DBHRABERT.Text + ':' + FormatDateTime('mm', Time());
      end
      else if Length(DBHRABERT.Text)=3 then
      begin
        DBHRABERT.Text:=DBHRABERT.Text + FormatDateTime('mm', Time());
      end
      else Begin
           DBHRABERT.Text:=FormatDateTime('hh:mm', Time());
      End;

       DBPROBREC.SetFocus;
   end;
end;

procedure TFOrdem.EdNomeKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  If  FMenu.XCONSULTARAPIDA
   Then Begin
     // - 28/04/2009: pesquisa
    XView.Locate('NUMERO',EdNome.Text, [loCaseInsensitive]);
  End;
end;

procedure TFOrdem.EdEquipamentoKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  If  FMenu.XCONSULTARAPIDA
   Then Begin
     // - 28/04/2009: pesquisa
    XView.Locate('EQUIPAMENTO',EdEquipamento.Text, [loPartialKey]);
  End;
end;

procedure TFOrdem.EdClienteKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  If  FMenu.XCONSULTARAPIDA
   Then Begin
     // - 28/04/2009: pesquisa
    XView.Locate('CLIENTE',EdCliente.Text, [loPartialKey]);
  End;
end;

procedure TFOrdem.EDNumKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  If  FMenu.XCONSULTARAPIDA
   Then Begin
     // - 28/04/2009: pesquisa
    XView.Locate('NUMERO',EDNum.Text, [loCaseInsensitive]);
  End;
end;

procedure TFOrdem.EDBoxKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  If  FMenu.XCONSULTARAPIDA
   Then Begin
     // - 28/04/2009: pesquisa
    XView.Locate('BOX',EDBox.Text, [loPartialKey, loCaseInsensitive]);
  End;
end;

procedure TFOrdem.MEPlacaKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  If  FMenu.XCONSULTARAPIDA
   Then Begin
     // - 28/04/2009: pesquisa
    XView.Locate('PLACA',MEPlaca.Text, [loPartialKey, loCaseInsensitive]);
  End;
end;

procedure TFOrdem.EDCliente1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  If  FMenu.XCONSULTARAPIDA
   Then Begin
     // - 28/04/2009: pesquisa
    XView.Locate('CLIENTE',EDCliente1.Text, [loPartialKey, loCaseInsensitive]);
  End;
end;

procedure TFOrdem.DBDTABERTExit(Sender: TObject);
begin
  inherited;
  If (not (DBDTABERT.Text = '  /  /    ') and not (Trim(DBDTABERT.Text) = ''))
   Then Begin
       // retorna dia da semana
       lbDiaSemanaAbert.Caption := DiaSemana(DBDTABERT.Text);

       // se for domingo o dia da semana fica vermelho
       If (StrToInt(XDATA) = 1)
       Then Begin
           lbDiaSemanaAbert.Font.Color := clRed;
       End
       Else Begin
           lbDiaSemanaAbert.Font.Color := cl3DDkShadow;    //clWindowText;
       End;
   End
   Else Begin
        lbDiaSemanaAbert.Caption := '';
   End;

   lbDiaSemanaAbert.Repaint;
end;

procedure TFOrdem.DBDTPREVExit(Sender: TObject);
begin
  inherited;
  If (not (DBDTPREV.Text = '  /  /    ') and not (Trim(DBDTPREV.Text) = ''))
   Then Begin
       // retorna dia da semana
       lbDiaSemanaPrev.Caption := DiaSemana(DBDTPREV.Text);

       // se for domingo o dia da semana fica vermelho
       If (StrToInt(XDATA) = 1)
       Then Begin
           lbDiaSemanaPrev.Font.Color := clRed;
       End
       Else Begin
           lbDiaSemanaPrev.Font.Color := cl3DDkShadow;    //clWindowText;
       End;
   End
   Else Begin
        lbDiaSemanaPrev.Caption := '';
   End;

   lbDiaSemanaPrev.Repaint;
end;

procedure TFOrdem.DevoluoParcial1Click(Sender: TObject);
begin
  inherited;  

  // repassando valor do cidgo da ordem para variavel
   XCOD_ORDEM := DMServ.WOrdem.FieldByname('cod_ordem').AsInteger;

   // BUSCANDO DADOS DA ORDEM
   FiltraTabela(DMServ.TOrd,'ORDEM','COD_ORDEM',IntToStr(XCOD_ORDEM),'');

   If DMServ.TOrd.FieldByName('STATUS').AsString <> 'FECHADO'
   Then Begin
		Mensagem('NOTIFICAÇÃO AO USUÁRIO', 'Este pedido não se encontra fechado! Então você pode clicar em consultar e alterar suas informações', '', 1, 1, False, 'a');
       Exit;
   End;

    DMESTOQUE.TSlave.Close;
    DMESTOQUE.TSlave.SQL.Clear;
    DMESTOQUE.TSlave.SQL.Add('Select * From ITPRODORD');
    DMESTOQUE.TSlave.SQL.Add('left Join estoque on ITPRODORD.cod_estoque = estoque.cod_estoque ');
    DMESTOQUE.TSlave.SQL.Add('Left Join subproduto on estoque.cod_subprod = subproduto.cod_subproduto ');
    DMESTOQUE.TSlave.SQL.Add('Left Join funcionario on  ITPRODORD.COD_FUNCIONARIO = funcionario.cod_func');
    DMESTOQUE.TSlave.SQL.Add('Left Join pessoa on funcionario.cod_pessoa = pessoa.COD_PESSOA ');
    DMESTOQUE.TSlave.SQL.Add('Where ITPRODORD.COD_ORDEM = :COD_ORDEM ');
    DMESTOQUE.TSlave.ParamByName('COD_ORDEM').AsInteger:=XCOD_ORDEM;
    DMESTOQUE.TSlave.Open;

   If DMESTOQUE.TSlave.IsEmpty
   Then Begin
       Mensagem('    A T E N Ç Ã O   ','A ordem não possui produtos inclusos.','',1,1,false,'I');
       Exit;
   End;

   If ((DMServ.TOrd.FieldByName('TIPO').AsString<>'VND') AND (DMServ.TOrd.FieldByName('TIPO').AsString<>''))
   Then Begin
			If Mensagem('CONFIRMAÇÃO DO USUÁRIO', 'Este pedido já passou por um processo de devolução. Deseja continuar com a devolução da O.S. '+#13+'Nº '+XView.FieldByName('NUMERO').AsString+'?'  , '', 2, 3, False, 'c')<> 2 Then
         Exit
   End
   Else If Mensagem('CONFIRMAÇÃO DO USUÁRIO', 'Deseja realmente efetuar a devolução parcial da O.S. '+#13+'Nº '+XView.FieldByName('NUMERO').AsString+'?'  , '', 2, 3, False, 'c')<> 2
   Then
       Exit;
       
   DevParcPed(XCOD_ORDEM);
end;

Function TFOrdem.DevParcPed(XCod_PedDev: Integer): Boolean;
Begin
	Try
    //ABRE NOVO PEDIDO DE COMPRA PARA SUPORTAR A DEVOLUÇÃO
       XCod_PedCompra:=InserReg(DMENTRADA.TPedC, 'PEDCOMPRA', 'COD_PEDCOMP');
       DMServ.TOrd.Edit;
       DMServ.TOrd.FieldByName('TIPO').AsString:=DMMacs.TEmpresa.FieldByName('PROXPEDCOMP').AsString;
       DMServ.TOrd.Post;

       DMENTRADA.TPedC.FieldByName('COD_PEDCOMP').AsInteger:=XCod_PedCompra;
       DMENTRADA.TPedC.FieldByName('NUMPED').AsString:=DMMacs.TEmpresa.FieldByName('PROXPEDCOMP').AsString;
       DMENTRADA.TPedC.FieldByName('DTPEDCOMP').AsDateTime:=DATE();
       DMENTRADA.TPedC.FieldByName('COD_FORNEC').AsInteger:=DMMACS.TLoja.FieldByName('COD_FORDEV').AsInteger;
       DMENTRADA.TPedC.FieldByName('COD_USUARIO').AsString:=FMenu.LCODUSUARIO.Caption;
       DMENTRADA.TPedC.FieldByName('DTPEDCOMP').AsDateTime:=Date();
       DMENTRADA.TPedC.FieldByName('COD_DEVOLUCAO').AsInteger:=XCOD_ORDEM;
       DMENTRADA.TPedC.FieldByName('NUMDEV').AsString:=DMServ.TOrd.FieldByName('NUMERO').AsString;
       //filtra as formas de pagamento
       FiltraTabela(DMFINANC.TFormPag,'FORMPAG', 'DESCRICAO', 'À VISTA', '');
       DMENTRADA.TPedC.FieldByName('COD_FORMPAG').AsInteger:=DMFINANC.TFormPag.FieldByName('COD_FORMPAG').AsInteger;
       DMENTRADA.TPedC.FieldByName('SITUACAO').AsString:='ABERTO';
       DMENTRADA.TPedC.Post;

       FiltraTabela(DMMACS.TEmpresa, 'EMPRESA', 'COD_EMPRESA', FMenu.LCODEMPRESA.Caption, '');
       DMMACS.TEmpresa.Edit;
       DMMacs.TEmpresa.FieldByName('PROXPEDCOMP').AsString:=IntToStr(StrToInt(DMMacs.TEmpresa.FieldByName('PROXPEDCOMP').AsString)+1);
       DMMACS.TEmpresa.Post;

   	//FILTRA TODOS OS ITENS DO PEDIDO
		//seleciona items do pedido
       FiltraSlaveDev;
       PDevParc.Visible:=True;
       PDevParc.BringToFront;
       BtnDevolveItem.SetFocus;
  Except
   End;
End;

//Filtra Tabela Slave e calcula total
Procedure TFOrdem.FiltraSlaveDev;
Begin
    //INSERE COMANDOS PARA FILTRAR
 		DMESTOQUE.TSlave.Close;
		DMESTOQUE.TSlave.SQL.Clear;
		DMESTOQUE.TSlave.SQL.Add('Select * From ITPRODORD');
		DMESTOQUE.TSlave.SQL.Add('left Join estoque on ITPRODORD.cod_estoque = estoque.cod_estoque ');
		DMESTOQUE.TSlave.SQL.Add('Left Join subproduto on estoque.cod_subprod = subproduto.cod_subproduto ');
		DMESTOQUE.TSlave.SQL.Add('Left Join funcionario on  ITPRODORD.COD_FUNCIONARIO = funcionario.cod_func');
		DMESTOQUE.TSlave.SQL.Add('Left Join pessoa on funcionario.cod_pessoa = pessoa.COD_PESSOA ');
		DMESTOQUE.TSlave.SQL.Add('Where ITPRODORD.COD_ORDEM = :COD_ORDEM ');
		DMESTOQUE.TSlave.ParamByName('COD_ORDEM').AsInteger:=XCOD_ORDEM;
		DMESTOQUE.TSlave.Open;
   	//INSERE COMANDOS PARA FILTRAR ITENS DEVOLVIDOS
 		DMESTOQUE.Alx.Close;
		DMESTOQUE.Alx.SQL.Clear;
		DMESTOQUE.Alx.SQL.Add('Select * ');
		DMESTOQUE.Alx.SQL.Add('From itenspedc left Join estoque on itenspedc.cod_estoque = estoque.cod_estoque ');
		DMESTOQUE.Alx.SQL.Add('Left Join subproduto on subproduto.cod_subproduto = estoque.cod_subprod ');
		DMESTOQUE.Alx.SQL.Add('left join lote on itenspedc.cod_lote = lote.cod_lote ');
		DMESTOQUE.Alx.SQL.Add('Where itenspedc.cod_pedcompra = :CODPEDCOMPRA ');
		DMESTOQUE.Alx.ParamByName('CODPEDCOMPRA').AsInteger:=XCod_PedCompra;
		DMESTOQUE.Alx.Open;

End;


procedure TFOrdem.DBGrid7CellClick(Column: TColumn);
begin
  inherited;
  EdvlrUnitProdDev.ValueNumeric:=(DMESTOQUE.TSlave.FieldByName('TOTAL').AsCurrency/DMESTOQUE.TSlave.FieldByName('QTD').AsCurrency);
  EdQtdProdDev.ValueNumeric:=DMESTOQUE.TSlave.FieldByName('QTD').AsCurrency;

end;

procedure TFOrdem.BtnDevolveItemClick(Sender: TObject);
var
  XCodSlaveDev :Integer;
begin
  inherited;
  MessageDlg('A T E N Ç Ã O!!!'+#13+#10+'Após este produto ser devolvido, não haverá como cancelar esta operação!', mtWarning, [mbOK], 0);
   If MessageDlg('Deseja realmente devolver a quantidade indicada deste produto?', mtConfirmation, [mbYes, mbNo], 0)=mrno Then
       Exit;
	If DMESTOQUE.TSlave.FieldByName('OPERACAO').AsString<>'DVL'
   Then Begin
       If DMESTOQUE.TSlave.FieldByName('QTD').AsCurrency<EdQtdProdDev.ValueNumeric
       Then Begin
           MessageDlg('A quantidade vendida deste produto não suporta a quantidade pretendida para devolução"', mtWarning, [mbOK], 0);
           Exit;
       End;

   	   //LOCALIZA E FILTRA ESTOUE CORRESPONDENTE
       FiltraTabela(DMEstoque.TEstoque, 'ESTOQUE', 'COD_ESTOQUE', DMESTOQUE.TSlave.FieldByName('COD_ESTOQUE').AsString, '');
       FiltraTabela(DMEstoque.WSimilar, 'VWSIMILAR', 'COD_ESTOQUE', DMEstoque.TSlave.FieldByName('COD_ESTOQUE').AsString, '');
       FiltraTabela(DMServ.TPOrd, 'ITPRODORD', 'COD_ITPRODORD', DMESTOQUE.TSlave.FieldByName('COD_ITPRODORD').AsString, '');
       DMServ.TPOrd.Edit;
       DMServ.TPOrd.FieldByName('OPERACAO').AsString:='DVL';
       DMServ.TPOrd.FieldByName('QTDDEV').AsCurrency:=EdQtdProdDev.ValueNumeric;
		   DMServ.TPOrd.FieldByName('VALCOMP').AsCurrency:=(DMServ.TPOrd.FieldByName('VALCOMP').AsCurrency/DMServ.TPOrd.FieldByName('QTD').AsCurrency)*(DMServ.TPOrd.FieldByName('QTD').AsCurrency-DMServ.TPOrd.FieldByName('QTDDEV').AsCurrency);
       DMServ.TPOrd.FieldByName('VLRUNITDEV').AsCurrency:=EdvlrUnitProdDev.ValueNumeric;
		   DMServ.TPOrd.FieldByName('LUCMOE').AsCurrency:=(DMServ.TPOrd.FieldByName('VALREP').AsCurrency/DMServ.TPOrd.FieldByName('COEFDIV').AsCurrency)*(DMServ.TPOrd.FieldByName('QTD').AsCurrency-DMServ.TPOrd.FieldByName('QTDDEV').AsCurrency);
       DMServ.TPOrd.Post;

       //INSERE PRODUTO EM ITENS DE PEDIDO DE COMPRA
       XCodSlaveDev:=InserReg(DMENTRADA.TItemPC, 'ITENSPEDC', 'COD_ITENSPEDC');
       DMENTRADA.TItemPC.FieldByName('COD_ITENSPEDC').AsInteger:=XCodSlaveDev;
       DMENTRADA.TItemPC.FieldByName('COD_PEDCOMPRA').AsInteger:=XCod_PedCompra;
       DMENTRADA.TItemPC.FieldByName('COD_DEVOLUCAO').AsInteger:=DMServ.TPOrd.FieldByName('COD_ITPRODORD').AsInteger;
       DMENTRADA.TItemPC.FieldByName('ALIQICMS').AsCurrency:=DMServ.TPOrd.FieldByName('ALIQICMS').AsCurrency;
       DMENTRADA.TItemPC.FieldByName('BASEICMS').AsCurrency:=EdvlrUnitProdDev.ValueNumeric*EdQtdProdDev.ValueNumeric;
       DMENTRADA.TItemPC.FieldByName('VLRICMS').AsCurrency:=(DMServ.TPOrd.FieldByName('BASEICMS').AsCurrency*DMENTRADA.TItemPC.FieldByName('ALIQICMS').AsCurrency)/100;
       DMENTRADA.TItemPC.FieldByName('REDUCBASEICMS').AsCurrency:=0;
       DMENTRADA.TItemPC.FieldByName('BASEICMSSUBS').AsCurrency:=0;
       DMENTRADA.TItemPC.FieldByName('VLRICMSSUBS').AsCurrency:=0;
       DMENTRADA.TItemPC.FieldByName('ALIQIPI').AsCurrency:=DMServ.TPOrd.FieldByName('ALIQIPI').AsCurrency;
       DMENTRADA.TItemPC.FieldByName('VLRIPI').AsCurrency:=(DMENTRADA.TItemPC.FieldByName('BASEICMS').AsCurrency*DMENTRADA.TItemPC.FieldByName('ALIQIPI').AsCurrency)/100;
       DMENTRADA.TItemPC.FieldByName('FRETE').AsCurrency:=0;
       DMENTRADA.TItemPC.FieldByName('EMBPROD').AsCurrency:=0;
       DMENTRADA.TItemPC.FieldByName('COD_PEDCOMPRA').AsInteger:=XCod_PedCompra;
       DMENTRADA.TItemPC.FieldByName('DATA').AsString:=DateToStr(Date());
       DMENTRADA.TItemPC.FieldByName('QTDEST').AsCurrency:=EdQtdProdDev.ValueNumeric;
       DMENTRADA.TItemPC.FieldByName('COD_ESTOQUE').AsInteger:=DMServ.TPOrd.FieldByName('COD_ESTOQUE').AsInteger;
       DMENTRADA.TItemPC.FieldByName('QTDEPROD').AsCurrency:=EdQtdProdDev.ValueNumeric;
       DMENTRADA.TItemPC.FieldByName('DESCPRO').AsCurrency:=0;
       DMENTRADA.TItemPC.FieldByName('VALUNIT').AsCurrency:=EdvlrUnitProdDev.ValueNumeric;
       DMENTRADA.TItemPC.FieldByName('VALORTOTAL').AsCurrency:=EdvlrUnitProdDev.ValueNumeric*EdQtdProdDev.ValueNumeric;
       DMENTRADA.TItemPC.Post;

       //ATUALIZA ESTOQUE
       DMESTOQUE.TEstoque.Edit;
       DMEstoque.TEstoque.FieldByName('ESTFISICO').AsCurrency:=DMEstoque.TEstoque.FieldByName('ESTFISICO').AsCurrency+EdQtdProdDev.ValueNumeric;
       DMEstoque.TEstoque.FieldByName('ATUALIZAR').AsString:='1';
       DMESTOQUE.TEstoque.Post;
       DMESTOQUE.TransacEstoque.CommitRetaining;
   End;
   Try
       DMENTRADA.IBT.CommitRetaining;
       DMServ.IBT.CommitRetaining;
       FiltraSlaveDev;

       // ATUALIZA O VALOR DA COMISSÃO APOS FAZER A DEVOLUÇÃO PARCIAL
       //AtualizaComissao;
       DMFINANC.Transaction.CommitRetaining;
   Except
       DMENTRADA.IBT.RollbackRetaining;
       DMFINANC.Transaction.CommitRetaining;
       DMServ.IBT.RollbackRetaining;
   End;
   DBGrid7.SetFocus;
   BtnDevolveItem.SetFocus;
end;

procedure TFOrdem.BitBtn9Click(Sender: TObject);
begin
  inherited;
  Try
   	//VERIFICA TOTAL DE ITENS DEVOLVIDOS
 		DMESTOQUE.Alx.Close;
		DMESTOQUE.Alx.SQL.Clear;
		DMESTOQUE.Alx.SQL.Add('Select SUM(ITENSPEDC.valortotal) AS VALOR ');
		DMESTOQUE.Alx.SQL.Add('From itenspedc left Join estoque on itenspedc.cod_estoque = estoque.cod_estoque ');
		DMESTOQUE.Alx.SQL.Add('Left Join subproduto on subproduto.cod_subproduto = estoque.cod_subprod ');
		DMESTOQUE.Alx.SQL.Add('Where itenspedc.cod_pedcompra = :CODPEDVENDA ');
		DMESTOQUE.Alx.ParamByName('CODPEDVENDA').AsInteger := XCod_PedCompra;
		DMESTOQUE.Alx.Open;

    AtualizaComissao;

    //VERIFICA SE O PEDIDO JÁ POSSUE DOC FI
    VerificaDocFisDevolucao;
                             
       DMENTRADA.TPedC.Edit;
       DMENTRADA.TPedC.FieldByName('VALOR').AsCurrency := DMESTOQUE.Alx.FieldByName('VALOR').AsCurrency;
       DMENTRADA.TPedC.Post;

  		 DMServ.IBT.CommitRetaining;
       DMESTOQUE.TransacEstoque.CommitRetaining;
       DMENTRADA.IBT.CommitRetaining;
       DMMACS.Transaction.CommitRetaining;
       
       Mensagem('INFORMAÇÃO', 'Devolução parcial realizada com sucesso!', '', 1, 1, False, 'a');

       PDevParc.SendToBack;
       PDevParc.Visible:=False;
       EdNome.SetFocus;
       LiberaDados;
   Except
   End;
end;

procedure TFOrdem.BtnDevolucaoClick(Sender: TObject);
begin
  inherited;
  PMDev.Popup(BtnDevolucao.Left+Left+50, BtnDevolucao.Top+Top+85);
end;

procedure TFOrdem.DBGrid7DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  inherited;
  // - 14/04/2009: GRID ZEBRADA
   If  FMenu.XGRIDZEBRADA
   Then Begin
     if State = [] then
     begin
      if DMESTOQUE.TSlave.Recno mod 2 = 1 then
        DBGrid7.Canvas.Brush.Color := $00EEEEEE
     else
        DBGrid7.Canvas.Brush.Color := clWhite;
     end;
     DBGrid7.DefaultDrawColumnCell(Rect, DataCol, Column, State);
   End;
end;

procedure TFOrdem.DBGrid6DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  inherited;
  // - 14/04/2009: GRID ZEBRADA
   If  FMenu.XGRIDZEBRADA
   Then Begin
     if State = [] then
     begin
      if DMESTOQUE.Alx.Recno mod 2 = 1 then
        DBGrid6.Canvas.Brush.Color := $00EEEEEE
     else
        DBGrid6.Canvas.Brush.Color := clWhite;
     end;
     DBGrid6.DefaultDrawColumnCell(Rect, DataCol, Column, State);
   End;
end;

procedure TFOrdem.DBGrid7KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  If (shift=[ssCtrl]) and (key = 83)
   Then Begin
     Try
       if not DirectoryExists('C:\MZR\Arquivos\LayoutGrid\') then begin
           ForceDirectories('C:\MZR\Arquivos\LayoutGrid\');
       end;
       DBGrid7.Columns.SaveToFile('C:\MZR\Arquivos\LayoutGrid\ordemDevParc.lgm');
       Mensagem('Mzr Sistemas - INFORMAÇÃO', 'Layout da Grid foi salvo com sucesso!', '', 1, 1, false, 'i');
     Except
           Mensagem('Mzr Sistemas - INFORMAÇÃO', 'Falha na tentativa de salvar o layout da grid!', '', 1, 1, false, 'i');
     End;
   End;
end;

procedure TFOrdem.DBGrid6KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  If (shift=[ssCtrl]) and (key = 83)
   Then Begin
     Try
       if not DirectoryExists('C:\MZR\Arquivos\LayoutGrid\') then begin
           ForceDirectories('C:\MZR\Arquivos\LayoutGrid\');
       end;
       DBGrid6.Columns.SaveToFile('C:\MZR\Arquivos\LayoutGrid\ordemDevParCom.lgm');
       Mensagem('Mzr Sistemas - INFORMAÇÃO', 'Layout da Grid foi salvo com sucesso!', '', 1, 1, false, 'i');
     Except
           Mensagem('Mzr Sistemas - INFORMAÇÃO', 'Falha na tentativa de salvar o layout da grid!', '', 1, 1, false, 'i');
     End;
   End;
end;

procedure TFOrdem.DevoluoTotal1Click(Sender: TObject);
begin
  inherited;
  // repassando valor do cidgo da ordem para variavel
   XCOD_ORDEM := DMServ.WOrdem.FieldByname('cod_ordem').AsInteger;

   // BUSCANDO DADOS DA ORDEM
   FiltraTabela(DMServ.TOrd,'ORDEM','COD_ORDEM',IntToStr(XCOD_ORDEM),'');

   If DMServ.TOrd.FieldByName('STATUS').AsString<>'FECHADO'
   Then Begin
		   Mensagem('NOTIFICAÇÃO AO USUÁRIO', 'Este pedido não se encontra fechado! Então você pode clicar em consultar e alterar suas informações', '', 1, 1, False, 'a');
       Exit;
   End;

   DMESTOQUE.TSlave.Close;
    DMESTOQUE.TSlave.SQL.Clear;
    DMESTOQUE.TSlave.SQL.Add('Select * From ITPRODORD');
    DMESTOQUE.TSlave.SQL.Add('left Join estoque on ITPRODORD.cod_estoque = estoque.cod_estoque ');
    DMESTOQUE.TSlave.SQL.Add('Left Join subproduto on estoque.cod_subprod = subproduto.cod_subproduto ');
    DMESTOQUE.TSlave.SQL.Add('Left Join funcionario on  ITPRODORD.COD_FUNCIONARIO = funcionario.cod_func');
    DMESTOQUE.TSlave.SQL.Add('Left Join pessoa on funcionario.cod_pessoa = pessoa.COD_PESSOA ');
    DMESTOQUE.TSlave.SQL.Add('Where ITPRODORD.COD_ORDEM = :COD_ORDEM ');
    DMESTOQUE.TSlave.ParamByName('COD_ORDEM').AsInteger:=XCOD_ORDEM;
    DMESTOQUE.TSlave.Open;

   If DMESTOQUE.TSlave.IsEmpty
   Then Begin
       Mensagem('    A T E N Ç Ã O   ','A ordem não possui produtos inclusos.','',1,1,false,'I');
       Exit;
   End;

   If ((DMServ.TOrd.FieldByName('TIPO').AsString<>'VND') AND (DMServ.TOrd.FieldByName('TIPO').AsString<>''))
   Then Begin
			If Mensagem('CONFIRMAÇÃO DO USUÁRIO', 'Este pedido já passou por um processo de devolução. Deseja continuar com a devolução da O.S. '+#13+'Nº '+XView.FieldByName('NUMERO').AsString+'?'  , '', 2, 3, False, 'c')<> 2 Then
         Exit
   End
   Else If Mensagem('CONFIRMAÇÃO DO USUÁRIO', 'Deseja realmente efetuar a devolução da O.S. '+#13+'Nº '+XView.FieldByName('NUMERO').AsString+'?'  , '', 2, 3, False, 'c')<> 2 Then
          Exit;

   If DevTotPed(XCOD_ORDEM)
   Then Begin
       // DEVOLUÇÃO TOTAL DO PEDIDO TEM OS REGISTROS DA TABELA COMISSAO APAGADOS
       DMFINANC.TComis.Close;
       DMFINANC.TComis.SQL.Clear;
       DMFINANC.TComis.SQL.Add('delete from comissao where (comissao.cod_gerador = :codigo) and (comissao.gerador = ' + #39 + 'ORDEM' + #39 + ')');
       DMFINANC.TComis.ParamByName('CODIGO').AsInteger := XCOD_ORDEM;
       DMFINANC.TComis.ExecSQL;

       DMServ.IBT.CommitRetaining;
       DMESTOQUE.TransacEstoque.CommitRetaining;
       DMESTOQUE.TransacEstoque.CommitRetaining;
       DMFINANC.Transaction.CommitRetaining;
       DMENTRADA.IBT.CommitRetaining;
       DMMACS.Transaction.CommitRetaining;
       Mensagem('INFORMAÇÃO', 'Devolução total realizada com sucesso!', '', 1, 1, False, 'a'); 
   End
   Else Begin
       Mensagem('INFORMAÇÃO', 'Não foi possível realizar a devolução!', '', 1, 1, False, 'a');
       DMServ.IBT.RollbackRetaining;
       DMESTOQUE.TransacEstoque.RollbackRetaining;
       DMESTOQUE.TransacEstoque.RollbackRetaining;
       DMFINANC.Transaction.RollbackRetaining;
       DMENTRADA.IBT.RollbackRetaining;
       DMMACS.Transaction.RollbackRetaining;
   End;

   LiberaDados;

end;

Function TFOrdem.DevTotPed(XCod_PedDev: Integer):Boolean;
Var
	XTotPedDev: Real;
  XCodSlaveDev :Integer;
Begin  
  Try

      XCodSlaveDev := 0;

     //ABRE NOVO PEDIDO DE COMPRA PARA SUPORTAR A DEVOLUÇÃO
     XCod_PedCompra:=InserReg(DMENTRADA.TPedC, 'PEDCOMPRA', 'COD_PEDCOMP');

       DMServ.TOrd.Edit;
       DMServ.TOrd.FieldByName('TIPO').AsString:=DMMacs.TEmpresa.FieldByName('PROXPEDCOMP').AsString;
       DMServ.TOrd.Post;

       DMENTRADA.TPedC.FieldByName('COD_PEDCOMP').AsInteger:=XCod_PedCompra;
       DMENTRADA.TPedC.FieldByName('NUMPED').AsString:=DMMacs.TEmpresa.FieldByName('PROXPEDCOMP').AsString;
       DMENTRADA.TPedC.FieldByName('DTPEDCOMP').AsDateTime:=DATE();
       DMENTRADA.TPedC.FieldByName('COD_FORNEC').AsInteger:=DMMACS.TLoja.FieldByName('COD_FORDEV').AsInteger;
       DMENTRADA.TPedC.FieldByName('COD_USUARIO').AsString:=FMenu.LCODUSUARIO.Caption;
       DMENTRADA.TPedC.FieldByName('DTPEDCOMP').AsDateTime:=Date();
       DMENTRADA.TPedC.FieldByName('COD_DEVOLUCAO').AsInteger:=XCOD_ORDEM;
       DMENTRADA.TPedC.FieldByName('NUMDEV').AsString:=DMServ.TOrd.FieldByName('NUMERO').AsString;

     //filtra as formas de pagamento
     FiltraTabela(DMFINANC.TFormPag,'FORMPAG', 'DESCRICAO', 'À VISTA', '');
     DMENTRADA.TPedC.FieldByName('COD_FORMPAG').AsInteger:=DMFINANC.TFormPag.FieldByName('COD_FORMPAG').AsInteger;
     DMENTRADA.TPedC.FieldByName('SITUACAO').AsString:='ABERTO';
     DMENTRADA.TPedC.Post;

     FiltraTabela(DMMACS.TEmpresa, 'EMPRESA', 'COD_EMPRESA', FMenu.LCODEMPRESA.Caption, '');
     DMMACS.TEmpresa.Edit;
     DMMacs.TEmpresa.FieldByName('PROXPEDCOMP').AsString:=IntToStr(StrToInt(DMMacs.TEmpresa.FieldByName('PROXPEDCOMP').AsString)+1);
     DMMACS.TEmpresa.Post;

    // - 21/05/2009:  filtra todos os produtos da ordem
    FiltraSlaveDev;

    // - 21/05/2009: primeira ocorrência
    DMESTOQUE.TSlave.First;
   	While Not DMESTOQUE.TSlave.Eof Do
   	Begin

      // - 21/05/2009: verificar se produto já nao foi devolvido
			If ((DMESTOQUE.TSlave.FieldByName('OPERACAO').AsString<>'DVL') AND (DMESTOQUE.TSlave.FieldByName('QTD').AsCurrency > 0))
      Then Begin

           //LOCALIZA E FILTRA ESTOQUE CORRESPONDENTE
           FiltraTabela(DMEstoque.TEstoque, 'ESTOQUE', 'COD_ESTOQUE', DMESTOQUE.TSlave.FieldByName('COD_ESTOQUE').AsString, '');
           FiltraTabela(DMEstoque.WSimilar, 'VWSIMILAR', 'COD_ESTOQUE', DMEstoque.TSlave.FieldByName('COD_ESTOQUE').AsString, '');
           FiltraTabela(DMServ.TPOrd, 'ITPRODORD', 'COD_ITPRODORD', DMESTOQUE.TSlave.FieldByName('COD_ITPRODORD').AsString, '');

           DMServ.TPOrd.Edit;
           DMServ.TPOrd.FieldByName('OPERACAO').AsString := 'DVL';
           DMServ.TPOrd.FieldByName('QTDDEV').AsCurrency := DMESTOQUE.TSlave.FieldByName('QTD').AsCurrency;
           DMServ.TPOrd.FieldByName('VALCOMP').AsCurrency := (DMServ.TPOrd.FieldByName('VALCOMP').AsCurrency/DMServ.TPOrd.FieldByName('QTD').AsCurrency)*(DMServ.TPOrd.FieldByName('QTD').AsCurrency-DMServ.TPOrd.FieldByName('QTDDEV').AsCurrency);
           DMServ.TPOrd.FieldByName('VLRUNITDEV').AsCurrency := DMESTOQUE.TSlave.FieldByName('VLRUNIT').AsCurrency;
           DMServ.TPOrd.FieldByName('LUCMOE').AsCurrency:= (DMServ.TPOrd.FieldByName('VALREP').AsCurrency/DMServ.TPOrd.FieldByName('COEFDIV').AsCurrency)*(DMServ.TPOrd.FieldByName('QTD').AsCurrency-DMServ.TPOrd.FieldByName('QTDDEV').AsCurrency);
           DMServ.TPOrd.Post;

           //INSERE PRODUTO EM ITENS DE PEDIDO DE COMPRA
           XCodSlaveDev:=InserReg(DMENTRADA.TItemPC, 'ITENSPEDC', 'COD_ITENSPEDC');
           DMENTRADA.TItemPC.FieldByName('COD_ITENSPEDC').AsInteger:=XCodSlaveDev;
           DMENTRADA.TItemPC.FieldByName('COD_PEDCOMPRA').AsInteger:=XCod_PedCompra;
           DMENTRADA.TItemPC.FieldByName('COD_DEVOLUCAO').AsInteger:=DMServ.TPOrd.FieldByName('COD_ITPRODORD').AsInteger;
           DMENTRADA.TItemPC.FieldByName('ALIQICMS').AsCurrency:=DMServ.TPOrd.FieldByName('ALIQICMS').AsCurrency;
           DMENTRADA.TItemPC.FieldByName('BASEICMS').AsCurrency:=EdvlrUnitProdDev.ValueNumeric*EdQtdProdDev.ValueNumeric;
           DMENTRADA.TItemPC.FieldByName('VLRICMS').AsCurrency:=(DMServ.TPOrd.FieldByName('BASEICMS').AsCurrency*DMENTRADA.TItemPC.FieldByName('ALIQICMS').AsCurrency)/100;
           DMENTRADA.TItemPC.FieldByName('REDUCBASEICMS').AsCurrency:=0;
           DMENTRADA.TItemPC.FieldByName('BASEICMSSUBS').AsCurrency:=0;
           DMENTRADA.TItemPC.FieldByName('VLRICMSSUBS').AsCurrency:=0;
           DMENTRADA.TItemPC.FieldByName('ALIQIPI').AsCurrency:=DMServ.TPOrd.FieldByName('ALIQIPI').AsCurrency;
           DMENTRADA.TItemPC.FieldByName('VLRIPI').AsCurrency:=(DMENTRADA.TItemPC.FieldByName('BASEICMS').AsCurrency*DMENTRADA.TItemPC.FieldByName('ALIQIPI').AsCurrency)/100;
           DMENTRADA.TItemPC.FieldByName('FRETE').AsCurrency:=0;
           DMENTRADA.TItemPC.FieldByName('EMBPROD').AsCurrency:=0;
           DMENTRADA.TItemPC.FieldByName('COD_PEDCOMPRA').AsInteger:=XCod_PedCompra;
           DMENTRADA.TItemPC.FieldByName('DATA').AsString:=DateToStr(Date());
           DMENTRADA.TItemPC.FieldByName('QTDEST').AsCurrency:=DMESTOQUE.TSlave.FieldByName('QTD').AsCurrency;
           DMENTRADA.TItemPC.FieldByName('COD_ESTOQUE').AsInteger:=DMServ.TPOrd.FieldByName('COD_ESTOQUE').AsInteger;
           DMENTRADA.TItemPC.FieldByName('QTDEPROD').AsCurrency:=DMESTOQUE.TSlave.FieldByName('QTD').AsCurrency;
           DMENTRADA.TItemPC.FieldByName('DESCPRO').AsCurrency:=0;
           DMENTRADA.TItemPC.FieldByName('VALUNIT').AsCurrency:=(DMESTOQUE.TSlave.FieldByName('TOTAL').AsCurrency/DMESTOQUE.TSlave.FieldByName('QTD').AsCurrency);
           DMENTRADA.TItemPC.FieldByName('VALORTOTAL').AsCurrency:=DMESTOQUE.TSlave.FieldByName('VLRUNIT').AsCurrency*DMESTOQUE.TSlave.FieldByName('QTD').AsCurrency;
           XTotPedDev:=XTotPedDev+DMENTRADA.TItemPC.FieldByName('VALORTOTAL').AsCurrency;
           DMENTRADA.TItemPC.Post;

           //ATUALIZA ESTOQUE
           DMESTOQUE.TEstoque.Edit;
           DMEstoque.TEstoque.FieldByName('ESTFISICO').AsCurrency:=DMEstoque.TEstoque.FieldByName('ESTFISICO').AsCurrency + DMESTOQUE.TSlave.FieldByName('QTD').AsCurrency;
           DMEstoque.TEstoque.FieldByName('ATUALIZAR').AsString:='1';
           DMESTOQUE.TEstoque.Post;
           DMESTOQUE.TransacEstoque.CommitRetaining;

       	End;
        // - 21/05/2009: proxima ocorrencia
        DMESTOQUE.TSlave.Next;
		 End;

     DMENTRADA.TPedC.Edit;
     DMENTRADA.TPedC.FieldByName('VALOR').AsCurrency := XTotPedDev;
     DMENTRADA.TPedC.Post;

     // - 21/05/2009: verifica docFis
      VerificaDocFisDevolucao;

     If CancelaFinac Then
        Result := True
     Else
        Result := False;

  Except
        Result := False;
  End;
End;

Procedure TFOrdem.VerificaDocFisDevolucao;
var
  XCOD_FISCAL :Integer;
Begin

   //VERIFICA SE O PEDIDO JÁ POSSUE DOC FI
   	If FiltraTabela(DMServ.TFiscOrd, 'DOCFISORD', 'COD_ORDEM', IntToStr(XCOD_ORDEM), '')=True
   	Then Begin    
       	//INSERE FISCAL EM PEDIDO DE COMPRA
	      XCOD_FISCAL:=InserReg(DMENTRADA.TFiscPC, 'DOCFIS', 'COD_DOCFISC');
        FiltraTabela(DMESTOQUE.TCFOP, 'CFOP', 'COD_CFOP', DMMACS.TLoja.FieldByName('COD_CFOPDEV').AsString, '');
       	DMENTRADA.TFiscPC.FieldByName('COD_PEDIDO').AsInteger:=XCod_PedCompra;
       	DMENTRADA.TFiscPC.FieldByName('COD_DOCFISC').AsInteger:=XCOD_FISCAL;
       	DMENTRADA.TFiscPC.FieldByName('COD_CFOP').AsInteger:=DMESTOQUE.TCFOP.FieldByName('COD_CFOP').AsInteger;
       	DMENTRADA.TFiscPC.FieldByName('DTEMISSAO').AsDateTime:=DMServ.TFiscOrd.FieldByName('DTEMISSAO').AsDateTime;
       	DMENTRADA.TFiscPC.FieldByName('DTENTSAID').AsDateTime:=DMServ.TFiscOrd.FieldByName('DTENTSAID').AsDateTime;
       	DMENTRADA.TFiscPC.FieldByName('HORASAID').AsDateTime:=DMServ.TFiscOrd.FieldByName('HORASAID').AsDateTime;
       	DMENTRADA.TFiscPC.FieldByName('BASEICMS').AsCurrency:=DMServ.TFiscOrd.FieldByName('BASEICMS').AsCurrency;
       	DMENTRADA.TFiscPC.FieldByName('VLRICMS').AsCurrency:=DMServ.TFiscOrd.FieldByName('VLRICMS').AsCurrency;
       	DMENTRADA.TFiscPC.FieldByName('BASCALSUBS').AsCurrency:=DMServ.TFiscOrd.FieldByName('BASCALSUBS').AsCurrency;
       	DMENTRADA.TFiscPC.FieldByName('VLRICMSUBS').AsCurrency:=DMServ.TFiscOrd.FieldByName('VLRICMSUBS').AsCurrency;
       	DMENTRADA.TFiscPC.FieldByName('VLRSEG').AsCurrency:=DMServ.TFiscOrd.FieldByName('VLRSEG').AsCurrency;
       	DMENTRADA.TFiscPC.FieldByName('VLRTOTIPI').AsCurrency:=DMServ.TFiscOrd.FieldByName('VLRTOTIPI').AsCurrency;
       	DMENTRADA.TFiscPC.FieldByName('VLROUTRASDESP').AsCurrency:=DMServ.TFiscOrd.FieldByName('VLROUTRASDESP').AsCurrency;
       	DMENTRADA.TFiscPC.FieldByName('VLRTOTPROD').AsCurrency:=DMESTOQUE.Alx.FieldByName('VALOR').AsCurrency;
       	DMENTRADA.TFiscPC.FieldByName('VLRTOTDOCNF').AsCurrency:=DMESTOQUE.Alx.FieldByName('VALOR').AsCurrency;
       	DMENTRADA.TFiscPC.FieldByName('VLRISENTOICMS').AsCurrency:=DMServ.TFiscOrd.FieldByName('VLRISENTOICMS').AsCurrency;
       	DMENTRADA.TFiscPC.FieldByName('SERIE').AsString:='1';
       	DMENTRADA.TFiscPC.FieldByName('MODELONF').AsString:=DMMACS.TLoja.FieldByName('MODELONF').AsString;
       	DMENTRADA.TFiscPC.FieldByName('OBS').AsString:='Dev. NF: '+DMServ.TFiscOrd.FieldByName('numdocfis').AsString+' - '+DMServ.TFiscOrd.FieldByName('OBS').AsString;
       	DMENTRADA.TFiscPC.FieldByName('FRETECOMP').AsString:=DMServ.TFiscOrd.FieldByName('FRETECOMP').AsString;
       	DMENTRADA.TFiscPC.FieldByName('VLRFRETE').AsCurrency:=DMServ.TFiscOrd.FieldByName('VLRFRETE').AsCurrency;
       	DMENTRADA.TFiscPC.FieldByName('COD_TRANSP').AsCurrency:=DMServ.TFiscOrd.FieldByName('COD_TRANSP').AsCurrency;
       	DMENTRADA.TFiscPC.FieldByName('QUANTFRETE').AsCurrency:=DMServ.TFiscOrd.FieldByName('QUANTFRETE').AsCurrency;
       	DMENTRADA.TFiscPC.FieldByName('ESPECIEFRETE').AsString:=DMServ.TFiscOrd.FieldByName('ESPECIEFRETE').AsString;
       	DMENTRADA.TFiscPC.FieldByName('MARCAFRETE').AsString:=DMServ.TFiscOrd.FieldByName('MARCAFRETE').AsString;
       	DMENTRADA.TFiscPC.FieldByName('NUMCONHEC').AsString:=DMServ.TFiscOrd.FieldByName('NUMCONHEC').AsString;
       	DMENTRADA.TFiscPC.FieldByName('PLACA').AsString:=DMServ.TFiscOrd.FieldByName('PLACA').AsString;
       	DMENTRADA.TFiscPC.FieldByName('UFPLACA').AsString:=DMServ.TFiscOrd.FieldByName('UFPLACA').AsString;
       	DMENTRADA.TFiscPC.FieldByName('PESOBRUTO').AsCurrency:=DMServ.TFiscOrd.FieldByName('PESOBRUTO').AsCurrency;
       	DMENTRADA.TFiscPC.FieldByName('PESOLIQ').AsCurrency:=DMServ.TFiscOrd.FieldByName('PESOLIQ').AsCurrency;
       	DMENTRADA.TFiscPC.FieldByName('FRETECONTA').AsString:=DMServ.TFiscOrd.FieldByName('FRETECONTA').AsString;
			  DMENTRADA.TFiscPC.Post;
        
       End;

End;

//Função utilizada para baixar contas do pedido p/ poder haver devolução total
Function TFOrdem.CancelaFinac:Boolean;
Begin

   Result:=True;

	//filtra loja para capturar as configurações
   FiltraTabela(DMMACS.TLoja, 'LOJA', 'COD_LOJA', FMenu.LCODLOJA.Caption, '');

   //Apaga Lancamentos de Comissão
   Try
      // DEVOLUÇÃO TOTAL DO PEDIDO TEM OS REGISTROS DA TABELA COMISSAO APAGADOS
       DMFINANC.TComis.Close;
       DMFINANC.TComis.SQL.Clear;
       DMFINANC.TComis.SQL.Add('delete from comissao where (comissao.cod_gerador = :codigo) and (comissao.gerador = ' + #39 + 'ORDEM' + #39 + ')');
       DMFINANC.TComis.ParamByName('CODIGO').AsInteger := XCOD_ORDEM;
       DMFINANC.TComis.ExecSQL;
       DMFINANC.Transaction.CommitRetaining;
   Except
		   Mensagem('NOTIFICAÇÃO AO USUÁRIO', 'Ocorreu um problema ao tentar apagar as comissões referentes ao pedido! As informação serão mantidas.', '', 1, 1, False, 'a');
       Result:=False;
       Exit;
   End;

   // - 21/05/2009: FILTRA CLIENTE E FORMA DE PAGAMENTO DA ORDEM DE SERVIÇO
   FiltraTabela(DMPESSOA.WCliente, 'VWCLIENTE', 'COD_CLIENTE', DMServ.TOrd.FieldByName('COD_CLIENTE').AsString, '');
   FiltraTabela(DMFINANC.TFormPag, 'FORMPAG', 'COD_FORMPAG', DMServ.TOrd.FieldByName('COD_FORMPAG').AsString, '');

   Try

       //VERIRIFA SE A VENDA N FOI À VISTA
       If DMFINANC.TFormPag.FieldByName('DESCRICAO').AsString <> 'À VISTA'
       Then Begin 
         //FILTRA CTA RECEBER PARA LOCALIZAR LANÇAMENTOS
         If FiltraTabela(DMCONTA.TCtaR, 'CTARECEBER', 'COD_CTARECEBER', '', ' (TIPOGERADOR = '+#39+'ORD'+#39+') AND (COD_GERADOR='+IntToStr(XCOD_ORDEM)+')')=True
         Then Begin
           //se foi encontrado alguma conta
              //FILTRA PARCELAS
              If FiltraTabela(DMCONTA.TParcCR, 'PARCELACR', 'COD_CTARECEBER', DMCONTA.TCtaR.FieldByName('COD_CTARECEBER').AsString, '')=True
              Then Begin
                //se foi encontrado alguma conta
                   //PARA CADA PARCELA VERIFICA SE ESTA FECHADA
                   DMCONTA.TParcCR.First;
                   While not DMCONTA.TParcCR.Eof do
                   Begin
                       If DMCONTA.TParcCR.FieldByName('FECH').AsString<>'S'
                       Then Begin
                          //SE DEVE SER MOVIMENTADO EM BANCO
                          If DMCONTA.TParcCR.FieldByName('COBRANCA').AsString='Cheque'
                          Then Begin
                                //se foi encontrado alguma MOVIMENTAÇÃO REALIZA UM ESTORNO
                                 If LanBanco(DMCONTA.TCtaR.FieldByName('COD_PLNCTA').AsInteger, DMMACS.TLoja.FieldByName('PLNCTA_SAICXCORR').AsInteger, 'Devol. Venda O.S.: '+DMServ.TOrd.FieldByName('NUMERO').AsString+'Parc. '+ DMCONTA.TParcCR.FieldByName('NUMPARC').AsString+' Cli. '+DMPESSOA.WCliente.FieldByName('NOME').AsString, DMCONTA.TParcCR.FieldByName('valor').AsCurrency, 'TORD', XCOD_ORDEM, 'ENTRADA', StrToInt(FMenu.LCODUSUARIO.Caption), 'DEP. AUTO', 'S', DateToStr(Date), '', DMBANCO.TMovBanco.FieldByName('valor').AsString, '1', DMBANCO.TMovBanco.FieldByName('DTREF').AsString)=True
                                 Then Begin
                                    Result:=True;
                                    DMCONTA.TParcCP.edit;
                                    DMCONTA.TParcCP.FieldByName('DTDEBITO').AsDateTime:=Date();
                                    DMCONTA.TParcCP.FieldByName('VALORPG').AsCurrency:=DMCONTA.TParcCP.FieldByName('VALOR').AsCurrency;
                                    DMCONTA.TParcCP.FieldByName('FECH').AsString:='S';
                                    DMCONTA.TParcCP.Post;
                                 End
                                 Else Begin
                                    Result:=False;
                                 End;
                           End;
                          //SE DEVE SER MOVIMENTADO EM CAIXA
                          If DMCONTA.TParcCR.FieldByName('COBRANCA').AsString='Carteira'
                          Then Begin
                            //se foi encontrado alguma MOVIMENTAÇÃO REALIZA UM ESTORNO
                                If LanCaixa(-1, DateToStr(Date()), DMCONTA.TCtaR.FieldByName('COD_PLNCTA').AsInteger, 'Devol. Venda O.S.: '+DMServ.TOrd.FieldByName('NUMERO').AsString+'Parc. '+ DMCONTA.TParcCR.FieldByName('NUMPARC').AsString+' Cli. '+DMPESSOA.WCliente.FieldByName('NOME').AsString, DMCONTA.TParcCR.FieldByName('VALOR').AsCurrency, 'TORD', XCOD_ORDEM, 'Carteira', 'E', 'DEV'+DMServ.TOrd.FieldByName('NUMERO').AsString, Date(), '1')=True
                                Then Begin
                                    MDO.Transac.CommitRetaining;
                                    Result:=True;
                                    DMCONTA.TParcCR.edit;
                                    DMCONTA.TParcCR.FieldByName('DTDEBITO').AsDateTime:=Date();
                                    DMCONTA.TParcCR.FieldByName('VALORPG').AsCurrency:=DMCONTA.TParcCR.FieldByName('VALOR').AsCurrency;
                                    DMCONTA.TParcCR.FieldByName('FECH').AsString:='S';
                                    DMCONTA.TParcCR.Post;
                                 End
                                 Else Begin
                                    Result:=False;
                                 End;
                           End;
                        End;
                        // - 21/05/2009: proxima ocorrencia
                       DMCONTA.TParcCR.Next;
                    End;
               End;
               DMCONTA.IBT.CommitRetaining;
            End;
       End;
   Except
       Result := False;
   End;
End;


// ATUALIZA O VALOR DA COMISSÃO APOS FAZER A DEVOLUÇÃO PARCIAL
Procedure TFOrdem.AtualizaComissao;
var
  XVLR_TOTALCOMISSAO :Real;
begin
  // se tiver um funcionario selecionado
   If DMSERV.TOrd.FieldByName('COD_VENDEDOR').AsInteger > 0
   Then Begin
       FiltraTabela(DMFINANC.TFormPag, 'FORMPAG', 'COD_FORMPAG', DMServ.TOrd.FieldByName('COD_FORMPAG').AsString, '');
       DMESTOQUE.TSlave.First;
       While not DMESTOQUE.TSlave.Eof do
       Begin
            FiltraTabela(DMSERV.TPOrd, 'ITPRODORD', 'COD_ITPRODORD', DMESTOQUE.TSlave.FieldByName('COD_ITPRODORD').AsString, '');
            // filtra estoque para buscar os valores das porcentagens das comissoes
           FiltraTabela(DMESTOQUE.Alx4,'ESTOQUE','COD_ESTOQUE',DMSERV.TPOrd.FieldByName('COD_ESTOQUE').AsString,'');
           DMSERV.TPOrd.Edit;
           // se na loja esta configurado p buscar preço somente a prazo
           If DMMACS.TLoja.FieldByName('TIPOVENDA').AsString = '1'
           Then Begin
               // se na loja esta configurado p buscar do funcionario
               If (DMMACS.TLoja.FieldByName('COMISSPRODCADPROD').AsString = '0')
               Then Begin
                   // DADOS DA TABELA FUNCARGO QUE SERÃO UTILIZADAS PARA OS CALCULOS ABAIXO
                   FiltraTabela(DMPESSOA.TFunCargo,'FUNCARGO','COD_FUNCIONARIO',DMSERV.TOrd.FieldByName('COD_VENDEDOR').AsString,'');

                   DMPESSOA.TFunCargo.Last;//VAI P/ O ULTIMO CARGO CADASTRADO

                   //FORMA DE PAGAMENTO À PRAZO É CALCULA COMISSÃO REFERENTE A VISTA
                   DMSERV.TPOrd.FieldByName('COMISSAO').AsCurrency := (DMESTOQUE.TSlave.FieldByName('TOTAL').AsCurrency*DMPESSOA.TFunCargo.FieldByName('COMISSAO_VPPRO').AsCurrency)/100;
               End
               Else Begin
                   //FORMA DE PAGAMENTO À PRAZO É CALCULA COMISSÃO REFERENTE A PRAZO
                   DMSERV.TPOrd.FieldByName('COMISSAO').AsCurrency := (DMESTOQUE.TSlave.FieldByName('TOTAL').AsCurrency * DMESTOQUE.Alx4.FieldByName('CVPPROVAR').AsCurrency) /100;
               End;
           End
           Else Begin
               // se na loja esta configurado p buscar do funcionario
               If (DMMACS.TLoja.FieldByName('COMISSPRODCADPROD').AsString = '0')
               Then Begin
                   // DADOS DA TABELA FUNCARGO QUE SERÃO UTILIZADAS PARA OS CALCULOS ABAIXO
                   FiltraTabela(DMPESSOA.TFunCargo,'FUNCARGO','COD_FUNCIONARIO',DMSERV.TOrd.FieldByName('COD_VENDEDOR').AsString,'');

                   DMPESSOA.TFunCargo.Last;//VAI P/ O ULTIMO CARGO CADASTRADO  
                   // se a forma de pagamento for a vista
                   If DMFINANC.TFormPag.FieldByName('DESCRICAO').AsString = 'À VISTA'
                   Then Begin
                       //FORMA DE PAGAMENTO À PRAZO É CALCULA COMISSÃO REFERENTE A VISTA
                       DMSERV.TPOrd.FieldByName('COMISSAO').AsCurrency := (DMESTOQUE.TSlave.FieldByName('TOTAL').AsCurrency*DMPESSOA.TFunCargo.FieldByName('COMISSAO_VVPRO').AsCurrency)/100;
                   End
                   Else Begin
                       //FORMA DE PAGAMENTO À PRAZO É CALCULA COMISSÃO REFERENTE A PRAZO
                       DMSERV.TPOrd.FieldByName('COMISSAO').AsCurrency:=(DMESTOQUE.TSlave.FieldByName('TOTAL').AsCurrency*DMPESSOA.TFunCargo.FieldByName('COMISSAO_VPPRO').AsCurrency)/100;
                   End;
               End
               Else Begin
                   // sse a forma de pagamento for a vista
                   If DMFINANC.TFormPag.FieldByName('DESCRICAO').AsString = 'À VISTA'
                   Then Begin
                       //FORMA DE PAGAMENTO À PRAZO É CALCULA COMISSÃO REFERENTE A VISTA
                       DMSERV.TPOrd.FieldByName('COMISSAO').AsCurrency := (DMESTOQUE.TSlave.FieldByName('TOTAL').AsCurrency * DMESTOQUE.Alx4.FieldByName('CVVPROVAR').AsCurrency) /100;
                   End
                   Else Begin
                       //FORMA DE PAGAMENTO À PRAZO É CALCULA COMISSÃO REFERENTE A PRAZO
                       DMSERV.TPOrd.FieldByName('COMISSAO').AsCurrency := (DMESTOQUE.TSlave.FieldByName('TOTAL').AsCurrency * DMESTOQUE.Alx4.FieldByName('CVPPROVAR').AsCurrency) /100;
                   End;
               End;
           End;
           XVLR_TOTALCOMISSAO := XVLR_TOTALCOMISSAO + DMSERV.TPOrd.FieldByName('COMISSAO').AsCurrency;
            DMSERV.TPOrd.Post;
            DMESTOQUE.TSlave.Next;
        End;
        // - 21/05/2009: atualiza comissao da ordem
        DMSERV.TOrd.Edit;
        DMSERV.TOrd.FieldByName('COMISSAO').AsCurrency := XVLR_TOTALCOMISSAO;
        DMSERV.TOrd.Post;
   End;

end;

//Paulo 07/06/2011: Função utilizada para retornar o numero corrente para o pedido e incremantar na empresa
Function TFOrdem.RetornaNumOrdem: Integer;
Var
	XFlag: Integer;
Begin
   Result:=-1;
   XFlag:=-1;
   Try
      //FILTRA EMPRESA PARA IMPRIMIR CABEÇALHO
      FiltraTabela(DMMACS.TEmpresa, 'EMPRESA', 'COD_EMPRESA', FMenu.LCODEMPRESA.Caption, '');
      //Recebe o Código de vendas
      If DMMacs.TEmpresa.FieldByName('PROX_OS').AsString='' Then
      		XNumOrdem:='1'
      Else
         	XNumOrdem:=DMMacs.TEmpresa.FieldByName('PROX_OS').AsString;

      While XFlag=-1 do
      Begin
      		If FiltraTabela(DMMACS.TALX, 'VWORDEM', 'numero', XNumOrdem, '')=True
           Then Begin
               XNumOrdem:=IntToStr((StrToInt(XNumOrdem)+1));
           End
           Else Begin
               XFlag:=1;
           End;
      End;
      //Incrementa o codigo de vendas em Empresa
      DMMACS.TEmpresa.Edit;
      DMMacs.TEmpresa.FieldByName('PROX_OS').AsString:=IntToStr(StrToInt(XNumOrdem)+1);
      DMMACS.TEmpresa.Post;
      //Atualiza e confirma os Dados de empresa
      try
           DMMacs.Transaction.CommitRetaining;
      except
           DMMacs.Transaction.RollbackRetaining;
      end;
      Result:=StrToInt(XNumOrdem);
   Except
      Result:=StrToInt(XNumOrdem);
   End;
End;

procedure TFOrdem.BtnSelecionaOrdemClick(Sender: TObject);
begin
  inherited;
   FMenu.SelectedForm     := True;
   FMenu.XCodOrdemVinculo := DMSERV.WOrdem.FieldByName('COD_ORDEM').AsInteger;
   Close;
end;

procedure TFOrdem.EDCodFabEnter(Sender: TObject);
begin
  inherited;
	DMESTOQUE.WSimilar.Close;
   DMESTOQUE.WSimilar.SQL.Clear;
   DMESTOQUE.WSimilar.SQL.Add('SELECT * FROM VWSIMILAR WHERE (VWSIMILAR.ATIVO =' + #39 + 'S' + #39 + ') ORDER BY DESCRICAO');
   DMESTOQUE.WSimilar.Open;
end;

procedure TFOrdem.EDCodFabKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    Inherited;
    PListaProdutos.Height:=172;
    PListaProdutos.Top:=51;
    PListaProdutos.Left:=176;
	 PListaProdutos.Visible := True;
    PListaProdutos.BringToFront;

   //Edmar - 15/08/2014 - Se foi informado uma letra, filtra a lista
   if Length(EDCodFab.Text) = 1 then
      EDCodFabEnter(sender);
      
   if (Key = VK_ESCAPE) OR (EDCodFab.Text = '') then
   begin
      EDCodFabEnter(sender);

      PListaProdutos.Visible := False;
      PListaProdutos.SendToBack;
      EDCodFab.Text := '';
      lPesquisa.Caption := 'Pesquisa:';

      LimpaLabelsPROD;

      Exit;
   End;

   If Key = Vk_Return then
   begin
      DMESTOQUE.WSimilar.Close;
      DMESTOQUE.WSimilar.SQL.Clear;
      DMESTOQUE.WSimilar.SQL.Add('select * from vwsimilar where (vwsimilar.cod_estoque=:Codigo) AND  (VWSIMILAR.ATIVO=' + #39 + 'S' + #39 + ')');
      DMESTOQUE.WSimilar.ParamByName('CODIGO').AsString := XCodTmpEstoque;
      DMESTOQUE.WSimilar.Open;

      If Not DMESTOQUE.WSimilar.IsEmpty then
  	   begin
      		EscreveLabelsPROD;
      		PListaProdutos.Visible := False;
	        PListaProdutos.SendToBack;           
      		EDCodFab.Text := '';
      		EDQuantidade.Text := '1,00';
      end
      else
      		MessageDlg('ATENÇÃO!' + #13 + #10 + 'O produto selecionado não foi escrito', mtWarning, [mbOK], 0);

      EDCodFabEnter(sender);
      Exit;
   End;

    If Key = Vk_Down then
    begin
        DMESTOQUE.WSimilar.Next;
        XCodTmpEstoque := DBGrid8.Columns[0].Field.Text;

        Exit;
    End;

    if Key = Vk_UP then
    begin
        DMESTOQUE.WSimilar.Prior;
        XCodTmpEstoque := DBGrid8.Columns[0].Field.Text;

        Exit;
    end;
    
 	if DMESTOQUE.WSimilar.Locate('DESCRICAO', EDCodFab.Text, [loCaseInsensitive, loPartialKey]) then
   begin
   	if xPesquisaDesc = false then
       begin
           DMESTOQUE.WSimilar.Close;
           DMESTOQUE.WSimilar.SQL.Clear;
           DMESTOQUE.WSimilar.SQL.Add('SELECT * FROM VWSIMILAR WHERE (VWSIMILAR.ATIVO =' + #39 + 'S' + #39 + ') ORDER BY DESCRICAO');
           DMESTOQUE.WSimilar.Open;

          	xPesquisaDesc := True;
           xPesquisaCtrlInt := False;
           xPesquisaCodFabr := False;
       end;

       DMESTOQUE.WSimilar.Locate('DESCRICAO', EDCodFab.Text, [loCaseInsensitive, loPartialKey]);

   	lPesquisa.Caption := 'Descrição:';
		XCodTmpEstoque := DBGrid8.Columns[0].Field.Text;

       Exit;
   end;

   if DMESTOQUE.WSimilar.Locate('CODFABRICANTE', EDCodFab.Text, [loCaseInsensitive, loPartialKey]) then
   begin
   	if xPesquisaCodFabr = false then
       begin
           DMESTOQUE.WSimilar.Close;
           DMESTOQUE.WSimilar.SQL.Clear;
           DMESTOQUE.WSimilar.SQL.Add('SELECT * FROM VWSIMILAR WHERE (VWSIMILAR.ATIVO =' + #39 + 'S' + #39 + ') ORDER BY CODFABRICANTE');
           DMESTOQUE.WSimilar.Open;

       	xPesquisaCodFabr := True;
           xPesquisaDesc := False;
           xPesquisaCtrlInt := False;
       end;

       DMESTOQUE.WSimilar.Locate('CODFABRICANTE', EDCodFab.Text, [loCaseInsensitive, loPartialKey]);

       lPesquisa.Caption := 'Cod. Fabricante:';
       XCodTmpEstoque := DBGrid8.Columns[0].Field.Text;

       Exit;
   end;

   if DMESTOQUE.WSimilar.Locate('CONTRINT', EDCodFab.Text, [loCaseInsensitive, loPartialKey]) then
   begin
   	if xPesquisaCtrlInt = false then
       begin
           DMESTOQUE.WSimilar.Close;
           DMESTOQUE.WSimilar.SQL.Clear;
           DMESTOQUE.WSimilar.SQL.Add('SELECT * FROM VWSIMILAR WHERE (VWSIMILAR.ATIVO =' + #39 + 'S' + #39 + ') ORDER BY CONTRINT');
           DMESTOQUE.WSimilar.Open;       

       	xPesquisaCtrlInt := True;
           xPesquisaCodFabr := False;
           xPesquisaDesc := False;
       end;

       DMESTOQUE.WSimilar.Locate('CONTRINT', EDCodFab.Text, [loCaseInsensitive, loPartialKey]);

       lPesquisa.Caption := 'Ctrl. Interno:';
       XCodTmpEstoque := DBGrid8.Columns[0].Field.Text;

       Exit;
   end;
   
   XCodTmpEstoque := DBGrid8.Columns[0].Field.Text;
   lPesquisa.Caption := 'Fora de Pesquisa';

end;

procedure TFOrdem.DBGrid8CellClick(Column: TColumn);
begin
  inherited;
    XCodTmpEstoque := DBGrid8.Columns[0].Field.Text;
end;

procedure TFOrdem.DBGrid8DblClick(Sender: TObject);
begin
  inherited;
   //Caso este codigo seja alterado, o mesmo codigo em edcodfabkeyup no bloco de tratamento de para ENTER (RETURN) tbm deve ser alterado
   //Refiltra a tabela vwsimilar de acordo com registro escolhido
    DMESTOQUE.WSimilar.Close;
    DMESTOQUE.WSimilar.SQL.Clear;
    DMESTOQUE.WSimilar.SQL.Add('select * from vwsimilar where vwsimilar.cod_estoque=:Codigo');
    DMESTOQUE.WSimilar.ParamByName('CODIGO').AsString := XCodTmpEstoque;
    DMESTOQUE.WSimilar.Open;
    If Not DMESTOQUE.WSimilar.IsEmpty
        Then Begin
        EscreveLabelsPROD;
        PListaProdutos.Visible := False;
        EDCodFab.Text := '';
        EDQuantidade.Text := '1,00';
        EDQuantidade.SetFocus;
    End
    Else Begin
        MessageDlg('ATENÇÃO!' + #13 + #10 + 'O produto selecionado não foi escrito', mtWarning, [mbOK], 0);
    End;

    EDCodFabEnter(sender);
end;

procedure TFOrdem.DBGrid8KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
   If Key = Vk_Return then
		DBGrid8DblClick(sender);
end;

procedure TFOrdem.Panel2Enter(Sender: TObject);
begin
  inherited;
  //VERIFICA QUAL COMPONENETE DEVE RECEBER O FOCUS
  If DMMacs.Tloja.FieldByName('FOCUITEMPED').AsString = 'CB' Then
      	EDCodBarra.SetFocus
  Else
       EDCodFab.SetFocus;

end;

End.

