unit UProduto;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  UCadPadrao, TFlatHintUnit, Grids, DBGrids, StdCtrls,
  TFlatEditUnit, Buttons, jpeg, ExtCtrls, Mask, ColorMaskEdit, EditFloat,
  ColorEditFloat, DB, TFlatRadioButtonUnit, FashionPanel, TFlatCheckBoxUnit,
  TFlatTabControlUnit, DBCtrls, DBColorEdit, DBColorComboBox, Menus,
  UFrmBusca, TFlatButtonUnit, DrLabel, ComCtrls, RpDefine, RpBase, RpSystem,
  FR_Class, FR_DSet, FR_DBSet, JLLabel;

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
    EtCdFabricante1: TMenuItem;
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
    Label58: TLabel;
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
    CbProdutoFrete: TCheckBox;
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
    Label5: TLabel;
    Label69: TLabel;
    dbvalorunitario: TDBEdit;
    DBVlrUnitCompSD: TDBEdit;
    DBColorEdit1: TDBColorEdit;
    DBFrete: TDBColorEdit;
    DBLucrat: TDBColorEdit;
    DBColorEdit2: TDBColorEdit;
    GbPreco: TGroupBox;
    Label36: TLabel;
    Label35: TLabel;
    Label39: TLabel;
    Label31: TLabel;
    Shape2: TShape;
    Label1: TLabel;
    Label8: TLabel;
    Label7: TLabel;
    EdVlrVarejoVista: TColorEditFloat;
    EdVlrVarejoPrazo: TColorEditFloat;
    EdVlrAtacadoVista: TColorEditFloat;
    EdVlrAtacadoPrazo: TColorEditFloat;
    DBColorEdit13: TDBColorEdit;
    DBColorEdit12: TDBColorEdit;
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
    Label71: TLabel;
    Label128: TLabel;
    Label130: TLabel;
    Label53: TLabel;
    Label89: TLabel;
    Label90: TLabel;
    DBColorEdit17: TDBColorEdit;
    DBIPI: TDBColorEdit;
    DBColorEdit32: TDBColorEdit;
    DBICMS: TDBColorEdit;
    DBColorEdit9: TDBColorEdit;
    DBColorEdit10: TDBColorEdit;
    TabSheet3: TTabSheet;
    Label24: TLabel;
    Label28: TLabel;
    Label12: TLabel;
    Label27: TLabel;
    Label30: TLabel;
    Label29: TLabel;
    Label13: TLabel;
    Label68: TLabel;
    DBColorEdit15: TDBColorEdit;
    DBColorEdit14: TDBColorEdit;
    DBEstIni: TDBColorEdit;
    DBESTFISICO: TDBColorEdit;
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
    Shape4: TShape;
    Label100: TLabel;
    LEstFisico: TLabel;
    Label102: TLabel;
    LEstCalc: TLabel;
    PageControl2: TPageControl;
    TabSheet7: TTabSheet;
    DBGrid2: TDBGrid;
    TabSheet8: TTabSheet;
    DBGrid5: TDBGrid;
    TabSheet9: TTabSheet;
    DBGrid3: TDBGrid;
    TabSheet10: TTabSheet;
    DBGrid4: TDBGrid;
    TabSheet11: TTabSheet;
    DBGrid6: TDBGrid;
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
    RvSystem1: TRvSystem;
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
    Button1: TButton;
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
    CBGerarPisCofins: TCheckBox;
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
    procedure CbProdutoFreteClick(Sender: TObject);
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
  private
    { Private declarations }
	 Procedure PrepInsert;//nesta procedure vai os comandos comuns para inserção de produto ou similar
	 Procedure SelectSim;//Seleciona similares de acordo com wProduto
	 Procedure InfoCores;//Informa a combo de cores as cores configuradas na loja
    Procedure GeraHist;//Procedure utilizada para lançar sql para filtrara e calcular os historicos do produto corrente
    Procedure SelecionaCodigoBarra;//Procedure q seleciona todos os codigos de barra para determinado produto
    procedure ReturnResultContas;//Procedure para calcular e recuperar valores das contas atreladas aos produtos

  public
    { Public declarations }
    //Relaiza cálculos para o produto XRET: 1 PARA RETORNAR VALORES AS EDITS DO FPRODUTO/ XCALCLUC: 1 PARA RETORNAR O PERCENTUAL DE LUCRATIVIDADE DO PRODUTO COM RELAÇÃO AO PREÇO DE VENDA
    Procedure CalculoVenda(DescVistaVar: Real; AcrecPrazoVar: Real; DescVistaAtac: Real; AcrecPrazoAtac: Real; ComVistaVar: Real; ComPrazoVar: Real; ComVistaAtac: Real; ComPrazoAtac: Real; XRET: INTEGER; XCALCLUC: INTEGER);
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

  end;

var
  FProduto: TFProduto;
  XCOD_ESTOQUE, XCST, XCodUnidadeCompra, XCodUnidadeVenda, XCodGrupo, XCodSubgrupo, XCOD_PRODUTO, XCOD_SIMILAR: Integer;//ARMAZENA OS VALORES DE CODIGO DE ESTOQUE, CODIGO DO PRODUTO E CODIGO DO SUBPRODUTO
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
implementation

uses UMenu, UDMEstoque, UCadGrupo, UCadSubgrupo, AlxMessage, Alxor32,
  UCadCST, UCadUnidade, UCadEmpresa, UDMMacs, URelEstoque, UDMEntrada,
  UDMSaida, Alxorprn, Math, UPadrao, UCadOferta, UConfigLoja,
  UCadProduto, UNcm, UDMCaixa, UDMConta, UConsPlncta, URelData, UMDO,
  Variants, UCadAcessorios, USenha;

{$R *.DFM}

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
           GroupBox1.Visible:=False;
           DBGridCadastroPadrao.Visible:=False;
           GBSIMILAR.Top:=34;
           GBSIMILAR.Height:=428;
           DBGrid1.Height:=349;
           PGrade.Visible:=False;
      End
      Else Begin
           //COM A GRADE
           GroupBox1.Visible:=True;
           DBGridCadastroPadrao.Visible:=True;
           GBSIMILAR.Top:=214;
           GBSIMILAR.Height:=249;
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
	If tipo=0
   Then Begin
       DMESTOQUE.TEstoque.Edit;
       DMESTOQUE.TEstoque.FieldByName('VENDVARV').AsCurrency:=EdVlrVarejoVista.ValueNumeric;
       DMESTOQUE.TEstoque.FieldByName('VENDVARP').AsCurrency:=EdVlrVarejoPrazo.ValueNumeric;
       DMESTOQUE.TEstoque.FieldByName('VENDATAV').AsCurrency:=EdVlrAtacadoVista.ValueNumeric;
       DMESTOQUE.TEstoque.FieldByName('VENDATAP').AsCurrency:=EdVlrAtacadoPrazo.ValueNumeric;
       DMESTOQUE.TEstoque.Post;
   End;
   If Tipo=1
   Then Begin
	    EdVlrVarejoVista.ValueNumeric:=DMESTOQUE.TEstoque.FieldByName('VENDVARV').AsCurrency;
       EdVlrVarejoPrazo.ValueNumeric:=DMESTOQUE.TEstoque.FieldByName('VENDVARP').AsCurrency;
       EdVlrAtacadoVista.ValueNumeric:=DMESTOQUE.TEstoque.FieldByName('VENDATAV').AsCurrency;
       EdVlrAtacadoPrazo.ValueNumeric:=DMESTOQUE.TEstoque.FieldByName('VENDATAP').AsCurrency;
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
VAR
	QtdEntradas, QtdSaidas, ResultEst, TotComi, TotLuc, TOTCOMP, TOTVEND, QtdDev, TotDev: Real;
