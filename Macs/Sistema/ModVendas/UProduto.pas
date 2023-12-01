unit UProduto;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  UCadPadrao, TFlatHintUnit, Grids, DBGrids, StdCtrls,
  TFlatEditUnit, Buttons, jpeg, ExtCtrls, Mask, ColorMaskEdit, EditFloat,
  ColorEditFloat, DB, TFlatRadioButtonUnit, FashionPanel, TFlatCheckBoxUnit,
  TFlatTabControlUnit, DBCtrls, DBColorEdit, DBColorComboBox, Menus,
  UFrmBusca, TFlatButtonUnit, DrLabel, ComCtrls, RpDefine, RpBase, RpSystem,
  FR_Class, FR_DSet, FR_DBSet, JLLabel, frxClass, frxDBSet;

type
  TFProduto = class(TFCadPadrao)
    GBSIMILAR: TGroupBox;
    DBGrid1: TDBGrid;
    EDSimilar: TEdit;
    BtnSelecionar2: TBitBtn;
    PMESTOQUE: TPopupMenu;
    PMCadastro: TPopupMenu;
    CadastrarNovoProduto1: TMenuItem;
    CadastrarumProdutoSimilar1: TMenuItem;
    EtCdBarra1: TMenuItem;
    DBMCORES: TDBMemo;
    MEscolheProc: TPopupMenu;
    ControleInterno1: TMenuItem;
    CdFab1: TMenuItem;
    C1: TMenuItem;
    EtCdBarraQtd1: TMenuItem;
    EDCodFab: TColorMaskEdit;
    Label3: TLabel;
    Label4: TLabel;
    Label15: TLabel;
    EdCodBarra: TMaskEdit;
    Label77: TLabel;
    Panel6: TPanel;
    Label113: TLabel;
    DBText1: TDBText;
    PMSubProduto: TPopupMenu;
    MarcarDesmarcar1: TMenuItem;
    PAguarde: TPanel;
    ProgressBar1: TProgressBar;
    PPromocao: TBitBtn;
    EtMarcados1: TMenuItem;
    LF11: TLabel;
    PFchTec: TPanel;
    Shape1: TShape;
    GroupBox8: TGroupBox;
    EdCodMat: TEdit;
    EdDescMat: TEdit;
    EdPorcMat: TEdit;
    BtInserir: TBitBtn;
    BtExcluiMat: TBitBtn;
    Label132: TLabel;
    Label133: TLabel;
    Label134: TLabel;
    GroupBox11: TGroupBox;
    DBGFichTec: TDBGrid;
    PLocMat: TPanel;
    DBMatP: TDBGrid;
    CBProdutoConsumo: TCheckBox;
    CbEstoquePermanente: TCheckBox;
    PespecificacaoProduto: TPanel;
    GroupBox12: TGroupBox;
    Label135: TLabel;
    Label136: TLabel;
    Label56: TLabel;
    Label60: TLabel;
    Label14: TLabel;
    Label63: TLabel;
    Label62: TLabel;
    Label111: TLabel;
    LDescSimilar: TLabel;
    LuzOpenST: TShape;
    Label10: TLabel;
    Label16: TLabel;
    Shape11: TShape;
    Label17: TLabel;
    Shape13: TShape;
    Label70: TLabel;
    Label59: TLabel;
    EDCODGRUPO: TEdit;
    DBGRUPO: TEdit;
    BtnSubGrupo: TBitBtn;
    DbSubGrupo: TEdit;
    EDCODSUBGRUPO: TEdit;
    DBCODINTERNO: TDBColorEdit;
    DbContrInt: TDBColorEdit;
    DBCODFABRICANTE: TDBColorEdit;
    DBColorEdit27: TDBColorEdit;
    DBColorEdit26: TDBColorEdit;
    DBColorEdit25: TDBColorEdit;
    DBDESCRICAOSIM: TDBColorEdit;
    BTNCST: TBitBtn;
    CodSitTrib: TEdit;
    DescSitTrib: TEdit;
    EdCodUnidadeCompra: TEdit;
    EdUnidadeCompra: TEdit;
    BtnUnidadeCompra: TBitBtn;
    EdCodUnidadeVenda: TEdit;
    EdUnidadeVenda: TEdit;
    BitBtn3: TBitBtn;
    DBColorEdit16: TDBColorEdit;
    dbcodbarra: TDBColorEdit;
    PcAdicionais: TPageControl;
    TabSheet1: TTabSheet;
    Label47: TLabel;
    Label105: TLabel;
    Label57: TLabel;
    Label54: TLabel;
    Label50: TLabel;
    Label69: TLabel;
    dbvalorunitario: TDBEdit;
    DBVlrUnitCompSD: TDBEdit;
    DBColorEdit1: TDBColorEdit;
    DBFrete: TDBColorEdit;
    DBLucrat: TDBColorEdit;
    GbPreco: TGroupBox;
    Label36: TLabel;
    Label35: TLabel;
    Label39: TLabel;
    Label31: TLabel;
    EdVlrVarejoVista: TColorEditFloat;
    EdVlrVarejoPrazo: TColorEditFloat;
    EdVlrAtacadoVista: TColorEditFloat;
    EdVlrAtacadoPrazo: TColorEditFloat;
    DbIndice: TDBColorEdit;
    PValores: TPanel;
    BtnDownLogoff: TSpeedButton;
    LDados: TLabel;
    Label11: TLabel;
    GroupBox5: TGroupBox;
    Label115: TLabel;
    Label116: TLabel;
    LvarejoVista: TLabel;
    Label117: TLabel;
    Label118: TLabel;
    Label120: TLabel;
    Label119: TLabel;
    LVarejoPrazo: TLabel;
    LAtacVista: TLabel;
    LAtacPrazo: TLabel;
    GroupBox7: TGroupBox;
    Label121: TLabel;
    Label122: TLabel;
    Label123: TLabel;
    Label126: TLabel;
    DBVlrVistVar: TDBText;
    DBVlrPrazoVar: TDBText;
    Label124: TLabel;
    Label125: TLabel;
    DBVlrVistAtac: TDBText;
    DBVlrPrazoAtac: TDBText;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    Label24: TLabel;
    Label28: TLabel;
    Label30: TLabel;
    Label29: TLabel;
    Label13: TLabel;
    Label68: TLabel;
    DBColorEdit15: TDBColorEdit;
    DBColorEdit14: TDBColorEdit;
    DBColorEdit21: TDBColorEdit;
    DBColorEdit20: TDBColorEdit;
    DBDtCad: TDBColorEdit;
    DBColorEdit33: TDBColorEdit;
    TabSheet4: TTabSheet;
    Label48: TLabel;
    Label51: TLabel;
    Label49: TLabel;
    Label52: TLabel;
    DBValRep: TDBColorEdit;
    DBCoefDiv: TDBColorEdit;
    DBCusMed: TDBColorEdit;
    DBValEst: TDBColorEdit;
    Panel3: TPanel;
    Label55: TLabel;
    Label76: TLabel;
    Label78: TLabel;
    Label79: TLabel;
    Label80: TLabel;
    Label81: TLabel;
    Label82: TLabel;
    Label83: TLabel;
    Label84: TLabel;
    Label6: TLabel;
    Label104: TLabel;
    Label9: TLabel;
    Label75: TLabel;
    EDIFED: TFloatEdit;
    EDIEST: TFloatEdit;
    EDCOMISS: TFloatEdit;
    EDOUTROS: TFloatEdit;
    EDLUCBRUTO: TFloatEdit;
    EDDESCIMP: TFloatEdit;
    EDDESCVALREP: TFloatEdit;
    EDLUCLIQ: TFloatEdit;
    EDLUCSDESC: TFloatEdit;
    EdLucReal: TFloatEdit;
    EdLucBonif: TFloatEdit;
    EdCustoTotal: TFloatEdit;
    TabSheet5: TTabSheet;
    Label19: TLabel;
    Label34: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    Label40: TLabel;
    Label41: TLabel;
    Label42: TLabel;
    DBComVarejo: TDBColorEdit;
    DBCOMPRAZOVAR: TDBColorEdit;
    DBCOMPRAZOATAC: TDBColorEdit;
    DBCOMVISTAATAC: TDBColorEdit;
    CBComissao: TCheckBox;
    TabSheet6: TTabSheet;
    TabSheet12: TTabSheet;
    Label103: TLabel;
    LTextoAuxProd: TLabel;
    Label61: TLabel;
    Label64: TLabel;
    Label72: TLabel;
    DBClassificacao: TDBColorComboBox;
    DBCor: TDBColorComboBox;
    DBColorEdit11: TDBColorEdit;
    DBColorEdit28: TDBColorEdit;
    DBColorComboBox2: TDBColorComboBox;
    Label18: TLabel;
    DBColorEdit3: TDBColorEdit;
    BtnGrupo: TBitBtn;
    DBDescVarejo: TDBColorEdit;
    DBACRECVAREJO: TDBColorEdit;
    DBACRECATAC: TDBColorEdit;
    DBDESCATAC: TDBColorEdit;
    BtnPPreco: TSpeedButton;
    EdCtrlInt: TEdit;
    EDProduto: TMaskEdit;
    LQtdItem: TLabel;
    PGrade: TPanel;
    BtnProduto: TBitBtn;
    DBDESPROD: TEdit;
    DBCODPRODUTO: TEdit;
    Label137: TLabel;
    Estoqueemlote1: TMenuItem;
    MatriaPrima1: TMenuItem;
    ProdutosFin: TMenuItem;
    TabSheet13: TTabSheet;
    DbGridContas: TDBGrid;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn4: TBitBtn;
    FSDSRel: TfrDBDataSet;
    FSRel: TfrReport;
    FSDSProdVend: TfrDBDataSet;
    FSRelProdVend: TfrReport;
    ProdutosparaVenda1: TMenuItem;
    PMContas: TPopupMenu;
    CustodoVeculo1: TMenuItem;
    DespesadeTodososVeculosfiltradopordata1: TMenuItem;
    AjustarPlanodecontas1: TMenuItem;
    BtAddCod: TBitBtn;
    PCodigos: TPanel;
    FashionPanel6: TFashionPanel;
    EdAddCodFabr: TEdit;
    BtnInsertProd: TBitBtn;
    BtnDeleteList: TBitBtn;
    DBGrid7: TDBGrid;
    Label2: TLabel;
    TabSheet14: TTabSheet;
    DetalhamentodeCustosporVeculo1: TMenuItem;
    frDBDataSet1: TfrDBDataSet;
    frDBEntradas: TfrDBDataSet;
    frDBSaidas: TfrDBDataSet;
    frCustoDetalhado: TfrReport;
    RotateLabel1: TRotateLabel;
    BitBtn5: TBitBtn;
    DGTabela: TStringGrid;
    RotateLabel2: TRotateLabel;
    DBColorEdit18: TDBColorEdit;
    btnnovafaixapreco: TBitBtn;
    PContEst: TPanel;
    lbquntEst: TLabel;
    lbQtdGrade: TLabel;
    LQtdItem2: TLabel;
    btnnovatabela: TBitBtn;
    PNovaTabela: TPanel;
    BtnTabelaFaixaPreco: TBitBtn;
    PAdicionaTabelaFaixa: TPanel;
    FashionPanel3: TFashionPanel;
    BtnAdicionaTabelaFaixa: TBitBtn;
    BitBtn12: TBitBtn;
    EdTabela_TabelaFaixa: TDBLookupComboBox;
    EdFaixa_TabelaFaixa: TDBLookupComboBox;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    EdPrecoTabelaFaixaPreco: TColorEditFloat;
    LTabelaSelecionada: TRotateLabel;
    FashionPanel2: TFashionPanel;
    EdNovaTabela: TEdit;
    BitBtn9: TBitBtn;
    BitBtn10: TBitBtn;
    LFaixaSelecionada: TRotateLabel;
    TabSheet15: TTabSheet;
    DBGrid8: TDBGrid;
    Label23: TLabel;
    EdPesquisaAcessorio: TEdit;
    LAcessorioPesquisado: TLabel;
    Label25: TLabel;
    EdQuantAcessorio: TFloatEdit;
    BitBtn6: TBitBtn;
    BitBtn13: TBitBtn;
    cbInativaProd: TCheckBox;
    RGFiltro: TRadioGroup;
    lbProdMarcados: TLabel;
    PNovaFaixaPreco: TPanel;
    FashionPanel1: TFashionPanel;
    Label26: TLabel;
    EdNovaFaixaPreco: TEdit;
    BitBtn7: TBitBtn;
    BitBtn8: TBitBtn;
    EdQuantDias: TFloatEdit;
    BitBtn14: TBitBtn;
    BitBtn15: TBitBtn;
    PEditaCelula: TPanel;
    FPEditaCelula: TFashionPanel;
    LEditaDescricao: TLabel;
    EdEditaDescricao: TEdit;
    BtnEditaCelula: TBitBtn;
    BitBtn17: TBitBtn;
    EdEditaQuantidade: TFloatEdit;
    BitBtn11: TBitBtn;
    PListaAcessorios: TPanel;
    DBGListaAcessorios: TDBGrid;
    Label32: TLabel;
    DBColorEdit4: TDBColorEdit;
    Label33: TLabel;
    EdVlrIndustriaVista: TColorEditFloat;
    DBDESCInd: TDBColorEdit;
    EdVlrIndustriaPrazo: TColorEditFloat;
    DBACRECIND: TDBColorEdit;
    lbVlrSeguranca: TLabel;
    pVlrSeguranca: TPanel;
    DBColorEdit13: TDBColorEdit;
    DBColorEdit12: TDBColorEdit;
    Label8: TLabel;
    Label7: TLabel;
    Label1: TLabel;
    btnFechaPVlrSeg: TSpeedButton;
    btnOkVlrSeg: TSpeedButton;
    cbCtrlDesgaste: TCheckBox;
    cbCtrlHora: TCheckBox;
    SolicitarCompra: TMenuItem;
    DBColorEdit5: TDBColorEdit;
    Label43: TLabel;
    BtnSolicitaCompra: TBitBtn;
    cbComponente: TCheckBox;
    btnFichaTecnica: TBitBtn;
    FichaTcnica1: TMenuItem;
    frxRelatorioProduto: TfrxReport;
    frxProdFichaTecnica: TfrxDBDataset;
    frxItensFichaTecnica: TfrxDBDataset;
    frxInfoEmpresa: TfrxDBDataset;
    AtualizarCusto1: TMenuItem;
    CriarCpiadesteItem1: TMenuItem;
    HistricodeVendas1: TMenuItem;
    Relatriosdeprodutosecompradores1: TMenuItem;
    LF10: TLabel;
    cbAcessorio: TCheckBox;
    Button1: TBitBtn;
    Label45: TLabel;
    edCodFornec: TEdit;
    Label46: TLabel;
    lbNomeFornecedor: TLabel;
    btnFornecedor: TBitBtn;
    cbVlrLocacao: TCheckBox;
    Label65: TLabel;
    EdQtdEmb: TEdit;
    btnhelp: TBitBtn;
    ProdutoscomNCMsinativos1: TMenuItem;
    DBColorEdit9: TDBColorEdit;
    Label89: TLabel;
    Label128: TLabel;
    DBIPI: TDBColorEdit;
    Etiquetas1: TMenuItem;
    Deacordocomquantidadeemestoque1: TMenuItem;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    eladeFiltrosparaetiquetas1: TMenuItem;
    Button2: TButton;
    Button3: TButton;
    DBColorEdit7: TDBColorEdit;
    Label58: TLabel;
    PageControl1: TPageControl;
    TabSheet17: TTabSheet;
    pCfopDentroEstado: TFrmBusca;
    pCfopForaEstado: TFrmBusca;
    CBGerarPisCofins: TCheckBox;
    Label71: TLabel;
    DBColorEdit17: TDBColorEdit;
    Label5: TLabel;
    DBColorEdit2: TDBColorEdit;
    Label130: TLabel;
    DBColorEdit32: TDBColorEdit;
    Label53: TLabel;
    DBICMS: TDBColorEdit;
    Label90: TLabel;
    DBColorEdit10: TDBColorEdit;
    DBColorEdit6: TDBColorEdit;
    Label44: TLabel;
    TabSheet18: TTabSheet;
    Label66: TLabel;
    DBColorEdit8: TDBColorEdit;
    Label67: TLabel;
    DBColorEdit19: TDBColorEdit;
    Label73: TLabel;
    DBColorEdit22: TDBColorEdit;
    Label74: TLabel;
    DBColorEdit23: TDBColorEdit;
    DBColorEdit24: TDBColorEdit;
    Label85: TLabel;
    DBGrid2: TDBGrid;
    Label27: TLabel;
    edFiltroHistoricoIni: TMaskEdit;
    edFiltroHistoricoFim: TMaskEdit;
    BitBtn16: TBitBtn;
    RgFiltroTipoHistorico: TRadioGroup;
    RvSystem1: TRvSystem;
    cbRetemPisCofins: TCheckBox;
    SpeedButton1: TSpeedButton;
    edEstoqueFisico: TFloatEdit;
    AjustarEstoque1: TMenuItem;
    N4: TMenuItem;
    procedure FormActivate(Sender: TObject);
    procedure EDSimilarEnter(Sender: TObject);
    procedure BtnNovoClick(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
    procedure BTNOPENClick(Sender: TObject);
    procedure BtnGravarClick(Sender: TObject);
    procedure DBValunitExit(Sender: TObject);
    procedure DBLucratExit(Sender: TObject);
    procedure BtnApagarClick(Sender: TObject);
    procedure BtnConsultarClick(Sender: TObject);
    procedure CodSitTribExit(Sender: TObject);
    procedure DBCODINTERNOEnter(Sender: TObject);
    procedure EDCODGRUPOExit(Sender: TObject);
    procedure EDCODSUBGRUPOExit(Sender: TObject);
    procedure BtnSelecionarClick(Sender: TObject);
    procedure BtnRelatorioClick(Sender: TObject);
    procedure EstoqueSinttico1Click(Sender: TObject);
    procedure ATIVONAOClick(Sender: TObject);
    procedure CadastrarNovoProduto1Click(Sender: TObject);
    procedure CadastrarumProdutoSimilar1Click(Sender: TObject);
    procedure FrmBusca2BTNOPENClick(Sender: TObject);
    procedure FrmBusca2BTNMINUSClick(Sender: TObject);
    procedure EDProdutoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGridCadastroPadraoCellClick(Column: TColumn);
    procedure DBGridCadastroPadraoKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EDSimilarKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdCodCompostoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EtCdFabricante1Click(Sender: TObject);
    procedure EtCdBarra1Click(Sender: TObject);
    procedure FrmBusca1BTNOPENClick(Sender: TObject);
    procedure EdFabricanteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CodSitTribKeyPress(Sender: TObject; var Key: Char);
    procedure EdFabricanteEnter(Sender: TObject);
    procedure PFinanceiroEnter(Sender: TObject);
    procedure BtnCtrlFinancClick(Sender: TObject);
    procedure DBCoresKeyPress(Sender: TObject; var Key: Char);
    procedure btnnovafaixaprecoClick(Sender: TObject);
    procedure BtnFiltHistClick(Sender: TObject);
    procedure EDCodFabEnter(Sender: TObject);
    procedure EdCtrlIntEnter(Sender: TObject);
    procedure EDCodFabKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdCtrlIntKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dbcodbarraExit(Sender: TObject);
    procedure BTNCSTEnter(Sender: TObject);
    procedure BTNCSTExit(Sender: TObject);
    procedure DbIndiceKeyPress(Sender: TObject; var Key: Char);
    procedure EtCdBarraQtd1Click(Sender: TObject);
    procedure EdCodBarraKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure MarcarDesmarcar1Click(Sender: TObject);
    procedure BtnFiltrarClick(Sender: TObject);
    procedure EdCodBarraPDVKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdVlrVarejoVistaExit(Sender: TObject);
    procedure BBAtualizarClick(Sender: TObject);
    procedure EDCODGRUPOKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EDCODSUBGRUPOKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdVlrVarejoVistaEnter(Sender: TObject);
    procedure DBDescVarejoEnter(Sender: TObject);
    procedure DBACRECVAREJOEnter(Sender: TObject);
    procedure DBDESCATACEnter(Sender: TObject);
    procedure DBACRECATACEnter(Sender: TObject);
    procedure DBDescVarejoExit(Sender: TObject);
    procedure DBACRECVAREJOExit(Sender: TObject);
    procedure DBDESCATACExit(Sender: TObject);
    procedure DBACRECATACExit(Sender: TObject);
    procedure BtnPPrecoClick(Sender: TObject);
    procedure BtnDownLogoffClick(Sender: TObject);
    procedure EtMarcados1Click(Sender: TObject);
    procedure dbvalorunitarioEnter(Sender: TObject);
    procedure DBColorEdit4Enter(Sender: TObject);
    procedure DBColorEdit19Enter(Sender: TObject);
    procedure DBVlrUnitCompEnter(Sender: TObject);
    procedure DBVlrUnitCompSDEnter(Sender: TObject);
    procedure DBFreteEnter(Sender: TObject);
    procedure DBColorEdit2Enter(Sender: TObject);
    procedure DBColorEdit1Enter(Sender: TObject);
    procedure DBLucratEnter(Sender: TObject);
    procedure DBColorEdit12Enter(Sender: TObject);
    procedure DBColorEdit13Enter(Sender: TObject);
    procedure DBColorEdit3Enter(Sender: TObject);
    procedure DBColorEdit17Enter(Sender: TObject);
    procedure DBIPIEnter(Sender: TObject);
    procedure DBColorEdit5Enter(Sender: TObject);
    procedure DBColorEdit8Enter(Sender: TObject);
    procedure DBColorEdit6Enter(Sender: TObject);
    procedure DBColorEdit7Enter(Sender: TObject);
    procedure DBColorEdit9Enter(Sender: TObject);
    procedure DBColorEdit10Enter(Sender: TObject);
    procedure CodSitTribKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure dbcodbarraKeyPress(Sender: TObject; var Key: Char);
    procedure DBColorEdit16KeyPress(Sender: TObject; var Key: Char);
    procedure DBCODFABRICANTEExit(Sender: TObject);
    procedure CBProdutoConsumoClick(Sender: TObject);
    procedure DBColorEdit16Exit(Sender: TObject);
    procedure BtnCtrlFichaClick(Sender: TObject);
    //Paulo 27/08/2010: Rertorna os produtos que servirão de matéria prima
    procedure RetornaMateriaPrima;
    procedure EdDescMatKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BtInserirClick(Sender: TObject);
    procedure BtExcluiMatClick(Sender: TObject);
    procedure BtnProdutoClick(Sender: TObject);
    procedure DBCODPRODUTOKeyPress(Sender: TObject; var Key: Char);
    procedure BtnSubGrupoClick(Sender: TObject);
    procedure BtnGrupoClick(Sender: TObject);
    procedure BTNCSTClick(Sender: TObject);
    procedure BtnUnidadeCompraClick(Sender: TObject);
    procedure EdCodUnidadeCompraKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdCodUnidadeVendaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtn3Click(Sender: TObject);
    procedure EdCodBarraEnter(Sender: TObject);
    procedure EdCodBarraExit(Sender: TObject);
    procedure EdCtrlIntExit(Sender: TObject);
    procedure EDCodFabExit(Sender: TObject);
    procedure EDSimilarExit(Sender: TObject);
    procedure EDProdutoEnter(Sender: TObject);
    procedure EDProdutoExit(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure BtnUnidadeCompraExit(Sender: TObject);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure PcAdicionaisChange(Sender: TObject);
    procedure RvSystem1Print(Sender: TObject);
    procedure RvSystem1PrintHeader(Sender: TObject);
    procedure RvSystem1PrintFooter(Sender: TObject);
    procedure ProdutosFinClick(Sender: TObject);
    procedure MatriaPrima1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure ProdutosparaVenda1Click(Sender: TObject);
    procedure CustodoVeculo1Click(Sender: TObject);
    procedure PPromocaoClick(Sender: TObject);
    procedure DespesadeTodososVeculosfiltradopordata1Click(
      Sender: TObject);
    procedure AjustarPlanodecontas1Click(Sender: TObject);
    procedure DBColorEdit12Exit(Sender: TObject);
    procedure DBColorEdit13Exit(Sender: TObject);
    procedure BtAddCodClick(Sender: TObject);
    procedure BtnInsertProdClick(Sender: TObject);
    procedure BtnDeleteListClick(Sender: TObject);
    procedure PCadastroExit(Sender: TObject);
    procedure DetalhamentodeCustosporVeculo1Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure DGTabelaDrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure BitBtn7Click(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure btnnovatabelaClick(Sender: TObject);
    procedure BitBtn10Click(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure BtnTabelaFaixaPrecoClick(Sender: TObject);
    procedure BitBtn12Click(Sender: TObject);
    procedure BtnAdicionaTabelaFaixaClick(Sender: TObject);
    procedure DGTabelaKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DGTabelaClick(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn13Click(Sender: TObject);
    procedure RGFiltroClick(Sender: TObject);
    procedure BitBtn14Click(Sender: TObject);
    procedure BitBtn15Click(Sender: TObject);
    procedure DGTabelaDblClick(Sender: TObject);
    procedure BitBtn17Click(Sender: TObject);
    procedure EdEditaQuantidadeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdTabela_TabelaFaixaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdNovaTabelaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BtnEditaCelulaClick(Sender: TObject);
    procedure BitBtn11Click(Sender: TObject);
    procedure EdPesquisaAcessorioKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdPesquisaAcessorioKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdCodUnidadeCompraExit(Sender: TObject);
    procedure EdCodUnidadeVendaExit(Sender: TObject);
    procedure DBDESCIndExit(Sender: TObject);
    procedure DBACRECINDExit(Sender: TObject);
    procedure btnFechaPVlrSegClick(Sender: TObject);
    procedure btnOkVlrSegClick(Sender: TObject);
    procedure lbVlrSegurancaClick(Sender: TObject);
    procedure DBDESCIndEnter(Sender: TObject);
    procedure DBACRECINDEnter(Sender: TObject);
    procedure EdVlrIndustriaVistaExit(Sender: TObject);
    procedure EdVlrIndustriaPrazoExit(Sender: TObject);
    procedure SolicitarCompraClick(Sender: TObject);
    procedure pCfopDentroEstadoBTNOPENClick(Sender: TObject);
    procedure pCfopForaEstadoBTNOPENClick(Sender: TObject);
    procedure pCfopDentroEstadoBTNMINUSClick(Sender: TObject);
    procedure pCfopForaEstadoBTNMINUSClick(Sender: TObject);
    procedure BtnSolicitaCompraClick(Sender: TObject);
    procedure btnFichaTecnicaClick(Sender: TObject);
    procedure FichaTcnica1Click(Sender: TObject);
    procedure AtualizarCusto1Click(Sender: TObject);
    procedure CriarCpiadesteItem1Click(Sender: TObject);
    procedure HistricodeVendas1Click(Sender: TObject);
    procedure Relatriosdeprodutosecompradores1Click(Sender: TObject);
    procedure cbAcessorioClick(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure btnFornecedorClick(Sender: TObject);
    procedure edCodFornecKeyPress(Sender: TObject; var Key: Char);
    procedure edCodFornecChange(Sender: TObject);
    procedure btnhelpClick(Sender: TObject);
    procedure ProdutoscomNCMsinativos1Click(Sender: TObject);
    procedure Deacordocomquantidadeemestoque1Click(Sender: TObject);
    procedure eladeFiltrosparaetiquetas1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure dbvalorunitarioExit(Sender: TObject);
    procedure DbGCustoEstoqueEmpresaExit(Sender: TObject);
    procedure BitBtn16Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure btnEditaEstoqueClick(Sender: TObject);
    procedure AjustarEstoque1Click(Sender: TObject);

  private
    { Private declarations }
	 Procedure PrepInsert;//nesta procedure vai os comandos comuns para inserção de produto ou similar
    function  InsereNovoSubrodutoEstoque: Boolean;
	 Procedure SelectSim;//Seleciona similares de acordo com wProduto
	 Procedure InfoCores;//Informa a combo de cores as cores configuradas na loja
    Procedure GeraHist;//Procedure utilizada para lançar sql para filtrara e calcular os historicos do produto corrente
    Procedure SelecionaCodigoBarra;//Procedure q seleciona todos os codigos de barra para determinado produto
    procedure ReturnResultContas;//Procedure para calcular e recuperar valores das contas atreladas aos produtos

  public
    { Public declarations }
    //Realiza cálculos para o produto XRET: 1 PARA RETORNAR VALORES AS EDITS DO FPRODUTO/ XCALCLUC: 1 PARA RETORNAR O PERCENTUAL DE LUCRATIVIDADE DO PRODUTO COM RELAÇÃO AO PREÇO DE VENDA
    Procedure CalculoVenda(DescVistaVar: Real; AcrecPrazoVar: Real; DescVistaAtac: Real; AcrecPrazoAtac: Real; DescVistaInd: Real; AcrecPrazoInd: Real; ComVistaVar: Real; ComPrazoVar: Real; ComVistaAtac: Real; ComPrazoAtac: Real; XRET: INTEGER; XCALCLUC: INTEGER);
    //Função para calcular a margem de segurança
	 Function CalculoMargemSeguranca: Boolean;
    //Procedure utilizada para sincronizar informações do bancpo de dados com as edits de valores(0-joga da edit para o banco; 1- joga do banco para o edit)
    Procedure SincroValores(Tipo: Integer);
    // Atualiza produtos da GERTEC
    Procedure Atualiza_Gertec;
    //Repassa para os dbedits quando necessário os descontos para o produto que esta cadastrado nas empresas
    Procedure RepassaDescontos;
    // - 23/04/2009: verifica o codigo procurando se há letras e passando p/ numero
    function verificaEAN13Alfanumerico(maxTam:Integer; cod:String):String;
    //Retorna o numero de itens cadastrados no sistema
    Function RetornaNumItens: Integer;
    //Função utilizada para habilitar desabilitar danfe conforme necessidade
    Function HabidesabiGrade: Boolean;
    //Paulo 04/12/2010: Função para verificar se o produto esta repetido
	 Function VerificaProdutoRepetido(XcodEstoque:integer):Boolean;
    //Paulo 04/12/2010: Função para limpar o vetor
	 Procedure LimpaVetor;
    //Paulo 20/09/2011: Armazena dados do caixa para formar o relatório
    Procedure armazenaDadosRealizado;
    //Paulo 20/09/2011: Armazena dados de cta a pagar e receber para formar o relatório
    Procedure armazenaDadosPrevisao;

    //Retorna Valores de Saldo da conta em questão
    Function ResultCaixa(XCod_ContaCX: Integer): Real;
    //Retorna Valores de Saldo em Banco de acordo com a conta
    Function ResultBanco(XCod_ContaBC: Integer): Real;
    //Retorna Valores em Debitos e Créditos para determinada conta de lançamentos em Ctas Receber
    Function ResultCtaReceber(XCod_ContaCR: Integer): Real;
    //Retorna Valores em Debitos de Ctas a pagar
    Function ResultCP(XCod_ContaCP: Integer):Real;
    //Montar Tabela de Preçoc
    Function MontaTabelaPreco(XCod_Estoque: Integer):Boolean;
    //Limpar String Grid
    Function LimpaGrade: Boolean;
    //Selecionar custos de produto de acordo com o item
    Function SelecionaItensCustoProduto: Boolean;
    //Filtra Acessorios
    Function FiltraAcessorios(XCod_EstoqueAcessorios: Integer):Boolean;
    //Paulo 15/12/2011: Mostra a quantidade de itens marcados
    procedure SomaProdutosMarcados();
    //Função responsavel por editar ou inserir preços
    Function AlteraInserePrecos: Boolean;
    //Função responsavel por editar Tabela ou faixa de precos
    Function  AlteraTabelaFaixa: Boolean;
    //Limpa as labels de escrita dos acessorios
    Procedure LimpaLabelsAcessorios;
    //Filtra as tabelas e escreve em edits e labels as informações dos acessorios selecionado
    Procedure EscreveLabelsACES;
    //Jônatas 16/09/2013 - Filtragem para grid codigobara(Dbgrid7)
    Procedure FiltraSlaveCodBarra;
    //Alex 02/02/2015 = Procedure utilizada para gerar um registro de estoque para subproduto que não possuir estoque (por qualquer motivo de falha) procedure é chamada no on exit do edit de codigo do fabricante
	 	 Procedure ReparoRegistroEstoque;
  	 //Angelo 01/06/2015 - Permite a cópia de um produto selecionado
		 Procedure CadastrarProdutoSelecionado(UltimoInserido : Boolean);
    Function RetornaProximoControleInterno: String;
    Function UltimoRegistroInserido(Tabela , Coluna : String):integer;
    Function InsereNovoSubProdCopiado(xCodSubProduto : Integer):Integer;
    Function InsereNovoEstoqueCopiado(xCodEstoque, xCodSubProd : Integer):Integer;
    Procedure ControlaMarcacoes(xCodEstoque,xCodSubProd : Integer);
    Function CopiaTabelaPrecos(xCodEstAntigo,xCodEstNovo : Integer):Boolean;
  end;

var
  FProduto: TFProduto;
  XCODSUBPROD,XCOD_ESTOQUE, XCST, XCodUnidadeCompra, XCodUnidadeVenda, XCodGrupo, XCodSubgrupo, XCOD_PRODUTO, XCOD_SIMILAR: Integer;//ARMAZENA OS VALORES DE CODIGO DE ESTOQUE, CODIGO DO PRODUTO E CODIGO DO SUBPRODUTO
  XCod_UltimoGrupo, XCod_UltimoSubGrupo, XCod_UltimoProduto: Integer;//Armazena os codigos dos itens para monitorar alteração dos mesmos e registrar
  Xaux, XCOD_ULTPROD: Integer; //Armazena o Código de estoque do ultimo produto para fazer um processo de abrir cadastro para novo similar sem ter que procurar o produto novamente
  ValVend: Real;//armazena o valor de vena a qual o usuario quer trabalhar, para que em cima deste verifique qual sua lucratividade
  XSTATE:STRING;// Armazena o estado das tabelas inser, edit
  XAuxValor, XAuxDesc: Real; //Variaveis auxiliares usadas no controle de valores de venda
  //AS PRÓXIMAS VÁRIAVEIS SÃO UTLIZADAS PARA ARMAZENAR AS INFORMAÇÕES PARA SEREM JOGADAS AO PRÓXIMO PRODUTO
  XALTURA, XDENSIDADE, XPESOLIQ, XPESOBRUTO,XQTDATC, XLARGURA, XCOMPOSICAO, XOBSFISCAL, XBALANCA, XTIPOGARANT:STRING;
  XQUANTGARANT, XNCM, XCLASSIFICACAO, XESPECIFICACAO, XMINSAUDE, XANVISA, XLOCALESTANTE, XPRXDESC, XPRXCODFAB, XPRXFAB, XPRXCODCST, XPRXCODUNICOMP, XPRXCODUNIVEND, XPRXMARCA:STRING;
  XVALOR_VISTAVAREJO, XVALOR_PRAZOVAREJO, XVALOR_VISTAATAC, XVALOR_PRAZOATAC: Currency; // ARMAZENA OS VALORES A VISTA E A PRAZO DO ATACADO E VAREJO PARA FAZER COMPARAÇÃO NO BOTÃO GRAVAR E ATUALIZA A TABELA ESTOQUE SE NECESSARIO
  XVlrCompra: Real; // NO EVENTO ONENTER E ONEXIT DAS EDITS SUPERIORES DA TELA SÃO COMPARADOS OS VALORES E SE FOR DIFERENTE, OS VALORES DE VENDA DAS EDITS DE VENDA A VISTA E A PRAZO, TANTO DO TACADO QTO VAREJO, SERÃO REPASSADOS PARA AS EDITS DOS "ULTIMOS VALORES"
  XMat,XContVet, XIVet: Integer; //Paulo 04/12/2010: Para controlar o corpo do relatório de estoque por lote
  VetorPoduto:array[1..50]of Integer;//Paulo 04/12/2010: Para controlar o corpo do relatório de estoque por lote
  ChavesTabelaPreco: array of Integer;//Alex 21/09/2011: Armazena a chave primaria da tabela TabelafaixaPreco em relação a tabela montada no stringgrid para apresentar a tabela
  XcodPK:Integer;
  XCOD_ITEMACESSORIO: Integer;
  XCodFaixaEdit, XCodTabelaEdit: Integer;
  XDescricaoEdit, XCodTmpEstoque: String;
  XQuantidadeEdit: Real;
  XConsulta, XAcessorio: Boolean;//Determina se o produto é um acessorio ou não
  XCODCFOPDENTRO, XCODCFOPFORA: Integer;
  XCOPIAITEM: Boolean;
  xCodEstoqueCopia: Integer;
  XCOD_FORNECEDOR: Integer;
implementation

uses UMenu, UDMEstoque, UCadGrupo, UCadSubgrupo, AlxMessage, Alxor32,
  UCadCST, UCadUnidade, UCadEmpresa, UDMMacs, URelEstoque, UDMEntrada,
  UDMSaida, Alxorprn, Math, UPadrao, UCadOferta, UConfigLoja,
  UCadProduto, UNcm, UDMCaixa, UDMConta, UConsPlncta, URelData, UMDO,
  Variants, UCadAcessorios, USenha, USolicitarCompra, UCadCFOP,
  UFichaTecnica, UDMFAST, URelHistVenda, UDMPessoa, UFORNECEDOR, StrUtils,
  URelProdutosNcm, URelEtiqEstoque, UHistoricoMovimentoEstoque,
  ULancamentoEstoque;

{$R *.DFM}


//Selecionar custos de produto de acordo com o item
Function TFProduto.SelecionaItensCustoProduto: Boolean;
Begin
   try
       DMENTRADA.TCustoNFeListagem.Close;
       DMENTRADA.TCustoNFeListagem.SQL.Clear;
       DMENTRADA.TCustoNFeListagem.SQL.Add(' SELECT CUSTOESTOQUEEMPRESA.*, PEDCOMPRA.NUMPED ');
       DMENTRADA.TCustoNFeListagem.SQL.Add(' FROM CUSTOESTOQUEEMPRESA ');
       DMENTRADA.TCustoNFeListagem.SQL.Add(' LEFT JOIN ITENSPEDC ON ITENSPEDC.COD_ITENSPEDC = CUSTOESTOQUEEMPRESA.COD_ITEM AND CUSTOESTOQUEEMPRESA.TIPOGERADOR = ''PEDCOMPRA'' ');
       DMENTRADA.TCustoNFeListagem.SQL.Add(' LEFT JOIN PEDCOMPRA ON PEDCOMPRA.COD_PEDCOMP = ITENSPEDC.COD_PEDCOMPRA ');
       DMENTRADA.TCustoNFeListagem.SQL.Add(' WHERE (CUSTOESTOQUEEMPRESA.COD_ESTOQUE = :CodigoEstoque) ');
       DMENTRADA.TCustoNFeListagem.SQL.Add(' AND (CUSTOESTOQUEEMPRESA.QUANTIDADEDISPONIVELVENDA > 0) ');
       DMENTRADA.TCustoNFeListagem.SQL.Add(' AND (CUSTOESTOQUEEMPRESA.ATIVO = ''1'') ');
       DMENTRADA.TCustoNFeListagem.SQL.Add(' ORDER BY CUSTOESTOQUEEMPRESA.DATA ');
       DMENTRADA.TCustoNFeListagem.ParamByName('CodigoEstoque').AsInteger := XCOD_ESTOQUE;
       DMENTRADA.TCustoNFeListagem.Open;
   except
   end;
End;
//Alex 02/02/2015 = Procedure utilizada para gerar um registro de estoque para subproduto que não possuir estoque (por qualquer motivo de falha) procedure é chamada no on exit do edit de codigo do fabricante
procedure TFProduto.ReparoRegistroEstoque;
var
 pk: integer;
begin
 pk := InserReg(DMESTOQUE.TEstoque, 'ESTOQUE', 'COD_ESTOQUE');
 DMESTOQUE.TEstoque.FieldByName('COD_ESTOQUE').AsInteger := pk;
   DMESTOQUE.TEstoque.FieldByName('COD_SUBPROD').AsInteger := XCOD_SIMILAR;
   DMESTOQUE.TEstoque.FieldByName('COD_LOJA').AsInteger := StrToInt(FMenu.LCODLOJA.Caption);
   DMESTOQUE.TEstoque.Post;
   DMESTOQUE.TransacEstoque.CommitRetaining;
end;

//Limpar String Grid
Function TFProduto.LimpaGrade: Boolean;
var
  I: integer;
begin
	Try
   	for I := 0 to DGTabela.RowCount -1 do
      		DGTabela.Rows[I].Clear;
   Except
   	MessageDlg('O Sistema não redefiniu a tabela de preços. Verifique!', mtWarning, [mbOK], 0);
   End;
End;

//Filtra Acessorios
Function TFProduto.FiltraAcessorios(XCod_EstoqueAcessorios: Integer):Boolean;
Begin
	Try
       DMESTOQUE.TransacEstoque.CommitRetaining;
       DMESTOQUE.Alx5.Close;
       DMESTOQUE.Alx5.SQL.Clear;
       DMESTOQUE.Alx5.SQL.Add(' Select acessorios.cod_acessorios, acessorios.quantidade, estoque.cod_estoque, subproduto.contrint, subproduto.descricao from acessorios ');
       DMESTOQUE.Alx5.SQL.Add('  Left join estoque on acessorios.cod_equipamento = estoque.cod_estoque ');
       DMESTOQUE.Alx5.SQL.Add('  left join subproduto on estoque.cod_subprod = subproduto.cod_subproduto ');
       DMESTOQUE.Alx5.SQL.Add(' Where acessorios.cod_estoque=:estoque ');
       DMESTOQUE.Alx5.ParamByName('estoque').AsInteger:=XCod_EstoqueAcessorios;
       DMESTOQUE.Alx5.Open;
   Except

   End;
End;

//Montar Tabela de Preçoc
Function TFProduto.MontaTabelaPreco(XCod_Estoque: Integer):Boolean;
Var
	XLinha, XColuna: Integer;
Begin
	Try
   	//Configura StringGrid
       LimpaGrade;
		DGTabela.ColWidths[0]:=100;

       //Cria quantidade de linhas de acordo com a quantidade de tabelas
       MDO.QConsulta.Close;
       MDO.QConsulta.SQL.Clear;
       MDO.QConsulta.SQL.Add('Select max(tabela_preco.indicelinha) as Linhas from tabela_preco ');
       MDO.QConsulta.Open;
       DGTabela.RowCount:=MDO.QConsulta.FieldByName('Linhas').AsInteger+1;
       //Cria quantidade de colunas de acordo com a quantidade de faixas de preço
       MDO.QConsulta.Close;
       MDO.QConsulta.SQL.Clear;

       MDO.QConsulta.SQL.Add('Select max(faixa_preco.indicecoluna) as coluna from faixa_preco ');
       MDO.QConsulta.Open;
       DGTabela.ColCount:=MDO.QConsulta.FieldByName('coluna').AsInteger+1;


		//Monta Linhas de Acordo com a Tabela
       MDO.QConsulta.Close;
       MDO.QConsulta.SQL.Clear;
       MDO.QConsulta.SQL.Add('Select * from tabela_preco');
       MDO.QConsulta.Open;
       XLinha:=1;
       If Not MDO.QConsulta.IsEmpty
       Then Begin
           MDO.QConsulta.First;
           While not MDO.QConsulta.Eof
           Do Begin
               DGTabela.Cells[0, MDO.QConsulta.FieldByName('INDICELINHA').AsInteger]:=MDO.QConsulta.FieldByName('DESCRICAO').AsString;
               XLinha:=XLinha+1;
               MDO.QConsulta.Next
           End;
       End;
		//Monta Colunas de Acordo com a Tabela
       MDO.QConsulta.Close;
       MDO.QConsulta.SQL.Clear;
       MDO.QConsulta.SQL.Add('Select * from FAIXA_PRECO');
       MDO.QConsulta.Open;
       XColuna:=1;
       If Not MDO.QConsulta.IsEmpty
       Then Begin
           MDO.QConsulta.First;
           While not MDO.QConsulta.Eof
           Do Begin
				DGTabela.ColWidths[XColuna]:=60;
               DGTabela.Cells[MDO.QConsulta.FieldByName('INDICECOLUNA').AsInteger, 0]:=MDO.QConsulta.FieldByName('DESCRICAO').AsString;
               XColuna:=XColuna+1;
               MDO.QConsulta.Next
           End;
       End;
		//Monta Tabela com preços
       MDO.QConsulta.Close;
       MDO.QConsulta.SQL.Clear;
       MDO.QConsulta.SQL.Add(' Select tabelafaixapreco.cod_tabelapreco, tabelafaixapreco.cod_faixapreco, tabela_preco.descricao as TABELA, ');
       MDO.QConsulta.SQL.Add('         tabela_preco.indicelinha AS LINHA, faixa_preco.descricao AS FAIXA, faixa_preco.indicecoluna as coluna, tabelafaixapreco.preco AS PRECO  from tabelafaixapreco ');
       MDO.QConsulta.SQL.Add(' left join tabela_preco on tabelafaixapreco.cod_tabelapreco = tabela_preco.cod_tabelapreco ');
       MDO.QConsulta.SQL.Add(' left join faixa_preco on tabelafaixapreco.cod_faixapreco = faixa_preco.cod_faixapreco ');
       MDO.QConsulta.SQL.Add('        where tabelafaixapreco.cod_estoque=:Estoque ');
       MDO.QConsulta.ParamByName('estoque').AsInteger:=XCod_Estoque;
       MDO.QConsulta.Open;
       XColuna:=1;
       If Not MDO.QConsulta.IsEmpty
       Then Begin
           MDO.QConsulta.First;
           While not MDO.QConsulta.Eof
           Do Begin
           	If (MDO.QConsulta.FieldByName('cod_tabelapreco').AsInteger>0) and (MDO.QConsulta.FieldByName('cod_faixapreco').AsInteger>0)
               Then Begin
               	If MDO.QConsulta.FieldByName('PRECO').AsCurrency<>0 Then
               		DGTabela.Cells[MDO.QConsulta.FieldByName('coluna').AsInteger, MDO.QConsulta.FieldByName('linha').AsInteger]:=' '+FormatFloat('0.00', MDO.QConsulta.FieldByName('PRECO').AsCurrency);
               End;
               XColuna:=XColuna+1;
               MDO.QConsulta.Next
           End;
       End;
       DGTabela.Repaint;

//       DGTabela.Cells[0,2]:='Teste';
   Except
      Result:=False;
   End
End;

//Retorna Valores de Saldo da conta em questão
Function TFProduto.ResultCaixa(XCod_ContaCX: Integer): Real;
Var
	XSaldo: Real;
Begin
	Try
   	//////////////
   	// ENTRADAS //
       //////////////
   	DMCONTA.TAlx.Close;
   	DMCONTA.TAlx.SQL.Clear;
   	DMCONTA.TAlx.SQL.Add('SELECT sum(lancaixa.valor) AS VALOR from lancaixa Where (lancaixa.cod_plnctafil=:COD_CONTA) AND (lancaixa.tipcai='+#39+'E'+#39+')  AND (lancaixa.ESTRU='+#39+'1'+#39+')');
		DMCONTA.TAlx.ParamByName('COD_CONTA').AsInteger:=XCod_ContaCX;
   	DMCONTA.TAlx.SQL.Text;
   	DMCONTA.TAlx.Open;
   	If DMCONTA.TPlnCta.FieldByName('natureza').AsString='C' Then
       	XSaldo:=DMCONTA.TAlx.FieldBYName('VALOR').AsCurrency
   	Else
       	XSaldo:=DMCONTA.TAlx.FieldBYName('VALOR').AsCurrency*(-1);

   	////////////
   	// SAIDAS //
       ////////////
   	DMCONTA.TAlx.Close;
   	DMCONTA.TAlx.SQL.Clear;
   	DMCONTA.TAlx.SQL.Add('SELECT sum(lancaixa.valor) AS VALOR from lancaixa Where (lancaixa.cod_plnctafil=:COD_CONTA) AND (lancaixa.tipcai='+#39+'S'+#39+')  AND (lancaixa.ESTRU='+#39+'1'+#39+')');
		DMCONTA.TAlx.ParamByName('COD_CONTA').AsInteger:=XCod_ContaCX;
  		DMCONTA.TAlx.SQL.Text;
   	DMCONTA.TAlx.Open;
   	If DMCONTA.TPlnCta.FieldByName('natureza').AsString='C' Then
       	XSaldo:=XSaldo-DMCONTA.TAlx.FieldBYName('VALOR').AsCurrency
   	Else
       	XSaldo:=XSaldo+DMCONTA.TAlx.FieldBYName('VALOR').AsCurrency;
   Except
       XSaldo:=0;
   End;
   Result:=XSaldo;
End;

//Retorna Valores de Saldo em Banco de acordo com a conta
Function TFProduto.ResultBanco(XCod_ContaBC: Integer): Real;
Var
	XSaldo: Real;
Begin
	Try
   	//////////////
   	// ENTRADAS //
       //////////////
   	DMCONTA.TAlx.Close;
   	DMCONTA.TAlx.SQL.Clear;
   	DMCONTA.TAlx.SQL.Add(' SELECT sum(movbanco.valor) AS VALOR from movbanco Where (movbanco.cod_plncta=:COD_CONTA)  AND (movbanco.fech='+#39+'S'+#39+') AND (movbanco.tipoop='+#39+'ENTRADA'+#39+')  AND ((movbanco.tipogerador<>'+#39+'CTARCH'+#39+')  or (movbanco.tipogerador is null))  AND (movbanco.ESTRU='+#39+'1'+#39+') ');
		DMCONTA.TAlx.ParamByName('COD_CONTA').AsInteger:=XCod_ContaBC;
   	DMCONTA.TAlx.SQL.Text;
   	DMCONTA.TAlx.Open;
       If DMCONTA.TPlnCta.FieldByName('natureza').AsString='C' Then
           XSaldo:=DMCONTA.TAlx.FieldBYName('VALOR').AsCurrency
       Else
           XSaldo:=DMCONTA.TAlx.FieldBYName('VALOR').AsCurrency*(-1);
   	DMCONTA.TAlx.SQL.Text;
   	DMCONTA.TAlx.Open;

   	////////////
   	// SAIDAS //
       ////////////
   	DMCONTA.TAlx.Close;
   	DMCONTA.TAlx.SQL.Clear;
   	DMCONTA.TAlx.SQL.Add('SELECT sum(movbanco.VALOR) AS VALOR from movbanco Where (movbanco.cod_plncta=:COD_CONTA)  AND (movbanco.fech='+#39+'S'+#39+') AND (movbanco.tipoop='+#39+'SAIDA'+#39+') AND ((movbanco.tipogerador<>'+#39+'CTARCH'+#39+')   or (movbanco.tipogerador is null))   AND (movbanco.ESTRU='+#39+'1'+#39+') ');
		DMCONTA.TAlx.ParamByName('COD_CONTA').AsInteger:=XCod_ContaBC;
   	DMCONTA.TAlx.SQL.Text;
   	DMCONTA.TAlx.Open;
       If DMCONTA.TPlnCta.FieldByName('natureza').AsString='C' Then
           XSaldo:=XSaldo-DMCONTA.TAlx.FieldBYName('VALOR').AsCurrency
       Else
           XSaldo:=XSaldo+DMCONTA.TAlx.FieldBYName('VALOR').AsCurrency;
   Except
       XSaldo:=0;
	End;
   Result:=XSaldo;   
End;

//Retorna Valores em Debitos e Créditos para determinada conta de lançamentos em Ctas Receber
Function TFProduto.ResultCtaReceber(XCod_ContaCR: Integer): Real;
Var
	XSaldo: Real;
Begin
	Try
       // - Produtos
   	DMCONTA.TAlx.Close;
   	DMCONTA.TAlx.SQL.Clear;
   	DMCONTA.TAlx.SQL.Add('Select Sum(parcelacr.valorprod) AS VALOR from parcelacr ');
   	DMCONTA.TAlx.SQL.Add('   left join ctareceber on parcelacr.cod_ctareceber = ctareceber.cod_ctareceber Where (CtaReceber.cod_plncta=:COD_CONTA) AND (parcelacr.fech<>'+#39+'S'+#39+')');
		DMCONTA.TAlx.ParamByName('COD_CONTA').AsInteger:=XCod_ContaCR;
   	DMCONTA.TAlx.SQL.Text;
   	DMCONTA.TAlx.Open;
   	XSaldo:=DMCONTA.TAlx.FieldBYName('VALOR').AsCurrency;

       // - Serviços
   	DMCONTA.TAlx.Close;
   	DMCONTA.TAlx.SQL.Clear;
   	DMCONTA.TAlx.SQL.Add('Select Sum(parcelacr.valorServ) AS VALOR from parcelacr ');
   	DMCONTA.TAlx.SQL.Add('   left join ctareceber on parcelacr.cod_ctareceber = ctareceber.cod_ctareceber Where (CtaReceber.cod_plnctaServ=:COD_CONTA) AND (parcelacr.fech<>'+#39+'S'+#39+')');
       DMCONTA.TAlx.ParamByName('COD_CONTA').AsInteger:=XCod_ContaCR;
       DMCONTA.TAlx.SQL.Text;
       DMCONTA.TAlx.Open;
   	XSaldo:=XSaldo+DMCONTA.TAlx.FieldBYName('VALOR').AsCurrency;
   Except
       XSaldo:=0;
   End;
   Result:=XSaldo;   
End;

//Retorna Valores em Debitos de Ctas a pagar
Function TFProduto.ResultCP(XCod_ContaCP: Integer):Real;
Var
	XSaldo: Real;
Begin
	Try
   	DMCONTA.TAlx.Close;
   	DMCONTA.TAlx.SQL.Clear;
   	DMCONTA.TAlx.SQL.Add(' SELECT sum(vwparcp.valor) AS VALOR from vwparcp ');
   	DMCONTA.TAlx.SQL.Add(' Where (vwparcp.cod_plncta=:COD_CONTA)  AND (vwparcP.fech<>''S'') ');
		DMCONTA.TAlx.ParamByName('COD_CONTA').AsInteger:=XCod_ContaCP;
   	DMCONTA.TAlx.SQL.Text;
   	DMCONTA.TAlx.Open;
   	XSaldo:=DMCONTA.TAlx.FieldBYName('VALOR').AsCurrency;
   Except
   	XSaldo:=0;
   End;
   Result:=XSaldo;   
End;
//Procedure para calcular e recuperar valores das contas atreladas aos produtos
procedure TFProduto.ReturnResultContas;
Var
	XSaldoRealizado, XSaldoPrevisto: Real;
begin
  inherited;
	DMCONTA.TPlnCta.Close;
   DMCONTA.TPlnCta.SQL.Clear;
   DMCONTA.TPlnCta.SQL.Add('update plncta SET plncta.vlrprev=0, plncta.vlrreal=0, perprev=0, perreal=0');
	DMCONTA.TPlnCta.ExecSQL;
   DMCONTA.IBT.CommitRetaining;

	//FILTRA CONTAS
	DMCONTA.TPlnCta.Close;
   DMCONTA.TPlnCta.SQL.Clear;
   DMCONTA.TPlnCta.SQL.Add('Select * from plncta ');
   DMCONTA.TPlnCta.SQL.Add(' where plncta.cod_estoque=:codigo order by plncta.classificacao');
   DMCONTA.TPlnCta.ParamByName('codigo').AsInteger:=DMESTOQUE.WSimilar.FieldByName('COD_ESTOQUE').AsInteger;
	DMCONTA.TPlnCta.Open;

   //PERCORRE TODOS OS REGISTRO PARA ACUMULAR VALOR
	DMCONTA.TPlnCta.First;
   While Not DMCONTA.TPlnCta.Eof Do
   Begin
   	///////////
   	// CAIXA //
       ///////////
       XSaldoRealizado:=ResultCaixa(DMCONTA.TPlnCta.FieldByName('COD_PLNCTA').AsInteger);
   	///////////
       // BANCO //
       ///////////
      	XSaldoRealizado:=XSaldoRealizado+ResultBanco(DMCONTA.TPlnCta.FieldByName('COD_PLNCTA').AsInteger);
   	//////////////////
       // CTAS RECEBER //
       //////////////////
       XSaldoPrevisto:=ResultCtaReceber(DMCONTA.TPlnCta.FieldByName('COD_PLNCTA').AsInteger);
   	////////////////
       // CTAS PAGAR //
       ////////////////
       XSaldoPrevisto:=ResultCP(DMCONTA.TPlnCta.FieldByName('COD_PLNCTA').AsInteger);

       // REPASSA OS VALORES ADQUIRIDOS PARA A TABELA
       DMCONTA.TPlnCta.Edit;
      	DMCONTA.TPlnCta.FieldByName('VLRPREV').AsCurrency:=XSaldoPrevisto;
		DMCONTA.TPlnCta.FieldByName('VLRREAL').AsCurrency:=XSaldoRealizado;
       DMCONTA.TPlnCta.Post;
       DMCONTA.TPlnCta.NEXT;
   End;
   DMCONTA.IBT.CommitRetaining;
   DMESTOQUE.TransacEstoque.CommitRetaining;
	//FILTRA CONTAS
	DMEstoque.TRel.Close;
   DMEstoque.TREL.SQL.Clear;
   DMEstoque.TREL.SQL.Add(' Select * from plncta '); //and ((plncta.vlrprev>0) or (plncta.vlrreal>0))
   DMEstoque.TREL.SQL.Add('  where (plncta.cod_estoque=:codigo)  order by plncta.natureza, plncta.classificacao ');
   DMEstoque.TREL.ParamByName('codigo').AsInteger:=DMESTOQUE.WSimilar.FieldByName('COD_ESTOQUE').AsInteger;
	DMEstoque.TREL.Open;
   PComunica.Visible:=False;
   FSRel.LoadFromFile('C:\MZR\MACS\Rel\FrfContasProduto.frf');
   FSRel.ShowReport;
end;

//Função utilizada para habilitar desabilitar danfe conforme necessidade
Function TFProduto.HabidesabiGrade: Boolean;
Begin
	Try
      //Verifica se trabalho com o uso da grade ou de forma simples
      If DMMACS.TLoja.FieldByName('OPERADESCCUPOM').AsInteger=1
      Then Begin
           //SEM A GRADE
           {GroupBox1.Visible:=False;
           DBGridCadastroPadrao.Visible:=False;
           GBSIMILAR.Top:=34;
           GBSIMILAR.Height:=428;
           DBGrid1.Height:=349;
           PGrade.Visible:=False;}
			GroupBox1.Visible := False;
           DBGridCadastroPadrao.Visible := False;
           GBSIMILAR.Top := 53;
           GBSIMILAR.Height := 424;
           DBGrid1.Height := 349;
           PGrade.Visible := False;
      End
      Else Begin
           //COM A GRADE
           GroupBox1.Visible:=True;
           DBGridCadastroPadrao.Visible:=True;
           GBSIMILAR.Top:=227;
           GBSIMILAR.Height:=246;
           DBGrid1.Height:=169;
           PGrade.Visible:=True;
           DBCODPRODUTO.Visible:=True;
           PGrade.BringToFront;
      End;
   Except
   End;
End;
//Retorna o numero de itens cadastrados no sistema
Function TFProduto.RetornaNumItens: Integer;
Begin
	Try
       DMMACS.TALX.Close;
       DMMACS.TALX.SQL.Clear;
       DMMACS.TALX.SQL.Add(' select count(vwsimilar.cod_subproduto) as quantidade from vwsimilar ');
       DMMACS.TALX.Open;
       If DMMACS.TALX.FieldByName('quantidade').AsInteger>0 Then
           Result:=DMMACS.TALX.FieldByName('quantidade').AsInteger
       Else
           Result:=0;
   Except
       Result:=0;
   End
End;
//Repassa para os dbedits quando necessário os descontos para o produto que esta cadastrado nas empresas
Procedure TFProduto.RepassaDescontos;
Begin
   DMESTOQUE.TEstoque.Edit;
   If DMESTOQUE.TEstoque.FieldByName('AVVPROVAR').AsCurrency=0 Then
		DMESTOQUE.TEstoque.FieldByName('AVVPROVAR').AsCurrency:=DMMACS.TEmpresa.FieldByName('AVVPROVAR').AsCurrency;
   If DMESTOQUE.TEstoque.FieldByName('AVPPROVAR').AsCurrency=0 Then
		DMESTOQUE.TEstoque.FieldByName('AVPPROVAR').AsCurrency:=DMMACS.TEmpresa.FieldByName('AVPPROVAR').AsCurrency;
   If DMESTOQUE.TEstoque.FieldByName('AVVPROAT').AsCurrency=0 Then
		DMESTOQUE.TEstoque.FieldByName('AVVPROAT').AsCurrency:=DMMACS.TEmpresa.FieldByName('AVVPROAT').AsCurrency;
   If DMESTOQUE.TEstoque.FieldByName('AVPPROAT').AsCurrency=0 Then
		DMESTOQUE.TEstoque.FieldByName('AVPPROAT').AsCurrency:=DMMACS.TEmpresa.FieldByName('AVPPROAT').AsCurrency;
   DMESTOQUE.TEstoque.Post;
End;
//Procedure utilizada para sincronizar informações do bancpo de dados com as edits de valores(0-joga da edit para o banco; 1- joga do banco para o edit)
Procedure TFProduto.SincroValores(Tipo: Integer);
Begin
	If Tipo=0
   Then Begin
       DMESTOQUE.TEstoque.Edit;
       DMESTOQUE.TEstoque.FieldByName('VENDVARV').AsCurrency:=EdVlrVarejoVista.ValueNumeric;
       DMESTOQUE.TEstoque.FieldByName('VENDVARP').AsCurrency:=EdVlrVarejoPrazo.ValueNumeric;
       DMESTOQUE.TEstoque.FieldByName('VENDATAV').AsCurrency:=EdVlrAtacadoVista.ValueNumeric;
       DMESTOQUE.TEstoque.FieldByName('VENDATAP').AsCurrency:=EdVlrAtacadoPrazo.ValueNumeric;
       DMESTOQUE.TEstoque.FieldByName('VENDINDV').AsCurrency:=EdVlrIndustriaVista.ValueNumeric;
       DMESTOQUE.TEstoque.FieldByName('VENDINDP').AsCurrency:=EdVlrIndustriaPrazo.ValueNumeric;
       DMESTOQUE.TEstoque.Post;
   End;
   If Tipo=1
   Then Begin
	    EdVlrVarejoVista.ValueNumeric:=DMESTOQUE.TEstoque.FieldByName('VENDVARV').AsCurrency;
       EdVlrVarejoPrazo.ValueNumeric:=DMESTOQUE.TEstoque.FieldByName('VENDVARP').AsCurrency;
       EdVlrAtacadoVista.ValueNumeric:=DMESTOQUE.TEstoque.FieldByName('VENDATAV').AsCurrency;
       EdVlrAtacadoPrazo.ValueNumeric:=DMESTOQUE.TEstoque.FieldByName('VENDATAP').AsCurrency;
       EdVlrIndustriaVista.ValueNumeric:=DMESTOQUE.TEstoque.FieldByName('VENDINDV').AsCurrency;
		EdVlrIndustriaPrazo.ValueNumeric:=DMESTOQUE.TEstoque.FieldByName('VENDINDP').AsCurrency;
   End;
End;

//Procedure q seleciona todos os codigos de barra para determinado produto
Procedure TFProduto.SelecionaCodigoBarra;
Begin
   DMESTOQUE.TCodBarra.Close;
   DMESTOQUE.TCodBarra.SQL.Clear;
   DMESTOQUE.TCodBarra.SQL.Add(' select * from codigobarra where codigobarra.cod_estoque=:codigo ');
   DMESTOQUE.TCodBarra.ParamByName('CODIGO').AsString:=DMESTOQUE.TEstoque.Fieldbyname('COD_ESTOQUE').AsString;
   DMESTOQUE.TCodBarra.Open;
End;

//Procedure utilizada para lançar sql para filtrara e calcular os historicos do produto corrente
Procedure TFProduto.GeraHist;
Begin
   DMESTOQUE.Alx.Close;
   DMESTOQUE.Alx.SQL.Clear;
   DMESTOQUE.Alx.SQL.Add(' select * from movimentoestoque ');
   DMESTOQUE.Alx.SQL.Add(' Where (movimentoestoque.datamovimento >= :Dt1)  and (movimentoestoque.datamovimento <= :Dt2) ');
   DMESTOQUE.Alx.SQL.Add(' and (movimentoestoque.cod_estoque = :CODESTOQUE) ');
   DMESTOQUE.Alx.ParamByName('Dt1').AsString := edFiltroHistoricoIni.Text;
   DMESTOQUE.Alx.ParamByName('Dt2').AsString := edFiltroHistoricoFim.Text;
   If RgFiltroTipoHistorico.ItemIndex = 1 Then
       DMESTOQUE.Alx.SQL.Add(' AND (movimentoestoque.operacao = ''ENTRADA'') ');
   If RgFiltroTipoHistorico.ItemIndex = 2 Then
       DMESTOQUE.Alx.SQL.Add(' AND (movimentoestoque.operacao = ''SAIDA'') ');

   DMESTOQUE.Alx.ParamByName('CODESTOQUE').AsInteger := XCOD_ESTOQUE;
   DMESTOQUE.Alx.SQL.Add(' order by movimentoestoque.datamovimento desc, movimentoestoque.horamovimento desc ');
   DMESTOQUE.Alx.Open;
End;

//Informa a combo de cores as cores configuradas na lojagt
Procedure TFProduto.InfoCores;
Var
	I: Integer;
Begin
	//INSERE CORES
   DBCor.Items.Clear;
   DMESTOQUE.ALX.Close;
   DMESTOQUE.ALX.SQL.Clear;
   DMESTOQUE.ALX.SQL.Add('select distinct(subproduto.cor) AS COR from subproduto');
   DMESTOQUE.ALX.Open;
   DMESTOQUE.ALX.First;
   While Not DMESTOQUE.ALX.Eof Do
   Begin
   	DBCor.Items.Add(DMESTOQUE.ALX.FieldByName('COR').AsString);
       DMESTOQUE.ALX.Next;
   End;
	//INSERE CLASSIFICAÇÕES
  	DBClassificacao.Items.Clear;
   DMESTOQUE.ALX.Close;
   DMESTOQUE.ALX.SQL.Clear;
   DMESTOQUE.ALX.SQL.Add('select distinct(subproduto.classificacao) AS CLASS from subproduto');
   DMESTOQUE.ALX.Open;
   DMESTOQUE.ALX.First;
   While Not DMESTOQUE.ALX.Eof Do
   Begin
   	DBClassificacao.Items.Add(DMESTOQUE.ALX.FieldByName('CLASS').AsString);
       DMESTOQUE.ALX.Next;
   End;
End;
//Seleciona similares de acordo com wProduto
Procedure TFProduto.SelectSim;
var
   XFiltroProd:String;
Begin
   //Paulo 13/12/2011: Verifica o filtro de produtos ativos ou inativos
    If RGFiltro.ItemIndex=0 Then
        XFiltroProd:=' and ((ATIVO = ''S'') or (ATIVO is null)) ';
    If RGFiltro.ItemIndex=1 Then
        XFiltroProd:=' and ((ATIVO = ''N''))';

	//FILTRA SIMILAR DE ACORDO COM O PRODUTO
   DMESTOQUE.WSimilar.Close;
   DMESTOQUE.WSimilar.SQL.Clear;
  	If DMMACS.TLoja.FieldByName('OPERADESCCUPOM').AsInteger=1
 	Then Begin
   	//Se operando sem o uso da grade de produtos
       DMESTOQUE.WSimilar.SQL.Add('SELECT * FROM VWSIMILAR WHERE (COD_LOJA=:CODLOJA) '+XFiltroProd+' Order By DESCRICAO');
       DMESTOQUE.WSimilar.ParamByName('CODLOJA').Asstring:=FMenu.LCODLOJA.Caption;
   End
   Else Begin
       DMESTOQUE.WSimilar.SQL.Add('SELECT * FROM VWSIMILAR WHERE (COD_PRODUTO=:CODPROD) AND (COD_LOJA=:CODLOJA) '+XFiltroProd+' Order By DESCRICAO');
       DMESTOQUE.WSimilar.ParamByName('CODLOJA').Asstring:=FMenu.LCODLOJA.Caption;
       DMESTOQUE.WSimilar.ParamByName('CODPROD').Asstring:=DMESTOQUE.WProduto.FieldByName('COD_PRODUTO').AsString;
   End;
   DMESTOQUE.WSimilar.Open;
End;

function TFProduto.InsereNovoSubrodutoEstoque: Boolean;
Begin
   Try
    Result := true;

    //*************************
    MDO.Transac.CommitRetaining;

    MDO.Query.Close;
    MDO.Query.SQL.Clear;
    MDO.Query.SQL.Add('  select gen_id(GEN_SUBPRODUTO_ID, 0) as codigo from rdb$database ');
    MDO.Query.Open;
    XCODSUBPROD := MDO.Query.FieldByName('CODIGO').AsInteger + 1;

    MDO.Query.Close;
    MDO.Query.SQL.Clear;
    MDO.Query.SQL.Add(' select max(subproduto.cod_produto) as codigo from subproduto ');
    MDO.Query.Open;
    XCOD_PRODUTO := MDO.Query.FieldByName('codigo').AsInteger;

    MDO.Query.Close;
    MDO.Query.SQL.Clear;
    MDO.Query.SQL.Add(' INSERT INTO SUBPRODUTO ');
    MDO.Query.SQL.Add('        (CONTRINT, cod_produto ) ');
    MDO.Query.SQL.Add(' VALUES ');
    MDO.Query.SQL.Add('        (:CONTRINT, :cod_produto');
    MDO.Query.ParamByName('cod_produto').AsInteger := XCOD_PRODUTO;
    MDO.Query.ParamByName('CONTRINT').AsString := RetornaProximoControleInterno;
    MDO.Query.ExecSQL;

    //********************************


    MDO.Transac.Commit;
    MDO.Transac.CommitRetaining;

    MDO.Query.Close;
    MDO.Query.SQL.Clear;
    MDO.Query.SQL.Add('  select gen_id(GEN_ESTOQUE_ID, 0) as codigo from rdb$database ');
    MDO.Query.Open;
    XCOD_ESTOQUE := MDO.Query.FieldByName('CODIGO').AsInteger + 1;

    MDO.Query.Close;
    MDO.Query.SQL.Clear;
    MDO.Query.SQL.Add(' INSERT INTO ESTOQUE ');
    MDO.Query.SQL.Add('        (COD_LOJA, COD_SUBPROD, ESTFISICO,  ');
    MDO.Query.SQL.Add('         ESTRESERV, ESTPED, ESTSALDO, DTCAD, ESTINI ) ');
    MDO.Query.SQL.Add(' VALUES ');
    MDO.Query.SQL.Add('        (:COD_LOJA, :COD_SUBPROD, :ESTFISICO, ');
    MDO.Query.SQL.Add('         :ESTRESERV, :ESTPED, :ESTSALDO, :DTCAD, :ESTINI ) ');

    MDO.Query.ParamByName('COD_LOJA').AsString := FMenu.LCODLOJA.Caption;
    If FMenu.LCODLOJA.Caption = '' Then
       MDO.Query.ParamByName('COD_LOJA').AsInteger := 1;
    MDO.Query.ParamByName('COD_SUBPROD').AsInteger := XCODSUBPROD;
    MDO.Query.ParamByName('ESTFISICO').AsInteger := 0;
    MDO.Query.ParamByName('ESTRESERV').AsInteger := 0;
    MDO.Query.ParamByName('ESTPED').AsInteger := 0;
    MDO.Query.ParamByName('ESTSALDO').AsInteger := 0;
    MDO.Query.ParamByName('DTCAD').AsDate := Date();
    MDO.Query.ParamByName('ESTINI').AsInteger := 0;
    MDO.Query.ExecSQL;

    MDO.Transac.CommitRetaining;



  except
    MDO.Transac.RollbackRetaining;
    Result := False;
  end;
End;

//nesta procedure vai os comandos comuns para inserção de produto ou similar
Procedure TFProduto.PrepInsert;
Begin
	 //Filtra Loja
    FiltraTabela(DMMACS.TLoja, 'LOJA', 'COD_LOJA', FMenu.LCODLOJA.Caption, '');
    CBProdutoConsumo.Checked := False;

    //filtra os lançamentos de custos dos itens
    SelecionaItensCustoProduto;
        
  	 //Edmar - 23/09/2014 - Inicializa com -1 a variavel do cfop
  	 //e limpa os campos
  	 XCODCFOPFORA := -1;
  	 pCfopForaEstado.EDCodigo.Text := '';
  	 pCfopForaEstado.EdDescricao.Text := '';

  	 XCODCFOPDENTRO := -1;
    pCfopDentroEstado.EDCodigo.Text := '';
    pCfopDentroEstado.EdDescricao.Text := '';

    EDCODGRUPO.Text:='';
    EDCODSUBGRUPO.Text:='';
    DBGRUPO.TEXT:='';
    DBSUBGRUPO.TEXT:='';
    CodSitTrib.Text:='';
    DescSitTrib.Text:='';
    EdCodUnidadeCompra.Text:='';
    EdCodUnidadeVenda.Text:='';
    EdUnidadeCompra.Text:='';
    EdUnidadeVenda.Text:='';

    //zera edits de valores
     //LIMPA VALORES PARA O PAINEL DE CONSULTA DE PREÇOS
     EdVlrAtacadoPrazo.ValueNumeric:=0;
     EdVlrAtacadoVista.ValueNumeric:=0;
     EdVlrVarejoPrazo.ValueNumeric:=0;
     EdVlrVarejoVista.ValueNumeric:=0;
     EdVlrIndustriaVista.ValueNumeric:=0;
     EdVlrIndustriaPrazo.ValueNumeric:=0;


    //Inicia Variaveis
    // ULTIMO VALOR DE VENDA A VISTA NO VAREJO
    LvarejoVista.Caption := '0,00';
    // ULTIMO VALOR DE VENDA A VISTA NO VAREJO
    LVarejoPrazo.Caption := '0,00';
    // ULTIMO VALOR DE VENDA A VISTA NO ATACADO
    LAtacVista.Caption := '0,00';
    // ULTIMO VALOR DE VENDA A PRAZO NO ATACADO
    LAtacPrazo.Caption := '0,00';

    If XCOD_ESTOQUE > 0
    Then Begin
       //Repassa aos componentes os valores de descontos para o produto que eh configurado em empresa
       RepassaDescontos;
    End;

  	 //EDCODGRUPO.SetFocus;

    PConsulta.Visible:=False;
    PCadastro.Visible:=TRUE;
    PCadastro.BringToFront;
    EDCODGRUPO.Text:='';
    EDCODSUBGRUPO.Text:='';
    PNovaFaixaPreco.Visible:=False;

    DBCODINTERNO.MaxLength:=3;
    LDescSimilar.Caption:='Descrição do Similar';
    //Informa as cores a combo
    InfoCores;
End;

//Relaiza cálculos para o produto
Procedure TFProduto.CalculoVenda(DescVistaVar: Real; AcrecPrazoVar: Real; DescVistaAtac: Real; AcrecPrazoAtac: Real; DescVistaInd: Real; AcrecPrazoInd: Real; ComVistaVar: Real; ComPrazoVar: Real; ComVistaAtac: Real; ComPrazoAtac: Real; XRET: INTEGER; XCALCLUC: INTEGER);
var
X,Y,Z,ST, B,C,F,I,G,H :Real;
VlrVenda: Real;
XBaseCalc: Real;
XCredICMSFrete: Real;
XCredICMS: Real;
begin
	//CALCULA BASE DE CALCULO P/ LUCRO REAL/PRESUMIDO
	XBaseCalc:=Dmestoque.Testoque.Fieldbyname('VLRUNITCOMP').ascurrency-((Dmestoque.Testoque.Fieldbyname('VLRUNITCOMP').ascurrency*Dmestoque.Testoque.Fieldbyname('DESCONTO').ascurrency)/100)+((Dmestoque.Testoque.Fieldbyname('VLRUNITCOMP').ascurrency*Dmestoque.Testoque.Fieldbyname('ACRECIMO').ascurrency)/100);

	//CALCULANDO CUSTOS ADICIONAIS PARA (VALREP)
   If DMMACS.TEmpresa.FieldByName('TIPOEMPRESA').AsString='SIMPLES'
   Then Begin
		X:= (Dmestoque.Testoque.Fieldbyname('VLRUNITCOMP').ascurrency * (Dmestoque.TSubprod.Fieldbyname('IPIPROD').ascurrency) /100);
		Y:= (Dmestoque.Testoque.Fieldbyname('VLRUNITCOMP').ascurrency * (Dmestoque.TEstoque.Fieldbyname('FRETE').ascurrency) /100);
		Z:= (Dmestoque.Testoque.Fieldbyname('VLRUNITCOMP').ascurrency * (Dmestoque.TSubprod.Fieldbyname('EMBPROD').ascurrency) /100);
		ST:= (Dmestoque.Testoque.Fieldbyname('VLRUNITCOMP').ascurrency * (Dmestoque.TEstoque.Fieldbyname('PIS').ascurrency) /100);
   End
   Else Begin
		X:= (XBaseCalc*(Dmestoque.TSubprod.Fieldbyname('IPIPROD').ascurrency)/100);
		Y:= (XBaseCalc*(Dmestoque.TEstoque.Fieldbyname('FRETE').ascurrency)/100);
		Z:= (XBaseCalc*(Dmestoque.TSubprod.Fieldbyname('EMBPROD').ascurrency)/100);
		ST:= (XBaseCalc*(Dmestoque.TEstoque.Fieldbyname('PIS').ascurrency)/100);
   End;
   //CALCULA CREDITO DE ICMS P/ FRETE
   XCredICMSFrete:=((Y*Dmestoque.TEstoque.Fieldbyname('ICMS').ascurrency)/100);

   //CALCULA CREDITO DE ICMS
   XCredICMS:=((XBaseCalc*Dmestoque.TEstoque.Fieldbyname('ICMS').ascurrency)/100);

   //CALCULO CUSTO LIQUIDO NOMMINAL CORRIGIDO (CLNC)
   DMESTOQUE.TEstoque.Edit;
	Dmestoque.TEstoque.Fieldbyname('CLNC').ascurrency:=XBaseCalc+X+Z+Y-XCredICMSFrete-XCredICMS;
   DMESTOQUE.TEstoque.Post;

	//CALCULANDO VALOR DE REPOSIÇÃO (VALREP)
   If DMMACS.TEmpresa.FieldByName('TIPOEMPRESA').AsString='SIMPLES'
   Then Begin
   	DMESTOQUE.TEstoque.Edit;
		Dmestoque.Testoque.Fieldbyname('VALREP').ascurrency:= Dmestoque.Testoque.Fieldbyname('VLRUNITCOMP').ascurrency + (X + Y + Z + ST);
       DMESTOQUE.TEstoque.Post;
   End
   Else Begin
       If DMMACS.TEmpresa.FieldByName('CREDITAIPI').AsString='1'
       Then Begin
			//Empresa possui credito IPI
           DMESTOQUE.TEstoque.Edit;
			Dmestoque.Testoque.Fieldbyname('VALREP').ascurrency:=XBaseCalc+Y-XCredICMSFrete+ST;
           DMESTOQUE.TEstoque.Post;
       End
       Else Begin
			//Empresa nao possui credito IPI
           DMESTOQUE.TEstoque.Edit;
			Dmestoque.Testoque.Fieldbyname('VALREP').ascurrency:=XBaseCalc+Y+X-XCredICMSFrete+ST;
           DMESTOQUE.TEstoque.Post;
       End;
   End;

   //COEFICIENTE DE DIVISAO
   If DMMACS.TEmpresa.FieldByName('TIPOEMPRESA').AsString='SIMPLES'
   Then Begin
		//COEFICIENTE P/ EMPRESA SIMPLES
       DMESTOQUE.TEstoque.Edit;
		Dmestoque.Testoque.Fieldbyname('COEFDIV').ascurrency := (100 - (DMMacs.Tempresa.Fieldbyname('IMPEST').ascurrency + DMMacs.Tempresa.Fieldbyname('IMPFED').ascurrency + COMVISTAVAR + DESCVISTAVAR + DMESTOQUE.TEstoque.FieldByname('OUTROS').ascurrency))/100;
       DMESTOQUE.TEstoque.Post;
   End
   Else Begin
		//COEFICIENTE P/ EMPRESA LUCRO REAL E PRESUMIDO
       If DMMACS.TEmpresa.FieldByName('CALCULAIPI').AsString='1'
       Then Begin
       	// DESTACA IPI
           DMESTOQUE.TEstoque.Edit;
			Dmestoque.Testoque.Fieldbyname('COEFDIV').ascurrency := (100 - (Dmestoque.Testoque.Fieldbyname('ICMS').ascurrency + Dmestoque.TSubProd.Fieldbyname('IPIPROD').ascurrency +COMVISTAVAR + DESCVISTAVAR+DMESTOQUE.TEstoque.FieldByname('IMPEXP').ascurrency+DMESTOQUE.TEstoque.FieldByname('IMPREND').ascurrency+DMESTOQUE.TEstoque.FieldByname('COFINS').ascurrency+DMESTOQUE.TEstoque.FieldByname('PIS').ascurrency+DMESTOQUE.TEstoque.FieldByname('CONTSOC').ascurrency))/100;
           DMESTOQUE.TEstoque.Post;
       End
       Else Begin
       	// NAO DESTACA IPI
           DMESTOQUE.TEstoque.Edit;
			Dmestoque.Testoque.Fieldbyname('COEFDIV').ascurrency := (100 - (Dmestoque.Testoque.Fieldbyname('ICMS').ascurrency+COMVISTAVAR + DESCVISTAVAR+DMESTOQUE.TEstoque.FieldByname('IMPEXP').ascurrency+DMESTOQUE.TEstoque.FieldByname('IMPREND').ascurrency+DMESTOQUE.TEstoque.FieldByname('COFINS').ascurrency+DMESTOQUE.TEstoque.FieldByname('PIS').ascurrency+DMESTOQUE.TEstoque.FieldByname('CONTSOC').ascurrency))/100;
           DMESTOQUE.TEstoque.Post;
       End;
   End;
	//Valor do Produto com Valor de Reposição + os Impostos
	B:=(Dmestoque.Testoque.Fieldbyname('VALREP').ascurrency / Dmestoque.Testoque.Fieldbyname('COEFDIV').ascurrency);
	DMESTOQUE.TEstoque.Edit;
   DMESTOQUE.TEstoque.FieldByName('VLRBONIFIC').AsCurrency:=DMESTOQUE.TEstoque.FieldByName('VENDVARV').AsCurrency-(DMESTOQUE.TEstoque.FieldByName('VENDVARV').AsCurrency*DMESTOQUE.TEstoque.FieldByName('BONIFICACAO').AsCurrency)/100;
   DMESTOQUE.TEstoque.FieldByName('VALOREST').AsCurrency:=(DMESTOQUE.TEstoque.Fieldbyname('VALREP').AsCurrency/DMESTOQUE.TEstoque.Fieldbyname('COEFDIV').AsCurrency)*DMESTOQUE.TEstoque.Fieldbyname('ESTFISICO').AsCurrency;
	DMESTOQUE.TEstoque.Post;
	//CALCULANDO VALOR DE VENDA VAREJO A VISTA  (VENDAVARV)
	//Achando o Segundo Coeficiente.
  	C := (Dmestoque.Testoque.Fieldbyname('LUCRATIVIDADE').ascurrency / 100)+1;
   If XCALCLUC=0
   Then Begin//parametro que determina que o sistyema deve calcular os valores de venda do produto
		//Valor do Produto com Valor de Reposição + os Impostos + Lucratividade
   	If DMMACS.TEmpresa.FieldByName('TIPOEMPRESA').AsString='SIMPLES'
   	Then Begin
       	DMESTOQUE.TEstoque.Edit;
			Dmestoque.Testoque.Fieldbyname('VENDVARV').Ascurrency := (B * C);
		   //	Dmestoque.Testoque.Fieldbyname('MARGEMSEG').Ascurrency := (B * ((Dmestoque.Testoque.Fieldbyname('PERCMARGSEG').ascurrency / 100) + 1));
           DMESTOQUE.TEstoque.Post;
       End
       Else Begin
       	DMESTOQUE.TEstoque.Edit;
			Dmestoque.Testoque.Fieldbyname('VENDVARV').Ascurrency:=(Dmestoque.Testoque.Fieldbyname('VALREP').Ascurrency+((Dmestoque.Testoque.Fieldbyname('VALREP').Ascurrency*Dmestoque.Testoque.Fieldbyname('OUTROS').Ascurrency)/100)+((Dmestoque.Testoque.Fieldbyname('VALREP').Ascurrency*Dmestoque.Testoque.Fieldbyname('MOD').Ascurrency)/100))/Dmestoque.Testoque.Fieldbyname('COEFDIV').Ascurrency;
		   //	Dmestoque.Testoque.Fieldbyname('MARGEMSEG').Ascurrency :=Dmestoque.Testoque.Fieldbyname('VENDVARV').Ascurrency;
			Dmestoque.Testoque.Fieldbyname('VENDVARV').Ascurrency:=Dmestoque.Testoque.Fieldbyname('VENDVARV').Ascurrency+((Dmestoque.Testoque.Fieldbyname('VENDVARV').Ascurrency*Dmestoque.Testoque.Fieldbyname('LUCRATIVIDADE').Ascurrency))/100;
		   //	Dmestoque.Testoque.Fieldbyname('MARGEMSEG').Ascurrency:=Dmestoque.Testoque.Fieldbyname('MARGEMSEG').Ascurrency+((Dmestoque.Testoque.Fieldbyname('MARGEMSEG').Ascurrency*Dmestoque.Testoque.Fieldbyname('PERCMARGSEG').Ascurrency))/100;
           DMESTOQUE.TEstoque.Post;
       End;

		//CALCULANDO VALOR DE VENDA VAREJO A PRAZO  (VENDAVARP)
       DMESTOQUE.TEstoque.Edit;
		Dmestoque.Testoque.Fieldbyname('VENDVARP'). Ascurrency := (Dmestoque.Testoque.Fieldbyname('VENDVARV'). Ascurrency +  ((Dmestoque.Testoque.Fieldbyname('VENDVARV'). Ascurrency * AcrecPrazoVar) / 100));
		DMESTOQUE.TEstoque.Post;
		//CALCULANDO VALOR DE VENDA ATACADO A VISTA  (VENDATAV)
		F:= Dmestoque.Testoque.Fieldbyname('VENDVARV'). Ascurrency;
       DMESTOQUE.TEstoque.edit;
		Dmestoque.Testoque.Fieldbyname('VENDATAV'). Ascurrency :=  (Dmestoque.Testoque.Fieldbyname('VENDVARV'). Ascurrency -  ((Dmestoque.Testoque.Fieldbyname('VENDVARV'). Ascurrency * DESCVISTAATAC) / 100));
       DMESTOQUE.TEstoque.post;
		//CALCULANDO VALOR DE VENDA ATACADO A PRAZO  (VENDATAP)
		I := Dmestoque.Testoque.Fieldbyname('VENDATAV'). Ascurrency;
       DMESTOQUE.TEstoque.edit;
		Dmestoque.Testoque.Fieldbyname('VENDATAP'). Ascurrency :=  (Dmestoque.Testoque.Fieldbyname('VENDVARV'). Ascurrency -  ((Dmestoque.Testoque.Fieldbyname('VENDVARV'). Ascurrency * ACRECPRAZOATAC) / 100));
       DMESTOQUE.TEstoque.post;

       //Edmar - 27/05/2014 - Calcula o valor de venda para industria a vista
		//G:= Dmestoque.Testoque.Fieldbyname('VENDINDV'). Ascurrency;
       DMESTOQUE.TEstoque.edit;
		Dmestoque.Testoque.Fieldbyname('VENDINDV'). Ascurrency :=  (Dmestoque.Testoque.Fieldbyname('VENDVARV'). Ascurrency -  ((Dmestoque.Testoque.Fieldbyname('VENDVARV'). Ascurrency * DescVistaInd) / 100));
       DMESTOQUE.TEstoque.post;
       //Edmar - 27/05/2014 - Calcula o valor de venda para industria a prazo
		//H := Dmestoque.Testoque.Fieldbyname('VENDINDP'). Ascurrency;
       DMESTOQUE.TEstoque.edit;
		Dmestoque.Testoque.Fieldbyname('VENDINDP'). Ascurrency :=  (Dmestoque.Testoque.Fieldbyname('VENDVARV'). Ascurrency -  ((Dmestoque.Testoque.Fieldbyname('VENDVARV'). Ascurrency * AcrecPrazoInd) / 100));
       DMESTOQUE.TEstoque.post;
	End
   Else Begin
		//CALCULANDO VALOR DE VENDA VAREJO A PRAZO  (VENDAVARP)
       DMESTOQUE.TEstoque.Edit;
		Dmestoque.Testoque.Fieldbyname('VENDVARP'). Ascurrency := (Dmestoque.Testoque.Fieldbyname('VENDVARV'). Ascurrency +  ((Dmestoque.Testoque.Fieldbyname('VENDVARV'). Ascurrency * AcrecPrazoVar) / 100));
       DMESTOQUE.TEstoque.post;
		//CALCULANDO VALOR DE VENDA ATACADO A VISTA  (VENDATAV)
		F:= Dmestoque.Testoque.Fieldbyname('VENDVARV'). Ascurrency;
       DMESTOQUE.TEstoque.Edit;
		Dmestoque.Testoque.Fieldbyname('VENDATAV'). Ascurrency :=  (Dmestoque.Testoque.Fieldbyname('VENDVARV'). Ascurrency -  ((Dmestoque.Testoque.Fieldbyname('VENDVARV'). Ascurrency * DESCVISTAATAC) / 100));
       DMESTOQUE.TEstoque.post;
		//CALCULANDO VALOR DE VENDA ATACADO A PRAZO  (VENDATAP)
		I := Dmestoque.Testoque.Fieldbyname('VENDATAV'). Ascurrency;
       DMESTOQUE.TEstoque.Edit;
		Dmestoque.Testoque.Fieldbyname('VENDATAP'). Ascurrency :=  (Dmestoque.Testoque.Fieldbyname('VENDVARV'). Ascurrency -  ((Dmestoque.Testoque.Fieldbyname('VENDVARV'). Ascurrency * ACRECPRAZOATAC) / 100));
       DMESTOQUE.TEstoque.post;

       DMESTOQUE.TEstoque.Edit;
		Dmestoque.Testoque.Fieldbyname('VENDINDV'). Ascurrency :=  (Dmestoque.Testoque.Fieldbyname('VENDVARV'). Ascurrency -  ((Dmestoque.Testoque.Fieldbyname('VENDVARV'). Ascurrency * DescVistaInd) / 100));
       DMESTOQUE.TEstoque.post;
       //Edmar - 27/05/2014 - Calcula o valor de venda para industria a prazo
		//H := Dmestoque.Testoque.Fieldbyname('VENDINDP'). Ascurrency;
       DMESTOQUE.TEstoque.edit;
		Dmestoque.Testoque.Fieldbyname('VENDINDP'). Ascurrency :=  (Dmestoque.Testoque.Fieldbyname('VENDVARV'). Ascurrency -  ((Dmestoque.Testoque.Fieldbyname('VENDVARV'). Ascurrency * AcrecPrazoInd) / 100));
       DMESTOQUE.TEstoque.post;

   	//Como o sistema não deve calcular o valor de venda ele deve informar qual a lucratividade alcançada pelo valor de venda informado pelo usuário
		If XRET=1
       Then Begin//verifica se foi informado um valor de venda para calcular a lucratividade
			DBLucrat.Text:=FormatFloat('0,00',((Dmestoque.Testoque.Fieldbyname('VENDVARV').Ascurrency/B)-1)*100);
           DMESTOQUE.TEstoque.Edit;
           Dmestoque.Testoque.Fieldbyname('LUCRATIVIDADE').Ascurrency:=((Dmestoque.Testoque.Fieldbyname('VENDVARV').Ascurrency/B)-1)*100;
           DMESTOQUE.TEstoque.post;
		End
       Else Begin
			FMenu.TIPOAUX:=FormatFloat('###,##0,00',((Dmestoque.Testoque.Fieldbyname('VENDVARV').Ascurrency/B)-1)*100);
       End;
   End;
   If XRET=1
   Then Begin
      //se estiver no form de produtos
	   //CALCULA VALORES EM MOEDA
	   If Dmestoque.Testoque.Fieldbyname('AVVPROVAR').Ascurrency<>0 Then
	   		CalcLuc(Dmestoque.Testoque.Fieldbyname('VENDVARV').AsCurrency, Dmestoque.Testoque.Fieldbyname('AVVPROVAR').AsCurrency, 1)
	   Else
		   	CalcLuc(Dmestoque.Testoque.Fieldbyname('VENDVARV').AsCurrency, DMMACS.TEmpresa.Fieldbyname('AVVPROVAR').AsCurrency, 1);
	   //PASSA ESTES VALORES PARA AS EDITS;

	   EDIFED.ValueNumeric:=AlxIMPFED;
	   EDIEST.ValueNumeric:=AlxIMPEST;
	   EDCOMISS.ValueNumeric:=AlxCOMISS;
	   EDOUTROS.ValueNumeric:=AlxOUTROS;
	   EDDESCIMP.ValueNumeric:=AlxDESCIMP;
	   EDLUCBRUTO.ValueNumeric:=AlxLUCBRUTO;
	   EDDESCVALREP.ValueNumeric:=AlxDESCVALREP;
      EdLucReal.ValueNumeric:=ALXLUCREAL;
      EdLucBonif.ValueNumeric:=ALXLUCBONIFIC;
	   EDLUCSDESC.ValueNumeric:=AlxLUCMOE;{Dmestoque.Testoque.Fieldbyname('VENDVARV').AsCurrency-((1*(DMESTOQUE.TEstoque.fieldbyname('VALREP').AsCurrency/DMESTOQUE.TEstoque.fieldbyname('COEFDIV').AsCurrency))-((1*(DMESTOQUE.TEstoque.fieldbyname('VALREP').AsCurrency/DMESTOQUE.TEstoque.fieldbyname('COEFDIV').AsCurrency))*0)/100)};
      EdCustoTotal.ValueNumeric:=DMESTOQUE.TEstoque.Fieldbyname('VALREP').AsCurrency/DMESTOQUE.TEstoque.Fieldbyname('COEFDIV').AsCurrency;
      //REPETE CALCULO SEM ALIQUOTA
	   If Dmestoque.Testoque.Fieldbyname('AVVPROVAR').Ascurrency<>0 Then
	   		CalcLuc(Dmestoque.Testoque.Fieldbyname('VENDVARV').AsCurrency-((Dmestoque.Testoque.Fieldbyname('VENDVARV').AsCurrency)*Dmestoque.Testoque.Fieldbyname('AVVPROVAR').AsCurrency)/100, 0, 1)
	   Else
		   	CalcLuc(Dmestoque.Testoque.Fieldbyname('VENDVARV').AsCurrency-((Dmestoque.Testoque.Fieldbyname('VENDVARV').AsCurrency)*DMMACS.TEmpresa.Fieldbyname('AVVPROVAR').AsCurrency)/100, 0, 1);

	   EDLUCLIQ.ValueNumeric:=AlxLUCMOE{Dmestoque.Testoque.Fieldbyname('VENDVARV').AsCurrency-(((DMESTOQUE.TEstoque.fieldbyname('VALREP').AsCurrency/DMESTOQUE.TEstoque.fieldbyname('COEFDIV').AsCurrency))-(((DMESTOQUE.TEstoque.fieldbyname('VALREP').AsCurrency/DMESTOQUE.TEstoque.fieldbyname('COEFDIV').AsCurrency))*DMESTOQUE.TEstoque.fieldbyname('AVVPROVAR').AsCurrency)/100)};


     // - 19/06/2009: calcula PMC se foi informado um valor para a MVA
     If DMESTOQUE.TEstoque.Fieldbyname('MVA').AsCurrency > 0
     Then Begin
       Try
        DMESTOQUE.TEstoque.Edit;
        DMESTOQUE.TEstoque.Fieldbyname('PMC').AsCurrency := Dmestoque.Testoque.Fieldbyname('VENDVARV').AsCurrency + ((Dmestoque.Testoque.Fieldbyname('VENDVARV').AsCurrency * DMESTOQUE.TEstoque.Fieldbyname('MVA').AsCurrency)/100);
        DMESTOQUE.TEstoque.Post;
       Except
       End;
     End;

	End;
End;

//Relaiza cálculos para o produto
Function TFProduto.CalculoMargemSeguranca;
var
	B :Real;
begin
    //Valor do Produto com Valor de Reposição + os Impostos
    B:=(Dmestoque.Testoque.Fieldbyname('VALREP').ascurrency / Dmestoque.Testoque.Fieldbyname('COEFDIV').ascurrency);
    DMESTOQUE.TEstoque.Edit;
    Dmestoque.Testoque.Fieldbyname('MARGEMSEG').Ascurrency := (B * ((Dmestoque.Testoque.Fieldbyname('PERCMARGSEG').ascurrency / 100) + 1));
    DMESTOQUE.TEstoque.Post;
End;

procedure TFProduto.FormActivate(Sender: TObject);
begin
  inherited;
	 Caption:='Produtos';
   XCOD_ESTOQUE := -1;
   XCODSUBPROD := -1;
   XCODPKMESTRE := -1;
  XCOPIAITEM := False;
  //Limpa os edits de consulta
  EDProduto.Text:='';
  EdCodBarra.Text:='';
  EdCtrlInt.Text:='';
  EDCodFab.Text:='';
  EDSimilar.Text:='';
  //SETA OS DATA SETS
  DBGridCadastroPadrao.DataSource:=DMESTOQUE.DWProduto;
  DBGrid1.DataSource:=DMESTOQUE.DWSimilar;
  XTabela:=DMEstoque.TProduto;
  XCampo:='descricao';
  XTransaction:=DMEstoque.TransacEstoque;
  XPkTabela:='COD_PRODUTO';
  XTab:=True;
  XDescricao:= 'O Produto';
  XSQLTABELA:='PRODUTO'; 

  //Paulo 07/07/2011: Esconde o painel de códigos
  PCodigos.Visible:=False;
  PCodigos.SendToBack;
  XConsulta:=False;

  // verificar se arquivo de layout foi salvo anteriormente
   If FileExists('C:\MZR\Arquivos\LayoutGrid\produto.lgm')
   Then
       DBGrid1.Columns.LoadFromFile('C:\MZR\Arquivos\LayoutGrid\produto.lgm');

  //Edmar - 23/09/2014 - Iniciliza com -1 o codigo do cfop para não haver erros
  XCODCFOPDENTRO := -1;
  XCODCFOPFORA := -1;

  XCOD_ULTPROD:=-1;//define código do ultimo produto cadastrado como -1 para não haver erros
  Xaux:=-1;
  EdCodUnidadeCompra.Text:='';
  EdCodUnidadeVenda.Text:='';
  EdUnidadeCompra.Text:='';
  EdUnidadeVenda.Text:='';
  //habilita ou desabilita grade
  HabidesabiGrade;
  
  //controla a visibilidade do valor de custo na grid de similares
  if DMMACS.TLoja.FieldByName('REVELCUSTOPRODUTO').AsInteger=1 Then begin
    DBGrid1.Columns.Items[1].Visible := true;
  end;

  	//controla a visibilidade dos labels de F10 e f11 para cópias
  	if DMMACS.TLoja.FieldByName('DESABCOPIAPRODUTOS').AsString='1'
	Then begin
       LF10.Visible:=false;
       LF11.Visible:=false;
  	end
	else Begin
       LF10.Visible:=true;
       LF11.Visible:=true;
	End;

  //Paulo 02/2/2011: controla a visibilidade do estoque da loja matriz na grid de similares
  if DMMACS.TLoja.FieldByName('MOSTRAESTOQUE').AsString= '1' Then begin
     DBGrid1.Columns.Items[3].Visible := true;
  end;
  //Habilita o painel de contas para o uso de contas associada ao produto
  if(DMMACS.TLoja.FieldByName('PLANOCTAPROD').AsString = '1') Then
       TabSheet13.TabVisible:=True
  Else
       TabSheet13.TabVisible:=False;

  //Habilita o painel de tabela de preços e o controle de desgaste
  if DMMACS.TLoja.FieldByName('ATIVIDADE').AsString='LOCAÇÃO'
  Then Begin
  		cbCtrlDesgaste.Visible := True;
       cbCtrlHora.Visible := True;
       TabSheet14.TabVisible:=True;
       TabSheet15.TabVisible:=True;
		Label60.Caption:='Nº Série:';
		Label62.Caption:='Voltagem:';
  End
  Else Begin
       TabSheet14.TabVisible:=False;
       TabSheet15.TabVisible:=False;
		Label60.Caption:='Controle Int.:';
		Label62.Caption:='Loc. Estante:';
  End;

  //Controla o painel de consulta de produto simples ou composto
  If filtraTabela(DMMacs.TLoja, 'LOJA', 'COD_LOJA', FMenu.LCODLOJA.Caption, '')=True
  Then Begin
  		//Passa caption a label auxiliar
       LTextoAuxProd.Caption:=DMMACS.TLoja.FieldByName('NOMECAMPOAUXPROD').AsString;
       //DEFINE TAMANHO MÁXIMO PARA AS EDITS DE GRUPO E SUBGRUPO
       EDCODGRUPO.MaxLength:=3;
       EDCODSUBGRUPO.MaxLength:=3;
       //FILTRA PRODUTOS DE ACORDO COM A LOJA E SELECAO ESTIPULADA
       If FMenu.TIPOAUX='MATPRIM'
       Then Begin
           If DMMACS.TLoja.FieldByName('COD_GRUPOMT').AsString=''
           Then Begin
		        Mensagem('INFORMAÇÃO', 'Registre o grupo de materias prima na configuração do sistema!', '', 1, 1, False, 'a');
               Exit;
           End
           Else Begin
       	   // FiltraTabela(DMESTOQUE.WProduto, 'VWPRODUTO', 'COD_LOJA', '', '  (vwproduto.cod_loja='+#39+FMenu.LCODLOJA.Caption+#39+') AND (vwproduto.cod_grupoprod='+#39+DMMACS.TLoja.FieldByName('COD_GRUPOMT').AsString+#39+') Order By Produto');
           End;
       End
  		Else Begin
         	//FiltraTabela(DMESTOQUE.WProduto, 'VWPRODUTO', 'COD_LOJA', FMenu.LCODLOJA.Caption, ' Order By Produto');
       End;

       //FILTRA SIMILAR DE ACORDO COM O PRODUTO
       FiltraTabela(DMESTOQUE.WProduto, 'VWPRODUTO', '','', '');
       SelectSim;
  End;
  LQtdItem.Caption:=IntToStr(RetornaNumItens)+ ' Itens Cadastrados';
  LQtdItem2.Caption:=IntToStr(RetornaNumItens)+ ' Itens Cadastrados Geral';
  //Controla o aparecimento do botão selecionar
  If BtnSelecionar.Visible=True
  Then Begin
    BtnSelecionar2.Visible:=True;
  End
  Else Begin
    BtnSelecionar2.Visible:=False;
  End;
  If FMenu.TIPOAUX='PEDVENDA' Then
   EDSimilar.SetFocus;

  //Paulo 04/11/2011: Para grade mostra a quantidade de itens
  if DMMACS.TLoja.FieldByName('OPERADESCCUPOM').AsInteger=0 then
  begin
       PContEst.Visible:=true;
       LQtdItem.Visible:=False;
       PContEst.BringToFront;
  end
  else begin
       LQtdItem.Visible:=True;
       PContEst.Visible:=false;
       PContEst.SendToBack;
  end;

  SomaProdutosMarcados;

end;

//Paulo 15/12/2011: Mostra a quantidade de itens marcados
procedure TFProduto.SomaProdutosMarcados();
begin
  
   DMMACS.TALX.Close;
   DMMACS.TALX.SQL.Clear;
   DMMACS.TALX.SQL.Add(' select count(subproduto.cod_subproduto) as quantidade from subproduto ');
   DMMACS.TALX.SQL.Add('where subproduto.mark = :MARK');
   DMMACS.TALX.ParamByName('MARK').AsString:='X';
   DMMACS.TALX.Open;
   lbProdMarcados.Caption:='Itens Marcados: '+DMMACS.TALX.FieldByName('quantidade').AsString;


end;

procedure TFProduto.EDSimilarEnter(Sender: TObject);
begin
  inherited;
	EDSimilar.Color:=$00A6FFFF;
end;
 

//Paulo 26/05/2010: abre a tela para cadastrar novo subproduto
procedure TFProduto.BtnNovoClick(Sender: TObject);
begin
  //ALEX 03/02/2015 - o bloco abaixo fecha e reabre as tabelas para garantir que o erro de close dataset não venha a ocorrer, este código deve ser mantido
  DMESTOQUE.TEstoque.Close;
  DMESTOQUE.TEstoque.SQL.Clear;
  DMESTOQUE.TEstoque.SQL.Add(' SELECT FIRST 1 * FROM  ESTOQUE ');
  DMESTOQUE.TEstoque.Open;
  DMESTOQUE.TSubProd.Close;
  DMESTOQUE.TSubProd.SQL.Clear;
  DMESTOQUE.TSubProd.SQL.Add(' SELECT FIRST 1 * FROM SUBPRODUTO ');
  DMESTOQUE.TSubProd.Open;
  DMESTOQUE.TProduto.Close;
  DMESTOQUE.TProduto.SQL.Clear;
  DMESTOQUE.TProduto.SQL.Add(' SELECT FIRST 1 * FROM PRODUTO ');
  DMESTOQUE.TProduto.Open;

  cbRetemPisCofins.Checked := False;
    
  XAcessorio:=False;
  PcAdicionais.ActivePage:=TabSheet1;
  PAdicionaTabelaFaixa.Visible:=False;
  PNovaFaixaPreco.Visible:=False;
  PNovaTabela.Visible:=False;

  //EFETUA CONTROLE DE ACESSO
  If ControlAccess('PRODUTOS', 'M')=False Then
  	Exit;

  //Paulo 16/03/2012: Limpa os edits de produto
  XConsulta:=False;
  XCOD_ULTPROD:=-1;//inutiliza a varável para informar que não esta sendo usado a função de F11
  CadastrarumProdutoSimilar1Click(Self);

  //Edmar - 23/09/2014 - Inicializa com -1 a variavel do cfop
  //e limpa os campos
  XCODCFOPFORA := -1;
  pCfopForaEstado.EDCodigo.Text := '';
  pCfopForaEstado.EdDescricao.Text := '';

  XCODCFOPDENTRO := -1;
  pCfopDentroEstado.EDCodigo.Text := '';
  pCfopDentroEstado.EdDescricao.Text := '';

  //Verifica se trabalho com o uso da grade ou de forma simples
  If DMMACS.TLoja.FieldByName('OPERADESCCUPOM').AsInteger=1 Then
  begin
   	EDCODGRUPO.SetFocus;
  end
  Else begin
   	DBCODPRODUTO.SetFocus;
       DBCODPRODUTO.Text:='';
       DBDESPROD.Text:='';
  end;

  if DBACRECIND.Text = '' then
  		DBACRECIND.Text := '0';

  if DBDESCInd.Text = '' then
  		DBDESCInd.Text := '0';

  cbComponente.Checked := False;
  cbAcessorio.checked := False;
end;

procedure TFProduto.BtnCancelarClick(Sender: TObject);
begin
//  inherited;

    if(XCOD_ULTPROD>=0) and (XConsulta = false) THEN
    begin
       DMEstoque.TSubProd.Delete;
       DMEstoque.TransacEstoque.CommitRetaining;
    end
    else begin
       DMEstoque.TransacEstoque.RollbackRetaining;
       DMEstoque.TransacEstoque.RollbackRetaining;
    end;   

    PCadastro.Visible:=False;
    PConsulta.Visible:=true;
    PConsulta.BringToFront;

    // apagando o painel
    PValores.Visible := false;
    PValores.SendToBack;
    XConsulta:=False;
end;

procedure TFProduto.BTNOPENClick(Sender: TObject);
begin
  inherited;
    FiltraTabela(DMEstoque.TGrupo, 'grupoprod', '', '', '');
    If AbrirForm(TFCadGrupo, FCadGrupo, 1)='Selected'
    Then Begin
		 XCodGrupo:=DMEstoque.TSubgru.FieldByName('cod_grupoprod').AsInteger;
        DBGRUPO.TEXT:=DMEstoque.TSubgru.FieldByName('DESCRICAO').AsString;
        EDCODGRUPO.Text:=DMEstoque.TSubgru.FieldByName('cod_grupoprod').AsString;
    End;
end;

procedure TFProduto.BtnGravarClick(Sender: TObject);
VAR
	CONTRINTOK: BYTE;
   XFlacContrint: Integer;
   XControleInternoAntigo, xCodEstoqueAtuCusto: String;
begin
	 //VERIFICA A EXISTENECIA CORRETA DE UM GRUPO
	 If (EDCODGRUPO.TEXT='')
    Then Begin
        Mensagem('INFORMAÇÃO AO USUÁRIO', '"GRUPO" não encontrado.', '', 1, 1, False, 'I');
		 EDCODGRUPO.SetFocus;
		 Exit;
    end;

	 //VERIFICA A EXISTENECIA CORRETA DE UM SUBGRUPO
	 If (EDCODSUBGRUPO.TEXT='')
    Then Begin
        Mensagem('INFORMAÇÃO AO USUÁRIO', '"SUBGRUPO" não encontrado.', '', 1, 1, False, 'I');
		 EDCODSUBGRUPO.SetFocus;
		 Exit;
    end;
    // Bloqueio o cadastro do produto caso não seja informado o Código do produto.
    If (DbCodProduto.Text = '')  and (DMMACS.TLoja.FieldByName('OPERADESCCUPOM').AsInteger<>1)
    Then Begin
        Mensagem('INFORMAÇÃO AO USUÁRIO', 'É necesário informar o Código ou nome do Produto para que possa ser cadastrado.', '', 1, 1, False, 'I');
        DbCodProduto.SetFocus;
        exit;
    end;

    // Bloqueio o cadastro do produto caso não seja informado a Descrição do produto.
    If (DbDesProd.Text = '') and (DMMACS.TLoja.FieldByName('OPERADESCCUPOM').AsInteger<>1)
    Then Begin
        Mensagem('INFORMAÇÃO AO USUÁRIO', 'É necesário informar a descrição do Produto para que possa ser cadastrado.', '', 1, 1, False, 'I');
        DbDesProd.SetFocus;
        exit;
    end;
    // Bloqueio o cadastro do produto caso não seja informado a Unidade do produto.
    If (EdCodUnidadeCompra.Text='')
    Then Begin
        Mensagem('INFORMAÇÃO AO USUÁRIO', 'É necesário informar a Unidade do Produto para que possa ser cadastrado.', '', 1, 1, False, 'I');
        EdCodUnidadeCompra.SetFocus;
        exit;
    end;
    // Bloqueio o cadastro do produto caso não seja informado a Unidade de venda
    If (EdCodUnidadeVenda.Text = '')
    Then Begin
        Mensagem('INFORMAÇÃO AO USUÁRIO', 'É necesário informar a Unidade de venda do Produto para que possa ser cadastrado.', '', 1, 1, False, 'I');
        EdCodUnidadeVenda.SetFocus;
        exit;
    end;

    // Bloqueio o cadastro do produto caso não seja informado a Situação Tributária do produto.
    If (DescSitTrib.text = '')
    Then Begin
        Mensagem('INFORMAÇÃO AO USUÁRIO', 'É necesário informar a Situação Tributária do Produto para que possa ser cadastrado.', '', 1, 1, False, 'I');
        BtnCST.SetFocus;
        exit;
    end;
    // Bloqueio o cadastro do produto caso não seja informado a Código do Similar do produto.
    If (DBCODINTERNO.text = '')
    Then Begin
        Mensagem('INFORMAÇÃO AO USUÁRIO', 'É necesário informar o Código do Similar do Produto para que possa ser cadastrado.', '', 1, 1, False, 'I');
        Xaux:=1;
        DBCODINTERNO.SetFocus;
        exit;
    end;

    // Bloqueio o cadastro do produto caso não seja informado a Descrição do Similar do produto.
    If (DBDESCRICAOSIM.Text='')
    Then Begin
        Mensagem('INFORMAÇÃO AO USUÁRIO', 'É necesário informar a Descrição do Similar do Produto para que possa ser cadastrado.', '', 1, 1, False, 'I');
        Xaux:=1;
        DBDESCRICAOSIM.SetFocus;
        exit;
    end;
    // Bloqueio o cadastro do produto caso não seja informado a Lucratividade do produto.
    If ((DBLucrat.Text ='') or (dbvalorunitario.Text = ''))
    Then Begin
        Mensagem('INFORMAÇÃO AO USUÁRIO', 'É necessário informar os dados financeiros do Produto para que possa ser cadastrado e para que seja possível calcular o Valor de Venda do mesmo.', '', 1, 1, False, 'I');
        Xaux:=1;
        exit;
    end;
    //verifica do arquivo de configuração se o sistema esta configurado para emitir nota fiscal eletronica, se estiver devemos bloquear o cadastro do produto sem ncm
	 If (DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString='NFe') or (DMMACS.TLoja.FieldByName('CONTROLANCM').AsString='1')
    Then Begin
       If (DMESTOQUE.TSubProd.FieldByName('NCM').AsString<>'') and (Length(DMESTOQUE.TSubProd.FieldByName('NCM').AsString)<>8) and (DMMACS.TLoja.FieldByName('CONTROLANCM').AsString<>'1')
       Then Begin
           Mensagem('OPÇÃO BLOQUEADA', 'Por favor, informe o NCM do produto (NCM válido deve ter tamanho de 8 caracteres), este campo é necessário para emissão da nota fiscal eletrônica.', '', 1, 1, False, 'I');
			Exit;
       End;
       If ((DMMACS.TLoja.FieldByName('CONTROLANCM').AsString='1') or (DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString='NFe'))
       Then Begin
           DMESTOQUE.TNcm.Close;
           DMESTOQUE.TNcm.SQL.Clear;
           DMESTOQUE.TNcm.SQL.Add(' select * from ncm where ncm.ncm=:NCM');
           DMESTOQUE.TNcm.ParamByName('NCM').AsString:=Trim(DBColorEdit16.Text);
           DMESTOQUE.TNcm.Open;
           If DMESTOQUE.TNcm.IsEmpty
           Then Begin
           	Mensagem('OPÇÃO BLOQUEADA', 'O NCM Informado não consta na tabela de NCM', '', 1, 1, False, 'I');
               Exit;
           End;
       End;
    End;
    // Bloqueia o cadastro do produto caso já exista um produto com descrição igual cadastrado.
    Try
    	If DMMACS.TLoja.FieldByName('VERIFDESCPRODUTO').AsString='S'
       Then Begin
       	DMESTOQUE.Alx.Close;
       	DMESTOQUE.Alx.SQL.Clear;
       	DMESTOQUE.Alx.SQL.Add('SELECT * FROM SUBPRODUTO WHERE (DESCRICAO = :DESCRICAO) AND (COD_SUBPRODUTO <> :CODSUB)');
       	DMESTOQUE.Alx.ParamByName('DESCRICAO').AsString:= DMESTOQUE.TSubProd.FIELDBYNAME('DESCRICAO').AsString;
       	DMESTOQUE.Alx.ParamByName('CODSUB').AsString:= IntToStr(XCOD_SIMILAR);
       	DMESTOQUE.Alx.Open;
       	IF NOT(DMESTOQUE.Alx.IsEmpty)
       	Then Begin
		    	Mensagem('INFORMAÇÃO AO USUÁRIO', 'Já existe um produto com a mesma descrição!', '', 1, 1, False, 'I');
           	Xaux:=1;
           	DBDESCRICAOSIM.SetFocus;
	        	exit;
	  		End;
       End;
    Except
    End;

    // Bloqueia o cadastro do produto caso já exista um código de barra igual cadastrado.
    Try
	  If (Trim(DMESTOQUE.TSubProd.FIELDBYNAME('CODBARRA').AsString)<>'') and (Trim(DMESTOQUE.TSubProd.FIELDBYNAME('CODBARRA').AsString)<>'0')
     Then Begin
       	DMESTOQUE.Alx.Close;
           DMESTOQUE.Alx.SQL.Clear;
           DMESTOQUE.Alx.SQL.Add('SELECT * FROM SUBPRODUTO WHERE CODBARRA = :CODBARRA AND COD_SUBPRODUTO <> :CODSUB');

           DMESTOQUE.Alx.ParamByName('CODBARRA').AsString:= DMESTOQUE.TSubProd.FIELDBYNAME('CODBARRA').AsString;
           DMESTOQUE.Alx.ParamByName('CODSUB').AsString:= IntToStr(XCOD_SIMILAR);
           DMESTOQUE.Alx.Open;


      //	If VerifExitVal('SUBPRODUTO', 'COD_SUBPRODUTO', IntToStr(XCOD_SIMILAR), 'CODBARRA', DMESTOQUE.TSubProd.FIELDBYNAME('CODBARRA').AsString)
      IF NOT(DMESTOQUE.Alx.IsEmpty)
	    Then Begin
		    Mensagem('INFORMAÇÃO AO USUÁRIO', 'Já existe um produto com o mesmo código de barras!', '', 1, 1, False, 'I');
           Xaux:=1;
           dbcodbarra.SetFocus;
	        exit;
	    end;
	  End;
    Except
    End;

    // apagando o painel
    PValores.Visible := false;
    PValores.SendToBack;

    SincroValores(0);
    // Bloqueia o cadastro do produto caso já exista um código de fabricante igual cadastrado.
    Try
	  If (Trim(DMESTOQUE.TSubProd.FIELDBYNAME('CODPRODFABR').AsString)<>'')
     Then Begin
       DMESTOQUE.Alx.Close;
       DMESTOQUE.Alx.SQL.Clear;
       DMESTOQUE.Alx.SQL.Add('SELECT * FROM SUBPRODUTO WHERE (UPPER(SUBPRODUTO.CODPRODFABR)=:FAB) AND (SUBPRODUTO.COD_SUBPRODUTO<>:COD)');
       DMESTOQUE.Alx.ParamByName('FAB').AsString:= UpperCase(dbcodfabricante.Text);
       DMESTOQUE.Alx.ParamByName('COD').AsString:=IntToStr(XCOD_SIMILAR);
       DMESTOQUE.Alx.SQL.Text;
       DMESTOQUE.Alx.Open;

	    If Not DMESTOQUE.Alx.IsEmpty
	    Then Begin
		    Mensagem('INFORMAÇÃO AO USUÁRIO', 'Já existe um produto com o mesmo código do fabricante!', '', 1, 1, False, 'I');
           Xaux:=1;
           dbcodfabricante.SetFocus;
	        exit;
	    end;

       //busca se o codigo do fabricante está cadastrado na tabela de codigo de barra
       //sem um fornecedor
       DMESTOQUE.Alx.Close;
       DMESTOQUE.Alx.SQL.Clear;
       DMESTOQUE.Alx.SQL.Add(' SELECT * FROM CODIGOBARRA ');
       DMESTOQUE.Alx.SQL.Add(' WHERE (CODIGOBARRA.CODBARRA = :FAB) ');
       DMESTOQUE.Alx.SQL.Add(' AND ((CODIGOBARRA.CODFORNERC = -1) OR (CODIGOBARRA.CODFORNERC = 0) OR (CODIGOBARRA.CODFORNERC IS NULL)) ');
       DMESTOQUE.Alx.ParamByName('FAB').AsString := DBCODFABRICANTE.Text;
       DMESTOQUE.Alx.Open;

       //se estiver, barra o cadastro
	    If Not DMESTOQUE.Alx.IsEmpty
	    Then Begin
		    Mensagem('INFORMAÇÃO AO USUÁRIO', 'Já existe um produto com o mesmo código do fabricante!', '', 1, 1, False, 'I');
           Xaux:=1;
           dbcodfabricante.SetFocus;
	        exit;
	    end;
	  End;
    Except
    End;

    // Bloqueia o cadastro do produto caso já exista um código de controle interno igual cadastrado. Somente se em loja não estiver permitido esse cadastro duplo
    If (DMMACS.TLoja.FieldByName('MAISDEUMCONTROLEINTERNO').AsString <> '1') or (DMMACS.TLoja.FieldByName('MAISDEUMCONTROLEINTERNO').IsNull)
    Then Begin
        Try
           XControleInternoAntigo:=DbContrInt.Text;
           If (Trim(DMESTOQUE.TSubProd.FIELDBYNAME('CONTRINT').AsString)<>'')
           Then Begin
               XFlacContrint:=1;
               While XFlacContrint=1 do
               Begin
                   DMESTOQUE.Alx.Close;
                   DMESTOQUE.Alx.SQL.Clear;
                   DMESTOQUE.Alx.SQL.Add('SELECT * FROM SUBPRODUTO WHERE (SUBPRODUTO.CONTRINT=:FAB) AND (SUBPRODUTO.COD_SUBPRODUTO<>:COD)');
                   DMESTOQUE.Alx.ParamByName('FAB').AsString:=DbContrInt.Text;
                   DMESTOQUE.Alx.ParamByName('COD').AsString:=IntToStr(XCOD_SIMILAR);
                   DMESTOQUE.Alx.SQL.Text;
                   DMESTOQUE.Alx.Open;

                   If Not DMESTOQUE.Alx.IsEmpty
                   Then Begin
                       Xaux:=1;
                       DbContrInt.Text := IncStrNum(1,DbContrInt.Text);
                       //DbContrInt.Text:=IntToStr(StrtoInt(DbContrInt.Text)+1);
                   end
                   Else Begin
                       XFlacContrint:=0;
                   End;
               End;
           End;
           If XControleInternoAntigo<>DbContrInt.Text Then
               Mensagem('INFORMAÇÃO AO USUÁRIO', 'O Controle Interno '+XControleInternoAntigo+' já existe cadastrado, o sistema assumiu um novo controle interno para este produto. '+DbContrInt.Text, '', 1, 1, False, 'I');

           //Edmar - 05/12/2014 - Adicionada a condição para atualizar o proximo
           //controle interno dos produto, na loja, apenas quando estiver inserindo
           if XSTATE <> 'EDIT' then
           begin
             DMMACS.TLoja.Edit;
             DMMACS.TLoja.FieldByName('PROXCTRINT').AsString:=INCSTRNUM(1, DbContrInt.Text);
             DMMACS.TLoja.Post;
             DMMACS.Transaction.CommitRetaining;
           end;

           FiltraTabela(DMMACS.TLoja, 'LOJA', 'COD_LOJA', FMenu.LCODLOJA.Caption, '');

        Except
        End;
    End;
    If XSTATE='EDIT'
    Then Begin
        //Controle para verificar alterações em produto/grade
        If XCOD_PRODUTO<>XCod_UltimoProduto
        Then Begin
           If FiltraTabela(DMMACS.TALX, 'PRODUTO', 'COD_PRODUTO', IntToStr(XCod_UltimoProduto), '')=True Then
               Registra('ALTERA PRODUTO', 'ALTERAÇÃO', DateToStr(Date()), Copy('G. A.: '+DMMACS.TALX.FieldByName('DESCRICAO').AsString,0, 30), Copy('P.: '+DMESTOQUE.TSubProd.FieldByName('DESCRICAO').AsString,0 ,25))
           Else
               Registra('ALTERA PRODUTO', 'ALTERAÇÃO', DateToStr(Date()), 'Grade Anterior não encontrada',  Copy('P.: '+DMESTOQUE.TSubProd.FieldByName('DESCRICAO').AsString, 0,25));
        End;
        //Controle para verificar alterações em grupo
        If XCodGrupo<>XCod_UltimoGrupo
        Then Begin
           If FiltraTabela(DMMACS.TALX, 'grupoprod', 'cod_grupoprod', IntToStr(XCod_UltimoGrupo), '')=True Then
               Registra('ALTERA GRUPO', 'ALTERAÇÃO', DateToStr(Date()), Copy('G. A.: '+DMMACS.TALX.FieldByName('DESCRICAO').AsString,0, 30), Copy('P.: '+DMESTOQUE.TSubProd.FieldByName('DESCRICAO').AsString,0 ,25))
           Else
               Registra('ALTERA GRUPO', 'ALTERAÇÃO', DateToStr(Date()), 'Grupo Anterior não encontrada',  Copy('P.: '+DMESTOQUE.TSubProd.FieldByName('DESCRICAO').AsString, 0,25));
        End;
        //Controle para verificar alterações em sub grupo
        If XCodSubgrupo<>XCod_UltimoSubGrupo
        Then Begin
           If FiltraTabela(DMMACS.TALX, 'subgrupoprod', 'cod_subgrupoprod', IntToStr(XCod_UltimoSubGrupo), '')=True Then
               Registra('ALTERA SUBGRUPO', 'ALTERAÇÃO', DateToStr(Date()), Copy('SG. A.: '+DMMACS.TALX.FieldByName('DESCRICAO').AsString,0, 30), Copy('P.: '+DMESTOQUE.TSubProd.FieldByName('DESCRICAO').AsString,0 ,25))
           Else
               Registra('ALTERA SUBGRUPO', 'ALTERAÇÃO', DateToStr(Date()), 'SubGrupo Anterior não encontrada',  Copy('P.: '+DMESTOQUE.TSubProd.FieldByName('DESCRICAO').AsString, 0,25));
        End;
    End;

        //FiltraTabela(DMESTOQUE.TProduto,'PRODUTO', 'COD_PRODUTO', IntToStr(XCOD_PRODUTO), '');
        //Atualiza dados do Produto/Grade
        if DMMACS.TLoja.FieldByName('OPERADESCCUPOM').AsInteger=1
        Then Begin
        	{
        	DMESTOQUE.TProduto.Edit;
        	DMESTOQUE.TProduto.FieldByName('cod_grupoprod').AsInteger:=XCodGrupo;
        	DMESTOQUE.TProduto.FieldByName('cod_subgrupoprod').AsInteger:=XCodSubgrupo;
           DMESTOQUE.TProduto.Post;
           }
           DMESTOQUE.Alx1.Close;
           DMESTOQUE.Alx1.SQL.Clear;
           DMESTOQUE.Alx1.SQL.Add(' UPDATE PRODUTO SET PRODUTO.COD_GRUPOPROD = :GRUPO, PRODUTO.COD_SUBGRUPOPROD = :SUBGRUPO, ');
           DMESTOQUE.Alx1.SQL.Add(' PRODUTO.COD_LOJA = :LOJA, PRODUTO.DESCRICAO = :DESC WHERE PRODUTO.COD_PRODUTO = :PRODUTO ');
           DMESTOQUE.Alx1.ParamByName('GRUPO').AsInteger := XCodGrupo;
           DMESTOQUE.Alx1.ParamByName('SUBGRUPO').AsInteger := XCodSubgrupo;
           DMESTOQUE.Alx1.ParamByName('DESC').AsString := DMESTOQUE.TSubProd.FieldByName('DESCRICAO').AsString;
           DMESTOQUE.Alx1.ParamByName('LOJA').AsString := Fmenu.LCodLoja.Caption;
           DMESTOQUE.Alx1.ParamByName('PRODUTO').AsInteger := XCOD_PRODUTO;
           DMESTOQUE.Alx1.ExecSQL;
        End;

        //Se trabalha sem grade de produtos... coloca o nome da grade igual ao nome do produto
        If DMMACS.TLoja.FieldByName('OPERADESCCUPOM').AsInteger=1
        Then Begin
        {
        	DMESTOQUE.TProduto.Edit;
           DMESTOQUE.TProduto.FieldByName('DESCRICAO').AsString:=DMESTOQUE.TSubProd.FieldByName('DESCRICAO').AsString;
         	DMESTOQUE.TProduto.Post;
        }
        End;
       
     // Faz a concatenação do Código Interno do GRUPO, Código Interno do SUBGRUPO, Código Interno do PRODUTO e Código Interno do SUBPRODUTO, formando o Código Composto do Produto.
     DMEstoque.TSubProd.edit;
     DMEstoque.TSubProd.FieldByName('CodComposto').AsString:=EDCODGRUPO.text + '.'+EDCODSUBGRUPO.Text + '.'+EDProduto.Text +'-'+DBCODINTERNO.Text;
     DmEstoque.TSubProd.FieldByName('COD_PRODUTO').AsInteger:=XCOD_PRODUTO;
     DmEstoque.TSubProd.FieldByName('cod_cst').AsInteger:=XCST;
     DmEstoque.TSubProd.FieldByName('cod_unidcompra').AsInteger:=XCodUnidadeCompra;
     DmEstoque.TSubProd.FieldByName('cod_unidvenda').AsInteger:=XCodUnidadeVenda;
     DMESTOQUE.TSubProd.FieldByName('COD_CFOPDENTROESTADO').AsInteger := XCODCFOPDENTRO;
     DMESTOQUE.TSubProd.FieldByName('COD_CFOPFORAESTADO').AsInteger := XCODCFOPFORA;

     //Edmar - 08/10/2014 - Verifica se o produto é componente de produto acabado
     //e salva correspondente
     if cbComponente.Checked then
     	DMESTOQUE.TSubProd.FieldByName('COMPONENTE').AsString := '1'
     else
     	DMESTOQUE.TSubProd.FieldByName('COMPONENTE').AsString := '0';     

     DMESTOQUE.TEstoque.Edit;
     If XSTATE='INSERT'
     Then Begin
     	DmEstoque.TSubProd.FieldByName('DTCAD').AsString:=DateToStr(Date());
     	DMESTOQUE.TEstoque.FieldByName('DTCAD').AsString:=DateToStr(Date());
     End;
     DMESTOQUE.TEstoque.FieldByName('DATAATU').AsString:=DateToStr(Date());
     DMESTOQUE.TEstoque.FieldByName('HORAATU').AsString:=TimeToStr(Time());
     DMESTOQUE.TEstoque.FieldByName('COD_USUARIOALT').AsString := FMenu.LCODUSUARIO.Caption;

     DMESTOQUE.TEstoque.FieldByName('ULTVLR_VNDVVAR').AsCurrency := StrToFloat(LvarejoVista.Caption);
     DMESTOQUE.TEstoque.FieldByName('ULTVLR_VNDPVAR').AsCurrency := StrToFloat(LVarejoPrazo.Caption);
     DMESTOQUE.TEstoque.FieldByName('ULTVLR_VNDVATAC').AsCurrency := StrToFloat(LAtacVista.Caption);
     DMESTOQUE.TEstoque.FieldByName('ULTVLR_VPATAC').AsCurrency := StrToFloat(LAtacPrazo.Caption);
     DMESTOQUE.TEstoque.FieldByName('ESTFISICO').AsInteger := 0;
     DMESTOQUE.TEstoque.FieldByName('ESTRESERV').AsInteger := 0;
     DMESTOQUE.TEstoque.FieldByName('ESTSALDO').AsInteger := 0;
     DMESTOQUE.TEstoque.FieldByName('ESTPED').AsInteger := 0;
     DMESTOQUE.TEstoque.FieldByName('ESTOQUE4CASAS').AsInteger := 0;

     //Alex 17/07/2019 - Verificamos se ocorreu alteração de preço e registramos na tabela
     If (XVALOR_VISTAVAREJO <> EdVlrVarejoVista.ValueNumeric) OR  (XVALOR_PRAZOVAREJO <> EdVlrVarejoPrazo.ValueNumeric) OR (XVALOR_VISTAATAC <> EdVlrAtacadoVista.ValueNumeric) OR (XVALOR_PRAZOATAC <> EdVlrAtacadoPrazo.ValueNumeric) Then
           Registra('ALTERA PRODUTO', 'ALTERACAO PRECO', DateToStr(Date()), 'VP: '+ FormatFloat('0.00', EdVlrVarejoPrazo.ValueNumeric) + ' - ' + 'VV: '+ FormatFloat('0.00', EdVlrVarejoVista.ValueNumeric),  ' Anterior: V.P.: '+ FormatFloat('0.00', XVALOR_PRAZOVAREJO) + ' - ' + 'V.V.: '+ FormatFloat('0.00', XVALOR_VISTAVAREJO)  + ' - ' + 'A.P.: '+ FormatFloat('0.00', XVALOR_PRAZOATAC)  + ' - ' + 'A.V.: '+ FormatFloat('0.00', XVALOR_VISTAATAC) + ' Controle Int.: '+DMESTOQUE.TSubProd.FieldByName('contrint').AsString + ' - Prod.: ' + DMESTOQUE.TSubProd.FieldByName('DESCRICAO').AsString);
     // verifica valor de venda a vista no varejo
     If XVALOR_VISTAVAREJO <> EdVlrVarejoVista.ValueNumeric
     Then Begin
       DMESTOQUE.TEstoque.FieldByName('ULTVLR_VNDVVAR').AsCurrency := XVALOR_VISTAVAREJO;
     End;

     // verifica valor de venda a prazo no varejo
     If XVALOR_PRAZOVAREJO <> EdVlrVarejoPrazo.ValueNumeric
     Then Begin
       DMESTOQUE.TEstoque.FieldByName('ULTVLR_VNDPVAR').AsCurrency := XVALOR_PRAZOVAREJO;
     End;

     // verifica valor de venda a vista no atacado
     If XVALOR_VISTAATAC <> EdVlrAtacadoVista.ValueNumeric
     Then Begin
       DMESTOQUE.TEstoque.FieldByName('ULTVLR_VNDVATAC').AsCurrency := XVALOR_VISTAATAC;
     End;

     // verifica valor de venda a prazo no atacado
     If XVALOR_PRAZOATAC <> EdVlrAtacadoPrazo.ValueNumeric
     Then Begin
       DMESTOQUE.TEstoque.FieldByName('ULTVLR_VPATAC').AsCurrency := XVALOR_PRAZOATAC;
     End;

    // - 24/04/2009: check de gerar ou não comissão deste produto
    if CBComissao.Checked=True
    then begin
        DMESTOQUE.TEstoque.FieldByName('GERACOMIS').AsString := '1';
    end
    else begin
        DMESTOQUE.TEstoque.FieldByName('GERACOMIS').AsString := '0';
    end;

    //CONTROLE PARA VERIFICAR SE O PRODUTO E DE MATERIAL E CONSUMO FRETE OU OUTROS
     If CBProdutoConsumo.Checked=True Then
     		DmEstoque.TSubProd.FieldByName('USOCONSUMO').AsString:='1';
     If CbEstoquePermanente.Checked=True Then
     		DmEstoque.TSubProd.FieldByName('EST_PERMANENTE').AsString:='1';
     if CbEstoquePermanente.Checked = false then
        DMESTOQUE.TSubProd.FieldByName('EST_PERMANENTE').AsString:='0';
     If CBProdutoConsumo.Checked=False Then
     		DmEstoque.TSubProd.FieldByName('USOCONSUMO').AsString:='0';
     If XAcessorio=True Then
     		DmEstoque.TSubProd.FieldByName('USOCONSUMO').AsString:='5';     

     //Paulo 12/12/2011: para mostrar se o produto está ativo ou não
     if cbInativaProd.Checked = True then
          DMESTOQUE.TSubProd.FieldByName('ATIVO').AsString := 'N'
     else
          DMESTOQUE.TSubProd.FieldByName('ATIVO').AsString := 'S';
          
    // Controla PIS/COFINS
    if CBGerarPisCofins.Checked=True
    then begin
        DMESTOQUE.TSubProd.FieldByName('GERARPISCOFINS').AsString := '1';
    end
    else begin
        DMESTOQUE.TSubProd.FieldByName('GERARPISCOFINS').AsString := '0';
    end;

    if cbRetemPisCofins.Checked=True
    then begin
        DMESTOQUE.TSubProd.FieldByName('RETEM_PIS_COFINS').AsString := 'S';
    end
    else begin
        DMESTOQUE.TSubProd.FieldByName('RETEM_PIS_COFINS').AsString := 'N';
    end;


    //Edmar - 23/05/2014 - Salva se o produto é de controle de desgaste
    if cbCtrlDesgaste.Checked then
    	DMESTOQUE.TSubProd.FieldByName('CTRL_DESGASTE').AsString := '1'
    else
    	DMESTOQUE.TSubProd.FieldByName('CTRL_DESGASTE').AsString := '0';

    //Edmar - 25/05/2014 - Salva se o produto será controlado por hora
    if cbCtrlHora.Checked then
    	DMESTOQUE.TSubProd.FieldByName('CTRL_HORA').AsString := '1'
    else
    	DMESTOQUE.TSubProd.FieldByName('CTRL_HORA').AsString := '0';

    DmEstoque.TSubProd.FieldByName('COD_PRODUTO').AsInteger:=XCOD_PRODUTO;
    {DmEstoque.TProduto.Edit;
    DmEstoque.TProduto.FieldByName('COD_LOJA').AsString:=Fmenu.LCodLoja.Caption;
    DmEstoque.TProduto.Post;}
    //Define qual foi o Ultimo produto
    XCOD_ULTPROD:=XCOD_PRODUTO;
    Xaux:=XCOD_PRODUTO;

    //INFORMA CUSTO MEDIO
    If DMESTOQUE.TEstoque.FieldByName('VALCUSTO').AsCurrency=0 Then
    	DMESTOQUE.TEstoque.FieldByName('VALCUSTO').AsCurrency:=DMESTOQUE.TEstoque.FieldByNAme('VALUNIT').AsCurrency;
    //AS PRÓXIMAS VÁRIAVEIS SÃO UTLIZADAS PARA ARMAZENAR AS INFORMAÇÕES PARA SEREM JOGADAS AO PRÓXIMO PRODUTO
    XCODSUBPROD := DMESTOQUE.TSubProd.FieldByName('COD_SUBPRODUTO').AsInteger;
    XPRXDESC:=DMESTOQUE.TSubProd.FieldByName('DESCRICAO').AsString;
    XPRXCODFAB:=DMESTOQUE.TSubProd.FieldByName('CODPRODFABR').AsString;
    XPRXFAB:=DMESTOQUE.TSubProd.FieldByName('FABRICANTE').AsString;
    XPRXCODCST:=DMESTOQUE.TSubProd.FieldByName('COD_CST').AsString;
    XPRXCODUNICOMP:=DMESTOQUE.TSubProd.FieldByName('COD_UNIDCOMPRA').AsString;
    XPRXCODUNIVEND:=DMESTOQUE.TSubProd.FieldByName('COD_UNIDVENDA').AsString;
    XPRXMARCA:=DMESTOQUE.TSubProd.FieldByName('MARCA').AsString;
    XLOCALESTANTE:=DMESTOQUE.TSubProd.FieldByName('LOCALESTANTE').AsString;
    XANVISA:=DMESTOQUE.TSubProd.FieldByName('ANVISA').AsString;
    XMINSAUDE:=DMESTOQUE.TSubProd.FieldByName('MINSAUDE').AsString;
    XESPECIFICACAO:=DMESTOQUE.TSubProd.FieldByName('ESPECIFICACAO').AsString;
    XCLASSIFICACAO:=DMESTOQUE.TSubProd.FieldByName('CLASSIFICACAO').AsString;
    XNCM:=DMESTOQUE.TSubProd.FieldByName('NCM').AsString;
    XQUANTGARANT:=DMESTOQUE.TSubProd.FieldByName('QUANTGARANTIA').AsString;
    XTIPOGARANT:=DMESTOQUE.TSubProd.FieldByName('TIPOGARANTIA').AsString;
    XBALANCA:=DMESTOQUE.TSubProd.FieldByName('BALANCA').AsString;
    XOBSFISCAL:=DMESTOQUE.TSubProd.FieldByName('OBSFISCAL').AsString;
    XCOMPOSICAO:=DMESTOQUE.TSubProd.FieldByName('COMPOSICAO').AsString;
    XLARGURA:=DMESTOQUE.TSubProd.FieldByName('LARGURA').AsString;
    XALTURA:=DMESTOQUE.TSubProd.FieldByName('ALTURA').AsString;
    XDENSIDADE:=DMESTOQUE.TSubProd.FieldByName('DENSIDADE').AsString;
    XPESOLIQ:=DMESTOQUE.TSubProd.FieldByName('PESOLIQ').AsString;
    XPESOBRUTO:=DMESTOQUE.TSubProd.FieldByName('PESOBRUTO').AsString;
    XQTDATC:=DMESTOQUE.TSubProd.FieldByName('QTDATC').AsString;


    //Grava os dados na Tabela Produto e subproduto;
    DMESTOQUE.TEstoque.Post;
    DmEstoque.TSubProd.Post;

    DmEstoque.TransacEstoque.CommitRetaining;
    MDO.Transac.CommitRetaining;
    // Grava os dados na Tabela estoque.
    Try
    	DMEstoque.TEstoque.Edit;
       FiltraTabela(DMMACS.TLoja, 'LOJA', 'COD_LOJA', FMenu.LCODLOJA.Caption, '');
       DMESTOQUE.TEstoque.FieldByName('ATUALIZAR').AsString := '1';
       DMESTOQUE.TEstoque.FieldByName('COD_LOJA').AsInteger:= DMMACS.TLoja.fieldByName('COD_LOJA').AsInteger;
     	DMESTOQUE.TEstoque.FieldByName('COD_SUBPROD').AsInteger:=XCOD_SIMILAR;
       DMESTOQUE.TEstoque.FieldByName('VLRBONIFIC').AsCurrency:=DMESTOQUE.TEstoque.FieldByName('VENDVARV').AsCurrency-(DMESTOQUE.TEstoque.FieldByName('VENDVARV').AsCurrency*DMESTOQUE.TEstoque.FieldByName('BONIFICACAO').AsCurrency)/100;
       DMEstoque.TEstoque.Post;
       // Alex - 20/05/2009: O trecho de codigo abaixo foi atualizado para garantir a atualização de estoque de acordo com o lote
    Except
    End; // - 05/04/2009: comentado por atualização do alex por fora do código fonte original
    DMESTOQUE.TransacEstoque.CommitRetaining;
    XSTATE:='POST';
    //Habilitando Paineis;
    PCadastro.Visible:=False;
    PConsulta.Visible:=true;
    PConsulta.BringToFront;
    //FILTRA PRODUTOS DE ACORDO COM A LOJA
    FiltraTabela(DMESTOQUE.WProduto, 'VWPRODUTO', '', '', '');
    //FILTRA SIMILAR DE ACORDO COM O PRODUTO
    SelectSim;
	 LQtdItem.Caption:=IntToStr(RetornaNumItens)+ ' Itens Cadastrados';
    //Alex: 20/03/2017 - Atualiza valores de custo de todos os produtos atrelados a esse componente 
    if (cbComponente.Checked) AND (DMMACS.TLoja.FieldByName('ATIVIDADE').AsString = 'INDUSTRIA') then
    begin
		AtualizaValorCustoProduto(-1, XCOD_ESTOQUE);
    end;

    Refresh;
// inherited;
end;


procedure TFProduto.DBValunitExit(Sender: TObject);
var
x,y :integer;
begin
  inherited;
    x:=(DMEstoque.TEstoque.FieldByName('ValUnit').Value * DMEstoque.TSubProd.FieldByName('IPIPROD').Value /100);
    y:=(DMEstoque.TEstoque.FieldByName('ValUnit').Value * DMEstoque.TEstoque.FieldByName('FRETE').Value /100);
    DMEstoque.TEstoque.FieldByName('ValRep').Value:= (DMEstoque.TEstoque.FieldByName('ValUnit').Value + x + y);
end;

procedure TFProduto.DBLucratExit(Sender: TObject);
Var
    DescVistaVar, DescVistaAtac, DescVistaInd, AcrecPrazoVar, AcrecPrazoAtac, AcrecPrazoInd, ComVistaVar, ComVistaAtac, ComPrazoVar, ComPrazoAtac: Real;
begin
  inherited;
  TRY
    DMESTOQUE.TEstoque.Edit;
	 DMESTOQUE.TEstoque.FieldByName('VALUNIT').AsCurrency:=DMESTOQUE.TEstoque.FieldByName('VLRCOMPSD').AsCurrency+((DMESTOQUE.TEstoque.FieldByName('VLRCOMPSD').AsCurrency*DMESTOQUE.TEstoque.FieldByName('ACRECIMO').AsCurrency)/100);
	 DMESTOQUE.TEstoque.FieldByName('VALUNIT').AsCurrency:=DMESTOQUE.TEstoque.FieldByName('VALUNIT').AsCurrency-((DMESTOQUE.TEstoque.FieldByName('VALUNIT').AsCurrency*DMESTOQUE.TEstoque.FieldByName('DESCONTO').AsCurrency)/100);
	 DMESTOQUE.TEstoque.Post;
  	 If DMMACS.TLoja.FieldByName('CONVERTUNID').AsString<>'1'
  	 Then Begin
  		DMESTOQUE.TEstoque.Edit;
       DMESTOQUE.TEstoque.FieldByName('VLRUNITCOMP').AsCurrency:=DMESTOQUE.TEstoque.FieldByName('VALUNIT').AsCurrency;
     	DMESTOQUE.TEstoque.Post;
    End;

    //Edmar - 28/05/2014 - Atribui o desconto para a varivel auxiliar
	 if DBDESCInd.Text = '' then
		DescVistaInd := 0
    else
    	DescVistaInd := StrToFloat(DBDESCInd.Text);

    //Edmar - 28/05/2014 - Atribui o acrescimo para a varivel auxiliar
    if DBACRECIND.Text = '' then
    	AcrecPrazoInd := 0
    else
	    AcrecPrazoInd := StrToFloat(DBACRECIND.Text);

    //Verifica se pega o valor em questão da tabela estoque ou empresa
    If DBDescVarejo.Text='' Then
        DescVistaVar:=DMMacs.TEmpresa.FieldByName('AVVPROVAR').AsCurrency
    Else
        DescVistaVar:=StrToFloat(DBDescVarejo.Text);

    //Verifica se pega o valor em questão da tabela estoque ou empresa
    If DBACRECVAREJO.Text='' Then
        AcrecPrazoVar:=DMMacs.TEmpresa.FieldByName('AVPPROVAR').AsCurrency
    Else
        AcrecPrazoVar:=StrToFloat(DBACRECVAREJO.Text);

    //Verifica se pega o valor em questão da tabela estoque ou empresa
    If DBDESCATAC.Text='' Then
        DescVistaAtac:=DMMacs.TEmpresa.FieldByName('AVVPROAT').AsCurrency
    Else
        DescVistaAtac:=StrToFloat(DBDESCATAC.Text);

    //Verifica se pega o valor em questão da tabela estoque ou empresa
    If DBACRECATAC.Text='' Then
        AcrecPrazoAtac:=DMMacs.TEmpresa.FieldByName('AVPPROAT').AsCurrency
    Else
        AcrecPrazoAtac:=StrToFloat(DBACRECATAC.Text);

    //Verifica se pega o valor em questão da tabela estoque ou empresa
    If DBDescVarejo.Text='' Then
        DescVistaVar:=DMMacs.TEmpresa.FieldByName('AVVPROVAR').AsCurrency
    Else
        DescVistaVar:=StrToFloat(DBDescVarejo.Text);

    //Verifica se pega o valor em questão da tabela estoque ou empresa
    If DBACRECVAREJO.Text='' Then
        AcrecPrazoVar:=DMMacs.TEmpresa.FieldByName('AVPPROVAR').AsCurrency
    Else
        AcrecPrazoVar:=StrToFloat(DBACRECVAREJO.Text);

    //Verifica se pega o valor em questão da tabela estoque ou empresa
    If DBDESCATAC.Text='' Then
        DescVistaAtac:=DMMacs.TEmpresa.FieldByName('AVVPROAT').AsCurrency
    Else
        DescVistaAtac:=StrToFloat(DBDESCATAC.Text);

    //Verifica se pega o valor em questão da tabela estoque ou empresa
    If DBACRECATAC.Text='' Then
        AcrecPrazoAtac:=DMMacs.TEmpresa.FieldByName('AVPPROAT').AsCurrency
    Else
        AcrecPrazoAtac:=StrToFloat(DBACRECATAC.Text);

    //Verifica se pega o valor em questão da tabela estoque ou empresa
    If DBComVarejo.Text='' Then
        ComVistaVar:=DMMacs.TEmpresa.FieldByName('CVVPROVAR').AsCurrency
    Else
        ComVistaVar:=StrToFloat(DBComVarejo.Text);

    //Verifica se pega o valor em questão da tabela estoque ou empresa
    If DBCOMPRAZOVAR.Text='' Then
        ComPrazoVar:=DMMacs.TEmpresa.FieldByName('CVPPROVAR').AsCurrency
    Else
        ComPrazoVar:=StrToFloat(DBCOMPRAZOVAR.Text);

    //Verifica se pega o valor em questão da tabela estoque ou empresa
    If DBCOMVISTAATAC.Text='' Then
        ComVistaAtac:=DMMacs.TEmpresa.FieldByName('CVVPROAT').AsCurrency
    Else
        ComPrazoAtac:=StrToFloat(DBCOMVISTAATAC.Text);

    //Verifica se pega o valor em questão da tabela estoque ou empresa
    If DBCOMPRAZOATAC.Text='' Then
        ComPrazoAtac:=DMMacs.TEmpresa.FieldByName('CVPPROAT').AsCurrency
    Else
        ComPrazoAtac:=StrToFloat(DBCOMPRAZOATAC.Text);

    CalculoVenda(DescVistaVar, AcrecPrazoVar, DescVistaAtac, AcrecPrazoAtac, DescVistaInd, AcrecPrazoInd, ComVistaVar, ComPrazoVar, ComVistaAtac, ComPrazoAtac, 1, 0);

    SincroValores(1);
  EXCEPT
  END;
end;

procedure TFProduto.BtnApagarClick(Sender: TObject);
begin
//  inherited;

	//EFETUA CONTROLE DE ACESSO
   If ControlAccess('PRODUTOS', 'M')=False Then
  		Exit;

    //Paulo 15/12/2011: Abre a tela solicitando para digitar usuário e senha
    AbrirForm(TFSENHA, FSENHA, 0);
    //repassa resultado da tela de autenticação de senha para as variáveis de controle
    If XAlxResult=True
    Then Begin

        If DMESTOQUE.WSimilar.IsEmpty
        Then Begin
           If Mensagem('CONFIRMAÇÃO DO USUÁRIO', 'Não existe nenhum produto similar a ser apagado. Deseja apagar o PRODUTO '+#13+ DMESTOQUE.WProduto.FieldByName('PRODUTO').AsString+ '?' , '', 2, 3, False, 'c')= 2
           Then Begin
               //Localiza em tPRODUTO DE Acordo com xview
               If FiltraTabela(DMESTOQUE.TProduto, 'PRODUTO', 'COD_PRODUTO', DMESTOQUE.WProduto.FieldByName('COD_PRODUTO').AsString, '')=True
               Then Begin
                   DMESTOQUE.TProduto.Delete;
                   DMESTOQUE.TransacEstoque.CommitRetaining;
                   Activate;
               End;
           End;
        End
        Else Begin
           //confirmação para apagar similar e suas referidas pessoa
           If Mensagem('CONFIRMAÇÃO DO USUÁRIO', 'Deseja realmente apagar o similar '+#13+ DMESTOQUE.WSimilar.FieldByName('DESCRICAO').AsString+ '?' , '', 2, 3, False, 'c')<>2   Then
               Exit;

           If CheckRelation('COD_ESTOQUE', DMESTOQUE.WSimilar.FieldByName('COD_ESTOQUE').AsString, ['ITENSPEDC', 'ITENSPEDVEN', 'LANCENT', 'LANCSAI', 'ITPRODORD', 'ITPRODORC'], 6)=True
           Then Begin
               Mensagem('OPÇÃO BLOQUEADA', 'Este produto não pode ser apagado, ele contém referências com outras tabelas!', 'Veririque a existência de lançamentos em pedidos de compra ou venda e correções de estoque com referência a este produto, ele não poderá ser apagado enquanto houver esta ligação', 1, 1, True, 'I');
               Exit;
           End;

           //Localiza em tSUBPRODUTO DE Acordo com xview
           If FiltraTabela(DMESTOQUE.TSubProd, 'SUBPRODUTO', 'COD_SUBPRODUTO', DMESTOQUE.WSimilar.FieldByName('COD_SUBPRODUTO').AsString, '')=True
           Then Begin
               //LOCALIZA ESTOQUE
               If FiltraTabela(DMESTOQUE.TEstoque, 'ESTOQUE', 'COD_SUBPROD', '', ' (ESTOQUE.COD_SUBPROD='+DMESTOQUE.TSubProd.FieldByName('COD_SUBPRODUTO').AsString+') AND (ESTOQUE.COD_LOJA = '+FMenu.LCODLOJA.Caption+')')=True
               Then Begin
                   Try
                       //REGISTRA COMANDO DO USUARIO
                       Registra('PRODUTO', 'APAGAR', DateToStr(Date()), DMESTOQUE.WSimilar.FieldByName('DESCRICAO').AsString, 'Ctrl.-'+DMESTOQUE.WSimilar.FieldByName('CONTRINT').AsString );
                       //Jônatas 13/09/2013 - Ao excluir um produto, excluir também seus dados na tabela codbarra
                       If FiltraTabela(DMESTOQUE.TCodBarra, 'codigobarra', 'cod_estoque',DMESTOQUE.TEstoque.FieldByName('cod_estoque').AsString, '')=True
                       Then Begin
                           DMESTOQUE.Alx.Close;
                           DMESTOQUE.Alx.SQL.Clear;
                           DMESTOQUE.Alx.SQL.Add('DELETE FROM codigobarra WHERE codigobarra.cod_estoque = :codigoestoque');
                           DMESTOQUE.Alx.ParamByName('codigoestoque').AsString:=DMESTOQUE.TEstoque.FieldByName('cod_estoque').AsString;
                           DMESTOQUE.Alx.ExecSQL;
                       End;
                       DMESTOQUE.TEstoque.Delete;
                       DMESTOQUE.TSubProd.Delete;

                       //Jônatas 13/09/2013 - 2 comits?
                       DMESTOQUE.TransacEstoque.CommitRetaining;
                       DMESTOQUE.TransacEstoque.CommitRetaining;
                       //FILTRA SIMILAR DE ACORDO COM O PRODUTO
                       SelectSim;
                   Except
                       DMESTOQUE.TransacEstoque.RollbackRetaining;
                   End;
               End;
           End;
        End;
    end;    
end;

procedure TFProduto.BtnConsultarClick(Sender: TObject);
begin
   DMESTOQUE.TransacEstoque.CommitRetaining;
	XConsulta:=true;
	//EFETUA CONTROLE DE ACESSO
   If ControlAccess('PRODUTOS', 'M')=False Then
  		Exit;

  inherited;
    //Verifica se esta trabalhando com grade ou da forma simples
    if DMMACS.TLoja.FieldByName('OPERADESCCUPOM').AsInteger=1
    Then Begin
  		//SEM GRADE A GRADE
       BtnGrupo.Visible:=True;
       BtnSubGrupo.Visible:=True;
    End
    Else Begin
		//COM GRADE
       BtnGrupo.Visible:=False;
       BtnSubGrupo.Visible:=False;
    end;

    PNovaFaixaPreco.Visible:=False;
    PNovaTabela.Visible:=False;
    PcAdicionais.ActivePage:=TabSheet1;
  	 //Informa as cores a combo
    InfoCores;
    //Utilizada para filtrar o estoque referente a subproduto e Loja
    If FiltraTabela(DMEstoque.TEstoque, 'ESTOQUE', 'COD_ESTOQUE', DMEstoque.WSimilar.FieldByName('COD_ESTOQUE').AsString, '')=False
    Then Begin
    	MessageDlg('Os dados consultados apresentaram inconsistência. Falha na tabela estoque', mtWarning, [mbOK], 0);
       BtnCancelar.OnClick(self);
    	Exit;
    End;

    // codigo de estoque
    XCOD_ESTOQUE:=DMESTOQUE.TEstoque.FieldByName('COD_ESTOQUE').AsInteger;

    edEstoqueFisico.ValueNumeric := DMESTOQUE.TEstoque.FieldByName('ESTFISICO').AsCurrency;

    //filtra os lançamentos de custos dos itens
    SelecionaItensCustoProduto;

    // busca dados do funcionario
    DMENTRADA.TAlx.Close;
    DMENTRADA.TAlx.SQL.Clear;
    DMENTRADA.TAlx.SQL.Add('select * from usuario');
    DMENTRADA.TAlx.SQL.Add('where usuario.codusuario = :codigo');
    DMENTRADA.TAlx.ParamByName('codigo').AsInteger := DMESTOQUE.TEstoque.FieldByName('cod_usuarioalt').AsInteger;
    DMENTRADA.TAlx.Open;

    // dados do ususario que alterou o produto
    LDados.Caption := DMENTRADA.TAlx.FieldByName('LOGIN').AsString + ' - ' + DMESTOQUE.TEstoque.FieldByName('DATAATU').AsString + ' - ' + DMESTOQUE.TEstoque.FieldByName('HORAATU').AsString ;
    LDados.Visible := true;

    // se possui dados eh apresentado senao a label nao aparece
    If (not DMENTRADA.TAlx.IsEmpty) or (DMESTOQUE.TEstoque.FieldByName('cod_usuarioalt').AsInteger = 111522)
    Then Begin

       // verifica se eh o administrador de sistema (MESTRE)
       If DMESTOQUE.TEstoque.FieldByName('cod_usuarioalt').AsInteger = 111522
       Then Begin
           LDados.Caption := 'Adm. Sistema' + ' - ' + DMESTOQUE.TEstoque.FieldByName('DATAATU').AsString + ' - ' + DMESTOQUE.TEstoque.FieldByName('HORAATU').AsString ;
       End;

       // ULTIMO VALOR DE VENDA A VISTA NO VAREJO
       LvarejoVista.Caption := FormatFloat('0.00',DMESTOQUE.TEstoque.FieldByName('ULTVLR_VNDVVAR').AsCurrency);

       // ULTIMO VALOR DE VENDA A VISTA NO VAREJO
       LVarejoPrazo.Caption := FormatFloat('0.00',DMESTOQUE.TEstoque.FieldByName('ULTVLR_VNDPVAR').AsCurrency);

       // ULTIMO VALOR DE VENDA A VISTA NO ATACADO
       LAtacVista.Caption := FormatFloat('0.00',DMESTOQUE.TEstoque.FieldByName('ULTVLR_VNDVATAC').AsCurrency);

       // ULTIMO VALOR DE VENDA A PRAZO NO ATACADO
       LAtacPrazo.Caption := FormatFloat('0.00',DMESTOQUE.TEstoque.FieldByName('ULTVLR_VPATAC').AsCurrency);
    End
    Else Begin
       LDados.Visible := false;

       // ULTIMO VALOR DE VENDA A VISTA NO VAREJO
       LvarejoVista.Caption := '0,00';

       // ULTIMO VALOR DE VENDA A VISTA NO VAREJO
       LVarejoPrazo.Caption := '0,00';

       // ULTIMO VALOR DE VENDA A VISTA NO ATACADO
       LAtacVista.Caption := '0,00';

       // ULTIMO VALOR DE VENDA A PRAZO NO ATACADO
       LAtacPrazo.Caption := '0,00';
    End;

    // - 24/04/2009: check de gerar ou não comissão deste produto
    if DMESTOQUE.TEstoque.FieldByName('GERACOMIS').AsString = '1'
    then begin
        CBComissao.Checked:=True;
    end
    else begin
        CBComissao.Checked:=False;
    end;
    
    //Localiza os dados em todas as tabelas que fazem referências na Tabela Produto;
    //filtra subproduto
    If FiltraTabela(DMEstoque.TSubProd, 'SUBPRODUTO', 'COD_SUBPRODUTO', DMEstoque.WSimilar.FieldByName('COD_SUBPRODUTO').AsString, '')=False
    Then Begin
    	MessageDlg('Os dados consultados apresentaram inconcistência. Falha na tabela estoque', mtWarning, [mbOK], 0);
       BtnCancelar.OnClick(self);
       Exit;
    End;
    XCOD_SIMILAR:=DMESTOQUE.TSubProd.FieldByName('COD_SUBPRODUTO').AsInteger;

    //filtra produto
    If FiltraTabela(DMEstoque.TProduto, 'PRODUTO', 'COD_PRODUTO', DMEstoque.TSubProd.FieldByName('COD_PRODUTO').AsString, '')=False
    THen Begin
    	//se não encontrou pega qualquer produto
		FiltraTabela(DMEstoque.TProduto, 'PRODUTO', '', '', '');
    End;
    XCOD_PRODUTO:=DMESTOQUE.TProduto.FieldByName('COD_PRODUTO').AsInteger;
    XCod_UltimoProduto:=DMESTOQUE.TProduto.FieldByName('COD_PRODUTO').AsInteger;
    //Verifica se trabalho com o uso da grade ou de forma simples
    If DMMACS.TLoja.FieldByName('OPERADESCCUPOM').AsInteger<>1
    Then Begin
  		//COM A GRADE
       DBCODPRODUTO.Text:=DMESTOQUE.TProduto.FieldByName('cod_interno').AsString;
	    DBDESPROD.Text:=DMESTOQUE.TProduto.FieldByName('descricao').AsString;
    End;

    //filtra grupo
    If FiltraTabela(DMEstoque.TGrupo, 'GRUPOPROD', 'COD_GRUPOPROD', DMEstoque.TProduto.FieldByName('COD_GRUPOPROD').AsString, '')
    Then Begin
        XCodGrupo:=DMESTOQUE.TGrupo.FieldByName('COD_GRUPOPROD').AsInteger;
        XCod_UltimoGrupo:=DMESTOQUE.TGrupo.FieldByName('COD_GRUPOPROD').AsInteger;
        EDCODGRUPO.Text:=DMEstoque.TGRUPO.FieldByName('COD_INTERNO').AsString;
        DBGRUPO.Text:=DMEstoque.TGRUPO.FieldByName('DESCRICAO').AsString;
    End
    Else Begin
        XCodGrupo:=-1;
        EDCODGRUPO.Text:='';
        DBGRUPO.Text:='';
    End;

    //filtra subgrupo
    If FiltraTabela(DMEstoque.TSubgru, 'SUBGRUPOPROD', 'COD_SUBGRUPOPROD', DMEstoque.TProduto.FieldByName('COD_SUBGRUPOPROD').AsString, '')
    Then Begin
        XCodSubgrupo:=DMESTOQUE.TSubgru.FieldByName('COD_SUBGRUPOPROD').AsInteger;
        XCod_UltimoSubGrupo:=DMESTOQUE.TSubgru.FieldByName('COD_SUBGRUPOPROD').AsInteger;
        EDCODSUBGRUPO.Text:=DMEstoque.TSubGRU.FieldByName('COD_INTERNO').AsString;
        DBSUBGRUPO.Text:=DMEstoque.TSubGRU.FieldByName('DESCRICAO').AsString;
    End
    Else Begin
        XCodSubgrupo:=-1;
        EDCODSUBGRUPO.Text:='';
        DBSUBGRUPO.Text:='';
    End;

    //filtra unidade de compra
    If FiltraTabela(DMEstoque.TUnidade, 'UNIDADE', 'COD_UNIDADE', DMEstoque.TSubProd.FieldByName('COD_UNIDCOMPRA').AsString, '')
    Then Begin
    	XCodUnidadeCompra:=DMEstoque.TUnidade.FieldByName('COD_UNIDADE').AsInteger;
    	EdCodUnidadeCompra.Text:=DMEstoque.TUNIDADE.FieldByName('COD_UNIDADE').AsString;
    	EdUnidadeCompra.Text:=DMEstoque.TUNIDADE.FieldByName('sigla_unid').AsString+'-'+DMEstoque.TUNIDADE.FieldByName('DESC_UNID').AsString;
    End
    Else Begin
    	XCodUnidadeCompra:=-1;
    	EdCodUnidadeCompra.Text:='';
    	EdUnidadeCompra.Text:='';
    End;

    //filtra unidade DE VENDA
    If FiltraTabela(DMEstoque.TUnidade, 'UNIDADE', 'COD_UNIDADE', DMEstoque.TSubProd.FieldByName('COD_UNIDVENDA').AsString, '')
    Then Begin
        XCodUnidadeVenda:=DMEstoque.TUnidade.FieldByName('COD_UNIDADE').AsInteger;
        EdCodUnidadeVenda.Text:=DMEstoque.TUNIDADE.FieldByName('COD_UNIDADE').AsString;
        EdUnidadeVenda.Text:=DMEstoque.TUNIDADE.FieldByName('sigla_unid').AsString+'-'+DMEstoque.TUNIDADE.FieldByName('DESC_UNID').AsString;
    End
    Else Begin
        XCodUnidadeVenda:=-1;
        EdCodUnidadeVenda.Text:='';
        EdUnidadeVenda.Text:='';
    End;

    //filtracst
    If FiltraTabela(DMEstoque.TCST, 'CST', 'COD_CST', DMEstoque.TSubProd.FieldByName('COD_CST').AsString, '')
    Then Begin
        XCST:=DMEstoque.TCST.FieldByName('COD_CST').AsInteger;
        CodSitTrib.Text:=DMEstoque.TCST.FieldByName('COD_SIT_TRIB').AsString;
        DescSitTrib.Text:=DMEstoque.TCST.FieldByName('DESCRICAO').AsString;
    End
    Else Begin
        XCST:=-1;
        CodSitTrib.Text:='';
        DescSitTrib.Text:='';
    End;
    XSTATE:='EDIT';
    DMESTOQUE.TSubProd.Edit;
    DMESTOQUE.TEstoque.Edit;
    //controla combo de produto frete
	 If DmEstoque.TSubProd.FieldByName('EST_PERMANENTE').AsString='1' Then
   begin
    CbEstoquePermanente.Checked:=True;
   end
	 Else
    CbEstoquePermanente.Checked:=False;


    //CONTROLA COMBO DE PRODUTO MATERIAL DE USO E CONSUMO
	 If DmEstoque.TSubProd.FieldByName('USOCONSUMO').AsString='1' Then
    		CBProdutoConsumo.Checked:=True
	 Else
    		CBProdutoConsumo.Checked:=False;

	 If DmEstoque.TSubProd.FieldByName('RETEM_PIS_COFINS').AsString='S' Then
    		cbRetemPisCofins.Checked:=True
	 Else
    		cbRetemPisCofins.Checked:=False;

    // Controla PIS/COFINS
    If DMESTOQUE.TSubProd.FieldByName('GERARPISCOFINS').AsString = '1' Then
       CBGerarPisCofins.Checked:=True
    Else
       CBGerarPisCofins.Checked:=False;
       
    //Marca se o produto é um acessorio ou não
	 If DmEstoque.TSubProd.FieldByName('USOCONSUMO').AsString='5' Then
  Begin
    cbAcessorio.Checked := True;
    XAcessorio:=True
  End
	 Else
  Begin
    cbAcessorio.Checked := False;
    XAcessorio:=False;
  End;
    //Edmar - 08/10/2014 - Verifica se o produto consultado é componente
    //e marca o check box se necessário 
    if DMESTOQUE.TSubProd.FieldByName('COMPONENTE').AsString = '1' then
    	cbComponente.Checked := True
    else
    	cbComponente.Checked := False;

    // valor de venda a vista no varejo
    XVALOR_VISTAVAREJO := DMESTOQUE.TEstoque.FieldByName('VENDVARV').AsCurrency;
    LvarejoVista.Caption := FormatFloat('0.00',DMESTOQUE.TEstoque.FieldByName('VENDVARV').AsCurrency);

    // valor de venda a prazo no varejo
    XVALOR_PRAZOVAREJO := DMESTOQUE.TEstoque.FieldByName('VENDVARP').AsCurrency;
    LVarejoPrazo.Caption := FormatFloat('0.00',DMESTOQUE.TEstoque.FieldByName('VENDVARP').AsCurrency);

    // valor de venda a vista no atacado
    XVALOR_VISTAATAC := DMESTOQUE.TEstoque.FieldByName('VENDATAV').AsCurrency;
    LAtacVista.Caption := FormatFloat('0.00',DMESTOQUE.TEstoque.FieldByName('VENDATAV').AsCurrency);

    // valor de venda a prazo no atacado
    XVALOR_PRAZOATAC := DMESTOQUE.TEstoque.FieldByName('VENDATAP').AsCurrency;
    LAtacPrazo.Caption := FormatFloat('0.00',DMESTOQUE.TEstoque.FieldByName('VENDATAP').AsCurrency);

    //************ ULTIMOS VALORES *************

    // VALOR DE VENDA VISTA VAREJO
    DBVlrVistVar.Caption := FormatFloat('0.00',DMESTOQUE.TEstoque.FieldByName('ULTVLR_VNDVVAR').AsCurrency);

    // VALOR DE VENDA PRAZO VAREJO
    DBVlrPrazoVar.Caption := FormatFloat('0.00',DMESTOQUE.TEstoque.FieldByName('ULTVLR_VNDPVAR').AsCurrency);

    // VALOR DE VENDA VISTA ATACADO
    DBVlrVistAtac.Caption := FormatFloat('0.00',DMESTOQUE.TEstoque.FieldByName('ULTVLR_VNDVATAC').AsCurrency);

    // VALOR DE VENDA PRAZO ATACADO
    DBVlrPrazoAtac.Caption := FormatFloat('0.00',DMESTOQUE.TEstoque.FieldByName('ULTVLR_VPATAC').AsCurrency);
    //******************************************
    SincroValores(1);
    If DMMACS.TLoja.FieldByName('OPERADESCCUPOM').AsInteger<>1 Then
	 	DBCODPRODUTO.SetFocus
    Else
       EDCODGRUPO.SetFocus;

    //Edmar - 23/09/2014 - Filtra buscando o cfop para emissão dentro do estado
    if FiltraTabela(DMESTOQUE.TCFOP, 'CFOP', 'COD_CFOP', DMESTOQUE.TSubProd.FieldByName('COD_CFOPDENTROESTADO').AsString, '') then
    begin
       XCODCFOPDENTRO := DMESTOQUE.TCFOP.FieldByName('COD_CFOP').AsInteger;
       pCfopDentroEstado.EDCodigo.Text := DMESTOQUE.TCFOP.FieldByName('CFOP').AsString;
       pCfopDentroEstado.EdDescricao.Text:= DMESTOQUE.TCFOP.FieldByName('DESCRICAO').AsString;
    end
    else begin//se não achar seta variavel como -1 e limpa os campos
       XCODCFOPDENTRO := -1;
       pCfopDentroEstado.EDCodigo.Text := '';
       pCfopDentroEstado.EdDescricao.Text:= '';
    end;

    //Edmar - 23/09/2014 - filtra buscando cfop para emissão fora do estado
    if FiltraTabela(DMESTOQUE.TCFOP, 'CFOP', 'COD_CFOP', DMESTOQUE.TSubProd.FieldByName('COD_CFOPFORAESTADO').AsString, '') then
    begin
       XCODCFOPFORA := DMESTOQUE.TCFOP.FieldByName('COD_CFOP').AsInteger;
       pCfopForaEstado.EDCodigo.Text := DMESTOQUE.TCFOP.FieldByName('CFOP').AsString;
       pCfopForaEstado.EdDescricao.Text := DMESTOQUE.TCFOP.FieldByName('DESCRICAO').AsString;
    end
    else begin//se não achar seta variavel como -1 e limpa os campos
       XCODCFOPFORA := -1;
       pCfopForaEstado.EDCodigo.Text := '';
       pCfopForaEstado.EdDescricao.Text := '';
    end;

    //Paulo 12/12/2011: para mostrar se o produto está ativo ou não
    if DMESTOQUE.TSubProd.FieldByName('ATIVO').AsString = 'N' then
       cbInativaProd.Checked:=True
    else
       cbInativaProd.Checked:=False;

    //Edmar - 23/05/2014 - Marca o check box controle desgaste caso seja a situação
    if DMESTOQUE.TSubProd.FieldByName('CTRL_DESGASTE').AsString = '1' then
    	cbCtrlDesgaste.Checked := True
    else
    	cbCtrlDesgaste.Checked := False;

    //Edmar - 23/05/2014 - Marca o check box controle por hora caso seja a situação
    if DMESTOQUE.TSubProd.FieldByName('CTRL_HORA').AsString = '1' then
    	cbCtrlHora.Checked := True
    else
    	cbCtrlHora.Checked := False;

    if DBACRECIND.Text = '' then
	 	DBACRECIND.Text := '0';

    if DBDESCInd.Text = '' then
		DBDESCInd.Text := '0';
end;

procedure TFProduto.CodSitTribExit(Sender: TObject);
Var CODCST: STRING;
begin
  inherited;
    If FiltraTabela(DMESTOQUE.TCST, 'CST', 'cod_sit_trib', CodSitTrib.Text, '')=True
    Then Begin
       If DMEstoque.TCST.FieldByName('VENDA').AsString='1'
       Then Begin
           XCST:=DMESTOQUE.TCST.FieldByName('cod_cst').AsInteger;
           CODSITTRIB.Text:=DMESTOQUE.TCST.FieldByName('COD_SIT_TRIB').AsString;
           DESCSITTRIB.Text:=DMESTOQUE.TCST.FieldByName('DESCRICAO').AsString;
       End
       Else Begin
           MessageDlg('O C.S.T. Selecionado não se refere a um c.s.t. de venda. Sendo assim ele não pode ser selecionado para o produto.', mtWarning, [mbOK], 0);
       End;
    End
    Else Begin
       XCST:=-1;
       CODSITTRIB.Text:='';
       DESCSITTRIB.Text:='';
    End;
end;

procedure TFProduto.DBCODINTERNOEnter(Sender: TObject);
begin
  inherited;
{  	If (DBCODINTERNO.Text='') And (PCadProdComp.Visible=True)
   Then Begin//se ainda não foi inserido nenhum código sugere o próximo
		//Calcula codigo interno do SUBproduto
	   DBCODINTERNO.Text:=IntToStr(DMEstoque.CalcCodIntSUBProd(EdGrupoComp1.Text+'.'+EDSubGrupoComp1.Text+'.'+EDProdutoComp1.Text));
	   concatCodSubProd;
   End;
   If ((DBCODINTERNO.Text='') And (PCadProdComp.Visible=False))
   Then Begin
       DBCODINTERNO.Text:=UltCodInt('SUBPRODUTO', 'PROD');
	End; }
	DBCODINTERNO.Text:=DMESTOQUE.TSubProd.FieldByName('COD_SUBPRODUTO').AsString;
   DBCODINTERNO.Text:=IntToStr(XCOD_SIMILAR);
end;

procedure TFProduto.EDCODGRUPOExit(Sender: TObject);
Var CODGRUPO: STRING;
begin
  inherited;
end;

procedure TFProduto.EDCODSUBGRUPOExit(Sender: TObject);
Var
   CODSUBGRUPO:String;
begin
  inherited;

end;

procedure TFProduto.BtnSelecionarClick(Sender: TObject);
begin
  inherited;
//   COD_ESTOQUE:=DMEstoque.AlxSubProduto.FieldByName('COD_ESTOQUE').AsInteger;
end;

procedure TFProduto.BtnRelatorioClick(Sender: TObject);
begin
  inherited;
	PMESTOQUE.Popup(Left+PConsulta.left+Painel.left+ BtnRelatorio.Left, top+PConsulta.Top+Painel.top+BtnRelatorio.Top+BtnRelatorio.Height);
end;

procedure TFProduto.EstoqueSinttico1Click(Sender: TObject);
begin
  inherited;
	//Prepara SQL para relatório
   DMEstoque.Alx.Close;
   DMEstoque.Alx.SQL.Clear;
   DMEstoque.Alx.SQL.Add('SELECT DESCRICAO, COD_INTERNO, CODCOMPOSTO, DESCSUBPRODUTO, ');
   DMEstoque.Alx.SQL.Add('ESTFISICO, ESTPED, ESTRESERV, ESTSALDO,  COD_LOJA, CODINTERNOSP, ');
   DMEstoque.Alx.SQL.Add('GRUPO, SUBGRUPO FROM VWESTOQUE Where COD_LOJA=:CODLOJA ORDER BY GRUPO, SUBGRUPO ');
   DMEstoque.Alx.ParamByName('CODLOJA').AsString:=FMenu.LCODLOJA.Caption;
   DMEstoque.Alx.Open;

   If DMEstoque.Alx.IsEmpty
   Then Begin//se não foram encontradas informações
		Mensagem('OPÇÃO BLOQUEADA', 'Não foram encontradas informações para impressão!', '', 1, 1, False, 'I');
  	End
   Else Begin
//   	FRelEstoque.QREstoque.Preview;
   End;
end;

procedure TFProduto.ATIVONAOClick(Sender: TObject);
begin
  inherited;
    //AS PRÓXIMAS VÁRIAVEIS SÃO UTLIZADAS PARA ARMAZENAR AS INFORMAÇÕES PARA SEREM JOGADAS AO PRÓXIMO PRODUTO
    XPRXDESC:='';
    XPRXCODFAB:='';
    XPRXFAB:='';
    XPRXCODCST:='';
    XPRXCODUNICOMP:='';
    XPRXCODUNIVEND:='';
    XPRXMARCA:='';
end;

procedure TFProduto.CadastrarNovoProduto1Click(Sender: TObject);
Var
	CONTRINTOK: Integer;
   XNovoContrint: String;
	XFlacContrint: integer;
begin
	//EFETUA CONTROLE DE ACESSO
   If ControlAccess('PRODUTOS', 'M')=False Then
  		Exit;

  inherited;
   PrepInsert;//Prepara a inserção de produto

   //Insere REGISTROS NA TABELA DE PRODUTO, SUBPRODUTO E ESTOQUE
   XCOD_ESTOQUE:=InserReg(DMESTOQUE.TEstoque, 'ESTOQUE', 'COD_ESTOQUE');
   DMESTOQUE.TEstoque.FieldByName('COD_ESTOQUE').AsInteger:=XCOD_ESTOQUE;
   DMESTOQUE.TEstoque.FieldByName('VALREP').AsCurrency:=0;
   DMESTOQUE.TEstoque.FieldByName('ESTFISICO').AsCurrency:=0;

	XCOD_PRODUTO:=InserReg(DMESTOQUE.TProduto, 'PRODUTO', 'COD_PRODUTO');
   DMESTOQUE.TProduto.FieldByName('COD_PRODUTO').AsInteger:=XCOD_PRODUTO;

	XCOD_SIMILAR:=InserReg(DMESTOQUE.TSubProd, 'SUBPRODUTO', 'COD_SUBPRODUTO');
   DMESTOQUE.TSubProd.FieldByName('COD_SUBPRODUTO').AsInteger:=XCOD_SIMILAR;
   DMESTOQUE.TEstoque.FieldByName('COD_SUBPROD').AsInteger:=XCOD_SIMILAR;
   DBCODINTERNO.Text := DMESTOQUE.TSubProd.FieldByName('COD_SUBPRODUTO').AsString;   

   XSTATE:='INSERT';
   //CONTROLA NUMERAÇÃO CORRETA DO CONTROLEINTERNO
   XNovoContrint:=DMMACS.TLoja.FieldByName('PROXCTRINT').AsString;
   If XNovoContrint='' Then
       XNovoContrint:='1';

   XFlacContrint:=1;
   While XFlacContrint=1 do
   Begin
         DMESTOQUE.Alx.Close;
         DMESTOQUE.Alx.SQL.Clear;
         DMESTOQUE.Alx.SQL.Add('SELECT * FROM SUBPRODUTO WHERE (SUBPRODUTO.CONTRINT=:FAB) AND (SUBPRODUTO.COD_SUBPRODUTO<>:COD)');
         DMESTOQUE.Alx.ParamByName('FAB').AsString:=XNovoContrint;
         DMESTOQUE.Alx.ParamByName('COD').AsString:=IntToStr(XCOD_SIMILAR);
         DMESTOQUE.Alx.SQL.Text;
         DMESTOQUE.Alx.Open;

         If Not DMESTOQUE.Alx.IsEmpty
         Then Begin
             //Xaux:=1;
             XNovoContrint:=IntToStr(StrtoInt(XNovoContrint)+1);
         end
         Else Begin
             XFlacContrint:=0;
         End;
	End;
   //Assume o controle interno
   DMESTOQUE.TSubProd.FieldByName('CONTRINT').AsString:=XNovoContrint;
   DMMACS.TLoja.Edit;
   DMMACS.TLoja.FieldByName('PROXCTRINT').AsString:=INCSTRNUM(1, XNovoContrint);
   DMMACS.TLoja.Post;
   DMMACS.Transaction.CommitRetaining;
   FiltraTabela(DMMACS.TLoja, 'LOJA', 'COD_LOJA', FMenu.LCODLOJA.Caption, '');
   If DMMACS.TLoja.FIELDBYNAME('REDE').ASSTRING='1'
   Then Begin
     	//REACUCULA O PRÓXIMO CONTROLE INTERNO
     	CONTRINTOK:=0;
     	While CONTRINTOK=0 do
     	Begin
     		Try
       		DMESTOQUE.Alx.Close;
       		DMESTOQUE.Alx.SQL.Clear;
       		DMESTOQUE.Alx.SQL.Add('SELECT * FROM SUBPRODUTO WHERE (SUBPRODUTO.CONTRINT=:FAB)');
       		DMESTOQUE.Alx.ParamByName('FAB').AsString:=XNovoContrint;
       		DMESTOQUE.Alx.SQL.Text;
       		DMESTOQUE.Alx.Open;
	    		If (DMESTOQUE.Alx.IsEmpty){ AND (DMESTOQUE.TSubProd.FieldByNAme('CONTRINT').AsString<>DMMACS.TLoja.FieldByName('PROXCTRINT').AsString)} Then
           		CONTRINTOK:=1;
       	except
       	End;
     	end;
   End
   Else Begin
       FiltraTabela(DMMACS.TLoja, 'LOJA', 'COD_LOJA', FMenu.LCODLOJA.Caption, '');
	 	DMESTOQUE.TSubProd.FieldByName('CONTRINT').AsString:=XNovoContrint;
   End;
   //DMESTOQUE.TSubProd.Post;
   //DMESTOQUE.TransacEstoque.CommitRetaining;

  	//PProduto.Enabled:=True;
	DBGRUPO.Text:='';
  	DBSUBGRUPO.Text:='';

  	CodSitTrib.Text:='';
  	DescSitTrib.Text:='';
	EdCodUnidadeCompra.Text:='';
	EdUnidadeCompra.Text:='';
	EdCodUnidadeVenda.Text:='';
	EdUnidadeVenda.Text:='';


   //Repassa aos componentes os valores de descontos para o produto que eh configurado em empresa
   RepassaDescontos;

  	EDCODGRUPO.SetFocus;
end;

//ANGELO - 01/06/2015 - BUSCA A CHAVE PRIMÁRIA DO ÚLTIMO REGISTRO INSERIDO NO BANCO
function TFProduto.UltimoRegistroInserido(Tabela , Coluna : String):Integer;
Var CodigoRegistro : integer;
Begin
   Try
     MDO.Query.Close;
     MDO.Query.SQL.Clear;
     MDO.Query.SQL.Add('SELECT MAX('+Coluna+') FROM '+Tabela);
     MDO.Query.Open;
     CodigoRegistro := MDO.Query.FieldByName('MAX').AsInteger;
     UltimoRegistroInserido := CodigoRegistro;
		Except
     CodigoRegistro := -1;
   End;
End;


//ANGELO - 01/06/2015 - INSERE NOVO REGISTRO NA TABELA SUBPRODUTO
//E RETORNA O COD_SUBPRODUTO
Function TFProduto.InsereNovoSubProdCopiado(xCodSubProduto : Integer):Integer;
Var xNovoCodSubProd,XFlacContrint : Integer;
		 XNovoContrint : String;

Begin
    Try
      xNovoCodSubProd := UltimoRegistroInserido('SUBPRODUTO','COD_SUBPRODUTO')+1;
      //VERIFICA SE OBTEVE A CHAVE PRIMÁRIA
      if(xNovoCodSubProd = 0) then
      Begin
        InsereNovoSubProdCopiado := -1;
      End;

      DMMACS.TLoja.Transaction.CommitRetaining;
      //RECALCULA O CONTROLE INTERNO DO NOVO SUBPRODUTO
      XNovoContrint:=DMMACS.TLoja.FieldByName('PROXCTRINT').AsString;
      If XNovoContrint='' Then
         XNovoContrint:='1';
      XFlacContrint:=1;
      While XFlacContrint=1 do
      Begin
        MDO.Query.Close;
        MDO.Query.SQL.Clear;
        MDO.Query.SQL.Add('SELECT * FROM SUBPRODUTO WHERE (SUBPRODUTO.CONTRINT=:FAB) AND (SUBPRODUTO.COD_SUBPRODUTO<>:COD)');
        MDO.Query.ParamByName('FAB').AsString:=XNovoContrint;
        MDO.Query.ParamByName('COD').AsString:=IntToStr(xCodSubProduto);
        MDO.Query.SQL.Text;
        MDO.Query.Open;
         If Not MDO.Query.IsEmpty
         Then Begin
           //XNovoContrint:=IntToStr(StrtoInt(XNovoContrint)+1);
           XNovoContrint := IncStrNum(1,XNovoContrint);
         end
         Else Begin
             XFlacContrint:=0;
         End;
      End;
      

    //SE ENCONTRAR O SIMILAR A SER COPIADO
		 if (FiltraTabela(DMEstoque.Alx, 'SUBPRODUTO', 'COD_SUBPRODUTO', IntToStr(xCodSubProduto) ,'')) then
    Begin
      MDO.QAlx1.Close;
      MDO.QAlx1.SQL.Clear;
      MDO.QAlx1.SQL.Add('INSERT INTO SUBPRODUTO (COD_SUBPRODUTO,CODCOMPOSTO,DESCRICAO,CODPRODFABR,FABRICANTE,MARCA,ATIVO,COD_PRODUTO,');
      MDO.QAlx1.SQL.Add('DTCAD,CONTRINT,COD_INTERNO,COD_UNIDCOMPRA,COD_UNIDVENDA,COD_CST,ESPECIFICACAO,NCM,USOCONSUMO,CTRL_HORA,CTRL_DESGASTE,COMPONENTE,');
      MDO.QAlx1.SQL.Add('ANVISA,MINSAUDE,CLASSIFICACAO,QUANTGARANTIA,TIPOGARANTIA,BALANCA,OBSFISCAL,COMPOSICAO,');
      MDO.QAlx1.SQL.Add('LARGURA,ALTURA,DENSIDADE,PESOLIQ,QTDATC,PESOBRUTO ) ');
      MDO.QAlx1.SQL.Add('VALUES (:COD_SUBPRODUTO,:CODCOMPOSTO, :DESCRICAO,:CODPRODFABR, :FABRICANTE, :MARCA, :ATIVO, :COD_PRODUTO,  ');
      MDO.QAlx1.SQL.Add(':DTCAD, :CONTRINT, :COD_INTERNO, :COD_UNIDCOMPRA, :COD_UNIDVENDA,:COD_CST, :ESPECIFICACAO, :NCM,:USOCONSUMO,:CTRL_HORA,:CTRL_DESGASTE,:COMPONENTE, ');
      MDO.QAlx1.SQL.Add(':ANVISA,:MINSAUDE,:CLASSIFICACAO,:QUANTGARANTIA,:TIPOGARANTIA,:BALANCA,:OBSFISCAL,:COMPOSICAO, ');
      MDO.QAlx1.SQL.Add(':LARGURA,:ALTURA,:DENSIDADE,:PESOLIQ,:QTDATC,:PESOBRUTO )');
      MDO.QAlx1.ParamByName('COD_SUBPRODUTO').AsInteger := xNovoCodSubProd;
      MDO.QAlx1.ParamByName('CODCOMPOSTO').AsString := DMEstoque.Alx.FieldByName('CODCOMPOSTO').AsString;
      MDO.QAlx1.ParamByName('DESCRICAO').AsString := DMEstoque.Alx.FieldByName('DESCRICAO').AsString;
      //MDO.QAlx1.ParamByName('CODBARRA').AsString := DMEstoque.Alx.FieldByName('CODBARRA').AsString;
      MDO.QAlx1.ParamByName('CODPRODFABR').AsString := DMEstoque.Alx.FieldByName('CODPRODFABR').AsString;
      MDO.QAlx1.ParamByName('FABRICANTE').AsString := DMEstoque.Alx.FieldByName('FABRICANTE').AsString;
      MDO.QAlx1.ParamByName('MARCA').AsString := DMEstoque.Alx.FieldByName('MARCA').AsString;
      MDO.QAlx1.ParamByName('ATIVO').AsString := DMEstoque.Alx.FieldByName('ATIVO').AsString;
      MDO.QAlx1.ParamByName('COD_PRODUTO').AsInteger := DMEstoque.Alx.FieldByName('COD_PRODUTO').AsInteger;
      MDO.QAlx1.ParamByName('CONTRINT').AsString := XNovoContrint;
      MDO.QAlx1.ParamByName('COD_INTERNO').AsString := DMEstoque.Alx.FieldByName('COD_INTERNO').AsString;
      MDO.QAlx1.ParamByName('COD_UNIDCOMPRA').AsInteger := DMEstoque.Alx.FieldByName('COD_UNIDCOMPRA').AsInteger;
		   MDO.QAlx1.ParamByName('COD_UNIDVENDA').AsInteger := DMEstoque.Alx.FieldByName('COD_UNIDVENDA').AsInteger;
      MDO.QAlx1.ParamByName('COD_CST').AsInteger := DMEstoque.Alx.FieldByName('COD_CST').AsInteger;
      MDO.QAlx1.ParamByName('DTCAD').AsDate := Date;//DMEstoque.Alx.FieldByName('DTCAD').AsDateTime;
      MDO.QAlx1.ParamByName('NCM').AsString := DMEstoque.Alx.FieldByName('NCM').AsString;
      MDO.QAlx1.ParamByName('ESPECIFICACAO').AsString := DMEstoque.Alx.FieldByName('ESPECIFICACAO').AsString;
      MDO.QAlx1.ParamByName('USOCONSUMO').AsString := DMEstoque.Alx.FieldByName('USOCONSUMO').AsString;
      MDO.QAlx1.ParamByName('CTRL_HORA').AsString := DMEstoque.Alx.FieldByName('CTRL_HORA').AsString;
		   MDO.QAlx1.ParamByName('CTRL_DESGASTE').AsString := DMEstoque.Alx.FieldByName('CTRL_DESGASTE').AsString;
      MDO.QAlx1.ParamByName('COMPONENTE').AsString := DMEstoque.Alx.FieldByName('COMPONENTE').AsString;
      MDO.QAlx1.ParamByName('ANVISA').AsString := DMEstoque.Alx.FieldByName('ANVISA').AsString;
      MDO.QAlx1.ParamByName('MINSAUDE').AsString := DMEstoque.Alx.FieldByName('MINSAUDE').AsString;
      MDO.QAlx1.ParamByName('CLASSIFICACAO').AsString := DMEstoque.Alx.FieldByName('CLASSIFICACAO').AsString;
      MDO.QAlx1.ParamByName('QUANTGARANTIA').AsFloat := DMEstoque.Alx.FieldByName('QUANTGARANTIA').AsFloat;
      MDO.QAlx1.ParamByName('TIPOGARANTIA').AsString := DMEstoque.Alx.FieldByName('TIPOGARANTIA').AsString;
      MDO.QAlx1.ParamByName('BALANCA').AsString := DMEstoque.Alx.FieldByName('BALANCA').AsString;
      MDO.QAlx1.ParamByName('OBSFISCAL').AsString := DMEstoque.Alx.FieldByName('OBSFISCAL').AsString;
      MDO.QAlx1.ParamByName('COMPOSICAO').AsString := DMEstoque.Alx.FieldByName('COMPOSICAO').AsString;
      MDO.QAlx1.ParamByName('LARGURA').AsString := DMEstoque.Alx.FieldByName('LARGURA').AsString;
      MDO.QAlx1.ParamByName('ALTURA').AsString := DMEstoque.Alx.FieldByName('ALTURA').AsString;
      MDO.QAlx1.ParamByName('DENSIDADE').AsInteger := DMEstoque.Alx.FieldByName('DENSIDADE').AsInteger;
      MDO.QAlx1.ParamByName('PESOLIQ').AsFloat := DMEstoque.Alx.FieldByName('PESOLIQ').AsFloat;
      MDO.QAlx1.ParamByName('PESOBRUTO').AsFloat := DMEstoque.Alx.FieldByName('PESOBRUTO').AsFloat;
      MDO.QAlx1.ParamByName('QTDATC').AsFloat := DMEstoque.Alx.FieldByName('QTDATC').AsFloat;
      MDO.QAlx1.SQL.Text;
      MDO.QAlx1.ExecSQL;
      MDO.Transac.CommitRetaining;

      MDO.QAlx2.Close;
      MDO.QAlx2.SQL.Clear;
      MDO.QAlx2.SQL.Add('UPDATE LOJA set LOJA.PROXCTRINT=:PROXCTRINT WHERE COD_LOJA=:LOJA');
      mdo.QAlx2.ParamByName('PROXCTRINT').AsString := IncStrNum(1,XNovoContrint);
      mdo.QAlx2.ParamByName('LOJA').AsString := FMenu.LCODLOJA.Caption;
      MDO.QAlx2.ExecSQL;
      MDO.Transac.CommitRetaining;
      InsereNovoSubProdCopiado := xNovoCodSubProd;
    End Else
    Begin
      //REGISTRO NÃO INSERIDO	
      MDO.Transac.RollbackRetaining;
      InsereNovoSubProdCopiado := -1;
    End;
    Except
      MDO.Transac.RollbackRetaining;
      InsereNovoSubProdCopiado := -1;
    End;
End;

//ANGELO - 01/06/2015 - INSERE NOVO REGISTRO NA TABELA ESTOQUE
//E RETORNA O COD_ESTOQUE
Function TFProduto.InsereNovoEstoqueCopiado(xCodEstoque, xCodSubProd : Integer):Integer;
Var xNovoCodEstoque : Integer;
Begin
    Try
      xNovoCodEstoque := UltimoRegistroInserido('ESTOQUE','COD_ESTOQUE')+1;
      //VERIFICA SE OBTEVE A CHAVE PRIMÁRIA
      if(xNovoCodEstoque = 0) then
      Begin
       InsereNovoEstoqueCopiado := -1;
      End;

    //SE ENCONTRAR O ESTOQUE A SER COPIADO
		 if ( FiltraTabela(DMEstoque.Alx,'ESTOQUE','COD_ESTOQUE', IntToStr(xCodEstoque),'' ) <> False) then
    Begin
      //INSERE UMA CÓPIA DO ESTOQUE
      MDO.Query.Close;
      MDO.Query.SQL.Clear;
      MDO.Query.SQL.Add('INSERT INTO ESTOQUE (COD_ESTOQUE, COD_LOJA, COD_SUBPROD, ULTCOMPRA, ULTVENDA, ');
      MDO.Query.SQL.Add('ESTFISICO, ESTSALDO, VENDATAP, VENDATAV, VENDVARP, VENDVARV,VALUNIT,VALREP,VALCUSTO,AVVPROAT,AVVPROVAR, ');
      MDO.Query.SQL.Add('LUCRATIVIDADE,COEFDIV,VALOREST,OUTROS,DTCAD,VLRUNITCOMP,INDICE,BONIFICACAO,DESCONTO,CLNC, MARGEMSEG,VLRCOMPSD, ');
		   MDO.Query.SQL.Add('DATAATU,HORAATU,COD_USUARIOALT,ULTVLR_VNDVVAR,ULTVLR_VNDPVAR,ULTVLR_VNDVATAC,ULTVLR_VPATAC,GERACOMIS,ATUALIZAR, ');
		   MDO.Query.SQL.Add('VENDINDV,VENDINDP,AVVPROIND,AVPPROIND, ESTMIN, ESTMAX, FRETE, ');
      MDO.Query.SQL.Add('ICMS,IPI_VND,MVA,MEDIABASEICMST,MEDIAVLRICMST,VLRBONIFIC,PERCMARGSEG,REDUCBASE,VALCUSDESP) ');

      MDO.Query.SQL.Add('VALUES (:COD_ESTOQUE, :COD_LOJA, :COD_SUBPROD, :ULTCOMPRA, :ESTFISICO, :ESTSALDO,  :ULTVENDA, :VENDATAP, :VENDATAV, :VENDVARP, ');
      MDO.Query.SQL.Add(':VENDVARV, :VALUNIT, :VALREP, :VALCUSTO, :AVVPROAT, :AVVPROVAR, :LUCRATIVIDADE, :COEFDIV, :VALOREST, :OUTROS, :DTCAD, :VLRUNITCOMP, ');
      MDO.Query.SQL.Add(':INDICE, :BONIFICACAO, :DESCONTO, :CLNC, :MARGEMSEG, :VLRCOMPSD, :DATAATU, :HORAATU, :COD_USUARIOALT, :ULTVLR_VNDVVAR, ');
      MDO.Query.SQL.Add(':ULTVLR_VNDPVAR, :ULTVLR_VNDVATAC, :ULTVLR_VPATAC, :GERACOMIS, :ATUALIZAR, :VENDINDV, :VENDINDP, :AVVPROIND, :AVPPROIND, :ESTMIN, :ESTMAX, :FRETE, ');
      MDO.Query.SQL.Add(':ICMS,:IPI_VND,:MVA,:MEDIABASEICMST,:MEDIAVLRICMST,:VLRBONIFIC,:PERCMARGSEG,:REDUCBASE,:VALCUSDESP) ');
      MDO.Query.SQL.Text;
      MDO.Query.ParamByName('COD_ESTOQUE').AsInteger :=  xNovoCodEstoque;
      MDO.Query.ParamByName('COD_LOJA').AsInteger := DMEstoque.Alx.FieldByName('COD_LOJA').AsInteger;
      MDO.Query.ParamByName('COD_SUBPROD').AsInteger := xCodSubProd;
      MDO.Query.ParamByName('ULTCOMPRA').AsDate := DMEstoque.Alx.FieldByName('ULTCOMPRA').AsDateTime;
      MDO.Query.ParamByName('ULTVENDA').AsDate := DMEstoque.Alx.FieldByName('ULTVENDA').AsDateTime;
      MDO.Query.ParamByName('ESTFISICO').AsFloat := 0;
      MDO.Query.ParamByName('ESTSALDO').AsFloat := DMEstoque.Alx.FieldByName('ESTSALDO').AsFloat;
      MDO.Query.ParamByName('VENDATAP').AsCurrency := DMEstoque.Alx.FieldByName('VENDATAP').AsCurrency;
      MDO.Query.ParamByName('VENDATAV').AsCurrency := DMEstoque.Alx.FieldByName('VENDATAV').AsCurrency;
      MDO.Query.ParamByName('VENDVARP').AsCurrency := DMEstoque.Alx.FieldByName('VENDVARP').AsCurrency;
      MDO.Query.ParamByName('VENDVARV').AsCurrency := DMEstoque.Alx.FieldByName('VENDVARV').AsCurrency;
      MDO.Query.ParamByName('VALUNIT').AsCurrency := DMEstoque.Alx.FieldByName('VALUNIT').AsCurrency;
      MDO.Query.ParamByName('VALREP').AsCurrency := DMEstoque.Alx.FieldByName('VALREP').AsCurrency;
      MDO.Query.ParamByName('VALCUSTO').AsCurrency := DMEstoque.Alx.FieldByName('VALCUSTO').AsCurrency;
      MDO.Query.ParamByName('AVVPROAT').AsCurrency := DMEstoque.Alx.FieldByName('AVVPROAT').AsCurrency;
      MDO.Query.ParamByName('AVVPROVAR').AsCurrency := DMEstoque.Alx.FieldByName('AVVPROVAR').AsCurrency;
      MDO.Query.ParamByName('LUCRATIVIDADE').AsCurrency := DMEstoque.Alx.FieldByName('LUCRATIVIDADE').AsCurrency;
      MDO.Query.ParamByName('COEFDIV').AsFloat := DMEstoque.Alx.FieldByName('COEFDIV').AsFloat;
      MDO.Query.ParamByName('VALOREST').AsCurrency := DMEstoque.Alx.FieldByName('VALOREST').AsCurrency;
      MDO.Query.ParamByName('OUTROS').AsFloat := DMEstoque.Alx.FieldByName('OUTROS').AsFloat;
      MDO.Query.ParamByName('DTCAD').AsDate := DMEstoque.Alx.FieldByName('DTCAD').AsDateTime;
      MDO.Query.ParamByName('VLRUNITCOMP').AsCurrency := DMEstoque.Alx.FieldByName('VLRUNITCOMP').AsCurrency;
      MDO.Query.ParamByName('INDICE').AsFloat := DMEstoque.Alx.FieldByName('INDICE').AsFloat;
      MDO.Query.ParamByName('BONIFICACAO').AsFloat := DMEstoque.Alx.FieldByName('BONIFICACAO').AsFloat;
      MDO.Query.ParamByName('DESCONTO').AsFloat := DMEstoque.Alx.FieldByName('DESCONTO').AsFloat;
      MDO.Query.ParamByName('CLNC').AsFloat := DMEstoque.Alx.FieldByName('CLNC').AsFloat;
      MDO.Query.ParamByName('MARGEMSEG').AsFloat := DMEstoque.Alx.FieldByName('MARGEMSEG').AsFloat;
      MDO.Query.ParamByName('VLRCOMPSD').AsCurrency := DMEstoque.Alx.FieldByName('VLRCOMPSD').AsCurrency;
      MDO.Query.ParamByName('DATAATU').AsDate := DMEstoque.Alx.FieldByName('DATAATU').AsDateTime;
      MDO.Query.ParamByName('HORAATU').AsDateTime := DMEstoque.Alx.FieldByName('HORAATU').AsDateTime;
      MDO.Query.ParamByName('COD_USUARIOALT').AsInteger := DMEstoque.Alx.FieldByName('COD_USUARIOALT').AsInteger;
      MDO.Query.ParamByName('ULTVLR_VNDVVAR').AsCurrency := DMEstoque.Alx.FieldByName('ULTVLR_VNDVVAR').AsCurrency;
      MDO.Query.ParamByName('ULTVLR_VNDPVAR').AsCurrency := DMEstoque.Alx.FieldByName('ULTVLR_VNDPVAR').AsCurrency;
      MDO.Query.ParamByName('ULTVLR_VNDVATAC').AsCurrency := DMEstoque.Alx.FieldByName('ULTVLR_VNDVATAC').AsCurrency;
      MDO.Query.ParamByName('ULTVLR_VPATAC').AsCurrency := DMEstoque.Alx.FieldByName('ULTVLR_VPATAC').AsCurrency;
      MDO.Query.ParamByName('GERACOMIS').AsInteger := DMEstoque.Alx.FieldByName('GERACOMIS').Asinteger;
      MDO.Query.ParamByName('ATUALIZAR').AsString := DMEstoque.Alx.FieldByName('ATUALIZAR').AsString;
      MDO.Query.ParamByName('VENDINDV').AsCurrency := DMEstoque.Alx.FieldByName('VENDINDV').AsCurrency;
      MDO.Query.ParamByName('VENDINDP').AsCurrency := DMEstoque.Alx.FieldByName('VENDINDP').AsCurrency;
      MDO.Query.ParamByName('AVVPROIND').AsCurrency := DMEstoque.Alx.FieldByName('AVVPROIND').AsCurrency;
      MDO.Query.ParamByName('AVPPROIND').AsCurrency := DMEstoque.Alx.FieldByName('AVPPROIND').AsCurrency;
      MDO.Query.ParamByName('ESTMIN').AsFloat := DMEstoque.Alx.FieldByName('ESTMIN').AsFloat;
      MDO.Query.ParamByName('ESTMAX').AsFloat := DMEstoque.Alx.FieldByName('ESTMAX').AsFloat;
      MDO.Query.ParamByName('FRETE').AsFloat := DMEstoque.Alx.FieldByName('FRETE').AsFloat;
      MDO.Query.ParamByName('ICMS').AsFloat := DMEstoque.Alx.FieldByName('ICMS').AsFloat;
      MDO.Query.ParamByName('IPI_VND').AsFloat := DMEstoque.Alx.FieldByName('IPI_VND').AsFloat;
      MDO.Query.ParamByName('MVA').AsFloat := DMEstoque.Alx.FieldByName('MVA').AsFloat;
		   MDO.Query.ParamByName('MEDIABASEICMST').AsFloat := DMEstoque.Alx.FieldByName('MEDIABASEICMST').AsFloat;
      MDO.Query.ParamByName('MEDIAVLRICMST').AsFloat := DMEstoque.Alx.FieldByName('MEDIAVLRICMST').AsFloat;
      MDO.Query.ParamByName('VLRBONIFIC').AsFloat := DMEstoque.Alx.FieldByName('VLRBONIFIC').AsFloat;
      MDO.Query.ParamByName('PERCMARGSEG').AsFloat := DMEstoque.Alx.FieldByName('PERCMARGSEG').AsFloat;
      MDO.Query.ParamByName('REDUCBASE').AsFloat := DMEstoque.Alx.FieldByName('REDUCBASE').AsFloat;
      MDO.Query.ParamByName('VALCUSDESP').AsFloat := DMEstoque.Alx.FieldByName('VALCUSDESP').AsFloat;
      MDO.Query.ExecSQL;
      MDO.Transac.CommitRetaining;
      InsereNovoEstoqueCopiado := xNovoCodEstoque;
    End;
    Except
      InsereNovoEstoqueCopiado := -1;
    End;
End;

//ANGELO - 03/06/2015 - CONTROLA MARCAÇÕES NA TELA DE EDIÇÃO DE SIMILAR
Procedure TFProduto.ControlaMarcacoes(xCodEstoque,xCodSubProd : Integer);
Begin
		Try
       if ( (xCodEstoque > 0) And (xCodSubProd > 0) ) then
       Begin
           if (FiltraTabela(DMESTOQUE.Alx, 'ESTOQUE', 'COD_ESTOQUE', IntToStr(xCodEstoque),'') And
           FiltraTabela(DMESTOQUE.Alx1, 'SUBPRODUTO', 'COD_SUBPRODUTO', IntToStr(xCodSubProd),'') )Then
           Begin //INÍCIO DO CONTROLE DE MARCAÇÕES
             //CONTROLA AS MARCAÇÕES DOS CHECKBOX'S DO ITEM
             //COMPONENTE
             if DMESTOQUE.Alx1.FieldByName('COMPONENTE').AsString = '1' then
               cbComponente.Checked := True
             else
               cbComponente.Checked := False;
             //ATIVO OU INATIVO
             if DMESTOQUE.Alx1.FieldByName('ATIVO').AsString = '1' then
               cbInativaProd.Checked := True
             else
               cbInativaProd.Checked := False;
             //CONTROLE DE DESGASTE
             if DMESTOQUE.Alx1.FieldByName('CTRL_DESGASTE').AsString = '1' then
               cbCtrlDesgaste.Checked := True
             else
               cbCtrlDesgaste.Checked := False;
             //CONTROLE DE HORA
             if DMESTOQUE.Alx1.FieldByName('CTRL_HORA').AsString = '1' then
               cbCtrlDesgaste.Checked := True
             else
               cbCtrlDesgaste.Checked := False;
             //CONTROLA COMBO DE PRODUTO FRETE
             if DMESTOQUE.Alx1.FieldByName('EST_PERMANENTE').AsString='1' Then
               CbEstoquePermanente.Checked:=True
             else
               CbEstoquePermanente.Checked:=False;
             //CONTROLA COMBO DE PRODUTO MATERIAL DE USO E CONSUMO
             if DMESTOQUE.Alx1.FieldByName('USOCONSUMO').AsString='1' Then
               CBProdutoConsumo.Checked:=True
             else
               CBProdutoConsumo.Checked:=False;
             //FINALIZA CONTROLE DAS MARCAÇÕES DOS CHECKBOX'S DO ITEM
				  //Edmar - 02/12/2014 - Filtra buscando o cfop para emissão dentro do estado
             if FiltraTabela(DMESTOQUE.TCFOP, 'CFOP', 'COD_CFOP', DMESTOQUE.Alx1.FieldByName('COD_CFOPDENTROESTADO').AsString, '') then
             begin
               XCODCFOPDENTRO := DMESTOQUE.TCFOP.FieldByName('COD_CFOP').AsInteger;
               pCfopDentroEstado.EDCodigo.Text := DMESTOQUE.TCFOP.FieldByName('CFOP').AsString;
               pCfopDentroEstado.EdDescricao.Text:= DMESTOQUE.TCFOP.FieldByName('DESCRICAO').AsString;
             end
             else begin//se não achar seta variavel como -1 e limpa os campos
               XCODCFOPDENTRO := -1;
               pCfopDentroEstado.EDCodigo.Text := '';
               pCfopDentroEstado.EdDescricao.Text:= '';
             end;
             //Edmar - 02/12/2014 - filtra buscando cfop para emissão fora do estado
             if FiltraTabela(DMESTOQUE.TCFOP, 'CFOP', 'COD_CFOP', DMESTOQUE.Alx1.FieldByName('COD_CFOPFORAESTADO').AsString, '') then
             begin
                XCODCFOPFORA := DMESTOQUE.TCFOP.FieldByName('COD_CFOP').AsInteger;
                pCfopForaEstado.EDCodigo.Text := DMESTOQUE.TCFOP.FieldByName('CFOP').AsString;
                pCfopForaEstado.EdDescricao.Text := DMESTOQUE.TCFOP.FieldByName('DESCRICAO').AsString;
             end
             else begin//se não achar seta variavel como -1 e limpa os campos
               XCODCFOPFORA := -1;
               pCfopForaEstado.EDCodigo.Text := '';
               pCfopForaEstado.EdDescricao.Text := '';
             end;
           End;//FIM DO CONTROLE DE MARCAÇÕES
       End;
   Except;
   End;
End;

//ANGELO - 03/06/2015 - COPIA A TABELA DE PREÇOS DO ESTOQUE ANTIGO PARA O NOVO
Function TFProduto.CopiaTabelaPrecos(xCodEstAntigo,xCodEstNovo : Integer):Boolean;
Var Indice : Integer;
Begin
  Try
     //SELECIONA E COPIA AS TABELAS DE PREÇOS DO ESTOQUE ANTIGO PARA O NOVO
     MDO.QConsulta.Close;
     MDO.QConsulta.SQL.Clear;
     MDO.QConsulta.SQL.Add('SELECT * FROM TABELAFAIXAPRECO WHERE COD_ESTOQUE=:COD_ESTOQUE');
     MDO.QConsulta.ParamByName('COD_ESTOQUE').AsInteger := xCodEstAntigo;
     MDO.QConsulta.Open;
     MDO.QConsulta.First;
     While NOT(MDO.QConsulta.Eof) do
     Begin
       indice := UltimoRegistroInserido('TABELAFAIXAPRECO','COD_TABELAFAIXAPRECO') + 1;
       if (indice > 0 ) Then
       Begin
         MDO.Query.Close;
         MDO.Query.SQL.Clear;
         MDO.Query.SQL.Add('INSERT INTO TABELAFAIXAPRECO (COD_TABELAFAIXAPRECO,COD_FAIXAPRECO,COD_ESTOQUE,PRECO, COD_TABELAPRECO) ');
         MDO.Query.SQL.Add('VALUES (:COD_TABELAFAIXAPRECO,:COD_FAIXAPRECO,:COD_ESTOQUE,:PRECO, :COD_TABELAPRECO)');
         MDO.Query.ParamByName('COD_TABELAFAIXAPRECO').AsInteger :=  indice;
         MDO.Query.ParamByName('COD_TABELAPRECO').AsInteger := MDO.QConsulta.FieldByName('COD_TABELAPRECO').AsInteger;
         MDO.Query.ParamByName('COD_FAIXAPRECO').AsInteger := MDO.QConsulta.FieldByName('COD_FAIXAPRECO').AsInteger;
         MDO.Query.ParamByName('COD_ESTOQUE').AsInteger := xCodEstNovo;
         MDO.Query.ParamByName('PRECO').AsCurrency := MDO.QConsulta.FieldByName('PRECO').AsCurrency;
         MDO.Query.ExecSQL;
     	End Else
       Begin
         MDO.Transac.RollbackRetaining;
    	  CopiaTabelaPrecos := False;
       End;
       MDO.QConsulta.Next;
     End;//While
     MDO.Transac.CommitRetaining;
     CopiaTabelaPrecos := True;
  Except
    MDO.Transac.RollbackRetaining;
    CopiaTabelaPrecos := False;
  End;

End;


//ANGELO - 01/06/2015 - PERMITE A CÓPIA DE UM PRODUTO SELECIONADO NA LISTA
//OU CADASTRADO ANTERIORMENTE
procedure TFProduto.CadastrarProdutoSelecionado(UltimoInserido : Boolean);
var xNovoCodEstoque,
    xNovoCodProduto,
    xNovoCodSubProduto,
    xCodEstCopiado,
    xCodProdutoCopiado,
    xCodSubProdCopiado : Integer;
Begin
    //PrepInsert;
    //O PRODUTO COPIADO É O ÚLTIMO CADASTRADO (F11)
    IF (UltimoInserido) then
    Begin
       //ÚLTIMO ESTOQUE INSERIDO
    	xCodEstCopiado := UltimoRegistroInserido('ESTOQUE','COD_ESTOQUE');
    End Else
    Begin
    	//O PRODUTO COPIADO É O SELECIONADO NA LISTA (F10)
    	xCodEstCopiado := DMEstoque.DwSimilar.DataSet.FieldByName('COD_ESTOQUE').AsInteger;
    End;
    //SE NÃO ENCONTRAR O ÚLTIMO ESTOQUE CADASTRADO
    if (xCodEstCopiado = -1) Then
    Begin
			MessageDlg('Não foi possível encontrar o último produto cadastrado!', mtWarning, [mbOK], 0);
       Exit;
    End;
    Try
      //BUSCA O SUBPRODUTO DO ESTOQUE A SER COPIADO
      MDO.Query.Close;
      MDO.Query.SQL.Clear;
      MDO.Query.SQL.Add('SELECT COD_SUBPROD FROM ESTOQUE WHERE COD_ESTOQUE = :COD_ESTOQUE');
      MDO.Query.ParamByName('COD_ESTOQUE').AsInteger := xCodEstCopiado;
      MDO.Query.Open;
      xCodSubProdCopiado := MDO.Query.FieldByName('COD_SUBPROD').AsInteger;
      //CRIA NOVAS CÓPIAS DO ESTOQUE E DO SUBPRODUTO E ARMAZENA OS CÓDIGOS
      xNovoCodSubProduto := InsereNovoSubProdCopiado(xCodSubProdCopiado);
      if (xNovoCodSubProduto < 1) then
      Begin
        MessageDlg('Não foi possível copiar o novo item!', mtWarning, [mbOK], 0);
        Exit;
      End;
      xNovoCodEstoque := InsereNovoEstoqueCopiado(xCodEstCopiado,xNovoCodSubProduto);
      if (xNovoCodEstoque < 1) then
      Begin
        MessageDlg('Não foi possível copiar o novo item!', mtWarning, [mbOK], 0);
        Exit;
      End;      
      //COPIA TABELA DE PREÇOS
      CopiaTabelaPrecos(xCodEstCopiado,xNovoCodEstoque);
      //FILTRA A TABELA SELECIONANDO O ESTOQUE DESEJADO E ABRE A EDIÇÃO
		   FiltraTabela(DMESTOQUE.WSimilar, 'VWSIMILAR', 'COD_ESTOQUE', IntToStr(xNovoCodEstoque),'');
      BtnConsultarClick(Self);
      //PREENCHE INFORMAÇÕES ESSENCIAIS NA TELA DE CADASTRO/EDIÇÃO
      ControlaMarcacoes(xNovoCodEstoque,xNovoCodSubProduto);
      MontaTabelaPreco(xNovoCodEstoque);
      //Verifica se esta trabalhando com grade ou da forma simples
      if DMMACS.TLoja.FieldByName('OPERADESCCUPOM').AsInteger=1
      Then Begin
  		 //SEM GRADE A GRADE
        BtnGrupo.Visible:=true;
        BtnSubGrupo.Visible:=true;
      End
      Else Begin
		   //COM GRADE
        BtnGrupo.Visible:=False;
        BtnSubGrupo.Visible:=False;
      end;
		 Except
    End;
End;

Function TFProduto.RetornaProximoControleInterno: String;
var
tmpcontrint: string;
xflagcontrint: integer;
Begin
   Try
       MDO.Transac.CommitRetaining;
       mdo.QConsulta.Close;
       mdo.QConsulta.SQL.Clear;
       MDO.QConsulta.sql.Add(' Select loja.proxctrint from loja ');
       mdo.QConsulta.Open;

       tmpcontrint := MDO.QConsulta.FieldByName('PROXCTRINT').AsString;

       If tmpcontrint='' Then
           tmpcontrint:='1';

       xflagcontrint:=1;

       While xflagcontrint=1 do
       Begin
           Result := tmpcontrint;
           mdo.QConsulta.Close;
           mdo.QConsulta.SQL.Clear;
           MDO.QConsulta.sql.Add(' Select subproduto.contrint from subproduto ');
           MDO.QConsulta.sql.Add(' WHERE (SUBPRODUTO.CONTRINT=:FAB) AND (SUBPRODUTO.COD_SUBPRODUTO<>:COD) ');
           MDO.QConsulta.ParamByName('FAB').AsString   :=  tmpcontrint;
           MDO.QConsulta.ParamByName('COD').AsInteger  :=  XCODSUBPROD;
           MDO.QConsulta.SQL.Text;
           MDO.QConsulta.Open;


           If Not MDO.QConsulta.IsEmpty
           Then Begin
			If Length(tmpcontrint)>14 Then
             tmpcontrint := IncStrNum(1, Copy(tmpcontrint, 0, 12))
			Else
             tmpcontrint := IncStrNum(1, tmpcontrint);
         end
         Else Begin
             xflagcontrint:=0;
         End;
       End;
       mdo.Query.Close;
       mdo.Query.SQL.Clear;
       MDO.Query.sql.Add(' update loja set loja.proxctrint = :Contrint ');
       mdo.Query.ParamByName('Contrint').AsString := tmpcontrint;
       mdo.Query.ExecSQL;

       mdo.Transac.CommitRetaining
   Except
       Result := '';
   End;
End;

procedure TFProduto.CadastrarumProdutoSimilar1Click(Sender: TObject);
Var
	CONTRINTOK: Integer;
	XNovoContrint: String;
	XFlacContrint: Integer;
begin
    PrepInsert;//Prepara a inserção de produto

	 PrepInsert;//Prepara a inserção de produto
    //Insere REGISTROS NA TABELA DE SUBPRODUTO E ESTOQUE E LOCALIZA PRODUTO
    XCOD_ESTOQUE:=InserReg(DMESTOQUE.TEstoque, 'ESTOQUE', 'COD_ESTOQUE');
    DMESTOQUE.TEstoque.FieldByName('COD_ESTOQUE').AsInteger:=XCOD_ESTOQUE;
    DMESTOQUE.TEstoque.FieldByName('ESTFISICO').AsCurrency:=0;    
    //Insere dados na Tabela SubProduto
    XCOD_SIMILAR:=InserReg(DMESTOQUE.TSubProd, 'SUBPRODUTO', 'COD_SUBPRODUTO');
    DMESTOQUE.TSubProd.FieldByName('COD_SUBPRODUTO').AsInteger:=XCOD_SIMILAR;
	   DBCODINTERNO.Text:=DMESTOQUE.TSubProd.FieldByName('COD_SUBPRODUTO').AsString;
{
    If InsereNovoSubrodutoEstoque = True
    Then Begin
       If FiltraTabela(DMESTOQUE.TSubProd, 'SUBPRODUTO', 'COD_SUBPRODUTO', IntToStr(XCODSUBPROD), '')=True
       Then Begin

       End;
       If FiltraTabela(DMESTOQUE.TEstoque, 'ESTOQUE', 'COD_ESTOQUE', IntToStr(XCOD_ESTOQUE), '')=True
       then Begin

       End;

    End;
}
    //Verifica se esta trabalhando com grade ou da forma simples
    if DMMACS.TLoja.FieldByName('OPERADESCCUPOM').AsInteger=1
    Then Begin
  		//SEM GRADE A GRADE
       BtnGrupo.Visible:=true;
       BtnSubGrupo.Visible:=true;
    End
    Else Begin
		//COM GRADE
       BtnGrupo.Visible:=False;
       BtnSubGrupo.Visible:=False;
    end;
    //Paulo 02/06/2010: seta os dados do ultimo registro gravado para mostrar na tela
    if (XCOD_ULTPROD=-1) Then
       XCOD_PRODUTO:=DMESTOQUE.WProduto.FieldByName('COD_PRODUTO').AsInteger;

    If DMMACS.TLoja.FieldByName('OPERADESCCUPOM').AsInteger=1
    Then Begin
       CadastrarNovoProduto1Click(sender);
    end;


    XSTATE:='INSERT';
    DMMACS.TLoja.Transaction.CommitRetaining;


    if(XCOD_ULTPROD>=0) THEN
    begin

       //Localiza o produto selecionado e mostra na tela.
       If FiltraTabela(DMESTOQUE.TProduto, 'PRODUTO', 'COD_PRODUTO', IntToStr(XCOD_ULTPROD), '')=True then
       begin

       	//repassa produto
           DBCODPRODUTO.Text := DMESTOQUE.TProduto.FieldByName('COD_INTERNO').AsString;
           DBDESPROD.Text := DMESTOQUE.TProduto.FieldByName('DESCRICAO').AsString;

          	//REPASSA GRUPO
          	DMESTOQUE.Alx.Close;
          	DMESTOQUE.Alx.SQL.Clear;
          	DMESTOQUE.Alx.SQL.Add(' SELECT grupoprod.cod_interno, grupoprod.descricao FROM grupoprod');
          	DMESTOQUE.Alx.SQL.Add(' where grupoprod.cod_grupoprod = :CODPRODUTO');
          	DMESTOQUE.Alx.ParamByName('CODPRODUTO').AsString:=DMEstoque.TProduto.FieldByName('cod_grupoprod').AsString;
          	DMESTOQUE.Alx.Open;
          	If Not DMESTOQUE.Alx.IsEmpty
          	Then Begin
           	DBGRUPO.TEXT:=DMEstoque.Alx.FieldByName('DESCRICAO').AsString;
             	EDCODGRUPO.Text:=DMEstoque.Alx.FieldByName('cod_interno').AsString;
          	End
          	Else Begin
           	DBGRUPO.TEXT:='';
             	EDCODGRUPO.Text:='';
          	End;

          //REPASSA SUBPRODUTO
          DMESTOQUE.Alx1.Close;
          DMESTOQUE.Alx1.SQL.Clear;
          DMESTOQUE.Alx1.SQL.Add(' SELECT subgrupoprod.cod_interno, subgrupoprod.descricao FROM subgrupoprod where subgrupoprod.cod_subgrupoprod = :codigo ');
          DMESTOQUE.Alx1.ParamByName('codigo').AsString:=DMEstoque.TProduto.FieldByName('cod_subgrupoprod').AsString;
          DMESTOQUE.Alx1.Open;
          If Not DMESTOQUE.Alx1.IsEmpty
          Then Begin
             DBSUBGRUPO.TEXT:=DMESTOQUE.Alx1.FieldByName('DESCRICAO').AsString;
             EDCODSUBGRUPO.Text:=DMESTOQUE.Alx1.FieldByName('COD_INTERNO').AsString;
          End
          Else Begin
             DBSUBGRUPO.TEXT:='';
             EDCODSUBGRUPO.Text:='';
          End;
       end;

       //Localiza o Unidade do produto selecionado e mostra na tela.
       If FiltraTabela(DMESTOQUE.TUnidade, 'UNIDADE', 'COD_UNIDADE', XPRXCODUNICOMP, '')=True then
       begin
       	DMESTOQUE.TSubProd.FieldByName('COD_UNIDCOMPRA').AsString:=XPRXCODUNICOMP;
           EdCodUnidadeCompra.Text:=DMEstoque.TUNIDADE.FieldByName('COD_UNIDADE').AsString;
           EdUnidadeCompra.Text:=DMEstoque.TUNIDADE.FieldByName('sigla_unid').AsString+'-'+DMEstoque.TUNIDADE.FieldByName('DESC_UNID').AsString;
       end;

       //Localiza o Unidade de venda do produto selecionado e mostra na tela.
       if FiltraTabela(DMESTOQUE.TUnidade, 'UNIDADE', 'COD_UNIDADE', XPRXCODUNIVEND, '')=True then
       begin
       	DMESTOQUE.TSubProd.FieldByName('COD_UNIDVENDA').AsString:=XPRXCODUNIVEND;
           EdCodUnidadeVenda.Text:=DMEstoque.TUNIDADE.FieldByName('COD_UNIDADE').AsString;
           EdUnidadeVenda.Text:=DMEstoque.TUNIDADE.FieldByName('sigla_unid').AsString+'-'+DMEstoque.TUNIDADE.FieldByName('DESC_UNID').AsString;
       end;

       //Localiza o Código da Situação Tributária do produto selecionado e mostra na tela.
       If FiltraTabela(DMESTOQUE.TCST, 'CST', 'COD_CST', XPRXCODCST, '')=True then
       begin
       	DMESTOQUE.TSubProd.FieldByName('COD_CST').AsString:=XPRXCODCST;
           DescSitTrib.text:=DMEstoque.TCst.FieldByName('DESCRICAO').AsString;
           CODSITTRIB.Text:=DMEstoque.TCst.FieldByName('COD_SIT_TRIB').AsString;
       end;

       DMESTOQUE.TSubProd.edit;
       DMESTOQUE.TSubProd.FieldByName('CONTRINT').AsString := RetornaProximoControleInterno;
       DMESTOQUE.TSubProd.FieldByName('DESCRICAO').AsString := Copy(XPRXDESC, 1, 60);
       //DMESTOQUE.TSubProd.FieldByName('CODPRODFABR').AsString:=XPRXCODFAB;
       DMESTOQUE.TSubProd.FieldByName('FABRICANTE').AsString:=XPRXFAB;
       DMESTOQUE.TSubProd.FieldByName('MARCA').AsString:=XPRXMARCA;
       DMESTOQUE.TSubProd.FieldByName('LOCALESTANTE').AsString:=XLOCALESTANTE;
       DMESTOQUE.TSubProd.FieldByName('ANVISA').AsString:=XANVISA;
       DMESTOQUE.TSubProd.FieldByName('MINSAUDE').AsString:=XMINSAUDE;
       DMESTOQUE.TSubProd.FieldByName('ESPECIFICACAO').AsString:=XESPECIFICACAO;
       DMESTOQUE.TSubProd.FieldByName('CLASSIFICACAO').AsString:=XCLASSIFICACAO;
       DMESTOQUE.TSubProd.FieldByName('NCM').AsString:=XNCM;
       DMESTOQUE.TSubProd.FieldByName('QUANTGARANTIA').AsString:=XQUANTGARANT;
       DMESTOQUE.TSubProd.FieldByName('TIPOGARANTIA').AsString:=XTIPOGARANT;
       DMESTOQUE.TSubProd.FieldByName('BALANCA').AsString:=XBALANCA;
       DMESTOQUE.TSubProd.FieldByName('OBSFISCAL').AsString:=XOBSFISCAL;
       DMESTOQUE.TSubProd.FieldByName('COMPOSICAO').AsString:=XCOMPOSICAO;
       DMESTOQUE.TSubProd.FieldByName('LARGURA').AsString:=XLARGURA;
       DMESTOQUE.TSubProd.FieldByName('LARGURA').AsString:=XLARGURA;
       DMESTOQUE.TSubProd.FieldByName('ALTURA').AsString:=XALTURA;
       DMESTOQUE.TSubProd.FieldByName('DENSIDADE').AsString:=XDENSIDADE;
       DMESTOQUE.TSubProd.FieldByName('PESOLIQ').AsString:=XPESOLIQ;
       DMESTOQUE.TSubProd.FieldByName('PESOBRUTO').AsString:=XPESOBRUTO;
       DMESTOQUE.TSubProd.FieldByName('QTDATC').AsString:=XQTDATC;
			DMESTOQUE.TSubProd.FieldByName('COD_CST').AsString:=XPRXCODCST;
   	DMESTOQUE.TSubProd.FieldByName('COD_UNIDCOMPRA').AsString:=XPRXCODUNICOMP;
   	DMESTOQUE.TSubProd.FieldByName('COD_UNIDVENDA').AsString:=XPRXCODUNIVEND;

       //Angelo - 29/05/2015 - Repassa informações financeiras para a tela
       MDO.Query.Close;
       MDO.Query.SQL.Clear;
       MDO.Query.SQL.Add('SELECT COD_ESTOQUE,FRETE,OUTROS,INDICE,VLRUNITCOMP,VLRCOMPSD,LUCRATIVIDADE,VENDINDV,VENDINDP, ');
       MDO.Query.SQL.Add('VENDATAV,VENDVARV,VENDVARP,VENDATAP FROM ESTOQUE WHERE COD_SUBPROD = :COD_SUBPROD ');
       MDO.Query.ParamByName('COD_SUBPROD').AsInteger := XCODSUBPROD;
       MDO.Query.Open;
       DMESTOQUE.DSEstoque.DataSet.Edit;
       DMESTOQUE.DSEstoque.DataSet.FieldByName('VLRCOMPSD').AsString := MDO.Query.FieldByName('VLRCOMPSD').AsString;
       DMESTOQUE.DSEstoque.DataSet.FieldByName('VLRUNITCOMP').AsString := MDO.Query.FieldByName('VLRUNITCOMP').AsString;
       DMESTOQUE.DSEstoque.DataSet.FieldByName('LUCRATIVIDADE').AsString := MDO.Query.FieldByName('LUCRATIVIDADE').AsString;
       DMESTOQUE.DSEstoque.DataSet.FieldByName('FRETE').AsString := MDO.Query.FieldByName('FRETE').AsString;
       DMESTOQUE.DSEstoque.DataSet.FieldByName('OUTROS').AsString := MDO.Query.FieldByName('OUTROS').AsString;
       DMESTOQUE.DSEstoque.DataSet.FieldByName('INDICE').AsString := MDO.Query.FieldByName('INDICE').AsString;
       EdVlrVarejoVista.Text := MDO.Query.FieldByName('VENDVARV').AsString;
       EdVlrVarejoPrazo.Text := MDO.Query.FieldByName('VENDVARP').AsString;
       EdVlrAtacadoVista.Text := MDO.Query.FieldByName('VENDATAV').AsString;
       EdVlrAtacadoPrazo.Text := MDO.Query.FieldByName('VENDATAP').AsString;
       EdVlrAtacadoPrazo.Text := MDO.Query.FieldByName('VENDINDV').AsString;
       EdVlrAtacadoPrazo.Text := MDO.Query.FieldByName('VENDINDP').AsString;
       DMESTOQUE.DSEstoque.DataSet.Post;
       MDO.Transac.CommitRetaining;


       //DMESTOQUE.TSubProd.Post;
       //DMESTOQUE.TransacEstoque.CommitRetaining;

       //FiltraTabela(DMESTOQUE.TSubProd, 'SUBPRODUTO', 'COD_SUBPRODUTO', IntToStr(XCOD_SIMILAR), '');

       //Edmar - 02/12/2014 - Se estiver fazendo a cópia de um item
       //insere o restante dos valores do produto copiado
       if XCOPIAITEM then
       begin
       	//seleciona o estoque do produto copiado
           DMESTOQUE.Alx.Close;
           DMESTOQUE.Alx.SQL.Clear;
           DMESTOQUE.Alx.SQL.Add('SELECT * FROM ESTOQUE WHERE COD_ESTOQUE = :ESTOQUE');
           DMESTOQUE.Alx.ParamByName('ESTOQUE').AsInteger := xCodEstoqueCopia;
           DMESTOQUE.Alx.Open;

           //se não estiver vazio, passa as informações do produto copiado
           //para o produto novo
           if not DMESTOQUE.Alx.IsEmpty then
           begin
       		//Localiza novamente o estoque
       		FiltraTabela(DMESTOQUE.TEstoque, 'ESTOQUE', 'COD_ESTOQUE', IntToStr(XCOD_ESTOQUE), '');
               DMESTOQUE.TEstoque.Edit;
           	//ESTOQUE
           	DMESTOQUE.TEstoque.FieldByName('ESTFISICO').AsInteger := 0;
           	DMESTOQUE.TEstoque.FieldByName('ESTCALC').AsInteger := 0;
           	DMESTOQUE.TEstoque.FieldByName('ESTMAX').AsFloat := DMESTOQUE.Alx.FieldByName('ESTMAX').AsFloat;
           	DMESTOQUE.TEstoque.FieldByName('ESTMIN').AsFloat := DMESTOQUE.Alx.FieldByName('ESTMIN').AsFloat;

               //COMISSÕES
           	DMESTOQUE.TEstoque.FieldByName('CVVPROAT').AsCurrency := DMESTOQUE.Alx.FieldByName('CVVPROAT').AsCurrency;
           	DMESTOQUE.TEstoque.FieldByName('CVPPROAT').AsCurrency := DMESTOQUE.Alx.FieldByName('CVPPROAT').AsCurrency;
           	DMESTOQUE.TEstoque.FieldByName('CVVPROVAR').AsCurrency := DMESTOQUE.Alx.FieldByName('CVVPROVAR').AsCurrency;
           	DMESTOQUE.TEstoque.FieldByName('CVPPROVAR').AsCurrency := DMESTOQUE.Alx.FieldByName('CVPPROVAR').AsCurrency;

               //VALORES
           	DMESTOQUE.TEstoque.FieldByName('VENDATAP').AsCurrency := DMESTOQUE.Alx.FieldByName('VENDATAP').AsCurrency;
           	DMESTOQUE.TEstoque.FieldByName('VENDATAV').AsCurrency := DMESTOQUE.Alx.FieldByName('VENDATAV').AsCurrency;
           	DMESTOQUE.TEstoque.FieldByName('VENDVARP').AsCurrency := DMESTOQUE.Alx.FieldByName('VENDVARP').AsCurrency;
           	DMESTOQUE.TEstoque.FieldByName('VENDVARV').AsCurrency := DMESTOQUE.Alx.FieldByName('VENDVARV').AsCurrency;
           	DMESTOQUE.TEstoque.FieldByName('VENDINDV').AsCurrency := DMESTOQUE.Alx.FieldByName('VENDINDV').AsCurrency;
           	DMESTOQUE.TEstoque.FieldByName('VENDINDP').AsCurrency := DMESTOQUE.Alx.FieldByName('VENDINDP').AsCurrency;
           	DMESTOQUE.TEstoque.FieldByName('AVVPROIND').AsCurrency := DMESTOQUE.Alx.FieldByName('AVVPROIND').AsCurrency;
           	DMESTOQUE.TEstoque.FieldByName('AVPPROIND').AsCurrency := DMESTOQUE.Alx.FieldByName('AVVPROIND').AsCurrency;
           	DMESTOQUE.TEstoque.FieldByName('VALUNIT').AsCurrency := DMESTOQUE.Alx.FieldByName('VALUNIT').AsCurrency;
           	DMESTOQUE.TEstoque.FieldByName('VALREP').AsCurrency := DMESTOQUE.Alx.FieldByName('VALREP').AsCurrency;
           	DMESTOQUE.TEstoque.FieldByName('VALCUSTO').AsCurrency := DMESTOQUE.Alx.FieldByName('VALCUSTO').AsCurrency;
           	DMESTOQUE.TEstoque.FieldByName('AVVPROAT').AsCurrency := DMESTOQUE.Alx.FieldByName('AVVPROAT').AsCurrency;
           	DMESTOQUE.TEstoque.FieldByName('AVPPROAT').AsCurrency := DMESTOQUE.Alx.FieldByName('AVPPROAT').AsCurrency;
           	DMESTOQUE.TEstoque.FieldByName('AVVPROVAR').AsCurrency := DMESTOQUE.Alx.FieldByName('AVVPROVAR').AsCurrency;
           	DMESTOQUE.TEstoque.FieldByName('AVPPROVAR').AsCurrency := DMESTOQUE.Alx.FieldByName('AVPPROVAR').AsCurrency;
           	DMESTOQUE.TEstoque.FieldByName('LUCRATIVIDADE').AsCurrency := DMESTOQUE.Alx.FieldByName('LUCRATIVIDADE').AsCurrency;
           	DMESTOQUE.TEstoque.FieldByName('VALOREST').AsCurrency := DMESTOQUE.Alx.FieldByName('VALOREST').AsCurrency;
           	DMESTOQUE.TEstoque.FieldByName('DTCAD').AsDateTime := Now;
           	DMESTOQUE.TEstoque.FieldByName('VALCUSDESP').AsCurrency := DMESTOQUE.Alx.FieldByName('VALCUSDESP').AsCurrency;
           	DMESTOQUE.TEstoque.FieldByName('VLRUNITCOMP').AsCurrency := DMESTOQUE.Alx.FieldByName('VLRUNITCOMP').AsCurrency;
           	DMESTOQUE.TEstoque.FieldByName('INDICE').AsCurrency := DMESTOQUE.Alx.FieldByName('INDICE').AsCurrency;
           	DMESTOQUE.TEstoque.FieldByName('BONIFICACAO').AsCurrency := DMESTOQUE.Alx.FieldByName('BONIFICACAO').AsCurrency;
           	DMESTOQUE.TEstoque.FieldByName('VLRBONIFIC').AsCurrency := DMESTOQUE.Alx.FieldByName('VLRBONIFIC').AsCurrency;
           	DMESTOQUE.TEstoque.FieldByName('DESCONTO').AsCurrency := DMESTOQUE.Alx.FieldByName('DESCONTO').AsCurrency;
           	DMESTOQUE.TEstoque.FieldByName('MARGEMSEG').AsCurrency := DMESTOQUE.Alx.FieldByName('MARGEMSEG').AsCurrency;
           	DMESTOQUE.TEstoque.FieldByName('PERCMARGSEG').AsCurrency := DMESTOQUE.Alx.FieldByName('PERCMARGSEG').AsCurrency;
           	DMESTOQUE.TEstoque.FieldByName('REDUCBASE').AsCurrency := DMESTOQUE.Alx.FieldByName('REDUCBASE').AsCurrency;
           	DMESTOQUE.TEstoque.FieldByName('VLRCOMPSD').AsCurrency := DMESTOQUE.Alx.FieldByName('VLRCOMPSD').AsCurrency;
           	DMESTOQUE.TEstoque.FieldByName('COD_USUARIOALT').AsInteger := StrToInt(FMenu.LCODUSUARIO.Caption);
           	DMESTOQUE.TEstoque.FieldByName('GERACOMIS').AsInteger := DMESTOQUE.Alx.FieldByName('GERACOMIS').AsInteger;
           	DMESTOQUE.TEstoque.FieldByName('FRETE').AsCurrency := DMESTOQUE.Alx.FieldByName('FRETE').AsCurrency;
           	DMESTOQUE.TEstoque.FieldByName('OUTROS').AsCurrency := DMESTOQUE.Alx.FieldByName('OUTROS').AsCurrency;
               DMESTOQUE.TEstoque.FieldByName('COEFDIV').AsCurrency := DMESTOQUE.Alx.FieldByName('COEFDIV').AsCurrency;

               //IMPOSTOS
           	DMESTOQUE.TEstoque.FieldByName('ICMS').AsCurrency := DMESTOQUE.Alx.FieldByName('ICMS').AsCurrency;
           	DMESTOQUE.TEstoque.FieldByName('IPI_VND').AsCurrency := DMESTOQUE.Alx.FieldByName('IPI_VND').AsCurrency;
           	DMESTOQUE.TEstoque.FieldByName('MVA').AsCurrency := DMESTOQUE.Alx.FieldByName('MVA').AsCurrency;
           	DMESTOQUE.TEstoque.FieldByName('MEDIABASEICMST').AsCurrency := DMESTOQUE.Alx.FieldByName('MEDIABASEICMST').AsCurrency;
           	DMESTOQUE.TEstoque.FieldByName('MEDIAVLRICMST').AsCurrency := DMESTOQUE.Alx.FieldByName('MEDIAVLRICMST').AsCurrency;

				//TRANSFERE VALORES DE VENDA PARA OS CAMPOS CORRESPONDENTES
               EdVlrVarejoVista.ValueNumeric:=DMESTOQUE.TEstoque.FieldByName('VENDVARV').AsCurrency;
               EdVlrVarejoPrazo.ValueNumeric:=DMESTOQUE.TEstoque.FieldByName('VENDVARP').AsCurrency;
               EdVlrAtacadoVista.ValueNumeric:=DMESTOQUE.TEstoque.FieldByName('VENDATAV').AsCurrency;
               EdVlrAtacadoPrazo.ValueNumeric:=DMESTOQUE.TEstoque.FieldByName('VENDATAP').AsCurrency;
               EdVlrIndustriaVista.ValueNumeric:=DMESTOQUE.TEstoque.FieldByName('VENDINDV').AsCurrency;
               EdVlrIndustriaPrazo.ValueNumeric:=DMESTOQUE.TEstoque.FieldByName('VENDINDP').AsCurrency;

               //busca os dados relevantes de subproduto do item copiado
               DMESTOQUE.Alx1.Close;
               DMESTOQUE.Alx1.SQL.Clear;
               DMESTOQUE.Alx1.SQL.Add(' SELECT SUBPRODUTO.EMBPROD, SUBPRODUTO.COMPONENTE, SUBPRODUTO.USOCONSUMO, SUBPRODUTO.ATIVO, SUBPRODUTO.CTRL_DESGASTE, SUBPRODUTO.CTRL_HORA, ');
               DMESTOQUE.Alx1.SQL.Add(' SUBPRODUTO.COMPLEMENTOFISCAL, SUBPRODUTO.ANP, SUBPRODUTO.COD_CFOPDENTROESTADO, SUBPRODUTO.COD_CFOPFORAESTADO ');
               DMESTOQUE.Alx1.SQL.Add(' FROM SUBPRODUTO WHERE SUBPRODUTO.COD_SUBPRODUTO = :SUBPRODUTO ');
               DMESTOQUE.Alx1.ParamByName('SUBPRODUTO').AsInteger := DMESTOQUE.Alx.FieldByName('COD_SUBPROD').AsInteger;
               DMESTOQUE.Alx1.Open;

               //se não estiver vazio, repassa as informações do item copiado
               //para o novo item
               if not DMESTOQUE.Alx1.IsEmpty then
               begin
               	DMESTOQUE.TSubProd.FieldByName('EMBPROD').AsFloat := DMESTOQUE.Alx1.FieldByName('EMBPROD').AsFloat;
                   DMESTOQUE.TSubProd.FieldByName('COMPLEMENTOFISCAL').AsString := DMESTOQUE.Alx1.FieldByName('COMPLEMENTOFISCAL').AsString;
                   DMESTOQUE.TSubProd.FieldByName('ANP').AsString := DMESTOQUE.Alx1.FieldByName('ANP').AsString;

{                         CONTROLA AS MARCAÇÕES DOS CHECKBOX'S DO ITEM                       }

                   if DMESTOQUE.Alx1.FieldByName('COMPONENTE').AsString = '1' then//COMPONENTE
                   	cbComponente.Checked := True
                   else
                   	cbComponente.Checked := False;

                   if DMESTOQUE.Alx1.FieldByName('ATIVO').AsString = '1' then//ATIVO OU INATIVO
                   	cbInativaProd.Checked := True
                   else
                   	cbInativaProd.Checked := False;

                   if DMESTOQUE.Alx1.FieldByName('CTRL_DESGASTE').AsString = '1' then//CONTROLE DE DESGASTE
                   	cbCtrlDesgaste.Checked := True
                   else
                   	cbCtrlDesgaste.Checked := False;

                   if DMESTOQUE.Alx1.FieldByName('CTRL_HORA').AsString = '1' then//CONTROLE DE HORA
                   	cbCtrlDesgaste.Checked := True
                   else
                   	cbCtrlDesgaste.Checked := False;

                  	//CONTROLA COMBO DE PRODUTO MATERIAL DE USO E CONSUMO
                  	if DMESTOQUE.Alx1.FieldByName('USOCONSUMO').AsString='1' Then
                   	CBProdutoConsumo.Checked:=True
                  	else
                   	CBProdutoConsumo.Checked:=False;
                       
{                       FINALIZA CONTROLE DAS MARCAÇÕES DOS CHECKBOX'S DO ITEM                       }

                   //Edmar - 02/12/2014 - Filtra buscando o cfop para emissão dentro do estado
                   if FiltraTabela(DMESTOQUE.TCFOP, 'CFOP', 'COD_CFOP', DMESTOQUE.Alx1.FieldByName('COD_CFOPDENTROESTADO').AsString, '') then
                   begin
                   	XCODCFOPDENTRO := DMESTOQUE.TCFOP.FieldByName('COD_CFOP').AsInteger;
                       pCfopDentroEstado.EDCodigo.Text := DMESTOQUE.TCFOP.FieldByName('CFOP').AsString;
                       pCfopDentroEstado.EdDescricao.Text:= DMESTOQUE.TCFOP.FieldByName('DESCRICAO').AsString;
                   end
                   else begin//se não achar seta variavel como -1 e limpa os campos
                   	XCODCFOPDENTRO := -1;
                       pCfopDentroEstado.EDCodigo.Text := '';
                       pCfopDentroEstado.EdDescricao.Text:= '';
                   end;

                   //Edmar - 02/12/2014 - filtra buscando cfop para emissão fora do estado
                   if FiltraTabela(DMESTOQUE.TCFOP, 'CFOP', 'COD_CFOP', DMESTOQUE.Alx1.FieldByName('COD_CFOPFORAESTADO').AsString, '') then
                   begin
                   	XCODCFOPFORA := DMESTOQUE.TCFOP.FieldByName('COD_CFOP').AsInteger;
                       pCfopForaEstado.EDCodigo.Text := DMESTOQUE.TCFOP.FieldByName('CFOP').AsString;
                       pCfopForaEstado.EdDescricao.Text := DMESTOQUE.TCFOP.FieldByName('DESCRICAO').AsString;
                   end
                   else begin//se não achar seta variavel como -1 e limpa os campos
                       XCODCFOPFORA := -1;
                       pCfopForaEstado.EDCodigo.Text := '';
                       pCfopForaEstado.EdDescricao.Text := '';
                   end;
               end;
           end;
       end;
    End;

    //Repassa aos componentes os valores de descontos para o produto que eh configurado em empresa
    RepassaDescontos;
end;  

procedure TFProduto.FrmBusca2BTNOPENClick(Sender: TObject);
begin
  inherited;
	//LIBERA TODAS OS ESTADOS PARA CONSUTA
	filtraTabela(DMESTOQUE.TUnidade, 'UNIDADE', '', '', '');

    If AbrirForm(TFCadUnidade, FCadUnidade, 1)='Selected'
    Then Begin
		 DMESTOQUE.TProduto.FieldByName('COD_UNIDADE').AsInteger:=DMESTOQUE.TUnidade.FieldByName('COD_UNIDADE').AsInteger;
        EdCodUnidadeCompra.Text:=DMESTOQUE.TUnidade.FieldByName('DESC_UNID').AsString;
        EdUnidadeCompra.text:=DMESTOQUE.TUnidade.FieldByName('COD_UNIDADE').AsString;
    End;
end;

procedure TFProduto.FrmBusca2BTNMINUSClick(Sender: TObject);
begin
  inherited;
   //Codigo da tabela local =0
   DMESTOQUE.TProduto.Edit;
   DMESTOQUE.TProduto.FieldByName('COD_UNIDADE').AsString:='';
	EdCodUnidadeCompra.Text:='';
	EdUnidadeCompra.Text:='';
end;

procedure TFProduto.EDProdutoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
	If Key=VK_Return
   Then Begin
   	//FILTRA VIEW DE PRODUTOS DE ACORDO COM EDIT PRODUTO
		FiltraTabela(DMESTOQUE.WProduto, 'VWPRODUTO', 'COD_LOJA', '', '(upper(PRODUTO) like upper('+#39+EDProduto.Text+'%'+#39+'))ORDER BY PRODUTO');
		//FILTRA SIMILAR DE ACORDO COM O PRODUTO
       SelectSim;
   END;
   If key=VK_Escape Then
		FiltraTabela(DMESTOQUE.WProduto, 'VWPRODUTO', '', '', '');

    //contrala next e prior na tabela de wproduto
    If key=VK_Up
    Then Begin
       DMESTOQUE.WProduto.prior;
       SelectSim;
    End;
    If Key=VK_Down
    Then Begin
       DMESTOQUE.WProduto.Next;
       SelectSim;
    End;
end;

procedure TFProduto.DBGridCadastroPadraoCellClick(Column: TColumn);
begin
  inherited;
	//FILTRA SIMILAR DE ACORDO COM O PRODUTO
   SelectSim;

   //Paulo 04/11/2011: Mostra a quantidade de itens desta grade
   DMMACS.TALX.Close;
   DMMACS.TALX.SQL.Clear;
   DMMACS.TALX.SQL.Add(' select count(vwsimilar.cod_subproduto) as quantidade from vwsimilar ');
   DMMACS.TALX.SQL.Add('where vwsimilar.cod_produto = :GRADE');
   DMMACS.TALX.ParamByName('GRADE').AsInteger:=DMESTOQUE.WProduto.FieldByName('COD_PRODUTO').AsInteger;
   DMMACS.TALX.Open;
   lbQtdGrade.Caption:='Itens na Grade: '+DMMACS.TALX.FieldByName('quantidade').AsString;
   //Alex 12/11/2011: Mostra a quantidade de estoque desta grade
   DMMACS.TALX.Close;
   DMMACS.TALX.SQL.Clear;
   DMMACS.TALX.SQL.Add(' select sum(vwsimilar.estfisico) as estoque from vwsimilar ');
   DMMACS.TALX.SQL.Add('where vwsimilar.cod_produto = :GRADE');
   DMMACS.TALX.ParamByName('GRADE').AsInteger:=DMESTOQUE.WProduto.FieldByName('COD_PRODUTO').AsInteger;
   DMMACS.TALX.Open;
   lbquntEst.Caption:='Estoque na Grade: '+FormatFloat('####,##0.00',DMMACS.TALX.FieldByName('estoque').AsCurrency);
End;

procedure TFProduto.DBGridCadastroPadraoKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
	If (Key=VK_Down) Or (Key=VK_up)
   Then Begin
		//FILTRA SIMILAR DE ACORDO COM O PRODUTO
       SelectSim;
   End;

end;

procedure TFProduto.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
	If Key <> VK_F2 Then
   	inherited;

	If Key=VK_F1 Then
       btnhelp.Click;
	If Key=VK_F3 Then
   	If PConsulta.Visible=True Then
           EdCodBarra.SetFocus;

   If key=vk_f11
   Then Begin//Tecla para inserção de um novo similar para o ultimo produto cadastrado
		If ((DMMACS.TLoja.FieldByName('DESABCOPIAPRODUTOS').AsString='0') or (DMMACS.TLoja.FieldByName('DESABCOPIAPRODUTOS').AsString = Null)) Then
			CadastrarProdutoSelecionado(True);
   End;
 	//Angelo - 01/06/2015 - Copia o produto selecionado
 	If key=vk_f10 Then
 	Begin
		If ((DMMACS.TLoja.FieldByName('DESABCOPIAPRODUTOS').AsString='0') or (DMMACS.TLoja.FieldByName('DESABCOPIAPRODUTOS').AsString = Null)) Then
     		CadastrarProdutoSelecionado(False);
 	End;
   //Paulo 07/07/2011: Para sair do painel de códigos
   If Key=Vk_Escape
   Then Begin
   	If PCodigos.Visible=True
       Then Begin
	       PCodigos.Visible:=False;

       End;
   End;
   //Paulo 27/08/2010: Para controle das setas para baixo e para cima na consulta de matéria prima
   If PLocMat.Visible=true
  	Then Begin
  	 //controle para pular de registro next e prior
    	case key of
          	Vk_down: DMESTOQUE.Alx.Next;
           vk_up: DMESTOQUE.Alx.Prior;
           VK_RETURN:
           begin
          		EdCodMat.Text:=IntToStr(DMESTOQUE.Alx.FieldByName('cod_subproduto').AsInteger);
          		EdDescMat.Text:= DMESTOQUE.Alx.FieldByName('descricao').AsString;
               PLocMat.Visible:=False;
               PLocMat.SendToBack;
               EdPorcMat.SetFocus;
           end;
            VK_ESCAPE:
           begin
              	PLocMat.Visible:=false;
               PLocMat.SendToBack;
               EdDescMat.SetFocus;
           end;
   end;
   end;
end;

procedure TFProduto.EDSimilarKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
	If (Key=VK_F2)  AND (PConsulta.Visible=True )
	Then Begin
   	FiltraTabela(DMESTOQUE.WSimilar, 'VWSIMILAR', 'COD_LOJA', '', ' (COD_LOJA='+FMenu.LCODLOJA.Caption+') AND (upper(DESCRICAO) like upper('+#39+'%'+EDSimilar.Text+'%'+#39+')) and ((ATIVO = ''S'') or (ATIVO is null)) ORDER BY DESCRICAO');
	end;

	If Key=VK_Return
   Then Begin
		//FILTRA SIMILAR DE ACORDO COM O PRODUTO
       //Paulo 22/12/2011: Seleciona os produtos conforme selecionado, ativo ou inativo
       If RGFiltro.ItemIndex=0 Then
           FiltraTabela(DMESTOQUE.WSimilar, 'VWSIMILAR', 'COD_LOJA', '', ' (COD_LOJA='+FMenu.LCODLOJA.Caption+') AND (upper(DESCRICAO) like upper('+#39+EDSimilar.Text+'%'+#39+')) and ((ATIVO = ''S'') or (ATIVO is null)) ORDER BY DESCRICAO');
       If RGFiltro.ItemIndex=1 Then
           FiltraTabela(DMESTOQUE.WSimilar, 'VWSIMILAR', 'COD_LOJA', '', ' (COD_LOJA='+FMenu.LCODLOJA.Caption+') AND (upper(DESCRICAO) like upper('+#39+EDSimilar.Text+'%'+#39+')) and (ATIVO = ''N'') ORDER BY DESCRICAO');
   End;

   If KEy=VK_Escape
   Then Begin//Libera todos os similares
		//FILTRA SIMILAR DE ACORDO COM O PRODUTO
       SelectSim;
	END;

   //controla next e prior de wsimilar
   If key=VK_Up Then
       DMESTOQUE.WSimilar.Prior;
   If key=VK_Down Then
       DMESTOQUE.WSimilar.Next;

end;

procedure TFProduto.EdCodCompostoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
	If Key=VK_Return
   Then Begin
		//FILTRA SIMILAR DE ACORDO COM O PRODUTO
		FiltraTabela(DMESTOQUE.WSimilar, 'VWSIMILAR', 'COD_LOJA', FMenu.LCODLOJA.Caption, ' AND (CODCOMPOSTO='+#39+EdCodBarra.Text+#39+' ) ORDER BY DESCRICAO');
   End;

   If KEy=VK_Escape
   Then Begin//Libera todos os similares
		//FILTRA SIMILAR DE ACORDO COM O PRODUTO
       SelectSim;
	END;

   //controla next e prior de wsimilar
   If key=VK_Up Then
       DMESTOQUE.WSimilar.Prior;
   If key=VK_Down Then
       DMESTOQUE.WSimilar.Next;

end;

procedure TFProduto.EtCdFabricante1Click(Sender: TObject);
begin
  inherited;
  
		//INFORMA SQL ADEQUADA A IMPRESSAO DE ETIQUETAS
       DMESTOQUE.TRel.CLOSE;
       DMESTOQUE.TRel.SQL.Clear;
       DMESTOQUE.TRel.SQL.Add(' SELECT subproduto.codprodfabr AS CODFAB, produto.descricao AS GRADE, subproduto.CONTRINT, SUBPRODUTO.especificacao, subproduto.descricao AS DESCR, ');
       DMESTOQUE.TRel.SQL.Add(' estoque.vendvarv as PRECO, SubProduto.Marca as MARCA, subproduto.localestante AS CODCOMPOSTO, ESTOQUE.ESTFISICO As QTD, subproduto.FABRICANTE, ');
       DMESTOQUE.TRel.SQL.Add(' estoque.vendvarp as PRECOPRAZO, estoque.ultcompra as DTCAD, subproduto.altura AS ALTURA, subproduto.LARGURA AS LARGURA, subproduto.composicao AS COMPOSICAO, subproduto.CLASSIFICACAO, ');
  		DMESTOQUE.TRel.SQL.Add(' subproduto.cor,subproduto.codprodfabr AS CODBARRA');
       DMESTOQUE.TRel.SQL.Add(' from Subproduto ');
       DMESTOQUE.TRel.SQL.Add(' left join Produto ON Produto.cod_Produto = subproduto.cod_Produto ');
       DMESTOQUE.TRel.SQL.Add(' left join estoque ON ESTOQUE.cod_SubProd = SUBPRODUTO.cod_SubprodUTO ');
       DMESTOQUE.TRel.SQL.Add(' WHERE (ESTOQUE.COD_LOJA='+FMenu.LCODLOJA.Caption+') ');
  		DMESTOQUE.TRel.SQL.Add(' AND(SUBproduto.COD_SUBPRODUTO=:CODSUBPROD) ');
 	   	DMESTOQUE.TRel.ParamByName('CODSUBPROD').AsString:=DMESTOQUE.WSimilar.FieldByName('COD_SUBPRODUTO').AsString;
      	DMESTOQUE.TRel.SQL.Text;
      	DMESTOQUE.TRel.Open;
   	If DMMACS.TLoja.FieldByName('ETPERSONAL').AsString='1'
   	Then Begin
			PrnEtiqPerson(False, 1, 0);
   	End;
   	If DMMACS.TLoja.FieldByName('ETPERSONAL').AsString='2'
   	Then Begin
			PrnEtiqPerson02(False, 1, 0);
   	End;
       //Paulo 13/12/2010: Para impressão de etiquetas de ótica
       If DMMACS.TLoja.FieldByName('ETPERSONAL').AsString='3'
       Then Begin
           PrnEtiqPersonalOtica(False, 1, 0);
       End;

   	If DMMACS.TLoja.FieldByName('ETPERSONAL').AsString='0'
   	Then Begin
           If DMMACS.TLoja.FieldByName('TIPOETPROD').AsString='2X12' Then
               PrnEtiq2X12(True, 1, 0);
           If DMMACS.TLoja.FieldByName('TIPOETPROD').AsString='T3C' Then
               PrnEtiqT3C(True, 1, 0);
           If DMMACS.TLoja.FieldByName('TIPOETPROD').AsString='Z2C' Then
               PrnEtiqZ2C(True, 1, 0);
           If DMMACS.TLoja.FieldByName('TIPOETPROD').AsString='A1C' Then
               PrnEtiqA1C(True, 1, 0);
   	End;
end;

procedure TFProduto.EtCdBarra1Click(Sender: TObject);
begin
  inherited;

		//INFORMA SQL ADEQUADA A IMPRESSAO DE ETIQUETAS
       DMESTOQUE.TRel.CLOSE;
       DMESTOQUE.TRel.SQL.Clear;
       DMESTOQUE.TRel.SQL.Add(' SELECT subproduto.codprodfabr AS CODFAB, subproduto.CONTRINT,  SUBPRODUTO.especificacao, subproduto.descricao AS DESCR, subproduto.FABRICANTE,  ');
       DMESTOQUE.TRel.SQL.Add(' estoque.vendvarv as PRECO, produto.descricao AS GRADE,  SubProduto.Marca as MARCA, subproduto.localestante AS CODCOMPOSTO, ESTOQUE.ESTFISICO As QTD, ');
       DMESTOQUE.TRel.SQL.Add(' estoque.vendvarp as PRECOPRAZO, estoque.ultcompra as DTCAD, subproduto.altura AS ALTURA, subproduto.LARGURA AS LARGURA, subproduto.composicao AS COMPOSICAO, subproduto.CLASSIFICACAO, ');
  		DMESTOQUE.TRel.SQL.Add(' subproduto.cor,subproduto.CODBARRA AS CODBARRA');
       DMESTOQUE.TRel.SQL.Add(' from Subproduto ');
       DMESTOQUE.TRel.SQL.Add(' left join Produto ON Produto.cod_Produto = subproduto.cod_Produto ');       
       DMESTOQUE.TRel.SQL.Add(' left join estoque ON ESTOQUE.cod_SubProd = SUBPRODUTO.cod_SubprodUTO ');
       DMESTOQUE.TRel.SQL.Add(' WHERE (ESTOQUE.COD_LOJA='+FMenu.LCODLOJA.Caption+') ');
  		DMESTOQUE.TRel.SQL.Add(' AND(SUBproduto.COD_SUBPRODUTO=:CODSUBPROD) ');
 	   	DMESTOQUE.TRel.ParamByName('CODSUBPROD').AsString:=DMESTOQUE.WSimilar.FieldByName('COD_SUBPRODUTO').AsString;
      	DMESTOQUE.TRel.SQL.Text;
      	DMESTOQUE.TRel.Open;
   	If DMMACS.TLoja.FieldByName('ETPERSONAL').AsString='1'
   	Then Begin
			PrnEtiqPerson(False, 0, 0);
   	End;
   	If DMMACS.TLoja.FieldByName('ETPERSONAL').AsString='2'
   	Then Begin
			PrnEtiqPerson02(False, 0, 0);
   	End;
       //Paulo 13/12/2010: Para impressão de etiquetas de ótica
       If DMMACS.TLoja.FieldByName('ETPERSONAL').AsString='3'
       Then Begin
           PrnEtiqPersonalOtica(False, 0, 0);
       End;
   	If DMMACS.TLoja.FieldByName('ETPERSONAL').AsString='0'
   	Then Begin
           If DMMACS.TLoja.FieldByName('TIPOETPROD').AsString='2X12' Then
               PrnEtiq2X12(True, 0, 0);
           If DMMACS.TLoja.FieldByName('TIPOETPROD').AsString='T3C' Then
               PrnEtiqT3C(True, 0, 0);
           If DMMACS.TLoja.FieldByName('TIPOETPROD').AsString='Z2C' Then
               PrnEtiqZ2C(True, 0, 0);
           If DMMACS.TLoja.FieldByName('TIPOETPROD').AsString='A1C' Then
               PrnEtiqA1C(True, 0, 0);
   	End;
end;

procedure TFProduto.FrmBusca1BTNOPENClick(Sender: TObject);
begin
  inherited;
	filtraTabela(DMESTOQUE.WProduto, 'VWPRODUTO', '', '', '');

   If AbrirForm(TFProduto, FProduto, 1)='Selected'
   Then Begin
	   XCOD_PRODUTO:=DMESTOQUE.WProduto.FieldByName('COD_PRODUTO').AsInteger;
      DBDESPROD.Text:=DMESTOQUE.WProduto.FieldByName('PRODUTO').AsString;
      DBCODPRODUTO.text:=DMESTOQUE.WProduto.FieldByName('COD_INTERNO').AsString;
   End; 
end;


procedure TFProduto.EdFabricanteKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
	If Key=VK_Return
   Then Begin
		//FILTRA SIMILAR DE ACORDO COM O PRODUTO
       FiltraTabela(DMESTOQUE.WSimilar, 'VWSIMILAR', 'COD_LOJA', '', ' (COD_LOJA='+FMenu.LCODLOJA.Caption+') AND (upper(CODFABRICANTE) like upper('+#39+EDCodFab.Text+'%'+#39+')) ORDER BY CODFABRICANTE');
   End;

   If KEy=VK_Escape
   Then Begin//Libera todos os similares
		//FILTRA SIMILAR DE ACORDO COM O PRODUTO
       SelectSim;
	END;

   //controla next e prior de wsimilar
   If key=VK_Up Then
       DMESTOQUE.WSimilar.Prior;
   If key=VK_Down Then
       DMESTOQUE.WSimilar.Next;

end;

procedure TFProduto.CodSitTribKeyPress(Sender: TObject; var Key: Char);

begin
//  inherited;

end;

procedure TFProduto.EdFabricanteEnter(Sender: TObject);
begin
  inherited;
	If EDCodFab.Text='Fabricante' Then
       EDCodFab.Clear;
end;

procedure TFProduto.PFinanceiroEnter(Sender: TObject);
begin
  inherited;
//   dbvalorunitario.SetFocus;
end;

procedure TFProduto.BtnCtrlFinancClick(Sender: TObject);
begin
  inherited;
	SelecionaCodigoBarra;
end;

procedure TFProduto.DBCoresKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
	Key:=#0;
end;

procedure TFProduto.btnnovafaixaprecoClick(Sender: TObject);
begin
  inherited;
   PNovaFaixaPreco.Visible:=True;
   PNovaFaixaPreco.BringToFront;
   EdNovaFaixaPreco.Text:='';
   EdQuantDias.ValueNumeric:=0;
   EdNovaFaixaPreco.SetFocus;
end;

procedure TFProduto.BtnFiltHistClick(Sender: TObject);
begin
  inherited;
	GeraHist;
end;

procedure TFProduto.EDCodFabEnter(Sender: TObject);
begin
  inherited;
	EDCodFab.Color:=$00A6FFFF;
end;

procedure TFProduto.EdCtrlIntEnter(Sender: TObject);
begin
  inherited;
	EdCtrlInt.Color:=$00A6FFFF;
end;

procedure TFProduto.EDCodFabKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
	If Key=VK_Return
   Then Begin
		//FILTRA SIMILAR DE ACORDO COM O PRODUTO
       //Paulo 22/12/2011: Seleciona os produtos conforme selecionado, ativo ou inativo
       {if RGFiltro.ItemIndex=0 then
       	FiltraTabela(DMESTOQUE.WSimilar, 'VWSIMILAR', 'COD_LOJA', '', ' (COD_LOJA='+FMenu.LCODLOJA.Caption+') AND (upper(CODFABRICANTE) like upper('+#39+EDCodFab.Text+'%'+#39+')) and ((ATIVO = ''S'') or (ATIVO is null)) ORDER BY CODFABRICANTE');
       If RGFiltro.ItemIndex=1 Then
           FiltraTabela(DMESTOQUE.WSimilar, 'VWSIMILAR', 'COD_LOJA', '', ' (COD_LOJA='+FMenu.LCODLOJA.Caption+') AND (upper(CODFABRICANTE) like upper('+#39+EDCodFab.Text+'%'+#39+')) and (ATIVO = ''N'') ORDER BY CODFABRICANTE');}

       DMESTOQUE.WSimilar.Close;
       DMESTOQUE.WSimilar.SQL.Clear;
       DMESTOQUE.WSimilar.SQL.Add('  SELECT * FROM VWSIMILAR ');
       DMESTOQUE.WSimilar.SQL.Add('    WHERE (UPPER(VWSIMILAR.CODFABRICANTE) LIKE UPPER(:CODFABR)) and (VWSIMILAR.COD_LOJA = :LOJA) ');
       if RGFiltro.ItemIndex=0 then
       	DMESTOQUE.WSimilar.SQL.Add('  AND ((VWSIMILAR.ATIVO = ''S'') OR (ATIVO IS NULL)) ')
       else
			DMESTOQUE.WSimilar.SQL.Add(' AND (VWSIMILAR.ATIVO = ''N'') ');
       DMESTOQUE.WSimilar.SQL.Add(' ORDER BY VWSIMILAR.CODFABRICANTE ');
       DMESTOQUE.WSimilar.ParamByName('LOJA').AsString := FMenu.LCODLOJA.Caption;
       DMESTOQUE.WSimilar.ParamByName('CODFABR').AsString := EDCodFab.Text+'%';
       DMESTOQUE.WSimilar.SQL.Text;
       DMESTOQUE.WSimilar.Open;

       {DMESTOQUE.WSimilar.Close;
       DMESTOQUE.WSimilar.SQL.Clear;
       DMESTOQUE.WSimilar.SQL.Add(' SELECT DISTINCT(VWSIMILAR.*) FROM VWSIMILAR ');
       DMESTOQUE.WSimilar.SQL.Add(' LEFT JOIN CODIGOBARRA ON CODIGOBARRA.COD_ESTOQUE = VWSIMILAR.COD_ESTOQUE ');
		DMESTOQUE.WSimilar.SQL.Add(' WHERE (VWSIMILAR.COD_LOJA = :LOJA)');
       if RGFiltro.ItemIndex=0 then
       	DMESTOQUE.WSimilar.SQL.Add(' AND ((ATIVO = ''S'') OR (ATIVO IS NULL)) ')
       else
			DMESTOQUE.WSimilar.SQL.Add(' AND (ATIVO = ''N'') ');
       DMESTOQUE.WSimilar.SQL.Add(' AND (UPPER(VWSIMILAR.CODFABRICANTE) LIKE UPPER(:CODFABR) OR UPPER(CODIGOBARRA.CODBARRA) LIKE UPPER(:CODFABR)) ');
       DMESTOQUE.WSimilar.SQL.Add(' ORDER BY CODFABRICANTE ');
       DMESTOQUE.WSimilar.ParamByName('LOJA').AsString := FMenu.LCODLOJA.Caption;
       DMESTOQUE.WSimilar.ParamByName('CODFABR').AsString := EDCodFab.Text+'%';
       DMESTOQUE.WSimilar.Open;}
   End;

   If KEy=VK_Escape
   Then Begin//Libera todos os similares
		//FILTRA SIMILAR DE ACORDO COM O PRODUTO
       SelectSim;
	END;

   //controla next e prior de wsimilar
   If key=VK_Up Then
       DMESTOQUE.WSimilar.Prior;
   If key=VK_Down Then
       DMESTOQUE.WSimilar.Next;
end;

procedure TFProduto.EdCtrlIntKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
	If Key=VK_Return
   Then Begin
		//FILTRA SIMILAR DE ACORDO COM O PRODUTO

       If RGFiltro.ItemIndex=0 Then
           FiltraTabela(DMESTOQUE.WSimilar, 'VWSIMILAR', 'COD_LOJA', '', ' (COD_LOJA='+FMenu.LCODLOJA.Caption+') AND (upper(CONTRINT) like upper('+#39+EdCtrlInt.Text+'%'+#39+'))and ((ATIVO = ''S'') or (ATIVO is null)) ORDER BY CONTRINT');
       If RGFiltro.ItemIndex=1 Then
           FiltraTabela(DMESTOQUE.WSimilar, 'VWSIMILAR', 'COD_LOJA', '', ' (COD_LOJA='+FMenu.LCODLOJA.Caption+') AND (upper(CONTRINT) like upper('+#39+EdCtrlInt.Text+'%'+#39+')) and (ATIVO = ''N'') ORDER BY CONTRINT');
   End;

   If KEy=VK_Escape
   Then Begin//Libera todos os similares
		//FILTRA SIMILAR DE ACORDO COM O PRODUTO
       SelectSim;
	END;

   //controla next e prior de wsimilar
   If key=VK_Up Then
       DMESTOQUE.WSimilar.Prior;
   If key=VK_Down Then
       DMESTOQUE.WSimilar.Next;
end;

procedure TFProduto.dbcodbarraExit(Sender: TObject);
Var
	XCODEAN13: String;
   XTAMEAN13: Integer;
begin
  inherited;
	If Trim(DMESTOQUE.TSubProd.FieldByName('CODBARRA').AsString)=''
   Then Begin
       DMESTOQUE.TSubProd.Edit;
       Try
           If Length(Trim(DMESTOQUE.TSubProd.FieldByName('cod_subproduto').AsString))<=8
           Then Begin
              DMESTOQUE.TSubProd.FieldByName('CODBARRA').AsString:=DMESTOQUE.TSubProd.FieldByName('cod_subproduto').AsString;
           End
           Else Begin
              DMESTOQUE.TSubProd.FieldByName('CODBARRA').AsString:=Copy(DMESTOQUE.TSubProd.FieldByName('cod_subproduto').AsString, 0, 8);
           End;

               XTAMEAN13:=length(Trim(DMESTOQUE.TSubProd.FieldByName('CODBARRA').AsString));
               If XTAMEAN13=1 Then
                   XCODEAN13:='0000000'+DMESTOQUE.TSubProd.FieldByName('CODBARRA').AsString;
               If XTAMEAN13=2 Then
                   XCODEAN13:='000000'+DMESTOQUE.TSubProd.FieldByName('CODBARRA').AsString;
               If XTAMEAN13=3 Then
                   XCODEAN13:='00000'+DMESTOQUE.TSubProd.FieldByName('CODBARRA').AsString;
               If XTAMEAN13=4 Then
                   XCODEAN13:='0000'+DMESTOQUE.TSubProd.FieldByName('CODBARRA').AsString;
               If XTAMEAN13=5 Then
                   XCODEAN13:='000'+DMESTOQUE.TSubProd.FieldByName('CODBARRA').AsString;
               If XTAMEAN13=6 Then
                   XCODEAN13:='00'+DMESTOQUE.TSubProd.FieldByName('CODBARRA').AsString;
               If XTAMEAN13=7 Then
                   XCODEAN13:='0'+DMESTOQUE.TSubProd.FieldByName('CODBARRA').AsString;
               If XTAMEAN13=8 Then
                   XCODEAN13:=Trim(DMESTOQUE.TSubProd.FieldByName('CODBARRA').AsString);
               DMESTOQUE.TSubProd.FieldByName('CODBARRA').AsString:='2235'+XCODEAN13+CalculaDigEAN13('2235'+XCODEAN13);
        Except
        //se der algum erro eh pq o código não possui apenas números
            XCODEAN13 := verificaEAN13Alfanumerico(8, DMESTOQUE.TSubProd.FieldByName('cod_subproduto').AsString);
            DMESTOQUE.TSubProd.FieldByName('CODBARRA').AsString:='2235'+XCODEAN13+CalculaDigEAN13('2235'+XCODEAN13);
        End;
   End;
end;

procedure TFProduto.BTNCSTEnter(Sender: TObject);
begin
  inherited;
	LuzOpenST.Visible:=True;
end;

procedure TFProduto.BTNCSTExit(Sender: TObject);
begin
  inherited;
	LuzOpenST.Visible:=False;
end;

procedure TFProduto.DbIndiceKeyPress(Sender: TObject; var Key: Char);
Var
	XIndic: Real;
begin
  inherited;
	If Key=#13
   Then Begin
   	If DbIndice.Text='' Then
           XIndic:=0;
       Try
           XIndic:=StrToFloat(DbIndice.Text);
       Except
           XIndic:=0;
       End;

       // valor de venda a vista no varejo
       XVALOR_VISTAVAREJO := DMESTOQUE.TEstoque.FieldByName('VENDVARV').AsCurrency;

       // valor de venda a prazo no varejo
       XVALOR_PRAZOVAREJO := DMESTOQUE.TEstoque.FieldByName('VENDVARP').AsCurrency;

       // valor de venda a vista no atacado
       XVALOR_VISTAATAC := DMESTOQUE.TEstoque.FieldByName('VENDATAV').AsCurrency;

       // valor de venda a prazo no atacado
       XVALOR_PRAZOATAC := DMESTOQUE.TEstoque.FieldByName('VENDATAP').AsCurrency;

		DMESTOQUE.TEstoque.Edit;
		DMESTOQUE.TEstoque.FieldByName('VENDVARV').AsCurrency:=DMESTOQUE.TEstoque.FieldByName('VLRUNITCOMP').AsCurrency+(DMESTOQUE.TEstoque.FieldByName('VLRUNITCOMP').AsCurrency*XIndic)/100;
		DMESTOQUE.TEstoque.FieldByName('VENDATAV').AsCurrency:=DMESTOQUE.TEstoque.FieldByName('VENDVARV').AsCurrency;
		DMESTOQUE.TEstoque.FieldByName('VENDVARP').AsCurrency:=DMESTOQUE.TEstoque.FieldByName('VENDVARV').AsCurrency;
		DMESTOQUE.TEstoque.FieldByName('VENDATAP').AsCurrency:=DMESTOQUE.TEstoque.FieldByName('VENDVARV').AsCurrency;
	    DMESTOQUE.TEstoque.Post;
   	DMESTOQUE.TransacEstoque.CommitRetaining;

       SincroValores(1);
       EdVlrVarejoVista.SetFocus;
       BtnGravar.SetFocus;
   End;

end;

procedure TFProduto.EtCdBarraQtd1Click(Sender: TObject);
Var
   XQtdEtq: String;
begin
  inherited;
   If InputQuery('ATENÇÃO','Informe a Qtd. de etiquetas:', XQtdEtq)
   Then Begin
   	Try
       	If StrToInt(XQtdEtq)>0
           Then Begin
				//INFORMA SQL ADEQUADA A IMPRESSAO DE ETIQUETAS
       		DMESTOQUE.TRel.CLOSE;
       		DMESTOQUE.TRel.SQL.Clear;
       		DMESTOQUE.TRel.SQL.Add(' SELECT subproduto.codprodfabr AS CODFAB, produto.descricao AS GRADE, subproduto.CONTRINT,  SUBPRODUTO.especificacao, subproduto.descricao AS DESCR,  subproduto.FABRICANTE,  ');
       		DMESTOQUE.TRel.SQL.Add(' estoque.vendvarv as PRECO,  SubProduto.Marca as MARCA, subproduto.localestante AS CODCOMPOSTO,subproduto.cor, ESTOQUE.ESTFISICO As QTD, ');
       		DMESTOQUE.TRel.SQL.Add(' estoque.vendvarp as PRECOPRAZO, estoque.ultcompra as DTCAD, subproduto.altura AS ALTURA, subproduto.LARGURA AS LARGURA, subproduto.composicao AS COMPOSICAO, subproduto.CLASSIFICACAO, ');
  				DMESTOQUE.TRel.SQL.Add(' subproduto.cor, subproduto.CODBARRA AS CODBARRA');
       		DMESTOQUE.TRel.SQL.Add(' from Subproduto ');
       		DMESTOQUE.TRel.SQL.Add(' left join Produto ON Produto.cod_Produto = subproduto.cod_Produto ');               
       		DMESTOQUE.TRel.SQL.Add(' left join estoque ON ESTOQUE.cod_SubProd = SUBPRODUTO.cod_SubprodUTO ');
       		DMESTOQUE.TRel.SQL.Add(' WHERE (ESTOQUE.COD_LOJA='+FMenu.LCODLOJA.Caption+') ');
  				DMESTOQUE.TRel.SQL.Add(' AND(SUBproduto.COD_SUBPRODUTO=:CODSUBPROD) ');
 	   			DMESTOQUE.TRel.ParamByName('CODSUBPROD').AsString:=DMESTOQUE.WSimilar.FieldByName('COD_SUBPRODUTO').AsString;
      			DMESTOQUE.TRel.SQL.Text;
      			DMESTOQUE.TRel.Open;
   			If DMMACS.TLoja.FieldByName('ETPERSONAL').AsString='1'
   			Then Begin
					PrnEtiqPerson(True, 0, StrToInt(XQtdEtq));
   			End;
   			If DMMACS.TLoja.FieldByName('ETPERSONAL').AsString='2'
   			Then Begin
					PrnEtiqPerson02(True, 0, StrToInt(XQtdEtq));
   			End;
           	//Paulo 13/12/2010: Para impressão de etiquetas de ótica
               If DMMACS.TLoja.FieldByName('ETPERSONAL').AsString='3'
   			Then Begin
					PrnEtiqPersonalOtica(True, 0, StrToInt(XQtdEtq));
   			End;
   			If DMMACS.TLoja.FieldByName('ETPERSONAL').AsString='0'
   			Then Begin
               	If DMMACS.TLoja.FieldByName('TIPOETPROD').AsString='2X12' Then
						PrnEtiq2X12(True, 0, StrToInt(XQtdEtq));
               	If DMMACS.TLoja.FieldByName('TIPOETPROD').AsString='T3C' Then
                       PrnEtiqT3C(True, 0, StrToInt(XQtdEtq));
               	If DMMACS.TLoja.FieldByName('TIPOETPROD').AsString='Z2C' Then
                       PrnEtiqZ2C(True, 0, StrToInt(XQtdEtq));
               	If DMMACS.TLoja.FieldByName('TIPOETPROD').AsString='A1C' Then
                       PrnEtiqA1C(True, 0, StrToInt(XQtdEtq));
   			End;
           End;
       Except
       End;
   End;
   end;

procedure TFProduto.EdCodBarraKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
	If Key=VK_Return
   Then Begin
		//FILTRA SIMILAR DE ACORDO COM O PRODUTO
       FiltraTabela(DMESTOQUE.WSimilar, 'VWSIMILAR', 'COD_LOJA', '', ' (COD_LOJA='+FMenu.LCODLOJA.Caption+') AND (CODBARRA='+#39+EdCodBarra.Text+#39+') ORDER BY CODFABRICANTE');
   End;

   If KEy=VK_Escape
   Then Begin//Libera todos os similares
		//FILTRA SIMILAR DE ACORDO COM O PRODUTO
       SelectSim;
	END;

   //controla next e prior de wsimilar
   If key=VK_Up Then
       DMESTOQUE.WSimilar.Prior;
   If key=VK_Down Then
       DMESTOQUE.WSimilar.Next;

end;

procedure TFProduto.MarcarDesmarcar1Click(Sender: TObject);
begin
  inherited;
   {FiltraTabela(DMESTOQUE.TSubProd, 'SUBPRODUTO', 'COD_SUBPRODUTO', DMESTOQUE.WSimilar.FieldByName('COD_SUBPRODUTO').AsString, '');
   DMESTOQUE.TSubProd.Edit;
   If DMESTOQUE.TSubProd.FieldByName('MARK').AsString='X' Then
		DMESTOQUE.TSubProd.FieldByName('MARK').AsString:=''
   Else
		DMESTOQUE.TSubProd.FieldByName('MARK').AsString:='X';
   DMESTOQUE.TSubProd.Post;
   DMESTOQUE.TransacEstoque.CommitRetaining;}
 Try
   MDO.QConsulta.Close;
   MDO.QConsulta.SQL.Clear;
   MDO.QConsulta.SQL.Add('SELECT COD_SUBPRODUTO, MARK FROM SUBPRODUTO WHERE SUBPRODUTO.MARK=:M');
   MDO.QConsulta.ParamByName('M').AsString := 'X';
   MDO.QConsulta.Open;
   MDO.QConsulta.First;
   While Not(MDO.QConsulta.Eof) do
   Begin
       MDO.Query.Close;
       MDO.Query.SQL.Clear;
       MDO.Query.SQL.Add('UPDATE SUBPRODUTO SET MARK=:M WHERE COD_SUBPRODUTO=:COD');
       MDO.Query.ParamByName('COD').AsInteger := MDO.QConsulta.FieldByName('COD_SUBPRODUTO').AsInteger;
   	MDO.Query.ParamByName('M').AsString := '';
       MDO.Query.ExecSQL;
       MDO.QConsulta.next;
   End;
   MDO.Transac.CommitRetaining;
   SelectSim;
   SomaProdutosMarcados;
 Except
   MDO.Transac.RollbackRetaining;
 End;
end;

procedure TFProduto.BtnFiltrarClick(Sender: TObject);
begin
  inherited;
  //Paulo 26/07/2011: Desmarca todos os itens marcados
	{If MessageDlg('Deseja realmente desmarcar todos os itens?', mtConfirmation, [mbYES, mbNO], 0)=mryes
   Then Begin
       FiltraTabela(DMESTOQUE.TSubProd, 'SUBPRODUTO', '', '', 'where subproduto.mark='+#39+'X'+#39+'');
       DMESTOQUE.TSubProd.First;
       while not DMESTOQUE.TSubProd.Eof do
       begin
           DMESTOQUE.TSubProd.Edit;
           If DMESTOQUE.TSubProd.FieldByName('MARK').AsString='X' Then
               DMESTOQUE.TSubProd.FieldByName('MARK').AsString:='';
           DMESTOQUE.TSubProd.Post;
           DMESTOQUE.TSubProd.Next;
       end;
       SelectSim;

   End;}
	MarcarDesmarcar1.Click;
end;

procedure TFProduto.EdCodBarraPDVKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
	If Key=Vk_up Then
   	If DMESTOQUE.TCodBarra.Bof Then
           DMESTOQUE.TCodBarra.last
       Else
       	DMESTOQUE.TCodBarra.Prior;
           
	If Key=Vk_down Then
   	If DMESTOQUE.TCodBarra.Eof Then
       	DMESTOQUE.TCodBarra.First
       Else
       	DMESTOQUE.TCodBarra.Next;
end;

procedure TFProduto.EdVlrVarejoVistaExit(Sender: TObject);
Var
    DescVistaVar, DescVistaAtac, AcrecPrazoVar, AcrecPrazoAtac, DescVistaInd, AcrecPrazoInd, ComVistaVar, ComVistaAtac, ComPrazoVar, ComPrazoAtac: Real;

begin
  inherited;
  TRY
    SincroValores(0);

    //Edmar - 28/05/2014 - Atribui o desconto para a varivel auxiliar
	 if DBDESCInd.Text = '' then
		DescVistaInd := 0
    else
    	DescVistaInd := StrToFloat(DBDESCInd.Text);

    //Edmar - 28/05/2014 - Atribui o acrescimo para a varivel auxiliar
    if DBACRECIND.Text = '' then
    	AcrecPrazoInd := 0
    else
	    AcrecPrazoInd := StrToFloat(DBACRECIND.Text);

    //Verifica se pega o valor em questão da tabela estoque ou empresa
    If DBComVarejo.Text='' Then
        ComVistaVar:=DMMacs.TEmpresa.FieldByName('CVVPROVAR').AsCurrency
    Else
        ComVistaVar:=StrToFloat(DBComVarejo.Text);

    //Verifica se pega o valor em questão da tabela estoque ou empresa
    If DBCOMPRAZOVAR.Text='' Then
        ComPrazoVar:=DMMacs.TEmpresa.FieldByName('CVPPROVAR').AsCurrency
    Else
        ComPrazoVar:=StrToFloat(DBCOMPRAZOVAR.Text);

    //Verifica se pega o valor em questão da tabela estoque ou empresa
    If DBCOMVISTAATAC.Text='' Then
        ComVistaAtac:=DMMacs.TEmpresa.FieldByName('CVVPROAT').AsCurrency
    Else
        ComPrazoAtac:=StrToFloat(DBCOMVISTAATAC.Text);

    //Paulo 18/05/2011:Verifica se pega o valor em questão da tabela estoque ou empresa
    If DBDescVarejo.Text='' Then
        DescVistaVar:=DMMacs.TEmpresa.FieldByName('AVVPROVAR').AsCurrency
    Else
        DescVistaVar:=StrToFloat(DBDescVarejo.Text);

    //Verifica se pega o valor em questão da tabela estoque ou empresa
    If DBCOMPRAZOATAC.Text='' Then
        ComPrazoAtac:=DMMacs.TEmpresa.FieldByName('CVPPROAT').AsCurrency
    Else
        ComPrazoAtac:=StrToFloat(DBCOMPRAZOATAC.Text);
    CalculoVenda(DescVistaVar, AcrecPrazoVar, DescVistaAtac, AcrecPrazoAtac, DescVistaInd,
       AcrecPrazoInd, ComVistaVar, ComPrazoVar, ComVistaAtac, ComPrazoAtac, 1, 1);
	 //sincroniza valores das edits

    // se o valor que existia antes e o valor que tem agora for diferente entao todos os edits sao atualizados
	 If XAuxValor <> EdVlrVarejoVista.ValueNumeric
    Then Begin
       EdVlrVarejoPrazo.ValueNumeric  := (EdVlrVarejoVista.ValueNumeric *  ((100 + DMESTOQUE.TEstoque.FieldByName('AVPPROVAR').AsCurrency) / 100));
       EdVlrAtacadoVista.ValueNumeric := EdVlrVarejoVista.ValueNumeric -  ((DMESTOQUE.TEstoque.FieldByName('AVVPROAT').AsCurrency*EdVlrVarejoVista.ValueNumeric) / 100);
       EdVlrAtacadoPrazo.ValueNumeric := EdVlrAtacadoVista.ValueNumeric +  ((DMESTOQUE.TEstoque.FieldByName('AVPPROAT').AsCurrency*EdVlrAtacadoVista.ValueNumeric) / 100);
    End;
  EXCEPT
  END;

end;

procedure TFProduto.BBAtualizarClick(Sender: TObject);
begin
  inherited;

end;
// Atualiza produtos da GERTEC
Procedure TFProduto.Atualiza_Gertec;
var
XContador : integer;
XTexto: TextFile;
XLinha, XString : string;
begin

     // inicializando contador
     Xcontador := 0;

     // seleciona todos os dados das tabelas codigobarras, subproduto e estoque
     DMESTOQUE.Alx1.Close;
     DMESTOQUE.Alx1.SQL.Clear;
     DMESTOQUE.Alx1.SQL.Add('select estoque.cod_subprod AS CODIGO_SUBPRODUTO, estoque.vendvarv AS VALOR, subproduto.desccupom, subproduto.codbarra AS CODIGO_BARRA, estoque.cod_estoque');
     DMESTOQUE.Alx1.SQL.Add('from subproduto');
     DMESTOQUE.Alx1.SQL.Add('left join estoque on subproduto.cod_subproduto = estoque.cod_subprod');
     DMESTOQUE.Alx1.Open;

     DMMACS.TALX.Close;
     DMMACS.TALX.SQL.Clear;
     DMMACS.TALX.SQL.Add('select count(subproduto.cod_subproduto) AS CONTADOR from subproduto');
     DMMACS.TALX.Open;

     ProgressBar1.Min := 0;
     ProgressBar1.Max := DMMACS.TALX.fieldbyname('contador').AsInteger;
     ProgressBar1.Position := 0;

     If Not DMESTOQUE.Alx1.IsEmpty
     Then Begin
       // se arquivo jah existe, o msm eh apagado
       If FileExists('C:\Arquivos de programas\SC501TXT\PRICETAB.TXT') THEN
           DeleteFile('C:\Arquivos de programas\SC501TXT\PRICETAB.TXT');

       AssignFile(XTexto,'C:\Arquivos de programas\SC501TXT\PRICETAB.TXT');
       {$I-}
       Reset(XTexto);
       {$I+}

       If IOResult = 0 then
           Append(XTexto)
       Else
           Rewrite(XTexto);

     // move para o primeiro registro
     DMESTOQUE.Alx1.First;

     While Not DMESTOQUE.Alx1.Eof do
     Begin
       Try
           XLinha := '';
           ProgressBar1.Visible := true;
           ProgressBar1.BringToFront;
           ProgressBar1.Position := XContador;

           If DMESTOQUE.Alx1.FieldByName('CODIGO_BARRA').AsString <> ''
           Then Begin
               // Codigo de barras
               XLinha := XLinha + DMESTOQUE.Alx1.FieldByName('CODIGO_BARRA').AsString + '|';

               If Length(DMESTOQUE.Alx1.FieldByName('desccupom').AsString) = 0
               Then Begin
                   XLinha := XLinha + 'PRODUTO NÃO CADASTRADO.' + '|';
               End
               Else Begin
                   // Descricao do produto
                   If Length(DMESTOQUE.Alx1.FieldByName('desccupom').AsString) <= 20
                   Then Begin
                       XLinha := XLinha + DMESTOQUE.Alx1.FieldByName('desccupom').AsString + '|';
                   End
                   Else Begin
                       XString := copy(DMESTOQUE.Alx1.FieldByName('desccupom').AsString,1,19);
                       XLinha := XLinha + XString + '.' + '|';
                   End;
               End;

               // Preco unitario
               XLinha := XLinha + FormatFloat('0.00',DMESTOQUE.Alx1.FieldByName('VALOR').AsCurrency) + '|';

          		//Grava Texto
       		Writeln(XTexto, XLinha);

           End;

           // enquanto houver codbarra na tabela codigobarra, cada um tera seu subproduto
           DMESTOQUE.Alx4.Close;
           DMESTOQUE.Alx4.SQL.Clear;
           DMESTOQUE.Alx4.SQL.Add('select codigobarra.cod_estoque, codigobarra.codbarra AS COD_BARRA,');
           DMESTOQUE.Alx4.SQL.Add('estoque.cod_estoque, estoque.cod_subprod, estoque.vendvarv AS VALOR,');
           DMESTOQUE.Alx4.SQL.Add('subproduto.cod_subproduto, subproduto.desccupom');
           DMESTOQUE.Alx4.SQL.Add('from codigobarra');
           DMESTOQUE.Alx4.SQL.Add('left join estoque on codigobarra.cod_estoque = estoque.cod_estoque');
           DMESTOQUE.Alx4.SQL.Add('left join subproduto on estoque.cod_subprod = subproduto.cod_subproduto');
           DMESTOQUE.Alx4.SQL.Add('where codigobarra.cod_estoque = :codigo');
           DMESTOQUE.Alx4.ParamByName('codigo').AsString := DMESTOQUE.Alx1.FieldByName('COD_estoque').AsString;
           DMESTOQUE.Alx4.Open;

           If (DMESTOQUE.Alx4.FieldByName('COD_BARRA').AsString <> DMESTOQUE.Alx1.FieldByName('CODIGO_BARRA').AsString) and (DMESTOQUE.Alx4.FieldByName('COD_BARRA').AsString <> '')
           Then Begin
               DMESTOQUE.Alx4.First;
               while not DMESTOQUE.Alx4.Eof do
               Begin

                   XLinha := '';

                   // Codigo de barras
                   XLinha := XLinha + DMESTOQUE.Alx4.FieldByName('COD_BARRA').AsString + '|';

                   If Length(DMESTOQUE.Alx4.FieldByName('desccupom').AsString) = 0
                   Then Begin
                       XLinha := XLinha + 'PRODUTO NÃO CADASTRADO.' + '|';
                   End
                   Else Begin
                       // Descricao do produto
                       If Length(DMESTOQUE.Alx4.FieldByName('desccupom').AsString) <= 20
                       Then Begin
                           XLinha := XLinha + DMESTOQUE.Alx4.FieldByName('desccupom').AsString + '|';
                       End
                       Else Begin
                           XString := copy(DMESTOQUE.Alx4.FieldByName('desccupom').AsString,1,19);
                           XLinha := XLinha + XString + '.' + '|';
                       End;
                   End;

                   // Preco unitario
                   XLinha := XLinha + FormatFloat('0.00',DMESTOQUE.Alx4.FieldByName('VALOR').AsCurrency) + '|';

          		    //Grava Texto
       		    Writeln(XTexto, XLinha);

                   DMESTOQUE.Alx4.Next;
               End;
           End;

           // numero de itens
           Xcontador := Xcontador + 1;

       // proximo registro
       DMESTOQUE.Alx1.Next;
       Except
           Mensagem('   A T E N Ç Ã O   ', 'Ocorreu erro ao atualizar o arquivo PRICETAB.TXT', '', 1, 1, False, 'E');
           DeleteFile('C:\Arquivos de programas\SC501TXT\PRICETAB.TXT');
           ProgressBar1.Visible := false;
           ProgressBar1.SendToBack;
           Exit;
       End;
     End;
     // fecha arquivo
     CloseFile(XTexto);
     End;

     // atualização
     DMESTOQUE.TransacEstoque.CommitRetaining;

     Mensagem('   N O T I F I C A Ç Ã O    ', 'O terminal de BuscaPreço já está atualizado com '+IntToStr(Xcontador)+ ' itens.', '', 1, 1, False, 'I');
     ProgressBar1.Visible := false;
     ProgressBar1.SendToBack;
end;
procedure TFProduto.EDCODGRUPOKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
Var CODGRUPO: STRING;
begin
  inherited;
	If Key=Vk_Return
   Then Begin
      If FiltraTabela(DMESTOQUE.TGrupo, 'GRUPOPROD', 'COD_INTERNO', '', ' (TIPO='+#39+'P'+#39+') AND (COD_INTERNO='+#39+EDCODGRUPO.Text+#39+')')=True
      Then Begin
          XCodGrupo:=DMEstoque.TGrupo.FieldByName('COD_GRUPOPROD').AsInteger;
          DBGRUPO.Text:=DMESTOQUE.TGrupo.FieldByName('DESCRICAO').AsString;
      End
      Else Begin
		  XCodGrupo:=-1;	      
         DBGRUPO.TEXT:='';
      End;
	End;
end;

procedure TFProduto.EDCODSUBGRUPOKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
Var
   CODSUBGRUPO:String;
begin
  inherited;
	If Key = Vk_Return
   Then Begin  
      If FiltraTabela(DMESTOQUE.TSubgru, 'SUBGRUPOPROD', 'COD_INTERNO', '', ' (TIPO='+#39+'P'+#39+') AND (COD_INTERNO='+#39+EDCODSUBGRUPO.Text+#39+')')=True
      then Begin
             XCodSubgrupo:=DMESTOQUE.TSubgru.FieldByName('COD_SUBGRUPOPROD').AsInteger;
             DBSUBGRUPO.Text:=DMESTOQUE.TSubgru.FieldByName('DESCRICAO').AsString;
       End
       Else Begin
       	XCodSubgrupo:=-1;
           DBSUBGRUPO.TEXT:='';
      end;
	End;

end;

procedure TFProduto.EdVlrVarejoVistaEnter(Sender: TObject);
begin
  inherited;
  // a variavel recebe o valor do campo para ser comparado na saido do mesmo campo
  XAuxValor := EdVlrVarejoVista.ValueNumeric;
end;

procedure TFProduto.DBDescVarejoEnter(Sender: TObject);
begin
  inherited;
  // a variavel recebe o valor do campo para ser comparado na saido do mesmo campo
  XAuxDesc := DMESTOQUE.TEstoque.fieldbyname('AVVPROVAR').AsCurrency;

end;

procedure TFProduto.DBACRECVAREJOEnter(Sender: TObject);
begin
  inherited;
  // a variavel recebe o valor do campo para ser comparado na saido do mesmo campo
   XAuxDesc := DMESTOQUE.TEstoque.fieldbyname('AVPPROVAR').AsCurrency;
end;

procedure TFProduto.DBDESCATACEnter(Sender: TObject);
begin
  inherited;
  // a variavel recebe o valor do campo para ser comparado na saido do mesmo campo
   XAuxDesc := DMESTOQUE.TEstoque.fieldbyname('AVVPROAT').AsCurrency;
end;

procedure TFProduto.DBACRECATACEnter(Sender: TObject);
begin
  inherited;
  // a variavel recebe o valor do campo para ser comparado na saido do mesmo campo
   XAuxDesc := DMESTOQUE.TEstoque.fieldbyname('AVPPROAT').AsCurrency;
end;

procedure TFProduto.DBDescVarejoExit(Sender: TObject);
begin
  inherited;
    If XAuxDesc <> Dmestoque.Testoque.Fieldbyname('AVVPROVAR').AsCurrency
    Then Begin
       EdVlrVarejoVista.OnExit(sender);
       EdVlrVarejoPrazo.SetFocus;
    End;
   // a variavel recebe o valor do campo para ser comparado na saido do mesmo campo
   XAuxDesc := DMESTOQUE.TEstoque.fieldbyname('AVVPROVAR').AsCurrency;
end;

procedure TFProduto.DBACRECVAREJOExit(Sender: TObject);
begin
  inherited;
    If XAuxDesc <> Dmestoque.Testoque.Fieldbyname('AVPPROVAR').AsCurrency
    Then Begin
  		// Zero a variavél para poder entrar dentro de condição no exit da edit abaixo
  		XAuxValor := 0;
       EdVlrVarejoVista.OnExit(sender);
       EdVlrAtacadoVista.SetFocus;
    End;
   // a variavel recebe o valor do campo para ser comparado na saido do mesmo campo
   XAuxDesc := DMESTOQUE.TEstoque.fieldbyname('AVPPROVAR').AsCurrency;
end;

procedure TFProduto.DBDESCATACExit(Sender: TObject);
begin
  inherited;
    If XAuxDesc <> Dmestoque.Testoque.Fieldbyname('AVVPROAT').AsCurrency
    Then Begin
  		// Zero a variavél para poder entrar dentro de condição no exit da edit abaixo
  		XAuxValor := 0;
       EdVlrVarejoVista.OnExit(sender);
       EdVlrAtacadoPrazo.SetFocus;
    End;
   // a variavel recebe o valor do campo para ser comparado na saido do mesmo campo
   XAuxDesc := DMESTOQUE.TEstoque.fieldbyname('AVVPROAT').AsCurrency;
end;

procedure TFProduto.DBACRECATACExit(Sender: TObject);
begin
  inherited;
    If XAuxDesc <> Dmestoque.Testoque.Fieldbyname('AVPPROAT').AsCurrency
    Then Begin
  		// Zero a variavél para poder entrar dentro de condição no exit da edit abaixo
  		XAuxValor := 0;
       EdVlrVarejoVista.OnExit(sender);
       BtnGravar.SetFocus;
    End;
   // a variavel recebe o valor do campo para ser comparado na saido do mesmo campo
   XAuxDesc := DMESTOQUE.TEstoque.fieldbyname('AVPPROAT').AsCurrency;

end;

procedure TFProduto.BtnPPrecoClick(Sender: TObject);
begin
  inherited;
   // visualiza painel e posiciona nos respectivos valores
   PValores.Visible := true;
   PValores.BringToFront;
   PValores.Left:=0;
end;

procedure TFProduto.BtnDownLogoffClick(Sender: TObject);
begin
  inherited;
   PValores.Visible := false;
   PValores.SendToBack;
end;

procedure TFProduto.EtMarcados1Click(Sender: TObject);
Var
   XQtdEtq: String;
begin
  inherited;
   If InputQuery('ATENÇÃO','Informe a Quantidade de etiquetas:', XQtdEtq)
   Then Begin
   	Try
       	If StrToInt(XQtdEtq)>0
           Then Begin
				//INFORMA SQL ADEQUADA A IMPRESSAO DE ETIQUETAS
       		DMESTOQUE.TRel.CLOSE;
       		DMESTOQUE.TRel.SQL.Clear;
       		DMESTOQUE.TRel.SQL.Add(' SELECT subproduto.codprodfabr AS CODFAB, produto.descricao AS GRADE, subproduto.CONTRINT,  SUBPRODUTO.especificacao, subproduto.descricao AS DESCR,  subproduto.FABRICANTE,  ');
       		DMESTOQUE.TRel.SQL.Add(' estoque.vendvarv as PRECO,  SubProduto.Marca as MARCA, subproduto.localestante AS CODCOMPOSTO, ESTOQUE.ESTFISICO As QTD, ');
       		DMESTOQUE.TRel.SQL.Add(' estoque.vendvarp as PRECOPRAZO, estoque.ultcompra as DTCAD, subproduto.altura AS ALTURA, subproduto.LARGURA AS LARGURA, subproduto.composicao AS COMPOSICAO, subproduto.CLASSIFICACAO, ');
  				DMESTOQUE.TRel.SQL.Add(' subproduto.cor, subproduto.CODBARRA AS CODBARRA');
       		DMESTOQUE.TRel.SQL.Add(' from Subproduto ');
		        DMESTOQUE.TRel.SQL.Add(' left join Produto ON Produto.cod_Produto = subproduto.cod_Produto ');
       		DMESTOQUE.TRel.SQL.Add(' left join estoque ON ESTOQUE.cod_SubProd = SUBPRODUTO.cod_SubprodUTO ');
       		DMESTOQUE.TRel.SQL.Add(' WHERE (ESTOQUE.COD_LOJA='+FMenu.LCODLOJA.Caption+') ');
               DMESTOQUE.TRel.SQL.Add(' and (subproduto.mark = '+#39+'X'+#39')');
      			DMESTOQUE.TRel.SQL.Text;
      			DMESTOQUE.TRel.Open;
   			If DMMACS.TLoja.FieldByName('ETPERSONAL').AsString='1'
   			Then Begin
					PrnEtiqPerson(True, 0, StrToInt(XQtdEtq));
   			End;
   			If DMMACS.TLoja.FieldByName('ETPERSONAL').AsString='2'
   			Then Begin
					PrnEtiqPerson02(True, 0, StrToInt(XQtdEtq));
   			End;
               //Paulo 13/12/2010: Para impressão de etiquetas de ótica
               If DMMACS.TLoja.FieldByName('ETPERSONAL').AsString='3'
   			Then Begin
					PrnEtiqPersonalOtica(True, 0, StrToInt(XQtdEtq));
   			End;
   			If DMMACS.TLoja.FieldByName('ETPERSONAL').AsString='0'
   			Then Begin
               	If DMMACS.TLoja.FieldByName('TIPOETPROD').AsString='2X12' Then
						PrnEtiq2X12(True, 0, StrToInt(XQtdEtq));
               	If DMMACS.TLoja.FieldByName('TIPOETPROD').AsString='T3C' Then
                       PrnEtiqT3C(True, 0, StrToInt(XQtdEtq));
               	If DMMACS.TLoja.FieldByName('TIPOETPROD').AsString='Z2C' Then
                       PrnEtiqZ2C(True, 0, StrToInt(XQtdEtq));
               	If DMMACS.TLoja.FieldByName('TIPOETPROD').AsString='A1C' Then
                       PrnEtiqA1C(True, 0, StrToInt(XQtdEtq));
   			End;
           End;
       Except
       End;
   End;
   DMESTOQUE.TRel.Close;
   DMESTOQUE.TRel.SQL.Clear;
   DMESTOQUE.TRel.SQL.Add('update subproduto set subproduto.mark = ' +#39+''+#39);
   DMESTOQUE.TRel.ExecSQL;
   DMESTOQUE.TransacEstoque.CommitRetaining;
end;

procedure TFProduto.dbvalorunitarioEnter(Sender: TObject);
begin
  inherited;
   If dbvalorunitario.Text <> ''
   then begin
       // REPASSANDO VALOR PARA SER COMPARADO NA SAIDA
       XVlrCompra := StrToFloat(dbvalorunitario.Text);
   end;
end;

procedure TFProduto.DBColorEdit4Enter(Sender: TObject);
begin
  inherited;
   If dbvalorunitario.Text <> ''
   then begin
       // REPASSANDO VALOR PARA SER COMPARADO NA SAIDA
       XVlrCompra := StrToFloat(dbvalorunitario.Text);
   end;
end;

procedure TFProduto.DBColorEdit19Enter(Sender: TObject);
begin
  inherited;
   If dbvalorunitario.Text <> ''
   then begin
       // REPASSANDO VALOR PARA SER COMPARADO NA SAIDA
       XVlrCompra := StrToFloat(dbvalorunitario.Text);
   end;
end;

procedure TFProduto.DBVlrUnitCompEnter(Sender: TObject);
begin
  inherited;
   If dbvalorunitario.Text <> ''
   then begin
      // REPASSANDO VALOR PARA SER COMPARADO NA SAIDA
       XVlrCompra := StrToFloat(dbvalorunitario.Text);
   end;
end;

procedure TFProduto.DBVlrUnitCompSDEnter(Sender: TObject);
begin
  inherited;
   If dbvalorunitario.Text <> ''
   then begin
       // REPASSANDO VALOR PARA SER COMPARADO NA SAIDA
       XVlrCompra := StrToFloat(dbvalorunitario.Text);
   end;
end;

procedure TFProduto.DBFreteEnter(Sender: TObject);
begin
  inherited;
   If dbvalorunitario.Text <> ''
   then begin
       // REPASSANDO VALOR PARA SER COMPARADO NA SAIDA
       XVlrCompra := StrToFloat(dbvalorunitario.Text);
   end;
end;

procedure TFProduto.DBColorEdit2Enter(Sender: TObject);
begin
  inherited;
   If dbvalorunitario.Text <> ''
   then begin
       // REPASSANDO VALOR PARA SER COMPARADO NA SAIDA
       XVlrCompra := StrToFloat(dbvalorunitario.Text);
   end;
end;

procedure TFProduto.DBColorEdit1Enter(Sender: TObject);
begin
  inherited;
   If dbvalorunitario.Text <> ''
   then begin
       // REPASSANDO VALOR PARA SER COMPARADO NA SAIDA
       XVlrCompra := StrToFloat(dbvalorunitario.Text);
   end;
end;

procedure TFProduto.DBLucratEnter(Sender: TObject);
begin
  inherited;
   If dbvalorunitario.Text <> ''
   then begin
       // REPASSANDO VALOR PARA SER COMPARADO NA SAIDA
       XVlrCompra := StrToFloat(dbvalorunitario.Text);
   end;
end;

procedure TFProduto.DBColorEdit12Enter(Sender: TObject);
begin
  inherited;
   If dbvalorunitario.Text <> ''
   then begin
      // REPASSANDO VALOR PARA SER COMPARADO NA SAIDA
       XVlrCompra := StrToFloat(dbvalorunitario.Text);
   end;
end;

procedure TFProduto.DBColorEdit13Enter(Sender: TObject);
begin
  inherited;
   If dbvalorunitario.Text <> ''
   then begin
       // REPASSANDO VALOR PARA SER COMPARADO NA SAIDA
       XVlrCompra := StrToFloat(dbvalorunitario.Text);
   end;
end;

procedure TFProduto.DBColorEdit3Enter(Sender: TObject);
begin
  inherited;
   If dbvalorunitario.Text <> ''
   then begin
      // REPASSANDO VALOR PARA SER COMPARADO NA SAIDA
       XVlrCompra := StrToFloat(dbvalorunitario.Text);
   end;
end;

procedure TFProduto.DBColorEdit17Enter(Sender: TObject);
begin
  inherited;
   If dbvalorunitario.Text <> ''
   then begin
      // REPASSANDO VALOR PARA SER COMPARADO NA SAIDA
      XVlrCompra := StrToFloat(dbvalorunitario.Text);
   end;
end;

procedure TFProduto.DBIPIEnter(Sender: TObject);
begin
  inherited;
   If dbvalorunitario.Text <> ''
   then begin
      // REPASSANDO VALOR PARA SER COMPARADO NA SAIDA
      XVlrCompra := StrToFloat(dbvalorunitario.Text);
   end;
end;

procedure TFProduto.DBColorEdit5Enter(Sender: TObject);
begin
  inherited;
   If dbvalorunitario.Text <> ''
   then begin
      // REPASSANDO VALOR PARA SER COMPARADO NA SAIDA
      XVlrCompra := StrToFloat(dbvalorunitario.Text);
   end;
end;

procedure TFProduto.DBColorEdit8Enter(Sender: TObject);
begin
  inherited;
   If dbvalorunitario.Text <> ''
   then begin
      // REPASSANDO VALOR PARA SER COMPARADO NA SAIDA
      XVlrCompra := StrToFloat(dbvalorunitario.Text);
   end;
end;

procedure TFProduto.DBColorEdit6Enter(Sender: TObject);
begin
  inherited;
   If dbvalorunitario.Text <> ''
   then begin
      // REPASSANDO VALOR PARA SER COMPARADO NA SAIDA
      XVlrCompra := StrToFloat(dbvalorunitario.Text);
   end;
end;

procedure TFProduto.DBColorEdit7Enter(Sender: TObject);
begin
  inherited;
   If dbvalorunitario.Text <> ''
   then begin
      // REPASSANDO VALOR PARA SER COMPARADO NA SAIDA
      XVlrCompra := StrToFloat(dbvalorunitario.Text);
   end;
end;

procedure TFProduto.DBColorEdit9Enter(Sender: TObject);
begin
  inherited;
   If dbvalorunitario.Text <> ''
   then begin
      // REPASSANDO VALOR PARA SER COMPARADO NA SAIDA
      XVlrCompra := StrToFloat(dbvalorunitario.Text);
   end;
end;

procedure TFProduto.DBColorEdit10Enter(Sender: TObject);
begin
  inherited;
   If dbvalorunitario.Text <> ''
   then begin
      // REPASSANDO VALOR PARA SER COMPARADO NA SAIDA
      XVlrCompra := StrToFloat(dbvalorunitario.Text);
   end;
end;

procedure TFProduto.CodSitTribKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
Var
	CODCST:STRING;
begin
  inherited;
  	If Key=VK_RETURN
   Then Begin
      If FiltraTabela(DMESTOQUE.TCST, 'CST', 'cod_sit_trib', CodSitTrib.Text, '')=True
      Then Begin
         If DMEstoque.TCST.FieldByName('VENDA').AsString='1'
         Then Begin
             XCST:=DMESTOQUE.TCST.FieldByName('cod_cst').AsInteger;
             CODSITTRIB.Text:=DMESTOQUE.TCST.FieldByName('COD_SIT_TRIB').AsString;
             DESCSITTRIB.Text:=DMESTOQUE.TCST.FieldByName('DESCRICAO').AsString;
         End
         Else Begin
             MessageDlg('O C.S.T. Selecionado não se refere a um c.s.t. de venda. Sendo assim ele não pode ser selecionado para o produto.', mtWarning, [mbOK], 0);
         End;
      End
      Else Begin
		  XCST:=-1;	      
         CODSITTRIB.Text:='';
         DESCSITTRIB.Text:='';
      End;
   End;

end;
 //dois clic's na grid
procedure TFProduto.DBGrid1DblClick(Sender: TObject);
Var xBookMark :Pointer;
begin
  inherited;
//   if BtnSelecionar.Visible = True then
  //     BtnSelecionarClick(Sender);
   Try
     xBookMark := DMEstoque.WSimilar.GetBookmark;
     MDO.QConsulta.Close;
     MDO.QConsulta.SQL.Clear;
     MDO.QConsulta.SQL.Add('SELECT * FROM SUBPRODUTO WHERE COD_SUBPRODUTO=:COD');
     MDO.QConsulta.ParamByName('COD').AsInteger := DMESTOQUE.WSimilar.FieldByName('COD_SUBPRODUTO').AsInteger;
		  MDO.QConsulta.Open;
     MDO.QConsulta.First;
     if Not(MDO.QConsulta.Eof) then
     Begin
       MDO.Query.Close;
       MDO.Query.SQL.Clear;
       MDO.Query.SQL.Add('UPDATE SUBPRODUTO SET MARK=:MARK WHERE COD_SUBPRODUTO=:COD');
       MDO.Query.ParamByName('COD').AsInteger := MDO.QConsulta.FieldByName('COD_SUBPRODUTO').AsInteger;
       If MDO.QConsulta.FieldByName('MARK').AsString='X' Then
         MDO.Query.ParamByName('MARK').AsString:=''
       Else
		      MDO.Query.ParamByName('MARK').AsString:='X';
       MDO.Query.ExecSQL;
       MDO.Transac.CommitRetaining;
       SelectSim;
       SomaProdutosMarcados;
       DMEstoque.WSimilar.GotoBookmark(xBookMark);
       DMEstoque.WSimilar.FreeBookmark(xBookMark);
       //$00F0F0E3
     End;
   Except
     MDO.Transac.RollbackRetaining;
   End;  
end;
 //key press na grid
procedure TFProduto.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
   if key = #13 then
       if BtnSelecionar.Visible = True then
           BtnSelecionarClick(Sender);
end;
//key press no campo codigo de barra (para apenas aceitar numeros)
procedure TFProduto.dbcodbarraKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  //aceitar apenas numeros
  if not (key in ['0'..'9', #8, #13]) then Key := #0
end;
//key press no campo NCM(para apenas aceitar numeros)
procedure TFProduto.DBColorEdit16KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  //aceitar apenas numeros
  if not (key in ['0'..'9', #8, #13]) then
  		Key := #0;
  If Key=#13
  Then Begin
    If AbrirForm(TFCadNcm, FCadNcm, 1)='Selected'
    Then Begin
       DBColorEdit16.TEXT:=DMESTOQUE.TNcm.FieldByName('NCM').asstring;
    End;
  End;
end;

procedure TFProduto.DBCODFABRICANTEExit(Sender: TObject);
begin
  inherited;
    // - 21/01/2009: verificar se há um produto cadastrado com o mesmo código de frabricante
    Try
	  If (Trim(DMESTOQUE.TSubProd.FIELDBYNAME('CODPRODFABR').AsString)<>'')
     Then Begin
       DMESTOQUE.Alx.Close;
       DMESTOQUE.Alx.SQL.Clear;
       DMESTOQUE.Alx.SQL.Add('SELECT * FROM SUBPRODUTO WHERE (SUBPRODUTO.CODPRODFABR=:FAB) AND (SUBPRODUTO.COD_SUBPRODUTO<>:COD)');
       DMESTOQUE.Alx.ParamByName('FAB').AsString:=dbcodfabricante.Text;
       DMESTOQUE.Alx.ParamByName('COD').AsString:=IntToStr(XCOD_SIMILAR);
       DMESTOQUE.Alx.SQL.Text;
       DMESTOQUE.Alx.Open;

	    If Not DMESTOQUE.Alx.IsEmpty
	    Then Begin
           If Mensagem('A T E N Ç Ã O', 'Já existe um produto com o mesmo código do fabricante!'+#13+'Deseja visualiza-lo?', '', 2, 3, False, 'c')=2
           Then Begin
                // - 21/01/2009: FILTRA SIMILAR DE ACORDO COM O PRODUTO
                If FiltraTabela(DMEstoque.TEstoque, 'ESTOQUE', 'COD_SUBPROD', DMEstoque.Alx.FieldByName('COD_SUBPRODUTO').AsString, '')=False
                Then Begin
                	XCOD_SIMILAR := DMESTOQUE.Alx.FieldByName('COD_SUBPRODUTO').AsInteger;
                   //Mensagem('A T E N Ç Ã O', 'O produto não foi encontrado no estoque, um novo registro será criado.'+#13+'Deseja visualiza-lo?', '', 2, 3, False, 'c')=2
                   ReparoRegistroEstoque;
                End;
                FiltraTabela(DMESTOQUE.WSimilar, 'VWSIMILAR', 'COD_LOJA', '', ' (COD_LOJA='+FMenu.LCODLOJA.Caption+') AND (upper(CODFABRICANTE) like upper('+#39+DMESTOQUE.Alx.FieldByName('CODPRODFABR').AsString+#39+'))');
                BtnConsultarClick(Self);
           End
           Else Begin
                //Mensagem('INFORMAÇÃO AO USUÁRIO', 'Já existe um produto com o mesmo código do fabricante!', '', 1, 1, False, 'I');
                dbcodfabricante.SetFocus;
                exit;
           End;
	  End;
    end;
    Except
    End;
end;

// - 23/04/2009: verifica o codigo procurando se há letras e passando p/ numero
function TFProduto.verificaEAN13Alfanumerico(maxTam:Integer; cod:String):String;
var i:integer;
    valor:double;
    tmp:String;
begin

   cod := Trim(cod);

   for i:=1 to length(cod) do   //tira acentos
   begin
     case Byte(cod[i]) of
       192..198:cod[i] := 'A';
       199:cod[i] := 'C';
       200..203:cod[i] := 'E';
       204..207:cod[i] := 'I';
       208:cod[i] := 'D';
       209:cod[i] := 'N';
       210..214:cod[i] := 'O';
       217..220:cod[i] := 'U';
       221:cod[i] := 'Y';
       224..230:cod[i] := 'a';
       231:cod[i] := 'c';
       232..235:cod[i] := 'e';
       236..239:cod[i] := 'i';
       241:cod[i] := 'n';
       242..246:cod[i] := 'o';
       249..252:cod[i] := 'u';
       253:cod[i] := 'y';
       255:cod[i] := 'y';
     end;
   end;

   cod := UpperCase(cod);

    cod := StringReplace(cod, 'A', '65',[rfReplaceAll]);
    cod := StringReplace(cod, 'B', '66',[rfReplaceAll]);
    cod := StringReplace(cod, 'C', '67',[rfReplaceAll]);
    cod := StringReplace(cod, 'D', '68',[rfReplaceAll]);
    cod := StringReplace(cod, 'E', '69',[rfReplaceAll]);
    cod := StringReplace(cod, 'F', '70',[rfReplaceAll]);
    cod := StringReplace(cod, 'G', '71',[rfReplaceAll]);
    cod := StringReplace(cod, 'H', '72',[rfReplaceAll]);
    cod := StringReplace(cod, 'I', '73',[rfReplaceAll]);
    cod := StringReplace(cod, 'J', '74',[rfReplaceAll]);
    cod := StringReplace(cod, 'K', '75',[rfReplaceAll]);
    cod := StringReplace(cod, 'L', '76',[rfReplaceAll]);
    cod := StringReplace(cod, 'M', '77',[rfReplaceAll]);
    cod := StringReplace(cod, 'N', '78',[rfReplaceAll]);
    cod := StringReplace(cod, 'O', '79',[rfReplaceAll]);
    cod := StringReplace(cod, 'P', '80',[rfReplaceAll]);
    cod := StringReplace(cod, 'Q', '81',[rfReplaceAll]);
    cod := StringReplace(cod, 'R', '82',[rfReplaceAll]);
    cod := StringReplace(cod, 'S', '83',[rfReplaceAll]);
    cod := StringReplace(cod, 'T', '84',[rfReplaceAll]);
    cod := StringReplace(cod, 'U', '85',[rfReplaceAll]);
    cod := StringReplace(cod, 'V', '86',[rfReplaceAll]);
    cod := StringReplace(cod, 'W', '87',[rfReplaceAll]);
    cod := StringReplace(cod, 'X', '88',[rfReplaceAll]);
    cod := StringReplace(cod, 'Y', '89',[rfReplaceAll]);
    cod := StringReplace(cod, 'Z', '90',[rfReplaceAll]); 

   If Length(cod) > maxTam
   Then
       cod := Copy(cod, Length(cod) - maxTam, maxTam)    // valida tamanho
   else
       cod := Copy(cod, 0, maxTam);
   Try
      tmp := '';
      for i:=1 to maxTam do
      begin
           tmp := tmp + '0';
      end;
      valor := StrToFloat(cod);
      cod := FormatFloat(tmp, valor);
   Except

   End;

   Result := cod;

End;
procedure TFProduto.CBProdutoConsumoClick(Sender: TObject);
begin
  inherited;
   If CbEstoquePermanente.Checked=True Then
       CbEstoquePermanente.Checked:=False;
end;


procedure TFProduto.DBColorEdit16Exit(Sender: TObject);
begin
  inherited;
    //verifica do arquivo de configuração se o sistema esta configurado para emitir nota fiscal eletronica, se estiver devemos bloquear o cadastro do produto sem ncm
	 If (DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString='NFe') or (DMMACS.TLoja.FieldByName('CONTROLANCM').AsString='1')
    Then Begin
       If (DMESTOQUE.TSubProd.FieldByName('NCM').AsString<>'') and (Length(DMESTOQUE.TSubProd.FieldByName('NCM').AsString)<>8) and (DMMACS.TLoja.FieldByName('CONTROLANCM').AsString<>'1')
       Then Begin
           Mensagem('OPÇÃO BLOQUEADA', 'Por favor, informe o NCM do produto (NCM válido deve ter tamanho de 8 caracteres), este campo é necessário para emissão da nota fiscal eletrônica.', '', 1, 1, False, 'I');
       End;
       If ((DMMACS.TLoja.FieldByName('CONTROLANCM').AsString='1') or (DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString='NFe'))
       Then Begin
           DMESTOQUE.TNcm.Close;
           DMESTOQUE.TNcm.SQL.Clear;
           DMESTOQUE.TNcm.SQL.Add(' select * from ncm where ncm.ncm=:NCM');
           DMESTOQUE.TNcm.ParamByName('NCM').AsString:=Trim(DBColorEdit16.Text);
           DMESTOQUE.TNcm.Open;
           If DMESTOQUE.TNcm.IsEmpty
           Then Begin
           	Mensagem('OPÇÃO BLOQUEADA', 'O NCM Informado não consta na tabela de NCM', '', 1, 1, False, 'I');
           End;
       End;
    End;
    PcAdicionais.ActivePage:=TabSheet1;
    dbvalorunitario.SetFocus;
end;
//Paulo 28/08/2010: Abre a ficha técnica do produto
procedure TFProduto.BtnCtrlFichaClick(Sender: TObject);
begin
  inherited;
   EdCodMat.Text:= '';
   EdDescMat.Text:='';
   EdPorcMat.Text:='';
   //Paulo 28/08/2010: seleciona a matéria prima do produto
   DMESTOQUE.Alx1.Close;
   DMESTOQUE.Alx1.SQL.Clear;
   DMESTOQUE.Alx1.SQL.Add('select fchtecprod.cod_fchtecprod,fchtecprod.cod_subprod,fchtecprod.porcentagem,fchtecprod.cod_subprodutoacabado, subproduto.descricao');
   DMESTOQUE.Alx1.SQL.Add('from fchtecprod inner join subproduto on fchtecprod.cod_subprod = subproduto.cod_subproduto');
   DMESTOQUE.Alx1.SQL.Add('AND fchtecprod.cod_subprodutoacabado = :SUBPRODUTO');
   DMESTOQUE.Alx1.ParamByName('SUBPRODUTO').AsInteger:=XCOD_SIMILAR;
   DMESTOQUE.Alx1.Open;


end;

//Paulo 27/08/2010: Rertorna os produtos que servirão de matéria prima
procedure TFProduto.RetornaMateriaPrima;
begin
	//Busca na loja qual o grupo que será de materia prima
	DMMACS.TALX.Close;
   DMMACS.TALX.SQL.Clear;
   DMMACS.TALX.SQL.Add('select cod_grupomt from loja');
   DMMACS.TALX.Open;
   XAlx:= DMMACS.TALX.FieldByName('cod_grupomt').AsInteger;

   //Busca na tabela subprodutos todos os itens pertecentes ao grupo de materia prima
   DMESTOQUE.Alx.Close;
   DMESTOQUE.Alx.SQL.Clear;
   DMESTOQUE.Alx.SQL.Add('select subproduto.descricao, subproduto.cod_subproduto  from subproduto inner join produto');
   DMESTOQUE.Alx.SQL.Add('on produto.cod_produto = subproduto.cod_produto and subproduto.descricao  like upper('''+EdDescMat.Text+'%'')');
   DMESTOQUE.Alx.SQL.Add('and produto.cod_grupoprod = :GRUPOPROD');
   DMESTOQUE.Alx.ParamByName('GRUPOPROD').AsInteger:=XAlx;
   DMESTOQUE.Alx.Open;


end;
//Paulo 01/09/2010: Ao precionar alguma tecla no edit de descrição da matéria prima
procedure TFProduto.EdDescMatKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
       RetornaMateriaPrima;
		PLocMat.Visible:=true;
       PLocMat.BringToFront;

       case key of
          	Vk_down: DBMatP.SetFocus;

           VK_ESCAPE:
           begin
              	PLocMat.Visible:=false;
               PLocMat.SendToBack;
           end;
       end;

end;
//Paulo 30/08/2010: Insere na tabela os dados da ficha técnica
procedure TFProduto.BtInserirClick(Sender: TObject);
begin
  inherited;
   //Edmar - 09/10/2014 - Desativado função de ficha técnica desta forma
	{DMESTOQUE.TFchTec.Close;
   DMESTOQUE.TFchTec.SQL.Clear;
   DMESTOQUE.TFchTec.SQL.Add('INSERT INTO fchtecprod (COD_SUBPROD,COD_SUBPRODUTOACABADO,PORCENTAGEM)');
   DMESTOQUE.TFchTec.SQL.Add('VALUES (:COD_SUBPROD,:COD_SUBPRODUTOACABADO,:PORCENTAGEM)');
   DMESTOQUE.TFchTec.ParamByName('COD_SUBPROD').AsInteger:=StrToInt(EdCodMat.Text);
   DMESTOQUE.TFchTec.ParamByName('COD_SUBPRODUTOACABADO').AsInteger:=XCOD_SIMILAR;
   DMESTOQUE.TFchTec.ParamByName('PORCENTAGEM').AsInteger:=StrToInt(EdPorcMat.Text);
   DMESTOQUE.TFchTec.ExecSQL;
   DMESTOQUE.TransacEstoque.CommitRetaining;

   BtnCtrlFichaClick(sender);}
end;
//Paulo 30/08/2010: Deleta o item selecionado
procedure TFProduto.BtExcluiMatClick(Sender: TObject);
begin
  inherited;
   //Edmar - 09/10/2014 - Desativado função de ficha técnica desta forma  
    {XAlx:= DMESTOQUE.Alx1.FieldByName('COD_FCHTECPROD').AsInteger;

   //Paulo 30/08/2010: apaga o item da tabela
   DMESTOQUE.TFchTec.Close;
   DMESTOQUE.TFchTec.SQL.Clear;
   DMESTOQUE.TFchTec.SQL.Add('delete  from fchtecprod where fchtecprod.cod_fchtecprod = :CODFICHA');
   DMESTOQUE.TFchTec.ParamByName('CODFICHA').AsInteger:=XAlx;
   DMESTOQUE.TFchTec.ExecSQL;
   DMESTOQUE.TransacEstoque.CommitRetaining;

   BtnCtrlFichaClick(sender);}

end;

procedure TFProduto.BtnProdutoClick(Sender: TObject);
begin
  inherited;
    FiltraTabela(DMEstoque.TProduto, 'PRODUTO', '', '', '');
    If AbrirForm(TFCadProduto, FCadProduto , 1)='Selected'
    Then Begin
        XCOD_PRODUTO:= DMESTOQUE.TProduto.FieldByName('COD_PRODUTO').AsInteger;
        DBDESPROD.TEXT:=DMEstoque.TProduto.FieldByName('DESCRICAO').AsString;
        DBCODPRODUTO.Text:=DMEstoque.TProduto.FieldByName('COD_INTERNO').AsString;

       //REPASSA GRUPO
        DMESTOQUE.Alx.Close;
        DMESTOQUE.Alx.SQL.Clear;
        DMESTOQUE.Alx.SQL.Add(' SELECT grupoprod.cod_interno, grupoprod.descricao FROM grupoprod');
        DMESTOQUE.Alx.SQL.Add(' where grupoprod.cod_grupoprod = :CODPRODUTO');
        DMESTOQUE.Alx.ParamByName('CODPRODUTO').AsString:=DMEstoque.TProduto.FieldByName('cod_grupoprod').AsString;
        DMESTOQUE.Alx.Open;
        If Not DMESTOQUE.Alx.IsEmpty
        Then Begin
        	DBGRUPO.TEXT:=DMEstoque.Alx.FieldByName('DESCRICAO').AsString;
        	EDCODGRUPO.Text:=DMEstoque.Alx.FieldByName('cod_interno').AsString;
        End
        Else Begin
        	DBGRUPO.TEXT:='';
        	EDCODGRUPO.Text:='';
        End;

        //REPASSA SUBPRODUTO
        DMESTOQUE.Alx1.Close;
        DMESTOQUE.Alx1.SQL.Clear;
        DMESTOQUE.Alx1.SQL.Add(' SELECT subgrupoprod.cod_interno, subgrupoprod.descricao FROM subgrupoprod where subgrupoprod.cod_subgrupoprod = :codigo ');
        DMESTOQUE.Alx1.ParamByName('codigo').AsString:=DMEstoque.TProduto.FieldByName('cod_subgrupoprod').AsString;
        DMESTOQUE.Alx1.Open;
        If Not DMESTOQUE.Alx1.IsEmpty
        Then Begin
        	DBSUBGRUPO.TEXT:=DMESTOQUE.Alx1.FieldByName('DESCRICAO').AsString;
        	EDCODSUBGRUPO.Text:=DMESTOQUE.Alx1.FieldByName('COD_INTERNO').AsString;
        End
        Else Begin
        	DBSUBGRUPO.TEXT:='';
        	EDCODSUBGRUPO.Text:='';
        End;
    End;
end;

procedure TFProduto.DBCODPRODUTOKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
	If Key=#13
   Then Begin
      If FiltraTabela(DMEstoque.TProduto, 'PRODUTO', 'cod_interno', DBCODPRODUTO.Text, '')=True
      Then Begin
          XCOD_PRODUTO:= DMESTOQUE.TProduto.FieldByName('COD_PRODUTO').AsInteger;
          DBDESPROD.TEXT:=DMEstoque.TProduto.FieldByName('DESCRICAO').AsString;
          DBCODPRODUTO.Text:=DMEstoque.TProduto.FieldByName('COD_INTERNO').AsString;

         //REPASSA GRUPO
          DMESTOQUE.Alx.Close;
          DMESTOQUE.Alx.SQL.Clear;
          DMESTOQUE.Alx.SQL.Add(' SELECT grupoprod.cod_interno, grupoprod.descricao FROM grupoprod');
          DMESTOQUE.Alx.SQL.Add(' where grupoprod.cod_grupoprod = :CODPRODUTO');
          DMESTOQUE.Alx.ParamByName('CODPRODUTO').AsString:=DMEstoque.TProduto.FieldByName('cod_grupoprod').AsString;
          DMESTOQUE.Alx.Open;
          If Not DMESTOQUE.Alx.IsEmpty
          Then Begin
             DBGRUPO.TEXT:=DMEstoque.Alx.FieldByName('DESCRICAO').AsString;
             EDCODGRUPO.Text:=DMEstoque.Alx.FieldByName('cod_interno').AsString;
          End
          Else Begin
             DBGRUPO.TEXT:='';
             EDCODGRUPO.Text:='';
          End;

          //REPASSA SUBPRODUTO
          DMESTOQUE.Alx1.Close;
          DMESTOQUE.Alx1.SQL.Clear;
          DMESTOQUE.Alx1.SQL.Add(' SELECT subgrupoprod.cod_interno, subgrupoprod.descricao FROM subgrupoprod where subgrupoprod.cod_subgrupoprod = :codigo ');
          DMESTOQUE.Alx1.ParamByName('codigo').AsString:=DMEstoque.TProduto.FieldByName('cod_subgrupoprod').AsString;
          DMESTOQUE.Alx1.Open;
          If Not DMESTOQUE.Alx1.IsEmpty
          Then Begin
             DBSUBGRUPO.TEXT:=DMESTOQUE.Alx1.FieldByName('DESCRICAO').AsString;
             EDCODSUBGRUPO.Text:=DMESTOQUE.Alx1.FieldByName('COD_INTERNO').AsString;
          End
          Else Begin
             DBSUBGRUPO.TEXT:='';
             EDCODSUBGRUPO.Text:='';
          End;
      End
      Else Begin
         XCOD_PRODUTO:=-1;
         DBCODPRODUTO.Text:='';
         DBDESPROD.Text:='';
      End;
   End;
end;

procedure TFProduto.BtnSubGrupoClick(Sender: TObject);
begin
  inherited;
    FiltraTabela(DMEstoque.TSubgru, 'subgrupoprod', '', '', '');
    If AbrirForm(TFCadSubgrupo, FCadSubgrupo, 1)='Selected'
    Then Begin
		 XCodSubgrupo:=DMEstoque.TSubgru.FieldByName('cod_subgrupoprod').AsInteger;
        DbSubGrupo.TEXT:=DMEstoque.TSubgru.FieldByName('DESCRICAO').AsString;
        EDCODSUBGRUPO.Text:=DMEstoque.TSubgru.FieldByName('cod_subgrupoprod').AsString;
    End;
end;

procedure TFProduto.BtnGrupoClick(Sender: TObject);
begin
  inherited;
    FiltraTabela(DMEstoque.TGrupo, 'grupoprod', '', '', '');
    If AbrirForm(TFCadGrupo, FCadGrupo, 1)='Selected'
    Then Begin
		 XCodGrupo:=DMEstoque.TGrupo.FieldByName('cod_grupoprod').AsInteger;
        DBGRUPO.TEXT:=DMEstoque.TGrupo.FieldByName('DESCRICAO').AsString;
        EDCODGRUPO.Text:=DMEstoque.TGrupo.FieldByName('cod_grupoprod').AsString;
    End;
end;

procedure TFProduto.BTNCSTClick(Sender: TObject);
begin
  inherited;
    FiltraTabela(DMEstoque.TCST, 'cst', '', '', '');
    If AbrirForm(TFCadCST, FCadCST, 1)='Selected'
    Then Begin
		 XCST:=DMEstoque.TCST.FieldByName('cod_cst').AsInteger;
        CodSitTrib.Text:=DMEstoque.TCST.FieldByName('cod_sit_trib').AsString;
        DescSitTrib.Text:=DMEstoque.TCST.FieldByName('descricao').AsString;
    End;
end;

procedure TFProduto.BtnUnidadeCompraClick(Sender: TObject);
begin
  inherited;
    FiltraTabela(DMEstoque.TUnidade, 'unidade', '', '', '');
    If AbrirForm(TFCadUnidade, FCadUnidade, 1)='Selected'
    Then Begin
		 XCodUnidadeCompra:=DMEstoque.TUnidade.FieldByName('cod_unidade').AsInteger;
        EdCodUnidadeCompra.Text:=DMEstoque.TUnidade.FieldByName('cod_unidade').AsString;
        EdUnidadeCompra.Text:=DMEstoque.TUnidade.FieldByName('sigla_unid').AsString+'-'+DMEstoque.TUnidade.FieldByName('desc_unid').AsString;
    End;
end;

procedure TFProduto.EdCodUnidadeCompraKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  	If Key=VK_RETURN
   Then Begin
		If FiltraTabela(DMEstoque.TUnidade, 'unidade', 'cod_unidade', EdCodUnidadeCompra.Text, '')=True
      	Then Begin
			XCodUnidadeCompra:=DMEstoque.TUnidade.FieldByName('cod_unidade').AsInteger;
        	EdCodUnidadeCompra.Text:=DMEstoque.TUnidade.FieldByName('cod_unidade').AsString;
        	EdUnidadeCompra.Text:=DMEstoque.TUnidade.FieldByName('sigla_unid').AsString+'-'+DMEstoque.TUnidade.FieldByName('desc_unid').AsString;
    	End
       Else Begin
			XCodUnidadeCompra:=-1;
        	EdCodUnidadeCompra.Text:='';
        	EdUnidadeCompra.Text:='';
       End;
   End;
end;

procedure TFProduto.EdCodUnidadeVendaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  	If Key=VK_RETURN
   Then Begin
		If FiltraTabela(DMEstoque.TUnidade, 'unidade', 'cod_unidade', EdCodUnidadeVenda.Text, '')=True
      	Then Begin
			XCodUnidadeVenda:=DMEstoque.TUnidade.FieldByName('cod_unidade').AsInteger;
        	EdCodUnidadeVenda.Text:=DMEstoque.TUnidade.FieldByName('cod_unidade').AsString;
        	EdUnidadeVenda.Text:=DMEstoque.TUnidade.FieldByName('sigla_unid').AsString+'-'+DMEstoque.TUnidade.FieldByName('desc_unid').AsString;
    	End
       Else Begin
			XCodUnidadeVenda:=-1;
        	EdCodUnidadeVenda.Text:='';
        	EdUnidadeVenda.Text:='';
       End;
   End;
end;

procedure TFProduto.BitBtn3Click(Sender: TObject);
begin
  inherited;
    FiltraTabela(DMEstoque.TUnidade, 'unidade', '', '', '');
    If AbrirForm(TFCadUnidade, FCadUnidade, 1)='Selected'
    Then Begin
        XCodUnidadeVenda:=DMEstoque.TUnidade.FieldByName('cod_unidade').AsInteger;
        EdCodUnidadeVenda.Text:=DMEstoque.TUnidade.FieldByName('cod_unidade').AsString;
        EdUnidadeVenda.Text:=DMEstoque.TUnidade.FieldByName('sigla_unid').AsString+'-'+DMEstoque.TUnidade.FieldByName('desc_unid').AsString;
    End;
end;

procedure TFProduto.EdCodBarraEnter(Sender: TObject);
begin
  inherited;
   EdCodBarra.Color:=$00A6FFFF;
end;

procedure TFProduto.EdCodBarraExit(Sender: TObject);
begin
  inherited;
	EdCodBarra.Color:=clWindow;
end;

procedure TFProduto.EdCtrlIntExit(Sender: TObject);
begin
  inherited;
	EdCtrlInt.Color:=clWindow;
end;

procedure TFProduto.EDCodFabExit(Sender: TObject);
begin
  inherited;
	EDCodFab.Color:=clWindow;
end;

procedure TFProduto.EDSimilarExit(Sender: TObject);
begin
  inherited;
   EDSimilar.Color:=clWindow;
end;

procedure TFProduto.EDProdutoEnter(Sender: TObject);
begin
  inherited;
   EdProduto.Color:=$00A6FFFF;
end;

procedure TFProduto.EDProdutoExit(Sender: TObject);
begin
  inherited;
	EdProduto.Color:=clWindow;
end;

procedure TFProduto.Button1Click(Sender: TObject);
begin
  inherited;
  	//abre formulario de produto para seleção
	If AbrirForm(TFCadAcessorios, FCadAcessorios, 1)='Selected'
   Then Begin
       //XCOD_ITEMACESSORIO:=FMenu.XCodSlave;
       XCOD_ITEMACESSORIO := DMESTOQUE.Alx4.FieldByName('cod_estoque').AsInteger;
       LAcessorioPesquisado.Caption:=DMESTOQUE.Alx4.FieldByName('DESCRICAO').AsString;
       EdQuantAcessorio.ValueNumeric:=1;
   End
   Else Begin
   End;
end;

procedure TFProduto.BtnUnidadeCompraExit(Sender: TObject);
begin
  inherited;
  		XCodUnidadeVenda:=DMEstoque.TUnidade.FieldByName('cod_unidade').AsInteger;
       EdCodUnidadeVenda.Text:=DMEstoque.TUnidade.FieldByName('cod_unidade').AsString;
       EdUnidadeVenda.Text:=DMEstoque.TUnidade.FieldByName('sigla_unid').AsString+'-'+DMEstoque.TUnidade.FieldByName('desc_unid').AsString;

end;

procedure TFProduto.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  If (shift=[ssCtrl]) and (key = 83)
   Then Begin
     Try
       if not DirectoryExists('C:\MZR\Arquivos\LayoutGrid\') then begin
           ForceDirectories('C:\MZR\Arquivos\LayoutGrid\');
       end;
       DBGrid1.Columns.SaveToFile('C:\MZR\Arquivos\LayoutGrid\produto.lgm');
       Mensagem('Mzr Sistemas - INFORMAÇÃO', 'Layout da Grid foi salvo com sucesso!', '', 1, 1, false, 'i');
     Except
           Mensagem('Mzr Sistemas - INFORMAÇÃO', 'Falha na tentativa de salvar o layout da grid!', '', 1, 1, false, 'i');
     End;
   End;
end;

procedure TFProduto.PcAdicionaisChange(Sender: TObject);
VAR
  Data: Integer;
  Mes:String;
  Year, Month, Day:word;
begin
  inherited;
	If PcAdicionais.ActivePage=TabSheet6
   Then Begin
   	DecodeDate(Date(), Year, Month, Day);
       edFiltroHistoricoIni.Text:=DateToStr(StrToDate('01/'+IntToStr(Month)+'/'+IntToStr(Year)));
       edFiltroHistoricoFim.Text:=DateToStr(StrToDate(IntToStr(UltDiaMes(Month, Year))+'/'+IntToStr(Month)+'/'+IntToStr(Year)));
       RgFiltroTipoHistorico.ItemIndex := 0;
       GeraHist;
   End;

	If PcAdicionais.ActivePage=TabSheet14
   Then Begin
       MontaTabelaPreco(XCOD_ESTOQUE);
       PAdicionaTabelaFaixa.Visible:=False;
       PNovaFaixaPreco.Visible:=False;
       PNovaTabela.Visible:=False;
       PEditaCelula.Visible:=False;
   End;
	If PcAdicionais.ActivePage=TabSheet15
   Then Begin
   	FiltraAcessorios(XCOD_ESTOQUE);
		LimpaLabelsAcessorios;
   End;
   If PcAdicionais.ActivePage=TabSheet13
   Then Begin
       DMESTOQUE.Alx.Close;
       DMESTOQUE.Alx.SQL.Clear;
       DMESTOQUE.Alx.SQL.Add(' Select  plncta.cod_plncta as Codigo, plncta.descricao AS Conta from plncta where (plncta.cod_estoque=:codigo) and (plncta.tipo=''N'') ');
       DMESTOQUE.Alx.SQL.Add(' order by plncta.classificacao ' );
       DMESTOQUE.Alx.ParamByName('CODIGO').AsInteger:=XCOD_ESTOQUE;
       DMESTOQUE.Alx.Open;
       DbGridContas.DataSource:=DMESTOQUE.DSAlx;
   End;
end;


//Paulo 04/12/2010: Escreve o corpo do relatório 
procedure TFProduto.RvSystem1Print(Sender: TObject);
var
	I, XCont, XControleLote,  Xcol2, XLinha,Xlinha2 : Integer;
   Xcol1,Xalx,xcol3:Real;
begin
   Xcont:=1;
	//Determino a coluna
   Xcol1:= 6;
   Xcol2:= 6;
   xcol3:=3.7;
   Xalx:= 3.7;
   XLinha:= 5;
   Xlinha2:= 5;

   XIVet:=1;
   XContVet:=1;
   XControleLote:=1;

   //Escreve o lote
   DMESTOQUE.Alx4.Close;
   DMESTOQUE.Alx4.SQL.Clear;
  	DMESTOQUE.Alx4.SQL.Add('select lote.numero, lote.cod_lote from lote');
   DMESTOQUE.Alx4.SQL.Add('order by lote.numero');
   DMESTOQUE.Alx4.Open;
   DMESTOQUE.Alx4.First;
   
   While not DMESTOQUE.Alx4.Eof do
   begin
   	//Paulo 07/12/2010: Para mudar de folha
   	IF Xcol1 > 24 THEN
       begin
           RVSystem1.BaseReport.NewPage;
           Xcol1:= 6;
           XControleLote:= 1;
           XLinha:= 5;
        end;

      if(XMat = 1)then
       begin
          DMESTOQUE.Alx.Close;
          DMESTOQUE.Alx.SQL.Clear;
          DMESTOQUE.Alx.SQL.Add('select distinct cod_lote_saida from producaolote');
          DMESTOQUE.Alx.Open;
       end
       else begin
          DMESTOQUE.Alx.Close;
          DMESTOQUE.Alx.SQL.Clear;
          DMESTOQUE.Alx.SQL.Add('select distinct cod_lote_ent from producaolote');
          DMESTOQUE.Alx.Open;
       end;
       DMESTOQUE.Alx.First;

       RVSystem1.BaseReport.GotoXY(Xcol1,4);
       RVSystem1.BaseReport.FontColor := clBlue;
       RVSystem1.BaseReport.FontSize := 10;
       RVSystem1.BaseReport.FontName := 'Arial';
       RVSystem1.BaseReport.FontColor := clBlue;
       RVSystem1.BaseReport.Print('Lote '+IntToStr(DMESTOQUE.Alx4.FieldByName('numero').Asinteger));
      // RVSystem1.BaseReport.MoveTo(1,XLinha+0.2);
      // RVSystem1.BaseReport.LineTo(5,XLinha+0.2);

       While not DMESTOQUE.Alx.Eof do
       begin
          	
           if(XMat = 1)then
           begin
               //Escreve a matéria prima
               DMESTOQUE.Alx5.Close;
               DMESTOQUE.Alx5.SQL.Clear;
               DMESTOQUE.Alx5.SQL.Add('select  vwsimilar.descricao,estoquelote.COD_ESTOQUE, estoquelote.cod_lote from estoquelote	');
               DMESTOQUE.Alx5.SQL.Add('left join vwsimilar on vwsimilar.cod_estoque = estoquelote.cod_estoque');
               DMESTOQUE.Alx5.SQL.Add('where estoquelote.cod_estoquelote = :LOTESAIDA');
               DMESTOQUE.Alx5.SQL.Add('order by estoquelote.cod_lote ');
               DMESTOQUE.Alx5.ParamByName('LOTESAIDA').AsInteger := DMESTOQUE.Alx.FieldByName('COD_LOTE_SAIDA').AsInteger;
               DMESTOQUE.Alx5.Open;
           end
           else begin
               //Escreve o produto
               DMESTOQUE.Alx5.Close;
               DMESTOQUE.Alx5.SQL.Clear;
               DMESTOQUE.Alx5.SQL.Add('select  vwsimilar.descricao,estoquelote.COD_ESTOQUE, estoquelote.cod_lote from estoquelote	');
               DMESTOQUE.Alx5.SQL.Add('left join vwsimilar on vwsimilar.cod_estoque = estoquelote.cod_estoque');
               DMESTOQUE.Alx5.SQL.Add('where estoquelote.cod_estoquelote = :LOTEENTRADA');
               DMESTOQUE.Alx5.SQL.Add('order by estoquelote.cod_lote ');
               DMESTOQUE.Alx5.ParamByName('LOTEENTRADA').AsInteger := DMESTOQUE.Alx.FieldByName('COD_LOTE_ENT').AsInteger;
               DMESTOQUE.Alx5.Open;
           end;


           if (VerificaProdutoRepetido(DMESTOQUE.Alx5.FieldByName('COD_ESTOQUE').AsInteger) = True)then
           begin
               if(XControleLote = 1)then
               begin
                   RVSystem1.BaseReport.GotoXY(1,Xlinha);
                   RVSystem1.BaseReport.FontColor := clRed;
                   RVSystem1.BaseReport.FontSize := 9;
                   RVSystem1.BaseReport.FontName := 'Arial';
                   RVSystem1.BaseReport.FontColor := clRed;
                   RVSystem1.BaseReport.Print(DMESTOQUE.Alx5.FieldByName('descricao').AsString);

                   RVSystem1.BaseReport.MoveTo(1,Xlinha+0.2);
                   RVSystem1.BaseReport.LineTo(1,Xlinha+0.2);

                   Xlinha:= Xlinha+1;

               end;

               //Escreve a quantidade
               DMESTOQUE.Alx3.Close;
               DMESTOQUE.Alx3.SQL.Clear;
               DMESTOQUE.Alx3.SQL.Add('select estoquelote.quantidade from estoquelote');
               DMESTOQUE.Alx3.SQL.Add('where estoquelote.cod_estoque = :ESTOQUE and estoquelote.cod_lote = :LOTE');
               DMESTOQUE.Alx3.ParamByName('ESTOQUE').AsInteger := DMESTOQUE.Alx5.FieldByName('COD_ESTOQUE').AsInteger;
               DMESTOQUE.Alx3.ParamByName('LOTE').AsInteger := DMESTOQUE.Alx4.FieldByName('COD_LOTE').AsInteger;
               DMESTOQUE.Alx3.Open;

               RVSystem1.BaseReport.GotoXY(Xcol1+0.5,Xlinha2);
               RVSystem1.BaseReport.FontColor := clBlack;
               RVSystem1.BaseReport.FontSize := 10;
               RVSystem1.BaseReport.FontName := 'Arial';
               RVSystem1.BaseReport.FontColor := clBlack;
               if (DMESTOQUE.Alx3.FieldByName('quantidade').AsString = '')then
                   RVSystem1.BaseReport.Print('0')
               else
                   RVSystem1.BaseReport.Print(DMESTOQUE.Alx3.FieldByName('quantidade').AsString);
              // RVSystem1.BaseReport.MoveTo(Xcol3,XLinha+0.2);
              // RVSystem1.BaseReport.LineTo(Xcol3+5,XLinha+0.2);
           end;

           Xcol3:= Xcol3+5;
           Xlinha2:= Xlinha2+1;
           Xalx:= Xalx+5;

           DMESTOQUE.Alx.Next;
       end;
       
       LimpaVetor;
       XIVet:=1;
   	XContVet:=1;
       DMESTOQUE.Alx4.Next;
       XControleLote:=2;
       Xcol1:=Xcol1+2.5;
       Xlinha2:=5;
       Xcol3:= 3.7;
       Xcont:=Xcont+1;
    end;
    {
    //Desenhar as linhas na vertical
    xcol3:= 5.8;
    for I:=1 to XCont  do
    begin
       RVSystem1.BaseReport.MoveTo(Xcol3,3.5);
    	RVSystem1.BaseReport.LineTo(Xcol3,XLinha-0.8);
       Xcol3:= xcol3+2.5;
    end;
    }

    //Escreve os totais
    XLinha2:=5;
    LimpaVetor;
    XIVet:=1;
    xContVet:=1;
    RVSystem1.BaseReport.GotoXY(Xcol1,4);
    RVSystem1.BaseReport.FontColor := clGreen;
    RVSystem1.BaseReport.FontSize := 12;
    RVSystem1.BaseReport.FontName := 'Arial';
    RVSystem1.BaseReport.FontColor := clGreen;
    RVSystem1.BaseReport.Print('TOTAL');

    if(XMat = 1)then
    begin
       DMESTOQUE.Alx.Close;
       DMESTOQUE.Alx.SQL.Clear;
  	    DMESTOQUE.Alx.SQL.Add('select distinct cod_lote_saida from producaolote');
       DMESTOQUE.Alx.Open;
    end
    else begin
      	DMESTOQUE.Alx.Close;
       DMESTOQUE.Alx.SQL.Clear;
  	    DMESTOQUE.Alx.SQL.Add('select distinct cod_lote_ent from producaolote');
       DMESTOQUE.Alx.Open;
    end;
    DMESTOQUE.Alx.First;

    while not DMESTOQUE.Alx.Eof do
    begin
       //Desenhar as linhas na vertical
       //RVSystem1.BaseReport.MoveTo(Xcol3,3.5);
      // RVSystem1.BaseReport.LineTo(Xcol3,XLinha-0.8);

       if XMat = 1 then
       begin
           DMESTOQUE.Alx5.Close;
           DMESTOQUE.Alx5.SQL.Clear;
           DMESTOQUE.Alx5.SQL.Add('select distinct estoquelote.COD_ESTOQUE from estoquelote	');
           DMESTOQUE.Alx5.SQL.Add('where estoquelote.cod_estoquelote = :LOTESAIDA');
           DMESTOQUE.Alx5.SQL.Add('order by estoquelote.cod_lote');
           DMESTOQUE.Alx5.ParamByName('LOTESAIDA').AsInteger := DMESTOQUE.Alx.FieldByName('COD_LOTE_SAIDA').AsInteger;
           DMESTOQUE.Alx5.Open;
       end
       else begin
           DMESTOQUE.Alx5.Close;
           DMESTOQUE.Alx5.SQL.Clear;
           DMESTOQUE.Alx5.SQL.Add('select distinct estoquelote.COD_ESTOQUE from estoquelote	');
           DMESTOQUE.Alx5.SQL.Add('where estoquelote.cod_estoquelote = :LOTEENTRADA');
           DMESTOQUE.Alx5.SQL.Add('order by estoquelote.cod_lote');
           DMESTOQUE.Alx5.ParamByName('LOTEENTRADA').AsInteger := DMESTOQUE.Alx.FieldByName('COD_LOTE_ENT').AsInteger;
           DMESTOQUE.Alx5.Open;
       end;

       DMESTOQUE.Alx3.Close;
    	DMESTOQUE.Alx3.SQL.Clear;
       DMESTOQUE.Alx3.SQL.Add('select SUM(estoquelote.quantidade) from estoquelote');
       DMESTOQUE.Alx3.SQL.Add('where estoquelote.cod_estoque =:ESTOQUE');
       DMESTOQUE.Alx3.ParamByName('ESTOQUE').AsInteger := DMESTOQUE.Alx5.FieldByName('COD_ESTOQUE').AsInteger;
       DMESTOQUE.Alx3.Open;

       if (VerificaProdutoRepetido(DMESTOQUE.Alx5.FieldByName('COD_ESTOQUE').AsInteger) = True)then
       begin
           RVSystem1.BaseReport.GotoXY(Xcol1+0.5,XLinha2);
           RVSystem1.BaseReport.FontColor := clGreen;
           RVSystem1.BaseReport.FontSize := 10;
           RVSystem1.BaseReport.FontName := 'Arial';
           RVSystem1.BaseReport.FontColor := clGreen;
           RVSystem1.BaseReport.Print(FloatToStr(DMESTOQUE.Alx3.FieldByName('SUM').AsFloat));
       end;
       Xlinha2:= Xlinha2+1;

       DMESTOQUE.Alx.Next;

    END;


     


end;

//Paulo 03/12/2010: Escreve o cabeçalho da página
procedure TFProduto.RvSystem1PrintHeader(Sender: TObject);
var
	Xcol1: Real;
   Xlote:Integer;
begin
	with Sender as TBaseReport do
	begin
        SetFont('Arial',10);
        Bold := True;
        Print(DMMACS.TEmpresa.FieldByName('FANTASIA').AsString+' / Fone:'+DMMACS.TEmpresa.FieldByName('FONE').AsString);
        SetFont('Arial',9);
        Bold := False;
        PrintRight('Emissão: '+DateToStr(Date()),PageWidth-2);
        NewLine;

        SetFont('Arial',9);
        Bold := False;
        Print('Loja: '+DMMACS.TLoja.FieldByName('DESCRICAO').AsString);
        PrintRight('Hora: '+TimeToStr(Time()),PageWidth-2);
        NewLine;
        PrintRight('Pág. ' + Macro(midCurrentPage) + ' de ' + Macro(midTotalPages),PageWidth-2);
        NewLine;
        

		 SetFont('Arial',12);
        Bold := True;
        if XMat = 1 then
        	PrintCenter('Relatório de Estoque de Matéria Prima por Lote',PageWidth/2)
        else
        	PrintCenter('Relatório de Estoque de Produtos por Lote',PageWidth/2);
        NewLine;
        MoveTo(1.0,3.0);
        LineTo(27,3.0);
        {
        Xcol1:= 6;
        DMESTOQUE.Alx4.Close;
        DMESTOQUE.Alx4.SQL.Clear;
        DMESTOQUE.Alx4.SQL.Add('select lote.numero, lote.cod_lote from lote');
        DMESTOQUE.Alx4.SQL.Add('order by lote.numero');
        DMESTOQUE.Alx4.Open;
        DMESTOQUE.Alx4.First;

        While not DMESTOQUE.Alx4.Eof do
        begin

           RVSystem1.BaseReport.GotoXY(Xcol1,4);
           RVSystem1.BaseReport.FontColor := clBlue;
           RVSystem1.BaseReport.FontSize := 10;
           RVSystem1.BaseReport.FontName := 'Arial';
           RVSystem1.BaseReport.FontColor := clBlue;
           RVSystem1.BaseReport.Print('Lote '+IntToStr(DMESTOQUE.Alx4.FieldByName('numero').Asinteger));
           Xcol1:=Xcol1+2.5;

           DMESTOQUE.Alx4.Next;

        end;

        MoveTo(1.0,4.2);
        LineTo(Xcol1+2.5,4.2);
        }
   end;


end;

//Paulo 03/12/2010: Escreve o rodapé da página
procedure TFProduto.RvSystem1PrintFooter(Sender: TObject);
begin
		with Sender as TBaseReport do
        begin
            MoveTo(1.0,19.5);
            LineTo(27,19.5);
            YPos := 20;
            SetFont('Arial',7);
            FontColor:=clGray;
            Bold := False;
            PrintCenter(DMMACS.TLoja.FieldByName('TMP3').AsString,PageWidth/2);
            NewLine;
            Print(DMMACS.TLoja.FieldByName('TMP2').AsString);
        end;
end;


procedure TFProduto.ProdutosFinClick(Sender: TObject);
begin
  inherited;
       XMat:=0;
       RVSystem1.SystemPreview.FormState := wsMaximized;
   	RVSystem1.DefaultDest := rdPreview; { poderia ser rdPrinter para impressora    }
   	RVSystem1.SystemPReview.RulerType := rtBothCm; // Para mostrar a reguá n preview
   	RVSystem1.Execute;
end;

//Paulo 04/12/2010: Para imprimir o estoque de matéria prima por lote 
procedure TFProduto.MatriaPrima1Click(Sender: TObject);
begin
  inherited;
		XMat:=1;
       RVSystem1.SystemPreview.FormState := wsMaximized;
   	RVSystem1.DefaultDest := rdPreview; { poderia ser rdPrinter para impressora    }
   	RVSystem1.SystemPReview.RulerType := rtBothCm; // Para mostrar a reguá n preview
   	RVSystem1.Execute;
end;

//Paulo 04/12/2010: Função para verificar se o produto esta repetido
Function TFProduto.VerificaProdutoRepetido(XcodEstoque:integer):Boolean;
var
   Xi:Integer;
   XAchou:integer;
begin
	 XAchou:=0;	
	 //Paulo 04/12/2010: Verifica se já existe o cod no vetor
    for Xi:=1 to XContVet  do
    begin
        if VetorPoduto[Xi] = XcodEstoque then
            XAchou:=1;
    end;

    if XAchou = 0 then
    begin
    	//Paulo 04/12/2010: Adiciono os cod estoque no vetor
    	VetorPoduto[XIVet]:=XcodEstoque;
    	XIVet:=XIVet+1;
    	XContVet:=XContVet+1;
       VerificaProdutoRepetido:=True;
    end
    else begin
    	VerificaProdutoRepetido:=False;
    end;
end;

//Paulo 04/12/2010: Função para limpar o vetor
Procedure TFProduto.LimpaVetor;
var
	Xi:Integer;
begin
    
    for Xi:=1 to XContVet  do
    begin
       VetorPoduto[Xi]:= 0;
    end;

end;

procedure TFProduto.BitBtn1Click(Sender: TObject);
begin
  inherited;
   //CHECA RELAÇÃO ENTRE TABELAS
   If CheckRelation('COD_PLNCTA', DMESTOQUE.Alx.FieldByName('Codigo').AsString, ['CTARECEBER', 'ctapagar'], 2)=True
   Then Begin
        Mensagem('INFORMAÇÃO AO USUÁRIO', 'Este Conta possui referências pendentes e não pode ser apagado!' , '', 1, 1, False, 'i');
        Exit;
   End;
   If CheckRelation('COD_PLNCTAFIL', DMESTOQUE.Alx.FieldByName('Codigo').AsString, ['LANCAIXA'], 1)=True
   Then Begin
        Mensagem('INFORMAÇÃO AO USUÁRIO', 'Este Conta possui referências pendentes e não pode ser apagado!' , '', 1, 1, False, 'i');
        Exit;
   End;

   If MessageDlg('Remover a conta?', mtWarning, [mbYes, mbNo], 0)=mrYes
   Then Begin
       DMESTOQUE.Alx1.Close;
       DMESTOQUE.Alx1.SQL.Clear;
       DMESTOQUE.Alx1.SQL.Add(' Delete from plncta where (plncta.cod_plncta=:codigo) ');
       DMESTOQUE.Alx1.ParamByName('CODIGO').AsInteger:=DMESTOQUE.Alx.FieldByName('Codigo').AsInteger;
       DMESTOQUE.Alx1.ExecSQL;
       DMESTOQUE.TransacEstoque.CommitRetaining;
       DMESTOQUE.Alx.Close;
       DMESTOQUE.Alx.SQL.Clear;
       DMESTOQUE.Alx.SQL.Add(' Select  plncta.cod_plncta Codigo, plncta.descricao AS Conta from plncta where (plncta.cod_estoque=:codigo) and (plncta.tipo=''N'') ');
       DMESTOQUE.Alx.SQL.Add(' order by plncta.classificacao ' );
       DMESTOQUE.Alx.ParamByName('CODIGO').AsInteger:=XCOD_ESTOQUE;
       DMESTOQUE.Alx.Open;
   End;  
end;


procedure TFProduto.BitBtn2Click(Sender: TObject);
begin
  inherited;
	//LIBERA TODAS AS CONTAS PARA CONSUTA
	filtraTabela(DMCONTA.TPlnCta, 'PLNCTA', 'COD_LOJA', '', ' (COD_FILIAL = '+FMenu.LCODEMPRESA.Caption+') ORDER BY CLASSIFICACAO');

   // armazena o tipo do plano de conta que vai ser filtrado. Se for "C" buscará apenas contas de creditos, e se for "D" irá selecionar apenas contas de despesa. Estando sem valor, o formulario vai trazer todas as contas
   XTIPO_CONTA := '';

   AbrirForm(TFConsPlnCta, FConsPlnCta, 0);

   DMESTOQUE.Alx.Close;
   DMESTOQUE.Alx.SQL.Clear;
   DMESTOQUE.Alx.SQL.Add(' Select  plncta.cod_plncta Codigo, plncta.descricao AS Conta from plncta where (plncta.cod_estoque=:codigo) and (plncta.tipo=''N'') ');
   DMESTOQUE.Alx.SQL.Add(' order by plncta.classificacao ' );
   DMESTOQUE.Alx.ParamByName('CODIGO').AsInteger:=XCOD_ESTOQUE;
   DMESTOQUE.Alx.Open;
end;

procedure TFProduto.BitBtn4Click(Sender: TObject);
Var
   XCodNovaConta: Integer;
begin
  inherited;
   If MessageDlg('Esta opção permite implantar para este produto todas as contas padrões.'+#13+#10+'Deseja continuar implantando as contas?', mtWarning, [mbYes, mbNo], 0)=MrYes
   Then Begin
       DMCONTA.TAlx.Close;
       DMCONTA.TAlx.SQL.Clear;
       DMCONTA.TAlx.SQL.Add(' Select * from plncta Where plncta.contapadrao='+#39+'S'+#39);
       DMCONTA.TAlx.Open;
       DMCONTA.TAlx.First;
       While not DMCONTA.TAlx.Eof do
       Begin
           XCodNovaConta:=InserReg(DMCONTA.TPlnCta, 'PLNCTA', 'COD_PLNCTA');
           DMCONTA.TPlnCta.FieldByName('COD_PLNCTA').AsInteger:=XCodNovaConta;
           DMCONTA.TPlnCta.FieldByName('DESCRICAO').AsString:=DMESTOQUE.TSubProd.FieldByName('CONTRINT').AsString+' - '+DMCONTA.TAlx.FieldByName('DESCRICAO').AsString;
           DMCONTA.TPlnCta.FieldByName('CLASSIFICACAO').AsString:=DMCONTA.TAlx.FieldByName('CLASSIFICACAO').AsString+'.01';
           DMCONTA.TPlnCta.FieldByName('NATUREZA').AsString:='D';
           DMCONTA.TPlnCta.FieldByName('TIPO').AsString:='N';
           DMCONTA.TPlnCta.FieldByName('MOSTRANORMAL').AsString:='1';
           DMCONTA.TPlnCta.FieldByName('CONTAPADRAO').AsString:='N';
           DMCONTA.TPlnCta.FieldByName('COD_FILIAL').AsString:=FMenu.LCODEMPRESA.Caption;
           DMCONTA.TPlnCta.FieldByName('COD_ESTOQUE').AsString:=DMESTOQUE.TEstoque.FieldByName('COD_ESTOQUE').AsString;
           DMCONTA.TPlnCta.Post;
           DMCONTA.TAlx.Next;
       End;
       DMCONTA.IBT.CommitRetaining;

       DMESTOQUE.Alx.Close;
       DMESTOQUE.Alx.SQL.Clear;
       DMESTOQUE.Alx.SQL.Add(' Select  plncta.cod_plncta Codigo, plncta.descricao AS Conta from plncta where (plncta.cod_estoque=:codigo) and (plncta.tipo=''N'') ');
       DMESTOQUE.Alx.SQL.Add(' order by plncta.classificacao ' );
       DMESTOQUE.Alx.ParamByName('CODIGO').AsInteger:=XCOD_ESTOQUE;
       DMESTOQUE.Alx.Open;
   End
end;

procedure TFProduto.ProdutosparaVenda1Click(Sender: TObject);
begin
  inherited;
       //Paulo 23/03/2011: Seleciona o contrint, descrição, especificação e o valor dos produtos a vista
       DMESTOQUE.TRel.Close;
       DMESTOQUE.TRel.SQL.Clear;
       DMESTOQUE.TRel.SQL.Add('select subproduto.contrint, subproduto.descricao, subproduto.especificacao,');
       DMESTOQUE.TRel.SQL.Add('estoque.vendvarp as valortroca, estoque.vendatav as valorvenda, estoque.estfisico from subproduto');
       DMESTOQUE.TRel.SQL.Add('left join estoque on estoque.cod_subprod = subproduto.cod_subproduto');
       DMESTOQUE.TRel.SQL.Add('where estoque.estfisico > ''0'' and ((subproduto.ATIVO = ''S'') or (subproduto.ATIVO is null))');
       DMESTOQUE.TRel.SQL.Add('order by subproduto.descricao');
       DMESTOQUE.TRel.Open;

       FSRelProdVend.LoadFromFile('C:\MZR\MACS\Rel\FrfRelProdutosVenda.frf');
       FSRelProdVend.ShowReport;

end;                                      

procedure TFProduto.CustodoVeculo1Click(Sender: TObject);
begin
  inherited;
//   AbrirForm(TFCadOferta, FCadOferta, 0);
   ReturnResultContas;
end;

procedure TFProduto.PPromocaoClick(Sender: TObject);
begin
  inherited;
	PMContas.Popup(Left+PConsulta.left+Painel.left+ PPromocao.Left, top+PConsulta.Top+Painel.top+PPromocao.Top+BtnRelatorio.Height);
end;

procedure TFProduto.DespesadeTodososVeculosfiltradopordata1Click(
  Sender: TObject);
begin
  inherited;
	 FMenu.TIPOREL:='DEPESASVEICULOS';
    AbrirForm(TFRelData, FRelData, 0);
end;

procedure TFProduto.AjustarPlanodecontas1Click(Sender: TObject);
Var
	XCodNovaConta: Integer;
begin
  inherited;
    If Mensagem('Confirmação do usuário', 'Deseja realmente efetuar ajuste das contas para todos os produtos?', '', 2, 3, False, 'c')=2
    Then Begin
       //Selecionamos  todos os produtos
       DMESTOQUE.WSimilar.Close;
       DMESTOQUE.WSimilar.SQL.Clear;
       DMESTOQUE.WSimilar.SQL.Add(' Select * from vwsimilar ');
       DMESTOQUE.WSimilar.Open;
       DMESTOQUE.WSimilar.First;

       //Selecionamos todos as cotnas padrão
       DMESTOQUE.Alx.Close;
       DMESTOQUE.Alx.SQL.Clear;
       DMESTOQUE.Alx.SQL.Add(' Select * from plncta where plncta.contapadrao= '+#39+'S'+#39);
       DMESTOQUE.Alx.Open;

       //percorremos todos os produtos filtrando por todas as contas padrão procurando por cada produto e cotna
       DMESTOQUE.WSimilar.First;
       While not DMESTOQUE.WSimilar.Eof do
       Begin
			If DMESTOQUE.WSimilar.FieldByName('COD_ESTOQUE').AsInteger=79 Then
           	XCodNovaConta:=XCodNovaConta;
           DMESTOQUE.Alx.First;
           While not DMESTOQUE.Alx.Eof do
           Begin
           	If DMESTOQUE.Alx.FieldByName('CLASSIFICACAO').AsString='3.2.04.0019' Then
					XCodNovaConta:=XCodNovaConta;
               //Procuramos para verificar se este produto já contem a conta especificada
               DMESTOQUE.Alx1.Close;
               DMESTOQUE.Alx1.SQL.Clear;
               DMESTOQUE.Alx1.SQL.Add(' select * FROM plncta where (plncta.classificacao LIKE '+#39+DMESTOQUE.Alx.FieldByName('CLASSIFICACAO').AsString+'%'+#39+') and (plncta.cod_estoque=:CodEstoque)');
               DMESTOQUE.Alx1.ParamByName('CodEstoque').AsInteger:=DMESTOQUE.WSimilar.FieldByName('COD_ESTOQUE').AsInteger;
               DMESTOQUE.Alx1.Open;
               If DMESTOQUE.Alx1.IsEmpty
               Then Begin
                   //Caso não exista devemos criar
                   XCodNovaConta:=InserReg(DMCONTA.TPlnCta, 'PLNCTA', 'COD_PLNCTA');
                   DMCONTA.TPlnCta.FieldByName('COD_PLNCTA').AsInteger:=XCodNovaConta;
                   DMCONTA.TPlnCta.FieldByName('DESCRICAO').AsString:=DMESTOQUE.WSimilar.FieldByName('CONTRINT').AsString+' - '+DMESTOQUE.Alx.FieldByName('DESCRICAO').AsString;
                   DMCONTA.TPlnCta.FieldByName('CLASSIFICACAO').AsString:=DMESTOQUE.Alx.FieldByName('CLASSIFICACAO').AsString+'.01';
                   DMCONTA.TPlnCta.FieldByName('NATUREZA').AsString:='D';
                   DMCONTA.TPlnCta.FieldByName('TIPO').AsString:='N';
                   DMCONTA.TPlnCta.FieldByName('MOSTRANORMAL').AsString:='1';
                   DMCONTA.TPlnCta.FieldByName('CONTAPADRAO').AsString:='N';
                   DMCONTA.TPlnCta.FieldByName('COD_FILIAL').AsString:=FMenu.LCODEMPRESA.Caption;
                   DMCONTA.TPlnCta.FieldByName('COD_ESTOQUE').AsString:=DMESTOQUE.WSimilar.FieldByName('COD_ESTOQUE').AsString;
                   DMCONTA.TPlnCta.Post;
               End;
               DMESTOQUE.Alx.Next
           End;
           DMESTOQUE.WSimilar.Next;
       End;
       DMCONTA.IBT.CommitRetaining;
       MessageDlg('Ajuste concluído!', mtWarning, [mbOK], 0);
    End;
end;

procedure TFProduto.DBColorEdit12Exit(Sender: TObject);
begin
  inherited;
   CalculoMargemSeguranca;
end;

procedure TFProduto.DBColorEdit13Exit(Sender: TObject);
begin
  inherited;
   CalculoMargemSeguranca;
end;

procedure TFProduto.BtAddCodClick(Sender: TObject);
begin
  inherited;
       //Paulo 07/07/2011: para adicionar mais de um cód fabricante
       FiltraTabela(DMESTOQUE.TCodBarra,'CODIGOBARRA','COD_ESTOQUE',IntToStr(XCOD_ESTOQUE),'');
       //faz a filtragem para visualização na grid
       FiltraSlaveCodBarra;
       EdAddCodFabr.Text:='';
       XCOD_FORNECEDOR := -1;
       lbNomeFornecedor.Caption := '';
       edCodFornec.Text := '';
       PCodigos.Visible:=True;
       PCodigos.BringToFront;
end;

procedure TFProduto.BtnInsertProdClick(Sender: TObject);
var
   XCod_CodBarra,i:Integer;
   newContent, content : String;
begin
  inherited;
    //Verifica valor válido para a quantidade da embalagem
    newContent := '';
	 content :=	Trim(edQtdEmb.Text);
	 For i:=1 to Length(content) do
    Begin
      if (content[i] in ['0'..'9']) Then
        newContent := NewContent + content[i];
    End;
    if ( (Length(newContent)<= 0) or (StrToInt(newContent)<=0) )Then
    Begin
      Mensagem('INFORMAÇÃO', 'Informe um valor válido para a quantidade da embalagem!', '', 1, 1, False, 'a');
      Exit;
    End;
	if EdAddCodFabr.Text <> '' then
  	begin
   	//Edmar - 19/06/2015 - Faz um SELECT principal para buscar se tem algum codigo de fabricante cadastrado
       //com o mesmo FORNECEDOR. Ou se tem algum subproduto com o mesmo codigo de fabricante e não foi informado nenhum fornecedor
   	DMESTOQUE.Alx.Close;
       DMESTOQUE.Alx.SQL.Clear;
       DMESTOQUE.Alx.SQL.Add(' SELECT FIRST 1 CODIGOBARRA.COD_ESTOQUE  FROM CODIGOBARRA ');
       DMESTOQUE.Alx.SQL.Add(' WHERE ((UPPER(CODIGOBARRA.CODBARRA) = :CODFAB) AND  (CODIGOBARRA.CODFORNERC = :FORNEC)) ');
       DMESTOQUE.Alx.SQL.Add('    OR ((UPPER(CODIGOBARRA.CODBARRA) = :CODFAB) AND  (CODIGOBARRA.CODFORNERC IS NULL)) ');
       DMESTOQUE.Alx.SQL.Add('    OR EXISTS(SELECT FIRST 1 * FROM SUBPRODUTO WHERE (UPPER(SUBPRODUTO.CODPRODFABR) = :CODFAB) AND (:FORNEC = -1)) ');
       DMESTOQUE.Alx.ParamByName('CODFAB').AsString  := UpperCase(EdAddCodFabr.Text);
       DMESTOQUE.Alx.ParamByName('FORNEC').AsInteger := XCOD_FORNECEDOR;
       DMESTOQUE.Alx.Open;

		if DMESTOQUE.Alx.IsEmpty then
       begin
       	//Paulo 07/07/2011: Insere codigo na tabela codigo de barras se não encontrou o codigo
           DMMACS.TALX.Close;
           DMMACS.TALX.SQL.Clear;
           DMMACS.TALX.SQL.Add(' INSERT INTO CODIGOBARRA(COD_CODBARRA, COD_ESTOQUE, CODBARRA, CODFORNERC, QTDEMB)  ');
           DMMACS.TALX.SQL.Add(' VALUES(:COD_CODBARRA, :COD_ESTOQUE, :CODBARRA,  :CODFORNERC, :QTDEMB) ');
           DMMACS.TALX.ParamByName('COD_CODBARRA').AsInteger:=DMMACS.TCodigo.FieldByName('COD_CODBARRA').AsInteger;
           DMMACS.TALX.ParamByName('COD_ESTOQUE').AsInteger:=XCOD_ESTOQUE;
           DMMACS.TALX.ParamByName('CODBARRA').AsString:= EdAddCodFabr.Text;
           DMMACS.TALX.ParamByName('CODFORNERC').AsInteger := XCOD_FORNECEDOR;
           DMMACS.TALX.ParamByName('QTDEMB').AsInteger := StrToInt(EdQtdEmb.Text);
           DMMACS.TALX.ExecSQL;
           DMMACS.Transaction.CommitRetaining;

           DMMACS.TCodigo.Edit;
           DMMACS.TCodigo.FieldByName('COD_CODBARRA').AsInteger:=DMMACS.TCodigo.FieldByName('COD_CODBARRA').AsInteger+1;
           DMMACS.TCodigo.Post;
           DMMACS.IBTCodigo.CommitRetaining;

           FiltraTabela(DMESTOQUE.TCodBarra,'CODIGOBARRA','COD_ESTOQUE',IntToStr(XCOD_ESTOQUE),'');
           EdAddCodFabr.Text := '';
           XCOD_FORNECEDOR := -1;
           lbNomeFornecedor.Caption := '';
           edCodFornec.Text := '';
           //faz a filtragem para visualização na grid
           FiltraSlaveCodBarra;
           EdAddCodFabr.SetFocus;
       end
       else
			MessageDlg('Já existe um item com o mesmo código registrado.', mtWarning, [mbOK], 0);
	end;
end;

procedure TFProduto.BtnDeleteListClick(Sender: TObject);
begin
	//Edmar - 19/06/2015 - recupera os valores do código do fabricante e o fornecedor
   EdAddCodFabr.Text 		  := DMMACS.TALX.FieldByName('CODBARRA').AsString;
   edCodFornec.Text  		  := DMMACS.TALX.FieldByName('COD_INTERNO').AsString;
   lbNomeFornecedor.Caption  := DMMACS.TALX.FieldByName('NOME').AsString;
   XCOD_FORNECEDOR           := IfThen(DMMACS.TALX.FieldByName('COD_FORNEC').AsInteger = 0, -1, DMMACS.TALX.FieldByName('COD_FORNEC').AsInteger);

   try
   	MDO.Query.Close;
       MDO.Query.SQL.Clear;
       MDO.Query.SQL.Add(' DELETE FROM CODIGOBARRA ');
       MDO.Query.SQL.Add(' WHERE (CODIGOBARRA.CODBARRA = :COD_BARRA) ');
       MDO.Query.SQL.Add('   AND (CODIGOBARRA.COD_ESTOQUE = :ESTOQUE) ');
       MDO.Query.SQL.Add('   AND ((CODIGOBARRA.CODFORNERC = :FORNEC) OR (CODIGOBARRA.CODFORNERC = -1) OR (CODIGOBARRA.CODFORNERC = 0)) ');
       MDO.Query.ParamByName('COD_BARRA').AsString := DMMACS.TALX.FieldByName('CODBARRA').AsString;
       MDO.Query.ParamByName('ESTOQUE').AsString := DMMACS.TALX.FieldByName('COD_ESTOQUE').AsString;
       MDO.Query.ParamByName('FORNEC').AsInteger := XCOD_FORNECEDOR;
       MDO.Query.ExecSQL;

       MDO.Transac.CommitRetaining;
   except
       MDO.Transac.RollbackRetaining;
   end;
   FiltraTabela(DMESTOQUE.TCodBarra,'CODIGOBARRA','COD_ESTOQUE',IntToStr(XCOD_ESTOQUE),'');
   //faz a filtragem para visualização na grid
   FiltraSlaveCodBarra;
   EdAddCodFabr.SetFocus;
end;

//Jônatas 16/09/2013 - Filtragem para grid codigobara(Dbgrid7)
Procedure TFProduto.FiltraSlaveCodBarra;
Begin
    DMMACS.TALX.Close;
    DMMACS.TALX.SQL.Clear;
    DMMACS.TALX.SQL.Add(' SELECT CODIGOBARRA.COD_ESTOQUE,CODIGOBARRA.QTDEMB, CODIGOBARRA.CODBARRA, VWFORNEC.COD_INTERNO, VWFORNEC.COD_FORNEC, VWFORNEC.NOME ');
    DMMACS.TALX.SQL.Add(' FROM CODIGOBARRA ');
    DMMACS.TALX.SQL.Add(' LEFT JOIN VWFORNEC ON CODIGOBARRA.CODFORNERC = VWFORNEC.COD_FORNEC ');
    DMMACS.TALX.SQL.Add(' WHERE CODIGOBARRA.COD_ESTOQUE = :COD_ESTOQUE ');
    DMMACS.TALX.ParamByName('COD_ESTOQUE').AsString:=DMESTOQUE.TCodBarra.FieldByName('COD_ESTOQUE').AsString;
    DMMACS.TALX.Open;
    //Jônatas 16/09/2013 - Filtra os dados para a grid codigobarra
    DBGrid7.DataSource:=DMMACS.DSALX;
End;

procedure TFProduto.PCadastroExit(Sender: TObject);
begin
   If PCodigos.Visible=false Then
  inherited;

end;

procedure TFProduto.DetalhamentodeCustosporVeculo1Click(Sender: TObject);
var
   XcodPK:Integer;
begin
  inherited;
        XcodPK:=1;
       //Paulo 20/09/2011: Armazena os dados do lançamento de caixa
       armazenaDadosRealizado;
       FiltraTabela(DMMACS.TMP,'TMP','','','');

       //Paulo 20/09/2011:Carrega em memória os dados de lançamento de caixa
       //REALIZADO//
       DMESTOQUE.Alx.Close;
       DMESTOQUE.Alx.SQL.Clear;
       DMESTOQUE.Alx.SQL.Add('Select tmp.desc1 as HISTORICO, tmp.vlr1 as VALOR, tmp.data1 as DTLANC, tmp.desc2 as TIPO, tmp.desc3 as DOC from tmp ');
       //DMESTOQUE.Alx1.SQL.Add('where tmp.desc1 <>''''');
       DMESTOQUE.Alx.Open;
       
       //Paulo 20/09/2011: Armazena os dados DE pREVISAO
       armazenaDadosPrevisao;
       FiltraTabela(DMMACS.TMP,'TMP','','','');

       //Paulo 20/09/2011:Carrega em memória os dados de Previsao
       //PREVISÃO//
       DMESTOQUE.Alx1.Close;
       DMESTOQUE.Alx1.SQL.Clear;
       DMESTOQUE.Alx1.SQL.Add('Select tmp.desc1 as HISTORICO, tmp.vlr1 as VALOR, tmp.data1 as DTVENC, tmp.desc2 as TIPO, tmp.desc3 as DOC from tmp ');
       //DMESTOQUE.Alx1.SQL.Add('where not (tmp.desc1 is null)');
       DMESTOQUE.Alx1.Open;

       FSRel.LoadFromFile('C:\MZR\MACS\Rel\FrfCustosDetalhado.frf');
       FSRel.ShowReport;





end;

procedure TFProduto.armazenaDadosPrevisao;
begin
       DMCONTA.TPlnCta.Close;
       DMCONTA.TPlnCta.SQL.Clear;
       DMCONTA.TPlnCta.SQL.Add('Select * from plncta ');
       DMCONTA.TPlnCta.SQL.Add(' where plncta.cod_estoque=:codigo order by plncta.classificacao');
       DMCONTA.TPlnCta.ParamByName('codigo').AsInteger:=DMESTOQUE.WSimilar.FieldByName('COD_ESTOQUE').AsInteger;
       DMCONTA.TPlnCta.Open;

       DMMACS.TMP.Close;
       DMMACS.TMP.SQL.Clear;
       DMMACS.TMP.SQL.Add('delete from tmp');
       DMMACS.TMP.ExecSQL;
       DMMACS.Transaction.CommitRetaining;
       DMMACS.TMP.Close;
       DMMACS.TMP.SQL.Clear;
       DMMACS.TMP.SQL.Add('select * from tmp');
       DMMACS.TMP.Open;

       //PERCORRE TODOS OS REGISTRO PARA ACUMULAR VALOR
       DMCONTA.TPlnCta.First;
       While Not DMCONTA.TPlnCta.Eof Do
       Begin
           //Paulo 19/09/2011: seleciona os dados de ENTRADA no caixa
           /////////CTA RECEBER/////////
           DMCONTA.TAlx.Close;
           DMCONTA.TAlx.SQL.Clear;
           DMCONTA.TAlx.SQL.Add('Select * from parcelacr ');
           DMCONTA.TAlx.SQL.Add('left join ctareceber on parcelacr.cod_ctareceber = ctareceber.cod_ctareceber Where (CtaReceber.cod_plncta=:COD_CONTA) AND (parcelacr.fech<>'+#39+'S'+#39+')');
           DMCONTA.TAlx.ParamByName('COD_CONTA').AsInteger:=DMCONTA.TPlnCta.FieldByName('COD_PLNCTA').AsInteger;
           DMCONTA.TAlx.Open;
           DMCONTA.TAlx.First;
           While Not DMCONTA.TAlx.Eof Do
           Begin
               DMMACS.TMP.Insert;
               DMMACS.TMP.FieldByName('COD_TMP').AsInteger:=XcodPK;
               DMMACS.TMP.FieldByName('DESC1').AsString:= DMCONTA.TAlx.FieldByName('historico').AsString;
               DMMACS.TMP.FieldByName('VLR1').AsCurrency:= DMCONTA.TAlx.FieldByName('VALOR').AsCurrency;
               DMMACS.TMP.FieldByName('DATA1').AsDateTime:= DMCONTA.TAlx.FieldByName('DTVENC').AsDateTime;
               DMMACS.TMP.FieldByName('DESC3').AsString:= DMCONTA.TAlx.FieldByName('NUMPARC').AsString;
               DMMACS.TMP.FieldByName('DESC2').AsString:= 'REC';
               DMMACS.TMP.Post;
               DMMACS.Transaction.CommitRetaining;
               XcodPK:=+1;
               DMCONTA.TAlx.Next;
           end;

           //Paulo 19/09/2011: seleciona os dados de SAÍDA no caixa
           DMCONTA.TAlx.Close;
           DMCONTA.TAlx.SQL.Clear;
           DMCONTA.TAlx.SQL.Add(' SELECT * from vwparcp ');
           DMCONTA.TAlx.SQL.Add(' Where (vwparcp.cod_plncta=:COD_CONTA)  AND (vwparcP.fech<>''S'') ');
           DMCONTA.TAlx.ParamByName('COD_CONTA').AsInteger:=DMCONTA.TPlnCta.FieldByName('COD_PLNCTA').AsInteger;
           DMCONTA.TAlx.Open;
           DMCONTA.TAlx.First;
           While Not DMCONTA.TAlx.Eof Do
           Begin
               DMMACS.TMP.Insert;
               DMMACS.TMP.FieldByName('COD_TMP').AsInteger:=XcodPK;
               DMMACS.TMP.FieldByName('DESC1').AsString:= DMCONTA.TAlx.FieldByName('descricao').AsString;
               DMMACS.TMP.FieldByName('VLR1').AsCurrency:= DMCONTA.TAlx.FieldByName('VALOR').AsCurrency;
               DMMACS.TMP.FieldByName('DATA1').AsDateTime:= DMCONTA.TAlx.FieldByName('DTVENC').AsDateTime;
               DMMACS.TMP.FieldByName('DESC2').AsString:= 'SAI';
               DMMACS.TMP.FieldByName('DESC3').AsString:= DMCONTA.TAlx.FieldByName('NUMPARC').AsString;
               DMMACS.TMP.Post;
               DMMACS.Transaction.CommitRetaining;
               XcodPK:=+1;
               DMCONTA.TAlx.Next;
           end;
          DMCONTA.TPlnCta.Next;
      end;
end;

procedure TFProduto.armazenaDadosRealizado;
begin
       DMCONTA.TPlnCta.Close;
       DMCONTA.TPlnCta.SQL.Clear;
       DMCONTA.TPlnCta.SQL.Add('Select * from plncta ');
       DMCONTA.TPlnCta.SQL.Add(' where plncta.cod_estoque=:codigo order by plncta.classificacao');
       DMCONTA.TPlnCta.ParamByName('codigo').AsInteger:=DMESTOQUE.WSimilar.FieldByName('COD_ESTOQUE').AsInteger;
       DMCONTA.TPlnCta.Open;

       DMMACS.TMP.Close;
       DMMACS.TMP.SQL.Clear;
       DMMACS.TMP.SQL.Add('delete from tmp');
       DMMACS.TMP.ExecSQL;
       DMMACS.Transaction.CommitRetaining;
       DMMACS.TMP.Close;
       DMMACS.TMP.SQL.Clear;
       DMMACS.TMP.SQL.Add('select * from tmp');
       DMMACS.TMP.Open;

       //PERCORRE TODOS OS REGISTRO PARA ACUMULAR VALOR
       DMCONTA.TPlnCta.First;
       While Not DMCONTA.TPlnCta.Eof Do
       Begin
           //Paulo 19/09/2011: seleciona os dados de ENTRADA no caixa
           DMCONTA.TAlx.Close;
           DMCONTA.TAlx.SQL.Clear;
           DMCONTA.TAlx.SQL.Add('SELECT * from lancaixa Where (lancaixa.cod_plnctafil=:COD_CONTA) AND (lancaixa.tipcai='+#39+'E'+#39+')  AND (lancaixa.ESTRU='+#39+'1'+#39+')');
           DMCONTA.TAlx.ParamByName('COD_CONTA').AsInteger:=DMCONTA.TPlnCta.FieldByName('COD_PLNCTA').AsInteger;
           DMCONTA.TAlx.Open;
           DMCONTA.TAlx.First;
           While Not DMCONTA.TAlx.Eof Do
           Begin
               DMMACS.TMP.Insert;
               DMMACS.TMP.FieldByName('COD_TMP').AsInteger:=XcodPK;
               DMMACS.TMP.FieldByName('DESC1').AsString:= DMCONTA.TAlx.FieldByName('historico').AsString;
               DMMACS.TMP.FieldByName('VLR1').AsCurrency:= DMCONTA.TAlx.FieldByName('VALOR').AsCurrency;
               DMMACS.TMP.FieldByName('DATA1').AsDateTime:= DMCONTA.TAlx.FieldByName('DTLANC').AsDateTime;
               DMMACS.TMP.FieldByName('DESC2').AsString:= DMCONTA.TAlx.FieldByName('TIPCAI').AsString;
               DMMACS.TMP.FieldByName('DESC3').AsString:= DMCONTA.TAlx.FieldByName('DOC').AsString;
               DMMACS.TMP.Post;
               DMMACS.Transaction.CommitRetaining;
               XcodPK:=+1;
               DMCONTA.TAlx.Next;
           end;

           //Paulo 19/09/2011: seleciona os dados de SAÍDA no caixa
           DMCONTA.TAlx.Close;
           DMCONTA.TAlx.SQL.Clear;
           DMCONTA.TAlx.SQL.Add('SELECT * from lancaixa Where (lancaixa.cod_plnctafil=:COD_CONTA) AND (lancaixa.tipcai='+#39+'S'+#39+')  AND (lancaixa.ESTRU='+#39+'1'+#39+')');
           DMCONTA.TAlx.ParamByName('COD_CONTA').AsInteger:=DMCONTA.TPlnCta.FieldByName('COD_PLNCTA').AsInteger;
           DMCONTA.TAlx.Open;
           DMCONTA.TAlx.First;
           While Not DMCONTA.TAlx.Eof Do
           Begin
               DMMACS.TMP.Insert;
               DMMACS.TMP.FieldByName('COD_TMP').AsInteger:=XcodPK;
               DMMACS.TMP.FieldByName('DESC1').AsString:= DMCONTA.TAlx.FieldByName('historico').AsString;
               DMMACS.TMP.FieldByName('VLR1').AsCurrency:= DMCONTA.TAlx.FieldByName('VALOR').AsCurrency;
               DMMACS.TMP.FieldByName('DATA1').AsDateTime:= DMCONTA.TAlx.FieldByName('DTLANC').AsDateTime;
               DMMACS.TMP.FieldByName('DESC2').AsString:= DMCONTA.TAlx.FieldByName('TIPCAI').AsString;
               DMMACS.TMP.FieldByName('DESC3').AsString:= DMCONTA.TAlx.FieldByName('DOC').AsString;
               DMMACS.TMP.Post;
               DMMACS.Transaction.CommitRetaining;
               XcodPK:=+1;
               DMCONTA.TAlx.Next;
           end;
          DMCONTA.TPlnCta.Next;
      end;
end;

procedure TFProduto.BitBtn5Click(Sender: TObject);
begin
  inherited;
   MontaTabelaPreco(XCOD_ESTOQUE);
End;
procedure TFProduto.DGTabelaDrawCell(Sender: TObject; ACol, ARow: Integer;
  Rect: TRect; State: TGridDrawState);
const
	LM = 10; {margem esquerda de cada célula}
	TM = 5; {margem superior de cada célula}
begin
  inherited;
	if ACol= 0 then
	begin
		DGTabela.Canvas.Brush.Color := clMoneyGreen;
		DGTabela.Canvas.Font.Color := clBlack;
       DGTabela.Canvas.Font.Style:=[fsBold];
	end
	else
	begin
   	If ARow = 0
       Then Begin
           DGTabela.Canvas.Brush.Color := clSkyBlue;
           DGTabela.Canvas.Font.Color := clBlack;
       	DGTabela.Canvas.Font.Style:=[fsBold];
       End
       Else Begin
           DGTabela.Canvas.Brush.Color := clWhite;
           DGTabela.Canvas.Font.Color := clBlack;
       End;
	end;
	DGTabela.Canvas.FillRect(Rect);
	DGTabela.canvas.TextOut(rect.Left, rect.Top, DgTabela.Cells[acol, arow]);

end;

procedure TFProduto.BitBtn7Click(Sender: TObject);
begin
  inherited;
  	Try
   	If EdNovaFaixaPreco.Text=''
       Then Begin
			MessageDlg('Por favor, informe a descrição da faixa de preço', mtWarning, [mbOK], 0);
           EdNovaTabela.SetFocus;
       End
       Else Begin
           MDO.QConsulta.Close;
           MDO.QConsulta.SQL.Clear;
           MDO.QConsulta.SQL.Add(' Select max(faixa_preco.cod_faixapreco) as codigo, max(faixa_preco.indicecoluna) as coluna from faixa_preco ');
           MDO.QConsulta.Open;

           MDO.Query.Close;
           MDO.Query.SQL.Clear;
           MDO.Query.SQL.Add( ' INSERT INTO FAIXA_PRECO (COD_FAIXAPRECO, descricao, QTDDIAS, indicecoluna) ' );
           MDO.Query.SQL.Add( ' VALUES (:cod_faixapreco, :descricao,  :QTDDIAS, :indicecoluna) ' );
           MDO.Query.ParamByName('indicecoluna').AsInteger:=MDO.QConsulta.FieldByName('coluna').AsInteger+1;
           MDO.Query.ParamByName('cod_faixapreco').AsInteger:=MDO.QConsulta.FieldByName('codigo').AsInteger+1;
           MDO.Query.ParamByName('QTDDIAS').AsInteger:=EdQuantDias.ValueInteger;
           MDO.Query.ParamByName('descricao').AsString:=EdNovaFaixaPreco.Text;
           MDO.Query.ExecSQL;
           MDO.Transac.CommitRetaining;
           PNovaFaixaPreco.Visible:=False;
           btnnovatabela.SetFocus;
           MontaTabelaPreco(1);
       End;
   Except
       MDO.Transac.RollbackRetaining;
   End;
end;

procedure TFProduto.BitBtn8Click(Sender: TObject);
begin
  inherited;
   PNovaFaixaPreco.Visible:=False;
   EdNovaFaixaPreco.SetFocus;
end;

procedure TFProduto.btnnovatabelaClick(Sender: TObject);
begin
  inherited;
   PNovaTabela.Visible:=True;
   PNovaTabela.BringToFront;
   EdNovaTabela.Text:='';
   EdNovaTabela.SetFocus;
end;

procedure TFProduto.BitBtn10Click(Sender: TObject);
begin
  inherited;
   PNovaTabela.Visible:=False;
   EdNovaTabela.SetFocus;
end;

procedure TFProduto.BitBtn9Click(Sender: TObject);
begin
  inherited;
  	Try
   	If EdNovaTabela.Text=''
       Then Begin
			MessageDlg('Por favor, informe a descrição da tabela de preço', mtWarning, [mbOK], 0);
           EdNovaTabela.SetFocus;
       End
       Else Begin
           MDO.QConsulta.Close;
           MDO.QConsulta.SQL.Clear;
           MDO.QConsulta.SQL.Add(' Select max(tabela_preco.cod_tabelapreco) as codigo, max(tabela_preco.indicelinha) as linha from tabela_preco ');
           MDO.QConsulta.Open;

           MDO.Query.Close;
           MDO.Query.SQL.Clear;
           MDO.Query.SQL.Add( ' INSERT INTO tabela_preco (cod_tabelapreco, descricao, INDICELINHA) ' );
           MDO.Query.SQL.Add( ' VALUES (:cod_tabelapreco, :descricao, :INDICELINHA) ' );
           MDO.Query.ParamByName('cod_tabelapreco').AsInteger:=MDO.QConsulta.FieldByName('codigo').AsInteger+1;
           MDO.Query.ParamByName('INDICELINHA').AsInteger:=MDO.QConsulta.FieldByName('LINHA').AsInteger+1;
           MDO.Query.ParamByName('descricao').AsString:=EdNovaTabela.Text;
           MDO.Query.ExecSQL;
           MDO.Transac.CommitRetaining;
           PNovaTabela.Visible:=False;
           btnnovatabela.SetFocus;
           MontaTabelaPreco(1);
       End;
   Except
       MDO.Transac.RollbackRetaining;
   End;
end;
procedure TFProduto.BtnTabelaFaixaPrecoClick(Sender: TObject);
begin
  inherited;
   //Atualiza as tabelas de estoque
   DMESTOQUE.TransacEstoque.CommitRetaining;

   //Seleciona as Tabelas disponiveis
   DMESTOQUE.Alx.Close;
   DMESTOQUE.Alx.SQL.Clear;
   DMESTOQUE.Alx.SQL.Add(' Select * from tabela_preco ');
   DMESTOQUE.Alx.Open;
   EdTabela_TabelaFaixa.ListSource:=DMESTOQUE.DSAlx;
   EdTabela_TabelaFaixa.ListField:='descricao';
   EdTabela_TabelaFaixa.KeyField:='cod_tabelapreco';

   //Seleciona as Faixas disponiveis
   DMESTOQUE.Alx1.Close;
   DMESTOQUE.Alx1.SQL.Clear;
   DMESTOQUE.Alx1.SQL.Add(' Select * from faixa_preco ');
   DMESTOQUE.Alx1.Open;
   EdFaixa_TabelaFaixa.ListSource:=DMESTOQUE.DSAlx1;
   EdFaixa_TabelaFaixa.ListField:='descricao';
   EdFaixa_TabelaFaixa.KeyField:='cod_faixapreco';

   PAdicionaTabelaFaixa.Visible:=True;
   PAdicionaTabelaFaixa.BringToFront;
   EdTabela_TabelaFaixa.SetFocus;
end;

procedure TFProduto.BitBtn12Click(Sender: TObject);
begin
  inherited;
   EdTabela_TabelaFaixa.ListField:='';
   EdTabela_TabelaFaixa.KeyField:='';

   EdFaixa_TabelaFaixa.ListField:='';
   EdFaixa_TabelaFaixa.KeyField:='';
   PAdicionaTabelaFaixa.Visible:=False;
end;

procedure TFProduto.BtnAdicionaTabelaFaixaClick(Sender: TObject);
begin
  inherited;
  	Try
       //Seleciona ultimo codigo primario
       MDO.QConsulta.Close;
       MDO.QConsulta.SQL.Clear;
       MDO.QConsulta.SQL.Add(' select Max(tabelafaixapreco.cod_tabelafaixapreco) as codigo from tabelafaixapreco ');
       MDO.QConsulta.Open;

       //Insere os dados
       MDO.Query.Close;
       MDO.Query.SQL.Clear;
       MDO.Query.SQL.Add( ' INSERT INTO tabelafaixapreco (cod_tabelafaixapreco, cod_faixapreco, cod_estoque, cod_tabelapreco, preco) ' );
       MDO.Query.SQL.Add( ' VALUES (:cod_tabelafaixapreco, :cod_faixapreco, :cod_estoque, :cod_tabelapreco, :preco) ' );
       MDO.Query.ParamByName('cod_tabelafaixapreco').AsInteger:=MDO.QConsulta.FieldByName('codigo').AsInteger+1;
       MDO.Query.ParamByName('cod_faixapreco').AsInteger:=DMESTOQUE.Alx1.FieldByName('cod_faixapreco').AsInteger;
       MDO.Query.ParamByName('cod_estoque').AsInteger:=XCOD_ESTOQUE;
       MDO.Query.ParamByName('cod_tabelapreco').AsInteger:=DMESTOQUE.Alx.FieldByName('cod_tabelapreco').AsInteger;
       MDO.Query.ParamByName('preco').AsCurrency:=EdPrecoTabelaFaixaPreco.ValueNumeric;
       MDO.Query.ExecSQL;
       MDO.Transac.CommitRetaining;

       EdFaixa_TabelaFaixa.KeyField:='';
       EdFaixa_TabelaFaixa.ListField:='';
       EdTabela_TabelaFaixa.KeyField:='';
       EdTabela_TabelaFaixa.ListField:='';

       PAdicionaTabelaFaixa.Visible:=False;
       MontaTabelaPreco(XCOD_ESTOQUE);
       BtnTabelaFaixaPreco.SetFocus;
   Except
   	MessageDlg('O Preço não pode ser adicionado a tabela', mtWarning, [mbOK], 0);
       MDO.Transac.RollbackRetaining;
   End;
end;

procedure TFProduto.DGTabelaKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
   LTabelaSelecionada.Caption:=DGTabela.Cells[0, DGTabela.Row];
   LFaixaSelecionada.Caption:=DGTabela.Cells[DGTabela.Col, 0];   
end;

procedure TFProduto.DGTabelaClick(Sender: TObject);
begin
  inherited;
   LTabelaSelecionada.Caption:=DGTabela.Cells[0, DGTabela.Row];
   LFaixaSelecionada.Caption:=DGTabela.Cells[DGTabela.Col, 0];   
end;

procedure TFProduto.BitBtn6Click(Sender: TObject);
begin
  inherited;
  if (LAcessorioPesquisado.Caption <> '') Then
  Begin
   MDO.Query.Close;
   MDO.Query.SQL.Clear;
   MDO.Query.SQL.Add('  insert into ACESSORIOS(COD_EQUIPAMENTO, cod_estoque, quantidade, VALORLOCA)');
   MDO.Query.SQL.Add('             values (:cod_equipamento, :cod_estoque, :quantidade, :VALORLOCA) ');
   MDO.Query.ParamByName('cod_estoque').AsInteger:= XCOD_ESTOQUE;
   MDO.Query.ParamByName('cod_equipamento').AsInteger:= XCOD_ITEMACESSORIO;
   MDO.Query.ParamByName('quantidade').AsInteger:= EdQuantAcessorio.ValueInteger;
   if (cbVlrLocacao.Checked) Then
	  MDO.Query.ParamByName('VALORLOCA').AsString := '1'
   else
     MDO.Query.ParamByName('VALORLOCA').AsString := '0';
   MDO.Query.ExecSQL;
   MDO.Transac.CommitRetaining;
   FiltraAcessorios(XCOD_ESTOQUE);
   LimpaLabelsAcessorios;
  End; 

end;
//Limpa as labels de escrita dos acessorios
Procedure TFProduto.LimpaLabelsAcessorios;
Begin
	Try
		XCOD_ITEMACESSORIO:=-1;
       LAcessorioPesquisado.Caption:='';	
   Except
   End;
End;
procedure TFProduto.BitBtn13Click(Sender: TObject);
begin
  inherited;
	MDO.Query.SQL.Clear;
   MDO.Query.SQL.Add(' Delete from acessorios  where acessorios.cod_acessorios=:codigo ');
   MDO.Query.ParamByName('codigo').AsInteger:=DMESTOQUE.Alx5.FieldByName('cod_acessorios').AsInteger;
   MDO.Query.ExecSQL;
   MDO.Transac.CommitRetaining;
   FiltraAcessorios(XCOD_ESTOQUE);
end;

procedure TFProduto.RGFiltroClick(Sender: TObject);
begin
  inherited;
      SelectSim;
end;

procedure TFProduto.BitBtn14Click(Sender: TObject);
Var
	XCodigo: Integer;
begin
  inherited;
	//Verifica se a faixa de preço selecionada tem algum valor, se tiver, impede a remoção
   //Localiza Faixa preço
   MDO.Transac.CommitRetaining;
   MdoQConsultaClear;
   MDO.QConsulta.SQL.Add(' Select * from faixa_preco Where faixa_preco.indicecoluna=:Indice ');
   MDO.QConsulta.ParamByName('Indice').AsInteger:=DGTabela.Col;
   MDO.QConsulta.Open;
   If not MDO.QConsulta.IsEmpty
   Then Begin
       XCodigo:=MDO.QConsulta.FieldByName('cod_faixapreco').AsInteger;
       MdoQConsultaClear;
       MDO.QConsulta.SQL.Add(' select * from tabelafaixapreco where (tabelafaixapreco.cod_faixapreco=:Faixa) and (tabelafaixapreco.cod_estoque=:estoque)');
       MDO.QConsulta.ParamByName('Faixa').AsInteger:=XCodigo;
       MDO.QConsulta.ParamByName('Estoque').AsInteger:=XCOD_ESTOQUE;
       MDO.QConsulta.Open;
       If not MDO.QConsulta.IsEmpty
       Then Begin
       	MessageDlg('Esta Faixa não pode ser Apagada!'+#13+#10+'Existem valores em sua tabela', mtWarning, [mbOK], 0);
           Exit;
       End;
   End;
   If MessageDlg('Deseja realmente eliminar esta faixa?', mtConfirmation, [mbYes, mbNo], 0)=mryes
   Then Begin
       MdoQueryClear;
       MDO.Query.SQL.Add(' Delete from faixa_preco Where faixa_preco.cod_faixapreco=:Indice ');
       MDO.Query.ParamByName('Indice').AsInteger:=XCodigo;
       MDO.Query.ExecSQL;
       MDO.Transac.CommitRetaining;
       MontaTabelaPreco(XCOD_ESTOQUE);
   End;
end;

procedure TFProduto.BitBtn15Click(Sender: TObject);
Var
	XCodigo: Integer;
begin
  inherited;
	//Verifica se a faixa de preço selecionada tem algum valor, se tiver, impede a remoção
   //Localiza Faixa preço
   MDO.Transac.CommitRetaining;
   MdoQConsultaClear;
   MDO.QConsulta.SQL.Add(' Select * from tabela_preco Where tabela_preco.indicelinha=:Indice ');
   MDO.QConsulta.ParamByName('Indice').AsInteger:=DGTabela.Row;
   MDO.QConsulta.Open;
   If not MDO.QConsulta.IsEmpty
   Then Begin
       XCodigo:=MDO.QConsulta.FieldByName('cod_tabelapreco').AsInteger;
       MdoQConsultaClear;
       MDO.QConsulta.SQL.Add(' select * from tabelafaixapreco where (tabelafaixapreco.cod_tabelapreco=:Faixa) ');
       MDO.QConsulta.ParamByName('Faixa').AsInteger:=XCodigo;
       MDO.QConsulta.Open;
       If not MDO.QConsulta.IsEmpty
       Then Begin
       	MessageDlg('Esta Tabela não pode ser Apagada!'+#13+#10+'Existem valores em sua tabela', mtWarning, [mbOK], 0);
           Exit;
       End;
   End;
   If MessageDlg('Deseja realmente eliminar esta Tabela?', mtConfirmation, [mbYes, mbNo], 0)=mryes
   Then Begin
       MdoQueryClear;
       MDO.Query.SQL.Add(' Delete  from  tabela_preco Where tabela_preco.cod_tabelapreco=:Indice ');
       MDO.Query.ParamByName('Indice').AsInteger:=XCodigo;
       MDO.Query.ExecSQL;
       MDO.Transac.CommitRetaining;
       MontaTabelaPreco(XCOD_ESTOQUE);
   End;
end;

procedure TFProduto.DGTabelaDblClick(Sender: TObject);
begin
  inherited;
   PEditaCelula.Visible:=True;
   PEditaCelula.BringToFront;
   EdEditaDescricao.Text:='';
   EdEditaQuantidade.ValueNumeric:=0;

   //Localiza Faixa preço
   MDO.Transac.CommitRetaining;
   MdoQConsultaClear;
   MDO.QConsulta.SQL.Add(' Select * from faixa_preco Where faixa_preco.indicecoluna=:Indice ');
   MDO.QConsulta.ParamByName('Indice').AsInteger:=DGTabela.Col;
   MDO.QConsulta.Open;
   If not MDO.QConsulta.IsEmpty
   Then Begin
       XCodFaixaEdit:=MDO.QConsulta.FieldByName('COD_FAIXAPRECO').AsInteger;
       XDescricaoEdit:=MDO.QConsulta.FieldByName('descricao').AsString;
       XQuantidadeEdit:=MDO.QConsulta.FieldByName('qtddias').AsCurrency;
   End
   Else Begin
       XCodFaixaEdit:=-1;
       XDescricaoEdit:='';
       XQuantidadeEdit:=-1;
   End;
   //Localiza Tabela de preço
   MDO.Transac.CommitRetaining;
   MdoQConsultaClear;
   MDO.QConsulta.SQL.Add(' Select * from tabela_preco Where tabela_preco.indicelinha=:Indice ');
   MDO.QConsulta.ParamByName('Indice').AsInteger:=DGTabela.Row;
   MDO.QConsulta.Open;
   If not MDO.QConsulta.IsEmpty
   Then Begin
       XCodTabelaEdit:=MDO.QConsulta.FieldByName('cod_tabelapreco').AsInteger;
       XDescricaoEdit:=MDO.QConsulta.FieldByName('descricao').AsString;
       XQuantidadeEdit:=0;
   End
   Else Begin
       XCodTabelaEdit:=-1;
   End;
   //Edição para Tabela
   If (DGTabela.Col=0) and (DGTabela.Row>0)
   Then Begin
       FPEditaCelula.Title:='Editar Tabela';
       FPEditaCelula.Repaint;
       LEditaDescricao.Visible:=True;
       EdEditaDescricao.Visible:=True;
       EdEditaDescricao.Text:=DGTabela.Cells[0, DGTabela.Row];
       LEditaDescricao.Visible:=False;
       EdEditaQuantidade.Visible:=False;
       EdEditaDescricao.Text:=XDescricaoEdit;
       EdEditaDescricao.SetFocus;
   End;
   //Edição para faixa de preço
   If (DGTabela.Col>0) and (DGTabela.Row=0)
   Then Begin
       FPEditaCelula.Title:='Editar Faixa de Preço';
       LEditaDescricao.Visible:=True;
       EdEditaQuantidade.Visible:=True;
       EdEditaDescricao.Visible:=True;
       LEditaDescricao.Caption:='Quantidade:';
       EdEditaDescricao.Text:=DGTabela.Cells[DGTabela.Col, 0];
       EdEditaDescricao.Text:=XDescricaoEdit;
       EdEditaQuantidade.ValueNumeric:=XQuantidadeEdit;
       FPEditaCelula.Repaint;       
       EdEditaDescricao.SetFocus;
   End;
   //Edição para valor de preço
   If (DGTabela.Col>0) and (DGTabela.Row>0)
   Then Begin
       FPEditaCelula.Title:='Editar Valor de Preço';
       EdEditaDescricao.Visible:=False;
       LEditaDescricao.Visible:=True;
       LEditaDescricao.Caption:='Valor:';
       EdEditaQuantidade.Visible:=True;
       EdEditaQuantidade.Text:=DGTabela.Cells[DGTabela.Col, DGTabela.Row];
       FPEditaCelula.Repaint;
       EdEditaQuantidade.SetFocus;
   End;
end;

procedure TFProduto.BitBtn17Click(Sender: TObject);
begin
  inherited;
   PEditaCelula.Visible:=False;
end;

procedure TFProduto.EdEditaQuantidadeKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
	If Key=VK_RETURN Then
   	BtnEditaCelula.Click;
end;

procedure TFProduto.EdTabela_TabelaFaixaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
	If Key = vk_return Then
   	BtnAdicionaTabelaFaixa.Click();
end;

//Função responsavel por editar ou inserir preços
Function  TFProduto.AlteraInserePrecos: Boolean;
Begin
	Try
       //Localizaremos o registro correto a ser editado ou inserido, tendo como base a tabela e a faixa
       MDO.Transac.CommitRetaining;
       MdoQConsultaClear;
       MDO.QConsulta.SQL.Add(' Select * from tabelafaixapreco ');
       MDO.QConsulta.SQL.Add(' Where (tabelafaixapreco.cod_faixapreco=:Faixa) and (tabelafaixapreco.cod_tabelapreco=:Tabela) and (tabelafaixapreco.cod_estoque=:estoque) ');
       MDO.QConsulta.ParamByName('Faixa').AsInteger:=XCodFaixaEdit;
       MDO.QConsulta.ParamByName('Tabela').AsInteger:=XCodTabelaEdit;
       MDO.QConsulta.ParamByName('estoque').AsInteger:=XCOD_ESTOQUE;
       MDO.QConsulta.Open;
       If MDO.QConsulta.IsEmpty
       Then Begin
           //INSERÇÃO - Nenhum registro foi encontrado para edição, sendo assim necessário a inserção
           Try
               If (XCodFaixaEdit<=0) or (XCodTabelaEdit<=0) Then
                   Exit;
               //Seleciona ultimo codigo primario
               MDO.QConsulta.Close;
               MDO.QConsulta.SQL.Clear;
               MDO.QConsulta.SQL.Add(' select Max(tabelafaixapreco.cod_tabelafaixapreco) as codigo from tabelafaixapreco ');
               MDO.QConsulta.Open;

               //Insere os dados
               MDO.Query.Close;
               MDO.Query.SQL.Clear;
               MDO.Query.SQL.Add( ' INSERT INTO tabelafaixapreco (cod_tabelafaixapreco, cod_faixapreco, cod_estoque, cod_tabelapreco, preco) ' );
               MDO.Query.SQL.Add( ' VALUES (:cod_tabelafaixapreco, :cod_faixapreco, :cod_estoque, :cod_tabelapreco, :preco) ' );
               MDO.Query.ParamByName('cod_tabelafaixapreco').AsInteger:=MDO.QConsulta.FieldByName('codigo').AsInteger+1;
               MDO.Query.ParamByName('cod_faixapreco').AsInteger:=XCodFaixaEdit;
               MDO.Query.ParamByName('cod_estoque').AsInteger:=XCOD_ESTOQUE;
               MDO.Query.ParamByName('cod_tabelapreco').AsInteger:=XCodTabelaEdit;
               If EdEditaQuantidade.ValueNumeric=0 Then
					MDO.Query.ParamByName('preco').AsString:=''
               Else
               	MDO.Query.ParamByName('preco').AsCurrency:=EdEditaQuantidade.ValueNumeric;
               MDO.Query.ExecSQL;
               MDO.Transac.CommitRetaining;
           Except
               MessageDlg('O Preço não pode ser adicionado a tabela', mtWarning, [mbOK], 0);
               MDO.Transac.RollbackRetaining;
           End;

       End
       Else Begin
           Try
               //EDIÇÃO- O registro foi encontrado para edição
               MdoQueryClear;
               //PREÇO - Edição para valor de preço
               If (DGTabela.Col>0) and (DGTabela.Row>0)
               Then Begin
                   MDO.Query.SQL.Add(' update tabelafaixapreco set tabelafaixapreco.preco=:Preco ');
                   MDO.Query.SQL.Add(' Where (tabelafaixapreco.cod_faixapreco=:Faixa) and (tabelafaixapreco.cod_tabelapreco=:Tabela) and (tabelafaixapreco.cod_estoque=:estoque) ');
                   MDO.Query.ParamByName('Faixa').AsInteger:=XCodFaixaEdit;
                   MDO.Query.ParamByName('Tabela').AsInteger:=XCodTabelaEdit;
                   MDO.Query.ParamByName('Estoque').AsInteger:=XCOD_ESTOQUE;
					If EdEditaQuantidade.ValueNumeric=0 Then
                   	MDO.Query.ParamByName('Preco').AsString:=''
                   Else
                   	MDO.Query.ParamByName('Preco').AsCurrency:=EdEditaQuantidade.ValueNumeric;
               End;
               //TABELA - Edição para Tabela
               If (DGTabela.Col=0) and (DGTabela.Row>0)
               Then Begin
                   MDO.Query.SQL.Add(' update tabela_preco set tabela_preco.descricao=:Descricao ');
                   MDO.Query.SQL.Add(' Where tabela_preco.cod_tabelapreco=:Codigo ');
                   MDO.Query.ParamByName('Descricao').AsString:=EdEditaDescricao.Text;
                   MDO.Query.ParamByName('Codigo').AsInteger:=XCodTabelaEdit;
               End;
               //FAIXA - Edição para faixa de preço
               If (DGTabela.Col>0) and (DGTabela.Row=0)
               Then Begin
                   MDO.Query.SQL.Add(' update faixa_preco set faixa_preco.descricao=:Descricao ');
                   MDO.Query.SQL.Add(' Where faixa_preco.cod_faixapreco=:Codigo ');
                   MDO.Query.ParamByName('Descricao').AsString:=EdEditaDescricao.Text;
                   MDO.Query.ParamByName('Codigo').AsInteger:=XCodFaixaEdit;
               End;
               MDO.Query.ExecSQL;
               MDO.Transac.CommitRetaining;
           Except
               MDO.Transac.RollbackRetaining;
               MessageDlg('O Campo não pode ser editado!'+#13+#10+''+#13+#10+'Reinicie o Sistema e tente novamente', mtWarning, [mbOK], 0);
           End;
       End;
       MontaTabelaPreco(XCOD_ESTOQUE);
       PEditaCelula.Visible:=False;
   Except
   End;
End;

//Função responsavel por editar Tabela ou faixa de precos
Function  TFProduto.AlteraTabelaFaixa: Boolean;
Begin
	Try
       Try
           //EDIÇÃO- O registro foi encontrado para edição
           MdoQueryClear;
           //TABELA - Edição para Tabela
           If (DGTabela.Col=0) and (DGTabela.Row>0)
           Then Begin
               MDO.Query.SQL.Add(' update tabela_preco set tabela_preco.descricao=:Descricao ');
               MDO.Query.SQL.Add(' Where tabela_preco.cod_tabelapreco=:Codigo ');
               MDO.Query.ParamByName('Descricao').AsString:=EdEditaDescricao.Text;
               MDO.Query.ParamByName('Codigo').AsInteger:=XCodTabelaEdit;
           End;
           //FAIXA - Edição para faixa de preço
           If (DGTabela.Col>0) and (DGTabela.Row=0)
           Then Begin
               MDO.Query.SQL.Add(' update faixa_preco set faixa_preco.descricao=:Descricao, faixa_preco.qtddias=:Dias ');
               MDO.Query.SQL.Add(' Where faixa_preco.cod_faixapreco=:Codigo ');
               MDO.Query.ParamByName('Descricao').AsString:=EdEditaDescricao.Text;
              	MDO.Query.ParamByName('Dias').AsCurrency:=EdEditaQuantidade.ValueNumeric;
               MDO.Query.ParamByName('Codigo').AsInteger:=XCodFaixaEdit;
           End;
           MDO.Query.ExecSQL;
           MDO.Transac.CommitRetaining;
       Except
           MDO.Transac.RollbackRetaining;
           MessageDlg('O Campo não pode ser editado!'+#13+#10+''+#13+#10+'Reinicie o Sistema e tente novamente', mtWarning, [mbOK], 0);
       End;
       MontaTabelaPreco(XCOD_ESTOQUE);
       PEditaCelula.Visible:=False;
   Except
   End;
End;

procedure TFProduto.EdNovaTabelaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
	If Key=VK_RETURN Then
       BitBtn9.Click();
end;

procedure TFProduto.BtnEditaCelulaClick(Sender: TObject);
begin
  inherited;
	If (XCodFaixaEdit<=0) or (XCodTabelaEdit<=0) Then
   	AlteraTabelaFaixa
   Else
       AlteraInserePrecos;
end;

procedure TFProduto.BitBtn11Click(Sender: TObject);
Var
	XdescricaoApagaTabela, XdescricaoApagaFaixa: String;
begin
  inherited;
	If (DGTabela.Col>0) and (DGTabela.Row>0)
   Then Begin
   	//Se é celula de preço
       //Localiza Faixa preço
       MDO.Transac.CommitRetaining;
       MdoQConsultaClear;
       MDO.QConsulta.SQL.Add(' Select * from faixa_preco Where faixa_preco.indicecoluna=:Indice ');
       MDO.QConsulta.ParamByName('Indice').AsInteger:=DGTabela.Col;
       MDO.QConsulta.Open;
       If not MDO.QConsulta.IsEmpty
       Then Begin
           XCodFaixaEdit:=MDO.QConsulta.FieldByName('COD_FAIXAPRECO').AsInteger;
           XdescricaoApagaFaixa:=MDO.QConsulta.FieldByName('descricao').AsString;
       End
       Else Begin
           XCodFaixaEdit:=-1;
           XdescricaoApagaFaixa:='';
       End;
       //Localiza Tabela de preço
       MDO.Transac.CommitRetaining;
       MdoQConsultaClear;
       MDO.QConsulta.SQL.Add(' Select * from tabela_preco Where tabela_preco.indicelinha=:Indice ');
       MDO.QConsulta.ParamByName('Indice').AsInteger:=DGTabela.Row;
       MDO.QConsulta.Open;
       If not MDO.QConsulta.IsEmpty
       Then Begin
           XCodTabelaEdit:=MDO.QConsulta.FieldByName('cod_tabelapreco').AsInteger;
           XdescricaoApagaTabela:=MDO.QConsulta.FieldByName('descricao').AsString;
       End
       Else Begin
           XCodTabelaEdit:=-1;
			XdescricaoApagaTabela:='';
       End;
       MdoQConsultaClear;
       MDO.QConsulta.SQL.Add(' Select * from tabelafaixapreco ');
       MDO.QConsulta.SQL.Add(' Where (tabelafaixapreco.cod_faixapreco=:Faixa) and (tabelafaixapreco.cod_tabelapreco=:Tabela) and (tabelafaixapreco.cod_estoque=:estoque) ');
       MDO.QConsulta.ParamByName('Faixa').AsInteger:=XCodFaixaEdit;
       MDO.QConsulta.ParamByName('Tabela').AsInteger:=XCodTabelaEdit;
       MDO.QConsulta.ParamByName('estoque').AsInteger:=XCOD_ESTOQUE;
       MDO.QConsulta.Open;
       If not MDO.QConsulta.IsEmpty
       Then Begin
       	If MessageDlg('Deseja realmente apagar o valor da tabela ('+XdescricaoApagaTabela+' - '+XdescricaoApagaFaixa+' )?', mtConfirmation, [mbYes, mbNo], 0)=mrYes
           Then Begin
           	Try
                   MdoQueryClear;
                   MDO.Query.SQL.Add(' Delete from tabelafaixapreco ');
                   MDO.Query.SQL.Add(' Where (tabelafaixapreco.cod_faixapreco=:Faixa) and (tabelafaixapreco.cod_tabelapreco=:Tabela) and (tabelafaixapreco.cod_estoque=:estoque) ');
                   MDO.Query.ParamByName('Faixa').AsInteger:=XCodFaixaEdit;
                   MDO.Query.ParamByName('Tabela').AsInteger:=XCodTabelaEdit;
                   MDO.Query.ParamByName('estoque').AsInteger:=XCOD_ESTOQUE;
                   MDO.Query.ExecSQL;
                   MDO.Transac.CommitRetaining;
                   MontaTabelaPreco(XCOD_ESTOQUE);
               Except
                   MDO.Transac.RollbackRetaining;
                   MessageDlg('O Item não pode ser removido.', mtWarning, [mbOK], 0);
               End;
           End;
       End
       Else Begin
       	MessageDlg('Item não encontrado para remoção', mtWarning, [mbOK], 0);
       End;
   End;
end;

procedure TFProduto.EdPesquisaAcessorioKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
	If (Key=Vk_f2) and (key<>Vk_F3)
   Then Begin
       If AbrirForm(TFCadAcessorios, FCadAcessorios, 1)='Selected'
       Then Begin
       	If EdQuantAcessorio.Text<>''
           Then Begin
               XCOD_ITEMACESSORIO:=DMESTOQUE.WSimilar.FieldByName('COD_ESTOQUE').AsInteger;
               EscreveLabelsACES;
               PListaAcessorios.Visible:=False;
               If EdQuantAcessorio.ValueNumeric=0 Then
                   EdQuantAcessorio.ValueNumeric:=1;
               EdQuantAcessorio.SetFocus;
           End;
       End;
   End;
end;
//Filtra as tabelas e escreve em edits e labels as informações dos acessorios selecionado
Procedure TFProduto.EscreveLabelsACES;
Begin
	//Passa os valores do produto selecionado para as labels
   LAcessorioPesquisado.Caption:=DMMACS.TALX.FieldByName('DESCRICAO').AsString;
End;

procedure TFProduto.EdPesquisaAcessorioKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  	If PListaAcessorios.Visible=False
   Then Begin
   	If EdQuantAcessorio.Text<>''
       Then Begin
           PListaAcessorios.Top:=38;
           PListaAcessorios.Left:=2;
           PListaAcessorios.Visible:=True;
           PListaAcessorios.BringToFront;
           DMMACS.TALX.Close;
           DMMACS.TALX.SQL.Clear;
           DMMACS.TALX.SQL.Add(' select * from vwsimilar ');
           DMMACS.TALX.SQL.Add(' left join subproduto on vwsimilar.cod_subproduto = subproduto.cod_subproduto ');
           DMMACS.TALX.SQL.Add(' where subproduto.usoconsumo=''5'' ');
           DMMACS.TALX.Open;
           DBGListaAcessorios.DataSource:=DMMACS.DSALX;
       End;
   End;
   If Key=Vk_ESCAPE
   Then Begin
       PListaAcessorios.Visible:=False;
       LimpaLabelsAcessorios;
   End;
   If Key<>Vk_Return
   Then Begin
   	If (Key=VK_down) or (Key=VK_Up)
       Then Begin
       	If (Key=VK_down) Then
               DMMACS.TALX.Next;
       	If (Key=VK_Up) Then
               DMMACS.TALX.Prior;
       End
       Else Begin
           If DMMACS.TALX.Locate('descricao', UpperCase(EdPesquisaAcessorio.Text),[loPartialKey])=false
           Then Begin
               If DMMACS.TALX.Locate('contrint', UpperCase(EdPesquisaAcessorio.Text),[loPartialKey])=false
               Then Begin
                   XCodTmpEstoque:=DBGListaAcessorios.Columns[0].Field.Text;
               End;
           End
           Else Begin
               XCodTmpEstoque:=DBGListaAcessorios.Columns[0].Field.Text;
           End;
       End;
   End
   Else Begin
   	If EdPesquisaAcessorio.Text<>''
       Then Begin
           XCodTmpEstoque:=DBGListaAcessorios.Columns[0].Field.Text;
           If XCodTmpEstoque<>''
           Then Begin
               DMMACS.TALX.Close;
               DMMACS.TALX.SQL.Clear;
               DMMACS.TALX.SQL.Add('  select * from vwsimilar ');
               DMMACS.TALX.SQL.Add('  left join subproduto on vwsimilar.cod_subproduto = subproduto.cod_subproduto ');
               DMMACS.TALX.SQL.Add('  where (subproduto.usoconsumo='+#39+'5'+#39+')  and (vwsimilar.cod_estoque=:codigo)' );
               DMMACS.TALX.ParamByName('codigo').AsString:=XCodTmpEstoque;
               DMMACS.TALX.Open;
               If not DMMACS.TALX.IsEmpty
               Then Begin
                   XCOD_ITEMACESSORIO:=DMMACS.TALX.FieldByName('COD_ESTOQUE').AsInteger;
                   EscreveLabelsACES;
                   PListaAcessorios.Visible:=False;
                   If EdQuantAcessorio.ValueNumeric=0 Then
                       EdQuantAcessorio.ValueNumeric:=1;
                   If XCOD_ITEMACESSORIO>0 Then
                       EdQuantAcessorio.SetFocus;
               End
               Else Begin
                   XCOD_ITEMACESSORIO:=-1;
                   LimpaLabelsAcessorios;
               End;
           End;
       End;
   End; 
end;

procedure TFProduto.EdCodUnidadeCompraExit(Sender: TObject);
begin
  inherited;
		If FiltraTabela(DMEstoque.TUnidade, 'unidade', 'cod_unidade', EdCodUnidadeCompra.Text, '')=True
      	Then Begin
			XCodUnidadeCompra:=DMEstoque.TUnidade.FieldByName('cod_unidade').AsInteger;
        	EdCodUnidadeCompra.Text:=DMEstoque.TUnidade.FieldByName('cod_unidade').AsString;
        	EdUnidadeCompra.Text:=DMEstoque.TUnidade.FieldByName('sigla_unid').AsString+'-'+DMEstoque.TUnidade.FieldByName('desc_unid').AsString;
    	End
       Else Begin
			XCodUnidadeCompra:=-1;
        	EdCodUnidadeCompra.Text:='';
        	EdUnidadeCompra.Text:='';
       End;
end;

procedure TFProduto.EdCodUnidadeVendaExit(Sender: TObject);
begin
  inherited;
   If FiltraTabela(DMEstoque.TUnidade, 'unidade', 'cod_unidade', EdCodUnidadeVenda.Text, '')=True
   Then Begin
       XCodUnidadeVenda:=DMEstoque.TUnidade.FieldByName('cod_unidade').AsInteger;
       EdCodUnidadeVenda.Text:=DMEstoque.TUnidade.FieldByName('cod_unidade').AsString;
       EdUnidadeVenda.Text:=DMEstoque.TUnidade.FieldByName('sigla_unid').AsString+'-'+DMEstoque.TUnidade.FieldByName('desc_unid').AsString;
   End
   Else Begin
       XCodUnidadeVenda:=-1;
       EdCodUnidadeVenda.Text:='';
       EdUnidadeVenda.Text:='';
   End;
end;
procedure TFProduto.DBDESCIndExit(Sender: TObject);
var
	xDesc, xAux: Real;
begin
  inherited;
 if (DBDESCInd.Text = '') then
   DBDESCInd.Text := '0';
	if XAuxDesc <> StrToCurr(DBDESCInd.Text) then
   begin
   	if XAuxDesc > StrToCurr(DBDESCInd.Text) then
       	xAux := EdVlrVarejoVista.ValueNumeric
		else
	   		xAux := DMESTOQUE.TEstoque.Fieldbyname('VENDINDV').Ascurrency;

     	xDesc := StrToCurr(DBDESCInd.Text);
   end else
   	xAux := EdVlrIndustriaVista.ValueNumeric;

   DMESTOQUE.TEstoque.Edit;
   DMESTOQUE.TEstoque.Fieldbyname('VENDINDV').Ascurrency := xAux - ((xDesc * xAux) / 100);
   DMESTOQUE.TEstoque.Post;

   DMESTOQUE.TEstoque.Transaction.CommitRetaining;

   SincroValores(1);
end;

procedure TFProduto.DBACRECINDExit(Sender: TObject);
var
	xDesc, xAux: Real;
begin
  inherited;
 if (DBACRECIND.Text = '') then
   DBACRECIND.Text := '0';
	if XAuxDesc <> StrToCurr(DBACRECIND.Text) then
   begin
   	if XAuxDesc > StrToCurr(DBACRECIND.Text) then
       	xAux := EdVlrIndustriaVista.ValueNumeric
		else
	   		xAux := DMESTOQUE.TEstoque.Fieldbyname('VENDINDP').Ascurrency;

     	xDesc := StrToCurr(DBACRECIND.Text);
   end else
   	xAux := EdVlrIndustriaPrazo.ValueNumeric;

   DMESTOQUE.TEstoque.Edit;
   DMESTOQUE.TEstoque.Fieldbyname('VENDINDP').Ascurrency := xAux + ((xDesc * xAux) / 100);
   DMESTOQUE.TEstoque.Post;

   DMESTOQUE.TEstoque.Transaction.CommitRetaining;

   SincroValores(1);  
end;

procedure TFProduto.btnFechaPVlrSegClick(Sender: TObject);
begin
  inherited;
	pVlrSeguranca.Visible := False;
   pVlrSeguranca.SendToBack;
end;

procedure TFProduto.btnOkVlrSegClick(Sender: TObject);
begin
  inherited;
   btnFechaPVlrSegClick(sender);
end;

procedure TFProduto.lbVlrSegurancaClick(Sender: TObject);
begin
  inherited;
	pVlrSeguranca.Visible := True;
   pVlrSeguranca.BringToFront;
end; 
procedure TFProduto.DBDESCIndEnter(Sender: TObject);
begin
  inherited;
   XAuxDesc := DMESTOQUE.TEstoque.fieldbyname('AVVPROIND').AsCurrency;
end;

procedure TFProduto.DBACRECINDEnter(Sender: TObject);
begin
  inherited;
   XAuxDesc := DMESTOQUE.TEstoque.fieldbyname('AVPPROIND').AsCurrency;
end;

procedure TFProduto.EdVlrIndustriaVistaExit(Sender: TObject);
begin
  inherited;
   SincroValores(0);
end;

procedure TFProduto.EdVlrIndustriaPrazoExit(Sender: TObject);
begin
  inherited;
   SincroValores(0);
end;

procedure TFProduto.SolicitarCompraClick(Sender: TObject);
begin
  inherited;
   //Seta que está sendo feito a "importação" das informações
   FMenu.xImportando := True;
   //Salva temporario o código do estoque para consulta no formulário de solicitação de compra   
   FMenu.XCodEstoqueImportacao := DMESTOQUE.WSimilar.FieldByName('COD_ESTOQUE').AsString;
   AbrirForm(TFSolicitarCompra, FSolicitarCompra, 0);
end;

procedure TFProduto.pCfopDentroEstadoBTNOPENClick(Sender: TObject);
begin
  inherited;
    If AbrirForm(TFCADCFOP, FCADCFOP, 1)='Selected'
    Then Begin
       XCODCFOPDENTRO := DMESTOQUE.TCFOP.FieldByName('COD_CFOP').AsInteger;
       pCfopDentroEstado.EDCodigo.Text :=DMESTOQUE.TCFOP.FieldByName('CFOP').AsString;
       pCfopDentroEstado.EdDescricao.Text:=DMESTOQUE.TCFOP.FieldByName('DESCRICAO').AsString;
    End;
    pCfopDentroEstado.Repaint;
end;

procedure TFProduto.pCfopForaEstadoBTNOPENClick(Sender: TObject);
begin
  inherited;
    If AbrirForm(TFCADCFOP, FCADCFOP, 1)='Selected'
    Then Begin
       XCODCFOPFORA := DMESTOQUE.TCFOP.FieldByName('COD_CFOP').AsInteger;
       pCfopForaEstado.EDCodigo.Text:=DMESTOQUE.TCFOP.FieldByName('CFOP').AsString;
       pCfopForaEstado.EdDescricao.Text:=DMESTOQUE.TCFOP.FieldByName('DESCRICAO').AsString;
    End;
    pCfopForaEstado.Repaint;
end;

procedure TFProduto.pCfopDentroEstadoBTNMINUSClick(Sender: TObject);
begin
  inherited;
	XCODCFOPDENTRO := -1;
	pCfopDentroEstado.EDCodigo.Text := '';
	pCfopDentroEstado.EdDescricao.Text:= '';

   pCfopDentroEstado.Repaint;
end;

procedure TFProduto.pCfopForaEstadoBTNMINUSClick(Sender: TObject);
begin
  inherited;
	XCODCFOPFORA := -1;
	pCfopForaEstado.EDCodigo.Text := '';
	pCfopForaEstado.EdDescricao.Text := '';

   pCfopForaEstado.Repaint;
end;

procedure TFProduto.BtnSolicitaCompraClick(Sender: TObject);
begin
	AbrirForm(TFSolicitarCompra, FSolicitarCompra, 0);	
end;

procedure TFProduto.btnFichaTecnicaClick(Sender: TObject);
begin
  inherited;
  	//Edmar - 16/09/2014 - Cria o formulario de solicitação e compra
   FFichaTecnica := TFFichaTecnica.Create(FFichaTecnica);
   //Salva temporario o código do estoque para consulta no formulário de solicitação de compra
   FFichaTecnica.XCodEstoque := DMESTOQUE.WSimilar.FieldByName('COD_ESTOQUE').AsInteger;
   FFichaTecnica.ShowModal;   
end;

procedure TFProduto.FichaTcnica1Click(Sender: TObject);
begin
  inherited;
   //Edmar - 22/10/2014 - Filtra buscando os dados da empresa para o cabeçalho
   DMFAST.QAlx1.Close;
   DMFAST.QAlx1.SQL.Clear;
   DMFAST.QAlx1.SQL.Add(' SELECT LOJA.LOGOEMPRESA, EMPRESA.RAZAO_SOCIAL, EMPRESA.ENDERECO, EMPRESA.NUMERO, EMPRESA.BAIRRO, VWCIDADE.NOME CIDADE, VWCIDADE.UF, EMPRESA.FONE ');
   DMFAST.QAlx1.SQL.Add(' FROM EMPRESA ');
   DMFAST.QAlx1.SQL.Add(' LEFT JOIN LOJA ON LOJA.COD_EMPRESA = EMPRESA.COD_EMPRESA ');
   DMFAST.QAlx1.SQL.Add(' LEFT JOIN VWCIDADE ON VWCIDADE.COD_CIDADE = EMPRESA.COD_CIDADE ');
   DMFAST.QAlx1.SQL.Add(' WHERE LOJA.COD_LOJA = :LOJA ');
   DMFAST.QAlx1.ParamByName('LOJA').AsString := FMenu.LCODLOJA.Caption;
   DMFAST.QAlx1.Open;

	//Edmar - 22/10/2014 - Filtra buscando se existe ficha técnica para aquele produto
   DMFAST.QAlx.Close;
   DMFAST.QAlx.SQL.Clear;
   DMFAST.QAlx.SQL.Add(' SELECT FICHATECNICA.COD_SETOR, SUBPRODUTO.DESCRICAO, SUBPRODUTO.CONTRINT CTRL_PROD FROM FICHATECNICA ');
   DMFAST.QAlx.SQL.Add(' LEFT JOIN ESTOQUE ON ESTOQUE.COD_ESTOQUE = FICHATECNICA.COD_ESTOQUE ');
   DMFAST.QAlx.SQL.Add(' LEFT JOIN SUBPRODUTO ON SUBPRODUTO.COD_SUBPRODUTO = ESTOQUE.COD_SUBPROD ');
   DMFAST.QAlx.SQL.Add(' WHERE FICHATECNICA.COD_ESTOQUE = :PRODFCH ');
   DMFAST.QAlx.ParamByName('PRODFCH').AsInteger := DMESTOQUE.WSimilar.FieldByName('COD_ESTOQUE').AsInteger;
   DMFAST.QAlx.Open;

	//Se o produto possui ficha tecnica, busca seus itens
  //cod_setor é PK de ficha técnica
   if not DMFAST.QAlx.IsEmpty then
   begin         
		DMFAST.QItRel.Close;
       DMFAST.QItRel.SQL.Clear;
       DMFAST.QItRel.SQL.Add(' select distinct(setorproducao.cod_setorproducao), estoque.VLRCOMPSD as valunit, setorproducao.descricao SETOR, SUBPRODUTO.CONTRINT CTRL_COMP, subproduto.descricao ITEM, itemfichatecnica.quantidade QTDE from fichatecnica ');
       DMFAST.QItRel.SQL.Add(' left join itemfichatecnica on itemfichatecnica.cod_fichatecnica = fichatecnica.cod_setor ');
       DMFAST.QItRel.SQL.Add(' left join setorproducao on setorproducao.cod_setorproducao = itemfichatecnica.cod_setorproducao ');
       DMFAST.QItRel.SQL.Add(' left join estoque on estoque.cod_estoque = itemfichatecnica.cod_estoque ');
       DMFAST.QItRel.SQL.Add(' left join subproduto on subproduto.cod_subproduto = estoque.cod_subprod ');
       DMFAST.QItRel.SQL.Add(' where fichatecnica.cod_setor = :FICHA ');
       DMFAST.QItRel.SQL.Add(' ORDER BY SETOR, ITEM ');

       DMFAST.QItRel.ParamByName('FICHA').AsInteger := DMFAST.QAlx.FieldByName('COD_SETOR').AsInteger;
       DMFAST.QItRel.Open;

       DMFAST.QItRel.First;

       if not DMFAST.QItRel.IsEmpty then
       begin
       	frxItensFichaTecnica.DataSet := DMFAST.QItRel;
           frxProdFichaTecnica.DataSet := DMFAST.QAlx;
           frxInfoEmpresa.DataSet := DMFAST.QAlx1;
           
           frxRelatorioProduto.LoadFromFile('C:\MZR\Macs\Rel\FrfRelFichaTecnica.fr3');
           frxRelatorioProduto.ShowReport();
       end;
   end
   else
   	Mensagem(' I N F O R M A Ç Ã O ', 'O Produto '+DMESTOQUE.WSimilar.FieldByName('DESCRICAO').AsString+' não possui Ficha Tecnica atribuida a ele.', '', 1, 1, False, 'I');
end;

procedure TFProduto.AtualizarCusto1Click(Sender: TObject);
begin
  inherited;
	AtualizaValorCustoProduto_BaseProdutoAcabado(DMESTOQUE.WSimilar.FieldByName('COD_ESTOQUE').AsInteger);
//	AtualizaValorCustoProduto(DMESTOQUE.WSimilar.FieldByName('COD_ESTOQUE').AsInteger, -1);
end;

procedure TFProduto.CriarCpiadesteItem1Click(Sender: TObject);
var
	xNovaFichaTecnica, xNovoItemFichaTecnica: Integer;
begin
  	inherited;
   //Edmar - 02/12/2014 - Copia o código do estoque do produto que está sendo copiado
   xCodEstoqueCopia := DMESTOQUE.WSimilar.FieldByName('COD_ESTOQUE').AsInteger;

   //Edmar - 02/12/2014 - Busca os dados do estoque do item copiado
   if not FiltraTabela(DMESTOQUE.TEstoque, 'ESTOQUE', 'COD_ESTOQUE', DMESTOQUE.WSimilar.FieldByName('COD_ESTOQUE').AsString, '') then
   	Exit;

   //Edmar - 02/12/2014 - Busca os dados do subproduto do item copiado
   if not FiltraTabela(DMESTOQUE.TSubProd, 'SUBPRODUTO', 'COD_SUBPRODUTO', DMESTOQUE.TEstoque.FieldByName('COD_SUBPROD').AsString, '') then
   	Exit;

   //Edmar - 02/12/2014 - Busca os dados do item copiado
   if not FiltraTabela(DMESTOQUE.TProduto, 'PRODUTO', 'COD_PRODUTO', DMESTOQUE.TSubProd.FieldByName('COD_PRODUTO').AsString, '') then
   	Exit;

	XCOD_PRODUTO := DMESTOQUE.TProduto.FieldByName('COD_PRODUTO').AsInteger;
   XCOD_ULTPROD := XCOD_PRODUTO;

   //AS PRÓXIMAS VÁRIAVEIS SÃO UTLIZADAS PARA ARMAZENAR AS INFORMAÇÕES PARA SEREM JOGADAS AO PRÓXIMO PRODUTO
	XPRXDESC:=DMESTOQUE.TSubProd.FieldByName('DESCRICAO').AsString + ' (CÓPIA DO USUÁRIO '+FMenu.EdUsuario.Text+')';
   XPRXCODFAB:=DMESTOQUE.TSubProd.FieldByName('CODPRODFABR').AsString;
   XPRXFAB:=DMESTOQUE.TSubProd.FieldByName('FABRICANTE').AsString;
   XPRXCODCST:=DMESTOQUE.TSubProd.FieldByName('COD_CST').AsString;
   XPRXCODUNICOMP:=DMESTOQUE.TSubProd.FieldByName('COD_UNIDCOMPRA').AsString;
   XPRXCODUNIVEND:=DMESTOQUE.TSubProd.FieldByName('COD_UNIDVENDA').AsString;
   XPRXMARCA:=DMESTOQUE.TSubProd.FieldByName('MARCA').AsString;
	XLOCALESTANTE:=DMESTOQUE.TSubProd.FieldByName('LOCALESTANTE').AsString;
   XANVISA:=DMESTOQUE.TSubProd.FieldByName('ANVISA').AsString;
   XMINSAUDE:=DMESTOQUE.TSubProd.FieldByName('MINSAUDE').AsString;
   XESPECIFICACAO:=DMESTOQUE.TSubProd.FieldByName('ESPECIFICACAO').AsString;
   XCLASSIFICACAO:=DMESTOQUE.TSubProd.FieldByName('CLASSIFICACAO').AsString;
   XNCM:=DMESTOQUE.TSubProd.FieldByName('NCM').AsString;
   XQUANTGARANT:=DMESTOQUE.TSubProd.FieldByName('QUANTGARANTIA').AsString;
   XTIPOGARANT:=DMESTOQUE.TSubProd.FieldByName('TIPOGARANTIA').AsString;
   XBALANCA:=DMESTOQUE.TSubProd.FieldByName('BALANCA').AsString;
   XOBSFISCAL:=DMESTOQUE.TSubProd.FieldByName('OBSFISCAL').AsString;
   XCOMPOSICAO:=DMESTOQUE.TSubProd.FieldByName('COMPOSICAO').AsString;
   XLARGURA:=DMESTOQUE.TSubProd.FieldByName('LARGURA').AsString;
   XALTURA:=DMESTOQUE.TSubProd.FieldByName('ALTURA').AsString;
   XDENSIDADE:=DMESTOQUE.TSubProd.FieldByName('DENSIDADE').AsString;
   XPESOLIQ:=DMESTOQUE.TSubProd.FieldByName('PESOLIQ').AsString;
   XPESOBRUTO:=DMESTOQUE.TSubProd.FieldByName('PESOBRUTO').AsString;
   XQTDATC:=DMESTOQUE.TSubProd.FieldByName('QTDATC').AsString;

   XCOPIAITEM := True;

   CadastrarumProdutoSimilar1Click(Self);

	//Edmar - 02/12/2014 - Após copiar o produto e criar um novo
   //busca se o item copiado possui uma ficha técnica atribuida
   //e também faz a cópia
   DMESTOQUE.Alx.Close;
   DMESTOQUE.Alx.SQL.Clear;
   DMESTOQUE.Alx.SQL.Add(' SELECT * FROM FICHATECNICA WHERE FICHATECNICA.COD_ESTOQUE = :ESTOQUE ');
	DMESTOQUE.Alx.ParamByName('ESTOQUE').AsInteger := xCodEstoqueCopia;
   DMESTOQUE.Alx.Open;

   //se o item copiado possui um ficha tecnica:
   // 1. Cria uma nova ficha técnica
   // 2. Busca todos os componentes da ficha técnica do produto copiado
   // 3. Transfere os itens da ficha tecnica copiada para a recém criada.
   if not DMESTOQUE.Alx.IsEmpty then
   begin
   	//- 1 -//
   	xNovaFichaTecnica := InserReg(DMESTOQUE.TFichaTecnica, 'FICHATECNICA', 'COD_SETOR');
    	DMESTOQUE.TFichaTecnica.FieldByName('COD_SETOR').AsInteger := xNovaFichaTecnica;
    	DMESTOQUE.TFichaTecnica.FieldByName('COD_ESTOQUE').AsInteger := DMESTOQUE.TEstoque.FieldByName('COD_ESTOQUE').AsInteger;
    	DMESTOQUE.TFichaTecnica.Post;

       //- 2 -//
       DMESTOQUE.Alx1.Close;
       DMESTOQUE.Alx1.SQL.Clear;
       DMESTOQUE.Alx1.SQL.Add(' SELECT * FROM ITEMFICHATECNICA WHERE COD_FICHATECNICA = :CODFCH ');
       DMESTOQUE.Alx1.ParamByName('CODFCH').AsInteger := DMESTOQUE.Alx.FieldByName('COD_SETOR').AsInteger;
       DMESTOQUE.Alx1.Open;

       DMESTOQUE.Alx1.First;
       
       while not DMESTOQUE.Alx1.Eof do
       begin
       	//- 3 -//
       	xNovoItemFichaTecnica := InserReg(DMESTOQUE.TItemFichaTecnica, 'ITEMFICHATECNICA', 'COD_ITEMFICHATECNICA');
           DMESTOQUE.TItemFichaTecnica.FieldByName('COD_ITEMFICHATECNICA').AsInteger := xNovoItemFichaTecnica;
           DMESTOQUE.TItemFichaTecnica.FieldByName('COD_ESTOQUE').AsInteger := DMESTOQUE.Alx1.FieldByName('COD_ESTOQUE').AsInteger;
           DMESTOQUE.TItemFichaTecnica.FieldByName('COD_SETORPRODUCAO').AsInteger := DMESTOQUE.Alx1.FieldByName('COD_SETORPRODUCAO').AsInteger;
           DMESTOQUE.TItemFichaTecnica.FieldByName('QUANTIDADE').AsInteger := DMESTOQUE.Alx1.FieldByName('QUANTIDADE').AsInteger;
           DMESTOQUE.TItemFichaTecnica.FieldByName('COD_FICHATECNICA').AsInteger := xNovaFichaTecnica;
           DMESTOQUE.TItemFichaTecnica.Post;

       	DMESTOQUE.Alx1.Next;
       end;
   end;

   XCOPIAITEM := False; 
end;

procedure TFProduto.HistricodeVendas1Click(Sender: TObject);
begin
  inherited;
  	If ControlAccess('RFINEST', 'M')=False Then
  		Exit;
	 FMenu.TIPOREL:='HISTVENDA';
    AbrirForm(TFRelHistVenda, FRelHistVenda, 0);
end;

procedure TFProduto.Relatriosdeprodutosecompradores1Click(Sender: TObject);
begin
  inherited;
  	If ControlAccess('RFINEST', 'M')=False Then
  		Exit;
	 FMenu.TIPOREL:='PRODCOMPRADORES';
    AbrirForm(TFRelHistVenda, FRelHistVenda, 0);
end;

procedure TFProduto.cbAcessorioClick(Sender: TObject);
begin
  inherited;
	 if (cbAcessorio.Checked) then
    XAcessorio := True
  else
    XAcessorio := False;
end;

procedure TFProduto.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  inherited;

	if (DMESTOQUE.WSimilar.FieldByName('MARK').AsString='X') then
		DBGrid1.Canvas.Brush.Color := $004D4DFF;

	DBGrid1.Canvas.FillRect(Rect);
   DBGrid1.DefaultDrawDataCell(Rect, DBGrid1.Columns[datacol].Field, State);
//   TFloatField(DMESTOQUE.WSimilar.FieldByName('ESTFISICO')).DisplayFormat:=#,###,##0.00;
//   DBGrid1.Fields[3].EditMask := '!999.99;1;_';
   //DBGrid1.Fields[8].EditMask := '!999.99;1;_';
   
end;

procedure TFProduto.btnFornecedorClick(Sender: TObject);
begin
  inherited;
	FiltraTabela(DMPESSOA.WFornecedor, 'VWFORNEC', '', '', ' ORDER BY NOME'); //LIBERA TODOS OS REGISTROS PARA CONSULTA
  	FMenu.XPreSel := True;
  	FMenu.XFieldPesqPreSel := 'COD_INTERNO';
  	if AbrirForm(TFFornecedor, FFornecedor, 1) = 'Selected' then
   begin
   	XCOD_FORNECEDOR 	     := DMPESSOA.WFornecedor.FieldByName('COD_FORNEC').AsInteger;
       lbNomeFornecedor.Caption := DMPESSOA.WFornecedor.FieldByName('NOME').AsString;
       edCodFornec.Text 		 := DMPESSOA.WFornecedor.FieldByName('COD_INTERNO').AsString;
	end
   else begin
   	XCOD_FORNECEDOR 	     := -1;
       lbNomeFornecedor.Caption := '';
       edCodFornec.Text 		 := '';
   end;
end;

procedure TFProduto.edCodFornecKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
	if Key = #13 then
   begin
   	//Edmar - 19/06/2015 - Filtra o cliente pelo código interno
   	if FiltraTabela(DMPESSOA.WFornecedor, 'VWFORNEC', 'COD_INTERNO', edCodFornec.Text, '') then
       begin
           XCOD_FORNECEDOR 	     := DMPESSOA.WFornecedor.FieldByName('COD_FORNEC').AsInteger;
           lbNomeFornecedor.Caption := DMPESSOA.WFornecedor.FieldByName('NOME').AsString;
           edCodFornec.Text 		 := DMPESSOA.WFornecedor.FieldByName('COD_INTERNO').AsString;
       end
       else begin//se não achar limpa as variaveis
           XCOD_FORNECEDOR 	     := -1;
           lbNomeFornecedor.Caption := '';
           edCodFornec.Text 		 := '';
       end;
   end;
end;

procedure TFProduto.edCodFornecChange(Sender: TObject);
begin
  inherited;
	if edCodFornec.Text = '' then
   begin
   	XCOD_FORNECEDOR 	     := -1;
   	lbNomeFornecedor.Caption := '';
   	edCodFornec.Text 		 := '';
   end; 
end;

procedure TFProduto.btnhelpClick(Sender: TObject);
begin
  inherited;
   AbrirHelp(estoque);
end;

procedure TFProduto.ProdutoscomNCMsinativos1Click(Sender: TObject);
begin
  inherited;
	AbrirForm(TFRelProdutosNcm, FRelProdutosNcm, 0);
end;

procedure TFProduto.Deacordocomquantidadeemestoque1Click(Sender: TObject);
Var
	XJuncao: String;
begin
  inherited;
   //AS INFORMAÇÕES DEVEM SER RETIRADAS DOS PEDIDOS DE COMPRA
   DMESTOQUE.TRel.CLOSE;
   DMESTOQUE.TRel.SQL.Clear;
   DMESTOQUE.TRel.SQL.Add(' SELECT subproduto.cod_subproduto, subproduto.codprodfabr AS CODFAB, produto.descricao AS GRADE, subproduto.descricao AS DESCR,  subproduto.CLASSIFICACAO,  subproduto.FABRICANTE, ');
   DMESTOQUE.TRel.SQL.Add(' estoque.vendvarv as PRECO,  SubProduto.Marca as MARCA, subproduto.localestante AS CODCOMPOSTO, subproduto.cor, estoque.estfisico As QTD, subproduto.contrint, ');
   DMESTOQUE.TRel.SQL.Add(' estoque.vendvarp as PRECOPRAZO,  estoque.dtcad, subproduto.altura AS ALTURA, subproduto.LARGURA AS LARGURA, subproduto.composicao AS COMPOSICAO, ');
   DMESTOQUE.TRel.SQL.Add(' subproduto.codbarra AS CODBARRA');
   DMESTOQUE.TRel.SQL.Add(' from SUBPRODUTO ');
   DMESTOQUE.TRel.SQL.Add(' left join estoque ON subproduto.cod_subproduto = estoque.cod_subprod ');
   DMESTOQUE.TRel.SQL.Add(' left join Produto ON Produto.cod_Produto = subproduto.cod_Produto ');
   DMESTOQUE.TRel.SQL.Add(' left join GrupoProd ON GrupoProd.cod_GrupoProd = Produto.cod_GrupoProd ');
   DMESTOQUE.TRel.SQL.Add(' left join SubGrupoProd ON SubGrupoProd.cod_SubGrupoProd = Produto.cod_SubGrupoProd ');
   DMESTOQUE.TRel.SQL.Add(' WHERE (ESTOQUE.COD_LOJA='+FMenu.LCODLOJA.Caption+') ');
   DMESTOQUE.TRel.SQL.Add(' and (subproduto.mark = '+#39+'X'+#39')');
   DMESTOQUE.TRel.SQL.Add(' order by subproduto.descricao');
   DMESTOQUE.TRel.SQL.Text;
   DMESTOQUE.TRel.Open;
   If Not DMESTOQUE.TRel.IsEmpty
   Then Begin
		If DMMACS.TLoja.FieldByName('ETPERSONAL').AsString='1'
   	Then Begin
			PrnEtiqPerson(True, 0, -1);
   	End;
   	If DMMACS.TLoja.FieldByName('ETPERSONAL').AsString='2'
   	Then Begin
			PrnEtiqPerson02(True, 0, -1);
  		End;
   	//Paulo 13/12/2010: Para impressão de etiquetas de ótica
   	If DMMACS.TLoja.FieldByName('ETPERSONAL').AsString='3'
   	Then Begin
       	PrnEtiqPersonalOtica(True, 0, -1);
   	End;
   	If DMMACS.TLoja.FieldByName('ETPERSONAL').AsString='0'
   	Then Begin
   		If DMMACS.TLoja.FieldByName('TIPOETPROD').AsString='2X12'
   		Then Begin
				PrnEtiq2X12(True, 0, -1);
      		End;
   		If DMMACS.TLoja.FieldByName('TIPOETPROD').AsString='T3C' Then
				PrnEtiqT3C(True, 0, 0);
   		If DMMACS.TLoja.FieldByName('TIPOETPROD').AsString='Z2C' Then
				PrnEtiqZ2C(True, 0, 0);
   	End;
	End
   Else Begin
		MessageDlg('Nenhum produto foi selecionado', mtWarning, [mbOK], 0);
   End;
end;

procedure TFProduto.eladeFiltrosparaetiquetas1Click(Sender: TObject);
begin
  inherited;
   FMenu.TIPOREL:='ETBARRA';
   AbrirForm(TFRELETIQESTOQUE, FRELETIQESTOQUE, 0);
end;

procedure TFProduto.Button2Click(Sender: TObject);
begin
  inherited;
   DMESTOQUE.TEstoque.Close;
   DMESTOQUE.TEstoque.SQL.Clear;
   DMESTOQUE.TEstoque.SQL.Add('SELECT * FROM ESTOQUE');
   DMESTOQUE.TEstoque.Open;
   DMESTOQUE.TEstoque.First;
   While not DMESTOQUE.TEstoque.Eof do
   Begin

       If DMESTOQUE.TEstoque.FieldByName('COD_ESTOQUE').AsString='5563' Then
           DMESTOQUE.TEstoque.FieldByName('cod_estoque').AsString;
       MDO.QConsulta.Close;
       MDO.QConsulta.SQL.Clear;
       MDO.QConsulta.SQL.Add(' select ep_historicopreco.ephprc_preco, ep_historicopreco.ephprc_precorevenda, ep_historicopreco.ephprc_datareajuste from ep_grupoprecoitem ');
       MDO.QConsulta.SQL.Add(' Left join ep_historicopreco on ep_grupoprecoitem.epgpi_id = ep_historicopreco.epgpi_id ');
       MDO.QConsulta.SQL.Add(' where ep_grupoprecoitem.epctb_codigo='+#39+DMESTOQUE.TEstoque.FieldByName('COD_ESTOQUE').asstring+#39+' order by ep_historicopreco.ephpi_id  desc');
       MDO.QConsulta.Open;
       If not MDO.QConsulta.IsEmpty
       Then Begin
           MDO.Query.Close;
           MDO.Query.SQL.Clear;
           MDO.Query.SQL.Add(' update estoque set estoque.vendvarv=:valor, estoque.vlrbonific=:revenda where estoque.cod_estoque=:codigoestoque ');
           MDO.Query.ParamByName('valor').AsCurrency:=MDO.QConsulta.FieldByName('ephprc_preco').AsCurrency;
           MDO.Query.ParamByName('revenda').AsCurrency:=MDO.QConsulta.FieldByName('ephprc_precorevenda').AsCurrency;
           MDO.Query.ParamByName('codigoestoque').AsString:=DMESTOQUE.TEstoque.FieldByName('cod_estoque').AsString;
           MDO.Query.ExecSQL;
       End;
       DMESTOQUE.TEstoque.Next;
   End;
   MDO.Transac.CommitRetaining;
   DMESTOQUE.TransacEstoque.CommitRetaining;
   MessageDlg('Alterações realizadas', mtWarning, [mbOK], 0);
end;

procedure TFProduto.Button3Click(Sender: TObject);
begin
  inherited;
   DMESTOQUE.TEstoque.Close;
   DMESTOQUE.TEstoque.SQL.Clear;
   DMESTOQUE.TEstoque.SQL.Add('SELECT * FROM ESTOQUE');
   DMESTOQUE.TEstoque.Open;
   DMESTOQUE.TEstoque.First;
   While not DMESTOQUE.TEstoque.Eof do
   Begin

       If DMESTOQUE.TEstoque.FieldByName('COD_ESTOQUE').AsString='351' Then
           DMESTOQUE.TEstoque.FieldByName('cod_estoque').AsString;
       MDO.QConsulta.Close;
       MDO.QConsulta.SQL.Clear;
       MDO.QConsulta.SQL.Add(' Select * from preco where preco.cod_estoque=:Codigo ');
       MDO.QConsulta.ParamByName('codigo').AsInteger:=DMESTOQUE.TEstoque.FieldByName('cod_estoque').AsInteger;
       MDO.QConsulta.Open;
       If not MDO.QConsulta.IsEmpty
       Then Begin
           MDO.Query.Close;
           MDO.Query.SQL.Clear;
           MDO.Query.SQL.Add(' update estoque set estoque.vendvarv=:valor, estoque.vendindv=:revenda where estoque.cod_estoque=:codigoestoque ');
           MDO.Query.ParamByName('valor').AsCurrency:=MDO.QConsulta.FieldByName('vendvarv').AsCurrency;
           MDO.Query.ParamByName('revenda').AsCurrency:=MDO.QConsulta.FieldByName('vendindv').AsCurrency;
           MDO.Query.ParamByName('codigoestoque').AsString:=DMESTOQUE.TEstoque.FieldByName('cod_estoque').AsString;
           MDO.Query.SQL.Text;
           MDO.Query.ExecSQL;
       End;
       DMESTOQUE.TEstoque.Next;
   End;
   MDO.Transac.CommitRetaining;
   DMESTOQUE.TransacEstoque.CommitRetaining;
   MessageDlg('Alterações realizadas', mtWarning, [mbOK], 0);

end;

procedure TFProduto.dbvalorunitarioExit(Sender: TObject);
begin
  inherited;
   if DMMACS.TLoja.FieldByName('RECALCULA_LUCRATIV_PRODUTO').AsString = '1' then
   begin//se na loja estiver pra recalcular a lucratividade do produto
       EdVlrVarejoVistaExit(sender);
   end
   else begin
       DBLucratExit(sender);
   end;
end;

procedure TFProduto.DbGCustoEstoqueEmpresaExit(Sender: TObject);
begin
  inherited;
   try
       DMENTRADA.TCustoNFeListagem.First;
       while not DMENTRADA.TCustoNFeListagem.Eof do
       begin
           if DMENTRADA.TCustoNFeListagem.FieldByName('COD_CUSTOESTOQUEEMPRESA').AsString <> '' then
           begin
               FiltraTabela(DMENTRADA.TCustoEstoqueEmpresa, 'CUSTOESTOQUEEMPRESA', 'COD_CUSTOESTOQUEEMPRESA', DMENTRADA.TCustoNFeListagem.FieldByName('COD_CUSTOESTOQUEEMPRESA').AsString, '');

               DMENTRADA.TCustoEstoqueEmpresa.Edit;
               DMENTRADA.TCustoEstoqueEmpresa.FieldByName('VALORUNITARIOCUSTO').AsCurrency := DMENTRADA.TCustoNFeListagem.FieldByName('VALORUNITARIOCUSTO').AsCurrency;
               DMENTRADA.TCustoEstoqueEmpresa.FieldByName('QUANTIDADEDISPONIVELVENDA').AsCurrency := DMENTRADA.TCustoNFeListagem.FieldByName('QUANTIDADEDISPONIVELVENDA').AsCurrency;               
               DMENTRADA.TCustoEstoqueEmpresa.Post;               
           end;

           DMENTRADA.TCustoNFeListagem.Next;
       end;
       
       DMENTRADA.IBT.CommitRetaining;
   except
       DMENTRADA.IBT.RollbackRetaining;
   end;
   SelecionaItensCustoProduto();
end;

procedure TFProduto.BitBtn16Click(Sender: TObject);
begin
  //inherited;
   GeraHist;
end;

procedure TFProduto.SpeedButton1Click(Sender: TObject);
begin
  inherited;
   FMenu.XCodSlave := XCOD_ESTOQUE;
   frmHistoricoMovimentoEstoque.showmodal;
end;

procedure TFProduto.btnEditaEstoqueClick(Sender: TObject);
begin
  inherited;
	//EFETUA CONTROLE DE ACESSO
   If ControlAccess('ACERTESTOQUE', 'M')=False Then
  		Exit;

   AbrirForm(TFLancamentoEstoque, FLancamentoEstoque, 0);
end;

procedure TFProduto.AjustarEstoque1Click(Sender: TObject);
begin
  inherited;
	//EFETUA CONTROLE DE ACESSO
   If ControlAccess('ACERTESTOQUE', 'M')=False Then
  		Exit;

   AbrirForm(TFLancamentoEstoque, FLancamentoEstoque, 0);
end;

end.