Begin
	QtdEntradas:=0;
   QtdSaidas:=0;
   ResultEst:=0;
   TotComi:=0;
   TotLuc:=0;
   TOTCOMP:=0;
   TOTVEND:=0;
	//TOTALIZA SOMATÓRIAS
   /////////////////////
	//FILTRA E TOTALIZA LANÇAMENTOS DE ENTRADA PARA CORREÇÃO
   DMESTOQUE.Alx.Close;
   DMESTOQUE.Alx.SQL.Clear;
   DMESTOQUE.Alx.SQL.Add('SELECT SUM(VWlancent.quantidade) AS TOTENT FROM VWlancent where VWlancent.cod_estoque=:CODESTOQUE');
   DMESTOQUE.Alx.ParamByName('CODESTOQUE').AsInteger:=XCOD_ESTOQUE;
   DMESTOQUE.Alx.Open;
   QtdEntradas:=QtdEntradas+DMESTOQUE.ALX.FieldByName('TOTENT').AsCurrency;

	//FILTRA  E TOTALIZA LANÇAMENTOS DE SAIDA PARA CORREÇÃO
   DMESTOQUE.Alx1.Close;
   DMESTOQUE.Alx1.SQL.Clear;
   DMESTOQUE.Alx1.SQL.Add('select SUM(VWlancsai.quantidade) AS TOTSAI  from vwlancsai where vwlancsai.cod_estoque=:CODESTOQUE');
   DMESTOQUE.Alx1.ParamByName('CODESTOQUE').AsInteger:=XCOD_ESTOQUE;
   DMESTOQUE.Alx1.Open;
   QtdSaidas:=QtdSaidas+DMESTOQUE.ALX1.FieldByName('TOTSAI').AsCurrency;

	//FILTRA  E TOTALIZA LANÇAMENTOS DE Producao
   DMMACS.TALX.Close;
   DMMACS.TALX.SQL.Clear;
   DMMACS.TALX.SQL.Add('  select SUM(iprdmat.qtd) AS TOTSAI  from iprdmat ');
   DMMACS.TALX.SQL.Add('   left join subproduto on iprdmat.cod_subproduto = subproduto.cod_subproduto ');
   DMMACS.TALX.SQL.Add('   left join estoque on subproduto.cod_subproduto = estoque.cod_subprod ');
   DMMACS.TALX.SQL.Add('   left join producao on iprdmat.cod_iprdmat = producao.cod_producao ');
   DMMACS.TALX.SQL.Add('   where estoque.cod_estoque=:CODIGO ');
   DMMACS.TALX.ParamByName('CODIGO').AsInteger:=XCOD_ESTOQUE;
   DMMACS.TALX.Open;
   QtdSaidas:=QtdSaidas+DMMACS.TALX.FieldByName('TOTSAI').AsCurrency;

	//FILTRA  E TOTALIZA LANÇAMENTOS DE COMPRAS
   DMESTOQUE.Alx3.Close;
   DMESTOQUE.Alx3.SQL.Clear;
   DMESTOQUE.Alx3.SQL.Add(' Select SUM(itenspedc.valortotal) AS TOTCOMP, SUM(itenspedc.qtdest) AS TOTENT ');
   DMESTOQUE.Alx3.SQL.Add(' From itenspedc ');
   DMESTOQUE.Alx3.SQL.Add(' left Join estoque on itenspedc.cod_estoque = estoque.cod_estoque');
   DMESTOQUE.Alx3.SQL.Add(' Where (Estoque.Cod_Estoque=:CODESTOQUE) ');
   DMESTOQUE.Alx3.ParamByName('CODESTOQUE').AsInteger:=XCOD_ESTOQUE;
   DMESTOQUE.Alx3.Open;
   QtdEntradas:=QtdEntradas+DMESTOQUE.Alx3.FieldByName('TOTENT').AsCurrency;
   TOTCOMP:=TOTCOMP+DMESTOQUE.Alx3.FieldByName('TOTCOMP').AsCurrency;

	//FILTRA  E TOTALIZA LANÇAMENTOS DE DEVOLUÇÃO DE VENDAS
   DMESTOQUE.Alx2.Close;
   DMESTOQUE.Alx2.SQL.Clear;
   DMESTOQUE.Alx2.SQL.Add(' Select SUM(itenspedven.vlrunitdev*itenspedven.qtddev) AS TOTVEND, SUM(itenspedven.qtddev) AS TOTSAI ');
   DMESTOQUE.Alx2.SQL.Add(' From itenspedven left join pedvenda on itenspedven.cod_pedven = pedvenda.cod_pedvenda');
   DMESTOQUE.Alx2.SQL.Add(' left Join estoque on itenspedven.cod_estoque = estoque.cod_estoque');
   DMESTOQUE.Alx2.SQL.Add(' Left Join subproduto on subproduto.cod_subproduto = estoque.cod_subprod');
   DMESTOQUE.Alx2.SQL.Add(' Where (Estoque.Cod_Estoque=:CODESTOQUE) ');
   DMESTOQUE.Alx2.ParamByName('CODESTOQUE').AsInteger:=XCOD_ESTOQUE;
   DMESTOQUE.Alx2.Open;
   QtdDev:=QtdDev+DMESTOQUE.Alx2.FieldByNAme('TOTSAI').AsCurrency;
   TotDev:=TotLuc+DMESTOQUE.Alx2.FieldByNAme('TOTVEND').AsCurrency;

	//FILTRA  E TOTALIZA LANÇAMENTOS DE VENDAS
   DMESTOQUE.Alx2.Close;
   DMESTOQUE.Alx2.SQL.Clear;
   DMESTOQUE.Alx2.SQL.Add(' Select SUM(itenspedven.valortotal) AS TOTVEND, SUM(itenspedven.qtdeprod) AS TOTSAI, SUM(itenspedven.comissao) AS TOTCOMI, SUM(itenspedven.lucmoe) AS TOTLUCMOE');
   DMESTOQUE.Alx2.SQL.Add(' From itenspedven left join pedvenda on itenspedven.cod_pedven = pedvenda.cod_pedvenda');
   DMESTOQUE.Alx2.SQL.Add(' left Join estoque on itenspedven.cod_estoque = estoque.cod_estoque');
   DMESTOQUE.Alx2.SQL.Add(' Left Join subproduto on subproduto.cod_subproduto = estoque.cod_subprod');
   DMESTOQUE.Alx2.SQL.Add(' Where (Estoque.Cod_Estoque=:CODESTOQUE) ');
   DMESTOQUE.Alx2.ParamByName('CODESTOQUE').AsInteger:=XCOD_ESTOQUE;
   DMESTOQUE.Alx2.Open;
   QtdSaidas:=QtdSaidas+DMESTOQUE.Alx2.FieldByNAme('TOTSAI').AsCurrency;
   TotComi:=TotComi+DMESTOQUE.Alx2.FieldByNAme('TOTCOMI').AsCurrency;
   TotLuc:=TotLuc+DMESTOQUE.Alx2.FieldByNAme('TOTLUCMOE').AsCurrency;
   TOTVEND:=TOTVEND+DMESTOQUE.Alx2.FieldByNAme('TOTVEND').AsCurrency;

	//FILTRA  E TOTALIZA LANÇAMENTOS DE ordens de serviço
   DMESTOQUE.Alx4.Close;
   DMESTOQUE.Alx4.SQL.Clear;
   DMESTOQUE.Alx4.SQL.Add(' Select SUM(itprodord.total) AS TOTVEND, SUM(itprodord.qtd) AS TOTSAI ');
   DMESTOQUE.Alx4.SQL.Add(' From itprodord left Join estoque on itprodord.cod_estoque = estoque.cod_estoque ');
   DMESTOQUE.Alx4.SQL.Add(' Where (itprodord.cod_estoque=:CODESTOQUE) ');
   DMESTOQUE.Alx4.ParamByName('CODESTOQUE').AsInteger:=XCOD_ESTOQUE;
   DMESTOQUE.Alx4.Open;
   QtdSaidas:=QtdSaidas+DMESTOQUE.Alx4.FieldByNAme('TOTSAI').AsCurrency;
   TOTVEND:=TOTVEND+DMESTOQUE.Alx4.FieldByNAme('TOTVEND').AsCurrency;

   //FILTRA REGISTROS
   ///////////////////
	//FILTRA LANÇAMENTOS DE ENTRADA PARA CORREÇÃO
   DMESTOQUE.Alx.Close;
   DMESTOQUE.Alx.SQL.Clear;
   DMESTOQUE.Alx.SQL.Add('SELECT * FROM VWlancent where VWlancent.cod_estoque=:CODESTOQUE');
   DMESTOQUE.Alx.ParamByName('CODESTOQUE').AsInteger:=XCOD_ESTOQUE;
   DMESTOQUE.Alx.Open;


	//FILTRA LANÇAMENTOS DE SAIDA PARA CORREÇÃO
   DMESTOQUE.Alx1.Close;
   DMESTOQUE.Alx1.SQL.Clear;
   DMESTOQUE.Alx1.SQL.Add('select * from vwlancsai where vwlancsai.cod_estoque=:CODESTOQUE');
   DMESTOQUE.Alx1.ParamByName('CODESTOQUE').AsInteger:=XCOD_ESTOQUE;
   DMESTOQUE.Alx1.Open;

	//FILTRA DE Producao
   DMMACS.TALX.Close;
   DMMACS.TALX.SQL.Clear;
   DMMACS.TALX.SQL.Add(' select producao.dtproduc, iprdmat.qtd, iprdmat.vlrunit, iprdmat.vlrtot from iprdmat ');
   DMMACS.TALX.SQL.Add('    left join subproduto on iprdmat.cod_subproduto = subproduto.cod_subproduto ');
   DMMACS.TALX.SQL.Add('    left join estoque on subproduto.cod_subproduto = estoque.cod_subprod ');
   DMMACS.TALX.SQL.Add('    left join producao on iprdmat.cod_producao = producao.cod_producao ');
   DMMACS.TALX.SQL.Add('   where estoque.cod_estoque=:CODIGO ');
   DMMACS.TALX.ParamByName('CODIGO').AsInteger:=XCOD_ESTOQUE;
   DMMACS.TALX.Open;
	//FILTRA  E TOTALIZA LANÇAMENTOS DE ordens de serviço
   DMESTOQUE.Alx4.Close;
   DMESTOQUE.Alx4.SQL.Clear;
   DMESTOQUE.Alx4.SQL.Add(' Select ordem.numero,  vwcliente.nome AS CLIENTE, itprodord.cod_itprodord, itprodord.cod_ordem, itprodord.cod_estoque,  itprodord.numreq, itprodord.qtd, itprodord.qtdRET, itprodord.total, ');
   DMESTOQUE.Alx4.SQL.Add(' itprodord.desconto, ORDEM.DTABERT AS DATA, itprodord.cod_funcionario, pessoa.nome, itprodord.vlrunit, subproduto.descricao, subproduto.marca, SubProduto.CODPRODFABR ');
   DMESTOQUE.Alx4.SQL.Add(' From itprodord left Join estoque on itprodord.cod_estoque = estoque.cod_estoque ');
   DMESTOQUE.Alx4.SQL.Add(' Left Join subproduto on subproduto.cod_subproduto = estoque.cod_subprod ');
   DMESTOQUE.Alx4.SQL.Add(' Left Join funcionario on funcionario.cod_func = itprodord.cod_funcionario ');
   DMESTOQUE.Alx4.SQL.Add(' Left Join pessoa on funcionario.cod_pessoa = pessoa.COD_PESSOA ');
   DMESTOQUE.Alx4.SQL.Add(' left join ordem on itprodord.cod_ordem=ordem.cod_ordem ');
   DMESTOQUE.Alx4.SQL.Add(' left join vwcliente on ordem.cod_cliente = vwcliente.cod_cliente ');
   DMESTOQUE.Alx4.SQL.Add(' Where (itprodord.cod_estoque=:CODESTOQUE) ');
   DMESTOQUE.Alx4.ParamByName('CODESTOQUE').AsInteger:=XCOD_ESTOQUE;
   DMESTOQUE.Alx4.Open;

	//FILTRA LANÇAMENTOS DE COMPRAS
   DMESTOQUE.Alx3.Close;
   DMESTOQUE.Alx3.SQL.Clear;
   DMESTOQUE.Alx3.SQL.Add(' Select pedcompra.numped, SUBPRODUTO.CONTRINT, pedcompra.DTPEDCOMP AS DATA, ');
   DMESTOQUE.Alx3.SQL.Add(' itenspedc.qtdeprod, itenspedc.qtdest, subproduto.descricao, ');
   DMESTOQUE.Alx3.SQL.Add(' itenspedc.valortotal AS TOTPROD, pessoa.nome, pessoa.cpfcnpj ');
   DMESTOQUE.Alx3.SQL.Add(' From itenspedc left join pedcompra on itenspedc.cod_pedcompra = pedcompra.cod_pedcomp');
   DMESTOQUE.Alx3.SQL.Add(' left Join estoque on itenspedc.cod_estoque = estoque.cod_estoque');
   DMESTOQUE.Alx3.SQL.Add(' Left Join subproduto on subproduto.cod_subproduto = estoque.cod_subprod');
   DMESTOQUE.Alx3.SQL.Add(' Left Join produto on produto.cod_produto = subproduto.cod_produto');
   DMESTOQUE.Alx3.SQL.Add(' left join fornecedor on fornecedor.cod_fornec = pedcompra.cod_fornec');
   DMESTOQUE.Alx3.SQL.Add(' left join pessoa on pessoa.cod_pessoa = fornecedor.cod_pessoa');
   DMESTOQUE.Alx3.SQL.Add(' Where (Estoque.Cod_Estoque=:CODESTOQUE) ');
   DMESTOQUE.Alx3.ParamByName('CODESTOQUE').AsInteger:=XCOD_ESTOQUE;
   DMESTOQUE.Alx3.Open;
	//FILTRA LANÇAMENTOS DE VENDAS
   DMESTOQUE.Alx2.Close;
   DMESTOQUE.Alx2.SQL.Clear;
   DMESTOQUE.Alx2.SQL.Add(' Select pedvenda.numped, SUBPRODUTO.CONTRINT, lote.numero, pedvenda.dtpedven ,');
   DMESTOQUE.Alx2.SQL.Add(' itenspedven.qtdeprod, subproduto.descricao , Itenspedven.OPERACAO,');
   DMESTOQUE.Alx2.SQL.Add(' itenspedven.valortotal AS TOTPROD, pedvenda.nomecli, pedvenda.cpfcnpj');
   DMESTOQUE.Alx2.SQL.Add(' From itenspedven left join pedvenda on itenspedven.cod_pedven = pedvenda.cod_pedvenda');
   DMESTOQUE.Alx2.SQL.Add(' left Join estoque on itenspedven.cod_estoque = estoque.cod_estoque');
   DMESTOQUE.Alx2.SQL.Add(' Left Join subproduto on subproduto.cod_subproduto = estoque.cod_subprod');
   DMESTOQUE.Alx2.SQL.Add(' Left Join produto on produto.cod_produto = subproduto.cod_produto');
   DMESTOQUE.Alx2.SQL.Add('  left join lote on itenspedven.cod_lote = lote.cod_lote ');
   DMESTOQUE.Alx2.SQL.Add(' Where (Estoque.Cod_Estoque=:CODESTOQUE) ');
   DMESTOQUE.Alx2.ParamByName('CODESTOQUE').AsInteger:=XCOD_ESTOQUE;
   DMESTOQUE.Alx2.Open;
   //PASSA VALORES PARA AS LABELS DE INFORMAÇÕES
   LEstCalc.Caption:=FormatFloat('####,##0.00', DMESTOQUE.TEstoque.FieldByName('ESTINI').AsCurrency+QtdEntradas-QtdSaidas);
	LEstFisico.Caption:=FormatFloat('####,##0.00', DMESTOQUE.TEstoque.FieldByName('ESTFISICO').AsCurrency);
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

//nesta procedure vai os comandos comuns para inserção de produto ou similar
Procedure TFProduto.PrepInsert;
Begin
    BtnFecha.Visible:=False;
	 //Filtra Loja
    FiltraTabela(DMMACS.TLoja, 'LOJA', 'COD_LOJA', FMenu.LCODLOJA.Caption, '');

    //limpa os edits de seleção
    If DMMACS.TLoja.FieldByName('ATIVIDADE').AsString<>'SEMENTES'
    Then Begin
    	DBESTFISICO.Enabled:=True;
       DBEstIni.Enabled:=True;
    End
    Else Begin
    	DBESTFISICO.Enabled:=False;
       DBEstIni.Enabled:=False;
    End;                       
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


    //Inicia Variaveis
    // ULTIMO VALOR DE VENDA A VISTA NO VAREJO
    LvarejoVista.Caption := '0,00';
    // ULTIMO VALOR DE VENDA A VISTA NO VAREJO
    LVarejoPrazo.Caption := '0,00';
    // ULTIMO VALOR DE VENDA A VISTA NO ATACADO
    LAtacVista.Caption := '0,00';
    // ULTIMO VALOR DE VENDA A PRAZO NO ATACADO
    LAtacPrazo.Caption := '0,00';

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
Procedure TFProduto.CalculoVenda(DescVistaVar: Real; AcrecPrazoVar: Real; DescVistaAtac: Real; AcrecPrazoAtac: Real; ComVistaVar: Real; ComPrazoVar: Real; ComVistaAtac: Real; ComPrazoAtac: Real; XRET: INTEGER; XCALCLUC: INTEGER);
var
X,Y,Z,B,C,F,I :Real;
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
   End
   Else Begin
		X:= (XBaseCalc*(Dmestoque.TSubprod.Fieldbyname('IPIPROD').ascurrency)/100);
		Y:= (XBaseCalc*(Dmestoque.TEstoque.Fieldbyname('FRETE').ascurrency)/100);
		Z:= (XBaseCalc*(Dmestoque.TSubprod.Fieldbyname('EMBPROD').ascurrency)/100);
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
		Dmestoque.Testoque.Fieldbyname('VALREP').ascurrency:= (Dmestoque.Testoque.Fieldbyname('VLRUNITCOMP').ascurrency + X + Y + Z);
       DMESTOQUE.TEstoque.Post;
   End
   Else Begin
       If DMMACS.TEmpresa.FieldByName('CREDITAIPI').AsString='1'
       Then Begin
			//Empresa possui credito IPI
           DMESTOQUE.TEstoque.Edit;
			Dmestoque.Testoque.Fieldbyname('VALREP').ascurrency:=XBaseCalc+Y-XCredICMSFrete;
           DMESTOQUE.TEstoque.Post;
       End
       Else Begin
			//Empresa nao possui credito IPI
           DMESTOQUE.TEstoque.Edit;
			Dmestoque.Testoque.Fieldbyname('VALREP').ascurrency:=XBaseCalc+Y+X-XCredICMSFrete;
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
		Dmestoque.Testoque.Fieldbyname('VENDVARP'). Ascurrency := (Dmestoque.Testoque.Fieldbyname('VENDVARV'). Ascurrency *  ((100 + AcrecPrazoVar) / 100));
		DMESTOQUE.TEstoque.Post;
		//CALCULANDO VALOR DE VENDA ATACADO A VISTA  (VENDATAV)
		F:= Dmestoque.Testoque.Fieldbyname('VENDVARV'). Ascurrency;
       DMESTOQUE.TEstoque.edit;
		Dmestoque.Testoque.Fieldbyname('VENDATAV'). Ascurrency := (F / ((100 + DESCVISTAATAC) / 100));
       DMESTOQUE.TEstoque.post;

		//CALCULANDO VALOR DE VENDA ATACADO A PRAZO  (VENDATAP)
		I := Dmestoque.Testoque.Fieldbyname('VENDATAV'). Ascurrency;
       DMESTOQUE.TEstoque.edit;
		Dmestoque.Testoque.Fieldbyname('VENDATAP'). Ascurrency := (I * ((100 + ACRECPRAZOATAC) / 100));
       DMESTOQUE.TEstoque.post;
	End
   Else Begin
		//CALCULANDO VALOR DE VENDA VAREJO A PRAZO  (VENDAVARP)
       DMESTOQUE.TEstoque.Edit;
		Dmestoque.Testoque.Fieldbyname('VENDVARP'). Ascurrency := (Dmestoque.Testoque.Fieldbyname('VENDVARV'). Ascurrency *  ((100 + AcrecPrazoVar) / 100));
       DMESTOQUE.TEstoque.post;
		//CALCULANDO VALOR DE VENDA ATACADO A VISTA  (VENDATAV)
		F:= Dmestoque.Testoque.Fieldbyname('VENDVARV'). Ascurrency;
       DMESTOQUE.TEstoque.Edit;
		Dmestoque.Testoque.Fieldbyname('VENDATAV'). Ascurrency := (F / ((100 + DESCVISTAATAC) / 100));
       DMESTOQUE.TEstoque.post;
		//CALCULANDO VALOR DE VENDA ATACADO A PRAZO  (VENDATAP)
		I := Dmestoque.Testoque.Fieldbyname('VENDATAV'). Ascurrency;
       DMESTOQUE.TEstoque.Edit;
		Dmestoque.Testoque.Fieldbyname('VENDATAP'). Ascurrency := (I * ((100 + ACRECPRAZOATAC) / 100));
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

  //Paulo 02/2/2011: controla a visibilidade do estoque da loja matriz na grid de similares
  if DMMACS.TLoja.FieldByName('MOSTRAESTOQUE').AsString= '1' Then begin
     DBGrid1.Columns.Items[3].Visible := true;
  end;
  //Habilita o painel de contas para o uso de contas associada ao produto
  if(DMMACS.TLoja.FieldByName('PLANOCTAPROD').AsString = '1') Then
       TabSheet13.TabVisible:=True
  Else
       TabSheet13.TabVisible:=False;

  //Habilita o painel de tabela de preços
  if DMMACS.TLoja.FieldByName('ATIVIDADE').AsString='LOCAÇÃO'
  Then Begin
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
end;

procedure TFProduto.BtnCancelarClick(Sender: TObject);
begin
//  inherited;

	 //Cancela Operações
    DBESTFISICO.Enabled:=False;
    DBEstIni.Enabled:=False;

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
    BtnFecha.Visible:=True;

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
   XControleInternoAntigo: String;
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
       DMESTOQUE.Alx.SQL.Add('SELECT * FROM SUBPRODUTO WHERE (SUBPRODUTO.CODPRODFABR=:FAB) AND (SUBPRODUTO.COD_SUBPRODUTO<>:COD)');
       DMESTOQUE.Alx.ParamByName('FAB').AsString:=dbcodfabricante.Text;
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
	  End;
    Except
    End;

    // Bloqueia o cadastro do produto caso já exista um código de controle interno igual cadastrado.
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
               DbContrInt.Text:=IntToStr(StrtoInt(DbContrInt.Text)+1);
           end
           Else Begin
               XFlacContrint:=0;
           End;
       End;
	  End;
     If XControleInternoAntigo<>DbContrInt.Text Then
			Mensagem('INFORMAÇÃO AO USUÁRIO', 'O Controle Interno '+XControleInternoAntigo+' já existe cadastrado, o sistema assumiu um novo controle interno para este produto. '+DbContrInt.Text, '', 1, 1, False, 'I');
     //Assume o controle interno para loja
     DMMACS.TLoja.Edit;
     DMMACS.TLoja.FieldByName('PROXCTRINT').AsString:=INCSTRNUM(1, DbContrInt.Text);
     DMMACS.TLoja.Post;
     DMMACS.Transaction.CommitRetaining;
     FiltraTabela(DMMACS.TLoja, 'LOJA', 'COD_LOJA', FMenu.LCODLOJA.Caption, '');

    Except
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
        	DMESTOQUE.TProduto.Edit;
        	DMESTOQUE.TProduto.FieldByName('cod_grupoprod').AsInteger:=XCodGrupo;
        	DMESTOQUE.TProduto.FieldByName('cod_subgrupoprod').AsInteger:=XCodSubgrupo;
           DMESTOQUE.TProduto.Post;
        End;

        //Se trabalha sem grade de produtos... coloca o nome da grade igual ao nome do produto
        If DMMACS.TLoja.FieldByName('OPERADESCCUPOM').AsInteger=1
        Then Begin
        	DMESTOQUE.TProduto.Edit;
           DMESTOQUE.TProduto.FieldByName('DESCRICAO').AsString:=DMESTOQUE.TSubProd.FieldByName('DESCRICAO').AsString;
         	DMESTOQUE.TProduto.Post;
        End;
       
     // Faz a concatenação do Código Interno do GRUPO, Código Interno do SUBGRUPO, Código Interno do PRODUTO e Código Interno do SUBPRODUTO, formando o Código Composto do Produto.
     DMEstoque.TSubProd.edit;
     DMEstoque.TSubProd.FieldByName('CodComposto').AsString:=EDCODGRUPO.text + '.'+EDCODSUBGRUPO.Text + '.'+EDProduto.Text +'-'+DBCODINTERNO.Text;
     DmEstoque.TSubProd.FieldByName('COD_PRODUTO').AsInteger:=XCOD_PRODUTO;
     DmEstoque.TSubProd.FieldByName('cod_cst').AsInteger:=XCST;
     DmEstoque.TSubProd.FieldByName('cod_unidcompra').AsInteger:=XCodUnidadeCompra;
     DmEstoque.TSubProd.FieldByName('cod_unidvenda').AsInteger:=XCodUnidadeVenda;
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
     If CbProdutoFrete.Checked=True Then
     		DmEstoque.TSubProd.FieldByName('USOCONSUMO').AsString:='2';
     If (CBProdutoConsumo.Checked=False) and (CbProdutoFrete.Checked=False) Then
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
     

     DmEstoque.TSubProd.FieldByName('COD_PRODUTO').AsInteger:=XCOD_PRODUTO;
     DmEstoque.TProduto.Edit;
     DmEstoque.TProduto.FieldByName('COD_LOJA').AsString:=Fmenu.LCodLoja.Caption;
     DmEstoque.TProduto.Post;
     //Define qual foi o Ultimo produto
     XCOD_ULTPROD:=XCOD_PRODUTO;
     Xaux:=XCOD_PRODUTO;

     //INFORMA CUSTO MEDIO
     If DMESTOQUE.TEstoque.FieldByName('VALCUSTO').AsCurrency=0 Then
     	DMESTOQUE.TEstoque.FieldByName('VALCUSTO').AsCurrency:=DMESTOQUE.TEstoque.FieldByNAme('VALUNIT').AsCurrency;

     //AS PRÓXIMAS VÁRIAVEIS SÃO UTLIZADAS PARA ARMAZENAR AS INFORMAÇÕES PARA SEREM JOGADAS AO PRÓXIMO PRODUTO
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
     DMESTOQUE.TEstoque.Edit;
     DMESTOQUE.TEstoque.FieldByName('ESTSALDO').AsCurrency:=(DMESTOQUE.TEstoque.FieldByName('ESTFISICO').AsCurrency+DMESTOQUE.TEstoque.FieldByName('ESTPED').AsCurrency)-DMESTOQUE.TEstoque.FieldByName('ESTRESERV').AsCurrency;
     DMESTOQUE.TEstoque.Post;
     DMESTOQUE.TransacEstoque.CommitRetaining;
     XSTATE:='POST';
     //Habilitando Paineis;
     DBESTFISICO.Enabled:=False;
     DBEstIni.Enabled:=False;
     PCadastro.Visible:=False;
     PConsulta.Visible:=true;
     PConsulta.BringToFront;
     //FILTRA PRODUTOS DE ACORDO COM A LOJA
     FiltraTabela(DMESTOQUE.WProduto, 'VWPRODUTO', '', '', '');
     //FILTRA SIMILAR DE ACORDO COM O PRODUTO
     SelectSim;
	  LQtdItem.Caption:=IntToStr(RetornaNumItens)+ ' Itens Cadastrados';
     BtnFecha.Visible:=True;
     BtnFecha.BringToFront;

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
    DescVistaVar, DescVistaAtac, AcrecPrazoVar, AcrecPrazoAtac, ComVistaVar, ComVistaAtac, ComPrazoVar, ComPrazoAtac: Real;
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

    CalculoVenda(DescVistaVar, AcrecPrazoVar, DescVistaAtac, AcrecPrazoAtac, ComVistaVar, ComPrazoVar, ComVistaAtac, ComPrazoAtac, 1, 0);

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
                       DMESTOQUE.TEstoque.Delete;
                       DMESTOQUE.TSubProd.Delete;
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
	XConsulta:=true;
	//EFETUA CONTROLE DE ACESSO
   If ControlAccess('PRODUTOS', 'M')=False Then
  		Exit;

  inherited;
	 //VERIFICA SE DEVE LIBERAR O EDIT PARA O SUAURIO ALTERAR MANUALMENTE O ESTOQUE DO PRODUTO
	 If DMMacs.Tloja.FieldByName('ZEROCODPRODUTO').AsInteger=1
    Then Begin
    	If ControlAccess('ECF', 'M')=True Then// Utilizamos o campo ECF pp não estava sendo utilizado
       	DBESTFISICO.Enabled:=True
       Else
           DBESTFISICO.Enabled:=False;
    End
    Else Begin
       DBESTFISICO.Enabled:=False;
    End;


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

    PNovaFaixaPreco.Visible:=False;
    PNovaTabela.Visible:=False;
    PcAdicionais.ActivePage:=TabSheet1;
  	 //Informa as cores a combo
    InfoCores;
    //Utilizada para filtrar o estoque referente a subproduto e Loja
    If FiltraTabela(DMEstoque.TEstoque, 'ESTOQUE', 'COD_ESTOQUE', DMEstoque.WSimilar.FieldByName('COD_ESTOQUE').AsString, '')=False
    Then Begin
    	MessageDlg('Os dados consultados apresentaram inconcistência. Falha na tabela estoque', mtWarning, [mbOK], 0);
       BtnCancelar.OnClick(self);
    	Exit;
    End;

    // codigo de estoque
    XCOD_ESTOQUE:=DMESTOQUE.TEstoque.FieldByName('COD_ESTOQUE').AsInteger;

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
    //CASO O OPERADOR SEJA O SENHOR DO SISTEMA ELE PODE ALTERAR ALGUNS VLRS PERTINENTES A ESTOQUE
    If FMenu.LUSUARIO.Caption='SYSTEM LORD'
    Then Begin
       DBESTFISICO.Enabled:=True;
       DBEstIni.Enabled:=True;
    End;
    DMESTOQUE.TSubProd.Edit;
    DMESTOQUE.TEstoque.Edit;
    //controla combo de produto frete
	 If DmEstoque.TSubProd.FieldByName('USOCONSUMO').AsString='2' Then
    		CbProdutoFrete.Checked:=True
	  Else
    		CbProdutoFrete.Checked:=False;

    //CONTROLA COMBO DE PRODUTO MATERIAL DE USO E CONSUMO
	 If DmEstoque.TSubProd.FieldByName('USOCONSUMO').AsString='1' Then
    		CBProdutoConsumo.Checked:=True
	 Else
    		CBProdutoConsumo.Checked:=False;

    // Controla PIS/COFINS
    If DMESTOQUE.TSubProd.FieldByName('GERARPISCOFINS').AsString = '1' Then
       CBGerarPisCofins.Checked:=True
    Else
       CBGerarPisCofins.Checked:=False;
       
    //Marca se o produto é um acessorio ou não
	 If DmEstoque.TSubProd.FieldByName('USOCONSUMO').AsString='5' Then
    		XAcessorio:=True
	 Else
           XAcessorio:=False;

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

    //Paulo 12/12/2011: para mostrar se o produto está ativo ou não
    if DMESTOQUE.TSubProd.FieldByName('ATIVO').AsString = 'N' then
       cbInativaProd.Checked:=True
    else
       cbInativaProd.Checked:=False;
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

	XCOD_PRODUTO:=InserReg(DMESTOQUE.TProduto, 'PRODUTO', 'COD_PRODUTO');
   DMESTOQUE.TProduto.FieldByName('COD_PRODUTO').AsInteger:=XCOD_PRODUTO;

	XCOD_SIMILAR:=InserReg(DMESTOQUE.TSubProd, 'SUBPRODUTO', 'COD_SUBPRODUTO');
   DMESTOQUE.TSubProd.FieldByName('COD_SUBPRODUTO').AsInteger:=XCOD_SIMILAR;

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

procedure TFProduto.CadastrarumProdutoSimilar1Click(Sender: TObject);
Var
	CONTRINTOK: Integer;
	XNovoContrint: String;
	XFlacContrint: Integer;
begin
	 PrepInsert;//Prepara a inserção de produto  

    //Insere REGISTROS NA TABELA DE SUBPRODUTO E ESTOQUE E LOCALIZA PRODUTO
    XCOD_ESTOQUE:=InserReg(DMESTOQUE.TEstoque, 'ESTOQUE', 'COD_ESTOQUE');
    DMESTOQUE.TEstoque.FieldByName('COD_ESTOQUE').AsInteger:=XCOD_ESTOQUE;
    //Insere dados na Tabela SubProduto
    XCOD_SIMILAR:=InserReg(DMESTOQUE.TSubProd, 'SUBPRODUTO', 'COD_SUBPRODUTO');
    DMESTOQUE.TSubProd.FieldByName('COD_SUBPRODUTO').AsInteger:=XCOD_SIMILAR;
	 DBCODINTERNO.Text:=DMESTOQUE.TSubProd.FieldByName('COD_SUBPRODUTO').AsString;

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


    //End;

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
       DMESTOQUE.TSubProd.FieldByName('CONTRINT').AsString:=XNovoContrint;
    End
    Else Begin
    	FiltraTabela(DMMACS.TLoja, 'LOJA', 'COD_LOJA', FMenu.LCODLOJA.Caption, '');
     	DMESTOQUE.TSubProd.FieldByName('CONTRINT').AsString:=XNovoContrint;
    End;
        if(XCOD_ULTPROD>=0) THEN
        begin
           //Localiza o produto selecionado e mostra na tela.
           If FiltraTabela(DMESTOQUE.TProduto, 'PRODUTO', 'COD_PRODUTO', IntToStr(XCOD_ULTPROD), '')=True
           Then Begin
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
               If FiltraTabela(DMESTOQUE.TUnidade, 'UNIDADE', 'COD_UNIDADE', XPRXCODUNICOMP, '')=True
               Then Begin
                   DMESTOQUE.TSubProd.FieldByName('COD_UNIDCOMPRA').AsString:=XPRXCODUNICOMP;
                   EdCodUnidadeCompra.Text:=DMEstoque.TUNIDADE.FieldByName('COD_UNIDADE').AsString;
                   EdUnidadeCompra.Text:=DMEstoque.TUNIDADE.FieldByName('sigla_unid').AsString+'-'+DMEstoque.TUNIDADE.FieldByName('DESC_UNID').AsString;
               End;
               //Localiza o Unidade de venda do produto selecionado e mostra na tela.
               If FiltraTabela(DMESTOQUE.TUnidade, 'UNIDADE', 'COD_UNIDADE', XPRXCODUNIVEND, '')=True
               Then Begin
                   DMESTOQUE.TSubProd.FieldByName('COD_UNIDVENDA').AsString:=XPRXCODUNIVEND;
                   EdCodUnidadeVenda.Text:=DMEstoque.TUNIDADE.FieldByName('COD_UNIDADE').AsString;
                   EdUnidadeVenda.Text:=DMEstoque.TUNIDADE.FieldByName('sigla_unid').AsString+'-'+DMEstoque.TUNIDADE.FieldByName('DESC_UNID').AsString;
               End;
               //Localiza o Código da Situação Tributária do produto selecionado e mostra na tela.
               If FiltraTabela(DMESTOQUE.TCST, 'CST', 'COD_CST', XPRXCODCST, '')=True
               Then Begin
                   DMESTOQUE.TSubProd.FieldByName('COD_CST').AsString:=XPRXCODCST;
                   DescSitTrib.text:=DMEstoque.TCst.FieldByName('DESCRICAO').AsString;
                   CODSITTRIB.Text:=DMEstoque.TCst.FieldByName('COD_SIT_TRIB').AsString;
               End;

               DMESTOQUE.TSubProd.FieldByName('DESCRICAO').AsString:=XPRXDESC;
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

               //DMESTOQUE.TSubProd.Post;
               //DMESTOQUE.TransacEstoque.CommitRetaining;

               //FiltraTabela(DMESTOQUE.TSubProd, 'SUBPRODUTO', 'COD_SUBPRODUTO', IntToStr(XCOD_SIMILAR), '');
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

	If Key=VK_F3 Then
   	If PConsulta.Visible=True Then
           EdCodBarra.SetFocus;
	If Key=VK_F2 Then
   	If PConsulta.Visible=True Then
           EDProduto.SetFocus;
   If key=vk_f11
   Then Begin//Tecla para inserção de um novo similar para o ultimo produto cadastrado

   	//BtnGravarClick(Self);

   	If Xaux=-1
       Then Begin
 			Mensagem('OPÇÃO BLOQUEADA', 'Não pode haver a inserção de um novo Similar por este processo agora!', '', 1, 1, False, 'I');
       End
       Else Begin
           //XCOD_ULTPROD:=Xaux;
    		//Utilizada para filtrar o estoque ao ultimo codigo cadastrado
    	   	If FiltraTabela(DMEstoque.WProduto, 'VWPRODUTO', 'COD_PRODUTO', IntToStr(Xaux), '')=False
           Then Begin
       		Exit;
           End
           Else Begin
           	CadastrarumProdutoSimilar1Click(Self);
               XCOD_PRODUTO:=Xaux;
           End;

       End;

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
       DMESTOQUE.TRel.SQL.Add(' SELECT subproduto.codprodfabr AS CODFAB, produto.descricao AS GRADE, subproduto.CONTRINT, subproduto.descricao AS DESCR, ');
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
			PrnEtiq2X12(False, 1, 0);
   	End;
end;

procedure TFProduto.EtCdBarra1Click(Sender: TObject);
begin
  inherited;

		//INFORMA SQL ADEQUADA A IMPRESSAO DE ETIQUETAS
       DMESTOQUE.TRel.CLOSE;
       DMESTOQUE.TRel.SQL.Clear;
       DMESTOQUE.TRel.SQL.Add(' SELECT subproduto.codprodfabr AS CODFAB, subproduto.CONTRINT, subproduto.descricao AS DESCR, subproduto.FABRICANTE,  ');
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
			PrnEtiq2X12(False, 0, 0);
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
       If RGFiltro.ItemIndex=0 Then
           FiltraTabela(DMESTOQUE.WSimilar, 'VWSIMILAR', 'COD_LOJA', '', ' (COD_LOJA='+FMenu.LCODLOJA.Caption+') AND (upper(CODFABRICANTE) like upper('+#39+EDCodFab.Text+'%'+#39+')) and ((ATIVO = ''S'') or (ATIVO is null)) ORDER BY CODFABRICANTE');
       If RGFiltro.ItemIndex=1 Then
           FiltraTabela(DMESTOQUE.WSimilar, 'VWSIMILAR', 'COD_LOJA', '', ' (COD_LOJA='+FMenu.LCODLOJA.Caption+') AND (upper(CODFABRICANTE) like upper('+#39+EDCodFab.Text+'%'+#39+')) and (ATIVO = ''N'') ORDER BY CODFABRICANTE');
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
       		DMESTOQUE.TRel.SQL.Add(' SELECT subproduto.codprodfabr AS CODFAB, produto.descricao AS GRADE, subproduto.CONTRINT, subproduto.descricao AS DESCR,  subproduto.FABRICANTE,  ');
       		DMESTOQUE.TRel.SQL.Add(' estoque.vendvarv as PRECO,  SubProduto.Marca as MARCA, subproduto.localestante AS CODCOMPOSTO,subproduto.cor, ESTOQUE.ESTFISICO As QTD, ');
       		DMESTOQUE.TRel.SQL.Add(' estoque.vendvarp as PRECOPRAZO, estoque.ultcompra as DTCAD, subproduto.altura AS ALTURA, subproduto.LARGURA AS LARGURA, subproduto.composicao AS COMPOSICAO, subproduto.CLASSIFICACAO, ');
  				DMESTOQUE.TRel.SQL.Add(' subproduto.CODBARRA AS CODBARRA');
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
   FiltraTabela(DMESTOQUE.TSubProd, 'SUBPRODUTO', 'COD_SUBPRODUTO', DMESTOQUE.WSimilar.FieldByName('COD_SUBPRODUTO').AsString, '');
   DMESTOQUE.TSubProd.Edit;
   If DMESTOQUE.TSubProd.FieldByName('MARK').AsString='X' Then
		DMESTOQUE.TSubProd.FieldByName('MARK').AsString:=''
   Else
		DMESTOQUE.TSubProd.FieldByName('MARK').AsString:='X';
   DMESTOQUE.TSubProd.Post;
   DMESTOQUE.TransacEstoque.CommitRetaining;
   SelectSim;

   SomaProdutosMarcados;



end;

procedure TFProduto.BtnFiltrarClick(Sender: TObject);
begin
  inherited;
  //Paulo 26/07/2011: Desmarca todos os itens marcados
	If MessageDlg('Deseja realmente desmarcar todos os itens?', mtConfirmation, [mbYES, mbNO], 0)=mryes
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

   End;
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
    DescVistaVar, DescVistaAtac, AcrecPrazoVar, AcrecPrazoAtac, ComVistaVar, ComVistaAtac, ComPrazoVar, ComPrazoAtac: Real;

begin
  inherited;
  TRY
  	  	SincroValores(0);
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
    CalculoVenda(DescVistaVar, AcrecPrazoVar, DescVistaAtac, AcrecPrazoAtac, ComVistaVar, ComPrazoVar, ComVistaAtac, ComPrazoAtac, 1, 1);
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
       		DMESTOQUE.TRel.SQL.Add(' SELECT subproduto.codprodfabr AS CODFAB, produto.descricao AS GRADE, subproduto.CONTRINT, subproduto.descricao AS DESCR,  subproduto.FABRICANTE,  ');
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
begin
  inherited;
   if BtnSelecionar.Visible = True then
       BtnSelecionarClick(Sender);
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
   If CbProdutoFrete.Checked=True Then
       CbProdutoFrete.Checked:=False;
end;

procedure TFProduto.CbProdutoFreteClick(Sender: TObject);
begin
  inherited;
   If CBProdutoConsumo.Checked=True Then
       CBProdutoConsumo.Checked:=False;
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

	DMESTOQUE.TFchTec.Close;
   DMESTOQUE.TFchTec.SQL.Clear;
   DMESTOQUE.TFchTec.SQL.Add('INSERT INTO fchtecprod (COD_SUBPROD,COD_SUBPRODUTOACABADO,PORCENTAGEM)');
   DMESTOQUE.TFchTec.SQL.Add('VALUES (:COD_SUBPROD,:COD_SUBPRODUTOACABADO,:PORCENTAGEM)');
   DMESTOQUE.TFchTec.ParamByName('COD_SUBPROD').AsInteger:=StrToInt(EdCodMat.Text);
   DMESTOQUE.TFchTec.ParamByName('COD_SUBPRODUTOACABADO').AsInteger:=XCOD_SIMILAR;
   DMESTOQUE.TFchTec.ParamByName('PORCENTAGEM').AsInteger:=StrToInt(EdPorcMat.Text);
   DMESTOQUE.TFchTec.ExecSQL;
   DMESTOQUE.TransacEstoque.CommitRetaining;

   BtnCtrlFichaClick(sender);


end;
//Paulo 30/08/2010: Deleta o item selecionado
procedure TFProduto.BtExcluiMatClick(Sender: TObject);
begin
  inherited;
    XAlx:= DMESTOQUE.Alx1.FieldByName('COD_FCHTECPROD').AsInteger;

   //Paulo 30/08/2010: apaga o item da tabela
   DMESTOQUE.TFchTec.Close;
   DMESTOQUE.TFchTec.SQL.Clear;
   DMESTOQUE.TFchTec.SQL.Add('delete  from fchtecprod where fchtecprod.cod_fchtecprod = :CODFICHA');
   DMESTOQUE.TFchTec.ParamByName('CODFICHA').AsInteger:=XAlx;
   DMESTOQUE.TFchTec.ExecSQL;
   DMESTOQUE.TransacEstoque.CommitRetaining;

   BtnCtrlFichaClick(sender);

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
       XCOD_ITEMACESSORIO:=FMenu.XCodSlave;
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
begin
  inherited;
	If PcAdicionais.ActivePage=TabSheet6 Then
       GeraHist;
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
       EdAddCodFabr.Text:='';
       PCodigos.Visible:=True;
       PCodigos.BringToFront;

end;

procedure TFProduto.BtnInsertProdClick(Sender: TObject);
var
   XCod_CodBarra:Integer;
begin
  inherited;
       //Paulo 07/07/2011: Insere codigo na tabela codigo de barras
       DMMACS.TALX.Close;
       DMMACS.TALX.SQL.Clear;
       DMMACS.TALX.SQL.Add('insert into CODIGOBARRA(COD_CODBARRA,COD_ESTOQUE,CODBARRA)');
       DMMACS.TALX.SQL.Add('values(:COD_CODBARRA, :COD_ESTOQUE, :CODBARRA)');
       DMMACS.TALX.ParamByName('COD_CODBARRA').AsInteger:=DMMACS.TCodigo.FieldByName('COD_CODBARRA').AsInteger;
       DMMACS.TALX.ParamByName('COD_ESTOQUE').AsInteger:=XCOD_ESTOQUE;
       DMMACS.TALX.ParamByName('CODBARRA').AsString:= EdAddCodFabr.Text;
       DMMACS.TALX.ExecSQL;
       DMMACS.Transaction.CommitRetaining;

       DMMACS.TCodigo.Edit;
       DMMACS.TCodigo.FieldByName('COD_CODBARRA').AsInteger:=DMMACS.TCodigo.FieldByName('COD_CODBARRA').AsInteger+1;
       DMMACS.TCodigo.Post;

       DMMACS.IBTCodigo.CommitRetaining;

       FiltraTabela(DMESTOQUE.TCodBarra,'CODIGOBARRA','COD_ESTOQUE',IntToStr(XCOD_ESTOQUE),'');
       EdAddCodFabr.Text:='';
end;

procedure TFProduto.BtnDeleteListClick(Sender: TObject);
begin
  inherited;
       //Paulo 07/07/2011: Apaga o código selecionado
       DMMACS.TALX.Close;
       DMMACS.TALX.SQL.Clear;
       DMMACS.TALX.SQL.Add('delete from CODIGOBARRA');
       DMMACS.TALX.SQL.Add('where codigobarra.cod_codbarra = :CODBARRA');
       DMMACS.TALX.ParamByName('CODBARRA').AsInteger:=DMESTOQUE.TCodBarra.FieldByName('COD_CODBARRA').AsInteger;
       DMMACS.TALX.ExecSQL;
       DMMACS.Transaction.CommitRetaining;
       FiltraTabela(DMESTOQUE.TCodBarra,'CODIGOBARRA','COD_ESTOQUE',IntToStr(XCOD_ESTOQUE),'');
       
end;

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
   MDO.Query.Close;
   MDO.Query.SQL.Clear;
   MDO.Query.SQL.Add('  insert into ACESSORIOS(COD_EQUIPAMENTO, cod_estoque, quantidade)');
   MDO.Query.SQL.Add('             values (:cod_equipamento, :cod_estoque, :quantidade) ');
   MDO.Query.ParamByName('cod_estoque').AsInteger:= XCOD_ESTOQUE;
   MDO.Query.ParamByName('cod_equipamento').AsInteger:= XCOD_ITEMACESSORIO;
   MDO.Query.ParamByName('quantidade').AsInteger:= EdQuantAcessorio.ValueInteger;
   MDO.Query.ExecSQL;
   MDO.Transac.CommitRetaining;
   FiltraAcessorios(XCOD_ESTOQUE);
   LimpaLabelsAcessorios;

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

end.

